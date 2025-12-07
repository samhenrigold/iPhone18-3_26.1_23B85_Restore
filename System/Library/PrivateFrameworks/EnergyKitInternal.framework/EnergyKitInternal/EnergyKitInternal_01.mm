uint64_t sub_20DECED84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C970, &qword_20DF49A08);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C978, qword_20DF49A10);
  v2[5] = swift_task_alloc();
  v3 = sub_20DF47704();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DECEEB4, 0, 0);
}

uint64_t sub_20DECEEB4()
{
  v1 = *(v0[3] + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_20DECEF74;

  return sub_20DED44DC(v2, v4);
}

uint64_t sub_20DECEF74(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DECF1FC, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[13] = v4;
    *v4 = v3;
    v4[1] = sub_20DECF0E8;

    return sub_20DECE03C();
  }
}

uint64_t sub_20DECF0E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_20DECF554;
  }

  else
  {
    v4 = sub_20DECF284;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DECF1FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DECF284()
{
  v1 = v0[11];
  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = v0[4];
  v3 = v1;
  sub_20DF478E4();

  v4 = sub_20DF47714();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    v5 = v0[4];

    sub_20DED8730(v5, &qword_27C84C970, &qword_20DF49A08);
LABEL_5:
    (*(v0[7] + 56))(v0[5], 1, 1, v0[6]);
LABEL_6:
    sub_20DED8730(v0[5], &qword_27C84C978, qword_20DF49A10);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v14 = v0[4];
  v15 = sub_20DF476C4();
  sub_20DED8730(v14, &qword_27C84C970, &qword_20DF49A08);
  if (*(v15 + 16))
  {
    (*(v0[7] + 16))(v0[5], v15 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v0[6];
  v18 = v0[7];
  v19 = v0[5];

  (*(v18 + 56))(v19, v16, 1, v17);
  v20 = (*(v18 + 48))(v19, 1, v17);
  v21 = v0[14];
  if (v20 == 1)
  {

    goto LABEL_6;
  }

  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  (*(v23 + 32))(v22, v0[5], v24);
  v7 = sub_20DF476D4();
  v8 = v25;
  v9 = sub_20DF476E4();
  v10 = v26;

  (*(v23 + 8))(v22, v24);
  if (v21)
  {
    v6 = v21;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_7:
  v11 = v0[2];

  *v11 = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  v12 = v0[1];

  return v12();
}

uint64_t sub_20DECF554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DECF5DC()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v2 = sub_20DF47B54();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_20DECF738;

  return sub_20DECE03C();
}

uint64_t sub_20DECF738(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DECF8A0, 0, 0);
  }
}

uint64_t sub_20DECF8A0()
{
  v41 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v37 = v0[12];
        v39 = v0[11];
        v19 = swift_slowAlloc();
        v38 = v18;
        v20 = swift_slowAlloc();
        v40 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x2928554F547369, 0xE700000000000000, &v40);
        *(v19 + 12) = 2048;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v37);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, v11, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v39, v38);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v1 = (sub_20DF47B44() & 0x8000000000000000) == 0 && sub_20DF47B44() < 5;
      v22(v0[15], v0[12]);
    }

    else
    {

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = __swift_project_value_buffer(v25, qword_281122F18);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = sub_20DF47BB4();
      v28 = sub_20DF48004();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[9];
      v30 = v0[10];
      v32 = v0[8];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v40 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20DED38E8(0x2928554F547369, 0xE700000000000000, &v40);
        _os_log_impl(&dword_20DEAF000, v27, v28, "%s no first peak in currentUtilityPeakPeriods", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x20F329700](v34, -1, -1);
        MEMORY[0x20F329700](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      v1 = 0;
    }
  }

  v35 = v0[1];

  return v35(v1);
}

uint64_t sub_20DECFD00()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v2 = sub_20DF47B54();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_20DECFE5C;

  return sub_20DECE03C();
}

uint64_t sub_20DECFE5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DECFFC4, 0, 0);
  }
}

uint64_t sub_20DECFFC4()
{
  v45 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v40 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v43 = v16;
        v44 = swift_slowAlloc();
        v20 = v44;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x6465726569547369, 0xEA00000000002928, &v44);
        *(v19 + 12) = 2048;
        v41 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v40);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v43, v41);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v35 = v0[15];
      v36 = v0[12];
      v37 = sub_20DF47B44();
      v22(v35, v36);
      v1 = v37 == 999;
    }

    else
    {

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = __swift_project_value_buffer(v25, qword_281122F18);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = sub_20DF47BB4();
      v28 = sub_20DF48004();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[9];
      v30 = v0[10];
      v32 = v0[8];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v44 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20DED38E8(0x6465726569547369, 0xEA00000000002928, &v44);
        _os_log_impl(&dword_20DEAF000, v27, v28, "%s no first peak in currentUtilityPeakPeriods", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x20F329700](v34, -1, -1);
        MEMORY[0x20F329700](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      v1 = 0;
    }
  }

  v38 = v0[1];

  return v38(v1);
}

uint64_t sub_20DED042C()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v2 = sub_20DF47B54();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_20DED0588;

  return sub_20DECE03C();
}

uint64_t sub_20DED0588(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DED06F0, 0, 0);
  }
}

uint64_t sub_20DED06F0()
{
  v45 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v40 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v43 = v16;
        v44 = swift_slowAlloc();
        v20 = v44;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x292874616C467369, 0xE800000000000000, &v44);
        *(v19 + 12) = 2048;
        v41 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v40);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v43, v41);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v35 = v0[15];
      v36 = v0[12];
      v37 = sub_20DF47B44();
      v22(v35, v36);
      v1 = v37 == 998;
    }

    else
    {

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = __swift_project_value_buffer(v25, qword_281122F18);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = sub_20DF47BB4();
      v28 = sub_20DF48004();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[9];
      v30 = v0[10];
      v32 = v0[8];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v44 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20DED38E8(0x292874616C467369, 0xE800000000000000, &v44);
        _os_log_impl(&dword_20DEAF000, v27, v28, "%s no first peak in currentUtilityPeakPeriods", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x20F329700](v34, -1, -1);
        MEMORY[0x20F329700](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      v1 = 0;
    }
  }

  v38 = v0[1];

  return v38(v1);
}

uint64_t sub_20DED0B50()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v2 = sub_20DF47B54();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_20DED0CAC;

  return sub_20DECE03C();
}

uint64_t sub_20DED0CAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DED0E14, 0, 0);
  }
}

uint64_t sub_20DED0E14()
{
  v45 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v40 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v43 = v16;
        v44 = swift_slowAlloc();
        v20 = v44;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x2864657869467369, 0xE900000000000029, &v44);
        *(v19 + 12) = 2048;
        v41 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v40);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v43, v41);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v35 = v0[15];
      v36 = v0[12];
      v37 = sub_20DF47B44();
      v22(v35, v36);
      v1 = v37 == 997;
    }

    else
    {

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = __swift_project_value_buffer(v25, qword_281122F18);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = sub_20DF47BB4();
      v28 = sub_20DF48004();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[9];
      v30 = v0[10];
      v32 = v0[8];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v44 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20DED38E8(0x2864657869467369, 0xE900000000000029, &v44);
        _os_log_impl(&dword_20DEAF000, v27, v28, "%s no first peak in currentUtilityPeakPeriods", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x20F329700](v34, -1, -1);
        MEMORY[0x20F329700](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      v1 = 0;
    }
  }

  v38 = v0[1];

  return v38(v1);
}

uint64_t sub_20DED127C()
{
  v1 = sub_20DF47BD4();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v2 = sub_20DF47B54();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_20DED13D8;

  return sub_20DECE03C();
}

uint64_t sub_20DED13D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DED1540, 0, 0);
  }
}

uint64_t sub_20DED1540()
{
  v45 = v0;
  v1 = v0[17];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = v0[13];
      v3 = *(v2 + 16);
      v3(v0[15], v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[12]);

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v4 = v0[14];
      v5 = v0[15];
      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[8];
      v9 = v0[9];
      v10 = __swift_project_value_buffer(v8, qword_281122F18);
      swift_beginAccess();
      (*(v9 + 16))(v7, v10, v8);
      v3(v4, v5, v6);
      v11 = sub_20DF47BB4();
      v12 = sub_20DF48004();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[13];
      v14 = v0[14];
      v16 = v0[11];
      v18 = v0[8];
      v17 = v0[9];
      if (v13)
      {
        v40 = v0[12];
        log = v11;
        v19 = swift_slowAlloc();
        v43 = v16;
        v44 = swift_slowAlloc();
        v20 = v44;
        *v19 = 136315394;
        *(v19 + 4) = sub_20DED38E8(0x707075736E557369, 0xEF2928646574726FLL, &v44);
        *(v19 + 12) = 2048;
        v41 = v18;
        v21 = sub_20DF47B44();
        v22 = *(v15 + 8);
        v22(v14, v40);
        *(v19 + 14) = v21;
        _os_log_impl(&dword_20DEAF000, log, v12, "%s firstPeak rank is: %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x20F329700](v20, -1, -1);
        MEMORY[0x20F329700](v19, -1, -1);

        (*(v17 + 8))(v43, v41);
      }

      else
      {
        v22 = *(v15 + 8);
        v22(v0[14], v0[12]);

        (*(v17 + 8))(v16, v18);
      }

      v35 = v0[15];
      v36 = v0[12];
      v37 = sub_20DF47B44();
      v22(v35, v36);
      v1 = v37 == 404;
    }

    else
    {

      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v24 = v0[9];
      v23 = v0[10];
      v25 = v0[8];
      v26 = __swift_project_value_buffer(v25, qword_281122F18);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = sub_20DF47BB4();
      v28 = sub_20DF48004();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[9];
      v30 = v0[10];
      v32 = v0[8];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v44 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_20DED38E8(0x707075736E557369, 0xEF2928646574726FLL, &v44);
        _os_log_impl(&dword_20DEAF000, v27, v28, "%s no first peak in currentUtilityPeakPeriods", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x20F329700](v34, -1, -1);
        MEMORY[0x20F329700](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      v1 = 0;
    }
  }

  v38 = v0[1];

  return v38(v1);
}

uint64_t sub_20DED19B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_20DF47BD4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED1A78, 0, 0);
}

uint64_t sub_20DED1A78()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = sub_20DF479B4();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    v6[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_20DED1D28;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000028, 0x800000020DF4EB80, sub_20DED5C90, v6, v8);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = __swift_project_value_buffer(v11, qword_281122F18);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_20DF47BB4();
    v14 = sub_20DF47FF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20DEAF000, v13, v14, "Failed to refresh peaks. Site ID is empty.", v15, 2u);
      MEMORY[0x20F329700](v15, -1, -1);
    }

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    (*(v17 + 8))(v16, v18);
    sub_20DED4D6C();
    swift_allocError();
    *v19 = 28;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_20DED1D28()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20DEBF5E0;
  }

  else
  {

    v2 = sub_20DED1E44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DED1E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DED1EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, v25, v7);
  v16 = a3;
  v17 = v4;
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v4);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v5 + 80) + v19 + 8) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v8 + 32))(v21 + v18, v11, v7);
  *(v21 + v19) = v26;
  (*(v5 + 32))(v21 + v20, v24, v17);

  sub_20DEBB534(0, 0, v14, &unk_20DF49F58, v21);
}

uint64_t sub_20DED2180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v6[22] = v7;
  v8 = *(v7 - 8);
  v6[23] = v8;
  v6[24] = *(v8 + 64);
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED2258, 0, 0);
}

uint64_t sub_20DED2258()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v5, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = sub_20DF3D598(sub_20DED89E4, v7);
  v0[27] = v8;

  v9 = *(v4 + 16);
  sub_20DF479B4();

  v10 = sub_20DF47D04();
  v0[28] = v10;

  v11 = sub_20DF47464();
  v0[29] = v11;
  v0[2] = v0;
  v0[3] = sub_20DED2494;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_144;
  v0[14] = v12;
  [v8 refreshCurrentUtilityPeakPeriodsWithSiteID:v10 start:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DED2494()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_20DED2650;
  }

  else
  {
    v2 = sub_20DED25A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DED25A4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DED2650()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DED2714(void *a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_20DF47BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_281122F18);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = sub_20DF47BB4();
  v16 = sub_20DF47FF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = a4;
    v20 = v19;
    *v18 = 138412290;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_20DEAF000, v15, v16, v25, v18, 0xCu);
    sub_20DED8730(v20, &qword_27C84C948, qword_20DF49940);
    a4 = v26;
    MEMORY[0x20F329700](v20, -1, -1);
    MEMORY[0x20F329700](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v27 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_20DF47ED4();
}

uint64_t EnergySite.deinit()
{
  sub_20DF477C4();
  v1 = sub_20DF47D04();

  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 24);
    swift_unknownObjectRetain_n();
    v4 = v3;
    [v4 removeObserver:v2 name:v1 object:0];

    swift_unknownObjectRelease_n();
  }

  swift_unknownObjectRelease();
  sub_20DED5C98(v0 + 48);
  return v0;
}

uint64_t EnergySite.__deallocating_deinit()
{
  EnergySite.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_20DED2A6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnergySite();
  result = sub_20DF48164();
  *a2 = result;
  return result;
}

