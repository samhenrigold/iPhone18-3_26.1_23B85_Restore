uint64_t sub_22B1C3C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v9[17] = swift_task_alloc();
  v10 = sub_22B36052C();
  v9[18] = v10;
  v9[19] = *(v10 - 8);
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1C3D80, 0, 0);
}

uint64_t sub_22B1C3D80()
{
  v1 = v0[16];
  v2 = *(v1 + 17);
  if (v2 == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[21];
    v11 = v0[18];
    v12 = v0[19];
    if (!v9)
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "[AMIProcessor] Mock historical data resend request. Skipping request to server";
LABEL_14:
    _os_log_impl(&dword_22B116000, v7, v8, v14, v13, 2u);
    MEMORY[0x23188F650](v13, -1, -1);
LABEL_15:

    (*(v12 + 8))(v10, v11);

    v33 = v0[1];

    return v33(v2);
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[18];
    v31 = __swift_project_value_buffer(v30, qword_28140BD10);
    swift_beginAccess();
    (*(v29 + 16))(v28, v31, v30);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v32 = os_log_type_enabled(v7, v8);
    v12 = v0[19];
    v10 = v0[20];
    v11 = v0[18];
    if (!v32)
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "[AMIProcessor] Resend historical data not enabled. Skipping request to server";
    goto LABEL_14;
  }

  v15 = v0[17];
  v16 = v0[15];
  sub_22B36012C();
  v17 = sub_22B35DE9C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_22B3602DC();
  v0[22] = sub_22B36029C();
  v19 = swift_task_alloc();
  v0[23] = v19;
  *v19 = v0;
  v19[1] = sub_22B1C412C;
  v20 = v0[17];
  v21 = v0[13];
  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[9];
  v26 = v0[10];
  v27 = v0[8];

  return MEMORY[0x2821724F0](v27, v25, v26, v23, v24, v21, v22, v20);
}

uint64_t sub_22B1C412C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = *(v4 + 176);
  v7 = *(v4 + 136);
  if (v1)
  {

    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);

    return MEMORY[0x2822009F8](sub_22B1C4304, 0, 0);
  }

  else
  {
    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);

    v8 = *(v5 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_22B1C4304()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22B1C437C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22B35DE9C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_22B35F9DC();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for CDUsageSummaryRecords(0);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA420, &unk_22B364910);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v3[37] = swift_task_alloc();
  v7 = sub_22B35E0BC();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  v8 = sub_22B36052C();
  v3[41] = v8;
  v3[42] = *(v8 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1C4764, 0, 0);
}

uint64_t sub_22B1C4764()
{
  v22 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[59];
  v2 = v0[41];
  v3 = v0[42];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[60] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[61] = v5;
  v0[62] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[59];
  v10 = v0[41];
  v11 = v0[42];
  if (v8)
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v21);
    _os_log_impl(&dword_22B116000, v6, v7, "[AMIProcessor] process %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[63] = v16;
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v17 = swift_task_alloc();
  v0[64] = v17;
  *v17 = v0;
  v17[1] = sub_22B1C49D0;
  v19 = v0[13];
  v18 = v0[14];

  return sub_22B22250C(v19, v18, 0, 0);
}

uint64_t sub_22B1C49D0(uint64_t a1)
{
  *(*v1 + 520) = a1;

  return MEMORY[0x2822009F8](sub_22B1C4AD0, 0, 0);
}

uint64_t sub_22B1C4AD0(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 520);
  if (!v2)
  {
LABEL_11:

    v16 = *(v1 + 8);

    return v16();
  }

  v3 = sub_22B35F12C();
  *(v1 + 528) = v3;
  *(v1 + 536) = v4;
  if (!v4)
  {

    goto LABEL_11;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_22B35F43C();
  *(v1 + 544) = v7;
  *(v1 + 552) = v8;
  if (!v8)
  {

LABEL_10:

    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  sub_22B35F41C();
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = *(v1 + 304);
  v13 = *(v1 + 312);
  v14 = *(v1 + 296);
  sub_22B35E05C();

  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v15 = *(v1 + 296);

    sub_22B123284(v15, &unk_27D8BA080, &unk_22B364280);
    goto LABEL_11;
  }

  (*(*(v1 + 312) + 32))(*(v1 + 320), *(v1 + 296), *(v1 + 304));
  v18 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v18 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v19 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_22:
    (*(*(v1 + 312) + 8))(*(v1 + 320), *(v1 + 304));

    goto LABEL_10;
  }

  (*(v1 + 488))(*(v1 + 464), *(v1 + 480), *(v1 + 328));

  v20 = sub_22B36050C();
  v21 = sub_22B360D2C();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v1 + 504);
  v24 = *(v1 + 464);
  v33 = *(v1 + 328);
  if (v22)
  {
    v29 = *(v1 + 104);
    v30 = *(v1 + 112);
    v32 = *(v1 + 464);
    v25 = swift_slowAlloc();
    v31 = v23;
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_22B1A7B20(v29, v30, &v34);
    _os_log_impl(&dword_22B116000, v20, v21, "[AMIProcessor] Process using usage points for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v25, -1, -1);

    v31(v32, v33);
  }

  else
  {

    v23(v24, v33);
  }

  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  *(v1 + 560) = qword_28140BCF8;
  v27 = swift_task_alloc();
  *(v1 + 568) = v27;
  *v27 = v1;
  v27[1] = sub_22B1C5010;
  v28 = *(v1 + 320);

  return sub_22B305BDC(v5, v6, v9, v10, v28);
}

