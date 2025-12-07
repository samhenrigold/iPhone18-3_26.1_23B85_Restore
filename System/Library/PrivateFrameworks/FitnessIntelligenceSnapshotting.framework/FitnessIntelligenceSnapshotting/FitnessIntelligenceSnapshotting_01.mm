uint64_t sub_20CD0E02C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  (*(v3[17] + 8))(v3[19], v3[16]);
  if (v1)
  {
    v5 = sub_20CD0E380;
  }

  else
  {
    v5 = sub_20CD0E1A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD0E1A0()
{
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v1 = v0;
  v1[1] = sub_20CD0E268;
  v3 = *(v0 + 728);

  return MEMORY[0x282160B38](v0 + 24, &unk_20CD64570, v3, v2);
}

uint64_t sub_20CD0E268(double a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v4 = sub_20CD0F5C4;
  }

  else
  {
    v4 = sub_20CD0E774;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD0E380()
{
  v1 = v0[85];
  v2 = v0[68];
  v3 = v0[52];
  v4 = v0[50];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1(v3, v4);
  (*(v7 + 8))(v5, v6);
  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  v8 = v0[85];
  v9 = v0[76];
  v10 = v0[69];
  v12 = v0[63];
  v11 = v0[64];
  v13 = v0[60];
  v15 = v0[49];
  v14 = v0[50];
  v8(v0[57], v14);
  v8(v13, v14);
  sub_20CD1DA10(v15, &qword_27C810DC0, &qword_20CD64518);
  v8(v12, v14);
  v8(v11, v14);
  sub_20CD1DA10(v10, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v9, type metadata accessor for SnapshotQueryRange);

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CD0E774()
{
  v94 = v0;
  v90 = v0[95];
  sub_20CD62B24();
  sub_20CD62B34();
  sub_20CD62AF4();
  sub_20CD62CC4();
  if (v90)
  {
    v88 = v0[68];
    v1 = v0[50];
    v83 = v0[85];
    v85 = v0[38];
    v2 = v0[36];
    v79 = v0[52];
    v81 = v0[35];
    v3 = v0[33];
    v4 = v0[34];
    v5 = v0[32];
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];

    (*(v7 + 8))(v6, v8);
    (*(v3 + 8))(v4, v5);
    v83(v79, v1);
    (*(v2 + 8))(v85, v81);
    sub_20CD1DA10(v88, &qword_27C810D08, &qword_20CD64280);
    v9 = v0[85];
    v10 = v0[76];
    v11 = v0[69];
    v13 = v0[63];
    v12 = v0[64];
    v14 = v0[60];
    v16 = v0[49];
    v15 = v0[50];
    v9(v0[57], v15);
    v9(v14, v15);
    sub_20CD1DA10(v16, &qword_27C810DC0, &qword_20CD64518);
    v9(v13, v15);
    v9(v12, v15);
    sub_20CD1DA10(v11, &qword_27C810D08, &qword_20CD64280);
    sub_20CD1C87C(v10, type metadata accessor for SnapshotQueryRange);

    v17 = v0[1];
LABEL_5:

    return v17();
  }

  v18 = v0[94];
  v19 = v0[85];
  v89 = v0[69];
  v91 = v0[73];
  v74 = v0[68];
  v86 = v0[63];
  v87 = v0[64];
  v80 = v0[60];
  v77 = v0[72];
  v78 = v0[57];
  v71 = v0[52];
  v20 = v0[50];
  v82 = v0[49];
  v75 = v0[46];
  v21 = v0[36];
  v72 = v0[35];
  v73 = v0[38];
  v22 = v0[33];
  v69 = v0[32];
  v70 = v0[34];
  v23 = v0[15];
  v25 = v0[12];
  v24 = v0[13];
  v84 = v0[9];
  v76 = v0[8];

  (*(v24 + 8))(v23, v25);
  (*(v22 + 8))(v70, v69);
  v19(v71, v20);
  (*(v21 + 8))(v73, v72);
  sub_20CD1DA10(v74, &qword_27C810D08, &qword_20CD64280);
  (*(v21 + 56))(v75, 0, 1, v72);
  sub_20CCF3D20(v75, v77, &qword_27C810DC0, &qword_20CD64518);
  v26 = v77 + *(v76 + 36);
  *v26 = v18;
  *(v26 + 8) = 0;
  v19(v78, v20);
  v19(v80, v20);
  sub_20CD1DA10(v82, &qword_27C810DC0, &qword_20CD64518);
  v19(v86, v20);
  v19(v87, v20);
  sub_20CD1DA10(v89, &qword_27C810D08, &qword_20CD64280);
  v27 = *(v84 + 56);
  v27(v77, 0, 1, v76);
  sub_20CCF3D20(v77, v91, &qword_27C810DC8, &qword_20CD64520);
  v0[96] = v27;
  v28 = v0[24];
  v29 = v0[25];
  v30 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v30, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    v31 = v0[73];
    v32 = v0[11];
    v33 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v32, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v31, v33, &qword_27C810DC8, &qword_20CD64520);

    v17 = v0[1];
    goto LABEL_5;
  }

  v36 = v0[26];
  v35 = v0[27];
  v37 = v0[24];
  v38 = v0[25];
  (*(v38 + 32))(v35, v0[11], v37);
  (*(v38 + 16))(v36, v35, v37);
  v39 = sub_20CD63194();
  v40 = sub_20CD633D4();
  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[25];
  v42 = v0[26];
  v44 = v0[24];
  if (v41)
  {
    v45 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93[0] = v92;
    *v45 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v46 = sub_20CD63574();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = sub_20CD6153C(v46, v48, v93);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_20CCEA000, v39, v40, "[SnapshotRetriever] Apply today's changes: %s)", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x20F3115B0](v92, -1, -1);
    MEMORY[0x20F3115B0](v45, -1, -1);
  }

  else
  {

    v49 = *(v43 + 8);
    v49(v42, v44);
  }

  v0[97] = v49;
  v51 = v0[71];
  v52 = v0[8];
  v53 = v0[9];
  sub_20CD1D9A8(v0[73], v51, &qword_27C810DC8, &qword_20CD64520);
  v54 = *(v53 + 48);
  v0[98] = v54;
  v0[99] = (v53 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v55 = v54(v51, 1, v52);
  v56 = v0[71];
  v57 = v0[45];
  v58 = v0[35];
  v59 = v0[36];
  if (v55 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810DC8, &qword_20CD64520);
    (*(v59 + 56))(v57, 1, 1, v58);
    goto LABEL_14;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810DC0, &qword_20CD64518);
  sub_20CD1DA10(v56, &qword_27C810DD0, &unk_20CD64530);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
LABEL_14:
    v60 = v0[54];
    v61 = v0[50];
    v62 = v0[51];
    v63 = v0[45];
    v64 = v0[36];
    v65 = v0[35];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62CB4();
    (*(v62 + 8))(v60, v61);
    if ((*(v64 + 48))(v63, 1, v65) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810DC0, &qword_20CD64518);
    }

    goto LABEL_17;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_17:
  v0[100] = sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
  sub_20CD62C94();
  v66 = swift_task_alloc();
  v0[101] = v66;
  *v66 = v0;
  v66[1] = sub_20CD0F9D0;
  v67 = v0[27];
  v68 = v0[18];

  return sub_20CD57A94(v67, v68);
}

uint64_t sub_20CD0F5C4()
{
  v1 = v0[85];
  v20 = v0[68];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];

  (*(v8 + 8))(v7, v9);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);
  sub_20CD1DA10(v20, &qword_27C810D08, &qword_20CD64280);
  v10 = v0[85];
  v11 = v0[76];
  v12 = v0[69];
  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[60];
  v17 = v0[49];
  v16 = v0[50];
  v10(v0[57], v16);
  v10(v15, v16);
  sub_20CD1DA10(v17, &qword_27C810DC0, &qword_20CD64518);
  v10(v14, v16);
  v10(v13, v16);
  sub_20CD1DA10(v12, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v11, type metadata accessor for SnapshotQueryRange);

  v18 = v0[1];

  return v18();
}

uint64_t sub_20CD0F9D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  (*(v3[17] + 8))(v3[18], v3[16]);
  if (v1)
  {
    v5 = sub_20CD0FD24;
  }

  else
  {
    v5 = sub_20CD0FB44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD0FB44()
{
  v1 = swift_task_alloc();
  *(v0 + 832) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v1 = v0;
  v1[1] = sub_20CD0FC0C;
  v3 = *(v0 + 816);

  return MEMORY[0x282160B38](v0 + 16, &unk_20CD64550, v3, v2);
}

uint64_t sub_20CD0FC0C(double a1)
{
  v3 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v4 = sub_20CD109C8;
  }

  else
  {
    v4 = sub_20CD10080;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD0FD24()
{
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v2, &qword_27C810DC8, &qword_20CD64520);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CD10080()
{
  if (*(*(v0 + 16) + 16))
  {
    v44 = *(v0 + 848);
    sub_20CD62B24();
    sub_20CD62B34();
    sub_20CD62AF4();
    sub_20CD62CC4();
    if (v44)
    {
      v2 = *(v0 + 288);
      v1 = *(v0 + 296);
      v3 = *(v0 + 280);
      v5 = *(v0 + 104);
      v4 = *(v0 + 112);
      v6 = *(v0 + 96);

      (*(v5 + 8))(v4, v6);
      (*(v2 + 8))(v1, v3);
      v7 = *(v0 + 608);
      v8 = *(v0 + 584);
      (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
      sub_20CD1DA10(v8, &qword_27C810DC8, &qword_20CD64520);
      sub_20CD1C87C(v7, type metadata accessor for SnapshotQueryRange);

      v9 = *(v0 + 8);
      goto LABEL_11;
    }

    v14 = *(v0 + 352);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 280);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);
    v45 = *(v0 + 80);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    (*(v16 + 56))(v14, 0, 1, v17);
    sub_20CCF3D20(v14, v45, &qword_27C810DC0, &qword_20CD64518);
  }

  else
  {
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v13 = *(v0 + 80);

    (*(v11 + 32))(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
  }

  v21 = *(v0 + 784);
  v22 = *(v0 + 776);
  v23 = *(v0 + 608);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 344);
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = v29 + *(v30 + 36);
  *v31 = *(v0 + 840);
  *(v31 + 8) = 0;
  v22(v27, v28);
  sub_20CD1C87C(v23, type metadata accessor for SnapshotQueryRange);
  sub_20CD1D9A8(v29, v26, &qword_27C810DC0, &qword_20CD64518);
  sub_20CCF3D20(v24, v25, &qword_27C810DC8, &qword_20CD64520);
  v32 = v21(v25, 1, v30);
  v33 = *(v0 + 560);
  if (v32 == 1)
  {
    sub_20CD1DA10(v33, &qword_27C810DC8, &qword_20CD64520);
    v34 = 0.0;
  }

  else
  {
    v35 = v33 + *(*(v0 + 64) + 36);
    v34 = *v35;
    v36 = *(v35 + 8);
    sub_20CD1DA10(v33, &qword_27C810DD0, &unk_20CD64530);
    if (v36)
    {
      v34 = 0.0;
    }
  }

  v37 = *(v0 + 840);
  v38 = *(v0 + 768);
  v39 = *(v0 + 344);
  v40 = *(v0 + 64);
  v41 = *(v0 + 32);
  sub_20CD1DA10(*(v0 + 80), &qword_27C810DD0, &unk_20CD64530);
  sub_20CCF3D20(v39, v41, &qword_27C810DC0, &qword_20CD64518);
  v42 = v41 + *(v40 + 36);
  *v42 = v34 + v37;
  *(v42 + 8) = 0;
  v38(v41, 0, 1, v40);

  v9 = *(v0 + 8);
LABEL_11:

  return v9();
}

uint64_t sub_20CD109C8()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 608);
  v5 = *(v0 + 584);
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v5, &qword_27C810DC8, &qword_20CD64520);
  sub_20CD1C87C(v4, type metadata accessor for SnapshotQueryRange);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20CD10D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E98, &qword_20CD64708);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_20CD62AB4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD10F24, 0, 0);
}

uint64_t sub_20CD10F24()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[3];
  v6 = *(v4 + 16);
  v0[21] = v6;
  v0[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v6(v2, v5 + *(v7 + 36), v3);
  v0[23] = type metadata accessor for SnapshotRetriver(0);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_20CD1105C;
  v9 = v0[12];
  v10 = v0[4];

  return sub_20CD14584(v9, v10);
}

uint64_t sub_20CD1105C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_20CD1DFAC;
  }

  else
  {
    v2 = sub_20CD11170;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD11170()
{
  v47 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  sub_20CD1D9A8(v0[12], v1, &qword_27C810E98, &qword_20CD64708);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20CD1DA10(v0[11], &qword_27C810E98, &qword_20CD64708);
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[13];
    v10 = sub_20CD631B4();
    __swift_project_value_buffer(v10, qword_28110F878);
    v4(v7, v6, v9);
    v4(v8, v5, v9);
    v11 = sub_20CD63194();
    v12 = sub_20CD633D4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[17];
    v17 = v0[18];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    if (v13)
    {
      v45 = v0[12];
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v21 = 136315394;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      log = v11;
      v44 = v15;
      v22 = sub_20CD63574();
      v41 = v12;
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v17, v18);
      v26 = sub_20CD6153C(v22, v24, &v46);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = sub_20CD63574();
      v29 = v28;
      v25(v16, v18);
      v30 = sub_20CD6153C(v27, v29, &v46);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_20CCEA000, log, v41, "[SnapshotRetriever] Could not find steps from %s to %s. Returning nil", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v43, -1, -1);
      MEMORY[0x20F3115B0](v21, -1, -1);

      sub_20CD1DA10(v45, &qword_27C810E98, &qword_20CD64708);
      v25(v44, v18);
      v25(v14, v18);
    }

    else
    {

      v37 = *(v19 + 8);
      v37(v16, v18);
      v37(v17, v18);
      sub_20CD1DA10(v20, &qword_27C810E98, &qword_20CD64708);
      v37(v15, v18);
      v37(v14, v18);
    }

    v38 = v0[2];
    v39 = sub_20CD62BC4();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);

    v40 = v0[1];

    return v40();
  }

  else
  {
    v31 = v0[23];
    v32 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[11], v0[8]);
    __swift_project_boxed_opaque_existential_1((v32 + *(v31 + 28)), *(v32 + *(v31 + 28) + 24));
    v33 = swift_task_alloc();
    v0[26] = v33;
    *v33 = v0;
    v33[1] = sub_20CD116A8;
    v34 = v0[10];
    v35 = v0[7];

    return sub_20CD18B4C(v35, v34);
  }
}

uint64_t sub_20CD116A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20CD11E30;
  }

  else
  {
    v2 = sub_20CD117BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD117BC()
{
  v57 = v0;
  v1 = v0[6];
  sub_20CD1D9A8(v0[7], v1, &qword_27C810E78, &qword_20CD646C8);
  v2 = sub_20CD62BC4();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20CD1DA10(v0[6], &qword_27C810E78, &qword_20CD646C8);
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[13];
    v10 = sub_20CD631B4();
    __swift_project_value_buffer(v10, qword_28110F878);
    v4(v7, v6, v9);
    v4(v8, v5, v9);
    v11 = sub_20CD63194();
    v12 = sub_20CD633B4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    if (v13)
    {
      v50 = v12;
      v18 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56[0] = v51;
      *v18 = 136315394;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v19 = sub_20CD63574();
      v21 = v20;
      log = v11;
      v22 = *(v16 + 8);
      v22(v14, v17);
      v23 = sub_20CD6153C(v19, v21, v56);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = sub_20CD63574();
      v26 = v25;
      v54 = v22;
      v22(v15, v17);
      v27 = sub_20CD6153C(v24, v26, v56);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_20CCEA000, log, v50, "[SnapshotRetriever] Could not retrieve properties from %s to %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v51, -1, -1);
      MEMORY[0x20F3115B0](v18, -1, -1);
    }

    else
    {

      v37 = *(v16 + 8);
      v37(v15, v17);
      v54 = v37;
      v37(v14, v17);
    }

    v38 = v0[12];
    v40 = v0[9];
    v39 = v0[10];
    v42 = v0[7];
    v41 = v0[8];
    type metadata accessor for SnapshotRetriver.QueryFailure(0);
    sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure, &unk_20CD64110);
    swift_allocError();
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    swift_willThrow();
    sub_20CD1DA10(v42, &qword_27C810E78, &qword_20CD646C8);
    (*(v40 + 8))(v39, v41);
    sub_20CD1DA10(v38, &qword_27C810E98, &qword_20CD64708);
    v46 = v0[20];
    v47 = v0[13];
    v54(v0[19], v47);
    v54(v46, v47);

    v36 = v0[1];
  }

  else
  {
    v52 = v0[19];
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v33 = v0[8];
    v53 = v0[6];
    v55 = v0[20];
    v34 = v0[2];
    sub_20CD1DA10(v0[7], &qword_27C810E78, &qword_20CD646C8);
    (*(v31 + 8))(v32, v33);
    sub_20CD1DA10(v30, &qword_27C810E98, &qword_20CD64708);
    v35 = *(v28 + 8);
    v35(v52, v29);
    v35(v55, v29);
    (*(v3 + 32))(v34, v53, v2);
    (*(v3 + 56))(v34, 0, 1, v2);

    v36 = v0[1];
  }

  return v36();
}

uint64_t sub_20CD11E30()
{
  v1 = v0[14];
  v2 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_20CD1DA10(v2, &qword_27C810E98, &qword_20CD64708);
  v3 = *(v1 + 8);
  v4 = v0[20];
  v5 = v0[13];
  v3(v0[19], v5);
  v3(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CD11F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E48, &qword_20CD64648);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_20CD62AB4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD12184, 0, 0);
}

uint64_t sub_20CD12184()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[3];
  v6 = *(v4 + 16);
  v0[21] = v6;
  v0[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v6(v2, v5 + *(v7 + 36), v3);
  v0[23] = type metadata accessor for SnapshotRetriver(0);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_20CD122BC;
  v9 = v0[12];
  v10 = v0[4];

  return sub_20CD14DE8(v9, v10);
}

uint64_t sub_20CD122BC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_20CD12908;
  }

  else
  {
    v2 = sub_20CD123D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD123D0()
{
  v47 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  sub_20CD1D9A8(v0[12], v1, &qword_27C810E48, &qword_20CD64648);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20CD1DA10(v0[11], &qword_27C810E48, &qword_20CD64648);
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[13];
    v10 = sub_20CD631B4();
    __swift_project_value_buffer(v10, qword_28110F878);
    v4(v7, v6, v9);
    v4(v8, v5, v9);
    v11 = sub_20CD63194();
    v12 = sub_20CD633D4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[17];
    v17 = v0[18];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    if (v13)
    {
      v45 = v0[12];
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v21 = 136315394;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      log = v11;
      v44 = v15;
      v22 = sub_20CD63574();
      v41 = v12;
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v17, v18);
      v26 = sub_20CD6153C(v22, v24, &v46);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = sub_20CD63574();
      v29 = v28;
      v25(v16, v18);
      v30 = sub_20CD6153C(v27, v29, &v46);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_20CCEA000, log, v41, "[SnapshotRetriever] Could not find steps from %s to %s. Returning nil", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v43, -1, -1);
      MEMORY[0x20F3115B0](v21, -1, -1);

      sub_20CD1DA10(v45, &qword_27C810E48, &qword_20CD64648);
      v25(v44, v18);
      v25(v14, v18);
    }

    else
    {

      v37 = *(v19 + 8);
      v37(v16, v18);
      v37(v17, v18);
      sub_20CD1DA10(v20, &qword_27C810E48, &qword_20CD64648);
      v37(v15, v18);
      v37(v14, v18);
    }

    v38 = v0[2];
    v39 = sub_20CD62B44();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);

    v40 = v0[1];

    return v40();
  }

  else
  {
    v31 = v0[23];
    v32 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[11], v0[8]);
    __swift_project_boxed_opaque_existential_1((v32 + *(v31 + 28)), *(v32 + *(v31 + 28) + 24));
    v33 = swift_task_alloc();
    v0[26] = v33;
    *v33 = v0;
    v33[1] = sub_20CD12A38;
    v34 = v0[10];
    v35 = v0[7];

    return sub_20CD1903C(v35, v34);
  }
}

