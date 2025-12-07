uint64_t sub_1E59AE844(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = v42;
  v8[80] = v41;
  v8[79] = v40;
  v8[78] = v39;
  v8[77] = v38;
  v8[76] = v37;
  v8[75] = v36;
  v8[74] = v35;
  v8[73] = a8;
  v8[72] = a7;
  v8[71] = a6;
  v8[70] = a5;
  v8[69] = a4;
  v8[68] = a2;
  v8[67] = a1;
  v12 = sub_1E58B1C48();
  v8[82] = v12;
  v13 = sub_1E58B1C9C();
  v8[83] = v13;
  v30 = v13;
  v14 = sub_1E58B1CF0();
  v8[84] = v14;
  v29 = v14;
  v8[52] = a5;
  v8[53] = &type metadata for WorkoutPlanItemContext;
  v8[54] = a6;
  v8[55] = a8;
  v8[56] = v36;
  v8[57] = v37;
  v8[58] = v12;
  v8[59] = v13;
  v8[60] = v14;
  v8[61] = v38;
  v8[62] = v40;
  v8[63] = v42;
  v15 = type metadata accessor for ArchivedWorkoutPlansAction(0, (v8 + 52));
  v8[85] = v15;
  v8[86] = *(v15 - 8);
  v8[87] = swift_task_alloc();
  v16 = sub_1E5A2A374();
  v8[88] = v16;
  v17 = sub_1E5A2A314();
  v8[89] = v17;
  v18 = sub_1E5A2A384();
  v8[90] = v18;
  v19 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v8[91] = v19;
  v20 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v8[92] = v20;
  v21 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v8[2] = v16;
  v8[93] = v21;
  v8[3] = a5;
  v8[4] = v17;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a6;
  v8[7] = a8;
  v8[8] = v18;
  v8[9] = v36;
  v8[10] = v19;
  v8[11] = v37;
  v8[12] = v20;
  v8[13] = v12;
  v8[14] = v30;
  v8[15] = v29;
  v8[16] = v38;
  v8[17] = v40;
  v8[18] = v21;
  v8[19] = v42;
  v22 = sub_1E5A2A244();
  v8[94] = v22;
  v23 = sub_1E5A2BD84();
  v8[95] = v23;
  v8[96] = *(v23 - 8);
  v8[97] = swift_task_alloc();
  v8[98] = *(v22 - 8);
  v8[99] = swift_task_alloc();
  sub_1E5A2BD84();
  v8[100] = swift_task_alloc();
  v24 = sub_1E5A2A164();
  v8[101] = v24;
  v8[102] = *(v24 - 8);
  v8[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB588, &qword_1E5A2CAF0);
  v8[104] = swift_task_alloc();
  v25 = sub_1E5A2A1F4();
  v8[105] = v25;
  v8[106] = *(v25 - 8);
  v8[107] = swift_task_alloc();
  v8[108] = sub_1E5A2BC84();
  v8[109] = sub_1E5A2BC74();
  v33 = (*a2 + **a2);
  v26 = swift_task_alloc();
  v8[110] = v26;
  *v26 = v8;
  v26[1] = sub_1E59AED90;

  return v33(a3);
}

uint64_t sub_1E59AED90(uint64_t a1)
{
  v3 = *v2;
  v3[111] = a1;
  v3[112] = v1;

  v4 = sub_1E5A2BC54();
  if (v1)
  {
    v6 = sub_1E59B014C;
  }

  else
  {
    v3[113] = v4;
    v3[114] = v5;
    v6 = sub_1E59AEF04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E59AEF04()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 672);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  *(v0 + 512) = *(v0 + 888);
  *(v0 + 304) = v4;
  *(v0 + 312) = v11;
  *(v0 + 320) = v3;
  *(v0 + 328) = &type metadata for WorkoutPlanItemContext;
  *(v0 + 336) = v10;
  *(v0 + 344) = v9;
  *(v0 + 352) = v2;
  *(v0 + 360) = v8;
  *(v0 + 368) = v1;
  *(v0 + 376) = *(v0 + 656);
  *(v0 + 392) = v5;
  *(v0 + 400) = v7;
  *(v0 + 408) = v6;
  sub_1E5A2A0E4();
  sub_1E5A2BC44();
  swift_getWitnessTable();
  if (sub_1E5A2BD54())
  {

    sub_1E59B63BC();
    v12 = swift_allocError();
    *v13 = 1;
    swift_willThrow();
    *(v0 + 976) = v12;
    if (qword_1ECFFB470 != -1)
    {
      swift_once();
    }

    v14 = sub_1E5A2A3D4();
    __swift_project_value_buffer(v14, qword_1ED026480);
    v15 = v12;
    v16 = sub_1E5A2A3B4();
    v17 = sub_1E5A2BD64();
    MEMORY[0x1E69331F0](v12);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v12;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1E5897000, v16, v17, "Failed to fetch recent workout plans section: %@", v18, 0xCu);
      sub_1E59B6328(v19);
      MEMORY[0x1E6933430](v19, -1, -1);
      MEMORY[0x1E6933430](v18, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    v22 = swift_task_alloc();
    *(v0 + 984) = v22;
    v23 = sub_1E5A2B8E4();
    *v22 = v0;
    v22[1] = sub_1E59AFEDC;
    v24 = *(v0 + 696);

    return MEMORY[0x1EEE01A40](v24, v23);
  }

  else
  {
    v25 = *(v0 + 856);
    v26 = *(v0 + 848);
    v40 = *(v0 + 840);
    v43 = *(v0 + 832);
    v27 = *(v0 + 816);
    v47 = *(v0 + 824);
    v48 = *(v0 + 808);
    v50 = *(v0 + 800);
    v28 = *(v0 + 744);
    v29 = *(v0 + 736);
    v45 = *(v0 + 728);
    v49 = *(v0 + 720);
    v52 = *(v0 + 712);
    v30 = *(v0 + 672);
    v42 = *(v0 + 664);
    v31 = *(v0 + 656);
    v32 = *(v0 + 648);
    v33 = *(v0 + 632);
    v41 = *(v0 + 616);
    v44 = *(v0 + 608);
    v46 = *(v0 + 600);
    v34 = *(v0 + 584);
    v51 = *(v0 + 568);
    v53 = *(v0 + 560);
    v35 = *(v0 + 552);
    v55 = *(*(v0 + 544) + 96);
    *(v0 + 160) = *(v0 + 704);
    *(v0 + 920) = v55;
    *(v0 + 168) = v53;
    *(v0 + 176) = v52;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v51;
    *(v0 + 200) = v34;
    *(v0 + 208) = v49;
    *(v0 + 216) = v46;
    *(v0 + 224) = v45;
    *(v0 + 232) = v44;
    *(v0 + 240) = v29;
    *(v0 + 248) = v31;
    *(v0 + 256) = v42;
    *(v0 + 264) = v30;
    *(v0 + 272) = v41;
    *(v0 + 280) = v33;
    *(v0 + 288) = v28;
    *(v0 + 296) = v32;
    sub_1E5A2A124();
    sub_1E5A2C104();
    swift_allocObject();
    v36 = sub_1E5A2BC14();
    *(v0 + 928) = v36;
    (*(v26 + 16))(v25, v35, v40);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF840, &qword_1E5A3E980);
    (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
    (*(v27 + 104))(v47, *MEMORY[0x1E699D7D8], v48);
    (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
    sub_1E5A2A0F4();
    sub_1E5A2BC44();
    v54 = (*MEMORY[0x1E699D7A0] + MEMORY[0x1E699D7A0]);
    v38 = swift_task_alloc();
    *(v0 + 936) = v38;
    *v38 = v0;
    v38[1] = sub_1E59AF554;

    return v54(v36);
  }
}

uint64_t sub_1E59AF554()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return MEMORY[0x1EEE6DFA0](sub_1E59AF698, v3, v2);
}

uint64_t sub_1E59AF698()
{
  v1 = swift_task_alloc();
  v10 = (*MEMORY[0x1E699D7A8] + MEMORY[0x1E699D7A8]);
  *(v0 + 944) = v1;
  v2 = *(v0 + 576);
  v3 = *(v0 + 592);
  v4 = *(v0 + 608);
  v5 = *(v0 + 624);
  v6 = *(v0 + 640);
  v1[1] = *(v0 + 560);
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  v8 = sub_1E5A2BC44();
  *(v0 + 960) = v8;
  *v7 = v0;
  v7[1] = sub_1E59AF7A8;

  return v10(v0 + 520, sub_1E59B6390, v1, v8);
}

uint64_t sub_1E59AF7A8()
{
  v2 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E69331F0);
  }

  v3 = *(v2 + 912);
  v4 = *(v2 + 904);

  return MEMORY[0x1EEE6DFA0](sub_1E59AF8E4, v4, v3);
}

uint64_t sub_1E59AF8E4()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[94];
  v0[66] = v0[65];
  swift_getWitnessTable();
  sub_1E5A2BD44();
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    (*(v0[96] + 8))(v0[97], v0[95]);

    sub_1E59B63BC();
    v4 = swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v0[122] = v4;
    if (qword_1ECFFB470 != -1)
    {
      swift_once();
    }

    v6 = sub_1E5A2A3D4();
    __swift_project_value_buffer(v6, qword_1ED026480);
    v7 = v4;
    v8 = sub_1E5A2A3B4();
    v9 = sub_1E5A2BD64();
    MEMORY[0x1E69331F0](v4);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1E5897000, v8, v9, "Failed to fetch recent workout plans section: %@", v10, 0xCu);
      sub_1E59B6328(v11);
      MEMORY[0x1E6933430](v11, -1, -1);
      MEMORY[0x1E6933430](v10, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    v14 = swift_task_alloc();
    v0[123] = v14;
    v15 = sub_1E5A2B8E4();
    *v14 = v0;
    v16 = sub_1E59AFEDC;
  }

  else
  {
    v17 = v0[99];
    v18 = v0[98];
    v19 = v0[94];
    v20 = v0[87];
    (*(v18 + 32))(v17, v0[97], v19);

    (*(v18 + 16))(v20, v17, v19);
    (*(v18 + 56))(v20, 0, 1, v19);
    swift_storeEnumTagMultiPayload();
    v14 = swift_task_alloc();
    v0[121] = v14;
    v15 = sub_1E5A2B8E4();
    *v14 = v0;
    v16 = sub_1E59AFC70;
  }

  v14[1] = v16;
  v21 = v0[87];

  return MEMORY[0x1EEE01A40](v21, v15);
}

uint64_t sub_1E59AFC70()
{
  v1 = *v0;
  v2 = *(*v0 + 696);
  v3 = *(*v0 + 688);
  v4 = *(*v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 912);
  v6 = *(v1 + 904);

  return MEMORY[0x1EEE6DFA0](sub_1E59AFDF4, v6, v5);
}

uint64_t sub_1E59AFDF4()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[94];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E59AFEDC()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 680);

  (*(v2 + 8))(v1, v3);
  v5 = sub_1E5A2BC54();

  return MEMORY[0x1EEE6DFA0](sub_1E59B007C, v5, v4);
}

uint64_t sub_1E59B007C()
{
  v1 = *(v0 + 976);

  MEMORY[0x1E69331F0](v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E59B014C()
{
  v1 = v0[112];
  v0[122] = v1;
  if (qword_1ECFFB470 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5A2A3D4();
  __swift_project_value_buffer(v2, qword_1ED026480);
  v3 = v1;
  v4 = sub_1E5A2A3B4();
  v5 = sub_1E5A2BD64();
  MEMORY[0x1E69331F0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E5897000, v4, v5, "Failed to fetch recent workout plans section: %@", v6, 0xCu);
    sub_1E59B6328(v7);
    MEMORY[0x1E6933430](v7, -1, -1);
    MEMORY[0x1E6933430](v6, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  v0[123] = v10;
  v11 = sub_1E5A2B8E4();
  *v10 = v0;
  v10[1] = sub_1E59AFEDC;
  v12 = v0[87];

  return MEMORY[0x1EEE01A40](v12, v11);
}

uint64_t sub_1E59B0334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = v39;
  v8[46] = v40;
  v8[43] = v37;
  v8[44] = v38;
  v8[41] = v35;
  v8[42] = v36;
  v8[39] = a8;
  v8[40] = v34;
  v8[37] = a6;
  v8[38] = a7;
  v8[35] = a4;
  v8[36] = a5;
  v8[34] = a1;
  v29 = sub_1E58B1C48();
  v12 = sub_1E58B1C9C();
  v28 = sub_1E58B1CF0();
  v8[20] = a4;
  v8[21] = &type metadata for WorkoutPlanItemContext;
  v8[22] = a5;
  v8[23] = a7;
  v8[24] = v34;
  v8[25] = v35;
  v8[26] = v29;
  v8[27] = v12;
  v8[28] = v28;
  v8[29] = v36;
  v8[30] = v38;
  v8[31] = v40;
  v13 = type metadata accessor for ArchivedWorkoutPlansAction(0, (v8 + 20));
  v8[47] = v13;
  v8[48] = *(v13 - 8);
  v8[49] = swift_task_alloc();
  v14 = sub_1E5A2A374();
  v15 = sub_1E5A2A314();
  v16 = sub_1E5A2A384();
  v17 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v18 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v19 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v8[2] = v14;
  v8[3] = a4;
  v8[4] = v15;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a5;
  v8[7] = a7;
  v8[8] = v16;
  v8[9] = v34;
  v8[10] = v17;
  v8[11] = v35;
  v8[12] = v18;
  v8[13] = v29;
  v8[14] = v12;
  v8[15] = v28;
  v8[16] = v36;
  v8[17] = v38;
  v8[18] = v19;
  v8[19] = v40;
  v20 = sub_1E5A2A244();
  v8[50] = v20;
  v21 = sub_1E5A2BD84();
  v8[51] = v21;
  v8[52] = *(v21 - 8);
  v8[53] = swift_task_alloc();
  v8[54] = *(v20 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = sub_1E5A2BC84();
  v22 = sub_1E5A2BC74();
  v23 = *(a2 + 96);
  v8[57] = v22;
  v8[58] = v23;
  v32 = (*MEMORY[0x1E699D798] + MEMORY[0x1E699D798]);
  v24 = swift_task_alloc();
  v8[59] = v24;
  *v24 = v8;
  v24[1] = sub_1E59B06DC;

  return v32(a3);
}

uint64_t sub_1E59B06DC()
{

  if (v0)
  {
    MEMORY[0x1E69331F0](v0);
    v1 = sub_1E5A2BC54();
    v3 = v2;
    v4 = sub_1E59B6584;
  }

  else
  {
    v1 = sub_1E5A2BC54();
    v3 = v5;
    v4 = sub_1E59B0860;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1E59B0860()
{
  v1 = swift_task_alloc();
  v2 = *(v0 + 280);
  v3 = *(v0 + 296);
  v4 = *(v0 + 312);
  v5 = *(v0 + 328);
  v6 = *(v0 + 344);
  v7 = *(v0 + 360);
  v11 = (*MEMORY[0x1E699D7A8] + MEMORY[0x1E699D7A8]);
  *(v0 + 480) = v1;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  v9 = sub_1E5A2BC44();
  *(v0 + 496) = v9;
  *v8 = v0;
  v8[1] = sub_1E59B0974;

  return v11(v0 + 256, sub_1E59B6410, v1, v9);
}

uint64_t sub_1E59B0974()
{
  v2 = *v1;

  if (v0)
  {

    JUMPOUT(0x1E69331F0);
  }

  v4 = sub_1E5A2BC54();
  *(v2 + 504) = v4;
  *(v2 + 512) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E59B0ACC, v4, v3);
}

uint64_t sub_1E59B0ACC()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[50];
  v0[33] = v0[32];
  swift_getWitnessTable();
  sub_1E5A2BD44();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[52];
    v4 = v0[53];
    v6 = v0[51];

    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[54];
    v9 = v0[55];
    v12 = v0[49];
    v11 = v0[50];
    (*(v10 + 32))(v9, v0[53], v11);

    (*(v10 + 16))(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    swift_storeEnumTagMultiPayload();
    v13 = swift_task_alloc();
    v0[65] = v13;
    v14 = sub_1E5A2B8E4();
    *v13 = v0;
    v13[1] = sub_1E59B0D00;
    v15 = v0[49];

    return MEMORY[0x1EEE01A40](v15, v14);
  }
}

uint64_t sub_1E59B0D00()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v4 = *(*v0 + 376);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 512);
  v6 = *(v1 + 504);

  return MEMORY[0x1EEE6DFA0](sub_1E59B0E84, v6, v5);
}

uint64_t sub_1E59B0E84()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[50];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E59B0F30@<X0>(uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A124();
  sub_1E5A2BC44();
  sub_1E5A2A244();
  swift_getWitnessTable();
  result = sub_1E5A2BBC4();
  *a9 = result;
  return result;
}

uint64_t sub_1E59B11C8@<X0>(uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A124();
  sub_1E5A2A104();
  v13 = sub_1E5A2A244();
  return (*(*(v13 - 8) + 56))(a6, 0, 1, v13);
}

uint64_t sub_1E59B143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = sub_1E5A2BC84();
  *(v5 + 48) = sub_1E5A2BC74();
  v10 = *(a2 + 80);
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5 & 1;
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_1E59B1578;

  return v13(v5 + 16);
}

uint64_t sub_1E59B1578()
{
  *(*v1 + 64) = v0;

  v3 = sub_1E5A2BC54();
  if (v0)
  {
    v4 = sub_1E59B1720;
  }

  else
  {
    v4 = sub_1E59B16BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E59B16BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59B1720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59B1784(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E58E4890;

  return v6();
}

uint64_t sub_1E59B1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a1;
  v13 = sub_1E58B1C48();
  v14 = sub_1E58B1C9C();
  v15 = sub_1E58B1CF0();
  v8[2] = a2;
  v8[3] = &type metadata for WorkoutPlanItemContext;
  v8[4] = a3;
  v8[5] = a5;
  v8[6] = a7;
  v8[7] = a8;
  v8[8] = v13;
  v8[9] = v14;
  v8[10] = v15;
  v8[11] = v22;
  v8[12] = v23;
  v8[13] = v24;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction(0, (v8 + 2));
  v8[15] = v16;
  v8[16] = *(v16 - 8);
  v8[17] = swift_task_alloc();
  sub_1E5A2BC84();
  v8[18] = sub_1E5A2BC74();
  v18 = sub_1E5A2BC54();
  v8[19] = v18;
  v8[20] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1E59B1A08, v18, v17);
}

uint64_t sub_1E59B1A08()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v2 = sub_1E5A2B8E4();
  *v1 = v0;
  v1[1] = sub_1E59B1AC8;
  v3 = *(v0 + 136);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E59B1AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E59B1C4C, v6, v5);
}

uint64_t sub_1E59B1C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59B1CB8(uint64_t a1)
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
  v11[1] = sub_1E58CECB4;

  return sub_1E59B1890(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E59B1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v37;
  v8[70] = v36;
  v8[69] = v35;
  v8[68] = v34;
  v8[67] = v33;
  v8[66] = v32;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  v13 = sub_1E58B1C48();
  v8[72] = v13;
  v14 = sub_1E58B1C9C();
  v8[73] = v14;
  v28 = v14;
  v15 = sub_1E58B1CF0();
  v8[74] = v15;
  v27 = v15;
  v8[34] = a3;
  v8[35] = &type metadata for WorkoutPlanItemContext;
  v8[36] = a4;
  v8[37] = a6;
  v8[38] = a8;
  v8[39] = v32;
  v8[40] = v13;
  v8[41] = v14;
  v8[42] = v15;
  v8[43] = v33;
  v8[44] = v35;
  v8[45] = v37;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction(0, (v8 + 34));
  v8[75] = v16;
  v8[76] = *(v16 - 8);
  v8[77] = swift_task_alloc();
  v17 = sub_1E5A2A374();
  v8[78] = v17;
  v18 = sub_1E5A2A314();
  v8[79] = v18;
  v19 = sub_1E5A2A384();
  v20 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v8[80] = v20;
  v21 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v8[81] = v21;
  v22 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v8[2] = v17;
  v8[3] = a3;
  v8[4] = v18;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a4;
  v8[7] = a6;
  v8[8] = v19;
  v8[9] = a8;
  v8[10] = v20;
  v8[11] = v32;
  v8[12] = v21;
  v8[13] = v13;
  v8[14] = v28;
  v8[15] = v27;
  v8[16] = v33;
  v8[17] = v35;
  v8[18] = v22;
  v8[19] = v37;
  v8[82] = sub_1E5A2A124();
  v23 = sub_1E5A2BD84();
  v8[83] = v23;
  v8[84] = *(v23 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = sub_1E5A2BC84();
  v8[87] = sub_1E5A2BC74();
  v30 = (*(a2 + 16) + **(a2 + 16));
  v24 = swift_task_alloc();
  v8[88] = v24;
  *v24 = v8;
  v24[1] = sub_1E59B2188;

  return v30(v8 + 51);
}

uint64_t sub_1E59B2188()
{
  v1 = *v0;

  v3 = sub_1E5A2BC54();
  *(v1 + 712) = v3;
  *(v1 + 720) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E59B22D0, v3, v2);
}

uint64_t sub_1E59B22D0()
{
  v1 = v0[54];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[49] = swift_getAssociatedTypeWitness();
  v0[50] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 46);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  v5 = sub_1E5A2BC74();
  v0[91] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v6 = swift_task_alloc();
  v0[92] = v6;
  *v6 = v0;
  v6[1] = sub_1E59B24A8;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 99, v5, v7);
}

uint64_t sub_1E59B24A8()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (!v0)
  {

    v4 = *(v2 + 720);
    v5 = *(v2 + 712);

    return MEMORY[0x1EEE6DFA0](sub_1E59B25C4, v5, v4);
  }

  return result;
}

uint64_t sub_1E59B25C4()
{
  if (*(v0 + 792) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 752) = *(*(v0 + 472) + 96);
    swift_getWitnessTable();
    sub_1E5A2A154();
    swift_getWitnessTable();
    v4 = sub_1E5A2BC54();

    return MEMORY[0x1EEE6DFA0](sub_1E59B26FC, v4, v3);
  }
}

uint64_t sub_1E59B26FC()
{
  v0[95] = sub_1E5A2A134();
  v1 = v0[90];
  v2 = v0[89];

  return MEMORY[0x1EEE6DFA0](sub_1E59B2768, v2, v1);
}

uint64_t sub_1E59B2768()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 760);
  sub_1E5A2BC44();
  swift_getWitnessTable();
  sub_1E5A2BD44();

  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    swift_storeEnumTagMultiPayload();
    v4 = swift_task_alloc();
    *(v0 + 784) = v4;
    v5 = sub_1E5A2B8E4();
    *v4 = v0;
    v4[1] = sub_1E59B2C70;
    v6 = *(v0 + 616);

    return MEMORY[0x1EEE01A40](v6, v5);
  }

  else
  {
    v7 = *(v0 + 680);
    v8 = *(v0 + 656);
    v28 = *(v0 + 648);
    v24 = *(v0 + 632);
    v9 = *(v0 + 624);
    v26 = *(v0 + 640);
    v27 = *(v0 + 592);
    v10 = *(v0 + 568);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 480);
    v25 = *(v0 + 576);
    v20 = *(v0 + 488);
    v21 = *(v0 + 504);
    v22 = *(v0 + 536);
    v23 = *(v0 + 552);
    v14 = sub_1E5A2A114();
    (*(v3 + 8))(v7, v8);
    *(v0 + 456) = v14;
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v20;
    *(v15 + 40) = v21;
    *(v15 + 56) = v12;
    *(v15 + 64) = v11;
    *(v15 + 72) = v22;
    *(v15 + 88) = v23;
    *(v15 + 104) = v10;
    *(v0 + 160) = v9;
    *(v0 + 168) = v13;
    *(v0 + 176) = v24;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v20;
    *(v0 + 200) = v12;
    *(v0 + 208) = v26;
    *(v0 + 216) = v11;
    *(v0 + 224) = v28;
    *(v0 + 232) = v25;
    *(v0 + 248) = v27;
    *(v0 + 256) = v22;
    *(v0 + 264) = v10;
    sub_1E5A2A0E4();
    sub_1E5A2BC44();
    swift_getWitnessTable();
    v16 = sub_1E5A2BBC4();

    v17 = sub_1E591CAE0(v16);
    *(v0 + 768) = v17;

    v29 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
    v18 = swift_task_alloc();
    *(v0 + 776) = v18;
    *v18 = v0;
    v18[1] = sub_1E59B2B24;

    return v29(v17);
  }
}

uint64_t sub_1E59B2B24()
{
  v2 = *v1;

  if (v0)
  {
    MEMORY[0x1E69331F0](v0);

    v3 = *(v2 + 720);
    v4 = *(v2 + 712);
    v5 = sub_1E59B2ED0;
  }

  else
  {

    v3 = *(v2 + 720);
    v4 = *(v2 + 712);
    v5 = sub_1E59B6548;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E59B2C70()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 600);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 720);
  v6 = *(v1 + 712);

  return MEMORY[0x1EEE6DFA0](sub_1E59B2DF4, v6, v5);
}

uint64_t sub_1E59B2DF4(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[91] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 46), v1[49]);
  v3 = swift_task_alloc();
  v1[92] = v3;
  *v3 = v1;
  v3[1] = sub_1E59B24A8;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 99, v2, v4);
}