uint64_t sub_22B1C5010()
{
  *(*v1 + 576) = v0;

  if (v0)
  {

    v2 = sub_22B1C9A90;
  }

  else
  {
    v2 = sub_22B1C5138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B1C5138(uint64_t a1)
{
  v48 = v1;
  if (sub_22B360BFC())
  {
    v2 = v1[61];
    v3 = v1[60];
    v4 = v1[57];
    v5 = v1[41];

    v2(v4, v3, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[65];
    v44 = v1[63];
    v10 = v1[57];
    v11 = v1[41];
    v13 = v1[39];
    v12 = v1[40];
    v14 = v1[38];
    if (v8)
    {
      v43 = v1[40];
      v15 = swift_slowAlloc();
      v42 = v14;
      v16 = swift_slowAlloc();
      v47[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B36BF20, v47);
      *(v15 + 12) = 2048;
      *(v15 + 14) = 397;
      _os_log_impl(&dword_22B116000, v6, v7, "[AMIProcessor] Task is cancelled at marker %s:%ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);

      v44(v10, v11);
      (*(v13 + 8))(v43, v42);
    }

    else
    {

      v44(v10, v11);
      (*(v13 + 8))(v12, v14);
    }

    v27 = v1[1];

    return v27();
  }

  else
  {
    (v1[61])(v1[56], v1[60], v1[41]);

    v17 = sub_22B36050C();
    v18 = sub_22B360D2C();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v1[63];
    v21 = v1[56];
    v22 = v1[41];
    if (v19)
    {
      v45 = v1[63];
      v24 = v1[13];
      v23 = v1[14];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_22B1A7B20(v24, v23, v47);
      _os_log_impl(&dword_22B116000, v17, v18, "[AMIProcessor] Processed using usage points for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23188F650](v26, -1, -1);
      MEMORY[0x23188F650](v25, -1, -1);

      v45(v21, v22);
    }

    else
    {

      v20(v21, v22);
    }

    (v1[61])(v1[55], v1[60], v1[41]);

    v29 = sub_22B36050C();
    v30 = sub_22B360D2C();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[63];
    v33 = v1[55];
    v34 = v1[41];
    if (v31)
    {
      v46 = v1[63];
      v36 = v1[13];
      v35 = v1[14];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22B1A7B20(v36, v35, v47);
      _os_log_impl(&dword_22B116000, v29, v30, "[AMIProcessor] Get usage summaries for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x23188F650](v38, -1, -1);
      MEMORY[0x23188F650](v37, -1, -1);

      v46(v33, v34);
    }

    else
    {

      v32(v33, v34);
    }

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v39 = v1[36];
    v40 = qword_28140BCE0;
    v1[73] = qword_28140BCE0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);

    return MEMORY[0x2822009F8](sub_22B1C5810, v40, 0);
  }
}

uint64_t sub_22B1C5810()
{
  v1 = v0[72];
  sub_22B1D6838(v0[66], v0[67], v0[68], v0[69], v0[36]);
  v0[74] = v2;
  v0[75] = v1;
  sub_22B123284(v0[36], &qword_27D8BA420, &unk_22B364910);
  if (v1)
  {

    v3 = sub_22B1C9CC4;
  }

  else
  {
    v3 = sub_22B1C58FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B1C58FC()
{
  v69 = v0;
  v1 = *(v0 + 592);
  if (v1)
  {
    (*(v0 + 488))(*(v0 + 432), *(v0 + 480), *(v0 + 328));

    v2 = sub_22B36050C();
    v3 = sub_22B360D2C();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 504);
    v6 = *(v0 + 432);
    v7 = *(v0 + 328);
    if (v4)
    {
      v63 = *(v0 + 112);
      v65 = *(v0 + 504);
      v8 = *(v0 + 104);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v68 = v10;
      *v9 = 134218242;
      *(v9 + 4) = *(v1 + 16);

      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_22B1A7B20(v8, v63, &v68);
      _os_log_impl(&dword_22B116000, v2, v3, "[AMIProcessor] Got %ld usage summaries for %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23188F650](v10, -1, -1);
      MEMORY[0x23188F650](v9, -1, -1);

      v11 = v65(v6, v7);
    }

    else
    {

      v11 = v5(v6, v7);
    }

    v28 = *(v1 + 16);
    *(v0 + 608) = v28;
    if (v28)
    {
      v29 = *(*(v0 + 192) + 80);
      *(v0 + 824) = v29;
      v30 = *(v0 + 600);
      *(v0 + 624) = 0;
      *(v0 + 616) = v30;
      v31 = *(v0 + 592);
      if (*(v31 + 16))
      {
        v32 = *(v0 + 488);
        v33 = *(v0 + 480);
        v34 = *(v0 + 424);
        v35 = *(v0 + 328);
        v37 = *(v0 + 272);
        v36 = *(v0 + 280);
        v67 = *(v0 + 264);
        sub_22B1CA1F0(v31 + ((v29 + 32) & ~v29), v36, type metadata accessor for CDUsageSummaryRecords);
        v32(v34, v33, v35);
        sub_22B1CA1F0(v36, v37, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA1F0(v36, v67, type metadata accessor for CDUsageSummaryRecords);

        v38 = sub_22B36050C();
        v39 = sub_22B360D2C();

        v40 = os_log_type_enabled(v38, v39);
        v41 = *(v0 + 504);
        v42 = *(v0 + 424);
        v43 = *(v0 + 328);
        v45 = *(v0 + 264);
        v44 = *(v0 + 272);
        if (v40)
        {
          v61 = *(v0 + 112);
          v60 = *(v0 + 104);
          v64 = *(v0 + 328);
          v46 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v68 = v62;
          *v46 = 136315650;
          sub_22B1CA150();
          v47 = sub_22B36131C();
          v49 = v48;
          sub_22B1CA258(v44, type metadata accessor for CDUsageSummaryRecords);
          v50 = sub_22B1A7B20(v47, v49, &v68);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2080;
          v51 = sub_22B36131C();
          v53 = v52;
          sub_22B1CA258(v45, type metadata accessor for CDUsageSummaryRecords);
          v54 = sub_22B1A7B20(v51, v53, &v68);

          *(v46 + 14) = v54;
          *(v46 + 22) = 2080;
          *(v46 + 24) = sub_22B1A7B20(v60, v61, &v68);
          _os_log_impl(&dword_22B116000, v38, v39, "[AMIProcessor] processing summary %s-%s for %s", v46, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v62, -1, -1);
          MEMORY[0x23188F650](v46, -1, -1);

          v41(v42, v64);
        }

        else
        {

          sub_22B1CA258(v45, type metadata accessor for CDUsageSummaryRecords);
          sub_22B1CA258(v44, type metadata accessor for CDUsageSummaryRecords);
          v41(v42, v43);
        }

        v55 = *(v0 + 280);
        v56 = *(v0 + 184);
        v12 = *(v0 + 560);
        *(v0 + 632) = *(v55 + v56[14]);
        *(v0 + 640) = *(v55 + v56[8]);
        *(v0 + 828) = v56[11];
        *(v0 + 832) = v56[7];
        v11 = sub_22B1C5FF8;
        v13 = 0;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2822009F8](v11, v12, v13);
    }
  }

  else
  {
    v14 = *(v0 + 488);
    v15 = *(v0 + 480);
    v16 = *(v0 + 344);
    v17 = *(v0 + 328);

    v14(v16, v15, v17);

    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 504);
    v22 = *(v0 + 344);
    v23 = *(v0 + 328);
    if (v20)
    {
      v66 = *(v0 + 504);
      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22B1A7B20(v25, v24, &v68);
      _os_log_impl(&dword_22B116000, v18, v19, "[AMIProcessor] Got 0 usage summaries for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);

      v66(v22, v23);
    }

    else
    {

      v21(v22, v23);
    }
  }

  v57 = *(v0 + 520);
  v58 = swift_task_alloc();
  *(v0 + 816) = v58;
  *v58 = v0;
  v58[1] = sub_22B1C9758;

  return sub_22B1B7BB4(v57, 1);
}

uint64_t sub_22B1C5FF8()
{
  (*(v0 + 488))(*(v0 + 416), *(v0 + 480), *(v0 + 328));
  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "Process Interval Blocks", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v4 = *(v0 + 560);
  v5 = *(v0 + 504);
  v6 = *(v0 + 416);
  v7 = *(v0 + 328);

  v5(v6, v7);
  v8 = *(v4 + 112);
  *(v0 + 648) = v8;
  if (v8)
  {
    v9 = *(*(v0 + 560) + 120);
    *(v0 + 656) = v9;

    v10 = v9;
    v11 = sub_22B207EFC();
    v12 = [v11 newBackgroundContext];
    *(v0 + 664) = v12;
    v13 = sub_22B36081C();
    [v12 setTransactionAuthor_];

    [v12 setMergePolicy_];
    [v12 setUndoManager_];
    [v12 setShouldRefreshAfterSave_];
    [v12 setStalenessInterval_];
    [v12 setShouldDeleteInaccessibleFaults_];

    v14 = sub_22B1C6270;
  }

  else
  {

    sub_22B134CDC();
    *(v0 + 784) = swift_allocError();
    *v15 = 13;
    swift_willThrow();
    v14 = sub_22B1C6FF0;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_22B1C6270()
{
  *(v0 + 88) = 0;
  v1 = v0 + 88;
  *(v0 + 96) = 0;
  v2 = *(v0 + 640);
  *(v0 + 840) = 1;
  v3 = *(v2 + 16);
  *(v0 + 672) = v3;
  if (v3)
  {
    v4 = 0;
    v49 = (v0 + 840);
    v54 = (v0 + 841);
    v5 = *(v0 + 168);
    *(v0 + 836) = *(v5 + 80);
    *(v0 + 680) = *(v5 + 72);
    *(v0 + 688) = *(v5 + 16);
    v6 = *(v0 + 616);
    while (1)
    {
      *(v0 + 720) = v4;
      (*(v0 + 688))(*(v0 + 176), *(v0 + 640) + ((*(v0 + 836) + 32) & ~*(v0 + 836)) + *(v0 + 680) * v4, *(v0 + 160));
      v7 = sub_22B35F97C();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        goto LABEL_3;
      }

      v11 = sub_22B35F94C();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(v0 + 664);
        v52 = v6;
        v16 = *(v0 + 552);
        v17 = *(v0 + 544);
        v18 = *(v0 + 280);
        v19 = v18 + *(v0 + 832);
        v20 = v18 + *(v0 + 828);
        v50 = *(v0 + 648);
        v51 = *(v0 + 528);
        v48 = sub_22B35F97C();
        *(v0 + 728) = v48;
        v53 = v21;
        *(v0 + 736) = v21;
        v22 = sub_22B35F94C();
        v24 = v23;
        *(v0 + 744) = v22;
        *(v0 + 752) = v23;
        *(v0 + 841) = 1;
        v25 = swift_task_alloc();
        *(v25 + 16) = v50;
        *(v25 + 32) = v51;
        *(v25 + 48) = v17;
        *(v25 + 56) = v16;
        *(v25 + 64) = v22;
        *(v25 + 72) = v24;
        *(v25 + 80) = v20;
        *(v25 + 88) = v19;
        *(v25 + 96) = v15;
        *(v25 + 104) = v54;
        *(v25 + 112) = v0 + 96;
        *(v25 + 120) = v0 + 88;
        *(v25 + 128) = v49;
        sub_22B360E7C();
        if (v52)
        {
          v26 = *(v0 + 488);
          v27 = *(v0 + 480);
          v28 = *(v0 + 408);
          v29 = *(v0 + 328);

          v26(v28, v27, v29);
          v30 = sub_22B36050C();
          v31 = sub_22B360D1C();
          v32 = os_log_type_enabled(v30, v31);
          v33 = *(v0 + 504);
          v34 = *(v0 + 408);
          v35 = *(v0 + 328);
          if (v32)
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_22B116000, v30, v31, "[IntervalReadingRecords] Failed to check if preprocessed already", v36, 2u);
            MEMORY[0x23188F650](v36, -1, -1);
          }

          v33(v34, v35);
        }

        else
        {
        }

        *(v0 + 760) = 0;
        if (*v54 != 1)
        {
          v40 = *(v0 + 832);
          v41 = *(v0 + 828);
          v42 = *(v0 + 552);
          v43 = *(v0 + 280);
          v44 = swift_task_alloc();
          *(v0 + 768) = v44;
          *v44 = v0;
          v44[1] = sub_22B1C68C0;
          v45 = *(v0 + 544);
          v46 = *(v0 + 320);

          return sub_22B3156C8(v45, v42, v43 + v41, v43 + v40, v46, v48, v53);
        }

        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

        v6 = 0;
      }

      else
      {
LABEL_3:
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      }

      v4 = *(v0 + 720) + 1;
      if (v4 == *(v0 + 672))
      {
        v1 = v0 + 88;
        v37 = *v49;
        v38 = *(v0 + 88);
        goto LABEL_20;
      }
    }
  }

  v6 = *(v0 + 616);
  v38 = 0uLL;
  v37 = 1;
LABEL_20:
  *(v1 + 754) = v37;
  *(v0 + 704) = v38;
  *(v0 + 696) = v6;
  v39 = *(v0 + 560);

  return MEMORY[0x2822009F8](sub_22B1C66DC, v39, 0);
}

uint64_t sub_22B1C66DC()
{
  v1 = *(v0[70] + 128);
  if (v1)
  {
    v2 = v0[83];
    v3 = v0[82];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_22B1CA1A8;
    *(v5 + 24) = v4;
    v0[6] = sub_22B12819C;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_12;
    v6 = _Block_copy(v0 + 2);
    v7 = v1;

    [v7 performBlockAndWait_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = v0[82];

LABEL_5:

  return MEMORY[0x2822009F8](sub_22B1C7244, 0, 0);
}

uint64_t sub_22B1C68C0(uint64_t a1)
{
  *(*v1 + 776) = a1;

  return MEMORY[0x2822009F8](sub_22B1C69C0, 0, 0);
}

uint64_t sub_22B1C69C0()
{
  v1 = (v0 + 648);
  v2 = *(v0 + 776);
  if (v2)
  {
    v73 = *(v0 + 760);
    v3 = *(v0 + 752);
    v4 = *(v0 + 744);
    v72 = *(v0 + 736);
    v5 = *(v0 + 728);
    v6 = *(v0 + 664);
    v7 = *(v0 + 280);
    v8 = v7 + *(v0 + 832);
    v9 = v7 + *(v0 + 828);
    v69 = *(v0 + 528);
    v71 = *(v0 + 544);
    v10 = swift_task_alloc();
    *(v10 + 16) = *v1;
    *(v10 + 32) = v69;
    *(v10 + 48) = v71;
    *(v10 + 64) = v4;
    *(v10 + 72) = v3;
    *(v10 + 80) = v9;
    *(v10 + 88) = v8;
    *(v10 + 96) = v6;
    *(v10 + 104) = v2;
    *(v10 + 112) = v5;
    *(v10 + 120) = v72;
    v11 = v73;
    sub_22B360E7C();
    if (v73)
    {
      v12 = *(v0 + 488);
      v13 = *(v0 + 480);
      v14 = *(v0 + 400);
      v15 = *(v0 + 328);

      v12(v14, v13, v15);
      v16 = sub_22B36050C();
      v17 = sub_22B360D1C();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 504);
      v20 = *(v0 + 400);
      v21 = *(v0 + 328);
      if (v18)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22B116000, v16, v17, "[Dropbox Bridge] Failed to process reading", v22, 2u);
        MEMORY[0x23188F650](v22, -1, -1);
      }

      v19(v20, v21);
      v11 = 0;
    }

    else
    {
    }

    v1 = (v0 + 648);
  }

  else
  {

    v11 = *(v0 + 760);
  }

  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  v23 = *(v0 + 720) + 1;
  if (v23 == *(v0 + 672))
  {
LABEL_10:
    v24 = v11;
LABEL_11:
    *(v1 + 194) = *(v1 + 192);
    *(v0 + 704) = *(v0 + 88);
    *(v0 + 696) = v24;
    v25 = *(v0 + 560);

    return MEMORY[0x2822009F8](sub_22B1C66DC, v25, 0);
  }

  else
  {
    v26 = (v0 + 841);
    while (1)
    {
      while (1)
      {
        *(v0 + 720) = v23;
        (*(v0 + 688))(*(v0 + 176), *(v0 + 640) + ((*(v0 + 836) + 32) & ~*(v0 + 836)) + *(v0 + 680) * v23, *(v0 + 160));
        v27 = sub_22B35F97C();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v31 = sub_22B35F94C();
          v33 = v32;

          v34 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v34 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            break;
          }
        }

        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        v23 = *(v0 + 720) + 1;
        if (v23 == *(v0 + 672))
        {
          goto LABEL_10;
        }
      }

      v35 = *(v0 + 664);
      v70 = v26;
      v36 = *(v0 + 552);
      v37 = *(v0 + 544);
      v38 = *(v0 + 280);
      v39 = v38 + *(v0 + 832);
      v40 = v38 + *(v0 + 828);
      v66 = *v1;
      v67 = *(v0 + 528);
      v65 = sub_22B35F97C();
      *(v0 + 728) = v65;
      v68 = v41;
      *(v0 + 736) = v41;
      v42 = sub_22B35F94C();
      v44 = v43;
      *(v0 + 744) = v42;
      *(v0 + 752) = v43;
      *(v0 + 841) = 1;
      v45 = swift_task_alloc();
      *(v45 + 16) = v66;
      *(v45 + 32) = v67;
      *(v45 + 48) = v37;
      *(v45 + 56) = v36;
      v26 = v70;
      *(v45 + 64) = v42;
      *(v45 + 72) = v44;
      *(v45 + 80) = v40;
      *(v45 + 88) = v39;
      *(v45 + 96) = v35;
      *(v45 + 104) = v70;
      *(v45 + 112) = v0 + 96;
      *(v45 + 120) = v0 + 88;
      *(v45 + 128) = v0 + 840;
      sub_22B360E7C();
      if (v11)
      {
        v46 = *(v0 + 488);
        v47 = *(v0 + 480);
        v48 = *(v0 + 408);
        v49 = *(v0 + 328);

        v46(v48, v47, v49);
        v50 = sub_22B36050C();
        v51 = sub_22B360D1C();
        v52 = os_log_type_enabled(v50, v51);
        v53 = *(v0 + 504);
        v54 = *(v0 + 408);
        v55 = *(v0 + 328);
        if (v52)
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_22B116000, v50, v51, "[IntervalReadingRecords] Failed to check if preprocessed already", v56, 2u);
          MEMORY[0x23188F650](v56, -1, -1);
        }

        v53(v54, v55);
        v26 = v70;
      }

      else
      {
      }

      *(v0 + 760) = 0;
      if (*v26 != 1)
      {
        break;
      }

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

      v24 = 0;
      v11 = 0;
      v23 = *(v0 + 720) + 1;
      v1 = (v0 + 648);
      if (v23 == *(v0 + 672))
      {
        goto LABEL_11;
      }
    }

    v57 = *(v0 + 832);
    v58 = *(v0 + 828);
    v59 = *(v0 + 552);
    v60 = *(v0 + 280);
    v61 = swift_task_alloc();
    *(v0 + 768) = v61;
    *v61 = v0;
    v61[1] = sub_22B1C68C0;
    v62 = *(v0 + 544);
    v63 = *(v0 + 320);

    return sub_22B3156C8(v62, v59, v60 + v58, v60 + v57, v63, v65, v68);
  }
}

uint64_t sub_22B1C6FF0()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);

  (*(v2 + 8))(v1, v3);
  sub_22B1CA258(v4, type metadata accessor for CDUsageSummaryRecords);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B1C7244(uint64_t a1)
{
  v200 = v1;
  if (sub_22B360BFC())
  {
    v2 = *(v1 + 488);
    v3 = *(v1 + 480);
    v4 = *(v1 + 392);
    v5 = *(v1 + 328);

    v2(v4, v3, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 520);
    v194 = *(v1 + 504);
    v10 = *(v1 + 392);
    v11 = *(v1 + 328);
    v13 = *(v1 + 312);
    v12 = *(v1 + 320);
    v14 = *(v1 + 304);
    if (v8)
    {
      v15 = swift_slowAlloc();
      v184 = v12;
      v16 = swift_slowAlloc();
      v199[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B36BF20, v199);
      *(v15 + 12) = 2048;
      *(v15 + 14) = 458;
      _os_log_impl(&dword_22B116000, v6, v7, "[AMIProcessor] Task is cancelled at marker %s:%ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);

      v194(v10, v11);
      (*(v13 + 8))(v184, v14);
    }

    else
    {

      v194(v10, v11);
      (*(v13 + 8))(v12, v14);
    }

    sub_22B1CA258(*(v1 + 280), type metadata accessor for CDUsageSummaryRecords);

    v33 = *(v1 + 8);

    return v33();
  }

  if (*(v1 + 842))
  {
    v17 = *(v1 + 280);
    v19 = *(v1 + 216);
    v18 = *(v1 + 224);
    (*(v1 + 488))(*(v1 + 360), *(v1 + 480), *(v1 + 328));
    sub_22B1CA1F0(v17, v18, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA1F0(v17, v19, type metadata accessor for CDUsageSummaryRecords);
    v20 = sub_22B36050C();
    v21 = sub_22B360D2C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v1 + 632);
      v188 = *(v1 + 360);
      v195 = *(v1 + 504);
      v185 = *(v1 + 328);
      v23 = *(v1 + 224);
      v176 = *(v1 + 216);
      v24 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v199[0] = v179;
      *v24 = 134218498;
      *(v24 + 4) = v22;
      *(v24 + 12) = 2080;
      sub_22B1CA150();
      v25 = sub_22B36131C();
      v27 = v26;
      sub_22B1CA258(v23, type metadata accessor for CDUsageSummaryRecords);
      v28 = sub_22B1A7B20(v25, v27, v199);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2080;
      v29 = sub_22B36131C();
      v31 = v30;
      sub_22B1CA258(v176, type metadata accessor for CDUsageSummaryRecords);
      v32 = sub_22B1A7B20(v29, v31, v199);

      *(v24 + 24) = v32;
      _os_log_impl(&dword_22B116000, v20, v21, "[AMIProcessor] For usage summary(value:%f)%s-%s all readings are present", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v179, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      v195(v188, v185);
    }

    else
    {
      v55 = *(v1 + 504);
      v56 = *(v1 + 360);
      v57 = *(v1 + 328);
      v59 = *(v1 + 216);
      v58 = *(v1 + 224);

      sub_22B1CA258(v59, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA258(v58, type metadata accessor for CDUsageSummaryRecords);
      v55(v56, v57);
    }

    goto LABEL_26;
  }

  v35 = sub_22B35F14C();
  *(v1 + 792) = v36;
  if (!v36)
  {
LABEL_26:
    v115 = *(v1 + 280);
    v117 = *(v1 + 200);
    v116 = *(v1 + 208);
    (*(v1 + 488))(*(v1 + 352), *(v1 + 480), *(v1 + 328));
    sub_22B1CA1F0(v115, v116, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA1F0(v115, v117, type metadata accessor for CDUsageSummaryRecords);
    v118 = sub_22B36050C();
    v119 = sub_22B360D1C();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = *(v1 + 632);
      v192 = *(v1 + 352);
      v197 = *(v1 + 504);
      v187 = *(v1 + 328);
      v121 = *(v1 + 208);
      v177 = *(v1 + 200);
      v122 = *(v1 + 712) - *(v1 + 704);
      v123 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v199[0] = v181;
      *v123 = 134218754;
      *(v123 + 4) = v122;
      *(v123 + 12) = 2048;
      *(v123 + 14) = v120;
      *(v123 + 22) = 2080;
      sub_22B1CA150();
      v124 = sub_22B36131C();
      v126 = v125;
      sub_22B1CA258(v121, type metadata accessor for CDUsageSummaryRecords);
      v127 = sub_22B1A7B20(v124, v126, v199);

      *(v123 + 24) = v127;
      *(v123 + 32) = 2080;
      v128 = sub_22B36131C();
      v130 = v129;
      sub_22B1CA258(v177, type metadata accessor for CDUsageSummaryRecords);
      v131 = sub_22B1A7B20(v128, v130, v199);

      *(v123 + 34) = v131;
      _os_log_impl(&dword_22B116000, v118, v119, "[AMIProcessor] Processed Interval Readings(value: %f for usage summary(value:%f) %s-%s", v123, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v181, -1, -1);
      MEMORY[0x23188F650](v123, -1, -1);

      v197(v192, v187);
    }

    else
    {
      v132 = *(v1 + 504);
      v133 = *(v1 + 352);
      v134 = *(v1 + 328);
      v136 = *(v1 + 200);
      v135 = *(v1 + 208);

      sub_22B1CA258(v136, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA258(v135, type metadata accessor for CDUsageSummaryRecords);
      v132(v133, v134);
    }

    v137 = *(v1 + 608);
    v138 = *(v1 + 624) + 1;
    v139 = sub_22B1CA258(*(v1 + 280), type metadata accessor for CDUsageSummaryRecords);
    if (v138 == v137)
    {

      v142 = *(v1 + 520);
      v143 = swift_task_alloc();
      *(v1 + 816) = v143;
      *v143 = v1;
      v143[1] = sub_22B1C9758;

      return sub_22B1B7BB4(v142, 1);
    }

    else
    {
      v144 = *(v1 + 696);
      v145 = *(v1 + 624) + 1;
      *(v1 + 624) = v145;
      *(v1 + 616) = v144;
      v146 = *(v1 + 592);
      if (v145 >= *(v146 + 16))
      {
        __break(1u);
      }

      else
      {
        v147 = *(v1 + 488);
        v148 = *(v1 + 480);
        v149 = *(v1 + 424);
        v150 = *(v1 + 328);
        v152 = *(v1 + 272);
        v151 = *(v1 + 280);
        v198 = *(v1 + 264);
        sub_22B1CA1F0(v146 + ((*(v1 + 824) + 32) & ~*(v1 + 824)) + *(*(v1 + 192) + 72) * v145, v151, type metadata accessor for CDUsageSummaryRecords);
        v147(v149, v148, v150);
        sub_22B1CA1F0(v151, v152, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA1F0(v151, v198, type metadata accessor for CDUsageSummaryRecords);

        v153 = sub_22B36050C();
        v154 = sub_22B360D2C();

        v155 = os_log_type_enabled(v153, v154);
        v156 = *(v1 + 504);
        v157 = *(v1 + 424);
        v158 = *(v1 + 328);
        v160 = *(v1 + 264);
        v159 = *(v1 + 272);
        if (v155)
        {
          v173 = *(v1 + 104);
          v175 = *(v1 + 112);
          v193 = *(v1 + 328);
          v161 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v199[0] = v178;
          *v161 = 136315650;
          sub_22B1CA150();
          v162 = sub_22B36131C();
          v164 = v163;
          sub_22B1CA258(v159, type metadata accessor for CDUsageSummaryRecords);
          v165 = sub_22B1A7B20(v162, v164, v199);

          *(v161 + 4) = v165;
          *(v161 + 12) = 2080;
          v166 = sub_22B36131C();
          v168 = v167;
          sub_22B1CA258(v160, type metadata accessor for CDUsageSummaryRecords);
          v169 = sub_22B1A7B20(v166, v168, v199);

          *(v161 + 14) = v169;
          *(v161 + 22) = 2080;
          *(v161 + 24) = sub_22B1A7B20(v173, v175, v199);
          _os_log_impl(&dword_22B116000, v153, v154, "[AMIProcessor] processing summary %s-%s for %s", v161, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v178, -1, -1);
          MEMORY[0x23188F650](v161, -1, -1);

          v156(v157, v193);
        }

        else
        {

          sub_22B1CA258(v160, type metadata accessor for CDUsageSummaryRecords);
          sub_22B1CA258(v159, type metadata accessor for CDUsageSummaryRecords);
          v156(v157, v158);
        }

        v170 = *(v1 + 280);
        v171 = *(v1 + 184);
        v140 = *(v1 + 560);
        *(v1 + 632) = *(v170 + v171[14]);
        *(v1 + 640) = *(v170 + v171[8]);
        *(v1 + 828) = v171[11];
        *(v1 + 832) = v171[7];
        v139 = sub_22B1C5FF8;
        v141 = 0;
      }

      return MEMORY[0x2822009F8](v139, v140, v141);
    }
  }

  v37 = v36;
  v196 = v35;
  v38 = *(v1 + 280);
  v40 = *(v1 + 248);
  v39 = *(v1 + 256);
  (*(v1 + 488))(*(v1 + 384), *(v1 + 480), *(v1 + 328));
  sub_22B1CA1F0(v38, v39, type metadata accessor for CDUsageSummaryRecords);
  sub_22B1CA1F0(v38, v40, type metadata accessor for CDUsageSummaryRecords);
  v41 = sub_22B36050C();
  v42 = sub_22B360D1C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v1 + 632);
    v182 = *(v1 + 384);
    v186 = *(v1 + 504);
    v180 = *(v1 + 328);
    v44 = *(v1 + 256);
    v172 = *(v1 + 248);
    v189 = v37;
    v45 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v199[0] = v174;
    *v45 = 134218498;
    *(v45 + 4) = v43;
    *(v45 + 12) = 2080;
    sub_22B1CA150();
    v46 = sub_22B36131C();
    v48 = v47;
    sub_22B1CA258(v44, type metadata accessor for CDUsageSummaryRecords);
    v49 = sub_22B1A7B20(v46, v48, v199);

    *(v45 + 14) = v49;
    *(v45 + 22) = 2080;
    v50 = sub_22B36131C();
    v52 = v51;
    sub_22B1CA258(v172, type metadata accessor for CDUsageSummaryRecords);
    v53 = sub_22B1A7B20(v50, v52, v199);

    *(v45 + 24) = v53;
    _os_log_impl(&dword_22B116000, v41, v42, "[AMIProcessor] For usage summary(value:%f) %s-%s all readings are not present", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v174, -1, -1);
    v54 = v45;
    v37 = v189;
    MEMORY[0x23188F650](v54, -1, -1);

    v186(v182, v180);
  }

  else
  {
    v60 = *(v1 + 504);
    v61 = *(v1 + 384);
    v62 = *(v1 + 328);
    v64 = *(v1 + 248);
    v63 = *(v1 + 256);

    sub_22B1CA258(v64, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA258(v63, type metadata accessor for CDUsageSummaryRecords);
    v60(v61, v62);
  }

  v65 = *(v1 + 144);
  v66 = *(v1 + 152);
  v67 = *(v1 + 128);
  v68 = *(v1 + 136);
  sub_22B35DE6C();
  sub_22B35DE0C();
  v69 = sub_22B35DDEC();
  v70 = *(v68 + 8);
  v70(v65, v67);
  v70(v66, v67);
  v71 = *(v1 + 488);
  v72 = *(v1 + 480);
  v73 = *(v1 + 328);
  v74 = *(v1 + 280);
  if ((v69 & 1) == 0)
  {
    v91 = *(v1 + 368);
    v92 = *(v1 + 232);

    v71(v91, v72, v73);
    sub_22B1CA1F0(v74, v92, type metadata accessor for CDUsageSummaryRecords);
    v93 = sub_22B36050C();
    v94 = sub_22B360D2C();
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v1 + 504);
    v97 = *(v1 + 368);
    v98 = *(v1 + 328);
    v99 = *(v1 + 232);
    if (v95)
    {
      v100 = *(v1 + 184);
      v101 = swift_slowAlloc();
      v191 = v96;
      v102 = swift_slowAlloc();
      v199[0] = v102;
      *v101 = 136315138;
      v103 = (v99 + *(v100 + 60));
      v104 = *v103;
      v105 = v103[1];

      sub_22B1CA258(v99, type metadata accessor for CDUsageSummaryRecords);
      v106 = sub_22B1A7B20(v104, v105, v199);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_22B116000, v93, v94, "[AMIProcessor] Not asking for resend of missing data for usage summary %s to avoid flooding server", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x23188F650](v102, -1, -1);
      MEMORY[0x23188F650](v101, -1, -1);

      v191(v97, v98);
    }

    else
    {

      sub_22B1CA258(v99, type metadata accessor for CDUsageSummaryRecords);
      v96(v97, v98);
    }

    goto LABEL_26;
  }

  v75 = *(v1 + 240);
  v71(*(v1 + 376), *(v1 + 480), *(v1 + 328));
  sub_22B1CA1F0(v74, v75, type metadata accessor for CDUsageSummaryRecords);
  v76 = sub_22B36050C();
  v77 = sub_22B360D2C();
  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v1 + 504);
  v80 = *(v1 + 376);
  v81 = *(v1 + 328);
  v82 = *(v1 + 240);
  if (v78)
  {
    v190 = v37;
    v83 = *(v1 + 184);
    v183 = *(v1 + 504);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v199[0] = v85;
    *v84 = 136315138;
    v86 = (v82 + *(v83 + 60));
    v87 = *v86;
    v88 = v86[1];

    sub_22B1CA258(v82, type metadata accessor for CDUsageSummaryRecords);
    v89 = v87;
    v37 = v190;
    v90 = sub_22B1A7B20(v89, v88, v199);

    *(v84 + 4) = v90;
    _os_log_impl(&dword_22B116000, v76, v77, "[AMIProcessor] Asking for resend of missing data for usage summary %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x23188F650](v85, -1, -1);
    MEMORY[0x23188F650](v84, -1, -1);

    v183(v80, v81);
  }

  else
  {

    sub_22B1CA258(v82, type metadata accessor for CDUsageSummaryRecords);
    v79(v80, v81);
  }

  v107 = *(v1 + 832);
  v108 = *(v1 + 828);
  v109 = *(v1 + 552);
  v110 = *(v1 + 536);
  v111 = *(v1 + 280);
  v112 = swift_task_alloc();
  *(v1 + 800) = v112;
  *v112 = v1;
  v112[1] = sub_22B1C8678;
  v113 = *(v1 + 544);
  v114 = *(v1 + 528);

  return sub_22B1C3C6C(v196, v37, v114, v110, v113, v109, v111 + v108, v111 + v107);
}

uint64_t sub_22B1C8678(char a1)
{
  *(*v1 + 843) = a1;

  return MEMORY[0x2822009F8](sub_22B1C8798, 0, 0);
}

uint64_t sub_22B1C8798()
{
  v78 = v0;
  if (*(v0 + 843))
  {
    v1 = *(v0 + 552);
    v2 = *(v0 + 536);
    v3 = (*(v0 + 280) + *(*(v0 + 184) + 64));
    v4 = *v3;
    v5 = v3[1];
    v6 = swift_task_alloc();
    *(v0 + 808) = v6;
    *v6 = v0;
    v6[1] = sub_22B1C8F58;
    v7 = *(v0 + 544);
    v8 = *(v0 + 528);

    return sub_22B1D6B94(v8, v2, v7, v1, v4, v5);
  }

  else
  {
    v10 = *(v0 + 280);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    (*(v0 + 488))(*(v0 + 352), *(v0 + 480), *(v0 + 328));
    sub_22B1CA1F0(v10, v11, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA1F0(v10, v12, type metadata accessor for CDUsageSummaryRecords);
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 632);
      v73 = *(v0 + 352);
      v75 = *(v0 + 504);
      v16 = *(v0 + 208);
      v69 = *(v0 + 200);
      v17 = *(v0 + 712) - *(v0 + 704);
      v72 = *(v0 + 328);
      v18 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = v71;
      *v18 = 134218754;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v15;
      *(v18 + 22) = 2080;
      sub_22B1CA150();
      v19 = sub_22B36131C();
      v21 = v20;
      sub_22B1CA258(v16, type metadata accessor for CDUsageSummaryRecords);
      v22 = sub_22B1A7B20(v19, v21, &v77);

      *(v18 + 24) = v22;
      *(v18 + 32) = 2080;
      v23 = sub_22B36131C();
      v25 = v24;
      sub_22B1CA258(v69, type metadata accessor for CDUsageSummaryRecords);
      v26 = sub_22B1A7B20(v23, v25, &v77);

      *(v18 + 34) = v26;
      _os_log_impl(&dword_22B116000, v13, v14, "[AMIProcessor] Processed Interval Readings(value: %f for usage summary(value:%f) %s-%s", v18, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v71, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v75(v73, v72);
    }

    else
    {
      v27 = *(v0 + 504);
      v28 = *(v0 + 352);
      v29 = *(v0 + 328);
      v31 = *(v0 + 200);
      v30 = *(v0 + 208);

      sub_22B1CA258(v31, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA258(v30, type metadata accessor for CDUsageSummaryRecords);
      v27(v28, v29);
    }

    v32 = *(v0 + 608);
    v33 = *(v0 + 624) + 1;
    v34 = sub_22B1CA258(*(v0 + 280), type metadata accessor for CDUsageSummaryRecords);
    if (v33 == v32)
    {

      v37 = *(v0 + 520);
      v38 = swift_task_alloc();
      *(v0 + 816) = v38;
      *v38 = v0;
      v38[1] = sub_22B1C9758;

      return sub_22B1B7BB4(v37, 1);
    }

    else
    {
      v39 = *(v0 + 696);
      v40 = *(v0 + 624) + 1;
      *(v0 + 624) = v40;
      *(v0 + 616) = v39;
      v41 = *(v0 + 592);
      if (v40 >= *(v41 + 16))
      {
        __break(1u);
      }

      else
      {
        v42 = *(v0 + 488);
        v43 = *(v0 + 480);
        v44 = *(v0 + 424);
        v45 = *(v0 + 328);
        v47 = *(v0 + 272);
        v46 = *(v0 + 280);
        v76 = *(v0 + 264);
        sub_22B1CA1F0(v41 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(*(v0 + 192) + 72) * v40, v46, type metadata accessor for CDUsageSummaryRecords);
        v42(v44, v43, v45);
        sub_22B1CA1F0(v46, v47, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA1F0(v46, v76, type metadata accessor for CDUsageSummaryRecords);

        v48 = sub_22B36050C();
        v49 = sub_22B360D2C();

        v50 = os_log_type_enabled(v48, v49);
        v51 = *(v0 + 504);
        v52 = *(v0 + 424);
        v53 = *(v0 + 328);
        v55 = *(v0 + 264);
        v54 = *(v0 + 272);
        if (v50)
        {
          v68 = *(v0 + 112);
          v67 = *(v0 + 104);
          v74 = *(v0 + 328);
          v56 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v77 = v70;
          *v56 = 136315650;
          sub_22B1CA150();
          v57 = sub_22B36131C();
          v59 = v58;
          sub_22B1CA258(v54, type metadata accessor for CDUsageSummaryRecords);
          v60 = sub_22B1A7B20(v57, v59, &v77);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2080;
          v61 = sub_22B36131C();
          v63 = v62;
          sub_22B1CA258(v55, type metadata accessor for CDUsageSummaryRecords);
          v64 = sub_22B1A7B20(v61, v63, &v77);

          *(v56 + 14) = v64;
          *(v56 + 22) = 2080;
          *(v56 + 24) = sub_22B1A7B20(v67, v68, &v77);
          _os_log_impl(&dword_22B116000, v48, v49, "[AMIProcessor] processing summary %s-%s for %s", v56, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v70, -1, -1);
          MEMORY[0x23188F650](v56, -1, -1);

          v51(v52, v74);
        }

        else
        {

          sub_22B1CA258(v55, type metadata accessor for CDUsageSummaryRecords);
          sub_22B1CA258(v54, type metadata accessor for CDUsageSummaryRecords);
          v51(v52, v53);
        }

        v65 = *(v0 + 280);
        v66 = *(v0 + 184);
        v35 = *(v0 + 560);
        *(v0 + 632) = *(v65 + v66[14]);
        *(v0 + 640) = *(v65 + v66[8]);
        *(v0 + 828) = v66[11];
        *(v0 + 832) = v66[7];
        v34 = sub_22B1C5FF8;
        v36 = 0;
      }

      return MEMORY[0x2822009F8](v34, v35, v36);
    }
  }
}

uint64_t sub_22B1C8F58()
{

  return MEMORY[0x2822009F8](sub_22B1C9054, 0, 0);
}

uint64_t sub_22B1C9054()
{
  v70 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  (*(v0 + 488))(*(v0 + 352), *(v0 + 480), *(v0 + 328));
  sub_22B1CA1F0(v1, v2, type metadata accessor for CDUsageSummaryRecords);
  sub_22B1CA1F0(v1, v3, type metadata accessor for CDUsageSummaryRecords);
  v4 = sub_22B36050C();
  v5 = sub_22B360D1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 632);
    v65 = *(v0 + 352);
    v67 = *(v0 + 504);
    v7 = *(v0 + 208);
    v61 = *(v0 + 200);
    v8 = *(v0 + 712) - *(v0 + 704);
    v64 = *(v0 + 328);
    v9 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v9 = 134218754;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;
    *(v9 + 22) = 2080;
    sub_22B1CA150();
    v10 = sub_22B36131C();
    v12 = v11;
    sub_22B1CA258(v7, type metadata accessor for CDUsageSummaryRecords);
    v13 = sub_22B1A7B20(v10, v12, &v69);

    *(v9 + 24) = v13;
    *(v9 + 32) = 2080;
    v14 = sub_22B36131C();
    v16 = v15;
    sub_22B1CA258(v61, type metadata accessor for CDUsageSummaryRecords);
    v17 = sub_22B1A7B20(v14, v16, &v69);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_22B116000, v4, v5, "[AMIProcessor] Processed Interval Readings(value: %f for usage summary(value:%f) %s-%s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v63, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v67(v65, v64);
  }

  else
  {
    v18 = *(v0 + 504);
    v19 = *(v0 + 352);
    v20 = *(v0 + 328);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);

    sub_22B1CA258(v22, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA258(v21, type metadata accessor for CDUsageSummaryRecords);
    v18(v19, v20);
  }

  v23 = *(v0 + 608);
  v24 = *(v0 + 624) + 1;
  v25 = sub_22B1CA258(*(v0 + 280), type metadata accessor for CDUsageSummaryRecords);
  if (v24 == v23)
  {

    v28 = *(v0 + 520);
    v29 = swift_task_alloc();
    *(v0 + 816) = v29;
    *v29 = v0;
    v29[1] = sub_22B1C9758;

    return sub_22B1B7BB4(v28, 1);
  }

  else
  {
    v31 = *(v0 + 696);
    v32 = *(v0 + 624) + 1;
    *(v0 + 624) = v32;
    *(v0 + 616) = v31;
    v33 = *(v0 + 592);
    if (v32 >= *(v33 + 16))
    {
      __break(1u);
    }

    else
    {
      v34 = *(v0 + 488);
      v35 = *(v0 + 480);
      v36 = *(v0 + 424);
      v37 = *(v0 + 328);
      v39 = *(v0 + 272);
      v38 = *(v0 + 280);
      v68 = *(v0 + 264);
      sub_22B1CA1F0(v33 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(*(v0 + 192) + 72) * v32, v38, type metadata accessor for CDUsageSummaryRecords);
      v34(v36, v35, v37);
      sub_22B1CA1F0(v38, v39, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA1F0(v38, v68, type metadata accessor for CDUsageSummaryRecords);

      v40 = sub_22B36050C();
      v41 = sub_22B360D2C();

      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 504);
      v44 = *(v0 + 424);
      v45 = *(v0 + 328);
      v47 = *(v0 + 264);
      v46 = *(v0 + 272);
      if (v42)
      {
        v60 = *(v0 + 112);
        v59 = *(v0 + 104);
        v66 = *(v0 + 328);
        v48 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v69 = v62;
        *v48 = 136315650;
        sub_22B1CA150();
        v49 = sub_22B36131C();
        v51 = v50;
        sub_22B1CA258(v46, type metadata accessor for CDUsageSummaryRecords);
        v52 = sub_22B1A7B20(v49, v51, &v69);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_22B36131C();
        v55 = v54;
        sub_22B1CA258(v47, type metadata accessor for CDUsageSummaryRecords);
        v56 = sub_22B1A7B20(v53, v55, &v69);

        *(v48 + 14) = v56;
        *(v48 + 22) = 2080;
        *(v48 + 24) = sub_22B1A7B20(v59, v60, &v69);
        _os_log_impl(&dword_22B116000, v40, v41, "[AMIProcessor] processing summary %s-%s for %s", v48, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v62, -1, -1);
        MEMORY[0x23188F650](v48, -1, -1);

        v43(v44, v66);
      }

      else
      {

        sub_22B1CA258(v47, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA258(v46, type metadata accessor for CDUsageSummaryRecords);
        v43(v44, v45);
      }

      v57 = *(v0 + 280);
      v58 = *(v0 + 184);
      v26 = *(v0 + 560);
      *(v0 + 632) = *(v57 + v58[14]);
      *(v0 + 640) = *(v57 + v58[8]);
      *(v0 + 828) = v58[11];
      *(v0 + 832) = v58[7];
      v25 = sub_22B1C5FF8;
      v27 = 0;
    }

    return MEMORY[0x2822009F8](v25, v26, v27);
  }
}

uint64_t sub_22B1C9758(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_22B1C9860, 0, 0);
}

uint64_t sub_22B1C9860()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B1C9A90()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B1C9CC4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B1C9EF8()
{

  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon19AMIRecordsProcessor_sharedEKSignPoster;
  v2 = sub_22B3604AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AMIRecordsProcessor(uint64_t a1)
{
  result = qword_27D8BA610;
  if (!qword_27D8BA610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B1C9FF0(uint64_t a1)
{
  result = sub_22B3604AC();
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

void sub_22B1CA118(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_22B1CA150()
{
  result = qword_28140B488;
  if (!qword_28140B488)
  {
    sub_22B35DE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140B488);
  }

  return result;
}

uint64_t sub_22B1CA1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B1CA258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B1CA368@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 recordID];
  v4 = [v3 recordName];

  v5 = sub_22B36084C();
  v7 = v6;

  v8 = 0xF000000000000000;
  if (MEMORY[0x23188E890](0x64616F6C796170, 0xE700000000000000))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA638, &qword_22B365708);
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v8 = v15;
    }
  }

  else
  {
    v10 = 0;
  }

  result = MEMORY[0x23188E890](0x6E496D6F74737563, 0xEB00000000786564);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA638, &qword_22B365708);
    result = swift_dynamicCast();
    v12 = v14;
    v13 = v15;
    if (!result)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v8;
  a2[4] = v12;
  a2[5] = v13;
  return result;
}

uint64_t sub_22B1CA4D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();
  if (v11(ObjectType, a2))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v9, v12, v6);
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B116000, v13, v14, "KVS failed to synchronize", v15, 2u);
      MEMORY[0x23188F650](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v9, v6);
  }

  return v3;
}