uint64_t sub_20CD12908()
{
  v1 = *(v0[14] + 8);
  v2 = v0[20];
  v3 = v0[13];
  v1(v0[19], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CD12A38()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20CD131C0;
  }

  else
  {
    v2 = sub_20CD12B4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD12B4C()
{
  v57 = v0;
  v1 = v0[6];
  sub_20CD1D9A8(v0[7], v1, &qword_27C810E28, &unk_20CD64A10);
  v2 = sub_20CD62B44();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20CD1DA10(v0[6], &qword_27C810E28, &unk_20CD64A10);
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[13];
    v10 = sub_20CD631B4();
    __swift_project_value_buffer(v10, qword_28110F878);
    v4(v7, v6, v9);
    v4(v8, v5, v9);
    v11 = sub_20CD63194();
    v12 = sub_20CD633B4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    if (v13)
    {
      v50 = v12;
      v18 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56[0] = v51;
      *v18 = 136315394;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v19 = sub_20CD63574();
      v21 = v20;
      log = v11;
      v22 = *(v16 + 8);
      v22(v14, v17);
      v23 = sub_20CD6153C(v19, v21, v56);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = sub_20CD63574();
      v26 = v25;
      v54 = v22;
      v22(v15, v17);
      v27 = sub_20CD6153C(v24, v26, v56);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_20CCEA000, log, v50, "[SnapshotRetriever] Could not retrieve properties from %s to %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v51, -1, -1);
      MEMORY[0x20F3115B0](v18, -1, -1);
    }

    else
    {

      v37 = *(v16 + 8);
      v37(v15, v17);
      v54 = v37;
      v37(v14, v17);
    }

    v38 = v0[12];
    v40 = v0[9];
    v39 = v0[10];
    v42 = v0[7];
    v41 = v0[8];
    type metadata accessor for SnapshotRetriver.QueryFailure(0);
    sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure, &unk_20CD64110);
    swift_allocError();
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    swift_willThrow();
    sub_20CD1DA10(v42, &qword_27C810E28, &unk_20CD64A10);
    (*(v40 + 8))(v39, v41);
    sub_20CD1DA10(v38, &qword_27C810E48, &qword_20CD64648);
    v46 = v0[20];
    v47 = v0[13];
    v54(v0[19], v47);
    v54(v46, v47);

    v36 = v0[1];
  }

  else
  {
    v52 = v0[19];
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v33 = v0[8];
    v53 = v0[6];
    v55 = v0[20];
    v34 = v0[2];
    sub_20CD1DA10(v0[7], &qword_27C810E28, &unk_20CD64A10);
    (*(v31 + 8))(v32, v33);
    sub_20CD1DA10(v30, &qword_27C810E48, &qword_20CD64648);
    v35 = *(v28 + 8);
    v35(v52, v29);
    v35(v55, v29);
    (*(v3 + 32))(v34, v53, v2);
    (*(v3 + 56))(v34, 0, 1, v2);

    v36 = v0[1];
  }

  return v36();
}

uint64_t sub_20CD131C0()
{
  v1 = v0[14];
  v2 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_20CD1DA10(v2, &qword_27C810E48, &qword_20CD64648);
  v3 = *(v1 + 8);
  v4 = v0[20];
  v5 = v0[13];
  v3(v0[19], v5);
  v3(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CD13324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF8, &qword_20CD64580);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_20CD62AB4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD13514, 0, 0);
}

uint64_t sub_20CD13514()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[3];
  v6 = *(v4 + 16);
  v0[21] = v6;
  v0[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v6(v2, v5 + *(v7 + 36), v3);
  v0[23] = type metadata accessor for SnapshotRetriver(0);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_20CD1364C;
  v9 = v0[12];
  v10 = v0[4];

  return sub_20CD1572C(v9, v10);
}

uint64_t sub_20CD1364C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_20CD1DFAC;
  }

  else
  {
    v2 = sub_20CD13760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD13760()
{
  v47 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  sub_20CD1D9A8(v0[12], v1, &qword_27C810DF8, &qword_20CD64580);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20CD1DA10(v0[11], &qword_27C810DF8, &qword_20CD64580);
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[13];
    v10 = sub_20CD631B4();
    __swift_project_value_buffer(v10, qword_28110F878);
    v4(v7, v6, v9);
    v4(v8, v5, v9);
    v11 = sub_20CD63194();
    v12 = sub_20CD633D4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[17];
    v17 = v0[18];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    if (v13)
    {
      v45 = v0[12];
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v21 = 136315394;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      log = v11;
      v44 = v15;
      v22 = sub_20CD63574();
      v41 = v12;
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v17, v18);
      v26 = sub_20CD6153C(v22, v24, &v46);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = sub_20CD63574();
      v29 = v28;
      v25(v16, v18);
      v30 = sub_20CD6153C(v27, v29, &v46);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_20CCEA000, log, v41, "[SnapshotRetriever] Could not find steps from %s to %s. Returning nil", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v43, -1, -1);
      MEMORY[0x20F3115B0](v21, -1, -1);

      sub_20CD1DA10(v45, &qword_27C810DF8, &qword_20CD64580);
      v25(v44, v18);
      v25(v14, v18);
    }

    else
    {

      v37 = *(v19 + 8);
      v37(v16, v18);
      v37(v17, v18);
      sub_20CD1DA10(v20, &qword_27C810DF8, &qword_20CD64580);
      v37(v15, v18);
      v37(v14, v18);
    }

    v38 = v0[2];
    v39 = sub_20CD62954();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);

    v40 = v0[1];

    return v40();
  }

  else
  {
    v31 = v0[23];
    v32 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[11], v0[8]);
    __swift_project_boxed_opaque_existential_1((v32 + *(v31 + 28)), *(v32 + *(v31 + 28) + 24));
    v33 = swift_task_alloc();
    v0[26] = v33;
    *v33 = v0;
    v33[1] = sub_20CD13C98;
    v34 = v0[10];
    v35 = v0[7];

    return sub_20CD18540(v35, v34);
  }
}

uint64_t sub_20CD13C98()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20CD14420;
  }

  else
  {
    v2 = sub_20CD13DAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD13DAC()
{
  v57 = v0;
  v1 = v0[6];
  sub_20CD1D9A8(v0[7], v1, &qword_27C810DC0, &qword_20CD64518);
  v2 = sub_20CD62954();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_20CD1DA10(v0[6], &qword_27C810DC0, &qword_20CD64518);
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = v0[21];
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[13];
    v10 = sub_20CD631B4();
    __swift_project_value_buffer(v10, qword_28110F878);
    v4(v7, v6, v9);
    v4(v8, v5, v9);
    v11 = sub_20CD63194();
    v12 = sub_20CD633B4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    if (v13)
    {
      v50 = v12;
      v18 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56[0] = v51;
      *v18 = 136315394;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v19 = sub_20CD63574();
      v21 = v20;
      log = v11;
      v22 = *(v16 + 8);
      v22(v14, v17);
      v23 = sub_20CD6153C(v19, v21, v56);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = sub_20CD63574();
      v26 = v25;
      v54 = v22;
      v22(v15, v17);
      v27 = sub_20CD6153C(v24, v26, v56);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_20CCEA000, log, v50, "[SnapshotRetriever] Could not retrieve properties from %s to %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v51, -1, -1);
      MEMORY[0x20F3115B0](v18, -1, -1);
    }

    else
    {

      v37 = *(v16 + 8);
      v37(v15, v17);
      v54 = v37;
      v37(v14, v17);
    }

    v38 = v0[12];
    v40 = v0[9];
    v39 = v0[10];
    v42 = v0[7];
    v41 = v0[8];
    type metadata accessor for SnapshotRetriver.QueryFailure(0);
    sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure, &unk_20CD64110);
    swift_allocError();
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
    swift_willThrow();
    sub_20CD1DA10(v42, &qword_27C810DC0, &qword_20CD64518);
    (*(v40 + 8))(v39, v41);
    sub_20CD1DA10(v38, &qword_27C810DF8, &qword_20CD64580);
    v46 = v0[20];
    v47 = v0[13];
    v54(v0[19], v47);
    v54(v46, v47);

    v36 = v0[1];
  }

  else
  {
    v52 = v0[19];
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v33 = v0[8];
    v53 = v0[6];
    v55 = v0[20];
    v34 = v0[2];
    sub_20CD1DA10(v0[7], &qword_27C810DC0, &qword_20CD64518);
    (*(v31 + 8))(v32, v33);
    sub_20CD1DA10(v30, &qword_27C810DF8, &qword_20CD64580);
    v35 = *(v28 + 8);
    v35(v52, v29);
    v35(v55, v29);
    (*(v3 + 32))(v34, v53, v2);
    (*(v3 + 56))(v34, 0, 1, v2);

    v36 = v0[1];
  }

  return v36();
}

uint64_t sub_20CD14420()
{
  v1 = v0[14];
  v2 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_20CD1DA10(v2, &qword_27C810DF8, &qword_20CD64580);
  v3 = *(v1 + 8);
  v4 = v0[20];
  v5 = v0[13];
  v3(v0[19], v5);
  v3(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CD14584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CD62EA4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20CD62E94();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_20CD62CE4();
  v3[15] = swift_task_alloc();
  type metadata accessor for SnapshotQueryRange(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD1479C, 0, 0);
}

uint64_t sub_20CD1479C()
{
  v2 = v0[15];
  v1 = v0[16];
  v0[17] = sub_20CD1DF2C(&qword_28110F688, MEMORY[0x277D0A458], MEMORY[0x277D0A450]);
  sub_20CD62B14();
  sub_20CCEEFC0(v2, v1);
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  sub_20CD1D9A8(v0[16], v5, &qword_27C810CF8, &unk_20CD64540);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[11];
    sub_20CD1C87C(v0[16], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v6, &qword_27C810CF8, &unk_20CD64540);
    v7 = v0[2];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[14];
    v12 = v0[12];
    sub_20CCF3D20(v0[11], v11, &qword_27C810D08, &qword_20CD64280);
    v13 = *(v12 + 36);
    sub_20CD62BC4();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
    sub_20CD62C94();
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_20CD14AD0;
    v15 = v0[14];
    v16 = v0[10];

    return sub_20CD5ADB0(v15, v11 + v13, v16);
  }
}

uint64_t sub_20CD14AD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_20CD1DFA4;
  }

  else
  {
    v7 = sub_20CD14C44;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD14C44()
{
  v1 = v0[16];
  v2 = v0[14];
  if (*(v0[19] + 16))
  {
    (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
    sub_20CD62BB4();
    v3 = 0;
  }

  else
  {

    v3 = 1;
  }

  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);
  v4 = v0[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CD14DE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CD62D24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20CD62E94();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_20CD62CE4();
  v3[15] = swift_task_alloc();
  type metadata accessor for SnapshotQueryRange(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD15000, 0, 0);
}

uint64_t sub_20CD15000()
{
  v2 = v0[15];
  v1 = v0[16];
  v0[17] = sub_20CD1DF2C(&qword_28110F6E0, MEMORY[0x277D0A388], MEMORY[0x277D0A380]);
  sub_20CD62B14();
  sub_20CCEEFC0(v2, v1);
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  sub_20CD1D9A8(v0[16], v5, &qword_27C810CF8, &unk_20CD64540);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[11];
    sub_20CD1C87C(v0[16], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v6, &qword_27C810CF8, &unk_20CD64540);
    v7 = v0[2];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[14];
    v12 = v0[12];
    sub_20CCF3D20(v0[11], v11, &qword_27C810D08, &qword_20CD64280);
    v13 = *(v12 + 36);
    sub_20CD62B44();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
    sub_20CD62C94();
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_20CD15334;
    v15 = v0[14];
    v16 = v0[10];

    return sub_20CD5ADB0(v15, v11 + v13, v16);
  }
}

uint64_t sub_20CD15334(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_20CD1564C;
  }

  else
  {
    v7 = sub_20CD154A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD154A8()
{
  v1 = v0[16];
  v2 = v0[14];
  if (*(v0[19] + 16))
  {
    (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
    sub_20CD62BB4();
    v3 = 0;
  }

  else
  {

    v3 = 1;
  }

  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);
  v4 = v0[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_20CD1564C()
{
  v1 = v0[16];
  sub_20CD1DA10(v0[14], &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20CD1572C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CD62994();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20CD62E94();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_20CD62CE4();
  v3[15] = swift_task_alloc();
  type metadata accessor for SnapshotQueryRange(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD15944, 0, 0);
}

uint64_t sub_20CD15944()
{
  v2 = v0[15];
  v1 = v0[16];
  v0[17] = sub_20CD1DF2C(&qword_28110F7A8, MEMORY[0x277D09F18], MEMORY[0x277D09F10]);
  sub_20CD62B14();
  sub_20CCEEFC0(v2, v1);
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  sub_20CD1D9A8(v0[16], v5, &qword_27C810CF8, &unk_20CD64540);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[11];
    sub_20CD1C87C(v0[16], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v6, &qword_27C810CF8, &unk_20CD64540);
    v7 = v0[2];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[14];
    v12 = v0[12];
    sub_20CCF3D20(v0[11], v11, &qword_27C810D08, &qword_20CD64280);
    v13 = *(v12 + 36);
    sub_20CD62954();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
    sub_20CD62C94();
    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_20CD15C78;
    v15 = v0[14];
    v16 = v0[10];

    return sub_20CD5ADB0(v15, v11 + v13, v16);
  }
}

uint64_t sub_20CD15C78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_20CD1DFA4;
  }

  else
  {
    v7 = sub_20CD15DEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD15DEC()
{
  v1 = v0[16];
  v2 = v0[14];
  if (*(v0[19] + 16))
  {
    (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
    sub_20CD62BB4();
    v3 = 0;
  }

  else
  {

    v3 = 1;
  }

  sub_20CD1DA10(v2, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);
  v4 = v0[2];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t SnapshotServiceListener.__allocating_init()()
{
  v0 = swift_allocObject();
  SnapshotServiceListener.init()();
  return v0;
}

uint64_t SnapshotServiceListener.init()()
{
  v50 = type metadata accessor for SnapshotRetriver(0) - 8;
  MEMORY[0x28223BE20](v50);
  v52 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SnapshotProcessor(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SeymourStore(0);
  MEMORY[0x28223BE20](v53);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D50, &qword_20CD643A0);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 104))(&v46 - v9, *MEMORY[0x277D09E80]);
  sub_20CD1BE80(&unk_2823B6D30);
  sub_20CD1BFE8(&unk_2823B6D50);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D58, &qword_20CD643A8));
  *(v0 + 16) = sub_20CD62944();
  v12 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v13 = sub_20CD63064();
  v14 = v12;
  v49 = v13;
  v15 = sub_20CD63054();
  v16 = v7;
  v47 = v7;
  SeymourStore.init()(v7);
  v17 = type metadata accessor for SnapshotStore();
  v46 = v17;
  v18 = swift_allocObject();
  v19 = v14;
  swift_defaultActor_initialize();
  v20 = objc_allocWithZone(type metadata accessor for SnapshotDatabaseClient(0));
  *(v18 + 112) = sub_20CD4933C(v19);
  v21 = &v5[v3[14]];
  v22 = MEMORY[0x277D0A680];
  v21[3] = v13;
  v21[4] = v22;
  *v21 = v15;
  v23 = &v5[v3[13]];
  v23[3] = v53;
  v23[4] = &protocol witness table for SeymourStore;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v48 = type metadata accessor for SeymourStore;
  sub_20CD1C9AC(v16, boxed_opaque_existential_1, type metadata accessor for SeymourStore);
  v25 = &v5[v3[7]];
  v25[3] = v17;
  v25[4] = &off_2823B7280;
  *v25 = v18;
  v26 = type metadata accessor for HealthKitCloudRestoreStatusProvider(0);
  v27 = swift_allocObject();
  v28 = v19;

  swift_defaultActor_initialize();
  v29 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_continuation;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112F0, &qword_20CD643B0);
  (*(*(v30 - 8) + 56))(&v27[v29], 1, 1, v30);
  *&v27[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting35HealthKitCloudRestoreStatusProvider_fetchingTask] = 0;
  *(v27 + 14) = v28;
  v54.receiver = v27;
  v54.super_class = v26;
  v31 = objc_msgSendSuper2(&v54, sel_init);
  v32 = &v5[v3[10]];
  *(v32 + 3) = v26;
  *(v32 + 4) = &off_2823B83B8;
  *v32 = v31;
  v33 = objc_allocWithZone(type metadata accessor for SanityTaskClient(0));
  v34 = v28;
  v35 = sub_20CD533D8(v34);
  sub_20CD626C4();
  sub_20CCEE234(v21, &v5[v3[8]]);
  sub_20CCEE234(v23, &v5[v3[9]]);
  *&v5[v3[11]] = v35;
  sub_20CCEE234(v21, &v5[v3[12]]);
  v36 = v51;
  sub_20CD1C0A0(v5, v51 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_processor, type metadata accessor for SnapshotProcessor);
  v37 = v50;
  v38 = v52;
  v39 = &v52[*(v50 + 28)];
  v39[3] = v49;
  v39[4] = MEMORY[0x277D0A680];
  *v39 = v15;
  v40 = v37;
  v41 = (v38 + *(v37 + 32));
  v41[3] = v53;
  v41[4] = &protocol witness table for SeymourStore;
  v42 = __swift_allocate_boxed_opaque_existential_1(v41);
  v43 = v47;
  sub_20CD1C9AC(v47, v42, v48);
  v44 = (v38 + *(v40 + 40));
  v44[3] = v46;
  v44[4] = &off_2823B7280;
  *v44 = v18;
  sub_20CD626C4();

  sub_20CD1C87C(v43, type metadata accessor for SeymourStore);
  sub_20CCEE234(v44, v38 + *(v40 + 36));
  sub_20CD1C0A0(v38, v36 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_retriever, type metadata accessor for SnapshotRetriver);
  return v36;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SnapshotServiceListener.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D60, &qword_20CD643B8);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v101 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v95 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v95 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v107 = &v95 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v109 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v111 = &v95 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v113 = &v95 - v17;
  MEMORY[0x28223BE20](v16);
  v119 = &v95 - v18;
  v19 = sub_20CD62B74();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v95 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v104 = &v95 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v106 = &v95 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v108 = &v95 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v110 = &v95 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v112 = &v95 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v95 - v36;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v105 = v9;
  v102 = v25;
  v103 = v6;
  v38 = sub_20CD631B4();
  v99 = __swift_project_value_buffer(v38, qword_28110F878);
  v39 = sub_20CD63194();
  v40 = sub_20CD633D4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v20;
    v42 = v0;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_20CCEA000, v39, v40, "Registering dispatch table", v43, 2u);
    v44 = v43;
    v0 = v42;
    v20 = v41;
    MEMORY[0x20F3115B0](v44, -1, -1);
  }

  v45 = v19;
  v46 = *(v122 + 16);
  sub_20CD62924();
  v47 = *MEMORY[0x277D0A108];
  v48 = *(v20 + 104);
  v121 = v45;
  v117 = v48;
  v118 = v20 + 104;
  v48(v37, v47, v45);
  v49 = v1;
  v50 = v1 + 104;
  v51 = *(v1 + 104);
  v52 = v119;
  v115 = *MEMORY[0x277D09E78];
  v116 = v50;
  v114 = v51;
  v51(v119);
  sub_20CD62F14();
  sub_20CD1DF2C(&unk_28110F670, MEMORY[0x277D0A568], MEMORY[0x277D0A560]);

  v53 = v120;
  sub_20CD62914();
  if (v53)
  {

    (*(v49 + 8))(v52, v0);
    (*(v20 + 8))(v37, v121);
    return;
  }

  v55 = *(v49 + 8);
  v54 = (v49 + 8);
  v98 = v55;
  v55(v52, v0);
  v56 = *(v20 + 8);
  v97 = v20 + 8;
  v57 = v37;
  v58 = v121;
  v119 = v56;
  (v56)(v57, v121);
  v95 = v46;
  sub_20CD62924();
  v59 = v112;
  v117(v112, *MEMORY[0x277D0A130], v58);
  v60 = v113;
  v114(v113, v115, v0);

  v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D68, &qword_20CD643E0);
  v96 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D70, &qword_20CD643E8);
  sub_20CD1DA70(&qword_28110F700, &qword_27C810D68, &qword_20CD643E0, MEMORY[0x277D0A250]);
  sub_20CD1DA70(&qword_28110F6C8, &qword_27C810D70, &qword_20CD643E8, MEMORY[0x277D0A390]);
  v61 = v120;
  sub_20CD628E4();
  if (v61)
  {

    v98(v60, v96);
    v62 = v59;
LABEL_14:
    (v119)(v62, v121);
    return;
  }

  v63 = v96;
  v113 = v54;
  v98(v60, v96);
  v64 = v121;
  (v119)(v59, v121);
  sub_20CD62924();
  v65 = v110;
  v117(v110, *MEMORY[0x277D0A120], v64);
  v66 = v111;
  v114(v111, v115, v63);

  v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D78, &qword_20CD64400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D80, &qword_20CD64408);
  sub_20CD1DA70(&qword_28110F708, &qword_27C810D78, &qword_20CD64400, MEMORY[0x277D0A250]);
  sub_20CD1DA70(&qword_28110F6D0, &qword_27C810D80, &qword_20CD64408, MEMORY[0x277D0A390]);
  v67 = v120;
  sub_20CD628E4();
  if (v67)
  {

    v68 = v66;
LABEL_13:
    v98(v68, v96);
    v62 = v65;
    goto LABEL_14;
  }

  v69 = v96;
  v98(v66, v96);
  v70 = v121;
  (v119)(v65, v121);
  sub_20CD62924();
  v65 = v108;
  v117(v108, *MEMORY[0x277D0A068], v70);
  v71 = v109;
  v114(v109, v115, v69);

  v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D88, &qword_20CD64420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D90, &qword_20CD64428);
  sub_20CD1DA70(&qword_28110F710, &qword_27C810D88, &qword_20CD64420, MEMORY[0x277D0A250]);
  sub_20CD1DA70(&qword_28110F6D8, &qword_27C810D90, &qword_20CD64428, MEMORY[0x277D0A390]);
  v72 = v120;
  sub_20CD628E4();
  if (v72)
  {

    v68 = v71;
    goto LABEL_13;
  }

  v73 = v71;
  v74 = v96;
  v98(v73, v96);
  v75 = v121;
  (v119)(v65, v121);
  sub_20CD62924();
  v76 = v106;
  v117(v106, *MEMORY[0x277D0A138], v75);
  v77 = v107;
  v114(v107, v115, v74);
  v78 = sub_20CD62AB4();
  v79 = sub_20CD1DF2C(&qword_28110F788, MEMORY[0x277D09F70], MEMORY[0x277D09F58]);

  sub_20CD62914();
  v112 = v79;
  v120 = v78;

  v98(v77, v74);
  v80 = v76;
  v81 = v121;
  (v119)(v80, v121);
  sub_20CD62924();
  v82 = v104;
  v117(v104, *MEMORY[0x277D0A0A0], v81);
  v83 = v105;
  v114(v105, v115, v74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D98, &qword_20CD64450);
  sub_20CD1C520();
  sub_20CD628F4();

  v98(v83, v74);
  v84 = v82;
  v85 = v121;
  (v119)(v84, v121);
  sub_20CD62924();
  v86 = v102;
  v117(v102, *MEMORY[0x277D0A0A8], v85);
  v87 = v103;
  v114(v103, v115, v74);
  sub_20CD62E94();
  sub_20CD1DF2C(&qword_28110F690, MEMORY[0x277D0A438], MEMORY[0x277D0A418]);

  sub_20CD628E4();

  v98(v87, v74);
  v88 = v86;
  v89 = v121;
  (v119)(v88, v121);
  sub_20CD62924();
  v90 = v100;
  v117(v100, *MEMORY[0x277D0A0F8], v89);
  v91 = v101;
  v114(v101, v115, v74);

  sub_20CD62904();

  v98(v91, v74);
  (v119)(v90, v89);
  v92 = sub_20CD63194();
  v93 = sub_20CD633D4();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_20CCEA000, v92, v93, "Starting listener", v94, 2u);
    MEMORY[0x20F3115B0](v94, -1, -1);
  }

  sub_20CD62934();
}

