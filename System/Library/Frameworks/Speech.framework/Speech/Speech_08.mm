uint64_t sub_1AC677858()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_149_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC6779D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6779F8, 0, 0);
}

uint64_t sub_1AC6779F8()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_588(v11);
    *v12 = v13;
    v12[1] = sub_1AC677BA8;
    v14 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v14, v15);
  }

  else
  {
    v17 = v0[7];
    if (v17)
    {
      v0[5] = v17;
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01C8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01D8();
    }

    OUTLINED_FUNCTION_44();

    return v19();
  }
}

uint64_t sub_1AC677BA8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t SpeechAnalyzer.finalizeAndFinish(through:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1AC7A0288();
  v1[6] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_126();
  v7 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC677D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  if (sub_1AC65BF3C(0xD00000000000001BLL, 0x80000001AC7B69A0))
  {
    v13 = v12[8];
    v15 = v12[4];
    v14 = v12[5];
    v17 = v12[2];
    v16 = v12[3];
    sub_1AC7A0338();
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v18, v19);
    v20 = swift_task_alloc();
    v12[9] = v20;
    v20[2] = v13;
    v20[3] = v14;
    v20[4] = v17;
    v20[5] = v16;
    v20[6] = v15;
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_588(v21);
    *v22 = v23;
    v22[1] = sub_1AC677ECC;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_77_2();

    return MEMORY[0x1EEE6DE38](v24, v25, v26, v27, v28, v29, v30, v31);
  }

  else
  {

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_77_2();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }
}

uint64_t sub_1AC677ECC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = sub_1AC67804C;
  }

  else
  {
    v9 = *(v3 + 40);

    v8 = sub_1AC677FDC;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC677FDC()
{
  OUTLINED_FUNCTION_85();
  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC67804C()
{
  OUTLINED_FUNCTION_72();

  v0 = OUTLINED_FUNCTION_89();
  v1(v0);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6780D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v33 = a4;
  v34 = a6;
  v30 = a3;
  v31 = a5;
  v29 = a1;
  v32 = HIDWORD(a5);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v7 = *(v27 - 8);
  v28 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = sub_1AC7A0288();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = *(v11 + 16);
  v16(&v25 - v14, a2, v10);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v10);
  v16(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v17 = v9;
  v18 = v27;
  (*(v7 + 16))(v17, v29, v27);
  v19 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
  v20 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v21 = (v12 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  *(v22 + 24) = v19;
  *(v22 + 32) = v23;
  *(v22 + 40) = v33;
  LODWORD(v23) = v32;
  *(v22 + 48) = v31;
  *(v22 + 52) = v23;
  *(v22 + 56) = v34;
  (*(v11 + 32))(v22 + v20, v25, v10);
  (*(v7 + 32))(v22 + v21, v26, v18);
  swift_retain_n();
  sub_1AC659DBC();
}

uint64_t sub_1AC6783F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v8[10] = *(v11 + 64);
  v8[11] = swift_task_alloc();
  v12 = sub_1AC7A0288();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v8[14] = *(v13 + 64);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC678544, a4, 0);
}

uint64_t sub_1AC678544()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v20 = v0[15];
  v21 = v3;
  v22 = v0[14];
  v4 = v0[8];
  v5 = v0[9];
  v19 = v0[7];
  OUTLINED_FUNCTION_235();
  v6 = swift_allocObject();
  v0[16] = v6;
  swift_weakInit();
  v7 = OUTLINED_FUNCTION_289();
  v8 = v2;
  v9(v7);
  (*(v5 + 16))(v3, v19, v4);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v22 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v5 + 80) + v11 + 8) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[17] = v13;
  (*(v1 + 32))(v13 + v10, v20, v8);
  *(v13 + v11) = v6;
  (*(v5 + 32))(v13 + v12, v21, v4);

  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_1AC67873C;
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  return sub_1AC675FBC(v17, v15, v16, 0, 1, sub_1AC689124, v13);
}

uint64_t sub_1AC67873C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

void sub_1AC678894()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v12);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_481();
  v14 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80();
  (*(v15 + 16))(v1, v5, v14);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  OUTLINED_FUNCTION_235();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(v0, v3, v8);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  v20[5] = v7;
  OUTLINED_FUNCTION_246();
  v21();
  v22 = v7;
  OUTLINED_FUNCTION_248();
  sub_1AC659DBC();

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC678A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC678AB8, 0, 0);
}

uint64_t sub_1AC678AB8()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_588(v11);
    *v12 = v13;
    v12[1] = sub_1AC678C68;
    v14 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v14, v15);
  }

  else
  {
    v17 = v0[7];
    if (v17)
    {
      v0[5] = v17;
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01C8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01D8();
    }

    OUTLINED_FUNCTION_44();

    return v19();
  }
}

uint64_t sub_1AC678C68()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC678D68()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 56);
  if (v1)
  {
    *(v0 + 40) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    OUTLINED_FUNCTION_287();
    sub_1AC7A01C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    sub_1AC7A01D8();
  }

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC678E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC678E3C, v5, 0);
}

uint64_t sub_1AC678E3C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 80);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_16_6();
  sub_1AC68A730(v7, v8);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v2;
  *(v9 + 48) = v3;
  *(v9 + 56) = v1;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_76(v10);
  *v11 = v12;
  v11[1] = sub_1AC678F68;
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_77_2();

  return MEMORY[0x1EEE6DE38](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1AC678F68()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);
    v8 = sub_1AC66D410;
  }

  else
  {
    v9 = *(v3 + 48);

    v8 = sub_1AC5C8B40;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC679074(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)(uint64_t), uint64_t a12)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v24 - v18;
  if (a4)
  {
    return a11(a1);
  }

  HIDWORD(v24) = a10;
  v21 = sub_1AC7A0288();
  (*(*(v21 - 8) + 16))(v19, a5, v21);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
  v22 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v22;
  *(v23 + 40) = a7;
  *(v23 + 48) = a8;
  *(v23 + 56) = a9;
  *(v23 + 64) = BYTE4(v24) & 1;
  *(v23 + 72) = a11;
  *(v23 + 80) = a12;

  sub_1AC659DBC();
}

uint64_t sub_1AC679250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = v10;
  *(v8 + 80) = v11;
  *(v8 + 120) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC679284, 0, 0);
}

uint64_t sub_1AC679284()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC67933C, Strong, 0);
  }

  else
  {
    (*(v0 + 72))();
    OUTLINED_FUNCTION_44();

    return v2();
  }
}

uint64_t sub_1AC67933C()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 96) = sub_1AC5CAF3C();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_585(v1);
  *v2 = v3;
  v2[1] = sub_1AC6793E0;
  v4 = OUTLINED_FUNCTION_16_5();

  return sub_1AC678E10(v4, v5, v6, v7, v8);
}

uint64_t sub_1AC6793E0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6794E0()
{
  OUTLINED_FUNCTION_85();

  (*(v0 + 72))(0);
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC679548()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6795DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v28 = a6;
  v8 = a4;
  v25 = a3;
  v26 = HIDWORD(a4);
  v27 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v12 + 16))(v14, a1, v11);
  v19 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
  v20 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = v19;
  v23 = v25;
  v22 = v26;
  *(v21 + 32) = a2;
  *(v21 + 40) = v23;
  *(v21 + 48) = v8;
  *(v21 + 52) = v22;
  *(v21 + 56) = v27;
  *(v21 + 64) = v28;
  *(v21 + 72) = a7;
  (*(v12 + 32))(v21 + v20, v14, v11);
  swift_retain_n();

  sub_1AC659DBC();
}

uint64_t sub_1AC679828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 48) = v13;
  *(v8 + 56) = v14;
  *(v8 + 112) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 + 64);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC679910, v13, 0);
}

uint64_t sub_1AC679910()
{
  OUTLINED_FUNCTION_640();
  v14 = v1;
  OUTLINED_FUNCTION_102();
  v2 = *(v0 + 112);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  OUTLINED_FUNCTION_30(&unk_1AC7AE808);
  v13 = v7;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_585(v8);
  *v9 = v10;
  v9[1] = sub_1AC679A04;
  v11 = *(v0 + 16);

  return v13(&unk_1AC7AAC60, v6, v11);
}

uint64_t sub_1AC679A04()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC679B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = v12[11];
  v14 = v12[8];
  v15 = v12[9];
  v30 = v12[6];
  v17 = v12[4];
  v16 = v12[5];
  v18 = v12[3];
  (*(v15 + 16))(v13, v12[7], v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = v17;
  *(v20 + 4) = v16;
  (*(v15 + 32))(&v20[v19], v13, v14);
  sub_1AC67A354(v18, v17, v16, sub_1AC6893C4, v20);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_1AC679C30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];
  *(v5 + 16) = *a1;
  ObjectType = swift_getObjectType();
  v14 = (*(v10 + 40) + **(v10 + 40));
  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_1AC679D88;

  return v14(a2, a3, a4, a5, ObjectType, v10);
}

uint64_t sub_1AC679D88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v10();
  }
}

void sub_1AC679E9C()
{
  OUTLINED_FUNCTION_57();
  v19 = v0;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v2 = *(v0 + 32);
  v3 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v3, qword_1ED9386C8);
  swift_unknownObjectRetain();
  v4 = v2;
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05F8();
  swift_unknownObjectRelease();

  v7 = OUTLINED_FUNCTION_645();
  v8 = *(v0 + 32);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_448();
    OUTLINED_FUNCTION_418();
    v10 = OUTLINED_FUNCTION_230();
    v18 = v10;
    *v9 = 136315394;
    swift_getObjectType();
    v11 = sub_1AC7A0F78();
    v13 = sub_1AC5CFE74(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v1 = v15;
    _os_log_impl(&dword_1AC5BC000, v5, v6, "SpeechAnalyzer: %s failed to finalize: %@", v9, 0x16u);
    sub_1AC5C9624(v1, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_125_1();
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_129();
  }

  else
  {
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_634();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1AC67A05C(void *a1, uint64_t a2, uint64_t a3, char a4, CMTimeValue a5, uint64_t a6, CMTimeEpoch a7)
{
  if (a4)
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v10 = sub_1AC79FDE8();
    __swift_project_value_buffer(v10, qword_1ED9386C8);
    v11 = a1;
    v12 = sub_1AC79FDC8();
    v13 = sub_1AC7A05E8();
    sub_1AC688EEC(a1, a2, a3, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1AC5BC000, v12, v13, "SpeechAnalyzer: Finalization failed: %@", v14, 0xCu);
      sub_1AC5C9624(v15, &unk_1EB56C630, &qword_1AC7A7E40);
      MEMORY[0x1B26EAB10](v15, -1, -1);
      MEMORY[0x1B26EAB10](v14, -1, -1);
    }

    time.value = a1;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01C8();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    v24 = sub_1AC79FDC8();
    v25 = sub_1AC7A05E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      time.value = a5;
      *&time.timescale = a6;
      time.epoch = a7;
      v28 = CMTimeCopyDescription(0, &time);
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1AC5BC000, v24, v25, "SpeechAnalyzer: Finalized through %@", v26, 0xCu);
      sub_1AC5C9624(v27, &unk_1EB56C630, &qword_1AC7A7E40);
      MEMORY[0x1B26EAB10](v27, -1, -1);
      MEMORY[0x1B26EAB10](v26, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01D8();
  }
}

void sub_1AC67A354(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  v12 = HIDWORD(a2);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v13 = sub_1AC79FDE8();
  __swift_project_value_buffer(v13, qword_1ED9386C8);
  v14 = sub_1AC79FDC8();
  v15 = sub_1AC7A05E8();
  if (os_log_type_enabled(v14, v15))
  {
    v25 = a4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    time.value = a1;
    time.timescale = v10;
    time.flags = v12;
    time.epoch = a3;
    v18 = CMTimeCopyDescription(0, &time);
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_1AC5BC000, v14, v15, "SpeechAnalyzer: Setting volatile range barrier at %@", v16, 0xCu);
    sub_1AC5C9624(v17, &unk_1EB56C630, &qword_1AC7A7E40);
    MEMORY[0x1B26EAB10](v17, -1, -1);
    v19 = v16;
    a4 = v25;
    MEMORY[0x1B26EAB10](v19, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers;
  swift_beginAccess();

  sub_1AC703C8C();
  v22 = *(*(v6 + v21) + 16);
  sub_1AC703DDC(v22);
  v23 = *(v6 + v21);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 40 * v22;
  *(v24 + 32) = a1;
  *(v24 + 40) = v10;
  *(v24 + 44) = v12;
  *(v24 + 48) = a3;
  *(v24 + 56) = sub_1AC68A87C;
  *(v24 + 64) = v20;
  *(v6 + v21) = v23;
  swift_endAccess();
  sub_1AC5C9678();
}

uint64_t sub_1AC67A574(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1AC67A6A0;

  return v7(v2 + 32, ObjectType, v3);
}

uint64_t sub_1AC67A6A0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC67A784()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  return OUTLINED_FUNCTION_28_4();
}

uint64_t SpeechAnalyzer.finish(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC67A7C4, v3);
}

uint64_t sub_1AC67A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = OUTLINED_FUNCTION_172();
  if (sub_1AC65BF3C(v13, v14))
  {
    v16 = v12[4];
    v15 = v12[5];
    v18 = v12[2];
    v17 = v12[3];
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v19, v20);
    v21 = swift_task_alloc();
    v12[6] = v21;
    v21[2] = v15;
    v21[3] = v18;
    v21[4] = v17;
    v21[5] = v16;
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_42_1(v22);
    *v23 = v24;
    v23[1] = sub_1AC67A930;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_77_2();

    return MEMORY[0x1EEE6DE38](v25, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_77_2();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_1AC67A930()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = sub_1AC65CDCC;
  }

  else
  {
    v9 = *(v3 + 40);

    v8 = j__OUTLINED_FUNCTION_28_4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC67AA3C(uint64_t a1, uint64_t a2, CMTimeValue a3, unint64_t a4, CMTimeEpoch a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1AC67AC18(a3, a4, a5, sub_1AC688D44, v14);
}

uint64_t sub_1AC67ABA4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01D8();
  }
}