uint64_t sub_22B1CA700()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B1CA75C(char *a1)
{
  v2 = sub_22B36089C();
  MEMORY[0x28223BE20](v2 - 8);
  v103 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = &v92 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  MEMORY[0x28223BE20](v13);
  v101 = &v92 - v14;
  MEMORY[0x28223BE20](v15);
  v99 = &v92 - v16;
  MEMORY[0x28223BE20](v17);
  v98 = &v92 - v18;
  MEMORY[0x28223BE20](v19);
  v100 = &v92 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v92 - v22;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v104 = v5;
  v25 = *(v5 + 16);
  v25(v23, v24, v4);
  v26 = sub_22B36050C();
  v27 = sub_22B360D2C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v97 = v7;
    v29 = v24;
    v30 = v25;
    v31 = a1;
    v32 = v4;
    v33 = v28;
    *v28 = 0;
    _os_log_impl(&dword_22B116000, v26, v27, "[ShareManager] Received Share Message", v28, 2u);
    v34 = v33;
    v4 = v32;
    a1 = v31;
    v25 = v30;
    v24 = v29;
    v7 = v97;
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v35 = *(v104 + 8);
  v35(v23, v4);
  if (!*(a1 + 2) || (v36 = sub_22B33B28C(0x67617373654D4B45, 0xED00006570795465), (v37 & 1) == 0))
  {
    v25(v7, v24, v4);
    v43 = sub_22B36050C();
    v44 = sub_22B360D1C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v7;
      v46 = v4;
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22B116000, v43, v44, "[ShareManager] Failed to decode messageTypeData", v47, 2u);
      MEMORY[0x23188F650](v47, -1, -1);
      goto LABEL_13;
    }

    v48 = v7;
    goto LABEL_15;
  }

  v97 = a1;
  v38 = (*(a1 + 7) + 16 * v36);
  v39 = *v38;
  v40 = v38[1];
  sub_22B144B30(*v38, v40);
  sub_22B36088C();
  v104 = v39;
  v41 = sub_22B36086C();
  if (!v42)
  {
    v12 = v102;
    v25(v102, v24, v4);
    v50 = sub_22B36050C();
    v51 = sub_22B360D2C();
    if (os_log_type_enabled(v50, v51))
    {
      v46 = v4;
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "[ShareManager] Failed to decode messageType";
      goto LABEL_30;
    }

    sub_22B12F174(v104, v40);

    v48 = v12;
LABEL_15:
    v49 = v4;
    return (v35)(v48, v49);
  }

  v102 = v4;
  if (v41 != 0x617469766E494B45 || v42 != 0xEC0000006E6F6974)
  {
    v54 = sub_22B36134C();

    if (v54)
    {
      goto LABEL_19;
    }

    v46 = v102;
    v25(v12, v24, v102);
    v50 = sub_22B36050C();
    v51 = sub_22B360D2C();
    if (!os_log_type_enabled(v50, v51))
    {
LABEL_31:
      sub_22B12F174(v104, v40);

      v48 = v12;
      goto LABEL_32;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "[ShareManager] Received unknown message";
LABEL_30:
    _os_log_impl(&dword_22B116000, v50, v51, v53, v52, 2u);
    MEMORY[0x23188F650](v52, -1, -1);
    goto LABEL_31;
  }

LABEL_19:
  v55 = v97;
  if (!*(v97 + 2) || (v56 = sub_22B33B28C(0xD000000000000017, 0x800000022B36C120), (v57 & 1) == 0))
  {
    v74 = v101;
    v46 = v102;
    v25(v101, v24, v102);
    v43 = sub_22B36050C();
    v75 = sub_22B360D2C();
    if (!os_log_type_enabled(v43, v75))
    {
      sub_22B12F174(v104, v40);

      v48 = v74;
      goto LABEL_32;
    }

    v45 = v74;
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_22B116000, v43, v75, "[ShareManager] Received Invalid Invite message", v76, 2u);
    MEMORY[0x23188F650](v76, -1, -1);
    sub_22B12F174(v104, v40);
LABEL_13:

    v48 = v45;
LABEL_32:
    v49 = v46;
    return (v35)(v48, v49);
  }

  v58 = (*(v55 + 7) + 16 * v56);
  v59 = *v58;
  v60 = v58[1];
  sub_22B144B30(*v58, v60);
  sub_22B36088C();
  v96 = v59;
  v101 = v60;
  v61 = sub_22B36086C();
  v62 = v102;
  v103 = v63;
  if (!v63)
  {
    v78 = v99;
    v25(v99, v24, v102);
    v79 = sub_22B36050C();
    v80 = sub_22B360D2C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22B116000, v79, v80, "[ShareManager] Failed to decode shareURLData", v81, 2u);
      MEMORY[0x23188F650](v81, -1, -1);
    }

LABEL_36:
    sub_22B12F174(v96, v101);
    sub_22B12F174(v104, v40);

    v48 = v78;
    v49 = v62;
    return (v35)(v48, v49);
  }

  v99 = v61;
  v64 = v100;
  v95 = v25;
  v25(v100, v24, v102);

  v65 = sub_22B36050C();
  v66 = sub_22B360D2C();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v94 = v40;
    v68 = v67;
    v93 = swift_slowAlloc();
    v105 = v93;
    *v68 = 136315138;
    v69 = sub_22B3606FC();
    v71 = sub_22B1A7B20(v69, v70, &v105);

    *(v68 + 4) = v71;
    _os_log_impl(&dword_22B116000, v65, v66, "[ShareManager] Received Invite message %s", v68, 0xCu);
    v72 = v93;
    __swift_destroy_boxed_opaque_existential_0(v93);
    v62 = v102;
    MEMORY[0x23188F650](v72, -1, -1);
    v73 = v68;
    v40 = v94;
    MEMORY[0x23188F650](v73, -1, -1);
  }

  v35(v64, v62);
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v82 = [*(qword_28140BCF0 + 16) options];
  v83 = [v82 isServiceManatee];

  if (v83)
  {
    v84 = v97;
    if (*(v97 + 2))
    {
      v85 = sub_22B33B28C(0xD000000000000019, 0x800000022B36C140);
      if (v86)
      {
        v87 = (*(v84 + 7) + 16 * v85);
        v88 = *v87;
        v89 = v87[1];
        sub_22B144B30(*v87, v89);
        sub_22B1CB268(v99, v103, v88, v89);
        sub_22B12F174(v96, v101);
        sub_22B12F174(v104, v40);

        return sub_22B12F174(v88, v89);
      }
    }

    v78 = v98;
    v95(v98, v24, v62);
    v79 = sub_22B36050C();
    v90 = sub_22B360D2C();
    if (os_log_type_enabled(v79, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_22B116000, v79, v90, "[ShareManager] Failed to decode invitationData", v91, 2u);
      MEMORY[0x23188F650](v91, -1, -1);
    }

    goto LABEL_36;
  }

  sub_22B1CBCF4(v99, v103);
  sub_22B12F174(v96, v101);
  sub_22B12F174(v104, v40);
}

uint64_t sub_22B1CB268(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v68 = a4;
  v66 = a3;
  v4 = sub_22B3605EC();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22B36062C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B36052C();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = sub_22B35DC4C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = [objc_allocWithZone(MEMORY[0x277CBC3F8]) init];
  sub_22B35DC2C();
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    sub_22B123284(v17, &qword_27D8BA640, &qword_22B366A50);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = v76;
    v24 = __swift_project_value_buffer(v76, qword_28140BD10);
    swift_beginAccess();
    v25 = v75;
    (*(v75 + 16))(v9, v24, v23);
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v26, v27, "[ShareManager] Failed to extract share metadata from invitation. Declining the invitation.", v28, 2u);
      MEMORY[0x23188F650](v28, -1, -1);
    }

    return (*(v25 + 8))(v9, v23);
  }

  else
  {
    v65 = v4;
    (*(v19 + 32))(v21, v17, v18);
    v64 = *(v19 + 16);
    v64(v14, v21, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    v30 = sub_22B35DCCC();
    v31 = v22(v14, 1, v18);
    v68 = v21;
    if (v31 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_22B35DBDC();
      (*(v19 + 8))(v14, v18);
    }

    v33 = [objc_allocWithZone(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v30 shareURL:v32];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA648, &qword_22B365740);
    v66 = v19;
    v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v35 = swift_allocObject();
    v63 = xmmword_22B3634B0;
    *(v35 + 16) = xmmword_22B3634B0;
    v36 = v68;
    v37 = v64;
    v64((v35 + v34), v68, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA650, &qword_22B365748);
    v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA658, &qword_22B365750) - 8);
    v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v63;
    v41 = v40 + v39;
    v42 = v38[14];
    v37(v41, v36, v18);
    *(v41 + v42) = v33;
    v64 = v33;
    sub_22B3225C8(v40);
    swift_setDeallocating();
    sub_22B123284(v41, &qword_27D8BA658, &qword_22B365750);
    swift_deallocClassInstance();
    v43 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
    v44 = sub_22B360A3C();

    sub_22B128014(0, &qword_27D8BA660, 0x277CBC2C0);
    sub_22B1CCC10(&qword_27D8BA668, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v45 = sub_22B3606CC();

    v46 = [v43 initWithShareURLs:v44 invitationTokensByShareURL:v45];

    v47 = qword_28140A0C8;
    v48 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = v76;
    v50 = __swift_project_value_buffer(v76, qword_28140BD10);
    swift_beginAccess();
    v51 = v75;
    v52 = v67;
    (*(v75 + 16))(v67, v50, v49);
    v53 = sub_22B36050C();
    v54 = sub_22B360D2C();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v65;
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22B116000, v53, v54, "[ShareManager] Processing Invitation", v57, 2u);
      MEMORY[0x23188F650](v57, -1, -1);
    }

    (*(v51 + 8))(v52, v49);

    sub_22B360F3C();
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v58 = sub_22B360D9C();
    v59 = swift_allocObject();
    *(v59 + 16) = v48;
    aBlock[4] = sub_22B1CD024;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B118A6C;
    aBlock[3] = &block_descriptor_13;
    v60 = _Block_copy(aBlock);

    v61 = v69;
    sub_22B36060C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22B1CCC10(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    v62 = v71;
    sub_22B36104C();
    MEMORY[0x23188E6D0](0, v61, v62, v60);

    _Block_release(v60);
    (*(v73 + 8))(v62, v56);
    (*(v70 + 8))(v61, v72);
    return (*(v66 + 8))(v68, v18);
  }
}

uint64_t sub_22B1CBCF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B3605EC();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22B36062C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36052C();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_22B35DC4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277CBC3F8]) init];
  sub_22B35DC2C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22B123284(v13, &qword_27D8BA640, &qword_22B366A50);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v19 = v54;
    v20 = __swift_project_value_buffer(v54, qword_28140BD10);
    swift_beginAccess();
    v21 = v53;
    (*(v53 + 16))(v7, v20, v19);
    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "[ShareManager] Failed to extract share metadata from invitation. Declining the invitation.", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    return (*(v21 + 8))(v7, v19);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA648, &qword_22B365740);
    v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22B3634B0;
    v28 = *(v15 + 16);
    v46 = v17;
    v28(v27 + v26, v17, v14);
    v29 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
    v30 = sub_22B360A3C();

    v31 = [v29 initWithShareURLs_];

    v32 = qword_28140A0C8;
    v33 = v31;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = v54;
    v35 = __swift_project_value_buffer(v54, qword_28140BD10);
    swift_beginAccess();
    v36 = v53;
    (*(v53 + 16))(v10, v35, v34);
    v37 = sub_22B36050C();
    v38 = sub_22B360D2C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B116000, v37, v38, "[ShareManager] Processing Invitation", v39, 2u);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    (*(v36 + 8))(v10, v34);

    sub_22B360F3C();
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v40 = sub_22B360D9C();
    v41 = swift_allocObject();
    *(v41 + 16) = v33;
    aBlock[4] = sub_22B1CD024;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B118A6C;
    aBlock[3] = &block_descriptor_12;
    v42 = _Block_copy(aBlock);

    v43 = v47;
    sub_22B36060C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22B1CCC10(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    v44 = v49;
    v45 = v52;
    sub_22B36104C();
    MEMORY[0x23188E6D0](0, v43, v44, v42);

    _Block_release(v42);
    (*(v51 + 8))(v44, v45);
    (*(v48 + 8))(v43, v50);
    return (*(v15 + 8))(v46, v14);
  }
}

uint64_t sub_22B1CC4B8(uint64_t a1, void *a2, char a3)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v8, v12, v5);
    v13 = a2;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    sub_22B1CCC58(a2);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[1] = a2;
      v28 = v17;
      *v16 = 136446210;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v19 = sub_22B3608BC();
      v21 = sub_22B1A7B20(v19, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22B116000, v14, v15, "[ShareManager] Failed to fetch share metadata: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v11, v23, v5);
    v24 = sub_22B36050C();
    v25 = sub_22B360D0C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v24, v25, "[ShareManager] Successfully fetched share metadata", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    return sub_22B1CCC64(a2);
  }
}

uint64_t sub_22B1CC820(void *a1, char a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  if (a2)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v7, v11, v4);
    v12 = a1;
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    sub_22B1CD010(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[1] = a1;
      v27 = v16;
      *v15 = 136446210;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v18 = sub_22B3608BC();
      v20 = sub_22B1A7B20(v18, v19, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22B116000, v13, v14, "[ShareManager] Failed to accept share: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v10, v22, v4);
    v23 = sub_22B36050C();
    v24 = sub_22B360D2C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B116000, v23, v24, "[ShareManager] Successfully accepted share", v25, 2u);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

id sub_22B1CCB78(uint64_t a1)
{
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_28140BCF0 + 16);

  return [v2 addOperation_];
}

uint64_t sub_22B1CCC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B1CCC64(void *a1)
{
  v2 = sub_22B3605EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B36062C();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22B363650;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277CBC158]);
  sub_22B128014(0, &qword_27D8BA670, 0x277CBC698);
  v11 = a1;
  v12 = sub_22B360A3C();

  v13 = [v10 initWithShareMetadatas_];

  v14 = v13;
  [v14 setQualityOfService_];
  sub_22B360EAC();
  sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  v15 = sub_22B360D9C();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_22B1CCFF4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);

  sub_22B36060C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B1CCC10(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v8, v5, v17);

  _Block_release(v17);
  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v20);
}

void sub_22B1CD010(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_22B1CD034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_22B35E04C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_22B35E02C();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = sub_22B36052C();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1CD218, v3, 0);
}

uint64_t sub_22B1CD218()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Purging old historical guidance", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v8 = v5;
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v25 = v0[19];
  v12 = v0[17];
  v26 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[12];
  v27 = v0[11];
  v28 = v0[20];
  v24 = v14;

  (*(v10 + 8))(v9, v11);
  (*(v13 + 104))(v12, *MEMORY[0x277CC9988], v14);
  v18 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  swift_beginAccess();
  v19 = *(v15 + 16);
  v19(v16, v27 + v18, v17);
  sub_22B35F60C();
  v20 = *(v15 + 8);
  v20(v16, v17);
  (*(v13 + 8))(v12, v24);
  v19(v16, v27 + v18, v17);
  sub_22B35F53C();
  v20(v16, v17);
  v21 = *(v25 + 8);
  v0[25] = v21;
  v0[26] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v28, v26);
  if (qword_281408750 != -1)
  {
    swift_once();
  }

  v22 = qword_28140BC30;
  v0[27] = qword_28140BC30;

  return MEMORY[0x2822009F8](sub_22B1CD51C, v22, 0);
}

uint64_t sub_22B1CD51C()
{
  v1 = *(v0 + 88);
  *(v0 + 224) = sub_22B320EF0(*(v0 + 168), *(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_22B1CD598, v1, 0);
}

uint64_t sub_22B1CD598()
{
  (*(v0 + 200))(*(v0 + 168), *(v0 + 144));

  v1 = *(v0 + 8);
  v2 = *(v0 + 224);

  return v1(v2);
}

uint64_t sub_22B1CD648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = sub_22B36052C();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = sub_22B35D8BC();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = sub_22B35E04C();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v8 = sub_22B35E02C();
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v4[37] = v9;
  v4[38] = *(v9 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1CD938, v3, 0);
}

uint64_t sub_22B1CD938()
{
  if (qword_281408750 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC30;
  *(v0 + 352) = qword_28140BC30;

  return MEMORY[0x2822009F8](sub_22B1CD9D0, v1, 0);
}

uint64_t sub_22B1CD9D0()
{
  v1 = v0[16];
  v0[45] = sub_22B321590(v0[13], v0[14]);

  return MEMORY[0x2822009F8](sub_22B1CDA44, v1, 0);
}

uint64_t sub_22B1CDA44()
{
  if (*(v0 + 360))
  {
    v2 = *(v0 + 280);
    v1 = *(v0 + 288);
    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = *(v0 + 128);
    v8 = *MEMORY[0x277CC9968];
    v9 = *(v2 + 104);
    *(v0 + 368) = v9;
    *(v0 + 376) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v1, v8, v3);
    v10 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    *(v0 + 384) = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    swift_beginAccess();
    v11 = *(v6 + 16);
    *(v0 + 392) = v11;
    *(v0 + 400) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v4, v7 + v10, v5);
    sub_22B35F60C();
    v12 = *(v6 + 8);
    *(v0 + 408) = v12;
    *(v0 + 416) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v4, v5);
    v13 = *(v2 + 8);
    *(v0 + 424) = v13;
    *(v0 + 432) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v1, v3);
    v29 = *MEMORY[0x277CC9998];
    *(v0 + 592) = *MEMORY[0x277CC9998];
    *(v0 + 601) = 0;
    *(v0 + 440) = 0;
    v32 = *(v0 + 424);
    v14 = *(v0 + 392);
    v15 = *(v0 + 384);
    v25 = *(v0 + 408);
    v26 = *(v0 + 368);
    v35 = *(v0 + 352);
    v16 = *(v0 + 328);
    v28 = *(v0 + 336);
    v33 = *(v0 + 320);
    v34 = *(v0 + 312);
    v30 = *(v0 + 304);
    v31 = *(v0 + 296);
    v17 = *(v0 + 288);
    v18 = *(v0 + 264);
    v37 = *(v0 + 272);
    v19 = *(v0 + 248);
    v36 = *(v0 + 128);
    v14(v18, v36 + v15, v19);
    v27 = v14;
    sub_22B35F57C();
    v25(v18, v19);
    v26(v17, v29, v37);
    v14(v18, v36 + v15, v19);
    v20 = v16;
    sub_22B35F60C();
    v25(v18, v19);
    v32(v17, v37);
    v21 = *(v30 + 8);
    *(v0 + 448) = v21;
    *(v0 + 456) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v16, v31);
    v27(v18, v36 + v15, v19);
    sub_22B35F4FC();
    v25(v18, v19);
    v22 = *(v30 + 16);
    v22(v20, v28, v31);
    v22(v34, v33, v31);
    sub_22B35D88C();

    return MEMORY[0x2822009F8](sub_22B1CDEAC, v35, 0);
  }

  else
  {

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_22B1CDEAC()
{
  v1 = *(v0 + 128);
  *(v0 + 602) = sub_22B31FD94(*(v0 + 104), *(v0 + 112), *(v0 + 240)) & 1;

  return MEMORY[0x2822009F8](sub_22B1CDF28, v1, 0);
}

uint64_t sub_22B1CDF28(uint64_t a1)
{
  if (*(v1 + 602))
  {
    v2 = *(v1 + 352);

    return MEMORY[0x2822009F8](sub_22B1CE284, v2, 0);
  }

  else
  {
    if (qword_281408858 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 592);
    v4 = *(v1 + 368);
    v5 = *(v1 + 288);
    v6 = *(v1 + 272);
    sub_22B35D89C();
    v4(v5, v3, v6);
    v7 = swift_task_alloc();
    *(v1 + 464) = v7;
    *v7 = v1;
    v7[1] = sub_22B1CE094;
    v8 = *(v1 + 328);
    v9 = *(v1 + 288);
    v11 = *(v1 + 104);
    v10 = *(v1 + 112);

    return sub_22B358910(v11, v10, v8, v9, 0);
  }
}

uint64_t sub_22B1CE094()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 424);
  v4 = *(*v0 + 328);
  v5 = *(*v0 + 296);
  v6 = *(*v0 + 288);
  v7 = *(*v0 + 272);

  v3(v6, v7);
  v2(v4, v5);
  v8 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_22B1CE284, v8, 0);
}

uint64_t sub_22B1CE284()
{
  v1 = *(v0 + 128);
  *(v0 + 603) = sub_22B31FD94(*(v0 + 104), *(v0 + 112), *(v0 + 240)) & 1;

  return MEMORY[0x2822009F8](sub_22B1CE300, v1, 0);
}

uint64_t sub_22B1CE300()
{
  v67 = v0;
  if (*(v0 + 603))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 240);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);
    v6 = *(v4 + 16);
    *(v0 + 472) = v6;
    *(v0 + 480) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v5, v2, v3);
    v7 = *(v4 + 56);
    *(v0 + 488) = v7;
    *(v0 + 496) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v7(v5, 0, 1, v3);
    v8 = sub_22B1CE994;
    v9 = v1;