uint64_t sub_20CD17608(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CCEE040;

  return sub_20CD291E4(a2);
}

uint64_t sub_20CD176B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_20CD17788;

  return sub_20CCF41CC(a1, a3);
}

uint64_t sub_20CD17788()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD178B8, 0, 0);
  }
}

uint64_t sub_20CD178B8()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D70, &qword_20CD643E8);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CD17964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_20CD17A38;

  return sub_20CCF5C44(a1, a3);
}

uint64_t sub_20CD17A38()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD17B68, 0, 0);
  }
}

uint64_t sub_20CD17B68()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D80, &qword_20CD64408);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CD17C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_20CD17CE8;

  return sub_20CCF7860(a1, a3);
}

uint64_t sub_20CD17CE8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD17E18, 0, 0);
  }
}

uint64_t sub_20CD17E18()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D90, &qword_20CD64428);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CD17EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CD17EE4, 0, 0);
}

uint64_t sub_20CD17EE4()
{
  v1 = v0[3] + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_processor;
  v2 = type metadata accessor for SnapshotProcessor(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_20CD17FA4;
  v4 = v0[2];

  return sub_20CD24664(v4);
}

uint64_t sub_20CD17FA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CD18098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CD180B8, 0, 0);
}

uint64_t sub_20CD180B8()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_processor;
  v2 = type metadata accessor for SnapshotProcessor(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_20CD18170;

  return sub_20CD24BC0();
}

uint64_t sub_20CD18170(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_20CD182BC, 0, 0);
  }
}

uint64_t sub_20CD182E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CCED908;

  return sub_20CD2C540(a1, a3);
}

uint64_t sub_20CD18398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CCEE040;

  return sub_20CCED5A4();
}

uint64_t SnapshotServiceListener.deinit()
{
  sub_20CD1C87C(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_processor, type metadata accessor for SnapshotProcessor);
  sub_20CD1C87C(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_retriever, type metadata accessor for SnapshotRetriver);
  return v0;
}

uint64_t SnapshotServiceListener.__deallocating_deinit()
{
  sub_20CD1C87C(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_processor, type metadata accessor for SnapshotProcessor);
  sub_20CD1C87C(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting23SnapshotServiceListener_retriever, type metadata accessor for SnapshotRetriver);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_20CD18540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_20CD62994();
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD18640, v2, 0);
}

uint64_t sub_20CD18640()
{
  v20 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_20CD631B4();
  __swift_project_value_buffer(v5, qword_28110F878);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_20CD62BA4();
    v14 = sub_20CD63264();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CD6153C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CCEA000, v6, v7, "Executing plan for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F3115B0](v13, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[10] = *(v0[4] + 112);

  return MEMORY[0x2822009F8](sub_20CD18864, 0, 0);
}

uint64_t sub_20CD18864()
{
  sub_20CD1DA70(&qword_28110F728, &qword_27C810DF0, &qword_20CD649E0, MEMORY[0x277D0A1D0]);
  v1 = sub_20CD62D44();
  v0[11] = v1;
  v0[12] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[10];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v0[13] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518);
  *v8 = v0;
  v8[1] = sub_20CD18A30;
  v10 = v0[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x800000020CD657C0, sub_20CD1CD8C, v7, v9);
}

uint64_t sub_20CD18A30()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20CD1DF98;
  }

  else
  {

    v2 = sub_20CD1DF9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD18B4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_20CD62EA4();
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD18C4C, v2, 0);
}

uint64_t sub_20CD18C4C()
{
  v20 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_20CD631B4();
  __swift_project_value_buffer(v5, qword_28110F878);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_20CD62BA4();
    v14 = sub_20CD63264();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CD6153C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CCEA000, v6, v7, "Executing plan for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F3115B0](v13, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[10] = *(v0[4] + 112);

  return MEMORY[0x2822009F8](sub_20CD18E70, 0, 0);
}

uint64_t sub_20CD18E70()
{
  sub_20CD1DA70(&qword_28110F730, &qword_27C810E90, &qword_20CD64700, MEMORY[0x277D0A1D0]);
  v1 = sub_20CD62D44();
  v0[11] = v1;
  v0[12] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[10];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v0[13] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8);
  *v8 = v0;
  v8[1] = sub_20CD18A30;
  v10 = v0[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x800000020CD657C0, sub_20CD1DAB8, v7, v9);
}

uint64_t sub_20CD1903C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_20CD62D24();
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD1913C, v2, 0);
}

uint64_t sub_20CD1913C()
{
  v20 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_20CD631B4();
  __swift_project_value_buffer(v5, qword_28110F878);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_20CD62BA4();
    v14 = sub_20CD63264();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CD6153C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CCEA000, v6, v7, "Executing plan for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F3115B0](v13, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[10] = *(v0[4] + 112);

  return MEMORY[0x2822009F8](sub_20CD19360, 0, 0);
}

uint64_t sub_20CD19360()
{
  sub_20CD1DA70(&qword_28110F738, &qword_27C810E40, &qword_20CD64640, MEMORY[0x277D0A1D0]);
  v1 = sub_20CD62D44();
  v0[11] = v1;
  v0[12] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[10];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v0[13] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10);
  *v8 = v0;
  v8[1] = sub_20CD1952C;
  v10 = v0[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x800000020CD657C0, sub_20CD1D4C4, v7, v9);
}

uint64_t sub_20CD1952C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20CD196C4;
  }

  else
  {

    v2 = sub_20CD19648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD19648()
{
  sub_20CD1CD98(v0[11], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD196C4()
{
  sub_20CD1CD98(v0[11], v0[12]);

  v1 = v0[1];

  return v1();
}

void sub_20CD19748(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E00, &unk_20CD64598);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v37 = &v36 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v36 - v17;
  (*(v15 + 16))(&v36 - v17, a5);
  v46 = v8;
  v19 = *(v8 + 16);
  (v19)(v14, a1, v7);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = *(v8 + 80);
  v38 = v21 | 7;
  v22 = swift_allocObject();
  v43 = v22;
  v23 = v45;
  *(v22 + 16) = v44;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v20, v18, v36);
  v24 = *(v46 + 32);
  v24(v22 + ((v16 + v21 + v20) & ~v21), v37, v7);
  v25 = v40;
  (v19)(v40, v39, v7);
  v26 = v41;
  v19();
  v27 = swift_allocObject();
  v24(v27 + ((v21 + 16) & ~v21), v25, v7);
  v28 = *(v42 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v28)
  {
    sub_20CD1CF44(v44, v45);
    v29 = *(v46 + 8);
    v30 = v28;
    v29(v26, v7);
    v31 = swift_allocObject();
    v31[2] = sub_20CD1CEDC;
    v31[3] = v27;
    v32 = v43;
    v31[4] = sub_20CD1CDEC;
    v31[5] = v32;
    v51 = sub_20CD1CF98;
    v52 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_20CD49844;
    v50 = &block_descriptor;
    v33 = _Block_copy(&aBlock);

    v51 = sub_20CD1CEDC;
    v52 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_20CD498B4;
    v50 = &block_descriptor_58;
    v34 = _Block_copy(&aBlock);

    [v30 fetchProxyWithHandler:v33 errorHandler:v34];

    _Block_release(v34);
    _Block_release(v33);
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v35 = 0;
    sub_20CD1CF44(v44, v45);
    sub_20CD1B6B4(v30, v26, &qword_27C810E00, &unk_20CD64598);

    (*(v46 + 8))(v26, v7);
  }
}

void sub_20CD19C4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA0, &qword_20CD64720);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v37 = &v36 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v36 - v17;
  (*(v15 + 16))(&v36 - v17, a5);
  v46 = v8;
  v19 = *(v8 + 16);
  (v19)(v14, a1, v7);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = *(v8 + 80);
  v38 = v21 | 7;
  v22 = swift_allocObject();
  v43 = v22;
  v23 = v45;
  *(v22 + 16) = v44;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v20, v18, v36);
  v24 = *(v46 + 32);
  v24(v22 + ((v16 + v21 + v20) & ~v21), v37, v7);
  v25 = v40;
  (v19)(v40, v39, v7);
  v26 = v41;
  v19();
  v27 = swift_allocObject();
  v24(v27 + ((v21 + 16) & ~v21), v25, v7);
  v28 = *(v42 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v28)
  {
    sub_20CD1CF44(v44, v45);
    v29 = *(v46 + 8);
    v30 = v28;
    v29(v26, v7);
    v31 = swift_allocObject();
    v31[2] = sub_20CD1DD0C;
    v31[3] = v27;
    v32 = v43;
    v31[4] = sub_20CD1DC1C;
    v31[5] = v32;
    v51 = sub_20CD1DF94;
    v52 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_20CD49844;
    v50 = &block_descriptor_169;
    v33 = _Block_copy(&aBlock);

    v51 = sub_20CD1DD0C;
    v52 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_20CD498B4;
    v50 = &block_descriptor_172;
    v34 = _Block_copy(&aBlock);

    [v30 fetchProxyWithHandler:v33 errorHandler:v34];

    _Block_release(v34);
    _Block_release(v33);
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v35 = 0;
    sub_20CD1CF44(v44, v45);
    sub_20CD1B6B4(v30, v26, &qword_27C810EA0, &qword_20CD64720);

    (*(v46 + 8))(v26, v7);
  }
}

void sub_20CD1A150(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E50, &qword_20CD64660);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v37 = &v36 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v36 - v17;
  (*(v15 + 16))(&v36 - v17, a5);
  v46 = v8;
  v19 = *(v8 + 16);
  (v19)(v14, a1, v7);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = *(v8 + 80);
  v38 = v21 | 7;
  v22 = swift_allocObject();
  v43 = v22;
  v23 = v45;
  *(v22 + 16) = v44;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v20, v18, v36);
  v24 = *(v46 + 32);
  v24(v22 + ((v16 + v21 + v20) & ~v21), v37, v7);
  v25 = v40;
  (v19)(v40, v39, v7);
  v26 = v41;
  v19();
  v27 = swift_allocObject();
  v24(v27 + ((v21 + 16) & ~v21), v25, v7);
  v28 = *(v42 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v28)
  {
    sub_20CD1CF44(v44, v45);
    v29 = *(v46 + 8);
    v30 = v28;
    v29(v26, v7);
    v31 = swift_allocObject();
    v31[2] = sub_20CD1D5C0;
    v31[3] = v27;
    v32 = v43;
    v31[4] = sub_20CD1D4D0;
    v31[5] = v32;
    v51 = sub_20CD1DF94;
    v52 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_20CD49844;
    v50 = &block_descriptor_112;
    v33 = _Block_copy(&aBlock);

    v51 = sub_20CD1D5C0;
    v52 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_20CD498B4;
    v50 = &block_descriptor_115;
    v34 = _Block_copy(&aBlock);

    [v30 fetchProxyWithHandler:v33 errorHandler:v34];

    _Block_release(v34);
    _Block_release(v33);
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v35 = 0;
    sub_20CD1CF44(v44, v45);
    sub_20CD1B6B4(v30, v26, &qword_27C810E50, &qword_20CD64660);

    (*(v46 + 8))(v26, v7);
  }
}

void sub_20CD1A654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E00, &unk_20CD64598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_20CD62E94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CD62524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0);
  sub_20CD62B94();
  sub_20CD62E84();
  (*(v10 + 8))(v12, v9);
  v14 = sub_20CD63244();

  (*(v6 + 16))(v8, v18, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v8, v5);
  aBlock[4] = sub_20CD1CFBC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD1B608;
  aBlock[3] = &block_descriptor_64;
  v17 = _Block_copy(aBlock);

  [v19 executeWithQueryPlanData:v13 type:v14 completion:v17];
  _Block_release(v17);
}

void sub_20CD1A908(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA0, &qword_20CD64720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_20CD62E94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CD62524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700);
  sub_20CD62B94();
  sub_20CD62E84();
  (*(v10 + 8))(v12, v9);
  v14 = sub_20CD63244();

  (*(v6 + 16))(v8, v18, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v8, v5);
  aBlock[4] = sub_20CD1DE64;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD1B608;
  aBlock[3] = &block_descriptor_178;
  v17 = _Block_copy(aBlock);

  [v19 executeWithQueryPlanData:v13 type:v14 completion:v17];
  _Block_release(v17);
}

void sub_20CD1ABBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E50, &qword_20CD64660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_20CD62E94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CD62524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640);
  sub_20CD62B94();
  sub_20CD62E84();
  (*(v10 + 8))(v12, v9);
  v14 = sub_20CD63244();

  (*(v6 + 16))(v8, v18, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v8, v5);
  aBlock[4] = sub_20CD1D5D4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD1B608;
  aBlock[3] = &block_descriptor_121;
  v17 = _Block_copy(aBlock);

  [v19 executeWithQueryPlanData:v13 type:v14 completion:v17];
  _Block_release(v17);
}

uint64_t sub_20CD1AE70(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_20CD62954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15[0] = a3;
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E00, &unk_20CD64598);
    return sub_20CD63334();
  }

  else if (a2 >> 60 == 15)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E00, &unk_20CD64598);
    return sub_20CD63344();
  }

  else
  {
    sub_20CD1CF44(a1, a2);
    sub_20CD1DF2C(&qword_28110F7C0, MEMORY[0x277D09EE0], MEMORY[0x277D09ED8]);
    sub_20CD62D54();
    (*(v10 + 16))(v8, v12, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E00, &unk_20CD64598);
    sub_20CD63344();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20CD1B0F8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_20CD62BC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15[0] = a3;
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA0, &qword_20CD64720);
    return sub_20CD63334();
  }

  else if (a2 >> 60 == 15)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA0, &qword_20CD64720);
    return sub_20CD63344();
  }

  else
  {
    sub_20CD1CF44(a1, a2);
    sub_20CD1DF2C(&qword_28110F718, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1E0]);
    sub_20CD62D54();
    (*(v10 + 16))(v8, v12, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA0, &qword_20CD64720);
    sub_20CD63344();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20CD1B380(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_20CD62B44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15[0] = a3;
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E50, &qword_20CD64660);
    return sub_20CD63334();
  }

  else if (a2 >> 60 == 15)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E50, &qword_20CD64660);
    return sub_20CD63344();
  }

  else
  {
    sub_20CD1CF44(a1, a2);
    sub_20CD1DF2C(&qword_28110F750, MEMORY[0x277D0A038], MEMORY[0x277D0A030]);
    sub_20CD62D54();
    (*(v10 + 16))(v8, v12, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E50, &qword_20CD64660);
    sub_20CD63344();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20CD1B608(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_20CD62534();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_20CD1CFE4(v4, v8);
}

uint64_t sub_20CD1B6B4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v7 = sub_20CD631B4();
  __swift_project_value_buffer(v7, qword_28110F878);
  v8 = a1;
  v9 = sub_20CD63194();
  v10 = sub_20CD633B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_20CD635D4();
    v15 = sub_20CD6153C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20CCEA000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F3115B0](v12, -1, -1);
    MEMORY[0x20F3115B0](v11, -1, -1);
  }

  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_20CD63334();
}

uint64_t sub_20CD1B860(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CD1DFA8;

  return v6(a1);
}

uint64_t sub_20CD1B958(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CD1BA50;

  return v6(a1);
}

uint64_t sub_20CD1BA50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CD1BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_20CD1DFB0;

  return sub_20CCF92D8(a2, a3, a4, a5);
}

uint64_t sub_20CD1BC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_20CD1BCB8;

  return sub_20CCF9D80(a2, a3, a4, a5);
}

uint64_t sub_20CD1BCB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20CD1BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_20CD1DFB0;

  return sub_20CCFA828(a2, a3, a4, a5);
}

uint64_t sub_20CD1BE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
    v3 = sub_20CD63494();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20CD63624();

      sub_20CD63284();
      result = sub_20CD63644();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20CD63594();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20CD1C0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD1C108(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCEE040;

  return sub_20CD17608(a1, a2);
}

uint64_t sub_20CD1C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CCEE040;

  return sub_20CD176B4(a1, a2, a3);
}

uint64_t sub_20CD1C264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CCEE040;

  return sub_20CD17964(a1, a2, a3);
}

uint64_t sub_20CD1C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CCEE040;

  return sub_20CD17C14(a1, a2, a3);
}

uint64_t sub_20CD1C3CC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CCEE040;

  return sub_20CD17EC4(a1, a2, v2);
}

uint64_t sub_20CD1C474(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CCEE040;

  return sub_20CD18098(a1, a2, v2);
}

unint64_t sub_20CD1C520()
{
  result = qword_28110F190;
  if (!qword_28110F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D98, &qword_20CD64450);
    sub_20CD1DF2C(&qword_28110F788, MEMORY[0x277D09F70], MEMORY[0x277D09F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F190);
  }

  return result;
}

uint64_t sub_20CD1C5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20CCEE040;

  return sub_20CD182E0(a1, a2, a3);
}

uint64_t sub_20CD1C688()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CCEE040;

  return sub_20CD18398();
}

uint64_t type metadata accessor for SnapshotServiceListener(uint64_t a1)
{
  result = qword_28110F840;
  if (!qword_28110F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD1C774(uint64_t a1)
{
  result = type metadata accessor for SnapshotProcessor(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SnapshotRetriver(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20CD1C87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CD1C8DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CCEE040;

  return sub_20CD1BDC8(a1, a2, v6, v7, v8);
}

uint64_t sub_20CD1C9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD1CA14(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62994() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CCEE040;

  return sub_20CCFD548(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_20CD1CB9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCEE040;

  return sub_20CD1B958(a1, v4);
}

uint64_t sub_20CD1CC54(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CCEE040;

  return sub_20CCED820(a1, v1);
}

uint64_t sub_20CD1CCF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CCEE040;

  return sub_20CCED738(a1, v1);
}

uint64_t sub_20CD1CD98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_20CD1CDEC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DF0, &qword_20CD649E0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E00, &unk_20CD64598) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_20CD1A654(a1, v7, v8, v1 + v4, v9);
}

unint64_t sub_20CD1CEF0()
{
  result = qword_27C8110E0;
  if (!qword_27C8110E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8110E0);
  }

  return result;
}

uint64_t sub_20CD1CF44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CD1CFE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20CD1CD98(result, a2);
  }

  return result;
}