uint64_t sub_1AC67AC18(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v10 = sub_1AC7A0288();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v48 - v15;
  v58 = v5;
  v17 = (v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  if (*(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange + 48) & 1) == 0 && ((v39 = v17[4], v38 = v17[5], v41 = v17[2], v40 = v17[3], v42 = v17[1], v61 = *v17, v62 = v42, v63 = v41, v64 = v40, v65 = v39, v66 = v38, (sub_1AC7A0528()) || (sub_1AC7A0678()))
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v56);
    v43 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
    v44 = swift_allocObject();
    v46 = v57;
    v45 = v58;
    v44[2] = v58;
    v44[3] = v43;
    v44[4] = v45;
    v44[5] = v46;
    v44[6] = a5;
    swift_retain_n();

    sub_1AC659DBC();
  }

  else
  {
    time.value = a1;
    *&time.timescale = a2;
    v52 = a3;
    time.epoch = a3;
    v18 = CMTimeCopyDescription(0, &time);
    sub_1AC7A0338();
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v50 = a1;
    v51 = a2;
    v53 = a5;
    v19 = sub_1AC79FDE8();
    __swift_project_value_buffer(v19, qword_1ED9386C8);
    v20 = v18;
    v21 = sub_1AC79FDC8();
    v22 = sub_1AC7A05E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v18;
      v25 = v20;
      _os_log_impl(&dword_1AC5BC000, v21, v22, "SpeechAnalyzer: Setting finisher input barrier at %@", v23, 0xCu);
      sub_1AC5C9624(v24, &unk_1EB56C630, &qword_1AC7A7E40);
      MEMORY[0x1B26EAB10](v24, -1, -1);
      MEMORY[0x1B26EAB10](v23, -1, -1);
    }

    v26 = swift_allocObject();
    swift_weakInit();
    v28 = v54;
    v27 = v55;
    v29 = *(v55 + 16);
    v49 = v18;
    v30 = v56;
    v29(v54, v59, v56);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = (v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v27 + 32))(v34 + v31, v28, v30);
    *(v34 + v32) = v26;
    *(v34 + v33) = v49;
    v35 = (v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8));
    v36 = v53;
    *v35 = v57;
    v35[1] = v36;

    v37 = v20;

    sub_1AC675644(v50, v51, v52, 1, sub_1AC688D48, v34);

    (*(v27 + 8))(v59, v30);
  }
}

Swift::Void __swiftcall SpeechAnalyzer.cancelAnalysis(before:)(CMTime before)
{
  sub_1AC70C064(before.value, *&before.timescale, before.epoch);
  OUTLINED_FUNCTION_65();

  sub_1AC65BF3C(0xD000000000000017, v1);
}

uint64_t sub_1AC67B154()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD000000000000014, v1))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v2 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v2, qword_1ED9386C8);
    v3 = sub_1AC79FDC8();
    v4 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_153(v4))
    {
      v5 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v5);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_129();
    }

    v11 = swift_task_alloc();
    *(v0 + 24) = v11;
    *v11 = v0;
    v11[1] = sub_1AC62A5AC;

    return sub_1AC65D064(1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC67B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC67B2DC, a4, 0);
}

uint64_t sub_1AC67B2DC()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v0 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v0, qword_1ED9386C8);
  v1 = sub_1AC79FDC8();
  v2 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v2))
  {
    v3 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v3);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_129();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_422(v9);
  *v10 = v11;
  v10[1] = sub_1AC67B3E8;
  v12 = OUTLINED_FUNCTION_362();

  return sub_1AC65D064(v12, 0);
}

uint64_t sub_1AC67B3E8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC67B4E0()
{
  OUTLINED_FUNCTION_85();
  (*(v0 + 24))(0);
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC67B540(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_1AC7A0288();
  (*(*(v18 - 8) + 16))(v17, a5, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v19 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = a4 & 1;
  *(v20 + 64) = a7;
  *(v20 + 72) = v19;
  *(v20 + 80) = v23;
  *(v20 + 88) = a9;
  sub_1AC688FC8(a1, a2, a3, a4 & 1);
  v21 = a7;

  sub_1AC659DBC();
}

uint64_t sub_1AC67B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 136) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1AC67B74C, 0, 0);
}

uint64_t sub_1AC67B74C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  if (*(v0 + 136))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v2 = *(v0 + 72);
    v3 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v3, qword_1ED9386C8);
    v4 = v2;
    v5 = sub_1AC79FDC8();
    v6 = sub_1AC7A05E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 72);
      OUTLINED_FUNCTION_150();
      v8 = OUTLINED_FUNCTION_97_0();
      *v1 = 138412290;
      *(v1 + 4) = v4;
      *v8 = v7;
      v9 = v4;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1AC5C9624(v8, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {
      v16 = swift_task_alloc();
      v17 = OUTLINED_FUNCTION_584(v16);
      *v17 = v18;
      v17[1] = sub_1AC67BBB8;
LABEL_14:
      OUTLINED_FUNCTION_523();

      return sub_1AC65D064(v34, v35);
    }

    v32 = *(v0 + 64);
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v19 = *(v0 + 72);
    v20 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v20, qword_1ED9386C8);
    v21 = v19;
    v22 = sub_1AC79FDC8();
    v23 = sub_1AC7A05E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 72);
      OUTLINED_FUNCTION_150();
      v25 = OUTLINED_FUNCTION_97_0();
      *v1 = 138412290;
      *(v1 + 4) = v21;
      *v25 = v24;
      v26 = v21;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      sub_1AC5C9624(v25, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    *(v0 + 104) = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      *(v0 + 112) = v33;
      *v33 = v0;
      OUTLINED_FUNCTION_85_0(v33);
      goto LABEL_14;
    }
  }

  (*(v0 + 88))(v32);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45);
}

uint64_t sub_1AC67BA58()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC67BB58()
{
  OUTLINED_FUNCTION_85();
  (*(v0 + 88))(0);
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC67BBB8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC67BCB8()
{
  OUTLINED_FUNCTION_85();
  (*(v0 + 88))(*(v0 + 64));
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC67BD18(uint64_t a1)
{
  v2 = v1;
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v4 = sub_1AC79FDE8();
  __swift_project_value_buffer(v4, qword_1ED9386C8);
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AC5BC000, v5, v6, "SpeechAnalyzer: Clearing volatile range barriers", v7, 2u);
    MEMORY[0x1B26EAB10](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = v9 + 64;
    do
    {
      v12 = *(v11 - 8);
      v14[0] = a1;
      v14[1] = 0;
      v14[2] = 0;
      v15 = 1;

      v12(v14);

      v11 += 40;
      --v10;
    }

    while (v10);
  }

  *(v2 + v8) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AC67BEAC(void *a1)
{
  v2 = a1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v2 + 56) + **(v2 + 56));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AC67BFCC;

  return v6(ObjectType, v2);
}

uint64_t sub_1AC67BFCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *v1;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_44();

  return v4();
}

__n128 SpeechAnalyzer.volatileRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  v3 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 48);
  v4 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  *(a1 + 16) = v4;
  result = v2[2];
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v4 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v5 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1AC5C3958(v4, v5);
}

uint64_t sub_1AC67C11C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_82();
  v3 = v0;

  return v3(v1);
}

uint64_t sub_1AC67C1A4()
{
  OUTLINED_FUNCTION_85();

  AnalysisContext.contextualStrings.getter();
  OUTLINED_FUNCTION_117_2();

  OUTLINED_FUNCTION_82();

  return v1(v0);
}

uint64_t sub_1AC67C238()
{
  OUTLINED_FUNCTION_85();

  AnalysisContext.userData.getter();
  OUTLINED_FUNCTION_117_2();

  OUTLINED_FUNCTION_82();

  return v1(v0);
}

uint64_t SpeechAnalyzer.setContext(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67C2CC, v1);
}

uint64_t sub_1AC67C2CC()
{
  OUTLINED_FUNCTION_72();
  if (sub_1AC65BF3C(0x65746E6F43746573, 0xEE00293A5F287478))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext;

    v4 = OUTLINED_FUNCTION_123();
    sub_1AC6877BC(v4, v5, v6);

    *(v2 + v3) = v1;

    OUTLINED_FUNCTION_38_5();
    v7 = OUTLINED_FUNCTION_89();
    sub_1AC6877BC(v7, v8, v9);
    sub_1AC67C4F8(v1);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_55(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_140_1(v11);

    return sub_1AC674E40();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v14();
  }
}

uint64_t sub_1AC67C418()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1AC67C4F8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  os_unfair_lock_lock(v3);

  *(v3 + 8) = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC637EE4;
  v3 = OUTLINED_FUNCTION_172();

  return sub_1AC67C738(v3, v4, v5, 0);
}

uint64_t sub_1AC67C688(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 8);
  *v6 = v2;
  v6[1] = sub_1AC60D7F0;

  return sub_1AC688C28(a1, ObjectType, v7);
}

uint64_t sub_1AC67C738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC67C75C, 0, 0);
}

uint64_t sub_1AC67C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14;
  v16 = v14[2];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v41 = v14;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1AC6314F8(0, v17, 0);
    v18 = v42;
    v19 = (v16 + 32);
    do
    {
      v20 = *v19;
      ObjectType = swift_getObjectType();
      v22 = dynamic_cast_existential_1_unconditional(v20, ObjectType, &protocol descriptor for InternalSpeechModule);
      v24 = v23;
      a11 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      swift_unknownObjectRetain();
      if (v26 >= v25 >> 1)
      {
        sub_1AC6314F8((v25 > 1), v26 + 1, 1);
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += 2;
      --v17;
    }

    while (v17);
    v15 = v41;
  }

  v15[6] = v18;
  v29 = v15[4];
  v28 = v15[5];
  OUTLINED_FUNCTION_99();
  v30 = swift_allocObject();
  v15[7] = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;

  v31 = swift_task_alloc();
  v15[8] = v31;
  *v31 = v15;
  v31[1] = sub_1AC67C908;
  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_115();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, sub_1AC66D1B4, a11, a12, a13, a14);
}

void sub_1AC67C908()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_138();

    MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

id sub_1AC67CA34()
{
  OUTLINED_FUNCTION_57();
  v32 = v1;
  v4 = v1[9];
  if (*(v4 + 16))
  {

    sub_1AC5C8FDC(1, v4);
    if (!*(v4 + 16))
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_612();

    sub_1AC6091F8(v5);
    v7 = v6;
    v8 = v3 >> 1;
    while (v8 != v2)
    {
      if (v2 >= v8)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
LABEL_25:
        v16 = qword_1EB56E820;
        goto LABEL_26;
      }

      v9 = v2 + 1;
      v10 = *(v0 + 8 * v2);
      OUTLINED_FUNCTION_392();
      swift_bridgeObjectRetain_n();
      sub_1AC6091F8(v10);
      sub_1AC683BF0(v11, v7);
      v7 = v12;

      v2 = v9;
    }

    v13 = v1[10];
    swift_unknownObjectRelease();
    v31 = sub_1AC751CD0(v7);
    sub_1AC684D70(&v31);
    if (v13)
    {
    }

    v17 = v31;
    v18 = sub_1AC61C24C();
    if (!v18)
    {

      v16 = 0;
      goto LABEL_34;
    }

    v19 = v1[3];
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      for (i = 0; v20 != i; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v28 = OUTLINED_FUNCTION_605();
          v24 = MEMORY[0x1B26E95B0](v28);
        }

        else
        {
          OUTLINED_FUNCTION_356();
          if (v23)
          {
            goto LABEL_39;
          }

          v24 = *(v17 + 8 * i + 32);
        }

        v16 = v24;
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }

        [v24 sampleRate];
        v26 = v25;
        [v21 sampleRate];
        if (v27 <= v26)
        {
          goto LABEL_32;
        }
      }

      result = sub_1AC68D47C(v17);
      if (!result)
      {
        goto LABEL_43;
      }

      v16 = result;
LABEL_32:

      goto LABEL_33;
    }

    result = sub_1AC68D47C(v17);
    if (result)
    {
      v16 = result;

LABEL_33:

      goto LABEL_34;
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
    v15 = v1[3];

    if (!v15)
    {
      if (qword_1EB56B580 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_25;
    }

    v16 = v1[3];
LABEL_26:
    v29 = v16;
LABEL_34:
    OUTLINED_FUNCTION_82();

    return v30(v16);
  }

  return result;
}

uint64_t sub_1AC67CD30(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1AC67CE30;

  return v8(v4, v5);
}

uint64_t sub_1AC67CE30()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1AC67CF18()
{
  OUTLINED_FUNCTION_57();
  v1 = *(v0 + 32);
  v2 = sub_1AC61C24C();
  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0](v3, *(v0 + 32));
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(v1 + 32 + 8 * v3);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    [v4 sampleRate];
    v7 = v6;

    ++v3;
    if (v7 == 0.0)
    {

      v1 = 0;
      break;
    }
  }

  **(v0 + 16) = v1;
  OUTLINED_FUNCTION_29();

  v8();
}

uint64_t SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = OUTLINED_FUNCTION_377();
  SpeechAnalyzer.init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(a1, a2, a3, a4, a5, 0, a7, a8, a9, a10, a11, v20, a9, a10, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  return v18;
}