LABEL_8:

    return MEMORY[0x2822009F8](v8, v9, 0);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = __swift_project_value_buffer(v15, qword_28140BD10);
  swift_beginAccess();
  (*(v16 + 16))(v14, v17, v15);
  (*(v13 + 16))(v10, v11, v12);
  v18 = sub_22B36050C();
  v19 = sub_22B360CFC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 448);
  v22 = *(v0 + 336);
  v63 = *(v0 + 320);
  v65 = *(v0 + 296);
  v23 = *(v0 + 232);
  v25 = *(v0 + 200);
  v24 = *(v0 + 208);
  v59 = *(v0 + 192);
  v61 = *(v0 + 240);
  v26 = *(v0 + 160);
  v58 = *(v0 + 152);
  if (v20)
  {
    v52 = v19;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v66 = v28;
    *v27 = 136315138;
    sub_22B1CFE9C(&qword_2814091E0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v54 = v21;
    v56 = v22;
    v29 = sub_22B36131C();
    v31 = v30;
    log = v18;
    v32 = *(v24 + 8);
    v32(v23, v25);
    v33 = sub_22B1A7B20(v29, v31, &v66);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_22B116000, log, v52, "Monthly data for %s was unable to be added. Skipping deletion.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23188F650](v28, -1, -1);
    MEMORY[0x23188F650](v27, -1, -1);

    (*(v26 + 8))(v59, v58);
    v32(v61, v25);
    v54(v63, v65);
    v54(v56, v65);
    if ((*(v0 + 601) & 1) == 0)
    {
LABEL_7:
      *(v0 + 601) = 1;
      v49 = *(v0 + 592);
      v55 = *(v0 + 424);
      v64 = *(v0 + 408);
      v45 = *(v0 + 392);
      v34 = *(v0 + 384);
      v47 = *(v0 + 368);
      v62 = *(v0 + 352);
      v48 = *(v0 + 336);
      v46 = *(v0 + 328);
      v57 = *(v0 + 320);
      v60 = *(v0 + 312);
      loga = *(v0 + 304);
      v53 = *(v0 + 296);
      v35 = *(v0 + 288);
      v37 = *(v0 + 264);
      v36 = *(v0 + 272);
      v38 = *(v0 + 248);
      v39 = *(v0 + 128);
      v45(v37, v39 + v34, v38);
      sub_22B35F57C();
      v64(v37, v38);
      v47(v35, v49, v36);
      v45(v37, v39 + v34, v38);
      sub_22B35F60C();
      v64(v37, v38);
      v55(v35, v36);
      isa = loga[1].isa;
      *(v0 + 448) = isa;
      *(v0 + 456) = &loga[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      isa(v46, v53);
      v45(v37, v39 + v34, v38);
      sub_22B35F4FC();
      v64(v37, v38);
      v41 = loga[2].isa;
      v41(v46, v48, v53);
      v41(v60, v57, v53);
      sub_22B35D88C();
      v8 = sub_22B1CDEAC;
      v9 = v62;
      goto LABEL_8;
    }
  }

  else
  {

    v42 = *(v24 + 8);
    v42(v23, v25);
    (*(v26 + 8))(v59, v58);
    v42(v61, v25);
    v21(v63, v65);
    v21(v22, v65);
    if ((*(v0 + 601) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  (*(v0 + 448))(*(v0 + 344), *(v0 + 296));

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22B1CE994()
{
  v28 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[63] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[64] = v5;
  v0[65] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  v10 = v0[19];
  v11 = v0[20];
  if (v8)
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v27);
    _os_log_impl(&dword_22B116000, v6, v7, "Get historical guidance from cache for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[66] = v16;
  v17 = *(v0[44] + 112);
  v18 = v0[55];
  v19 = MEMORY[0x277D84F90];
  if (v17)
  {
    v20 = v0[18];
    v26 = *(v0 + 13);
    v0[11] = MEMORY[0x277D84F90];
    v21 = *(v17 + 48);
    v22 = swift_task_alloc();
    *(v22 + 16) = v17;
    *(v22 + 24) = v26;
    *(v22 + 40) = v20;
    *(v22 + 48) = 512;
    *(v22 + 56) = v0 + 11;

    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA678, &qword_22B365760);
    sub_22B360E7C();

    v19 = v0[12];
  }

  v0[68] = v19;
  v0[67] = v18;
  v24 = v0[16];
  sub_22B180D48(v0[18]);

  return MEMORY[0x2822009F8](sub_22B1CEC60, v24, 0);
}

uint64_t sub_22B1CEC60()
{
  v87 = v0;
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  *(v0 + 552) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 208);
    v5 = *(v4 + 80);
    *(v0 + 596) = v5;
    v6 = *(v4 + 72);
    *(v0 + 560) = v6;
    v7 = *(v0 + 536);
    while (1)
    {
      *(v0 + 576) = v3;
      *(v0 + 568) = v7;
      v8 = *(v0 + 448);
      v9 = *(v0 + 328);
      v10 = *(v0 + 312);
      v11 = *(v0 + 296);
      (*(v0 + 472))(*(v0 + 224), v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 200));
      sub_22B35D89C();
      sub_22B35D89C();
      sub_22B1CFE9C(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v12 = sub_22B36074C();
      v8(v10, v11);
      v8(v9, v11);
      if ((v12 & 1) == 0)
      {
        v13 = *(v0 + 448);
        v14 = *(v0 + 328);
        v15 = *(v0 + 312);
        v16 = *(v0 + 296);
        sub_22B35D86C();
        sub_22B35D86C();
        v17 = sub_22B35DDFC();
        v13(v15, v16);
        v13(v14, v16);
        if (v17)
        {
          break;
        }
      }

      v18 = *(v0 + 448);
      v19 = *(v0 + 328);
      v20 = *(v0 + 312);
      v21 = *(v0 + 296);
      sub_22B35D89C();
      sub_22B35D89C();
      v22 = sub_22B35DDEC();
      v18(v20, v21);
      v18(v19, v21);
      if (v22)
      {
        v23 = *(v0 + 448);
        v24 = *(v0 + 328);
        v25 = *(v0 + 312);
        v26 = *(v0 + 296);
        sub_22B35D86C();
        sub_22B35D86C();
        v27 = sub_22B36074C();
        v23(v25, v26);
        v23(v24, v26);
        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      v28 = *(v0 + 552);
      v29 = *(v0 + 576) + 1;
      v30 = *(*(v0 + 208) + 8);
      v30(*(v0 + 224), *(v0 + 200));
      if (v29 == v28)
      {

        goto LABEL_13;
      }

      v3 = *(v0 + 576) + 1;
      v6 = *(v0 + 560);
      LOBYTE(v5) = *(v0 + 596);
      v1 = *(v0 + 544);
    }

    v32 = *(v0 + 472);
    v33 = *(v0 + 216);
    v34 = *(v0 + 224);
    v35 = *(v0 + 200);
    (*(v0 + 512))(*(v0 + 176), *(v0 + 504), *(v0 + 152));
    v32(v33, v34, v35);
    v36 = sub_22B36050C();
    v37 = sub_22B360CFC();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 528);
    v41 = *(v0 + 208);
    v40 = *(v0 + 216);
    v42 = *(v0 + 200);
    v43 = *(v0 + 176);
    v44 = *(v0 + 152);
    if (v38)
    {
      v84 = *(v0 + 528);
      v45 = swift_slowAlloc();
      v82 = v43;
      v46 = swift_slowAlloc();
      v86 = v46;
      *v45 = 136315138;
      sub_22B1CFE9C(&qword_2814091E0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v80 = v44;
      v47 = sub_22B36131C();
      v49 = v48;
      (*(v41 + 8))(v40, v42);
      v50 = sub_22B1A7B20(v47, v49, &v86);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_22B116000, v36, v37, "Removing entry from cache: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23188F650](v46, -1, -1);
      MEMORY[0x23188F650](v45, -1, -1);

      v84(v82, v80);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
      v39(v43, v44);
    }

    v67 = *(v0 + 488);
    v68 = *(v0 + 352);
    v69 = *(v0 + 200);
    v70 = *(v0 + 136);
    (*(v0 + 472))(v70, *(v0 + 224), v69);
    v67(v70, 0, 1, v69);
    v65 = sub_22B1CF484;
    v66 = v68;
  }

  else
  {
    v31 = *(v0 + 208);

    v30 = *(v31 + 8);
    v7 = *(v0 + 536);
LABEL_13:
    v51 = *(v0 + 448);
    v52 = *(v0 + 336);
    v53 = *(v0 + 320);
    v54 = *(v0 + 296);
    v30(*(v0 + 240), *(v0 + 200));
    v51(v53, v54);
    v51(v52, v54);
    if (*(v0 + 601) == 1)
    {
      (*(v0 + 448))(*(v0 + 344), *(v0 + 296));

      v55 = *(v0 + 8);

      return v55();
    }

    *(v0 + 601) = 1;
    *(v0 + 440) = v7;
    v75 = *(v0 + 592);
    v78 = *(v0 + 424);
    v85 = *(v0 + 408);
    v71 = *(v0 + 392);
    v57 = *(v0 + 384);
    v73 = *(v0 + 368);
    v83 = *(v0 + 352);
    v74 = *(v0 + 336);
    v72 = *(v0 + 328);
    v79 = *(v0 + 320);
    v81 = *(v0 + 312);
    v76 = *(v0 + 304);
    v77 = *(v0 + 296);
    v58 = *(v0 + 288);
    v60 = *(v0 + 264);
    v59 = *(v0 + 272);
    v61 = *(v0 + 248);
    v62 = *(v0 + 128);
    v71(v60, v62 + v57, v61);
    sub_22B35F57C();
    v85(v60, v61);
    v73(v58, v75, v59);
    v71(v60, v62 + v57, v61);
    sub_22B35F60C();
    v85(v60, v61);
    v78(v58, v59);
    v63 = *(v76 + 8);
    *(v0 + 448) = v63;
    *(v0 + 456) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63(v72, v77);
    v71(v60, v62 + v57, v61);
    sub_22B35F4FC();
    v85(v60, v61);
    v64 = *(v76 + 16);
    v64(v72, v74, v77);
    v64(v81, v79, v77);
    sub_22B35D88C();
    v65 = sub_22B1CDEAC;
    v66 = v83;
  }

  return MEMORY[0x2822009F8](v65, v66, 0);
}

uint64_t sub_22B1CF484()
{
  v21 = v0;
  (*(v0 + 512))(*(v0 + 168), *(v0 + 504), *(v0 + 152));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 528);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  if (v3)
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_22B1A7B20(v8, v7, &v20);
    _os_log_impl(&dword_22B116000, v1, v2, "Delete historical guidance from cache for %{private}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  v4(v5, v6);
  v11 = *(*(v0 + 352) + 112);
  v12 = *(v0 + 568);
  if (v11)
  {
    v13 = *(v0 + 136);
    v19 = *(v0 + 104);
    v14 = *(v11 + 48);
    v15 = swift_task_alloc();
    *(v15 + 16) = v11;
    *(v15 + 24) = v19;
    *(v15 + 40) = v13;

    v16 = v14;
    sub_22B360E7C();
  }

  *(v0 + 584) = v12;
  v17 = *(v0 + 128);
  sub_22B180D48(*(v0 + 136));

  return MEMORY[0x2822009F8](sub_22B1CF6BC, v17, 0);
}

uint64_t sub_22B1CF6BC()
{
  v81 = v0;
  v1 = *(v0 + 584);
  while (1)
  {
    v2 = *(v0 + 552);
    v3 = *(v0 + 576) + 1;
    v4 = *(*(v0 + 208) + 8);
    v4(*(v0 + 224), *(v0 + 200));
    if (v3 == v2)
    {
      break;
    }

    v5 = *(v0 + 576) + 1;
    *(v0 + 576) = v5;
    *(v0 + 568) = v1;
    v6 = *(v0 + 448);
    v7 = *(v0 + 328);
    v8 = *(v0 + 312);
    v9 = *(v0 + 296);
    (*(v0 + 472))(*(v0 + 224), *(v0 + 544) + ((*(v0 + 596) + 32) & ~*(v0 + 596)) + *(v0 + 560) * v5, *(v0 + 200));
    sub_22B35D89C();
    sub_22B35D89C();
    sub_22B1CFE9C(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v10 = sub_22B36074C();
    v6(v8, v9);
    v6(v7, v9);
    if ((v10 & 1) != 0 || (v11 = *(v0 + 448), v12 = *(v0 + 328), v13 = *(v0 + 312), v14 = *(v0 + 296), sub_22B35D86C(), sub_22B35D86C(), v15 = sub_22B35DDFC(), v11(v13, v14), v11(v12, v14), (v15 & 1) == 0))
    {
      v16 = *(v0 + 448);
      v17 = *(v0 + 328);
      v18 = *(v0 + 312);
      v19 = *(v0 + 296);
      sub_22B35D89C();
      sub_22B35D89C();
      v20 = sub_22B35DDEC();
      v16(v18, v19);
      v16(v17, v19);
      if ((v20 & 1) == 0)
      {
        continue;
      }

      v21 = *(v0 + 448);
      v22 = *(v0 + 328);
      v23 = *(v0 + 312);
      v24 = *(v0 + 296);
      sub_22B35D86C();
      sub_22B35D86C();
      v25 = sub_22B36074C();
      v21(v23, v24);
      v21(v22, v24);
      if (v25)
      {
        continue;
      }
    }

    v26 = *(v0 + 472);
    v27 = *(v0 + 216);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    (*(v0 + 512))(*(v0 + 176), *(v0 + 504), *(v0 + 152));
    v26(v27, v28, v29);
    v30 = sub_22B36050C();
    v31 = sub_22B360CFC();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 528);
    v35 = *(v0 + 208);
    v34 = *(v0 + 216);
    v36 = *(v0 + 200);
    v37 = *(v0 + 176);
    v38 = *(v0 + 152);
    if (v32)
    {
      v78 = *(v0 + 528);
      v39 = swift_slowAlloc();
      v76 = v37;
      v40 = swift_slowAlloc();
      v80 = v40;
      *v39 = 136315138;
      sub_22B1CFE9C(&qword_2814091E0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v74 = v38;
      v41 = sub_22B36131C();
      v43 = v42;
      (*(v35 + 8))(v34, v36);
      v44 = sub_22B1A7B20(v41, v43, &v80);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_22B116000, v30, v31, "Removing entry from cache: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);

      v78(v76, v74);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
      v33(v37, v38);
    }

    v61 = *(v0 + 488);
    v62 = *(v0 + 352);
    v63 = *(v0 + 200);
    v64 = *(v0 + 136);
    (*(v0 + 472))(v64, *(v0 + 224), v63);
    v61(v64, 0, 1, v63);
    v59 = sub_22B1CF484;
    v60 = v62;
    goto LABEL_16;
  }

  v45 = *(v0 + 448);
  v46 = *(v0 + 336);
  v47 = *(v0 + 320);
  v48 = *(v0 + 296);
  v4(*(v0 + 240), *(v0 + 200));
  v45(v47, v48);
  v45(v46, v48);
  if (*(v0 + 601) != 1)
  {
    *(v0 + 601) = 1;
    *(v0 + 440) = v1;
    v69 = *(v0 + 592);
    v72 = *(v0 + 424);
    v79 = *(v0 + 408);
    v65 = *(v0 + 392);
    v51 = *(v0 + 384);
    v67 = *(v0 + 368);
    v77 = *(v0 + 352);
    v68 = *(v0 + 336);
    v66 = *(v0 + 328);
    v73 = *(v0 + 320);
    v75 = *(v0 + 312);
    v70 = *(v0 + 304);
    v71 = *(v0 + 296);
    v52 = *(v0 + 288);
    v54 = *(v0 + 264);
    v53 = *(v0 + 272);
    v55 = *(v0 + 248);
    v56 = *(v0 + 128);
    v65(v54, v56 + v51, v55);
    sub_22B35F57C();
    v79(v54, v55);
    v67(v52, v69, v53);
    v65(v54, v56 + v51, v55);
    sub_22B35F60C();
    v79(v54, v55);
    v72(v52, v53);
    v57 = *(v70 + 8);
    *(v0 + 448) = v57;
    *(v0 + 456) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57(v66, v71);
    v65(v54, v56 + v51, v55);
    sub_22B35F4FC();
    v79(v54, v55);
    v58 = *(v70 + 16);
    v58(v66, v68, v71);
    v58(v75, v73, v71);
    sub_22B35D88C();
    v59 = sub_22B1CDEAC;
    v60 = v77;
LABEL_16:

    return MEMORY[0x2822009F8](v59, v60, 0);
  }

  (*(v0 + 448))(*(v0 + 344), *(v0 + 296));

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_22B1CFE9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22B1CFF30(unint64_t a1, uint64_t *a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v37 - v4);
  v48 = type metadata accessor for CDUsageSummaryRecords(0);
  v40 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
  {
    v11 = 0;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 & 0xC000000000000001;
    v38 = a1;
    v43 = (v40 + 56);
    v41 = a1 + 32;
    v42 = (v40 + 48);
    v49 = MEMORY[0x277D84F90];
    v44 = i;
    while (1)
    {
      if (v46)
      {
        v12 = MEMORY[0x23188EAC0](v11, v38, v8);
      }

      else
      {
        if (v11 >= *(v45 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v41 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v15 = *v51;

      v16 = [v13 usageSummaryID];
      v17 = sub_22B36084C();
      v19 = v18;

      if (*(v15 + 16) && (sub_22B36149C(), sub_22B3608FC(), v20 = sub_22B3614DC(), v21 = -1 << *(v15 + 32), v22 = v20 & ~v21, ((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v15 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v48;
        (*v43)(v5, 1, 1, v48);

        v31 = (*v42)(v5, 1, a1);
      }

      else
      {
LABEL_19:

        v26 = [v13 usageSummaryID];
        v27 = sub_22B36084C();
        v29 = v28;

        sub_22B32DF50(&v50, v27, v29);

        a1 = v13;
        sub_22B1D03F8(a1, v5);
        v30 = v48;
        (*v43)(v5, 0, 1, v48);

        v31 = (*v42)(v5, 1, v30);
      }

      if (v31 == 1)
      {
        sub_22B123284(v5, &qword_27D8BA688, &qword_22B365848);
      }

      else
      {
        v32 = v39;
        sub_22B1D8160(v5, v39);
        sub_22B1D8160(v32, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_22B32D7C0(0, v49[2] + 1, 1, v49);
        }

        v34 = v49[2];
        v33 = v49[3];
        a1 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v49 = sub_22B32D7C0((v33 > 1), v34 + 1, 1, v49);
        }

        v35 = v49;
        v49[2] = a1;
        sub_22B1D8160(v47, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34);
      }

      if (v11 == v44)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_22B1D03F8(void *a1@<X0>, void *a2@<X8>)
{
  [a1 billLastPeriod];
  *a2 = v4;
  v5 = [a1 currency];
  v6 = sub_22B36084C();
  v8 = v7;

  v9 = type metadata accessor for CDUsageSummaryRecords(0);
  v10 = (a2 + v9[6]);
  *v10 = v6;
  v10[1] = v8;
  v11 = [a1 creationDate];
  sub_22B35DE5C();

  v12 = [a1 end];
  sub_22B35DE5C();

  v13 = [a1 items];
  v14 = sub_22B35DCDC();
  v16 = v15;

  v17 = MEMORY[0x23188EEB0]();
  sub_22B1D06E8(&v46);
  objc_autoreleasePoolPop(v17);
  sub_22B12F174(v14, v16);
  *(a2 + v9[8]) = v46;
  v18 = [a1 recordID];
  v19 = sub_22B36084C();
  v21 = v20;

  v22 = (a2 + v9[9]);
  *v22 = v19;
  v22[1] = v21;
  v23 = [a1 sourceTime];
  sub_22B35DE5C();

  v24 = [a1 start];
  sub_22B35DE5C();

  v25 = [a1 subscriptionID];
  v26 = sub_22B36084C();
  v28 = v27;

  v29 = (a2 + v9[12]);
  *v29 = v26;
  v29[1] = v28;
  *(a2 + v9[13]) = sub_22B35FABC();
  [a1 totalConsumptionValue];
  *(a2 + v9[14]) = v30;
  v31 = [a1 usageSummaryID];
  v32 = sub_22B36084C();
  v34 = v33;

  v35 = (a2 + v9[15]);
  *v35 = v32;
  v35[1] = v34;
  v36 = [a1 utilityID];
  v37 = sub_22B36084C();
  v39 = v38;

  v40 = (a2 + v9[16]);
  *v40 = v37;
  v40[1] = v39;
  v41 = [a1 zoneName];
  v42 = sub_22B36084C();
  v44 = v43;

  v45 = (a2 + v9[17]);
  *v45 = v42;
  v45[1] = v44;
}

void sub_22B1D06E8(uint64_t *a3@<X8>)
{
  v52 = a3;
  v48 = sub_22B36052C();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B3603FC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F9DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  v18 = v58;
  v19 = sub_22B360F7C();
  if (v18)
  {
    v20 = v18;
    v21 = v52;
    v22 = v48;
LABEL_3:
    v23 = v51;
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v49 = v17;
  v50 = v14;
  v54 = v11;
  if (!v19)
  {
    v23 = MEMORY[0x277D84F90];
    v21 = v52;
    goto LABEL_24;
  }

  v58 = 0;
  *&v55 = 0;
  v35 = v19;
  sub_22B360A4C();

  v22 = v55;
  v21 = v52;
  if (!v55)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v47 = *(v55 + 16);
  if (v47)
  {
    v44 = v3;
    v45 = v9;
    v3 = 0;
    v53 = (v9 + 32);
    v20 = (v55 + 40);
    v23 = MEMORY[0x277D84F90];
    v46 = v7;
    while (v3 < *(v22 + 16))
    {
      v37 = *(v20 - 1);
      v36 = *v20;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_22B144B30(v37, v36);
      sub_22B3603EC();
      sub_22B1D81C4(&qword_27D8BA698, MEMORY[0x277D07460], MEMORY[0x277D07458]);
      v38 = v50;
      v39 = v58;
      sub_22B36041C();
      v58 = v39;
      if (v39)
      {

        v20 = v58;
        v21 = v52;
        v22 = v48;
        v3 = v44;
        goto LABEL_3;
      }

      v21 = *v53;
      v40 = v49;
      (*v53)(v49, v38, v8);
      (v21)(v54, v40, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22B32D798(0, v23[2] + 1, 1, v23);
      }

      v42 = v23[2];
      v41 = v23[3];
      if (v42 >= v41 >> 1)
      {
        v23 = sub_22B32D798((v41 > 1), v42 + 1, 1, v23);
      }

      ++v3;
      v23[2] = v42 + 1;
      (v21)(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42, v54, v8);
      v20 += 2;
      if (v47 == v3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_4:
    v24 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v23, v24, v22);
    v25 = v20;
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = v3;
      v30 = swift_slowAlloc();
      *v28 = 138412290;
      v31 = v20;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22B116000, v26, v27, "Failed to unarchive Item %@", v28, 0xCu);
      sub_22B123284(v30, &unk_27D8BAA90, &unk_22B362BC0);
      v33 = v30;
      v3 = v29;
      MEMORY[0x23188F650](v33, -1, -1);
      v34 = v28;
      v23 = v51;
      MEMORY[0x23188F650](v34, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v23, v22);
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:

  v21 = v52;
LABEL_24:
  *v21 = v23;
}

void sub_22B1D0CDC(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v124 = a6;
  v108 = a5;
  v109 = a4;
  v105 = a2;
  v106 = a3;
  v104 = a1;
  v101 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA420, &unk_22B364910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v93 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  v10 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v93 - v13;
  MEMORY[0x28223BE20](v14);
  v111 = &v93 - v15;
  MEMORY[0x28223BE20](v16);
  v110 = &v93 - v17;
  MEMORY[0x28223BE20](v18);
  v112 = &v93 - v19;
  MEMORY[0x28223BE20](v20);
  v113 = &v93 - v21;
  MEMORY[0x28223BE20](v22);
  v114 = &v93 - v23;
  MEMORY[0x28223BE20](v24);
  v115 = &v93 - v25;
  MEMORY[0x28223BE20](v26);
  v116 = &v93 - v27;
  MEMORY[0x28223BE20](v28);
  v117 = &v93 - v29;
  MEMORY[0x28223BE20](v30);
  v118 = &v93 - v31;
  v120 = sub_22B35FADC();
  v32 = sub_22B35FAAC();
  [v32 setResultType_];
  v33 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v34 = sub_22B36081C();
  v35 = [v33 initWithKey:v34 ascending:1];

  v36 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v37 = sub_22B36081C();
  v38 = [v36 initWithKey:v37 ascending:0];

  v39 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v40 = sub_22B36081C();
  v41 = [v39 initWithKey:v40 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22B365770;
  *(v42 + 32) = v35;
  *(v42 + 40) = v38;
  *(v42 + 48) = v41;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v121 = v35;
  v43 = v38;
  v119 = v41;
  v44 = sub_22B360A3C();

  v122 = v32;
  [v32 setSortDescriptors_];

  v126 = MEMORY[0x277D84F90];
  v45 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22B3634C0;
  v47 = MEMORY[0x277D837D0];
  *(v46 + 56) = MEMORY[0x277D837D0];
  v48 = sub_22B1280E4();
  v49 = v105;
  v50 = v106;
  *(v46 + 32) = v104;
  *(v46 + 40) = v49;
  *(v46 + 96) = v47;
  *(v46 + 104) = v48;
  *(v46 + 64) = v48;
  *(v46 + 72) = v50;
  *(v46 + 80) = v109;

  v109 = v45;
  v51 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  sub_22B360A9C();
  sub_22B170BE0(v108, v9, &qword_27D8BA420, &unk_22B364910);
  v52 = v107;
  if ((*(v10 + 48))(v9, 1, v107) == 1)
  {
    sub_22B123284(v9, &qword_27D8BA420, &unk_22B364910);
    v53 = v124;
    v54 = v122;
  }

  else
  {
    v108 = v51;
    v106 = v43;
    v55 = v110;
    v56 = v118;
    sub_22B170CD0(v9, v118, &qword_27D8BA078, &unk_22B362BB0);
    v105 = "D = %@ AND usageSummaryID = %@";
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22B365780;
    sub_22B170BE0(v56, v117, &qword_27D8BA078, &unk_22B362BB0);
    v104 = *(v52 + 48);
    v58 = sub_22B35DDDC();
    v59 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v57 + 56) = v59;
    v60 = sub_22B1D7CDC();
    *(v57 + 64) = v60;
    *(v57 + 32) = v58;
    sub_22B170BE0(v56, v116, &qword_27D8BA078, &unk_22B362BB0);
    v100 = *(v52 + 48);
    v61 = sub_22B35DDDC();
    *(v57 + 96) = v59;
    *(v57 + 104) = v60;
    *(v57 + 72) = v61;
    sub_22B170BE0(v56, v115, &qword_27D8BA078, &unk_22B362BB0);
    v99 = *(v52 + 48);
    v62 = sub_22B35DDDC();
    *(v57 + 136) = v59;
    *(v57 + 144) = v60;
    *(v57 + 112) = v62;
    sub_22B170BE0(v56, v114, &qword_27D8BA078, &unk_22B362BB0);
    v98 = *(v52 + 48);
    v63 = sub_22B35DDDC();
    *(v57 + 176) = v59;
    *(v57 + 184) = v60;
    *(v57 + 152) = v63;
    sub_22B170BE0(v56, v113, &qword_27D8BA078, &unk_22B362BB0);
    v97 = *(v52 + 48);
    v64 = sub_22B35DDDC();
    *(v57 + 216) = v59;
    *(v57 + 224) = v60;
    *(v57 + 192) = v64;
    sub_22B170BE0(v56, v112, &qword_27D8BA078, &unk_22B362BB0);
    v96 = *(v52 + 48);
    v65 = sub_22B35DDDC();
    *(v57 + 256) = v59;
    *(v57 + 264) = v60;
    *(v57 + 232) = v65;
    sub_22B170BE0(v56, v55, &qword_27D8BA078, &unk_22B362BB0);
    v95 = *(v52 + 48);
    v66 = sub_22B35DDDC();
    *(v57 + 296) = v59;
    *(v57 + 304) = v60;
    *(v57 + 272) = v66;
    sub_22B170BE0(v56, v111, &qword_27D8BA078, &unk_22B362BB0);
    v94 = *(v52 + 48);
    v67 = sub_22B35DDDC();
    *(v57 + 336) = v59;
    *(v57 + 344) = v60;
    *(v57 + 312) = v67;
    v68 = v103;
    sub_22B170BE0(v56, v103, &qword_27D8BA078, &unk_22B362BB0);
    v93 = *(v52 + 48);
    v69 = sub_22B35DDDC();
    *(v57 + 376) = v59;
    *(v57 + 384) = v60;
    *(v57 + 352) = v69;
    v70 = v56;
    v71 = v102;
    sub_22B170BE0(v70, v102, &qword_27D8BA078, &unk_22B362BB0);
    v72 = *(v52 + 48);
    v73 = sub_22B35DDDC();
    *(v57 + 416) = v59;
    *(v57 + 424) = v60;
    *(v57 + 392) = v73;
    v74 = sub_22B35DE9C();
    v75 = *(*(v74 - 8) + 8);
    v75(v71 + v72, v74);
    v75(v71, v74);
    v75(v68 + v93, v74);
    v75(v68, v74);
    v76 = v111;
    v75(v111 + v94, v74);
    v75(v76, v74);
    v77 = v110;
    v75(&v110[v95], v74);
    v75(v77, v74);
    v78 = v112;
    v75(v112 + v96, v74);
    v75(v78, v74);
    v79 = v113;
    v75(v113 + v97, v74);
    v75(v79, v74);
    v80 = v114;
    v75(v114 + v98, v74);
    v75(v80, v74);
    v81 = v115;
    v75(v115 + v99, v74);
    v75(v81, v74);
    v82 = v116;
    v75(v116 + v100, v74);
    v75(v82, v74);
    v83 = v117;
    v75(v117 + v104, v74);
    v75(v83, v74);
    v84 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    sub_22B123284(v118, &qword_27D8BA078, &unk_22B362BB0);
    v53 = v124;
    v54 = v122;
    v43 = v106;
    v51 = v108;
  }

  v85 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v86 = sub_22B360A3C();
  v87 = [v85 initWithType:1 subpredicates:v86];

  [v54 setPredicate_];
  v88 = v123;
  v89 = sub_22B360E9C();
  if (v88)
  {

LABEL_10:

    return;
  }

  v108 = v51;
  if (v89 >> 62)
  {
    v90 = sub_22B36109C();
  }

  else
  {
    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v90 >= 1)
  {
    v125 = MEMORY[0x23188E590](v90, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v91 = sub_22B360E9C();
    v92 = sub_22B1CFF30(v91, &v125);

    [v53 reset];

    *v101 = v92;
    goto LABEL_10;
  }

  [v53 reset];

  *v101 = 0;
}

void sub_22B1D19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void **a9)
{
  v45 = a8;
  v46 = a1;
  v50 = a6;
  v51 = a7;
  v47 = a3;
  v48 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v44 - v12;
  v49 = sub_22B35FADC();
  v13 = sub_22B35FAAC();
  [v13 setResultType_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithKey:v15 ascending:0];

  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithKey:v18 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363950;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v21 = v16;
  v22 = v19;
  v23 = sub_22B360A3C();

  [v13 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B364620;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_22B1280E4();
  v27 = v47;
  *(v24 + 32) = v46;
  *(v24 + 40) = a2;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = v27;
  *(v24 + 80) = a4;
  *(v24 + 136) = v25;
  *(v24 + 144) = v26;
  v28 = v50;
  *(v24 + 112) = v48;
  *(v24 + 120) = v28;

  v29 = v51;
  v30 = sub_22B360CCC();
  [v13 setPredicate_];
  v31 = v52;
  v32 = sub_22B360E9C();
  if (v31)
  {

LABEL_12:
    return;
  }

  v52 = v21;
  v50 = v22;
  v34 = v44;
  v33 = v45;
  if (!(v32 >> 62))
  {
    v35 = v52;
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v42 = v32;
  v43 = sub_22B36109C();
  v32 = v42;
  v35 = v52;
  if (!v43)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v32 + 32);
LABEL_8:
    v37 = v36;

    v38 = v37;
    sub_22B1D03F8(v38, v34);
    v39 = type metadata accessor for CDUsageSummaryRecords(0);
    (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
    sub_22B1D836C(v34, v33);
    v40 = [v38 objectID];

    v41 = *a9;
    *a9 = v40;

    v35 = v52;
LABEL_11:
    [v29 refreshAllObjects];

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_22B1D1E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, char *a11, void *a12, void *a13)
{
  v172 = a8;
  v171 = a7;
  v170 = a6;
  v169 = a5;
  v168 = a4;
  v167 = a3;
  v163 = a2;
  v196 = *MEMORY[0x277D85DE8];
  v14 = sub_22B36052C();
  v190 = *(v14 - 8);
  v191 = v14;
  MEMORY[0x28223BE20](v14);
  v189 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v154 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v154 - v20;
  MEMORY[0x28223BE20](v22);
  v175 = &v154 - v23;
  v166 = sub_22B35F9FC();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_22B35F9DC();
  v184 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v179 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22B35DE9C();
  v182 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v173 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v174 = &v154 - v28;
  MEMORY[0x28223BE20](v29);
  v183 = &v154 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v154 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v154 - v35;
  v177 = sub_22B3603AC();
  v181 = *(v177 - 1);
  MEMORY[0x28223BE20](v177);
  v162 = &v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v161 = &v154 - v39;
  MEMORY[0x28223BE20](v40);
  v160 = &v154 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v154 - v43;
  v45 = sub_22B3603FC();
  MEMORY[0x28223BE20](v45 - 8);
  v186 = sub_22B35FA9C();
  v176 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v187 = &v154 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22B360F5C() == 0x6D75536567617355 && v47 == 0xEC0000007972616DLL)
  {
  }

  else
  {
    v48 = sub_22B36134C();

    if ((v48 & 1) == 0)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v62 = v191;
      v63 = __swift_project_value_buffer(v191, qword_28140BD10);
      swift_beginAccess();
      v64 = v190;
      (*(v190 + 16))(v18, v63, v62);
      v65 = sub_22B36050C();
      v66 = sub_22B360D1C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_22B116000, v65, v66, "[Dropbox Bridge] Record is not of type UsageSummary!", v67, 2u);
        MEMORY[0x23188F650](v67, -1, -1);
      }

      (*(v64 + 8))(v18, v62);
      sub_22B134CDC();
      v60 = swift_allocError();
      *v68 = 20;
      result = swift_willThrow();
      goto LABEL_34;
    }
  }

  sub_22B1CA368(a1, &v193);
  v49 = *(&v193 + 1);
  v159 = v193;
  v50 = v194;

  v51 = v49;
  v53 = v190;
  v52 = v191;
  v188 = v50;
  if (!v51)
  {
    goto LABEL_8;
  }

  if (*(&v50 + 1) >> 60 == 15)
  {

LABEL_8:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v52, qword_28140BD10);
    swift_beginAccess();
    (*(v53 + 16))(v21, v54, v52);
    v55 = sub_22B36050C();
    v56 = sub_22B360D1C();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v189;
    if (v57)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22B116000, v55, v56, "[Dropbox Bridge] UsageSummary Record is corrupted", v59, 2u);
      MEMORY[0x23188F650](v59, -1, -1);
    }

    (*(v53 + 8))(v21, v52);
    sub_22B134CDC();
    v60 = swift_allocError();
    *v61 = 21;
    swift_willThrow();
    goto LABEL_29;
  }

  v158 = v51;
  v195 = 0;
  v193 = 0u;
  v194 = 0u;
  sub_22B1D825C(v50, *(&v50 + 1));
  sub_22B144B30(v50, *(&v50 + 1));
  sub_22B3603EC();
  sub_22B1D81C4(&qword_27D8BA6A0, MEMORY[0x277D07478], MEMORY[0x277D07450]);
  v70 = v185;
  sub_22B36041C();
  v60 = v70;
  if (v70)
  {
    sub_22B11EDC0(v50, *(&v50 + 1));

    v58 = v189;
LABEL_29:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v90 = __swift_project_value_buffer(v52, qword_28140BD10);
    swift_beginAccess();
    (*(v53 + 16))(v58, v90, v52);
    v91 = v60;
    v92 = sub_22B36050C();
    v93 = sub_22B360D1C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v94 = 138412290;
      v96 = v60;
      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v94 + 4) = v97;
      *v95 = v97;
      _os_log_impl(&dword_22B116000, v92, v93, "[Dropbox Bridge] Failed handle UsageSummary payload %@", v94, 0xCu);
      sub_22B123284(v95, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v95, -1, -1);
      MEMORY[0x23188F650](v94, -1, -1);
    }

    (*(v53 + 8))(v58, v52);
    swift_willThrow();
    result = sub_22B11EDC0(v188, *(&v188 + 1));
LABEL_34:
    *a13 = v60;
    return result;
  }

  v71 = sub_22B35F87C();
  v73 = v72;

  v74 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v74 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (!v74 || (sub_22B35FA2C(), sub_22B36038C(), v75 = v181[1], ++v181, v155 = v75, v75(v44, v177), sub_22B35DD1C(), v76 = sub_22B1D81C4(&qword_27D8BA430, MEMORY[0x277CC9578], MEMORY[0x277CC9598]), v77 = v178, v157 = v76, LODWORD(v185) = sub_22B36078C(), v79 = v182 + 8, v78 = *(v182 + 8), v78(v33, v77), v182 = v79, v78(v36, v77), (v185 & 1) != 0) || (v156 = v78, sub_22B35F92C(), sub_22B36038C(), v155(v44, v177), sub_22B35DD2C(), v80 = v178, v81 = sub_22B36078C(), v156(v33, v80), v156(v36, v80), (v81 & 1) != 0))
  {

    if (qword_28140A0C8 == -1)
    {
LABEL_26:
      v82 = __swift_project_value_buffer(v52, qword_28140BD10);
      swift_beginAccess();
      v83 = v175;
      (*(v53 + 16))(v175, v82, v52);
      v84 = sub_22B36050C();
      v85 = sub_22B360D1C();
      v86 = os_log_type_enabled(v84, v85);
      v58 = v189;
      v87 = v186;
      if (v86)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_22B116000, v84, v85, "[Dropbox Bridge] UsageSummary Record Payload is corrupted", v88, 2u);
        MEMORY[0x23188F650](v88, -1, -1);
      }

      (*(v53 + 8))(v83, v52);
      sub_22B134CDC();
      v60 = swift_allocError();
      *v89 = 21;
      swift_willThrow();
      sub_22B11EDC0(v188, *(&v188 + 1));
      (*(v176 + 8))(v187, v87);
      goto LABEL_29;
    }

LABEL_54:
    swift_once();
    goto LABEL_26;
  }

  v52 = sub_22B35FA0C();
  v185 = *(v52 + 16);
  if (v185)
  {
    v98 = 0;
    v157 = v184 + 16;
    v175 = (v184 + 8);
    v99 = MEMORY[0x277D84F90];
    while (v98 < *(v52 + 16))
    {
      v100 = v179;
      v101 = v180;
      (*(v184 + 16))(v179, v52 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v98, v180);
      sub_22B1D81C4(&qword_27D8BA698, MEMORY[0x277D07460], MEMORY[0x277D07458]);
      v102 = sub_22B36042C();
      v53 = v103;
      (*v175)(v100, v101);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_22B32D0BC(0, *(v99 + 2) + 1, 1, v99);
      }

      v105 = *(v99 + 2);
      v104 = *(v99 + 3);
      if (v105 >= v104 >> 1)
      {
        v99 = sub_22B32D0BC((v104 > 1), v105 + 1, 1, v99);
      }

      ++v98;
      *(v99 + 2) = v105 + 1;
      v106 = &v99[16 * v105];
      *(v106 + 4) = v102;
      *(v106 + 5) = v53;
      v58 = v189;
      if (v185 == v98)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v58 = v189;
LABEL_45:

  v107 = objc_opt_self();
  v108 = sub_22B360A3C();

  *&v193 = 0;
  v109 = [v107 archivedDataWithRootObject:v108 requiringSecureCoding:0 error:&v193];

  v110 = v193;
  if (!v109)
  {
    v141 = v110;

    v60 = sub_22B35DB9C();

    swift_willThrow();
    sub_22B11EDC0(v188, *(&v188 + 1));
    (*(v176 + 8))(v187, v186);
    v53 = v190;
    v52 = v191;
    goto LABEL_29;
  }

  v175 = a11;
  v180 = a10;
  v179 = a9;
  v184 = sub_22B35DCDC();
  v185 = v111;

  v112 = sub_22B35F87C();
  sub_22B32DF50(&v193, v112, v113);

  sub_22B35F8BC();
  v115 = v114;
  v163 = sub_22B35FA5C();
  v157 = v116;
  v117 = v160;
  sub_22B35F92C();
  sub_22B36038C();
  v118 = v117;
  v119 = v177;
  v120 = v155;
  v155(v118, v177);
  v121 = v161;
  sub_22B35F89C();
  sub_22B36038C();
  v120(v121, v119);
  v122 = v162;
  sub_22B35FA2C();
  v123 = v173;
  sub_22B36038C();
  v120(v122, v119);
  v124 = v164;
  sub_22B35F8EC();
  v125 = sub_22B35F9EC();
  (*(v165 + 8))(v124, v166);
  sub_22B35F90C();
  v127 = v126;
  v128 = sub_22B35F87C();
  v130 = v129;
  v181 = MEMORY[0x23188EEB0]();
  v177 = &v154;
  v192 = 0;
  MEMORY[0x28223BE20](v181);
  v131 = v168;
  *(&v154 - 24) = v167;
  *(&v154 - 23) = v131;
  v132 = v170;
  *(&v154 - 22) = v169;
  *(&v154 - 21) = v132;
  v133 = v172;
  *(&v154 - 20) = v171;
  *(&v154 - 19) = v133;
  *(&v154 - 18) = v128;
  *(&v154 - 17) = v130;
  v134 = v174;
  *(&v154 - 16) = v175;
  *(&v154 - 15) = v134;
  v135 = v158;
  *(&v154 - 14) = v159;
  *(&v154 - 13) = v135;
  *(&v154 - 12) = v115;
  v136 = v157;
  *(&v154 - 11) = v163;
  *(&v154 - 10) = v136;
  v137 = v184;
  v138 = v185;
  *(&v154 - 9) = v139;
  *(&v154 - 8) = v137;
  *(&v154 - 7) = v138;
  *(&v154 - 6) = v123;
  *(&v154 - 5) = v125;
  *(&v154 - 4) = v127;
  v140 = v180;
  *(&v154 - 3) = v179;
  *(&v154 - 2) = v140;
  *(&v154 - 1) = &v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
  sub_22B360E7C();
  v142 = v184;

  objc_autoreleasePoolPop(v181);
  v143 = v193;
  v144 = v178;
  v145 = v156;
  v156(v173, v178);
  v145(v174, v144);
  v145(v183, v144);
  v146 = v186;
  if (v143)
  {
    v147 = v185;
    v148 = v143;
    MEMORY[0x23188E350]();
    v149 = v187;
    if (*((*a12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();
    sub_22B12F174(v142, v147);

    v150 = *(&v188 + 1);
    v151 = v188;
    sub_22B11EDC0(v188, *(&v188 + 1));
    sub_22B11EDC0(v151, v150);
    return (*(v176 + 8))(v149, v146);
  }

  else
  {
    (*(v176 + 8))(v187, v186);
    v152 = *(&v188 + 1);
    v153 = v188;
    sub_22B11EDC0(v188, *(&v188 + 1));
    sub_22B12F174(v142, v185);
    return sub_22B11EDC0(v153, v152);
  }
}

void sub_22B1D3478(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, void **a8@<X8>, double a9@<D0>, double a10@<D1>, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  v183 = a6;
  v184 = a7;
  v174 = a1;
  v175 = a8;
  v195[3] = *MEMORY[0x277D85DE8];
  v180 = sub_22B35DE9C();
  v173 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v172 = v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22B36052C();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v167 = v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v165 = v150 - v33;
  MEMORY[0x28223BE20](v34);
  v166 = v150 - v35;
  MEMORY[0x28223BE20](v36);
  v168 = v150 - v37;
  v38 = type metadata accessor for CDUsageSummaryRecords(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v171 = v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6B0, &unk_22B365850);
  MEMORY[0x28223BE20](v41 - 8);
  v176 = v150 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  MEMORY[0x28223BE20](v43 - 8);
  v177 = v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = v150 - v46;
  v49 = MEMORY[0x28223BE20](v48);
  v51 = v150 - v50;
  v181 = MEMORY[0x23188EEB0](v49);
  v178 = v39;
  v52 = *(v39 + 56);
  v179 = v38;
  v52(v47, 1, 1, v38);
  v195[0] = 0;
  v185 = a2;
  v186 = a3;
  v187 = a4;
  v188 = a5;
  v189 = v183;
  v190 = v184;
  v191 = a11;
  v192 = v47;
  v193 = v195;
  v53 = v182;
  sub_22B360E7C();
  if (v53)
  {

    sub_22B123284(v47, &qword_27D8BA688, &qword_22B365848);
    objc_autoreleasePoolPop(v181);
    return;
  }

  v160 = a11;
  v150[1] = a2;
  v150[2] = a3;
  v150[3] = a4;
  v164 = a5;
  v163 = 0;
  v162 = a24;
  v158 = a21;
  v157 = a20;
  v156 = a19;
  v155 = a18;
  v154 = a17;
  v153 = a16;
  v152 = a15;
  v161 = a14;
  v159 = a13;
  v182 = a12;
  v54 = v176;
  sub_22B170BE0(v47, v176, &qword_27D8BA688, &qword_22B365848);
  v55 = v195[0];
  sub_22B123284(v47, &qword_27D8BA688, &qword_22B365848);
  objc_autoreleasePoolPop(v181);
  sub_22B170CD0(v54, v51, &qword_27D8BA688, &qword_22B365848);
  v56 = v177;
  sub_22B170BE0(v51, v177, &qword_27D8BA688, &qword_22B365848);
  v57 = (*(v178 + 48))(v56, 1, v179);
  v151 = v55;
  if (v57 == 1)
  {
    sub_22B123284(v56, &qword_27D8BA688, &qword_22B365848);
    v58 = v180;
LABEL_14:
    v61 = v160;
    v69 = v174;
    goto LABEL_15;
  }

  v59 = v171;
  sub_22B1D8160(v56, v171);
  if (!v55)
  {
    sub_22B1D8310(v59);
    v58 = v180;
    goto LABEL_14;
  }

  sub_22B1D81C4(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v60 = v55;
  v58 = v180;
  if ((sub_22B36074C() & 1) == 0)
  {
    v184 = v60;
    v101 = v161;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v102 = v170;
    v103 = __swift_project_value_buffer(v170, qword_28140BD10);
    swift_beginAccess();
    v104 = v169;
    v105 = v168;
    (*(v169 + 16))(v168, v103, v102);

    v106 = sub_22B36050C();
    v107 = sub_22B360D2C();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v194 = v109;
      *v108 = 136315138;
      *(v108 + 4) = sub_22B1A7B20(v159, v101, &v194);
      _os_log_impl(&dword_22B116000, v106, v107, "[UsageSummaryRecords] Newer record exists for %s. Skip insert", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x23188F650](v109, -1, -1);
      MEMORY[0x23188F650](v108, -1, -1);
      v110 = v184;

      (*(v104 + 8))(v168, v102);
    }

    else
    {
      v111 = v184;

      (*(v104 + 8))(v105, v102);
    }

    sub_22B1D8310(v59);
    v112 = v51;
    goto LABEL_35;
  }

  v181 = v51;
  v195[0] = 0;
  v61 = v160;
  v62 = v60;
  v63 = [v160 existingObjectWithID:v60 error:v195];
  v64 = v195[0];
  if (v63)
  {
    v65 = v63;
    sub_22B35FADC();
    v66 = swift_dynamicCastClass();
    v67 = qword_28140A0C8;
    v68 = v64;
    v69 = v174;
    if (v66)
    {
      v70 = v65;
      if (v67 != -1)
      {
        swift_once();
      }

      v71 = v170;
      v72 = __swift_project_value_buffer(v170, qword_28140BD10);
      swift_beginAccess();
      v73 = v166;
      (*(v169 + 16))(v166, v72, v71);
      v74 = v70;
      v75 = sub_22B36050C();
      v76 = sub_22B360D0C();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412290;
        *(v77 + 4) = v74;
        *v78 = v65;
        _os_log_impl(&dword_22B116000, v75, v76, "[UsageSummaryRecords] Got back object to update %@", v77, 0xCu);
        sub_22B123284(v78, &unk_27D8BAA90, &unk_22B362BC0);
        v79 = v78;
        v58 = v180;
        MEMORY[0x23188F650](v79, -1, -1);
        MEMORY[0x23188F650](v77, -1, -1);
      }

      else
      {

        v75 = v74;
      }

      v140 = v173;
      v141 = v172;

      (*(v169 + 8))(v73, v170);
      [v66 setBillLastPeriod_];
      v142 = sub_22B36081C();
      [v66 setCurrency_];

      v143 = sub_22B35DDDC();
      [v66 setEnd_];

      v144 = sub_22B35DCCC();
      [v66 setItems_];

      v145 = sub_22B35DDDC();
      [v66 setSourceTime_];

      v146 = sub_22B35DDDC();
      [v66 setStart_];

      sub_22B35FACC();
      [v66 setTotalConsumptionValue_];
      sub_22B35DE8C();
      v147 = sub_22B35DDDC();
      (*(v140 + 8))(v141, v58);
      [v66 setCreationDate_];

      sub_22B1D8310(v171);
      v112 = v181;
LABEL_35:
      sub_22B123284(v112, &qword_27D8BA688, &qword_22B365848);
      v100 = v175;
      v98 = v162;
      goto LABEL_36;
    }

    if (v67 != -1)
    {
      swift_once();
    }

    v129 = v170;
    v130 = __swift_project_value_buffer(v170, qword_28140BD10);
    swift_beginAccess();
    v131 = v165;
    (*(v169 + 16))(v165, v130, v129);
    v132 = v62;
    v133 = sub_22B36050C();
    v134 = sub_22B360D0C();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v135 = 138412290;
      *(v135 + 4) = v132;
      *v136 = v151;
      v137 = v132;
      _os_log_impl(&dword_22B116000, v133, v134, "[UsageSummaryRecords] No object to update for %@", v135, 0xCu);
      sub_22B123284(v136, &unk_27D8BAA90, &unk_22B362BC0);
      v138 = v136;
      v58 = v180;
      MEMORY[0x23188F650](v138, -1, -1);
      v139 = v135;
      v61 = v160;
      MEMORY[0x23188F650](v139, -1, -1);
    }

    (*(v169 + 8))(v131, v170);
    sub_22B1D8310(v171);
    v51 = v181;
  }

  else
  {
    v113 = v195[0];
    v114 = sub_22B35DB9C();

    swift_willThrow();
    v69 = v174;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v115 = v170;
    v116 = __swift_project_value_buffer(v170, qword_28140BD10);
    swift_beginAccess();
    v117 = v167;
    (*(v169 + 16))(v167, v116, v115);
    v118 = v62;
    v119 = v117;
    v120 = v118;
    v121 = sub_22B36050C();
    v122 = sub_22B360D0C();

    v123 = os_log_type_enabled(v121, v122);
    v51 = v181;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v124 = 138412290;
      *(v124 + 4) = v120;
      *v125 = v151;
      v126 = v120;
      _os_log_impl(&dword_22B116000, v121, v122, "[UsageSummaryRecords] No object to update for %@", v124, 0xCu);
      sub_22B123284(v125, &unk_27D8BAA90, &unk_22B362BC0);
      v127 = v125;
      v119 = v167;
      MEMORY[0x23188F650](v127, -1, -1);
      v128 = v124;
      v58 = v180;
      MEMORY[0x23188F650](v128, -1, -1);
    }

    (*(v169 + 8))(v119, v170);
    sub_22B1D8310(v171);
    v163 = 0;
    v61 = v160;
  }

LABEL_15:
  sub_22B35FADC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v82 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext_];

  v83 = *(v69 + 112);
  if (v83)
  {
    v84 = v82;
    [v61 assignObject:v84 toPersistentStore:v83];
    [v84 setBillLastPeriod_];
    v85 = sub_22B36081C();
    [v84 setCurrency_];

    v86 = v172;
    sub_22B35DE8C();
    v87 = sub_22B35DDDC();
    (*(v173 + 8))(v86, v58);
    [v84 setCreationDate_];

    v88 = sub_22B35DDDC();
    [v84 setEnd_];

    v89 = sub_22B35DCCC();
    [v84 setItems_];

    v90 = sub_22B36081C();
    [v84 setRecordID_];

    v91 = sub_22B35DDDC();
    [v84 setSourceTime_];

    v92 = sub_22B35DDDC();
    [v84 setStart_];

    v93 = sub_22B36081C();
    [v84 setSubscriptionID_];

    sub_22B35FACC();
    [v84 setTotalConsumptionValue_];
    v94 = sub_22B36081C();
    [v84 setUsageSummaryID_];

    v95 = sub_22B36081C();
    [v84 setUtilityID_];

    v96 = sub_22B36081C();
    [v84 setZoneName_];

    v97 = [v84 objectID];
    sub_22B123284(v51, &qword_27D8BA688, &qword_22B365848);
    v98 = v162;
    v99 = *v162;
    *v162 = v97;

    v100 = v175;
LABEL_36:
    v148 = *v98;
    *v100 = *v98;
    v149 = v148;
    return;
  }

  __break(1u);
}

void sub_22B1D477C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v67 = a5;
  v63 = a1;
  v64 = a3;
  v9 = sub_22B36052C();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  v17 = sub_22B35DE9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v62 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22B35FADC();
  v20 = sub_22B35FAAC();
  [v20 setResultType_];
  v71 = MEMORY[0x277D84F90];
  v65 = a2;
  v58 = v13;
  if (a2 && a4)
  {
    v57 = a6;
    v66 = v20;
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22B3634C0;
    v22 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v23 = sub_22B1280E4();
    v24 = v64;
    v25 = v65;
    *(v21 + 32) = v63;
    *(v21 + 40) = v25;
    *(v21 + 96) = v22;
    *(v21 + 104) = v23;
    *(v21 + 64) = v23;
    *(v21 + 72) = v24;
    *(v21 + 80) = a4;

    v26 = a4;

    v27 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    v20 = v66;
    a4 = v26;
    a6 = v57;
  }

  sub_22B170BE0(v67, v16, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_22B123284(v16, &qword_27D8BA340, &qword_22B363FB0);
    v28 = v69;
  }

  else
  {
    v67 = a4;
    v29 = v62;
    (*(v18 + 32))(v62, v16, v17);
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22B3634B0;
    v31 = sub_22B35DDDC();
    *(v30 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v30 + 64) = sub_22B1D7CDC();
    *(v30 + 32) = v31;
    v16 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    v28 = v69;
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v18 + 8))(v29, v17);
    a4 = v67;
  }

  v32 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v33 = sub_22B360A3C();

  v34 = [v32 initWithType:1 subpredicates:v33];

  [v20 setPredicate_];
  v35 = sub_22B360E9C();
  if (v28)
  {

    return;
  }

  v36 = v35;
  v66 = v20;
  v67 = a4;
  if (v35 >> 62)
  {
    v37 = sub_22B36109C();
    if (!v37)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_21;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  for (i = 0; i != v37; ++i)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x23188EAC0](i, v36);
    }

    else
    {
      v39 = *(v36 + 8 * i + 32);
    }

    v40 = v39;
    [a6 deleteObject_];
  }

LABEL_21:

  sub_22B207390(13);
  if (!v65 || !v67)
  {
    v16 = v61;
    if (qword_28140A0C8 == -1)
    {
LABEL_30:
      v50 = __swift_project_value_buffer(v16, qword_28140BD10);
      swift_beginAccess();
      v52 = v59;
      v51 = v60;
      (*(v60 + 16))(v59, v50, v16);
      v53 = sub_22B36050C();
      v54 = sub_22B360D0C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_22B116000, v53, v54, "[UsageSummaryRecords] Deleted All", v55, 2u);
        MEMORY[0x23188F650](v55, -1, -1);
      }

      (*(v51 + 8))(v52, v16);
      goto LABEL_34;
    }