uint64_t sub_1E59B2ED0()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 784) = v1;
  v2 = sub_1E5A2B8E4();
  *v1 = v0;
  v1[1] = sub_1E59B2C70;
  v3 = *(v0 + 616);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E59B2F90(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58CECB4;

  return sub_1E59B1DC0(a1, (v1 + 14), v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E59B3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v37;
  v8[70] = v36;
  v8[69] = v35;
  v8[68] = v34;
  v8[67] = v33;
  v8[66] = v32;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  v13 = sub_1E58B1C48();
  v8[72] = v13;
  v14 = sub_1E58B1C9C();
  v8[73] = v14;
  v28 = v14;
  v15 = sub_1E58B1CF0();
  v8[74] = v15;
  v27 = v15;
  v8[34] = a3;
  v8[35] = &type metadata for WorkoutPlanItemContext;
  v8[36] = a4;
  v8[37] = a6;
  v8[38] = a8;
  v8[39] = v32;
  v8[40] = v13;
  v8[41] = v14;
  v8[42] = v15;
  v8[43] = v33;
  v8[44] = v35;
  v8[45] = v37;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction(0, (v8 + 34));
  v8[75] = v16;
  v8[76] = *(v16 - 8);
  v8[77] = swift_task_alloc();
  v17 = sub_1E5A2A374();
  v8[78] = v17;
  v18 = sub_1E5A2A314();
  v8[79] = v18;
  v19 = sub_1E5A2A384();
  v20 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v8[80] = v20;
  v21 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v8[81] = v21;
  v22 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v8[2] = v17;
  v8[3] = a3;
  v8[4] = v18;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a4;
  v8[7] = a6;
  v8[8] = v19;
  v8[9] = a8;
  v8[10] = v20;
  v8[11] = v32;
  v8[12] = v21;
  v8[13] = v13;
  v8[14] = v28;
  v8[15] = v27;
  v8[16] = v33;
  v8[17] = v35;
  v8[18] = v22;
  v8[19] = v37;
  v8[82] = sub_1E5A2A124();
  v23 = sub_1E5A2BD84();
  v8[83] = v23;
  v8[84] = *(v23 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = sub_1E5A2BC84();
  v8[87] = sub_1E5A2BC74();
  v30 = (*(a2 + 32) + **(a2 + 32));
  v24 = swift_task_alloc();
  v8[88] = v24;
  *v24 = v8;
  v24[1] = sub_1E59B3458;

  return v30(v8 + 51);
}

uint64_t sub_1E59B3458()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = sub_1E5A2BC54();
  if (v0)
  {
    v5 = sub_1E59B41C0;
  }

  else
  {
    *(v2 + 720) = v3;
    *(v2 + 728) = v4;
    v5 = sub_1E59B35C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E59B35C0()
{
  v1 = v0[54];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[49] = swift_getAssociatedTypeWitness();
  v0[50] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 46);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  v5 = sub_1E5A2BC74();
  v0[92] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v6 = swift_task_alloc();
  v0[93] = v6;
  *v6 = v0;
  v6[1] = sub_1E59B3798;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 100, v5, v7);
}

uint64_t sub_1E59B3798()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (!v0)
  {

    v4 = *(v2 + 728);
    v5 = *(v2 + 720);

    return MEMORY[0x1EEE6DFA0](sub_1E59B38B4, v5, v4);
  }

  return result;
}

uint64_t sub_1E59B38B4()
{
  if (*(v0 + 800) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 760) = *(*(v0 + 472) + 96);
    swift_getWitnessTable();
    sub_1E5A2A154();
    swift_getWitnessTable();
    v4 = sub_1E5A2BC54();

    return MEMORY[0x1EEE6DFA0](sub_1E59B39EC, v4, v3);
  }
}

uint64_t sub_1E59B39EC()
{
  v0[96] = sub_1E5A2A134();
  v1 = v0[91];
  v2 = v0[90];

  return MEMORY[0x1EEE6DFA0](sub_1E59B3A58, v2, v1);
}

uint64_t sub_1E59B3A58()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 768);
  sub_1E5A2BC44();
  swift_getWitnessTable();
  sub_1E5A2BD44();

  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    swift_storeEnumTagMultiPayload();
    v4 = swift_task_alloc();
    *(v0 + 792) = v4;
    v5 = sub_1E5A2B8E4();
    *v4 = v0;
    v4[1] = sub_1E59B3F60;
    v6 = *(v0 + 616);

    return MEMORY[0x1EEE01A40](v6, v5);
  }

  else
  {
    v7 = *(v0 + 680);
    v8 = *(v0 + 656);
    v28 = *(v0 + 648);
    v24 = *(v0 + 632);
    v9 = *(v0 + 624);
    v26 = *(v0 + 640);
    v27 = *(v0 + 592);
    v10 = *(v0 + 568);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 480);
    v25 = *(v0 + 576);
    v20 = *(v0 + 488);
    v21 = *(v0 + 504);
    v22 = *(v0 + 536);
    v23 = *(v0 + 552);
    v14 = sub_1E5A2A114();
    (*(v3 + 8))(v7, v8);
    *(v0 + 456) = v14;
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v20;
    *(v15 + 40) = v21;
    *(v15 + 56) = v12;
    *(v15 + 64) = v11;
    *(v15 + 72) = v22;
    *(v15 + 88) = v23;
    *(v15 + 104) = v10;
    *(v0 + 160) = v9;
    *(v0 + 168) = v13;
    *(v0 + 176) = v24;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v20;
    *(v0 + 200) = v12;
    *(v0 + 208) = v26;
    *(v0 + 216) = v11;
    *(v0 + 224) = v28;
    *(v0 + 232) = v25;
    *(v0 + 248) = v27;
    *(v0 + 256) = v22;
    *(v0 + 264) = v10;
    sub_1E5A2A0E4();
    sub_1E5A2BC44();
    swift_getWitnessTable();
    v16 = sub_1E5A2BBC4();

    v17 = sub_1E591CAE0(v16);
    *(v0 + 776) = v17;

    v29 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
    v18 = swift_task_alloc();
    *(v0 + 784) = v18;
    *v18 = v0;
    v18[1] = sub_1E59B3E14;

    return v29(v17);
  }
}

uint64_t sub_1E59B3E14()
{
  v2 = *v1;

  if (v0)
  {
    MEMORY[0x1E69331F0](v0);

    v3 = *(v2 + 728);
    v4 = *(v2 + 720);
    v5 = sub_1E59B423C;
  }

  else
  {

    v3 = *(v2 + 728);
    v4 = *(v2 + 720);
    v5 = sub_1E59B654C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E59B3F60()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 600);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 728);
  v6 = *(v1 + 720);

  return MEMORY[0x1EEE6DFA0](sub_1E59B40E4, v6, v5);
}

uint64_t sub_1E59B40E4(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[92] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 46), v1[49]);
  v3 = swift_task_alloc();
  v1[93] = v3;
  *v3 = v1;
  v3[1] = sub_1E59B3798;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 100, v2, v4);
}

uint64_t sub_1E59B41C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59B423C()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 792) = v1;
  v2 = sub_1E5A2B8E4();
  *v1 = v0;
  v1[1] = sub_1E59B3F60;
  v3 = *(v0 + 616);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E59B42FC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58CECB4;

  return sub_1E59B3090(a1, (v1 + 14), v3, v4, v5, v6, v7, v8);
}

double sub_1E59B43FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, _OWORD *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a5;
  v42 = a3;
  v44 = a2;
  v45 = a1;
  v46 = a6;
  v62 = a11;
  v47 = a7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFF850, &qword_1E5A3E988);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v36 - v13;
  v14 = sub_1E5A2A374();
  v43 = v14;
  v15 = sub_1E5A2A314();
  v16 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v17 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v18 = sub_1E58B1C48();
  v19 = sub_1E58B1C9C();
  v20 = sub_1E58B1CF0();
  *&v49 = v14;
  v21 = v44;
  *(&v49 + 1) = v44;
  v50 = v15;
  v51 = &type metadata for WorkoutPlanItemContext;
  v52 = a3;
  v53 = a4;
  v22 = a4;
  v23 = v16;
  v54 = v16;
  v55 = v48;
  v56 = v17;
  v57 = v18;
  v58 = v19;
  v59 = v20;
  v60 = v47;
  v61 = v62;
  v38 = sub_1E5A2A1A4();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v25 = &v36 - v24;
  *&v49 = v43;
  *(&v49 + 1) = v21;
  v50 = v15;
  v51 = &type metadata for WorkoutPlanItemContext;
  v52 = v42;
  v53 = v22;
  v54 = v23;
  v55 = v48;
  v56 = v17;
  v57 = v18;
  v58 = v19;
  v59 = v20;
  v60 = v47;
  v61 = v62;
  v26 = sub_1E5A2A0E4();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v36 - v28;
  (*(v30 + 16))(&v36 - v28, v45, v26, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v40;
    v25 = v39;
    v32 = v41;
    (*(v40 + 32))(v39, v29, v41);
    sub_1E5A2A1B4();
  }

  else
  {
    v31 = v37;
    v32 = v38;
    (*(v37 + 32))(v25, v29, v38);
    MEMORY[0x1E6930DB0](&v49, v32);
  }

  (*(v31 + 8))(v25, v32);
  result = *&v49;
  v34 = v50;
  v35 = v46;
  *v46 = v49;
  *(v35 + 16) = v34;
  return result;
}

uint64_t sub_1E59B47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v37;
  v8[70] = v36;
  v8[69] = v35;
  v8[68] = v34;
  v8[67] = v33;
  v8[66] = v32;
  v8[65] = a8;
  v8[63] = a6;
  v8[64] = a7;
  v8[61] = a4;
  v8[62] = a5;
  v8[59] = a2;
  v8[60] = a3;
  v8[58] = a1;
  v13 = sub_1E58B1C48();
  v8[72] = v13;
  v14 = sub_1E58B1C9C();
  v8[73] = v14;
  v28 = v14;
  v15 = sub_1E58B1CF0();
  v8[74] = v15;
  v27 = v15;
  v8[34] = a3;
  v8[35] = &type metadata for WorkoutPlanItemContext;
  v8[36] = a4;
  v8[37] = a6;
  v8[38] = a8;
  v8[39] = v32;
  v8[40] = v13;
  v8[41] = v14;
  v8[42] = v15;
  v8[43] = v33;
  v8[44] = v35;
  v8[45] = v37;
  v16 = type metadata accessor for ArchivedWorkoutPlansAction(0, (v8 + 34));
  v8[75] = v16;
  v8[76] = *(v16 - 8);
  v8[77] = swift_task_alloc();
  v17 = sub_1E5A2A374();
  v8[78] = v17;
  v18 = sub_1E5A2A314();
  v8[79] = v18;
  v19 = sub_1E5A2A384();
  v20 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v8[80] = v20;
  v21 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v8[81] = v21;
  v22 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v8[2] = v17;
  v8[3] = a3;
  v8[4] = v18;
  v8[5] = &type metadata for WorkoutPlanItemContext;
  v8[6] = a4;
  v8[7] = a6;
  v8[8] = v19;
  v8[9] = a8;
  v8[10] = v20;
  v8[11] = v32;
  v8[12] = v21;
  v8[13] = v13;
  v8[14] = v28;
  v8[15] = v27;
  v8[16] = v33;
  v8[17] = v35;
  v8[18] = v22;
  v8[19] = v37;
  v8[82] = sub_1E5A2A124();
  v23 = sub_1E5A2BD84();
  v8[83] = v23;
  v8[84] = *(v23 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = sub_1E5A2BC84();
  v8[87] = sub_1E5A2BC74();
  v30 = (*(a2 + 48) + **(a2 + 48));
  v24 = swift_task_alloc();
  v8[88] = v24;
  *v24 = v8;
  v24[1] = sub_1E59B4BC4;

  return v30(v8 + 51);
}

uint64_t sub_1E59B4BC4()
{
  v1 = *v0;

  v3 = sub_1E5A2BC54();
  *(v1 + 712) = v3;
  *(v1 + 720) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E59B4D0C, v3, v2);
}

uint64_t sub_1E59B4D0C()
{
  v1 = v0[54];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[49] = swift_getAssociatedTypeWitness();
  v0[50] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 46);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  v5 = sub_1E5A2BC74();
  v0[91] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
  v6 = swift_task_alloc();
  v0[92] = v6;
  *v6 = v0;
  v6[1] = sub_1E59B4EE4;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 99, v5, v7);
}

uint64_t sub_1E59B4EE4()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (!v0)
  {

    v4 = *(v2 + 720);
    v5 = *(v2 + 712);

    return MEMORY[0x1EEE6DFA0](sub_1E59B5000, v5, v4);
  }

  return result;
}

uint64_t sub_1E59B5000()
{
  if (*(v0 + 792) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 752) = *(*(v0 + 472) + 96);
    swift_getWitnessTable();
    sub_1E5A2A154();
    swift_getWitnessTable();
    v4 = sub_1E5A2BC54();

    return MEMORY[0x1EEE6DFA0](sub_1E59B5138, v4, v3);
  }
}

uint64_t sub_1E59B5138()
{
  v0[95] = sub_1E5A2A134();
  v1 = v0[90];
  v2 = v0[89];

  return MEMORY[0x1EEE6DFA0](sub_1E59B51A4, v2, v1);
}

uint64_t sub_1E59B51A4()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 760);
  sub_1E5A2BC44();
  swift_getWitnessTable();
  sub_1E5A2BD44();

  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    swift_storeEnumTagMultiPayload();
    v4 = swift_task_alloc();
    *(v0 + 784) = v4;
    v5 = sub_1E5A2B8E4();
    *v4 = v0;
    v4[1] = sub_1E59B56AC;
    v6 = *(v0 + 616);

    return MEMORY[0x1EEE01A40](v6, v5);
  }

  else
  {
    v7 = *(v0 + 680);
    v8 = *(v0 + 656);
    v28 = *(v0 + 648);
    v24 = *(v0 + 632);
    v9 = *(v0 + 624);
    v26 = *(v0 + 640);
    v27 = *(v0 + 592);
    v10 = *(v0 + 568);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v13 = *(v0 + 480);
    v25 = *(v0 + 576);
    v20 = *(v0 + 488);
    v21 = *(v0 + 504);
    v22 = *(v0 + 536);
    v23 = *(v0 + 552);
    v14 = sub_1E5A2A114();
    (*(v3 + 8))(v7, v8);
    *(v0 + 456) = v14;
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v20;
    *(v15 + 40) = v21;
    *(v15 + 56) = v12;
    *(v15 + 64) = v11;
    *(v15 + 72) = v22;
    *(v15 + 88) = v23;
    *(v15 + 104) = v10;
    *(v0 + 160) = v9;
    *(v0 + 168) = v13;
    *(v0 + 176) = v24;
    *(v0 + 184) = &type metadata for WorkoutPlanItemContext;
    *(v0 + 192) = v20;
    *(v0 + 200) = v12;
    *(v0 + 208) = v26;
    *(v0 + 216) = v11;
    *(v0 + 224) = v28;
    *(v0 + 232) = v25;
    *(v0 + 248) = v27;
    *(v0 + 256) = v22;
    *(v0 + 264) = v10;
    sub_1E5A2A0E4();
    sub_1E5A2BC44();
    swift_getWitnessTable();
    v16 = sub_1E5A2BBC4();

    v17 = sub_1E591CAE0(v16);
    *(v0 + 768) = v17;

    v29 = (*MEMORY[0x1E699D7B0] + MEMORY[0x1E699D7B0]);
    v18 = swift_task_alloc();
    *(v0 + 776) = v18;
    *v18 = v0;
    v18[1] = sub_1E59B5560;

    return v29(v17);
  }
}

uint64_t sub_1E59B5560()
{
  v2 = *v1;

  if (v0)
  {
    MEMORY[0x1E69331F0](v0);

    v3 = *(v2 + 720);
    v4 = *(v2 + 712);
    v5 = sub_1E59B590C;
  }

  else
  {

    v3 = *(v2 + 720);
    v4 = *(v2 + 712);
    v5 = sub_1E59B6550;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E59B56AC()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 600);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 720);
  v6 = *(v1 + 712);

  return MEMORY[0x1EEE6DFA0](sub_1E59B5830, v6, v5);
}

uint64_t sub_1E59B5830(uint64_t a1)
{
  v2 = sub_1E5A2BC74();
  v1[91] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 46), v1[49]);
  v3 = swift_task_alloc();
  v1[92] = v3;
  *v3 = v1;
  v3[1] = sub_1E59B4EE4;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 99, v2, v4);
}

uint64_t sub_1E59B590C()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 784) = v1;
  v2 = sub_1E5A2B8E4();
  *v1 = v0;
  v1[1] = sub_1E59B56AC;
  v3 = *(v0 + 616);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E59B59CC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58CECB4;

  return sub_1E59B47FC(a1, (v1 + 14), v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1E59B5B34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1E58CECB4;

  return sub_1E59B1784(a1, v1 + 112);
}

uint64_t sub_1E59B5C34(uint64_t a1)
{
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  v6 = *(v1 + 240);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CD5C8;

  return sub_1E59B143C(a1, v1 + 112, v4, v5, v6);
}

uint64_t sub_1E59B5D58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(sub_1E5A2A024() - 8);
  v10 = (*(v9 + 80) + 217) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E58CECB4;

  return sub_1E59B0334(a1, (v1 + 14), v1 + v10, v4, v5, v6, v7, v8);
}

uint64_t sub_1E59B5EA4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(sub_1E5A2A1F4() - 8);
  v8 = (*(v7 + 80) + 232) & ~*(v7 + 80);
  v9 = *(v1 + 224);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E58CECB4;

  return sub_1E59AE844(a1, (v1 + 112), v9, v1 + v8, v12, v4, v5, v6);
}

uint64_t sub_1E59B60FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E59B6164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E59B61AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_1E59B6234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 9))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E59B6288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1E59B6328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC3A8, &qword_1E5A308B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E59B63BC()
{
  result = qword_1ECFFF848;
  if (!qword_1ECFFF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF848);
  }

  return result;
}

__n128 ArchivedWorkoutPlansEnvironment.init(fetchWorkoutPlanTemplateItemDescriptors:makeActiveWorkoutPlanUpdatedStream:makeCatalogUpdatedStream:makeWorkoutPlansUpdatedStream:navigateToArchivedWorkoutPlans:navigateToWorkoutPlanTemplate:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

uint64_t sub_1E59B65AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E59B6604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E59B664C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E59B66BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1E5A2B714();
}

uint64_t PersonalizedWorkoutPlansView.init(store:buildYourOwnActionButtonViewBuilder:buildPersonalizedActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v23[0] = a7;
  v23[1] = a8;
  v23[2] = a10;
  v23[3] = a11;
  v19 = a9 + *(type metadata accessor for PersonalizedWorkoutPlansView(0, v23) + 52);
  *v19 = sub_1E58D2CB8;
  *(v19 + 1) = v18;
  v19[16] = 0;

  sub_1E59B6A08(a3, a4, a7, a8, a10, a11);
  sub_1E59B6B7C(a5, a6, a7, a8, a10, a11);
}

uint64_t sub_1E59B68E0()
{
  sub_1E5A2AB24();
  sub_1E59C97C0(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1E5A2C264();
}

uint64_t sub_1E59B6960(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE258, &unk_1E5A39330);
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E59B6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata2();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E59B6AC4(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata2();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = *(a1 + 24);
  *(v3 + 40) = *(a1 + 40);
  *(v3 + 48) = v5;
  return sub_1E59C9808;
}

uint64_t sub_1E59B6B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  swift_getFunctionTypeMetadata();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E59B6C5C(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v2 = *(a1 + 24);
  *&v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  *(&v5 + 1) = MEMORY[0x1E69E6530];
  swift_getFunctionTypeMetadata();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v2;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v5;
  return sub_1E59C95FC;
}

uint64_t sub_1E59B6D30(uint64_t a1)
{
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v6 == 1)
  {
    sub_1E59B6960(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    v2 = 13;
    if (v5 >= 2u)
    {
      v2 = 3;
    }

    if (v5 - 2 >= 3)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1E59B6960(a1);
    swift_getKeyPath();
    sub_1E5A2B944();

    if (v4 - 2 >= 3)
    {
      if (v4 >= 2u)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E59B6E58(uint64_t a1)
{
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v4 != 1)
  {
    return 1;
  }

  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v3 >= 2u)
  {
    return 1;
  }

  else
  {
    return 12;
  }
}

double sub_1E59B6F18(uint64_t a1)
{
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  result = 20.0;
  if (v2 < 2u)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1E59B6F80(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E58BAD14(v11, &qword_1ECFFE260, &qword_1E5A39370);
    }

    else if (EnumCaseMultiPayload != 3)
    {
      return 1;
    }

    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v11, v14);
    v18 = sub_1E5A29E34();
    (*(*(v18 - 8) + 8))(&v11[v17], v18);
  }

  else
  {
    sub_1E594D3DC(v11, v14);
  }

  v19 = *&v14[*(v12 + 20)];
  v20 = *(v19 + 16);
  if (!v20)
  {
    v16 = 0;
LABEL_16:
    sub_1E599AFF0(v14, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    return v16;
  }

  v21 = 0;
  v22 = v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v23 = *(v3 + 72);
  while (1)
  {
    sub_1E599AF88(v22, v8, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E599AF88(v8, v5, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v24 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
    v25 = (*(*(v24 - 8) + 48))(v5, 1, v24) == 1;
    sub_1E599AFF0(v5, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    result = sub_1E599AFF0(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v27 = __OFADD__(v21, v25);
    v21 += v25;
    if (v27)
    {
      break;
    }

    v22 += v23;
    if (!--v20)
    {
      v16 = v21 > 0;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59B72F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_1E59B6960(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E58D5C24(v7, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v4;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
      v10 = *v4;
      v11 = sub_1E5A29E34();
      (*(*(v11 - 8) + 8))(&v4[v9], v11);
      return v10;
    }

    sub_1E58BAD14(v4, &qword_1ECFFC100, &qword_1E5A2FE90);
  }

  return 0;
}

uint64_t sub_1E59B7484@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v26 = a2;
  v23 = a1[3];
  v24 = a1[5];
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, v23, v24, a3);
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v6 = sub_1E5A29E74();
  v21 = MEMORY[0x1E69E3B40];
  v36 = v5;
  v37 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v40 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v7 = sub_1E5A2B494();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  *&v14 = a1[2];
  *(&v14 + 1) = v23;
  *&v15 = a1[4];
  *(&v15 + 1) = v24;
  v27 = v14;
  v28 = v15;
  v29 = v25;
  v16 = swift_getWitnessTable();
  v36 = v4;
  v37 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = swift_getWitnessTable();
  v33 = v16;
  v34 = v17;
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x1E6981E60];
  v18 = swift_getWitnessTable();
  sub_1E5A2B484();
  v30 = v18;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v19 = *(v8 + 8);
  v19(v10, v7);
  sub_1E58B41DC();
  return (v19)(v13, v7);
}

uint64_t sub_1E59B7890@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v155 = a1;
  v154 = a6;
  v132 = a2;
  v166 = a2;
  v167 = a3;
  v131 = a4;
  v168 = a4;
  v169 = a5;
  v8 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v166);
  OpaqueTypeConformance2 = *(v8 - 8);
  v129 = *(OpaqueTypeConformance2 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v122 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v11 = sub_1E5A29E74();
  v146 = a3;
  v147 = a5;
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v12);
  WitnessTable = swift_getWitnessTable();
  v166 = v13;
  v167 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v17 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v166 = v10;
  v167 = v11;
  v135 = v11;
  v133 = OpaqueTypeMetadata2;
  v168 = OpaqueTypeMetadata2;
  v169 = v16;
  v170 = v17;
  v18 = sub_1E5A2B6F4();
  v137 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v134 = (&v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v122 - v21;
  v166 = v13;
  v167 = WitnessTable;
  v156 = WitnessTable;
  v22 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v23 = sub_1E5A2B864();
  v153 = v18;
  v24 = sub_1E5A2AA84();
  v142 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v122 - v25;
  v151 = v23;
  v127 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v140 = &v122 - v27;
  v139 = sub_1E5A2A734();
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v126 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v138 = &v122 - v30;
  v157 = swift_checkMetadataState();
  v123 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v32 = &v122 - v31;
  v124 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v125 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v122 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v145 = &v122 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v144 = &v122 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v122 - v43;
  v45 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v24;
  v150 = sub_1E5A2AA84();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v122 - v48;
  v49 = v8;
  v50 = v8;
  v51 = v155;
  sub_1E59B6960(v50);
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E58BAD14(v44, &qword_1ECFFE260, &qword_1E5A39370);
      v53 = v156;
      v54 = v157;
    }

    else
    {
      v53 = v156;
      v54 = v157;
      if (EnumCaseMultiPayload != 3)
      {
        sub_1E59B6960(v49);
        v135 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
        v55 = *(v135 - 8);
        v134 = *(v55 + 56);
        v136 = (v55 + 56);
        v56 = v138;
        v134(v138, 1, 1, v135);
        v57 = sub_1E59B6C5C(v49);
        PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v56, 0, v57, v58, v146, v147, v32);
        v59 = v126;
        sub_1E5A2A724();
        v60 = v145;
        sub_1E5A2B394();
        v133 = *(v143 + 8);
        v143 += 8;
        v133(v59, v139);
        v131 = v37;
        v132 = *(v123 + 8);
        v132(v32, v157);
        v166 = v157;
        v167 = v53;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_1E58B41DC();
        v61 = v124;
        v62 = *(v124 + 8);
        v137 = v124 + 8;
        v129 = v62;
        v62(v60, v22);
        v63 = v49;
        sub_1E59B6960(v49);
        v64 = v138;
        v54 = v157;
        v134(v138, 1, 1, v135);
        v65 = sub_1E59B6C5C(v63);
        PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v64, 1, v65, v66, v146, v147, v32);
        sub_1E5A2A724();
        v67 = v131;
        sub_1E5A2B394();
        v133(v59, v139);
        v132(v32, v54);
        v68 = v145;
        v69 = OpaqueTypeConformance2;
        sub_1E58B41DC();
        v70 = v67;
        v71 = v129;
        v129(v67, v22);
        v72 = *(v61 + 16);
        v72(v67, v144, v22);
        v166 = v67;
        v73 = v125;
        v72(v125, v68, v22);
        v167 = v73;
        v165[0] = v22;
        v165[1] = v22;
        v163 = v69;
        v164 = v69;
        v53 = v156;
        sub_1E597DC00(&v166, 2uLL, v165);
        v71(v73, v22);
        v71(v70, v22);
        v74 = v71;
        v75 = v151;
        v76 = swift_getWitnessTable();
        v161 = v54;
        v162 = v53;
        v160 = swift_getOpaqueTypeConformance2();
        v77 = v153;
        v78 = swift_getWitnessTable();
        v79 = v141;
        v80 = v140;
        sub_1E595EBC0(v140, v75, v77, v76, v78);
        v158 = v76;
        v159 = v78;
        v81 = v152;
        v82 = swift_getWitnessTable();
        v83 = v148;
        sub_1E595EBC0(v79, v81, MEMORY[0x1E6981E70], v82, MEMORY[0x1E6981E60]);
        (*(v142 + 8))(v79, v81);
        (*(v127 + 8))(v80, v75);
        v74(v145, v22);
        v74(v144, v22);
        v84 = v83;
LABEL_9:
        v92 = v150;
        v93 = v149;
        goto LABEL_12;
      }
    }

    v88 = swift_getWitnessTable();
    v166 = v54;
    v167 = v53;
    v165[12] = swift_getOpaqueTypeConformance2();
    v89 = swift_getWitnessTable();
    v165[10] = v88;
    v165[11] = v89;
    v90 = v152;
    v91 = swift_getWitnessTable();
    v84 = v148;
    sub_1E595ECB8(v91, v90, MEMORY[0x1E6981E70], v91, MEMORY[0x1E6981E60]);
    goto LABEL_9;
  }

  v85 = v128;
  v86 = OpaqueTypeConformance2;
  v87 = v131;
  if (EnumCaseMultiPayload)
  {
    v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v44, v47);
    v95 = sub_1E5A29E34();
    (*(*(v95 - 8) + 8))(&v44[v94], v95);
  }

  else
  {
    sub_1E594D3DC(v44, v47);
  }

  v96 = v157;
  sub_1E590B0C8();
  sub_1E599AFF0(v47, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  v97 = v85;
  v98 = v51;
  v99 = v85;
  v100 = v49;
  (*(v86 + 16))(v97, v98, v49);
  v101 = v86;
  v102 = (*(v86 + 80) + 48) & ~*(v86 + 80);
  v103 = swift_allocObject();
  v104 = v146;
  *(v103 + 2) = v132;
  *(v103 + 3) = v104;
  v105 = v147;
  *(v103 + 4) = v87;
  *(v103 + 5) = v105;
  (*(v101 + 32))(&v103[v102], v99, v100);
  type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v166 = v96;
  v167 = v156;
  v106 = swift_getOpaqueTypeConformance2();
  sub_1E59C97C0(&qword_1ECFFF270, type metadata accessor for PersonalizedWorkoutPlanCandidate, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidate);
  sub_1E59C97C0(&qword_1ECFFF278, type metadata accessor for PersonalizedWorkoutPlanCandidate, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidate);
  v107 = v134;
  sub_1E5A2B6D4();
  v165[4] = v106;
  v108 = v153;
  v109 = swift_getWitnessTable();
  v110 = v136;
  sub_1E58B41DC();
  v111 = *(v137 + 8);
  v111(v107, v108);
  sub_1E58B41DC();
  v112 = v151;
  v113 = swift_getWitnessTable();
  v114 = v141;
  sub_1E595ECB8(v107, v112, v108, v113, v109);
  v165[2] = v113;
  v165[3] = v109;
  v115 = v152;
  v116 = swift_getWitnessTable();
  v84 = v148;
  sub_1E595EBC0(v114, v115, MEMORY[0x1E6981E70], v116, MEMORY[0x1E6981E60]);
  (*(v142 + 8))(v114, v115);
  v117 = v107;
  v54 = v157;
  v111(v117, v108);
  v118 = v110;
  v53 = v156;
  v111(v118, v108);
  v92 = v150;
  v93 = v149;
LABEL_12:
  v119 = swift_getWitnessTable();
  v166 = v54;
  v167 = v53;
  v165[9] = swift_getOpaqueTypeConformance2();
  v120 = swift_getWitnessTable();
  v165[7] = v119;
  v165[8] = v120;
  v165[5] = swift_getWitnessTable();
  v165[6] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v93 + 8))(v84, v92);
}

