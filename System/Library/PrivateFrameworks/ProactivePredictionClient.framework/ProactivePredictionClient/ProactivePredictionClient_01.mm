uint64_t sub_260DE6528()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_260DE6FB8;
  }

  else
  {
    v2 = sub_260DE6650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260DE6650(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(v1 + 256);
  *(v1 + 24) = 0xE000000000000000;
  v3 = sub_260DF5824();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v102 = v3;
    v103 = *(v3 + 16);
    do
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v10 = *(v1 + 364);
      v12 = *(v1 + 192);
      v11 = *(v1 + 200);
      v13 = *(v1 + 184);
      (*(v12 + 16))(v11, v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, v13);
      v14 = (*(v12 + 88))(v11, v13);
      if (v14 == v10)
      {
        v7 = *(v1 + 200);
        (*(*(v1 + 192) + 96))(v7, *(v1 + 184));
        v8 = *v7;
        v9 = v7[1];
        v2 = v1 + 16;
        MEMORY[0x2666EF400](v8, v9);
      }

      else
      {
        if (v14 != *(v1 + 368))
        {
          v48 = *(v1 + 216);
          v47 = *(v1 + 224);
          v50 = *(v1 + 200);
          v49 = *(v1 + 208);
          v51 = *(v1 + 184);
          v52 = *(v1 + 192);

          sub_260DF5704();
          v53 = sub_260DF56D4();
          v55 = v54;
          (*(v48 + 8))(v47, v49);
          *(v1 + 16) = v53;
          *(v1 + 24) = v55;
          (*(v52 + 8))(v50, v51);
          goto LABEL_17;
        }

        v15 = *(v1 + 372);
        v16 = *(v1 + 200);
        v18 = *(v1 + 144);
        v17 = *(v1 + 152);
        v20 = *(v1 + 128);
        v19 = *(v1 + 136);
        (*(*(v1 + 192) + 96))(v16, *(v1 + 184));

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF30, &qword_260DF8650);
        (*(v19 + 32))(v17, v16 + *(v21 + 48), v20);
        (*(v19 + 16))(v18, v17, v20);
        v22 = (*(v19 + 88))(v18, v20);
        if (v22 == v15)
        {
          v23 = *(v1 + 144);
          v24 = *(v1 + 152);
          v26 = *(v1 + 128);
          v25 = *(v1 + 136);
          v27 = *(v1 + 112);
          v28 = *(v1 + 120);
          v29 = *(v1 + 104);
          (*(v25 + 96))(v23, v26);
          (*(v27 + 32))(v28, v23, v29);
          v30 = sub_260DF5834();
          v2 = v1 + 16;
          MEMORY[0x2666EF400](v30);

          (*(v27 + 8))(v28, v29);
          v4 = v102;
          (*(v25 + 8))(v24, v26);
LABEL_14:
          v5 = v103;
          goto LABEL_4;
        }

        if (v22 != *(v1 + 376))
        {
          if (v22 != *(v1 + 380))
          {
            v90 = *(v1 + 216);
            v91 = *(v1 + 224);
            v92 = *(v1 + 208);
            v94 = *(v1 + 144);
            v93 = *(v1 + 152);
            v95 = *(v1 + 128);
            v96 = *(v1 + 136);

            sub_260DF5704();
            v97 = sub_260DF56D4();
            v99 = v98;
            (*(v90 + 8))(v91, v92);
            v100 = *(v96 + 8);
            v100(v93, v95);
            *(v1 + 16) = v97;
            *(v1 + 24) = v99;
            v100(v94, v95);
            goto LABEL_17;
          }

          v39 = *(v1 + 144);
          v40 = *(v1 + 152);
          v42 = *(v1 + 128);
          v41 = *(v1 + 136);
          v43 = *(v1 + 112);
          v44 = *(v1 + 120);
          v45 = *(v1 + 104);
          (*(v41 + 96))(v39, v42);
          (*(v43 + 32))(v44, v39, v45);
          v46 = sub_260DF5834();
          v2 = v1 + 16;
          MEMORY[0x2666EF400](v46);

          (*(v43 + 8))(v44, v45);
          v4 = v102;
          (*(v41 + 8))(v40, v42);
          goto LABEL_14;
        }

        v31 = *(v1 + 288);
        v32 = *(v1 + 296);
        v33 = *(v1 + 144);
        v101 = *(v1 + 152);
        v35 = *(v1 + 128);
        v34 = *(v1 + 136);
        (*(v34 + 96))(v33, v35);
        v36 = *(*v33 + 16);

        *(v1 + 80) = v36;
        *(v1 + 48) = sub_260DF5DD4();
        *(v1 + 56) = v37;

        MEMORY[0x2666EF400](32, 0xE100000000000000);

        v38 = *(v1 + 56);
        *(v1 + 64) = *(v1 + 48);
        *(v1 + 72) = v38;

        MEMORY[0x2666EF400](v31, v32);

        v2 = v1 + 16;
        v5 = v103;
        MEMORY[0x2666EF400](*(v1 + 64), *(v1 + 72));

        (*(v34 + 8))(v101, v35);
      }

LABEL_4:
      ++v6;
    }

    while (v5 != v6);
  }

LABEL_17:
  v57 = *(v1 + 168);
  v56 = *(v1 + 176);
  v58 = *(v1 + 160);
  v59 = *(v1 + 24);
  *(v1 + 32) = *(v1 + 16);
  *(v1 + 40) = v59;
  sub_260DF51C4();
  sub_260DED220();
  v2 = sub_260DF5BA4();
  v4 = v60;
  (*(v57 + 8))(v56, v58);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 336);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_40:
    v5 = sub_260DED930(0, *(v5 + 2) + 1, 1, v5);
  }

  v63 = *(v5 + 2);
  v62 = *(v5 + 3);
  if (v63 >= v62 >> 1)
  {
    v5 = sub_260DED930((v62 > 1), v63 + 1, 1, v5);
  }

  v65 = *(v1 + 272);
  v64 = *(v1 + 280);
  v66 = *(v1 + 264);
  (*(*(v1 + 248) + 8))(*(v1 + 256), *(v1 + 240));
  (*(v65 + 8))(v64, v66);
  *(v5 + 2) = v63 + 1;
  v67 = &v5[16 * v63];
  *(v67 + 4) = v2;
  *(v67 + 5) = v4;
  v68 = *(v1 + 328) + 1;
  if (v68 == *(v1 + 304))
  {
LABEL_21:

    v69 = *(v1 + 8);

    return v69(v5);
  }

  else
  {
    while (1)
    {
      *(v1 + 328) = v68;
      *(v1 + 336) = v5;
      (*(v1 + 320))(*(v1 + 280), *(v1 + 88) + ((*(v1 + 360) + 32) & ~*(v1 + 360)) + *(v1 + 312) * v68, *(v1 + 264));
      v71 = *(sub_260DF5724() + 16);

      if (v71)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v72 = sub_260DF55C4();
      __swift_project_value_buffer(v72, qword_27FE53CE8);
      v73 = sub_260DF55A4();
      v74 = sub_260DF5B64();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_260DCE000, v73, v74, "Skipping here as count is 0", v75, 2u);
        MEMORY[0x2666EFFA0](v75, -1, -1);
      }

      v76 = *(v1 + 232);
      v78 = *(v1 + 208);
      v77 = *(v1 + 216);

      sub_260DF5704();
      v79 = sub_260DF56D4();
      v81 = v80;
      (*(v77 + 8))(v76, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_260DED930(0, *(v5 + 2) + 1, 1, v5);
      }

      v83 = *(v5 + 2);
      v82 = *(v5 + 3);
      if (v83 >= v82 >> 1)
      {
        v5 = sub_260DED930((v82 > 1), v83 + 1, 1, v5);
      }

      (*(*(v1 + 272) + 8))(*(v1 + 280), *(v1 + 264));
      *(v5 + 2) = v83 + 1;
      v84 = &v5[16 * v83];
      *(v84 + 4) = v79;
      *(v84 + 5) = v81;
      v68 = *(v1 + 328) + 1;
      if (v68 == *(v1 + 304))
      {
        goto LABEL_21;
      }
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v87 = swift_task_alloc();
    *(v1 + 344) = v87;
    *v87 = v1;
    v87[1] = sub_260DE6528;
    v88 = *(v1 + 280);
    v89 = *(v1 + 256);

    return MEMORY[0x2821DAA28](v89, v88, v85, OpaqueTypeConformance2);
  }
}

uint64_t sub_260DE6FB8()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t static ToolKitActionStreamWrapper.fetchTitlesFromRawToolInvocationsWithSession<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_260DF51D4();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_260DF5844();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_260DF5854();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = sub_260DF5864();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v9 = sub_260DF5884();
  v4[28] = v9;
  v4[29] = *(v9 - 8);
  v4[30] = swift_task_alloc();
  v10 = sub_260DF56E4();
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v11 = sub_260DF5764();
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DE73B0, 0, 0);
}

uint64_t sub_260DE73B0()
{
  v1 = *(v0 + 88);
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_260DF5264();
  v5 = v4;

  *(v0 + 304) = v3;
  *(v0 + 312) = v5;
  v6 = *(v1 + 16);
  *(v0 + 320) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 288);
    *(v0 + 376) = *(v8 + 80);
    v9 = MEMORY[0x277D72660];
    *(v0 + 380) = *MEMORY[0x277D72658];
    *(v0 + 384) = *v9;
    *(v0 + 388) = *MEMORY[0x277D72648];
    v10 = MEMORY[0x277D72640];
    *(v0 + 392) = *MEMORY[0x277D72650];
    *(v0 + 396) = *v10;
    *(v0 + 328) = *(v8 + 72);
    *(v0 + 336) = *(v8 + 16);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 344) = v7;
      *(v0 + 352) = v11;
      (*(v0 + 336))(*(v0 + 296), *(v0 + 88) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v7, *(v0 + 280));
      v12 = *(sub_260DF5724() + 16);

      if (v12)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v13 = sub_260DF55C4();
      __swift_project_value_buffer(v13, qword_27FE53CE8);
      v14 = sub_260DF55A4();
      v15 = sub_260DF5B64();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_260DCE000, v14, v15, "Skipping here as count is 0", v16, 2u);
        MEMORY[0x2666EFFA0](v16, -1, -1);
      }

      v17 = *(v0 + 272);
      v19 = *(v0 + 248);
      v18 = *(v0 + 256);

      sub_260DF5704();
      v20 = sub_260DF56D4();
      v22 = v21;
      (*(v18 + 8))(v17, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_260DED930(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v24 >= v23 >> 1)
      {
        v11 = sub_260DED930((v23 > 1), v24 + 1, 1, v11);
      }

      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      *(v11 + 2) = v24 + 1;
      v25 = &v11[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      v7 = *(v0 + 344) + 1;
      if (v7 == *(v0 + 320))
      {
        goto LABEL_18;
      }
    }

    v26 = swift_task_alloc();
    *(v0 + 360) = v26;
    *v26 = v0;
    v26[1] = sub_260DE7814;
    v27 = *(v0 + 296);
    v28 = *(v0 + 240);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);

    return MEMORY[0x2821DAA28](v28, v27, v29, v30);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_18:

    v31 = *(v0 + 8);

    return v31(v11);
  }
}