uint64_t sub_20CD1CFF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CCED908;

  return sub_20CD1BC00(a1, a2, v6, v7, v8);
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for SnapshotRetriver(0) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v13 = sub_20CD626F4();
  (*(*(v13 - 8) + 8))(v1 + v5, v13);
  __swift_destroy_boxed_opaque_existential_0((v1 + v5 + v3[7]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v5 + v3[8]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v5 + v3[9]));
  __swift_destroy_boxed_opaque_existential_0((v1 + v5 + v3[10]));
  (*(v8 + 8))(v1 + v10, v7);

  return MEMORY[0x2821FE8E8](v1, v12 + 8, v11 | 7);
}

uint64_t sub_20CD1D284(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62D24() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CCEE040;

  return sub_20CCFC40C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_20CD1D40C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCEE040;

  return sub_20CD1B860(a1, v4);
}

void sub_20CD1D4D0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E40, &qword_20CD64640) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E50, &qword_20CD64660) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_20CD1ABBC(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_20CD1D5FC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CCEE040;

  return sub_20CD1BB48(a1, a2, v6, v7, v8);
}

uint64_t sub_20CD1D6CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20CD62EA4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CCEE040;

  return sub_20CCFB2D0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_20CD1D854(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CCEE040;

  return sub_20CD1B860(a1, v4);
}

uint64_t sub_20CD1D90C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CCED908;

  return sub_20CCED820(a1, v1);
}

uint64_t sub_20CD1D9A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CD1DA10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CD1DA70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_48Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = *(v8 + 64);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v10 + v11 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v9 | v14;
  sub_20CD1CD98(*(v4 + 16), *(v4 + 24));
  (*(v8 + 8))(v4 + v10, v7);
  (*(v13 + 8))(v4 + v15, v12);

  return MEMORY[0x2821FE8E8](v4, v15 + v16, v17 | 7);
}

void sub_20CD1DC1C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E90, &qword_20CD64700) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA0, &qword_20CD64720) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_20CD1A908(a1, v7, v8, v1 + v4, v9);
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_51Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20CD1DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_20CD1DF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CD1DFD8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_20CD1DFF8, v1, 0);
}

uint64_t sub_20CD1E020()
{
  sub_20CD62EF4();
  sub_20CD28FD4(&qword_28110F680, MEMORY[0x277D0A558], MEMORY[0x277D0A550]);
  v1 = sub_20CD62D44();
  v0[6] = v1;
  v0[7] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[5];
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v7 = v0;
  v7[1] = sub_20CD1E1D4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65970, sub_20CD2901C, v6, v8);
}

uint64_t sub_20CD1E1D4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_20CD1E358;
  }

  else
  {

    v2 = sub_20CD1E2F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD1E2F0()
{
  sub_20CD1CD98(v0[6], v0[7]);
  v1 = v0[2];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_20CD1E358()
{
  sub_20CD1CD98(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CD1E3C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CD62954();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB8, &qword_20CD64810);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_20CD629A4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_20CD62B44();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EC0, &qword_20CD64818);
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_20CD62E74();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = sub_20CD62BC4();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EC8, &qword_20CD64820);
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = sub_20CD62E94();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v12 = sub_20CD62F24();
  v2[33] = v12;
  v2[34] = *(v12 - 8);
  v2[35] = swift_task_alloc();
  v13 = sub_20CD62AB4();
  v2[36] = v13;
  v2[37] = *(v13 - 8);
  v2[38] = swift_task_alloc();
  v14 = sub_20CD62C54();
  v2[39] = v14;
  v2[40] = *(v14 - 8);
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD1E8B8, v1, 0);
}

uint64_t sub_20CD1E8B8()
{
  if (qword_28110F1A0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = v0[40];
    v1 = v0[41];
    v3 = v0[39];
    v4 = v0[2];
    v5 = sub_20CD631B4();
    __swift_project_value_buffer(v5, qword_28110F878);
    (*(v2 + 16))(v1, v4, v3);
    v6 = sub_20CD63194();
    v7 = sub_20CD633D4();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[39];
    if (v8)
    {
      v13 = v0[37];
      v12 = v0[38];
      v38 = v0[36];
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      sub_20CD62BF4();
      v15 = sub_20CD62AA4();
      (*(v13 + 8))(v12, v38);
      (*(v10 + 8))(v9, v11);
      *(v14 + 4) = v15;
      _os_log_impl(&dword_20CCEA000, v6, v7, "Saving workout container for %lld", v14, 0xCu);
      MEMORY[0x20F3115B0](v14, -1, -1);
    }

    else
    {
      (*(v10 + 8))(v0[41], v0[39]);
    }

    v17 = v0[34];
    v16 = v0[35];
    v18 = v0[33];

    sub_20CD62C24();
    sub_20CD28FD4(&qword_28110F668, MEMORY[0x277D0A578], MEMORY[0x277D0A570]);
    v19 = sub_20CD62F54();
    (*(v17 + 8))(v16, v18);
    v20 = *(v19 + 16);
    if (!v20)
    {
      break;
    }

    v21 = v0[26];
    v22 = v0[23];
    v40 = MEMORY[0x277D84F90];
    sub_20CD46C08(0, v20, 0);
    v23 = 0;
    v24 = v40;
    v39 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    while (v23 < *(v19 + 16))
    {
      v25 = v0[27];
      (*(v22 + 16))(v0[24], v39 + *(v22 + 72) * v23, v0[22]);
      sub_20CD20128(v25);
      (*(v22 + 8))(v0[24], v0[22]);
      v27 = *(v40 + 16);
      v26 = *(v40 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_20CD46C08((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      v28 = v0[27];
      v29 = v0[25];
      *(v40 + 16) = v27 + 1;
      (*(v21 + 32))(v40 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v27, v28, v29);
      if (v20 == v23)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v24 = MEMORY[0x277D84F90];
LABEL_13:
  v0[42] = v24;
  v30 = v0[32];
  v31 = v0[28];
  v32 = v0[29];
  v33 = *MEMORY[0x277D0A430];
  v34 = *(v32 + 104);
  v0[43] = v34;
  v0[44] = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34(v30, v33, v31);
  v35 = swift_task_alloc();
  v0[45] = v35;
  *v35 = v0;
  v35[1] = sub_20CD1EDE0;
  v36 = v0[32];

  return sub_20CD217FC(v24, v36);
}

uint64_t sub_20CD1EDE0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v2[46] = v0;

  v6 = *(v4 + 8);
  v2[47] = v6;
  v2[48] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  v7 = v2[3];
  if (v0)
  {
    v8 = sub_20CD1FDA4;
  }

  else
  {
    v8 = sub_20CD1EF98;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_20CD1EF98()
{
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  sub_20CD62C14();
  sub_20CD28FD4(&qword_28110F698, MEMORY[0x277D0A410], MEMORY[0x277D0A408]);
  v7 = sub_20CD62F54();
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v9(v4, v6);
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v45 = MEMORY[0x277D84F90];
    sub_20CD46BC8(0, v10, 0);
    v13 = *(v7 + 16);
    if (!v13)
    {
      goto LABEL_20;
    }

    v44 = v10;
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v2 = v12 + 8;
    v15 = *(v0 + 368);
    v16 = *(v12 + 16);
    v12 += 16;
    v8 = v16;
    v17 = *(v0 + 144);
    v43 = *(v12 + 56);
    v16(*(v0 + 120), v7 + v14, *(v0 + 104));
    sub_20CD208C4(v17);
    v18 = *(v12 - 8);
    if (v15)
    {
      v18(*(v0 + 120), *(v0 + 104));

      v19 = *(v0 + 8);

      return v19();
    }

    v37 = v14;
    v3 = v11;
    v18(*(v0 + 120), *(v0 + 104));
    v1 = *(v45 + 16);
    v13 = *(v45 + 24);
    v10 = v1 + 1;
    v42 = v18;
    v22 = v45;
    if (v1 >= v13 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v23 = *(v0 + 144);
      v24 = *(v0 + 128);
      *(v22 + 16) = v10;
      v25 = v22;
      v41 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v39 = *(v3 + 32);
      v40 = *(v3 + 72);
      v39(v22 + v41 + v40 * v1, v23, v24);
      if (v44 == 1)
      {
        break;
      }

      v1 = v7 + v43 + v37;
      v3 = 1;
      v38 = v12;
      while (1)
      {
        v13 = *(v7 + 16);
        if (v3 >= v13)
        {
          break;
        }

        v28 = *(v0 + 144);
        v8(*(v0 + 120), v1, *(v0 + 104));
        sub_20CD208C4(v28);
        v29 = v7;
        v30 = v8;
        v31 = v2;
        v42(*(v0 + 120), *(v0 + 104));
        v32 = v25;
        v45 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        v10 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          sub_20CD46BC8((v33 > 1), v34 + 1, 1);
          v32 = v25;
        }

        ++v3;
        v35 = *(v0 + 144);
        v36 = *(v0 + 128);
        *(v32 + 16) = v10;
        v25 = v32;
        v39(v32 + v41 + v40 * v34, v35, v36);
        v1 += v43;
        v2 = v31;
        v8 = v30;
        v7 = v29;
        v12 = v38;
        if (v44 == v3)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_20CD46BC8((v13 > 1), v10, 1);
      v22 = v45;
    }

LABEL_10:

    v21 = v25;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v21;
  (*(v0 + 344))(*(v0 + 248), *MEMORY[0x277D0A428], *(v0 + 224));
  v26 = swift_task_alloc();
  *(v0 + 400) = v26;
  *v26 = v0;
  v26[1] = sub_20CD1F480;
  v27 = *(v0 + 248);

  return sub_20CD2271C(v21, v27);
}

uint64_t sub_20CD1F480()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 224);
  *(*v1 + 408) = v0;

  v3(v4, v5);

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_20CD1FED0;
  }

  else
  {
    v7 = sub_20CD1F634;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_20CD1F634()
{
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  sub_20CD62C34();
  sub_20CD28FD4(&qword_28110F7A0, MEMORY[0x277D09F28], MEMORY[0x277D09F20]);
  v7 = sub_20CD62F54();
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v9(v4, v6);
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v45 = MEMORY[0x277D84F90];
    sub_20CD46B88(0, v10, 0);
    v13 = *(v7 + 16);
    if (!v13)
    {
      goto LABEL_20;
    }

    v44 = v10;
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v2 = v12 + 8;
    v15 = *(v0 + 408);
    v16 = *(v12 + 16);
    v12 += 16;
    v8 = v16;
    v17 = *(v0 + 72);
    v43 = *(v12 + 56);
    v16(*(v0 + 48), v7 + v14, *(v0 + 32));
    sub_20CD21060(v17);
    v18 = *(v12 - 8);
    if (v15)
    {
      v18(*(v0 + 48), *(v0 + 32));

      v19 = *(v0 + 8);

      return v19();
    }

    v37 = v14;
    v3 = v11;
    v18(*(v0 + 48), *(v0 + 32));
    v1 = *(v45 + 16);
    v13 = *(v45 + 24);
    v10 = v1 + 1;
    v42 = v18;
    v22 = v45;
    if (v1 >= v13 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v23 = *(v0 + 72);
      v24 = *(v0 + 56);
      *(v22 + 16) = v10;
      v25 = v22;
      v41 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v39 = *(v3 + 32);
      v40 = *(v3 + 72);
      v39(v22 + v41 + v40 * v1, v23, v24);
      if (v44 == 1)
      {
        break;
      }

      v1 = v7 + v43 + v37;
      v3 = 1;
      v38 = v12;
      while (1)
      {
        v13 = *(v7 + 16);
        if (v3 >= v13)
        {
          break;
        }

        v28 = *(v0 + 72);
        v8(*(v0 + 48), v1, *(v0 + 32));
        sub_20CD21060(v28);
        v29 = v7;
        v30 = v8;
        v31 = v2;
        v42(*(v0 + 48), *(v0 + 32));
        v32 = v25;
        v45 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        v10 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          sub_20CD46B88((v33 > 1), v34 + 1, 1);
          v32 = v25;
        }

        ++v3;
        v35 = *(v0 + 72);
        v36 = *(v0 + 56);
        *(v32 + 16) = v10;
        v25 = v32;
        v39(v32 + v41 + v40 * v34, v35, v36);
        v1 += v43;
        v2 = v31;
        v8 = v30;
        v7 = v29;
        v12 = v38;
        if (v44 == v3)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_20CD46B88((v13 > 1), v10, 1);
      v22 = v45;
    }

LABEL_10:

    v21 = v25;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *(v0 + 416) = v21;
  (*(v0 + 344))(*(v0 + 240), *MEMORY[0x277D0A420], *(v0 + 224));
  v26 = swift_task_alloc();
  *(v0 + 424) = v26;
  *v26 = v0;
  v26[1] = sub_20CD1FB1C;
  v27 = *(v0 + 240);

  return sub_20CD23760(v21, v27);
}

uint64_t sub_20CD1FB1C()
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 224);
  v5 = *v1;
  v5[54] = v0;

  v2(v3, v4);

  if (v0)
  {
    v6 = v5[3];

    return MEMORY[0x2822009F8](sub_20CD1FFFC, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_20CD1FDA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD1FED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD1FFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD20128@<X0>(uint64_t a1@<X8>)
{
  v46[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EF8, &qword_20CD64860);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = v46 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F00, &qword_20CD64868);
  v53 = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](v63);
  v59 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v46 - v6;
  v54 = sub_20CD62DF4();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v60 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v9 = MEMORY[0x28223BE20](v62);
  v55 = (v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v49 = v46 - v11;
  v12 = sub_20CD62AB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v57);
  v20 = v46 - v19;
  v21 = sub_20CD62BC4();
  v22 = sub_20CD28FD4(&qword_28110F720, MEMORY[0x277D0A1E8], MEMORY[0x277D0A1D8]);
  sub_20CD62C84();
  v58 = v1;
  v56 = v21;
  v48 = v22;
  sub_20CD62C64();
  sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  v23 = v16;
  result = sub_20CD63224();
  if (result)
  {
    v25 = *(v13 + 32);
    v26 = v49;
    v25(v49, v18, v12);
    v27 = v62;
    v25((v26 + *(v62 + 12)), v23, v12);
    v28 = v55;
    sub_20CCF3CB0(v26, v55);
    v47 = *(v27 + 48);
    v25(v20, v28, v12);
    v29 = *(v13 + 8);
    v29(v28 + v47, v12);
    sub_20CD28D8C(v26, v28);
    v30 = *(v62 + 12);
    v31 = *(v57 + 36);
    v62 = v20;
    v25(&v20[v31], v28 + v30, v12);
    v29(v28, v12);
    result = sub_20CD62CA4();
    v32 = result;
    v58 = *(result + 16);
    if (!v58)
    {
LABEL_14:

      sub_20CD28FD4(&qword_28110F6A0, MEMORY[0x277D0A3E0], MEMORY[0x277D0A3D8]);
      return sub_20CD62D84();
    }

    v33 = 0;
    v56 = v7 + 16;
    v57 = v7 + 8;
    v34 = v54;
    v55 = (v53 + 48);
    v35 = (v53 + 32);
    v36 = MEMORY[0x277D84F90];
    v37 = v50;
    v51 = v7;
    while (v33 < *(v32 + 16))
    {
      v38 = v60;
      (*(v7 + 16))(v60, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v34);
      v39 = v61;
      v40 = v37;
      sub_20CD27D20(v61);
      if (v37)
      {

        (*v57)(v38, v34);
        sub_20CD1DA10(v62, &qword_27C810D08, &qword_20CD64280);
      }

      (*v57)(v38, v34);
      v41 = v63;
      if ((*v55)(v39, 1, v63) == 1)
      {
        result = sub_20CD1DA10(v39, &qword_27C810EF8, &qword_20CD64860);
      }

      else
      {
        v42 = *v35;
        v43 = v52;
        (*v35)(v52, v39, v41);
        v42(v59, v43, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_20CD528A8(0, v36[2] + 1, 1, v36);
        }

        v45 = v36[2];
        v44 = v36[3];
        if (v45 >= v44 >> 1)
        {
          v36 = sub_20CD528A8((v44 > 1), v45 + 1, 1, v36);
        }

        v36[2] = v45 + 1;
        result = (v42)(v36 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, v59, v63);
        v37 = v40;
        v34 = v54;
        v7 = v51;
      }

      if (v58 == ++v33)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20CD208C4@<X0>(uint64_t a1@<X8>)
{
  v46[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EE8, &qword_20CD64850);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = v46 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EF0, &qword_20CD64858);
  v53 = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](v63);
  v59 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v46 - v6;
  v54 = sub_20CD62CF4();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v60 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v9 = MEMORY[0x28223BE20](v62);
  v55 = (v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v49 = v46 - v11;
  v12 = sub_20CD62AB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v57);
  v20 = v46 - v19;
  v21 = sub_20CD62B44();
  v22 = sub_20CD28FD4(&qword_28110F758, MEMORY[0x277D0A038], MEMORY[0x277D0A028]);
  sub_20CD62C84();
  v58 = v1;
  v56 = v21;
  v48 = v22;
  sub_20CD62C64();
  sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  v23 = v16;
  result = sub_20CD63224();
  if (result)
  {
    v25 = *(v13 + 32);
    v26 = v49;
    v25(v49, v18, v12);
    v27 = v62;
    v25((v26 + *(v62 + 12)), v23, v12);
    v28 = v55;
    sub_20CCF3CB0(v26, v55);
    v47 = *(v27 + 48);
    v25(v20, v28, v12);
    v29 = *(v13 + 8);
    v29(v28 + v47, v12);
    sub_20CD28D8C(v26, v28);
    v30 = *(v62 + 12);
    v31 = *(v57 + 36);
    v62 = v20;
    v25(&v20[v31], v28 + v30, v12);
    v29(v28, v12);
    result = sub_20CD62CA4();
    v32 = result;
    v58 = *(result + 16);
    if (!v58)
    {
LABEL_14:

      sub_20CD28FD4(&qword_28110F6F8, MEMORY[0x277D0A318], MEMORY[0x277D0A310]);
      return sub_20CD62D84();
    }

    v33 = 0;
    v56 = v7 + 16;
    v57 = v7 + 8;
    v34 = v54;
    v55 = (v53 + 48);
    v35 = (v53 + 32);
    v36 = MEMORY[0x277D84F90];
    v37 = v50;
    v51 = v7;
    while (v33 < *(v32 + 16))
    {
      v38 = v60;
      (*(v7 + 16))(v60, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v34);
      v39 = v61;
      v40 = v37;
      sub_20CD274D0(v61);
      if (v37)
      {

        (*v57)(v38, v34);
        sub_20CD1DA10(v62, &qword_27C810D08, &qword_20CD64280);
      }

      (*v57)(v38, v34);
      v41 = v63;
      if ((*v55)(v39, 1, v63) == 1)
      {
        result = sub_20CD1DA10(v39, &qword_27C810EE8, &qword_20CD64850);
      }

      else
      {
        v42 = *v35;
        v43 = v52;
        (*v35)(v52, v39, v41);
        v42(v59, v43, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_20CD52884(0, v36[2] + 1, 1, v36);
        }

        v45 = v36[2];
        v44 = v36[3];
        if (v45 >= v44 >> 1)
        {
          v36 = sub_20CD52884((v44 > 1), v45 + 1, 1, v36);
        }

        v36[2] = v45 + 1;
        result = (v42)(v36 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, v59, v63);
        v37 = v40;
        v34 = v54;
        v7 = v51;
      }

      if (v58 == ++v33)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20CD21060@<X0>(uint64_t a1@<X8>)
{
  v46[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810ED0, &qword_20CD64840);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = v46 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810ED8, &qword_20CD64848);
  v53 = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](v63);
  v59 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v46 - v6;
  v54 = sub_20CD62984();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v60 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v9 = MEMORY[0x28223BE20](v62);
  v55 = (v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v49 = v46 - v11;
  v12 = sub_20CD62AB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v57);
  v20 = v46 - v19;
  v21 = sub_20CD62954();
  v22 = sub_20CD28FD4(&qword_28110F7C8, MEMORY[0x277D09EE0], MEMORY[0x277D09ED0]);
  sub_20CD62C84();
  v58 = v1;
  v56 = v21;
  v48 = v22;
  sub_20CD62C64();
  sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
  v23 = v16;
  result = sub_20CD63224();
  if (result)
  {
    v25 = *(v13 + 32);
    v26 = v49;
    v25(v49, v18, v12);
    v27 = v62;
    v25((v26 + *(v62 + 12)), v23, v12);
    v28 = v55;
    sub_20CCF3CB0(v26, v55);
    v47 = *(v27 + 48);
    v25(v20, v28, v12);
    v29 = *(v13 + 8);
    v29(v28 + v47, v12);
    sub_20CD28D8C(v26, v28);
    v30 = *(v62 + 12);
    v31 = *(v57 + 36);
    v62 = v20;
    v25(&v20[v31], v28 + v30, v12);
    v29(v28, v12);
    result = sub_20CD62CA4();
    v32 = result;
    v58 = *(result + 16);
    if (!v58)
    {
LABEL_14:

      sub_20CD28FD4(&qword_28110F7B0, MEMORY[0x277D09F08], MEMORY[0x277D09F00]);
      return sub_20CD62D84();
    }

    v33 = 0;
    v56 = v7 + 16;
    v57 = v7 + 8;
    v34 = v54;
    v55 = (v53 + 48);
    v35 = (v53 + 32);
    v36 = MEMORY[0x277D84F90];
    v37 = v50;
    v51 = v7;
    while (v33 < *(v32 + 16))
    {
      v38 = v60;
      (*(v7 + 16))(v60, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v34);
      v39 = v61;
      v40 = v37;
      sub_20CD26C80(v61);
      if (v37)
      {

        (*v57)(v38, v34);
        sub_20CD1DA10(v62, &qword_27C810D08, &qword_20CD64280);
      }

      (*v57)(v38, v34);
      v41 = v63;
      if ((*v55)(v39, 1, v63) == 1)
      {
        result = sub_20CD1DA10(v39, &qword_27C810ED0, &qword_20CD64840);
      }

      else
      {
        v42 = *v35;
        v43 = v52;
        (*v35)(v52, v39, v41);
        v42(v59, v43, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_20CD52860(0, v36[2] + 1, 1, v36);
        }

        v45 = v36[2];
        v44 = v36[3];
        if (v45 >= v44 >> 1)
        {
          v36 = sub_20CD52860((v44 > 1), v45 + 1, 1, v36);
        }

        v36[2] = v45 + 1;
        result = (v42)(v36 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, v59, v63);
        v37 = v40;
        v34 = v54;
        v7 = v51;
      }

      if (v58 == ++v33)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20CD217FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3[6] = swift_task_alloc();
  v4 = sub_20CD62AB4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_20CD62E94();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_20CD62654();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EC8, &qword_20CD64820);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD21A4C, v2, 0);
}

uint64_t sub_20CD21A4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = *(v3 + 64);
    *(v0 + 272) = v6;
    *(v0 + 192) = *(v3 + 56);
    *(v0 + 200) = v5;
    v7 = *(v0 + 176);
    *(v0 + 208) = 0;
    *(v0 + 216) = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v4);
    sub_20CD62644();
    sub_20CD28F80(&qword_28110F6B0, &qword_27C810EC8, &qword_20CD64820);
    *(v0 + 224) = sub_20CD62D44();
    *(v0 + 232) = v8;
    *(v0 + 240) = *(*(v0 + 32) + 112);

    return MEMORY[0x2822009F8](sub_20CD21CC4, 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20CD21CC4()
{
  v1 = *(v0 + 240);
  v7 = *(v0 + 224);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_20CD21DD0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000017, 0x800000020CD65950, sub_20CD29028, v3, v5);
}

uint64_t sub_20CD21DD0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_20CD22700;
  }

  else
  {
    v2 = sub_20CD21F04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD21F20()
{
  v85 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v74 = *(v0 + 168);
  v3 = *(v0 + 144);
  v80 = *(v0 + 128);
  v82 = *(v0 + 136);
  v4 = *(v0 + 112);
  v76 = *(v0 + 160);
  v78 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 24);
  v9 = sub_20CD631B4();
  __swift_project_value_buffer(v9, qword_28110F878);
  (*(v5 + 16))(v6, v8, v7);
  v1(v74, v2, v3);
  v1(v76, v2, v3);
  (*(v4 + 16))(v80, v82, v78);
  v10 = sub_20CD63194();
  v11 = sub_20CD633D4();
  v81 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v77 = *(v0 + 232);
  v75 = *(v0 + 224);
  v13 = *(v0 + 168);
  v83 = *(v0 + 176);
  v14 = *(v0 + 144);
  v79 = *(v0 + 136);
  v73 = *(v0 + 128);
  if (v12)
  {
    v66 = *(v0 + 120);
    v67 = *(v0 + 112);
    v15 = *(v0 + 96);
    v68 = *(v0 + 104);
    v16 = *(v0 + 88);
    v70 = *(v0 + 80);
    v72 = *(v0 + 152);
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);
    v59 = *(v0 + 56);
    v60 = *(v0 + 72);
    v63 = *(v0 + 160);
    v64 = *(v0 + 40);
    v19 = *(v0 + 144);
    v20 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v84[0] = v69;
    *v20 = 136315906;
    v21 = sub_20CD62E84();
    type = v11;
    v23 = v22;
    (*(v16 + 8))(v15, v70);
    v24 = sub_20CD6153C(v21, v23, v84);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_20CD62D94();
    v61 = *(v17 + 16);
    v61(v60, v18, v59);
    sub_20CD1DA10(v18, &qword_27C810D08, &qword_20CD64280);
    v71 = *(v72 + 8);
    v25 = v13;
    v26 = v19;
    v71(v25, v19);
    sub_20CD28FD4(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v27 = sub_20CD63574();
    v29 = v28;
    v30 = *(v17 + 8);
    v30(v60, v59);
    v31 = sub_20CD6153C(v27, v29, v84);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2080;
    v62 = v26;
    sub_20CD62D94();
    v61(v60, v18 + *(v64 + 36), v59);
    sub_20CD1DA10(v18, &qword_27C810D08, &qword_20CD64280);
    v71(v63, v26);
    v32 = sub_20CD63574();
    v34 = v33;
    v30(v60, v59);
    v35 = sub_20CD6153C(v32, v34, v84);

    *(v20 + 24) = v35;
    *(v20 + 32) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v37 = v36;
    v38 = *(v67 + 8);
    v38(v66, v68);
    v38(v73, v68);
    *(v20 + 34) = v37;
    _os_log_impl(&dword_20CCEA000, v81, type, "Saved %s container for %s -> %s in %fs", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v69, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);
    sub_20CD1CD98(v75, v77);

    v38(v79, v68);
    v71(v83, v62);
  }

  else
  {
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);
    v41 = *(v0 + 88);
    v42 = *(v0 + 96);
    v43 = *(v0 + 80);
    v44 = *(*(v0 + 152) + 8);
    v44(*(v0 + 160), v14);
    v44(v13, v14);
    sub_20CD1CD98(v75, v77);

    v45 = *(v40 + 8);
    v45(v73, v39);
    (*(v41 + 8))(v42, v43);
    v45(v79, v39);
    v44(v83, v14);
  }

  v46 = *(v0 + 208) + 1;
  if (v46 == *(v0 + 184))
  {

    v47 = *(v0 + 8);
LABEL_10:

    return v47();
  }

  v48 = *(v0 + 264);
  v49 = *(v0 + 200);
  v50 = *(v0 + 176);
  v51 = *(v0 + 144);
  v52 = *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 192) * v46;
  v53 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 208) = v46;
  *(v0 + 216) = v53;
  v49(v50, v52, v51);
  sub_20CD62644();
  sub_20CD28F80(&qword_28110F6B0, &qword_27C810EC8, &qword_20CD64820);
  *(v0 + 224) = sub_20CD62D44();
  *(v0 + 232) = v54;
  if (v48)
  {
    v55 = *(v0 + 176);
    v56 = *(v0 + 152);
    v57 = *(v0 + 144);
    (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
    (*(v56 + 8))(v55, v57);

    v47 = *(v0 + 8);
    goto LABEL_10;
  }

  *(v0 + 240) = *(*(v0 + 32) + 112);

  return MEMORY[0x2822009F8](sub_20CD21CC4, 0, 0);
}

uint64_t sub_20CD2271C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3[6] = swift_task_alloc();
  v4 = sub_20CD62AB4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_20CD62E94();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_20CD62654();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EC0, &qword_20CD64818);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2296C, v2, 0);
}