uint64_t sub_1E59B8BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v75 = a1;
  v90 = a7;
  v12 = sub_1E5A2BA14();
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29E74();
  v73 = *(v16 - 8);
  v74 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v77 = &v71 - v19;
  v20 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v91 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v85 = &v71 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v71 - v25;
  v28 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(0, a4, a6, v27);
  v84 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - v29;
  WitnessTable = swift_getWitnessTable();
  v76 = v28;
  v92 = v28;
  v93 = WitnessTable;
  v80 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v78 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v79 = &v71 - v34;
  v92 = a3;
  v93 = a4;
  v35 = a4;
  v94 = a5;
  v95 = a6;
  v36 = a6;
  v37 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v92);
  sub_1E59B6960(v37);
  v38 = a2;
  sub_1E599AF88(a2, v26, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v39 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v39 - 8) + 56))(v26, 0, 1, v39);
  v40 = sub_1E59B6C5C(v37);
  v82 = v30;
  v41 = v30;
  v42 = v75;
  PersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v26, v75, v40, v43, v35, v36, v41);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v45 = (v38 + *(v39 + 20));
  v46 = MEMORY[0x1E69E6158];
  v47 = v45[1];
  *(inited + 48) = *v45;
  *(inited + 56) = v47;
  *(inited + 72) = v46;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x70756B636F6CLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v46;
  *(inited + 128) = 0x6973736572706D69;
  v48 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v42;
  *(inited + 168) = v48;
  *(inited + 176) = 0x64496F636572;
  *(inited + 184) = 0xE600000000000000;
  v49 = v77;
  sub_1E58BABA0(v38 + *(v39 + 36), v77, &qword_1ECFFD900, &qword_1E5A39BB0);
  v50 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
  {

    sub_1E58BAD14(v49, &qword_1ECFFD900, &qword_1E5A39BB0);
    v51 = (inited + 192);
    *(inited + 216) = v46;
LABEL_5:
    *v51 = 0;
    v58 = 0xE000000000000000;
    goto LABEL_6;
  }

  v53 = v72;
  v52 = v73;
  v54 = v49 + *(v50 + 20);
  v55 = v74;
  (*(v73 + 16))(v72, v54, v74);

  sub_1E599AFF0(v49, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v56 = sub_1E5A29E44();
  v58 = v57;
  (*(v52 + 8))(v53, v55);
  v51 = (inited + 192);
  *(inited + 216) = v46;
  if (!v58)
  {
    goto LABEL_5;
  }

  *v51 = v56;
LABEL_6:
  *(inited + 200) = v58;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v59);
  v60 = v85;
  sub_1E5A2B9D4();
  v61 = sub_1E5A2B9E4();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v62 = v87;
  sub_1E5A2B9F4();
  v63 = v78;
  v64 = v76;
  v65 = v80;
  v66 = v82;
  sub_1E5A2B014();
  (*(v88 + 8))(v62, v89);
  sub_1E58BAD14(v60, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v84 + 8))(v66, v64);
  v92 = v64;
  v93 = v65;
  swift_getOpaqueTypeConformance2();
  v67 = v79;
  v68 = OpaqueTypeMetadata2;
  sub_1E58B41DC();
  v69 = *(v83 + 8);
  v69(v63, v68);
  sub_1E58B41DC();
  return (v69)(v67, v68);
}

uint64_t sub_1E59B94F0@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a1;
  v37 = a4;
  v33 = a2 + 3;
  v34 = a2 + 5;
  v31 = a2[2];
  v32 = a2[4];
  v4 = type metadata accessor for CustomPlanView(255, v31, v32, a3);
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v30 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v27 = sub_1E5A2AA84();
  v7 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v54 = v6;
  v55 = MEMORY[0x1E69E6158];
  v56 = v27;
  v57 = v7;
  v58 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v28 = sub_1E5A2AA84();
  v29 = sub_1E5A2AA84();
  sub_1E5A2AA84();
  v8 = sub_1E5A2B494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  *&v15 = v31;
  *(&v15 + 1) = *v33;
  *&v16 = v32;
  *(&v16 + 1) = *v34;
  v39 = v16;
  v38 = v15;
  v40 = v36;
  v41 = v35;
  v54 = v4;
  v55 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v4;
  v55 = WitnessTable;
  v18 = swift_getOpaqueTypeConformance2();
  v52 = v18;
  v53 = MEMORY[0x1E6981E60];
  v51 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v49 = v18;
  v50 = v19;
  v20 = swift_getWitnessTable();
  v47 = OpaqueTypeConformance2;
  v48 = v20;
  v21 = swift_getWitnessTable();
  v45 = MEMORY[0x1E6981E60];
  v46 = v18;
  v22 = swift_getWitnessTable();
  v43 = v21;
  v44 = v22;
  v23 = swift_getWitnessTable();
  sub_1E5A2B484();
  v42 = v23;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v24 = *(v9 + 8);
  v24(v11, v8);
  sub_1E58B41DC();
  return (v24)(v14, v8);
}

uint64_t sub_1E59B9988@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v163 = a2;
  v188 = a1;
  v185 = a7;
  v11 = type metadata accessor for CustomPlanView(255, a3, a5, a4);
  WitnessTable = swift_getWitnessTable();
  v250 = v11;
  *&v251 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1E5A2AA84();
  v169 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v151 - v15;
  v170 = a3;
  v171 = a5;
  v250 = a3;
  *&v251 = a4;
  v156 = a4;
  *(&v251 + 1) = a5;
  v252 = a6;
  v164 = a6;
  v16 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v250);
  v162 = *(v16 - 8);
  v155 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v151 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v19 = sub_1E5A2AA84();
  v20 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v250 = v18;
  *&v251 = MEMORY[0x1E69E6158];
  v191 = v19;
  *(&v251 + 1) = v19;
  v252 = v20;
  v253 = MEMORY[0x1E69E6168];
  v21 = sub_1E5A2B6F4();
  v159 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v151 - v24;
  v160 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v172 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v173 = &v151 - v28;
  v180 = OpaqueTypeMetadata2;
  v187 = v29;
  v30 = sub_1E5A2AA84();
  v166 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v165 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v177 = &v151 - v33;
  v192 = v11;
  v250 = v11;
  *&v251 = WitnessTable;
  v190 = WitnessTable;
  v34 = swift_getOpaqueTypeMetadata2();
  v186 = v30;
  v35 = sub_1E5A2AA84();
  v175 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v151 - v36;
  v37 = sub_1E5A2A734();
  v152 = *(v37 - 8);
  v153 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v34;
  v154 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v168 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v167 = &v151 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v151 - v45;
  v47 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v151 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v14;
  v50 = sub_1E5A2AA84();
  v182 = *(v50 - 8);
  v183 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v181 = &v151 - v51;
  v178 = v16;
  sub_1E59B6960(v16);
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = MEMORY[0x1E6981E60];
  v189 = v35;
  if (EnumCaseMultiPayload <= 1)
  {
    v66 = v161;
    v67 = v162;
    v68 = v164;
    v69 = v163;
    if (EnumCaseMultiPayload)
    {
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
      sub_1E594D3DC(v46, v49);
      v103 = sub_1E5A29E34();
      (*(*(v103 - 8) + 8))(&v46[v102], v103);
    }

    else
    {
      sub_1E594D3DC(v46, v49);
    }

    if (*(*&v49[*(v47 + 20)] + 16))
    {
      v104 = v69;

      sub_1E599AFF0(v49, type metadata accessor for PersonalizedWorkoutPlanCandidates);
      v105 = v178;
      (*(v67 + 16))(v66, v188, v178);
      v106 = (*(v67 + 80) + 48) & ~*(v67 + 80);
      v107 = v106 + v155;
      v108 = swift_allocObject();
      v109 = v156;
      *(v108 + 2) = v170;
      *(v108 + 3) = v109;
      *(v108 + 4) = v171;
      *(v108 + 5) = v68;
      (*(v67 + 32))(&v108[v106], v66, v105);
      v108[v107] = v104;
      v188 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
      v110 = v190;
      v250 = v192;
      *&v251 = v190;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v219 = OpaqueTypeConformance2;
      v220 = MEMORY[0x1E6981E60];
      v112 = swift_getWitnessTable();
      sub_1E59C97C0(&qword_1ECFFF280, type metadata accessor for PersonalizedWorkoutPlanCandidateType, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateType);
      sub_1E59C97C0(&qword_1ECFFF288, type metadata accessor for PersonalizedWorkoutPlanCandidateType, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateType);
      v113 = v158;
      sub_1E5A2B6D4();
      v218 = v112;
      v114 = v187;
      v115 = swift_getWitnessTable();
      v116 = v157;
      sub_1E58B41DC();
      v117 = *(v159 + 8);
      v117(v113, v114);
      sub_1E58B41DC();
      sub_1E595ECB8(v113, v180, v114, OpaqueTypeConformance2, v115);
      v117(v113, v114);
      v117(v116, v114);
    }

    else
    {
      sub_1E599AFF0(v49, type metadata accessor for PersonalizedWorkoutPlanCandidates);
      v118 = v172;
      sub_1E59BAE80(0, v178, v172);
      v110 = v190;
      v250 = v192;
      *&v251 = v190;
      v119 = swift_getOpaqueTypeConformance2();
      v120 = v173;
      v121 = v180;
      sub_1E58B41DC();
      v122 = *(v160 + 8);
      v122(v118, v121);
      sub_1E58B41DC();
      v207 = v119;
      v208 = MEMORY[0x1E6981E60];
      v206 = swift_getWitnessTable();
      v123 = v187;
      v124 = swift_getWitnessTable();
      sub_1E595EBC0(v118, v121, v123, v119, v124);
      v122(v118, v121);
      v122(v120, v121);
    }

    v125 = v192;
    v250 = v192;
    *&v251 = v110;
    v126 = swift_getOpaqueTypeConformance2();
    v216 = v126;
    v217 = MEMORY[0x1E6981E60];
    v215 = swift_getWitnessTable();
    v127 = swift_getWitnessTable();
    v213 = v126;
    v214 = v127;
    v128 = v110;
    v129 = v186;
    v130 = swift_getWitnessTable();
    v131 = v165;
    sub_1E58B41DC();
    v250 = v125;
    *&v251 = v128;
    v132 = swift_getOpaqueTypeConformance2();
    v133 = v174;
    sub_1E595ECB8(v131, v179, v129, v132, v130);
    v211 = v132;
    v212 = v130;
    v134 = v129;
    v135 = v189;
    v136 = swift_getWitnessTable();
    v209 = MEMORY[0x1E6981E60];
    v210 = v126;
    v137 = v184;
    v138 = swift_getWitnessTable();
    v65 = v181;
    sub_1E595EBC0(v133, v135, v137, v136, v138);
    (*(v175 + 8))(v133, v135);
    v139 = *(v166 + 8);
    v139(v131, v134);
    v139(v177, v134);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1E58BAD14(v46, &qword_1ECFFE260, &qword_1E5A39370);
    v70 = v172;
    sub_1E59BAE80(0, v178, v172);
    v71 = v192;
    v72 = v190;
    v250 = v192;
    *&v251 = v190;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v180;
    sub_1E58B41DC();
    v188 = *(v160 + 8);
    v188(v70, v74);
    sub_1E58B41DC();
    sub_1E595ECB8(v70, MEMORY[0x1E6981E70], v74, v53, v73);
    v250 = v71;
    *&v251 = v72;
    v75 = swift_getOpaqueTypeConformance2();
    v248 = v73;
    v249 = v53;
    v247 = swift_getWitnessTable();
    v76 = swift_getWitnessTable();
    v245 = v73;
    v246 = v76;
    v77 = swift_getWitnessTable();
    v243 = v75;
    v244 = v77;
    v78 = swift_getWitnessTable();
    v241 = v53;
    v242 = v73;
    v79 = v184;
    v80 = swift_getWitnessTable();
    v65 = v181;
    v81 = v176;
    sub_1E595ECB8(v176, v35, v79, v78, v80);
    (*(v169 + 8))(v81, v79);
    v82 = v188;
    v188(v172, v74);
    v82(v173, v74);
  }

  else
  {
    v54 = v192;
    if (EnumCaseMultiPayload == 3)
    {
      v55 = v190;
      v250 = v192;
      *&v251 = v190;
      v56 = swift_getOpaqueTypeConformance2();
      v57 = v176;
      sub_1E595EBC0(v56, MEMORY[0x1E6981E70], v180, v53, v56);
      v250 = v54;
      *&v251 = v55;
      v58 = swift_getOpaqueTypeConformance2();
      v228 = v56;
      v229 = v53;
      v227 = swift_getWitnessTable();
      v59 = swift_getWitnessTable();
      v225 = v56;
      v226 = v59;
      v60 = swift_getWitnessTable();
      v223 = v58;
      v224 = v60;
      v61 = v189;
      v62 = swift_getWitnessTable();
      v221 = v53;
      v222 = v56;
      v63 = v184;
      v64 = swift_getWitnessTable();
      v65 = v181;
      sub_1E595ECB8(v57, v61, v63, v62, v64);
      (*(v169 + 8))(v57, v63);
    }

    else
    {
      v83 = v178;
      sub_1E59B6960(v178);
      v84 = sub_1E59B6AC4(v83);
      CustomPlanView.init(store:index:actionButtonViewBuilder:)(0, v84, v85, &v250);
      v202 = v250;
      v203 = v251;
      v204 = v252;
      v205 = v253;
      sub_1E5A2A724();
      v86 = swift_checkMetadataState();
      v87 = v168;
      v88 = v190;
      sub_1E5A2B394();
      (*(v152 + 8))(v39, v153);

      v250 = v86;
      *&v251 = v88;
      v89 = swift_getOpaqueTypeConformance2();
      v90 = v179;
      sub_1E58B41DC();
      v188 = *(v154 + 8);
      v188(v87, v90);
      sub_1E58B41DC();
      v250 = v86;
      *&v251 = v88;
      v91 = swift_getOpaqueTypeConformance2();
      v200 = v91;
      v201 = MEMORY[0x1E6981E60];
      v199 = swift_getWitnessTable();
      v92 = swift_getWitnessTable();
      v197 = v91;
      v198 = v92;
      v93 = v186;
      v94 = swift_getWitnessTable();
      v95 = v174;
      sub_1E595EBC0(v87, v90, v93, v89, v94);
      v195 = v89;
      v196 = v94;
      v96 = v189;
      v97 = swift_getWitnessTable();
      v193 = MEMORY[0x1E6981E60];
      v194 = v91;
      v98 = v184;
      v99 = swift_getWitnessTable();
      v65 = v181;
      sub_1E595EBC0(v95, v96, v98, v97, v99);
      (*(v175 + 8))(v95, v96);
      v100 = v179;
      v101 = v188;
      v188(v168, v179);
      v101(v167, v100);
    }
  }

  v140 = v192;
  v141 = v190;
  v250 = v192;
  *&v251 = v190;
  v142 = swift_getOpaqueTypeConformance2();
  v250 = v140;
  *&v251 = v141;
  v143 = swift_getOpaqueTypeConformance2();
  v239 = v143;
  v144 = MEMORY[0x1E6981E60];
  v240 = MEMORY[0x1E6981E60];
  v238 = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  v236 = v143;
  v237 = v145;
  v146 = swift_getWitnessTable();
  v234 = v142;
  v235 = v146;
  v147 = swift_getWitnessTable();
  v232 = v144;
  v233 = v143;
  v148 = swift_getWitnessTable();
  v230 = v147;
  v231 = v148;
  v149 = v183;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v182 + 8))(v65, v149);
}

uint64_t sub_1E59BAE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_1E5A2BA14();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v40 = &v40 - v14;
  v16 = type metadata accessor for CustomPlanView(255, *(a2 + 16), *(a2 + 32), v15);
  WitnessTable = swift_getWitnessTable();
  v43 = v16;
  v58 = v16;
  *&v59 = WitnessTable;
  v46 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v44 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v40 - v20;
  sub_1E59B6960(a2);
  v21 = sub_1E59B6AC4(a2);
  CustomPlanView.init(store:index:actionButtonViewBuilder:)(a1, v21, v22, &v58);
  v54 = v58;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v48 = a1;
  sub_1E5A2B9A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE2D33E0;
  sub_1E59B6960(a2);
  swift_getKeyPath();
  sub_1E5A2B944();

  v25 = sub_1E5A2BB64();
  v26 = MEMORY[0x1E69E6158];
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  *(inited + 72) = v26;
  *(inited + 80) = 0x6973736572706D69;
  v28 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = v48;
  *(inited + 120) = v28;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v26;
  *(inited + 143) = -18;
  *(inited + 144) = 0x70756B636F6CLL;
  *(inited + 152) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v29);
  v30 = v40;
  sub_1E5A2B9D4();
  v31 = sub_1E5A2B9E4();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v50;
  sub_1E5A2B9F4();
  v33 = swift_checkMetadataState();
  v34 = v44;
  v35 = v46;
  sub_1E5A2B014();
  (*(v51 + 8))(v32, v52);
  sub_1E58BAD14(v30, &qword_1ECFFB550, &qword_1E5A304B0);

  v58 = v33;
  *&v59 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v45;
  v37 = OpaqueTypeMetadata2;
  sub_1E58B41DC();
  v38 = *(v47 + 8);
  v38(v34, v37);
  sub_1E58B41DC();
  return (v38)(v36, v37);
}

uint64_t sub_1E59BB590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a8;
  v41 = a3;
  v37 = a5;
  v38 = a6;
  v35 = a4;
  v43 = a2;
  v36 = a1;
  v39 = a7;
  v10 = type metadata accessor for CustomPlanView(255, a5, a7, a4);
  WitnessTable = swift_getWitnessTable();
  v45 = v10;
  v46 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34[-v19];
  v21 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v34[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1E5A2AA84();
  v44 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34[-v25];
  sub_1E599AF88(v43, v23, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  v27 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  if ((*(*(v27 - 8) + 48))(v23, 1, v27) == 1)
  {
    if (v35 == 1)
    {
      v28 = v36;
    }

    else
    {
      v28 = 0;
    }

    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v29 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v45);
    sub_1E59BAE80(v28, v29, v17);
    v45 = v10;
    v46 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E58B41DC();
    v43 = WitnessTable;
    v41 = a9;
    v31 = *(v42 + 8);
    v31(v17, OpaqueTypeMetadata2);
    sub_1E58B41DC();
    sub_1E595EBC0(v14, OpaqueTypeMetadata2, MEMORY[0x1E6981E70], OpaqueTypeConformance2, MEMORY[0x1E6981E60]);
    v31(v14, OpaqueTypeMetadata2);
    v31(v20, OpaqueTypeMetadata2);
    WitnessTable = v43;
  }

  else
  {
    v45 = v10;
    v46 = WitnessTable;
    v32 = swift_getOpaqueTypeConformance2();
    sub_1E595ECB8(v32, OpaqueTypeMetadata2, MEMORY[0x1E6981E70], v32, MEMORY[0x1E6981E60]);
    sub_1E599AFF0(v23, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  }

  v45 = v10;
  v46 = WitnessTable;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v44 + 8))(v26, v24);
}

uint64_t PersonalizedWorkoutPlansView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v97 = *(a1 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v96 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v105 = a1;
  *&v93 = *(a1 + 24);
  *&v94 = *(a1 + 40);
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, v93, v94, v4);
  WitnessTable = swift_getWitnessTable();
  v151 = v5;
  v152 = WitnessTable;
  v102 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v8 = sub_1E5A29E74();
  v151 = v5;
  v152 = WitnessTable;
  v106 = MEMORY[0x1E69E3B40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = MEMORY[0x1E69E6338];
  v10 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v11 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v151 = v7;
  v152 = v8;
  v153 = OpaqueTypeMetadata2;
  v154 = v10;
  v155 = v11;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v12 = sub_1E5A2B494();
  v103 = MEMORY[0x1E6981F48];
  v13 = swift_getWitnessTable();
  v151 = v5;
  v152 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = MEMORY[0x1E69819D0];
  v14 = swift_getWitnessTable();
  v148 = v13;
  v149 = v14;
  v15 = MEMORY[0x1E697F968];
  v146 = swift_getWitnessTable();
  v147 = MEMORY[0x1E6981E60];
  v100 = v15;
  v145 = swift_getWitnessTable();
  v101 = MEMORY[0x1E6981600];
  v16 = swift_getWitnessTable();
  v151 = v12;
  v152 = v16;
  v85 = MEMORY[0x1E697D318];
  v90 = swift_getOpaqueTypeMetadata2();
  v151 = v12;
  v152 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2B734();
  v17 = sub_1E59926B8();
  v89 = MEMORY[0x1E697DA90];
  v18 = swift_getWitnessTable();
  v88 = MEMORY[0x1E697D7B8];
  v19 = swift_getWitnessTable();
  v143 = v18;
  v144 = v19;
  v142 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v139 = v17;
  v140 = v20;
  v141 = MEMORY[0x1E6981E60];
  v86 = MEMORY[0x1E697D6F0];
  swift_getWitnessTable();
  v21 = sub_1E5A2B604();
  v104 = MEMORY[0x1E6981870];
  v22 = swift_getWitnessTable();
  v151 = v21;
  v152 = v22;
  swift_getOpaqueTypeMetadata2();
  v84 = sub_1E5A2BD84();
  v82[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
  v23 = *(v105 + 32);
  v91 = *(v105 + 16);
  v92 = v23;
  v25 = type metadata accessor for CustomPlanView(255, v91, v23, v24);
  v26 = swift_getWitnessTable();
  v151 = v25;
  v152 = v26;
  swift_getOpaqueTypeMetadata2();
  v151 = v25;
  v152 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v28 = sub_1E5A2AA84();
  v29 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v83);
  v151 = v27;
  v152 = MEMORY[0x1E69E6158];
  v153 = v28;
  v154 = v29;
  v155 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v82[0] = sub_1E5A2AA84();
  v83 = sub_1E5A2AA84();
  v30 = sub_1E5A2B494();
  v151 = v25;
  v152 = v26;
  v31 = swift_getOpaqueTypeConformance2();
  v151 = v25;
  v152 = v26;
  v32 = swift_getOpaqueTypeConformance2();
  v137 = v32;
  v33 = MEMORY[0x1E6981E60];
  v138 = MEMORY[0x1E6981E60];
  v136 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v134 = v32;
  v135 = v34;
  v35 = swift_getWitnessTable();
  v132 = v31;
  v133 = v35;
  v36 = swift_getWitnessTable();
  v130 = v33;
  v131 = v32;
  v37 = swift_getWitnessTable();
  v128 = v36;
  v129 = v37;
  v127 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v151 = v30;
  v152 = v38;
  swift_getOpaqueTypeMetadata2();
  v151 = v30;
  v152 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2B734();
  v39 = sub_1E59C8D30();
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v125 = v40;
  v126 = v41;
  v124 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v121 = v39;
  v122 = v42;
  v123 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v43 = sub_1E5A2B604();
  v44 = swift_getWitnessTable();
  v151 = v43;
  v152 = v44;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v106 = sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v45 = sub_1E5A2A474();
  v46 = swift_getWitnessTable();
  v151 = v45;
  v152 = v46;
  swift_getOpaqueTypeMetadata2();
  v151 = v45;
  v152 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = sub_1E5A2A4B4();
  v48 = swift_getWitnessTable();
  v151 = v47;
  v152 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v151 = v47;
  v152 = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v151 = v49;
  v152 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v52 = sub_1E5A2AD04();
  v151 = v49;
  v152 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v151 = v51;
  v152 = v52;
  v54 = MEMORY[0x1E697CC08];
  v153 = v53;
  v154 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  v55 = sub_1E59C8DE8();
  v151 = v51;
  v152 = v52;
  v153 = v53;
  v154 = v54;
  v56 = swift_getOpaqueTypeConformance2();
  v118 = v55;
  v119 = v56;
  v120 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2BD84();
  v87 = sub_1E5A2AA84();
  sub_1E5A2AA84();
  v57 = sub_1E5A2B494();
  v90 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v82 - v58;
  v60 = sub_1E5A2A6C4();
  v102 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v88 = v82 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v89 = v82 - v63;
  *&v64 = v91;
  *&v65 = v92;
  *(&v64 + 1) = v93;
  *(&v65 + 1) = v94;
  v93 = v64;
  v94 = v65;
  v107 = v64;
  v108 = v65;
  v66 = v95;
  v109 = v95;
  v67 = swift_getWitnessTable();
  v117 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  v115 = v67;
  v116 = v68;
  v113 = swift_getWitnessTable();
  v114 = MEMORY[0x1E6981E60];
  v69 = swift_getWitnessTable();
  sub_1E5A2B484();
  v70 = v96;
  v71 = v97;
  v72 = v66;
  v73 = v105;
  (*(v97 + 16))(v96, v72, v105);
  v74 = (*(v71 + 80) + 48) & ~*(v71 + 80);
  v75 = swift_allocObject();
  v76 = v94;
  *(v75 + 16) = v93;
  *(v75 + 32) = v76;
  (*(v71 + 32))(v75 + v74, v70, v73);
  v112 = v69;
  v77 = swift_getWitnessTable();
  v78 = v88;
  sub_1E5A2B364();

  (*(v90 + 8))(v59, v57);
  v110 = v77;
  v111 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v79 = v89;
  sub_1E58B41DC();
  v80 = *(v102 + 8);
  v80(v78, v60);
  sub_1E58B41DC();
  return (v80)(v79, v60);
}