LABEL_36:
    swift_once();
    goto LABEL_30;
  }

  v41 = v61;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v41, qword_28140BD10);
  swift_beginAccess();
  v43 = v60;
  v44 = v58;
  (*(v60 + 16))(v58, v42, v41);

  v45 = v67;

  v46 = sub_22B36050C();
  v47 = sub_22B360D0C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v70 = v49;
    *v48 = 136315394;
    *(v48 + 4) = sub_22B1A7B20(v63, v65, &v70);
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_22B1A7B20(v64, v45, &v70);
    _os_log_impl(&dword_22B116000, v46, v47, "[UsageSummaryRecords] Deleted %s for utility %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v49, -1, -1);
    MEMORY[0x23188F650](v48, -1, -1);

    (*(v43 + 8))(v58, v61);
  }

  else
  {

    (*(v43 + 8))(v44, v61);
  }

LABEL_34:
  [a6 refreshAllObjects];
}

void sub_22B1D5074(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v7;
  sub_22B35FADC();
  v14 = sub_22B35FAAC();
  if (a2)
  {
    if (a4)
    {
      sub_22B128014(0, &qword_281409330, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_22B3634C0;
      v16 = MEMORY[0x277D837D0];
      *(v15 + 56) = MEMORY[0x277D837D0];
      v17 = sub_22B1280E4();
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      *(v15 + 64) = v17;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;

      v8 = v7;
      v18 = sub_22B360CCC();
      [v14 setPredicate_];
    }
  }

  [v14 setResultType_];
  v19 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v20 = sub_22B36081C();
  v21 = [v19 initWithKey:v20 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B363650;
  *(v22 + 32) = v21;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v23 = v21;
  v24 = sub_22B360A3C();

  [v14 setSortDescriptors_];

  [v14 setFetchLimit_];
  v25 = sub_22B360E9C();
  if (v8)
  {
    goto LABEL_14;
  }

  if (!(v25 >> 62))
  {
    v26 = a6;
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    v31 = 1;
    goto LABEL_13;
  }

  v32 = v25;
  v33 = sub_22B36109C();
  v25 = v32;
  v26 = a6;
  if (!v33)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = a5;
    v28 = MEMORY[0x23188EAC0](0);
    goto LABEL_10;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = a5;
    v28 = *(v25 + 32);
LABEL_10:
    v29 = v28;

    v30 = [v29 start];

    sub_22B35DE5C();
    v31 = 0;
    a5 = v27;
LABEL_13:
    v34 = sub_22B35DE9C();
    (*(*(v34 - 8) + 56))(v26, v31, 1, v34);
    [a5 refreshAllObjects];
LABEL_14:

    return;
  }

  __break(1u);
}

void sub_22B1D53F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v41 = a5;
  v42 = a7;
  v39 = a1;
  v40 = a3;
  v10 = sub_22B35DE9C();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FADC();
  v12 = sub_22B35FAAC();
  [v12 setResultType_];
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22B36081C();
  v15 = [v13 initWithKey:v14 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22B363650;
  *(v16 + 32) = v15;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v38 = v15;
  v17 = sub_22B360A3C();

  [v12 setSortDescriptors_];

  [v12 setFetchLimit_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B364620;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v20 = sub_22B1280E4();
  v21 = v40;
  *(v18 + 32) = v39;
  *(v18 + 40) = a2;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = v21;
  *(v18 + 80) = a4;
  *(v18 + 136) = v19;
  *(v18 + 144) = v20;
  *(v18 + 112) = v41;
  *(v18 + 120) = a6;

  v22 = sub_22B360CCC();
  [v12 setPredicate_];
  v23 = v42;
  v24 = v43;
  v25 = sub_22B360E9C();
  if (v24)
  {

    return;
  }

  v27 = v35;
  v26 = v36;
  v28 = v37;
  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v32 = v25;
  v33 = sub_22B36109C();
  v25 = v32;
  if (!v33)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v25 + 32);
LABEL_8:
    v30 = v29;

    sub_22B35DE6C();
    v31 = sub_22B35DDDC();
    (*(v26 + 8))(v27, v28);
    [v30 setCreationDate_];

LABEL_11:
    sub_22B207390(14);
    v34 = v38;
    [v23 refreshAllObjects];

    return;
  }

  __break(1u);
}