void SpeechAnalyzer.init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v124 = v26;
  v125 = v25;
  v28 = v27;
  v115 = v29;
  v126 = v31;
  v127 = v30;
  v123 = a21;
  v120 = v32;
  v121 = a22;
  OUTLINED_FUNCTION_44_4();
  v119 = v33;
  v118 = a23;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_596();
  v116 = v35;
  v117 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v37);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_482();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  v40 = OUTLINED_FUNCTION_167(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v111 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v48 = OUTLINED_FUNCTION_167(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v122 = v49 - v50;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v111 - v52;
  v54 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_597();
  v113 = v59;
  v114 = v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v111 - v61;
  swift_defaultActor_initialize();
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  OUTLINED_FUNCTION_220(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  OUTLINED_FUNCTION_472(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v63;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v63;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  OUTLINED_FUNCTION_471((v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange), v64);
  v65 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v65 = 0;
  v65[1] = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v66;
  v67 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v67 = 0;
  *(v67 + 8) = 0;
  v68 = v28;
  v69 = OUTLINED_FUNCTION_389();
  sub_1AC68A3F8(v69, v70, &qword_1EB56C7E8, &qword_1AC7AA900);
  v71 = type metadata accessor for AnalysisOptions(0);
  OUTLINED_FUNCTION_96(v46, 1, v71);
  if (v72)
  {
    sub_1AC5C9624(v46, &qword_1EB56C7E8, &qword_1AC7AA900);
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v54);
    sub_1AC7A0338();
    OUTLINED_FUNCTION_96(v53, 1, v54);
    v82 = v62;
    if (!v72)
    {
      sub_1AC5C9624(v53, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    OUTLINED_FUNCTION_504();
    v76(v53, v46, v54);
    sub_1AC68A2BC();
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v54);
    v80 = OUTLINED_FUNCTION_515();
    v81(v80);
    v82 = v62;
  }

  sub_1AC68A130(v127, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  v83 = OUTLINED_FUNCTION_594();
  sub_1AC68A130(v83, v84);
  v112 = v68;
  sub_1AC68A3F8(v68, v43, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v43);
  sub_1AC68A444(v24, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v85 = sub_1AC6089EC(v115);

  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = v85;

  v87 = v123;
  v86 = v124;
  if (v124)
  {
    v88 = v123;
  }

  else
  {
    v88 = 0;
  }

  v89 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v89 = v124;
  v89[1] = v88;
  sub_1AC5D9374(v86, v87);
  v90 = OUTLINED_FUNCTION_142();
  sub_1AC5C3958(v90, v91);
  v92 = v125;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v125;

  OUTLINED_FUNCTION_38_5();
  sub_1AC6877BC(v93, v92, v94);

  v95 = *(v56 + 16);
  v96 = v54;
  v95(v122, v82, v54);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v54);
  v100 = v119;
  v101 = *(v119 + 16);
  v102 = v82;
  v111 = v82;
  v103 = v56;
  v104 = v116;
  v105 = v121;
  v101(v116, v126, v121);
  v106 = v114;
  v95(v114, v102, v96);
  v107 = (*(v100 + 80) + 56) & ~*(v100 + 80);
  v108 = (v117 + *(v103 + 80) + v107) & ~*(v103 + 80);
  v109 = swift_allocObject();
  *(v109 + 2) = 0;
  *(v109 + 3) = 0;
  v110 = v118;
  *(v109 + 4) = v105;
  *(v109 + 5) = v110;
  *(v109 + 6) = v23;
  (*(v100 + 32))(&v109[v107], v104, v105);
  (*(v103 + 32))(&v109[v108], v106, v96);

  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();

  sub_1AC5C3958(v124, v123);
  sub_1AC5C9624(v112, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v100 + 8))(v126, v105);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  (*(v103 + 8))(v111, v96);
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC67D7E0, a4, 0);
}

uint64_t AnalyzerInput.init(buffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

void AnalyzerInput.init(buffer:bufferStartTime:recordedTime:readyUpstreamTime:)(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  if ((a5 & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_117();
    sub_1AC70C064(v19, v20, a4);
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
}

void AnalyzerInput.init(buffer:bufferStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_302();
  v11 = v10;
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_334();
    sub_1AC70C064(v13, v14, v15);
  }

  *v11 = v7;
  *(v11 + 8) = v6;
  *(v11 + 16) = v5;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5 & 1;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
}

id sub_1AC67D9DC()
{
  v3 = *MEMORY[0x1E69E9840];
  if (qword_1EB56B588 != -1)
  {
    swift_once();
  }

  v1[0] = xmmword_1EB56C7A8;
  v1[1] = unk_1EB56C7B8;
  v2 = qword_1EB56C7C8;
  result = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
  if (!result)
  {
    __break(1u);
  }

  qword_1EB56E820 = result;
  return result;
}

double sub_1AC67DA98()
{
  qword_1EB56C7C8 = 0;
  result = 0.0;
  xmmword_1EB56C7A8 = 0u;
  unk_1EB56C7B8 = 0u;
  return result;
}

uint64_t SpeechAnalyzer.prepareToAnalyze()()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  v3 = OUTLINED_FUNCTION_248();

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v3, v4, 0);
}

uint64_t SpeechAnalyzer.prepareToAnalyze(withProgressReadyHandler:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1AC5D9374(v3, v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_422(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_85_0(v5);
  v7 = OUTLINED_FUNCTION_155_1();

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v7, v8, v9);
}

uint64_t sub_1AC67DBD4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    v9 = sub_1AC67DD3C;
  }

  else
  {
    v9 = sub_1AC67DCE4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_1AC67DCE4()
{
  OUTLINED_FUNCTION_85();
  sub_1AC5C3958(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC67DD3C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC5C3958(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t SpeechAnalyzer.prepareToAnalyze(reportingInto:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67DDB4, v1);
}

uint64_t sub_1AC67DDB4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_235();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_382(v5);
    v7 = sub_1AC687DC0;
    v8 = 0;
    v9 = v2;
  }

  else
  {
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_422(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_140_1(v11);
    v8 = OUTLINED_FUNCTION_248();
    v9 = 0;
  }

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v8, v7, v9);
}

id sub_1AC67DECC(uint64_t a1, id a2)
{
  [a2 setCompletedUnitCount_];
  [a2 setTotalUnitCount_];

  return [a2 addChild:a1 withPendingUnitCount:1];
}

uint64_t SpeechAnalyzer.setInputSequence<A>(_:)()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  OUTLINED_FUNCTION_203_0();

  return SpeechAnalyzer.start<A>(inputSequence:)();
}

uint64_t SpeechAnalyzer.setInputSequence<A>(_:audioFormat:)()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  OUTLINED_FUNCTION_203_0();

  return SpeechAnalyzer.start<A>(inputSequence:)();
}

uint64_t SpeechAnalyzer.setInputSequence<A>(_:withAudioFormat:)()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  OUTLINED_FUNCTION_203_0();

  return SpeechAnalyzer.start<A>(inputSequence:)();
}

void SpeechAnalyzer.__allocating_init(client:modules:options:restrictedLogging:didChangeVolatileRange:)()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v12);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_49_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v14);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_234();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v16);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_169_0();
  v19 = type metadata accessor for ClientInfo(v18);
  v20 = OUTLINED_FUNCTION_167(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v11, v1);
  sub_1AC68A3F8(v8, v2, &qword_1EB56C7E8, &qword_1AC7AA900);
  v21 = OUTLINED_FUNCTION_289();
  sub_1AC5D9374(v21, v22);
  sub_1AC6D980C(v2);
  swift_allocObject();
  v23 = OUTLINED_FUNCTION_510();
  SpeechAnalyzer.init(client:modules:options:)(v23, v31, v0);
  if (v6)
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_414();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v1;
    v28[5] = v6;
    v28[6] = v4;

    OUTLINED_FUNCTION_99_1();
    sub_1AC659DBC();

    v29 = OUTLINED_FUNCTION_289();
    sub_1AC5C3958(v29, v30);
  }

  sub_1AC5C9624(v8, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_505();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v6);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v8);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_234();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_169_0();
  v13 = type metadata accessor for ClientInfo(v12);
  v14 = OUTLINED_FUNCTION_167(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v3, v17);
  v18 = OUTLINED_FUNCTION_171();
  sub_1AC5D9374(v18, v19);
  sub_1AC6089EC(v2);

  v20 = OUTLINED_FUNCTION_60_2();
  sub_1AC68A3F8(v20, v21, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v5);
  OUTLINED_FUNCTION_377();
  v22 = OUTLINED_FUNCTION_346();
  SpeechAnalyzer.init(client:modules:options:)(v22, v23, v0);
  if (v1)
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_414();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_628(v28);

    OUTLINED_FUNCTION_99_1();
    sub_1AC659DBC();

    v29 = OUTLINED_FUNCTION_171();
    sub_1AC5C3958(v29, v30);
  }

  sub_1AC5C9624(v4, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_505();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v6);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v8);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_234();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_169_0();
  v13 = type metadata accessor for ClientInfo(v12);
  v14 = OUTLINED_FUNCTION_167(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v3, v17);
  sub_1AC6089EC(v2);

  v18 = OUTLINED_FUNCTION_60_2();
  sub_1AC68A3F8(v18, v19, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v5);
  OUTLINED_FUNCTION_377();
  v20 = OUTLINED_FUNCTION_346();
  SpeechAnalyzer.init(client:modules:options:)(v20, v21, v0);
  if (v1)
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_414();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_628(v26);
    v27 = OUTLINED_FUNCTION_171();
    sub_1AC5D9374(v27, v28);
    v29 = OUTLINED_FUNCTION_171();
    sub_1AC5D9374(v29, v30);

    OUTLINED_FUNCTION_99_1();
    sub_1AC659DBC();

    v31 = OUTLINED_FUNCTION_171();
    sub_1AC5C3958(v31, v32);
    v33 = OUTLINED_FUNCTION_171();
    sub_1AC5C3958(v33, v34);
  }

  sub_1AC5C9624(v4, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67E344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC67E368, a4, 0);
}

uint64_t sub_1AC67E368()
{
  OUTLINED_FUNCTION_72();

  v0 = OUTLINED_FUNCTION_170();
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(v0, v1);
  OUTLINED_FUNCTION_44();

  return v2();
}

void SpeechAnalyzer.__allocating_init(client:modules:options:restrictedLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_88_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_167(v27);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v31);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_481();
  v33 = type metadata accessor for ClientInfo(0);
  v34 = OUTLINED_FUNCTION_167(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_6();
  v35 = OUTLINED_FUNCTION_515();
  sub_1AC68A130(v35, v36);
  sub_1AC68A3F8(v24, v30, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v30);
  swift_allocObject();
  v37 = OUTLINED_FUNCTION_388();
  SpeechAnalyzer.init(client:modules:options:)(v37, v38, v20);
  sub_1AC5C9624(v24, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC68A874, a4, 0);
}

void SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v49 = v26;
  v28 = v27;
  v48 = v29;
  v31 = v30;
  v50 = v33;
  v51 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v34);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_481();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v36);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_44_4();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  v41 = type metadata accessor for ClientInfo(0);
  v42 = OUTLINED_FUNCTION_167(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_6();
  v43 = OUTLINED_FUNCTION_172();
  sub_1AC68A130(v43, v44);
  (*(v39 + 16))(v23, v51, a22);
  sub_1AC5D9374(v28, a21);
  v45 = sub_1AC6089EC(v31);

  sub_1AC68A3F8(v48, v25, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v25);
  v46 = OUTLINED_FUNCTION_39();
  SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(v46, v47, v45, v24, v49, v28, a21, a22, a23);
  sub_1AC5C3958(v28, a21);

  sub_1AC5C9624(v48, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v39 + 8))(v51, a22);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_105();
}

void sub_1AC67EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v55 = v25;
  v56 = v23;
  v27 = v26;
  v51[1] = v28;
  v52 = v29;
  v57 = v30;
  v53 = a23;
  v54 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v32);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v51 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v36);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_44_4();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  v39 = type metadata accessor for ClientInfo(0);
  v40 = OUTLINED_FUNCTION_167(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_6();
  v41 = OUTLINED_FUNCTION_346();
  sub_1AC68A130(v41, v42);
  v43 = OUTLINED_FUNCTION_198();
  v44(v43);
  v45 = v52;
  sub_1AC68A3F8(v52, v35, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC5D9374(v27, a21);
  sub_1AC6D980C(v35);
  v50 = v53;
  v46 = OUTLINED_FUNCTION_390();
  SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(v46, v47, v54, v24, v55, v27, a21, a22, v50);
  sub_1AC5C3958(v27, a21);

  sub_1AC5C9624(v45, &qword_1EB56C7E8, &qword_1AC7AA900);
  v48 = OUTLINED_FUNCTION_171();
  v49(v48);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67EE68()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_422(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_382(v2);
  v4 = OUTLINED_FUNCTION_16_5();

  return SpeechAnalyzer.setModules(_:)(v4);
}

uint64_t sub_1AC67EEFC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AC67F01C, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_44();

    return v8();
  }
}

uint64_t sub_1AC67F01C()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:)()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_126();
  v2 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v2);
  *(v0 + 24) = OUTLINED_FUNCTION_126();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_55(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_95_2(v4);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67F13C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_126();
  v2 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v2);
  *(v0 + 24) = OUTLINED_FUNCTION_126();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_55(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_85_0(v4);
  OUTLINED_FUNCTION_172();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67F2F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC67F3DC()
{
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 40);
  if (v1)
  {

    OUTLINED_FUNCTION_82();

    return v2(v1);
  }

  else
  {
    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    v5 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(5, v5, v6);
    swift_willThrow();

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67F574, 0);
}

uint64_t sub_1AC67F574()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_422(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_382(v2);
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAudioFormat(compatibleWith:)();
}

uint64_t sub_1AC67F608()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_470();

    return v12(v3);
  }
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67F75C, 0);
}

uint64_t sub_1AC67F75C()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 40) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_587(v1);
  *v2 = v3;
  v2[1] = sub_1AC67F7F4;
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67F7F4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_470();

    return v12(v3);
  }
}

uint64_t sub_1AC67F928()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67F9A0, 0);
}

uint64_t sub_1AC67F9A0()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_422(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_382(v2);
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67FA38()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();

  return v5(v2);
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67FB5C, 0);
}

uint64_t sub_1AC67FB5C()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 40) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_587(v1);
  *v2 = v3;
  v2[1] = sub_1AC67FC0C;
  v4 = OUTLINED_FUNCTION_16_5();

  return sub_1AC67C738(v4, v5, v6, 0);
}

uint64_t sub_1AC67FC0C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC67FCF4()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_82();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:clientInfo:considering:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67FD70, 0);
}

uint64_t sub_1AC67FD70()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 40) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_587(v1);
  *v2 = v3;
  v2[1] = sub_1AC67FE08;
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67FE08()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();

  return v5(v2);
}

uint64_t SpeechAnalyzer.setDidChangeVolatileRange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *v3 = a1;
  v3[1] = v4;
  sub_1AC5D9374(a1, a2);
  v5 = OUTLINED_FUNCTION_39();

  return sub_1AC5C3958(v5, v6);
}

uint64_t SpeechAnalyzer.setDidChangeVolatileRange(_:)()
{
  OUTLINED_FUNCTION_78_0();
  sub_1AC5D9374(v0, v1);
  v2 = OUTLINED_FUNCTION_172();
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(v2, v3);
  v4 = OUTLINED_FUNCTION_172();

  return sub_1AC5C3958(v4, v5);
}

Swift::Void __swiftcall endModelRetention()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v0);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_169_0();
  sub_1AC7A0288();
  v2 = OUTLINED_FUNCTION_158_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_99();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();
}

uint64_t sub_1AC68006C()
{
  OUTLINED_FUNCTION_85();
  if (qword_1ED9373D0 != -1)
  {
    OUTLINED_FUNCTION_14_2(&qword_1ED9373D0);
  }

  v1 = qword_1ED938600;
  *(v0 + 16) = qword_1ED938600;

  return MEMORY[0x1EEE6DFA0](sub_1AC68A868, v1, 0);
}