uint64_t sub_1E59BC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v275 = a5;
  v283 = a2;
  v284 = a4;
  v277 = a1;
  v278 = a3;
  v273 = a6;
  v279 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v8);
  WitnessTable = swift_getWitnessTable();
  v329 = v9;
  v330 = WitnessTable;
  v282 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v12 = sub_1E5A29E74();
  v329 = v9;
  v330 = WitnessTable;
  v287 = MEMORY[0x1E69E3B40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v281 = MEMORY[0x1E69E6338];
  v14 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v15 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v329 = v11;
  v330 = v12;
  v331 = OpaqueTypeMetadata2;
  v332 = v14;
  v333 = v15;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v16 = sub_1E5A2B494();
  v276 = MEMORY[0x1E6981F48];
  v17 = swift_getWitnessTable();
  v329 = v9;
  v330 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v271 = MEMORY[0x1E69819D0];
  v18 = swift_getWitnessTable();
  v326 = v17;
  v327 = v18;
  v285 = MEMORY[0x1E697F968];
  v324 = swift_getWitnessTable();
  v325 = MEMORY[0x1E6981E60];
  v323 = swift_getWitnessTable();
  v286 = MEMORY[0x1E6981600];
  v274 = v16;
  v272 = swift_getWitnessTable();
  v329 = v16;
  v330 = v272;
  v280 = MEMORY[0x1E697D318];
  v269 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for CustomPlanView(255, v283, v284, v19);
  v21 = swift_getWitnessTable();
  v329 = v20;
  v330 = v21;
  swift_getOpaqueTypeMetadata2();
  v329 = v20;
  v330 = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v23 = sub_1E5A2AA84();
  v24 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v281);
  v329 = v22;
  v330 = MEMORY[0x1E69E6158];
  v331 = v23;
  v332 = v24;
  v333 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v268 = sub_1E5A2AA84();
  v270 = sub_1E5A2AA84();
  v281 = sub_1E5A2B494();
  v329 = v20;
  v330 = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v329 = v20;
  v330 = v21;
  v26 = swift_getOpaqueTypeConformance2();
  v321 = v26;
  v27 = MEMORY[0x1E6981E60];
  v322 = MEMORY[0x1E6981E60];
  v320 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v318 = v26;
  v319 = v28;
  v29 = swift_getWitnessTable();
  v316 = v25;
  v317 = v29;
  v30 = swift_getWitnessTable();
  v314 = v27;
  v315 = v26;
  v31 = swift_getWitnessTable();
  v312 = v30;
  v313 = v31;
  v311 = swift_getWitnessTable();
  v32 = v281;
  v271 = swift_getWitnessTable();
  v329 = v32;
  v330 = v271;
  v270 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v33 = sub_1E5A2A474();
  v34 = swift_getWitnessTable();
  v329 = v33;
  v330 = v34;
  swift_getOpaqueTypeMetadata2();
  v329 = v33;
  v330 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = sub_1E5A2A4B4();
  v36 = swift_getWitnessTable();
  v329 = v35;
  v330 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v329 = v35;
  v330 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v329 = v37;
  v330 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v40 = sub_1E5A2AD04();
  v329 = v37;
  v330 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v329 = v39;
  v330 = v40;
  v331 = v41;
  v42 = MEMORY[0x1E697CC08];
  v332 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  v43 = sub_1E5A2B734();
  v44 = sub_1E59C8DE8();
  v329 = v39;
  v330 = v40;
  v331 = v41;
  v332 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v308 = v44;
  v309 = v45;
  v310 = MEMORY[0x1E6981E60];
  v268 = MEMORY[0x1E697D6F0];
  v46 = swift_getWitnessTable();
  v233 = v43;
  v230 = v46;
  v47 = sub_1E5A2B604();
  v237 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v232 = &v221 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v231 = &v221 - v50;
  v276 = v51;
  v282 = sub_1E5A2BD84();
  v241 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v238 = &v221 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v263 = &v221 - v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v329 = v274;
  v330 = v272;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v55 = sub_1E5A2B734();
  v56 = sub_1E59926B8();
  v269 = MEMORY[0x1E697DA90];
  v57 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v306 = v57;
  v307 = v58;
  v305 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v302 = v56;
  v303 = v59;
  v304 = MEMORY[0x1E6981E60];
  v228 = swift_getWitnessTable();
  v229 = v55;
  v60 = sub_1E5A2B604();
  v272 = v60;
  v61 = swift_getWitnessTable();
  v329 = v60;
  v267 = v61;
  v330 = v61;
  v274 = swift_getOpaqueTypeMetadata2();
  v279 = sub_1E5A2BD84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
  v329 = v281;
  v330 = v271;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v62 = sub_1E5A2B734();
  v63 = sub_1E59C8D30();
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v300 = v64;
  v301 = v65;
  v299 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v296 = v63;
  v297 = v66;
  v298 = MEMORY[0x1E6981E60];
  v67 = swift_getWitnessTable();
  v240 = v62;
  v246 = v67;
  v68 = sub_1E5A2B604();
  v69 = v277;
  v70 = swift_getWitnessTable();
  v329 = v68;
  v252 = v70;
  v330 = v70;
  v71 = swift_getOpaqueTypeMetadata2();
  v72 = v279;
  swift_getTupleTypeMetadata2();
  v73 = sub_1E5A2B864();
  v74 = sub_1E5A2AA84();
  v270 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v269 = &v221 - v75;
  v285 = v73;
  v254 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v253 = &v221 - v77;
  v239 = sub_1E5A2A684();
  v245 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v244 = &v221 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v243 = &v221 - v80;
  v81 = v275;
  v82 = swift_checkMetadataState();
  v248 = *(v82 - 8);
  v249 = v82;
  MEMORY[0x1EEE9AC00](v82);
  v266 = &v221 - v83;
  v255 = v71;
  v250 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v251 = &v221 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v247 = &v221 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v268 = &v221 - v89;
  v90 = sub_1E5A2BA14();
  v259 = *(v90 - 8);
  v260 = v90;
  MEMORY[0x1EEE9AC00](v90);
  v258 = &v221 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v92 - 8);
  v257 = &v221 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v222);
  v223 = &v221 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v221 - v96;
  v98 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v98 - 8);
  v256 = &v221 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v100 - 8);
  v102 = &v221 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v104 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v104 - 8);
  v264 = &v221 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106);
  v235 = &v221 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v242 = &v221 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110);
  v234 = &v221 - v111;
  v262 = swift_checkMetadataState();
  v226 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v236 = &v221 - v112;
  v113 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v227 = &v221 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116);
  v224 = &v221 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v225 = &v221 - v119;
  v265 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v261 = &v221 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122);
  v271 = &v221 - v123;
  v286 = v74;
  v124 = sub_1E5A2AA84();
  v280 = *(v124 - 8);
  v281 = v124;
  MEMORY[0x1EEE9AC00](v124);
  v272 = &v221 - v125;
  v329 = v283;
  v330 = v278;
  v331 = v284;
  v332 = v81;
  v287 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v329);
  sub_1E59B6960(v287);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (!v295)
  {
    v127 = swift_getWitnessTable();
    v294[35] = swift_getWitnessTable();
    v128 = swift_getWitnessTable();
    v294[33] = v127;
    v294[34] = v128;
    v129 = v286;
    v130 = swift_getWitnessTable();
    v131 = v272;
    sub_1E595ECB8(v130, v129, MEMORY[0x1E6981E70], v130, MEMORY[0x1E6981E60]);
    goto LABEL_24;
  }

  if (v295 == 1)
  {
    if (sub_1E59B72F8(v287))
    {
      v126 = v238;
      (*(v237 + 56))(v238, 1, 1, v276);
      swift_getWitnessTable();
    }

    else
    {
      v147 = sub_1E5A2AA34();
      MEMORY[0x1EEE9AC00](v147);
      v148 = v278;
      *(&v221 - 6) = v283;
      *(&v221 - 5) = v148;
      *(&v221 - 4) = v284;
      *(&v221 - 3) = v81;
      *(&v221 - 2) = v69;
      v149 = v232;
      sub_1E5A2B5F4();
      v150 = v276;
      swift_getWitnessTable();
      v151 = v231;
      sub_1E58B41DC();
      v152 = v237;
      v153 = *(v237 + 8);
      v153(v149, v150);
      sub_1E58B41DC();
      v153(v151, v150);
      v126 = v238;
      (*(v152 + 32))(v238, v149, v150);
      (*(v152 + 56))(v126, 0, 1, v150);
    }

    v154 = v282;
    sub_1E598D20C(v126, v263);
    v155 = v241[1];
    v155(v126, v154);
    v294[27] = swift_getWitnessTable();
    v156 = swift_getWitnessTable();
    sub_1E58B41DC();
    v157 = v285;
    v158 = v126;
    v159 = swift_getWitnessTable();
    v160 = v269;
    sub_1E595ECB8(v158, v157, v154, v159, v156);
    v294[25] = v159;
    v294[26] = v156;
    v161 = v286;
    v162 = swift_getWitnessTable();
    v163 = v272;
    sub_1E595EBC0(v160, v161, MEMORY[0x1E6981E70], v162, MEMORY[0x1E6981E60]);
    (*(v270 + 8))(v160, v161);
    v155(v158, v154);
    v155(v263, v154);
    v131 = v163;
    goto LABEL_24;
  }

  v241 = v113;
  v132 = sub_1E59B6F80(v287);
  v263 = v102;
  if (v132)
  {
    v133 = sub_1E5A2AA34();
    MEMORY[0x1EEE9AC00](v133);
    v134 = v278;
    *(&v221 - 6) = v283;
    *(&v221 - 5) = v134;
    *(&v221 - 4) = v284;
    *(&v221 - 3) = v81;
    *(&v221 - 2) = v69;
    swift_checkMetadataState();
    sub_1E5A2B5F4();
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A303B0;
    *(inited + 32) = 1701667182;
    v238 = (inited + 32);
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v136 = qword_1EE2D33E0;
    v137 = v287;
    sub_1E59B6960(v287);
    swift_getKeyPath();
    sub_1E5A2B944();

    *(inited + 48) = sub_1E5A2BB64();
    *(inited + 56) = v138;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = 0x6973736572706D69;
    *(inited + 88) = 0xEF7865646E496E6FLL;
    sub_1E59B6960(v137);
    swift_getKeyPath();
    sub_1E5A2B944();

    v139 = v223;
    sub_1E58D5C24(v97, v223);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v166 = 0;
      v165 = v279;
      v141 = v267;
      v142 = v274;
      v143 = v234;
    }

    else
    {
      v141 = v267;
      v142 = v274;
      v143 = v234;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1E58BAD14(v139, &qword_1ECFFC100, &qword_1E5A2FE90);
          v166 = 0;
          v165 = v279;
          goto LABEL_20;
        }

        v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
        v145 = *v139;
        v146 = sub_1E5A29E34();
        (*(*(v146 - 8) + 8))(&v139[v144], v146);
      }

      else
      {
        v145 = *v139;
      }

      v166 = v145;
      v165 = v279;
    }

LABEL_20:
    *(inited + 96) = v166;
    *(inited + 120) = MEMORY[0x1E69E6530];
    strcpy((inited + 128), "impressionType");
    *(inited + 168) = MEMORY[0x1E69E6158];
    *(inited + 143) = -18;
    *(inited + 144) = 0x666C656873;
    *(inited + 152) = 0xE500000000000000;
    sub_1E590DF48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
    swift_arrayDestroy();
    sub_1E5A2B984();
    v167 = MEMORY[0x1E69E7CC0];
    sub_1E590DF48(MEMORY[0x1E69E7CC0]);
    sub_1E590DF48(v167);
    sub_1E5A2B9D4();
    v168 = sub_1E5A2B9E4();
    (*(*(v168 - 8) + 56))(v143, 0, 1, v168);
    v169 = v258;
    sub_1E5A2BA04();
    v170 = v224;
    v171 = v262;
    v172 = v236;
    sub_1E5A2B014();
    (*(v259 + 8))(v169, v260);
    sub_1E58BAD14(v143, &qword_1ECFFB550, &qword_1E5A304B0);
    (*(v226 + 8))(v172, v171);
    v329 = v171;
    v330 = v141;
    swift_getOpaqueTypeConformance2();
    v173 = v225;
    sub_1E58B41DC();
    v174 = v241;
    v175 = v241[1];
    v175(v170, v142);
    v176 = v227;
    sub_1E58B41DC();
    v175(v173, v142);
    v164 = v261;
    (v174[4])(v261, v176, v142);
    (v174[7])(v164, 0, 1, v142);
    goto LABEL_21;
  }

  v164 = v261;
  (v241[7])(v261, 1, 1, v274);
  v329 = v262;
  v330 = v267;
  swift_getOpaqueTypeConformance2();
  v165 = v279;
LABEL_21:
  v177 = v239;
  sub_1E598D20C(v164, v271);
  v178 = *(v265 + 8);
  v274 = v265 + 8;
  v241 = v178;
  (v178)(v164, v165);
  v179 = sub_1E5A2AA34();
  MEMORY[0x1EEE9AC00](v179);
  v181 = v277;
  v180 = v278;
  *(&v221 - 6) = v283;
  *(&v221 - 5) = v180;
  v182 = v275;
  *(&v221 - 4) = v284;
  *(&v221 - 3) = v182;
  *(&v221 - 2) = v181;
  swift_checkMetadataState();
  sub_1E5A2B5F4();
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  v183 = swift_initStackObject();
  *(v183 + 16) = xmmword_1E5A303B0;
  *(v183 + 32) = 1701667182;
  *(v183 + 40) = 0xE400000000000000;
  v184 = v243;
  sub_1E58CD1AC(v243);
  v186 = v244;
  v185 = v245;
  (*(v245 + 104))(v244, *MEMORY[0x1E697E6C0], v177);
  sub_1E5A2A674();
  v187 = *(v185 + 8);
  v187(v186, v177);
  v187(v184, v177);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v188 = qword_1EE2D33E0;
  sub_1E59B6960(v287);
  swift_getKeyPath();
  sub_1E5A2B944();

  *(v183 + 48) = sub_1E5A2BB64();
  *(v183 + 56) = v189;
  v190 = MEMORY[0x1E69E6158];
  *(v183 + 72) = MEMORY[0x1E69E6158];
  *(v183 + 80) = 0x6973736572706D69;
  *(v183 + 88) = 0xEF7865646E496E6FLL;
  *(v183 + 96) = 0;
  *(v183 + 120) = MEMORY[0x1E69E6530];
  strcpy((v183 + 128), "impressionType");
  *(v183 + 168) = v190;
  *(v183 + 143) = -18;
  *(v183 + 144) = 0x666C656873;
  *(v183 + 152) = 0xE500000000000000;
  sub_1E590DF48(v183);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v191 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v191);
  v192 = v242;
  sub_1E5A2B9D4();
  v193 = sub_1E5A2B9E4();
  (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
  v194 = v258;
  sub_1E5A2B9F4();
  v195 = v247;
  v196 = v249;
  v197 = v252;
  v198 = v266;
  sub_1E5A2B014();
  (*(v259 + 8))(v194, v260);
  sub_1E58BAD14(v192, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v248 + 8))(v198, v196);
  v329 = v196;
  v330 = v197;
  v199 = swift_getOpaqueTypeConformance2();
  v200 = v268;
  v201 = v255;
  sub_1E58B41DC();
  v202 = v250;
  v203 = *(v250 + 8);
  v284 = v250 + 8;
  v287 = v203;
  v203(v195, v201);
  v204 = v261;
  v205 = v279;
  (*(v265 + 16))(v261, v271, v279);
  v329 = v204;
  v206 = v251;
  (*(v202 + 16))(v251, v200, v201);
  v330 = v206;
  v294[0] = v205;
  v294[1] = v201;
  v292 = v262;
  v293 = v267;
  v291 = swift_getOpaqueTypeConformance2();
  v292 = swift_getWitnessTable();
  v293 = v199;
  v207 = v253;
  sub_1E597DC00(&v329, 2uLL, v294);
  v287(v206, v201);
  (v241)(v204, v205);
  v208 = v285;
  v209 = swift_getWitnessTable();
  v290 = swift_getWitnessTable();
  v210 = v282;
  v211 = swift_getWitnessTable();
  v212 = v269;
  sub_1E595EBC0(v207, v208, v210, v209, v211);
  v288 = v209;
  v289 = v211;
  v213 = v286;
  v214 = swift_getWitnessTable();
  v215 = v272;
  sub_1E595EBC0(v212, v213, MEMORY[0x1E6981E70], v214, MEMORY[0x1E6981E60]);
  (*(v270 + 8))(v212, v213);
  (*(v254 + 8))(v207, v208);
  v287(v268, v201);
  v131 = v215;
  (v241)(v271, v279);
LABEL_24:
  v216 = MEMORY[0x1E6981E60];
  v217 = swift_getWitnessTable();
  v294[32] = swift_getWitnessTable();
  v218 = swift_getWitnessTable();
  v294[30] = v217;
  v294[31] = v218;
  v294[28] = swift_getWitnessTable();
  v294[29] = v216;
  v219 = v281;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v280 + 8))(v131, v219);
}

uint64_t sub_1E59BEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v28 = a5;
  v30 = a1;
  v31 = a4;
  v29 = a2;
  v32 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  v35[22] = swift_getOpaqueTypeMetadata2();
  v35[23] = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v35[24] = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v9 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v35[19] = swift_getOpaqueTypeConformance2();
  v35[17] = WitnessTable;
  v35[18] = swift_getWitnessTable();
  v26[2] = MEMORY[0x1E697F968];
  v35[15] = swift_getWitnessTable();
  v35[16] = MEMORY[0x1E6981E60];
  v35[14] = swift_getWitnessTable();
  v26[1] = MEMORY[0x1E6981600];
  v11 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v35[20] = v9;
  v35[21] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  v12 = sub_1E5A2B494();
  v13 = sub_1E5A2B734();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  v35[2] = v29;
  v35[3] = v27;
  v35[4] = v31;
  v35[5] = v28;
  v35[6] = v30;
  v34[2] = v29;
  v34[3] = v27;
  v34[4] = v31;
  v34[5] = v28;
  v34[6] = v30;
  v20 = sub_1E59926B8();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v35[12] = v21;
  v35[13] = v22;
  v35[11] = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  sub_1E59B66BC(sub_1E59C9270, v35, sub_1E59C9288, v34, v33, v12, v20, v23);
  v35[8] = v20;
  v35[9] = v23;
  v35[10] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v24 = *(v14 + 8);
  v24(v16, v13);
  sub_1E58B41DC();
  return (v24)(v19, v13);
}

uint64_t sub_1E59BF4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v26 = a4;
  v24 = a2;
  v25 = a1;
  v27 = a6;
  type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v46 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v7 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = WitnessTable;
  v40 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x1E6981E60];
  v36 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v42 = v7;
  v43 = v9;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v28 = v24;
  v29 = a3;
  v30 = v26;
  v31 = v23;
  v32 = v25;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v34 = v17;
  v35 = v18;
  v19 = swift_getWitnessTable();
  sub_1E5A2B484();
  v33 = v19;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1E58B41DC();
  return (v20)(v16, v10);
}

uint64_t sub_1E59BF9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a4;
  v83 = a5;
  v80 = a2;
  v81 = a3;
  v78 = a1;
  v79 = a6;
  v73 = sub_1E5A2B764();
  v71 = *(v73 - 1);
  MEMORY[0x1EEE9AC00](v73);
  v72 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v11);
  WitnessTable = swift_getWitnessTable();
  v92 = v12;
  v93 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v15 = sub_1E5A29E74();
  v92 = v12;
  v93 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v18 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v92 = v14;
  v93 = v15;
  v94 = OpaqueTypeMetadata2;
  v95 = v17;
  v96 = v18;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v19 = sub_1E5A2B494();
  v20 = swift_getWitnessTable();
  v92 = v12;
  v93 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = swift_getWitnessTable();
  v89 = v20;
  v90 = v21;
  v87 = swift_getWitnessTable();
  v88 = MEMORY[0x1E6981E60];
  v86 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = sub_1E5A2B854();
  v68 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v64 - v26;
  v27 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v74 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v19;
  v93 = v22;
  v29 = swift_getOpaqueTypeMetadata2();
  v69 = v19;
  v92 = v19;
  v93 = v22;
  swift_getOpaqueTypeConformance2();
  v64 = v29;
  v30 = sub_1E5A2A494();
  v65 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v36 = sub_1E5A2AA84();
  v76 = *(v36 - 8);
  v77 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v75 = &v64 - v37;
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v38 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v92);
  v39 = v78;
  sub_1E59B6960(v38);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v92 > 1u)
  {
    v49 = v72;
    *v72 = xmmword_1E5A3EA30;
    (*(v71 + 104))(v49, *MEMORY[0x1E697D748], v73);
    sub_1E59B6F18(v38);
    v50 = v70;
    sub_1E5A2B784();
    v51 = sub_1E59B6D30(v38);
    v73 = sub_1E59E9100(v50, v51);
    sub_1E5A2AA34();
    sub_1E59B6F18(v38);
    MEMORY[0x1EEE9AC00](v52);
    v53 = v81;
    *(&v64 - 6) = v80;
    *(&v64 - 5) = v53;
    v54 = v83;
    *(&v64 - 4) = v82;
    *(&v64 - 3) = v54;
    sub_1E59B68E0();
    v63 = v22;
    v55 = v67;
    sub_1E5A2B844();
    v56 = swift_getWitnessTable();
    v57 = v66;
    sub_1E58B41DC();
    v44 = *(v68 + 8);
    v44(v55, v23);
    sub_1E58B41DC();
    v58 = swift_getWitnessTable();
    v46 = v75;
    sub_1E595ECB8(v55, v30, v23, v58, v56);
    v44(v55, v23);
    v47 = v57;
    v48 = v23;
  }

  else
  {
    sub_1E5A2AA34();
    sub_1E59B6F18(v38);
    v73 = &v64;
    MEMORY[0x1EEE9AC00](v40);
    v41 = v81;
    *(&v64 - 6) = v80;
    *(&v64 - 5) = v41;
    v42 = v83;
    *(&v64 - 4) = v82;
    *(&v64 - 3) = v42;
    v63 = v39;
    sub_1E59B68E0();
    sub_1E5A2A484();
    v43 = swift_getWitnessTable();
    sub_1E58B41DC();
    v44 = *(v65 + 8);
    v44(v32, v30);
    sub_1E58B41DC();
    v45 = swift_getWitnessTable();
    v46 = v75;
    sub_1E595EBC0(v32, v30, v23, v43, v45);
    v44(v32, v30);
    v47 = v35;
    v48 = v30;
  }

  v44(v47, v48);
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v84 = v59;
  v85 = v60;
  v61 = v77;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v76 + 8))(v46, v61);
}

uint64_t sub_1E59C046C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a4;
  v34 = a1;
  v35 = a3;
  v36 = a5;
  v5 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a2, a4, a3);
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v44 = sub_1E5A29E74();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v47 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v7 = sub_1E5A2B494();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = swift_getWitnessTable();
  v43 = v5;
  v44 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = swift_getWitnessTable();
  v40 = v10;
  v41 = v11;
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x1E6981E60];
  v37 = swift_getWitnessTable();
  v12 = v7;
  v13 = swift_getWitnessTable();
  v43 = v7;
  v44 = v13;
  v29 = v13;
  v30 = MEMORY[0x1E697D318];
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v43 = v34;
  v44 = v32;
  OpaqueTypeMetadata2 = v35;
  v46 = v33;
  v21 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v43);
  sub_1E59B7484(v21, v9, v22);
  sub_1E5A2AD64();
  sub_1E59B6D30(v21);
  sub_1E59B6E58(v21);
  sub_1E59B6F18(v21);
  sub_1E5A2B7F4();
  v23 = v29;
  v24 = v28;
  sub_1E5A2B274();
  (*(v31 + 8))(v24, v12);
  v43 = v12;
  v44 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_1E58B41DC();
  return (v25)(v20, v14);
}