void *sub_22B1D57F4()
{
  type metadata accessor for UsageSummaryRecordsManager();
  v0 = swift_allocObject();
  result = sub_22B1D5830();
  qword_28140BCE0 = v0;
  return result;
}

void *sub_22B1D5830()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  if (qword_28140A888 != -1)
  {
    swift_once();
  }

  v2 = qword_27D8BB058;
  v3 = off_27D8BB060;

  v4 = sub_22B25376C(v2, v3, 0x4374686769736E49, 0xEC00000065686361);
  v6 = v5;

  v7 = v1[14];
  v8 = v1[15];
  v1[14] = v4;
  v1[15] = v6;
  sub_22B1441D8(v7, v8);
  v9 = v1[14];
  if (v9)
  {

    v10 = sub_22B207EFC();

    v9 = [v10 newBackgroundContext];
    v11 = sub_22B36081C();
    [v9 setTransactionAuthor_];

    [v9 setMergePolicy_];
    [v9 setUndoManager_];
    [v9 setShouldRefreshAfterSave_];
    [v9 setStalenessInterval_];
    [v9 setShouldDeleteInaccessibleFaults_];
  }

  v12 = v1[16];
  v1[16] = v9;

  return v1;
}

uint64_t sub_22B1D59F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[22] = a6;
  v7[23] = v6;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v8 = sub_22B36052C();
  v7[24] = v8;
  v7[25] = *(v8 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D5ACC, v6, 0);
}

uint64_t sub_22B1D5ACC()
{
  v1 = *(v0 + 184);
  v2 = [*(v0 + 176) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = sub_22B36084C();
  v7 = v6;

  *(v0 + 224) = v5;
  *(v0 + 232) = v7;
  v8 = *(v1 + 112);
  *(v0 + 240) = v8;
  if (v8)
  {
    v9 = *(*(v0 + 184) + 120);
    *(v0 + 248) = v9;

    v10 = v9;
    v11 = sub_22B207EFC();
    v12 = [v11 newBackgroundContext];
    *(v0 + 256) = v12;
    v13 = sub_22B36081C();
    [v12 setTransactionAuthor_];

    [v12 setMergePolicy_];
    [v12 setUndoManager_];
    [v12 setShouldRefreshAfterSave_];
    [v12 setStalenessInterval_];
    [v12 setShouldDeleteInaccessibleFaults_];

    return MEMORY[0x2822009F8](sub_22B1D5E24, 0, 0);
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);
    v17 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v14, v17, v16);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "[Dropbox Bridge] failed to get coredata model instance", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 192);

    (*(v22 + 8))(v21, v23);
    sub_22B134CDC();
    swift_allocError();
    *v24 = 13;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22B1D5E24(uint64_t a1)
{
  *(v1 + 112) = MEMORY[0x277D84F90];
  v4 = (v1 + 112);
  v4[1] = MEMORY[0x277D84FA0];
  v29 = (v4 + 1);
  v30 = v4;
  v5 = v4[3];
  if (v5 >> 62)
  {
LABEL_15:
    v6 = sub_22B36109C();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v28 = v5 & 0xC000000000000001;
      v27 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = *(v31 + 136) + 32;
      while (1)
      {
        if (v28)
        {
          v8 = MEMORY[0x23188EAC0](v7, *(v31 + 136));
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v7 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *(v26 + 8 * v7);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_11:
            __break(1u);

            v15 = *(v31 + 128);
            objc_autoreleasePoolPop(v2);

            *(v31 + 312) = v15;
            v16 = *(v31 + 184);

            return MEMORY[0x2822009F8](sub_22B1D67B4, v16, 0);
          }
        }

        v10 = v8;
        v11 = *(v31 + 256);
        v33 = *(v31 + 248);
        v12 = *(v31 + 240);
        v32 = *(v31 + 224);
        v13 = *(v31 + 160);
        v34 = *(v31 + 168);
        v14 = *(v31 + 144);
        v5 = *(v31 + 152);
        v2 = MEMORY[0x23188EEB0]();
        v25 = v11;
        v3 = v10;
        sub_22B1D1E3C(v10, v29, v12, v33, v14, v5, v13, v34, v32, *(&v32 + 1), v25, v30, v30 + 2);
        objc_autoreleasePoolPop(v2);

        ++v7;
        if (v9 == v6)
        {
          v17 = *v30;
          goto LABEL_17;
        }
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_17:
  *(v31 + 264) = v17;
  v18 = *(v31 + 256);
  v19 = *(v31 + 176);
  v20 = sub_22B207EFC();
  *(v31 + 272) = v20;
  v21 = swift_task_alloc();
  *(v31 + 280) = v21;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v20;
  v21[5] = v19;
  v22 = swift_task_alloc();
  *(v31 + 288) = v22;
  *v22 = v31;
  v22[1] = sub_22B1D613C;
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000044, 0x800000022B36C2C0, sub_22B1D820C, v21, v23);
}

uint64_t sub_22B1D613C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = sub_22B1D654C;
  }

  else
  {

    v2 = sub_22B1D6280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B1D6280()
{
  v26 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);

  *(swift_task_alloc() + 16) = v2;
  sub_22B360E7C();
  if (v1)
  {

    *(v0 + 312) = v1;
    v3 = *(v0 + 184);

    v4 = sub_22B1D67B4;
    v5 = v3;
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 216);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    (*(v8 + 16))(v6, v9, v7);

    v10 = sub_22B36050C();
    v11 = sub_22B360D2C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 232);
    if (v12)
    {
      v14 = *(v0 + 224);
      v24 = *(v0 + 216);
      v16 = *(v0 + 192);
      v15 = *(v0 + 200);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v19 = sub_22B1A7B20(v14, v13, &v25);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_22B116000, v10, v11, "[UsageSummaryRecords] Added to share for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);

      (*(v15 + 8))(v24, v16);
    }

    else
    {
      v20 = *(v0 + 216);
      v21 = *(v0 + 192);
      v22 = *(v0 + 200);

      (*(v22 + 8))(v20, v21);
    }

    v5 = *(v0 + 184);
    *(v0 + 304) = *(v0 + 120);
    v4 = sub_22B1D65C8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B1D654C()
{
  *(v0 + 312) = *(v0 + 296);
  v1 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_22B1D67B4, v1, 0);
}

uint64_t sub_22B1D65C8()
{
  v1 = *(v0[23] + 128);
  if (v1)
  {
    v2 = v0[31];
    v3 = v0[32];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_22B144218;
    *(v5 + 24) = v4;
    v0[6] = sub_22B12819C;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_14;
    v6 = _Block_copy(v0 + 2);
    v7 = v1;

    [v7 performBlockAndWait_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = v0[31];

LABEL_5:

  v10 = v0[1];
  v11 = v0[38];

  return v10(v11);
}

uint64_t sub_22B1D67B4()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22B1D6838(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v30 = a5;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  v16 = os_log_type_enabled(v14, v15);
  v29 = a2;
  if (v16)
  {
    v17 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[1] = v6;
    v20 = v19;
    v34 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v33, v17, &v34);
    _os_log_impl(&dword_22B116000, v14, v15, "Get usagepoint for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (*(v7 + 112))
  {
    v21 = *(v7 + 128);
    if (v21)
    {
      v22 = *(v7 + 120);
      sub_22B1231A0(*(v7 + 112), v22);
      v23 = v21;
      v24 = MEMORY[0x23188EEB0]();
      MEMORY[0x28223BE20](v24);
      v25 = v29;
      v28[-6] = v33;
      v28[-5] = v25;
      v26 = v32;
      v28[-4] = v31;
      v28[-3] = v26;
      v28[-2] = v30;
      v28[-1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA680, &qword_22B365840);
      sub_22B360E7C();
      objc_autoreleasePoolPop(v24);
    }

    else
    {
      sub_22B134CDC();
      swift_allocError();
      *v27 = 7;
      swift_willThrow();
    }
  }
}

uint64_t sub_22B1D6B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22B36052C();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D6C60, v6, 0);
}

uint64_t sub_22B1D6C60()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  if (v7)
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v29);
    _os_log_impl(&dword_22B116000, v5, v6, "Update usage summary date for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[11];
  v16 = v15[14];
  v0[15] = v16;
  v17 = v15[15];
  v0[16] = v17;
  if (v16 && (v18 = v15[16], (v0[17] = v18) != 0))
  {
    sub_22B1231A0(v16, v17);
    v19 = v18;
    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_22B1D6F00;
    v21 = v0[9];
    v22 = v0[10];
    v23 = v0[7];
    v24 = v0[8];
    v26 = v0[5];
    v25 = v0[6];

    return sub_22B1D7D68(v26, v25, v23, v24, v21, v22, v19);
  }

  else
  {

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22B1D6F00()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_22B1D7010, v1, 0);
}

uint64_t sub_22B1D7010()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B1D7088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_22B36052C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D7150, v5, 0);
}

uint64_t sub_22B1D7150()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete usage point", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = *(*(v0 + 80) + 128);
  if (v13)
  {
    v14 = *(v11 + 120);
    v15 = *(v0 + 72);
    v22 = *(v0 + 40);
    v23 = *(v0 + 56);
    sub_22B1231A0(v12, v14);
    v16 = v13;
    v17 = MEMORY[0x23188EEB0]();
    v18 = swift_task_alloc();
    *(v18 + 16) = v22;
    *(v18 + 32) = v23;
    *(v18 + 48) = v15;
    *(v18 + 56) = v16;
    sub_22B360E7C();

    objc_autoreleasePoolPop(v17);

LABEL_8:

    v19 = *(v0 + 8);
    goto LABEL_10;
  }

  sub_22B134CDC();
  swift_allocError();
  *v20 = 7;
  swift_willThrow();

  v19 = *(v0 + 8);
LABEL_10:

  return v19();
}

uint64_t sub_22B1D73C8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v2[7] = swift_task_alloc();
  v3 = sub_22B35DE9C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D751C, v1, 0);
}

uint64_t sub_22B1D751C()
{
  v41 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  v9 = *(v6 + 16);
  v9(v4, v7, v5);
  v10 = sub_22B36050C();
  v39 = sub_22B360D2C();
  v11 = os_log_type_enabled(v10, v39);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  if (v11)
  {
    log = v10;
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v18 = 136315138;
    sub_22B1D81C4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v36 = v12;
    v19 = sub_22B36131C();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_22B1A7B20(v19, v21, &v40);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22B116000, log, v39, "Delete usage point older than %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23188F650](v37, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v15);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v23 = v0[6];
  v24 = v23[14];
  if (v24)
  {
    v25 = v23[16];
    if (v25)
    {
      v26 = v23[15];
      v27 = v0[8];
      v28 = v0[9];
      v29 = v0[7];
      v9(v29, v0[5], v27);
      (*(v28 + 56))(v29, 0, 1, v27);
      sub_22B1231A0(v24, v26);
      v30 = v25;
      v31 = MEMORY[0x23188EEB0]();
      v32 = swift_task_alloc();
      *(v32 + 16) = 0u;
      *(v32 + 32) = 0u;
      *(v32 + 48) = v29;
      *(v32 + 56) = v30;
      sub_22B360E7C();
      v33 = v0[7];

      objc_autoreleasePoolPop(v31);

      sub_22B123284(v33, &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_22B1D78E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_22B36052C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D79A8, v5, 0);
}

uint64_t sub_22B1D79A8()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Getting oldest usage summary", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (v12 && (v13 = *(*(v0 + 80) + 128)) != 0)
  {
    v14 = *(v11 + 120);
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);
    sub_22B1231A0(v12, v14);
    v15 = v13;
    v16 = MEMORY[0x23188EEB0]();
    v17 = swift_task_alloc();
    *(v17 + 16) = v23;
    *(v17 + 32) = v22;
    *(v17 + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    sub_22B360E7C();

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v18 = *(v0 + 40);
    v19 = sub_22B35DE9C();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_22B1D7CDC()
{
  result = qword_281408550;
  if (!qword_281408550)
  {
    sub_22B128014(255, &qword_281408558, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408550);
  }

  return result;
}

uint64_t sub_22B1D7D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22B36052C();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1D7E34, 0, 0);
}

uint64_t sub_22B1D7E34()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = *(v0 + 56);
  v4 = MEMORY[0x23188EEB0]();
  v5 = swift_task_alloc();
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  *(v5 + 64) = v2;
  sub_22B360E7C();

  objc_autoreleasePoolPop(v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t type metadata accessor for CDUsageSummaryRecords(uint64_t a1)
{
  result = qword_27D8BA6B8;
  if (!qword_27D8BA6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B1D8160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDUsageSummaryRecords(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B1D81C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22B1D8218()
{
  v2 = *(v0 + 16);
  result = sub_22B207390(12);
  if (!v1)
  {
    return [v2 refreshAllObjects];
  }

  return result;
}

uint64_t sub_22B1D825C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B144B30(result, a2);
  }

  return result;
}

uint64_t sub_22B1D8310(uint64_t a1)
{
  v2 = type metadata accessor for CDUsageSummaryRecords(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B1D836C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22B1D8404(uint64_t a1)
{
  sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    sub_22B1D84D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B1D84D4(uint64_t a1)
{
  if (!qword_27D8BA6C8)
  {
    sub_22B35F9DC();
    v1 = sub_22B360AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8BA6C8);
    }
  }
}

uint64_t sub_22B1D8544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B124D88;

  return v9(a1, a2, a3);
}

uint64_t sub_22B1D866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B119A60;

  return v9(a1, a2, a3);
}

uint64_t sub_22B1D8794@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_22B35E3DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void sub_22B1D8968(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v260 = a8;
  v277 = a7;
  v250 = a5;
  v271 = a4;
  v251 = a3;
  v319 = a1;
  v258 = a9;
  v11 = sub_22B35DE9C();
  v303 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v248 = &v244 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v246 = &v244 - v14;
  v249 = sub_22B35D8BC();
  v247 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v245 = &v244 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for CDTOUPeak(0);
  v244 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v320 = &v244 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v318 = &v244 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  MEMORY[0x28223BE20](v19 - 8);
  v259 = &v244 - v20;
  v276 = sub_22B35E0BC();
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v281 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v279 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v278 = &v244 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v302 = &v244 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x28223BE20](v25 - 8);
  v265 = &v244 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v264 = &v244 - v28;
  MEMORY[0x28223BE20](v29);
  v263 = &v244 - v30;
  MEMORY[0x28223BE20](v31);
  v295 = &v244 - v32;
  MEMORY[0x28223BE20](v33);
  v294 = &v244 - v34;
  MEMORY[0x28223BE20](v35);
  v293 = &v244 - v36;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v274 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v273 = &v244 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v316 = &v244 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x28223BE20](v40 - 8);
  v262 = &v244 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v261 = &v244 - v43;
  MEMORY[0x28223BE20](v44);
  v292 = &v244 - v45;
  MEMORY[0x28223BE20](v46);
  v313 = &v244 - v47;
  MEMORY[0x28223BE20](v48);
  v312 = &v244 - v49;
  MEMORY[0x28223BE20](v50);
  v311 = &v244 - v51;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v272 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v297 = &v244 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v315 = &v244 - v54;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D0, &qword_22B365A48);
  MEMORY[0x28223BE20](v300);
  v286 = &v244 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v284 = &v244 - v57;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  MEMORY[0x28223BE20](v283);
  v285 = (&v244 - v58);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v257 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v256 = &v244 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v308 = &v244 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7E0, &qword_22B365A58);
  MEMORY[0x28223BE20](v62 - 8);
  v270 = &v244 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v267 = (&v244 - v65);
  v268 = sub_22B35E9EC();
  v280 = *(v268 - 1);
  MEMORY[0x28223BE20](v268);
  v269 = &v244 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v296 = &v244 - v68;
  v290 = sub_22B35E53C();
  v255 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v254 = &v244 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v310 = &v244 - v71;
  v307 = sub_22B35E4BC();
  v306 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v289 = &v244 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v309 = &v244 - v74;
  v305 = sub_22B35E81C();
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v288 = &v244 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v287 = &v244 - v77;
  MEMORY[0x28223BE20](v78);
  v317 = &v244 - v79;
  MEMORY[0x28223BE20](v80);
  v314 = &v244 - v81;
  v82 = sub_22B35E37C();
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v324 = &v244 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v253 = &v244 - v86;
  v89 = MEMORY[0x28223BE20](v87);
  v91 = &v244 - v90;
  v92 = *(a2 + 16);
  v282 = v11;
  if (v92)
  {
    v252 = a6;
    v94 = *(v83 + 16);
    v93 = v83 + 16;
    v321 = (*(v93 + 64) + 32) & ~*(v93 + 64);
    v95 = a2 + v321;
    v96 = *(v93 + 56);
    v323 = (v93 + 16);
    v325 = (v93 - 8);
    v326 = v94;
    v97 = MEMORY[0x277D84F90];
    v98 = a2 + v321;
    v99 = v92;
    v327 = v96;
    v322 = v93;
    (v94)(v91, a2 + v321, v82, v89);
    while (1)
    {
      v101 = *(sub_22B35E35C() + 16);

      if (v101)
      {
        v102 = *v323;
        (*v323)(v324, v91, v82);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v328 = v97;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B355744(0, *(v97 + 16) + 1, 1);
          v97 = v328;
        }

        v105 = *(v97 + 16);
        v104 = *(v97 + 24);
        v106 = v97;
        if (v105 >= v104 >> 1)
        {
          sub_22B355744((v104 > 1), v105 + 1, 1);
          v106 = v328;
        }

        *(v106 + 16) = v105 + 1;
        v107 = v106 + v321 + v105 * v327;
        v96 = v327;
        v102(v107, v324, v82);
        v97 = v106;
      }

      else
      {
        (*v325)(v91, v82);
      }

      v98 += v96;
      if (!--v99)
      {
        break;
      }

      (v326)(v91, v98, v82, v100);
    }

    v324 = v97;
    v108 = MEMORY[0x277D84F90];
    v109 = v253;
    while (1)
    {
      (v326)(v109, v95, v82);
      v110 = sub_22B35E34C();
      (*v325)(v109, v82);
      v111 = *(v110 + 16);
      v112 = v108[2];
      v113 = v112 + v111;
      if (__OFADD__(v112, v111))
      {
        break;
      }

      v114 = swift_isUniquelyReferenced_nonNull_native();
      if (!v114 || v113 > v108[3] >> 1)
      {
        if (v112 <= v113)
        {
          v115 = v112 + v111;
        }

        else
        {
          v115 = v112;
        }

        v108 = sub_22B32D46C(v114, v115, 1, v108);
      }

      v116 = v327;
      if (*(v110 + 16))
      {
        v117 = (v108[3] >> 1) - v108[2];
        sub_22B35E3DC();
        if (v117 < v111)
        {
          goto LABEL_69;
        }

        swift_arrayInitWithCopy();

        v116 = v327;
        if (v111)
        {
          v118 = v108[2];
          v119 = __OFADD__(v118, v111);
          v120 = v118 + v111;
          if (v119)
          {
            goto LABEL_70;
          }

          v108[2] = v120;
        }
      }

      else
      {

        if (v111)
        {
          goto LABEL_68;
        }
      }

      v95 += v116;
      if (!--v92)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v108 = MEMORY[0x277D84F90];
  v324 = MEMORY[0x277D84F90];
LABEL_29:
  v121 = MEMORY[0x23188EEB0](v88);
  v122 = type metadata accessor for SessionHalfHourlySummary(0);
  v123 = v122[9];
  sub_22B35DD3C();
  v125 = v280;
  if ((*&v124 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v124 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v124 >= 9.22337204e18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_22B35E4CC();
  v126 = v122[10];
  sub_22B35DD3C();
  if ((*&v127 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v127 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v127 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v323 = v121;
  v326 = v126;
  sub_22B35E4CC();
  v252 = *(v319 + v122[16]);
  sub_22B35E4CC();
  sub_22B1FE510(&qword_27D8BA7E8, 255, MEMORY[0x277D175B8], MEMORY[0x277D175B0]);
  v128 = v267;
  v129 = v268;
  sub_22B35E7FC();
  v130 = *(v125 + 6);
  if (v130(v128, 1, v129) == 1)
  {
    sub_22B35E9FC();
    if (v130(v128, 1, v129) != 1)
    {
      sub_22B123284(v128, &qword_27D8BA7E0, &qword_22B365A58);
    }
  }

  else
  {
    (*(v125 + 4))(v296, v128, v129);
  }

  v131 = v270;
  sub_22B35E7FC();
  if (v130(v131, 1, v129) == 1)
  {
    sub_22B35E9FC();
    v132 = v130(v131, 1, v129) == 1;
    v133 = v271;
    v134 = v131;
    v135 = v326;
    if (!v132)
    {
      sub_22B123284(v134, &qword_27D8BA7E0, &qword_22B365A58);
    }
  }

  else
  {
    (*(v280 + 4))(v269, v131, v129);
    v133 = v271;
    v135 = v326;
  }

  sub_22B35E52C();
  sub_22B2000B4(&v123[v319], &v135[v319], v324, v133, v136);
  v138 = v137;

  v139 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v140 = v282;
  v271 = v139;
  if ((sub_22B36076C() & 1) == 0)
  {
    goto LABEL_77;
  }

  v280 = v122;
  v141 = v303;
  v142 = (v303 + 16);
  v143 = *(v303 + 16);
  v144 = v319;
  v145 = v284;
  v143(v284, &v123[v319], v140);
  v327 = v138;
  v146 = v300;
  v147 = v145 + *(v300 + 48);
  v270 = v142;
  v269 = v143;
  v143(v147, &v135[v144], v140);
  v148 = v286;
  sub_22B170BE0(v145, v286, &qword_27D8BA7D0, &qword_22B365A48);
  v325 = *(v146 + 48);
  v149 = *(v141 + 32);
  v253 = v123;
  v150 = v285;
  v149(v285, v148, v140);
  v151 = *(v141 + 8);
  v151(v325 + v148, v140);
  sub_22B170CD0(v145, v148, &qword_27D8BA7D0, &qword_22B365A48);
  v152 = v150 + *(v283 + 36);
  v153 = v148 + *(v146 + 48);
  v325 = (v141 + 32);
  v268 = v149;
  v149(v152, v153, v140);
  v303 = v141 + 8;
  v267 = v151;
  v151(v148, v140);
  sub_22B1E3CC4(v317, v327, v150, v108, v308);
  sub_22B123284(v150, &qword_27D8BA768, &qword_22B365A10);
  v154 = *(v306 + 56);
  v155 = v307;
  v154(v311, 1, 1, v307);
  v154(v312, 1, 1, v155);
  v154(v313, 1, 1, v155);
  v154(v292, 1, 1, v155);
  v154(v261, 1, 1, v155);
  v154(v262, 1, 1, v155);
  v156 = MEMORY[0x277D17508];
  v321 = sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508], MEMORY[0x277D17520]);
  v322 = sub_22B1FE510(&qword_27D8BA7A8, 255, v156, MEMORY[0x277D17510]);
  v324 = sub_22B1FE510(&qword_27D8BA7B0, 255, v156, MEMORY[0x277D17518]);
  sub_22B35E48C();
  v157 = v304[7];
  v158 = v305;
  v157(v293, 1, 1, v305);
  v157(v294, 1, 1, v158);
  v157(v295, 1, 1, v158);
  v157(v263, 1, 1, v158);
  v157(v264, 1, 1, v158);
  v157(v265, 1, 1, v158);
  v159 = MEMORY[0x277D17570];
  v296 = sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570], MEMORY[0x277D17588]);
  sub_22B1FE510(&qword_27D8BA778, 255, v159, MEMORY[0x277D17578]);
  sub_22B1FE510(&qword_27D8BA780, 255, v159, MEMORY[0x277D17580]);
  sub_22B35E48C();
  v154(v311, 1, 1, v155);
  v154(v312, 1, 1, v155);
  v154(v313, 1, 1, v155);
  v154(v292, 1, 1, v155);
  sub_22B35E4EC();
  if (v277)
  {

    v160 = v281;
    v161 = v266;
    v162 = v318;
  }

  else
  {
    v163 = v253;
    v164 = v319;
    v165 = v326;
    v166 = v282;
    v167 = sub_22B36076C();
    v161 = v266;
    v162 = v318;
    if ((v167 & 1) == 0)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v168 = v284;
    v169 = v269;
    (v269)(v284, &v163[v164], v166);
    v170 = v300;
    (v169)(v168 + *(v300 + 48), &v165[v164], v166);
    v171 = v166;
    v172 = v286;
    sub_22B170BE0(v168, v286, &qword_27D8BA7D0, &qword_22B365A48);
    v173 = *(v170 + 48);
    v174 = v285;
    v175 = v268;
    (v268)(v285, v172, v171);
    v176 = v172 + v173;
    v177 = v267;
    v267(v176, v171);
    sub_22B170CD0(v168, v172, &qword_27D8BA7D0, &qword_22B365A48);
    v175(v174 + *(v283 + 36), v172 + *(v300 + 48), v171);
    v160 = v281;
    v177(v172, v171);
    v178 = v278;
    sub_22B1E02CC(v252, v327, v174, v108, v278);

    sub_22B123284(v174, &qword_27D8BA768, &qword_22B365A10);
    v179 = v279;
    v180 = v302;
    v181 = v301;
    (*(v279 + 8))(v302, v301);
    (*(v179 + 32))(v180, v178, v181);
  }

  v182 = v259;
  sub_22B170BE0(v260, v259, &unk_27D8BA080, &unk_22B364280);
  v183 = v275;
  v184 = v276;
  if ((*(v275 + 48))(v182, 1, v276) == 1)
  {
    sub_22B123284(v182, &unk_27D8BA080, &unk_22B364280);
LABEL_66:
    v234 = v304[2];
    v235 = v305;
    v234(v287, v314, v305);
    (*(v306 + 16))(v289, v309, v307);
    v234(v288, v317, v235);
    v236 = v272;
    (*(v272 + 16))(v297, v315, v298);
    v237 = v274;
    (*(v274 + 16))(v273, v316, v299);
    v238 = v279;
    v239 = v302;
    (*(v279 + 16))(v278, v302, v301);
    v240 = v257;
    (*(v257 + 16))(v256, v308, v291);
    v241 = v255;
    (*(v255 + 16))(v254, v310, v290);
    sub_22B35E5FC();
    (*(v238 + 8))(v239, v301);
    (*(v237 + 8))(v316, v299);
    (*(v236 + 8))(v315, v298);
    (*(v240 + 8))(v308, v291);
    (*(v241 + 8))(v310, v290);
    (*(v306 + 8))(v309, v307);
    v242 = v304[1];
    v243 = v305;
    v242(v317, v305);
    v242(v314, v243);
    objc_autoreleasePoolPop(v323);
    return;
  }

  (*(v183 + 32))(v160, v182, v184);
  v185 = *(v251 + 16);
  if (!v185)
  {
    (*(v183 + 8))(v160, v184);
    goto LABEL_66;
  }

  v186 = (*(v244 + 80) + 32) & ~*(v244 + 80);
  v187 = *(v244 + 72);
  v188 = v251 + v186;
  v189 = MEMORY[0x277D84F90];
  v190 = v253;
  do
  {
    sub_22B201F74(v188, v162, type metadata accessor for CDTOUPeak);
    if (*(*(v162 + *(v161 + 28)) + 16))
    {
      sub_22B20203C(v162, v320, type metadata accessor for CDTOUPeak);
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v328 = v189;
      if ((v191 & 1) == 0)
      {
        sub_22B355788(0, *(v189 + 16) + 1, 1);
        v189 = v328;
      }

      v193 = *(v189 + 16);
      v192 = *(v189 + 24);
      if (v193 >= v192 >> 1)
      {
        sub_22B355788((v192 > 1), v193 + 1, 1);
        v189 = v328;
      }

      *(v189 + 16) = v193 + 1;
      sub_22B20203C(v320, v189 + v186 + v193 * v187, type metadata accessor for CDTOUPeak);
      v162 = v318;
    }

    else
    {
      sub_22B201FDC(v162, type metadata accessor for CDTOUPeak);
    }

    v188 += v187;
    --v185;
  }

  while (v185);
  v194 = v319;
  v195 = v282;
  v196 = v269;
  (v269)(v246, &v190[v319], v282);
  v197 = v326;
  (v196)(v248, &v326[v194], v195);
  v198 = v245;
  sub_22B35D88C();
  v199 = sub_22B200620(v198, v189, v281, v250);

  v200 = v198;
  v201 = v197;
  (*(v247 + 8))(v200, v249);
  if ((sub_22B36076C() & 1) == 0)
  {
    goto LABEL_79;
  }

  v202 = v319;
  v203 = &v190[v319];
  v204 = v284;
  (v196)(v284, v203, v195);
  v205 = v300;
  (v196)(v204 + *(v300 + 48), &v201[v202], v195);
  v206 = v286;
  sub_22B170BE0(v204, v286, &qword_27D8BA7D0, &qword_22B365A48);
  v207 = *(v205 + 48);
  v208 = v285;
  v327 = v199;
  v209 = v268;
  (v268)(v285, v206, v195);
  v210 = v267;
  v267(v206 + v207, v195);
  sub_22B170CD0(v204, v206, &qword_27D8BA7D0, &qword_22B365A48);
  v209(v208 + *(v283 + 36), v206 + *(v205 + 48), v195);
  v211 = v327;
  v210(v206, v195);
  v212 = v281;
  v213 = v273;
  sub_22B1E1858(v317, v211, v208, v281, v273);
  sub_22B123284(v208, &qword_27D8BA768, &qword_22B365A10);
  v214 = v274;
  v215 = v316;
  v216 = v299;
  (*(v274 + 8))(v316, v299);
  (*(v214 + 32))(v215, v213, v216);
  if (v277)
  {
    (*(v275 + 8))(v212, v276);

    goto LABEL_66;
  }

  v217 = v253;
  v218 = v326;
  if (sub_22B36076C())
  {
    v219 = v218;
    v220 = v319;
    v221 = v284;
    v222 = v269;
    (v269)(v284, &v217[v319], v195);
    v223 = v300;
    (v222)(v221 + *(v300 + 48), &v219[v220], v195);
    v224 = v286;
    sub_22B170BE0(v221, v286, &qword_27D8BA7D0, &qword_22B365A48);
    v225 = *(v223 + 48);
    v226 = v285;
    v227 = v268;
    (v268)(v285, v224, v195);
    v228 = v267;
    v267(v224 + v225, v195);
    sub_22B170CD0(v221, v224, &qword_27D8BA7D0, &qword_22B365A48);
    v227(v226 + *(v283 + 36), v224 + *(v223 + 48), v195);
    v228(v224, v195);
    v229 = v297;
    v230 = v281;
    sub_22B1DD9F8(v252, v327, v226, v281, v297);

    sub_22B123284(v226, &qword_27D8BA768, &qword_22B365A10);
    (*(v275 + 8))(v230, v276);
    v231 = v272;
    v232 = v315;
    v233 = v298;
    (*(v272 + 8))(v315, v298);
    (*(v231 + 32))(v232, v229, v233);
    goto LABEL_66;
  }

LABEL_80:
  __break(1u);
}