uint64_t sub_20DED2AAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v43 = a3;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA10, &qword_20DF49F48);
  v6 = MEMORY[0x28223BE20](v42);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v39 - v8;
  v9 = sub_20DF475C4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = sub_20DF474E4();
  v46 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v10 + 104);
  v22(v18, **(&unk_277E1A258 + *a1), v9);
  v23 = *(v10 + 16);
  v45 = v18;
  v23(v16, v18, v9);
  v24 = (*(v10 + 88))(v16, v9);
  if (v24 == *MEMORY[0x277CC9998] || v24 == *MEMORY[0x277CC9968])
  {
    v22(v13, v24, v9);
    sub_20DF47AC4();
    (*(v10 + 8))(v13, v9);
  }

  else if (v24 == *MEMORY[0x277CC9980])
  {
    sub_20DF47AE4();
    sub_20DF47454();
  }

  else
  {
    v38 = *MEMORY[0x277CC9940];
    v39 = (v10 + 8);
    if (v24 == v38)
    {
      v22(v13, v24, v9);
      sub_20DF47AC4();
      (*v39)(v13, v9);
    }

    else
    {
      (*(v46 + 16))(v21, v4, v19);
      (*v39)(v16, v9);
    }
  }

  sub_20DED91B0(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v25 = sub_20DF47CE4();
  result = (*(v10 + 8))(v45, v9);
  if (v25)
  {
    v27 = v46;
    v28 = v41;
    (*(v46 + 16))(v41, v4, v19);
    v29 = v40;
    v30 = v28;
    v31 = v42;
    v32 = *(v27 + 32);
    v32(v30 + *(v42 + 48), v21, v19);
    sub_20DED8804(v30, v29, &qword_27C84CA10, &qword_20DF49F48);
    v33 = *(v31 + 48);
    v34 = v43;
    v32(v43, v29, v19);
    v35 = *(v27 + 8);
    v35(v29 + v33, v19);
    sub_20DED9CE8(v30, v29, &qword_27C84CA10, &qword_20DF49F48);
    v36 = *(v31 + 48);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
    v32(&v34[*(v37 + 36)], (v29 + v36), v19);
    return (v35)(v29, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EnergySite.EnergyUsage.containsDate(_:displayInterval:in:)(uint64_t a1, char *a2, uint64_t a3)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_20DF474E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  sub_20DED8804(a1, v10, &qword_27C84C988, &qword_20DF4AD10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20DED8730(v10, &qword_27C84C988, &qword_20DF4AD10);
    v16 = 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v20 = v15;
    sub_20DED2AAC(&v20, a3, v7);
    sub_20DED91B0(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_20DF47CE4())
    {
      v16 = sub_20DF47CD4();
    }

    else
    {
      v16 = 0;
    }

    sub_20DED8730(v7, &qword_27C84C980, &unk_20DF49A50);
    (*(v12 + 8))(v14, v11);
  }

  return v16 & 1;
}

uint64_t EnergySite.EnergyUsage.overlapsDateRange(_:displayInterval:in:)(uint64_t a1, char *a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C990, &qword_20DF49A60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C998, &qword_20DF49A68);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  v15 = *a2;
  sub_20DED8804(a1, v10, &qword_27C84C990, &qword_20DF49A60);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20DED8730(v10, &qword_27C84C990, &qword_20DF49A60);
    v16 = 0;
  }

  else
  {
    sub_20DED9CE8(v10, v14, &qword_27C84C998, &qword_20DF49A68);
    v20 = v15;
    sub_20DED2AAC(&v20, v19, v7);
    sub_20DF474E4();
    sub_20DED91B0(&qword_281122978, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_20DF47CD4() & 1) != 0 || (sub_20DF47CE4())
    {
      v16 = 0;
    }

    else
    {
      sub_20DED91B0(&qword_27C84C9A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v16 = sub_20DF47CF4() ^ 1;
    }

    sub_20DED8730(v7, &qword_27C84C980, &unk_20DF49A50);
    sub_20DED8730(v14, &qword_27C84C998, &qword_20DF49A68);
  }

  return v16 & 1;
}

uint64_t sub_20DED35C8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_20DED3614(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DED370C;

  return v6(a1);
}

uint64_t sub_20DED370C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20DED3804(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_20DED388C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_20DED38E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_20DED38E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20DED39B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20DEBA2EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20DED39B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20DED3AC0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20DF481A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20DED3AC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_20DED3B0C(a1, a2);
  sub_20DED3C3C(&unk_282526AD0);
  return v3;
}

void *sub_20DED3B0C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20DED3D28(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20DF481A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20DF47D94();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20DED3D28(v10, 0);
        result = sub_20DF48134();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20DED3C3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20DED3D9C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20DED3D28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA78, &qword_20DF4A090);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20DED3D9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA78, &qword_20DF4A090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_20DED3E90(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_20DED3EA0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_20DED3EC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_20DED3F34@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_20DED3F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v54 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E8, &unk_20DF49F20);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = v45 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v46 = v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v56 = v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v45 - v19;
  v45[0] = v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v45 - v22;
  v45[1] = v45 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v45 - v25;
  v45[2] = v45 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v45 - v27;
  v45[3] = v45 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C970, &qword_20DF49A08);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v45 - v30;
  v32 = sub_20DF47A24();
  v33 = sub_20DF47934();
  v48 = v34;
  v49 = v33;
  v35 = sub_20DF47714();
  (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  v36 = sub_20DF474E4();
  v37 = *(*(v36 - 8) + 56);
  v37(v28, 1, 1, v36);
  v37(v26, 1, 1, v36);
  v37(v23, 1, 1, v36);
  v37(v20, 1, 1, v36);
  v37(v17, 1, 1, v36);
  v37(v56, 1, 1, v36);
  v37(v46, 1, 1, v36);
  v37(v47, 1, 1, v36);
  v37(v52, 1, 1, v36);
  v38 = sub_20DF47B84();
  (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
  v39 = objc_allocWithZone(v32);
  v57 = 1;
  v40 = sub_20DF479A4();
  type metadata accessor for EnergySite();
  v41 = swift_allocObject();
  v41[3] = [objc_opt_self() defaultCenter];
  v41[4] = 0;
  v41[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v41[7] = 0;
  swift_unknownObjectWeakInit();
  v41[2] = v40;
  v42 = v41[5];
  v43 = v40;
  [v42 setMaxConcurrentOperationCount_];
  sub_20DEC70E0();

  return v41;
}

uint64_t sub_20DED44DC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_20DF47BD4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED459C, 0, 0);
}

uint64_t sub_20DED459C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    v5 = swift_task_alloc();
    v0[12] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA20, &qword_20DF49F60);
    *v5 = v0;
    v5[1] = sub_20DED483C;

    return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0x7328657469736B65, 0xEF293A4449657469, sub_20DED8AF4, v4, v6);
  }

  else
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = __swift_project_value_buffer(v9, qword_281122F18);
    swift_beginAccess();
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_20DF47BB4();
    v12 = sub_20DF47FF4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to get site. Site ID is empty.", v13, 2u);
      MEMORY[0x20F329700](v13, -1, -1);
    }

    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[8];

    (*(v15 + 8))(v14, v16);
    sub_20DED4D6C();
    swift_allocError();
    *v17 = 28;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_20DED483C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20DEC0448;
  }

  else
  {

    v2 = sub_20DED4958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DED4958()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DED49C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DED49E4, 0, 0);
}

uint64_t sub_20DED49E4()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_20DED4AC8;
    v5 = v0[2];
    v4 = v0[3];

    return sub_20DED44DC(v5, v4);
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_20DED4AC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_20DED4D00;
  }

  else
  {
    v4 = sub_20DED4BFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DED4BFC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    type metadata accessor for EnergySite();
    v2 = swift_allocObject();
    v2[3] = [objc_opt_self() defaultCenter];
    v2[4] = 0;
    v2[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v2[7] = 0;
    swift_unknownObjectWeakInit();
    v2[2] = v1;
    v3 = v2[5];
    v4 = v1;
    [v3 setMaxConcurrentOperationCount_];
    sub_20DEC70E0();
  }

  else
  {
    v2 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_20DED4D00()
{
  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t sub_20DED4D6C()
{
  result = qword_281122960;
  if (!qword_281122960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281122960);
  }

  return result;
}

uint64_t sub_20DED5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_20DF47BD4();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DED50CC, 0, 0);
}

uint64_t sub_20DED50CC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v0[12] = sub_20DED3F64(v4, v3, v1, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_20DED5194;

  return sub_20DEC7E24();
}

uint64_t sub_20DED5194()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DED52D4, 0, 0);
  }

  else
  {
    v3 = v2[12];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_20DED52D4()
{
  v21 = v0;
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FF4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[11];
  v11 = v0[9];
  v10 = v0[10];
  if (v7)
  {
    v19 = v0[9];
    v13 = v0[5];
    v12 = v0[6];
    v14 = swift_slowAlloc();
    v18 = v9;
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_20DED38E8(v13, v12, &v20);
    _os_log_impl(&dword_20DEAF000, v5, v6, "Failed to register EnergySite(%s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);

    (*(v10 + 8))(v18, v19);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v16 = v0[1];

  return v16(0);
}

unint64_t sub_20DED5560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA60, &qword_20DF49FC8);
    v3 = sub_20DF48244();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_20DEEFA18(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    v4 = MEMORY[0x277D84F90];
    v5 = sub_20DED5560(MEMORY[0x277D84F90]);
    v6 = sub_20DED5560(v4);

    v8 = sub_20DF304B8(v7);

    v10 = sub_20DF30810(v9, v8);
    v11 = 0;
    v12 = v10 + 56;
    v52 = v3;
    v53 = v10;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 56);
    v16 = (v13 + 63) >> 6;
    v51 = a2;
    while (v15)
    {
      v17 = v11;
LABEL_12:
      v18 = *(*(v53 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
      v19 = 0.0;
      v20 = 0.0;
      if (*(a2 + 16))
      {
        v21 = sub_20DEEFA18(v18);
        if (v22)
        {
          v20 = *(*(a2 + 56) + 8 * v21);
        }
      }

      if (*(v3 + 16))
      {
        v23 = sub_20DEEFA18(v18);
        if (v24)
        {
          v19 = *(*(v3 + 56) + 8 * v23);
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v5;
      v26 = sub_20DEEFA18(v18);
      v28 = *(v5 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_41;
      }

      v32 = v27;
      if (*(v5 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = v26;
          sub_20DEF0B48();
          v26 = v48;
        }
      }

      else
      {
        sub_20DEEFEF0(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_20DEEFA18(v18);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_45;
        }
      }

      v34 = v20 - v19;
      v5 = v54;
      if (v32)
      {
        *(v54[7] + 8 * v26) = v34;
      }

      else
      {
        v54[(v26 >> 6) + 8] |= 1 << v26;
        *(v54[6] + 8 * v26) = v18;
        *(v54[7] + 8 * v26) = v34;
        v35 = v54[2];
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_43;
        }

        v54[2] = v36;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v6;
      v38 = sub_20DEEFA18(v18);
      v40 = *(v6 + 16);
      v41 = (v39 & 1) == 0;
      v30 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (v30)
      {
        goto LABEL_42;
      }

      v43 = v39;
      if (*(v6 + 24) >= v42)
      {
        if ((v37 & 1) == 0)
        {
          v49 = v38;
          sub_20DEF0B48();
          v38 = v49;
        }
      }

      else
      {
        sub_20DEEFEF0(v42, v37);
        v38 = sub_20DEEFA18(v18);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_45;
        }
      }

      v3 = v52;
      v15 &= v15 - 1;
      v45 = v20 + v19;
      v6 = v55;
      if (v43)
      {
        *(v55[7] + 8 * v38) = v45;
      }

      else
      {
        v55[(v38 >> 6) + 8] |= 1 << v38;
        *(v55[6] + 8 * v38) = v18;
        *(v55[7] + 8 * v38) = v45;
        v46 = v55[2];
        v30 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v30)
        {
          goto LABEL_44;
        }

        v55[2] = v47;
      }

      v11 = v17;
      a2 = v51;
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        return v5;
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_12;
      }
    }

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
    result = sub_20DF48424();
    __break(1u);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    return a2;
  }

  return result;
}

uint64_t sub_20DED59C0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_20DF47E94();
      *(v4 + 16) = a2;
      bzero((v4 + 32), 8 * a2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
LABEL_13:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (v9 << 9) | (8 * v11);
      v13 = *(*(v3 + 48) + v12);
      if (v13 < a2)
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        *(v4 + 32 + 8 * v13) = *(*(v3 + 56) + v12);
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return v4;
      }

      v7 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DED5B14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20DED5B4C()
{
  result = qword_27C84C960;
  if (!qword_27C84C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C960);
  }

  return result;
}

uint64_t sub_20DED5BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DED5CC4()
{
  result = qword_27C84C9A8;
  if (!qword_27C84C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C9A8);
  }

  return result;
}

unint64_t sub_20DED5D1C()
{
  result = qword_27C84C9B0;
  if (!qword_27C84C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84C9B0);
  }

  return result;
}