uint64_t sub_1E59C096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v27 = a4;
  v28 = a1;
  v29 = a6;
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, a4);
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v9 = sub_1E5A29E74();
  v23 = MEMORY[0x1E69E3B40];
  v36 = v8;
  v37 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v40 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v36 = v26;
  v37 = a3;
  OpaqueTypeMetadata2 = v27;
  v39 = v25;
  v17 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v36);
  sub_1E59B7484(v17, v13, v18);
  v19 = swift_getWitnessTable();
  v36 = v7;
  v37 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v33 = v19;
  v34 = v20;
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x1E6981E60];
  v30 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1E58B41DC();
  return (v21)(v16, v10);
}

__n128 sub_1E59C0D2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v19 = 0;
  sub_1E59C0E98(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_1E58BABA0(__dst, v16, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v21, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v18[7], __dst, 0x120uLL);
  LOBYTE(a5) = v19;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *a6 = v12;
  *(a6 + 8) = 0x4014000000000000;
  *(a6 + 16) = a5;
  memcpy((a6 + 17), v18, 0x127uLL);
  v13 = __src[5];
  *(a6 + 376) = __src[4];
  *(a6 + 392) = v13;
  *(a6 + 408) = __src[6];
  v14 = __src[1];
  *(a6 + 312) = __src[0];
  *(a6 + 328) = v14;
  result = __src[3];
  *(a6 + 344) = __src[2];
  *(a6 + 360) = result;
  return result;
}

uint64_t sub_1E59C0E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a6;
  v64 = sub_1E5A2AEB4();
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE2D33E0;
  v104 = a2;
  v105 = a3;
  v106 = a4;
  v107 = a5;
  v59 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v104);
  sub_1E59B6960(v59);
  swift_getKeyPath();
  v54[3] = v15;
  sub_1E5A2B944();

  v54[2] = v18;
  v20 = sub_1E5A2AF64();
  v22 = v21;
  v24 = v23;
  sub_1E5A2AE84();
  sub_1E5A2AE24();
  v54[1] = a1;

  v58 = *MEMORY[0x1E6980EA8];
  v25 = v11;
  v26 = *(v11 + 104);
  v56 = v11 + 104;
  v57 = v26;
  v27 = v62;
  v28 = v64;
  v26(v62);
  sub_1E5A2AEE4();

  v55 = *(v25 + 8);
  v55(v27, v28);
  v60 = sub_1E5A2AFA4();
  v61 = v29;
  v66 = v30;
  v32 = v31;

  sub_1E58B3C9C(v20, v22, v24 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v65 = v32 & 1;
  v125 = v32 & 1;
  sub_1E5A2BA84();
  v33 = qword_1EE2D33E0;
  sub_1E59B6960(v59);
  swift_getKeyPath();
  sub_1E5A2B944();

  v34 = sub_1E5A2AF64();
  v36 = v35;
  v38 = v37;
  sub_1E5A2AE04();
  v39 = v64;
  v57(v27, v58, v64);
  sub_1E5A2AEE4();

  v55(v27, v39);
  v40 = sub_1E5A2AFA4();
  v42 = v41;
  LOBYTE(v39) = v43;

  sub_1E58B3C9C(v34, v36, v38 & 1);

  LODWORD(v104) = sub_1E5A2ABA4();
  v44 = sub_1E5A2AF84();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1E58B3C9C(v40, v42, v39 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v48 &= 1u;
  v51 = v60;
  v52 = v61;
  *&v75 = v60;
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v65;
  *(&v76 + 1) = *v124;
  DWORD1(v76) = *&v124[3];
  *(&v76 + 1) = v61;
  v81 = v121;
  v82 = v122;
  v83 = v123;
  v77 = v117;
  v78 = v118;
  v79 = v119;
  v80 = v120;
  v67[6] = v121;
  v67[7] = v122;
  v67[2] = v117;
  v67[3] = v118;
  v67[4] = v119;
  v67[5] = v120;
  v67[0] = v75;
  v67[1] = v76;
  *&v84 = v44;
  *(&v84 + 1) = v46;
  LOBYTE(v85) = v48;
  *(&v85 + 1) = *v115;
  DWORD1(v85) = *&v115[3];
  *(&v85 + 1) = v50;
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v86 = v68;
  v87 = v69;
  v88 = v70;
  v89 = v71;
  v67[12] = v69;
  v67[13] = v70;
  v67[10] = v85;
  v67[11] = v68;
  v67[14] = v71;
  v67[15] = v72;
  v67[16] = v73;
  v67[17] = v74;
  v116 = v48;
  v67[8] = v123;
  v67[9] = v84;
  memcpy(v63, v67, 0x120uLL);
  v93[0] = v44;
  v93[1] = v46;
  v94 = v48;
  *v95 = *v115;
  *&v95[3] = *&v115[3];
  v96 = v50;
  v101 = v72;
  v102 = v73;
  v103 = v74;
  v97 = v68;
  v98 = v69;
  v99 = v70;
  v100 = v71;
  sub_1E58BABA0(&v75, &v104, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BABA0(&v84, &v104, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BAD14(v93, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v104 = v51;
  v105 = v66;
  LOBYTE(v106) = v65;
  *(&v106 + 1) = *v124;
  HIDWORD(v106) = *&v124[3];
  v107 = v52;
  v112 = v121;
  v113 = v122;
  v114 = v123;
  v108 = v117;
  v109 = v118;
  v110 = v119;
  v111 = v120;
  return sub_1E58BAD14(&v104, &qword_1ECFFB4F8, &unk_1E5A2C940);
}

uint64_t sub_1E59C15DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a1;
  v32 = a5;
  v29 = a4;
  v30 = a3;
  v28 = a2;
  v33 = a6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
  type metadata accessor for CustomPlanView(255, a2, a4, v8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v27[0] = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v41 = sub_1E5A2AA84();
  v42 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v43 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v9 = sub_1E5A2B494();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = swift_getOpaqueTypeConformance2();
  v38 = MEMORY[0x1E6981E60];
  v27[2] = MEMORY[0x1E697F968];
  v36[23] = swift_getWitnessTable();
  v36[21] = v37;
  v36[22] = swift_getWitnessTable();
  v36[19] = OpaqueTypeConformance2;
  v36[20] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v36[17] = MEMORY[0x1E6981E60];
  v36[18] = v37;
  v36[15] = WitnessTable;
  v36[16] = swift_getWitnessTable();
  v36[14] = swift_getWitnessTable();
  v27[1] = MEMORY[0x1E6981600];
  v12 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v39 = v9;
  v40 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  v13 = sub_1E5A2B494();
  v14 = sub_1E5A2B734();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - v19;
  v36[2] = v28;
  v36[3] = v30;
  v36[4] = v29;
  v36[5] = v32;
  v36[6] = v31;
  v35[2] = v28;
  v35[3] = v30;
  v35[4] = v29;
  v35[5] = v32;
  v35[6] = v31;
  v21 = sub_1E59C8D30();
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v36[12] = v22;
  v36[13] = v23;
  v36[11] = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  sub_1E59B66BC(sub_1E59C9644, v36, sub_1E59C965C, v35, v34, v13, v21, v24);
  v36[8] = v21;
  v36[9] = v24;
  v36[10] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_1E58B41DC();
  return (v25)(v20, v14);
}

uint64_t sub_1E59C1B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v25 = a4;
  v26 = a3;
  v24 = a2;
  v27 = a1;
  v29 = a6;
  type metadata accessor for CustomPlanView(255, a2, a4, a4);
  swift_getWitnessTable();
  v23[1] = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v52 = sub_1E5A2AA84();
  v53 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v54 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v23[0] = sub_1E5A2AA84();
  v6 = sub_1E5A2B494();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x1E6981E60];
  v48 = v8;
  v49 = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  v45 = v8;
  v46 = swift_getWitnessTable();
  v43 = OpaqueTypeConformance2;
  v44 = swift_getWitnessTable();
  v41 = v9;
  v42 = v8;
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v50 = v6;
  v51 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  v11 = sub_1E5A2B494();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v30 = v24;
  v31 = v26;
  v32 = v25;
  v33 = v28;
  v34 = v27;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v36 = v18;
  v37 = v19;
  v20 = swift_getWitnessTable();
  sub_1E5A2B484();
  v35 = v20;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_1E58B41DC();
  return (v21)(v17, v11);
}

uint64_t sub_1E59C20E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a4;
  v84 = a5;
  v82 = a3;
  v81 = a2;
  v79 = a1;
  v80 = a6;
  v75 = sub_1E5A2B764();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustomPlanView(255, a2, a4, v11);
  WitnessTable = swift_getWitnessTable();
  v99 = v12;
  v100 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v99 = v12;
  v100 = WitnessTable;
  v78 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v15 = sub_1E5A2AA84();
  v16 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v99 = v14;
  v100 = MEMORY[0x1E69E6158];
  v101 = v15;
  v102 = v16;
  v103 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v17 = sub_1E5A2B494();
  v99 = v12;
  v100 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = v12;
  v100 = WitnessTable;
  v19 = swift_getOpaqueTypeConformance2();
  v97 = v19;
  v98 = MEMORY[0x1E6981E60];
  v96 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v94 = v19;
  v95 = v20;
  v21 = swift_getWitnessTable();
  v92 = OpaqueTypeConformance2;
  v93 = v21;
  v22 = swift_getWitnessTable();
  v90 = MEMORY[0x1E6981E60];
  v91 = v19;
  v23 = swift_getWitnessTable();
  v88 = v22;
  v89 = v23;
  v87 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = sub_1E5A2B854();
  v70 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v69 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v65 - v28;
  v29 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v76 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v17;
  v100 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = v17;
  v99 = v17;
  v100 = v24;
  v67 = v24;
  swift_getOpaqueTypeConformance2();
  v65 = OpaqueTypeMetadata2;
  v32 = sub_1E5A2A494();
  v66 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v65 - v36;
  v38 = sub_1E5A2AA84();
  v78 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v77 = &v65 - v39;
  v99 = v81;
  v100 = v82;
  v101 = v83;
  v102 = v84;
  v40 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v99);
  v41 = v79;
  sub_1E59B6960(v40);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v99 > 1u)
  {
    v49 = v74;
    *v74 = xmmword_1E5A3EA30;
    (*(v73 + 104))(v49, *MEMORY[0x1E697D748], v75);
    sub_1E59B6F18(v40);
    v50 = v72;
    sub_1E5A2B784();
    v51 = sub_1E59B6D30(v40);
    v75 = sub_1E59E9100(v50, v51);
    sub_1E5A2AA34();
    sub_1E59B6F18(v40);
    MEMORY[0x1EEE9AC00](v52);
    v53 = v82;
    *(&v65 - 6) = v81;
    *(&v65 - 5) = v53;
    v54 = v84;
    *(&v65 - 4) = v83;
    *(&v65 - 3) = v54;
    v55 = v67;
    sub_1E59B68E0();
    v64 = v55;
    v56 = v69;
    sub_1E5A2B844();
    v57 = swift_getWitnessTable();
    v58 = v68;
    sub_1E58B41DC();
    v59 = *(v70 + 8);
    v59(v56, v25);
    sub_1E58B41DC();
    v60 = swift_getWitnessTable();
    v48 = v77;
    sub_1E595ECB8(v56, v32, v25, v60, v57);
    v59(v56, v25);
    v59(v58, v25);
  }

  else
  {
    sub_1E5A2AA34();
    v75 = v38;
    sub_1E59B6F18(v40);
    v74 = &v65;
    MEMORY[0x1EEE9AC00](v42);
    v43 = v82;
    *(&v65 - 6) = v81;
    *(&v65 - 5) = v43;
    v44 = v84;
    *(&v65 - 4) = v83;
    *(&v65 - 3) = v44;
    v64 = v41;
    sub_1E59B68E0();
    sub_1E5A2A484();
    v45 = swift_getWitnessTable();
    sub_1E58B41DC();
    v46 = *(v66 + 8);
    v46(v34, v32);
    sub_1E58B41DC();
    v47 = swift_getWitnessTable();
    v48 = v77;
    sub_1E595EBC0(v34, v32, v25, v45, v47);
    v46(v34, v32);
    v46(v37, v32);
    v38 = v75;
  }

  v61 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v85 = v61;
  v86 = v62;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v78 + 8))(v48, v38);
}

uint64_t sub_1E59C2C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v40 = a4;
  v41 = a3;
  v39 = a2;
  v43 = a1;
  v44 = a6;
  v6 = type metadata accessor for CustomPlanView(255, a2, a4, a4);
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v9 = sub_1E5A2AA84();
  v10 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v57 = v8;
  v58 = MEMORY[0x1E69E6158];
  v59 = v9;
  v60 = v10;
  v61 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v35 = sub_1E5A2AA84();
  v11 = sub_1E5A2B494();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v33 - v12;
  v57 = v6;
  v58 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v6;
  v58 = WitnessTable;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = MEMORY[0x1E6981E60];
  v55 = v14;
  v56 = MEMORY[0x1E6981E60];
  v54 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v52 = v14;
  v53 = v16;
  v17 = swift_getWitnessTable();
  v50 = OpaqueTypeConformance2;
  v51 = v17;
  v18 = swift_getWitnessTable();
  v48 = v15;
  v49 = v14;
  v19 = swift_getWitnessTable();
  v46 = v18;
  v47 = v19;
  v45 = swift_getWitnessTable();
  v34 = v11;
  v33 = swift_getWitnessTable();
  v57 = v11;
  v58 = v33;
  v35 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  v57 = v39;
  v58 = v41;
  v59 = v40;
  v60 = v42;
  v26 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v57);
  sub_1E59B6960(v26);
  swift_getKeyPath();
  sub_1E5A2B944();

  v27 = v37;
  sub_1E59B94F0(v57, v26, v28, v37);
  sub_1E5A2AD64();
  sub_1E59B6D30(v26);
  sub_1E59B6E58(v26);
  sub_1E59B6F18(v26);
  sub_1E5A2B7F4();
  v29 = v34;
  v30 = v33;
  sub_1E5A2B274();
  (*(v38 + 8))(v27, v29);
  v57 = v29;
  v58 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v31 = *(v36 + 8);
  v31(v22, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v31)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_1E59C320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v30 = a4;
  v35 = a3;
  v38 = a1;
  v42 = a6;
  v7 = type metadata accessor for CustomPlanView(255, a2, a4, a4);
  WitnessTable = swift_getWitnessTable();
  v41 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  v39 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v32 = sub_1E5A2AA84();
  v10 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v55 = v9;
  v56 = MEMORY[0x1E69E6158];
  v57 = v32;
  v58 = v10;
  v59 = MEMORY[0x1E69E6168];
  v31 = sub_1E5A2B6F4();
  v34 = sub_1E5A2AA84();
  v33 = sub_1E5A2AA84();
  v37 = sub_1E5A2AA84();
  v40 = sub_1E5A2AA84();
  v11 = sub_1E5A2B494();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v55 = a2;
  v56 = v35;
  v57 = v30;
  v58 = v36;
  v18 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v55);
  sub_1E59B6960(v18);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E59B94F0(v55, v18, v19, v14);
  v55 = v7;
  v56 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v7;
  v56 = WitnessTable;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x1E6981E60];
  v53 = v21;
  v54 = MEMORY[0x1E6981E60];
  v52 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v50 = v21;
  v51 = v23;
  v24 = swift_getWitnessTable();
  v48 = OpaqueTypeConformance2;
  v49 = v24;
  v25 = swift_getWitnessTable();
  v46 = v22;
  v47 = v21;
  v26 = swift_getWitnessTable();
  v44 = v25;
  v45 = v26;
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v27 = *(v12 + 8);
  v27(v14, v11);
  sub_1E58B41DC();
  return (v27)(v17, v11);
}

double sub_1E59C3688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v20 = 0;
  sub_1E59C3834(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, 0x15AuLL);
  memcpy(v23, __src, 0x15AuLL);
  sub_1E58BABA0(__dst, v17, &qword_1ECFFF900, &qword_1E5A3EC18);
  sub_1E58BAD14(v23, &qword_1ECFFF900, &qword_1E5A3EC18);
  memcpy(&v19[7], __dst, 0x15AuLL);
  LOBYTE(a5) = v20;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v21[54] = __src[3];
  *&v21[70] = __src[4];
  *&v21[86] = __src[5];
  *&v21[102] = __src[6];
  *&v21[6] = __src[0];
  *&v21[22] = __src[1];
  *&v21[38] = __src[2];
  *a6 = v12;
  *(a6 + 8) = 0x4014000000000000;
  *(a6 + 16) = a5;
  memcpy((a6 + 17), v19, 0x161uLL);
  v13 = *&v21[80];
  *(a6 + 434) = *&v21[64];
  *(a6 + 450) = v13;
  *(a6 + 466) = *&v21[96];
  *(a6 + 480) = *&v21[110];
  v14 = *&v21[16];
  *(a6 + 370) = *v21;
  *(a6 + 386) = v14;
  result = *&v21[32];
  v16 = *&v21[48];
  *(a6 + 402) = *&v21[32];
  *(a6 + 418) = v16;
  return result;
}

void *sub_1E59C3834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v51 = a6;
  v11 = sub_1E5A2AEB4();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v47 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44[1] = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A2A684();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v44 - v22;
  v45 = a3;
  v46 = a2;
  v69[0] = a2;
  v69[1] = a3;
  v24 = a4;
  v69[2] = a4;
  v25 = a5;
  v69[3] = a5;
  v44[0] = type metadata accessor for PersonalizedWorkoutPlansView(0, v69);
  sub_1E58CD1AC(v23);
  (*(v18 + 104))(v20, *MEMORY[0x1E697E6C0], v17);
  LOBYTE(a5) = sub_1E5A2A674();
  v26 = *(v18 + 8);
  v26(v20, v17);
  v26(v23, v17);
  if (a5)
  {
    v27 = sub_1E5A2A934();
    v55[0] = 1;
    sub_1E59C4060(a1, v46, v45, v24, v25, v69);
    memcpy(v53, v69, 0x141uLL);
    memcpy(v54, v69, sizeof(v54));
    sub_1E58BABA0(v53, v66, &qword_1ECFFF920, &qword_1E5A3EC30);
    sub_1E58BAD14(v54, &qword_1ECFFF920, &qword_1E5A3EC30);
    memcpy(&v52[7], v53, 0x141uLL);
    v66[0] = v27;
    LOBYTE(v66[1]) = v55[0];
    memcpy(&v66[1] + 1, v52, 0x148uLL);
    sub_1E59C9678(v66);
    memcpy(v55, v66, 0x15AuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF908, &qword_1E5A3EC20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF910, &qword_1E5A3EC28);
    sub_1E58CD164(&qword_1ECFFF918, &qword_1ECFFF908, &qword_1E5A3EC20, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1EE2CFAB0, &qword_1ECFFF910, &qword_1E5A3EC28, MEMORY[0x1E6981F48]);
    sub_1E5A2AA74();
  }

  else
  {
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v28 = qword_1EE2D33E0;
    sub_1E59B6960(v44[0]);
    swift_getKeyPath();
    sub_1E5A2B944();

    v29 = sub_1E5A2AF64();
    v46 = v30;
    v47 = v29;
    v32 = v31;
    v34 = v33;
    sub_1E5A2AE84();
    sub_1E5A2AE24();

    v36 = v48;
    v35 = v49;
    v37 = v50;
    (*(v49 + 104))(v48, *MEMORY[0x1E6980EA8], v50);
    sub_1E5A2AEE4();

    (*(v35 + 8))(v36, v37);
    v38 = v47;
    v39 = sub_1E5A2AFA4();
    v49 = v40;
    v50 = v41;
    LOBYTE(v37) = v42;

    sub_1E58B3C9C(v38, v32, v34 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    *&v56 = v39;
    *(&v56 + 1) = v49;
    LOBYTE(v57) = v37 & 1;
    *(&v57 + 1) = *v67;
    DWORD1(v57) = *&v67[3];
    *(&v57 + 1) = v50;
    *&v54[96] = v62;
    *&v54[112] = v63;
    *&v54[128] = v64;
    *&v54[32] = v58;
    *&v54[48] = v59;
    *&v54[64] = v60;
    *&v54[80] = v61;
    *v54 = v56;
    *&v54[16] = v57;
    v65[6] = v62;
    v65[7] = v63;
    v65[8] = v64;
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v65[5] = v61;
    v65[0] = v56;
    v65[1] = v57;
    v53[6] = v62;
    v53[7] = v63;
    v53[8] = v64;
    v53[2] = v58;
    v53[3] = v59;
    v53[4] = v60;
    v53[5] = v61;
    v68 = v37 & 1;
    v53[0] = v56;
    v53[1] = v57;
    v55[352] = 1;
    sub_1E58BABA0(&v56, v69, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(v65, v69, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v54, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v66[6] = v53[6];
    v66[7] = v53[7];
    v66[8] = v53[8];
    v66[2] = v53[2];
    v66[3] = v53[3];
    v66[4] = v53[4];
    v66[5] = v53[5];
    v66[0] = v53[0];
    v66[1] = v53[1];
    *&v66[9] = 0;
    BYTE8(v66[9]) = 1;
    sub_1E59C966C(v66);
    memcpy(v69, v66, 0x15AuLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF908, &qword_1E5A3EC20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF910, &qword_1E5A3EC28);
    sub_1E58CD164(&qword_1ECFFF918, &qword_1ECFFF908, &qword_1E5A3EC20, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1EE2CFAB0, &qword_1ECFFF910, &qword_1E5A3EC28, MEMORY[0x1E6981F48]);
    sub_1E5A2AA74();
    sub_1E58BAD14(&v56, &qword_1ECFFB4F8, &unk_1E5A2C940);
    memcpy(v69, v55, 0x15AuLL);
  }

  return memcpy(v51, v69, 0x15AuLL);
}

uint64_t sub_1E59C4060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v14[0] = 0;
  sub_1E59C41E8(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, sizeof(v17));
  sub_1E58BABA0(__dst, v18, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v17, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v15[7], __dst, 0x120uLL);
  v18[0] = v12;
  v18[1] = 0x4014000000000000;
  LOBYTE(v18[2]) = 0;
  memcpy(&v18[2] + 1, v15, 0x127uLL);
  v14[312] = 1;
  memcpy(a6, v18, 0x138uLL);
  *(a6 + 312) = 0;
  *(a6 + 320) = 1;
  *__src = v12;
  *&__src[8] = 0x4014000000000000;
  __src[16] = 0;
  memcpy(&__src[17], v15, 0x127uLL);
  sub_1E58BABA0(v18, v14, &qword_1ECFFF250, &qword_1E5A3C900);
  return sub_1E58BAD14(__src, &qword_1ECFFF250, &qword_1E5A3C900);
}

uint64_t sub_1E59C41E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a6;
  v64 = sub_1E5A2AEB4();
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE2D33E0;
  v104 = a2;
  v105 = a3;
  v106 = a4;
  v107 = a5;
  v59 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v104);
  sub_1E59B6960(v59);
  swift_getKeyPath();
  v54[3] = v15;
  sub_1E5A2B944();

  v54[2] = v18;
  v20 = sub_1E5A2AF64();
  v22 = v21;
  v24 = v23;
  sub_1E5A2AE84();
  sub_1E5A2AE24();
  v54[1] = a1;

  v58 = *MEMORY[0x1E6980EA8];
  v25 = v11;
  v26 = *(v11 + 104);
  v56 = v11 + 104;
  v57 = v26;
  v27 = v62;
  v28 = v64;
  v26(v62);
  sub_1E5A2AEE4();

  v55 = *(v25 + 8);
  v55(v27, v28);
  v60 = sub_1E5A2AFA4();
  v61 = v29;
  v66 = v30;
  v32 = v31;

  sub_1E58B3C9C(v20, v22, v24 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v65 = v32 & 1;
  v125 = v32 & 1;
  sub_1E5A2BA84();
  v33 = qword_1EE2D33E0;
  sub_1E59B6960(v59);
  swift_getKeyPath();
  sub_1E5A2B944();

  v34 = sub_1E5A2AF64();
  v36 = v35;
  v38 = v37;
  sub_1E5A2AE04();
  v39 = v64;
  v57(v27, v58, v64);
  sub_1E5A2AEE4();

  v55(v27, v39);
  v40 = sub_1E5A2AFA4();
  v42 = v41;
  LOBYTE(v39) = v43;

  sub_1E58B3C9C(v34, v36, v38 & 1);

  LODWORD(v104) = sub_1E5A2ABA4();
  v44 = sub_1E5A2AF84();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1E58B3C9C(v40, v42, v39 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v48 &= 1u;
  v51 = v60;
  v52 = v61;
  *&v75 = v60;
  *(&v75 + 1) = v66;
  LOBYTE(v76) = v65;
  *(&v76 + 1) = *v124;
  DWORD1(v76) = *&v124[3];
  *(&v76 + 1) = v61;
  v81 = v121;
  v82 = v122;
  v83 = v123;
  v77 = v117;
  v78 = v118;
  v79 = v119;
  v80 = v120;
  v67[6] = v121;
  v67[7] = v122;
  v67[2] = v117;
  v67[3] = v118;
  v67[4] = v119;
  v67[5] = v120;
  v67[0] = v75;
  v67[1] = v76;
  *&v84 = v44;
  *(&v84 + 1) = v46;
  LOBYTE(v85) = v48;
  *(&v85 + 1) = *v115;
  DWORD1(v85) = *&v115[3];
  *(&v85 + 1) = v50;
  v90 = v72;
  v91 = v73;
  v92 = v74;
  v86 = v68;
  v87 = v69;
  v88 = v70;
  v89 = v71;
  v67[12] = v69;
  v67[13] = v70;
  v67[10] = v85;
  v67[11] = v68;
  v67[14] = v71;
  v67[15] = v72;
  v67[16] = v73;
  v67[17] = v74;
  v116 = v48;
  v67[8] = v123;
  v67[9] = v84;
  memcpy(v63, v67, 0x120uLL);
  v93[0] = v44;
  v93[1] = v46;
  v94 = v48;
  *v95 = *v115;
  *&v95[3] = *&v115[3];
  v96 = v50;
  v101 = v72;
  v102 = v73;
  v103 = v74;
  v97 = v68;
  v98 = v69;
  v99 = v70;
  v100 = v71;
  sub_1E58BABA0(&v75, &v104, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BABA0(&v84, &v104, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58BAD14(v93, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v104 = v51;
  v105 = v66;
  LOBYTE(v106) = v65;
  *(&v106 + 1) = *v124;
  HIDWORD(v106) = *&v124[3];
  v107 = v52;
  v112 = v121;
  v113 = v122;
  v114 = v123;
  v108 = v117;
  v109 = v118;
  v110 = v119;
  v111 = v120;
  return sub_1E58BAD14(&v104, &qword_1ECFFB4F8, &unk_1E5A2C940);
}

uint64_t sub_1E59C492C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a3;
  v36 = a5;
  v40 = a4;
  v41 = a2;
  v37 = a1;
  v38 = a6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
  type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  v9 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v29 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  v34 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  v28[1] = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x1E69819D0];
  v50 = WitnessTable;
  v51 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x1E6981E60];
  v47 = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981600];
  swift_getWitnessTable();
  v31 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for CustomPlanView(255, v41, v40, v11);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v29);
  v57 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v28[0] = sub_1E5A2AA84();
  v29 = sub_1E5A2B494();
  v12 = swift_getOpaqueTypeConformance2();
  v45 = swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x1E6981E60];
  v46 = MEMORY[0x1E6981E60];
  v44[19] = swift_getWitnessTable();
  v44[17] = v45;
  v44[18] = swift_getWitnessTable();
  v44[15] = v12;
  v44[16] = swift_getWitnessTable();
  v44[13] = v13;
  v44[14] = v45;
  v44[11] = swift_getWitnessTable();
  v44[12] = swift_getWitnessTable();
  v44[10] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v39 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1E5A2AD04();
  v15 = swift_getOpaqueTypeConformance2();
  v53 = v39;
  v54 = v14;
  v55 = v15;
  v56 = MEMORY[0x1E697CC08];
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1E5A2B734();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v28 - v22;
  v44[2] = v41;
  v44[3] = v35;
  v44[4] = v40;
  v44[5] = v36;
  v44[6] = v37;
  v43[2] = v41;
  v43[3] = v35;
  v43[4] = v40;
  v43[5] = v36;
  v43[6] = v37;
  v24 = sub_1E59C8DE8();
  v53 = v39;
  v54 = v14;
  v55 = v15;
  v56 = MEMORY[0x1E697CC08];
  v25 = swift_getOpaqueTypeConformance2();
  sub_1E59B66BC(sub_1E59C9848, v44, sub_1E59C9860, v43, v42, v16, v24, v25);
  v44[7] = v24;
  v44[8] = v25;
  v44[9] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v26 = *(v18 + 8);
  v26(v20, v17);
  sub_1E58B41DC();
  return (v26)(v23, v17);
}