uint64_t sub_260DE7814()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_260DE8270;
  }

  else
  {
    v2 = sub_260DE793C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260DE793C(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(v1 + 240);
  *(v1 + 24) = 0xE000000000000000;
  v3 = sub_260DF5824();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v102 = v3;
    v103 = *(v3 + 16);
    do
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v10 = *(v1 + 380);
      v12 = *(v1 + 208);
      v11 = *(v1 + 216);
      v13 = *(v1 + 200);
      (*(v12 + 16))(v11, v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, v13);
      v14 = (*(v12 + 88))(v11, v13);
      if (v14 == v10)
      {
        v7 = *(v1 + 216);
        (*(*(v1 + 208) + 96))(v7, *(v1 + 200));
        v8 = *v7;
        v9 = v7[1];
        v2 = v1 + 16;
        MEMORY[0x2666EF400](v8, v9);
      }

      else
      {
        if (v14 != *(v1 + 384))
        {
          v47 = *(v1 + 256);
          v48 = *(v1 + 264);
          v49 = *(v1 + 248);
          v51 = *(v1 + 208);
          v50 = *(v1 + 216);
          v52 = *(v1 + 200);

          sub_260DF5704();
          v53 = sub_260DF56D4();
          v55 = v54;
          (*(v47 + 8))(v48, v49);
          *(v1 + 16) = v53;
          *(v1 + 24) = v55;
          (*(v51 + 8))(v50, v52);
          goto LABEL_17;
        }

        v15 = *(v1 + 388);
        v16 = *(v1 + 216);
        v17 = *(v1 + 192);
        v18 = *(v1 + 176);
        v19 = *(v1 + 184);
        v20 = *(v1 + 168);
        (*(*(v1 + 208) + 96))(v16, *(v1 + 200));

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF30, &qword_260DF8650);
        (*(v18 + 32))(v17, v16 + *(v21 + 48), v20);
        (*(v18 + 16))(v19, v17, v20);
        v22 = (*(v18 + 88))(v19, v20);
        if (v22 == v15)
        {
          v23 = *(v1 + 184);
          v24 = *(v1 + 192);
          v26 = *(v1 + 168);
          v25 = *(v1 + 176);
          v27 = *(v1 + 152);
          v28 = *(v1 + 160);
          v29 = *(v1 + 144);
          (*(v25 + 96))(v23, v26);
          (*(v27 + 32))(v28, v23, v29);
          v30 = sub_260DF5834();
          v2 = v1 + 16;
          MEMORY[0x2666EF400](v30);

          (*(v27 + 8))(v28, v29);
          v4 = v102;
          (*(v25 + 8))(v24, v26);
LABEL_14:
          v5 = v103;
          goto LABEL_4;
        }

        if (v22 != *(v1 + 392))
        {
          if (v22 != *(v1 + 396))
          {
            v90 = *(v1 + 256);
            v91 = *(v1 + 264);
            v92 = *(v1 + 248);
            v94 = *(v1 + 184);
            v93 = *(v1 + 192);
            v95 = *(v1 + 168);
            v96 = *(v1 + 176);

            sub_260DF5704();
            v97 = sub_260DF56D4();
            v99 = v98;
            (*(v90 + 8))(v91, v92);
            v100 = *(v96 + 8);
            v100(v93, v95);
            *(v1 + 16) = v97;
            *(v1 + 24) = v99;
            v100(v94, v95);
            goto LABEL_17;
          }

          v39 = *(v1 + 184);
          v40 = *(v1 + 192);
          v42 = *(v1 + 168);
          v41 = *(v1 + 176);
          v43 = *(v1 + 152);
          v44 = *(v1 + 160);
          v45 = *(v1 + 144);
          (*(v41 + 96))(v39, v42);
          (*(v43 + 32))(v44, v39, v45);
          v46 = sub_260DF5834();
          v2 = v1 + 16;
          MEMORY[0x2666EF400](v46);

          (*(v43 + 8))(v44, v45);
          v4 = v102;
          (*(v41 + 8))(v40, v42);
          goto LABEL_14;
        }

        v31 = *(v1 + 304);
        v32 = *(v1 + 312);
        v33 = *(v1 + 184);
        v101 = *(v1 + 192);
        v35 = *(v1 + 168);
        v34 = *(v1 + 176);
        (*(v34 + 96))(v33, v35);
        v36 = *(*v33 + 16);

        *(v1 + 80) = v36;
        *(v1 + 48) = sub_260DF5DD4();
        *(v1 + 56) = v37;

        MEMORY[0x2666EF400](32, 0xE100000000000000);

        v38 = *(v1 + 56);
        *(v1 + 64) = *(v1 + 48);
        *(v1 + 72) = v38;

        MEMORY[0x2666EF400](v31, v32);

        v2 = v1 + 16;
        v5 = v103;
        MEMORY[0x2666EF400](*(v1 + 64), *(v1 + 72));

        (*(v34 + 8))(v101, v35);
      }

LABEL_4:
      ++v6;
    }

    while (v5 != v6);
  }

LABEL_17:
  v56 = *(v1 + 128);
  v57 = *(v1 + 136);
  v58 = *(v1 + 120);
  v59 = *(v1 + 24);
  *(v1 + 32) = *(v1 + 16);
  *(v1 + 40) = v59;
  sub_260DF51C4();
  sub_260DED220();
  v2 = sub_260DF5BA4();
  v4 = v60;
  (*(v56 + 8))(v57, v58);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 352);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_40:
    v5 = sub_260DED930(0, *(v5 + 2) + 1, 1, v5);
  }

  v63 = *(v5 + 2);
  v62 = *(v5 + 3);
  if (v63 >= v62 >> 1)
  {
    v5 = sub_260DED930((v62 > 1), v63 + 1, 1, v5);
  }

  v65 = *(v1 + 288);
  v64 = *(v1 + 296);
  v66 = *(v1 + 280);
  (*(*(v1 + 232) + 8))(*(v1 + 240), *(v1 + 224));
  (*(v65 + 8))(v64, v66);
  *(v5 + 2) = v63 + 1;
  v67 = &v5[16 * v63];
  *(v67 + 4) = v2;
  *(v67 + 5) = v4;
  v68 = *(v1 + 344) + 1;
  if (v68 == *(v1 + 320))
  {
LABEL_21:

    v69 = *(v1 + 8);

    return v69(v5);
  }

  else
  {
    while (1)
    {
      *(v1 + 344) = v68;
      *(v1 + 352) = v5;
      (*(v1 + 336))(*(v1 + 296), *(v1 + 88) + ((*(v1 + 376) + 32) & ~*(v1 + 376)) + *(v1 + 328) * v68, *(v1 + 280));
      v71 = *(sub_260DF5724() + 16);

      if (v71)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v72 = sub_260DF55C4();
      __swift_project_value_buffer(v72, qword_27FE53CE8);
      v73 = sub_260DF55A4();
      v74 = sub_260DF5B64();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_260DCE000, v73, v74, "Skipping here as count is 0", v75, 2u);
        MEMORY[0x2666EFFA0](v75, -1, -1);
      }

      v76 = *(v1 + 272);
      v78 = *(v1 + 248);
      v77 = *(v1 + 256);

      sub_260DF5704();
      v79 = sub_260DF56D4();
      v81 = v80;
      (*(v77 + 8))(v76, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_260DED930(0, *(v5 + 2) + 1, 1, v5);
      }

      v83 = *(v5 + 2);
      v82 = *(v5 + 3);
      if (v83 >= v82 >> 1)
      {
        v5 = sub_260DED930((v82 > 1), v83 + 1, 1, v5);
      }

      (*(*(v1 + 288) + 8))(*(v1 + 296), *(v1 + 280));
      *(v5 + 2) = v83 + 1;
      v84 = &v5[16 * v83];
      *(v84 + 4) = v79;
      *(v84 + 5) = v81;
      v68 = *(v1 + 344) + 1;
      if (v68 == *(v1 + 320))
      {
        goto LABEL_21;
      }
    }

    v85 = swift_task_alloc();
    *(v1 + 360) = v85;
    *v85 = v1;
    v85[1] = sub_260DE7814;
    v86 = *(v1 + 296);
    v87 = *(v1 + 240);
    v88 = *(v1 + 104);
    v89 = *(v1 + 112);

    return MEMORY[0x2821DAA28](v87, v86, v88, v89);
  }
}

uint64_t sub_260DE8270()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t static ToolKitActionStreamWrapper.fetchTitlesFromRawToolInvocations(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260DF4C6C;

  return sub_260DEFD88(a1);
}

uint64_t static ToolKitActionStreamWrapper.fetchTitlesFromToolInvocations(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260DE84B8;

  return sub_260DF0494(a1);
}

uint64_t sub_260DE84B8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_260DE873C(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  sub_260DDE814(0, &qword_27FE4FE18, 0x277CBEA90);
  v3 = sub_260DF5AB4();
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_260DE881C;

  return sub_260DF0494(v3);
}

uint64_t sub_260DE881C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_260DF52D4();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_260DF5A94();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