void sub_22B1DAF04(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CDEnergyGuidanceTracker(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_22B201F74(a3 + v14 + v15 * v12, v11, type metadata accessor for CDEnergyGuidanceTracker);
      v16 = a1(v11);
      if (v3)
      {
        sub_22B201FDC(v11, type metadata accessor for CDEnergyGuidanceTracker);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_22B20203C(v11, v23, type metadata accessor for CDEnergyGuidanceTracker);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B3556A0(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22B3556A0((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_22B20203C(v23, v13 + v14 + v19 * v15, type metadata accessor for CDEnergyGuidanceTracker);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_22B201FDC(v11, type metadata accessor for CDEnergyGuidanceTracker);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_22B1DB190(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for CDTOUPeak(0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
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
      sub_22B201F74(a3 + v15 + v16 * v13, v12, type metadata accessor for CDTOUPeak);
      v17 = a1(v12);
      if (v4)
      {
        sub_22B201FDC(v12, type metadata accessor for CDTOUPeak);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_22B20203C(v12, v24, type metadata accessor for CDTOUPeak);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B355788(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22B355788((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_22B20203C(v24, v14 + v15 + v20 * v16, type metadata accessor for CDTOUPeak);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_22B201FDC(v12, type metadata accessor for CDTOUPeak);
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
LABEL_15:
  }
}

void sub_22B1DB41C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_22B35E24C();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B3557CC(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_22B3557CC((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void sub_22B1DB6EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v258 = a7;
  v261 = a6;
  v234 = a5;
  v259 = a4;
  v235 = a3;
  v267 = sub_22B35DE9C();
  v11 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v232 = &v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v230 = &v228 - v14;
  v233 = sub_22B35D8BC();
  v231 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v229 = &v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for CDTOUPeak(0);
  v228 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v298 = &v228 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v294 = &v228 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  MEMORY[0x28223BE20](v19 - 8);
  v257 = &v228 - v20;
  v265 = sub_22B35E0BC();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v295 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA760, &qword_22B365A08);
  MEMORY[0x28223BE20](v22 - 8);
  v256 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v255 = &v228 - v25;
  MEMORY[0x28223BE20](v26);
  v254 = &v228 - v27;
  MEMORY[0x28223BE20](v28);
  v253 = &v228 - v29;
  MEMORY[0x28223BE20](v30);
  v252 = &v228 - v31;
  MEMORY[0x28223BE20](v32);
  v251 = &v228 - v33;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7B8, &unk_22B365A30);
  v243 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v242 = &v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v277 = &v228 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x28223BE20](v37 - 8);
  v250 = &v228 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v249 = &v228 - v40;
  MEMORY[0x28223BE20](v41);
  v248 = &v228 - v42;
  MEMORY[0x28223BE20](v43);
  v247 = &v228 - v44;
  MEMORY[0x28223BE20](v45);
  v246 = &v228 - v46;
  MEMORY[0x28223BE20](v47);
  v245 = &v228 - v48;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C0, &qword_22B3664A0);
  v263 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v262 = &v228 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v292 = &v228 - v51;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7C8, &qword_22B365A40);
  v241 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v240 = &v228 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v287 = &v228 - v54;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D0, &qword_22B365A48);
  MEMORY[0x28223BE20](v280);
  v266 = &v228 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v281 = &v228 - v57;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  MEMORY[0x28223BE20](v278);
  v279 = (&v228 - v58);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7D8, &qword_22B365A50);
  v239 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v238 = &v228 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v288 = &v228 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA7E0, &qword_22B365A58);
  MEMORY[0x28223BE20](v62 - 8);
  v260 = (&v228 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v64);
  v275 = &v228 - v65;
  v271 = sub_22B35E53C();
  v237 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v236 = &v228 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v289 = &v228 - v68;
  v286 = sub_22B35E4BC();
  v285 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v270 = &v228 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v290 = &v228 - v71;
  v284 = sub_22B35E81C();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v269 = &v228 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v268 = &v228 - v74;
  MEMORY[0x28223BE20](v75);
  v293 = &v228 - v76;
  MEMORY[0x28223BE20](v77);
  v291 = &v228 - v78;
  v79 = sub_22B35E37C();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v82 = &v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v301 = &v228 - v84;
  v86 = MEMORY[0x28223BE20](v85);
  v88 = &v228 - v87;
  v89 = *(a2 + 16);
  v244 = a8;
  v282 = a1;
  v296 = v11;
  if (v89)
  {
    v91 = *(v80 + 16);
    v90 = v80 + 16;
    v307 = v91;
    v299 = (*(v90 + 64) + 32) & ~*(v90 + 64);
    v92 = a2 + v299;
    v93 = *(v90 + 56);
    v302 = (v90 + 16);
    v304 = (v90 - 8);
    v303 = MEMORY[0x277D84F90];
    v94 = a2 + v299;
    v95 = v89;
    v305 = v93;
    v306 = v90;
    v300 = v82;
    (v91)(v88, a2 + v299, v79, v86);
    while (1)
    {
      v97 = *(sub_22B35E35C() + 16);

      if (v97)
      {
        v98 = *v302;
        (*v302)(v82, v88, v79);
        v99 = v303;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v308 = v99;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B355744(0, *(v99 + 2) + 1, 1);
          v99 = v308;
        }

        v102 = *(v99 + 2);
        v101 = *(v99 + 3);
        if (v102 >= v101 >> 1)
        {
          sub_22B355744((v101 > 1), v102 + 1, 1);
          v99 = v308;
        }

        *(v99 + 2) = v102 + 1;
        v303 = v99;
        v93 = v305;
        v103 = &v99[v299 + v102 * v305];
        v82 = v300;
        v98(v103, v300, v79);
      }

      else
      {
        (*v304)(v88, v79);
      }

      v94 += v93;
      if (!--v95)
      {
        break;
      }

      (v307)(v88, v94, v79, v96);
    }

    v104 = MEMORY[0x277D84F90];
    a1 = v282;
    v11 = v296;
    while (1)
    {
      v105 = v301;
      (v307)(v301, v92, v79);
      v106 = sub_22B35E34C();
      (*v304)(v105, v79);
      v107 = *(v106 + 16);
      v108 = v104[2];
      v109 = v108 + v107;
      if (__OFADD__(v108, v107))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v110 = swift_isUniquelyReferenced_nonNull_native();
      if (v110 && v109 <= v104[3] >> 1)
      {
        if (*(v106 + 16))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v108 <= v109)
        {
          v111 = v108 + v107;
        }

        else
        {
          v111 = v108;
        }

        v104 = sub_22B32D46C(v110, v111, 1, v104);
        if (*(v106 + 16))
        {
LABEL_24:
          v112 = (v104[3] >> 1) - v104[2];
          sub_22B35E3DC();
          if (v112 < v107)
          {
            goto LABEL_58;
          }

          swift_arrayInitWithCopy();

          if (v107)
          {
            v113 = v104[2];
            v114 = __OFADD__(v113, v107);
            v115 = v113 + v107;
            if (v114)
            {
              goto LABEL_59;
            }

            v104[2] = v115;
          }

          goto LABEL_14;
        }
      }

      if (v107)
      {
        goto LABEL_57;
      }

LABEL_14:
      v92 += v305;
      if (!--v89)
      {
        goto LABEL_29;
      }
    }
  }

  v104 = MEMORY[0x277D84F90];
  v303 = MEMORY[0x277D84F90];
LABEL_29:
  v116 = MEMORY[0x23188EEB0](v86);
  v117 = type metadata accessor for SessionHalfHourlySummary(0);
  v118 = v117[9];
  sub_22B35DD3C();
  v120 = v281;
  if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v119 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v119 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_22B35E4CC();
  v307 = v117[10];
  sub_22B35DD3C();
  if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v121 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v121 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v261 = v116;
  v306 = v118;
  sub_22B35E4CC();
  v299 = *(a1 + v117[17]);
  sub_22B35E4CC();
  v122 = sub_22B35E9EC();
  sub_22B1FE510(&qword_27D8BA7E8, 255, MEMORY[0x277D175B8], MEMORY[0x277D175B0]);
  v123 = v275;
  sub_22B35E7FC();
  v124 = *(*(v122 - 8) + 48);
  if (v124(v123, 1, v122) == 1)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v125 = v11;
  v126 = v260;
  sub_22B35E7FC();
  if (v124(v126, 1, v122) != 1)
  {
    sub_22B35E52C();
    v127 = v282;
    v128 = v306;
    v129 = v307;
    sub_22B2000B4(v282 + v306, &v307[v282], v303, v259, v130);
    v305 = v131;

    v132 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v133 = v267;
    v134 = sub_22B36076C();
    v135 = v280;
    if (v134)
    {
      v260 = v117;
      v302 = v132;
      v136 = *(v125 + 16);
      v137 = v127 + v128;
      v138 = v120;
      (v136)(v120, v137, v133);
      v139 = v120 + *(v135 + 48);
      v303 = v136;
      v304 = (v125 + 16);
      (v136)(v139, &v129[v127], v133);
      v140 = v266;
      sub_22B170BE0(v120, v266, &qword_27D8BA7D0, &qword_22B365A48);
      v275 = *(v135 + 48);
      v141 = (v296 + 32);
      v142 = *(v296 + 32);
      v143 = v279;
      v142(v279, v140, v133);
      v144 = *(v296 + 8);
      v296 += 8;
      v144(&v275[v140], v133);
      v145 = v138;
      v146 = v306;
      sub_22B170CD0(v145, v140, &qword_27D8BA7D0, &qword_22B365A48);
      v147 = v143 + *(v278 + 36);
      v148 = v140 + *(v135 + 48);
      v301 = v142;
      v142(v147, v148, v133);
      v300 = v144;
      v144(v140, v133);
      sub_22B1E3CC4(v293, v305, v143, v104, v288);
      sub_22B123284(v143, &qword_27D8BA768, &qword_22B365A10);
      v149 = v307;
      if (sub_22B36076C())
      {
        v150 = v281;
        v151 = v303;
        (v303)(v281, v127 + v146, v133);
        v152 = v280;
        (v151)(v150 + *(v280 + 48), &v149[v127], v133);
        sub_22B170BE0(v150, v140, &qword_27D8BA7D0, &qword_22B365A48);
        v153 = v141;
        v154 = *(v152 + 48);
        v155 = v279;
        v156 = v301;
        (v301)(v279, v140, v133);
        v157 = v140 + v154;
        v158 = v300;
        (v300)(v157, v133);
        sub_22B170CD0(v150, v140, &qword_27D8BA7D0, &qword_22B365A48);
        v159 = v155 + *(v278 + 36);
        v160 = v140 + *(v152 + 48);
        v259 = v153;
        v156(v159, v160, v133);
        v158(v140, v133);
        sub_22B1E02CC(v299, v305, v155, v104, v287);

        sub_22B123284(v155, &qword_27D8BA768, &qword_22B365A10);
        v161 = *(v285 + 56);
        v162 = v286;
        v161(v245, 1, 1, v286);
        v161(v246, 1, 1, v162);
        v161(v247, 1, 1, v162);
        v161(v248, 1, 1, v162);
        v161(v249, 1, 1, v162);
        v161(v250, 1, 1, v162);
        v163 = MEMORY[0x277D17508];
        sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508], MEMORY[0x277D17520]);
        sub_22B1FE510(&qword_27D8BA7A8, 255, v163, MEMORY[0x277D17510]);
        sub_22B1FE510(&qword_27D8BA7B0, 255, v163, MEMORY[0x277D17518]);
        sub_22B35E48C();
        v164 = v283[7];
        v165 = v284;
        v164(v251, 1, 1, v284);
        v164(v252, 1, 1, v165);
        v164(v253, 1, 1, v165);
        v164(v254, 1, 1, v165);
        v164(v255, 1, 1, v165);
        v164(v256, 1, 1, v165);
        v166 = MEMORY[0x277D17570];
        sub_22B1FE510(&qword_27D8BA770, 255, MEMORY[0x277D17570], MEMORY[0x277D17588]);
        sub_22B1FE510(&qword_27D8BA778, 255, v166, MEMORY[0x277D17578]);
        sub_22B1FE510(&qword_27D8BA780, 255, v166, MEMORY[0x277D17580]);
        v167 = v277;
        sub_22B35E48C();
        v168 = v257;
        sub_22B170BE0(v258, v257, &unk_27D8BA080, &unk_22B364280);
        v169 = v264;
        v170 = v265;
        if ((*(v264 + 48))(v168, 1, v265) == 1)
        {
          sub_22B123284(v168, &unk_27D8BA080, &unk_22B364280);
          v171 = v274;
          v172 = v243;
          v173 = v242;
LABEL_55:
          v220 = v283[2];
          v221 = v284;
          v220(v268, v291, v284);
          (*(v285 + 16))(v270, v290, v286);
          v220(v269, v293, v221);
          v222 = v263;
          (*(v263 + 16))(v262, v292, v276);
          (*(v172 + 16))(v173, v167, v171);
          v223 = v241;
          (*(v241 + 16))(v240, v287, v273);
          v224 = v239;
          (*(v239 + 16))(v238, v288, v272);
          v225 = v237;
          (*(v237 + 16))(v236, v289, v271);
          sub_22B35E5FC();
          (*(v172 + 8))(v277, v274);
          (*(v222 + 8))(v292, v276);
          (*(v223 + 8))(v287, v273);
          (*(v224 + 8))(v288, v272);
          (*(v225 + 8))(v289, v271);
          (*(v285 + 8))(v290, v286);
          v226 = v283[1];
          v227 = v284;
          v226(v293, v284);
          v226(v291, v227);
          objc_autoreleasePoolPop(v261);
          return;
        }

        v174 = v167;
        v175 = v295;
        (*(v169 + 32))(v295, v168, v170);
        v176 = *(v235 + 16);
        if (!v176)
        {
          (*(v169 + 8))(v175, v170);
          v171 = v274;
          v172 = v243;
          v173 = v242;
          v167 = v174;
          goto LABEL_55;
        }

        v177 = (*(v228 + 80) + 32) & ~*(v228 + 80);
        v178 = *(v228 + 72);
        v179 = v235 + v177;
        v180 = MEMORY[0x277D84F90];
        v181 = v294;
        v182 = v281;
        do
        {
          sub_22B201F74(v179, v181, type metadata accessor for CDTOUPeak);
          if (*(*(v181 + *(v297 + 28)) + 16))
          {
            sub_22B20203C(v181, v298, type metadata accessor for CDTOUPeak);
            v183 = swift_isUniquelyReferenced_nonNull_native();
            v308 = v180;
            if ((v183 & 1) == 0)
            {
              sub_22B355788(0, *(v180 + 2) + 1, 1);
              v180 = v308;
            }

            v185 = *(v180 + 2);
            v184 = *(v180 + 3);
            if (v185 >= v184 >> 1)
            {
              sub_22B355788((v184 > 1), v185 + 1, 1);
              v180 = v308;
            }

            *(v180 + 2) = v185 + 1;
            sub_22B20203C(v298, &v180[v177 + v185 * v178], type metadata accessor for CDTOUPeak);
            v181 = v294;
            v175 = v295;
          }

          else
          {
            sub_22B201FDC(v181, type metadata accessor for CDTOUPeak);
          }

          v179 += v178;
          --v176;
        }

        while (v176);
        v186 = v282;
        v187 = v306;
        v188 = v267;
        v189 = v303;
        (v303)(v230, v282 + v306, v267);
        v190 = v307;
        (v189)(v232, &v307[v186], v188);
        v191 = v229;
        sub_22B35D88C();
        v305 = sub_22B200620(v191, v180, v175, v234);

        (*(v231 + 8))(v191, v233);
        if (sub_22B36076C())
        {
          v192 = v303;
          (v303)(v182, v186 + v187, v188);
          v193 = v280;
          (v192)(v182 + *(v280 + 48), &v190[v186], v188);
          v194 = v186;
          v195 = v266;
          sub_22B170BE0(v182, v266, &qword_27D8BA7D0, &qword_22B365A48);
          v196 = *(v193 + 48);
          v197 = v279;
          v198 = v301;
          (v301)(v279, v195, v188);
          v199 = v300;
          (v300)(v195 + v196, v188);
          v200 = v182;
          v201 = v295;
          sub_22B170CD0(v200, v195, &qword_27D8BA7D0, &qword_22B365A48);
          v198(v197 + *(v278 + 36), v195 + *(v193 + 48), v188);
          v199(v195, v188);
          v202 = v262;
          v203 = v201;
          sub_22B1DD9F8(v299, v305, v197, v201, v262);
          sub_22B123284(v197, &qword_27D8BA768, &qword_22B365A10);
          v204 = v263;
          v205 = v292;
          v206 = v276;
          (*(v263 + 8))(v292, v276);
          v207 = v205;
          v208 = v202;
          v209 = v306;
          v210 = v307;
          (*(v204 + 32))(v207, v208, v206);
          if (sub_22B36076C())
          {
            v211 = v194 + v209;
            v212 = v281;
            v213 = v303;
            (v303)(v281, v211, v188);
            v214 = v280;
            (v213)(v212 + *(v280 + 48), &v210[v194], v188);
            v215 = v203;
            sub_22B170BE0(v212, v195, &qword_27D8BA7D0, &qword_22B365A48);
            v216 = *(v214 + 48);
            v217 = v279;
            v218 = v301;
            (v301)(v279, v195, v188);
            v219 = v300;
            (v300)(v195 + v216, v188);
            sub_22B170CD0(v212, v195, &qword_27D8BA7D0, &qword_22B365A48);
            v218(v217 + *(v278 + 36), v195 + *(v214 + 48), v188);
            v219(v195, v188);
            v173 = v242;
            sub_22B1E1858(v293, v305, v217, v215, v242);

            sub_22B123284(v217, &qword_27D8BA768, &qword_22B365A10);
            (*(v264 + 8))(v215, v265);
            v172 = v243;
            v167 = v277;
            v171 = v274;
            (*(v243 + 8))(v277, v274);
            (*(v172 + 32))(v167, v173, v171);
            goto LABEL_55;
          }

          goto LABEL_69;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_22B1DD90C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B35D8BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23188BB60](v4);
  v7 = sub_22B35D83C();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_22B1DD9F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v334 = a4;
  v311 = a3;
  v335 = a2;
  v337 = a1;
  v281 = a5;
  v5 = sub_22B35E4BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v272 = &v265 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v287 = &v265 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v10 - 8);
  v298 = &v265 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v306 = &v265 - v13;
  v14 = sub_22B35DDBC();
  v332 = *(v14 - 8);
  v333 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v265 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v321 = &v265 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v19 - 8);
  v297 = &v265 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v304 = &v265 - v22;
  v318 = sub_22B35FF8C();
  v320 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v296 = &v265 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v317 = &v265 - v25;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA788, &qword_22B365A18);
  v331 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v314 = (&v265 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA790, &qword_22B365A20);
  MEMORY[0x28223BE20](v27 - 8);
  v328 = &v265 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v265 - v30);
  v336 = sub_22B35DE9C();
  v310 = *(v336 - 8);
  MEMORY[0x28223BE20](v336);
  v282 = &v265 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v312 = &v265 - v34;
  MEMORY[0x28223BE20](v35);
  v324 = &v265 - v36;
  MEMORY[0x28223BE20](v37);
  v301 = &v265 - v38;
  MEMORY[0x28223BE20](v39);
  v300 = &v265 - v40;
  v303 = sub_22B35D8BC();
  v299 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v293 = &v265 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v305 = &v265 - v43;
  MEMORY[0x28223BE20](v44);
  v302 = &v265 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x28223BE20](v46 - 8);
  v280 = &v265 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v279 = &v265 - v49;
  MEMORY[0x28223BE20](v50);
  v278 = &v265 - v51;
  MEMORY[0x28223BE20](v52);
  v277 = &v265 - v53;
  MEMORY[0x28223BE20](v54);
  v286 = &v265 - v55;
  MEMORY[0x28223BE20](v56);
  v271 = &v265 - v57;
  MEMORY[0x28223BE20](v58);
  v270 = &v265 - v59;
  MEMORY[0x28223BE20](v60);
  v269 = &v265 - v61;
  MEMORY[0x28223BE20](v62);
  v268 = &v265 - v63;
  MEMORY[0x28223BE20](v64);
  v267 = &v265 - v65;
  MEMORY[0x28223BE20](v66);
  v266 = &v265 - v67;
  MEMORY[0x28223BE20](v68);
  v276 = &v265 - v69;
  MEMORY[0x28223BE20](v70);
  v72 = &v265 - v71;
  MEMORY[0x28223BE20](v73);
  v75 = &v265 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = &v265 - v77;
  MEMORY[0x28223BE20](v79);
  v81 = &v265 - v80;
  MEMORY[0x28223BE20](v82);
  v84 = &v265 - v83;
  v86 = MEMORY[0x28223BE20](v85);
  v307 = v6;
  v89 = *(v6 + 56);
  v88 = v6 + 56;
  v87 = v89;
  v288 = &v265 - v90;
  v89(v86);
  v289 = v84;
  (v89)(v84, 1, 1, v5);
  v290 = v81;
  (v89)(v81, 1, 1, v5);
  v291 = v78;
  v91 = v78;
  v92 = v5;
  (v89)(v91, 1, 1, v5);
  v292 = v75;
  v93 = v75;
  v94 = v335;
  (v89)(v93, 1, 1, v5);
  (v89)(v72, 1, 1, v5);
  v95 = v94[2];
  v294 = v5;
  v285 = v72;
  if (!v95)
  {
    v258 = v276;
    sub_22B35E4CC();
    (v87)(v258, 0, 1, v92);
    sub_22B12F2C4(v258, v72, &qword_27D8BA798, &qword_22B365A28);
    v257 = v72;
LABEL_72:
    sub_22B170BE0(v288, v258, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v289, v286, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v290, v277, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v291, v278, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v292, v279, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v257, v280, &qword_27D8BA798, &qword_22B365A28);
    v259 = MEMORY[0x277D17508];
    sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508], MEMORY[0x277D17520]);
    v260 = sub_22B1FE510(&qword_27D8BA7A8, 255, v259, MEMORY[0x277D17510]);
    v261 = sub_22B1FE510(&qword_27D8BA7B0, 255, v259, MEMORY[0x277D17518]);
    v263 = v260;
    v264 = v261;
    sub_22B35E48C();
    sub_22B123284(v285, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v292, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v291, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v290, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v289, &qword_27D8BA798, &qword_22B365A28);
    return sub_22B123284(v288, &qword_27D8BA798, &qword_22B365A28);
  }

  v96 = v337;
  v273 = v87;
  v274 = v88;
  v97 = v310;
  v98 = v310 + 16;
  v99 = *(v310 + 16);
  v100 = v311;
  v101 = v336;
  v99(v300, v311, v336);
  v308 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10) + 36);
  v316 = v98;
  v315 = v99;
  v99(v301, v100 + v308, v101);
  sub_22B35D88C();
  v102 = sub_22B35D8AC();
  v104 = v103;
  MEMORY[0x28223BE20](v102);
  v263 = v334;
  v338 = v94;

  v105 = 0;
  sub_22B21AEB4(sub_22B201F34, (&v265 - 4));
  v106 = 0;
  v329 = v338;
  v107 = v338[2];
  v319 = v320 + 16;
  v325 = (v331 + 6);
  v326 = v331 + 7;
  v323 = (v320 + 32);
  v330 = (v320 + 8);
  v331 = (v97 + 56);
  ++v332;
  v313 = (v97 + 32);
  v310 = v97 + 8;
  v295 = (v299 + 6);
  v284 = (v299 + 4);
  ++v299;
  v108 = v96;
  v283 = (v307 + 48);
  v265 = (v307 + 16);
  v275 = (v307 + 8);
  v109 = v321;
  v110 = v304;
  v111 = v318;
  v112 = v317;
  v113 = v327;
  v114 = v328;
  v335 = v31;
  v309 = v16;
  v322 = v107;
  while (v106 == v107)
  {
    v115 = 1;
    v337 = v107;
LABEL_9:
    (*v326)(v114, v115, 1, v113);
    sub_22B170CD0(v114, v31, &qword_27D8BA790, &qword_22B365A20);
    if ((*v325)(v31, 1, v113) == 1)
    {
      (*v299)(v302, v303);

      v257 = v285;
      v258 = v276;
      goto LABEL_72;
    }

    v122 = v113;
    v123 = v16;
    v124 = *v31;
    (*v323)(v112, v31 + *(v122 + 48), v111);
    sub_22B35F55C();
    sub_22B35FF7C();
    sub_22B35DD9C();
    if (v105)
    {

      (*v332)(v109, v333);
      (*v330)(v112, v111);
      (*v331)(v110, 1, 1, v336);
      sub_22B123284(v110, &qword_27D8BA340, &qword_22B363FB0);
      v105 = 0;
      v16 = v123;
      v113 = v327;
      v114 = v328;
      v31 = v335;
      v107 = v322;
      v106 = v337;
    }

    else
    {
      v125 = *v332;
      (*v332)(v109, v333);

      v126 = *v331;
      v127 = v336;
      (*v331)(v110, 0, 1, v336);
      v128 = *v313;
      (*v313)(v324, v110, v127);
      v129 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_75;
      }

      if (v129 >= v329[2])
      {
        v134 = v312;
        v315(v312, v311 + v308, v127);
        v111 = v318;
      }

      else
      {
        sub_22B35F55C();
        v130 = v318;
        if ((v129 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (v129 >= v329[2])
        {
          goto LABEL_77;
        }

        v131 = v320;
        v132 = v296;
        (*(v320 + 16))(v296, v329 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v129, v318);
        sub_22B35FF7C();
        (*(v131 + 8))(v132, v130);
        v133 = v297;
        sub_22B35DD9C();
        v125(v123, v333);

        v135 = v336;
        v126(v133, 0, 1, v336);
        v136 = v282;
        v128(v282, v133, v135);
        if ((sub_22B35DDEC() & 1) == 0)
        {
          (*v310)(v136, v135);
          v110 = v304;
          v141 = v135;
          v111 = v318;
          v112 = v317;
          v134 = v312;
          v315(v312, v311 + v308, v141);
          goto LABEL_22;
        }

        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v137 = v311;
        v138 = v308;
        v139 = sub_22B36074C();
        v110 = v304;
        v111 = v318;
        if (v139)
        {
          (*v310)(v136, v135);
          v140 = v137 + v138;
          v134 = v312;
          v315(v312, v140, v135);
        }

        else
        {
          v134 = v312;
          v128(v312, v136, v135);
        }
      }

      v112 = v317;
LABEL_22:
      v31 = v335;
      v142 = v324;
      if (sub_22B35DDEC())
      {
        v307 = 0;
        v143 = v336;
        v144 = v315;
        v315(v300, v142, v336);
        v144(v301, v134, v143);
        v145 = v305;
        v146 = v306;
        sub_22B35D88C();
        sub_22B35D84C();
        v147 = v298;
        sub_22B170BE0(v146, v298, &qword_27D8BA3E8, &unk_22B364790);
        v148 = v303;
        if ((*v295)(v147, 1, v303) == 1)
        {
          sub_22B123284(v146, &qword_27D8BA3E8, &unk_22B364790);
          (*v299)(v145, v148);
          v149 = v134;
          v150 = *v310;
          (*v310)(v149, v143);
          v150(v324, v143);
          v112 = v317;
          (*v330)(v317, v111);
          sub_22B123284(v147, &qword_27D8BA3E8, &unk_22B364790);
          goto LABEL_37;
        }

        v154 = v293;
        (*v284)(v293, v147, v148);
        v155 = v148;
        sub_22B35D8AC();
        if (v156 <= 0.0)
        {
          v166 = v134;
          v167 = *v299;
          (*v299)(v154, v155);
          sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
          v167(v305, v155);
          v168 = *v310;
          v169 = v166;
          v170 = v336;
          (*v310)(v169, v336);
          v168(v324, v170);
          v112 = v317;
          (*v330)(v317, v111);
LABEL_37:
          v109 = v321;
          v107 = v322;
          v16 = v309;
          v113 = v327;
          v114 = v328;
          v106 = v337;
          v105 = v307;
        }

        else
        {
          sub_22B35D8AC();
          v158 = v157 / v104 * v108;
          v105 = v324;
          v16 = v309;
          v107 = v322;
          if ((*&v158 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_78;
          }

          if (v158 <= -9.22337204e18)
          {
            goto LABEL_79;
          }

          if (v158 >= 9.22337204e18)
          {
            goto LABEL_80;
          }

          sub_22B35E4CC();
          v159 = sub_22B35FF5C();
          v160 = *v283;
          if (v159 <= 1)
          {
            v114 = v328;
            if (!v159)
            {
              v181 = v288;
              v182 = v294;
              v183 = v160(v288, 1, v294);
              v184 = v287;
              if (v183)
              {
                v185 = 0;
              }

              else
              {
                v213 = v272;
                (*v265)(v272, v181, v182);
                v185 = sub_22B35E42C();
                v214 = v213;
                v184 = v287;
                (*v275)(v214, v182);
              }

              if (__OFADD__(v185, sub_22B35E42C()))
              {
                goto LABEL_86;
              }

              v215 = v266;
              sub_22B35E4CC();
              v216 = v184;
              v217 = v294;
              (*v275)(v216, v294);
              v218 = *v299;
              v219 = v303;
              (*v299)(v293, v303);
              sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
              v218(v305, v219);
              v220 = *v310;
              v221 = v336;
              (*v310)(v312, v336);
              v220(v105, v221);
              v222 = v317;
              v111 = v318;
              (*v330)(v317, v318);
              v223 = v217;
              v112 = v222;
              (v273)(v215, 0, 1, v223);
              v200 = v215;
              v201 = &v320;
              goto LABEL_69;
            }

            v162 = v287;
            if (v159 != 1)
            {
              goto LABEL_49;
            }

            v171 = v289;
            v172 = v294;
            if (v160(v289, 1, v294))
            {
              v173 = 0;
            }

            else
            {
              v235 = v272;
              (*v265)(v272, v171, v172);
              v173 = sub_22B35E42C();
              v236 = v235;
              v162 = v287;
              (*v275)(v236, v172);
            }

            if (__OFADD__(v173, sub_22B35E42C()))
            {
              goto LABEL_82;
            }

            v237 = v267;
            sub_22B35E4CC();
            v238 = v162;
            v239 = v294;
            (*v275)(v238, v294);
            v240 = *v299;
            v241 = v303;
            (*v299)(v293, v303);
            sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
            v240(v305, v241);
            v242 = *v310;
            v243 = v336;
            (*v310)(v312, v336);
            v242(v105, v243);
            v244 = v317;
            v111 = v318;
            (*v330)(v317, v318);
            v245 = v239;
            v112 = v244;
            (v273)(v237, 0, 1, v245);
            v200 = v237;
            v201 = &v321;
          }

          else
          {
            v161 = v291;
            v114 = v328;
            if (v159 == 2)
            {
              v174 = v290;
              v175 = v294;
              v176 = v160(v290, 1, v294);
              v177 = v287;
              if (v176)
              {
                v178 = 0;
              }

              else
              {
                v189 = v272;
                (*v265)(v272, v174, v175);
                v178 = sub_22B35E42C();
                v190 = v189;
                v177 = v287;
                (*v275)(v190, v175);
              }

              if (__OFADD__(v178, sub_22B35E42C()))
              {
                goto LABEL_81;
              }

              v191 = v268;
              sub_22B35E4CC();
              v192 = v177;
              v193 = v294;
              (*v275)(v192, v294);
              v194 = *v299;
              v195 = v303;
              (*v299)(v293, v303);
              sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
              v194(v305, v195);
              v196 = *v310;
              v197 = v336;
              (*v310)(v312, v336);
              v196(v105, v197);
              v198 = v317;
              v111 = v318;
              (*v330)(v317, v318);
              v199 = v193;
              v112 = v198;
              (v273)(v191, 0, 1, v199);
              v200 = v191;
              v201 = &v322;
            }

            else
            {
              v162 = v287;
              if (v159 != 3)
              {
                if (v159 == 4)
                {
                  v163 = v292;
                  v164 = v294;
                  if (v160(v292, 1, v294))
                  {
                    v165 = 0;
                  }

                  else
                  {
                    v224 = v272;
                    (*v265)(v272, v163, v164);
                    v165 = sub_22B35E42C();
                    v225 = v224;
                    v162 = v287;
                    (*v275)(v225, v164);
                  }

                  if (__OFADD__(v165, sub_22B35E42C()))
                  {
                    goto LABEL_85;
                  }

                  v226 = v270;
                  sub_22B35E4CC();
                  v227 = v162;
                  v228 = v294;
                  (*v275)(v227, v294);
                  v229 = *v299;
                  v230 = v303;
                  (*v299)(v293, v303);
                  sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
                  v229(v305, v230);
                  v231 = *v310;
                  v232 = v336;
                  (*v310)(v312, v336);
                  v231(v105, v232);
                  v233 = v317;
                  v111 = v318;
                  (*v330)(v317, v318);
                  v234 = v228;
                  v112 = v233;
                  (v273)(v226, 0, 1, v234);
                  v200 = v226;
                  v201 = &v324;
                  goto LABEL_69;
                }

LABEL_49:
                v186 = v285;
                v187 = v294;
                if (v160(v285, 1, v294))
                {
                  v188 = 0;
                }

                else
                {
                  v246 = v272;
                  (*v265)(v272, v186, v187);
                  v188 = sub_22B35E42C();
                  v247 = v246;
                  v162 = v287;
                  (*v275)(v247, v187);
                }

                if (__OFADD__(v188, sub_22B35E42C()))
                {
                  goto LABEL_84;
                }

                v248 = v271;
                sub_22B35E4CC();
                v249 = v162;
                v250 = v294;
                (*v275)(v249, v294);
                v251 = *v299;
                v252 = v303;
                (*v299)(v293, v303);
                sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
                v251(v305, v252);
                v253 = *v310;
                v254 = v336;
                (*v310)(v312, v336);
                v253(v105, v254);
                v255 = v317;
                v111 = v318;
                (*v330)(v317, v318);
                v256 = v250;
                v112 = v255;
                (v273)(v248, 0, 1, v256);
                v200 = v248;
                v201 = &v317;
                goto LABEL_69;
              }

              v179 = v294;
              if (v160(v291, 1, v294))
              {
                v180 = 0;
              }

              else
              {
                v202 = v272;
                (*v265)(v272, v161, v179);
                v180 = sub_22B35E42C();
                v203 = v202;
                v162 = v287;
                (*v275)(v203, v179);
              }

              if (__OFADD__(v180, sub_22B35E42C()))
              {
                goto LABEL_83;
              }

              v204 = v269;
              sub_22B35E4CC();
              v205 = v162;
              v206 = v294;
              (*v275)(v205, v294);
              v207 = *v299;
              v208 = v303;
              (*v299)(v293, v303);
              sub_22B123284(v306, &qword_27D8BA3E8, &unk_22B364790);
              v207(v305, v208);
              v209 = *v310;
              v210 = v336;
              (*v310)(v312, v336);
              v209(v105, v210);
              v211 = v317;
              v111 = v318;
              (*v330)(v317, v318);
              v212 = v206;
              v112 = v211;
              (v273)(v204, 0, 1, v212);
              v200 = v204;
              v201 = &v323;
            }
          }

LABEL_69:
          sub_22B12F2C4(v200, *(v201 - 32), &qword_27D8BA798, &qword_22B365A28);
          v109 = v321;
          v110 = v304;
          v113 = v327;
          v106 = v337;
          v105 = v307;
        }
      }

      else
      {
        v151 = v134;
        v152 = *v310;
        v153 = v336;
        (*v310)(v151, v336);
        v152(v142, v153);
        (*v330)(v112, v111);
        v109 = v321;
        v107 = v322;
        v16 = v309;
        v113 = v327;
        v114 = v328;
        v106 = v337;
      }
    }
  }

  if ((v106 & 0x8000000000000000) == 0)
  {
    if (v106 >= v329[2])
    {
      goto LABEL_74;
    }

    v116 = v106 + 1;
    v117 = v320;
    v118 = v329 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v106;
    v119 = *(v113 + 48);
    v120 = v314;
    *v314 = v106;
    (*(v117 + 16))(v120 + v119, v118, v111);
    v121 = v120;
    v31 = v335;
    sub_22B170CD0(v121, v114, &qword_27D8BA788, &qword_22B365A18);
    v115 = 0;
    v337 = v116;
    v109 = v321;
    goto LABEL_9;
  }

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
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22B1DFE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v38 = sub_22B35DDBC();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_22B35DE9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v33 = a3;
  sub_22B35F55C();
  sub_22B35FF7C();
  v21 = v37;
  sub_22B35DD9C();
  if (v21)
  {

    (*(v4 + 8))(v8, v38);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  else
  {
    v30 = v17;
    v31 = 0;
    v32 = *(v4 + 8);
    v32(v8, v38);

    v37 = *(v15 + 56);
    v37(v13, 0, 1, v14);
    v29 = *(v15 + 32);
    v29(v20, v13, v14);
    sub_22B35F55C();
    sub_22B35FF7C();
    v13 = v35;
    v22 = v31;
    sub_22B35DD9C();
    v23 = (v15 + 8);
    if (!v22)
    {
      v32(v36, v38);

      v37(v13, 0, 1, v14);
      v26 = v30;
      v29(v30, v13, v14);
      v24 = sub_22B35DDFC();
      v27 = *v23;
      (*v23)(v26, v14);
      v27(v20, v14);
      return v24 & 1;
    }

    v32(v36, v38);
    v37(v13, 1, 1, v14);
    (*v23)(v20, v14);
  }

  sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
  v24 = 0;
  return v24 & 1;
}

void sub_22B1E02CC(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v192 = a4;
  v215 = a3;
  v206 = a1;
  v173 = a5;
  v183 = sub_22B35EE8C();
  v205 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_22B35E3DC();
  v199 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v195 = v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA758, &qword_22B365A00);
  MEMORY[0x28223BE20](v8 - 8);
  v191 = v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v202 = v169 - v11;
  v12 = sub_22B35E4BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v175 = v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v197 = v169 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v214 = v169 - v21;
  v210 = sub_22B35E24C();
  v212 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v23 = v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22B35DE9C();
  v207 = *(v24 - 8);
  v208 = v24;
  MEMORY[0x28223BE20](v24);
  v200 = v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v189 = (v169 - v27);
  v213 = sub_22B35D8BC();
  v201 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v204 = v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v209 = v169 - v30;
  MEMORY[0x28223BE20](v31);
  v211 = v169 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA798, &qword_22B365A28);
  MEMORY[0x28223BE20](v33 - 8);
  v172 = v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v171 = v169 - v36;
  MEMORY[0x28223BE20](v37);
  v170 = v169 - v38;
  MEMORY[0x28223BE20](v39);
  v181 = v169 - v40;
  MEMORY[0x28223BE20](v41);
  v169[5] = v169 - v42;
  MEMORY[0x28223BE20](v43);
  v169[4] = v169 - v44;
  MEMORY[0x28223BE20](v45);
  v169[2] = v169 - v46;
  MEMORY[0x28223BE20](v47);
  v169[1] = v169 - v48;
  MEMORY[0x28223BE20](v49);
  v169[3] = v169 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = v169 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = v169 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = v169 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = v169 - v61;
  v64 = MEMORY[0x28223BE20](v63);
  v196 = v13;
  v67 = *(v13 + 56);
  v65 = v13 + 56;
  v66 = v67;
  v193 = v169 - v68;
  v67(v64);
  v184 = v62;
  (v67)(v62, 1, 1, v12);
  v185 = v59;
  (v67)(v59, 1, 1, v12);
  (v67)(v56, 1, 1, v12);
  v69 = *(a2 + 16);
  v203 = v12;
  if (!v69)
  {
    sub_22B35E4CC();
    (v66)(v53, 0, 1, v12);
    sub_22B12F2C4(v53, v56, &qword_27D8BA798, &qword_22B365A28);
    v167 = v53;
    v166 = v56;
LABEL_53:
    sub_22B170BE0(v193, v167, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v184, v170, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v185, v171, &qword_27D8BA798, &qword_22B365A28);
    sub_22B170BE0(v166, v172, &qword_27D8BA798, &qword_22B365A28);
    v168 = MEMORY[0x277D17508];
    sub_22B1FE510(&qword_27D8BA7A0, 255, MEMORY[0x277D17508], MEMORY[0x277D17520]);
    sub_22B1FE510(&qword_27D8BA7A8, 255, v168, MEMORY[0x277D17510]);
    sub_22B1FE510(&qword_27D8BA7B0, 255, v168, MEMORY[0x277D17518]);
    sub_22B35E4EC();
    sub_22B123284(v166, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v185, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v184, &qword_27D8BA798, &qword_22B365A28);
    sub_22B123284(v193, &qword_27D8BA798, &qword_22B365A28);
    return;
  }

  v186 = v66;
  v187 = v65;
  v169[0] = v53;
  v194 = v56;
  v70 = v208;
  v71 = v207[2];
  v72 = v215;
  v71(v189, v215, v208);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA768, &qword_22B365A10);
  v71(v200, v72 + *(v73 + 36), v70);
  sub_22B35D88C();
  sub_22B35D8AC();
  v75 = v74;
  v76 = *(v212 + 16);
  v77 = a2 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
  v215 = (v201 + 1);
  v207 = (v201 + 6);
  v208 = v76;
  v200 = 0;
  v201 += 4;
  v78 = v206;
  v188 = (v199 + 48);
  v180 = (v199 + 32);
  v206 = *(v212 + 72);
  v179 = (v205 + 13);
  v178 = v205 + 1;
  v177 = *MEMORY[0x277D07380];
  v189 = (v196 + 6);
  v174 = (v196 + 2);
  ++v196;
  v176 = (v199 + 8);
  v205 = (v212 + 8);
  v190 = v19;
  v212 += 16;
  for (i = v76(v23, v77, v210); ; i = v208(v23, v77, v81))
  {
    v82 = v209;
    MEMORY[0x23188BB60](i);
    v83 = v214;
    sub_22B35D84C();
    v84 = v83;
    v85 = *v215;
    v86 = v82;
    v87 = v213;
    (*v215)(v86, v213);
    sub_22B170BE0(v84, v19, &qword_27D8BA3E8, &unk_22B364790);
    if ((*v207)(v19, 1, v87) == 1)
    {
      sub_22B123284(v84, &qword_27D8BA3E8, &unk_22B364790);
      v80 = v19;
LABEL_4:
      sub_22B123284(v80, &qword_27D8BA3E8, &unk_22B364790);
      goto LABEL_5;
    }

    v88 = v204;
    (*v201)(v204, v19, v87);
    sub_22B35D8AC();
    if (v89 <= 0.0)
    {
      v85(v88, v87);
      v80 = v214;
      goto LABEL_4;
    }

    sub_22B35D8AC();
    v91 = v90 / v75 * v78;
    if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v91 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v91 >= 9.22337204e18)
    {
      goto LABEL_56;
    }

    v92 = v88;
    v199 = v85;
    v93 = v197;
    v94 = sub_22B35E4CC();
    MEMORY[0x28223BE20](v94);
    v169[-2] = v23;
    v95 = v202;
    v96 = v200;
    sub_22B1D8794(sub_22B201F14, v192, v202);
    v200 = v96;
    v97 = v191;
    sub_22B170BE0(v95, v191, &qword_27D8BA758, &qword_22B365A00);
    v98 = v198;
    if ((*v188)(v97, 1, v198) == 1)
    {
      sub_22B123284(v97, &qword_27D8BA758, &qword_22B365A00);
      v99 = v194;
      v100 = v203;
      if ((*v189)(v194, 1, v203))
      {
        v101 = 0;
      }

      else
      {
        v120 = v175;
        (*v174)(v175, v99, v100);
        v121 = sub_22B35E42C();
        v122 = v100;
        v101 = v121;
        (*v196)(v120, v122);
      }

      v123 = v93;
      v124 = __OFADD__(v101, sub_22B35E42C());
      v19 = v190;
      v85 = v199;
      if (v124)
      {
        goto LABEL_57;
      }

      v125 = v181;
      sub_22B35E4CC();
      sub_22B123284(v202, &qword_27D8BA758, &qword_22B365A00);
      v126 = v123;
      v127 = v203;
      (*v196)(v126, v203);
      v85(v92, v213);
      sub_22B123284(v214, &qword_27D8BA3E8, &unk_22B364790);
      (v186)(v125, 0, 1, v127);
      v128 = v125;
      v129 = v194;
      goto LABEL_50;
    }

    (*v180)(v195, v97, v98);
    v102 = v182;
    v103 = v183;
    (*v179)(v182, v177, v183);
    v104 = sub_22B35EE7C();
    (*v178)(v102, v103);
    sub_22B35E22C();
    v106 = v105;
    sub_22B35E3CC();
    if (v104)
    {
      v108 = v185;
      v85 = v199;
      if (v106 > v107)
      {
        sub_22B35E22C();
        v110 = v109;
        sub_22B35E3AC();
        v111 = *v189;
        v112 = v203;
        v19 = v190;
        if (v110 <= v113)
        {
          v108 = v184;
          if (v111(v184, 1, v203))
          {
            v138 = 0;
          }

          else
          {
            v160 = v175;
            (*v174)(v175, v108, v112);
            v161 = sub_22B35E42C();
            v162 = v112;
            v138 = v161;
            (*v196)(v160, v162);
          }

          v142 = v197;
          if (__OFADD__(v138, sub_22B35E42C()))
          {
            goto LABEL_61;
          }

          v143 = &v197;
        }

        else
        {
          if (v111(v108, 1, v203))
          {
            v114 = 0;
          }

          else
          {
            v157 = v175;
            (*v174)(v175, v108, v112);
            v158 = sub_22B35E42C();
            v159 = v112;
            v114 = v158;
            (*v196)(v157, v159);
          }

          v142 = v197;
          if (__OFADD__(v114, sub_22B35E42C()))
          {
            goto LABEL_62;
          }

          v143 = &v198;
        }

LABEL_49:
        v163 = *(v143 - 32);
        sub_22B35E4CC();
        (*v176)(v195, v198);
        sub_22B123284(v202, &qword_27D8BA758, &qword_22B365A00);
        v164 = v142;
        v165 = v203;
        (*v196)(v164, v203);
        v85(v204, v213);
        sub_22B123284(v214, &qword_27D8BA3E8, &unk_22B364790);
        (v186)(v163, 0, 1, v165);
        v128 = v163;
        v129 = v108;
        goto LABEL_50;
      }

      v130 = v93;
      v131 = v193;
      v132 = v203;
      v133 = (*v189)(v193, 1, v203);
      v19 = v190;
      if (v133)
      {
        v134 = 0;
      }

      else
      {
        v144 = v175;
        (*v174)(v175, v131, v132);
        v145 = sub_22B35E42C();
        v146 = v132;
        v134 = v145;
        v147 = v144;
        v130 = v197;
        (*v196)(v147, v146);
      }

      v148 = v204;
      if (__OFADD__(v134, sub_22B35E42C()))
      {
        goto LABEL_60;
      }

      v149 = &v199;
    }

    else
    {
      v115 = *v189;
      v116 = v193;
      v85 = v199;
      if (v106 > v107)
      {
        v108 = v184;
        v117 = v203;
        v118 = v115(v184, 1, v203);
        v19 = v190;
        if (v118)
        {
          v119 = 0;
        }

        else
        {
          v139 = v175;
          (*v174)(v175, v108, v117);
          v140 = sub_22B35E42C();
          v141 = v117;
          v119 = v140;
          (*v196)(v139, v141);
        }

        v142 = v197;
        if (__OFADD__(v119, sub_22B35E42C()))
        {
          goto LABEL_58;
        }

        v143 = &v201;
        goto LABEL_49;
      }

      v135 = v203;
      v136 = v115(v193, 1, v203);
      v19 = v190;
      if (v136)
      {
        v137 = 0;
      }

      else
      {
        v150 = v116;
        v151 = v175;
        (*v174)(v175, v150, v135);
        v152 = sub_22B35E42C();
        v153 = v135;
        v137 = v152;
        (*v196)(v151, v153);
      }

      v148 = v204;
      v130 = v197;
      if (__OFADD__(v137, sub_22B35E42C()))
      {
        goto LABEL_59;
      }

      v149 = &v200;
    }

    v154 = *(v149 - 32);
    sub_22B35E4CC();
    (*v176)(v195, v198);
    sub_22B123284(v202, &qword_27D8BA758, &qword_22B365A00);
    v155 = v130;
    v156 = v203;
    (*v196)(v155, v203);
    v85(v148, v213);
    sub_22B123284(v214, &qword_27D8BA3E8, &unk_22B364790);
    (v186)(v154, 0, 1, v156);
    v128 = v154;
    v129 = v193;
LABEL_50:
    sub_22B12F2C4(v128, v129, &qword_27D8BA798, &qword_22B365A28);
LABEL_5:
    v81 = v210;
    (*v205)(v23, v210);
    v77 += v206;
    if (!--v69)
    {
      v85(v211, v213);
      v166 = v194;
      v167 = v169[0];
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}