uint64_t dispatch thunk of EnergySite.updateLocation(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t dispatch thunk of EnergySite.updateTimezone(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 232) + **(*v2 + 232));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20DEDA9C0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of EnergySite.updateState(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 240) + **(*v2 + 240));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20DEDA9C0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of EnergySite.updateRatePlanInclusionInGuidance(enable:)(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t dispatch thunk of EnergySite.updateFields(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 256) + **(*v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t dispatch thunk of EnergySite.updateSubscription(utilityID:subscriptionID:accessToken:refreshToken:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = (*(*v21 + 264) + **(*v21 + 264));
  v23 = swift_task_alloc();
  *(v22 + 16) = v23;
  *v23 = v22;
  v23[1] = sub_20DEDA9C0;

  return v25(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t dispatch thunk of EnergySite.createUtilitySubscription(utilityID:serviceLocationID:accessToken:refreshToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 272) + **(*v8 + 272));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_20DEDA9C4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of EnergySite.createUtilitySubscription(utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = (*(*v11 + 280) + **(*v11 + 280));
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  *v18 = v12;
  v18[1] = sub_20DEDA9C4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of EnergySite.createUtilitySubscription(utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(*v13 + 288) + **(*v13 + 288));
  v18 = swift_task_alloc();
  *(v14 + 16) = v18;
  *v18 = v14;
  v18[1] = sub_20DEDA9C4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of EnergySite.revokeUtilitySubscription()()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.renewUtilityAccessToken()()
{
  v4 = (*(*v0 + 304) + **(*v0 + 304));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C0;

  return v4();
}

uint64_t dispatch thunk of EnergySite.delete()()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C0;

  return v4();
}

uint64_t dispatch thunk of EnergySite.historicalEnergyUsage(interval:start:bulk:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 352) + **(*v4 + 352));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_20DEBA16C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EnergySite.historicalEnergyUsage(interval:start:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 360) + **(*v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20DEDA9C0;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of EnergySite.intervalReading(interval:start:end:timeZoneIdentifier:flowDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 368) + **(*v8 + 368));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_20DED71AC;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_20DED71AC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of EnergySite.isDataAvailable()()
{
  v4 = (*(*v0 + 376) + **(*v0 + 376));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.currentRatePlans()(uint64_t a1)
{
  v6 = (*(*v1 + 384) + **(*v1 + 384));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t dispatch thunk of EnergySite.currentUtilityPeakPeriods()()
{
  v4 = (*(*v0 + 392) + **(*v0 + 392));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.currentUtilityPeakPeriodsWithInfo()(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t dispatch thunk of EnergySite.isTOU()()
{
  v4 = (*(*v0 + 408) + **(*v0 + 408));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.isTiered()()
{
  v4 = (*(*v0 + 416) + **(*v0 + 416));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.isFlat()()
{
  v4 = (*(*v0 + 424) + **(*v0 + 424));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.isFixed()()
{
  v4 = (*(*v0 + 432) + **(*v0 + 432));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C4;

  return v4();
}

uint64_t dispatch thunk of EnergySite.isUnsupported()()
{
  v4 = (*(*v0 + 440) + **(*v0 + 440));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DED71AC;

  return v4();
}

uint64_t dispatch thunk of EnergySite.refreshCurrentUtilityPeakPeriods(start:)(uint64_t a1)
{
  v6 = (*(*v1 + 448) + **(*v1 + 448));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for Logging(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Logging(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20DED7F58(uint64_t a1)
{
  sub_20DF474E4();
  if (v1 <= 0x3F)
  {
    sub_20DED8058();
    if (v2 <= 0x3F)
    {
      sub_20DED8200(319, &qword_281122588, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DED8058()
{
  if (!qword_281122598)
  {
    v0 = sub_20DF47C74();
    if (!v1)
    {
      atomic_store(v0, &qword_281122598);
    }
  }
}

void sub_20DED80E0(uint64_t a1)
{
  sub_20DF474E4();
  if (v1 <= 0x3F)
  {
    sub_20DED81A8(319);
    if (v2 <= 0x3F)
    {
      sub_20DED8200(319, &qword_27C84C9C8, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20DED81A8(uint64_t a1)
{
  if (!qword_281122590)
  {
    type metadata accessor for EnergySite.EnergyUsage(255);
    v1 = sub_20DF47EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_281122590);
    }
  }
}

void sub_20DED8200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839F8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20DED8254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9D0, &qword_20DF49EC8);
    v3 = sub_20DF48244();
    v4 = a1 + 32;

    while (1)
    {
      sub_20DED8804(v4, v13, &qword_27C84C9D8, &unk_20DF49ED0);
      result = sub_20DEEF9D4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_20DED8390(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_20DED8390(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20DED83E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC8354(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED8514(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DEDA9C0;

  return sub_20DED3614(a1, v4);
}

unint64_t sub_20DED8600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F0, &qword_20DF4AD80);
    v3 = sub_20DF48244();
    v4 = a1 + 32;

    while (1)
    {
      sub_20DED8804(v4, &v13, &qword_27C84C9F8, &unk_20DF49F30);
      v5 = v13;
      v6 = v14;
      result = sub_20DEEFAE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20DED8390(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_20DED8730(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DED8804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DED886C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20DF474E4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20DEDA9C0;

  return sub_20DED2180(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

unint64_t sub_20DED8A00()
{
  result = qword_281122980;
  if (!qword_281122980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281122980);
  }

  return result;
}

uint64_t sub_20DED8A4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20DED8AA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20DED8AFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA28, &qword_20DF49F68) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEC8D20(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DED8CE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DECD84C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED8EC0(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8) - 8);
  v13 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20DF474E4();
  sub_20DF47604();
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v6 = *(v1 + v3 + 8);
  v7 = *(v1 + v3);
  v4 = swift_task_alloc();
  *(v12 + 16) = v4;
  *v4 = v12;
  v4[1] = sub_20DEDA9C0;

  return sub_20DECC974(a1, v11, v10, v9, v8, v1 + v13, v7, v6);
}

uint64_t sub_20DED9130(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA48, &qword_20DF49FA8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_20DECD01C(a1, v3, v4);
}

uint64_t sub_20DED91B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DED91F8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC9408(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED9340(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC68A8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_20DED9558(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC6054(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DED969C(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_20DF474E4();
  v12 = *(v1 + v3);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v8 = *(v1 + v4 + 8);
  v9 = *(v1 + v4);
  v7 = *(v1 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v13 + 16) = v5;
  *v5 = v13;
  v5[1] = sub_20DEDA9C0;

  return sub_20DEC53FC(a1, v11, v10, v1 + v14, v12, v9, v8, v7);
}

uint64_t sub_20DED98F8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_20DF474E4();
  v12 = *(v1 + 24);
  v13 = *(v1 + 16);
  v11 = *(v1 + v4);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return sub_20DEC40AC(a1, v13, v12, v1 + v14, v11, v10, v9, v8);
}

uint64_t sub_20DED9B30(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 24);
  v14 = *(v1 + 16);
  v12 = *(v1 + v5);
  v7 = *(v1 + v6 + 8);
  v11 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEC2E00(a1, v14, v13, v1 + v4, v12, v11, v7, v8);
}

uint64_t sub_20DED9CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20DED9D50(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v10 = *(v1 + v3);
  v8 = *(v1 + v4 + 8);
  v9 = *(v1 + v4);
  v7 = *(v1 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v13 + 16) = v5;
  *v5 = v13;
  v5[1] = sub_20DEDA9C0;

  return sub_20DEC1A08(a1, v12, v11, v1 + v14, v10, v9, v8, v7);
}

uint64_t sub_20DEDA038(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEC06CC(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_20DEDA198(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEBF858(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DEDA2F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20DEBA16C;

  return sub_20DEBE858(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t objectdestroy_269Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20DEDA55C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20DEDA9C0;

  return sub_20DEBD9C4(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_20DEDA6C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20DEDA754(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA68, &qword_20DF49FE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEBCA28(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t objectdestroy_130Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20DEDA9EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DF47404();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_20DF473D4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20DEDAB24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20DEDAB84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_20DEDAC18;
}

void sub_20DEDAC18(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_20DEDAC9C()
{
  v1 = sub_20DF47BD4();
  v0[14] = v1;
  v0[15] = *(v1 - 8);
  v0[16] = swift_task_alloc();
  v0[11] = MEMORY[0x277D84F90];
  v2 = swift_task_alloc();
  v0[17] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  *v2 = v0;
  v2[1] = sub_20DEDADF4;

  return MEMORY[0x2822008A0](v0 + 12, 0, 0, 0x6953796772656E65, 0xEF29287344496574, sub_20DEDC0F0, 0, v3);
}

uint64_t sub_20DEDADF4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20DEDB74C;
  }

  else
  {
    v2 = sub_20DEDAF08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20DEDAF08()
{
  v1 = 0;
  v2 = *(v0 + 96);
  *(v0 + 152) = v2;
  v3 = *(v2 + 32);
  *(v0 + 216) = v3;
  v4 = 1 << v3;
  v5 = *(v2 + 56);
  v6 = v4 < 64;
  v7 = -1 << v4;
  if (v6)
  {
    v8 = ~v7;
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  *(v0 + 160) = MEMORY[0x277D84F90];
  if (v9)
  {
    while (1)
    {
      v10 = *(v0 + 152);
LABEL_10:
      *(v0 + 168) = v9;
      *(v0 + 176) = v1;
      v12 = (*(v10 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v9)))));
      v13 = *v12;
      v14 = v12[1];
      *(v0 + 184) = v14;
      v15 = (v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v13 & 0xFFFFFFFFFFFFLL;

      if (v15)
      {
        break;
      }

      v1 = *(v0 + 176);
      v9 = (*(v0 + 168) - 1) & *(v0 + 168);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_20DEDB0D0;

    sub_20DED44DC(v13, v14);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v0 + 152);
      v9 = *(v10 + 8 * v11 + 56);
      ++v1;
      if (v9)
      {
        v1 = v11;
        goto LABEL_10;
      }
    }

    v16 = *(v0 + 160);

    v17 = *(v0 + 8);

    v17(v16);
  }
}

uint64_t sub_20DEDB0D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_20DEDB5BC;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_20DEDB21C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DEDB21C(unint64_t a1)
{
  v2 = v1[26];
  if (!v2)
  {
    goto LABEL_19;
  }

  type metadata accessor for EnergySite();
  v3 = swift_allocObject();
  v3[3] = [objc_opt_self() defaultCenter];
  v3[4] = 0;
  v3[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v3[7] = 0;
  swift_unknownObjectWeakInit();
  v3[2] = v2;
  v4 = v3[5];
  v5 = v2;
  [v4 setMaxConcurrentOperationCount_];
  sub_20DF477C4();
  v6 = sub_20DF47D04();

  v7 = v3[3];
  v8 = v3[5];
  v1[6] = sub_20DED87E4;
  v1[7] = v3;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_20DEDA9EC;
  v1[5] = &block_descriptor_1;
  v9 = _Block_copy(v1 + 2);
  v10 = v6;
  v11 = v8;

  v12 = [v7 addObserverForName:v10 object:0 queue:v11 usingBlock:v9];

  _Block_release(v9);
  v3[4] = v12;
  swift_unknownObjectRelease();

  MEMORY[0x20F328A20](v13);
  if (*((v1[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_20DF47EA4();

  v14 = v1[22];
  v15 = (v1[21] - 1) & v1[21];
  v1[20] = v1[11];
  if (!v15)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v17 = v1[19];
LABEL_14:
    v1[21] = v15;
    v1[22] = v14;
    v21 = (*(v17 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15)))));
    v22 = *v21;
    v23 = v21[1];
    v1[23] = v23;
    v24 = (v23 & 0x2000000000000000) != 0 ? HIBYTE(v23) & 0xF : v22 & 0xFFFFFFFFFFFFLL;

    if (v24)
    {
      break;
    }

LABEL_19:
    v14 = v1[22];
    v15 = (v1[21] - 1) & v1[21];
    if (!v15)
    {
LABEL_4:
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = v1[19];
        if (v16 >= (((1 << *(v1 + 216)) + 63) >> 6))
        {

          v18 = v1[20];

          v19 = v1[1];

          return v19(v18);
        }

        v15 = *(v17 + 8 * v16 + 56);
        ++v14;
        if (v15)
        {
          v14 = v16;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_12:
      sub_20DF47E84();
      goto LABEL_3;
    }
  }

  v25 = swift_task_alloc();
  v1[24] = v25;
  *v25 = v1;
  v25[1] = sub_20DEDB0D0;

  return sub_20DED44DC(v22, v23);
}

void sub_20DEDB5BC()
{
  while (1)
  {
    v1 = *(v0 + 176);
    v2 = (*(v0 + 168) - 1) & *(v0 + 168);
    if (!v2)
    {
      break;
    }

    v3 = *(v0 + 152);
LABEL_8:
    *(v0 + 168) = v2;
    *(v0 + 176) = v1;
    v5 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v6 = *v5;
    v7 = v5[1];
    *(v0 + 184) = v7;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v11 = swift_task_alloc();
      *(v0 + 192) = v11;
      *v11 = v0;
      v11[1] = sub_20DEDB0D0;

      sub_20DED44DC(v6, v7);
      return;
    }
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v4 >= (((1 << *(v0 + 216)) + 63) >> 6))
    {
      break;
    }

    v3 = *(v0 + 152);
    v2 = *(v3 + 8 * v4 + 56);
    ++v1;
    if (v2)
    {
      v1 = v4;
      goto LABEL_8;
    }
  }

  v9 = *(v0 + 160);

  v10 = *(v0 + 8);

  v10(v9);
}

uint64_t sub_20DEDB74C()
{
  v25 = v0;
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];
  if (v9)
  {
    v23 = v0[16];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0x7365746973, 0xE500000000000000, &v24);
    *(v14 + 12) = 2080;
    v0[13] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v24);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v7, v8, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);

    (*(v11 + 8))(v23, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v20 = v0[1];
  v21 = MEMORY[0x277D84F90];

  return v20(v21);
}

uint64_t static EnergyKitManager.energySiteIDs()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  *v1 = v0;
  v1[1] = sub_20DEDBAB4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6953796772656E65, 0xEF29287344496574, sub_20DEDC0F0, 0, v2);
}

uint64_t sub_20DEDBAB4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_20DEC93F0;
  }

  else
  {
    v2 = sub_20DEDBBC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *EnergyKitManager.__allocating_init(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v5[4] = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v5[3] = a2;
  swift_unknownObjectWeakAssign();
  v5[5] = a3;
  v6 = a3;
  sub_20DEDBD58(v6);
  swift_unknownObjectRelease();

  return v5;
}

void *EnergyKitManager.init(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  v3[3] = a2;
  swift_unknownObjectWeakAssign();
  v3[5] = a3;
  v6 = a3;
  sub_20DEDBD58(v6);
  swift_unknownObjectRelease();

  return v3;
}

void sub_20DEDBD58(uint64_t a1)
{
  sub_20DF477C4();
  v2 = sub_20DF47D04();

  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8[4] = sub_20DEDCE1C;
  v9 = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20DEDA9EC;
  v8[3] = &block_descriptor_11;
  v5 = _Block_copy(v8);
  v6 = v2;

  v7 = [v3 addObserverForName:v6 object:0 queue:v4 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

uint64_t sub_20DEDBE6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DF473F4();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_20DF47774();
  sub_20DF48104();
  if (!*(v4 + 16) || (v5 = sub_20DEEF9D4(&v20), (v6 & 1) == 0))
  {

    sub_20DED8790(&v20);
LABEL_10:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_11;
  }

  sub_20DEBA2EC(*(v4 + 56) + 32 * v5, &v22);
  sub_20DED8790(&v20);

  if (!*(&v23 + 1))
  {
LABEL_11:
    sub_20DEDCE24(&v22);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v7 = v20;
    v8 = v21;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v7, v8, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

LABEL_12:
  v11 = sub_20DF473F4();
  if (!v11)
  {
LABEL_21:
    v22 = 0u;
    v23 = 0u;
    return sub_20DEDCE24(&v22);
  }

  v12 = v11;
  sub_20DF47784();
  sub_20DF48104();
  if (!*(v12 + 16) || (v13 = sub_20DEEF9D4(&v20), (v14 & 1) == 0))
  {

    sub_20DED8790(&v20);
    goto LABEL_21;
  }

  sub_20DEBA2EC(*(v12 + 56) + 32 * v13, &v22);
  sub_20DED8790(&v20);

  if (!*(&v23 + 1))
  {
    return sub_20DEDCE24(&v22);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v16 = v20;
    v17 = v21;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(a2 + 24);
      v19 = swift_getObjectType();
      (*(v18 + 16))(v16, v17, v19, v18);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20DEDC0F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_20DF47F04();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_20DEBB534(0, 0, v8, &unk_20DF4A190, v11);
}

uint64_t sub_20DEDC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v4[24] = *(v6 + 64);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEDC3A0, 0, 0);
}

uint64_t sub_20DEDC3A0()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = sub_20DF3D598(sub_20DEDCF88, v6);
  v0[27] = v7;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEDC594;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA90, &qword_20DF4A198);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEDCAB4;
  v0[13] = &block_descriptor_18;
  v0[14] = v8;
  [v7 getAllSiteIDsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DEDC594()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_20DEDC744;
  }

  else
  {
    v2 = sub_20DEDC6A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEDC6A4()
{
  v1 = v0[26];
  v2 = v0[18];
  swift_unknownObjectRelease();
  [*(v1 + 16) invalidate];
  v0[20] = v2;
  sub_20DF47EE4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DEDC744()
{
  v1 = v0[28];
  swift_willThrow();

  swift_unknownObjectRelease();
  v0[19] = v1;
  sub_20DF47ED4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_20DEDC7F0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_20DED38E8(0x6953796772656E65, 0xEF29287344496574, &v22);
    *(v13 + 12) = 2080;
    v21[1] = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v16 = sub_20DF47D24();
    v18 = sub_20DED38E8(v16, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_20DEAF000, v10, v11, "%s error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v22 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178);
  return sub_20DF47ED4();
}

uint64_t sub_20DEDCAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_20DF47F94();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t EnergyKitManager.deinit()
{
  sub_20DED5C98(v0 + 16);

  return v0;
}

uint64_t EnergyKitManager.__deallocating_deinit()
{
  sub_20DED5C98(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of EnergyKitManager.sites.getter()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEBBAA8;

  return v4();
}

uint64_t sub_20DEDCE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA00, &qword_20DF4A170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DEDCE8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEBA16C;

  return sub_20DEDC2CC(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DEDCF88(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA88, &unk_20DF4A178) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20DEDC7F0(a1, v4);
}

uint64_t EnergyKitError.errorDescription.getter()
{
  sub_20DEDD078(&v2);
  v0 = v2;

  sub_20DEDD2C8(&v2);
  return v0;
}

void sub_20DEDD078(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = 0uLL;
  if (*v1 <= 3u)
  {
    if (*v1 > 1u)
    {
      if (v2 == 2)
      {
        v4 = 0;
        v5 = 0;
        v2 = 0xD000000000000028;
        v6 = 0x800000020DF4F080;
        v7 = 0x800000020DF4F0C0;
        v3 = xmmword_20DF4A1A0;
        v8 = 0xD000000000000036;
      }

      else
      {
        v2 = 0xD000000000000028;
        v6 = 0x800000020DF4EFF0;
        v7 = 0x800000020DF4F020;
        v5 = 0x800000020DF4F050;
        v8 = 0xD000000000000020;
        v4 = 0xD000000000000022;
      }
    }

    else if (*v1)
    {
      v2 = 0;
      v7 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0x800000020DF4F0F0;
      v8 = 0xD000000000000039;
    }

    else
    {
      v6 = 0xED0000726F727245;
      v8 = 0x206E776F6E6B6E55;
      v7 = *v1;
      v4 = v7;
      v5 = v7;
    }
  }

  else if (*v1 <= 5u)
  {
    if (v2 == 4)
    {
      v2 = 0;
      v7 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0x800000020DF4EFB0;
      v8 = 0xD000000000000038;
    }

    else
    {
      v2 = 0;
      v7 = 0;
      v6 = 0x800000020DF4EE80;
      v5 = 0x800000020DF4EEE0;
      v8 = 0xD00000000000005DLL;
      v4 = 0x10000000000000C7;
    }
  }

  else if (v2 == 6)
  {
    v2 = 0;
    v7 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0x800000020DF4EE60;
    v8 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (v2 == 7)
    {
      v6 = 0x800000020DF4EE10;
      v7 = 0x800000020DF4EE40;
      v2 = 0xD00000000000001CLL;
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD000000000000028;
      v6 = 0x800000020DF4ED90;
      v7 = 0x800000020DF4EDC0;
      v2 = 0xD000000000000045;
    }
  }

  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
}

uint64_t EnergyKitError.failureReason.getter()
{
  sub_20DEDD078(v2);
  v0 = v3;

  sub_20DEDD2C8(v2);
  return v0;
}

uint64_t EnergyKitError.helpAnchor.getter()
{
  sub_20DEDD078(v2);
  v0 = v3;

  sub_20DEDD2C8(v2);
  return v0;
}

uint64_t EnergyKitError.recoverySuggestion.getter()
{
  sub_20DEDD078(v2);
  v0 = v3;

  sub_20DEDD2C8(v2);
  return v0;
}

uint64_t EnergyKitError.hashValue.getter()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

unint64_t sub_20DEDD480()
{
  result = qword_27C84CA98;
  if (!qword_27C84CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CA98);
  }

  return result;
}

unint64_t sub_20DEDD4D8()
{
  result = qword_27C84CAA0;
  if (!qword_27C84CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAA0);
  }

  return result;
}

uint64_t sub_20DEDD52C()
{
  sub_20DEDD078(&v2);
  v0 = v2;

  sub_20DEDD2C8(&v2);
  return v0;
}

uint64_t sub_20DEDD580()
{
  sub_20DEDD078(v2);
  v0 = v3;

  sub_20DEDD2C8(v2);
  return v0;
}

uint64_t sub_20DEDD5D4()
{
  sub_20DEDD078(v2);
  v0 = v3;

  sub_20DEDD2C8(v2);
  return v0;
}

uint64_t sub_20DEDD628()
{
  sub_20DEDD078(v2);
  v0 = v3;

  sub_20DEDD2C8(v2);
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

uint64_t sub_20DEDD7E0(uint64_t a1, int a2)
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

uint64_t sub_20DEDD828(uint64_t result, int a2, int a3)
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

uint64_t defaultLogger(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (qword_27C84C730 != -1)
      {
        swift_once();
      }

      v4 = sub_20DF47BD4();
      v5 = v4;
      v6 = qword_27C851F60;
    }

    else
    {
      if (qword_27C84C728 != -1)
      {
        swift_once();
      }

      v4 = sub_20DF47BD4();
      v5 = v4;
      v6 = qword_27C851F48;
    }
  }

  else if (v3 == 2)
  {
    if (qword_2811225A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20DF47BD4();
    v5 = v4;
    v6 = qword_281122F00;
  }

  else if (v3 == 3)
  {
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v4 = sub_20DF47BD4();
    v5 = v4;
    v6 = qword_281122F18;
  }

  else
  {
    if (qword_27C84C738 != -1)
    {
      swift_once();
    }

    v4 = sub_20DF47BD4();
    v5 = v4;
    v6 = qword_27C851F78;
  }

  v7 = __swift_project_value_buffer(v4, v6);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a2, v7, v5);
}

uint64_t sub_20DEDDA88()
{
  sub_20DEDE4B4();
  result = sub_20DF48054();
  qword_27C851F40 = result;
  return result;
}

uint64_t sub_20DEDDB94()
{
  v0 = sub_20DF47BA4();
  __swift_allocate_value_buffer(v0, qword_27C851F90);
  __swift_project_value_buffer(v0, qword_27C851F90);
  return sub_20DF47B94();
}

uint64_t Logging.description.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

EnergyKitInternal::Logging_optional __swiftcall Logging.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20DEDDCE0()
{
  v1 = *v0;
  v2 = 0x6E6F6D656144;
  v3 = 0x7254796772656E45;
  v4 = 0x7246746E65696C43;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E41;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x646572616853;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void setDefaultLog(_:)(void *a1)
{
  if (qword_27C84C720 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3 = qword_27C851F40;
  qword_27C851F40 = a1;
  v1 = a1;
}

uint64_t sub_20DEDDEC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_20DF47BD4();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  (*(*(v6 - 8) + 24))(v7, a1, v6);
  return swift_endAccess();
}

id defaultLog()()
{
  if (qword_27C84C720 != -1)
  {
    swift_once();
  }

  v1 = qword_27C851F40;

  return v1;
}

Swift::Void __swiftcall setProcessName(_:)(Swift::String a1)
{
  xmmword_27C84CAA8 = a1;
}

Swift::String_optional __swiftcall processName()()
{
  v0 = xmmword_27C84CAA8;

  v2 = (v0 >> 64);
  v1 = v0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t ekSignposter()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C84C740 != -1)
  {
    swift_once();
  }

  v2 = sub_20DF47BA4();
  v3 = __swift_project_value_buffer(v2, qword_27C851F90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_20DEDE128(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20DF47BD4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_20DF47BC4();
}

Swift::Void __swiftcall logMilestone(tag:description:)(Swift::String tag, Swift::String description)
{
  object = description._object;
  countAndFlagsBits = description._countAndFlagsBits;
  v4 = tag._object;
  v5 = tag._countAndFlagsBits;
  v6 = sub_20DF47BD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C748 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_27C851FA8);
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FE4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = countAndFlagsBits;
    v14 = v13;
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(v5, v4, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20DED38E8(v16, object, &v17);
    _os_log_impl(&dword_20DEAF000, v11, v12, "(%s) %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

unint64_t sub_20DEDE3EC()
{
  result = qword_27C84CAB8;
  if (!qword_27C84CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAB8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_20DEDE4B4()
{
  result = qword_27C84CAC0;
  if (!qword_27C84CAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C84CAC0);
  }

  return result;
}

uint64_t GuidanceValue.init(interval:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_20DF473B4();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for GuidanceValue(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t type metadata accessor for GuidanceValue(uint64_t a1)
{
  result = qword_27C84CAE8;
  if (!qword_27C84CAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GuidanceValue.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF473B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL static GuidanceValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20DF47394() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GuidanceValue(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_20DEDE6BC()
{
  if (*v0)
  {
    return 0x676E69746172;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_20DEDE6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_20DF483D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20DF483D4();

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

uint64_t sub_20DEDE7D8(uint64_t a1)
{
  v2 = sub_20DEDEA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DEDE814(uint64_t a1)
{
  v2 = sub_20DEDEA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuidanceValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CAC8, &qword_20DF4A450);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEDEA08();
  sub_20DF484F4();
  v8[15] = 0;
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C830, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  sub_20DF48384();
  if (!v1)
  {
    type metadata accessor for GuidanceValue(0);
    v8[14] = 1;
    sub_20DF48364();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DEDEA08()
{
  result = qword_27C84CAD0;
  if (!qword_27C84CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAD0);
  }

  return result;
}

uint64_t GuidanceValue.hash(into:)(uint64_t a1)
{
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_20DF47CA4();
  v2 = *(v1 + *(type metadata accessor for GuidanceValue(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x20F3290A0](*&v2);
}

uint64_t GuidanceValue.hashValue.getter()
{
  sub_20DF48494();
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_20DF47CA4();
  v1 = *(v0 + *(type metadata accessor for GuidanceValue(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v1);
  return sub_20DF484D4();
}

uint64_t GuidanceValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = sub_20DF473B4();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CAD8, &qword_20DF4A458);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v17 - v6;
  v8 = type metadata accessor for GuidanceValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEDEA08();
  sub_20DF484E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v11 = v20;
  v25 = 0;
  sub_20DEDF178(&qword_27C84C880, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v12 = v22;
  sub_20DF482E4();
  v13 = v18;
  (*(v11 + 32))(v18, v5, v12);
  v24 = 1;
  sub_20DF482C4();
  v15 = v14;
  (*(v21 + 8))(v7, v23);
  *(v13 + *(v8 + 20)) = v15;
  sub_20DEDF070(v13, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20DEDF0D4(v13);
}

uint64_t sub_20DEDEF24(uint64_t a1, uint64_t a2)
{
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_20DF47CA4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x20F3290A0](*&v4);
}

uint64_t sub_20DEDEFC0(uint64_t a1, uint64_t a2)
{
  sub_20DF48494();
  sub_20DF473B4();
  sub_20DEDF178(&qword_27C84C860, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_20DF47CA4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v4);
  return sub_20DF484D4();
}

uint64_t sub_20DEDF070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidanceValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DEDF0D4(uint64_t a1)
{
  v2 = type metadata accessor for GuidanceValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DEDF178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DEDF23C(uint64_t a1)
{
  result = sub_20DF473B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuidanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DEDF404()
{
  result = qword_27C84CAF8;
  if (!qword_27C84CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CAF8);
  }

  return result;
}

unint64_t sub_20DEDF45C()
{
  result = qword_27C84CB00;
  if (!qword_27C84CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB00);
  }

  return result;
}

unint64_t sub_20DEDF4B4()
{
  result = qword_27C84CB08;
  if (!qword_27C84CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB08);
  }

  return result;
}

uint64_t sub_20DEDF50C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_20DEDF628()
{
  v0[2] = v0[3];
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[4] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20DEDF78C;

  return sub_20DEDF960(v0 + 2, v3);
}

uint64_t sub_20DEDF78C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DEDF960(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 152) = a2;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_20DEDF984, 0, 0);
}

uint64_t sub_20DEDF984()
{
  v1 = v0[19];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v0[14] = sub_20DEDFEA0;
  v0[15] = v2;
  v3 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3C970;
  v0[13] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 10);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = v0[20];
    v8 = v0[18];
    v0[21] = v8;
    v0[2] = v0;
    v0[3] = sub_20DEDFBE4;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
    v0[10] = v3;
    v0[11] = 1107296256;
    v0[12] = sub_20DF2B4C4;
    v0[13] = &block_descriptor_8;
    v0[14] = v9;
    [v8 setMockOptionsWithOptions:v7 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    [v0[19] invalidate];
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20DEDFBE4()
{

  return MEMORY[0x2822009F8](sub_20DEDFCC4, 0, 0);
}

uint64_t sub_20DEDFCC4()
{
  swift_unknownObjectRelease();
  [*(v0 + 152) invalidate];
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_20DEDFD38()
{
  result = qword_27C84CB10;
  if (!qword_27C84CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB10);
  }

  return result;
}

unint64_t sub_20DEDFD90()
{
  result = qword_27C84CB18;
  if (!qword_27C84CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB18);
  }

  return result;
}

unint64_t sub_20DEDFDE4()
{
  result = qword_27C84CB20;
  if (!qword_27C84CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB20);
  }

  return result;
}

unint64_t sub_20DEDFE3C()
{
  result = qword_27C84CB28;
  if (!qword_27C84CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CB28);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  return sub_20DEBA2EC(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_7(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
}

id XPCEKSandboxExtensionContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCEKSandboxExtensionContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t XPCEKSandboxExtensionContainer.__allocating_init(coder:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v3, type metadata accessor for XPCEKSandboxExtensionContainer, &protocol conformance descriptor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60, &protocol conformance descriptor for EKSandboxExtension, MEMORY[0x277D83978]);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70, &protocol conformance descriptor for EKSandboxExtension, MEMORY[0x277D83948]);
  v4 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t XPCEKSandboxExtensionContainer.init(coder:)(uint64_t a1)
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v1, type metadata accessor for XPCEKSandboxExtensionContainer, &protocol conformance descriptor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60, &protocol conformance descriptor for EKSandboxExtension, MEMORY[0x277D83978]);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70, &protocol conformance descriptor for EKSandboxExtension, MEMORY[0x277D83948]);
  v2 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_20DEE0220(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84CB58, "<d");
    sub_20DEE02C0(a2, 255, type metadata accessor for EKSandboxExtension, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DEE02C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::Void __swiftcall XPCEKSandboxExtensionContainer.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  sub_20DEE02C0(&qword_27C84CB48, v1, type metadata accessor for XPCEKSandboxExtensionContainer, &protocol conformance descriptor for XPCEKSandboxExtensionContainer);
  sub_20DEE0220(&qword_27C84CB50, &qword_27C84CB60, &protocol conformance descriptor for EKSandboxExtension, MEMORY[0x277D83978]);
  sub_20DEE0220(&qword_27C84CB68, &unk_27C84CB70, &protocol conformance descriptor for EKSandboxExtension, MEMORY[0x277D83948]);

  sub_20DF47B34();
}

id XPCEKSandboxExtensionContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEKSandboxExtensionContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20DEE0778(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_20DEE07F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidanceValue(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_20DEE1B88(v13, v10, type metadata accessor for GuidanceValue);
    if (!v11)
    {
      break;
    }

    sub_20DEE1B88(v14, v7, type metadata accessor for GuidanceValue);
    if ((sub_20DF47394() & 1) == 0)
    {
      sub_20DEE1BF0(v7, type metadata accessor for GuidanceValue);
      sub_20DEE1BF0(v10, type metadata accessor for GuidanceValue);
      return 0;
    }

    v17 = *&v10[*(v4 + 20)];
    sub_20DEE1BF0(v10, type metadata accessor for GuidanceValue);
    v18 = *&v7[*(v4 + 20)];
    sub_20DEE1BF0(v7, type metadata accessor for GuidanceValue);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DEE09F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnergyGuidance.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF474E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EnergyGuidance.end.getter()
{
  v1 = type metadata accessor for EnergyGuidance(0);
  v2.n128_f64[0] = *(v0 + *(v1 + 20)) * *(*(v0 + *(v1 + 24)) + 16);

  return MEMORY[0x28211D9B8](v0, v2);
}

uint64_t type metadata accessor for EnergyGuidance(uint64_t a1)
{
  result = qword_27C84CC88;
  if (!qword_27C84CC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyGuidance.signal.getter()
{
  type metadata accessor for EnergyGuidance(0);
}

uint64_t static EnergyGuidance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_20DF474A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EnergyGuidance(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_20DEE09F4(v6, v7);
}

uint64_t sub_20DEE0C28()
{
  v1 = 0x6C61767265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_20DEE0C7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DEE1A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DEE0CB0(uint64_t a1)
{
  v2 = sub_20DEE0F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DEE0CEC(uint64_t a1)
{
  v2 = sub_20DEE0F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC40, &qword_20DF4A9B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEE0F60();
  sub_20DF484F4();
  v14 = 0;
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CC50, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_20DF48384();
  if (!v2)
  {
    v9 = type metadata accessor for EnergyGuidance(0);
    v13 = 1;
    sub_20DF48364();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC58, &qword_20DF4A9B8);
    sub_20DEE1760(&qword_27C84CC60, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
    sub_20DF48384();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20DEE0F60()
{
  result = qword_27C84CC48;
  if (!qword_27C84CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CC48);
  }

  return result;
}

uint64_t EnergyGuidance.hash(into:)(uint64_t a1)
{
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20DF47CA4();
  v3 = type metadata accessor for EnergyGuidance(0);
  v4 = *(v1 + *(v3 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v4);
  v5 = *(v1 + *(v3 + 24));

  return sub_20DEB885C(a1, v5);
}

uint64_t EnergyGuidance.hashValue.getter()
{
  sub_20DF48494();
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20DF47CA4();
  v1 = type metadata accessor for EnergyGuidance(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v2);
  sub_20DEB885C(v4, *(v0 + *(v1 + 24)));
  return sub_20DF484D4();
}

uint64_t EnergyGuidance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_20DF474E4();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC68, &qword_20DF4A9C0);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for EnergyGuidance(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DEE0F60();
  sub_20DF484E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v25 = 0;
  sub_20DEE1814(&qword_27C84CC70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v14 = v20;
  sub_20DF482E4();
  (*(v13 + 32))(v12, v21, v4);
  v24 = 1;
  sub_20DF482C4();
  v21 = v9;
  *(v12 + *(v9 + 20)) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CC58, &qword_20DF4A9B8);
  v23 = 2;
  sub_20DEE1760(&qword_27C84CC78, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_20DF482E4();
  (*(v19 + 8))(v8, v14);
  *(v12 + *(v21 + 6)) = v22;
  sub_20DEE1B88(v12, v17, type metadata accessor for EnergyGuidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20DEE1BF0(v12, type metadata accessor for EnergyGuidance);
}

uint64_t sub_20DEE155C(uint64_t a1, uint64_t a2)
{
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20DF47CA4();
  v5 = *(v2 + *(a2 + 20));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v5);
  v6 = *(v2 + *(a2 + 24));

  return sub_20DEB885C(a1, v6);
}

uint64_t sub_20DEE1620(uint64_t a1, uint64_t a2)
{
  sub_20DF48494();
  sub_20DF474E4();
  sub_20DEE1814(&qword_27C84CA58, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_20DF47CA4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F3290A0](*&v4);
  sub_20DEB885C(v6, *(v2 + *(a2 + 24)));
  return sub_20DF484D4();
}

uint64_t sub_20DEE16E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_20DF474A4() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_20DEE09F4(v7, v8);
}

uint64_t sub_20DEE1760(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84CC58, &qword_20DF4A9B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DEE1814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20DEE1884(uint64_t a1)
{
  sub_20DF474E4();
  if (v1 <= 0x3F)
  {
    sub_20DEE1910();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DEE1910()
{
  if (!qword_281122588)
  {
    v0 = sub_20DF47EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_281122588);
    }
  }
}

unint64_t sub_20DEE1974()
{
  result = qword_27C84CC98;
  if (!qword_27C84CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CC98);
  }

  return result;
}

unint64_t sub_20DEE19CC()
{
  result = qword_27C84CCA0;
  if (!qword_27C84CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CCA0);
  }

  return result;
}

unint64_t sub_20DEE1A24()
{
  result = qword_27C84CCA8;
  if (!qword_27C84CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CCA8);
  }

  return result;
}

uint64_t sub_20DEE1A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E676973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20DF483D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DEE1B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20DEE1BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20DEE1C60(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DEE1D38(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = a5;
  *(v5 + 320) = a2;
  *(v5 + 240) = a1;
  *(v5 + 248) = a3;
  return MEMORY[0x2822009F8](sub_20DEE1D60, 0, 0);
}

uint64_t sub_20DEE1D60()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[34] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_20DEE1EFC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v7);
}

uint64_t sub_20DEE1EFC()
{

  return MEMORY[0x2822009F8](sub_20DEE2014, 0, 0);
}

uint64_t sub_20DEE2014()
{
  v1 = *(v0 + 264);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_48;
  v3 = _Block_copy((v0 + 144));
  v4 = v1;

  v5 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 224);
    *(v0 + 296) = v7;
    v8 = sub_20DF47D04();
    *(v0 + 304) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE22CC;
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD0, &qword_20DF4AC70);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE5F98;
    *(v0 + 104) = &block_descriptor_52;
    *(v0 + 112) = v9;
    [v7 guidanceWithQuery:v6 gridID:v8 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_20DEE22CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_20DEE2484;
  }

  else
  {
    v2 = sub_20DEE23DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEE23DC()
{
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[30];
  swift_unknownObjectRelease();
  v4 = v0[29];

  sub_20DEE5ED0(v4 + OBJC_IVAR____TtC17EnergyKitInternal20XPCGuidanceContainer_value, v3);
  [v2 invalidate];
  v5 = v0[1];

  return v5();
}

uint64_t sub_20DEE2484()
{
  v1 = *(v0 + 304);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DEE2500(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_20DEE2564(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_20DF47C34();

  return swift_continuation_resume();
}

uint64_t sub_20DEE25E0(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_20DF47E64();

  return swift_continuation_resume();
}

uint64_t sub_20DEE2684(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_20DF47424();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEE2744, 0, 0);
}

uint64_t sub_20DEE2744()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[39] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[40] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_20DEE28E0;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v7);
}

uint64_t sub_20DEE28E0()
{

  return MEMORY[0x2822009F8](sub_20DEE29F8, 0, 0);
}

uint64_t sub_20DEE29F8()
{
  super_class = v0[17].super_class;

  v2 = swift_allocObject();
  *(v2 + 16) = super_class;
  v0[11].receiver = sub_20DEE5F7C;
  v0[11].super_class = v2;
  v0[9].receiver = MEMORY[0x277D85DD0];
  v0[9].super_class = 1107296256;
  v0[10].receiver = sub_20DF3C970;
  v0[10].super_class = &block_descriptor_71;
  v3 = _Block_copy(&v0[9]);
  v4 = super_class;

  v5 = [(objc_class *)v4 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    receiver = v0[16].receiver;
    v0[21].receiver = receiver;
    sub_20DF47744();
    v7 = sub_20DF47734();
    sub_20DF47724();
    v0[16].super_class = MEMORY[0x277D84F90];
    v8 = *(v7 + 16);
    if (v8)
    {
      v29 = receiver;
      v9 = v0[18].super_class;
      v10 = *(v9 + 2);
      v9 = (v9 + 16);
      v35 = v10;
      v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v12 = *MEMORY[0x277D861C0];
      v33 = *(v9 + 7);
      v30 = (v9 - 8);
      v31 = (v9 + 16);
      v32 = MEMORY[0x277D84F90];
      v34 = *MEMORY[0x277D861C0];
      v10(v0[19].receiver, v11, v0[18].receiver);
      while (1)
      {
        type metadata accessor for EKSandboxExtension.Context();
        v13 = swift_allocObject();
        v13[2] = j__sandbox_extension_consume;
        v13[3] = 0;
        v13[4] = j__sandbox_extension_release;
        v13[5] = 0;
        v13[6] = j__sandbox_extension_issue_file;
        v13[7] = 0;
        type metadata accessor for EKSandboxExtension(0);
        v14 = swift_allocObject();
        *(v14 + 40) = 0;
        *(v14 + 48) = 1;
        if (!v12)
        {
          break;
        }

        v15 = v14;
        sub_20DF47D84();
        sub_20DF47414();
        sub_20DF47D44();

        sub_20DF47D44();

        v16 = sandbox_extension_issue_file();

        v17 = v0[19].receiver;
        v18 = v0[18].receiver;
        if (v16)
        {
          *(v15 + 3) = sub_20DF47D84();
          *(v15 + 4) = v19;
          free(v16);
          (*v31)(&v15[OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL], v17, v18);
          *(v15 + 2) = v13;

          MEMORY[0x20F328A20](v20);
          if (*((v0[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20DF47E84();
          }

          sub_20DF47EA4();

          v32 = v0[16].super_class;
        }

        else
        {

          (*v30)(v17, v18);
          swift_deallocPartialClassInstance();
        }

        v12 = v34;
        v11 += v33;
        if (!--v8)
        {

          receiver = v29;
          v23 = v32;
          goto LABEL_17;
        }

        v35(v0[19].receiver, v11, v0[18].receiver);
      }

      __break(1u);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
LABEL_17:
      v24 = type metadata accessor for XPCEKSandboxExtensionContainer();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v23;
      v0[14].receiver = v25;
      v0[14].super_class = v24;
      v26 = objc_msgSendSuper2(v0 + 14, sel_init);
      v0[21].super_class = v26;
      sub_20DF47514();
      v27 = sub_20DF47D04();
      v0[22].receiver = v27;

      v0[1].receiver = v0;
      v0[3].super_class = &v0[15];
      v0[1].super_class = sub_20DEE300C;
      v28 = swift_continuation_init();
      v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
      v0[5].receiver = MEMORY[0x277D85DD0];
      v0[5].super_class = 1107296256;
      v0[6].receiver = sub_20DEF28A4;
      v0[6].super_class = &block_descriptor_75;
      v0[7].receiver = v28;
      [receiver gridIDFor:v27 ekSandboxExtension:v26 completionHandler:&v0[5]];
      v14 = &v0[1];
    }

    return MEMORY[0x282200938](v14);
  }

  else
  {
    [(objc_class *)v0[17].super_class invalidate];

    v21 = v0->super_class;

    return v21(0, 0);
  }
}

uint64_t sub_20DEE300C()
{

  return MEMORY[0x2822009F8](sub_20DEE30EC, 0, 0);
}

uint64_t sub_20DEE30EC()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);

  swift_unknownObjectRelease();
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  [*(v0 + 280) invalidate];

  v5 = *(v0 + 8);

  return v5(v4, v3);
}

uint64_t sub_20DEE3190(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = sub_20DF47424();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEE3250, 0, 0);
}

uint64_t sub_20DEE3250()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[39] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[40] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_20DEE33EC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v7);
}

uint64_t sub_20DEE33EC()
{

  return MEMORY[0x2822009F8](sub_20DEE3504, 0, 0);
}

uint64_t sub_20DEE3504()
{
  super_class = v0[17].super_class;

  v2 = swift_allocObject();
  *(v2 + 16) = super_class;
  v0[11].receiver = sub_20DEE5F7C;
  v0[11].super_class = v2;
  v0[9].receiver = MEMORY[0x277D85DD0];
  v0[9].super_class = 1107296256;
  v0[10].receiver = sub_20DF3C970;
  v0[10].super_class = &block_descriptor_60;
  v3 = _Block_copy(&v0[9]);
  v4 = super_class;

  v5 = [(objc_class *)v4 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v6 = v0;
    receiver = v0[16].receiver;
    v0[21].receiver = receiver;
    sub_20DF47744();
    v8 = sub_20DF47734();
    sub_20DF47724();
    v0[16].super_class = MEMORY[0x277D84F90];
    v9 = *(v8 + 16);
    v35 = v0;
    if (v9)
    {
      v10 = v0[18].super_class;
      v11 = *(v10 + 2);
      v10 = (v10 + 16);
      v34 = v11;
      v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *MEMORY[0x277D861C0];
      v32 = *(v10 + 7);
      v30 = (v10 - 8);
      v31 = (v10 + 16);
      v14 = MEMORY[0x277D84F90];
      v33 = *MEMORY[0x277D861C0];
      v11(v6[19].receiver, v12, v6[18].receiver);
      while (1)
      {
        type metadata accessor for EKSandboxExtension.Context();
        v15 = swift_allocObject();
        v15[2] = j__sandbox_extension_consume;
        v15[3] = 0;
        v15[4] = j__sandbox_extension_release;
        v15[5] = 0;
        v15[6] = j__sandbox_extension_issue_file;
        v15[7] = 0;
        type metadata accessor for EKSandboxExtension(0);
        v16 = swift_allocObject();
        *(v16 + 40) = 0;
        *(v16 + 48) = 1;
        if (!v13)
        {
          break;
        }

        v17 = v16;
        sub_20DF47D84();
        sub_20DF47414();
        sub_20DF47D44();

        sub_20DF47D44();

        v18 = sandbox_extension_issue_file();

        v19 = v35[19].receiver;
        v20 = v35[18].receiver;
        if (v18)
        {
          *(v17 + 3) = sub_20DF47D84();
          *(v17 + 4) = v21;
          free(v18);
          (*v31)(&v17[OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL], v19, v20);
          *(v17 + 2) = v15;

          MEMORY[0x20F328A20](v22);
          if (*((v35[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[16].super_class & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20DF47E84();
          }

          sub_20DF47EA4();

          v14 = v35[16].super_class;
        }

        else
        {

          (*v30)(v19, v20);
          swift_deallocPartialClassInstance();
        }

        v13 = v33;
        v12 += v32;
        if (!--v9)
        {

          goto LABEL_17;
        }

        v34(v35[19].receiver, v12, v35[18].receiver);
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
LABEL_17:
      v25 = v35[17].receiver;
      v26 = type metadata accessor for XPCEKSandboxExtensionContainer();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v14;
      v35[14].receiver = v27;
      v35[14].super_class = v26;
      v28 = objc_msgSendSuper2(v35 + 14, sel_init);
      v35[21].super_class = v28;
      v35[1].receiver = v35;
      v35[3].super_class = &v35[15];
      v35[1].super_class = sub_20DEE3B00;
      v29 = swift_continuation_init();
      v35[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
      v35[5].receiver = MEMORY[0x277D85DD0];
      v35[5].super_class = 1107296256;
      v35[6].receiver = sub_20DEF28A4;
      v35[6].super_class = &block_descriptor_64;
      v35[7].receiver = v29;
      [receiver gridIDWithLocation:v25 ekSandboxExtension:v28 completionHandler:&v35[5]];
      v16 = &v35[1];
    }

    return MEMORY[0x282200938](v16);
  }

  else
  {
    [(objc_class *)v0[17].super_class invalidate];

    v23 = v0->super_class;

    return v23(0, 0);
  }
}

uint64_t sub_20DEE3B00()
{

  return MEMORY[0x2822009F8](sub_20DEE3BE0, 0, 0);
}

uint64_t sub_20DEE3BE0()
{
  v1 = *(v0 + 344);
  swift_unknownObjectRelease();
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);

  [*(v0 + 280) invalidate];

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_20DEE3C74(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x2822009F8](sub_20DEE3C94, 0, 0);
}

uint64_t sub_20DEE3C94()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[32] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[33] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_20DEE3E30;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v7);
}

uint64_t sub_20DEE3E30()
{

  return MEMORY[0x2822009F8](sub_20DEE3F48, 0, 0);
}

uint64_t sub_20DEE3F48()
{
  v1 = *(v0 + 248);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEDFEA0;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_15;
  v3 = _Block_copy((v0 + 144));
  v4 = v1;

  v5 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 224);
    *(v0 + 280) = v6;
    sub_20DF47514();
    v7 = sub_20DF47D04();
    *(v0 + 288) = v7;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE41EC;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB0, &qword_20DF4AC38);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE2500;
    *(v0 + 104) = &block_descriptor_19;
    *(v0 + 112) = v8;
    [v6 siteFor:v7 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 248) invalidate];
    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_20DEE41EC()
{

  return MEMORY[0x2822009F8](sub_20DEE42CC, 0, 0);
}

uint64_t sub_20DEE42CC()
{
  v1 = *(v0 + 288);
  swift_unknownObjectRelease();
  v2 = *(v0 + 232);

  [*(v0 + 248) invalidate];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_20DEE4348(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x2822009F8](sub_20DEE4368, 0, 0);
}

uint64_t sub_20DEE4368()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[32] = v3;

  v0[33] = &unk_28252EBA0;
  v4 = objc_opt_self();
  v0[34] = v4;
  v5 = [v4 interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *(v6 + 16) = v3;
  v7 = swift_task_alloc();
  v0[36] = v7;
  *v7 = v0;
  v7[1] = sub_20DEE450C;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE4DD8, v6, v8);
}

uint64_t sub_20DEE450C()
{

  return MEMORY[0x2822009F8](sub_20DEE4624, 0, 0);
}

uint64_t sub_20DEE4624()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_20DF47D04();
  v5 = [v3 initWithServiceName_];
  *(v0 + 296) = v5;

  v6 = [v2 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *(v7 + 16) = v5;
  v8 = swift_task_alloc();
  *(v0 + 312) = v8;
  *v8 = v0;
  v8[1] = sub_20DEE47BC;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v7, v9);
}

uint64_t sub_20DEE47BC()
{

  return MEMORY[0x2822009F8](sub_20DEE48D4, 0, 0);
}

uint64_t sub_20DEE48D4()
{
  v1 = *(v0 + 248);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_3;
  v3 = _Block_copy((v0 + 144));
  v4 = v1;

  v5 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 224);
    *(v0 + 320) = v6;
    v7 = sub_20DF47524();
    *(v0 + 328) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE4B98;
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA70, &unk_20DF4AC20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE5F98;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v8;
    [v6 siteWithHomeID:v7 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 248) invalidate];
    sub_20DEDD4D8();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_20DEE4B98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_20DEE4D38;
  }

  else
  {
    v2 = sub_20DEE4CA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DEE4CA8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);

  [v1 invalidate];
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_20DEE4D38()
{
  v1 = v0[41];
  v2 = v0[31];
  swift_willThrow();
  swift_unknownObjectRelease();

  [v2 invalidate];
  swift_willThrow();
  v3 = v0[1];

  return v3();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DEE4E10(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 256) = a2;
  *(v3 + 248) = a3;
  *(v3 + 240) = a1;
  return MEMORY[0x2822009F8](sub_20DEE4E38, 0, 0);
}

uint64_t sub_20DEE4E38()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[33] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_20DEE4FD4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v7);
}

uint64_t sub_20DEE4FD4()
{

  return MEMORY[0x2822009F8](sub_20DEE50EC, 0, 0);
}

uint64_t sub_20DEE50EC()
{
  v1 = *(v0 + 256);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_37;
  v3 = _Block_copy((v0 + 144));
  v4 = v1;

  v5 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    *(v0 + 288) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE5380;
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCC8, &qword_20DF4AC60);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE2564;
    *(v0 + 104) = &block_descriptor_41;
    *(v0 + 112) = v9;
    [v8 sitesWithNear:v7 radius:v0 + 80 completionHandler:v6];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 256) invalidate];
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F98];

    return v10(v11);
  }
}

uint64_t sub_20DEE5380()
{

  return MEMORY[0x2822009F8](sub_20DEE5460, 0, 0);
}

uint64_t sub_20DEE5460()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 232);
  [*(v0 + 256) invalidate];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DEE54D8(uint64_t a1)
{
  v1[30] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v1[31] = swift_task_alloc();
  v2 = sub_20DF47564();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DEE55DC, 0, 0);
}

uint64_t sub_20DEE55DC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[36] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[37] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_20DEE5778;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000018, 0x800000020DF4F290, sub_20DEE5F9C, v5, v7);
}

uint64_t sub_20DEE5778()
{

  return MEMORY[0x2822009F8](sub_20DEE5890, 0, 0);
}

uint64_t sub_20DEE5890()
{
  v1 = *(v0 + 240);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DEE5F7C;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_26;
  v3 = _Block_copy((v0 + 144));
  v4 = v1;

  v5 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 224);
    *(v0 + 312) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_20DEE5B28;
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCC0, &qword_20DF4AC50);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE25E0;
    *(v0 + 104) = &block_descriptor_30;
    *(v0 + 112) = v7;
    [v6 sitesWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    [*(v0 + 240) invalidate];

    v8 = *(v0 + 8);
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_20DEE5B28()
{

  return MEMORY[0x2822009F8](sub_20DEE5C08, 0, 0);
}

uint64_t sub_20DEE5C08()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 264);
    v4 = (v3 + 48);
    v5 = (v3 + 32);
    v23 = v3;
    v20 = (v3 + 16);
    v6 = v1 + 40;
    v7 = MEMORY[0x277D84F90];
    v21 = (v3 + 32);
    v22 = (v3 + 48);
    do
    {
      v9 = *(v0 + 248);
      v8 = *(v0 + 256);

      sub_20DF47504();

      if ((*v4)(v9, 1, v8) == 1)
      {
        sub_20DEE5E68(*(v0 + 248));
      }

      else
      {
        v11 = *(v0 + 272);
        v10 = *(v0 + 280);
        v12 = *(v0 + 256);
        v13 = *v5;
        (*v5)(v10, *(v0 + 248), v12);
        (*v20)(v11, v10, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_20DEB848C(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_20DEB848C((v14 > 1), v15 + 1, 1, v7);
        }

        v16 = *(v0 + 272);
        v17 = *(v0 + 256);
        (*(v23 + 8))(*(v0 + 280), v17);
        *(v7 + 2) = v15 + 1;
        v5 = v21;
        v13(&v7[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v15], v16, v17);
        v4 = v22;
      }

      v6 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  [*(v0 + 240) invalidate];

  v18 = *(v0 + 8);

  return v18(v7);
}

uint64_t sub_20DEE5E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DEE5ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Guidance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnergyLoadUpdate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF474E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for EnergyLoadUpdate(uint64_t a1)
{
  result = qword_27C84CCE0;
  if (!qword_27C84CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyLoadUpdate.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyLoadUpdate(0) + 24));

  return v1;
}

void sub_20DEE6130(uint64_t a1)
{
  sub_20DF474E4();
  if (v1 <= 0x3F)
  {
    sub_20DEE61D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20DEE61D0()
{
  if (!qword_27C84C9C8)
  {
    v0 = sub_20DF48064();
    if (!v1)
    {
      atomic_store(v0, &qword_27C84C9C8);
    }
  }
}

uint64_t EnergyTrends.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergyTrends(0) + 24);
  v4 = sub_20DF47604();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnergyTrends(uint64_t a1)
{
  result = qword_281122648;
  if (!qword_281122648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyTrends.debugIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyTrends(0) + 28));

  return v1;
}

uint64_t EnergyTrends.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergyTrends(0) + 32);
  v4 = sub_20DF475D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EnergyTrends.calendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EnergyTrends(0) + 32);
  v4 = sub_20DF475D4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EnergyTrends.init(response:timeZone:debugIdentifier:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, _BYTE *a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v70 = a2;
  v73 = a5;
  v74 = type metadata accessor for EnergySite.EnergyUsage(0);
  v6 = *(v74 - 8);
  v7 = MEMORY[0x28223BE20](v74);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  v67 = sub_20DF47574();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DF47604();
  v72 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = *&a1[*(type metadata accessor for EnergySite.HistoricalEnergyUsage(0) + 24)];
  v61 = v14;
  v62 = a1;
  LOBYTE(a1) = *a1;
  v20 = *(v14 + 16);
  v71 = v18;
  v20(v18, v70, v13);
  v21 = v20;
  v63 = v20;
  v22 = v73;
  *v73 = a1;
  v23 = type metadata accessor for EnergyTrends(0);
  v21(&v22[*(v23 + 24)], v18, v13);
  v24 = &v22[*(v23 + 28)];
  v25 = v22;
  v26 = v69;
  *v24 = v68;
  v24[1] = v26;
  v27 = v64;
  v29 = v66;
  v28 = v67;
  (*(v64 + 104))(v66, *MEMORY[0x277CC9830], v67);
  v69 = v23;
  sub_20DF47584();
  (*(v27 + 8))(v29, v28);
  v63(v65, v71, v72);
  sub_20DF475B4();
  *(v25 + 1) = v19;
  v30 = *(v19 + 16);

  v32 = MEMORY[0x277D84F90];
  if (!v30)
  {
    v38 = *(MEMORY[0x277D84F90] + 16);
    if (v38)
    {
      v34 = MEMORY[0x277D84F90];
LABEL_12:
      v39 = *(v34 + 32);
      v40 = v38 - 1;
      v41 = v69;
      if (v38 != 1)
      {
        v42 = (v34 + 40);
        do
        {
          v43 = *v42++;
          v44 = v43;
          if (v39 < v43)
          {
            v39 = v44;
          }

          --v40;
        }

        while (v40);
      }

      *&v73[v41[9]] = v39;
      if (v30)
      {
        v45 = *(v74 + 28);
        v46 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v47 = *(v6 + 72);
        v32 = MEMORY[0x277D84F90];
        do
        {
          sub_20DEEF8EC(v46, v9, type metadata accessor for EnergySite.EnergyUsage);
          v48 = *&v9[v45];
          sub_20DEEF954(v9, type metadata accessor for EnergySite.EnergyUsage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_20DEB8234(0, *(v32 + 2) + 1, 1, v32);
          }

          v50 = *(v32 + 2);
          v49 = *(v32 + 3);
          v51 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v32 = sub_20DEB8234((v49 > 1), v50 + 1, 1, v32);
          }

          *(v32 + 2) = v51;
          *&v32[8 * v50 + 32] = v48;
          v46 += v47;
          --v30;
        }

        while (v30);
        goto LABEL_27;
      }
    }

    else
    {

      v41 = v69;
      *&v73[v69[9]] = 0;
      v39 = 0.0;
    }

    v51 = *(v32 + 2);
    if (!v51)
    {
      v52 = 0.0;
      goto LABEL_34;
    }

LABEL_27:
    v52 = *(v32 + 4);
    v53 = v51 - 1;
    if (v51 != 1)
    {
      v54 = 40;
      v55 = v62;
      v56 = v70;
      do
      {
        if (v52 < *&v32[v54])
        {
          v52 = *&v32[v54];
        }

        v54 += 8;
        --v53;
      }

      while (v53);
      goto LABEL_35;
    }

LABEL_34:
    v55 = v62;
    v56 = v70;
LABEL_35:

    v57 = *(v61 + 8);
    v58 = v56;
    v59 = v72;
    v57(v58, v72);
    sub_20DEEF954(v55, type metadata accessor for EnergySite.HistoricalEnergyUsage);
    result = (v57)(v71, v59);
    v60 = v73;
    *&v73[v41[10]] = v52;
    v60[v41[11]] = v39 > 0.0;
    return result;
  }

  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  while (v33 < *(v19 + 16))
  {
    sub_20DEEF8EC(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33, v11, type metadata accessor for EnergySite.EnergyUsage);
    v35 = *&v11[*(v74 + 24)];
    sub_20DEEF954(v11, type metadata accessor for EnergySite.EnergyUsage);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20DEB8234(0, *(v34 + 16) + 1, 1, v34);
      v34 = result;
    }

    v37 = *(v34 + 16);
    v36 = *(v34 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_20DEB8234((v36 > 1), v37 + 1, 1, v34);
      v34 = result;
    }

    ++v33;
    *(v34 + 16) = v38;
    *(v34 + 8 * v37 + 32) = v35;
    if (v30 == v33)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnergyTrends.init(usages:interval:timeZone:debugIdentifier:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v58 = a4;
  v59 = a5;
  v62 = a3;
  v9 = type metadata accessor for EnergySite.EnergyUsage(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v61 = sub_20DF47604();
  v16 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20DF47574();
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  v20 = a6;
  *a6 = v18;
  v21 = type metadata accessor for EnergyTrends(0);
  v22 = *(v21 + 24);
  v54 = v16;
  v55 = *(v16 + 16);
  v55(&v20[v22], v62, v61);
  v23 = &v20[*(v21 + 28)];
  v24 = v59;
  *v23 = v58;
  v23[1] = v24;
  v25 = v56;
  (*(v60 + 13))(v19, *MEMORY[0x277CC9830], v56);
  v59 = v21;
  sub_20DF47584();
  (*(v60 + 1))(v19, v25);
  v55(v57, v62, v61);
  sub_20DF475B4();
  v60 = v20;
  *(v20 + 1) = a1;
  v26 = *(a1 + 16);

  if (v26)
  {
    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    while (v28 < *(a1 + 16))
    {
      sub_20DEEF8EC(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v15, type metadata accessor for EnergySite.EnergyUsage);
      v30 = *&v15[*(v9 + 24)];
      sub_20DEEF954(v15, type metadata accessor for EnergySite.EnergyUsage);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20DEB8234(0, *(v29 + 2) + 1, 1, v29);
        v29 = result;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_20DEB8234((v31 > 1), v32 + 1, 1, v29);
        v29 = result;
      }

      ++v28;
      *(v29 + 2) = v33;
      *&v29[8 * v32 + 32] = v30;
      if (v26 == v28)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
    v33 = *(MEMORY[0x277D84F90] + 16);
    if (v33)
    {
LABEL_11:
      v34 = *(v29 + 4);
      v35 = v33 - 1;
      v36 = v60;
      if (v33 != 1)
      {
        v37 = (v29 + 40);
        do
        {
          v38 = *v37++;
          v39 = v38;
          if (v34 < v38)
          {
            v34 = v39;
          }

          --v35;
        }

        while (v35);
      }

      *&v36[*(v59 + 36)] = v34;
      if (v26)
      {
        v40 = *(v9 + 28);
        v41 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v42 = *(v10 + 72);
        v29 = MEMORY[0x277D84F90];
        do
        {
          sub_20DEEF8EC(v41, v13, type metadata accessor for EnergySite.EnergyUsage);
          v43 = *&v13[v40];
          sub_20DEEF954(v13, type metadata accessor for EnergySite.EnergyUsage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_20DEB8234(0, *(v29 + 2) + 1, 1, v29);
          }

          v45 = *(v29 + 2);
          v44 = *(v29 + 3);
          if (v45 >= v44 >> 1)
          {
            v29 = sub_20DEB8234((v44 > 1), v45 + 1, 1, v29);
          }

          *(v29 + 2) = v45 + 1;
          *&v29[8 * v45 + 32] = v43;
          v41 += v42;
          --v26;
        }

        while (v26);
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v36 = v60;
      *&v60[*(v59 + 36)] = 0;
      v34 = 0.0;
    }

    v46 = *(v29 + 2);
    if (v46)
    {
      v47 = *(v29 + 4);
      v48 = v46 - 1;
      if (v48)
      {
        v49 = (v29 + 40);
        do
        {
          v50 = *v49++;
          v51 = v50;
          if (v47 < v50)
          {
            v47 = v51;
          }

          --v48;
        }

        while (v48);
      }
    }

    else
    {
      v47 = 0.0;
    }

    result = (*(v54 + 8))(v62, v61);
    v52 = v59;
    *&v36[*(v59 + 40)] = v47;
    v36[*(v52 + 44)] = v34 > 0.0;
  }

  return result;
}

uint64_t static EnergyTrends.advance(date:by:displayInterval:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - v15;
  if (!a2)
  {
    v20 = sub_20DF474E4();
    (*(*(v20 - 8) + 16))(a5, a1, v20);
LABEL_10:
    v22 = sub_20DF474E4();
    return (*(*(v22 - 8) + 56))(a5, 0, 1, v22);
  }

  v17 = *a3;
  v18 = *a3;
  v23[1] = a4;
  if (v18 == 3)
  {
  }

  else
  {
    v21 = sub_20DF483D4();

    if ((v21 & 1) == 0)
    {
      (*(v11 + 104))(v14, **(&unk_277E1A298 + v17), v10);
      sub_20DF47AD4();
      (*(v11 + 8))(v14, v10);
      goto LABEL_10;
    }
  }

  if ((a2 * 26) >> 64 == (26 * a2) >> 63)
  {
    if ((26 * a2 * 7) >> 64 == (182 * a2) >> 63)
    {
      (*(v11 + 104))(v16, *MEMORY[0x277CC9968], v10);
      sub_20DF47AD4();
      (*(v11 + 8))(v16, v10);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static EnergyTrends.displayIntervalToCalendarComponent(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_20DF475C4();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_277E1A298 + v3);

  return v5(a2, v6, v4);
}

uint64_t EnergyTrends.adjustRequestedDateForAvailableData(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v183 = a2;
  v5 = sub_20DF475C4();
  v220 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v187 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v192 = &v180 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v208 = &v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v227 = &v180 - v12;
  v13 = type metadata accessor for EnergySite.EnergyUsage(0);
  v199 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v215 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for EnergyTrends(0);
  v15 = MEMORY[0x28223BE20](v194);
  v181 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v207 = &v180 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v196 = &v180 - v20;
  MEMORY[0x28223BE20](v19);
  v222 = (&v180 - v21);
  v226 = sub_20DF47BD4();
  v221 = *(v226 - 8);
  v22 = MEMORY[0x28223BE20](v226);
  v182 = &v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v206 = &v180 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v197 = (&v180 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v180 - v28;
  v30 = sub_20DF474E4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v180 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v201 = &v180 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v200 = &v180 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v205 = &v180 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v204 = &v180 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v203 = &v180 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v219 = &v180 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v209 = &v180 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v198 = &v180 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v223 = &v180 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v225 = &v180 - v53;
  MEMORY[0x28223BE20](v52);
  v224 = v31;
  v56 = *(v31 + 16);
  v54 = v31 + 16;
  v55 = v56;
  v218 = &v180 - v57;
  v56();
  if (qword_2811225A8[0] != -1)
  {
    swift_once();
  }

  v58 = v226;
  v59 = __swift_project_value_buffer(v226, qword_281122F00);
  swift_beginAccess();
  v60 = v221;
  v61 = *(v221 + 16);
  v214 = v59;
  v213 = v221 + 16;
  v212 = v61;
  v61(v29, v59, v58);
  v62 = v222;
  sub_20DEEF8EC(v3, v222, type metadata accessor for EnergyTrends);
  v186 = a1;
  v216[0] = v55;
  v216[1] = v54;
  (v55)(v225, a1, v30);
  v63 = v29;
  v64 = sub_20DF47BB4();
  v65 = sub_20DF48004();
  v66 = os_log_type_enabled(v64, v65);
  v193 = v30;
  v191 = v3;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v229 = v68;
    *v67 = 136315650;
    *(v67 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF4F3A0, &v229);
    v211 = v63;
    *(v67 + 12) = 2080;
    v69 = (v62 + *(v194 + 28));
    v70 = *v69;
    v71 = v69[1];

    sub_20DEEF954(v62, type metadata accessor for EnergyTrends);
    v72 = sub_20DED38E8(v70, v71, &v229);

    *(v67 + 14) = v72;
    *(v67 + 22) = 2080;
    v73 = v60;
    v74 = v225;
    v75 = sub_20DF474C4();
    v77 = v76;
    v78 = v224;
    v217 = *(v224 + 8);
    v217(v74, v193);
    v79 = sub_20DED38E8(v75, v77, &v229);
    v3 = v191;

    *(v67 + 24) = v79;
    _os_log_impl(&dword_20DEAF000, v64, v65, "%s (%s) looking for data in interval containing %s", v67, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v68, -1, -1);
    v80 = v67;
    v30 = v193;
    MEMORY[0x20F329700](v80, -1, -1);

    v81 = v78;
    v82 = v211;
    v211 = *(v73 + 8);
    v211(v82, v226);
    v83 = v73;
  }

  else
  {

    v81 = v224;
    v217 = *(v224 + 8);
    v217(v225, v30);
    sub_20DEEF954(v62, type metadata accessor for EnergyTrends);
    v211 = *(v60 + 8);
    v211(v29, v226);
    v83 = v60;
  }

  v210 = *(v3 + 8);
  v84 = v218;
  v85 = v216[0];
  v86 = v223;
  if (*(v210 + 16))
  {
    v87 = v215;
    sub_20DEEF8EC(v210 + ((*(v199 + 80) + 32) & ~*(v199 + 80)), v215, type metadata accessor for EnergySite.EnergyUsage);
    v88 = v198;
    v85(v198, v87, v30);
    sub_20DEEF954(v87, type metadata accessor for EnergySite.EnergyUsage);
    (*(v81 + 32))(v86, v88, v30);
    v89 = v186;
    if (sub_20DF47474())
    {
      v90 = v197;
      v212(v197, v214, v226);
      v91 = v196;
      sub_20DEEF8EC(v3, v196, type metadata accessor for EnergyTrends);
      v85(v209, v89, v30);
      v85(v219, v86, v30);
      v92 = sub_20DF47BB4();
      v93 = sub_20DF48004();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v229 = v225;
        *v94 = 136315906;
        *(v94 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF4F3A0, &v229);
        *(v94 + 12) = 2080;
        v95 = (v91 + *(v194 + 28));
        v96 = *v95;
        v97 = v95[1];

        sub_20DEEF954(v91, type metadata accessor for EnergyTrends);
        v98 = sub_20DED38E8(v96, v97, &v229);

        *(v94 + 14) = v98;
        *(v94 + 22) = 2080;
        v99 = v209;
        v100 = sub_20DF474C4();
        v102 = v101;
        v103 = v99;
        v104 = v217;
        v217(v103, v193);
        v105 = sub_20DED38E8(v100, v102, &v229);

        *(v94 + 24) = v105;
        *(v94 + 32) = 2080;
        v86 = v223;
        v106 = v219;
        v107 = sub_20DF474C4();
        v109 = v108;
        v104(v106, v193);
        v83 = v221;
        v81 = v224;
        v30 = v193;
        v110 = sub_20DED38E8(v107, v109, &v229);
        v3 = v191;

        *(v94 + 34) = v110;
        _os_log_impl(&dword_20DEAF000, v92, v93, "%s (%s) requested date %s is before snapshot start, pinning to snapshot start: %s", v94, 0x2Au);
        v111 = v225;
        swift_arrayDestroy();
        MEMORY[0x20F329700](v111, -1, -1);
        MEMORY[0x20F329700](v94, -1, -1);

        v112 = v197;
      }

      else
      {

        v113 = v217;
        v217(v219, v30);
        v113(v209, v30);
        sub_20DEEF954(v91, type metadata accessor for EnergyTrends);
        v83 = v221;
        v112 = v90;
      }

      v211(v112, v226);
      v84 = v218;
      (*(v81 + 40))(v218, v86, v30);
    }

    else
    {
      v217(v86, v30);
      v83 = v221;
    }
  }

  LODWORD(v225) = *v3;
  v223 = *(v194 + 32);
  swift_beginAccess();
  v114 = 0;
  v224 = 0;
  v222 = (v81 + 32);
  v215 = v81 + 8;
  v209 = (v83 + 8);
  v190 = "v16@?0@NSString8";
  v185 = *MEMORY[0x277CC9988];
  v199 = v220 + 104;
  v188 = *MEMORY[0x277CC9998];
  v184 = *MEMORY[0x277CC9940];
  v195 = *MEMORY[0x277CC9968];
  v198 = (v220 + 8);
  v197 = (v81 + 40);
  v115 = 12;
  *&v116 = 136316162;
  v189 = v116;
  v202 = v5;
  do
  {
    v121 = v203;
    (v216[0])(v203, v84, v30);
    if (v225 <= 1)
    {
      v122 = v205;
      v123 = v223;
      if (v225)
      {
        sub_20DF47AB4();
      }

      else
      {
        sub_20DF47594();
      }
    }

    else
    {
      v122 = v205;
      if (v225 == 2)
      {
        v123 = v223;
        sub_20DF47A84();
      }

      else
      {
        v123 = v223;
        if (v225 == 3)
        {
          sub_20DF47A94();
        }

        else
        {
          sub_20DF47A74();
        }
      }
    }

    v124 = v204;
    v219 = *v222;
    (v219)(v204, v122, v30);
    LOBYTE(v228) = v225;
    v125 = v227;
    static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v124, &v228, &v123[v3], v227);
    v126 = v217;
    v217(v124, v30);
    v127 = v126(v121, v30);
    MEMORY[0x28223BE20](v127);
    *(&v180 - 2) = v125;
    v128 = v210;

    v129 = v128;
    v130 = v224;
    v131 = sub_20DEEA4EC(sub_20DEEF9B4, (&v180 - 4), v129);
    v224 = v130;
    if (v114)
    {
    }

    v220 = *(v131 + 16);
    v221 = v131;
    v132 = v206;
    v212(v206, v214, v226);
    v133 = v207;
    sub_20DEEF8EC(v3, v207, type metadata accessor for EnergyTrends);
    v134 = v208;
    sub_20DED8804(v227, v208, &qword_27C84C980, &unk_20DF49A50);
    v135 = sub_20DF47BB4();
    v136 = sub_20DF47FE4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v228 = v196;
      *v137 = v189;
      *(v137 + 4) = sub_20DED38E8(0xD00000000000002ALL, v190 | 0x8000000000000000, &v228);
      *(v137 + 12) = 2080;
      v138 = (v133 + *(v194 + 28));
      v139 = *v138;
      v140 = v138[1];

      sub_20DEEF954(v133, type metadata accessor for EnergyTrends);
      v141 = sub_20DED38E8(v139, v140, &v228);

      *(v137 + 14) = v141;
      *(v137 + 22) = 2080;
      v142 = sub_20DF474C4();
      v144 = sub_20DED38E8(v142, v143, &v228);

      *(v137 + 24) = v144;
      *(v137 + 32) = 2048;
      v145 = v220;
      *(v137 + 34) = v220;
      *(v137 + 42) = 2080;
      v146 = sub_20DF474C4();
      v148 = v147;
      sub_20DED8730(v134, &qword_27C84C980, &unk_20DF49A50);
      v149 = sub_20DED38E8(v146, v148, &v228);

      *(v137 + 44) = v149;
      _os_log_impl(&dword_20DEAF000, v135, v136, "%s (%s) checking %s: found %ld usage values in interval starting on %s", v137, 0x34u);
      v150 = v196;
      swift_arrayDestroy();
      v3 = v191;
      MEMORY[0x20F329700](v150, -1, -1);
      v151 = v137;
      v30 = v193;
      MEMORY[0x20F329700](v151, -1, -1);

      v211(v132, v226);
      if (v145)
      {
        goto LABEL_44;
      }
    }

    else
    {

      sub_20DED8730(v134, &qword_27C84C980, &unk_20DF49A50);
      sub_20DEEF954(v133, type metadata accessor for EnergyTrends);
      v211(v132, v226);
      if (v220)
      {
LABEL_44:

        v157 = v227;
        sub_20DF47A34();
        sub_20DED8730(v157, &qword_27C84C980, &unk_20DF49A50);
        return (v217)(v218, v30);
      }
    }

    v152 = *v3;
    if (v152 <= 1)
    {
      v153 = v202;
    }

    else
    {
      v153 = v202;
      if (v152 == 3)
      {

LABEL_15:
        v117 = v192;
        (*v199)(v192, v195, v153);
        v118 = v201;
        v119 = v227;
        goto LABEL_16;
      }
    }

    v154 = sub_20DF483D4();

    if (v154)
    {
      goto LABEL_15;
    }

    if (v152 <= 1)
    {
      v155 = v195;
      if (v152)
      {
        v156 = v216;
        goto LABEL_42;
      }
    }

    else
    {
      v155 = v188;
      if (v152 != 2)
      {
        v156 = v216 + 4;
LABEL_42:
        v155 = *(v156 - 64);
      }
    }

    v117 = v187;
    (*v199)(v187, v155, v153);
    v118 = v201;
    v119 = v227;
LABEL_16:
    sub_20DF47AD4();
    (*v198)(v117, v153);
    sub_20DED8730(v119, &qword_27C84C980, &unk_20DF49A50);
    v120 = v200;
    (v219)(v200, v118, v30);
    v84 = v218;
    (*v197)(v218, v120, v30);
    --v115;
    v114 = 1;
  }

  while (v115 > 1);

  v158 = v182;
  v212(v182, v214, v226);
  v159 = v3;
  v160 = v181;
  sub_20DEEF8EC(v159, v181, type metadata accessor for EnergyTrends);
  v161 = v180;
  v162 = v186;
  v163 = v216[0];
  (v216[0])(v180, v186, v30);
  v164 = sub_20DF47BB4();
  v165 = sub_20DF48004();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v228 = v167;
    *v166 = 136315650;
    *(v166 + 4) = sub_20DED38E8(0xD00000000000002ALL, v190 | 0x8000000000000000, &v228);
    *(v166 + 12) = 2080;
    v168 = (v160 + *(v194 + 28));
    v169 = v161;
    v170 = v160;
    v171 = *v168;
    v172 = v168[1];

    sub_20DEEF954(v170, type metadata accessor for EnergyTrends);
    v173 = sub_20DED38E8(v171, v172, &v228);

    *(v166 + 14) = v173;
    *(v166 + 22) = 2080;
    v162 = v186;
    v174 = sub_20DF474C4();
    v176 = v175;
    v217(v169, v30);
    v177 = sub_20DED38E8(v174, v176, &v228);

    *(v166 + 24) = v177;
    _os_log_impl(&dword_20DEAF000, v164, v165, "%s (%s) could NOT find available data for %s", v166, 0x20u);
    swift_arrayDestroy();
    v163 = v216[0];
    MEMORY[0x20F329700](v167, -1, -1);
    MEMORY[0x20F329700](v166, -1, -1);

    v178 = v182;
  }

  else
  {

    v217(v161, v30);
    sub_20DEEF954(v160, type metadata accessor for EnergyTrends);
    v178 = v158;
  }

  v211(v178, v226);
  v163(v183, v162, v30);
  return (v217)(v218, v30);
}

uint64_t EnergyTrends.intervalDateRangeContaining(_:)@<X0>(char *x8_0@<X8>)
{
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = *v2;
  v12 = *(type metadata accessor for EnergyTrends(0) + 32);
  if (v11 <= 1)
  {
    if (v11)
    {
      sub_20DF47AB4();
    }

    else
    {
      sub_20DF47594();
    }
  }

  else if (v11 == 2)
  {
    sub_20DF47A84();
  }

  else if (v11 == 3)
  {
    sub_20DF47A94();
  }

  else
  {
    sub_20DF47A74();
  }

  (*(v5 + 32))(v10, v8, v4);
  v15 = v11;
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v10, &v15, &v2[v12], x8_0);
  return (*(v5 + 8))(v10, v4);
}

uint64_t EnergyTrends.usagesIn(_:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4[2] = a1;

  return sub_20DEEA4EC(sub_20DEF1600, v4, v2);
}

uint64_t static EnergyTrends.startOfSubinterval(for:displayInterval:with:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_20DF475C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v8 + 104))(&v18 - v12, **(&unk_277E1A2C0 + *a2), v7);
  (*(v8 + 16))(v11, v13, v7);
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == *MEMORY[0x277CC9998])
  {
    sub_20DF47A84();
  }

  else if (v14 == *MEMORY[0x277CC9968])
  {
    sub_20DF47594();
  }

  else if (v14 == *MEMORY[0x277CC9980])
  {
    sub_20DF47A64();
  }

  else
  {
    if (v14 != *MEMORY[0x277CC9940])
    {
      v16 = *(v8 + 8);
      v16(v13, v7);
      v17 = sub_20DF474E4();
      (*(*(v17 - 8) + 16))(a4, a1, v17);
      return (v16)(v11, v7);
    }

    sub_20DF47AB4();
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t static EnergyTrends.beginningOfInterval(for:interval:with:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = *a2;
  if (v4 <= 1)
  {
    if (*a2)
    {

      return sub_20DF47AB4();
    }

    else
    {
      return sub_20DF47594();
    }
  }

  else if (v4 == 2)
  {

    return sub_20DF47A84();
  }

  else if (v4 == 3)
  {

    return sub_20DF47A94();
  }

  else
  {

    return sub_20DF47A74();
  }
}

uint64_t EnergyTrends.beginningOfInterval(for:)(uint64_t a1)
{
  v2 = *v1;
  type metadata accessor for EnergyTrends(0);
  if (v2 <= 1)
  {
    if (v2)
    {

      return sub_20DF47AB4();
    }

    else
    {
      return sub_20DF47594();
    }
  }

  else if (v2 == 2)
  {

    return sub_20DF47A84();
  }

  else if (v2 == 3)
  {

    return sub_20DF47A94();
  }

  else
  {

    return sub_20DF47A74();
  }
}

uint64_t static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)@<X0>(void (*a1)(void, void, void)@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v63 = a3;
  v64 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA10, &qword_20DF49F48);
  v6 = MEMORY[0x28223BE20](v58);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - v8;
  v62 = sub_20DF475C4();
  v9 = *(v62 - 8);
  v10 = MEMORY[0x28223BE20](v62);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = sub_20DF474E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v56 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v26 = *a2;
  v65 = v15;
  v27 = *(v15 + 56);
  v27(&v54 - v24, 1, 1, v14);
  v60 = a4;
  v61 = v27;
  if (v26 == 3)
  {

LABEL_4:
    v29 = v62;
    (*(v9 + 104))(v13, *MEMORY[0x277CC9968], v62);
    v30 = v64;
    goto LABEL_6;
  }

  v28 = sub_20DF483D4();

  if (v28)
  {
    goto LABEL_4;
  }

  v31 = **(&unk_277E1A298 + v26);
  v13 = v55;
  v29 = v62;
  (*(v9 + 104))(v55, v31, v62);
  v30 = v64;
LABEL_6:
  sub_20DF47AD4();
  (*(v9 + 8))(v13, v29);
  sub_20DED8730(v25, &qword_27C84C988, &qword_20DF4AD10);
  v61(v23, 0, 1, v14);
  sub_20DED9CE8(v23, v25, &qword_27C84C988, &qword_20DF4AD10);
  sub_20DED8804(v25, v20, &qword_27C84C988, &qword_20DF4AD10);
  v32 = v65;
  if ((*(v65 + 48))(v20, 1, v14) == 1)
  {
    sub_20DED8730(v20, &qword_27C84C988, &qword_20DF4AD10);
LABEL_12:
    sub_20DEF1558(&qword_281122978, MEMORY[0x277CC9590]);
    v45 = sub_20DF47CE4();
    result = sub_20DED8730(v25, &qword_27C84C988, &qword_20DF4AD10);
    if (v45)
    {
      v46 = v32[2];
      v47 = v30;
      v48 = v57;
      v46(v57, v47, v14);
      v49 = v58;
      v46((v48 + *(v58 + 48)), v47, v14);
      v39 = v59;
      sub_20DED8804(v48, v59, &qword_27C84CA10, &qword_20DF49F48);
      v50 = *(v49 + 48);
      v64 = v32[4];
      v51 = v60;
      v64(v60, v39, v14);
      v42 = v32[1];
      v42(v39 + v50, v14);
      sub_20DED9CE8(v48, v39, &qword_27C84CA10, &qword_20DF49F48);
      v52 = *(v49 + 48);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
      v64(&v51[*(v53 + 36)], v39 + v52, v14);
      return (v42)(v39, v14);
    }

    __break(1u);
    goto LABEL_16;
  }

  v33 = v32[4];
  v34 = v56;
  v33(v56, v20, v14);
  if ((sub_20DF47474() & 1) == 0)
  {
    (v32[1])(v34, v14);
    goto LABEL_12;
  }

  sub_20DEF1558(&qword_281122978, MEMORY[0x277CC9590]);
  v35 = sub_20DF47CE4();
  result = sub_20DED8730(v25, &qword_27C84C988, &qword_20DF4AD10);
  if (v35)
  {
    v37 = v57;
    (v32[2])(v57, v30, v14);
    v38 = v58;
    v33((v37 + *(v58 + 48)), v34, v14);
    v39 = v59;
    sub_20DED8804(v37, v59, &qword_27C84CA10, &qword_20DF49F48);
    v40 = *(v38 + 48);
    v41 = v60;
    v33(v60, v39, v14);
    v42 = v32[1];
    v42(v39 + v40, v14);
    sub_20DED9CE8(v37, v39, &qword_27C84CA10, &qword_20DF49F48);
    v43 = *(v38 + 48);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
    v33(&v41[*(v44 + 36)], (v39 + v43), v14);
    return (v42)(v39, v14);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t EnergyTrends.intervalDateRangeStartingAt(_:)@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v7 = *v2;
  v5 = type metadata accessor for EnergyTrends(0);
  return static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v7, &v2[*(v5 + 32)], a2);
}

uint64_t EnergyTrends.displayGranularityInterval(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_20DF475C4();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = sub_20DF474E4();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v36 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  type metadata accessor for EnergyTrends(0);
  v45 = a1;
  sub_20DF47A44();
  v41 = v2;
  v25 = *v2;
  if (v25 <= 2)
  {
    v27 = v43;
    v26 = v44;
    if (v25 - 1 >= 2)
    {
      (*(v43 + 16))(v22, v24, v44);
      sub_20DF47AE4();
      sub_20DF47454();
    }

    else
    {
      (*(v43 + 16))(v22, v24, v44);
      sub_20DF47AF4();
    }

    goto LABEL_9;
  }

  v28 = v15;
  v30 = v38;
  v29 = v39;
  v31 = v40;
  if (v25 == 3)
  {
    v26 = v44;
    v32 = *(v43 + 16);
    v33 = v18;
    v27 = v43;
    v37 = v33;
    v32();
    (*(v29 + 104))(v30, *MEMORY[0x277CC99B8], v31);
    sub_20DF475A4();
    (*(v29 + 8))(v30, v31);
    result = (*(v27 + 48))(v11, 1, v26);
    if (result != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v27 = v43;
    v26 = v44;
    v35 = *(v43 + 16);
    v37 = v28;
    v35(v28, v24, v44);
    (*(v29 + 104))(v30, *MEMORY[0x277CC9998], v31);
    sub_20DF475A4();
    (*(v29 + 8))(v30, v31);
    result = (*(v27 + 48))(v9, 1, v26);
    if (result != 1)
    {
LABEL_9:
      sub_20DF473A4();
      return (*(v27 + 8))(v24, v26);
    }
  }

  __break(1u);
  return result;
}

uint64_t static EnergyTrends.intervalDateRangeContaining(startDate:interval:with:)@<X0>(unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = sub_20DF474E4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v16[-v12];
  v14 = *a2;
  if (v14 <= 1)
  {
    if (v14)
    {
      sub_20DF47AB4();
    }

    else
    {
      sub_20DF47594();
    }
  }

  else if (v14 == 2)
  {
    sub_20DF47A84();
  }

  else if (v14 == 3)
  {
    sub_20DF47A94();
  }

  else
  {
    sub_20DF47A74();
  }

  (*(v8 + 32))(v13, v11, v7);
  v17 = v14;
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v13, &v17, a3, a4);
  return (*(v8 + 8))(v13, v7);
}

uint64_t EnergyTrends.numDaysIn(usage:)(uint64_t a1)
{
  v3 = sub_20DF475C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = sub_20DF474E4();
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = **(&unk_277E1A2C0 + *v1);
  v17 = *(v4 + 104);
  v17(v12, v16, v3);
  (*(v4 + 16))(v10, v12, v3);
  v18 = (*(v4 + 88))(v10, v3);
  if (v18 == *MEMORY[0x277CC9998])
  {
    goto LABEL_2;
  }

  if (v18 == *MEMORY[0x277CC9968])
  {
    (*(v4 + 8))(v12, v3);
    return 1;
  }

  if (v18 == *MEMORY[0x277CC9980])
  {
    sub_20DF47AE4();
    sub_20DF47454();
    goto LABEL_3;
  }

  if (v18 == *MEMORY[0x277CC9940])
  {
LABEL_2:
    v17(v7, v18, v3);
    type metadata accessor for EnergyTrends(0);
    sub_20DF47AC4();
    (*(v4 + 8))(v7, v3);
LABEL_3:
    v20 = v25;
    v19 = v26;
    goto LABEL_4;
  }

  v20 = v25;
  v19 = v26;
  (*(v25 + 16))(v15, a1, v26);
  (*(v4 + 8))(v10, v3);
LABEL_4:
  type metadata accessor for EnergyTrends(0);
  v21 = sub_20DF47AA4();
  v23 = v22;
  (*(v4 + 8))(v12, v3);
  (*(v20 + 8))(v15, v19);
  if (v23)
  {
    return 1;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_20DEEA430(uint64_t a1, uint64_t a2)
{
  sub_20DF474E4();
  sub_20DEF1558(&qword_281122978, MEMORY[0x277CC9590]);
  if ((sub_20DF47CE4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  return sub_20DF47CD4() & 1;
}

uint64_t sub_20DEEA4EC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EnergySite.EnergyUsage(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_20DEEF8EC(a3 + v15 + v16 * v13, v12, type metadata accessor for EnergySite.EnergyUsage);
      v17 = a1(v12);
      if (v3)
      {
        sub_20DEEF954(v12, type metadata accessor for EnergySite.EnergyUsage);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_20DEF159C(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20DEF12FC(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_20DEF12FC((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_20DEF159C(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_20DEEF954(v12, type metadata accessor for EnergySite.EnergyUsage);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t EnergyTrends.previousIntervalStart(for:)(uint64_t a1)
{
  v2 = sub_20DF475C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  if (v6 > 3)
  {
    v7 = MEMORY[0x277CC9988];
  }

  else
  {
    v7 = qword_277E1A2E8[v6];
  }

  (*(v3 + 104))(v5, *v7, v2);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t EnergyTrends.previousIntervalDateRange(before:)@<X0>(char *a2@<X8>)
{
  v15 = a2;
  v3 = sub_20DF475C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DF474E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (v11 > 3)
  {
    v12 = MEMORY[0x277CC9988];
  }

  else
  {
    v12 = qword_277E1A2E8[v11];
  }

  (*(v4 + 104))(v6, *v12, v3);
  v13 = *(type metadata accessor for EnergyTrends(0) + 32);
  sub_20DF47AD4();
  (*(v4 + 8))(v6, v3);
  v16 = *v2;
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(v10, &v16, &v2[v13], v15);
  return (*(v8 + 8))(v10, v7);
}

Swift::Int __swiftcall EnergyTrends.totalDaysForUsages(_:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for EnergySite.EnergyUsage(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 <= 1u && !*v1)
  {

    return 1;
  }

  v8 = sub_20DF483D4();

  if (v8)
  {
    return 1;
  }

  v9 = *(a1._rawValue + 2);
  if (!v9)
  {
    return 0;
  }

  v7 = 0;
  v10 = *(v3 + 32);
  v11 = a1._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);
  while (1)
  {
    sub_20DEEF8EC(v11, v6, type metadata accessor for EnergySite.EnergyUsage);
    v13 = *&v6[v10];
    result = sub_20DEEF954(v6, type metadata accessor for EnergySite.EnergyUsage);
    v15 = __OFADD__(v7, v13);
    v7 += v13;
    if (v15)
    {
      break;
    }

    v11 += v12;
    if (!--v9)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

double EnergyTrends.calculateDeltaNetImports(startDate:pricingIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, int a3, uint64_t a4, int a5)
{
  v10 = sub_20DF475C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20DF474E4();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  v28 = a5;
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(a1, a2, a3 & 1, v17, a5 & 1);
  v19 = v18;
  v20 = *v5;
  if (v20 > 3)
  {
    v21 = MEMORY[0x277CC9988];
  }

  else
  {
    v21 = qword_277E1A2E8[v20];
  }

  (*(v11 + 104))(v13, *v21, v10);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  (*(v11 + 8))(v13, v10);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v16, a2, v27 & 1, v22, v28 & 1);
  v24 = v23;
  (*(v14 + 8))(v16, v26);
  return v19 - v24;
}

uint64_t EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(void (*a1)(void, void, void), Swift::Int a2, char a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for EnergySite.EnergyUsage(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v41[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C980, &unk_20DF49A50);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41[-v18];
  v43 = *v5;
  v20 = type metadata accessor for EnergyTrends(0);
  static EnergyTrends.intervalDateRangeStartingAt(_:displayInterval:with:)(a1, &v43, v5 + *(v20 + 32), v19);
  v21 = *(v5 + 8);
  v42 = v19;

  v22 = sub_20DEEA4EC(sub_20DEF1600, v41, v21);
  v23._rawValue = v22;
  if (a3)
  {
    if ((a5 & 1) == 0)
    {
      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = *(v10 + 24);
        v26 = *(v10 + 32);
        v27 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v28 = *(v11 + 72);
        v29 = 0.0;
        do
        {
          sub_20DEEF8EC(v27, v16, type metadata accessor for EnergySite.EnergyUsage);
          v30 = *&v16[v25];
          v31 = *&v16[v26];
          sub_20DEEF954(v16, type metadata accessor for EnergySite.EnergyUsage);
          v29 = v29 + v30 * v31;
          v27 += v28;
          --v24;
        }

        while (v24);
      }

LABEL_12:
      EnergyTrends.totalDaysForUsages(_:)(v23);
      EnergyTrends.totalExportsFor(usages:)(v23);
      goto LABEL_13;
    }

LABEL_9:
    v32 = *(v22 + 16);
    if (v32)
    {
      v33 = *(v10 + 24);
      v34 = *(v10 + 32);
      v35 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v36 = *(v11 + 72);
      v37 = 0.0;
      do
      {
        sub_20DEEF8EC(v35, v14, type metadata accessor for EnergySite.EnergyUsage);
        v38 = *&v14[v33];
        v39 = *&v14[v34];
        sub_20DEEF954(v14, type metadata accessor for EnergySite.EnergyUsage);
        v37 = v37 + v38 * v39;
        v35 += v36;
        --v32;
      }

      while (v32);
    }

    goto LABEL_12;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

  EnergyTrends.totalImportsByPricingPeriod(_:for:)(a2, v22);
  EnergyTrends.totalExportsByPricingPeriod(_:for:)(a2, v23);
LABEL_13:

  return sub_20DED8730(v19, &qword_27C84C980, &unk_20DF49A50);
}

double EnergyTrends.previousDailyAverageImportsForInterval(starting:pricingIndex:gridQualityIndex:)(uint64_t a1, Swift::Int a2, char a3, uint64_t a4, int a5)
{
  v22 = a5;
  v23 = a2;
  v7 = sub_20DF475C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_20DF474E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v5;
  if (v15 > 3)
  {
    v16 = MEMORY[0x277CC9988];
  }

  else
  {
    v16 = qword_277E1A2E8[v15];
  }

  (*(v8 + 104))(v10, *v16, v7);
  type metadata accessor for EnergyTrends(0);
  sub_20DF47AD4();
  (*(v8 + 8))(v10, v7);
  EnergyTrends.dailyAverageNetImportsForInterval(starting:pricingPeriodIndex:gridQualityIndex:)(v14, v23, a3 & 1, v17, v22 & 1);
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  return v19;
}