void sub_260DE89AC(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v349 = a7;
  v350 = a6;
  v375 = a5;
  v370 = a4;
  v383 = a1;
  v384 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v321 - v9;
  v348 = sub_260DF5444();
  v347 = *(v348 - 8);
  MEMORY[0x28223BE20](v348);
  v352 = &v321 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_260DF5974();
  v345 = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v339 = &v321 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50078, &qword_260DF8D98);
  MEMORY[0x28223BE20](v13 - 8);
  v344 = &v321 - v14;
  v363 = sub_260DF54A4();
  v359 = *(v363 - 8);
  MEMORY[0x28223BE20](v363);
  v362 = &v321 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_260DF54B4();
  v358 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v364 = &v321 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500B0, &qword_260DF8DE8);
  MEMORY[0x28223BE20](v17 - 8);
  v357 = &v321 - v18;
  v355 = sub_260DF5764();
  v354 = *(v355 - 8);
  v19 = MEMORY[0x28223BE20](v355);
  v341 = (&v321 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v361 = &v321 - v21;
  *(&v378 + 1) = sub_260DF5564();
  v374 = *(*(&v378 + 1) - 8);
  v22 = MEMORY[0x28223BE20](*(&v378 + 1));
  v376 = &v321 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v372 = &v321 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500B8, &qword_260DF8DF0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v373 = &v321 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v377 = (&v321 - v28);
  v367 = sub_260DF56E4();
  v360 = *(v367 - 8);
  v29 = MEMORY[0x28223BE20](v367);
  v343 = &v321 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v342 = &v321 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v340 = &v321 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v351 = &v321 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v356 = &v321 - v38;
  MEMORY[0x28223BE20](v37);
  v366 = &v321 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500C0, &qword_260DF8DF8);
  MEMORY[0x28223BE20](v40 - 8);
  v371 = &v321 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500C8, &qword_260DF8E00);
  MEMORY[0x28223BE20](v42 - 8);
  v381 = (&v321 - v43);
  v44 = sub_260DF54E4();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v379 = (&v321 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v49 = &v321 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500D0, &qword_260DF8E08);
  MEMORY[0x28223BE20](v50 - 8);
  v382 = &v321 - v51;
  v52 = sub_260DF5534();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  v380 = &v321 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  *&v378 = &v321 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v353 = &v321 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v368 = &v321 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v321 - v62;
  if (qword_27FE4F990 != -1)
  {
    swift_once();
  }

  v64 = sub_260DF55C4();
  v385 = __swift_project_value_buffer(v64, qword_27FE53CE8);
  v65 = sub_260DF55A4();
  v66 = sub_260DF5B44();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v369 = v10;
    v68 = a2;
    v69 = v49;
    v70 = v44;
    v71 = v45;
    v72 = v53;
    v73 = v63;
    v74 = v52;
    v75 = v67;
    *v67 = 0;
    _os_log_impl(&dword_260DCE000, v65, v66, "ToolKit got some event", v67, 2u);
    v76 = v75;
    v52 = v74;
    v63 = v73;
    v53 = v72;
    v45 = v71;
    v44 = v70;
    v49 = v69;
    a2 = v68;
    v10 = v369;
    MEMORY[0x2666EFFA0](v76, -1, -1);
  }

  swift_beginAccess();
  v77 = v384;
  if (*(a2 + 2) >= v384)
  {
    v79 = sub_260DF55A4();
    v87 = sub_260DF5B54();
    if (os_log_type_enabled(v79, v87))
    {
      v81 = swift_slowAlloc();
      *v81 = 134217984;
      *(v81 + 4) = v77;
      v82 = "ToolKit event limit hit: %lu";
      v83 = v87;
      v84 = v79;
      v85 = v81;
      v86 = 12;
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  v78 = v382;
  sub_260DF5574();
  if (v53[6](v78, 1, v52) == 1)
  {
    sub_260DDE7B4(v78, &qword_27FE500D0, &qword_260DF8E08);
    v79 = sub_260DF55A4();
    v80 = sub_260DF5B64();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      v82 = "ToolKit tool definition is nil";
      v83 = v80;
      v84 = v79;
      v85 = v81;
      v86 = 2;
LABEL_11:
      _os_log_impl(&dword_260DCE000, v84, v83, v82, v85, v86);
      MEMORY[0x2666EFFA0](v81, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v53[4](v63, v78, v52);
  v88 = v381;
  sub_260DF5524();
  if ((*(v45 + 48))(v88, 1, v44) == 1)
  {
    sub_260DDE7B4(v88, &qword_27FE500C8, &qword_260DF8E00);
LABEL_22:
    v99 = v380;
    v53[2](v380, v63, v52);
    v100 = v53;
    v101 = sub_260DF55A4();
    v102 = sub_260DF5B64();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = v52;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v338 = v63;
      v106 = v105;
      *&v389 = v105;
      *v104 = 136315138;
      v107 = sub_260DF5514();
      if (v108)
      {
        v109 = v107;
      }

      else
      {
        v109 = 7104878;
      }

      if (v108)
      {
        v110 = v108;
      }

      else
      {
        v110 = 0xE300000000000000;
      }

      v111 = v100[1];
      (v111)(v99, v103);
      v112 = sub_260DEDBC4(v109, v110, &v389);

      *(v104 + 4) = v112;
      _os_log_impl(&dword_260DCE000, v101, v102, "Ignoring ToolKit event which is not an action %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x2666EFFA0](v106, -1, -1);
      MEMORY[0x2666EFFA0](v104, -1, -1);

LABEL_30:
      (v111)(v338, v103);
      return;
    }

    v113 = v100[1];
    (v113)(v99, v52);
    goto LABEL_32;
  }

  v382 = a2;
  v384 = v52;
  (*(v45 + 32))(v49, v88, v44);
  v89 = v379;
  (*(v45 + 104))(v379, *MEMORY[0x277D1F648], v44);
  sub_260DF4A24(&qword_27FE500D8, MEMORY[0x277D1F650], MEMORY[0x277D1F658]);
  sub_260DF5A74();
  sub_260DF5A74();
  v92 = *(v45 + 8);
  v90 = v45 + 8;
  v91 = v92;
  v92(v89, v44);
  if (v389 != v387)
  {
    v91(v49, v44);
    v52 = v384;
    goto LABEL_22;
  }

  sub_260DF5514();
  v52 = v384;
  v337 = v49;
  if (!v93)
  {
LABEL_34:
    v114 = v378;
    v53[2](v378, v63, v52);
    v115 = v53;
    v116 = sub_260DF55A4();
    v117 = sub_260DF5B64();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v336 = v91;
      v103 = v52;
      v119 = v118;
      v120 = swift_slowAlloc();
      v335 = v44;
      v121 = v120;
      *&v389 = v120;
      *v119 = 136315138;
      v122 = sub_260DF5514();
      if (v123)
      {
        v124 = v122;
      }

      else
      {
        v124 = 7104878;
      }

      v338 = v63;
      if (v123)
      {
        v125 = v123;
      }

      else
      {
        v125 = 0xE300000000000000;
      }

      v126 = v114;
      v111 = v115[1];
      (v111)(v126, v103);
      v127 = sub_260DEDBC4(v124, v125, &v389);

      *(v119 + 4) = v127;
      _os_log_impl(&dword_260DCE000, v116, v117, "Ignoring ToolKit event which is not a workflow action %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v121);
      MEMORY[0x2666EFFA0](v121, -1, -1);
      MEMORY[0x2666EFFA0](v119, -1, -1);

      v336(v337, v335);
      goto LABEL_30;
    }

    v113 = v115[1];
    (v113)(v114, v52);
    v91(v337, v44);
LABEL_32:
    (v113)(v63, v52);
    return;
  }

  v94 = v93;
  if ((sub_260DF5A64() & 1) == 0)
  {

    goto LABEL_34;
  }

  v380 = v53;
  if (v375)
  {
    v95 = v44;
    v96 = v371;
    sub_260DF5504();
    v97 = sub_260DF54D4();
    v98 = *(v97 - 8);
    if ((*(v98 + 48))(v96, 1, v97) == 1)
    {
      sub_260DDE7B4(v96, &qword_27FE500C0, &qword_260DF8DF8);
      v52 = v384;
      v44 = v95;
      goto LABEL_56;
    }

    v128 = sub_260DF54C4();
    v129 = v96;
    v130 = v128;
    v132 = v131;
    (*(v98 + 8))(v129, v97);
    v52 = v384;
    v44 = v95;
    if (v132)
    {
      if (v130 == v370 && v132 == v375)
      {

        goto LABEL_48;
      }

      v133 = sub_260DF5DE4();

      if (v133)
      {
        goto LABEL_48;
      }
    }

LABEL_56:

    v154 = v375;

    v155 = sub_260DF55A4();
    v156 = sub_260DF5B64();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = v44;
      v158 = v52;
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v389 = v160;
      *v159 = 136315138;
      *(v159 + 4) = sub_260DEDBC4(v370, v154, &v389);
      _os_log_impl(&dword_260DCE000, v155, v156, "Ignoring ToolKit event that didn't match bundleID filter %s", v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v160);
      MEMORY[0x2666EFFA0](v160, -1, -1);
      MEMORY[0x2666EFFA0](v159, -1, -1);

      v91(v337, v157);
      (*(v380 + 1))(v63, v158);
    }

    else
    {

      v91(v337, v44);
      (*(v380 + 1))(v63, v52);
    }

    return;
  }

LABEL_48:
  v334 = v94;
  v336 = v91;
  v134 = v380;
  v135 = *(v380 + 2);
  v136 = v368;
  v332 = v380 + 16;
  v331 = v135;
  v135(v368, v63, v52);
  v137 = sub_260DF55A4();
  v138 = sub_260DF5B44();
  v139 = os_log_type_enabled(v137, v138);
  v369 = v10;
  if (v139)
  {
    v140 = v52;
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v335 = v44;
    v143 = v142;
    *&v389 = v142;
    *v141 = 136315138;
    v144 = sub_260DF5514();
    if (v145)
    {
      v146 = v144;
    }

    else
    {
      v146 = 7104878;
    }

    v147 = v136;
    v148 = v90;
    if (v145)
    {
      v149 = v145;
    }

    else
    {
      v149 = 0xE300000000000000;
    }

    v150 = *(v134 + 1);
    v150(v147, v140);
    v151 = sub_260DEDBC4(v146, v149, &v389);
    v90 = v148;
    v152 = v150;

    *(v141 + 4) = v151;
    _os_log_impl(&dword_260DCE000, v137, v138, "ToolKit trying to convert %s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v143);
    v153 = v143;
    v44 = v335;
    MEMORY[0x2666EFFA0](v153, -1, -1);
    MEMORY[0x2666EFFA0](v141, -1, -1);
  }

  else
  {

    v152 = *(v134 + 1);
    v152(v136, v52);
  }

  v161 = v377;
  sub_260DF54F4();
  sub_260DF4A24(&qword_27FE500E0, MEMORY[0x277D72238], MEMORY[0x277D72218]);
  sub_260DF4A24(&qword_27FE500E8, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  sub_260DF5474();
  v329 = 0;
  v326 = v152;
  v335 = v44;
  v327 = v90;
  v338 = v63;
  v330 = sub_260DF10A8(MEMORY[0x277D84F90]);
  v162 = sub_260DF5594();
  v163 = 0;
  v164 = *(v162 + 64);
  v333 = v162 + 64;
  v370 = v162;
  v165 = 1 << *(v162 + 32);
  v166 = -1;
  if (v165 < 64)
  {
    v166 = ~(-1 << v165);
  }

  v167 = v166 & v164;
  v168 = (v165 + 63) >> 6;
  v368 = (v374 + 16);
  v381 = (v374 + 32);
  v379 = (v374 + 88);
  LODWORD(v378) = *MEMORY[0x277D20518];
  LODWORD(v375) = *MEMORY[0x277D20520];
  v371 = (v374 + 8);
  v328 = (v374 + 96);
  v325 = v359 + 2;
  v324 = (v359 + 1);
  v359 = (v358 + 2);
  ++v358;
  v169 = v376;
  v170 = v373;
LABEL_64:
  v171 = v163;
  if (v167)
  {
    while (1)
    {
      v172 = v171;
LABEL_73:
      v174 = __clz(__rbit64(v167));
      v167 &= v167 - 1;
      v175 = v174 | (v172 << 6);
      v176 = (*(v370 + 48) + 16 * v175);
      v178 = *v176;
      v177 = v176[1];
      v179 = v374;
      v180 = v372;
      v181 = *(&v378 + 1);
      (*(v374 + 16))(v372, *(v370 + 56) + *(v374 + 72) * v175, *(&v378 + 1));
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500F0, &qword_260DF8E10);
      v183 = *(v182 + 48);
      v184 = v373;
      *v373 = v178;
      *(v184 + 1) = v177;
      v185 = v180;
      v170 = v184;
      (*(v179 + 32))(&v184[v183], v185, v181);
      (*(*(v182 - 8) + 56))(v170, 0, 1, v182);

      v163 = v172;
      v169 = v376;
      v161 = v377;
LABEL_74:
      sub_260DF49B4(v170, v161);
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500F0, &qword_260DF8E10);
      if ((*(*(v186 - 8) + 48))(v161, 1, v186) == 1)
      {
        break;
      }

      v188 = *v161;
      v187 = v161[1];
      v189 = v161 + *(v186 + 48);
      v190 = *(&v378 + 1);
      (*v381)(v169, v189, *(&v378 + 1));
      v191 = (*v379)(v169, v190);
      if (v191 == v378)
      {
        (*v328)(v169, *(&v378 + 1));
        v193 = *v169;
        v194 = swift_projectBox();
        (*v359)(v364, v194, v365);
        v195 = v329;
        v329 = sub_260DF5484();
        v323 = v196;
        if (v195)
        {

          (*v358)(v364, v365);
          goto LABEL_146;
        }

        v390 = sub_260DF5944();
        v391 = MEMORY[0x277D72A68];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v389);
        v321 = sub_260DF4A24(&qword_27FE500F8, MEMORY[0x277D72A78], MEMORY[0x277D72A00]);
        sub_260DF4A24(&qword_27FE50100, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
        sub_260DF5474();
        v329 = 0;
        sub_260DF4854(&v389, &v387);
        v197 = v330;
        LODWORD(v323) = swift_isUniquelyReferenced_nonNull_native();
        v386 = v197;
        v198 = sub_260DEE470(v188, v187);
        v200 = *(v197 + 16);
        v201 = (v199 & 1) == 0;
        v202 = __OFADD__(v200, v201);
        v203 = v200 + v201;
        v169 = v376;
        if (v202)
        {
          __break(1u);
          goto LABEL_148;
        }

        if (*(v197 + 24) >= v203)
        {
          if (v323)
          {
            goto LABEL_91;
          }

          v330 = v198;
          v323 = v193;
          v219 = v199;
          sub_260DEE864();
          v198 = v330;
          if (v219)
          {
LABEL_92:
            v215 = v198;

            v330 = v386;
            v216 = (v386[7] + 40 * v215);
            __swift_destroy_boxed_opaque_existential_1(v216);
            sub_260DF4854(&v387, v216);
            (*v358)(v364, v365);
            goto LABEL_103;
          }
        }

        else
        {
          LODWORD(v330) = v199;
          sub_260DEE4E8(v203, v323);
          v198 = sub_260DEE470(v188, v187);
          v204 = v199 & 1;
          LOBYTE(v199) = v330;
          if ((v330 & 1) != v204)
          {
            goto LABEL_152;
          }

LABEL_91:
          if (v199)
          {
            goto LABEL_92;
          }
        }

        v220 = v386;
        v386[(v198 >> 6) + 8] |= 1 << v198;
        v221 = (v220[6] + 16 * v198);
        *v221 = v188;
        v221[1] = v187;
        sub_260DF4854(&v387, v220[7] + 40 * v198);
        (*v358)(v364, v365);
        v222 = v220[2];
        v202 = __OFADD__(v222, 1);
        v223 = v222 + 1;
        if (!v202)
        {
          goto LABEL_102;
        }

        goto LABEL_149;
      }

      if (v191 == v375)
      {
        (*v328)(v169, *(&v378 + 1));
        v205 = *v169;
        v206 = swift_projectBox();
        (*v325)(v362, v206, v363);
        v195 = v329;
        v329 = sub_260DF5494();
        v323 = v207;
        if (!v195)
        {
          v390 = sub_260DF5944();
          v391 = MEMORY[0x277D72A68];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v389);
          v321 = sub_260DF4A24(&qword_27FE500F8, MEMORY[0x277D72A78], MEMORY[0x277D72A00]);
          sub_260DF4A24(&qword_27FE50100, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
          sub_260DF5474();
          v329 = 0;
          sub_260DF4854(&v389, &v387);
          v208 = v330;
          LODWORD(v323) = swift_isUniquelyReferenced_nonNull_native();
          v386 = v208;
          v209 = sub_260DEE470(v188, v187);
          v211 = *(v208 + 16);
          v212 = (v210 & 1) == 0;
          v202 = __OFADD__(v211, v212);
          v213 = v211 + v212;
          v169 = v376;
          if (!v202)
          {
            if (*(v208 + 24) < v213)
            {
              LODWORD(v330) = v210;
              sub_260DEE4E8(v213, v323);
              v209 = sub_260DEE470(v188, v187);
              v214 = v210 & 1;
              LOBYTE(v210) = v330;
              if ((v330 & 1) != v214)
              {
                goto LABEL_152;
              }

LABEL_94:
              if (v210)
              {
                goto LABEL_95;
              }

LABEL_101:
              v220 = v386;
              v386[(v209 >> 6) + 8] |= 1 << v209;
              v225 = (v220[6] + 16 * v209);
              *v225 = v188;
              v225[1] = v187;
              sub_260DF4854(&v387, v220[7] + 40 * v209);
              (*v324)(v362, v363);
              v226 = v220[2];
              v202 = __OFADD__(v226, 1);
              v223 = v226 + 1;
              if (!v202)
              {
LABEL_102:
                v330 = v220;
                v220[2] = v223;
                goto LABEL_103;
              }

LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              sub_260DF5E04();
              __break(1u);
              return;
            }

            if (v323)
            {
              goto LABEL_94;
            }

            v330 = v209;
            v323 = v205;
            v224 = v210;
            sub_260DEE864();
            v209 = v330;
            if ((v224 & 1) == 0)
            {
              goto LABEL_101;
            }

LABEL_95:
            v217 = v209;

            v330 = v386;
            v218 = (v386[7] + 40 * v217);
            __swift_destroy_boxed_opaque_existential_1(v218);
            sub_260DF4854(&v387, v218);
            (*v324)(v362, v363);
LABEL_103:

            goto LABEL_64;
          }

LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        (*v324)(v362, v363);
LABEL_146:
        (*(v360 + 8))(v366, v367);

LABEL_106:

        v231 = v338;
        v232 = v335;
        v233 = v337;
        v234 = v336;
        v235 = v326;
        v236 = v195;
        v237 = sub_260DF55A4();
        v238 = sub_260DF5B64();

        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          v240 = v195;
          v241 = v235;
          v242 = v232;
          v243 = swift_slowAlloc();
          *v239 = 138412290;
          v244 = v240;
          v245 = _swift_stdlib_bridgeErrorToNSError();
          *(v239 + 4) = v245;
          *v243 = v245;
          _os_log_impl(&dword_260DCE000, v237, v238, "Failed to get ToolInvocation %@", v239, 0xCu);
          sub_260DDE7B4(v243, &unk_27FE4FF50, &qword_260DF8A50);
          v246 = v243;
          v232 = v242;
          v235 = v241;
          v195 = v240;
          MEMORY[0x2666EFFA0](v246, -1, -1);
          v247 = v239;
          v233 = v337;
          MEMORY[0x2666EFFA0](v247, -1, -1);
        }

        v234(v233, v232);
        v235(v231, v384);
        return;
      }

      (*v371)(v169, *(&v378 + 1));
      v171 = v163;
      if (!v167)
      {
        goto LABEL_66;
      }
    }

    v227 = v360;
    v228 = v366;
    v229 = v367;
    (*(v360 + 16))(v356, v366, v367);
    v230 = sub_260DF5814();
    (*(*(v230 - 8) + 56))(v357, 1, 1, v230);

    v195 = v329;
    sub_260DF56F4();
    if (v195)
    {
      (*(v227 + 8))(v228, v229);
      goto LABEL_106;
    }

    v248 = sub_260DF5754();
    v249 = v338;
    v250 = v335;
    v251 = v336;
    if (!v248)
    {

      v253 = v384;
      v254 = v353;
LABEL_113:
      v331(v254, v249, v253);
      v255 = sub_260DF55A4();
      v256 = sub_260DF5B64();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        *&v389 = v258;
        *v257 = 136315138;
        v259 = sub_260DF5514();
        if (v260)
        {
          v261 = v259;
        }

        else
        {
          v261 = 7104878;
        }

        if (v260)
        {
          v262 = v260;
        }

        else
        {
          v262 = 0xE300000000000000;
        }

        v263 = v254;
        v264 = v326;
        v326(v263, v253);
        v265 = sub_260DEDBC4(v261, v262, &v389);

        *(v257 + 4) = v265;
        _os_log_impl(&dword_260DCE000, v255, v256, "Failed to encode ToolKit event %s", v257, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v258);
        MEMORY[0x2666EFFA0](v258, -1, -1);
        MEMORY[0x2666EFFA0](v257, -1, -1);

        (*(v354 + 8))(v361, v355);
        (*(v360 + 8))(v366, v367);
        v336(v337, v335);
        v264(v338, v253);
      }

      else
      {

        v266 = v326;
        v326(v254, v253);
        (*(v354 + 8))(v361, v355);
        (*(v360 + 8))(v366, v367);
        v251(v337, v250);
        v266(v249, v253);
      }

      return;
    }

    v389 = xmmword_260DF89D0;
    v252 = v248;
    sub_260DF53A4();

    v253 = v384;
    v254 = v353;
    if (*(&v389 + 1) >> 60 == 15)
    {

      goto LABEL_113;
    }

    v378 = v389;
    v267 = v351;
    v268 = v361;
    sub_260DF5704();
    v379 = sub_260DF56D4();
    v270 = v269;
    v381 = *(v227 + 8);
    v381(v267, v367);
    v167 = v354;
    v161 = v341;
    v169 = v355;
    (*(v354 + 16))(v341, v268, v355);

    v172 = sub_260DF55A4();
    v271 = sub_260DF5B44();
    v385 = v270;

    if (os_log_type_enabled(v172, v271))
    {
      v272 = v167;
      v273 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *&v389 = v274;
      *v273 = 136315394;
      v275 = v351;
      sub_260DF5704();
      v276 = sub_260DF56C4();
      v278 = v277;
      v381(v275, v367);
      v377 = *(v272 + 8);
      (v377)(v161, v355);
      v279 = sub_260DEDBC4(v276, v278, &v389);

      *(v273 + 4) = v279;
      *(v273 + 12) = 2080;
      *(v273 + 14) = sub_260DEDBC4(v379, v385, &v389);
      _os_log_impl(&dword_260DCE000, v172, v271, "Got tool %s:%s", v273, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666EFFA0](v274, -1, -1);
      MEMORY[0x2666EFFA0](v273, -1, -1);

      goto LABEL_126;
    }
  }

  else
  {
LABEL_66:
    if (v168 <= v171 + 1)
    {
      v173 = v171 + 1;
    }

    else
    {
      v173 = v168;
    }

    v163 = v173 - 1;
    while (1)
    {
      v172 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        break;
      }

      if (v172 >= v168)
      {
        v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500F0, &qword_260DF8E10);
        (*(*(v192 - 8) + 56))(v170, 1, 1, v192);
        v167 = 0;
        goto LABEL_74;
      }

      v167 = *(v333 + 8 * v172);
      ++v171;
      if (v167)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
  }

  v377 = *(v167 + 8);
  (v377)(v161, v169);
LABEL_126:
  v280 = v340;
  sub_260DF5704();
  v376 = sub_260DF56C4();
  v375 = v281;
  v282 = v367;
  v283 = v381;
  v381(v280, v367);
  v284 = v342;
  sub_260DF5704();
  v285 = v344;
  sub_260DF56B4();
  v283(v284, v282);
  v286 = v345;
  v287 = v346;
  v288 = (*(v345 + 48))(v285, 1, v346);
  v289 = v347;
  v290 = v369;
  if (v288 == 1)
  {
    sub_260DDE7B4(v285, &qword_27FE50078, &qword_260DF8D98);
    v291 = v351;
    sub_260DF5704();
    v285 = v339;
    sub_260DF5674();
    v381(v291, v282);
  }

  v374 = sub_260DF5964();
  v373 = v292;
  (*(v286 + 8))(v285, v287);
  v293 = v343;
  sub_260DF5704();
  v294 = sub_260DF56A4();
  v296 = v295;
  v381(v293, v282);
  if (v296)
  {
    v297 = v294;
  }

  else
  {
    v297 = 0;
  }

  if (v296)
  {
    v298 = v296;
  }

  else
  {
    v298 = 0xE000000000000000;
  }

  sub_260DF5584();
  v299 = *(v289 + 48);
  v300 = v348;
  if (v299(v290, 1, v348) == 1)
  {
    sub_260DF5434();
    if (v299(v290, 1, v300) != 1)
    {
      sub_260DDE7B4(v290, &qword_27FE4FF38, &qword_260DF8A48);
    }
  }

  else
  {
    (*(v289 + 32))(v352, v290, v300);
  }

  v301 = v330;
  v302 = *(v330 + 16);
  if (!v302)
  {
    goto LABEL_141;
  }

  v303 = sub_260DEDB40(*(v330 + 16), 0);
  v304 = sub_260DEFB04(&v389, v303 + 4, v302, v301);
  sub_260DF472C(v389);
  if (v304 != v302)
  {
    __break(1u);
LABEL_141:

    v303 = MEMORY[0x277D84F90];
  }

  v305 = type metadata accessor for ToolKitActionStreamEvent(0);
  v306 = objc_allocWithZone(v305);
  v307 = v378;
  *&v306[OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool] = v378;
  v308 = &v306[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
  v309 = v375;
  *v308 = v376;
  *(v308 + 1) = v309;
  v310 = &v306[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
  v311 = v373;
  *v310 = v374;
  v310[1] = v311;
  v312 = &v306[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
  v313 = v385;
  *v312 = v379;
  *(v312 + 1) = v313;
  v314 = &v306[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
  *v314 = v297;
  v314[1] = v298;
  v315 = v352;
  (*(v289 + 16))(&v306[OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp], v352, v300);
  *&v306[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = v303;
  sub_260DE17F4(v307, *(&v307 + 1));
  v388.receiver = v306;
  v388.super_class = v305;
  v316 = objc_msgSendSuper2(&v388, sel_init);
  (*(v289 + 8))(v315, v300);
  v350(v316);

  sub_260DE1BC8(v307, *(&v307 + 1));
  (v377)(v361, v355);
  v381(v366, v367);
  v336(v337, v335);
  v326(v338, v384);
  v317 = v382;
  swift_beginAccess();
  v318 = *(v317 + 2);
  v319 = __CFADD__(v318, 1);
  v320 = v318 + 1;
  if (v319)
  {
    goto LABEL_151;
  }

  *(v317 + 2) = v320;
}

uint64_t sub_260DEB9FC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x2666EF480]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_260DF5AC4();
  }

  sub_260DF5AE4();
  return swift_endAccess();
}

uint64_t static ToolKitActionStreamWrapper.lastDateForToolKitActionEvent()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_260DF5444();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v32 = swift_allocBox();
  v12 = v11;
  sub_260DF5434();
  sub_260DF5434();
  v13 = *(v2 + 56);
  v13(v10, 0, 1, v1);
  sub_260DF5404();
  v13(v8, 0, 1, v1);
  v14 = *(v2 + 48);
  v15 = 0;
  if (v14(v10, 1, v1) != 1)
  {
    v15 = sub_260DF5414();
    (*(v2 + 8))(v10, v1);
  }

  if (v14(v8, 1, v1) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_260DF5414();
    (*(v2 + 8))(v8, v1);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v15 endDate:v16 maxEvents:1 lastN:100000 reversed:1];

  sub_260DF5544();
  sub_260DF59C4();
  sub_260DF4A24(&qword_27FE4FF40, MEMORY[0x277D20460], MEMORY[0x277D20458]);
  v18 = v17;
  sub_260DF5554();
  v30 = v18;

  __swift_project_boxed_opaque_existential_1(v33, v33[3]);

  sub_260DF5634();

  __swift_destroy_boxed_opaque_existential_1(v33);
  if (qword_27FE4F990 != -1)
  {
    swift_once();
  }

  v19 = sub_260DF55C4();
  __swift_project_value_buffer(v19, qword_27FE53CE8);

  v20 = sub_260DF55A4();
  v21 = sub_260DF5B54();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v22 = 136315138;
    swift_beginAccess();
    v24 = v4;
    (*(v2 + 16))(v4, v12, v1);
    sub_260DF4A24(&qword_27FE4FF48, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v25 = sub_260DF5DD4();
    v27 = v26;
    (*(v2 + 8))(v24, v1);
    v28 = sub_260DEDBC4(v25, v27, v33);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_260DCE000, v20, v21, "Last date of ToolKit event %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2666EFFA0](v23, -1, -1);
    MEMORY[0x2666EFFA0](v22, -1, -1);
  }

  swift_beginAccess();
  (*(v2 + 16))(v31, v12, v1);
}

void sub_260DEC2F4(NSObject **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v9 = sub_260DF55C4();
    __swift_project_value_buffer(v9, qword_27FE53CE8);
    oslog = sub_260DF55A4();
    v10 = sub_260DF5B54();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_260DCE000, oslog, v10, "ToolKit stream finished", v11, 2u);
    v8 = v11;
LABEL_10:
    MEMORY[0x2666EFFA0](v8, -1, -1);
LABEL_11:
    v12 = oslog;

    goto LABEL_13;
  }

  if (qword_27FE4F990 != -1)
  {
    swift_once();
  }

  v2 = sub_260DF55C4();
  __swift_project_value_buffer(v2, qword_27FE53CE8);
  v3 = v1;
  oslog = sub_260DF55A4();
  v4 = sub_260DF5B64();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_260DCE000, oslog, v4, "Failed to enumerate toolKit stream %@", v5, 0xCu);
    sub_260DDE7B4(v6, &unk_27FE4FF50, &qword_260DF8A50);
    MEMORY[0x2666EFFA0](v6, -1, -1);
    v8 = v5;
    goto LABEL_10;
  }

  v12 = v1;