uint64_t sub_1E59C51FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a3;
  v111 = a5;
  v127 = a2;
  v128 = a4;
  v117 = a1;
  v125 = a6;
  v8 = sub_1E5A2ACE4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1E5A2AD04();
  v124 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v122 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2AC64();
  v120 = *(v11 - 8);
  v121 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2AB64();
  v118 = *(v13 - 8);
  v119 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2A2F4();
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v17);
  WitnessTable = swift_getWitnessTable();
  v131 = v18;
  v132 = WitnessTable;
  v126 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v21 = sub_1E5A29E74();
  v131 = v18;
  v132 = WitnessTable;
  v22 = MEMORY[0x1E69E3B40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = MEMORY[0x1E69E6338];
  v24 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v25 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v131 = v20;
  v132 = v21;
  v133 = OpaqueTypeMetadata2;
  v134 = v24;
  v135 = v25;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v26 = sub_1E5A2B494();
  v109 = MEMORY[0x1E6981F48];
  v27 = swift_getWitnessTable();
  v131 = v18;
  v132 = WitnessTable;
  v103 = v22;
  v130[29] = swift_getOpaqueTypeConformance2();
  v105 = MEMORY[0x1E69819D0];
  v28 = swift_getWitnessTable();
  v130[27] = v27;
  v130[28] = v28;
  v130[25] = swift_getWitnessTable();
  v130[26] = MEMORY[0x1E6981E60];
  v130[24] = swift_getWitnessTable();
  v108 = MEMORY[0x1E6981600];
  v29 = swift_getWitnessTable();
  v131 = v26;
  v132 = v29;
  v106 = MEMORY[0x1E697D318];
  v107 = swift_getOpaqueTypeMetadata2();
  v31 = type metadata accessor for CustomPlanView(255, v127, v128, v30);
  v32 = swift_getWitnessTable();
  v131 = v31;
  v132 = v32;
  swift_getOpaqueTypeMetadata2();
  v131 = v31;
  v132 = v32;
  swift_getOpaqueTypeMetadata2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v34 = sub_1E5A2AA84();
  v35 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v104);
  v131 = v33;
  v132 = MEMORY[0x1E69E6158];
  v133 = v34;
  v134 = v35;
  v135 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v102 = sub_1E5A2AA84();
  v104 = sub_1E5A2B494();
  v131 = v31;
  v132 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v131 = v31;
  v132 = v32;
  v37 = swift_getOpaqueTypeConformance2();
  v130[22] = v37;
  v38 = MEMORY[0x1E6981E60];
  v130[23] = MEMORY[0x1E6981E60];
  v130[21] = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v130[19] = v37;
  v130[20] = v39;
  v40 = swift_getWitnessTable();
  v130[17] = OpaqueTypeConformance2;
  v130[18] = v40;
  v41 = swift_getWitnessTable();
  v130[15] = v38;
  v130[16] = v37;
  v42 = swift_getWitnessTable();
  v130[13] = v41;
  v130[14] = v42;
  v130[12] = swift_getWitnessTable();
  v43 = v104;
  v44 = swift_getWitnessTable();
  v131 = v43;
  v132 = v44;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v45 = sub_1E5A2A474();
  v46 = swift_getWitnessTable();
  v131 = v45;
  v132 = v46;
  v97 = swift_getOpaqueTypeMetadata2();
  v131 = v45;
  v132 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1E5A2A4B4();
  v99 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v96 - v49;
  v51 = swift_getWitnessTable();
  v131 = v48;
  v132 = v51;
  v52 = v51;
  v98 = v51;
  v53 = swift_getOpaqueTypeMetadata2();
  v109 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v96 - v54;
  v131 = v48;
  v132 = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v131 = v53;
  v132 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v107 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v104 = &v96 - v58;
  v126 = v53;
  v131 = v53;
  v132 = v56;
  v101 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v108 = v57;
  v131 = v57;
  v132 = v129;
  v103 = v59;
  v133 = v59;
  v134 = MEMORY[0x1E697CC08];
  v60 = swift_getOpaqueTypeMetadata2();
  v105 = *(v60 - 8);
  v106 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v100 = &v96 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v102 = &v96 - v63;
  v64 = sub_1E5A2AD64();
  v65 = v127;
  v66 = v128;
  v68 = v110;
  v67 = v111;
  v130[2] = v127;
  v130[3] = v110;
  v130[4] = v128;
  v130[5] = v111;
  v130[6] = v117;
  sub_1E594320C(v64, sub_1E59C9884, v130, v97, v47);
  v69 = sub_1E5A2AD94();
  v131 = v65;
  v132 = v68;
  v133 = v66;
  v134 = v67;
  v70 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v131);
  sub_1E59B6960(v70);
  swift_getKeyPath();
  v71 = v112;
  sub_1E5A2B944();

  v72 = v115;

  sub_1E5A2A294();
  v74 = v73;
  sub_1E5A2A2D4();
  v76 = v75;
  sub_1E5A2A2C4();
  v78 = v77;
  sub_1E5A2A2E4();
  v80 = v79;
  (*(v113 + 8))(v71, v114);
  v81 = v116;
  sub_1E5A2AB54();
  MEMORY[0x1E6931D70](v69, v81, v48, v98, v74, v76, v78, v80);
  (*(v118 + 8))(v81, v119);
  (*(v99 + 8))(v50, v48);
  sub_1E5A2AAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  LOBYTE(v68) = sub_1E5A2AD84();
  *(inited + 32) = v68;
  v83 = sub_1E5A2AD64();
  *(inited + 33) = v83;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v68)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v83)
  {
    sub_1E5A2AD74();
  }

  v84 = v104;
  v85 = v126;
  sub_1E5A2B1B4();
  (*(v120 + 8))(v72, v121);
  (*(v109 + 8))(v55, v85);
  sub_1E5A2ACD4();
  v86 = v122;
  sub_1E5A2ACF4();
  v87 = v100;
  v88 = v108;
  v89 = v129;
  v90 = v103;
  v91 = MEMORY[0x1E697CC08];
  sub_1E5A2B244();
  (*(v124 + 8))(v86, v89);
  (*(v107 + 8))(v84, v88);
  v131 = v88;
  v132 = v89;
  v133 = v90;
  v134 = v91;
  swift_getOpaqueTypeConformance2();
  v92 = v102;
  v93 = v106;
  sub_1E58B41DC();
  v94 = *(v105 + 8);
  v94(v87, v93);
  sub_1E58B41DC();
  return (v94)(v92, v93);
}

uint64_t sub_1E59C6054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v64 = a4;
  v66 = a3;
  v71 = a2;
  v69 = a1;
  v70 = a6;
  v9 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, a3, a5, v11);
  WitnessTable = swift_getWitnessTable();
  v95 = v12;
  v96 = WitnessTable;
  v61 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v15 = sub_1E5A29E74();
  v95 = v12;
  v96 = WitnessTable;
  v16 = MEMORY[0x1E69E3B40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = MEMORY[0x1E69E6338];
  v18 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v19 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v95 = v14;
  v96 = v15;
  v97 = OpaqueTypeMetadata2;
  v98 = v18;
  v99 = v19;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v20 = sub_1E5A2B494();
  v65 = MEMORY[0x1E6981F48];
  v21 = swift_getWitnessTable();
  v95 = v12;
  v96 = WitnessTable;
  v57[1] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x1E69819D0];
  v22 = swift_getWitnessTable();
  v92 = v21;
  v93 = v22;
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E6981E60];
  v89 = swift_getWitnessTable();
  v63 = MEMORY[0x1E6981600];
  v23 = swift_getWitnessTable();
  v95 = v20;
  v96 = v23;
  v60 = MEMORY[0x1E697D318];
  v62 = swift_getOpaqueTypeMetadata2();
  v25 = type metadata accessor for CustomPlanView(255, v71, a4, v24);
  v26 = swift_getWitnessTable();
  v95 = v25;
  v96 = v26;
  swift_getOpaqueTypeMetadata2();
  v95 = v25;
  v96 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v28 = sub_1E5A2AA84();
  v29 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v58);
  v95 = v27;
  v96 = MEMORY[0x1E69E6158];
  v97 = v28;
  v98 = v29;
  v99 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v58 = sub_1E5A2B494();
  v95 = v25;
  v96 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v95 = v25;
  v96 = v26;
  v31 = swift_getOpaqueTypeConformance2();
  v87 = v31;
  v32 = MEMORY[0x1E6981E60];
  v88 = MEMORY[0x1E6981E60];
  v86 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v84 = v31;
  v85 = v33;
  v34 = swift_getWitnessTable();
  v82 = v30;
  v83 = v34;
  v35 = swift_getWitnessTable();
  v80 = v32;
  v81 = v31;
  v36 = swift_getWitnessTable();
  v78 = v35;
  v79 = v36;
  v77 = swift_getWitnessTable();
  v37 = v58;
  v38 = swift_getWitnessTable();
  v95 = v37;
  v96 = v38;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v61 = sub_1E5A2B864();
  v60 = swift_getWitnessTable();
  v39 = sub_1E5A2A474();
  v65 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v58 = v57 - v40;
  v59 = swift_getWitnessTable();
  v95 = v39;
  v96 = v59;
  v62 = MEMORY[0x1E697D1A0];
  v41 = swift_getOpaqueTypeMetadata2();
  v63 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v57 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v57 - v45;
  v47 = v71;
  v48 = v66;
  v95 = v71;
  v96 = v66;
  v49 = v64;
  v50 = v67;
  v97 = v64;
  v98 = v67;
  v51 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v95);
  v52 = v69;
  sub_1E59B6F18(v51);
  v72 = v47;
  v73 = v48;
  v74 = v49;
  v75 = v50;
  v76 = v52;
  sub_1E5A2A934();
  sub_1E59B68E0();
  v53 = v58;
  sub_1E5A2A464();
  v54 = v59;
  sub_1E5A2B204();
  (*(v65 + 8))(v53, v39);
  v95 = v39;
  v96 = v54;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v55 = *(v63 + 8);
  v55(v43, v41);
  sub_1E58B41DC();
  return (v55)(v46, v41);
}

uint64_t sub_1E59C699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v78 = a5;
  v71 = a4;
  v80 = a3;
  v70 = a2;
  v72 = a1;
  v74 = a6;
  v6 = type metadata accessor for CustomPlanView(255, a2, a4, a4);
  WitnessTable = swift_getWitnessTable();
  v76 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  v77 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v9 = sub_1E5A2AA84();
  v63 = MEMORY[0x1E69E6338];
  v10 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v84 = v8;
  v85 = MEMORY[0x1E69E6158];
  v86 = v9;
  v87 = v10;
  v88 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v79 = sub_1E5A2B494();
  v73 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v69 = &v59 - v11;
  v84 = v6;
  v85 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v6;
  v85 = WitnessTable;
  v13 = swift_getOpaqueTypeConformance2();
  v83[18] = v13;
  v83[19] = MEMORY[0x1E6981E60];
  v14 = MEMORY[0x1E6981E60];
  v83[17] = swift_getWitnessTable();
  v62 = MEMORY[0x1E69819D0];
  v15 = swift_getWitnessTable();
  v83[15] = v13;
  v83[16] = v15;
  v16 = swift_getWitnessTable();
  v83[13] = OpaqueTypeConformance2;
  v83[14] = v16;
  v17 = swift_getWitnessTable();
  v83[11] = v14;
  v83[12] = v13;
  v18 = swift_getWitnessTable();
  v83[9] = v17;
  v83[10] = v18;
  v83[8] = swift_getWitnessTable();
  v61 = MEMORY[0x1E6981600];
  v19 = v79;
  v66 = swift_getWitnessTable();
  v84 = v19;
  v85 = v66;
  v75 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v59 - v22;
  v24 = type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, v80, v78, v23);
  v25 = swift_getWitnessTable();
  v84 = v24;
  v85 = v25;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v27 = sub_1E5A29E74();
  v84 = v24;
  v85 = v25;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, v63);
  v30 = sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v84 = v26;
  v85 = v27;
  v86 = v28;
  v87 = v29;
  v88 = v30;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v31 = sub_1E5A2B494();
  v63 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v60 = &v59 - v32;
  v33 = swift_getWitnessTable();
  v84 = v24;
  v85 = v25;
  v83[7] = swift_getOpaqueTypeConformance2();
  v34 = swift_getWitnessTable();
  v83[5] = v33;
  v83[6] = v34;
  v83[3] = swift_getWitnessTable();
  v83[4] = MEMORY[0x1E6981E60];
  v83[2] = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v84 = v31;
  v85 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v77 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v36 = &v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v76 = &v59 - v38;
  v84 = v70;
  v85 = v80;
  v86 = v71;
  v87 = v78;
  v39 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v84);
  v40 = v60;
  sub_1E59B7484(v39, v60, v41);
  sub_1E5A2AD64();
  sub_1E59B6D30(v39);
  sub_1E59B6E58(v39);
  sub_1E59B6F18(v39);
  sub_1E5A2B7F4();
  v42 = v61;
  sub_1E5A2B274();
  (*(v63 + 8))(v40, v31);
  v84 = v31;
  v85 = v42;
  v71 = swift_getOpaqueTypeConformance2();
  v43 = v36;
  v44 = v62;
  sub_1E58B41DC();
  v78 = *(v77 + 8);
  v80 = v77 + 8;
  v78(v36, v44);
  sub_1E59B6960(v39);
  swift_getKeyPath();
  sub_1E5A2B944();

  v45 = v69;
  sub_1E59B94F0(v84, v39, v46, v69);
  sub_1E5A2AD64();
  sub_1E59B6D30(v39);
  sub_1E59B6E58(v39);
  sub_1E59B6F18(v39);
  sub_1E5A2B7F4();
  v47 = v64;
  v48 = v79;
  v49 = v66;
  sub_1E5A2B274();
  (*(v73 + 8))(v45, v48);
  v84 = v48;
  v85 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v65;
  v52 = OpaqueTypeMetadata2;
  sub_1E58B41DC();
  v53 = v67;
  v54 = *(v67 + 8);
  v54(v47, v52);
  v55 = *(v77 + 16);
  v59 = v43;
  v56 = v76;
  v55(v43, v76, v44);
  v84 = v43;
  (*(v53 + 16))(v47, v51, v52);
  v85 = v47;
  v83[0] = v44;
  v83[1] = v52;
  v81 = v71;
  v82 = v50;
  sub_1E597DC00(&v84, 2uLL, v83);
  v54(v51, v52);
  v57 = v78;
  v78(v56, v44);
  v54(v47, v52);
  return v57(v59, v44);
}

double sub_1E59C751C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v29 = a5;
  v30 = a1;
  v33 = sub_1E5A2A2F4();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E5A2AA34();
  v37 = 0;
  sub_1E59C7818(a1, a2, a3, a4, v6, v35);
  memcpy(v39, v35, 0x192uLL);
  memcpy(v40, v35, 0x192uLL);
  sub_1E58BABA0(v39, v34, &qword_1ECFFF928, &qword_1E5A3EC38);
  sub_1E58BAD14(v40, &qword_1ECFFF928, &qword_1E5A3EC38);
  memcpy(&v36[7], v39, 0x192uLL);
  LOBYTE(v6) = v37;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v38[54] = *&v35[48];
  *&v38[70] = *&v35[64];
  *&v38[86] = *&v35[80];
  *&v38[102] = *&v35[96];
  *&v38[6] = *v35;
  *&v38[22] = *&v35[16];
  *&v38[38] = *&v35[32];
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = a4;
  v34[3] = v29;
  v14 = type metadata accessor for PersonalizedWorkoutPlansView(0, v34);
  sub_1E59B6960(v14);
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2A294();
  v16 = v15;
  sub_1E5A2A2D4();
  v18 = v17;
  sub_1E5A2A2C4();
  v20 = v19;
  sub_1E5A2A2E4();
  v22 = v21;
  (*(v31 + 8))(v13, v33);
  v23 = sub_1E5A2ADA4();
  *a6 = v32;
  *(a6 + 8) = 0x4014000000000000;
  *(a6 + 16) = v6;
  memcpy((a6 + 17), v36, 0x199uLL);
  v24 = *&v38[80];
  *(a6 + 490) = *&v38[64];
  *(a6 + 506) = v24;
  *(a6 + 522) = *&v38[96];
  *(a6 + 536) = *&v38[110];
  v25 = *&v38[16];
  *(a6 + 426) = *v38;
  *(a6 + 442) = v25;
  result = *&v38[32];
  v27 = *&v38[48];
  *(a6 + 458) = *&v38[32];
  *(a6 + 474) = v27;
  *(a6 + 544) = v23;
  *(a6 + 552) = v16;
  *(a6 + 560) = v18;
  *(a6 + 568) = v20;
  *(a6 + 576) = v22;
  *(a6 + 584) = 0;
  return result;
}

void *sub_1E59C7818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v49 = a1;
  v50 = a6;
  v10 = sub_1E5A2AEB4();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E5A2A684();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v43 = a3;
  v44 = a2;
  v68[0] = a2;
  v68[1] = a3;
  v68[2] = a4;
  v42 = a5;
  v68[3] = a5;
  v41 = type metadata accessor for PersonalizedWorkoutPlansView(0, v68);
  v22 = v49;
  sub_1E58CD1AC(v21);
  (*(v16 + 104))(v18, *MEMORY[0x1E697E6C0], v15);
  LOBYTE(a5) = sub_1E5A2A674();
  v23 = *(v16 + 8);
  v23(v18, v15);
  v23(v21, v15);
  if (a5)
  {
    v24 = sub_1E5A2A934();
    v54[0] = 1;
    sub_1E59C8080(v22, v44, v43, a4, v42, v68);
    memcpy(v52, v68, 0x179uLL);
    memcpy(v53, v68, 0x179uLL);
    sub_1E58BABA0(v52, v65, &qword_1ECFFF938, &qword_1E5A3EC68);
    sub_1E58BAD14(v53, &qword_1ECFFF938, &qword_1E5A3EC68);
    memcpy(&v51[7], v52, 0x179uLL);
    v65[0] = v24;
    LOBYTE(v65[1]) = v54[0];
    memcpy(&v65[1] + 1, v51, 0x180uLL);
    sub_1E59C987C(v65);
    memcpy(v54, v65, 0x192uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF930, &qword_1E5A3EC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF910, &qword_1E5A3EC28);
    sub_1E58CD164(&qword_1EE2CFAD0, &qword_1ECFFF930, &qword_1E5A3EC60, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1EE2CFAB0, &qword_1ECFFF910, &qword_1E5A3EC28, MEMORY[0x1E6981F48]);
    sub_1E5A2AA74();
  }

  else
  {
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE2D33E0;
    sub_1E59B6960(v41);
    swift_getKeyPath();
    sub_1E5A2B944();

    v26 = sub_1E5A2AF64();
    v28 = v27;
    v30 = v29;
    sub_1E5A2AE84();
    sub_1E5A2AE24();

    v32 = v46;
    v31 = v47;
    v33 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x1E6980EA8], v48);
    sub_1E5A2AEE4();

    (*(v31 + 8))(v32, v33);
    v34 = sub_1E5A2AFA4();
    v36 = v35;
    LOBYTE(v31) = v37;
    v39 = v38;

    sub_1E58B3C9C(v26, v28, v30 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    *&v55 = v34;
    *(&v55 + 1) = v36;
    LOBYTE(v56) = v31 & 1;
    *(&v56 + 1) = *v66;
    DWORD1(v56) = *&v66[3];
    *(&v56 + 1) = v39;
    v53[6] = v61;
    v53[7] = v62;
    v53[8] = v63;
    v53[2] = v57;
    v53[3] = v58;
    v53[4] = v59;
    v53[5] = v60;
    v53[0] = v55;
    v53[1] = v56;
    v64[6] = v61;
    v64[7] = v62;
    v64[8] = v63;
    v64[2] = v57;
    v64[3] = v58;
    v64[5] = v60;
    v64[4] = v59;
    v64[1] = v56;
    v64[0] = v55;
    v52[6] = v61;
    v52[7] = v62;
    v52[8] = v63;
    v52[2] = v57;
    v52[3] = v58;
    v52[4] = v59;
    v52[5] = v60;
    v67 = v31 & 1;
    v52[0] = v55;
    v52[1] = v56;
    v54[408] = 1;
    sub_1E58BABA0(&v55, v68, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(v64, v68, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v53, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v65[6] = v52[6];
    v65[7] = v52[7];
    v65[8] = v52[8];
    v65[2] = v52[2];
    v65[3] = v52[3];
    v65[5] = v52[5];
    v65[4] = v52[4];
    v65[1] = v52[1];
    v65[0] = v52[0];
    *&v65[9] = 0;
    BYTE8(v65[9]) = 1;
    sub_1E59C9870(v65);
    memcpy(v68, v65, 0x192uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF930, &qword_1E5A3EC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF910, &qword_1E5A3EC28);
    sub_1E58CD164(&qword_1EE2CFAD0, &qword_1ECFFF930, &qword_1E5A3EC60, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1EE2CFAB0, &qword_1ECFFF910, &qword_1E5A3EC28, MEMORY[0x1E6981F48]);
    sub_1E5A2AA74();
    sub_1E58BAD14(&v55, &qword_1ECFFB4F8, &unk_1E5A2C940);
    memcpy(v68, v54, 0x192uLL);
  }

  return memcpy(v50, v68, 0x192uLL);
}

uint64_t sub_1E59C8080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v14[0] = 0;
  sub_1E59C8208(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, sizeof(v17));
  sub_1E58BABA0(__dst, v18, &qword_1ECFFF940, &qword_1E5A3EC70);
  sub_1E58BAD14(v17, &qword_1ECFFF940, &qword_1E5A3EC70);
  memcpy(&v15[7], __dst, 0x158uLL);
  v18[0] = v12;
  v18[1] = 0x4014000000000000;
  LOBYTE(v18[2]) = 0;
  memcpy(&v18[2] + 1, v15, 0x15FuLL);
  v14[368] = 1;
  memcpy(a6, v18, 0x170uLL);
  *(a6 + 368) = 0;
  *(a6 + 376) = 1;
  *__src = v12;
  *&__src[8] = 0x4014000000000000;
  __src[16] = 0;
  memcpy(&__src[17], v15, 0x15FuLL);
  sub_1E58BABA0(v18, v14, &qword_1ECFFF948, &qword_1E5A3EC78);
  return sub_1E58BAD14(__src, &qword_1ECFFF948, &qword_1E5A3EC78);
}