uint64_t sub_20CD2296C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = *(v3 + 64);
    *(v0 + 272) = v6;
    *(v0 + 192) = *(v3 + 56);
    *(v0 + 200) = v5;
    v7 = *(v0 + 176);
    *(v0 + 208) = 0;
    *(v0 + 216) = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v4);
    sub_20CD62644();
    sub_20CD28F80(&qword_28110F6B8, &qword_27C810EC0, &qword_20CD64818);
    *(v0 + 224) = sub_20CD62D44();
    *(v0 + 232) = v8;
    *(v0 + 240) = *(*(v0 + 32) + 112);

    return MEMORY[0x2822009F8](sub_20CD22BE4, 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20CD22BE4()
{
  v1 = *(v0 + 240);
  v7 = *(v0 + 224);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_20CD22CF0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000017, 0x800000020CD65950, sub_20CD29028, v3, v5);
}

uint64_t sub_20CD22CF0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_20CD23620;
  }

  else
  {
    v2 = sub_20CD22E24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD22E40()
{
  v85 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v74 = *(v0 + 168);
  v3 = *(v0 + 144);
  v80 = *(v0 + 128);
  v82 = *(v0 + 136);
  v4 = *(v0 + 112);
  v76 = *(v0 + 160);
  v78 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 24);
  v9 = sub_20CD631B4();
  __swift_project_value_buffer(v9, qword_28110F878);
  (*(v5 + 16))(v6, v8, v7);
  v1(v74, v2, v3);
  v1(v76, v2, v3);
  (*(v4 + 16))(v80, v82, v78);
  v10 = sub_20CD63194();
  v11 = sub_20CD633D4();
  v81 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v77 = *(v0 + 232);
  v75 = *(v0 + 224);
  v13 = *(v0 + 168);
  v83 = *(v0 + 176);
  v14 = *(v0 + 144);
  v79 = *(v0 + 136);
  v73 = *(v0 + 128);
  if (v12)
  {
    v66 = *(v0 + 120);
    v67 = *(v0 + 112);
    v15 = *(v0 + 96);
    v68 = *(v0 + 104);
    v16 = *(v0 + 88);
    v70 = *(v0 + 80);
    v72 = *(v0 + 152);
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);
    v59 = *(v0 + 56);
    v60 = *(v0 + 72);
    v63 = *(v0 + 160);
    v64 = *(v0 + 40);
    v19 = *(v0 + 144);
    v20 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v84[0] = v69;
    *v20 = 136315906;
    v21 = sub_20CD62E84();
    type = v11;
    v23 = v22;
    (*(v16 + 8))(v15, v70);
    v24 = sub_20CD6153C(v21, v23, v84);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_20CD62D94();
    v61 = *(v17 + 16);
    v61(v60, v18, v59);
    sub_20CD1DA10(v18, &qword_27C810D08, &qword_20CD64280);
    v71 = *(v72 + 8);
    v25 = v13;
    v26 = v19;
    v71(v25, v19);
    sub_20CD28FD4(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v27 = sub_20CD63574();
    v29 = v28;
    v30 = *(v17 + 8);
    v30(v60, v59);
    v31 = sub_20CD6153C(v27, v29, v84);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2080;
    v62 = v26;
    sub_20CD62D94();
    v61(v60, v18 + *(v64 + 36), v59);
    sub_20CD1DA10(v18, &qword_27C810D08, &qword_20CD64280);
    v71(v63, v26);
    v32 = sub_20CD63574();
    v34 = v33;
    v30(v60, v59);
    v35 = sub_20CD6153C(v32, v34, v84);

    *(v20 + 24) = v35;
    *(v20 + 32) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v37 = v36;
    v38 = *(v67 + 8);
    v38(v66, v68);
    v38(v73, v68);
    *(v20 + 34) = v37;
    _os_log_impl(&dword_20CCEA000, v81, type, "Saved %s container for %s -> %s in %fs", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v69, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);
    sub_20CD1CD98(v75, v77);

    v38(v79, v68);
    v71(v83, v62);
  }

  else
  {
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);
    v41 = *(v0 + 88);
    v42 = *(v0 + 96);
    v43 = *(v0 + 80);
    v44 = *(*(v0 + 152) + 8);
    v44(*(v0 + 160), v14);
    v44(v13, v14);
    sub_20CD1CD98(v75, v77);

    v45 = *(v40 + 8);
    v45(v73, v39);
    (*(v41 + 8))(v42, v43);
    v45(v79, v39);
    v44(v83, v14);
  }

  v46 = *(v0 + 208) + 1;
  if (v46 == *(v0 + 184))
  {

    v47 = *(v0 + 8);
LABEL_10:

    return v47();
  }

  v48 = *(v0 + 264);
  v49 = *(v0 + 200);
  v50 = *(v0 + 176);
  v51 = *(v0 + 144);
  v52 = *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 192) * v46;
  v53 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 208) = v46;
  *(v0 + 216) = v53;
  v49(v50, v52, v51);
  sub_20CD62644();
  sub_20CD28F80(&qword_28110F6B8, &qword_27C810EC0, &qword_20CD64818);
  *(v0 + 224) = sub_20CD62D44();
  *(v0 + 232) = v54;
  if (v48)
  {
    v55 = *(v0 + 176);
    v56 = *(v0 + 152);
    v57 = *(v0 + 144);
    (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
    (*(v56 + 8))(v55, v57);

    v47 = *(v0 + 8);
    goto LABEL_10;
  }

  *(v0 + 240) = *(*(v0 + 32) + 112);

  return MEMORY[0x2822009F8](sub_20CD22BE4, 0, 0);
}

uint64_t sub_20CD2363C()
{
  sub_20CD1CD98(v0[28], v0[29]);
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[18];
  (*(v0[14] + 8))(v0[17], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CD23760(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3[6] = swift_task_alloc();
  v4 = sub_20CD62AB4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_20CD62E94();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_20CD62654();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB8, &qword_20CD64810);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD239B0, v2, 0);
}

uint64_t sub_20CD239B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = *(v3 + 64);
    *(v0 + 272) = v6;
    *(v0 + 192) = *(v3 + 56);
    *(v0 + 200) = v5;
    v7 = *(v0 + 176);
    *(v0 + 208) = 0;
    *(v0 + 216) = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v4);
    sub_20CD62644();
    sub_20CD28F80(&qword_28110F6A8, &qword_27C810EB8, &qword_20CD64810);
    *(v0 + 224) = sub_20CD62D44();
    *(v0 + 232) = v8;
    *(v0 + 240) = *(*(v0 + 32) + 112);

    return MEMORY[0x2822009F8](sub_20CD23C28, 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20CD23C28()
{
  v1 = *(v0 + 240);
  v7 = *(v0 + 224);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_20CD23D34;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000017, 0x800000020CD65950, sub_20CD28F74, v3, v5);
}

uint64_t sub_20CD23D34()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_20CD22700;
  }

  else
  {
    v2 = sub_20CD23E68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD23E84()
{
  v85 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v74 = *(v0 + 168);
  v3 = *(v0 + 144);
  v80 = *(v0 + 128);
  v82 = *(v0 + 136);
  v4 = *(v0 + 112);
  v76 = *(v0 + 160);
  v78 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 24);
  v9 = sub_20CD631B4();
  __swift_project_value_buffer(v9, qword_28110F878);
  (*(v5 + 16))(v6, v8, v7);
  v1(v74, v2, v3);
  v1(v76, v2, v3);
  (*(v4 + 16))(v80, v82, v78);
  v10 = sub_20CD63194();
  v11 = sub_20CD633D4();
  v81 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v77 = *(v0 + 232);
  v75 = *(v0 + 224);
  v13 = *(v0 + 168);
  v83 = *(v0 + 176);
  v14 = *(v0 + 144);
  v79 = *(v0 + 136);
  v73 = *(v0 + 128);
  if (v12)
  {
    v66 = *(v0 + 120);
    v67 = *(v0 + 112);
    v15 = *(v0 + 96);
    v68 = *(v0 + 104);
    v16 = *(v0 + 88);
    v70 = *(v0 + 80);
    v72 = *(v0 + 152);
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);
    v59 = *(v0 + 56);
    v60 = *(v0 + 72);
    v63 = *(v0 + 160);
    v64 = *(v0 + 40);
    v19 = *(v0 + 144);
    v20 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v84[0] = v69;
    *v20 = 136315906;
    v21 = sub_20CD62E84();
    type = v11;
    v23 = v22;
    (*(v16 + 8))(v15, v70);
    v24 = sub_20CD6153C(v21, v23, v84);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_20CD62D94();
    v61 = *(v17 + 16);
    v61(v60, v18, v59);
    sub_20CD1DA10(v18, &qword_27C810D08, &qword_20CD64280);
    v71 = *(v72 + 8);
    v25 = v13;
    v26 = v19;
    v71(v25, v19);
    sub_20CD28FD4(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v27 = sub_20CD63574();
    v29 = v28;
    v30 = *(v17 + 8);
    v30(v60, v59);
    v31 = sub_20CD6153C(v27, v29, v84);

    *(v20 + 14) = v31;
    *(v20 + 22) = 2080;
    v62 = v26;
    sub_20CD62D94();
    v61(v60, v18 + *(v64 + 36), v59);
    sub_20CD1DA10(v18, &qword_27C810D08, &qword_20CD64280);
    v71(v63, v26);
    v32 = sub_20CD63574();
    v34 = v33;
    v30(v60, v59);
    v35 = sub_20CD6153C(v32, v34, v84);

    *(v20 + 24) = v35;
    *(v20 + 32) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v37 = v36;
    v38 = *(v67 + 8);
    v38(v66, v68);
    v38(v73, v68);
    *(v20 + 34) = v37;
    _os_log_impl(&dword_20CCEA000, v81, type, "Saved %s container for %s -> %s in %fs", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v69, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);
    sub_20CD1CD98(v75, v77);

    v38(v79, v68);
    v71(v83, v62);
  }

  else
  {
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);
    v41 = *(v0 + 88);
    v42 = *(v0 + 96);
    v43 = *(v0 + 80);
    v44 = *(*(v0 + 152) + 8);
    v44(*(v0 + 160), v14);
    v44(v13, v14);
    sub_20CD1CD98(v75, v77);

    v45 = *(v40 + 8);
    v45(v73, v39);
    (*(v41 + 8))(v42, v43);
    v45(v79, v39);
    v44(v83, v14);
  }

  v46 = *(v0 + 208) + 1;
  if (v46 == *(v0 + 184))
  {

    v47 = *(v0 + 8);
LABEL_10:

    return v47();
  }

  v48 = *(v0 + 264);
  v49 = *(v0 + 200);
  v50 = *(v0 + 176);
  v51 = *(v0 + 144);
  v52 = *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 192) * v46;
  v53 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 208) = v46;
  *(v0 + 216) = v53;
  v49(v50, v52, v51);
  sub_20CD62644();
  sub_20CD28F80(&qword_28110F6A8, &qword_27C810EB8, &qword_20CD64810);
  *(v0 + 224) = sub_20CD62D44();
  *(v0 + 232) = v54;
  if (v48)
  {
    v55 = *(v0 + 176);
    v56 = *(v0 + 152);
    v57 = *(v0 + 144);
    (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
    (*(v56 + 8))(v55, v57);

    v47 = *(v0 + 8);
    goto LABEL_10;
  }

  *(v0 + 240) = *(*(v0 + 32) + 112);

  return MEMORY[0x2822009F8](sub_20CD23C28, 0, 0);
}

uint64_t sub_20CD24664(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CD62AB4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD24724, v1, 0);
}

uint64_t sub_20CD24724()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_20CD631B4();
  __swift_project_value_buffer(v5, qword_28110F878);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = sub_20CD62AA4();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v13;
    _os_log_impl(&dword_20CCEA000, v6, v7, "Invalidate from %lld", v12, 0xCu);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {
    (*(v10 + 8))(v0[6], v0[4]);
  }

  v14 = v0[3];

  v0[7] = *(v14 + 112);

  return MEMORY[0x2822009F8](sub_20CD248D8, 0, 0);
}

uint64_t sub_20CD248D8()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_20CD249D0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000012, 0x800000020CD65930, sub_20CD28F6C, v3, v5);
}

uint64_t sub_20CD249D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_20CD24B50;
  }

  else
  {

    v2 = sub_20CD24AEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD24AEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD24B50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD24BE0()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_20CD631B4();
  __swift_project_value_buffer(v1, qword_28110F878);
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CCEA000, v2, v3, "List all snapshots cache indexes", v4, 2u);
    MEMORY[0x20F3115B0](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  *(v0 + 32) = *(v5 + 112);

  return MEMORY[0x2822009F8](sub_20CD24D08, 0, 0);
}

uint64_t sub_20CD24D08()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D98, &qword_20CD64450);
  *v3 = v0;
  v3[1] = sub_20CD24E10;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000020CD65910, sub_20CD28F64, v2, v4);
}

uint64_t sub_20CD24E10()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20CD24F48;
  }

  else
  {

    v2 = sub_20CD24F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD24F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD24FAC()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800);
  v1[4] = swift_task_alloc();
  v2 = sub_20CD631B4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_20CD62AB4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD25110, v0, 0);
}