LABEL_13:
}

uint64_t sub_260DEC51C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_260DF5444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  sub_260DF5584();
  v10 = *(v6 + 48);
  if (v10(v4, 1, v5) == 1)
  {
    sub_260DF5434();
    if (v10(v4, 1, v5) != 1)
    {
      sub_260DDE7B4(v4, &qword_27FE4FF38, &qword_260DF8A48);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  swift_beginAccess();
  return (*(v6 + 40))(v9, v8, v5);
}

uint64_t sub_260DEC7D4(uint64_t a1)
{
  v2 = sub_260DF5644();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_260DF57A4();
}

uint64_t sub_260DEC93C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50050, &qword_260DF8D58);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_260DF57D4();
}

uint64_t sub_260DECA80(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50040, &qword_260DF8D48);
  if (swift_dynamicCast())
  {
    sub_260DF4854(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_260DF5254();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_260DDE7B4(__src, &qword_27FE50048, &qword_260DF8D50);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_260DF5C34();
  }

  sub_260DEEA0C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_260DF34D0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_260DEEAD4(sub_260DF47EC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_260DF5374();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_260DEFC70(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_260DF5A14();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_260DF5A44();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_260DF5C34();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_260DEFC70(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_260DF5A24();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_260DF5384();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_260DF5384();
    sub_260DE1BC8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_260DE1BC8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_260DE17F4(*&__src[0], *(&__src[0] + 1));

  sub_260DD2994(v32, *(&v32 + 1));
  return v32;
}

id ToolKitActionStreamWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s25ProactivePredictionClient24ToolKitActionStreamEventCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_260DED0B8()
{
  result = qword_27FE4FEE0;
  if (!qword_27FE4FEE0)
  {
    result = swift_getWitnessTable(byte_260DF8C7C, &type metadata for ToolKitActionStreamEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FEE0);
  }

  return result;
}

unint64_t sub_260DED10C()
{
  result = qword_27FE4FEE8;
  if (!qword_27FE4FEE8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27FE4FEE8);
  }

  return result;
}

unint64_t sub_260DED160()
{
  result = qword_27FE4FF10;
  if (!qword_27FE4FF10)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27FE4FF10);
  }

  return result;
}