uint64_t sub_1AC680108(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26[-v14];
  swift_beginAccess();
  v16 = 0;
  v17 = *(v2 + 176);
  while (*(v17 + 16) != v16)
  {
    if (*(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16) == a1)
    {
      swift_beginAccess();
      sub_1AC630C28();
      swift_endAccess();

      sub_1AC5C9624(v15 + *(v6 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
      break;
    }

    ++v16;
  }

  if ((*(v2 + 120) & 1) == 0 && *(*(v2 + 176) + 16) == *(v2 + 112))
  {
    swift_beginAccess();
    sub_1AC6F9470();
    swift_endAccess();
    v18 = *v15;
    sub_1AC5C9624(v15 + *(v6 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
    v19 = *(v2 + 152);
    if (v19)
    {
      v19(v18);
    }
  }

  v20 = *(v6 + 48);
  *v13 = a1;
  if (a2)
  {
    v21 = sub_1AC7A0AD8();
    __swift_storeEnumTagSinglePayload(v13 + v20, 1, 1, v21);
  }

  else
  {

    sub_1AC681D98(v13 + v20);
  }

  sub_1AC68A3F8(v13, v15, &qword_1EB56BF58, &qword_1AC7A9230);
  v22 = *(v6 + 48);
  *v10 = *v15;
  sub_1AC68A444(v15 + v22, v10 + v22, &qword_1EB56C878, &qword_1AC7AAD60);
  swift_beginAccess();
  sub_1AC703C44();
  v23 = *(*(v3 + 176) + 16);
  sub_1AC703D94(v23);
  v24 = *(v3 + 176);
  *(v24 + 16) = v23 + 1;
  sub_1AC68A444(v10, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, &qword_1EB56BF58, &qword_1AC7A9230);
  *(v3 + 176) = v24;
  swift_endAccess();
  sub_1AC680AD8();
  return sub_1AC5C9624(v13, &qword_1EB56BF58, &qword_1AC7A9230);
}

uint64_t sub_1AC680460(uint64_t a1, uint64_t (*a2)(void, char *))
{
  v4 = 0;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v5 == v4)
    {
      return 0;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
    v7 = (a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4);
    if (a2(*v7, &v7[*(v6 + 48)]))
    {
      break;
    }

    ++v4;
  }

  return v4;
}

uint64_t sub_1AC680560(uint64_t a1, char a2)
{
  result = sub_1AC61C24C();
  v5 = result;
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B26E95B0](i, a1);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    sub_1AC680108(v7, a2 & 1);
  }

  return result;
}

uint64_t sub_1AC680618(uint64_t a1)
{
  v4[2] = a1;
  swift_beginAccess();
  result = sub_1AC684F34((v1 + 176), sub_1AC68A6C0, v4);
  v3 = *(*(v1 + 176) + 16);
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1AC6A88B8(result, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1AC6806A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC61C24C();
  v6 = result;
  for (i = 0; ; ++i)
  {
    while (1)
    {
      v8 = i;
      if (i == v6)
      {
        return v8 != v6;
      }

      if ((a3 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1B26E95B0](i++, a3);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_13;
      }

      v9 = result;
      result = swift_unknownObjectRelease();
      if (v9 == a1)
      {
        return v8 != v6;
      }
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if (*(a3 + 32 + 8 * v8) == a1)
    {
      return v8 != v6;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AC680770()
{
  v1 = v0;
  v2 = sub_1AC6808F8();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 176);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AC6A88B8(0, *(v4 + 16));
  }

  else
  {
    *(v1 + 176) = sub_1AC60F664(0, *(v4 + 24) >> 1);
  }

  swift_endAccess();
  if (*(v1 + 168))
  {

    sub_1AC7A0318();
  }

  return v2;
}

uint64_t sub_1AC680840(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = *(v3 + 16);
  if (v4 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  swift_beginAccess();
  if (a1 < 0 || !v5)
  {
    return swift_endAccess();
  }

  result = sub_1AC5C9008(0, v5, v4, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      sub_1AC6A88B8(0, result);
      return swift_endAccess();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6808F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  swift_beginAccess();
  v8 = *(v0 + 176);
  v9 = *(v8 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v15 = MEMORY[0x1E69E7CC0];

    sub_1AC7A0A88();
    v11 = *(v2 + 80);
    v13 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v14 = *(v2 + 72);
    do
    {
      sub_1AC68A3F8(v12, v7, &qword_1EB56BF58, &qword_1AC7A9230);
      sub_1AC68A444(v7, v5, &qword_1EB56BF58, &qword_1AC7A9230);
      sub_1AC5C9624(&v5[*(v1 + 48)], &qword_1EB56C878, &qword_1AC7AAD60);
      sub_1AC7A0A68();
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      v12 += v14;
      --v9;
    }

    while (v9);

    return v15;
  }

  return result;
}

uint64_t sub_1AC680AD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  if ((*(v0 + 144) & 1) == 0)
  {
    if (!*(v0 + 168) || (, isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) != 0))
    {
      v6 = sub_1AC7A0288();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
      v7 = sub_1AC5C8B9C(qword_1EB56B118, &qword_1EB56C880, &unk_1AC7AE290);
      v8 = swift_allocObject();
      v8[2] = v0;
      v8[3] = v7;
      v8[4] = v0;
      swift_retain_n();
      sub_1AC659DBC();
      *(v0 + 168) = v9;
    }
  }

  return result;
}

uint64_t sub_1AC680C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1AC680CC0;

  return sub_1AC680E8C();
}

uint64_t sub_1AC680CC0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  *(v6 + 32) = v5;

  v7 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC680DB8()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 32) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1AC680CC0;

    return sub_1AC680E8C();
  }

  else
  {
    *(*(v0 + 16) + 168) = 0;

    OUTLINED_FUNCTION_44();

    return v3();
  }
}

uint64_t sub_1AC680E8C()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C888, &qword_1AC7AAD80);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v2 = sub_1AC7A0AE8();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_1AC7A0AD8();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C878, &qword_1AC7AAD60);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC681110, v0, 0);
}

uint64_t sub_1AC681110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = *(v18 + 144);
  v20 = *(v18 + 152);
  v21 = *(v18 + 64);
  OUTLINED_FUNCTION_574(v21 + 176, v18 + 16);
  v22 = *(v21 + 176);
  v23 = *(v22 + 16);

  for (i = 0; v23 != i; ++i)
  {
    if (i >= *(v22 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DA68](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v33 = *(v18 + 224);
    OUTLINED_FUNCTION_89_0();
    sub_1AC68A3F8(v22 + v34 + *(v20 + 72) * i, v33, &qword_1EB56BF58, &qword_1AC7A9230);
    OUTLINED_FUNCTION_65_4(v33 + *(v19 + 48));
    if (!v35)
    {
      v40 = *(v18 + 248);
      v41 = *(v18 + 232);

      v42 = OUTLINED_FUNCTION_124_0();
      sub_1AC68A444(v42, v43, v44, v45);

      sub_1AC68A444(v41 + *(v19 + 48), v40, &qword_1EB56C878, &qword_1AC7AAD60);
      goto LABEL_8;
    }

    v24 = sub_1AC5C9624(*(v18 + 224), &qword_1EB56BF58, &qword_1AC7A9230);
  }

  v36 = *(v18 + 112);

  v37 = OUTLINED_FUNCTION_158_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
LABEL_8:
  v46 = *(v18 + 112);
  sub_1AC68A3F8(*(v18 + 248), *(v18 + 240), &qword_1EB56C878, &qword_1AC7AAD60);
  v47 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, v48, v46);
  v50 = *(v18 + 240);
  if (EnumTagSinglePayload != 1)
  {
    v62 = *(v18 + 136);
    v63 = *(v18 + 112);
    v64 = *(v18 + 120);
    v65 = *(v64 + 32);
    *(v18 + 256) = v65;
    *(v18 + 264) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v65(v62, v50, v63);
    *(v18 + 48) = 0;
    *(v18 + 40) = 0;
    *(v18 + 56) = 1;
    sub_1AC7A0DD8();
    v66 = swift_task_alloc();
    *(v18 + 272) = v66;
    sub_1AC68A730(&qword_1EB56AA80, MEMORY[0x1E69E8820]);
    *v66 = v18;
    v66[1] = sub_1AC681468;
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DA68](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_1AC5C9624(*(v18 + 248), &qword_1EB56C878, &qword_1AC7AAD60);
  v51 = OUTLINED_FUNCTION_89();
  sub_1AC5C9624(v51, v52, &qword_1AC7AAD60);
  OUTLINED_FUNCTION_283();

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_26();

  return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1AC681468()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 280) = v0;

  v7 = OUTLINED_FUNCTION_73_1();
  v8(v7);
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1AC6815C0()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 176);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 152);
    v72 = *(*(v0 + 144) + 48);
    v73 = *(v0 + 216);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v70 = *(v4 + 72);
    v71 = (*(v4 + 80) + 32) & ~*(v4 + 80);

    v75 = MEMORY[0x1E69E7CC0];
    v74 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *(v0 + 208);
      v6 = *(v0 + 216);
      v8 = *(v0 + 200);
      v9 = *(v0 + 144);
      v10 = *(v0 + 112);
      v11 = OUTLINED_FUNCTION_506();
      sub_1AC68A3F8(v11, v12, &qword_1EB56BF58, &qword_1AC7A9230);
      v13 = *(v9 + 48);
      *v7 = *v6;
      sub_1AC68A444(v73 + v72, v7 + v13, &qword_1EB56C878, &qword_1AC7AAD60);
      sub_1AC68A3F8(v7, v8, &qword_1EB56BF58, &qword_1AC7A9230);

      v14 = *(v9 + 48);
      OUTLINED_FUNCTION_96(v8 + v14, 1, v10);
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_511();
        sub_1AC5C9624(v16, v17, &qword_1AC7AAD60);
        v18 = v74;
      }

      else
      {
        (*(v0 + 256))(*(v0 + 128), v8 + v14, *(v0 + 112));
        sub_1AC68A730(&qword_1EB56AA88, MEMORY[0x1E69E87E8]);
        OUTLINED_FUNCTION_73_1();
        v19 = sub_1AC79FEB8();
        if ((v19 & 1) == 0)
        {
          sub_1AC68A3F8(*(v0 + 208), *(v0 + 192), &qword_1EB56BF58, &qword_1AC7A9230);
          v29 = OUTLINED_FUNCTION_518();
          sub_1AC68A444(v29, v30, &qword_1EB56C878, &qword_1AC7AAD60);
          v24 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_53_3();
            sub_1AC60E66C();
            v24 = v37;
          }

          v26 = *(v24 + 16);
          v31 = *(v24 + 24);
          v27 = v26 + 1;
          if (v26 >= v31 >> 1)
          {
            OUTLINED_FUNCTION_83_3(v31);
            sub_1AC60E66C();
            v24 = v38;
          }

          v32 = OUTLINED_FUNCTION_618();
          v33(v32);
          v75 = v24;
          v28 = (v0 + 184);
          goto LABEL_17;
        }

        v20 = OUTLINED_FUNCTION_618();
        v21(v20);
        v18 = v74;
      }

      sub_1AC68A3F8(*(v0 + 208), *(v0 + 176), &qword_1EB56BF58, &qword_1AC7A9230);
      v22 = OUTLINED_FUNCTION_518();
      sub_1AC68A444(v22, v23, &qword_1EB56C878, &qword_1AC7AAD60);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v24 = v18;
      }

      else
      {
        OUTLINED_FUNCTION_53_3();
        sub_1AC60E66C();
        v24 = v35;
      }

      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_83_3(v25);
        sub_1AC60E66C();
        v24 = v36;
        v28 = (v0 + 168);
        v74 = v36;
      }

      else
      {
        v28 = (v0 + 168);
        v74 = v24;
      }

LABEL_17:
      v34 = *v28;
      sub_1AC5C9624(*(v0 + 208), &qword_1EB56BF58, &qword_1AC7A9230);
      *(v24 + 16) = v27;
      sub_1AC68A444(v34, v24 + v71 + v26 * v70, &qword_1EB56BF58, &qword_1AC7A9230);
      v5 += v70;
      if (!--v3)
      {

        v1 = *(v0 + 64);
        v39 = v75;
        goto LABEL_22;
      }
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v40 = 0;
  v41 = *(v39 + 16);
  for (i = v39; ; v39 = i)
  {
    if (v40 == v41)
    {
      v42 = 1;
      v40 = v41;
      goto LABEL_27;
    }

    if (v40 >= *(v39 + 16))
    {
      break;
    }

    sub_1AC68A3F8(v39 + ((*(*(v0 + 152) + 80) + 32) & ~*(*(v0 + 152) + 80)) + *(*(v0 + 152) + 72) * v40, *(v0 + 72), &qword_1EB56BF58, &qword_1AC7A9230);
    v42 = 0;
    ++v40;
LABEL_27:
    v43 = *(v0 + 144);
    __swift_storeEnumTagSinglePayload(*(v0 + 72), v42, 1, v43);
    OUTLINED_FUNCTION_48_5();
    sub_1AC68A444(v44, v45, v46, v47);
    v48 = OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_96(v48, v49, v43);
    if (v15)
    {
      v53 = *(v0 + 64);
      *(v53 + 176) = v74;

      v54 = *(v53 + 176);
      v55 = *(v54 + 16);

      for (j = 0; v55 != j; ++j)
      {
        if (j >= *(v54 + 16))
        {
          goto LABEL_42;
        }

        v57 = *(v0 + 160);
        v58 = *(v0 + 144);
        v59 = *(v0 + 112);
        OUTLINED_FUNCTION_246();
        sub_1AC68A3F8(v60, v61, v62, &qword_1AC7A9230);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57 + *(v58 + 48), 1, v59);
        v64 = *(v0 + 160);
        if (EnumTagSinglePayload != 1)
        {

          sub_1AC5C9624(v64, &qword_1EB56BF58, &qword_1AC7A9230);
LABEL_38:
          v67 = *(v0 + 248);
          (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
          sub_1AC5C9624(v67, &qword_1EB56C878, &qword_1AC7AAD60);

          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_402();

          __asm { BRAA            X2, X16 }
        }

        v65 = OUTLINED_FUNCTION_506();
        sub_1AC5C9624(v65, v66, &qword_1AC7A9230);
      }

      goto LABEL_38;
    }

    v50 = *(v0 + 80);
    v51 = *(v1 + 152);
    if (v51)
    {
      v51(*v50);
      v50 = *(v0 + 80);
    }

    v52 = *(v0 + 144);

    sub_1AC5C9624(v50 + *(v52 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1AC681C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[35];
  v20 = v18[31];
  (*(v18[15] + 8))(v18[17], v18[14]);
  sub_1AC5C9624(v20, &qword_1EB56C878, &qword_1AC7AAD60);

  OUTLINED_FUNCTION_283();

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_26();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1AC681D98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC7A0AD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 144))
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    sub_1AC7A0AB8();
    sub_1AC7A0AC8();
    (*(v4 + 8))(v6, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }
}

uint64_t sub_1AC681ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C810, &qword_1AC7AABC0);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C818, &qword_1AC7AABC8);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC682058, 0, 0);
}