uint64_t sub_20CD25110()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[5], qword_28110F878);
  v1 = sub_20CD63194();
  v2 = sub_20CD633D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20CCEA000, v1, v2, "Clean up", v3, 2u);
    MEMORY[0x20F3115B0](v3, -1, -1);
  }

  v4 = v0[2];

  v0[12] = *(v4 + 112);

  return MEMORY[0x2822009F8](sub_20CD25234, 0, 0);
}

uint64_t sub_20CD25234()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_20CD25320;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x2870556E61656C63, 0xE900000000000029, sub_20CD28F5C, v2, v4);
}

uint64_t sub_20CD25320()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20CD25634;
  }

  else
  {

    v2 = sub_20CD2543C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2543C()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_20CD254CC;

  return sub_20CD24BC0();
}

uint64_t sub_20CD254CC(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[2];

    return MEMORY[0x2822009F8](sub_20CD256C8, v6, 0);
  }
}

uint64_t sub_20CD25634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD256C8(uint64_t a1)
{
  v34 = v1;
  v2 = v1[17];
  if (*(v2 + 16) && (v4 = v1[10], v3 = v1[11], v5 = v1[9], sub_20CD62A54(), v6 = sub_20CD259DC(v3, v2), (*(v4 + 8))(v3, v5), !v6))
  {
    sub_20CD63024();

    v7 = sub_20CD63194();
    v8 = sub_20CD633B4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v1[17];
    v11 = v1[8];
    v12 = v1[5];
    v13 = v1[6];
    if (v9)
    {
      v31 = v1[5];
      v32 = v1[8];
      v14 = v1[4];
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v15 = 136315394;
      sub_20CD25AE8(v10, v14);
      v16 = sub_20CD63454();
      v18 = v17;
      sub_20CD1DA10(v14, &qword_27C810DE0, &unk_20CD64800);
      v19 = sub_20CD6153C(v16, v18, &v33);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      v20 = *(v2 + 16);

      *(v15 + 14) = v20;

      _os_log_impl(&dword_20CCEA000, v7, v8, "Missing beginning of time snapshot index. Min cache index = %s | Cache Indexes Count = %ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F3115B0](v30, -1, -1);
      MEMORY[0x20F3115B0](v15, -1, -1);

      v21 = *(v13 + 8);
      v21(v32, v31);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v21 = *(v13 + 8);
      v21(v11, v12);
    }

    sub_20CD63024();
    v22 = sub_20CD63194();
    v23 = sub_20CD633C4();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[7];
    v26 = v1[5];
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20CCEA000, v22, v23, "Missing beginning of time snapshot index", v27, 2u);
      MEMORY[0x20F3115B0](v27, -1, -1);
    }

    v21(v25, v26);
  }

  else
  {
  }

  v28 = v1[1];

  return v28();
}

BOOL sub_20CD259DC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_20CD62AB4();
    ++v2;
    sub_20CD28FD4(&qword_28110F770, MEMORY[0x277D09F70], MEMORY[0x277D09F88]);
  }

  while ((sub_20CD63234() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_20CD25AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CD62AB4();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
        v20 = sub_20CD63204();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_20CD25DB8()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_20CD631B4();
  __swift_project_value_buffer(v1, qword_28110F878);
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CCEA000, v2, v3, "Request database assertion", v4, 2u);
    MEMORY[0x20F3115B0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *(v0 + 24) = *(v5 + 112);

  return MEMORY[0x2822009F8](sub_20CD25EE0, 0, 0);
}

uint64_t sub_20CD25EE0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_20CD25FD4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD00000000000001ALL, 0x800000020CD658F0, sub_20CD28F54, v2, v4);
}

uint64_t sub_20CD25FD4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_20CD26108;
  }

  else
  {

    v2 = sub_20CD260F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD26108()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2618C()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_20CD631B4();
  v0[3] = __swift_project_value_buffer(v1, qword_28110F878);
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CCEA000, v2, v3, "Invalidate database assertion", v4, 2u);
    MEMORY[0x20F3115B0](v4, -1, -1);
  }

  v5 = v0[2];

  v0[4] = *(v5 + 112);

  return MEMORY[0x2822009F8](sub_20CD262B8, 0, 0);
}

uint64_t sub_20CD262B8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_20CD263AC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD00000000000001DLL, 0x800000020CD658D0, sub_20CD28F4C, v2, v4);
}

uint64_t sub_20CD263AC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20CD264DC;
  }

  else
  {

    v2 = sub_20CD264C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD264DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_20CD26548, v1, 0);
}

uint64_t sub_20CD26548()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_20CD63194();
  v4 = sub_20CD633B4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CCEA000, v3, v4, "Failed to invalidate database assertion: %@", v7, 0xCu);
    sub_20CD1DA10(v8, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v8, -1, -1);
    MEMORY[0x20F3115B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20CD266A8()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD26774, v0, 0);
}

uint64_t sub_20CD26774()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_20CD631B4();
  __swift_project_value_buffer(v1, qword_28110F878);
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CCEA000, v2, v3, "Sync store", v4, 2u);
    MEMORY[0x20F3115B0](v4, -1, -1);
  }

  v5 = *(v0 + 144);

  *(v0 + 176) = *(v5 + 112);

  return MEMORY[0x2822009F8](sub_20CD2689C, 0, 0);
}

uint64_t sub_20CD2689C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v9 = v0 + 19;
  v7 = v0[19];
  v8 = v9[1];
  v10 = *(v5 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_nanoSyncControl);
  v1[2] = v2;
  v1[3] = sub_20CD26A5C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  sub_20CD63324();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_20CD28E20;
  v1[13] = &block_descriptor_0;
  [v10 forceNanoSyncWithOptions:0 completion:v4];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_20CD26A5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_20CD26BD0;
  }

  else
  {
    v2 = sub_20CD26B6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD26B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD26BD0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_20CD26C48()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CD26C80@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v56 = sub_20CD62DE4();
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CD62974();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CD629B4();
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v7 = MEMORY[0x28223BE20](v70);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v50 - v9;
  v68 = sub_20CD62AB4();
  v59 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68);
  v66 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v50 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v57);
  v14 = &v50 - v13;
  v15 = sub_20CD62984();
  v16 = sub_20CD28FD4(&qword_28110F7B0, MEMORY[0x277D09F08], MEMORY[0x277D09F00]);
  v71 = v1;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v50 - v19;
  v21 = v73;
  sub_20CD62B64();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v54 = v16;
  v53 = v15;
  swift_getAssociatedConformanceWitness();
  v22 = sub_20CD63044();
  v25 = v24;
  v73 = v22;
  (*(v18 + 8))(v20, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v52 = v25;
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v31 = v70;
    v32 = v14;
    v28 = v68;
    v27 = v69;
    v33 = v66;
    v29 = v67;
    result = v73;
    if (v26 != 2)
    {
      goto LABEL_15;
    }

    v35 = *(v73 + 16);
    v34 = *(v73 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v37 <= 0)
    {
LABEL_15:
      sub_20CD1CD98(result, v52);
      v48 = 1;
      v47 = v65;
      goto LABEL_16;
    }

LABEL_10:
    v51 = v32;
    v70 = 0;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
    result = sub_20CD63224();
    if (result)
    {
      v38 = v33;
      v39 = v58;
      v40 = v59;
      v41 = *(v59 + 32);
      v41(v58, v29, v28);
      v41((v39 + *(v31 + 48)), v38, v28);
      sub_20CCF3CB0(v39, v27);
      v69 = *(v31 + 48);
      v42 = v51;
      v41(v51, v27, v28);
      v43 = *(v40 + 8);
      v43(v27 + v69, v28);
      sub_20CD28D8C(v39, v27);
      v41(&v42[*(v57 + 36)], (v27 + *(v31 + 48)), v28);
      v43(v27, v28);
      sub_20CD62E34();
      v44 = v60;
      sub_20CD62E44();
      sub_20CD28FD4(&qword_27C810EE0, MEMORY[0x277D09EE8], MEMORY[0x277D09EF0]);
      v45 = v63;
      sub_20CD632D4();
      (*(v62 + 8))(v44, v45);
      v46 = v55;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v64 + 8))(v46, v56);
      v47 = v65;
      sub_20CD62E04();
      v48 = 0;
LABEL_16:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810ED8, &qword_20CD64848);
      return (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
    }

    __break(1u);
    goto LABEL_18;
  }

  v28 = v68;
  v27 = v69;
  v29 = v67;
  result = v73;
  if (!v26)
  {
    v30 = BYTE6(v52);
    v31 = v70;
    v32 = v14;
    goto LABEL_14;
  }

  LODWORD(v30) = HIDWORD(v73) - v73;
  v31 = v70;
  if (!__OFSUB__(HIDWORD(v73), v73))
  {
    v32 = v14;
    v30 = v30;
LABEL_14:
    v33 = v66;
    if (v30 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_20CD274D0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v56 = sub_20CD62DE4();
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CD62B84();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CD62EB4();
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v7 = MEMORY[0x28223BE20](v70);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v50 - v9;
  v68 = sub_20CD62AB4();
  v59 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68);
  v66 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v50 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v57);
  v14 = &v50 - v13;
  v15 = sub_20CD62CF4();
  v16 = sub_20CD28FD4(&qword_28110F6F8, MEMORY[0x277D0A318], MEMORY[0x277D0A310]);
  v71 = v1;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v50 - v19;
  v21 = v73;
  sub_20CD62B64();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v54 = v16;
  v53 = v15;
  swift_getAssociatedConformanceWitness();
  v22 = sub_20CD63044();
  v25 = v24;
  v73 = v22;
  (*(v18 + 8))(v20, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v52 = v25;
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v31 = v70;
    v32 = v14;
    v28 = v68;
    v27 = v69;
    v33 = v66;
    v29 = v67;
    result = v73;
    if (v26 != 2)
    {
      goto LABEL_15;
    }

    v35 = *(v73 + 16);
    v34 = *(v73 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v37 <= 0)
    {
LABEL_15:
      sub_20CD1CD98(result, v52);
      v48 = 1;
      v47 = v65;
      goto LABEL_16;
    }

LABEL_10:
    v51 = v32;
    v70 = 0;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
    result = sub_20CD63224();
    if (result)
    {
      v38 = v33;
      v39 = v58;
      v40 = v59;
      v41 = *(v59 + 32);
      v41(v58, v29, v28);
      v41((v39 + *(v31 + 48)), v38, v28);
      sub_20CCF3CB0(v39, v27);
      v69 = *(v31 + 48);
      v42 = v51;
      v41(v51, v27, v28);
      v43 = *(v40 + 8);
      v43(v27 + v69, v28);
      sub_20CD28D8C(v39, v27);
      v41(&v42[*(v57 + 36)], (v27 + *(v31 + 48)), v28);
      v43(v27, v28);
      sub_20CD62E34();
      v44 = v60;
      sub_20CD62E44();
      sub_20CD28FD4(&qword_28110F748, MEMORY[0x277D0A1B8], MEMORY[0x277D0A1C0]);
      v45 = v63;
      sub_20CD632D4();
      (*(v62 + 8))(v44, v45);
      v46 = v55;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v64 + 8))(v46, v56);
      v47 = v65;
      sub_20CD62E04();
      v48 = 0;
LABEL_16:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EF0, &qword_20CD64858);
      return (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
    }

    __break(1u);
    goto LABEL_18;
  }

  v28 = v68;
  v27 = v69;
  v29 = v67;
  result = v73;
  if (!v26)
  {
    v30 = BYTE6(v52);
    v31 = v70;
    v32 = v14;
    goto LABEL_14;
  }

  LODWORD(v30) = HIDWORD(v73) - v73;
  v31 = v70;
  if (!__OFSUB__(HIDWORD(v73), v73))
  {
    v32 = v14;
    v30 = v30;
LABEL_14:
    v33 = v66;
    if (v30 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_20CD27D20@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v56 = sub_20CD62DE4();
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CD62D14();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CD62F94();
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v7 = MEMORY[0x28223BE20](v70);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v50 - v9;
  v68 = sub_20CD62AB4();
  v59 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68);
  v66 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v50 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v57);
  v14 = &v50 - v13;
  v15 = sub_20CD62DF4();
  v16 = sub_20CD28FD4(&qword_28110F6A0, MEMORY[0x277D0A3E0], MEMORY[0x277D0A3D8]);
  v71 = v1;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v50 - v19;
  v21 = v73;
  sub_20CD62B64();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v54 = v16;
  v53 = v15;
  swift_getAssociatedConformanceWitness();
  v22 = sub_20CD63044();
  v25 = v24;
  v73 = v22;
  (*(v18 + 8))(v20, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v72);
  v52 = v25;
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v31 = v70;
    v32 = v14;
    v28 = v68;
    v27 = v69;
    v33 = v66;
    v29 = v67;
    result = v73;
    if (v26 != 2)
    {
      goto LABEL_15;
    }

    v35 = *(v73 + 16);
    v34 = *(v73 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v37 <= 0)
    {
LABEL_15:
      sub_20CD1CD98(result, v52);
      v48 = 1;
      v47 = v65;
      goto LABEL_16;
    }

LABEL_10:
    v51 = v32;
    v70 = 0;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
    result = sub_20CD63224();
    if (result)
    {
      v38 = v33;
      v39 = v58;
      v40 = v59;
      v41 = *(v59 + 32);
      v41(v58, v29, v28);
      v41((v39 + *(v31 + 48)), v38, v28);
      sub_20CCF3CB0(v39, v27);
      v69 = *(v31 + 48);
      v42 = v51;
      v41(v51, v27, v28);
      v43 = *(v40 + 8);
      v43(v27 + v69, v28);
      sub_20CD28D8C(v39, v27);
      v41(&v42[*(v57 + 36)], (v27 + *(v31 + 48)), v28);
      v43(v27, v28);
      sub_20CD62E34();
      v44 = v60;
      sub_20CD62E44();
      sub_20CD28FD4(&qword_28110F6F0, MEMORY[0x277D0A328], MEMORY[0x277D0A330]);
      v45 = v63;
      sub_20CD632D4();
      (*(v62 + 8))(v44, v45);
      v46 = v55;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v64 + 8))(v46, v56);
      v47 = v65;
      sub_20CD62E04();
      v48 = 0;
LABEL_16:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F00, &qword_20CD64868);
      return (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
    }

    __break(1u);
    goto LABEL_18;
  }

  v28 = v68;
  v27 = v69;
  v29 = v67;
  result = v73;
  if (!v26)
  {
    v30 = BYTE6(v52);
    v31 = v70;
    v32 = v14;
    goto LABEL_14;
  }

  LODWORD(v30) = HIDWORD(v73) - v73;
  v31 = v70;
  if (!__OFSUB__(HIDWORD(v73), v73))
  {
    v32 = v14;
    v30 = v30;
LABEL_14:
    v33 = v66;
    if (v30 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t PropertyRecordProtocol.toDatabasePropertyRecord()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v56 = sub_20CD62DE4();
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v53 - v7;
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v53 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v10 = MEMORY[0x28223BE20](v58);
  v68 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v53 - v12;
  v67 = sub_20CD62AB4();
  v57 = *(v67 - 8);
  v13 = MEMORY[0x28223BE20](v67);
  v66 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v70 = v3;
  v71 = a1;
  v72 = a2;
  sub_20CD62E24();
  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  v24 = v74;
  sub_20CD62B64();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(v73);
  }

  v74 = v16;
  v55 = v17;
  swift_getAssociatedConformanceWitness();
  v25 = sub_20CD63044();
  v28 = v27;
  v54 = v25;
  (*(v21 + 8))(v23, v20);
  __swift_destroy_boxed_opaque_existential_0(v73);
  v53 = v28;
  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v30 = v19;
    v31 = v67;
    v32 = v68;
    v34 = v69;
    v33 = v66;
    result = v54;
    if (v29 != 2)
    {
      goto LABEL_15;
    }

    v36 = *(v54 + 16);
    v35 = *(v54 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (v37)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v38 < 1)
    {
LABEL_15:
      sub_20CD1CD98(result, v53);
      v51 = 1;
      v50 = v65;
      goto LABEL_16;
    }

LABEL_11:
    v67 = v30;
    v68 = 0;
    v39 = v74;
    sub_20CD62E64();
    sub_20CD62E54();
    sub_20CD28FD4(&qword_28110F778, MEMORY[0x277D09F70], MEMORY[0x277D09F80]);
    result = sub_20CD63224();
    if (result)
    {
      v40 = v57;
      v41 = *(v57 + 32);
      v41(v34, v39, v31);
      v42 = v58;
      v41(v34 + *(v58 + 48), v33, v31);
      sub_20CCF3CB0(v34, v32);
      v43 = v40;
      v44 = *(v42 + 48);
      v45 = v67;
      v41(v67, v32, v31);
      v46 = *(v43 + 8);
      v46(v32 + v44, v31);
      sub_20CD28D8C(v69, v32);
      v41(v45 + *(v55 + 36), (v32 + *(v42 + 48)), v31);
      v46(v32, v31);
      sub_20CD62E34();
      v47 = v60;
      sub_20CD62E44();
      v48 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      sub_20CD632D4();
      (*(v62 + 8))(v47, v48);
      v49 = v63;
      sub_20CD62DC4();
      sub_20CD62DD4();
      (*(v64 + 8))(v49, v56);
      v50 = v65;
      sub_20CD62E04();
      v51 = 0;
LABEL_16:
      v52 = sub_20CD62E14();
      return (*(*(v52 - 8) + 56))(v50, v51, 1, v52);
    }

    __break(1u);
    goto LABEL_18;
  }

  v30 = v19;
  v31 = v67;
  v32 = v68;
  v33 = v66;
  result = v54;
  if (!v29)
  {
    v34 = v69;
    if (!BYTE6(v53))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v34 = v69;
  if (!__OFSUB__(HIDWORD(v54), v54))
  {
    if (HIDWORD(v54) - v54 < 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_20CD28D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CD28E20(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    sub_20CD63344();
  }

  else if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    sub_20CD63334();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CD28ED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20CD28F80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CD28FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SnapshotProcessor(uint64_t a1)
{
  result = qword_28110F358;
  if (!qword_28110F358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD290A4(uint64_t a1)
{
  result = sub_20CD626F4();
  if (v2 <= 0x3F)
  {
    result = sub_20CCED538(319, &qword_28110F2A8, &protocol descriptor for SnapshotStoreProtocol);
    if (v3 <= 0x3F)
    {
      result = sub_20CCED538(319, &qword_28110F640, MEMORY[0x277D0A6A8]);
      if (v4 <= 0x3F)
      {
        result = sub_20CCED538(319, qword_28110F2B0, &protocol descriptor for SeymourStoreProtocol);
        if (v5 <= 0x3F)
        {
          result = sub_20CCED538(319, &qword_28110F838, &protocol descriptor for HealthKitCloudRestoreStatusProviding);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for SanityTaskClient(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20CD291E4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for SnapshotProcessor(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v2[13] = swift_task_alloc();
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F18, &unk_20CD648C0);
  v2[15] = swift_task_alloc();
  v5 = sub_20CD62C54();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_20CD62AB4();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = sub_20CD626E4();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  v2[29] = swift_task_alloc();
  v8 = sub_20CD62654();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v9 = sub_20CD62F14();
  v2[34] = v9;
  v2[35] = *(v9 - 8);
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD29560, 0, 0);
}

uint64_t sub_20CD29560()
{
  v28 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[7];
  v5 = sub_20CD631B4();
  v0[37] = __swift_project_value_buffer(v5, qword_28110F878);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_20CD63194();
  v7 = sub_20CD633D4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[34];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 136315138;
    v13 = sub_20CD62F04();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_20CD6153C(v13, v15, &v27);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20CCEA000, v6, v7, "SnapshotProcessor::run with reason %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F3115B0](v26, -1, -1);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = sub_20CD62A14();
  v0[5] = v17;
  v0[6] = sub_20CD42728(&qword_28110F790, MEMORY[0x277D09F50], MEMORY[0x277D09F40]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v17);
  LOBYTE(v17) = sub_20CD627F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v17)
  {
    v19 = (v0[8] + *(v0[9] + 32));
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v20 = swift_task_alloc();
    v0[38] = v20;
    *v20 = v0;
    v20[1] = sub_20CD2999C;

    return sub_20CD5FE7C();
  }

  else
  {
    v22 = sub_20CD63194();
    v23 = sub_20CD633D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20CCEA000, v22, v23, "FF not enabled. Skipping", v24, 2u);
      MEMORY[0x20F3115B0](v24, -1, -1);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_20CD2999C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 516) = a1;

    return MEMORY[0x2822009F8](sub_20CD29BA4, 0, 0);
  }
}

uint64_t sub_20CD29BA4(uint64_t a1)
{
  if (*(v1 + 516) == 2)
  {
    v2 = sub_20CD63194();
    v3 = sub_20CD633D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20CCEA000, v2, v3, "Device is not ready to process snapshots, skipping...", v4, 2u);
      MEMORY[0x20F3115B0](v4, -1, -1);
    }

    goto LABEL_7;
  }

  v6 = *(v1 + 248);
  v5 = *(v1 + 256);
  v8 = *(v1 + 232);
  v7 = *(v1 + 240);
  v10 = *(v1 + 216);
  v9 = *(v1 + 224);
  v11 = *(v1 + 208);
  (*(v10 + 104))(v9, *MEMORY[0x277CC9968], v11);
  sub_20CD62644();
  sub_20CD626D4();
  v12 = *(v6 + 8);
  *(v1 + 312) = v12;
  *(v1 + 320) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v5, v7);
  (*(v10 + 8))(v9, v11);
  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    sub_20CD1DA10(*(v1 + 232), &qword_27C810CC8, &qword_20CD64160);
LABEL_7:

    v13 = *(v1 + 8);

    return v13();
  }

  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  (*(*(v1 + 248) + 32))(*(v1 + 264), *(v1 + 232), *(v1 + 240));
  *(v1 + 328) = os_transaction_create();
  v17 = *(v16 + 20);
  *(v1 + 512) = v17;
  __swift_project_boxed_opaque_existential_1((v15 + v17), *(v15 + v17 + 24));
  v18 = swift_task_alloc();
  *(v1 + 336) = v18;
  *v18 = v1;
  v18[1] = sub_20CD29ECC;

  return sub_20CD25D98();
}

uint64_t sub_20CD29ECC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_20CD2A1B0;
  }

  else
  {
    v2 = sub_20CD29FE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD29FE0()
{
  v1 = (v0[8] + *(v0[9] + 24));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_20CD2A09C;

  return MEMORY[0x282161298](v2, v3);
}

uint64_t sub_20CD2A09C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_20CD2BB48;
  }

  else
  {
    v4 = sub_20CD2A2E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2A1B0()
{
  swift_unknownObjectRelease();
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2A2E4(uint64_t a1)
{
  sub_20CD62564();
  v2 = swift_task_alloc();
  *(v1 + 376) = v2;
  *v2 = v1;
  v2[1] = sub_20CD2A388;
  v3 = *(v1 + 144);

  return sub_20CD2CADC(v3);
}

uint64_t sub_20CD2A388()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_20CD2BC7C;
  }

  else
  {
    v2 = sub_20CD2A49C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2A49C()
{
  v43 = v0;
  sub_20CD62BF4();
  if (sub_20CD62A64())
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v6 + 16);
    *(v0 + 392) = v7;
    *(v0 + 400) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v1, v5);
    v7(v4, v2, v5);
    v8 = sub_20CD63194();
    v9 = sub_20CD633D4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    if (v10)
    {
      v40 = v9;
      v15 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v15 = 136315394;
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v16 = sub_20CD63574();
      v18 = v17;
      log = v8;
      v19 = *(v13 + 8);
      v19(v11, v14);
      v20 = sub_20CD6153C(v16, v18, &v42);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v21 = sub_20CD63574();
      v23 = v22;
      v19(v12, v14);
      v24 = sub_20CD6153C(v21, v23, &v42);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_20CCEA000, log, v40, "Processing snapshots from %s to %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v41, -1, -1);
      MEMORY[0x20F3115B0](v15, -1, -1);
    }

    else
    {

      v19 = *(v13 + 8);
      v19(v12, v14);
      v19(v11, v14);
    }

    *(v0 + 408) = v19;
    v32 = *(v0 + 200);
    v33 = *(v0 + 144);
    v34 = *(v0 + 64);
    v35 = swift_task_alloc();
    *(v0 + 416) = v35;
    v35[2] = v34;
    v35[3] = v33;
    v35[4] = v32;
    v36 = swift_task_alloc();
    *(v0 + 424) = v36;
    *v36 = v0;
    v36[1] = sub_20CD2A8C8;
    v38 = *(v0 + 112);
    v37 = *(v0 + 120);

    return MEMORY[0x282160B38](v37, &unk_20CD64910, v35, v38);
  }

  else
  {
    v25 = sub_20CD63194();
    v26 = sub_20CD633D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20CCEA000, v25, v26, "All caught up, nothing to process. Just cleaning up", v27, 2u);
      MEMORY[0x20F3115B0](v27, -1, -1);
    }

    v28 = *(v0 + 512);
    v29 = *(v0 + 64);

    __swift_project_boxed_opaque_existential_1((v29 + v28), *(v29 + v28 + 24));
    v30 = swift_task_alloc();
    *(v0 + 480) = v30;
    *v30 = v0;
    v30[1] = sub_20CD2B3D4;

    return sub_20CD24FAC();
  }
}