uint64_t sub_260DED1B4(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4FEF8, &qword_260DF8A08);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260DED220()
{
  result = qword_27FE4FF28;
  if (!qword_27FE4FF28)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27FE4FF28);
  }

  return result;
}

uint64_t sub_260DED274(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_260DF4C58;

  return v6();
}

uint64_t sub_260DED35C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_260DDA5F8;

  return v7();
}

uint64_t sub_260DED444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FFF0, &qword_260DF8CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_260DF4B20(a3, v23 - v10, &qword_27FE4FFF0, &qword_260DF8CD0);
  v12 = sub_260DF5B34();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_260DDE7B4(v11, &qword_27FE4FFF0, &qword_260DF8CD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_260DF5B24();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_260DF5AF4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_260DF59E4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_260DDE7B4(a3, &qword_27FE4FFF0, &qword_260DF8CD0);

    return v21;
  }

LABEL_8:
  sub_260DDE7B4(a3, &qword_27FE4FFF0, &qword_260DF8CD0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_260DED740(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260DED838;

  return v6(a1);
}

uint64_t sub_260DED838()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_260DED930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50038, &qword_260DF8D40);
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

char *sub_260DEDA3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50030, &qword_260DF8D38);
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

void *sub_260DEDB40(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50038, &qword_260DF8D40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_260DEDBC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_260DEDC90(v11, 0, 0, 1, a1, a2);
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
    sub_260DE16C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_260DEDC90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_260DEDD9C(a5, a6);
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
    result = sub_260DF5C34();
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

void *sub_260DEDD9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_260DEDDE8(a1, a2);
  sub_260DEDF18(&unk_2873598C0);
  return v3;
}