uint64_t sub_1AC682058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v11 = *(v10 + 96);
  v12 = (v11 + 32);
  v13 = *(v11 + 16);
  v14 = &qword_1EB56BE70;
  if (v13)
  {
    do
    {
      v49 = v13;
      v15 = v14;
      v16 = *(v10 + 104);
      v17 = *(v10 + 112);
      v18 = sub_1AC7A0288();
      v50 = v12;
      v51 = *v12;
      OUTLINED_FUNCTION_55_2();
      OUTLINED_FUNCTION_247();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
      OUTLINED_FUNCTION_613();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = v16;
      v14 = v15;
      *(v23 + 40) = v17;
      *(v23 + 48) = v51;
      v24 = OUTLINED_FUNCTION_89();
      sub_1AC68A3F8(v24, v25, v15, &qword_1AC7A8270);
      v26 = OUTLINED_FUNCTION_178_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, v27, v18);
      swift_unknownObjectRetain();

      v29 = *(v10 + 176);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_246();
        sub_1AC5C9624(v30, v31, v32);
      }

      else
      {
        sub_1AC7A0278();
        OUTLINED_FUNCTION_106();
        (*(v33 + 8))(v29, v18);
      }

      if (*(v23 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = sub_1AC7A01B8();
        v36 = v35;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = **(v10 + 88);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C800, &qword_1AC7AAB98);
      v38 = (v36 | v34);
      if (v36 | v34)
      {
        v38 = a10;
        *a10 = 0;
        a10[1] = 0;
        *(v10 + 32) = v34;
        *(v10 + 40) = v36;
      }

      *(v10 + 48) = 1;
      *(v10 + 56) = v38;
      *(v10 + 64) = v37;
      OUTLINED_FUNCTION_606();
      swift_task_create();

      OUTLINED_FUNCTION_246();
      sub_1AC5C9624(v39, v40, v41);
      v12 = v50 + 1;
      v13 = v49 - 1;
    }

    while (v49 != 1);
  }

  *(v10 + 72) = **(v10 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C820, &qword_1AC7AABE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF20, &qword_1AC7A8330);
  OUTLINED_FUNCTION_281(&qword_1EB56C828);
  OUTLINED_FUNCTION_488();
  v42 = OUTLINED_FUNCTION_100_2();
  v43(v42);
  OUTLINED_FUNCTION_337(&qword_1EB56C830, &qword_1EB56C818, &qword_1AC7AABC8);
  sub_1AC7A0368();
  *(v10 + 192) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_58_0(&qword_1EB56C838, &qword_1EB56C810, &qword_1AC7AABC0);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v10 + 200) = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_240(v44);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6D8C8](v46);
}

uint64_t sub_1AC6823C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v3[26] = v0;

  if (v0)
  {
    (*(v3[16] + 8))(v3[17], v3[15]);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6824DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = v10[10];
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v10[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_53_3();
      sub_1AC60E2AC();
      v13 = v30;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_9(v14);
      sub_1AC60E2AC();
      v13 = v31;
    }

    *(v13 + 16) = v15 + 1;
    *(v13 + 8 * v15 + 32) = v11;
    v10[24] = v13;
    OUTLINED_FUNCTION_58_0(&qword_1EB56C838, &qword_1EB56C810, &qword_1AC7AABC0);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v10[25] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_240(v16);
    OUTLINED_FUNCTION_291();

    return MEMORY[0x1EEE6D8C8](v18);
  }

  else
  {
    (*(v10[16] + 8))(v10[17], v10[15]);
    v20 = OUTLINED_FUNCTION_619();
    v21(v20);

    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_291();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1AC682684()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  (*(v0[19] + 8))(v0[21], v0[18]);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC68272C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  (*(v0[18] + 8))(v0[20], v0[17]);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC6827D4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = a3 + *a3;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1AC6828D8;

  return (v9)(v6 + 4, v6 + 2);
}

uint64_t sub_1AC6828D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC682A1C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_82();
  v3 = v0;

  return v3(v1);
}

uint64_t sub_1AC682A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC682B28, 0, 0);
}

uint64_t sub_1AC682B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, _OWORD *a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v18 = *(v17 + 80);
  v19 = *(v18 + 16);
  v20 = (v18 + 32);
  while (v19)
  {
    a12 = v19;
    v22 = *(v17 + 88);
    v21 = *(v17 + 96);
    v23 = sub_1AC7A0288();
    a11 = v20;
    a13 = *v20;
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    OUTLINED_FUNCTION_613();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v22;
    *(v27 + 40) = v21;
    *(v27 + 48) = a13;
    v28 = OUTLINED_FUNCTION_204_0();
    sub_1AC68A3F8(v28, v29, &qword_1EB56BE70, &qword_1AC7A8270);
    v30 = OUTLINED_FUNCTION_55_2();
    LODWORD(v22) = __swift_getEnumTagSinglePayload(v30, v31, v23);
    swift_unknownObjectRetain_n();

    v32 = *(v17 + 104);
    if (v22 == 1)
    {
      v33 = OUTLINED_FUNCTION_123();
      sub_1AC5C9624(v33, v34, &qword_1AC7A8270);
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_106();
      (*(v35 + 8))(v32, v23);
    }

    if (*(v27 + 16))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_627();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_515();
      v36 = sub_1AC7A01B8();
      v38 = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = **(v17 + 72);
    if (v38 | v36)
    {
      *a10 = 0;
      a10[1] = 0;
      *(v17 + 32) = v36;
      *(v17 + 40) = v38;
    }

    OUTLINED_FUNCTION_603(v39);
    OUTLINED_FUNCTION_606();
    swift_task_create();

    v40 = OUTLINED_FUNCTION_123();
    sub_1AC5C9624(v40, v41, &qword_1AC7A8270);
    swift_unknownObjectRelease();
    ++v20;
    v19 = a12 - 1;
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_26();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17);
}

uint64_t sub_1AC682D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC682E24, 0, 0);
}

void sub_1AC682E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v19 = *(v18 + 80);
  v20 = 0;
  v57 = v19 & 0xC000000000000001;
  v58 = sub_1AC61C24C();
  v55 = (v19 + 32);
  v56 = v19 & 0xFFFFFFFFFFFFFF8;
  v21 = &qword_1EB56BE70;
  while (v58 != v20)
  {
    if (v57)
    {
      MEMORY[0x1B26E95B0](v20, *(v18 + 80));
    }

    else
    {
      if (v20 >= *(v56 + 16))
      {
        goto LABEL_21;
      }

      v22 = *&v55[8 * v20];
    }

    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    a15 = v20;
    v24 = *(v18 + 104);
    v23 = *(v18 + 112);
    v25 = v21;
    v26 = *(v18 + 88);
    v27 = *(v18 + 96);
    OUTLINED_FUNCTION_433();
    v28 = sub_1AC7A0288();
    v29 = OUTLINED_FUNCTION_158_1();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
    OUTLINED_FUNCTION_414();
    v32 = swift_allocObject();
    v32[2] = 0;
    v33 = (v32 + 2);
    v32[3] = 0;
    v32[4] = v26;
    v21 = v25;
    v32[5] = v27;
    v32[6] = v19;
    sub_1AC68A3F8(v23, v24, v25, &qword_1AC7A8270);
    LODWORD(v23) = __swift_getEnumTagSinglePayload(v24, 1, v28);

    v34 = v19;
    v35 = *(v18 + 104);
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_246();
      sub_1AC5C9624(v36, v37, v38);
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_106();
      (*(v39 + 8))(v35, v28);
    }

    v19 = *v33;
    if (*v33)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v40 = sub_1AC7A01B8();
      v42 = v41;
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = **(v18 + 72);
    if (v42 | v40)
    {
      *a10 = 0;
      a10[1] = 0;
      *(v18 + 32) = v40;
      *(v18 + 40) = v42;
    }

    OUTLINED_FUNCTION_603(v43);
    OUTLINED_FUNCTION_606();
    swift_task_create();

    OUTLINED_FUNCTION_246();
    sub_1AC5C9624(v44, v45, v46);

    v20 = a15 + 1;
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_26();

  v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v55, v56, v57, v58, a15, a16, a17, a18);
}

uint64_t sub_1AC6830AC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1AC6831A8;

  return v9(v6 + 2);
}

uint64_t sub_1AC6831A8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6832C4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1AC6833BC;

  return v8(v5 + 16);
}

uint64_t sub_1AC6833BC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6834D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AC6835D0;

  return v6(a1);
}

uint64_t sub_1AC6835D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1AC6836B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF10, &qword_1AC7A8320);
    OUTLINED_FUNCTION_172();
    v2 = sub_1AC7A0978();
    v14 = v2;
    sub_1AC7A08A8();
    while (1)
    {
      if (!sub_1AC7A0918())
      {

        return v2;
      }

      sub_1AC688A98();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1AC61209C();
      }

      v2 = v14;
      result = sub_1AC7A0748();
      v4 = -1 << *(v14 + 32);
      v5 = result & ~v4;
      v6 = v5 >> 6;
      if (((-1 << v5) & ~*(v14 + 56 + 8 * (v5 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_601();
LABEL_15:
      OUTLINED_FUNCTION_599(v7);
      *(v11 + 8 * v12) = v13;
      ++*(v14 + 16);
    }

    v8 = 0;
    v9 = (63 - v4) >> 6;
    while (++v6 != v9 || (v8 & 1) == 0)
    {
      v10 = v6 == v9;
      if (v6 == v9)
      {
        v6 = 0;
      }

      v8 |= v10;
      if (*(v14 + 56 + 8 * v6) != -1)
      {
        OUTLINED_FUNCTION_600();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1AC683844(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF90, &qword_1AC7A83A0);
    OUTLINED_FUNCTION_172();
    v2 = sub_1AC7A0978();
    v23 = v2;
    sub_1AC7A08A8();
    while (1)
    {
      if (!sub_1AC7A0918())
      {

        return v2;
      }

      type metadata accessor for SpeechRecognizerWorker(0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_1AC612548(v10 + 1, v3, v4, v5, v6, v7, v8, v9, v21);
      }

      v2 = v23;
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40]();
      result = sub_1AC7A0EC8();
      v12 = -1 << *(v23 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v23 + 56 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_601();
LABEL_15:
      OUTLINED_FUNCTION_599(v15);
      *(v19 + 8 * v20) = v22;
      ++*(v23 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      if (*(v23 + 56 + 8 * v14) != -1)
      {
        OUTLINED_FUNCTION_600();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void (*sub_1AC6839F4(uint64_t a1, uint64_t a2))(uint64_t)
{

  return sub_1AC683A74(a1, a2, sub_1AC683E24);
}

void (*sub_1AC683A74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t)))(uint64_t)
{
  OUTLINED_FUNCTION_78_0();
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v6 = *(v5 + 32);
  v12[3] = v12;
  v12[4] = v5;
  v7 = ((1 << v6) + 63) >> 6;
  if (v6 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1AC613DA0(0, v7, &v12[-1] - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
    v8 = OUTLINED_FUNCTION_171();
    a3(v8);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v10 = swift_slowAlloc();
    sub_1AC684424(v10, v7);
    OUTLINED_FUNCTION_86();

    OUTLINED_FUNCTION_96_0();
  }

  return a3;
}

void sub_1AC683BF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 >= 0)
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1AC7A08E8();
      a2 = sub_1AC6836B0(v2, v5);
      a1 = v3;
      goto LABEL_7;
    }

    sub_1AC688A98();
    v6 = MEMORY[0x1E69E7CD0];
    v13 = MEMORY[0x1E69E7CD0];
    sub_1AC7A08A8();
LABEL_9:
    while (sub_1AC7A0918())
    {
      swift_dynamicCast();
      if (*(v3 + 16))
      {
        v7 = sub_1AC7A0748();
        v8 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v9 = v7 & v8;
          if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
          {
            break;
          }

          v10 = *(*(v3 + 48) + 8 * v9);
          v11 = sub_1AC7A0758();

          v7 = v9 + 1;
          if (v11)
          {
            if (v6[3] <= v6[2])
            {
              sub_1AC61209C();
            }

            v6 = v13;
            sub_1AC612688(v12, v13);
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
    if (v4)
    {
LABEL_7:
      sub_1AC683A74(a1, a2, sub_1AC684134);
      return;
    }

    sub_1AC75228C();
  }
}

void sub_1AC683E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v25 = a1;
  v6 = sub_1AC79FB18();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v23 - v11;
  v27 = *(a3 + 16);
  if (!v27)
  {
    v24 = 0;
    goto LABEL_14;
  }

  v24 = 0;
  v12 = 0;
  v31 = *(v10 + 16);
  v32 = v10 + 16;
  v26 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v10 + 72);
  v29 = a4 + 56;
  v30 = v13;
  v14 = (v10 + 8);
  v33 = a4;
  while (2)
  {
    v28 = v12 + 1;
    v31(v34, v26 + v30 * v12, v6);
    sub_1AC68A730(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v15 = sub_1AC79FE48();
    v16 = ~(-1 << *(a4 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v29 + 8 * v18)) == 0)
      {
        (*v14)(v34, v6);
        goto LABEL_10;
      }

      v31(v9, *(v33 + 48) + v17 * v30, v6);
      sub_1AC68A730(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v20 = sub_1AC79FED8();
      v21 = *v14;
      (*v14)(v9, v6);
      v15 = v17 + 1;
    }

    while ((v20 & 1) == 0);
    v21(v34, v6);
    v22 = *(v25 + 8 * v18);
    *(v25 + 8 * v18) = v22 | v19;
    if ((v22 & v19) != 0)
    {
LABEL_10:
      a4 = v33;
      goto LABEL_11;
    }

    a4 = v33;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    ++v24;
LABEL_11:
    v12 = v28;
    if (v28 != v27)
    {
      continue;
    }

    break;
  }

LABEL_14:

  sub_1AC61887C();
}

void sub_1AC684134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AC7A08A8();
    sub_1AC688A98();
    sub_1AC68A730(&qword_1EB56BF00, sub_1AC688A98);
    sub_1AC7A0488();
    v4 = v35;
    v5 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v29 = 0;
  v12 = (v6 + 64) >> 6;
  v31 = v5;
  v32 = v4;
  while (1)
  {
    v13 = v7;
    v14 = v8;
LABEL_9:
    if (v4 < 0)
    {
      if (!sub_1AC7A0918())
      {
        goto LABEL_28;
      }

      sub_1AC688A98();
      swift_dynamicCast();
      v18 = v40;
      v7 = v13;
      v17 = v14;
      if (!v40)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v7 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_18:
    v33 = v17;
    v19 = sub_1AC7A0748();
    v20 = ~(-1 << *(a4 + 32));
    do
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = 1 << (v19 & v20);
      if ((v23 & *(a4 + 56 + 8 * v22)) == 0)
      {

        v13 = v7;
        v4 = v32;
        v14 = v33;
        v12 = (v6 + 64) >> 6;
        v5 = v31;
        goto LABEL_9;
      }

      sub_1AC688A98();
      v24 = *(*(a4 + 48) + 8 * v21);
      v25 = sub_1AC7A0758();

      v19 = v21 + 1;
    }

    while ((v25 & 1) == 0);

    v26 = *(a1 + 8 * v22);
    *(a1 + 8 * v22) = v26 | v23;
    v13 = v7;
    v4 = v32;
    v8 = v33;
    v14 = v33;
    v27 = (v26 & v23) == 0;
    v12 = (v6 + 64) >> 6;
    v5 = v31;
    if (!v27)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v29++, 1))
    {
      __break(1u);
LABEL_28:
      sub_1AC5CA508(v4);

      sub_1AC618CB4();
      return;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1AC684424(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_512();
    if (v5)
    {
      bzero(v4, 8 * v3);
    }

    v6 = OUTLINED_FUNCTION_117();
    v2(v6);
  }
}

uint64_t sub_1AC68448C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1AC613DA0(0, v5, v6);
    v7 = sub_1AC684618(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1AC68492C(v9, v5, sub_1AC68A714);
    MEMORY[0x1B26EAB10](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1AC684618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v7 = sub_1AC79FB18();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = v25 - v12;
  v29 = *(a3 + 16);
  if (!v29)
  {
    return 0;
  }

  v25[1] = v4;
  v26 = 0;
  v13 = 0;
  v33 = *(v11 + 16);
  v34 = v11 + 16;
  v28 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v11 + 72);
  v31 = a4 + 56;
  v32 = v14;
  v15 = (v11 + 8);
  v35 = a4;
  while (2)
  {
    v30 = v13 + 1;
    v33(v36, v28 + v32 * v13, v7);
    sub_1AC68A730(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v16 = sub_1AC79FE48();
    v17 = ~(-1 << *(a4 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v31 + 8 * v19)) == 0)
      {
        (*v15)(v36, v7);
        goto LABEL_11;
      }

      v33(v10, *(v35 + 48) + v18 * v32, v7);
      sub_1AC68A730(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v21 = sub_1AC79FED8();
      v22 = *v15;
      (*v15)(v10, v7);
      v16 = v18 + 1;
    }

    while ((v21 & 1) == 0);
    result = (v22)(v36, v7);
    v24 = *(v27 + 8 * v19);
    *(v27 + 8 * v19) = v24 | v20;
    if ((v24 & v20) != 0)
    {
LABEL_11:
      a4 = v35;
      goto LABEL_12;
    }

    a4 = v35;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 + 1 == *(v35 + 16))
    {
      return 1;
    }

    ++v26;
LABEL_12:
    v13 = v30;
    if (v30 != v29)
    {
      continue;
    }

    return 0;
  }
}

void *sub_1AC68492C(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
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

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

void sub_1AC6849AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0) + 48);
  sub_1AC6F12A4(a2, a1, *(a1 + v4));
  *(a2 + v5) = v6;
}