uint64_t sub_1E59C8208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v24 = a5;
  v25 = a1;
  v28 = a6;
  v29 = a4;
  v8 = a3;
  v26 = a2;
  v27 = a3;
  v10 = sub_1E5A2AEB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59C87F4(a2, v8, a4, v6, &v59);
  v30 = v59;
  v35 = v61;
  v36 = v60;
  v34 = v62;
  LOBYTE(v8) = v63;
  v31 = v63;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v14 = *MEMORY[0x1E6980EA8];
  v23 = *(v11 + 104);
  v23(v13, v14, v10);
  v33 = sub_1E5A2AEE4();

  v15 = *(v11 + 8);
  v15(v13, v10);
  KeyPath = swift_getKeyPath();
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v86 = v8;
  sub_1E59C8A58(v26, v27, v29, v24, &v59);
  v26 = v60;
  v27 = v59;
  v24 = v62;
  v25 = v61;
  LOBYTE(v6) = v63;
  sub_1E5A2AE04();
  v23(v13, v14, v10);
  v23 = sub_1E5A2AEE4();

  v15(v13, v10);
  v16 = swift_getKeyPath();
  LODWORD(v29) = sub_1E5A2ABA4();
  sub_1E5A2B7F4();
  v50 = v6;
  sub_1E5A2A764();
  LOBYTE(v8) = v50;
  *&v76[52] = v90;
  *&v76[68] = v91;
  *&v76[84] = v92;
  *&v76[100] = v93;
  *&v76[4] = v87;
  *&v76[20] = v88;
  *&v76[36] = v89;
  *&v51 = v30;
  *(&v51 + 1) = v36;
  *&v52 = v35;
  *(&v52 + 1) = v34;
  LOBYTE(v53) = v31;
  *(&v53 + 1) = *v85;
  DWORD1(v53) = *&v85[3];
  *(&v53 + 1) = KeyPath;
  *v54 = v33;
  *&v54[24] = v79;
  *&v54[8] = v78;
  *&v54[56] = v81;
  *&v54[72] = v82;
  *&v54[88] = v83;
  *&v54[104] = v84;
  *&v54[40] = v80;
  v49[0] = v51;
  v49[1] = v52;
  v49[4] = *&v54[16];
  v49[5] = *&v54[32];
  v49[2] = v53;
  v49[3] = *v54;
  *&v49[10] = *(&v84 + 1);
  v49[8] = *&v54[80];
  v49[9] = *&v54[96];
  v49[6] = *&v54[48];
  v49[7] = *&v54[64];
  v18 = v26;
  v17 = v27;
  *&v55 = v27;
  *(&v55 + 1) = v26;
  v19 = v24;
  v20 = v25;
  *&v56 = v25;
  *(&v56 + 1) = v24;
  LOBYTE(v57) = v50;
  *(&v57 + 1) = *v77;
  DWORD1(v57) = *&v77[3];
  *(&v57 + 1) = v16;
  v21 = v23;
  *&v58[0] = v23;
  *(&v58[4] + 12) = *&v76[64];
  *(&v58[5] + 12) = *&v76[80];
  *(&v58[6] + 12) = *&v76[96];
  DWORD2(v58[0]) = v29;
  HIDWORD(v58[7]) = HIDWORD(v93);
  *(v58 + 12) = *v76;
  *(&v58[1] + 12) = *&v76[16];
  *(&v58[2] + 12) = *&v76[32];
  *(&v58[3] + 12) = *&v76[48];
  *(&v49[19] + 8) = v58[6];
  *(&v49[20] + 8) = v58[7];
  *(&v49[17] + 8) = v58[4];
  *(&v49[18] + 8) = v58[5];
  *(&v49[16] + 8) = v58[3];
  *(&v49[12] + 8) = v57;
  *(&v49[11] + 8) = v56;
  *(&v49[10] + 8) = v55;
  *(&v49[15] + 8) = v58[2];
  *(&v49[14] + 8) = v58[1];
  *(&v49[13] + 8) = v58[0];
  memcpy(v28, v49, 0x158uLL);
  v59 = v17;
  v60 = v18;
  v61 = v20;
  v62 = v19;
  v63 = v8;
  *v64 = *v77;
  *&v64[3] = *&v77[3];
  v65 = v16;
  v66 = v21;
  v68 = *v76;
  v69 = *&v76[16];
  v70 = *&v76[32];
  v71 = *&v76[48];
  v67 = v29;
  v75 = *&v76[112];
  v74 = *&v76[96];
  v73 = *&v76[80];
  v72 = *&v76[64];
  sub_1E58BABA0(&v51, v37, &qword_1ECFFF950, &qword_1E5A3ECB0);
  sub_1E58BABA0(&v55, v37, &qword_1ECFFF958, &qword_1E5A3ECB8);
  sub_1E58BAD14(&v59, &qword_1ECFFF958, &qword_1E5A3ECB8);
  v45 = v81;
  v46 = v82;
  v47 = v83;
  v48 = v84;
  v42 = v78;
  v43 = v79;
  v37[0] = v30;
  v37[1] = v36;
  v37[2] = v35;
  v37[3] = v34;
  v38 = v31;
  *v39 = *v85;
  *&v39[3] = *&v85[3];
  v40 = KeyPath;
  v41 = v33;
  v44 = v80;
  return sub_1E58BAD14(v37, &qword_1ECFFF950, &qword_1E5A3ECB0);
}

double sub_1E59C87F4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v12 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v17);
  sub_1E59B6960(v12);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (*(&v17 + 1))
  {
    sub_1E58D1C80();
    sub_1E5A2AFD4();
  }

  else
  {
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE2D33E0;
    sub_1E59B6960(v12);
    swift_getKeyPath();
    sub_1E5A2B944();

    sub_1E5A2AF64();
  }

  sub_1E5A2AA74();
  result = *&v17;
  v15 = v18;
  v16 = v19;
  *a5 = v17;
  *(a5 + 16) = v15;
  *(a5 + 32) = v16;
  return result;
}

double sub_1E59C8A58@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v12 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v17);
  sub_1E59B6960(v12);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (*(&v17 + 1))
  {
    sub_1E58D1C80();
    sub_1E5A2AFD4();
  }

  else
  {
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE2D33E0;
    sub_1E59B6960(v12);
    swift_getKeyPath();
    sub_1E5A2B944();

    sub_1E5A2AF64();
  }

  sub_1E5A2AA74();
  result = *&v17;
  v15 = v18;
  v16 = v19;
  *a5 = v17;
  *(a5 + 16) = v15;
  *(a5 + 32) = v16;
  return result;
}

uint64_t sub_1E59C8CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v5 = type metadata accessor for PersonalizedWorkoutPlansView(0, v7);
  sub_1E59B6960(v5);
  LOBYTE(v7[0]) = 1;
  sub_1E5A2B954();
}

unint64_t sub_1E59C8D30()
{
  result = qword_1EE2CFB18;
  if (!qword_1EE2CFB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
    sub_1E58CD164(&qword_1EE2CFAC8, &qword_1ECFFF8E0, &qword_1E5A3EA90, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFB18);
  }

  return result;
}

unint64_t sub_1E59C8DE8()
{
  result = qword_1EE2CFB00;
  if (!qword_1EE2CFB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
    sub_1E59C8E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFB00);
  }

  return result;
}

unint64_t sub_1E59C8E74()
{
  result = qword_1EE2CFB10;
  if (!qword_1EE2CFB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8F0, &qword_1E5A3EAA0);
    sub_1E58CD164(&qword_1EE2CFAC0, &qword_1ECFFF8F8, &unk_1E5A3EAA8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFB10);
  }

  return result;
}

uint64_t sub_1E59C8F44()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for PersonalizedWorkoutPlansView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1E59C8CB8(v6, v1, v2, v3, v4);
}

void sub_1E59C902C(uint64_t a1)
{
  sub_1E58CBB84(319);
  if (v1 <= 0x3F)
  {
    sub_1E59C9184(319);
    if (v2 <= 0x3F)
    {
      swift_getFunctionTypeMetadata2();
      sub_1E5A2A054();
      if (v3 <= 0x3F)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
        swift_getFunctionTypeMetadata();
        sub_1E5A2A054();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E59C9184(uint64_t a1)
{
  if (!qword_1EE2CFB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE258, &unk_1E5A39330);
    sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);
    v1 = sub_1E5A2A504();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CFB48);
    }
  }
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 40);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = v1;
  v2 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v13);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A684();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1E58B369C(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  v6 = v2[14];
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E69E6530];
  swift_getFunctionTypeMetadata2();
  v9 = sub_1E5A2A054();
  (*(*(v9 - 8) + 8))(v4 + v6, v9);
  v10 = v2[15];
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  *&v14 = v8;
  *(&v14 + 1) = v7;
  v15 = v7;
  swift_getFunctionTypeMetadata();
  v11 = sub_1E5A2A054();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  return swift_deallocObject();
}

uint64_t sub_1E59C9538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v12[0] = v3[2];
  v7 = v12[0];
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for PersonalizedWorkoutPlansView(0, v12);

  return sub_1E59B8BA4(a1, a2, v7, v8, v9, v10, a3);
}

uint64_t sub_1E59C95FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v11 = a2;
  v10[0] = a3;
  v10[1] = a4;
  v9[0] = a5;
  v9[1] = a6;
  return v7(a1, &v11, v10, v9);
}

uint64_t sub_1E59C96DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v15[0] = v3[2];
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v11 = *(type metadata accessor for PersonalizedWorkoutPlansView(0, v15) - 8);
  v12 = v3 + ((*(v11 + 80) + 48) & ~*(v11 + 80));
  v13 = *(v12 + *(v11 + 64));

  return sub_1E59BB590(a1, a2, v12, v13, v7, v8, v9, v10, a3);
}

uint64_t sub_1E59C97C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E59C9808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

uint64_t sub_1E59C9944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF998, qword_1E5A3ED98);
  sub_1E58CD164(&qword_1EE2CFA80, &qword_1ECFFF998, qword_1E5A3ED98, MEMORY[0x1E6999B78]);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E59C99E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  sub_1E5A29E74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
  swift_getFunctionTypeMetadata3();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E59C9AAC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  sub_1E5A29E74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
  swift_getFunctionTypeMetadata3();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_1E59CF62C;
}

uint64_t sub_1E59C9B80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E58F0054(v5, v2, &qword_1ECFFC100, &qword_1E5A2FE90);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v2;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
      v8 = *v2;
      v9 = sub_1E5A29E34();
      (*(*(v9 - 8) + 8))(&v2[v7], v9);
      return v8;
    }

    sub_1E58BAD14(v2, &qword_1ECFFC100, &qword_1E5A2FE90);
  }

  return 0;
}

uint64_t PreviousPlanLockupView.init(store:dateComponentsFormatter:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *a8 = sub_1E58D2CB8;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0;
  *(a8 + 24) = a3;
  type metadata accessor for PreviousPlanLockupView(0, a6, a7, v17);
  return sub_1E59C99E4(a4, a5, a6, a7);
}

uint64_t PreviousPlanLockupView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = *(a1 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E5A2A714();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v5 = *(a1 + 24);
  v45 = *(a1 + 16);
  v44 = v5;
  type metadata accessor for LockupView(255, v45, v5, v6);
  v7 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v68 = MEMORY[0x1E697EBF8];
  v8 = swift_getWitnessTable();
  v63 = v7;
  v64 = v8;
  swift_getOpaqueTypeMetadata2();
  v63 = v7;
  v64 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B594();
  v9 = sub_1E5A2B594();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF960, &qword_1E5A3ED00);
  v11 = swift_getWitnessTable();
  v12 = sub_1E59CA4A0();
  v63 = v9;
  v64 = v10;
  v65 = v11;
  v66 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  v54 = sub_1E5A2AA84();
  v13 = sub_1E5A2B494();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = swift_getWitnessTable();
  v63 = v9;
  v64 = v10;
  v65 = v11;
  v66 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v16;
  v17 = swift_getWitnessTable();
  v59 = v16;
  v60 = v17;
  v58 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_1E59CF984(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v20 = v43;
  v63 = v13;
  v64 = v43;
  v65 = v18;
  v66 = v19;
  v38 = v18;
  v37 = v19;
  v39 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = &v37 - v21;
  v23 = v45;
  v24 = v44;
  v55 = v45;
  v56 = v44;
  v25 = v48;
  v57 = v48;
  sub_1E5A2B484();
  v26 = v46;
  sub_1E5A2A704();
  sub_1E5A2B0B4();
  v27 = v26;
  v28 = v20;
  (*(v47 + 8))(v27, v20);
  (*(v42 + 8))(v15, v13);
  v29 = v51;
  v30 = v50;
  v31 = v49;
  (*(v51 + 16))(v50, v25, v49);
  v32 = v29;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v23;
  *(v34 + 24) = v24;
  (*(v32 + 32))(v34 + v33, v30, v31);
  v63 = v13;
  v64 = v28;
  v65 = v38;
  v66 = v37;
  swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  sub_1E5A2B364();

  return (*(v41 + 8))(v22, v35);
}

unint64_t sub_1E59CA4A0()
{
  result = qword_1ECFFF968;
  if (!qword_1ECFFF968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF960, &qword_1E5A3ED00);
    sub_1E59CA52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF968);
  }

  return result;
}

unint64_t sub_1E59CA52C()
{
  result = qword_1ECFFF970;
  if (!qword_1ECFFF970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF978, &qword_1E5A3ED08);
    sub_1E58CD164(&qword_1ECFFF980, &qword_1ECFFF988, &qword_1E5A3ED10, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF970);
  }

  return result;
}

uint64_t sub_1E59CA5E4(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v42 = a1;
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A29D84();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A29DA4();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A29DC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A29DE4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v35 - v29;
  MEMORY[0x1E6930950](v28);
  sub_1E5A29DB4();
  sub_1E5A29DD4();
  (*(v14 + 8))(v16, v13);
  v31 = *(v18 + 8);
  v31(v20, v17);
  sub_1E5A29D94();
  sub_1E5A29D64();
  (*(v35 + 8))(v12, v36);
  v31(v23, v17);
  v32 = v37;
  sub_1E5A29D74();
  sub_1E5A29D54();
  (*(v38 + 8))(v32, v39);
  v31(v26, v17);
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v45 == 1)
  {
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    sub_1E5A29E34();
    sub_1E59CF984(&qword_1ECFFFA10, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1E58D1C80();
    sub_1E5A2BA94();
    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    if (qword_1EE2CFA28 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  sub_1E5A29E34();
  sub_1E59CF984(&qword_1ECFFFA10, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1E58D1C80();
  sub_1E5A2BA94();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  qword_1EE2D33E0;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  v33 = sub_1E5A2BB64();
  v31(v30, v17);
  return v33;
}

uint64_t sub_1E59CAD34(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v42 = a1;
  v2 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A29D84();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A29DA4();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A29DC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A29DE4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v35 - v29;
  MEMORY[0x1E6930950](v28);
  sub_1E5A29DB4();
  sub_1E5A29DD4();
  (*(v14 + 8))(v16, v13);
  v31 = *(v18 + 8);
  v31(v20, v17);
  sub_1E5A29D94();
  sub_1E5A29D64();
  (*(v35 + 8))(v12, v36);
  v31(v23, v17);
  v32 = v37;
  sub_1E5A29D74();
  sub_1E5A29D54();
  (*(v38 + 8))(v32, v39);
  v31(v26, v17);
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v45 == 1)
  {
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    sub_1E5A29E34();
    sub_1E59CF984(&qword_1ECFFFA10, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1E58D1C80();
    sub_1E5A2BA94();
    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    if (qword_1EE2CFA28 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  sub_1E5A29E34();
  sub_1E59CF984(&qword_1ECFFFA10, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1E58D1C80();
  sub_1E5A2BA94();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  qword_1EE2D33E0;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  v33 = sub_1E5A2BB64();
  v31(v30, v17);
  return v33;
}

uint64_t sub_1E59CB498(uint64_t a1)
{
  v1 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (sub_1E59C9B80())
  {
    sub_1E5A2BAE4();
    sub_1E5A2BAD4();
    sub_1E5A2BAC4();
    sub_1E5A2BAD4();
    sub_1E5A2BB04();
    if (qword_1EE2CFA28 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  sub_1E5A2BAC4();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  qword_1EE2D33E0;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2BB64();
  sub_1E58D1C80();
  return sub_1E5A2AFD4();
}

uint64_t sub_1E59CB7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v148 = a4;
  type metadata accessor for LockupView(255, a2, a3, a5);
  v8 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v167 = MEMORY[0x1E697EBF8];
  v9 = swift_getWitnessTable();
  v10 = sub_1E5A2B594();
  v125 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v117 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF960, &qword_1E5A3ED00);
  v13 = swift_getWitnessTable();
  v14 = sub_1E59CA4A0();
  v152 = v10;
  v153 = v12;
  v162 = v10;
  v163 = v12;
  v150 = v14;
  v151 = v13;
  v164 = v13;
  v165 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v126 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v124 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v117 - v18;
  v128 = type metadata accessor for PreviousPlanDetail(0);
  v135 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v120 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v117 - v21;
  v162 = v8;
  v163 = v9;
  v22 = swift_getOpaqueTypeMetadata2();
  v122 = v8;
  v162 = v8;
  v163 = v9;
  v121 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v138 = v22;
  v137 = OpaqueTypeConformance2;
  v24 = sub_1E5A2B594();
  v133 = OpaqueTypeMetadata2;
  v25 = sub_1E5A2AA84();
  v132 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v131 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v130 = &v117 - v28;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v29 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v127 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v136 = &v117 - v32;
  v149 = a2;
  v143 = a3;
  v34 = type metadata accessor for PreviousPlanLockupView(0, a2, a3, v33);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v117 - v37;
  v141 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v139 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v140 = &v117 - v42;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v45 = &v117 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v25;
  v146 = sub_1E5A2AA84();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v117 - v46;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  if ((*(v29 + 48))(v45, 2, v142))
  {
    (*(v35 + 16))(v38, a1, v34);
    v47 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v48 = swift_allocObject();
    v49 = v143;
    *(v48 + 16) = v149;
    *(v48 + 24) = v49;
    v50 = (*(v35 + 32))(v48 + v47, v38, v34);
    MEMORY[0x1EEE9AC00](v50);
    v51 = v139;
    sub_1E5A2B574();
    v52 = swift_getWitnessTable();
    v53 = v140;
    sub_1E58B41DC();
    v54 = *(v141 + 8);
    v54(v51, v24);
    sub_1E58B41DC();
    v162 = v152;
    v163 = v153;
    v55 = v150;
    v56 = v151;
    v164 = v151;
    v165 = v150;
    v154 = swift_getOpaqueTypeConformance2();
    v155 = v52;
    v57 = v147;
    v58 = swift_getWitnessTable();
    v59 = v144;
    sub_1E595EBC0(v51, v24, v57, v52, v58);
    v54(v51, v24);
    v54(v53, v24);
    v60 = v56;
    v61 = v152;
    v62 = v55;
    v63 = v59;
  }

  else
  {
    v118 = v36;
    v64 = v134;
    v65 = a1;
    v142 = v24;
    v66 = v45;
    v67 = v136;
    sub_1E58F0054(v66, v136, &qword_1ECFFF438, &qword_1E5A3EDB0);
    v68 = v67;
    v69 = v127;
    sub_1E58BABA0(v68, v127, &qword_1ECFFF438, &qword_1E5A3EDB0);
    if ((*(v135 + 48))(v69, 1, v128) == 1)
    {
      sub_1E58BAD14(v69, &qword_1ECFFF438, &qword_1E5A3EDB0);
      v70 = v34;
      (*(v35 + 16))(v38, a1, v34);
      v71 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v72 = swift_allocObject();
      v73 = v143;
      *(v72 + 16) = v149;
      *(v72 + 24) = v73;
      v74 = (*(v35 + 32))(v72 + v71, v38, v70);
      MEMORY[0x1EEE9AC00](v74);
      v75 = v139;
      sub_1E5A2B574();
      v76 = v142;
      v77 = swift_getWitnessTable();
      v78 = v140;
      sub_1E58B41DC();
      v79 = *(v141 + 8);
      v79(v75, v76);
      sub_1E58B41DC();
      v61 = v152;
      v162 = v152;
      v163 = v153;
      v80 = v151;
      v164 = v151;
      v165 = v150;
      v81 = swift_getOpaqueTypeConformance2();
      v82 = v130;
      sub_1E595ECB8(v75, v133, v76, v81, v77);
      v79(v75, v76);
      v79(v78, v76);
    }

    else
    {
      v83 = v64;
      sub_1E5957230(v69, v64);
      v128 = v35 + 32;
      v138 = *(v35 + 16);
      v84 = v38;
      v85 = v38;
      v86 = v34;
      v138(v85, a1, v34);
      v87 = *(v35 + 80);
      v88 = (v87 + 32) & ~v87;
      v139 = (v88 + v118);
      v141 = v88;
      v140 = (v87 | 7);
      v89 = swift_allocObject();
      *(v89 + 16) = v149;
      v127 = v35 + 16;
      v90 = v143;
      *(v89 + 24) = v143;
      v137 = *(v35 + 32);
      v91 = v137(v89 + v88, v84, v86);
      MEMORY[0x1EEE9AC00](v91);
      sub_1E5A2B574();
      sub_1E59C9944();
      swift_getKeyPath();
      sub_1E5A2B964();

      v138(v84, v65, v86);
      v92 = v120;
      sub_1E59CF664(v83, v120, type metadata accessor for PreviousPlanDetail);
      v93 = &v139[*(v135 + 80)] & ~*(v135 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = v149;
      *(v94 + 24) = v90;
      v137(v94 + v141, v84, v86);
      sub_1E5957230(v92, v94 + v93);
      v95 = v150;
      v80 = v151;
      v96 = v153;
      v97 = v124;
      v61 = v152;
      v98 = v129;
      sub_1E5A2B2F4();

      (*(v125 + 8))(v98, v61);
      v162 = v61;
      v163 = v96;
      v164 = v80;
      v165 = v95;
      v99 = swift_getOpaqueTypeConformance2();
      v100 = v123;
      v101 = v133;
      sub_1E58B41DC();
      v102 = *(v126 + 8);
      v102(v97, v101);
      sub_1E58B41DC();
      v76 = v142;
      v103 = swift_getWitnessTable();
      v82 = v130;
      sub_1E595EBC0(v97, v101, v76, v99, v103);
      v102(v97, v101);
      v102(v100, v101);
      sub_1E59CF6CC(v134, type metadata accessor for PreviousPlanDetail);
    }

    v104 = v147;
    v63 = v144;
    v105 = v132;
    v162 = v61;
    v163 = v153;
    v164 = v80;
    v106 = v150;
    v165 = v150;
    v107 = swift_getOpaqueTypeConformance2();
    v108 = swift_getWitnessTable();
    v160 = v107;
    v161 = v108;
    v109 = swift_getWitnessTable();
    v110 = v131;
    sub_1E58B41DC();
    v111 = v108;
    v62 = v106;
    v60 = v151;
    sub_1E595ECB8(v110, v76, v104, v111, v109);
    v112 = *(v105 + 8);
    v112(v110, v104);
    v112(v82, v104);
    sub_1E58BAD14(v136, &qword_1ECFFF438, &qword_1E5A3EDB0);
  }

  v113 = swift_getWitnessTable();
  v162 = v61;
  v163 = v153;
  v164 = v60;
  v165 = v62;
  v158 = swift_getOpaqueTypeConformance2();
  v159 = v113;
  v114 = swift_getWitnessTable();
  v156 = v113;
  v157 = v114;
  v115 = v146;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v145 + 8))(v63, v115);
}

uint64_t sub_1E59CC9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a2;
  v53 = a5;
  v43 = a3;
  v44 = a4;
  v48 = type metadata accessor for PreviousPlanLockupView(0, a3, a4, a4);
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PreviousPlanDetail(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v41 = &v40 - v15;
  v47 = type metadata accessor for LockupView(0, a3, a4, v17);
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = &v40 - v18;
  v19 = sub_1E5A2A6C4();
  v52 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v40 - v22;
  sub_1E59CF664(a1, v16, type metadata accessor for PreviousPlanDetail);
  v23 = v11;
  v24 = v11;
  v25 = v48;
  (*(v8 + 16))(v23, v49, v48);
  v26 = a1;
  v27 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59CF664(v26, v27, type metadata accessor for PreviousPlanDetail);
  v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v29 = (v9 + *(v46 + 80) + v28) & ~*(v46 + 80);
  v30 = swift_allocObject();
  v32 = v43;
  v31 = v44;
  *(v30 + 16) = v43;
  *(v30 + 24) = v31;
  (*(v8 + 32))(v30 + v28, v24, v25);
  sub_1E5957230(v27, v30 + v29);
  v33 = v42;
  LockupView.init(planDetail:artworkViewBuilder:)(v41, sub_1E59CFC88, v30, v32, v31, v42);
  sub_1E5A2B7D4();
  v38 = v47;
  WitnessTable = swift_getWitnessTable();
  v34 = v45;
  sub_1E5A2B2E4();
  (*(v51 + 8))(v33, v38);
  v54 = WitnessTable;
  v55 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v35 = v50;
  sub_1E58B41DC();
  v36 = *(v52 + 8);
  v36(v34, v19);
  sub_1E58B41DC();
  return (v36)(v35, v19);
}

uint64_t sub_1E59CCE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[0] = a4;
  v24[1] = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v15 = type metadata accessor for PreviousPlanLockupView(0, v13, v14, v14);
  sub_1E59C9AAC(v15);
  v17 = v16;
  v18 = type metadata accessor for PreviousPlanDetail(0);
  v19 = v18[13];
  v20 = *(a2 + v18[14]);
  v25 = *(a2 + v18[15]);
  v21 = *(v17 + 32);

  v26 = v20;
  v21(a2 + v19, &v26, &v25);

  sub_1E58B41DC();
  v22 = *(v7 + 8);
  v22(v9, a3);
  sub_1E58B41DC();
  return (v22)(v12, a3);
}

int64x2_t sub_1E59CD030@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1E5A2AA24();
  *(a5 + 8) = 0x4038000000000000;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9A0, &qword_1E5A3EDF8);
  sub_1E59CD148(a1, a2, a3, a4, a5 + *(v10 + 44));
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v11 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF978, &qword_1E5A3ED08) + 36));
  *v11 = v14;
  v11[1] = v15;
  v11[2] = v16;
  LOBYTE(a4) = sub_1E5A2ADA4();
  v12 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF960, &qword_1E5A3ED00) + 36);
  *v12 = a4;
  result = vdupq_n_s64(0x4048000000000000uLL);
  *(v12 + 8) = result;
  *(v12 + 24) = result;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_1E59CD148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a2;
  v49 = a4;
  v7 = a2;
  v47 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9A8, &qword_1E5A3EE00) - 8;
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = (&v47 - v11);
  v12 = type metadata accessor for RepeatReplaceAlertDetailView(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - v16;
  v51 = a3;
  v50 = type metadata accessor for PreviousPlanLockupView(0, a3, a4, v17);
  v18 = sub_1E59CB498(v7);
  v20 = v19;
  LOBYTE(v7) = v21;
  sub_1E5A2AE94();
  sub_1E5A2AE24();

  v64 = sub_1E5A2AFA4();
  v67 = v23;
  v68 = v22;
  v25 = v24;

  sub_1E58B3C9C(v18, v20, v7 & 1);

  KeyPath = swift_getKeyPath();
  v65 = v25 & 1;
  LOBYTE(v79) = v25 & 1;
  v27 = v47;
  v26 = v48;
  v28 = v49;
  sub_1E59CD6BC(v48, a3, v49, &v79);
  v29 = v79;
  v62 = v81;
  v63 = v80;
  v61 = v82;
  v60 = v83;
  v59 = v84;
  LOBYTE(v18) = v85;
  v57 = v85;
  v58 = sub_1E5A2ABA4();
  v72 = v18;
  sub_1E59C9944();
  swift_getKeyPath();
  v30 = v56;
  sub_1E5A2B944();

  sub_1E59CF664(v26, v30 + *(v13 + 28), type metadata accessor for PreviousPlanDetail);
  v31 = *(v27 + 24);
  *(v30 + *(v13 + 32)) = v31;
  v32 = v30;
  v33 = v31;
  v34 = sub_1E5A2AA24();
  v35 = v52;
  *v52 = v34;
  *(v35 + 8) = 0x402E000000000000;
  *(v35 + 16) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9B0, &qword_1E5A3EE58);
  sub_1E59CD830(v27, v26, v51, v28, (v35 + *(v36 + 44)));
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v37 = v53;
  v38 = (v35 + *(v54 + 44));
  v39 = v70;
  *v38 = v69;
  v38[1] = v39;
  v38[2] = v71;
  sub_1E59CF664(v32, v37, type metadata accessor for RepeatReplaceAlertDetailView);
  v40 = v55;
  sub_1E58BABA0(v35, v55, &qword_1ECFFF9A8, &qword_1E5A3EE00);
  *&v73 = v64;
  *(&v73 + 1) = v68;
  LOBYTE(v74[0]) = v65;
  *(&v74[0] + 1) = v67;
  *&v74[1] = KeyPath;
  WORD4(v74[1]) = 1;
  BYTE10(v74[1]) = 1;
  v41 = v74[0];
  *a5 = v73;
  *(a5 + 16) = v41;
  *(a5 + 27) = *(v74 + 11);
  *&v75 = v29;
  *(&v75 + 1) = v63;
  *&v76 = v62;
  *(&v76 + 1) = v61;
  *&v77 = v60;
  BYTE8(v77) = v59;
  BYTE9(v77) = v57;
  HIDWORD(v77) = v58;
  v78 = 256;
  v42 = v75;
  v43 = v76;
  v44 = v77;
  *(a5 + 96) = 256;
  *(a5 + 64) = v43;
  *(a5 + 80) = v44;
  *(a5 + 48) = v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9B8, &qword_1E5A3EE60);
  sub_1E59CF664(v37, a5 + *(v45 + 64), type metadata accessor for RepeatReplaceAlertDetailView);
  sub_1E58BABA0(v40, a5 + *(v45 + 80), &qword_1ECFFF9A8, &qword_1E5A3EE00);
  sub_1E58BABA0(&v73, &v79, &qword_1ECFFF9C0, &qword_1E5A3EE68);
  sub_1E58BABA0(&v75, &v79, &qword_1ECFFF9C8, &qword_1E5A3EE70);
  sub_1E58BAD14(v35, &qword_1ECFFF9A8, &qword_1E5A3EE00);
  sub_1E59CF6CC(v56, type metadata accessor for RepeatReplaceAlertDetailView);
  sub_1E58BAD14(v40, &qword_1ECFFF9A8, &qword_1E5A3EE00);
  sub_1E59CF6CC(v37, type metadata accessor for RepeatReplaceAlertDetailView);
  v79 = v29;
  v80 = v63;
  v81 = v62;
  v82 = v61;
  v83 = v60;
  v84 = v59;
  v85 = v57;
  v86 = v58;
  v87 = 256;
  sub_1E58BAD14(&v79, &qword_1ECFFF9C8, &qword_1E5A3EE70);
  v88[0] = v64;
  v88[1] = v68;
  v89 = v65;
  v90 = v67;
  v91 = KeyPath;
  v92 = 1;
  v93 = 1;
  return sub_1E58BAD14(v88, &qword_1ECFFF9C0, &qword_1E5A3EE68);
}