void *sub_260DEDDE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_260DEE004(v5, 0);
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

  result = sub_260DF5C34();
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
        v10 = sub_260DF5A14();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_260DEE004(v10, 0);
        result = sub_260DF5BD4();
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

uint64_t sub_260DEDF18(uint64_t result)
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

  result = sub_260DEE078(result, v11, 1, v3);
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

void *sub_260DEE004(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500A8, &qword_260DF8DE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_260DEE078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500A8, &qword_260DF8DE0);
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

void *sub_260DEE16C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_260DEE18C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_260DEE18C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50120, &qword_260DF8E28);
  v10 = *(sub_260DF5764() - 8);
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
  v15 = *(sub_260DF5764() - 8);
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

char *sub_260DEE364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50038, &qword_260DF8D40);
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

unint64_t sub_260DEE470(uint64_t a1, uint64_t a2)
{
  sub_260DF5E54();
  sub_260DF59F4();
  v4 = sub_260DF5E74();

  return sub_260DEE7AC(a1, a2, v4);
}

uint64_t sub_260DEE4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50108, &qword_260DF8E18);
  v33 = v4;
  result = sub_260DF5CB4();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_260DF4854(v24, v34);
      }

      else
      {
        sub_260DF4ABC(v24, v34);
      }

      sub_260DF5E54();
      sub_260DF59F4();
      result = sub_260DF5E74();
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
      result = sub_260DF4854(v34, *(v7 + 56) + 40 * v15);
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

unint64_t sub_260DEE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_260DF5DE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_260DEE864()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50108, &qword_260DF8E18);
  v2 = *v0;
  v3 = sub_260DF5CA4();
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
        v22 = 40 * v17;
        sub_260DF4ABC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_260DF4854(v25, *(v4 + 56) + v22);
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

uint64_t *sub_260DEEA0C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_260DF3418(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_260DF5244();
      swift_allocObject();
      v8 = sub_260DF51F4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_260DF5364();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_260DEEAD4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_260DD2994(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_260DD2994(v7, v6);
    *v4 = xmmword_260DF89E0;
    sub_260DD2994(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_260DF5204() && __OFSUB__(v7, sub_260DF5234()))
      {
LABEL_26:
        __break(1u);
      }

      sub_260DF5244();
      swift_allocObject();
      v14 = sub_260DF51E4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_260DEFA50(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_260DD2994(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_260DF89E0;
    sub_260DD2994(0, 0xC000000000000000);
    sub_260DF5344();
    result = sub_260DEFA50(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_260DEEE78@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_260DF3418(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_260DF3570(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_260DF35EC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_260DEEF0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_260DEFC5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_260DEEF78(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_260DEEF78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_260DF5DC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_260DF5AD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_260DEF140(v7, v8, a1, v4);
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
    return sub_260DEF070(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_260DEF070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_260DF5DE4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_260DEF140(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_260DEF9D0(v8);
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
        sub_260DEF71C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_260DF5DE4();
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
            result = sub_260DF5DE4();
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
      result = sub_260DEDA3C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_260DEDA3C((v39 > 1), v40 + 1, 1, v8);
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
        sub_260DEF71C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_260DEF9D0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_260DEF944(v44);
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
    if (v37 || (result = sub_260DF5DE4(), (result & 1) == 0))
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

uint64_t sub_260DEF71C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_260DF5DE4() & 1) != 0)
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
      if (!v21 && (sub_260DF5DE4() & 1) != 0)
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

uint64_t sub_260DEF944(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_260DEF9D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_260DEF9E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_260DEFA50(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_260DF5204();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_260DF5234();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_260DF5224();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_260DEFB04(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_260DEFC70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_260DF5A54();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2666EF430](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_260DEFCEC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_260DF5BF4();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_260DEFD3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_260DF5CD4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260DEFD88(uint64_t a1)
{
  v1[2] = a1;
  sub_260DF5464();
  v1[3] = swift_task_alloc();
  sub_260DF5914();
  v1[4] = swift_task_alloc();
  v2 = sub_260DF58E4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DEFEA0, 0, 0);
}

uint64_t sub_260DEFEA0()
{
  sub_260DF5904();
  sub_260DF5454();
  sub_260DF58D4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_260DEFF70;
  v2 = *(v0 + 56);

  return MEMORY[0x2821DADB0](v2);
}

uint64_t sub_260DEFF70(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    return MEMORY[0x2822009F8](sub_260DF0348, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);
    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v5;
    v6[1] = sub_260DF0144;
    v7 = v4[2];

    return sub_260DE5D88(v7, a1);
  }
}

uint64_t sub_260DF0144(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_260DF03C8;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_260DF026C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260DF026C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
  swift_getOpaqueTypeConformance2();
  sub_260DF57F4();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_260DF0348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260DF03C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
  swift_getOpaqueTypeConformance2();
  sub_260DF57F4();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260DF0494(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = sub_260DF5764();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DF0598, 0, 0);
}

void *sub_260DF0598()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_260DF5C94();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    result = sub_260DEE16C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v0[6];
      v3 = v34;
      v27 = v0[2] + 32;
      v28 = v1 & 0xFFFFFFFFFFFFFF8;
      v30 = (v6 + 48);
      v31 = v1 & 0xC000000000000001;
      v29 = v6;
      v7 = (v6 + 32);
      v1 = &qword_27FE50000;
      while (1)
      {
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v31)
        {
          v8 = MEMORY[0x2666EF600](v5, v0[2]);
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v27 + 8 * v5);
        }

        v10 = v0[4];
        v9 = v0[5];
        v11 = v0[3];
        v33 = v8;
        sub_260DF5744();
        sub_260DF4B20(v10, v11, &qword_27FE50000, &qword_260DF8648);
        if ((*v30)(v11, 1, v9) == 1)
        {
          break;
        }

        v32 = v5 + 1;
        v12 = v0[7];
        v14 = v0[4];
        v13 = v0[5];
        v15 = v3;
        v16 = v0[3];

        sub_260DDE7B4(v14, &qword_27FE50000, &qword_260DF8648);
        v17 = *v7;
        v18 = v16;
        v3 = v15;
        (*v7)(v12, v18, v13);
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_260DEE16C((v19 > 1), v20 + 1, 1);
          v3 = v15;
        }

        v21 = v0[7];
        v22 = v0[5];
        *(v3 + 16) = v20 + 1;
        v17(v3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20, v21, v22);
        ++v5;
        v1 = &qword_27FE50000;
        if (v32 == v2)
        {
          goto LABEL_15;
        }
      }

      v24 = v0[4];
      sub_260DDE7B4(v0[3], &qword_27FE50000, &qword_260DF8648);
      sub_260DF4BE0();
      swift_allocError();
      *v25 = 0xD00000000000001BLL;
      v25[1] = 0x8000000260DF9C20;
      swift_willThrow();

      sub_260DDE7B4(v24, &qword_27FE50000, &qword_260DF8648);

      v26 = v0[1];

      return v26();
    }
  }

  else
  {
LABEL_15:
    v0[8] = v3;
    v23 = swift_task_alloc();
    v0[9] = v23;
    *v23 = v0;
    v23[1] = sub_260DF0944;

    return sub_260DEFD88(v3);
  }

  return result;
}

uint64_t sub_260DF0944(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_260DF0AF8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_260DF0A6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260DF0A6C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_260DF0AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

void _s25ProactivePredictionClient26ToolKitActionStreamWrapperC09enumeratedE6Events9startDate03endL05limit14bundleIDFilter8reversed10enumeratory10Foundation0L0V_AMSuSSSgSbyAA0defG5EventCctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v43 = a5;
  v44 = a8;
  v41 = a4;
  v42 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v18 = sub_260DF5444();
  v19 = *(v18 - 8);
  v20 = v19;
  v21 = (v19 + 16);
  if (a6)
  {
    v22 = a2;
  }

  else
  {
    v22 = a1;
  }

  if (a6)
  {
    a2 = a1;
  }

  (*(v19 + 16))(v17, v22, v18);
  sub_260DF5444();
  v23 = *(v20 + 56);
  v23(v17, 0, 1, v18);
  (*v21)(v15, a2, v18);
  v23(v15, 0, 1, v18);
  if (a3 < 0)
  {
    __break(1u);
    swift_once();
    v29 = sub_260DF55C4();
    __swift_project_value_buffer(v29, qword_27FE53CE8);
    v30 = a6;
    v31 = sub_260DF55A4();
    v32 = sub_260DF5B64();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = a6;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_260DCE000, v31, v32, "Failed to get events from ToolKit stream %@", v33, 0xCu);
      sub_260DDE7B4(v34, &unk_27FE4FF50, &qword_260DF8A50);
      MEMORY[0x2666EFFA0](v34, -1, -1);
      MEMORY[0x2666EFFA0](v33, -1, -1);

      return;
    }
  }

  else
  {
    v24 = *(v20 + 48);
    if (v24(v17, 1, v18) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_260DF5414();
      (*(v20 + 8))(v17, v18);
    }

    if (v24(v15, 1, v18) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_260DF5414();
      (*(v20 + 8))(v15, v18);
    }

    v27 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v25 endDate:v26 maxEvents:a3 lastN:a3 reversed:a6 & 1];

    sub_260DF5544();
    sub_260DF59C4();
    sub_260DF4A24(&qword_27FE4FF40, MEMORY[0x277D20460], MEMORY[0x277D20458]);
    v28 = v27;
    sub_260DF5554();

    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v37 = swift_allocObject();
    v38 = v44;
    v37[2] = v45;
    v37[3] = a3;
    v39 = v42;
    v37[4] = v41;
    v37[5] = v43;
    v37[6] = v39;
    v37[7] = v38;

    sub_260DF5634();

    __swift_destroy_boxed_opaque_existential_1(v46);
  }
}