uint64_t sub_1AC684A1C()
{
  OUTLINED_FUNCTION_512();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  v2 = OUTLINED_FUNCTION_117();
  result = sub_1AC684A7C(v2, v3, v1, v4, v5);
  *v0 = v7;
  return result;
}

uint64_t sub_1AC684A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = OUTLINED_FUNCTION_433();
  type metadata accessor for SpeechRecognizerSupportedFeatures(v9);
  OUTLINED_FUNCTION_40();
  v36 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C918, &qword_1AC7AAE80);
  OUTLINED_FUNCTION_167(v15);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_89();
  sub_1AC6F15F0(v17);

  while (1)
  {
    sub_1AC686EB8(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
    v18 = OUTLINED_FUNCTION_627();
    if (__swift_getEnumTagSinglePayload(v18, 1, a2) == 1)
    {
      sub_1AC5CA508(v37);
    }

    v19 = *(a2 + 48);
    v20 = OUTLINED_FUNCTION_429();
    sub_1AC61B988(v20, v21);
    v22 = *(v5 + v19);
    v23 = *a5;
    v25 = sub_1AC6E08C4(v14);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    a2 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
        sub_1AC7A0B28();
      }
    }

    else
    {
      sub_1AC6F0CAC(v28, a4 & 1);
      v29 = sub_1AC6E08C4(v14);
      if ((a2 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v25 = v29;
    }

    v31 = *a5;
    if (a2)
    {
      v38 = *(v31[7] + 8 * v25);

      sub_1AC659150(v22);
      a2 = v38;
      OUTLINED_FUNCTION_2_6();
      sub_1AC68A2BC();
      *(v31[7] + 8 * v25) = v38;

      a4 = 1;
    }

    else
    {
      v31[(v25 >> 6) + 8] |= 1 << v25;
      sub_1AC61B988(v14, v31[6] + *(v36 + 72) * v25);
      *(v31[7] + 8 * v25) = v22;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_15;
      }

      v31[2] = v34;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1AC7A0DC8();
  __break(1u);
  return result;
}

uint64_t sub_1AC684D70(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AC6B16D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1AC685250(v6);
  return sub_1AC7A0A78();
}

uint64_t sub_1AC684DEC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC5CA854(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1AC5CA904(v6, &qword_1EB56C840, &qword_1AC7AAC68, sub_1AC685CA8, sub_1AC685424);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC684E90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC5CB7E8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1AC5CA904(v6, &qword_1EB56C848, &qword_1AC7AACD8, sub_1AC6862DC, sub_1AC685534);
  *a1 = v2;
  return result;
}

uint64_t sub_1AC684F34(uint64_t *a1, uint64_t (*a2)(void, char *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  v16 = *a1;
  v17 = v45;
  result = sub_1AC680460(*a1, a2);
  if (!v17)
  {
    v41 = a2;
    v42 = v15;
    v36 = v10;
    v37 = v13;
    if (v19)
    {
      return *(v16 + 16);
    }

    else
    {
      v40 = v6;
      v35 = a1;
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v21 = v16;
        v34[1] = 0;
        v38 = a3;
        v39 = v7;
        while (1)
        {
          v22 = *(v21 + 16);
          if (v20 == v22)
          {
            break;
          }

          if (v20 >= v22)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v45 = result;
          v23 = v21;
          v43 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v24 = v21 + v43;
          v25 = *(v7 + 72);
          v44 = v25 * v20;
          v26 = v42;
          sub_1AC68A3F8(v21 + v43 + v25 * v20, v42, &qword_1EB56BF58, &qword_1AC7A9230);
          v27 = v41(*v26, (v26 + *(v40 + 48)));
          v28 = v26;
          LOBYTE(v26) = v27;
          sub_1AC5C9624(v28, &qword_1EB56BF58, &qword_1AC7A9230);
          if (v26)
          {
            v7 = v39;
            result = v45;
            v21 = v23;
          }

          else
          {
            result = v45;
            if (v20 == v45)
            {
              v7 = v39;
            }

            else
            {
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v29 = *(v23 + 16);
              if (v45 >= v29)
              {
                goto LABEL_24;
              }

              v30 = v25 * v45;
              result = sub_1AC68A3F8(v24 + v25 * v45, v37, &qword_1EB56BF58, &qword_1AC7A9230);
              if (v20 >= v29)
              {
                goto LABEL_25;
              }

              v31 = v44;
              sub_1AC68A3F8(v24 + v44, v36, &qword_1EB56BF58, &qword_1AC7A9230);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1AC7045B0();
                v23 = v33;
              }

              v7 = v39;
              v32 = v23 + v43;
              result = sub_1AC68A6C8(v36, v23 + v43 + v30, &qword_1EB56BF58, &qword_1AC7A9230);
              if (v20 >= *(v23 + 16))
              {
                goto LABEL_26;
              }

              sub_1AC68A6C8(v37, v32 + v31, &qword_1EB56BF58, &qword_1AC7A9230);
              *v35 = v23;
              result = v45;
            }

            v21 = v23;
            ++result;
          }

          ++v20;
        }
      }
    }
  }

  return result;
}

void sub_1AC685250(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1AC7A0CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1AC6AEEA0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1AC685648(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1AC685330(0, v3, 1, a1);
  }
}