uint64_t sub_20CD2A8C8(double a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_20CD2C114;
  }

  else
  {
    sub_20CD1DA10(*(v3 + 120), &qword_27C810F18, &unk_20CD648C0);

    v4 = sub_20CD2AA04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2AA04()
{
  v20 = v0;
  (*(v0 + 392))(*(v0 + 168), *(v0 + 200), *(v0 + 152));
  v1 = sub_20CD63194();
  v2 = sub_20CD633D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 432);
    v18 = *(v0 + 408);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v8 = sub_20CD63574();
    v10 = v9;
    v18(v4, v5);
    v11 = sub_20CD6153C(v8, v10, &v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v3;
    _os_log_impl(&dword_20CCEA000, v1, v2, "Processed snapshots until %s in %fs", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F3115B0](v7, -1, -1);
    MEMORY[0x20F3115B0](v6, -1, -1);
  }

  else
  {
    v12 = *(v0 + 408);
    v13 = *(v0 + 168);
    v14 = *(v0 + 152);

    v12(v13, v14);
  }

  v15 = (*(v0 + 64) + *(v0 + 512));
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v16 = swift_task_alloc();
  *(v0 + 448) = v16;
  *v16 = v0;
  v16[1] = sub_20CD2AC58;

  return sub_20CD24FAC();
}

uint64_t sub_20CD2AC58()
{
  v2 = *v1;
  *(v2 + 456) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD2AED8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 464) = v3;
    *v3 = v2;
    v3[1] = sub_20CD2ADC4;

    return sub_20CD2D878();
  }
}

uint64_t sub_20CD2ADC4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_20CD2C2C8;
  }

  else
  {
    v2 = sub_20CD2B150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2AED8()
{
  v1 = *(v0 + 408);
  v17 = *(v0 + 360);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 64);
  v1(*(v0 + 192), v3);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20CD41E6C(v15, v7);
  v10 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v17;
  sub_20CD41ED0(v7, v11 + v10);
  v12 = v17;
  sub_20CD54F08(0, 0, v8, &unk_20CD64918, v11);
  swift_unknownObjectRelease();

  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20CD2B150()
{
  v1 = v0[51];
  v18 = v0[45];
  v21 = v0[39];
  v19 = v0[30];
  v20 = v0[33];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v17 = v0[10];
  v16 = v0[8];
  v1(v0[24], v3);
  (*(v4 + 8))(v5, v6);
  v1(v2, v3);
  v9 = sub_20CD63374();
  v10 = v7;
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20CD41E6C(v16, v8);
  v11 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v18;
  sub_20CD41ED0(v8, v12 + v11);
  v13 = v18;
  sub_20CD54F08(0, 0, v10, &unk_20CD64928, v12);
  swift_unknownObjectRelease();

  v21(v20, v19);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20CD2B3D4()
{
  v2 = *v1;
  *(v2 + 488) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD2B654, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 496) = v3;
    *v3 = v2;
    v3[1] = sub_20CD2B540;

    return sub_20CD2D878();
  }
}

uint64_t sub_20CD2B540()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_20CD2BEA0;
  }

  else
  {
    v2 = sub_20CD2B8C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2B654()
{
  v17 = *(v0 + 360);
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 64);
  v8 = *(*(v0 + 160) + 8);
  v8(*(v0 + 192), v2);
  (*(v4 + 8))(v3, v5);
  v8(v1, v2);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20CD41E6C(v15, v6);
  v10 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v17;
  sub_20CD41ED0(v6, v11 + v10);
  v12 = v17;
  sub_20CD54F08(0, 0, v7, &unk_20CD648E8, v11);
  swift_unknownObjectRelease();

  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20CD2B8C8()
{
  v18 = v0[45];
  v21 = v0[39];
  v19 = v0[30];
  v20 = v0[33];
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v17 = v0[10];
  v16 = v0[8];
  v8 = *(v0[20] + 8);
  v8(v0[24], v2);
  (*(v3 + 8))(v4, v5);
  v8(v1, v2);
  v9 = sub_20CD63374();
  v10 = v6;
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_20CD41E6C(v16, v7);
  v11 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v18;
  sub_20CD41ED0(v7, v12 + v11);
  v13 = v18;
  sub_20CD54F08(0, 0, v10, &unk_20CD64900, v12);
  swift_unknownObjectRelease();

  v21(v20, v19);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20CD2BB48()
{
  swift_unknownObjectRelease();
  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2BC7C()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  (*(*(v0 + 160) + 8))(*(v0 + 200), *(v0 + 152));
  v6 = sub_20CD63374();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_20CD41E6C(v5, v3);
  v7 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  sub_20CD41ED0(v3, v8 + v7);
  v9 = v1;
  sub_20CD54F08(0, 0, v2, &unk_20CD648E0, v8);
  swift_unknownObjectRelease();

  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20CD2BEA0()
{
  v17 = *(v0 + 360);
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 64);
  v8 = *(*(v0 + 160) + 8);
  v8(*(v0 + 192), v2);
  (*(v4 + 8))(v3, v5);
  v8(v1, v2);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_20CD41E6C(v15, v6);
  v10 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v17;
  sub_20CD41ED0(v6, v11 + v10);
  v12 = v17;
  sub_20CD54F08(0, 0, v7, &unk_20CD648F8, v11);
  swift_unknownObjectRelease();

  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20CD2C114()
{
  v1 = *(v0 + 440);

  v2 = v1;
  v3 = sub_20CD63194();
  v4 = sub_20CD633D4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 440);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CCEA000, v3, v4, "Failed to process snapshot due to: %@.", v7, 0xCu);
    sub_20CD1DA10(v8, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v8, -1, -1);
    MEMORY[0x20F3115B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = (*(v0 + 64) + *(v0 + 512));
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v12 = swift_task_alloc();
  *(v0 + 448) = v12;
  *v12 = v0;
  v12[1] = sub_20CD2AC58;

  return sub_20CD24FAC();
}

uint64_t sub_20CD2C2C8()
{
  v1 = *(v0 + 408);
  v17 = *(v0 + 360);
  v2 = *(v0 + 200);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 64);
  v1(*(v0 + 192), v3);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v9 = sub_20CD63374();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20CD41E6C(v15, v7);
  v10 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v17;
  sub_20CD41ED0(v7, v11 + v10);
  v12 = v17;
  sub_20CD54F08(0, 0, v8, &unk_20CD64920, v11);
  swift_unknownObjectRelease();

  (*(v0 + 312))(*(v0 + 264), *(v0 + 240));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20CD2C540(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_20CD62EF4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2C604, 0, 0);
}

uint64_t sub_20CD2C604()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for SnapshotProcessor(0);
  v3 = __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v4 = *v3;
  *(v0 + 72) = *v3;

  return MEMORY[0x2822009F8](sub_20CD2C684, v4, 0);
}

uint64_t sub_20CD2C6AC()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F08, &qword_20CD64870);
  *v4 = v0;
  v4[1] = sub_20CD2C7B8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000020CD65990, sub_20CD3FFA8, v3, v5);
}

uint64_t sub_20CD2C7B8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20CD2CA6C;
  }

  else
  {

    v2 = sub_20CD2C8D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2C8D4()
{
  v11 = v0;
  v1 = v0[13];
  v10 = v0[2];

  sub_20CD40320(&v10);
  if (v1)
  {
  }

  else
  {

    if (*(v10 + 16))
    {
      v4 = v0[7];
      v3 = v0[8];
      v5 = v0[6];
      (*(v4 + 16))(v3, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

      sub_20CD62EC4();
      (*(v4 + 8))(v3, v5);
      v6 = 0;
    }

    else
    {

      v6 = 1;
    }

    v7 = v0[3];
    v8 = sub_20CD62AB4();
    (*(*(v8 - 8) + 56))(v7, v6, 1, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20CD2CA6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2CADC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F48, &qword_20CD649A8);
  v2[4] = swift_task_alloc();
  v3 = sub_20CD629A4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F50, &qword_20CD649B0);
  v2[8] = swift_task_alloc();
  v4 = sub_20CD62F24();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_20CD62AB4();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F58, &qword_20CD649B8);
  v6 = swift_task_alloc();
  v2[15] = v6;
  v7 = sub_20CD62E74();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[19] = v8;
  *v8 = v2;
  v8[1] = sub_20CD2CD90;

  return sub_20CD37094(v6);
}

uint64_t sub_20CD2CD90()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_20CD2D644;
  }

  else
  {
    v2 = sub_20CD2CEA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2CEA4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    sub_20CD62A54();
    sub_20CD42728(&qword_28110F698, MEMORY[0x277D0A410], MEMORY[0x277D0A408]);
    sub_20CD62F84();
    (*(v6 + 8))(v5, v7);
    if (v4(v3, 1, v1) != 1)
    {
      sub_20CD1DA10(v0[15], &qword_27C810F58, &qword_20CD649B8);
    }
  }

  else
  {
    (*(v2 + 32))(v0[18], v3, v1);
  }

  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_20CD2D050;
  v9 = v0[8];

  return sub_20CD3A234(v9);
}

uint64_t sub_20CD2D050()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v3 = sub_20CD2D700;
  }

  else
  {
    v3 = sub_20CD2D17C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD2D17C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    sub_20CD62A54();
    sub_20CD42728(&qword_28110F668, MEMORY[0x277D0A578], MEMORY[0x277D0A570]);
    sub_20CD62F84();
    (*(v6 + 8))(v5, v7);
    if (v4(v3, 1, v1) != 1)
    {
      sub_20CD1DA10(v0[8], &qword_27C810F50, &qword_20CD649B0);
    }
  }

  else
  {
    (*(v2 + 32))(v0[11], v3, v1);
  }

  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_20CD2D320;
  v9 = v0[4];

  return sub_20CD3CE7C(v9);
}

uint64_t sub_20CD2D320()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[17];
    v3 = v2[18];
    v5 = v2[16];
    (*(v2[10] + 8))(v2[11], v2[9]);
    (*(v4 + 8))(v3, v5);
    v6 = sub_20CD2D7BC;
  }

  else
  {
    v6 = sub_20CD2D474;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CD2D474()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    sub_20CD62A54();
    sub_20CD42728(&qword_28110F7A0, MEMORY[0x277D09F28], MEMORY[0x277D09F20]);
    sub_20CD62F84();
    (*(v6 + 8))(v5, v7);
    if (v4(v3, 1, v1) != 1)
    {
      sub_20CD1DA10(v0[4], &qword_27C810F48, &qword_20CD649A8);
    }
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
  }

  sub_20CD62C04();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CD2D644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2D700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2D7BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2D878()
{
  v1[3] = v0;
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F18, &unk_20CD648C0);
  v1[5] = swift_task_alloc();
  v2 = sub_20CD62BE4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2DA0C, 0, 0);
}

uint64_t sub_20CD2DA0C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_20CD63244();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {
    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v4 = sub_20CD631B4();
    __swift_project_value_buffer(v4, qword_28110F878);
    v5 = sub_20CD63194();
    v6 = sub_20CD633D4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CCEA000, v5, v6, "Bypassing SanityTask.", v7, 2u);
      MEMORY[0x20F3115B0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    v11 = *(v10 + *(type metadata accessor for SnapshotProcessor(0) + 36));
    v12 = swift_task_alloc();
    v0[16] = v12;
    *(v12 + 16) = v11;
    v13 = swift_task_alloc();
    v0[17] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F40, &qword_20CD64990);
    *v13 = v0;
    v13[1] = sub_20CD2DCD0;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x800000020CD65A00, sub_20CD42554, v12, v14);
  }
}

uint64_t sub_20CD2DCD0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20CD2E340;
  }

  else
  {

    v2 = sub_20CD2DDEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD2DDEC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[7];
    v45 = MEMORY[0x277D84F90];
    sub_20CD46B48(0, v2, 0);
    v0 = v42;
    v5 = v45;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v43 = *(v4 + 56);
    v44 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = *(v42 + 64);
      v10 = *(v42 + 48);
      v44(v9, v7, v10);
      sub_20CD62BD4();
      (*v8)(v9, v10);
      v12 = *(v45 + 16);
      v11 = *(v45 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_20CD46B48((v11 > 1), v12 + 1, 1);
      }

      v13 = *(v42 + 120);
      *(v45 + 16) = v12 + 1;
      sub_20CD4255C(v13, v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12);
      v7 += v43;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v14 = sub_20CD48754(v5);
  v0[19] = v14;

  if (!*(v14 + 16))
  {

    if (qword_28110F1A0 != -1)
    {
      swift_once();
    }

    v19 = sub_20CD631B4();
    __swift_project_value_buffer(v19, qword_28110F878);
    v20 = sub_20CD63194();
    v21 = sub_20CD633D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20CCEA000, v20, v21, "SanityTask completed successfully", v22, 2u);
      MEMORY[0x20F3115B0](v22, -1, -1);
    }

LABEL_31:

    v40 = *(v42 + 8);

    return v40();
  }

  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v15 = sub_20CD631B4();
  *(v42 + 160) = __swift_project_value_buffer(v15, qword_28110F878);

  v16 = sub_20CD63194();
  v17 = sub_20CD633D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v14 + 16);

    _os_log_impl(&dword_20CCEA000, v16, v17, "SanityTask found %ld mismatching checkpoints, reprocessing", v18, 0xCu);
    MEMORY[0x20F3115B0](v18, -1, -1);
  }

  else
  {
  }

  v23 = v42;
  v24 = *(v42 + 80);
  v25 = *(v14 + 32);
  *(v42 + 224) = v25;
  v26 = -1;
  v27 = -1 << v25;
  if (-(-1 << v25) < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v14 + 56);
  *(v42 + 168) = 0;

  if (!v28)
  {
    v31 = 0;
    v32 = ((63 - v27) >> 6) - 1;
    v30 = *(v42 + 152);
    while (v32 != v31)
    {
      v29 = v31 + 1;
      v28 = *(v30 + 8 * v31++ + 64);
      if (v28)
      {
        v23 = v42;
        goto LABEL_27;
      }
    }

    goto LABEL_31;
  }

  v29 = 0;
  v30 = *(v42 + 152);
LABEL_27:
  v23[22] = v28;
  v23[23] = v29;
  v34 = v23[13];
  v33 = v23[14];
  v35 = v23[3];
  sub_20CD1D9A8(*(v30 + 48) + *(v24 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v33, &qword_27C810D08, &qword_20CD64280);
  sub_20CD4255C(v33, v34);
  v36 = swift_task_alloc();
  v23[24] = v36;
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  v37 = swift_task_alloc();
  v23[25] = v37;
  *v37 = v23;
  v37[1] = sub_20CD2E404;
  v39 = v23[4];
  v38 = v23[5];

  return MEMORY[0x282160B38](v38, &unk_20CD649A0, v36, v39);
}

uint64_t sub_20CD2E340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD2E404(double a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {

    v4 = sub_20CD2EA3C;
  }

  else
  {
    sub_20CD1DA10(*(v3 + 40), &qword_27C810F18, &unk_20CD648C0);

    v4 = sub_20CD2E568;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2E568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = v4;
  v5 = *(v4 + 168);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x282160B38](a1, a2, a3, a4);
  }

  v7 = *(v4 + 104);
  v8 = *(v4 + 88);
  sub_20CD1D9A8(v7, *(v4 + 96), &qword_27C810D08, &qword_20CD64280);
  sub_20CD1D9A8(v7, v8, &qword_27C810D08, &qword_20CD64280);

  v9 = sub_20CD63194();
  v10 = sub_20CD633D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v4 + 208);
    v12 = *(v4 + 152);
    v13 = *(v4 + 96);
    v37 = *(v4 + 88);
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v14 = 134219010;
    *(v14 + 4) = v6;
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v12 + 16);

    *(v14 + 22) = 2080;
    sub_20CD62AB4();
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v15 = sub_20CD63574();
    v17 = v16;
    sub_20CD1DA10(v13, &qword_27C810D08, &qword_20CD64280);
    v18 = sub_20CD6153C(v15, v17, &v39);

    *(v14 + 24) = v18;
    *(v14 + 32) = 2080;
    v19 = sub_20CD63574();
    v21 = v20;
    sub_20CD1DA10(v37, &qword_27C810D08, &qword_20CD64280);
    v22 = sub_20CD6153C(v19, v21, &v39);

    *(v14 + 34) = v22;
    *(v14 + 42) = 2048;
    *(v14 + 44) = v11;
    _os_log_impl(&dword_20CCEA000, v9, v10, "[%ld/%ld] Processed snapshots from %s to %s in %fs", v14, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v38, -1, -1);
    MEMORY[0x20F3115B0](v14, -1, -1);
  }

  else
  {
    v24 = *(v4 + 88);
    v23 = *(v4 + 96);

    sub_20CD1DA10(v24, &qword_27C810D08, &qword_20CD64280);
    sub_20CD1DA10(v23, &qword_27C810D08, &qword_20CD64280);
  }

  a1 = sub_20CD1DA10(*(v4 + 104), &qword_27C810D08, &qword_20CD64280);
  v26 = *(v4 + 176);
  v25 = *(v4 + 184);
  *(v4 + 168) = v6;
  v27 = (v26 - 1) & v26;
  if (v27)
  {
    v28 = *(v4 + 152);
LABEL_11:
    *(v4 + 176) = v27;
    *(v4 + 184) = v25;
    v31 = *(v4 + 104);
    v30 = *(v4 + 112);
    v32 = *(v4 + 24);
    sub_20CD1D9A8(*(v28 + 48) + *(*(v4 + 80) + 72) * (__clz(__rbit64(v27)) | (v25 << 6)), v30, &qword_27C810D08, &qword_20CD64280);
    sub_20CD4255C(v30, v31);
    v33 = swift_task_alloc();
    *(v4 + 192) = v33;
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v34 = swift_task_alloc();
    *(v4 + 200) = v34;
    *v34 = v4;
    v34[1] = sub_20CD2E404;
    a4 = *(v4 + 32);
    a1 = *(v4 + 40);
    a2 = &unk_20CD649A0;
    a3 = v33;

    return MEMORY[0x282160B38](a1, a2, a3, a4);
  }

  while (1)
  {
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v28 = *(v4 + 152);
    if (v29 >= (((1 << *(v4 + 224)) + 63) >> 6))
    {
      break;
    }

    v27 = *(v28 + 8 * v29 + 56);
    ++v25;
    if (v27)
    {
      v25 = v29;
      goto LABEL_11;
    }
  }

  v35 = *(v4 + 8);

  return v35();
}