unint64_t sub_260DF10A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50108, &qword_260DF8E18);
    v3 = sub_260DF5CC4();
    v4 = a1 + 32;

    while (1)
    {
      sub_260DF4B20(v4, &v13, &qword_27FE50110, &qword_260DF8E20);
      v5 = v13;
      v6 = v14;
      result = sub_260DEE470(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260DF4854(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC04toolE6Events9startDate03endL05limit14bundleIDFilterSayAA0defG5EventCG10Foundation0L0V_ANSuSSSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v8 = sub_260DF5444();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v50 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F90];
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  v57 = *(v9 + 16);
  v58 = v9 + 16;
  v57(v17, a2, v8);
  (*(v9 + 56))(v17, 0, 1, v8);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v59 = v18;

    v52 = a1;
    v19 = sub_260DF5414();
    v20 = (*(v9 + 48))(v17, 1, v8);
    v54 = v14;
    v55 = (v18 + 16);
    v53 = a2;
    if (v20 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_260DF5414();
      (*(v9 + 8))(v17, v8);
    }

    v22 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v19 endDate:v21 maxEvents:a3 lastN:a3 reversed:0];

    sub_260DF5544();
    sub_260DF59C4();
    sub_260DF4A24(&qword_27FE4FF40, MEMORY[0x277D20460], MEMORY[0x277D20458]);
    v23 = v22;
    sub_260DF5554();

    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v24 = swift_allocObject();
    v24[2] = v56;
    v24[3] = a3;
    v24[4] = v50;
    v24[5] = v51;
    v24[6] = sub_260DF4994;
    v25 = v59;
    v24[7] = v59;

    sub_260DF5634();

    a1 = v25;

    __swift_destroy_boxed_opaque_existential_1(v60);

    v14 = v12;
    if (qword_27FE4F990 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v26 = sub_260DF55C4();
  __swift_project_value_buffer(v26, qword_27FE53CE8);
  v27 = v54;
  v28 = v57;
  v57(v54, v52, v8);
  v28(v14, v53, v8);
  swift_retain_n();
  v29 = sub_260DF55A4();
  v30 = sub_260DF5B74();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60[0] = v58;
    *v31 = 136315650;
    sub_260DF4A24(&qword_27FE4FF48, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v32 = sub_260DF5DD4();
    v33 = v14;
    v35 = v34;
    v36 = *(v9 + 8);
    v36(v27, v8);
    v37 = sub_260DEDBC4(v32, v35, v60);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    v38 = sub_260DF5DD4();
    v40 = v39;
    v36(v33, v8);
    v41 = sub_260DEDBC4(v38, v40, v60);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2048;
    v42 = v55;
    swift_beginAccess();
    if (*v42 >> 62)
    {
      v43 = sub_260DF5C94();
    }

    else
    {
      v43 = *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v59;

    *(v31 + 24) = v43;

    _os_log_impl(&dword_260DCE000, v29, v30, "Enumerate toolKit stream %s ----> %s: %ld events", v31, 0x20u);
    v45 = v58;
    swift_arrayDestroy();
    MEMORY[0x2666EFFA0](v45, -1, -1);
    v46 = v31;
    a1 = v44;
    MEMORY[0x2666EFFA0](v46, -1, -1);
  }

  else
  {

    v47 = *(v9 + 8);
    v47(v14, v8);
    v47(v27, v8);
  }

  swift_beginAccess();
  v48 = *(a1 + 16);

  return v48;
}

uint64_t sub_260DF1A38(uint64_t a1)
{
  v2 = sub_260DF5654();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50090, &qword_260DF8DD8);
    v9 = sub_260DF5BC4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_260DF4A24(&qword_27FE50098, MEMORY[0x277D72108], MEMORY[0x277D72110]);
      v16 = sub_260DF5984();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_260DF4A24(&qword_27FE500A0, MEMORY[0x277D72108], MEMORY[0x277D72118]);
          v23 = sub_260DF59A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC013toolIDForSiriE6Intent8bundleID15intentClassNameS2S_SStFZ_0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v94 = a4;
  v95 = a1;
  v101 = a3;
  v96 = a2;
  v4 = sub_260DF5664();
  v97 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_260DF5974();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v102 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50078, &qword_260DF8D98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v78 - v9;
  v11 = sub_260DF56E4();
  v86 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_260DF5934();
  v93 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v91 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_260DF5464();
  v92 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v90 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260DF5644();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = (v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_260DF57E4();
  v100 = *(v89 - 8);
  v20 = MEMORY[0x28223BE20](v89);
  v22 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v99 = v78 - v23;
  sub_260DF58C4();
  v24 = sub_260DF58B4();
  v79 = v15;
  v80 = v10;
  v84 = v13;
  v82 = v11;
  v81 = v24;
  sub_260DF57B4();
  v78[1] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50080, &qword_260DF8DD0);
  v25 = sub_260DF5654();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_260DF89F0;
  (*(v26 + 104))(v28 + v27, *MEMORY[0x277D720D0], v25);
  v29 = sub_260DF1A38(v28);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v27, v25);
  swift_deallocClassInstance();
  *v19 = v29;
  v31 = v87;
  v30 = v88;
  (v87[13])(v19, *MEMORY[0x277D720B0], v88);
  sub_260DF4A24(&qword_27FE50060, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_260DF4A24(&qword_27FE50088, MEMORY[0x277D720C0], MEMORY[0x277D720B8]);
  v78[0] = 0;
  sub_260DF5924();

  v31[1](v19, v30);
  v32 = *(v100 + 8);
  v33 = v22;
  v34 = v89;
  v100 += 8;
  v88 = v32;
  (v32)(v33, v89);
  v35 = v90;
  sub_260DF5454();
  v36 = v93;
  v37 = v91;
  v38 = v98;
  (*(v93 + 104))(v91, *MEMORY[0x277D72858], v98);
  v39 = v78[0];
  v40 = sub_260DF58A4();
  if (v39)
  {

    (*(v36 + 8))(v37, v38);
    (*(v92 + 8))(v35, v79);
    (v88)(v99, v34);
    v41 = v94;
    v42 = v95;
    v6 = v96;
    if (qword_27FE4F990 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_3;
  }

  v54 = v40;
  (*(v36 + 8))(v37, v38);
  (*(v92 + 8))(v35, v79);
  (v88)(v99, v34);
  result = v54;
  v41 = v94;
  v55 = v95;
  v56 = v96;
  v79 = *(v54 + 16);
  if (!v79)
  {
LABEL_33:

    v103 = v55;
    v104 = v56;

    MEMORY[0x2666EF400](46, 0xE100000000000000);

    MEMORY[0x2666EF400](v101, v41);

    return v103;
  }

  v57 = 0;
  v58 = v86;
  v90 = (v54 + ((*(v58 + 80) + 32) & ~*(v58 + 80)));
  v91 = v54;
  v89 = v86 + 16;
  v87 = (v83 + 1);
  v88 = (v83 + 6);
  v99 = (v97 + 88);
  v100 = v97 + 16;
  LODWORD(v98) = *MEMORY[0x277D720C8];
  v93 = v97 + 8;
  v59 = (v97 + 96);
  v83 = (v86 + 8);
  v60 = v85;
  v61 = v102;
  v62 = v84;
  while (1)
  {
    if (v57 >= *(v91 + 2))
    {
      __break(1u);
      return result;
    }

    v63 = *(v58 + 72);
    v92 = v57;
    (*(v58 + 16))(v62, &v90[v63 * v57], v82);
    v64 = v80;
    sub_260DF56B4();
    if ((*v88)(v64, 1, v60) == 1)
    {
      sub_260DDE7B4(v80, &qword_27FE50078, &qword_260DF8D98);
      sub_260DF5674();
      v64 = v61;
    }

    v65 = sub_260DF5964();
    v67 = v66;
    (*v87)(v64, v60);
    if (v65 == v55 && v67 == v56)
    {
      break;
    }

    v68 = sub_260DF5DE4();

    v61 = v102;
    if (v68)
    {
      goto LABEL_17;
    }

LABEL_32:
    v57 = v92 + 1;
    v62 = v84;
    result = (*v83)(v84, v82);
    v58 = v86;
    if (v57 == v79)
    {
      goto LABEL_33;
    }
  }

  v61 = v102;
LABEL_17:
  v69 = sub_260DF5684();
  v70 = v69;
  v39 = *(v69 + 16);
  if (!v39)
  {

LABEL_31:
    v60 = v85;
    goto LABEL_32;
  }

  v42 = 0;
  v71 = v97;
  v72 = v69 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  while (v42 < *(v70 + 16))
  {
    (*(v71 + 16))(v6, v72 + *(v71 + 72) * v42, v4);
    v73 = (*(v71 + 88))(v6, v4);
    if (v73 == v98)
    {
      (*v59)(v6, v4);
      if (*v6 == v101 && v6[1] == v41)
      {

        goto LABEL_35;
      }

      v75 = sub_260DF5DE4();

      v71 = v97;
      if (v75)
      {

LABEL_35:

        v76 = v84;
        v77 = sub_260DF56C4();

        (*v83)(v76, v82);
        return v77;
      }
    }

    else
    {
      (*v93)(v6, v4);
    }

    ++v42;
    v61 = v102;
    if (v39 == v42)
    {

      v55 = v95;
      v56 = v96;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_3:
  v43 = sub_260DF55C4();
  __swift_project_value_buffer(v43, qword_27FE53CE8);

  v44 = v39;
  v45 = sub_260DF55A4();
  v46 = sub_260DF5B64();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v103 = v49;
    *v47 = 136315650;
    *(v47 + 4) = sub_260DEDBC4(v42, v6, &v103);
    *(v47 + 12) = 2080;
    v50 = v101;
    *(v47 + 14) = sub_260DEDBC4(v101, v41, &v103);
    *(v47 + 22) = 2112;
    v51 = v39;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 24) = v52;
    *v48 = v52;
    _os_log_impl(&dword_260DCE000, v45, v46, "Failed to fetch toolID for %s.%s is relevant for Spotlight %@", v47, 0x20u);
    sub_260DDE7B4(v48, &unk_27FE4FF50, &qword_260DF8A50);
    MEMORY[0x2666EFFA0](v48, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2666EFFA0](v49, -1, -1);
    MEMORY[0x2666EFFA0](v47, -1, -1);
  }

  else
  {

    v50 = v101;
  }

  v103 = v42;
  v104 = v6;

  MEMORY[0x2666EF400](46, 0xE100000000000000);

  MEMORY[0x2666EF400](v50, v41);

  return v103;
}

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC26intentApprovedForSpotlight8bundleID0I9ClassNameSbSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v70 = a4;
  v67 = a3;
  v68 = a1;
  v4 = sub_260DF5784();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = sub_260DF56E4();
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_260DF5464();
  v66 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v64 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50050, &qword_260DF8D58);
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = (&v49 - v17);
  v19 = sub_260DF57E4();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v61 = &v49 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50058, &qword_260DF8D60);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v65 = &v49 - v28;
  sub_260DF58C4();
  sub_260DF58B4();
  v53 = v27;
  v55 = v14;
  v50 = v13;
  v51 = v10;
  v54 = v11;
  v52 = v8;
  v71 = v68;
  v72 = v69;

  MEMORY[0x2666EF400](46, 0xE100000000000000);

  MEMORY[0x2666EF400](v67, v70);

  v29 = v71;
  v30 = v72;
  sub_260DF57B4();
  swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  *v18 = v31;
  v33 = v59;
  v32 = v60;
  (*(v59 + 104))(v18, *MEMORY[0x277D721C8], v60);
  sub_260DF4A24(&qword_27FE50060, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_260DF48EC(&qword_27FE50068, &qword_27FE50050, &qword_260DF8D58, MEMORY[0x277D721D8]);
  v34 = v61;
  sub_260DF5924();

  (*(v33 + 8))(v18, v32);
  v35 = v63;
  v36 = *(v62 + 8);
  v36(v22, v63);
  v37 = v64;
  sub_260DF5454();
  v38 = v65;
  sub_260DF5894();
  (*(v66 + 8))(v37, v55);
  v36(v34, v35);
  v41 = v53;
  sub_260DF4B20(v38, v53, &qword_27FE50058, &qword_260DF8D60);
  v42 = v58;
  v43 = v54;
  if ((*(v58 + 48))(v41, 1, v54) == 1)
  {
    sub_260DDE7B4(v38, &qword_27FE50058, &qword_260DF8D60);

    sub_260DDE7B4(v41, &qword_27FE50058, &qword_260DF8D60);
    v39 = 0;
  }

  else
  {
    v44 = v50;
    (*(v42 + 32))(v50, v41, v43);
    v45 = v51;
    sub_260DF5694();
    v46 = v52;
    sub_260DF5774();
    sub_260DF4A24(&qword_27FE50070, MEMORY[0x277D72418], MEMORY[0x277D72420]);
    v47 = v56;
    v39 = sub_260DF5BB4();

    v48 = *(v57 + 8);
    v48(v46, v47);
    v48(v45, v47);
    (*(v42 + 8))(v44, v43);
    sub_260DDE7B4(v38, &qword_27FE50058, &qword_260DF8D60);
  }

  return v39 & 1;
}