void sub_1AC685330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 sampleRate];
        v15 = v14;
        [v13 sampleRate];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1AC685424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = sub_1AC7A0678();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 + 48);
        v11 = *(v10 + 52);
        v13 = *(v10 + 56);
        v14 = *(v10 + 16);
        v15 = *(v10 + 32);
        result = *(v10 + 40);
        *(v10 + 40) = *v10;
        v16 = *(v10 + 64);
        *(v10 + 56) = v14;
        *(v10 + 72) = v15;
        *v10 = result;
        *(v10 + 8) = v12;
        *(v10 + 12) = v11;
        *(v10 + 16) = v13;
        *(v10 + 24) = v16;
        v10 -= 40;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1AC685534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = sub_1AC7A0678();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v11 = *(v10 + 64);
        v12 = *(v10 + 72);
        v13 = *(v10 + 80);
        v14 = *v10;
        v15 = *(v10 + 32);
        *(v10 + 64) = *(v10 + 16);
        *(v10 + 80) = v15;
        result = *(v10 + 48);
        v17 = *(v10 + 56);
        v16 = *(v10 + 60);
        *v10 = result;
        *(v10 + 8) = v17;
        *(v10 + 12) = v16;
        *(v10 + 16) = v11;
        *(v10 + 24) = v12;
        *(v10 + 32) = v13;
        *(v10 + 48) = v14;
        v10 -= 48;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1AC685648(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v113;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v97 = v6 + 16;
      v98 = *(v6 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v99 = v6;
        v6 += 16 * v98;
        v100 = *v6;
        v101 = &v97[2 * v98];
        v102 = *(v101 + 1);
        sub_1AC686918((*a3 + 8 * *v6), (*a3 + 8 * *v101), (*a3 + 8 * v102), v111);
        if (v5)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_119;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_120;
        }

        *v6 = v100;
        *(v6 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_121;
        }

        v98 = *v97 - 1;
        sub_1AC6B021C(v101 + 16, v103, v101);
        *v97 = v98;
        v6 = v99;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1AC6B0128(v6);
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &off_1E797D000;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v105 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v6 = *(*a3 + 8 * v5);
      v14 = v13;
      [v6 v7[365]];
      v16 = v15;
      [v14 v7[365]];
      v18 = v17;

      v108 = v9;
      v19 = v9 + 2;
      while (1)
      {
        v20 = v19;
        if (++v5 >= v4)
        {
          break;
        }

        v21 = *(v12 - 1);
        v6 = *v12;
        v22 = v21;
        [v6 v7[365]];
        v24 = v23;
        [v22 v7[365]];
        v26 = v25;

        ++v12;
        v19 = v20 + 1;
        if (v16 < v18 == v24 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v16 >= v18)
      {
        v6 = v105;
        v8 = v108;
      }

      else
      {
        v8 = v108;
        if (v5 < v108)
        {
          goto LABEL_125;
        }

        if (v108 >= v5)
        {
          v6 = v105;
        }

        else
        {
          if (v4 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v4;
          }

          v28 = 8 * v27 - 8;
          v29 = v5;
          v30 = v108;
          v6 = v105;
          do
          {
            if (v30 != --v29)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v32 = *(v31 + v11);
              *(v31 + v11) = *(v31 + v28);
              *(v31 + v28) = v32;
            }

            ++v30;
            v28 -= 8;
            v11 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = a3[1];
    if (v5 < v33)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E284(0, *(v6 + 2) + 1, 1, v6);
      v6 = v95;
    }

    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      sub_1AC60E284(v50 > 1, v51 + 1, 1, v6);
      v6 = v96;
    }

    *(v6 + 2) = v52;
    v53 = v6 + 32;
    v54 = &v6[16 * v51 + 32];
    *v54 = v8;
    *(v54 + 1) = v5;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v51)
    {
      v110 = v5;
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v6[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v6 + 4);
          v59 = *(v6 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_60:
          if (v61)
          {
            goto LABEL_110;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_118;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v52 < 2)
        {
          goto LABEL_112;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_75:
        if (v76)
        {
          goto LABEL_115;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_117;
        }

        if (v83 < v75)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = v55;
        v90 = &v53[16 * v55];
        v91 = *(v90 + 1);
        sub_1AC686918((*a3 + 8 * *v87), (*a3 + 8 * *v90), (*a3 + 8 * v91), v111);
        if (v113)
        {
          goto LABEL_103;
        }

        if (v91 < v88)
        {
          goto LABEL_105;
        }

        v5 = v53;
        v92 = v7;
        v93 = v6;
        v6 = *(v6 + 2);
        if (v89 > v6)
        {
          goto LABEL_106;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v89 >= v6)
        {
          goto LABEL_107;
        }

        v52 = (v6 - 1);
        sub_1AC6B021C(v90 + 16, &v6[-v89 - 1], v90);
        *(v93 + 2) = v6 - 1;
        v94 = v6 > 2;
        v6 = v93;
        v7 = v92;
        v53 = v5;
        v5 = v110;
        if (!v94)
        {
          goto LABEL_89;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v34)
  {
    goto LABEL_39;
  }

  v106 = v6;
  v35 = *a3;
  v36 = *a3 + 8 * v5 - 8;
  v109 = v8;
  v111 = v34;
  v37 = v8 - v5;
LABEL_32:
  v38 = *(v35 + 8 * v5);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    [v42 v7[365]];
    v45 = v44;
    [v43 v7[365]];
    v47 = v46;

    if (v45 >= v47)
    {
LABEL_37:
      ++v5;
      v36 += 8;
      --v37;
      if (v5 == v111)
      {
        v5 = v111;
        v6 = v106;
        v8 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v48 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v48;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

void sub_1AC685CA8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v98 = *result;
    if (!*result)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v88 = v6 + 16;
      v89 = *(v6 + 2);
      while (v89 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v90 = v6;
        v6 += 16 * v89;
        v91 = *v6;
        v92 = &v88[2 * v89];
        v93 = *(v92 + 1);
        sub_1AC686B50((*a3 + 40 * *v6), (*a3 + 40 * *v92), *a3 + 40 * v93, v98);
        if (v100)
        {
          break;
        }

        if (v93 < v91)
        {
          goto LABEL_115;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_116;
        }

        *v6 = v91;
        *(v6 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_117;
        }

        v100 = 0;
        v89 = *v88 - 1;
        sub_1AC6B021C(v92 + 16, v94, v92);
        *v88 = v89;
        v6 = v90;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1AC6B0128(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 40 * v7;
      v9 = sub_1AC7A0678();
      v10 = v8 + 96;
      v11 = v7 + 2;
      while (1)
      {
        v12 = v11;
        if (++v5 >= v4)
        {
          break;
        }

        v13 = sub_1AC7A0678();
        v10 += 40;
        v11 = v12 + 1;
        if ((v9 & 1) != (v13 & 1))
        {
          if ((v9 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v4;
        }

        v15 = 40 * v14 - 16;
        v16 = 40 * v7 + 24;
        v17 = v5;
        v18 = v7;
        do
        {
          if (v18 != --v17)
          {
            v19 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v20 = (v19 + v16);
            v21 = *(v19 + v16 - 24);
            v22 = v19 + v15;
            v23 = *(v20 - 1);
            v24 = *(v20 - 2);
            v25 = *v20;
            v26 = *(v22 + 8);
            v27 = *(v22 - 8);
            *(v20 - 24) = *(v22 - 24);
            *(v20 - 8) = v27;
            *(v20 + 1) = v26;
            *(v22 - 24) = v21;
            *(v22 - 16) = v24;
            *(v22 - 8) = v23;
            *v22 = v25;
          }

          ++v18;
          v15 -= 40;
          v16 += 40;
        }

        while (v18 < v17);
      }
    }

LABEL_20:
    v28 = a3[1];
    if (v5 < v28)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E284(0, *(v6 + 2) + 1, 1, v6);
      v6 = v86;
    }

    v45 = *(v6 + 2);
    v44 = *(v6 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      sub_1AC60E284(v44 > 1, v45 + 1, 1, v6);
      v6 = v87;
    }

    *(v6 + 2) = v46;
    v47 = v6 + 32;
    v48 = &v6[16 * v45 + 32];
    *v48 = v7;
    *(v48 + 1) = v5;
    v98 = *result;
    if (!*result)
    {
      goto LABEL_129;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = &v47[16 * v46 - 16];
        v51 = &v6[16 * v46];
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v6 + 4);
          v53 = *(v6 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_57:
          if (v55)
          {
            goto LABEL_106;
          }

          v67 = *v51;
          v66 = *(v51 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = *(v50 + 1);
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_114;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_108;
        }

        v74 = *v51;
        v73 = *(v51 + 1);
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_72:
        if (v70)
        {
          goto LABEL_111;
        }

        v76 = *v50;
        v75 = *(v50 + 1);
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v77 < v69)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v81 = v6;
        v82 = &v47[16 * v49 - 16];
        v83 = *v82;
        v6 = &v47[16 * v49];
        v84 = *(v6 + 1);
        sub_1AC686B50((*a3 + 40 * *v82), (*a3 + 40 * *v6), *a3 + 40 * v84, v98);
        if (v100)
        {
          goto LABEL_99;
        }

        if (v84 < v83)
        {
          goto LABEL_101;
        }

        v85 = *(v81 + 2);
        if (v49 > v85)
        {
          goto LABEL_102;
        }

        *v82 = v83;
        *(v82 + 1) = v84;
        if (v49 >= v85)
        {
          goto LABEL_103;
        }

        v100 = 0;
        v46 = v85 - 1;
        sub_1AC6B021C(v6 + 16, v85 - 1 - v49, &v47[16 * v49]);
        v6 = v81;
        *(v81 + 2) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_86;
        }
      }

      v56 = &v47[16 * v46];
      v57 = *(v56 - 8);
      v58 = *(v56 - 7);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_104;
      }

      v61 = *(v56 - 6);
      v60 = *(v56 - 5);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_105;
      }

      v63 = *(v51 + 1);
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_107;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_110;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = *(v50 + 1);
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v28)
  {
    v29 = a3[1];
  }

  else
  {
    v29 = v7 + a4;
  }

  if (v29 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v29)
  {
    goto LABEL_37;
  }

  v98 = v6;
  v30 = *a3;
  v31 = *a3 + 40 * v5 - 40;
  v95 = v7;
  v32 = v7 - v5;
LABEL_30:
  v33 = v29;
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if ((sub_1AC7A0678() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v31 += 40;
      --v32;
      v29 = v33;
      if (v5 == v33)
      {
        v5 = v33;
        v7 = v95;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v35 + 48);
    v36 = *(v35 + 52);
    v38 = *(v35 + 56);
    v39 = *(v35 + 16);
    v41 = *(v35 + 32);
    v40 = *(v35 + 40);
    *(v35 + 40) = *v35;
    v42 = *(v35 + 64);
    *(v35 + 56) = v39;
    *(v35 + 72) = v41;
    *v35 = v40;
    *(v35 + 8) = v37;
    *(v35 + 12) = v36;
    *(v35 + 16) = v38;
    *(v35 + 24) = v42;
    v35 -= 40;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

void sub_1AC6862DC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v99 = *result;
    if (!*result)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v89 = v6 + 16;
      v90 = *(v6 + 2);
      while (v90 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v91 = v6;
        v6 += 16 * v90;
        v92 = *v6;
        v93 = &v89[2 * v90];
        v94 = *(v93 + 1);
        sub_1AC686D04((*a3 + 48 * *v6), (*a3 + 48 * *v93), (*a3 + 48 * v94), v99);
        if (v101)
        {
          break;
        }

        if (v94 < v92)
        {
          goto LABEL_115;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_116;
        }

        *v6 = v92;
        *(v6 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_117;
        }

        v101 = 0;
        v90 = *v89 - 1;
        sub_1AC6B021C(v93 + 16, v95, v93);
        *v89 = v90;
        v6 = v91;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_1AC6B0128(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3 + 48 * v7;
      v9 = sub_1AC7A0678();
      v10 = v8 + 112;
      v11 = v7 + 2;
      while (1)
      {
        v12 = v11;
        if (++v5 >= v4)
        {
          break;
        }

        v13 = sub_1AC7A0678();
        v10 += 48;
        v11 = v12 + 1;
        if ((v9 & 1) != (v13 & 1))
        {
          if ((v9 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v4;
        }

        v15 = 48 * v14 - 24;
        v16 = 48 * v7 + 32;
        v17 = v5;
        v18 = v7;
        do
        {
          if (v18 != --v17)
          {
            v19 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v20 = (v19 + v16);
            v21 = *(v19 + v16 - 32);
            v22 = v19 + v15;
            v23 = *(v20 - 2);
            v24 = *(v20 - 8);
            v25 = *(v20 - 3);
            v26 = *v20;
            v27 = *(v22 + 8);
            v28 = *(v22 - 8);
            *(v20 - 2) = *(v22 - 24);
            *(v20 - 1) = v28;
            *v20 = v27;
            *(v22 - 24) = v21;
            *(v22 - 16) = v25;
            *(v22 - 8) = v23;
            *v22 = v24;
            *(v22 + 8) = v26;
          }

          ++v18;
          v15 -= 48;
          v16 += 48;
        }

        while (v18 < v17);
      }
    }

LABEL_20:
    v29 = a3[1];
    if (v5 < v29)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC60E284(0, *(v6 + 2) + 1, 1, v6);
      v6 = v87;
    }

    v46 = *(v6 + 2);
    v45 = *(v6 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      sub_1AC60E284(v45 > 1, v46 + 1, 1, v6);
      v6 = v88;
    }

    *(v6 + 2) = v47;
    v48 = v6 + 32;
    v49 = &v6[16 * v46 + 32];
    *v49 = v7;
    *(v49 + 1) = v5;
    v99 = *result;
    if (!*result)
    {
      goto LABEL_129;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v6[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v6 + 4);
          v54 = *(v6 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_57:
          if (v56)
          {
            goto LABEL_106;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_114;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_108;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_72:
        if (v71)
        {
          goto LABEL_111;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_113;
        }

        if (v78 < v70)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v82 = v6;
        v83 = &v48[16 * v50 - 16];
        v84 = *v83;
        v6 = &v48[16 * v50];
        v85 = *(v6 + 1);
        sub_1AC686D04((*a3 + 48 * *v83), (*a3 + 48 * *v6), (*a3 + 48 * v85), v99);
        if (v101)
        {
          goto LABEL_99;
        }

        if (v85 < v84)
        {
          goto LABEL_101;
        }

        v86 = *(v82 + 2);
        if (v50 > v86)
        {
          goto LABEL_102;
        }

        *v83 = v84;
        *(v83 + 1) = v85;
        if (v50 >= v86)
        {
          goto LABEL_103;
        }

        v101 = 0;
        v47 = v86 - 1;
        sub_1AC6B021C(v6 + 16, v86 - 1 - v50, &v48[16 * v50]);
        v6 = v82;
        *(v82 + 2) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_86;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_104;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_105;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_107;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_110;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v29)
  {
    v30 = a3[1];
  }

  else
  {
    v30 = v7 + a4;
  }

  if (v30 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v30)
  {
    goto LABEL_37;
  }

  v99 = v6;
  v31 = *a3;
  v32 = *a3 + 48 * v5 - 48;
  v96 = v7;
  v33 = v7 - v5;
LABEL_30:
  v34 = v30;
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if ((sub_1AC7A0678() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v32 += 48;
      --v33;
      v30 = v34;
      if (v5 == v34)
      {
        v5 = v34;
        v7 = v96;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 64);
    v38 = *(v36 + 72);
    v39 = *(v36 + 80);
    v40 = *v36;
    v41 = *(v36 + 32);
    *(v36 + 64) = *(v36 + 16);
    *(v36 + 80) = v41;
    v43 = *(v36 + 56);
    v42 = *(v36 + 60);
    *v36 = *(v36 + 48);
    *(v36 + 8) = v43;
    *(v36 + 12) = v42;
    *(v36 + 16) = v37;
    *(v36 + 24) = v38;
    *(v36 + 32) = v39;
    *(v36 + 48) = v40;
    v36 -= 48;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_35;
    }
  }

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
}

uint64_t sub_1AC686918(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1AC5D9408(a1, (a2 - a1) / 8, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 sampleRate];
      v17 = v16;
      [v15 sampleRate];
      v19 = v18;

      if (v17 >= v19)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1AC5D9408(a2, a3 - a2, a4);
  v11 = &v4[v9];
  v38 = v4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 sampleRate];
    v30 = v29;
    [v28 sampleRate];
    v32 = v31;

    v33 = v5 + 1;
    if (v30 < v32)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    v4 = v38;
  }

LABEL_28:
  v35 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, 8 * v35);
  }

  return 1;
}

uint64_t sub_1AC686B50(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1AC703FE4(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ((sub_1AC7A0678() & 1) == 0)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 40;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 40;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = *(v12 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1AC703FE4(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v18 = sub_1AC7A0678();
    v19 = (v5 + 40);
    if (v18)
    {
      v13 = v19 == v6;
      v6 -= 40;
      if (!v13)
      {
        v22 = *v16;
        v23 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v22;
        *(v5 + 16) = v23;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != v19)
    {
      v20 = *(v10 - 40);
      v21 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v20;
      *(v5 + 16) = v21;
    }

    v10 -= 40;
  }

LABEL_28:
  v24 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v24])
  {
    memmove(v6, v4, 40 * v24);
  }

  return 1;
}

uint64_t sub_1AC686D04(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1AC704020(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if ((sub_1AC7A0678() & 1) == 0)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 48;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = v12[2];
    *(v7 + 1) = v12[1];
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1AC704020(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_15:
  v16 = v6 - 3;
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    v18 = sub_1AC7A0678();
    v19 = (v5 + 48);
    if (v18)
    {
      v13 = v19 == v6;
      v6 -= 3;
      if (!v13)
      {
        v22 = *v16;
        v23 = v16[2];
        *(v5 + 1) = v16[1];
        *(v5 + 2) = v23;
        *v5 = v22;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != v19)
    {
      v20 = *(v10 - 3);
      v21 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v21;
      *v5 = v20;
    }

    v10 -= 48;
  }

LABEL_28:
  v24 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

uint64_t sub_1AC686EB8@<X0>(uint64_t a1@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B0, &qword_1AC7AADF0);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v31 - v3;
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8B8, &qword_1AC7AADF8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v15 = *v1;
  v14 = v1[1];
  v17 = v1[2];
  v16 = v1[3];
  v18 = v1[4];
  v36 = a1;
  if (v18)
  {
    v33 = v17;
    v19 = v16;
LABEL_7:
    v32 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v19 << 6);
    sub_1AC68A130(*(v15 + 48) + *(v34 + 72) * v20, v6);
    v21 = *(*(v15 + 56) + 8 * v20);
    v22 = *(v35 + 48);
    v23 = v6;
    v24 = v35;
    sub_1AC61B988(v23, v13);
    *&v13[v22] = v21;
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v24);

    v25 = v32;
    v17 = v33;
LABEL_8:
    *v1 = v15;
    v1[1] = v14;
    v1[2] = v17;
    v1[3] = v16;
    v1[4] = v25;
    v26 = v1[5];
    if (__swift_getEnumTagSinglePayload(v13, 1, v24))
    {
      memcpy(v10, v13, v8);
    }

    else
    {
      sub_1AC61B988(v13, v10);
      *&v10[*(v24 + 48)] = *&v13[*(v24 + 48)];
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v24);
    }

    v27 = v36;
    v28 = 1;
    if (__swift_getEnumTagSinglePayload(v10, 1, v24) != 1)
    {
      v29 = v31;
      sub_1AC61B988(v10, v31);
      *(v29 + *(v24 + 48)) = *&v10[*(v24 + 48)];
      v26(v29);
      sub_1AC68A2BC();
      sub_1AC5C9624(v29 + *(v24 + 48), &qword_1EB56C8D0, &qword_1AC7AAE18);
      v28 = 0;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
    return __swift_storeEnumTagSinglePayload(v27, v28, 1, v30);
  }

  else
  {
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= ((v17 + 64) >> 6))
      {
        v24 = v35;
        __swift_storeEnumTagSinglePayload(&v31 - v12, 1, 1, v35);
        v25 = 0;
        goto LABEL_8;
      }

      v18 = *(v14 + 8 * v19);
      ++v16;
      if (v18)
      {
        v33 = v17;
        v16 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AC687244(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1AC683E24(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1AC687274(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AC687368;

  return v5(v2 + 32);
}

uint64_t sub_1AC687368()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1AC68745C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1AC5CA560;

  return sub_1AC681ED0(a2, v9, a4, a5);
}

uint64_t sub_1AC687514(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 16) = a1;
  v11 = *a6;
  v12 = a6[1];
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_1AC5C8838;

  return sub_1AC6827D4(a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1AC6875E0(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AC687678;

  return sub_1AC6829FC(v3);
}

uint64_t sub_1AC687678()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_44();

  return v7();
}

void sub_1AC687774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1AC684134(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

void sub_1AC6877BC(uint64_t a1, os_unfair_lock_s *a2, void (*a3)(os_unfair_lock_s *, uint64_t, _UNKNOWN **))
{
  os_unfair_lock_lock(a2 + 16);
  a3(a2 + 18, a1, &off_1F212E960);

  os_unfair_lock_unlock(a2 + 16);
}

uint64_t sub_1AC68782C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_44_4();
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_501();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_285(v2);
  OUTLINED_FUNCTION_77_2();

  return sub_1AC65AD84(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC68793C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6879A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_334();

  return sub_1AC65C8D0(v3, v4, v5);
}

uint64_t sub_1AC687A30(uint64_t a1)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_239();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_636();

  return sub_1AC65DC74(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t type metadata accessor for SpeechAnalyzer(uint64_t a1)
{
  result = qword_1EB56B350;
  if (!qword_1EB56B350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_44_4();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v7 = v6;
  v8 = (((v2 + 56) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  v9 = OUTLINED_FUNCTION_305();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1AC687CB0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_44_4();
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_501();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_285(v2);
  OUTLINED_FUNCTION_77_2();

  return sub_1AC67D7B8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC687DC8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67E344(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC687E60()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67E768(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC687EF8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67E768(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC687F90()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();

  return sub_1AC680050();
}

void sub_1AC68802C(uint64_t a1)
{
  sub_1AC6881D4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientInfo(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1AC6881D4(uint64_t a1)
{
  if (!qword_1ED937B98[0])
  {
    type metadata accessor for SpeechAnalyzer.Options(255);
    v1 = sub_1AC7A0798();
    if (!v2)
    {
      atomic_store(v1, qword_1ED937B98);
    }
  }
}

uint64_t assignWithCopy for AnalyzerInput(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 8) = v7;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  v9 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v9;
  return a1;
}

uint64_t assignWithTake for AnalyzerInput(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SpeechModels(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1AC6883CC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t sub_1AC68852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1AC684618(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1AC688560(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC682A7C(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC688628(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC6830AC(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1AC6886F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC682D78(a1, a2, v10, a4, a5);
}

uint64_t sub_1AC6887B8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC688848(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AC5C4D48;

  return sub_1AC6832C4(a1, a2, a3, a4, v10);
}

uint64_t sub_1AC68890C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6889FC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_112_2();

  return sub_1AC67CD30(v3, v4, v5);
}

unint64_t sub_1AC688A98()
{
  result = qword_1EB56ABA0;
  if (!qword_1EB56ABA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56ABA0);
  }

  return result;
}

uint64_t sub_1AC688AF8()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC688B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29_0(v10);
  *v11 = v12;
  v11[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1AC688C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (*(a3 + 48) + **(a3 + 48));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1AC637EE4;

  return v8(a2, a3);
}

uint64_t sub_1AC688D48()
{
  OUTLINED_FUNCTION_302();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_311();
  v12 = *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = OUTLINED_FUNCTION_171();
  return sub_1AC67B540(v4, v5, v1, v6, v7, v8, v9, v10, v12);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_414();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC688E50()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC67B2B8(v3, v4, v5, v6, v7, v8);
}

void sub_1AC688EEC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1AC688EF8()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_115();

  return sub_1AC67B714(v3, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1AC688FC8(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AC688FD4(uint64_t a1)
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v3);
  OUTLINED_FUNCTION_239();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6783F8(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC689144()
{
  OUTLINED_FUNCTION_302();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_311();
  v4 = (v3 + 43) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + ((v3 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = v0 + v4;
  v17 = *v6;
  v18 = *(v6 + 8);
  v16 = *(v5 + 24);
  v15 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_171();
  return sub_1AC679074(v7, v8, v1, v9, v10, v11, v12, v13, v15, v16, v17, v18);
}

uint64_t sub_1AC689230(uint64_t a1)
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_239();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC679828(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC689324()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_149_0();

  return sub_1AC679C30(v3, v4, v5, v6, v7);
}

uint64_t sub_1AC6893C4()
{
  OUTLINED_FUNCTION_302();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  v2 = OUTLINED_FUNCTION_171();

  return sub_1AC67A05C(v2, v3, v0, v4, v5, v6, v7);
}

uint64_t sub_1AC689498(uint64_t a1)
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_29_0(v1);
  *v2 = v3;
  v2[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC679250(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1AC689560(uint64_t a1)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_239();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return sub_1AC678A94(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC689638()
{
  OUTLINED_FUNCTION_25();
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_1AC677014(v0, v1 + v4, v9, v10);
}

uint64_t sub_1AC689720(uint64_t a1)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_22(v2);
  v3 = sub_1AC7A0288();
  OUTLINED_FUNCTION_167(v3);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_636();

  return sub_1AC677350(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_171Tm()
{
  OUTLINED_FUNCTION_104();
  sub_1AC7A0288();
  OUTLINED_FUNCTION_40();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40();
  v6 = v5;
  v7 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v8 = OUTLINED_FUNCTION_305();
  v9(v8);

  (*(v6 + 8))(v0 + v7, v4);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

void sub_1AC6899C8()
{
  v0 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  sub_1AC678894();
}

uint64_t objectdestroy_213Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_328();
  v2(v1);
  v3 = OUTLINED_FUNCTION_214();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1AC689B7C(uint64_t a1)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_239();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_291();

  return sub_1AC6779D4(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC689C54(uint64_t a1)
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v1);
  OUTLINED_FUNCTION_239();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_29_0(v2);
  *v3 = v4;
  v3[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_463();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC675C8C(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_142Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_22_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC689DC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_167(v0);
  v1 = OUTLINED_FUNCTION_594();
  return sub_1AC67ABA4(v1);
}

uint64_t sub_1AC689E2C(uint64_t a1)
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_29_0(v1);
  *v2 = v3;
  v2[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_636();

  return sub_1AC673828(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC689F14()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_70_2();

  return sub_1AC680C2C(v6, v7, v1, v2);
}

uint64_t sub_1AC689FB4()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_165_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_0(v1);
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_127Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_613();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC68A088()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_523();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AC68A130(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_433();
  v4(v3);
  OUTLINED_FUNCTION_80();
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return a2;
}

uint64_t sub_1AC68A188()
{
  OUTLINED_FUNCTION_25();
  v0 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_311();
  v1 = OUTLINED_FUNCTION_594();

  return sub_1AC672A60(v1, v2, v3, v4);
}

uint64_t sub_1AC68A218()
{
  OUTLINED_FUNCTION_25();
  v0 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_311();
  v1 = OUTLINED_FUNCTION_594();

  return sub_1AC6732B0(v1, v2, v3);
}

double sub_1AC68A29C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1AC68A2AC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AC68A2BC()
{
  v1 = OUTLINED_FUNCTION_25();
  v2(v1);
  OUTLINED_FUNCTION_22_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1AC68A30C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AC68A3F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_408(a1, a2, a3, a4);
  OUTLINED_FUNCTION_80();
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v4;
}

uint64_t sub_1AC68A444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_408(a1, a2, a3, a4);
  OUTLINED_FUNCTION_80();
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v4;
}

uint64_t sub_1AC68A530()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_149_0();

  return sub_1AC673430(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_344Tm()
{
  OUTLINED_FUNCTION_78_0();
  swift_unknownObjectRelease();

  v1(*(v0 + 40));
  v2 = OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6BDD0](v2, v3, 7);
}

uint64_t sub_1AC68A62C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_105_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_523();

  return sub_1AC672C3C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1AC68A6C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_408(a1, a2, a3, a4);
  OUTLINED_FUNCTION_80();
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v4;
}

uint64_t sub_1AC68A730(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC68A774()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_445();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_62_3()
{
  *(*(v0 + 264) + *(v0 + 408)) = 0;
}

uint64_t OUTLINED_FUNCTION_63_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_79_2()
{
  v4 = v1 + *(v0 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  *(v1 - 144) = v0[115];
  *(v1 - 168) = v0[106];
  v3 = v0[104];
  v4 = *(*(v1 - 152) + 752);

  return sub_1AC61B988(v4, v3);
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_1AC659708(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_101_2()
{
  result = *(v0 + 1096);
  *(v1 - 112) = *(v0 + 848);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_2()
{
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(v1 + 32) = v2;

  return sub_1AC659150(v1);
}

uint64_t OUTLINED_FUNCTION_121_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_125_1()
{

  JUMPOUT(0x1B26EAB10);
}

uint64_t OUTLINED_FUNCTION_136_1()
{
  result = *(v1 + 840);
  *(v1 + 616) = v0;
  return result;
}

double OUTLINED_FUNCTION_139_1()
{
  *(v2 + *(v0 + 48)) = *(v1 + *(v0 + 48));

  return result;
}

uint64_t OUTLINED_FUNCTION_159_1(float a1)
{
  *v2 = a1;
  *(v1 + 152) = v3;
  return 0;
}

void OUTLINED_FUNCTION_179_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_195_0()
{
  *(v1 - 160) = v0 + 1;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_201_0()
{

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

void OUTLINED_FUNCTION_211_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(a16 + *(v16 + 48));
}

uint64_t OUTLINED_FUNCTION_212_0()
{

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

uint64_t OUTLINED_FUNCTION_215()
{
}

double OUTLINED_FUNCTION_220@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_224(uint64_t a1)
{

  return sub_1AC7A0B18();
}

uint64_t OUTLINED_FUNCTION_230()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_237(float a1)
{
  *v2 = a1;
  *(v1 + 136) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_252@<X0>(uint64_t a1@<X8>)
{
  *(v2 + v1) = a1;

  return sub_1AC79FE38();
}

void OUTLINED_FUNCTION_253()
{
  *(v1 - 104) = *(v0 + 600);

  sub_1AC6E0F44();
}

uint64_t OUTLINED_FUNCTION_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v15 - 104) = a1;
  *v13 = a13;

  return sub_1AC68A30C(v14 + 96, v14 + 56);
}

uint64_t OUTLINED_FUNCTION_255@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = 0xD00000000000001ALL;
  *(v1 - 96) = (a1 - 32) | 0x8000000000000000;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(a1 + 16) = a19;

  return sub_1AC68A30C(a29, a1 + 32);
}

uint64_t OUTLINED_FUNCTION_257(uint64_t a1)
{
  *(v1 - 144) = a1;

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_264(uint64_t a1, unint64_t a2)
{
  *(v4 - 144) = v2;
  __swift_destroy_boxed_opaque_existential_0((v3 + 96));

  return sub_1AC5CFE74(a1, a2, (v4 - 104));
}

uint64_t OUTLINED_FUNCTION_268()
{
  result = *(v0 + 840);
  *(v0 + 624) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_279()
{
}

uint64_t OUTLINED_FUNCTION_281(unint64_t *a1)
{

  return sub_1AC5C8B9C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_282(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_283()
{
}

uint64_t OUTLINED_FUNCTION_290(uint64_t a1)
{
  *(v2 + 1664) = a1;
  *(a1 + 24) = v1;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_296()
{

  return type metadata accessor for TranscriberCommon.ModelOptions(0);
}

__n128 *OUTLINED_FUNCTION_299(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  *(v4 + v3) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_300(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  return result;
}

id OUTLINED_FUNCTION_301@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return v3;
}

__n128 OUTLINED_FUNCTION_303(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18)
{
  result = a18;
  a1[1] = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_307(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(*(v2 + 920), a2, 1, *(v2 + 848));
}

uint64_t OUTLINED_FUNCTION_312(uint64_t result)
{
  *(v2 + 600) = result;
  *(v2 + 1120) = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_313()
{

  JUMPOUT(0x1B26E8C40);
}

__n128 OUTLINED_FUNCTION_315(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __n128 a32)
{
  *(v34 + 16) = v32;
  result = a32;
  *(v34 + 16 * v33 + 32) = a32;
  return result;
}

BOOL OUTLINED_FUNCTION_318(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_322()
{
  *(v0 + v1) = 0;
}

double OUTLINED_FUNCTION_324(uint64_t a1)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_329()
{
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1024);

  return sub_1AC60C718(v3, v2);
}

uint64_t OUTLINED_FUNCTION_333()
{
}

uint64_t OUTLINED_FUNCTION_336(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  __swift_project_boxed_opaque_existential_1(a30, *(*(v30 - 152) + 200));

  return sub_1AC7A0D28();
}

uint64_t OUTLINED_FUNCTION_337(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1AC5C8B9C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_358()
{
  result = *(v0 + 840);
  *(v0 + 616) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_367()
{
}

void OUTLINED_FUNCTION_368()
{
  v3 = *(v1 + *(v0 + 56));
}

uint64_t OUTLINED_FUNCTION_369()
{
}

uint64_t OUTLINED_FUNCTION_370()
{
}

double OUTLINED_FUNCTION_371(uint64_t a1)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_372()
{

  return sub_1AC6EE14C(v0);
}

unint64_t OUTLINED_FUNCTION_373()
{

  return sub_1AC6E08C4(v0);
}

uint64_t OUTLINED_FUNCTION_374()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_375()
{
}

uint64_t OUTLINED_FUNCTION_377()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1)
{
  v6 = (a1 + *v3);
  v7 = *(v6 + 2);
  v8 = *v6;
  *(v4 - 96) = *v6;
  *v1 = v8;
  *(v2 + 472) = v7;

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_384()
{
  *(v1 - 168) = v0 + 664;
  *(v1 - 160) = v0 + 656;
  *(v1 - 152) = v0;
}

uint64_t OUTLINED_FUNCTION_394()
{

  return sub_1AC79FDE8();
}

uint64_t OUTLINED_FUNCTION_396(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_397()
{

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_399()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_400()
{

  return sub_1AC68A130(v0, v1);
}

uint64_t OUTLINED_FUNCTION_401(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1AC7A0B78();
}

uint64_t OUTLINED_FUNCTION_404()
{
}

uint64_t OUTLINED_FUNCTION_406()
{
  *(v1 - 176) = v0;
}

uint64_t OUTLINED_FUNCTION_407()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_409(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_410(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_411(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_412()
{
  v1[170] = v0;
  v3 = v1[127];
  v4 = v1[128];

  return sub_1AC60C718(v4, v3);
}

uint64_t OUTLINED_FUNCTION_413()
{
}

uint64_t OUTLINED_FUNCTION_415()
{

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_419()
{

  return swift_getObjectType();
}

double OUTLINED_FUNCTION_421()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_426()
{
}

uint64_t OUTLINED_FUNCTION_430()
{
}

uint64_t OUTLINED_FUNCTION_436()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_439()
{

  return sub_1AC684A1C();
}

uint64_t OUTLINED_FUNCTION_444(uint64_t a1)
{
  *(v1 + 1656) = a1;

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_446()
{
}

uint64_t OUTLINED_FUNCTION_448()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_449()
{
}

uint64_t OUTLINED_FUNCTION_450()
{
}

uint64_t OUTLINED_FUNCTION_451()
{
}

unint64_t OUTLINED_FUNCTION_452(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1AC5CFE74(a1, a2, va);
}

double OUTLINED_FUNCTION_453()
{
  v2 = *(v0 + 672);
  sub_1AC5CA508(*(v0 + 1032));
  *(v1 - 104) = v2;

  return result;
}

void OUTLINED_FUNCTION_464()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_466()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_468()
{
}

void OUTLINED_FUNCTION_471(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3].n128_u8[0] = v2;
}

void OUTLINED_FUNCTION_472(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_476()
{
}

uint64_t OUTLINED_FUNCTION_478()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_486(uint64_t a1)
{
  v4 = a1 + v1;

  return sub_1AC68A130(v2, v4);
}

uint64_t OUTLINED_FUNCTION_487@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + a1;
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(v2 + 480) = *v4;
  *(v2 + 488) = v5;
  *(v2 + 496) = v6;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_488()
{

  return sub_1AC7A0CB8();
}

uint64_t OUTLINED_FUNCTION_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *(v15 - 96) = a1;
  *v13 = a13;

  return sub_1AC68A30C(v14 + 96, v14 + 56);
}

uint64_t OUTLINED_FUNCTION_493()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_494()
{

  return swift_slowAlloc();
}

char *OUTLINED_FUNCTION_518()
{
  v3 = *(v2 + 48);
  *v0 = *v1;
  return v1 + v3;
}

__n128 OUTLINED_FUNCTION_519(unint64_t a1)
{
  v2[3].n128_u64[1] = a1;
  result = v2[2];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_521(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_522(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

id OUTLINED_FUNCTION_525()
{
  *(v1 + 472) = v0;
  *(v1 + 232) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_526()
{
}

uint64_t OUTLINED_FUNCTION_527()
{
}

uint64_t OUTLINED_FUNCTION_528()
{
}