uint64_t sub_20CD2EA3C()
{
  v1 = *(v0 + 104);

  sub_20CD1DA10(v1, &qword_27C810D08, &qword_20CD64280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CD2EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CCEE040;

  return sub_20CD2EBDC(a1, a3, a4, 1, 1);
}

uint64_t sub_20CD2EBDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 689) = a5;
  *(v6 + 688) = a4;
  *(v6 + 64) = a3;
  *(v6 + 72) = v5;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = type metadata accessor for SnapshotProcessor(0);
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 + 64);
  *(v6 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v9 = sub_20CD62514();
  *(v6 + 128) = v9;
  v10 = *(v9 - 8);
  *(v6 + 136) = v10;
  *(v6 + 144) = *(v10 + 64);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  v11 = sub_20CD62C54();
  *(v6 + 184) = v11;
  v12 = *(v11 - 8);
  *(v6 + 192) = v12;
  *(v6 + 200) = *(v12 + 64);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v13 = sub_20CD626F4();
  *(v6 + 248) = v13;
  *(v6 + 256) = *(v13 - 8);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v14 = sub_20CD62AB4();
  *(v6 + 280) = v14;
  v15 = *(v14 - 8);
  *(v6 + 288) = v15;
  *(v6 + 296) = *(v15 + 64);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  v16 = sub_20CD62654();
  *(v6 + 352) = v16;
  v17 = *(v16 - 8);
  *(v6 + 360) = v17;
  *(v6 + 368) = *(v17 + 64);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD2F024, 0, 0);
}

uint64_t sub_20CD2F024()
{
  v55 = v0;
  sub_20CD62BF4();
  sub_20CD626C4();
  sub_20CD62A84();
  v1 = v0[60];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[35];
  v5 = v0[36];
  v48 = v0[44];
  v50 = *(v0[32] + 8);
  v50(v0[34], v0[31]);
  v6 = *(v5 + 8);
  v0[62] = v6;
  v0[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  sub_20CD62594();
  v7 = *(v2 + 8);
  v0[64] = v7;
  v0[65] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v48);
  sub_20CD626C4();
  sub_20CD62A84();
  v50(v0[33], v0[31]);
  sub_20CD62614();
  v49 = v6;
  v7(v0[58], v0[44]);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v51 = v0[59];
  v8 = v0[57];
  v9 = v0[44];
  v10 = v0[45];
  v11 = v0[30];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[7];
  v15 = sub_20CD631B4();
  v0[66] = __swift_project_value_buffer(v15, qword_28110F878);
  v16 = *(v12 + 16);
  v0[67] = v16;
  v0[68] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v11, v14, v13);
  v17 = *(v10 + 16);
  v0[69] = v17;
  v0[70] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v8, v51, v9);
  v18 = sub_20CD63194();
  v19 = sub_20CD633D4();
  v52 = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[57];
  v22 = v0[44];
  if (v20)
  {
    v47 = v19;
    v23 = v0[42];
    v24 = v0[35];
    v25 = v0[30];
    v26 = v0[24];
    v44 = v0[23];
    v45 = v0[57];
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v27 = 136315394;
    sub_20CD62BF4();
    sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
    v28 = sub_20CD63574();
    v30 = v29;
    v49(v23, v24);
    (*(v26 + 8))(v25, v44);
    v31 = sub_20CD6153C(v28, v30, v54);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_20CD42728(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v32 = sub_20CD63574();
    v34 = v33;
    v7(v45, v22);
    v35 = sub_20CD6153C(v32, v34, v54);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_20CCEA000, v52, v47, "Processing snapshots from cacheIndex=(%s) to date=(%s)", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v46, -1, -1);
    MEMORY[0x20F3115B0](v27, -1, -1);
  }

  else
  {
    v36 = v0[30];
    v38 = v0[23];
    v37 = v0[24];

    v7(v21, v22);
    (*(v37 + 8))(v36, v38);
  }

  v39 = (v0[9] + *(v0[10] + 28));
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v53 = (*(v41 + 24) + **(v41 + 24));
  v42 = swift_task_alloc();
  v0[71] = v42;
  *v42 = v0;
  v42[1] = sub_20CD2F82C;

  return v53(v40, v41);
}

uint64_t sub_20CD2F82C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_20CD31750;
  }

  else
  {
    v4 = sub_20CD2F944;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2F944()
{
  v1 = (v0[9] + *(v0[10] + 24));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_20CD62504();
  v4 = swift_task_alloc();
  v0[74] = v4;
  *v4 = v0;
  v4[1] = sub_20CD2FA18;
  v5 = v0[22];

  return MEMORY[0x282161280](v5, v2, v3);
}

uint64_t sub_20CD2FA18(uint64_t a1)
{
  v3 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {
    (*(v3[17] + 8))(v3[22], v3[16]);

    v4 = sub_20CD31990;
  }

  else
  {
    v5 = v3[22];
    v6 = v3[16];
    v7 = v3[17];
    v8 = *(v7 + 8);
    v3[77] = v8;
    v3[78] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v4 = sub_20CD2FB7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD2FB7C()
{
  v1 = *(v0 + 608);
  sub_20CD32308(*(v0 + 472), 7, *(v0 + 168));
  if (v1)
  {
    v2 = *(v0 + 512);
    v3 = *(v0 + 488);
    v4 = *(v0 + 472);
    v5 = *(v0 + 352);

    v2(v4, v5);
    v2(v3, v5);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(v0 + 536))(*(v0 + 232), *(v0 + 56), *(v0 + 184));
    v60 = *(v0 + 576);
    v61 = *(v0 + 600);
    v44 = *(v0 + 552);
    v42 = *(v0 + 536);
    v43 = *(v0 + 472);
    v64 = *(v0 + 448);
    v53 = *(v0 + 368);
    v63 = *(v0 + 352);
    v66 = *(v0 + 336);
    v67 = *(v0 + 360);
    v52 = *(v0 + 296);
    v62 = *(v0 + 288);
    v65 = *(v0 + 280);
    v8 = *(v0 + 224);
    v39 = *(v0 + 232);
    v9 = *(v0 + 192);
    v49 = *(v0 + 200);
    v50 = v8;
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v37 = *(v0 + 168);
    v47 = v11;
    v48 = v10;
    v12 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v46 = *(v0 + 144);
    v56 = v13;
    v15 = *(v0 + 104);
    v59 = *(v0 + 112);
    v45 = v15;
    v40 = *(v0 + 88);
    v41 = *(v0 + 96);
    v58 = *(v0 + 689);
    v57 = *(v0 + 688);
    v16 = *(v0 + 72);
    v38 = *(v0 + 64);
    v55 = sub_20CD63374();
    v51 = *(v55 - 8);
    (*(v51 + 56))(v13, 1, 1, v55);
    sub_20CD41E6C(v16, v15);
    (*(v12 + 16))(v11, v37, v14);
    v42(v8, v39, v10);
    v44(v64, v43, v63);
    (*(v62 + 16))(v66, v38, v65);
    v17 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v18 = (v41 + *(v12 + 80) + v17) & ~*(v12 + 80);
    v19 = (v46 + *(v9 + 80) + v18) & ~*(v9 + 80);
    v20 = (v49 + *(v67 + 80) + v19) & ~*(v67 + 80);
    v54 = (v53 + *(v62 + 80) + v20) & ~*(v62 + 80);
    v21 = (v52 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_20CD41ED0(v45, v22 + v17);
    v23 = *(v12 + 32);
    *(v0 + 632) = v23;
    *(v0 + 640) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v22 + v18, v47, v14);
    v24 = *(v9 + 32);
    *(v0 + 648) = v24;
    *(v0 + 656) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v22 + v19, v50, v48);
    (*(v67 + 32))(v22 + v20, v64, v63);
    (*(v62 + 32))(v22 + v54, v66, v65);
    *(v22 + v21) = v60;
    v25 = v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = v61;
    *(v25 + 8) = v58;
    *(v25 + 9) = v57;
    sub_20CD1D9A8(v56, v59, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v21) = (*(v51 + 48))(v59, 1, v55);

    v26 = *(v0 + 112);
    if (v21 == 1)
    {
      sub_20CD1DA10(*(v0 + 112), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v51 + 8))(v26, v55);
    }

    v27 = *(v22 + 16);
    swift_unknownObjectRetain();

    if (v27)
    {
      swift_getObjectType();
      v28 = sub_20CD63314();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    sub_20CD1DA10(*(v0 + 120), &qword_27C811360, &qword_20CD653E0);
    if (v30 | v28)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v28;
      *(v0 + 40) = v30;
    }

    v31 = swift_task_create();
    *(v0 + 664) = v31;
    v32 = swift_task_alloc();
    *(v0 + 672) = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
    *v32 = v0;
    v32[1] = sub_20CD302F8;
    v34 = *(v0 + 216);
    v35 = *(v0 + 184);
    v36 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v34, v31, v35, v33, v36);
  }
}

uint64_t sub_20CD302F8()
{
  *(*v1 + 680) = v0;

  if (v0)
  {

    v2 = sub_20CD31BD0;
  }

  else
  {
    v2 = sub_20CD30420;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CD30420()
{
  v150 = v0;
  v1 = *(v0 + 648);
  v146 = *(v0 + 680);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 184);
  v143 = *(*(v0 + 192) + 8);
  v143(v2, v4);
  v1(v2, v3, v4);
  sub_20CD624C4();
  sub_20CD62564();
  sub_20CD62A24();
  if (v146)
  {
    v137 = *(v0 + 616);
    v5 = *(v0 + 512);
    v112 = *(v0 + 496);
    v141 = *(v0 + 488);
    v134 = *(v0 + 472);
    v6 = *(v0 + 440);
    v7 = *(v0 + 352);
    v8 = *(v0 + 320);
    v9 = *(v0 + 280);
    v119 = *(v0 + 232);
    v116 = *(v0 + 184);
    v126 = *(v0 + 128);
    v130 = *(v0 + 168);

    v112(v8, v9);
    v5(v6, v7);
    v143(v119, v116);
    v137(v130, v126);
    v5(v134, v7);
    v5(v141, v7);

    v10 = *(v0 + 8);
LABEL_4:

    return v10();
  }

  (*(v0 + 496))(*(v0 + 320), *(v0 + 280));
  sub_20CD62A84();
  v12 = *(v0 + 512);
  v13 = *(v0 + 424);
  v14 = *(v0 + 352);
  (*(v0 + 496))(*(v0 + 328), *(v0 + 280));
  sub_20CD62594();
  v12(v13, v14);
  sub_20CD62564();
  sub_20CD62A74();
  (*(v0 + 496))(*(v0 + 304), *(v0 + 280));
  sub_20CD62A84();
  (*(v0 + 496))(*(v0 + 312), *(v0 + 280));
  sub_20CD62614();
  v138 = *(v0 + 632);
  v131 = *(v0 + 616);
  v15 = *(v0 + 552);
  v16 = *(v0 + 512);
  v17 = *(v0 + 472);
  v110 = *(v0 + 448);
  v127 = *(v0 + 440);
  v147 = *(v0 + 432);
  v18 = *(v0 + 416);
  v19 = *(v0 + 400);
  v103 = *(v0 + 392);
  v107 = *(v0 + 384);
  v20 = *(v0 + 352);
  v123 = *(v0 + 168);
  v113 = *(v0 + 152);
  v120 = *(v0 + 128);
  v16(*(v0 + 408), v20);
  sub_20CD42728(&qword_28110F7F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_20CD63204())
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  v15(v19, v21, v20);
  if (sub_20CD63204())
  {
    v22 = v19;
  }

  else
  {
    v22 = v147;
  }

  v15(v103, v22, v20);
  v15(v110, v103, v20);
  v15(v107, v19, v20);
  sub_20CD624D4();

  v16(v103, v20);
  v16(v19, v20);
  v16(v18, v20);
  v16(v147, v20);
  v16(v127, v20);
  v131(v123, v120);
  v138(v123, v113, v120);
  sub_20CD624E4();
  sub_20CD624C4();
  v23 = sub_20CD62624();
  v16(v107, v20);
  v16(v110, v20);
  v148 = *(v0 + 576);
  v24 = *(v0 + 552);
  v139 = *(v0 + 536);
  if ((v23 & 1) == 0)
  {
    v44 = *(v0 + 472);
    v45 = *(v0 + 376);
    v46 = *(v0 + 352);
    v47 = *(v0 + 208);
    v48 = *(v0 + 184);
    v49 = *(v0 + 56);

    v139(v47, v49, v48);
    v24(v45, v44, v46);
    v50 = sub_20CD63194();
    v51 = sub_20CD633D4();
    v136 = v50;
    v52 = os_log_type_enabled(v50, v51);
    v140 = *(v0 + 616);
    v53 = *(v0 + 512);
    if (v52)
    {
      v109 = *(v0 + 496);
      v129 = *(v0 + 472);
      v133 = *(v0 + 488);
      v115 = *(v0 + 376);
      v118 = *(v0 + 352);
      v54 = *(v0 + 336);
      v55 = *(v0 + 280);
      v56 = *(v0 + 208);
      v106 = *(v0 + 184);
      v122 = *(v0 + 128);
      v125 = *(v0 + 168);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v149[0] = v58;
      *v57 = 136315394;
      sub_20CD62BF4();
      sub_20CD42728(&qword_28110F760, MEMORY[0x277D09F70], MEMORY[0x277D09F98]);
      v59 = sub_20CD63574();
      v61 = v60;
      v109(v54, v55);
      v143(v56, v106);
      v62 = sub_20CD6153C(v59, v61, v149);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      sub_20CD42728(&qword_28110F7E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v63 = sub_20CD63574();
      v65 = v64;
      v53(v115, v118);
      v66 = sub_20CD6153C(v63, v65, v149);

      *(v57 + 14) = v66;
      _os_log_impl(&dword_20CCEA000, v136, v51, "Done processing snapshots from %s to %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v58, -1, -1);
      MEMORY[0x20F3115B0](v57, -1, -1);

      v140(v125, v122);
      v53(v129, v118);
      v53(v133, v118);
    }

    else
    {
      v71 = *(v0 + 488);
      v72 = *(v0 + 472);
      v73 = *(v0 + 376);
      v74 = *(v0 + 352);
      v75 = *(v0 + 208);
      v76 = *(v0 + 184);
      v77 = *(v0 + 168);
      v78 = *(v0 + 128);

      v53(v73, v74);
      v143(v75, v76);
      v140(v77, v78);
      v53(v72, v74);
      v53(v71, v74);
    }

    v79 = *(v0 + 184);
    v80 = *(v0 + 192);
    v81 = *(v0 + 48);
    (*(v0 + 648))(v81);
    (*(v80 + 56))(v81, 0, 1, v79);

    v10 = *(v0 + 8);
    goto LABEL_4;
  }

  v94 = *(v0 + 472);
  v132 = *(v0 + 448);
  v104 = *(v0 + 368);
  v128 = *(v0 + 352);
  v144 = *(v0 + 336);
  v145 = *(v0 + 360);
  v102 = *(v0 + 296);
  v124 = *(v0 + 288);
  v135 = *(v0 + 280);
  v25 = *(v0 + 224);
  v91 = *(v0 + 232);
  v100 = *(v0 + 200);
  v101 = v25;
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 160);
  v88 = *(v0 + 168);
  v97 = v28;
  v98 = v27;
  v29 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31 = *(v0 + 128);
  v95 = *(v0 + 144);
  v96 = v31;
  v108 = v30;
  v121 = *(v0 + 112);
  v90 = *(v0 + 552);
  v32 = *(v0 + 104);
  v93 = *(v0 + 96);
  v92 = *(v0 + 88);
  v117 = *(v0 + 689);
  v114 = *(v0 + 688);
  v33 = *(v0 + 72);
  v89 = *(v0 + 64);
  v111 = *(v0 + 600);
  v105 = sub_20CD63374();
  v99 = *(v105 - 8);
  (*(v99 + 56))(v30, 1, 1, v105);
  sub_20CD41E6C(v33, v32);
  (*(v29 + 16))(v28, v88, v31);
  v139(v25, v91, v27);
  v90(v132, v94, v128);
  (*(v124 + 16))(v144, v89, v135);
  v34 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v35 = (v93 + *(v29 + 80) + v34) & ~*(v29 + 80);
  v36 = (v95 + *(v26 + 80) + v35) & ~*(v26 + 80);
  v37 = (v100 + *(v145 + 80) + v36) & ~*(v145 + 80);
  v142 = (v104 + *(v124 + 80) + v37) & ~*(v124 + 80);
  v38 = (v102 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  sub_20CD41ED0(v32, v39 + v34);
  v40 = *(v29 + 32);
  *(v0 + 632) = v40;
  *(v0 + 640) = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v40(v39 + v35, v97, v96);
  v41 = *(v26 + 32);
  *(v0 + 648) = v41;
  *(v0 + 656) = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v41(v39 + v36, v101, v98);
  (*(v145 + 32))(v39 + v37, v132, v128);
  (*(v124 + 32))(v39 + v142, v144, v135);
  *(v39 + v38) = v148;
  v42 = v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v42 = v111;
  *(v42 + 8) = v117;
  *(v42 + 9) = v114;
  sub_20CD1D9A8(v108, v121, &qword_27C811360, &qword_20CD653E0);
  LODWORD(v29) = (*(v99 + 48))(v121, 1, v105);

  v43 = *(v0 + 112);
  if (v29 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C811360, &qword_20CD653E0);
  }

  else
  {
    sub_20CD63364();
    (*(v99 + 8))(v43, v105);
  }

  v67 = *(v39 + 16);
  swift_unknownObjectRetain();

  if (v67)
  {
    swift_getObjectType();
    v68 = sub_20CD63314();
    v70 = v69;
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  sub_20CD1DA10(*(v0 + 120), &qword_27C811360, &qword_20CD653E0);
  if (v70 | v68)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v68;
    *(v0 + 40) = v70;
  }

  v82 = swift_task_create();
  *(v0 + 664) = v82;
  v83 = swift_task_alloc();
  *(v0 + 672) = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  *v83 = v0;
  v83[1] = sub_20CD302F8;
  v85 = *(v0 + 216);
  v86 = *(v0 + 184);
  v87 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v85, v82, v86, v84, v87);
}

uint64_t sub_20CD31750()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[44];
  v1(v0[59], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CD31990()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[44];
  v1(v0[59], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CD31BD0()
{
  v11 = v0[77];
  v1 = v0[64];
  v12 = v0[61];
  v2 = v0[59];
  v3 = v0[44];
  v4 = v0[29];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[16];

  (*(v6 + 8))(v4, v5);
  v11(v7, v8);
  v1(v2, v3);
  v1(v12, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD31E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20CD62AB4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20CD62C54();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD31F84, 0, 0);
}

uint64_t sub_20CD31F84(uint64_t a1)
{
  sub_20CD62A34();
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  sub_20CD62C44();
  (*(v3 + 8))(v2, v4);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280) + 36);
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_20CD320E0;
  v8 = v1[10];
  v9 = v1[2];

  return sub_20CD2EBDC(v9, v8, v5 + v6, 1, 1);
}

uint64_t sub_20CD320E0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD32298, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}