uint64_t sub_260DF3418(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_260DF34D0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_260DF5244();
      swift_allocObject();
      sub_260DF5214();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_260DF5364();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_260DF3570(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_260DF5244();
  swift_allocObject();
  result = sub_260DF51F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_260DF5364();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_260DF35EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_260DF5244();
  swift_allocObject();
  result = sub_260DF51F4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC029canonicalIdentifierForEncodedD10Invocation07encodedM0SSSo6NSDataC_tFZ_0(uint64_t a1)
{
  v63 = sub_260DF53E4();
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FFF8, &unk_260DF8D20);
  MEMORY[0x28223BE20](v2);
  v4 = v54 - v3;
  v5 = sub_260DF5764();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v54 - v13;
  sub_260DF5744();
  sub_260DF4B20(v14, v12, &qword_27FE50000, &qword_260DF8648);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_260DDE7B4(v12, &qword_27FE50000, &qword_260DF8648);
    sub_260DDE7B4(v14, &qword_27FE50000, &qword_260DF8648);
    return 0;
  }

  v57 = v14;
  v58 = v6;
  (*(v6 + 32))(v8, v12, v5);
  v16 = sub_260DF5714();
  v18 = sub_260DECA80(v16, v17);
  v60 = v8;
  *&v61 = v18;
  v65 = v18;
  v66 = v19;
  v55 = v19;
  v20 = sub_260DF5724();
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = sub_260DEDB40(*(v20 + 16), 0);
    v56 = sub_260DEFB04(v64, v23 + 4, v22, v21);
    v24 = v64[0];
    v54[1] = v64[4];

    sub_260DF472C(v24);
    if (v56 == v22)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_7:
  v56 = v5;
  v64[0] = v23;
  sub_260DEEF0C(v64);

  v25 = *(v64[0] + 2);
  if (v25)
  {
    *&v61 = v64[0];
    v26 = (v64[0] + 40);
    while (1)
    {
      v30 = *(v26 - 1);
      v31 = *v26;

      v32 = sub_260DF5724();
      if (*(v32 + 16))
      {
        v33 = sub_260DEE470(v30, v31);
        v35 = v34;

        if (v35)
        {
          v36 = *(v32 + 56);
          v37 = sub_260DF5954();
          v38 = *(v37 - 8);
          (*(v38 + 16))(v4, v36 + *(v38 + 72) * v33, v37);

          (*(v38 + 56))(v4, 0, 1, v37);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v39 = sub_260DF5954();
      (*(*(v39 - 8) + 56))(v4, 1, 1, v39);
LABEL_15:
      sub_260DF51B4();
      swift_allocObject();
      sub_260DF51A4();
      sub_260DF4734();
      v27 = sub_260DF5194();
      v29 = v28;
      sub_260DF53D4();
      sub_260DD2994(v27, v29);

      sub_260DDE7B4(v4, &qword_27FE4FFF8, &unk_260DF8D20);
      v26 += 2;
      if (!--v25)
      {

        v40 = v65;
        v41 = v66;
        goto LABEL_18;
      }
    }
  }

  v40 = v61;
  v41 = v55;
LABEL_18:
  sub_260DE17F4(v40, v41);
  sub_260DF53F4();
  sub_260DF4A24(&qword_27FE50018, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  sub_260DF5B94();
  if (BYTE1(v64[0]))
  {
    v42 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
    v61 = xmmword_260DF89F0;
    v44 = MEMORY[0x277D84B78];
    v45 = MEMORY[0x277D84BC0];
    do
    {
      v46 = v64[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50028, &qword_260DF8D30);
      v47 = swift_allocObject();
      *(v47 + 16) = v61;
      *(v47 + 56) = v44;
      *(v47 + 64) = v45;
      *(v47 + 32) = v46;
      v48 = sub_260DF59D4();
      v50 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_260DED930(0, *(v42 + 2) + 1, 1, v42);
      }

      v52 = *(v42 + 2);
      v51 = *(v42 + 3);
      if (v52 >= v51 >> 1)
      {
        v42 = sub_260DED930((v51 > 1), v52 + 1, 1, v42);
      }

      *(v42 + 2) = v52 + 1;
      v53 = &v42[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
      sub_260DF5B94();
    }

    while (BYTE1(v64[0]) != 1);
  }

  (*(v59 + 8))(v62, v63);
  v64[0] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FEF8, &qword_260DF8A08);
  sub_260DF48EC(&qword_27FE50020, &qword_27FE4FEF8, &qword_260DF8A08, MEMORY[0x277D83958]);
  v43 = sub_260DF5994();

  (*(v58 + 8))(v60, v56);
  sub_260DDE7B4(v57, &qword_27FE50000, &qword_260DF8648);
  sub_260DD2994(v65, v66);
  return v43;
}

uint64_t type metadata accessor for ToolKitActionStreamEvent(uint64_t a1)
{
  result = qword_27FE4FFC0;
  if (!qword_27FE4FFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DF3ED8(uint64_t a1)
{
  result = sub_260DF5444();
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

uint64_t getEnumTagSinglePayload for ToolKitActionStreamEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitActionStreamEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260DF4170()
{
  result = qword_27FE4FFD8;
  if (!qword_27FE4FFD8)
  {
    result = swift_getWitnessTable(aU, &type metadata for ToolKitActionStreamEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FFD8);
  }

  return result;
}

unint64_t sub_260DF41C8()
{
  result = qword_27FE4FFE0;
  if (!qword_27FE4FFE0)
  {
    result = swift_getWitnessTable(byte_260DF8B8C, &type metadata for ToolKitActionStreamEvent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FFE0);
  }

  return result;
}

unint64_t sub_260DF4220()
{
  result = qword_27FE4FFE8;
  if (!qword_27FE4FFE8)
  {
    atomic_store(result, &qword_27FE4FFE8);
  }

  return result;
}

uint64_t sub_260DF4274()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260DF42C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260DF4300()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260DDA5F8;

  return sub_260DE873C(v2, v3);
}

uint64_t sub_260DF43B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260DF4C58;

  return sub_260DED274(v2, v3, v4);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_260DF44B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260DF4C58;

  return sub_260DED35C(a1, v4, v5, v6);
}

uint64_t sub_260DF4584()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260DF45BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260DF4C58;

  return sub_260DED740(a1, v4);
}

uint64_t sub_260DF4674(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260DDA5F8;

  return sub_260DED740(a1, v4);
}

unint64_t sub_260DF4734()
{
  result = qword_27FE50008;
  if (!qword_27FE50008)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4FFF8, &unk_260DF8D20);
    v4[0] = sub_260DF4A24(&qword_27FE50010, MEMORY[0x277D72E48], MEMORY[0x277D72E50]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27FE50008);
  }

  return result;
}

void *sub_260DF47EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_260DEF9E4(sub_260DF486C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_260DF4854(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_260DF48B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260DF48EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260DF495C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260DF49B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500B8, &qword_260DF8DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260DF4A24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2666EFFA0);
  }

  return result;
}

uint64_t sub_260DF4ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260DF4B20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_260DF4BE0()
{
  result = qword_27FE50118;
  if (!qword_27FE50118)
  {
    result = swift_getWitnessTable(byte_260DF8E80, &type metadata for ATXToolKitTranscriptStreamError, v0, v1);
    atomic_store(result, &qword_27FE50118);
  }

  return result;
}