double sub_1E59CD6BC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for PreviousPlanLockupView(0, a2, a3, a3);
  v7 = sub_1E59C9B80();
  v8 = a1 + *(type metadata accessor for PreviousPlanDetail(0) + 32);
  if (v7)
  {
    *&v12 = sub_1E59CAD34(v8, v6);
    *(&v12 + 1) = v9;
    sub_1E58D1C80();
    sub_1E5A2AFD4();
    swift_getKeyPath();
  }

  else
  {
    *&v12 = sub_1E59CA5E4(v8, v6);
    *(&v12 + 1) = v10;
    sub_1E58D1C80();
    sub_1E5A2AFD4();
    swift_getKeyPath();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9F0, &qword_1E5A3EEF0);
  sub_1E59CF8CC();
  sub_1E5A2AA74();
  result = *&v12;
  *a4 = v12;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  *(a4 + 41) = v16;
  return result;
}

uint64_t sub_1E59CD830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v107 = a2;
  v95 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9D0, &qword_1E5A3EE78);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  v13 = type metadata accessor for PreviousPlanDetail(0);
  v108 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = v14;
  v106 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a3;
  v15 = a4;
  v17 = type metadata accessor for PreviousPlanLockupView(0, a3, a4, v16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9D8, &qword_1E5A3EE80);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v90 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v85 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9E0, &unk_1E5A3EE88);
  v89 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v93 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v91 = &v85 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v86 = &v85 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v112 = &v85 - v36;
  v37 = v17;
  v38 = a1;
  v39 = sub_1E59C9B80();
  v111 = v12;
  v98 = v27;
  if (v39)
  {
    sub_1E5A2A3E4();
    v40 = sub_1E5A2A414();
    (*(*(v40 - 8) + 56))(v27, 0, 1, v40);
  }

  else
  {
    v41 = sub_1E5A2A414();
    (*(*(v41 - 8) + 56))(v27, 1, 1, v41);
  }

  v42 = v109;
  v103 = *(v18 + 16);
  v104 = v18 + 16;
  v103(v109, a1, v37);
  v43 = v106;
  sub_1E59CF664(v107, v106, type metadata accessor for PreviousPlanDetail);
  v44 = *(v18 + 80);
  v45 = (v44 + 32) & ~v44;
  v46 = v45 + v19;
  v47 = *(v108 + 80);
  v88 = v46;
  v48 = (v46 + v47) & ~v47;
  v101 = v44 | 7;
  v49 = swift_allocObject();
  v50 = v18;
  v51 = v110;
  *(v49 + 16) = v110;
  *(v49 + 24) = v15;
  v52 = *(v50 + 32);
  v102 = v45;
  v108 = v50 + 32;
  v52(v49 + v45, v42, v37);
  v53 = sub_1E5957230(v43, v49 + v48);
  MEMORY[0x1EEE9AC00](v53);
  *(&v85 - 4) = v51;
  *(&v85 - 3) = v15;
  v54 = v15;
  *(&v85 - 2) = v38;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v98 = sub_1E58B1D44();
  sub_1E5A2B564();
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  v99 = v55;
  v100 = v52;
  v97 = v54;
  if (v113 == 1)
  {
    if (sub_1E59C9B80())
    {
      v56 = v87;
      sub_1E5A2A3E4();
      v57 = 0;
      v58 = v109;
    }

    else
    {
      v57 = 1;
      v58 = v109;
      v56 = v87;
    }

    v64 = v103;
    v65 = sub_1E5A2A414();
    (*(*(v65 - 8) + 56))(v56, v57, 1, v65);
    v64(v58, v38, v37);
    v66 = v106;
    sub_1E59CF664(v107, v106, type metadata accessor for PreviousPlanDetail);
    v67 = swift_allocObject();
    v61 = v110;
    v68 = v97;
    *(v67 + 16) = v110;
    *(v67 + 24) = v68;
    v100(v67 + v102, v58, v37);
    v69 = sub_1E5957230(v66, v67 + v48);
    MEMORY[0x1EEE9AC00](v69);
    *(&v85 - 4) = v61;
    *(&v85 - 3) = v68;
    *(&v85 - 2) = v38;
    v70 = v86;
    sub_1E5A2B564();
    v62 = v89;
    v60 = v111;
    v63 = v94;
    (*(v89 + 32))(v111, v70, v94);
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v61 = v110;
    v60 = v111;
    v62 = v89;
    v63 = v94;
    v58 = v109;
  }

  (*(v62 + 56))(v60, v59, 1, v63);
  v71 = v90;
  sub_1E5A2A3F4();
  v72 = sub_1E5A2A414();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  v103(v58, v38, v37);
  v73 = swift_allocObject();
  v74 = v97;
  *(v73 + 16) = v61;
  *(v73 + 24) = v74;
  v75 = (v100)(v73 + v102, v58, v37);
  MEMORY[0x1EEE9AC00](v75);
  *(&v85 - 4) = v61;
  *(&v85 - 3) = v74;
  *(&v85 - 2) = v38;
  v76 = v91;
  sub_1E5A2B564();
  v77 = *(v62 + 16);
  v78 = v93;
  v77(v93, v112, v63);
  v79 = v96;
  sub_1E58BABA0(v60, v96, &qword_1ECFFF9D0, &qword_1E5A3EE78);
  v80 = v92;
  v77(v92, v76, v63);
  v81 = v95;
  v77(v95, v78, v63);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF9E8, &unk_1E5A3EEB8);
  sub_1E58BABA0(v79, &v81[*(v82 + 48)], &qword_1ECFFF9D0, &qword_1E5A3EE78);
  v77(&v81[*(v82 + 64)], v80, v63);
  v83 = *(v62 + 8);
  v83(v76, v63);
  sub_1E58BAD14(v111, &qword_1ECFFF9D0, &qword_1E5A3EE78);
  v83(v112, v63);
  v83(v80, v63);
  sub_1E58BAD14(v79, &qword_1ECFFF9D0, &qword_1E5A3EE78);
  return (v83)(v78, v63);
}

__n128 sub_1E59CE2A4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  type metadata accessor for PreviousPlanLockupView(0, a1, a2, v8);
  v10 = v9;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  *&v20 = sub_1E5A2BB64();
  *(&v20 + 1) = v11;
  sub_1E58D1C80();
  v12 = sub_1E5A2AFD4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  *(a3 + 96) = v24;
  *(a3 + 112) = v25;
  *(a3 + 128) = v26;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  result = v23;
  *(a3 + 64) = v22;
  *(a3 + 80) = v23;
  return result;
}

uint64_t sub_1E59CE4F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for PreviousPlanLockupAction(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviousPlanLockupView(0, a3, a4, v12);
  sub_1E59C9944();
  v13 = a2[1];
  *v11 = *a2;
  *(v11 + 1) = v13;
  v11[16] = a5;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E59CF6CC(v11, type metadata accessor for PreviousPlanLockupAction);
}

__n128 sub_1E59CE5F4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  type metadata accessor for PreviousPlanLockupView(0, a1, a2, v8);
  v10 = v9;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  *&v20 = sub_1E5A2BB64();
  *(&v20 + 1) = v11;
  sub_1E58D1C80();
  v12 = sub_1E5A2AFD4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  *(a3 + 96) = v24;
  *(a3 + 112) = v25;
  *(a3 + 128) = v26;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  result = v23;
  *(a3 + 64) = v22;
  *(a3 + 80) = v23;
  return result;
}

uint64_t sub_1E59CE840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PreviousPlanLockupAction(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviousPlanLockupView(0, a2, a3, v9);
  sub_1E59C9944();
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return sub_1E59CF6CC(v8, type metadata accessor for PreviousPlanLockupAction);
}

__n128 sub_1E59CE924@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2D33E0;
  type metadata accessor for PreviousPlanLockupView(0, a1, a2, v8);
  v10 = v9;
  sub_1E59C9944();
  swift_getKeyPath();
  sub_1E5A2B944();

  *&v20 = sub_1E5A2BB64();
  *(&v20 + 1) = v11;
  sub_1E58D1C80();
  v12 = sub_1E5A2AFD4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  *(a3 + 96) = v24;
  *(a3 + 112) = v25;
  *(a3 + 128) = v26;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  result = v23;
  *(a3 + 64) = v22;
  *(a3 + 80) = v23;
  return result;
}

uint64_t sub_1E59CEB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v50 = a1;
  v60 = a6;
  v8 = sub_1E5A2A734();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PreviousPlanLockupView(0, a2, a3, v10);
  v11 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v42 - v12;
  v14 = type metadata accessor for PreviousPlanDetail(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a3;
  v20 = type metadata accessor for LockupView(0, a2, a3, v19);
  v53 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v42 - v21;
  v22 = sub_1E5A2A6C4();
  v52 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - v23;
  v54 = v20;
  WitnessTable = swift_getWitnessTable();
  v63 = WitnessTable;
  v64 = MEMORY[0x1E697EBF8];
  v24 = swift_getWitnessTable();
  v61 = v22;
  v62 = v24;
  v47 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v45 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v46 = &v42 - v28;
  if (qword_1ECFFB4F0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v14, qword_1ED000E90);
  sub_1E59CF664(v29, v16, type metadata accessor for PreviousPlanDetail);
  v30 = v44;
  (*(v11 + 16))(v13, v50, v44);
  v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v17;
  *(v32 + 24) = v18;
  (*(v11 + 32))(v32 + v31, v13, v30);
  v33 = v51;
  LockupView.init(planDetail:artworkViewBuilder:)(v16, v56, v32, v17, v18, v51);
  sub_1E5A2B7D4();
  v34 = v54;
  v35 = v49;
  sub_1E5A2B2E4();
  (*(v53 + 8))(v33, v34);
  v36 = v57;
  sub_1E5A2A724();
  v37 = v45;
  v38 = v47;
  sub_1E5A2B394();
  (*(v58 + 8))(v36, v59);
  (*(v52 + 8))(v35, v22);
  v61 = v22;
  v62 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v46;
  sub_1E58B41DC();
  v40 = *(v48 + 8);
  v40(v37, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v40)(v39, OpaqueTypeMetadata2);
}

uint64_t sub_1E59CF174@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_1E5A29E74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v17 = type metadata accessor for PreviousPlanLockupView(0, a1, a2, v16);
  sub_1E59C9AAC(v17);
  v19 = v18;
  sub_1E5A29E64();
  v23 = 0;
  v24 = 0;
  (*(v19 + 32))(v8, &v24, &v23);

  (*(v6 + 8))(v8, v5);
  sub_1E58B41DC();
  v20 = *(v9 + 8);
  v20(v12, a1);
  sub_1E58B41DC();
  return (v20)(v15, a1);
}

void sub_1E59CF3CC(uint64_t a1)
{
  sub_1E59CF4E0(319);
  if (v1 <= 0x3F)
  {
    sub_1E59581C4();
    if (v2 <= 0x3F)
    {
      sub_1E5A29E74();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
      swift_getFunctionTypeMetadata3();
      sub_1E5A2A054();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E59CF4E0(uint64_t a1)
{
  if (!qword_1EE2CFB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF998, qword_1E5A3ED98);
    sub_1E58CD164(&qword_1EE2CFA80, &qword_1ECFFF998, qword_1E5A3ED98, MEMORY[0x1E6999B78]);
    v1 = sub_1E5A2A504();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CFB38);
    }
  }
}

uint64_t sub_1E59CF62C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1E59CF664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59CF6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E59CF748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PreviousPlanLockupView(0, v6, v7, a4) - 8);
  return sub_1E59CE840(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

uint64_t sub_1E59CF7DC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PreviousPlanLockupView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PreviousPlanDetail(0) - 8);
  return sub_1E59CE4F0(v4 + v9, (v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80))), v6, v7, a1);
}

unint64_t sub_1E59CF8CC()
{
  result = qword_1ECFFF9F8;
  if (!qword_1ECFFF9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF9F0, &qword_1E5A3EEF0);
    sub_1E58CD164(&qword_1ECFFFA00, &qword_1ECFFFA08, &qword_1E5A3EEF8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF9F8);
  }

  return result;
}

uint64_t sub_1E59CF984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for PreviousPlanLockupView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = (type metadata accessor for PreviousPlanDetail(0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v10 = v4 + v6;
  sub_1E58B369C(*v10, *(v10 + 8));

  v11 = v5[12];
  sub_1E5A29E74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
  swift_getFunctionTypeMetadata3();
  v12 = sub_1E5A2A054();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  v13 = v8[8];
  v14 = sub_1E5A29CF4();
  (*(*(v14 - 8) + 8))(v4 + v9 + v13, v14);

  v15 = v8[10];
  v16 = sub_1E5A29E34();
  (*(*(v16 - 8) + 8))(v4 + v9 + v15, v16);

  v17 = v8[15];
  v18 = swift_checkMetadataState();
  (*(*(v18 - 8) + 8))(v4 + v9 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_1E59CFCA0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PreviousPlanLockupView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for PreviousPlanDetail(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a1(v4 + v8, v11, v5, v6);
}

uint64_t objectdestroy_2Tm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for PreviousPlanLockupView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));
  sub_1E58B369C(*v6, *(v6 + 8));

  v7 = v5[12];
  sub_1E5A29E74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
  swift_getFunctionTypeMetadata3();
  v8 = sub_1E5A2A054();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E59CFEEC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for PreviousPlanLockupView(0, v4, v5, a1);
  return sub_1E59CF174(v4, v5, a2);
}

uint64_t CreateWorkoutPlanButtonView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E58D2CB8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t CreateWorkoutPlanButtonView.body.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1E596AC08(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA18, &qword_1E5A3EF00);
  sub_1E58CD164(&qword_1EE2CFAE0, &qword_1ECFFFA18, &qword_1E5A3EF00, MEMORY[0x1E697D658]);
  return sub_1E5A2B574();
}

uint64_t sub_1E59D0100(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA28, &qword_1E5A3EFF8);
  sub_1E58CD164(&qword_1EE2CFA88, &qword_1ECFFFA28, &qword_1E5A3EFF8, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  sub_1E5A2B954();
}

uint64_t sub_1E59D01E8@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA28, &qword_1E5A3EFF8);
  sub_1E58CD164(&qword_1EE2CFA88, &qword_1ECFFFA28, &qword_1E5A3EFF8, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E59D02D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1E596AC08(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA18, &qword_1E5A3EF00);
  sub_1E58CD164(&qword_1EE2CFAE0, &qword_1ECFFFA18, &qword_1E5A3EF00, MEMORY[0x1E697D658]);
  return sub_1E5A2B574();
}

uint64_t sub_1E59D04D0()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];
  result = sub_1E5A2B474();
  qword_1ED0264A8 = result;
  return result;
}

uint64_t sub_1E59D06DC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_1E5A2B3E4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v7);
  result = sub_1E5A2B464();
  *a5 = result;
  return result;
}

uint64_t PersonalizedWorkoutPlanCandidate.init(identifier:title:subtitle:schedule:modalityPreferences:weekCount:variation:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v18 = *a6;
  v19 = sub_1E5A29E74();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  *(a9 + v20[7]) = v18;
  result = sub_1E595418C(a11, a9 + v20[9]);
  *(a9 + v20[8]) = a7;
  *(a9 + v20[10]) = a8;
  *(a9 + v20[11]) = a10;
  return result;
}

uint64_t PersonalizedWorkoutPlanCandidate.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlanCandidate(0) + 20));

  return v1;
}

uint64_t PersonalizedWorkoutPlanCandidate.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizedWorkoutPlanCandidate(0) + 24));

  return v1;
}

uint64_t PersonalizedWorkoutPlanCandidate.schedule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PersonalizedWorkoutPlanCandidate(0) + 28));
}

uint64_t PersonalizedWorkoutPlanCandidate.modalityPreferences.getter()
{
  type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
}

uint64_t PersonalizedWorkoutPlanCandidate.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersonalizedWorkoutPlanCandidate(0) + 36);

  return sub_1E59541FC(v3, a1);
}

uint64_t sub_1E59D0A60()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E756F436B656577;
  if (v1 != 6)
  {
    v3 = 0x6F69746169726176;
  }

  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x7363697274656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 0x656C756465686373;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E59D0B6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59D22F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59D0B94(uint64_t a1)
{
  v2 = sub_1E59D1F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59D0BD0(uint64_t a1)
{
  v2 = sub_1E59D1F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A29E74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PersonalizedWorkoutPlanCandidate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA30, &qword_1E5A3F0E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D1F40();
  sub_1E5A2C224();
  LOBYTE(v12) = 0;
  sub_1E5A29E74();
  sub_1E59D216C(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v9 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
    LOBYTE(v12) = 1;
    sub_1E5A2C064();
    LOBYTE(v12) = 2;
    sub_1E5A2C064();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_1E58C2B90();

    sub_1E5A2C0B4();

    v12 = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA40, &qword_1E5A3F0F0);
    sub_1E59D1F94(&qword_1ECFFFA48, sub_1E59A2730, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1E5A2C0B4();
    LOBYTE(v12) = 5;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    sub_1E59D216C(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C054();
    LOBYTE(v12) = 6;
    sub_1E5A2C094();
    LOBYTE(v12) = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PersonalizedWorkoutPlanCandidate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_1E5A29E74();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA50, &qword_1E5A3F0F8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v28 - v8;
  v10 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D1F40();
  v35 = v9;
  v13 = v36;
  sub_1E5A2C214();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v5;
  v14 = v32;
  v36 = v10;
  LOBYTE(v38) = 0;
  sub_1E59D216C(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v33;
  sub_1E5A2BFE4();
  v16 = *(v31 + 32);
  v28 = v12;
  v16(v12, v15, v6);
  LOBYTE(v38) = 1;
  v17 = sub_1E5A2BF94();
  v18 = v36;
  v19 = &v28[v36[5]];
  *v19 = v17;
  v19[1] = v20;
  LOBYTE(v38) = 2;
  v33 = 0;
  v21 = sub_1E5A2BF94();
  v22 = &v28[v18[6]];
  *v22 = v21;
  v22[1] = v23;
  v37 = 3;
  sub_1E58C7620();
  sub_1E5A2BFE4();
  *&v28[v18[7]] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA40, &qword_1E5A3F0F0);
  v37 = 4;
  sub_1E59D1F94(&qword_1ECFFFA58, sub_1E59A2EDC, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1E5A2BFE4();
  *&v28[v18[8]] = v38;
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  LOBYTE(v38) = 5;
  sub_1E59D216C(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
  v24 = v29;
  sub_1E5A2BF84();
  sub_1E595418C(v24, &v28[v18[9]]);
  LOBYTE(v38) = 6;
  v25 = sub_1E5A2BFC4();
  v26 = v28;
  *&v28[v18[10]] = v25;
  v37 = 7;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  (*(v14 + 8))(v35, v34);
  *(v26 + v36[11]) = v38;
  sub_1E59D2018(v26, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E59D207C(v26, type metadata accessor for PersonalizedWorkoutPlanCandidate);
}

uint64_t PersonalizedWorkoutPlanCandidate.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1E5A29E74();
  sub_1E59D216C(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  v10 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  sub_1E58F9DDC(a1, *(v1 + v10[7]));
  sub_1E58FA3DC(a1, *(v1 + v10[8]));
  sub_1E59541FC(v1 + v10[9], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    sub_1E59A3720(v9, v6);
    sub_1E5A2C1D4();
    MEMORY[0x1E6932DE0](*v6);
    sub_1E5A2BA44();
    sub_1E5953800(a1, *(v6 + *(v3 + 24)));
    sub_1E59D207C(v6, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  }

  MEMORY[0x1E6932DE0](*(v1 + v10[10]));
  return MEMORY[0x1E6932DE0](*(v1 + v10[11]));
}

uint64_t PersonalizedWorkoutPlanCandidate.hashValue.getter()
{
  sub_1E5A2C1B4();
  PersonalizedWorkoutPlanCandidate.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59D1AA0()
{
  sub_1E5A2C1B4();
  PersonalizedWorkoutPlanCandidate.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59D1AE4(uint64_t a1)
{
  sub_1E5A2C1B4();
  PersonalizedWorkoutPlanCandidate.hash(into:)(v2);
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan012PersonalizedbC9CandidateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v40 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D0, &unk_1E5A3DBC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v21 == *v23 && v22 == v23[1];
  if (!v24 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v40 = v7;
  v41 = v5;
  v25 = v14[7];
  v26 = *(a1 + v25);
  v27 = v14;
  v28 = *(a2 + v25);

  sub_1E599C6C0(v26, v28);
  v30 = v29;

  if ((v30 & 1) == 0 || (sub_1E599CDF4(*(a1 + v27[8]), *(a2 + v27[8])) & 1) == 0)
  {
    return 0;
  }

  v31 = v27;
  v32 = v27[9];
  v33 = *(v11 + 48);
  sub_1E59541FC(a1 + v32, v13);
  sub_1E59541FC(a2 + v32, &v13[v33]);
  v34 = *(v41 + 48);
  if (v34(v13, 1, v4) != 1)
  {
    sub_1E59541FC(v13, v10);
    if (v34(&v13[v33], 1, v4) != 1)
    {
      v38 = v40;
      sub_1E59A3720(&v13[v33], v40);
      if (*v10 == *v38 && (sub_1E5A29E54() & 1) != 0)
      {
        v39 = sub_1E595AC4C(*(v10 + *(v4 + 24)), *(v38 + *(v4 + 24)));
        sub_1E59D207C(v38, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        sub_1E59D207C(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
        if ((v39 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_17;
      }

      sub_1E59D207C(v38, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      sub_1E59D207C(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v36 = &qword_1ECFFD900;
      v37 = &qword_1E5A39BB0;
LABEL_27:
      sub_1E58BAD14(v13, v36, v37);
      return 0;
    }

    sub_1E59D207C(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
LABEL_21:
    v36 = &qword_1ECFFE4D0;
    v37 = &unk_1E5A3DBC0;
    goto LABEL_27;
  }

  if (v34(&v13[v33], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
LABEL_17:
  if (*(a1 + v31[10]) == *(a2 + v31[10]))
  {
    return *(a1 + v31[11]) == *(a2 + v31[11]);
  }

  return 0;
}

unint64_t sub_1E59D1F40()
{
  result = qword_1ECFFFA38;
  if (!qword_1ECFFFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFA38);
  }

  return result;
}

uint64_t sub_1E59D1F94(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFA40, &qword_1E5A3F0F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E59D2018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59D207C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E59D216C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E59D21F0()
{
  result = qword_1ECFFFA68;
  if (!qword_1ECFFFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFA68);
  }

  return result;
}

unint64_t sub_1E59D2248()
{
  result = qword_1ECFFFA70;
  if (!qword_1ECFFFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFA70);
  }

  return result;
}

unint64_t sub_1E59D22A0()
{
  result = qword_1ECFFFA78;
  if (!qword_1ECFFFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFA78);
  }

  return result;
}

uint64_t sub_1E59D22F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A46C30 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E756F436B656577 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}