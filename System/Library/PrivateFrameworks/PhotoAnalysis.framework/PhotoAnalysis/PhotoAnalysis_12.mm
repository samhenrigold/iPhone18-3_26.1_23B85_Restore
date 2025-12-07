uint64_t sub_22FB38198(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC8494();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB38280, 0, 0);
}

uint64_t sub_22FB38280()
{
  if (qword_28147C5E8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = qword_28147C5F0;
  sub_22FCC76D4();
  swift_allocObject();
  v6 = v5;
  v0[11] = sub_22FCC76C4();

  sub_22FCC84A4();
  sub_22FCC8454();
  v7 = *(v4 + 32);
  v0[12] = v7;
  v0[13] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v2, v1, v3);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_22FB38424;
  v9 = v0[8];

  return sub_22FB386B0(v9);
}

uint64_t sub_22FB38424()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22FB38604;
  }

  else
  {
    v2 = sub_22FB38538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB38538()
{
  (*(v0 + 96))(*(v0 + 56), *(v0 + 80), *(v0 + 40));
  sub_22FCC8484();
  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB38604()
{
  (*(v0[6] + 8))(v0[10], v0[5]);
  sub_22FCC76B4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FB386B0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_22FCC75B4();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = sub_22FCC75C4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v5 = sub_22FCC8494();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_22FCC7EE4();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v7 = sub_22FCC7F14();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB3891C, 0, 0);
}

uint64_t sub_22FB3891C()
{
  v66 = v0;
  v1 = *(v0 + 120);
  (*(*(v0 + 232) + 104))(*(v0 + 240), *MEMORY[0x277D3C5D0], *(v0 + 224));
  sub_22FCC7F04();
  v2 = objc_opt_self();
  v3 = *(v1 + 176);
  v4 = sub_22FCC8E64();
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = [v2 fetchRankedGyroPosterSuggestionsInPhotoLibrary:v3 avoiding:v4 limit:v5];

  v7 = sub_22FA3A77C(0, &unk_28147AED0, 0x277CD99E0);
  v8 = sub_22FCC8C44();
  *(v0 + 288) = v8;

  v9 = [v3 librarySpecificFetchOptions];
  *(v0 + 296) = v9;
  [v9 setIncludeGuestAssets_];
  if (v8 >> 62)
  {
    goto LABEL_51;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *(v0 + 304) = v10;
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_12;
  }

  v65 = MEMORY[0x277D84F90];
  sub_22FCC9414();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v63 = v7;
  v12 = 0;
  v7 = &selRef_initWithWeights_bias_;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x231908810](v12, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = [v14 objectID];

    if (!v15)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v10 = sub_22FCC92C4();
      goto LABEL_3;
    }

    ++v12;
    sub_22FCC93F4();
    sub_22FCC9424();
    sub_22FCC9434();
    sub_22FCC9404();
  }

  while (v10 != v12);
  v7 = v63;
  v11 = v65;
LABEL_12:
  v16 = objc_opt_self();
  sub_22FAA9A48(v11);

  sub_22FA3A77C(0, &qword_27DAD83F0, 0x277CBE448);
  sub_22FB3B45C();
  v17 = sub_22FCC8E64();

  v18 = [v16 fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs:v17 options:v9];

  if (!v18)
  {
LABEL_33:
    if (qword_28147C5C0 == -1)
    {
LABEL_34:
      v39 = sub_22FCC8684();
      __swift_project_value_buffer(v39, qword_28147C5C8);

      v40 = sub_22FCC8664();
      v41 = sub_22FCC8F14();

      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 280);
      v45 = *(v0 + 248);
      v44 = *(v0 + 256);
      if (v42)
      {
        v64 = *(v0 + 248);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v65 = v47;
        *v46 = 136315138;
        v48 = MEMORY[0x2319080B0](v8, v7);
        v62 = v43;
        v50 = v49;

        v51 = sub_22FA2F600(v48, v50, &v65);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_22FA28000, v40, v41, "No key assets found for suggestions: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23190A000](v47, -1, -1);
        MEMORY[0x23190A000](v46, -1, -1);

        (*(v44 + 8))(v62, v64);
      }

      else
      {

        (*(v44 + 8))(v43, v45);
      }

      (*(*(v0 + 200) + 8))(*(v0 + 112), *(v0 + 192));
      goto LABEL_38;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  sub_22FA3A77C(0, &qword_28147ADE8, 0x277CD97A8);
  v19 = sub_22FCC89D4();
  *(v0 + 312) = v19;

  if (!*(v19 + 16))
  {

    goto LABEL_33;
  }

  if (qword_28147C5C0 != -1)
  {
    swift_once();
  }

  v20 = sub_22FCC8684();
  *(v0 + 320) = __swift_project_value_buffer(v20, qword_28147C5C8);
  v21 = sub_22FCC8664();
  v22 = sub_22FCC8F34();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v10;
    _os_log_impl(&dword_22FA28000, v21, v22, "Found %ld candidate suggestions", v23, 0xCu);
    MEMORY[0x23190A000](v23, -1, -1);
  }

  if (v10 < 1)
  {
LABEL_30:
    v35 = *(v0 + 120);

    sub_22FA2E6E4(v35 + 136, v0 + 56);
    if (*(v0 + 80))
    {
      v36 = *(v0 + 120);
      sub_22FA2D89C((v0 + 56), v0 + 16);
      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
      (*(v38 + 16))(0, *(v36 + 64), *(v36 + 72), v37, v38);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
      sub_22FA2B420(v0 + 56, &unk_27DAD83A0, &qword_22FCD1AC0);
    }

    v53 = sub_22FCC8664();
    v54 = sub_22FCC8F34();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 304);
      v56 = swift_slowAlloc();
      *v56 = 134218496;
      *(v56 + 4) = 0;
      *(v56 + 12) = 2048;
      *(v56 + 14) = v55;
      *(v56 + 22) = 2048;
      *(v56 + 24) = 0;
      _os_log_impl(&dword_22FA28000, v53, v54, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v56, 0x20u);
      MEMORY[0x23190A000](v56, -1, -1);
    }

    sub_22FCC8484();
    v57 = *(v0 + 296);
    (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

LABEL_38:

    v52 = *(v0 + 8);

    return v52();
  }

  v9 = 0;
  *(v0 + 440) = *MEMORY[0x277D3C1A0];
  *(v0 + 444) = *MEMORY[0x277D3C1A8];
  while (1)
  {
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    *(v0 + 336) = 0;
    *(v0 + 344) = v9;
    *(v0 + 328) = 0;
    v8 = *(v0 + 288) & 0xC000000000000001;
    sub_22FCC8434();
    v24 = *(v0 + 288);
    if (v8)
    {
      v25 = MEMORY[0x231908810](v9, v24);
    }

    else
    {
      if (v9 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v25 = *(v24 + 8 * v9 + 32);
    }

    *(v0 + 368) = v25;
    v26 = [v25 uuid];
    if (!v26)
    {
      goto LABEL_27;
    }

    v27 = *(v0 + 312);
    v28 = v26;
    v7 = sub_22FCC8A84();
    v30 = v29;

    *(v0 + 376) = v30;
    if (*(v27 + 16))
    {
      v31 = sub_22FA2DB54(v7, v30);
      if (v32)
      {
        break;
      }
    }

LABEL_27:
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v33 = *(v0 + 344);
    v34 = *(v0 + 304);

    v9 = v33 + 1;
    if (v33 + 1 == v34)
    {
      goto LABEL_30;
    }
  }

  v59 = *(*(*(v0 + 312) + 56) + 8 * v31);
  *(v0 + 384) = v59;
  v60 = v59;
  v61 = swift_task_alloc();
  *(v0 + 392) = v61;
  *v61 = v0;
  v61[1] = sub_22FB39340;

  return MEMORY[0x28219C760](v60);
}

uint64_t sub_22FB39340()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_22FB3A300;
  }

  else
  {
    v2 = sub_22FB3945C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB3945C()
{
  v34 = v0;
  v1 = v0[48];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[31];
  v5 = *(v0[32] + 16);
  v0[51] = v5;
  v5(v2, v3, v4);
  v6 = v1;
  v7 = sub_22FCC8664();
  v8 = sub_22FCC8EF4();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[48];
    v9 = v0[34];
    v11 = v0[31];
    v10 = v0[32];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315394;
    sub_22FCC7EF4();
    v14 = sub_22FCC8AE4();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_22FA2F600(v14, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v32 localIdentifier];
    v19 = sub_22FCC8A84();
    v21 = v20;

    v22 = sub_22FA2F600(v19, v21, &v33);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_22FA28000, v7, v8, "Generated Spatial Scene with type %s for asset %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
    v26 = v0[34];
    v27 = v0[31];
    v28 = v0[32];

    v23 = (*(v28 + 8))(v26, v27);
  }

  v29 = v0[44];
  v0[52] = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = swift_task_alloc();
    v0[53] = v30;
    *v30 = v0;
    v30[1] = sub_22FB396F8;
    v24 = v0[46];
    v25 = v0[35];
    v23 = v0[23];
  }

  return MEMORY[0x28219C060](v23, v24, v25);
}

uint64_t sub_22FB396F8()
{
  *(*v1 + 432) = v0;

  if (v0)
  {

    v2 = sub_22FB3AA18;
  }

  else
  {
    v2 = sub_22FB39814;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB39814()
{
  v121 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  (*(v4 + 16))(v2, *(v0 + 184), v3);
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == v1)
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);

    (*(v9 + 96))(v8, v10);
    (*(v13 + 32))(v11, v8, v14);
    (*(v13 + 16))(v12, v11, v14);
    v15 = v6;
    v16 = v7;
    v17 = sub_22FCC8664();
    v18 = sub_22FCC8EF4();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 384);
    if (v19)
    {
      v21 = *(v0 + 368);
      v116 = *(v0 + 160);
      v118 = *(v0 + 184);
      v114 = *(v0 + 152);
      v115 = *(v0 + 168);
      v112 = *(v0 + 136);
      v110 = *(v0 + 128);
      v111 = *(v0 + 144);
      v22 = *(v0 + 384);
      v23 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v120 = v113;
      *v23 = 136315650;
      v24 = [v21 localIdentifier];
      v25 = sub_22FCC8A84();
      v27 = v26;

      v28 = sub_22FA2F600(v25, v27, &v120);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = [v22 localIdentifier];
      v30 = sub_22FCC8A84();
      v32 = v31;

      v33 = sub_22FA2F600(v30, v32, &v120);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2080;
      sub_22FB3B414(&qword_27DAD87D8, 255, MEMORY[0x277D3C190], MEMORY[0x277D3C198]);
      v34 = sub_22FCC96C4();
      v36 = v35;
      v37 = *(v112 + 8);
      v37(v111, v110);
      v38 = sub_22FA2F600(v34, v36, &v120);

      *(v23 + 24) = v38;
      _os_log_impl(&dword_22FA28000, v17, v18, "Suggestion %s (asset %s) failed gating for reason: %s.", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);

      v37(v114, v110);
      (*(v115 + 8))(v118, v116);
    }

    else
    {
      v61 = *(v0 + 184);
      v63 = *(v0 + 160);
      v62 = *(v0 + 168);
      v65 = *(v0 + 144);
      v64 = *(v0 + 152);
      v66 = *(v0 + 128);
      v67 = *(v0 + 136);

      v68 = *(v67 + 8);
      v68(v65, v66);
      v68(v64, v66);
      (*(v62 + 8))(v61, v63);
    }

    v70 = *(v0 + 328);
    v69 = *(v0 + 336);
  }

  else
  {
    if (v5 != *(v0 + 444))
    {
      sub_22FCC9384();
      *(v0 + 96) = 0;
      *(v0 + 104) = 0xE000000000000000;
      MEMORY[0x231907FA0](0xD000000000000015, 0x800000022FCE4540);
      sub_22FCC94A4();
      return sub_22FCC94D4();
    }

    v39 = *(v0 + 384);
    v40 = *(v0 + 368);

    v41 = v39;
    v42 = v40;
    v43 = sub_22FCC8664();
    v44 = sub_22FCC8EF4();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 384);
    if (v45)
    {
      v47 = *(v0 + 368);
      v48 = *(v0 + 168);
      v117 = *(v0 + 160);
      v119 = *(v0 + 184);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v120 = v50;
      *v49 = 136315394;
      v51 = [v47 localIdentifier];
      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v120);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = [v46 localIdentifier];
      v57 = sub_22FCC8A84();
      v59 = v58;

      v60 = sub_22FA2F600(v57, v59, &v120);

      *(v49 + 14) = v60;
      _os_log_impl(&dword_22FA28000, v43, v44, "Suggestion %s (asset %s) passes gating", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v50, -1, -1);
      MEMORY[0x23190A000](v49, -1, -1);

      (*(v48 + 8))(v119, v117);
    }

    else
    {
      v72 = *(v0 + 184);
      v73 = *(v0 + 160);
      v74 = *(v0 + 168);

      (*(v74 + 8))(v72, v73);
    }

    v69 = *(v0 + 328) + 1;
    v70 = v69;
  }

  v75 = *(v0 + 416);
  v76 = *(v0 + 432);
  while (1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v77 = *(v0 + 368);
    if (v76)
    {
      v97 = *(v0 + 296);
      v98 = *(v0 + 192);
      v99 = *(v0 + 200);
      v100 = *(v0 + 112);
      (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

      (*(v99 + 8))(v100, v98);

      v106 = *(v0 + 8);
      goto LABEL_32;
    }

    v78 = *(v0 + 344);
    v79 = *(v0 + 304);

    v80 = v78 + 1;
    if (v78 + 1 == v79)
    {
      break;
    }

    *(v0 + 352) = v75;
    *(v0 + 360) = v75;
    *(v0 + 336) = v69;
    *(v0 + 344) = v80;
    *(v0 + 328) = v70;
    if (v70 > 8)
    {
      break;
    }

    v81 = *(v0 + 288) & 0xC000000000000001;
    v82 = sub_22FCC8434();
    v83 = *(v0 + 288);
    if (v81)
    {
      v84 = MEMORY[0x231908810](v80, v83);
    }

    else
    {
      if (v80 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x28219C760](v82);
      }

      v84 = *(v83 + 8 * v80 + 32);
    }

    *(v0 + 368) = v84;
    v85 = [v84 uuid];
    v76 = 0;
    if (v85)
    {
      v86 = *(v0 + 312);
      v87 = v85;
      v88 = sub_22FCC8A84();
      v90 = v89;

      *(v0 + 376) = v90;
      if (*(v86 + 16))
      {
        v91 = sub_22FA2DB54(v88, v90);
        if (v92)
        {
          v107 = *(*(*(v0 + 312) + 56) + 8 * v91);
          *(v0 + 384) = v107;
          v108 = v107;
          v109 = swift_task_alloc();
          *(v0 + 392) = v109;
          *v109 = v0;
          v109[1] = sub_22FB39340;
          v82 = v108;

          return MEMORY[0x28219C760](v82);
        }
      }

      v76 = 0;
    }
  }

  v93 = *(v0 + 120);

  sub_22FA2E6E4(v93 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v94 = *(v0 + 120);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v95 = *(v0 + 40);
    v96 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v95);
    (*(v96 + 16))(v75, *(v94 + 64), *(v94 + 72), v95, v96);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v101 = sub_22FCC8664();
  v102 = sub_22FCC8F34();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = *(v0 + 304);
    v104 = swift_slowAlloc();
    *v104 = 134218496;
    *(v104 + 4) = v75;
    *(v104 + 12) = 2048;
    *(v104 + 14) = v103;
    *(v104 + 22) = 2048;
    *(v104 + 24) = v69;
    _os_log_impl(&dword_22FA28000, v101, v102, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v104, 0x20u);
    MEMORY[0x23190A000](v104, -1, -1);
  }

  sub_22FCC8484();
  v105 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  v106 = *(v0 + 8);
LABEL_32:

  return v106();
}

uint64_t sub_22FB3A300()
{
  v63 = v0;
  v1 = *(v0 + 400);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 384);
  (*(*(v0 + 256) + 16))(*(v0 + 264), *(v0 + 280), *(v0 + 248));
  v5 = v4;
  v6 = v1;
  v7 = sub_22FCC8664();
  v8 = sub_22FCC8F14();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 384);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v13 = *(v0 + 248);
  if (v9)
  {
    v57 = *(v0 + 384);
    v60 = v8;
    v59 = v7;
    v14 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62[0] = v61;
    *v14 = 136315650;
    sub_22FCC7EF4();
    v15 = sub_22FCC8AE4();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_22FA2F600(v15, v17, v62);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [v57 localIdentifier];
    v20 = sub_22FCC8A84();
    v22 = v21;

    v23 = sub_22FA2F600(v20, v22, v62);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v25;
    *v58 = v25;
    _os_log_impl(&dword_22FA28000, v59, v60, "Error generating Spatial3D resource with type %s for asset %s: %@", v14, 0x20u);
    sub_22FA2B420(v58, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v58, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v61, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v27 = *(v0 + 328);
  v26 = *(v0 + 336);
  while (1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v28 = *(v0 + 344);
    v29 = *(v0 + 304);

    v30 = v28 + 1;
    if (v30 == v29)
    {
      break;
    }

    *(v0 + 352) = v3;
    *(v0 + 360) = v2;
    *(v0 + 336) = v26;
    *(v0 + 344) = v30;
    *(v0 + 328) = v27;
    if (v27 > 8)
    {
      break;
    }

    v31 = *(v0 + 288) & 0xC000000000000001;
    v32 = sub_22FCC8434();
    v33 = *(v0 + 288);
    if (v31)
    {
      v34 = MEMORY[0x231908810](v30, v33);
    }

    else
    {
      if (v30 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x28219C760](v32);
      }

      v34 = *(v33 + 8 * v30 + 32);
    }

    *(v0 + 368) = v34;
    v35 = [v34 uuid];
    if (v35)
    {
      v36 = *(v0 + 312);
      v37 = v35;
      v38 = sub_22FCC8A84();
      v40 = v39;

      *(v0 + 376) = v40;
      if (*(v36 + 16))
      {
        v41 = sub_22FA2DB54(v38, v40);
        if (v42)
        {
          v54 = *(*(*(v0 + 312) + 56) + 8 * v41);
          *(v0 + 384) = v54;
          v55 = v54;
          v56 = swift_task_alloc();
          *(v0 + 392) = v56;
          *v56 = v0;
          v56[1] = sub_22FB39340;
          v32 = v55;

          return MEMORY[0x28219C760](v32);
        }
      }
    }
  }

  v43 = *(v0 + 120);

  sub_22FA2E6E4(v43 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v44 = *(v0 + 120);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v45 = *(v0 + 40);
    v46 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v45);
    (*(v46 + 16))(v2, *(v44 + 64), *(v44 + 72), v45, v46);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v47 = sub_22FCC8664();
  v48 = sub_22FCC8F34();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 304);
    v50 = swift_slowAlloc();
    *v50 = 134218496;
    *(v50 + 4) = v2;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v49;
    *(v50 + 22) = 2048;
    *(v50 + 24) = v26;
    _os_log_impl(&dword_22FA28000, v47, v48, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v50, 0x20u);
    MEMORY[0x23190A000](v50, -1, -1);
  }

  sub_22FCC8484();
  v51 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_22FB3AA18()
{
  v61 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  (*(v0 + 408))(*(v0 + 264), *(v0 + 280), *(v0 + 248));
  v4 = v3;
  v5 = v1;
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F14();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 384);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  v12 = *(v0 + 248);
  if (v8)
  {
    v56 = *(v0 + 384);
    v58 = v6;
    v13 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60[0] = v59;
    *v13 = 136315650;
    sub_22FCC7EF4();
    v14 = sub_22FCC8AE4();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_22FA2F600(v14, v16, v60);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v56 localIdentifier];
    v19 = sub_22FCC8A84();
    v21 = v20;

    v22 = sub_22FA2F600(v19, v21, v60);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2112;
    v23 = v1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v24;
    *v57 = v24;
    _os_log_impl(&dword_22FA28000, v58, v7, "Error generating Spatial3D resource with type %s for asset %s: %@", v13, 0x20u);
    sub_22FA2B420(v57, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v59, -1, -1);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  while (1)
  {
    (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
    sub_22FCC8484();
    v27 = *(v0 + 344);
    v28 = *(v0 + 304);

    v29 = v27 + 1;
    if (v27 + 1 == v28)
    {
      break;
    }

    *(v0 + 352) = v2;
    *(v0 + 360) = v2;
    *(v0 + 336) = v25;
    *(v0 + 344) = v29;
    *(v0 + 328) = v26;
    if (v26 > 8)
    {
      break;
    }

    v30 = *(v0 + 288) & 0xC000000000000001;
    v31 = sub_22FCC8434();
    v32 = *(v0 + 288);
    if (v30)
    {
      v33 = MEMORY[0x231908810](v29, v32);
    }

    else
    {
      if (v29 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x28219C760](v31);
      }

      v33 = *(v32 + 8 * v29 + 32);
    }

    *(v0 + 368) = v33;
    v34 = [v33 uuid];
    if (v34)
    {
      v35 = *(v0 + 312);
      v36 = v34;
      v37 = sub_22FCC8A84();
      v39 = v38;

      *(v0 + 376) = v39;
      if (*(v35 + 16))
      {
        v40 = sub_22FA2DB54(v37, v39);
        if (v41)
        {
          v53 = *(*(*(v0 + 312) + 56) + 8 * v40);
          *(v0 + 384) = v53;
          v54 = v53;
          v55 = swift_task_alloc();
          *(v0 + 392) = v55;
          *v55 = v0;
          v55[1] = sub_22FB39340;
          v31 = v54;

          return MEMORY[0x28219C760](v31);
        }
      }
    }
  }

  v42 = *(v0 + 120);

  sub_22FA2E6E4(v42 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v43 = *(v0 + 120);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v44 = *(v0 + 40);
    v45 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v44);
    (*(v45 + 16))(v2, *(v43 + 64), *(v43 + 72), v44, v45);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v46 = sub_22FCC8664();
  v47 = sub_22FCC8F34();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 304);
    v49 = swift_slowAlloc();
    *v49 = 134218496;
    *(v49 + 4) = v2;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v48;
    *(v49 + 22) = 2048;
    *(v49 + 24) = v25;
    _os_log_impl(&dword_22FA28000, v46, v47, "Generated %ld resources from %ld suggestions to process. Found %ld passing gating.", v49, 0x20u);
    MEMORY[0x23190A000](v49, -1, -1);
  }

  sub_22FCC8484();
  v50 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_22FB3B128()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0, &qword_22FCD1AC0);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB3B1BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8, &qword_22FCD1BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = type metadata accessor for GyroPosterSuggestionGenerationTask();
  return v0;
}

uint64_t sub_22FB3B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB38198(a2, a3);
}

uint64_t sub_22FB3B2E8(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB3B390(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB3B414(&unk_28147C5B0, a2, type metadata accessor for Spatial3DPickerPreviewGenerationTask, &unk_22FCD7DB0);
  result = sub_22FB3B414(&qword_27DAD87D0, v3, type metadata accessor for Spatial3DPickerPreviewGenerationTask, &unk_22FCD7D88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB3B414(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22FB3B45C()
{
  result = qword_27DAD7F48;
  if (!qword_27DAD7F48)
  {
    sub_22FA3A77C(255, &qword_27DAD83F0, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7F48);
  }

  return result;
}

void *sub_22FB3B4C4()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0x7672655374736554;
  result[3] = 0xEB00000000656369;
  result[4] = 0;
  qword_27DAE2990 = result;
  return result;
}

uint64_t sub_22FB3B518()
{
  if (qword_27DAD6ED8 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB3B5D8()
{
  v1 = *(*(v0 + 40) + 152);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22FB3B5FC, v1, 0);
}

uint64_t sub_22FB3B5FC()
{
  v12 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22FA86D94(*(v2 + 16), 0);
    v5 = sub_22FA88AB8(&v11, (v4 + 4), v3, v2);
    v6 = v11;

    sub_22FA37D64(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[7] = v4;
  v7 = *(v0[6] + 128);
  sub_22FB3D7F0(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_22FB3B7D0;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FB3B7D0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22FA82CBC, v1, 0);
}

uint64_t sub_22FB3B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return MEMORY[0x2822009F8](sub_22FB3B94C, v6, 0);
}

uint64_t sub_22FB3B94C()
{
  v1 = *(v0 + 144);
  v2 = v1[18];
  if (*(v2 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v22 = *(v0 + 104);
    v24 = v1[16];
    v25 = v1[17];

    MEMORY[0x231907FA0](58, 0xE100000000000000);
    MEMORY[0x231907FA0](v6, v5);
    v7 = v1[14];
    *(v0 + 40) = type metadata accessor for TestWorker();
    *(v0 + 48) = sub_22FB3D7F0(&qword_27DAD8250, 255, type metadata accessor for TestWorker, &unk_22FCD5150);
    *(v0 + 16) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76B0, &qword_22FCD2C68);
    v10 = swift_allocObject();
    *(v0 + 152) = v10;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 16) = v24;
    *(v10 + 24) = v25;
    *(v10 + 32) = v24;
    *(v10 + 40) = v25;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0;
    sub_22FA2D89C((v0 + 16), v10 + 144);
    *(v10 + 128) = &unk_22FCD7F10;
    *(v10 + 136) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v24;
    *(v11 + 24) = v25;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_22FB3D2D8;
    *(v12 + 24) = v11;
    *(v10 + 184) = sub_22FB3D2E0;
    *(v10 + 192) = v12;
    *(v0 + 80) = v9;
    v13 = sub_22FB3D318();
    *(v0 + 56) = v10;
    *(v0 + 88) = v13;
    swift_bridgeObjectRetain_n();

    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_22FB3BC78;
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);

    return sub_22FB7CDB0(v0 + 56, v17, v22, v15, v16);
  }

  else
  {
    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_22FB3BC78(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = v6[18];
    v8 = sub_22FB3BE2C;
  }

  else
  {
    v9 = v6[18];
    v6[22] = a2;
    v6[23] = a1;
    __swift_destroy_boxed_opaque_existential_0(v6 + 7);
    v8 = sub_22FB3BDC4;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22FB3BDC4()
{

  v1 = v0[1];
  v3 = v0[22];
  v2 = v0[23];

  return v1(v2, v3);
}

uint64_t sub_22FB3BE2C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB3BE98@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if (a2(0.0))
  {
    result = sub_22FAF86E0(*(*(a3 + 112) + 128));
    *a4 = result;
    a4[1] = v8;
  }

  else
  {
    sub_22FAE11BC();
    swift_allocError();
    v10 = v9;
    sub_22FA2D328(a1, v9);
    *(v10 + 48) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22FB3C0C8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_22FCC8A84();
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_22FB3C158, 0, 0);
}

uint64_t sub_22FB3C158()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22FB3C240;
  v2 = v0[4];
  v3 = v0[5];

  return (sub_22FB3B920)(0xD000000000000010, 0x800000022FCE4620, v2, v3, sub_22FB3D478);
}

uint64_t sub_22FB3C240(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_22FB3C42C;
  }

  else
  {

    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_22FB3C388;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB3C388()
{

  v1 = sub_22FCC8A54();

  v2 = *(v0 + 24);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FB3C42C()
{
  v1 = v0[7];

  v2 = sub_22FCC6504();

  v3 = v0[3];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB3C4DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, double)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if ((a2)(0.0))
  {
    v8 = 0;
    while (v8 != 200)
    {
      v9 = usleep(0x186A0u);
      v10 = a2(v9, v8++ / 200.0);
      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = sub_22FAF86E0(*(*(a3 + 112) + 128));
    *a4 = result;
    a4[1] = v14;
  }

  else
  {
LABEL_5:
    sub_22FAE11BC();
    swift_allocError();
    v12 = v11;
    sub_22FA2D328(a1, v11);
    *(v12 + 48) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22FB3C75C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_22FCC8A84();
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_22FB3C7EC, 0, 0);
}

uint64_t sub_22FB3C7EC()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22FB3C8D4;
  v2 = v0[4];
  v3 = v0[5];

  return (sub_22FB3B920)(0xD000000000000014, 0x800000022FCE4600, v2, v3, sub_22FB3D1D4);
}

uint64_t sub_22FB3C8D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_22FB3D838;
  }

  else
  {

    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_22FB3D83C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB3CC00()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_22FB3CC50()
{
  v1 = *(*(v0 + 16) + 144);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FB3CD0C;
  v3 = *(v0 + 16);

  return sub_22FAE3FDC(v1, v3);
}

uint64_t sub_22FB3CD0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FB3CE70(uint64_t a1, uint64_t a2)
{
  result = sub_22FB3D7F0(&qword_27DAD87E0, a2, type metadata accessor for TestService, &unk_22FCD7E4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB3CEC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB3D7F0(&qword_27DAD87E8, a2, type metadata accessor for TestService, &unk_22FCD7E74);
  result = sub_22FB3D7F0(&qword_27DAD87F0, v3, type metadata accessor for TestService, &unk_22FCD7EB4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB3CF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *__return_ptr, void *, uint64_t, uint64_t, uint64_t, __n128))
{
  v18 = v6;
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76B0, &qword_22FCD2C68);
  v16[4] = sub_22FB3D318();
  v16[0] = a2;

  (a6)(v17, v16, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_0(v16);
  v13 = v17[1];
  *a1 = v17[0];
  a1[1] = v13;
  v14 = *(v6 + 8);

  return v14();
}

uint64_t sub_22FB3D04C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE3AE0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22FB3D120()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C21C;

  return sub_22FB3C75C(v2, v3, v4);
}

uint64_t sub_22FB3D1F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FA2C030;

  return sub_22FB3CF4C(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_22FB3D2E0(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_22FB3D318()
{
  result = qword_27DAD76B8;
  if (!qword_27DAD76B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD76B0, &qword_22FCD2C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD76B8);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FB3D3C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22FA2C030;

  return sub_22FB3C0C8(v2, v3, v4);
}

uint64_t *sub_22FB3D494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v29 = a5;
  v28 = a4;
  v10 = *v5;
  v11 = sub_22FCC8684();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - v18;
  swift_defaultActor_initialize();
  v6[16] = a1;
  v6[17] = a2;
  v6[14] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7680, &unk_22FCD2BE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FCD1800;
  *(v20 + 56) = type metadata accessor for TestWorker();
  *(v20 + 64) = sub_22FB3D7F0(&qword_27DAD8250, 255, type metadata accessor for TestWorker, &unk_22FCD5150);
  *(v20 + 32) = a3;
  v6[15] = v20;
  v22 = sub_22FB3D7F0(&unk_27DAD7B40, v21, type metadata accessor for TestService, &unk_22FCD7E98);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_22FA2CEC4(v10, v22);
  type metadata accessor for StateHolder(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v23[2] = 0x7672655374736554;
  v23[3] = 0xEB00000000656369;
  v23[4] = a1;
  v23[5] = a2;
  v24 = *(v12 + 16);
  v24(v23 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v19, v11);
  v24(v15, v19, v11);
  sub_22FCC85E4();
  (*(v12 + 8))(v19, v11);
  v6[18] = v23;
  type metadata accessor for ServiceOperationManager();
  v25 = swift_allocObject();
  v26 = v28;

  swift_defaultActor_initialize();
  *(v25 + 144) = MEMORY[0x277D84F98];
  *(v25 + 152) = 0;
  *(v25 + 112) = a1;
  *(v25 + 120) = a2;
  *(v25 + 128) = v26;
  *(v25 + 136) = v29;
  v6[19] = v25;
  if (qword_27DAD6ED8 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v6;
}

uint64_t sub_22FB3D7F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_22FB3D840(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
LABEL_32:
    v5 = sub_22FCC92C4();
    if (v5)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return a1;
  }

LABEL_3:
  v6 = 0;
  v32 = v3 & 0xFFFFFFFFFFFFFF8;
  v33 = v3 & 0xC000000000000001;
  v30 = v5;
  v31 = v3;
  while (1)
  {
    if (v33)
    {
      v7 = MEMORY[0x231908810](v6, v3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 >= *(v32 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v6 + 32);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    v9 = v7;
    v10 = [v9 string];
    v11 = sub_22FCC8A84();
    v3 = v12;

    swift_beginAccess();
    v13 = *a3;
    if (*(*a3 + 16))
    {
      v14 = sub_22FA2DB54(v11, v3);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v13 + 56) + 8 * v14);
        swift_endAccess();

        goto LABEL_14;
      }
    }

    else
    {
    }

    swift_endAccess();
    v17 = MEMORY[0x277D84FA0];
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_22FA6A0C0(v9);
    v21 = a1[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_30;
    }

    v3 = v19;
    if (a1[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_22FA6FDC0();
      if (v3)
      {
LABEL_4:
        *(a1[7] + 8 * v20) = v17;

        goto LABEL_5;
      }
    }

LABEL_21:
    a1[(v20 >> 6) + 8] |= 1 << v20;
    *(a1[6] + 8 * v20) = v9;
    *(a1[7] + 8 * v20) = v17;
    v26 = a1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_31;
    }

    a1[2] = v28;

LABEL_5:
    ++v6;
    v3 = v31;
    if (v8 == v30)
    {
      return a1;
    }
  }

  sub_22FA6B5B4(v23, isUniquelyReferenced_nonNull_native);
  v24 = sub_22FA6A0C0(v9);
  if ((v3 & 1) == (v25 & 1))
  {
    v20 = v24;
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  sub_22FA3A77C(0, &qword_28147AE88, 0x277CCA898);
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

void sub_22FB3DB04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84FA0];
  while (1)
  {
    v7 = *(v4 - 1);
    v6 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a2;
    v23 = *a2;
    *a2 = 0x8000000000000000;
    v10 = sub_22FA2DB54(v7, v6);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_22FA6B58C(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_22FA2DB54(v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v23;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = v10;
    sub_22FA6FD98();
    v10 = v22;
    v18 = v23;
    if (v16)
    {
LABEL_3:
      *(v18[7] + 8 * v10) = v5;

      goto LABEL_4;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v10) = v5;
    v20 = v18[2];
    v14 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v21;

LABEL_4:
    *a2 = v18;

    v4 += 2;
    if (!--v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_22FCC9774();
  __break(1u);
}

uint64_t PromptSuggestionValidationResult.promptId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptSuggestionValidationResult.init(promptId:attributedString:assetUUIDs:queryTokens:timeRangeValidation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

double sub_22FB3DD18(uint64_t a1)
{
  sub_22FCC8E24();
  result = v1 * 11.0;
  qword_27DAD87F8 = *&result;
  return result;
}

double static PromptSuggestionValidator.allTimeDateRangeThreshold.getter()
{
  if (qword_27DAD6EE0 != -1)
  {
    swift_once();
  }

  return *&qword_27DAD87F8;
}

uint64_t sub_22FB3DD90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22FCC68A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC6874();
  v7 = sub_22FCC6834();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for LocalizedStringProvider();
  v11 = swift_allocObject();
  v12 = type metadata accessor for PromptSuggestionQUProvider(0);
  v13 = swift_allocObject();
  v24 = v10;
  v25 = &protocol witness table for LocalizedStringProvider;
  *&v23 = v11;
  v14 = OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_logger;
  v15 = qword_28147DF50;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_22FCC8684();
  v17 = __swift_project_value_buffer(v16, qword_28147DF58);
  (*(*(v16 - 8) + 16))(v13 + v14, v17, v16);
  *(v13 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse) = 0;
  v18 = (v13 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localeIdentifier);
  *v18 = v7;
  v18[1] = v9;
  sub_22FA2CF78(&v23, v13 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localizedStringProvider);

  v19 = type metadata accessor for PromptSuggestionQUProcessor(0);
  v20 = swift_allocObject();
  v24 = v12;
  v25 = &protocol witness table for PromptSuggestionQUProvider;
  *&v23 = v13;

  sub_22FCC8674();
  sub_22FA2CF78(&v23, v20 + 16);

  a1[3] = v19;
  a1[4] = &protocol witness table for PromptSuggestionQUProcessor;
  *a1 = v20;
  return result;
}

uint64_t PromptSuggestionValidator.__allocating_init(storyPhotoLibraryContext:safetyController:momentExpansionProcessor:momentBasedGroundingAndAssetsProvider:annotationProvider:quProcessor:maxAssetFetchCount:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a2[3];
  v12 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = sub_22FB55560(a1, v14, a3, a4, v17, a6, a7, v22, v15, v13, v16, v12);

  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t PromptSuggestionValidator.init(storyPhotoLibraryContext:safetyController:momentExpansionProcessor:momentBasedGroundingAndAssetsProvider:annotationProvider:quProcessor:maxAssetFetchCount:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v29 = a7;
  v27 = a4;
  v28 = a6;
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v14 = MEMORY[0x28223BE20](v13, v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = a5[3];
  v19 = a5[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  v21 = MEMORY[0x28223BE20](v20, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v21);
  v25 = sub_22FB54D0C(a1, v16, a3, v27, v23, v28, v29, v30, v18, v12, v19, v11);

  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v25;
}

uint64_t sub_22FB3E2E0()
{
  v1 = (v0[7] + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_22FCC8554();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80, &unk_22FCD8180);
  v0[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  MEMORY[0x231907860]();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FB3E400;

  return MEMORY[0x28219C750](v0 + 2, v2, v3);
}

uint64_t sub_22FB3E400()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FB3E53C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22FB3E53C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB3E5C0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_22FA7CBA4;

  return v6(v2, v3);
}

id PromptSuggestionValidator.validationAssetCountThreshold.getter()
{
  v0 = objc_opt_self();

  return [v0 promptValidationAssetCountThreshold];
}

uint64_t sub_22FB3E728()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback);
  }

  else
  {
    v3 = v0;
    v4 = sub_22FCC7DF4();
    v5 = [objc_allocWithZone(MEMORY[0x277CD99F8]) initWithPhotoLibrary_];

    v9[4] = sub_22FB3E884;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_22FC4C978;
    v9[3] = &block_descriptor_23;
    v6 = _Block_copy(v9);
    v7 = [v5 personUUIDsWithUserFeedbackFilterBlock_];
    _Block_release(v6);

    v2 = sub_22FCC8E84();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t PromptSuggestionValidator.validatePeople(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for TemplatedPrompt(0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_22FCC84E4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB3E9BC, 0, 0);
}

uint64_t sub_22FB3E9BC()
{
  v39 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v34 = v0[6];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_22FCC8414();
  v3 = *(v2 + 16);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v2 + 16);
  }

  v33 = *(v2 + 16);
  if (v3)
  {
    v5 = 1.0 / v4;
    v35 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
    v6 = v0[10];
    v7 = *(v6 + 72);
    v36 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = v0[5] + v36;
    v9 = MEMORY[0x277D84F90];
    v10 = 0.0;
    v37 = v7;
    while (1)
    {
      sub_22FB26F90(v8, v0[12]);
      v10 = v5 + v10;
      sub_22FCC8FF4();
      v11 = sub_22FCC7BA4();
      if (!v12)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      v15 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v15 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        swift_beginAccess();
        v16 = *(v1 + v35);
        if (*(v16 + 16) && (v17 = sub_22FA2DB54(v13, v14), (v18 & 1) != 0))
        {
          v19 = *(*(v16 + 56) + v17);
          swift_endAccess();

          if (v19)
          {
            break;
          }
        }

        else
        {
          v20 = v0[8];
          swift_endAccess();
          v21 = objc_autoreleasePoolPush();
          sub_22FB3EFE8(v20, v13, v14, &v38);

          objc_autoreleasePoolPop(v21);
          v7 = v37;
          if (v38)
          {
            break;
          }
        }
      }

      else
      {
      }

      sub_22FA72A34(v0[12]);
LABEL_8:
      v8 += v7;
      if (!--v3)
      {
        goto LABEL_24;
      }
    }

    sub_22FB5570C(v0[12], v0[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22FA86F90(0, *(v9 + 16) + 1, 1);
    }

    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22FA86F90((v22 > 1), v23 + 1, 1);
    }

    v24 = v0[11];
    *(v9 + 16) = v23 + 1;
    sub_22FB5570C(v24, v9 + v36 + v23 * v7);
    goto LABEL_8;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_24:
  sub_22FCC9004();

  v25 = sub_22FCC8664();
  v26 = sub_22FCC8F34();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = *(v9 + 16);

    *(v27 + 12) = 2048;
    *(v27 + 14) = v33;

    _os_log_impl(&dword_22FA28000, v25, v26, "Person validation passed %ld of %ld prompt templates", v27, 0x16u);
    MEMORY[0x23190A000](v27, -1, -1);
  }

  else
  {
  }

  v29 = v0[14];
  v28 = v0[15];
  v30 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0[6], v34[3]);
  sub_22FCC83F4();
  (*(v29 + 8))(v28, v30);

  v31 = v0[1];

  return v31(v9);
}

void sub_22FB3EFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v63 = sub_22FCC7E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD17F0;
  *(v6 + 32) = sub_22FCC8A84();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_22FCC8A84();
  *(v6 + 56) = v8;
  v9 = MEMORY[0x277D837D0];
  v10 = sub_22FCC8C24();

  [v63 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FCD7460;
  sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22FCD17F0;
  *(v12 + 56) = v9;
  v13 = sub_22FA4EF4C();
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 96) = v9;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;

  *(v11 + 32) = sub_22FCC8EE4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FCD17F0;
  *(v14 + 56) = v9;
  *(v14 + 64) = v13;
  *(v14 + 32) = 0x4E79616C70736964;
  *(v14 + 40) = 0xEB00000000656D61;
  *(v14 + 96) = v9;
  *(v14 + 104) = v13;
  v61 = a2;
  *(v14 + 72) = a2;
  *(v14 + 80) = a3;
  v68 = a3;
  v15 = v63;

  *(v11 + 40) = sub_22FCC8EE4();
  v16 = sub_22FCC8C24();

  v17 = [objc_opt_self() orPredicateWithSubpredicates_];

  [v63 setPredicate_];
  v18 = [objc_opt_self() fetchPersonsWithOptions_];
  v19 = [v18 fetchedObjects];

  if (!v19)
  {
LABEL_40:

    v51 = sub_22FCC8664();
    v52 = sub_22FCC8F14();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136315138;
      v55 = v61;
      *(v53 + 4) = sub_22FA2F600(v61, v68, v69);
      _os_log_impl(&dword_22FA28000, v51, v52, "Person %s is not found in person fetch. Assuming not valid", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x23190A000](v54, -1, -1);
      MEMORY[0x23190A000](v53, -1, -1);

      v50 = a4;
    }

    else
    {

      v50 = a4;
      v55 = v61;
    }

    v56 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(a1 + v56);
    *(a1 + v56) = 0x8000000000000000;
    sub_22FB263D0(0, v55, v68, isUniquelyReferenced_nonNull_native);
    *(a1 + v56) = v70;
    swift_endAccess();

    LOBYTE(v15) = 0;
    goto LABEL_46;
  }

  sub_22FA3A77C(0, &qword_27DAD7F20, 0x277CD9938);
  v20 = sub_22FCC8C44();

  if (v20 >> 62)
  {
LABEL_49:
    v21 = sub_22FCC92C4();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v68;
  if (!v21)
  {

    goto LABEL_40;
  }

  v23 = v20;
  v24 = 0;
  v25 = v20 & 0xC000000000000001;
  v20 &= 0xFFFFFFFFFFFFFF8uLL;
  v60 = v23;
  v26 = v23 + 32;
  v15 = 1;
  v66 = v20;
  v67 = v21;
  v65 = v23 + 32;
  do
  {
    if (v25)
    {
      v27 = MEMORY[0x231908810](v24, v60);
    }

    else
    {
      if (v24 >= *(v20 + 16))
      {
        goto LABEL_48;
      }

      v27 = *(v26 + 8 * v24);
    }

    v28 = v27;
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((v15 & 1) == 0 || [v27 type] == -1)
    {
      v15 = 0;
    }

    else
    {
      v30 = sub_22FB3E728();
      v31 = [v28 uuid];
      if (!v31)
      {
        __break(1u);
        return;
      }

      v32 = v31;
      v33 = sub_22FCC8A84();
      v35 = v34;

      if (*(v30 + 16))
      {
        sub_22FCC9844();
        sub_22FCC8B14();
        v36 = sub_22FCC9894();
        v37 = -1 << *(v30 + 32);
        v38 = v36 & ~v37;
        if ((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          while (1)
          {
            v40 = (*(v30 + 48) + 16 * v38);
            v41 = *v40 == v33 && v40[1] == v35;
            if (v41 || (sub_22FCC9704() & 1) != 0)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v30 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              v15 = 1;
              goto LABEL_28;
            }
          }

          v15 = 0;
        }

        else
        {
          v15 = 1;
        }

LABEL_28:
        v22 = v68;
      }

      else
      {
        v15 = 1;
      }

      v20 = v66;
      v21 = v67;
      v26 = v65;
    }
  }

  while (v24 != v21);

  v42 = sub_22FCC8664();
  v43 = sub_22FCC8F34();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v69[0] = v45;
    *v44 = 136315394;
    v46 = v61;
    *(v44 + 4) = sub_22FA2F600(v61, v22, v69);
    *(v44 + 12) = 2080;
    if (v15)
    {
      v47 = 0x64696C6176;
    }

    else
    {
      v47 = 0xD00000000000001DLL;
    }

    if (v15)
    {
      v48 = 0xE500000000000000;
    }

    else
    {
      v48 = 0x800000022FCE4930;
    }

    v49 = sub_22FA2F600(v47, v48, v69);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_22FA28000, v42, v43, "Person %s is %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v45, -1, -1);
    MEMORY[0x23190A000](v44, -1, -1);

    v50 = a4;
  }

  else
  {

    v50 = a4;
    v46 = v61;
  }

  v58 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
  swift_beginAccess();
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v58);
  *(a1 + v58) = 0x8000000000000000;
  sub_22FB263D0(v15, v46, v22, v59);
  *(a1 + v58) = v70;
  swift_endAccess();

LABEL_46:
  *v50 = v15;
}

uint64_t PromptSuggestionValidator.safeFallbackPrompts(_:eventRecorder:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22FCC7824();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB3F8D4, 0, 0);
}

uint64_t sub_22FB3F8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = v7;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  v9 = *(v7 + 24);
  if (v9 >> 62)
  {
    v10 = sub_22FCC92C4();
    *(v7 + 72) = v10;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v7 + 72) = v10;
    if (v10)
    {
LABEL_3:
      if (v10 < 1)
      {
        __break(1u);
      }

      else
      {
        v11 = *(v7 + 24);
        v12 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController;
        v13 = MEMORY[0x277D3C308];
        *(v7 + 80) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;
        *(v7 + 88) = v12;
        *(v7 + 144) = *v13;
        *(v7 + 96) = 0;
        *(v7 + 104) = v8;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x231908810](0);
        }

        else
        {
          v14 = *(v11 + 32);
        }

        *(v7 + 112) = v14;
        v15 = v14;
        v16 = sub_22FCC8664();
        v17 = sub_22FCC8F34();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v40 = v19;
          *v18 = 136642819;
          v20 = [v15 description];
          v21 = sub_22FCC8A84();
          v23 = v22;

          v24 = sub_22FA2F600(v21, v23, &v40);

          *(v18 + 4) = v24;
          _os_log_impl(&dword_22FA28000, v16, v17, "[Safety] Fallback prompt requires safety validation: %{sensitive}s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x23190A000](v19, -1, -1);
          MEMORY[0x23190A000](v18, -1, -1);
        }

        v25 = *(v7 + 144);
        v26 = *(v7 + 56);
        v27 = *(v7 + 64);
        v28 = *(v7 + 48);
        v29 = (*(v7 + 40) + *(v7 + 88));
        v30 = v29[3];
        v39 = v29[4];
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v31 = [v15 string];
        v32 = sub_22FCC8A84();
        v34 = v33;

        *(v7 + 120) = v34;
        (*(v26 + 104))(v27, v25, v28);
        v35 = swift_task_alloc();
        *(v7 + 128) = v35;
        *v35 = v7;
        v35[1] = sub_22FB3FC04;
        a4 = *(v7 + 64);
        a5 = *(v7 + 32);
        v10 = v32;
        a2 = v34;
        a3 = 0;
        a6 = v30;
        a7 = v39;
      }

      return MEMORY[0x28219C8C8](v10, a2, a3, a4, a5, a6, a7);
    }
  }

  v36 = *(v7 + 8);
  v37 = MEMORY[0x277D84F90];

  return v36(v37);
}

uint64_t sub_22FB3FC04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 136) = v2;

  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  if (v2)
  {
    (*(v6 + 8))(v4[8], v4[6]);

    v8 = sub_22FB400FC;
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_22FB3FDCC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22FB3FDCC()
{
  v33 = v0;
  MEMORY[0x231908070](*(v0 + 112));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22FCC8C64();
  }

  v1 = *(v0 + 112);
  sub_22FCC8C84();

  v2 = *(v0 + 16);
  v3 = *(v0 + 96) + 1;
  if (v3 == *(v0 + 72))
  {

    v4 = *(v0 + 8);

    return v4(v2);
  }

  else
  {
    *(v0 + 96) = v3;
    *(v0 + 104) = v2;
    v6 = *(v0 + 24);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x231908810]();
    }

    else
    {
      v7 = *(v6 + 8 * v3 + 32);
    }

    *(v0 + 112) = v7;
    v8 = v7;
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136642819;
      v13 = [v8 description];
      v14 = sub_22FCC8A84();
      v16 = v15;

      v17 = sub_22FA2F600(v14, v16, &v32);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_22FA28000, v9, v10, "[Safety] Fallback prompt requires safety validation: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23190A000](v12, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    v18 = *(v0 + 144);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = (*(v0 + 40) + *(v0 + 88));
    v23 = v22[3];
    v31 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v24 = [v8 string];
    v25 = sub_22FCC8A84();
    v27 = v26;

    *(v0 + 120) = v27;
    (*(v19 + 104))(v20, v18, v21);
    v28 = swift_task_alloc();
    *(v0 + 128) = v28;
    *v28 = v0;
    v28[1] = sub_22FB3FC04;
    v29 = *(v0 + 64);
    v30 = *(v0 + 32);

    return MEMORY[0x28219C8C8](v25, v27, 0, v29, v30, v23, v31);
  }
}

uint64_t sub_22FB400FC()
{
  v45 = v0;
  v1 = *(v0 + 112);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F14();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v7 = 136642819;
    v9 = [v6 description];
    v10 = sub_22FCC8A84();
    v12 = v11;

    v13 = sub_22FA2F600(v10, v12, &v44);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_22FA28000, v2, v3, "[Safety] Fallback prompt didn't pass safety validation: %{sensitive}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 96) + 1;
  if (v14 == *(v0 + 72))
  {
    v15 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    *(v0 + 96) = v14;
    v18 = *(v0 + 24);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x231908810]();
    }

    else
    {
      v19 = *(v18 + 8 * v14 + 32);
    }

    *(v0 + 112) = v19;
    v20 = v19;
    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136642819;
      v25 = [v20 description];
      v26 = sub_22FCC8A84();
      v28 = v27;

      v29 = sub_22FA2F600(v26, v28, &v44);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_22FA28000, v21, v22, "[Safety] Fallback prompt requires safety validation: %{sensitive}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23190A000](v24, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    v30 = *(v0 + 144);
    v31 = *(v0 + 56);
    v32 = *(v0 + 64);
    v33 = *(v0 + 48);
    v34 = (*(v0 + 40) + *(v0 + 88));
    v35 = v34[3];
    v43 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v36 = [v20 string];
    v37 = sub_22FCC8A84();
    v39 = v38;

    *(v0 + 120) = v39;
    (*(v31 + 104))(v32, v30, v33);
    v40 = swift_task_alloc();
    *(v0 + 128) = v40;
    *v40 = v0;
    v40[1] = sub_22FB3FC04;
    v41 = *(v0 + 64);
    v42 = *(v0 + 32);

    return MEMORY[0x28219C8C8](v37, v39, 0, v41, v42, v35, v43);
  }
}

uint64_t PromptSuggestionValidator.searchFallbackPrompts(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_22FB405A8;

  return PromptSuggestionValidator.safeFallbackPrompts(_:eventRecorder:)(a1, a2);
}

uint64_t sub_22FB405A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[6] = a1;

  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v4;
  v5[1] = sub_22FB40718;
  v6 = v3[3];

  return sub_22FB40DF4(a1, v6, 0, 0);
}

uint64_t sub_22FB40718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_22FB40DDC;
  }

  else
  {
    v4 = sub_22FB4084C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FB4084C()
{
  v52 = v0;
  v1 = v0[2];
  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      if (v2 < 1)
      {
        __break(1u);
        return;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = 0;
        v4 = MEMORY[0x277D84FA0];
        v5 = v0[8];
        while (1)
        {
          v8 = MEMORY[0x231908810](v3, v0[2]);
          v9 = v8;
          if (v5[2])
          {
            sub_22FA6A0C0(v8);
            if (v10)
            {
              goto LABEL_23;
            }
          }

          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v5;
          v1 = v5;
          v13 = sub_22FA6A0C0(v9);
          v14 = v5[2];
          v15 = (v12 & 1) == 0;
          v16 = v14 + v15;
          if (__OFADD__(v14, v15))
          {
            __break(1u);
            goto LABEL_46;
          }

          v17 = v12;
          if (v5[3] >= v16)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v12)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v1 = &v51;
              sub_22FA6FDC0();
              v5 = v51;
              if (v17)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            sub_22FA6B5B4(v16, isUniquelyReferenced_nonNull_native);
            v5 = v51;
            v1 = v51;
            v18 = sub_22FA6A0C0(v9);
            if ((v17 & 1) != (v19 & 1))
            {
              goto LABEL_42;
            }

            v13 = v18;
            if (v17)
            {
LABEL_17:
              *(v5[7] + 8 * v13) = v4;

              swift_unknownObjectRelease();
              goto LABEL_21;
            }
          }

          v5[(v13 >> 6) + 8] |= 1 << v13;
          *(v5[6] + 8 * v13) = v9;
          *(v5[7] + 8 * v13) = v4;
          v20 = v5[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_47;
          }

          v5[2] = v22;
LABEL_21:
          swift_unknownObjectRetain();
          v23 = sub_22FCC8664();
          v24 = sub_22FCC8F34();
          swift_unknownObjectRelease();
          if (!os_log_type_enabled(v23, v24))
          {

LABEL_23:
            swift_unknownObjectRelease();
            goto LABEL_7;
          }

          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *v6 = 138412290;
          *(v6 + 4) = v9;
          *v7 = v9;
          swift_unknownObjectRetain();
          _os_log_impl(&dword_22FA28000, v23, v24, "[Safety] No search results for prompt: %@", v6, 0xCu);
          sub_22FA2B420(v7, &unk_27DAD7B10, &unk_22FCD21C0);
          MEMORY[0x23190A000](v7, -1, -1);
          MEMORY[0x23190A000](v6, -1, -1);
          swift_unknownObjectRelease();

LABEL_7:
          if (v2 == ++v3)
          {
            goto LABEL_51;
          }
        }
      }

      v25 = (v0[2] + 32);
      v26 = MEMORY[0x277D84FA0];
      v5 = v0[8];
      v50 = v0;
      while (1)
      {
        v27 = v5[2];
        v28 = *v25;
        v29 = v28;
        if (!v27)
        {
          break;
        }

        sub_22FA6A0C0(v28);
        if ((v30 & 1) == 0)
        {
          break;
        }

LABEL_26:

        ++v25;
        if (!--v2)
        {
          goto LABEL_51;
        }
      }

      v31 = v29;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v5;
      v1 = v5;
      v34 = sub_22FA6A0C0(v31);
      v35 = v5[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (!__OFADD__(v35, v36))
      {
        break;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v2 = sub_22FCC92C4();
      if (!v2)
      {
        goto LABEL_50;
      }
    }

    v38 = v33;
    if (v5[3] < v37)
    {
      sub_22FA6B5B4(v37, v32);
      v5 = v51;
      v1 = v51;
      v39 = sub_22FA6A0C0(v31);
      if ((v38 & 1) != (v40 & 1))
      {
LABEL_42:
        sub_22FA3A77C(0, &qword_28147AE88, 0x277CCA898);

        sub_22FCC9774();
        return;
      }

      v34 = v39;
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      *(v5[7] + 8 * v34) = v26;

LABEL_40:
      v43 = v31;
      v29 = sub_22FCC8664();
      v44 = sub_22FCC8F34();

      if (os_log_type_enabled(v29, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v43;
        *v46 = v43;
        v47 = v26;
        v48 = v43;
        _os_log_impl(&dword_22FA28000, v29, v44, "[Safety] No search results for prompt: %@", v45, 0xCu);
        sub_22FA2B420(v46, &unk_27DAD7B10, &unk_22FCD21C0);
        MEMORY[0x23190A000](v46, -1, -1);
        MEMORY[0x23190A000](v45, -1, -1);
        v43 = v29;
        v29 = v48;
        v26 = v47;
        v0 = v50;
      }

      goto LABEL_26;
    }

    if (v32)
    {
      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v1 = &v51;
      sub_22FA6FDC0();
      v5 = v51;
      if (v38)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    v5[(v34 >> 6) + 8] |= 1 << v34;
    *(v5[6] + 8 * v34) = v31;
    *(v5[7] + 8 * v34) = v26;
    v41 = v5[2];
    v21 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v21)
    {
      goto LABEL_48;
    }

    v5[2] = v42;
    goto LABEL_40;
  }

LABEL_50:
  v5 = v0[8];
LABEL_51:
  v49 = v0[1];

  v49(v5);
}

uint64_t sub_22FB40DF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 136) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_22FCC8494();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB40EC8, 0, 0);
}

uint64_t sub_22FB40EC8()
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    v4 = sub_22FCC92C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 80) = v4;
  if (v4 >= 1)
  {
    v5 = 0;
    sub_22FCC8464();
    v12 = *(v1 + 16);
    *(v1 + 88) = MEMORY[0x277D84F98];
    *(v1 + 96) = 10;
    *(v1 + 137) = 0;
    v13 = *(v1 + 80);
    if (v13 >= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = *(v1 + 80);
    }

    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v12 >> 62)
      {
        if (sub_22FCC92C4() < 0)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v15 = sub_22FCC92C4();
      }

      else
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15 >= v14)
      {
        v16 = *(v1 + 16);
        if (v13 && (v16 & 0xC000000000000001) != 0)
        {
          sub_22FA3A77C(0, &qword_28147AE88, 0x277CCA898);

          v17 = 0;
          do
          {
            v18 = v17 + 1;
            sub_22FCC93A4();
            v17 = v18;
          }

          while (v14 != v18);
          v16 = *(v1 + 16);
          if (v16 >> 62)
          {
LABEL_22:

            v0 = sub_22FCC94F4();
            v5 = v21;
            v2 = v22;
            if ((v22 & 1) == 0)
            {
LABEL_26:
              sub_22FACABA4(v0, v19, v5, v2, v20);
              v24 = v23;
              goto LABEL_33;
            }

LABEL_27:
            v13 = v19;
            sub_22FCC9724();
            swift_unknownObjectRetain_n();
            v25 = swift_dynamicCastClass();
            if (!v25)
            {
              swift_unknownObjectRelease();
              v25 = MEMORY[0x277D84F90];
            }

            v26 = *(v25 + 16);

            if (!__OFSUB__(v2 >> 1, v5))
            {
              if (v26 == (v2 >> 1) - v5)
              {
                v24 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (v24)
                {
LABEL_34:
                  *(v1 + 104) = v24;
                  v27 = *(v1 + 72);
                  v29 = *(v1 + 56);
                  v28 = *(v1 + 64);
                  v30 = *(v1 + 48);
                  sub_22FCC8444();
                  (*(v29 + 32))(v28, v27, v30);
                  v31 = swift_task_alloc();
                  *(v1 + 112) = v31;
                  *v31 = v1;
                  v31[1] = sub_22FB412C8;
                  v32 = *(v1 + 64);
                  v33 = *(v1 + 32);
                  v34 = *(v1 + 136);

                  return sub_22FB50260(v24, v32, v34, v33);
                }

                v24 = MEMORY[0x277D84F90];
LABEL_33:
                swift_unknownObjectRelease();
                goto LABEL_34;
              }

              goto LABEL_42;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            swift_unknownObjectRelease();
            v19 = v13;
            goto LABEL_26;
          }
        }

        else
        {

          if (v16 >> 62)
          {
            goto LABEL_22;
          }
        }

        v5 = 0;
        v2 = (2 * v14) | 1;
        v0 = v16 & 0xFFFFFFFFFFFFFF8;
        v19 = v0 + 32;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 24);
  v9 = sub_22FA4D238(MEMORY[0x277D84F90]);
  (*(v7 + 8))(v8, v6);

  v10 = *(v1 + 8);

  return v10(v9);
}

uint64_t sub_22FB412C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    v5 = sub_22FB41848;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_22FB41420;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB41420()
{
  v37 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 137);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v4;
  sub_22FB54A74(v1, sub_22FB53630, 0, isUniquelyReferenced_nonNull_native, &v36);

  v8 = v36;
  if ((v3 & 1) == 0 && v5 < v6)
  {
    v9 = *(v0 + 96);
    v10 = v9 + 10;
    v11 = __OFADD__(v9, 10);
    *(v0 + 88) = v36;
    *(v0 + 96) = v10;
    *(v0 + 137) = v11;
    if (v9 > 0x7FFFFFFFFFFFFFF5)
    {
      __break(1u);
    }

    else
    {
      if (*(v0 + 80) >= v10)
      {
        v12 = v9 + 10;
      }

      else
      {
        v12 = *(v0 + 80);
      }

      if (v12 >= v9)
      {
        v13 = *(v0 + 16);
        if (!(v13 >> 62))
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14 < v9)
          {
            goto LABEL_47;
          }

LABEL_20:
          if (v14 < v12)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v2 = *(v0 + 16);
          if (v9 == v12 || (v2 & 0xC000000000000001) == 0)
          {

            if (v2 >> 62)
            {
LABEL_27:

              v2 = sub_22FCC94F4();
              v6 = v21;
              v5 = v22;
              if ((v22 & 1) == 0)
              {
LABEL_31:
                sub_22FACABA4(v2, v19, v6, v5, v20);
                v24 = v23;
                goto LABEL_38;
              }

LABEL_32:
              v1 = v19;
              sub_22FCC9724();
              swift_unknownObjectRetain_n();
              v25 = swift_dynamicCastClass();
              if (!v25)
              {
                swift_unknownObjectRelease();
                v25 = MEMORY[0x277D84F90];
              }

              v26 = *(v25 + 16);

              if (!__OFSUB__(v5 >> 1, v6))
              {
                if (v26 == (v5 >> 1) - v6)
                {
                  v24 = swift_dynamicCastClass();
                  swift_unknownObjectRelease();
                  if (v24)
                  {
LABEL_39:
                    *(v0 + 104) = v24;
                    v27 = *(v0 + 72);
                    v29 = *(v0 + 56);
                    v28 = *(v0 + 64);
                    v30 = *(v0 + 48);
                    sub_22FCC8444();
                    (*(v29 + 32))(v28, v27, v30);
                    v31 = swift_task_alloc();
                    *(v0 + 112) = v31;
                    *v31 = v0;
                    v31[1] = sub_22FB412C8;
                    v32 = *(v0 + 64);
                    v33 = *(v0 + 32);
                    v34 = *(v0 + 136);

                    return sub_22FB50260(v24, v32, v34, v33);
                  }

                  v24 = MEMORY[0x277D84F90];
LABEL_38:
                  swift_unknownObjectRelease();
                  goto LABEL_39;
                }

                goto LABEL_51;
              }

LABEL_50:
              __break(1u);
LABEL_51:
              swift_unknownObjectRelease();
              v19 = v1;
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= v12)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            sub_22FA3A77C(0, &qword_28147AE88, 0x277CCA898);

            v17 = v9;
            do
            {
              v18 = v17 + 1;
              sub_22FCC93A4();
              v17 = v18;
            }

            while (v12 != v18);
            v2 = *(v0 + 16);
            if (v2 >> 62)
            {
              goto LABEL_27;
            }
          }

          v5 = (2 * v12) | 1;
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
          v19 = v2 + 32;
          v6 = v9;
          goto LABEL_32;
        }

        if (sub_22FCC92C4() >= v9)
        {
          v14 = sub_22FCC92C4();
          goto LABEL_20;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_22FCC8484();
  if (v2)
  {

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {

    v35 = *(v0 + 8);

    return v35(v8);
  }
}

uint64_t sub_22FB41848()
{
  (*(v0[7] + 8))(v0[3], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t PromptSuggestionValidator.validateOfflineLLMQU(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_22FCC84E4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB419A0, 0, 0);
}

void sub_22FB419A0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_22FCC8414();
  v1 = [objc_opt_self() promptValidationBatchSize];
  *(v0 + 160) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = v1;
    _os_log_impl(&dword_22FA28000, v2, v3, "Validating %ld prompts in batches of %ld", v6, 0x16u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  else
  {
  }

  if (v1)
  {
    v7 = *(v0 + 96);
    v8 = v7[2];

    sub_22FB53FDC(0, v8, v1, v7, v1);
    v10 = v9;
    *(v0 + 168) = v9;

    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    v11 = *(v10 + 16);
    *(v0 + 176) = v11;
    if (v11)
    {
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0u;
      *(v0 + 184) = MEMORY[0x277D84F98];
      v12 = *(v0 + 104);
      v13 = *(*(v0 + 168) + 32);
      *(v0 + 224) = v13;
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);

      sub_22FCC8414();
      v14 = swift_task_alloc();
      *(v0 + 232) = v14;
      *v14 = v0;
      v14[1] = sub_22FB41DA0;
      v15 = *(v0 + 112);
      v16 = *(v0 + 104);

      sub_22FB42758(v0 + 48, v13, v16, v15);
    }

    else
    {

      v17 = MEMORY[0x277D84F98];

      v18 = sub_22FCC8664();
      v19 = sub_22FCC8F34();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = *(v17 + 16);

        _os_log_impl(&dword_22FA28000, v18, v19, "Validated %ld prompts", v20, 0xCu);
        MEMORY[0x23190A000](v20, -1, -1);
      }

      else
      {
      }

      v21 = *(v0 + 152);
      v22 = *(v0 + 128);
      v23 = *(v0 + 136);
      v24 = *(v0 + 104);
      v25 = *(v0 + 88);
      v26 = *(v0 + 40);
      v27 = *(v0 + 24);
      *v25 = *(v0 + 16);
      *(v25 + 8) = v27;
      *(v25 + 24) = v26;
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      sub_22FCC83F4();
      (*(v23 + 8))(v21, v22);

      v28 = *(v0 + 8);
      v29 = MEMORY[0x277D84F98];

      v28(v29);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22FB41DA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_22FB42360;
  }

  else
  {
    v4 = sub_22FB41EDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB41EDC()
{
  v1 = v0[6];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[9];

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22FA28000, v5, v6, "Batch result for %ld prompts", v9, 0xCu);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[10] = v12;
  sub_22FB54698(v10, sub_22FB52FD4, 0, isUniquelyReferenced_nonNull_native, v0 + 10);
  if (v11)
  {
  }

  v15 = v0[27];

  v46 = v0[10];
  result = sub_22FA681A8(v1);
  if (__OFADD__(v15, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = v0[26];
  v0[3] = v15 + v3;
  v17 = v16 + v2;
  if (__OFADD__(v16, v2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v0[25];
  v0[4] = v17;
  v19 = __OFADD__(v18, v4);
  v20 = v18 + v4;
  if (v19)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v44 = v17;
  v45 = v15 + v3;
  v43 = v20;
  v0[5] = v20;
  v21 = v0[22];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[16];
  v25 = v0[24] + 1;
  __swift_project_boxed_opaque_existential_1(v0[13], *(v0[13] + 24));
  sub_22FCC83F4();
  (*(v23 + 8))(v22, v24);
  if (v25 == v21)
  {

    v26 = sub_22FCC8664();
    v27 = sub_22FCC8F34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v46 + 16);

      _os_log_impl(&dword_22FA28000, v26, v27, "Validated %ld prompts", v28, 0xCu);
      MEMORY[0x23190A000](v28, -1, -1);
    }

    else
    {
    }

    v35 = v0[19];
    v37 = v0[16];
    v36 = v0[17];
    v38 = v0[13];
    v39 = v0[11];
    v40 = v0[5];
    v41 = *(v0 + 3);
    *v39 = v0[2];
    *(v39 + 8) = v41;
    *(v39 + 24) = v40;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_22FCC83F4();
    (*(v36 + 8))(v35, v37);

    v42 = v0[1];

    return v42(v46);
  }

  else
  {
    v29 = v0[24] + 1;
    v0[26] = v44;
    v0[27] = v45;
    v0[24] = v29;
    v0[25] = v43;
    v0[23] = v46;
    v30 = v0[13];
    v31 = *(v0[21] + 8 * v29 + 32);
    v0[28] = v31;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);

    sub_22FCC8414();
    v32 = swift_task_alloc();
    v0[29] = v32;
    *v32 = v0;
    v32[1] = sub_22FB41DA0;
    v33 = v0[14];
    v34 = v0[13];

    return sub_22FB42758((v0 + 6), v31, v34, v33);
  }
}

uint64_t sub_22FB42360()
{
  v1 = *(v0 + 248);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Validation failed for chunk: %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  v35 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = *(v0 + 192) + 1;
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_22FCC83F4();
  (*(v14 + 8))(v13, v15);
  if (v16 == v11)
  {

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v12 + 16);

      _os_log_impl(&dword_22FA28000, v17, v18, "Validated %ld prompts", v19, 0xCu);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {
    }

    v27 = *(v0 + 152);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = *(v0 + 104);
    v31 = *(v0 + 88);
    v32 = *(v0 + 40);
    v33 = *(v0 + 24);
    *v31 = *(v0 + 16);
    *(v31 + 8) = v33;
    *(v31 + 24) = v32;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_22FCC83F4();
    (*(v28 + 8))(v27, v29);

    v34 = *(v0 + 8);

    return v34(v12);
  }

  else
  {
    v20 = *(v0 + 192) + 1;
    *(v0 + 208) = v36;
    *(v0 + 216) = v37;
    *(v0 + 192) = v20;
    *(v0 + 200) = v35;
    *(v0 + 184) = v12;
    v21 = *(v0 + 104);
    v22 = *(*(v0 + 168) + 8 * v20 + 32);
    *(v0 + 224) = v22;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);

    sub_22FCC8414();
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    v23[1] = sub_22FB41DA0;
    v24 = *(v0 + 112);
    v25 = *(v0 + 104);

    return sub_22FB42758(v0 + 48, v22, v25, v24);
  }
}

uint64_t sub_22FB42758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for TemplatedPrompt(0);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v7 = sub_22FCC71A4();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  sub_22FCC8494();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v8 = sub_22FCC84E4();
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB42934, 0, 0);
}

uint64_t sub_22FB42934()
{
  v26 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_22FCC8414();
  *(v0 + 328) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 184);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "BatchValidateOfflineLLMQU for %ld prompts", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  v6 = 0;
  v7 = *(v0 + 224);
  v8 = *(v0 + 184);
  *(v0 + 144) = MEMORY[0x277D84F90];
  *(v0 + 168) = 0;
  v9 = *(v8 + 16);
  *(v0 + 336) = v9;
  *(v0 + 152) = v9;
  v25 = MEMORY[0x277D84F98];
  while (v9 != v6)
  {
    v10 = v6 + 1;
    sub_22FB43EB4(&v25, *(v0 + 184) + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, *(v0 + 208));
    v6 = v10;
  }

  v11 = v25;
  *(v0 + 344) = v25;
  *(v0 + 160) = *(v11 + 16);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v11 + 16);

    _os_log_impl(&dword_22FA28000, v12, v13, "Requesting query annotations for %ld prompts", v14, 0xCu);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 200);
  v16 = (*(v0 + 208) + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  *(swift_allocObject() + 16) = v15;
  v19 = v15;
  sub_22FCC84B4();
  v24 = (*(v18 + 16) + **(v18 + 16));
  v20 = swift_task_alloc();
  *(v0 + 352) = v20;
  *v20 = v0;
  v20[1] = sub_22FB42D10;
  v21 = *(v0 + 296);
  v22 = *(v0 + 192);

  return v24(v11, v22, v21, v17, v18);
}

uint64_t sub_22FB42D10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {

    v4 = sub_22FB43C8C;
  }

  else
  {
    v4 = sub_22FB42E38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FB42E38()
{
  v64 = v0;
  v1 = v0;

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[45];
  if (v4)
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v63[0] = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v5 + 16);

    *(v7 + 12) = 2080;
    v9 = MEMORY[0x2319080B0](v5, v6);
    v11 = sub_22FA2F600(v9, v10, v63);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_22FA28000, v2, v3, "Received query annotations for %ld prompts %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[45];
  v61 = *(v12 + 16);
  if (v61)
  {
    v13 = 0;
    v14 = v1[33];
    v59 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v60 = v14;
    v58 = (v14 + 8);
    v55 = (v14 + 40);
    v56 = (v14 + 32);
    v15 = MEMORY[0x277D84F98];
    v62 = v1;
    v57 = v12;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v18 = v1[34];
      v17 = v1[35];
      v19 = v1[32];
      v20 = *(v60 + 72);
      v21 = *(v60 + 16);
      v21(v17, v59 + v20 * v13, v19);
      v22 = sub_22FCC7184();
      v24 = v23;
      v21(v18, v17, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v15;
      v26 = sub_22FA2DB54(v22, v24);
      v28 = v15[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_38;
      }

      v32 = v27;
      if (v15[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v26;
          sub_22FA6FD70();
          v26 = v40;
        }
      }

      else
      {
        sub_22FA6B564(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_22FA2DB54(v22, v24);
        if ((v32 & 1) != (v33 & 1))
        {

          sub_22FCC9774();
          return;
        }
      }

      v35 = v62[34];
      v34 = v62[35];
      v36 = v62[32];
      if (v32)
      {
        v16 = v26;

        v15 = v63[0];
        (*v55)(*(v63[0] + 56) + v16 * v20, v35, v36);
        (*v58)(v34, v36);
      }

      else
      {
        v15 = v63[0];
        *(v63[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v37 = (v15[6] + 16 * v26);
        *v37 = v22;
        v37[1] = v24;
        (*v56)(v15[7] + v26 * v20, v35, v36);
        (*v58)(v34, v36);
        v38 = v15[2];
        v30 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v30)
        {
          goto LABEL_39;
        }

        v15[2] = v39;
      }

      ++v13;
      v1 = v62;
      v12 = v57;
      if (v61 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x277D84F98];
LABEL_19:
  v41 = MEMORY[0x277D84F90];
  v63[0] = MEMORY[0x277D84F90];
  if (!v1[42])
  {
    goto LABEL_31;
  }

  v42 = v1[46];
  v43 = *(v1[28] + 80);
  sub_22FB443EC(v63, v1[23] + ((v43 + 32) & ~v43), v15, v1[26]);
  if (!v42)
  {
    for (i = 1; i != v1[42]; i = v45)
    {
      v45 = i + 1;
      sub_22FB443EC(v63, v1[23] + ((*(v1[28] + 80) + 32) & ~*(v1[28] + 80)) + *(v1[28] + 72) * i, v15, v1[26]);
    }

    v41 = v63[0];
LABEL_31:

    v1[47] = v41;
    v46 = *(v12 + 16);

    v1[21] = v46;

    v47 = sub_22FCC8664();
    v48 = sub_22FCC8F34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = *(v41 + 16);

      _os_log_impl(&dword_22FA28000, v47, v48, "Validating search suggestions for %ld prompts", v49, 0xCu);
      MEMORY[0x23190A000](v49, -1, -1);
    }

    else
    {
    }

    v50 = v1[25];
    *(swift_allocObject() + 16) = v50;
    v51 = v50;
    sub_22FCC84B4();
    v52 = swift_task_alloc();
    v1[48] = v52;
    *v52 = v1;
    v52[1] = sub_22FB43484;
    v53 = v1[36];
    v54 = v1[24];

    sub_22FB44850((v1 + 8), v41, v54, v53);
    return;
  }
}

uint64_t sub_22FB43484(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {

    v4 = sub_22FB43DA0;
  }

  else
  {
    v4 = sub_22FB435B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB435B0()
{
  v75 = v0;
  sub_22FA2D328((v0 + 8), (v0 + 13));
  v1 = sub_22FAC2044(0, 1, 1, MEMORY[0x277D84F90]);
  v0[18] = v1;
  v2 = v0 + 18;
  v4 = v1[2];
  v3 = v1[3];
  if (v4 >= v3 >> 1)
  {
    v1 = sub_22FAC2044((v3 > 1), v4 + 1, 1, v1);
    *v2 = v1;
  }

  v5 = v0[16];
  v6 = v0[17];
  v7 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 13), v5);
  v8 = *(v5 - 8);
  v68 = v0;
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v5);
  sub_22FA4CABC(v4, v9, v0 + 18, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  v10 = v0;

  v0[18] = v1;

  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[49];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v14 + 16);

    _os_log_impl(&dword_22FA28000, v11, v12, "Search validation results for %ld prompts", v15, 0xCu);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  else
  {
  }

  if (v0[42])
  {
    v16 = 0;
    v64 = v2 - 16;
    v17 = v10[28];
    v62 = v10[27];
    v18 = v10[23] + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v65 = *(v17 + 72);
    v19 = v10[50];
    v66 = MEMORY[0x277D84F98];
    do
    {
      v30 = v10[49];
      v31 = v10[31];
      sub_22FB26F90(v18, v31);
      *(swift_task_alloc() + 16) = v31;
      sub_22FA90DC0(sub_22FB55EFC, v30, &v69);
      v67 = v19;

      v32 = v70;
      if (v70)
      {
        v20 = v10[31];
        v22 = v72;
        v21 = v73;
        v23 = v71;
        v24 = v69;
        v25 = v74;
        v68[2] = v69;
        v68[3] = v32;
        v68[4] = v23;
        v68[5] = v22;
        v68[6] = v21;
        *(v68 + 56) = v25 & 1;

        v26 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v66;
        sub_22FB255C4(v64, v20, isUniquelyReferenced_nonNull_native);
        v28 = v22;
        v10 = v68;
        sub_22FB55F1C(v24, v32, v23, v28, v21);
        v66 = v69;
      }

      else
      {
        v33 = v10[31];
        v34 = v10[29];
        sub_22FB26F90(v33, v10[30]);
        sub_22FB26F90(v33, v34);
        v35 = sub_22FCC8664();
        v36 = sub_22FCC8F14();
        v37 = os_log_type_enabled(v35, v36);
        v39 = v10[29];
        v38 = v10[30];
        if (v37)
        {
          v40 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v69 = v63;
          *v40 = 136315395;
          v41 = (v38 + *(v62 + 20));
          v42 = *v41;
          v43 = v41[1];

          sub_22FA72A34(v38);
          v44 = sub_22FA2F600(v42, v43, &v69);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2081;
          v45 = (v39 + *(v62 + 24));
          v46 = *v45;
          v47 = v45[1];

          sub_22FA72A34(v39);
          v48 = sub_22FA2F600(v46, v47, &v69);

          *(v40 + 14) = v48;
          _os_log_impl(&dword_22FA28000, v35, v36, "No validation result for %s - %{private}s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v63, -1, -1);
          v49 = v40;
          v10 = v68;
          MEMORY[0x23190A000](v49, -1, -1);
        }

        else
        {

          sub_22FA72A34(v39);
          sub_22FA72A34(v38);
        }
      }

      ++v16;
      v29 = v10[42];
      sub_22FA72A34(v10[31]);
      v18 += v65;
      v19 = v67;
    }

    while (v16 != v29);
  }

  else
  {
    v66 = MEMORY[0x277D84F98];
  }

  v50 = sub_22FCC8664();
  v51 = sub_22FCC8F34();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = *(v66 + 16);

    _os_log_impl(&dword_22FA28000, v50, v51, "Returning validation results for %ld prompts", v52, 0xCu);
    MEMORY[0x23190A000](v52, -1, -1);

    __swift_destroy_boxed_opaque_existential_0(v10 + 8);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v10 + 8);
  }

  v54 = v10[39];
  v53 = v10[40];
  v55 = v10[38];
  v56 = v10[24];
  v58 = v10[21];
  v57 = v10[22];
  v59 = *(v10 + 19);
  *v57 = v10[18];
  *(v57 + 8) = v59;
  *(v57 + 24) = v58;
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_22FCC83F4();
  (*(v54 + 8))(v53, v55);

  v60 = v10[1];

  return v60(v66);
}

uint64_t sub_22FB43C8C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_22FCC83F4();
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB43DA0()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_22FCC83F4();
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

void sub_22FB43EB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v5 = type metadata accessor for TemplatedPrompt(0);
  MEMORY[0x28223BE20](v5, v6);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v69 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v69 - v18;
  v20 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;
  sub_22FB26F90(a2, &v69 - v18);
  sub_22FB26F90(a2, v15);
  v76 = a3;
  v71 = v20;
  v21 = sub_22FCC8664();
  v22 = sub_22FCC8F34();
  v23 = os_log_type_enabled(v21, v22);
  v74 = v5;
  v72 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v77 = v25;
    *v24 = 136315395;
    v26 = &v19[*(v5 + 20)];
    v28 = *v26;
    v27 = v26[1];

    sub_22FA72A34(v19);
    v29 = v28;
    v5 = v74;
    v30 = sub_22FA2F600(v29, v27, &v77);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2081;
    v31 = &v15[*(v5 + 24)];
    v32 = *v31;
    v33 = v31[1];

    sub_22FA72A34(v15);
    v34 = sub_22FA2F600(v32, v33, &v77);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_22FA28000, v21, v22, "Processing QU for prompt %s - %{private}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v25, -1, -1);
    MEMORY[0x23190A000](v24, -1, -1);
  }

  else
  {

    sub_22FA72A34(v15);
    sub_22FA72A34(v19);
  }

  v35 = (a2 + *(v5 + 24));
  v37 = *v35;
  v36 = v35[1];
  v38 = *(v76 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor + 24);
  v39 = *(v76 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor + 32);
  __swift_project_boxed_opaque_existential_1((v76 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor), v38);
  v40 = *(v39 + 8);

  v41 = v75;
  v42 = v40(a2, v38, v39);
  v44 = v41;
  if (v41)
  {

    v45 = v72;
    sub_22FB26F90(a2, v72);
    v46 = v73;
    sub_22FB26F90(a2, v73);
    v47 = v41;
    v48 = sub_22FCC8664();
    v49 = sub_22FCC8F14();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = v76;
      *v50 = 136315651;
      v52 = v74;
      v53 = (v45 + *(v74 + 20));
      v54 = v45;
      v55 = *v53;
      v56 = v53[1];

      sub_22FA72A34(v54);
      v57 = sub_22FA2F600(v55, v56, &v77);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2081;
      v58 = (v46 + *(v52 + 24));
      v59 = *v58;
      v60 = v58[1];

      sub_22FA72A34(v46);
      v61 = sub_22FA2F600(v59, v60, &v77);

      *(v50 + 14) = v61;
      *(v50 + 22) = 2112;
      v62 = v44;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 24) = v63;
      *v51 = v63;
      _os_log_impl(&dword_22FA28000, v48, v49, "Missing filled in qu result for prompt %s - %{private}s, : %@", v50, 0x20u);
      sub_22FA2B420(v51, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v51, -1, -1);
      v64 = v76;
      swift_arrayDestroy();
      MEMORY[0x23190A000](v64, -1, -1);
      MEMORY[0x23190A000](v50, -1, -1);
    }

    else
    {

      sub_22FA72A34(v46);
      sub_22FA72A34(v45);
    }
  }

  else
  {
    v65 = v70;
    v66 = v42;
    v67 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v65;
    sub_22FB25E60(v66, v67, v37, v36, isUniquelyReferenced_nonNull_native);

    *v65 = v77;
  }
}

void sub_22FB443EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a1;
  v6 = type metadata accessor for TemplatedPrompt(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8138, &qword_22FCD4A60);
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v46 = &v45 - v16;
  v17 = sub_22FCC71A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16) && (v22 = sub_22FA2DB54(*(a2 + *(v6 + 24)), *(a2 + *(v6 + 24) + 8)), (v23 & 1) != 0))
  {
    v24 = v18;
    v25 = *(v18 + 16);
    v25(v21, *(a3 + 56) + *(v18 + 72) * v22, v17);
    v26 = *(v14 + 48);
    v27 = v46;
    sub_22FB26F90(a2, v46);
    v25((v27 + v26), v21, v17);
    v28 = v48;
    v29 = *v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22FAC2930(0, v29[2] + 1, 1, v29);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_22FAC2930((v30 > 1), v31 + 1, 1, v29);
    }

    (*(v24 + 8))(v21, v17);
    v29[2] = v31 + 1;
    sub_22FA4F224(v27, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, &qword_27DAD8138, &qword_22FCD4A60);
    *v28 = v29;
  }

  else
  {
    sub_22FB26F90(a2, v13);
    sub_22FB26F90(a2, v9);
    v32 = sub_22FCC8664();
    v33 = sub_22FCC8F14();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315395;
      v36 = v6;
      v37 = &v13[*(v6 + 20)];
      v38 = *v37;
      v39 = v37[1];

      sub_22FA72A34(v13);
      v40 = sub_22FA2F600(v38, v39, &v50);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2081;
      v41 = &v9[*(v36 + 24)];
      v42 = *v41;
      v43 = v41[1];

      sub_22FA72A34(v9);
      v44 = sub_22FA2F600(v42, v43, &v50);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_22FA28000, v32, v33, "Missing query annotation for prompt %s - %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v35, -1, -1);
      MEMORY[0x23190A000](v34, -1, -1);
    }

    else
    {

      sub_22FA72A34(v9);
      sub_22FA72A34(v13);
    }
  }
}

uint64_t sub_22FB44850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_22FCC7824();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_22FCC7E24();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_22FCC6EF4();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_22FCC7B14();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v10 = sub_22FCC7854();
  v5[28] = v10;
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  v11 = sub_22FCC6EE4();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8308, &qword_22FCD59B0);
  v5[34] = swift_task_alloc();
  v12 = sub_22FCC7CC4();
  v5[35] = v12;
  v5[36] = *(v12 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v13 = sub_22FCC8494();
  v5[39] = v13;
  v5[40] = *(v13 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8138, &qword_22FCD4A60);
  v5[46] = v14;
  v5[47] = *(v14 - 8);
  v5[48] = swift_task_alloc();
  v15 = sub_22FCC71A4();
  v5[49] = v15;
  v5[50] = *(v15 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = type metadata accessor for TemplatedPrompt(0);
  v5[61] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8840, &qword_22FCD8140);
  v5[62] = v16;
  v5[63] = *(v16 - 8);
  v5[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8848, &qword_22FCD8148);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v17 = sub_22FCC84E4();
  v5[67] = v17;
  v5[68] = *(v17 - 8);
  v5[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB44E9C, 0, 0);
}

uint64_t sub_22FB44E9C()
{
  v83 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  sub_22FCC8414();
  *(v0 + 560) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 64);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "[Safety] QU validation of prompts:%ld", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 568) = *(*(v0 + 64) + 16);
  sub_22FCC8464();
  v6 = 0;
  *(v0 + 576) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_queryGenerator;
  *(v0 + 584) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetManager;
  *(v0 + 592) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController;
  v7 = MEMORY[0x277D3BF78];
  *(v0 + 600) = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentExpansionProcessor;
  v8 = *v7;
  v9 = MEMORY[0x277D3BF70];
  v10 = MEMORY[0x277D3C308];
  *(v0 + 936) = v8;
  *(v0 + 940) = *v9;
  *(v0 + 944) = *v10;
  *(v0 + 608) = 0;
  *(v0 + 624) = 0;
  *(v0 + 616) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v0 + 664) = MEMORY[0x277D84F90];
  *(v0 + 656) = 0;
  *(v0 + 648) = 0;
  *(v0 + 640) = 0;
  *(v0 + 632) = 0;
  if (*(v0 + 568))
  {
    v13 = *(v0 + 520);
    v14 = *(v0 + 512);
    v15 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80));
    v16 = *(*(v0 + 496) + 48);
    *v14 = 0;
    sub_22FA4FAA4(v15, v14 + v16, &qword_27DAD8138, &qword_22FCD4A60);
    sub_22FA4F224(v14, v13, &qword_27DAD8840, &qword_22FCD8140);
    v12 = 0;
    v6 = 1;
  }

  else
  {
    v12 = 1;
  }

  *(v0 + 672) = v6;
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 496);
  v20 = *(v0 + 504);
  (*(v20 + 56))(v18, v12, 1, v19);
  sub_22FA4F224(v18, v17, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_22FCC8484();

    v61 = sub_22FCC8664();
    v62 = sub_22FCC8F34();
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = *(v11 + 16);

      _os_log_impl(&dword_22FA28000, v61, v62, "Safety Received results for prompts:%ld", v64, 0xCu);
      MEMORY[0x23190A000](v64, -1, -1);
    }

    else
    {
    }

    v65 = *(v0 + 608);
    v66 = *(v0 + 568);
    v67 = *(v0 + 552);
    v68 = *(v0 + 544);
    v74 = *(v0 + 616);
    v75 = *(v0 + 536);
    v69 = *(v0 + 72);
    v70 = *(v0 + 56);

    v70[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
    v70[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
    v71 = swift_allocObject();
    *v70 = v71;
    v71[2] = MEMORY[0x277D84F90];
    v71[3] = v66;
    v71[4] = v65;
    v71[5] = v74;
    v71[6] = 0;
    v71[7] = 0;
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    sub_22FCC83F4();
    (*(v68 + 8))(v67, v75);

    v72 = *(v0 + 8);

    return v72(v11);
  }

  else
  {
    v21 = *(v0 + 488);
    v22 = *(v0 + 472);
    v76 = *(v0 + 480);
    v23 = *(v0 + 392);
    v24 = *(v0 + 400);
    v25 = *(v0 + 384);
    v26 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v27 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v26, v25);
    v28 = *(v24 + 32);
    v28(v25 + v27, v26 + v27, v23);
    sub_22FB5570C(v25, v21);
    v28(v22, v25 + v27, v23);
    v29 = (v21 + *(v76 + 20));
    v30 = *v29;
    *(v0 + 680) = *v29;
    v31 = v29[1];
    *(v0 + 688) = v31;

    sub_22FCC8434();
    sub_22FCC8464();
    v33 = *(v0 + 464);
    v32 = *(v0 + 472);
    v34 = *(v0 + 392);
    v35 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v36 = *(v35 + 16);
    *(v0 + 696) = v36;
    *(v0 + 704) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v33, v32, v34);

    v37 = sub_22FCC8664();
    v38 = sub_22FCC8F34();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 464);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    if (v39)
    {
      v43 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82[0] = v80;
      *v43 = 136315395;
      *(v43 + 4) = sub_22FA2F600(v30, v31, v82);
      *(v43 + 12) = 2081;
      v44 = sub_22FCC7154();
      v46 = v45;
      v47 = *(v41 + 8);
      v47(v40, v42);
      v48 = sub_22FA2F600(v44, v46, v82);

      *(v43 + 14) = v48;
      _os_log_impl(&dword_22FA28000, v37, v38, "[Safety] Validating prompt with id %s with annotation %{private}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v80, -1, -1);
      MEMORY[0x23190A000](v43, -1, -1);
    }

    else
    {

      v47 = *(v41 + 8);
      v47(v40, v42);
    }

    *(v0 + 712) = v47;
    v77 = *(v0 + 336);
    v78 = *(v0 + 352);
    v50 = *(v0 + 312);
    v49 = *(v0 + 320);
    v51 = *(v0 + 272);
    v52 = sub_22FCC7184();
    v79 = v53;
    v81 = v52;
    *(v0 + 720) = v53;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v54 = sub_22FCC7104();
    *(v0 + 728) = v54;

    v55 = sub_22FCC70C4();
    (*(*(v55 - 8) + 56))(v51, 1, 1, v55);
    v56 = *(v49 + 32);
    *(v0 + 736) = v56;
    *(v0 + 744) = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v56(v77, v78, v50);
    v57 = swift_task_alloc();
    *(v0 + 752) = v57;
    *v57 = v0;
    v57[1] = sub_22FB45E10;
    v58 = *(v0 + 304);
    v59 = *(v0 + 272);
    v60 = *(v0 + 72);
    v88 = *(v0 + 336);
    v89 = 0;
    v87 = v60;
    v86 = 1;
    v85 = 0;

    return MEMORY[0x28219BDA0](v58, v81, v79, v54, 0, 0, 0, v59);
  }
}

uint64_t sub_22FB45E10()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  sub_22FA2B420(*(v2 + 272), &unk_27DAD8308, &qword_22FCD59B0);

  if (v0)
  {

    v3 = sub_22FB4B268;
  }

  else
  {
    v3 = sub_22FB45FB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FB45FB8()
{
  v355 = v0;
  v1 = v0[43].i64[0];
  v2 = v0[42].i64[1];
  v3 = sub_22FCC7C94();
  v0[48].i64[0] = v3;
  v328 = sub_22FCC7CB4();
  v0[48].i64[1] = v328;
  v4 = _s13PhotoAnalysis25PromptSuggestionValidatorC25allowAmbiguousPersonToken2inSbSS_tFZ_0(v2, v1);
  v5 = *(v3 + 16);
  v353 = v0;
  v334 = v3;
  if (v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = *(v0[16].i64[0] + 80);
    v9 = v3 + ((v8 + 32) & ~v8);
    v319 = v4;
    v314 = v9;
    v316 = *(v3 + 16);
    while (v7 < *(v3 + 16))
    {
      (*(v0[16].i64[0] + 16))(v0[16].i64[1], v9 + *(v0[16].i64[0] + 72) * v7, v0[15].i64[1]);
      v10 = sub_22FCC6ED4();
      v11 = v0[16].i64[1];
      if (v10)
      {
        if (v6)
        {
          v322 = v7;
          v12 = sub_22FCC6EA4();
          v13 = 0;
          v338 = *(v12 + 16);
          v345 = v12;
          while (v338 != v13)
          {
            if (v13 >= *(v345 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            v14 = v353[14].i64[1];
            v11 = v353[15].i64[0];
            v16 = v353[13].i64[1];
            v15 = v353[14].i64[0];
            v17 = v353[12].i64[1];
            v18 = v353[13].i64[0];
            v3 = v353[12].i64[0];
            (*(v14 + 16))(v11, v345 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v13++, v15);
            sub_22FCC7B04();
            sub_22FCC7834();
            v19 = sub_22FCC7AE4();
            v20 = *(v17 + 8);
            v20(v18, v3);
            v20(v16, v3);
            (*(v14 + 8))(v11, v15);
            if (v19)
            {
              v0 = v353;
              (*(v353[16].i64[0] + 8))(v353[16].i64[1], v353[15].i64[1]);

              v3 = v334;
              v6 = v319;
              v9 = v314;
              v5 = v316;
              v7 = v322;
              goto LABEL_12;
            }
          }

          v0 = v353;
          (*(v353[16].i64[0] + 8))(v353[16].i64[1], v353[15].i64[1]);
        }

        else
        {
          (*(v0[16].i64[0] + 8))(v0[16].i64[1], v0[15].i64[1]);
        }

        v35 = v0[43].i64[1];
        v36 = v0[29].i64[1];
        v37 = v0[26].i64[0];
        v38 = v0[24].i64[1];
        v40 = v0[18].i64[1];
        v39 = v0[19].i64[0];
        v41 = v0[17].i64[1];
        v42 = v0[18].i64[0];

        v35(v37, v36, v38);
        (*(v42 + 16))(v40, v39, v41);
        v43 = sub_22FCC8664();
        v44 = sub_22FCC8F34();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v0[44].i64[1];
        v47 = v0[26].i64[0];
        v48 = v0[24].i64[1];
        v49 = v0[18].i64[0];
        v50 = v0[18].i64[1];
        v51 = v0[17].i64[1];
        if (v45)
        {
          v52 = swift_slowAlloc();
          v339 = swift_slowAlloc();
          v354[0] = v339;
          *v52 = 136380931;
          v324 = v44;
          v53 = sub_22FCC7184();
          v335 = v43;
          v55 = v54;
          v46(v47, v48);
          v56 = sub_22FA2F600(v53, v55, v354);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2081;
          sub_22FB55F7C(&qword_27DAD8850, MEMORY[0x277D3C5A0], MEMORY[0x277D3C5A8]);
          v57 = sub_22FCC96C4();
          v59 = v58;
          v345 = *(v49 + 8);
          (v345)(v50, v51);
          v60 = sub_22FA2F600(v57, v59, v354);

          *(v52 + 14) = v60;
          _os_log_impl(&dword_22FA28000, v335, v324, "[Safety] Found ambiguous tokens for prompt %{private}s. QU Result: %{private}s", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v339, -1, -1);
          MEMORY[0x23190A000](v52, -1, -1);
        }

        else
        {

          v345 = *(v49 + 8);
          (v345)(v50, v51);
          v46(v47, v48);
        }

        v0 = v328;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v353[41].i64[1];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_21:
          v63 = *(v6 + 16);
          v62 = *(v6 + 24);
          v340 = v0;
          if (v63 >= v62 >> 1)
          {
            v6 = sub_22FAC20B8((v62 > 1), v63 + 1, 1, v6);
          }

          v3 = v353;
          v317 = v353[44].i64[1];
          v320 = v353[42].i64[1];
          v325 = v353[43].u64[0];
          v329 = v353[38].i64[0];
          v64 = v353[29].i64[1];
          v65 = v353[24].i64[1];
          v66 = v353[19].i64[0];
          v67 = v353[17].i64[1];

          (v345)(v66, v67);
          v317(v64, v65);
          *(v6 + 16) = v63 + 1;
          v68 = MEMORY[0x277D84F90];
          v69 = v6 + 48 * v63;
          *(v69 + 32) = v320;
          *(v69 + 40) = v325;
          *(v69 + 48) = v0;
          *(v69 + 56) = v68;
          *(v69 + 64) = v68;
          *(v69 + 72) = 0;
          if (!__OFADD__(v329, 1))
          {
            v70 = v353[22].i64[1];
            v71 = v353[21].i64[1];
            v73 = v353[19].i64[1];
            v72 = v353[20].i64[0];
            sub_22FA72A34(v353[30].i64[1]);
            v74 = *(v72 + 8);
            v74(v71, v73);
            v75 = (v74)(v70, v73);
            v82 = v353[47].i64[1];
            v83 = v353[42].u64[0];
            v84 = v353[41].u64[0];
            v85 = v353[40];
            v86 = v353[39].u64[1];
            v353[38].i64[0] = v329 + 1;
            goto LABEL_70;
          }

          __break(1u);
LABEL_67:
          v6 = sub_22FAC20B8(0, *(v6 + 16) + 1, 1, v6);
LABEL_60:
          v210 = *(v6 + 16);
          v209 = *(v6 + 24);
          v349 = v0;
          if (v210 >= v209 >> 1)
          {
            v6 = sub_22FAC20B8((v209 > 1), v210 + 1, 1, v6);
          }

          v211 = *(v3 + 776);
          v321 = *(v3 + 688);
          v315 = *(v3 + 712);
          v318 = *(v3 + 680);
          v327 = *(v3 + 656);
          v330 = *(v3 + 768);
          v212 = *(v3 + 400);
          v312 = *(v3 + 392);
          v313 = *(v3 + 472);
          v311 = *(v3 + 304);
          v214 = *(v3 + 280);
          v213 = *(v3 + 288);
          v215 = *(v3 + 184);
          v217 = *(v3 + 160);
          v216 = *(v3 + 168);

          v82 = (v212 + 8);
          (*(v216 + 8))(v215, v217);
          (*(v213 + 8))(v311, v214);
          v75 = v315(v313, v312);
          *(v6 + 16) = v210 + 1;
          v218 = v6 + 48 * v210;
          *(v218 + 32) = v318;
          *(v218 + 40) = v321;
          *(v218 + 48) = v211;
          *(v218 + 56) = v349;
          *(v218 + 64) = v330;
          v84 = v340;
          *(v218 + 72) = v340;
          v83 = v327;
          v86 = v327 + 1;
          if (!__OFADD__(v327, 1))
          {
            v219 = *(v3 + 360);
            v221 = *(v3 + 312);
            v220 = *(v3 + 320);
            sub_22FA72A34(*(v3 + 488));

            v75 = (*(v220 + 8))(v219, v221);
            v85 = *(v3 + 640);
            v84 = v327 + 1;
            goto LABEL_82;
          }

          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_65:
        v6 = sub_22FAC20B8(0, *(v6 + 16) + 1, 1, v6);
        goto LABEL_21;
      }

      (*(v0[16].i64[0] + 8))(v0[16].i64[1], v0[15].i64[1]);
LABEL_12:
      if (++v7 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_13:
  v21 = v0[36].i64[1];
  v22 = v0[5].i64[1];
  v0[49].i64[0] = sub_22FCC7D14();
  v23 = sub_22FCC7CA4();
  v0[49].i64[1] = *(v22 + v21);

  sub_22FAA99B0(v24);

  sub_22FCC6F24();

  v323 = v23;
  v25 = *(v23 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8858, &unk_22FCD8150);
  v26 = sub_22FCC6F04();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = v0[58].u32[3];
  if (v25 >> 3 < 0x271)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22FCD1800;
    (*(v27 + 104))(v31 + v29, v30, v26);
    v32 = sub_22FCC8664();
    v33 = sub_22FCC8F34();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_29;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = 5000;
    _os_log_impl(&dword_22FA28000, v32, v33, "Less than %ld retrieved assets, good with safe mode", v34, 0xCu);
    goto LABEL_27;
  }

  v87 = v0[58].u32[2];
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_22FCD17F0;
  v346 = v88;
  v89 = v88 + v29;
  v90 = *(v27 + 104);
  v90(v88 + v29, v87, v26);
  v90(v89 + v28, v30, v26);
  v32 = sub_22FCC8664();
  v91 = sub_22FCC8F34();
  if (os_log_type_enabled(v32, v91))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = 5000;
    _os_log_impl(&dword_22FA28000, v32, v91, "More than %ld retrieved assets, switching to extended safe mode", v34, 0xCu);
    v0 = v353;
    v31 = v346;
LABEL_27:
    MEMORY[0x23190A000](v34, -1, -1);
    goto LABEL_29;
  }

  v0 = v353;
  v31 = v346;
LABEL_29:
  v0[50].i64[0] = v31;
  v92 = v0[43].i64[1];
  v93 = v0[29].i64[1];
  v94 = v0[28].i64[1];
  v95 = v0[24].i64[1];

  v92(v94, v93, v95);

  v96 = sub_22FCC8664();
  v97 = sub_22FCC8F34();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v0[44].i64[1];
  v100 = v0[28].i64[1];
  v101 = v0[24].i64[1];
  if (v98)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v354[0] = v103;
    *v102 = 136380931;
    v104 = sub_22FCC7184();
    v106 = v105;
    v99(v100, v101);
    v107 = sub_22FA2F600(v104, v106, v354);

    *(v102 + 4) = v107;
    *(v102 + 12) = 2048;
    v108 = *(v323 + 16);

    *(v102 + 14) = v108;

    _os_log_impl(&dword_22FA28000, v96, v97, "Initial retrieval for prompt %{private}s :%ld", v102, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x23190A000](v103, -1, -1);
    MEMORY[0x23190A000](v102, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v99(v100, v101);
  }

  v82 = v353[47].i64[1];
  v109 = sub_22FCC6F14();
  v353[50].i64[1] = v109;
  if (v82)
  {
    v341 = v353[21].i64[1];
    v110 = v353[20].i64[0];
    v326 = v353[19].u64[1];
    v111 = v353[19].i64[0];
    v113 = v353[17].i64[1];
    v112 = v353[18].i64[0];
    v114 = v353[11].i64[1];
    v115 = v353[10].i64[1];
    v116 = v353[10].i64[0];

    swift_bridgeObjectRelease_n();

    v117 = v114;
    v3 = v353;
    (*(v115 + 8))(v117, v116);
    (*(v112 + 8))(v111, v113);
    (*(v110 + 8))(v341, v326);
    while (1)
    {
      v246 = *(v3 + 648);
      v75 = (*(*(v3 + 320) + 8))(*(v3 + 360), *(v3 + 312));
      v343 = v246 + 1;
      if (__OFADD__(v246, 1))
      {
        break;
      }

      (*(*(v3 + 400) + 16))(*(v3 + 408), *(v3 + 472), *(v3 + 392));
      v247 = v82;
      v248 = sub_22FCC8664();
      v249 = sub_22FCC8F14();

      v250 = os_log_type_enabled(v248, v249);
      v351 = *(v3 + 472);
      v252 = *(v3 + 400);
      v251 = *(v3 + 408);
      v253 = *(v3 + 392);
      if (v250)
      {
        v254 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        v336 = swift_slowAlloc();
        v354[0] = v336;
        *v254 = 136380931;
        sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
        v255 = sub_22FCC96C4();
        v257 = v256;
        v258 = *(v252 + 8);
        v258(v251, v253);
        v259 = sub_22FA2F600(v255, v257, v354);
        v3 = v353;

        *(v254 + 4) = v259;
        *(v254 + 12) = 2112;
        v260 = v82;
        v261 = _swift_stdlib_bridgeErrorToNSError();
        *(v254 + 14) = v261;
        *v332 = v261;
        _os_log_impl(&dword_22FA28000, v248, v249, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v254, 0x16u);
        sub_22FA2B420(v332, &unk_27DAD7B10, &unk_22FCD21C0);
        MEMORY[0x23190A000](v332, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v336);
        MEMORY[0x23190A000](v336, -1, -1);
        MEMORY[0x23190A000](v254, -1, -1);
      }

      else
      {

        v258 = *(v252 + 8);
        v258(v251, v253);
      }

      v258(v351, v253);
      v75 = sub_22FA72A34(*(v3 + 488));
      v6 = *(v3 + 664);
      v84 = *(v3 + 656);
      v86 = *(v3 + 632);
      v85 = vdupq_n_s64(v343);
LABEL_82:
      v82 = 0;
      v83 = *(v3 + 672);
LABEL_70:
      *(v3 + 664) = v6;
      *(v3 + 656) = v84;
      *(v3 + 640) = v85;
      *(v3 + 632) = v86;
      v222 = *(v3 + 568);
      v223 = 1;
      v350 = v85.i64[0];
      if (v83 != v222)
      {
        if (v83 >= v222)
        {
          goto LABEL_100;
        }

        v224 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_101;
        }

        v225 = *(v3 + 520);
        v226 = *(v3 + 512);
        v227 = *(v3 + 64) + ((*(*(v3 + 376) + 80) + 32) & ~*(*(v3 + 376) + 80)) + *(*(v3 + 376) + 72) * v83;
        v228 = *(*(v3 + 496) + 48);
        *v226 = v83;
        sub_22FA4FAA4(v227, v226 + v228, &qword_27DAD8138, &qword_22FCD4A60);
        sub_22FA4F224(v226, v225, &qword_27DAD8840, &qword_22FCD8140);
        v223 = 0;
        v83 = v224;
      }

      *(v3 + 672) = v83;
      v229 = *(v3 + 528);
      v230 = *(v3 + 520);
      v232 = *(v3 + 496);
      v231 = *(v3 + 504);
      (*(v231 + 56))(v230, v223, 1, v232);
      sub_22FA4F224(v230, v229, &qword_27DAD8848, &qword_22FCD8148);
      if ((*(v231 + 48))(v229, 1, v232) == 1)
      {
        sub_22FCC8484();
        if (v82)
        {
          v262 = *(v3 + 552);
          v263 = *(v3 + 544);
          v264 = *(v3 + 536);
          v265 = *(v3 + 72);

          __swift_project_boxed_opaque_existential_1(v265, v265[3]);
          sub_22FCC83F4();
          (*(v263 + 8))(v262, v264);

          v266 = *(v3 + 8);

          return v266();
        }

        else
        {

          v295 = sub_22FCC8664();
          v296 = sub_22FCC8F34();
          if (os_log_type_enabled(v295, v296))
          {
            v297 = swift_slowAlloc();
            *v297 = 134217984;
            *(v297 + 4) = *(v6 + 16);

            _os_log_impl(&dword_22FA28000, v295, v296, "Safety Received results for prompts:%ld", v297, 0xCu);
            MEMORY[0x23190A000](v297, -1, -1);
          }

          else
          {
          }

          v298 = *(v3 + 616);
          v299 = *(v3 + 608);
          v300 = v3;
          v301 = *(v3 + 568);
          v302 = v300[69];
          v303 = v300[68];
          v309 = v298;
          v310 = v300[67];
          v304 = v300[9];
          v305 = v300[7];

          v305[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
          v305[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
          v306 = swift_allocObject();
          *v305 = v306;
          v306[2] = MEMORY[0x277D84F90];
          v306[3] = v301;
          v306[4] = v299;
          v306[5] = v309;
          v306[6] = v86;
          v306[7] = v350;
          __swift_project_boxed_opaque_existential_1(v304, v304[3]);
          sub_22FCC83F4();
          (*(v303 + 8))(v302, v310);

          v307 = v300[1];

          return v307(v6);
        }
      }

      v233 = *(v3 + 488);
      v234 = *(v3 + 472);
      v331 = *(v3 + 480);
      v236 = *(v3 + 392);
      v235 = *(v3 + 400);
      v237 = *(v3 + 384);
      v238 = *(v3 + 368);
      v239 = *(v3 + 528) + *(*(v3 + 496) + 48);
      v240 = *(v238 + 48);
      sub_22FB5570C(v239, v237);
      v241 = *(v235 + 32);
      v242 = v239 + v240;
      v3 = v353;
      v241(v237 + v240, v242, v236);
      sub_22FB5570C(v237, v233);
      v241(v234, v237 + v240, v236);
      v243 = (v233 + *(v331 + 20));
      v244 = *v243;
      v353[42].i64[1] = *v243;
      v245 = v243[1];
      v353[43].i64[0] = v245;

      sub_22FCC8434();
      sub_22FCC8464();
      if (!v82)
      {
        v268 = v353[29].i64[0];
        v267 = v353[29].i64[1];
        v270 = v353[24].i64[1];
        v269 = v353[25].i64[0];
        sub_22FCC8454();
        sub_22FCC8454();
        v271 = *(v269 + 16);
        v353[43].i64[1] = v271;
        v353[44].i64[0] = (v269 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v271(v268, v267, v270);

        v272 = sub_22FCC8664();
        v273 = sub_22FCC8F34();

        v274 = os_log_type_enabled(v272, v273);
        v275 = v353[29].i64[0];
        v277 = v353[24].i64[1];
        v276 = v353[25].i64[0];
        if (v274)
        {
          v278 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          v354[0] = v279;
          *v278 = 136315395;
          *(v278 + 4) = sub_22FA2F600(v244, v245, v354);
          *(v278 + 12) = 2081;
          v280 = sub_22FCC7154();
          v282 = v281;
          v283 = *(v276 + 8);
          v283(v275, v277);
          v284 = sub_22FA2F600(v280, v282, v354);

          *(v278 + 14) = v284;
          _os_log_impl(&dword_22FA28000, v272, v273, "[Safety] Validating prompt with id %s with annotation %{private}s", v278, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v279, -1, -1);
          MEMORY[0x23190A000](v278, -1, -1);
        }

        else
        {

          v283 = *(v276 + 8);
          v283(v275, v277);
        }

        v353[44].i64[1] = v283;
        v333 = v353[21].i64[0];
        v337 = v353[22].i64[0];
        v286 = v353[19].i64[1];
        v285 = v353[20].i64[0];
        v287 = v353[17].i64[0];
        v288 = sub_22FCC7184();
        v344 = v289;
        v352 = v288;
        v353[45].i64[0] = v289;
        sub_22FA4CF38(MEMORY[0x277D84F90]);
        v290 = sub_22FCC7104();
        v353[45].i64[1] = v290;

        v291 = sub_22FCC70C4();
        (*(*(v291 - 8) + 56))(v287, 1, 1, v291);
        v292 = *(v285 + 32);
        v353[46].i64[0] = v292;
        v353[46].i64[1] = (v285 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v292(v333, v337, v286);
        v293 = swift_task_alloc();
        v353[47].i64[0] = v293;
        *v293 = v353;
        v293[1] = sub_22FB45E10;
        v75 = v353[19].i64[0];
        v81 = v353[17].i64[0];
        v294 = v353[4].i64[1];
        v360 = v353[21].i64[0];
        v361 = 0;
        v359 = v294;
        v358 = 1;
        v357 = 0;
        v76 = v344;
        v223 = v352;
        v77 = v290;
        v78 = 0;
        v79 = 0;
        v80 = 0;

        return MEMORY[0x28219BDA0](v75, v223, v76, v77, v78, v79, v80, v81);
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    return MEMORY[0x28219BDA0](v75, v223, v76, v77, v78, v79, v80, v81);
  }

  v118 = v109;
  v119 = v353[43].i64[1];
  v120 = v353[29].i64[1];
  v121 = v353[28].i64[0];
  v122 = v353[24].i64[1];

  v119(v121, v120, v122);
  swift_bridgeObjectRetain_n();
  v123 = sub_22FCC8664();
  v124 = sub_22FCC8F34();
  v125 = os_log_type_enabled(v123, v124);
  v126 = v353[44].i64[1];
  v127 = v353[28].i64[0];
  v128 = v353[24].i64[1];
  if (v125)
  {
    v129 = swift_slowAlloc();
    v342 = swift_slowAlloc();
    v354[0] = v342;
    *v129 = 136380931;
    v130 = sub_22FCC7184();
    v132 = v131;
    v126(v127, v128);
    v133 = sub_22FA2F600(v130, v132, v354);

    *(v129 + 4) = v133;
    *(v129 + 12) = 2048;
    v134 = v118[2];

    *(v129 + 14) = v134;

    _os_log_impl(&dword_22FA28000, v123, v124, "Filtered assets for prompt %{private}s :%ld", v129, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v342);
    MEMORY[0x23190A000](v342, -1, -1);
    MEMORY[0x23190A000](v129, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v126(v127, v128);
  }

  v135 = v118[2];
  sub_22FCC7E94();
  v3 = v353;
  if (v135 >= sub_22FCC7E74())
  {
    v149 = v353[21].i64[1];
    v150 = v353[19].i64[1];
    v151 = v353[20].i64[0];

    (*(v151 + 8))(v149, v150);
    v353[53].i64[1] = v118;
    v152 = v353[29].i64[1];
    v153 = v353[4].i64[1];

    v353[59].i8[4] = PromptSuggestionValidator.validateTimeRange(promptAnnotation:resultAssetUUIDs:eventRecorder:)(v152, v118, v153);

    v154 = *(sub_22FCC7CF4() + 16);

    if (!v154)
    {
      v155 = *(sub_22FCC7D14() + 16);

      if (!v155)
      {
        v193 = v353[48].i64[1];
        v194 = sub_22FCC8664();
        v195 = sub_22FCC8F34();

        if (os_log_type_enabled(v194, v195))
        {
          v196 = v353[48].i64[1];
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          v354[0] = v198;
          *v197 = 136642819;
          v199 = [v196 string];
          v200 = sub_22FCC8A84();
          v202 = v201;

          v203 = sub_22FA2F600(v200, v202, v354);

          *(v197 + 4) = v203;
          _os_log_impl(&dword_22FA28000, v194, v195, "[Safety] LLMQU Prompt does not require safety validation. Prompt:%{sensitive}s", v197, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v198);
          MEMORY[0x23190A000](v198, -1, -1);
          MEMORY[0x23190A000](v197, -1, -1);
        }

        v82 = v353[53].i64[1];
        v6 = v82[2];
        v11 = v353[48].i64[1];
        if (v6)
        {
          v0 = sub_22FA86B08(v82[2], 0);
          v204 = sub_22FA88270(v353[1].i64, v0[2].i64, v6, v82);
          v205 = v353[1].i64[0];
          v86 = v353[1].u64[1];
          v3 = v353[2].i64[1];
          v206 = v11;

          v75 = sub_22FA37D64(v205);
          if (v204 != v6)
          {
            goto LABEL_69;
          }

          v3 = v353;
        }

        else
        {
LABEL_58:
          v207 = v11;
          v0 = MEMORY[0x277D84F90];
        }

        v340 = *(v3 + 948);
        v208 = swift_isUniquelyReferenced_nonNull_native();
        v6 = *(v3 + 664);
        if ((v208 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_60;
      }
    }

    v156 = v353[48].i64[1];
    v157 = sub_22FCC8664();
    v158 = sub_22FCC8F34();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = v353[48].i64[1];
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v354[0] = v161;
      *v160 = 136642819;
      v162 = [v159 string];
      v163 = sub_22FCC8A84();
      v165 = v164;

      v166 = sub_22FA2F600(v163, v165, v354);

      *(v160 + 4) = v166;
      _os_log_impl(&dword_22FA28000, v157, v158, "[Safety] LLMQU Prompt requires safety validation. Prompt:%{sensitive}s", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v161);
      MEMORY[0x23190A000](v161, -1, -1);
      MEMORY[0x23190A000](v160, -1, -1);
    }

    v167 = v353[48].i64[1];
    v168 = v353[59].u32[0];
    v169 = v353[7].i64[1];
    v171 = v353[6].i64[0];
    v170 = v353[6].i64[1];
    v172 = (v353[5].i64[1] + v353[37].i64[0]);
    v173 = v172[3];
    v348 = v172[4];
    __swift_project_boxed_opaque_existential_1(v172, v173);
    v174 = [v167 string];
    v175 = sub_22FCC8A84();
    v177 = v176;

    v353[54].i64[0] = v177;
    v178 = *(v170 + 104);
    v353[54].i64[1] = v178;
    v353[55].i64[0] = (v170 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v178(v169, v168, v171);
    v179 = swift_task_alloc();
    v353[55].i64[1] = v179;
    *v179 = v353;
    v179[1] = sub_22FB49EA0;
    v180 = v353[7].i64[1];
    v181 = v353[4].i64[1];

    return MEMORY[0x28219C8C8](v175, v177, 0, v180, v181, v173, v348);
  }

  else
  {
    (v353[43].i64[1])(v353[27].i64[1], v353[29].i64[1], v353[24].i64[1]);
    swift_bridgeObjectRetain_n();
    v136 = sub_22FCC8664();
    v137 = sub_22FCC8F34();
    v138 = os_log_type_enabled(v136, v137);
    v139 = v353[44].i64[1];
    v140 = v353[27].i64[1];
    v141 = v353[24].i64[1];
    if (v138)
    {
      v142 = swift_slowAlloc();
      v347 = swift_slowAlloc();
      v354[0] = v347;
      *v142 = 136380931;
      v143 = sub_22FCC7184();
      v145 = v144;
      v139(v140, v141);
      v146 = v143;
      v3 = v353;
      v147 = sub_22FA2F600(v146, v145, v354);

      *(v142 + 4) = v147;
      *(v142 + 12) = 2048;
      v148 = v118[2];

      *(v142 + 14) = v148;

      _os_log_impl(&dword_22FA28000, v136, v137, "Run moment expansion processor for prompt %{private}s with %ld safe assets", v142, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v347);
      MEMORY[0x23190A000](v347, -1, -1);
      MEMORY[0x23190A000](v142, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v139(v140, v141);
    }

    v182 = *(v3 + 944);
    v183 = *(v3 + 128);
    v184 = *(v3 + 96);
    v185 = *(v3 + 104);
    v186 = (*(v3 + 88) + *(v3 + 592));
    v187 = v186[3];
    v188 = v186[4];
    __swift_project_boxed_opaque_existential_1(v186, v187);
    (*(v185 + 104))(v183, v182, v184);
    v189 = swift_task_alloc();
    *(v3 + 816) = v189;
    *v189 = v3;
    v189[1] = sub_22FB481C8;
    v190 = *(v3 + 152);
    v191 = *(v3 + 128);
    v192 = *(v3 + 72);

    return MEMORY[0x28219C8B8](v190, v328, v191, v192, v187, v188);
  }
}

uint64_t sub_22FB481C8()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  (*(v2[13] + 8))(v2[16], v2[12]);
  if (v0)
  {

    v3 = sub_22FB4BFFC;
  }

  else
  {
    v3 = sub_22FB48358;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FB48358()
{
  v1 = *(v0 + 784);
  (*(v0 + 736))(*(v0 + 328), *(v0 + 344), *(v0 + 312));
  v2 = swift_task_alloc();
  *(v0 + 832) = v2;
  *v2 = v0;
  v2[1] = sub_22FB4842C;
  v3 = *(v0 + 808);
  v4 = *(v0 + 768);
  v5 = *(v0 + 328);
  v6 = *(v0 + 152);
  v7 = *(v0 + 72);

  return MEMORY[0x28219C5B0](v3, v1, v4, v6, v7, v5);
}

uint64_t sub_22FB4842C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {

    v5 = sub_22FB4CDE0;
  }

  else
  {
    *(v4 + 848) = a1;
    v5 = sub_22FB485B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB485B0(__n128 a1)
{
  v261 = v1;
  v2 = *(v1 + 840);
  sub_22FCC6F24();

  v3 = sub_22FCC6F14();
  v245 = v1;
  if (!v2)
  {
    v14 = v3;
    v15 = *(v1 + 696);
    v16 = *(v1 + 472);
    v17 = *(v1 + 432);
    v18 = *(v1 + 392);

    v15(v17, v16, v18);
    v19 = sub_22FCC8664();
    v20 = sub_22FCC8F34();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 712);
    v23 = *(v1 + 432);
    v24 = *(v1 + 392);
    v256 = v14;
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v260[0] = v26;
      *v25 = 136380931;
      v27 = sub_22FCC7184();
      v29 = v28;
      v22(v23, v24);
      v30 = sub_22FA2F600(v27, v29, v260);
      v14 = v256;

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v256[2];
      _os_log_impl(&dword_22FA28000, v19, v20, "Result assets for prompt %{private}s :%ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v25, -1, -1);
    }

    else
    {

      v22(v23, v24);
    }

    v31 = v14[2];
    if (v31 >= [objc_opt_self() promptValidationAssetCountThreshold])
    {
      v48 = *(v1 + 152);
      v49 = *(v1 + 136);
      v50 = *(v1 + 144);
      (*(*(v1 + 168) + 8))(*(v1 + 176), *(v1 + 160));
      (*(v50 + 8))(v48, v49);
      *(v1 + 856) = v14;
      v51 = *(v1 + 472);
      v52 = *(v1 + 72);

      *(v1 + 948) = PromptSuggestionValidator.validateTimeRange(promptAnnotation:resultAssetUUIDs:eventRecorder:)(v51, v14, v52);

      v53 = *(sub_22FCC7CF4() + 16);

      if (v53 || (v54 = *(sub_22FCC7D14() + 16), , v54))
      {
        v55 = *(v1 + 776);
        v56 = sub_22FCC8664();
        v57 = sub_22FCC8F34();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = *(v1 + 776);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v260[0] = v60;
          *v59 = 136642819;
          v61 = [v58 string];
          v62 = sub_22FCC8A84();
          v64 = v63;

          v65 = sub_22FA2F600(v62, v64, v260);

          *(v59 + 4) = v65;
          _os_log_impl(&dword_22FA28000, v56, v57, "[Safety] LLMQU Prompt requires safety validation. Prompt:%{sensitive}s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          MEMORY[0x23190A000](v60, -1, -1);
          MEMORY[0x23190A000](v59, -1, -1);
        }

        v66 = *(v1 + 776);
        v67 = *(v1 + 944);
        v68 = *(v1 + 120);
        v70 = *(v1 + 96);
        v69 = *(v1 + 104);
        v71 = (*(v1 + 88) + *(v1 + 592));
        v72 = v71[3];
        v257 = v71[4];
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v73 = [v66 string];
        v74 = sub_22FCC8A84();
        v76 = v75;

        *(v1 + 864) = v76;
        v77 = *(v69 + 104);
        *(v1 + 872) = v77;
        *(v1 + 880) = (v69 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v77(v68, v67, v70);
        v78 = swift_task_alloc();
        *(v1 + 888) = v78;
        *v78 = v1;
        v78[1] = sub_22FB49EA0;
        v79 = *(v1 + 120);
        v80 = *(v1 + 72);

        return MEMORY[0x28219C8C8](v74, v76, 0, v79, v80, v72, v257);
      }

      v105 = *(v1 + 776);
      v106 = sub_22FCC8664();
      v107 = sub_22FCC8F34();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = *(v1 + 776);
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v260[0] = v110;
        *v109 = 136642819;
        v111 = [v108 string];
        v112 = sub_22FCC8A84();
        v114 = v113;

        v115 = sub_22FA2F600(v112, v114, v260);

        *(v109 + 4) = v115;
        _os_log_impl(&dword_22FA28000, v106, v107, "[Safety] LLMQU Prompt does not require safety validation. Prompt:%{sensitive}s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x23190A000](v110, -1, -1);
        MEMORY[0x23190A000](v109, -1, -1);
      }

      v116 = *(v1 + 856);
      v83 = *(v116 + 16);
      v117 = *(v1 + 776);
      if (v83)
      {
        v256 = sub_22FA86B08(*(v116 + 16), 0);
        v118 = sub_22FA88270((v1 + 16), v256 + 4, v83, v116);
        v104 = *(v1 + 16);
        v103 = *(v1 + 32);
        v13 = *(v1 + 40);
        v119 = v117;

        v156 = sub_22FA37D64(v104);
        if (v118 != v83)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v120 = v117;
        v256 = MEMORY[0x277D84F90];
      }

      v121 = *(v1 + 948);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v1 + 664);
      LODWORD(v251) = v121;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_30:
        v124 = *(v83 + 2);
        v123 = *(v83 + 3);
        if (v124 >= v123 >> 1)
        {
          v83 = sub_22FAC20B8((v123 > 1), v124 + 1, 1, v83);
        }

        v125 = *(v1 + 776);
        v237 = *(v1 + 688);
        v233 = *(v1 + 712);
        v235 = *(v1 + 680);
        v239 = *(v1 + 656);
        v242 = *(v1 + 768);
        v229 = *(v1 + 392);
        v231 = *(v1 + 472);
        v227 = *(v1 + 304);
        v103 = *(v1 + 280);
        v126 = *(v1 + 288);
        v13 = *(v1 + 184);
        v128 = *(v1 + 160);
        v127 = *(v1 + 168);

        (*(v127 + 8))(v13, v128);
        (*(v126 + 8))(v227, v103);
        v156 = v233(v231, v229);
        *(v83 + 2) = v124 + 1;
        v129 = &v83[48 * v124];
        v101 = v235;
        *(v129 + 4) = v235;
        *(v129 + 5) = v237;
        *(v129 + 6) = v125;
        *(v129 + 7) = v256;
        *(v129 + 8) = v242;
        v102 = v251;
        v129[72] = v251;
        v100 = v239;
        v104 = v239 + 1;
        if (!__OFADD__(v239, 1))
        {
          v130 = *(v1 + 360);
          v131 = *(v1 + 312);
          v132 = *(v1 + 320);
          sub_22FA72A34(*(v1 + 488));

          v156 = (*(v132 + 8))(v130, v131);
          v102 = *(v1 + 648);
          v103 = *(v1 + 640);
          v101 = v239 + 1;
          v13 = v1;
          v100 = *(v1 + 672);
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    else
    {
      v32 = *(v1 + 696);
      v33 = *(v1 + 472);
      v34 = *(v1 + 424);
      v35 = *(v1 + 392);

      v32(v34, v33, v35);
      v36 = sub_22FCC8664();
      v37 = sub_22FCC8F34();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v1 + 712);
      v40 = *(v1 + 424);
      v41 = *(v1 + 392);
      if (v38)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v260[0] = v43;
        *v42 = 136643075;
        v44 = sub_22FCC7184();
        v46 = v45;
        v39(v40, v41);
        v47 = sub_22FA2F600(v44, v46, v260);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2049;
        *(v42 + 14) = v256[2];
        _os_log_impl(&dword_22FA28000, v36, v37, "Asset count less than valid threshold. Skipping... Prompt: %{sensitive}s. Count:%{private}ld", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x23190A000](v43, -1, -1);
        MEMORY[0x23190A000](v42, -1, -1);
      }

      else
      {

        v39(v40, v41);
      }

      v81 = *(v1 + 776);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v1 + 664);
      if ((v82 & 1) == 0)
      {
        v83 = sub_22FAC20B8(0, *(v83 + 2) + 1, 1, *(v1 + 664));
      }

      v85 = *(v83 + 2);
      v84 = *(v83 + 3);
      v247 = v85 + 1;
      v251 = v85;
      if (v85 >= v84 >> 1)
      {
        v83 = sub_22FAC20B8((v84 > 1), v85 + 1, 1, v83);
      }

      v86 = *(v1 + 776);
      v234 = *(v1 + 712);
      v236 = *(v1 + 680);
      v238 = *(v1 + 688);
      v241 = *(v1 + 624);
      v230 = *(v1 + 392);
      v232 = *(v1 + 472);
      v228 = *(v1 + 304);
      v87 = *(v1 + 288);
      v226 = *(v1 + 280);
      v88 = *(v1 + 176);
      v89 = *(v1 + 160);
      v90 = *(v1 + 168);
      v91 = *(v1 + 144);
      v224 = *(v1 + 152);
      v225 = *(v1 + 184);
      v92 = *(v1 + 136);

      v93 = *(v90 + 8);
      v93(v88, v89);
      (*(v91 + 8))(v224, v92);
      v93(v225, v89);
      (*(v87 + 8))(v228, v226);
      v234(v232, v230);
      *(v83 + 2) = v247;
      v94 = MEMORY[0x277D84F90];
      v95 = &v83[48 * v251];
      *(v95 + 4) = v236;
      *(v95 + 5) = v238;
      *(v95 + 6) = v86;
      *(v95 + 7) = v94;
      *(v95 + 8) = v94;
      v95[72] = 0;
      v96 = v241 + 1;
      if (!__OFADD__(v241, 1))
      {
        v97 = *(v1 + 360);
        v98 = *(v1 + 312);
        v99 = *(v1 + 320);
        sub_22FA72A34(*(v1 + 488));

        v156 = (*(v99 + 8))(v97, v98);
        v100 = *(v1 + 672);
        v101 = *(v1 + 656);
        v102 = *(v1 + 648);
        v103 = *(v1 + 640);
        v104 = *(v1 + 632);
        *(v1 + 624) = v96;
        *(v1 + 616) = v96;
        v13 = v1;
        goto LABEL_38;
      }

      __break(1u);
    }

    v83 = sub_22FAC20B8(0, *(v83 + 2) + 1, 1, v83);
    goto LABEL_30;
  }

  v4 = *(v1 + 776);
  v5 = *(v1 + 288);
  v250 = *(v1 + 280);
  v255 = *(v1 + 304);
  v6 = *(v1 + 176);
  v246 = *(v1 + 184);
  v7 = *(v1 + 168);
  v8 = *(v1 + 160);
  v240 = *(v1 + 152);
  v9 = *(v1 + 144);
  v10 = *(v1 + 136);

  v11 = *(v7 + 8);
  v11(v6, v8);
  (*(v9 + 8))(v240, v10);
  v12 = v8;
  v13 = v245;
  v11(v246, v12);
  (*(v5 + 8))(v255, v250);
  v155 = v245[81];
  v156 = (*(v13[40] + 8))(v13[45], v13[39]);
  v252 = v155 + 1;
  if (__OFADD__(v155, 1))
  {
    __break(1u);
    goto LABEL_63;
  }

  (*(v245[50] + 16))(v245[51], v245[59], v245[49]);
  v164 = v2;
  v165 = sub_22FCC8664();
  v166 = sub_22FCC8F14();

  v167 = os_log_type_enabled(v165, v166);
  v258 = v245[59];
  v169 = v245[50];
  v168 = v245[51];
  v170 = v245[49];
  if (v167)
  {
    v171 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    v260[0] = v248;
    *v171 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
    v172 = sub_22FCC96C4();
    v174 = v173;
    v175 = *(v169 + 8);
    v175(v168, v170);
    v176 = sub_22FA2F600(v172, v174, v260);
    v13 = v245;

    *(v171 + 4) = v176;
    *(v171 + 12) = 2112;
    v177 = v2;
    v178 = _swift_stdlib_bridgeErrorToNSError();
    *(v171 + 14) = v178;
    *v243 = v178;
    _os_log_impl(&dword_22FA28000, v165, v166, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v171, 0x16u);
    sub_22FA2B420(v243, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v243, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v248);
    MEMORY[0x23190A000](v248, -1, -1);
    MEMORY[0x23190A000](v171, -1, -1);
  }

  else
  {

    v175 = *(v169 + 8);
    v175(v168, v170);
  }

  v175(v258, v170);
  v156 = sub_22FA72A34(v13[61]);
  v83 = v13[83];
  v101 = v13[82];
  v103 = v252;
  v102 = v252;
  v104 = v13[79];
  v100 = v13[84];
LABEL_38:
  v13[83] = v83;
  v13[82] = v101;
  v13[81] = v102;
  v13[80] = v103;
  v13[79] = v104;
  v133 = v13[71];
  v157 = 1;
  if (v100 != v133)
  {
    if (v100 < v133)
    {
      v134 = v100 + 1;
      if (!__OFADD__(v100, 1))
      {
        v135 = v13[65];
        v136 = v13[64];
        v137 = v13[8] + ((*(v13[47] + 80) + 32) & ~*(v13[47] + 80)) + *(v13[47] + 72) * v100;
        v138 = *(v13[62] + 48);
        *v136 = v100;
        sub_22FA4FAA4(v137, v136 + v138, &qword_27DAD8138, &qword_22FCD4A60);
        sub_22FA4F224(v136, v135, &qword_27DAD8840, &qword_22FCD8140);
        v157 = 0;
        v100 = v134;
        goto LABEL_42;
      }

LABEL_64:
      __break(1u);
      return MEMORY[0x28219BDA0](v156, v157, v158, v159, v160, v161, v162, v163);
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_42:
  v13[84] = v100;
  v139 = v13[66];
  v140 = v13[65];
  v141 = v13[62];
  v142 = v13[63];
  (*(v142 + 56))(v140, v157, 1, v141);
  sub_22FA4F224(v140, v139, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v142 + 48))(v139, 1, v141) != 1)
  {
    v143 = v13[61];
    v144 = v13[59];
    v145 = v13[60];
    v147 = v13[49];
    v146 = v13[50];
    v148 = v13[48];
    v149 = v13[66] + *(v13[62] + 48);
    v150 = *(v13[46] + 48);
    sub_22FB5570C(v149, v148);
    v151 = *(v146 + 32);
    v151(v148 + v150, v149 + v150, v147);
    sub_22FB5570C(v148, v143);
    v151(v144, v148 + v150, v147);
    v152 = (v143 + *(v145 + 20));
    v153 = *v152;
    v245[85] = *v152;
    v154 = v152[1];
    v245[86] = v154;

    sub_22FCC8434();
    sub_22FCC8464();
    v180 = v245[58];
    v179 = v245[59];
    v182 = v245[49];
    v181 = v245[50];
    sub_22FCC8454();
    sub_22FCC8454();
    v183 = *(v181 + 16);
    v245[87] = v183;
    v245[88] = (v181 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v183(v180, v179, v182);

    v184 = sub_22FCC8664();
    v185 = sub_22FCC8F34();

    v186 = os_log_type_enabled(v184, v185);
    v187 = v245[58];
    v189 = v245[49];
    v188 = v245[50];
    if (v186)
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v260[0] = v191;
      *v190 = 136315395;
      *(v190 + 4) = sub_22FA2F600(v153, v154, v260);
      *(v190 + 12) = 2081;
      v192 = sub_22FCC7154();
      v194 = v193;
      v195 = *(v188 + 8);
      v195(v187, v189);
      v196 = sub_22FA2F600(v192, v194, v260);

      *(v190 + 14) = v196;
      _os_log_impl(&dword_22FA28000, v184, v185, "[Safety] Validating prompt with id %s with annotation %{private}s", v190, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v191, -1, -1);
      MEMORY[0x23190A000](v190, -1, -1);
    }

    else
    {

      v195 = *(v188 + 8);
      v195(v187, v189);
    }

    v245[89] = v195;
    v249 = v245[44];
    v244 = v245[42];
    v198 = v245[39];
    v197 = v245[40];
    v199 = v245[34];
    v200 = sub_22FCC7184();
    v253 = v201;
    v259 = v200;
    v245[90] = v201;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v202 = sub_22FCC7104();
    v245[91] = v202;

    v203 = sub_22FCC70C4();
    (*(*(v203 - 8) + 56))(v199, 1, 1, v203);
    v204 = *(v197 + 32);
    v245[92] = v204;
    v245[93] = (v197 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v204(v244, v249, v198);
    v205 = swift_task_alloc();
    v245[94] = v205;
    *v205 = v245;
    v205[1] = sub_22FB45E10;
    v156 = v245[38];
    v163 = v245[34];
    v206 = v245[9];
    v266 = v245[42];
    v267 = 0;
    v265 = v206;
    v264 = 1;
    v263 = 0;
    v158 = v253;
    v157 = v259;
    v159 = v202;
    v160 = 0;
    v161 = 0;
    v162 = 0;

    return MEMORY[0x28219BDA0](v156, v157, v158, v159, v160, v161, v162, v163);
  }

  sub_22FCC8484();

  v207 = sub_22FCC8664();
  v208 = sub_22FCC8F34();
  v209 = os_log_type_enabled(v207, v208);
  v254 = v103;
  if (v209)
  {
    v210 = swift_slowAlloc();
    *v210 = 134217984;
    *(v210 + 4) = *(v83 + 2);

    _os_log_impl(&dword_22FA28000, v207, v208, "Safety Received results for prompts:%ld", v210, 0xCu);
    MEMORY[0x23190A000](v210, -1, -1);
  }

  else
  {
  }

  v211 = v13[77];
  v212 = v13[76];
  v213 = v13;
  v214 = v13[71];
  v215 = v213[69];
  v216 = v213[68];
  v222 = v211;
  v223 = v213[67];
  v217 = v213[9];
  v218 = v213[7];

  v218[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v218[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v219 = swift_allocObject();
  *v218 = v219;
  v219[2] = MEMORY[0x277D84F90];
  v219[3] = v214;
  v219[4] = v212;
  v219[5] = v222;
  v219[6] = v104;
  v219[7] = v254;
  __swift_project_boxed_opaque_existential_1(v217, v217[3]);
  sub_22FCC83F4();
  (*(v216 + 8))(v215, v223);

  v220 = v213[1];

  return v220(v83);
}

uint64_t sub_22FB49EA0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 896) = v2;

  if (v2)
  {
    (*(v4[13] + 8))(v4[15], v4[12]);

    v5 = sub_22FB4DBC4;
  }

  else
  {
    v6 = v4[15];
    v7 = v4[12];
    v8 = v4[13];

    v9 = *(v8 + 8);
    v4[113] = v9;
    v4[114] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v5 = sub_22FB4A054;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB4A054()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 944);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 88) + *(v0 + 592));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v1(v3, v2, v4);
  v8 = swift_task_alloc();
  *(v0 + 920) = v8;
  *v8 = v0;
  v8[1] = sub_22FB4A154;
  v9 = *(v0 + 776);
  v10 = *(v0 + 112);
  v11 = *(v0 + 72);

  return MEMORY[0x28219C8C0](v9, v10, v11, v6, v7);
}

uint64_t sub_22FB4A154(void *a1)
{
  v4 = *v2;
  v4[116] = v1;

  v5 = v4[113];
  if (v1)
  {
    v5(v4[14], v4[12]);

    v6 = sub_22FB4E994;
  }

  else
  {
    v7 = v4[14];
    v8 = v4[12];

    v5(v7, v8);
    v6 = sub_22FB4A2E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FB4A2E0()
{
  v143 = v0;
  v138 = *(v0 + 928);
  v1 = *(v0 + 856);
  v2 = *(v1 + 16);
  v3 = *(v0 + 776);
  if (v2)
  {
    v135 = sub_22FA86B08(*(v1 + 16), 0);
    v4 = sub_22FA88270((v0 + 16), v135 + 4, v2, v1);
    v5 = *(v0 + 16);
    v6 = v3;

    sub_22FA37D64(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = v3;
  v135 = MEMORY[0x277D84F90];
LABEL_5:
  v8 = *(v0 + 948);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 664);
  LOBYTE(v133) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_41:
    v10 = sub_22FAC20B8(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_22FAC20B8((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 776);
  v129 = *(v0 + 768);
  v125 = *(v0 + 712);
  v126 = *(v0 + 680);
  v127 = *(v0 + 688);
  v128 = *(v0 + 656);
  v124 = *(v0 + 472);
  v122 = *(v0 + 304);
  v123 = *(v0 + 392);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);

  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v122, v15);
  v19 = v125(v124, v123);
  *(v10 + 2) = v12 + 1;
  v27 = &v10[48 * v12];
  *(v27 + 4) = v126;
  *(v27 + 5) = v127;
  *(v27 + 6) = v13;
  *(v27 + 7) = v135;
  *(v27 + 8) = v129;
  v27[72] = v133;
  v28 = v128 + 1;
  if (__OFADD__(v128, 1))
  {
    __break(1u);
    return MEMORY[0x28219BDA0](v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v29 = *(v0 + 360);
    v30 = *(v0 + 312);
    v31 = *(v0 + 320);
    sub_22FA72A34(*(v0 + 488));

    (*(v31 + 8))(v29, v30);
    v32 = *(v0 + 640);
    v33 = v128 + 1;
    while (1)
    {
      v35 = *(v0 + 672);
      *(v0 + 664) = v10;
      *(v0 + 656) = v33;
      *(v0 + 640) = v32;
      *(v0 + 632) = v28;
      v36 = *(v0 + 568);
      v135 = v32.i64[0];
      if (v35 == v36)
      {
        v37 = 1;
      }

      else
      {
        if (v35 >= v36)
        {
          goto LABEL_39;
        }

        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_40;
        }

        v39 = *(v0 + 520);
        v40 = *(v0 + 512);
        v41 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v35;
        v42 = *(*(v0 + 496) + 48);
        *v40 = v35;
        sub_22FA4FAA4(v41, v40 + v42, &qword_27DAD8138, &qword_22FCD4A60);
        sub_22FA4F224(v40, v39, &qword_27DAD8840, &qword_22FCD8140);
        v37 = 0;
        v35 = v38;
      }

      *(v0 + 672) = v35;
      v43 = *(v0 + 528);
      v44 = *(v0 + 520);
      v46 = *(v0 + 496);
      v45 = *(v0 + 504);
      (*(v45 + 56))(v44, v37, 1, v46);
      sub_22FA4F224(v44, v43, &qword_27DAD8848, &qword_22FCD8148);
      if ((*(v45 + 48))(v43, 1, v46) == 1)
      {
        break;
      }

      v135 = *(v0 + 568);
      v10 = *(v0 + 488);
      v47 = *(v0 + 472);
      v130 = *(v0 + 480);
      v49 = *(v0 + 392);
      v48 = *(v0 + 400);
      v50 = *(v0 + 384);
      v133 = *(v0 + 80);
      v51 = *(v0 + 528) + *(*(v0 + 496) + 48);
      v52 = *(*(v0 + 368) + 48);
      sub_22FB5570C(v51, v50);
      v53 = *(v48 + 32);
      v53(v50 + v52, v51 + v52, v49);
      sub_22FB5570C(v50, v10);
      v53(v47, v50 + v52, v49);
      v54 = &v10[*(v130 + 20)];
      v55 = *v54;
      *(v0 + 680) = *v54;
      v56 = v54[1];
      *(v0 + 688) = v56;

      sub_22FCC8434();
      v57 = v138;
      sub_22FCC8464();
      if (!v138)
      {
        v84 = *(v0 + 464);
        v83 = *(v0 + 472);
        v85 = *(v0 + 392);
        v86 = *(v0 + 400);
        sub_22FCC8454();
        sub_22FCC8454();
        v87 = *(v86 + 16);
        *(v0 + 696) = v87;
        *(v0 + 704) = (v86 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v87(v84, v83, v85);

        v88 = sub_22FCC8664();
        v89 = sub_22FCC8F34();

        v90 = os_log_type_enabled(v88, v89);
        v91 = *(v0 + 464);
        v93 = *(v0 + 392);
        v92 = *(v0 + 400);
        if (v90)
        {
          v94 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v142[0] = v140;
          *v94 = 136315395;
          *(v94 + 4) = sub_22FA2F600(v55, v56, v142);
          *(v94 + 12) = 2081;
          v95 = sub_22FCC7154();
          v97 = v96;
          v98 = *(v92 + 8);
          v98(v91, v93);
          v99 = sub_22FA2F600(v95, v97, v142);

          *(v94 + 14) = v99;
          _os_log_impl(&dword_22FA28000, v88, v89, "[Safety] Validating prompt with id %s with annotation %{private}s", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v140, -1, -1);
          MEMORY[0x23190A000](v94, -1, -1);
        }

        else
        {

          v98 = *(v92 + 8);
          v98(v91, v93);
        }

        *(v0 + 712) = v98;
        v132 = *(v0 + 336);
        v134 = *(v0 + 352);
        v101 = *(v0 + 312);
        v100 = *(v0 + 320);
        v102 = *(v0 + 272);
        v141 = sub_22FCC7184();
        v137 = v103;
        *(v0 + 720) = v103;
        sub_22FA4CF38(MEMORY[0x277D84F90]);
        v104 = sub_22FCC7104();
        *(v0 + 728) = v104;

        v105 = sub_22FCC70C4();
        (*(*(v105 - 8) + 56))(v102, 1, 1, v105);
        v106 = *(v100 + 32);
        *(v0 + 736) = v106;
        *(v0 + 744) = (v100 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v106(v132, v134, v101);
        v107 = swift_task_alloc();
        *(v0 + 752) = v107;
        *v107 = v0;
        v107[1] = sub_22FB45E10;
        v19 = *(v0 + 304);
        v26 = *(v0 + 272);
        v108 = *(v0 + 72);
        v148 = *(v0 + 336);
        v149 = 0;
        v147 = v108;
        v146 = 1;
        v145 = 0;
        v20 = v141;
        v21 = v137;
        v22 = v104;
        v23 = 0;
        v24 = 0;
        v25 = 0;

        return MEMORY[0x28219BDA0](v19, v20, v21, v22, v23, v24, v25, v26);
      }

      v58 = *(v0 + 648);
      (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
      v60 = v138;
      v61 = sub_22FCC8664();
      v62 = sub_22FCC8F14();

      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 472);
      v66 = *(v0 + 400);
      v65 = *(v0 + 408);
      v67 = *(v0 + 392);
      if (v63)
      {
        v68 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v142[0] = v136;
        *v68 = 136380931;
        sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
        v131 = v62;
        v69 = sub_22FCC96C4();
        v139 = v64;
        v70 = v59;
        v72 = v71;
        v73 = *(v66 + 8);
        v73(v65, v67);
        v74 = sub_22FA2F600(v69, v72, v142);
        v59 = v70;

        *(v68 + 4) = v74;
        *(v68 + 12) = 2112;
        v75 = v57;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v68 + 14) = v76;
        *v133 = v76;
        _os_log_impl(&dword_22FA28000, v61, v131, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v68, 0x16u);
        sub_22FA2B420(v133, &unk_27DAD7B10, &unk_22FCD21C0);
        MEMORY[0x23190A000](v133, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v136);
        MEMORY[0x23190A000](v136, -1, -1);
        MEMORY[0x23190A000](v68, -1, -1);

        v73(v139, v67);
      }

      else
      {

        v34 = *(v66 + 8);
        v34(v65, v67);
        v34(v64, v67);
      }

      sub_22FA72A34(*(v0 + 488));
      v138 = 0;
      v10 = *(v0 + 664);
      v33 = *(v0 + 656);
      v28 = *(v0 + 632);
      v32 = vdupq_n_s64(v59);
    }

    sub_22FCC8484();
    if (v138)
    {
      v77 = *(v0 + 552);
      v78 = *(v0 + 544);
      v79 = *(v0 + 536);
      v80 = *(v0 + 72);

      __swift_project_boxed_opaque_existential_1(v80, v80[3]);
      sub_22FCC83F4();
      (*(v78 + 8))(v77, v79);

      v81 = *(v0 + 8);

      return v81();
    }

    else
    {

      v109 = sub_22FCC8664();
      v110 = sub_22FCC8F34();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 134217984;
        *(v111 + 4) = *(v10 + 2);

        _os_log_impl(&dword_22FA28000, v109, v110, "Safety Received results for prompts:%ld", v111, 0xCu);
        MEMORY[0x23190A000](v111, -1, -1);
      }

      else
      {
      }

      v112 = *(v0 + 608);
      v113 = *(v0 + 568);
      v114 = *(v0 + 552);
      v115 = *(v0 + 544);
      v120 = *(v0 + 616);
      v121 = *(v0 + 536);
      v116 = *(v0 + 72);
      v117 = *(v0 + 56);

      v117[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
      v117[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
      v118 = swift_allocObject();
      *v117 = v118;
      v118[2] = MEMORY[0x277D84F90];
      v118[3] = v113;
      v118[4] = v112;
      v118[5] = v120;
      v118[6] = v28;
      v118[7] = v135;
      __swift_project_boxed_opaque_existential_1(v116, v116[3]);
      sub_22FCC83F4();
      (*(v115 + 8))(v114, v121);

      v119 = *(v0 + 8);

      return v119(v10);
    }
  }
}

uint64_t sub_22FB4B268()
{
  v110 = v1;
  (*(v1[40] + 8))(v1[43], v1[39]);
  v3 = v1[95];
  v4 = v1[81];
  (*(v1[40] + 8))(v1[45], v1[39]);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(v1[50] + 16))(v1[51], v1[59], v1[49]);
  v6 = v3;
  v7 = sub_22FCC8664();
  v8 = sub_22FCC8F14();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[59];
  v12 = v1[50];
  v11 = v1[51];
  v13 = v1[49];
  if (v9)
  {
    v105 = v5;
    v14 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v109[0] = v101;
    *v14 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
    v97 = v8;
    v15 = sub_22FCC96C4();
    v103 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_22FA2F600(v15, v17, v109);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v98 = v21;
    _os_log_impl(&dword_22FA28000, v7, v97, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v14, 0x16u);
    sub_22FA2B420(v98, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v98, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x23190A000](v101, -1, -1);
    v22 = v14;
    v5 = v105;
    MEMORY[0x23190A000](v22, -1, -1);

    v18(v103, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = sub_22FA72A34(v1[61]);
  v0 = v1[83];
  v2 = v1[79];
  v32 = v1[84];
  v1[81] = v5;
  v1[80] = v5;
  v33 = v1[71];
  if (v32 == v33)
  {
    v34 = 1;
    goto LABEL_10;
  }

  if (v32 >= v33)
  {
    __break(1u);
    goto LABEL_27;
  }

  v35 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v24, v25, v26, v27, v28, v29, v30, v31);
  }

  v36 = v1[65];
  v37 = v1[64];
  v38 = v1[8] + ((*(v1[47] + 80) + 32) & ~*(v1[47] + 80)) + *(v1[47] + 72) * v32;
  v39 = *(v1[62] + 48);
  *v37 = v32;
  sub_22FA4FAA4(v38, v37 + v39, &qword_27DAD8138, &qword_22FCD4A60);
  sub_22FA4F224(v37, v36, &qword_27DAD8840, &qword_22FCD8140);
  v34 = 0;
  v32 = v35;
LABEL_10:
  v1[84] = v32;
  v40 = v1[66];
  v41 = v1[65];
  v42 = v1[62];
  v43 = v1[63];
  (*(v43 + 56))(v41, v34, 1, v42);
  sub_22FA4F224(v41, v40, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v43 + 48))(v40, 1, v42) != 1)
  {
    v44 = v1[61];
    v45 = v1[59];
    v99 = v1[60];
    v46 = v1[49];
    v47 = v1[50];
    v48 = v1[48];
    v49 = v1[66] + *(v1[62] + 48);
    v50 = *(v1[46] + 48);
    sub_22FB5570C(v49, v48);
    v51 = *(v47 + 32);
    v51(v48 + v50, v49 + v50, v46);
    sub_22FB5570C(v48, v44);
    v51(v45, v48 + v50, v46);
    v52 = (v44 + *(v99 + 20));
    v53 = *v52;
    v1[85] = *v52;
    v54 = v52[1];
    v1[86] = v54;

    sub_22FCC8434();
    sub_22FCC8464();
    v56 = v1[58];
    v55 = v1[59];
    v57 = v1[49];
    v58 = v1[50];
    sub_22FCC8454();
    sub_22FCC8454();
    v59 = *(v58 + 16);
    v1[87] = v59;
    v1[88] = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59(v56, v55, v57);

    v60 = sub_22FCC8664();
    v61 = sub_22FCC8F34();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v1[58];
    v65 = v1[49];
    v64 = v1[50];
    if (v62)
    {
      v66 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v109[0] = v106;
      *v66 = 136315395;
      *(v66 + 4) = sub_22FA2F600(v53, v54, v109);
      *(v66 + 12) = 2081;
      v67 = sub_22FCC7154();
      v69 = v68;
      v70 = *(v64 + 8);
      v70(v63, v65);
      v71 = sub_22FA2F600(v67, v69, v109);

      *(v66 + 14) = v71;
      _os_log_impl(&dword_22FA28000, v60, v61, "[Safety] Validating prompt with id %s with annotation %{private}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v106, -1, -1);
      MEMORY[0x23190A000](v66, -1, -1);
    }

    else
    {

      v70 = *(v64 + 8);
      v70(v63, v65);
    }

    v1[89] = v70;
    v100 = v1[42];
    v102 = v1[44];
    v73 = v1[39];
    v72 = v1[40];
    v74 = v1[34];
    v75 = sub_22FCC7184();
    v104 = v76;
    v107 = v75;
    v1[90] = v76;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v77 = sub_22FCC7104();
    v1[91] = v77;

    v78 = sub_22FCC70C4();
    (*(*(v78 - 8) + 56))(v74, 1, 1, v78);
    v79 = *(v72 + 32);
    v1[92] = v79;
    v1[93] = (v72 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v79(v100, v102, v73);
    v80 = swift_task_alloc();
    v1[94] = v80;
    *v80 = v1;
    v80[1] = sub_22FB45E10;
    v24 = v1[38];
    v31 = v1[34];
    v81 = v1[9];
    v115 = v1[42];
    v116 = 0;
    v114 = v81;
    v113 = 1;
    v112 = 0;
    v26 = v104;
    v25 = v107;
    v27 = v77;
    v28 = 0;
    v29 = 0;
    v30 = 0;

    return MEMORY[0x28219BDA0](v24, v25, v26, v27, v28, v29, v30, v31);
  }

LABEL_13:
  sub_22FCC8484();

  v82 = sub_22FCC8664();
  v83 = sub_22FCC8F34();
  v84 = os_log_type_enabled(v82, v83);
  v108 = v5;
  if (v84)
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = *(v0 + 16);

    _os_log_impl(&dword_22FA28000, v82, v83, "Safety Received results for prompts:%ld", v85, 0xCu);
    MEMORY[0x23190A000](v85, -1, -1);
  }

  else
  {
  }

  v86 = v1[76];
  v87 = v1[71];
  v88 = v1[69];
  v89 = v1[68];
  v95 = v1[77];
  v96 = v1[67];
  v90 = v1[9];
  v91 = v1[7];

  v91[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v91[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v92 = swift_allocObject();
  *v91 = v92;
  v92[2] = MEMORY[0x277D84F90];
  v92[3] = v87;
  v92[4] = v86;
  v92[5] = v95;
  v92[6] = v2;
  v92[7] = v108;
  __swift_project_boxed_opaque_existential_1(v90, v90[3]);
  sub_22FCC83F4();
  (*(v89 + 8))(v88, v96);

  v93 = v1[1];

  return v93(v0);
}

uint64_t sub_22FB4BFFC()
{
  v117 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 824);
  v11 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v13 = v10;
  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F14();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 472);
  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 392);
  if (v16)
  {
    v112 = v12;
    v21 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v116[0] = v108;
    *v21 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
    v104 = v15;
    v22 = sub_22FCC96C4();
    v110 = v17;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = sub_22FA2F600(v22, v24, v116);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    v27 = v10;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v105 = v28;
    _os_log_impl(&dword_22FA28000, v14, v104, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v21, 0x16u);
    sub_22FA2B420(v105, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v105, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x23190A000](v108, -1, -1);
    v29 = v21;
    v12 = v112;
    MEMORY[0x23190A000](v29, -1, -1);

    v25(v110, v20);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
    v30(v17, v20);
  }

  v31 = sub_22FA72A34(*(v0 + 488));
  v2 = *(v0 + 664);
  v7 = *(v0 + 632);
  v39 = *(v0 + 672);
  *(v0 + 648) = v12;
  *(v0 + 640) = v12;
  v40 = *(v0 + 568);
  if (v39 == v40)
  {
    v41 = 1;
    goto LABEL_10;
  }

  if (v39 >= v40)
  {
    __break(1u);
    goto LABEL_27;
  }

  v42 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

  v43 = *(v0 + 520);
  v44 = *(v0 + 512);
  v45 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v39;
  v46 = *(*(v0 + 496) + 48);
  *v44 = v39;
  sub_22FA4FAA4(v45, v44 + v46, &qword_27DAD8138, &qword_22FCD4A60);
  sub_22FA4F224(v44, v43, &qword_27DAD8840, &qword_22FCD8140);
  v41 = 0;
  v39 = v42;
LABEL_10:
  *(v0 + 672) = v39;
  v47 = *(v0 + 528);
  v48 = *(v0 + 520);
  v49 = *(v0 + 496);
  v50 = *(v0 + 504);
  (*(v50 + 56))(v48, v41, 1, v49);
  sub_22FA4F224(v48, v47, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v50 + 48))(v47, 1, v49) != 1)
  {
    v51 = *(v0 + 488);
    v52 = *(v0 + 472);
    v106 = *(v0 + 480);
    v53 = *(v0 + 392);
    v54 = *(v0 + 400);
    v55 = *(v0 + 384);
    v56 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v57 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v56, v55);
    v58 = *(v54 + 32);
    v58(v55 + v57, v56 + v57, v53);
    sub_22FB5570C(v55, v51);
    v58(v52, v55 + v57, v53);
    v59 = (v51 + *(v106 + 20));
    v60 = *v59;
    *(v0 + 680) = *v59;
    v61 = v59[1];
    *(v0 + 688) = v61;

    sub_22FCC8434();
    sub_22FCC8464();
    v63 = *(v0 + 464);
    v62 = *(v0 + 472);
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v66 = *(v65 + 16);
    *(v0 + 696) = v66;
    *(v0 + 704) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v63, v62, v64);

    v67 = sub_22FCC8664();
    v68 = sub_22FCC8F34();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 464);
    v72 = *(v0 + 392);
    v71 = *(v0 + 400);
    if (v69)
    {
      v73 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v73 = 136315395;
      *(v73 + 4) = sub_22FA2F600(v60, v61, v116);
      *(v73 + 12) = 2081;
      v74 = sub_22FCC7154();
      v76 = v75;
      v77 = *(v71 + 8);
      v77(v70, v72);
      v78 = sub_22FA2F600(v74, v76, v116);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_22FA28000, v67, v68, "[Safety] Validating prompt with id %s with annotation %{private}s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v73, -1, -1);
    }

    else
    {

      v77 = *(v71 + 8);
      v77(v70, v72);
    }

    *(v0 + 712) = v77;
    v107 = *(v0 + 336);
    v109 = *(v0 + 352);
    v80 = *(v0 + 312);
    v79 = *(v0 + 320);
    v81 = *(v0 + 272);
    v82 = sub_22FCC7184();
    v111 = v83;
    v114 = v82;
    *(v0 + 720) = v83;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v84 = sub_22FCC7104();
    *(v0 + 728) = v84;

    v85 = sub_22FCC70C4();
    (*(*(v85 - 8) + 56))(v81, 1, 1, v85);
    v86 = *(v79 + 32);
    *(v0 + 736) = v86;
    *(v0 + 744) = (v79 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v86(v107, v109, v80);
    v87 = swift_task_alloc();
    *(v0 + 752) = v87;
    *v87 = v0;
    v87[1] = sub_22FB45E10;
    v31 = *(v0 + 304);
    v38 = *(v0 + 272);
    v88 = *(v0 + 72);
    v122 = *(v0 + 336);
    v123 = 0;
    v121 = v88;
    v120 = 1;
    v119 = 0;
    v33 = v111;
    v32 = v114;
    v34 = v84;
    v35 = 0;
    v36 = 0;
    v37 = 0;

    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

LABEL_13:
  sub_22FCC8484();

  v89 = sub_22FCC8664();
  v90 = sub_22FCC8F34();
  v91 = os_log_type_enabled(v89, v90);
  v115 = v12;
  if (v91)
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v2 + 16);

    _os_log_impl(&dword_22FA28000, v89, v90, "Safety Received results for prompts:%ld", v92, 0xCu);
    MEMORY[0x23190A000](v92, -1, -1);
  }

  else
  {
  }

  v93 = *(v0 + 608);
  v94 = *(v0 + 568);
  v95 = *(v0 + 552);
  v96 = *(v0 + 544);
  v102 = *(v0 + 616);
  v103 = *(v0 + 536);
  v97 = *(v0 + 72);
  v98 = *(v0 + 56);

  v98[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v98[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v99 = swift_allocObject();
  *v98 = v99;
  v99[2] = MEMORY[0x277D84F90];
  v99[3] = v94;
  v99[4] = v93;
  v99[5] = v102;
  v99[6] = v7;
  v99[7] = v115;
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_22FCC83F4();
  (*(v96 + 8))(v95, v103);

  v100 = *(v0 + 8);

  return v100(v2);
}

uint64_t sub_22FB4CDE0()
{
  v117 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 840);
  v11 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v13 = v10;
  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F14();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 472);
  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 392);
  if (v16)
  {
    v112 = v12;
    v21 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v116[0] = v108;
    *v21 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
    v104 = v15;
    v22 = sub_22FCC96C4();
    v110 = v17;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v18, v20);
    v26 = sub_22FA2F600(v22, v24, v116);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    v27 = v10;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v105 = v28;
    _os_log_impl(&dword_22FA28000, v14, v104, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v21, 0x16u);
    sub_22FA2B420(v105, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v105, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x23190A000](v108, -1, -1);
    v29 = v21;
    v12 = v112;
    MEMORY[0x23190A000](v29, -1, -1);

    v25(v110, v20);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
    v30(v17, v20);
  }

  v31 = sub_22FA72A34(*(v0 + 488));
  v2 = *(v0 + 664);
  v7 = *(v0 + 632);
  v39 = *(v0 + 672);
  *(v0 + 648) = v12;
  *(v0 + 640) = v12;
  v40 = *(v0 + 568);
  if (v39 == v40)
  {
    v41 = 1;
    goto LABEL_10;
  }

  if (v39 >= v40)
  {
    __break(1u);
    goto LABEL_27;
  }

  v42 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

  v43 = *(v0 + 520);
  v44 = *(v0 + 512);
  v45 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v39;
  v46 = *(*(v0 + 496) + 48);
  *v44 = v39;
  sub_22FA4FAA4(v45, v44 + v46, &qword_27DAD8138, &qword_22FCD4A60);
  sub_22FA4F224(v44, v43, &qword_27DAD8840, &qword_22FCD8140);
  v41 = 0;
  v39 = v42;
LABEL_10:
  *(v0 + 672) = v39;
  v47 = *(v0 + 528);
  v48 = *(v0 + 520);
  v49 = *(v0 + 496);
  v50 = *(v0 + 504);
  (*(v50 + 56))(v48, v41, 1, v49);
  sub_22FA4F224(v48, v47, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v50 + 48))(v47, 1, v49) != 1)
  {
    v51 = *(v0 + 488);
    v52 = *(v0 + 472);
    v106 = *(v0 + 480);
    v53 = *(v0 + 392);
    v54 = *(v0 + 400);
    v55 = *(v0 + 384);
    v56 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v57 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v56, v55);
    v58 = *(v54 + 32);
    v58(v55 + v57, v56 + v57, v53);
    sub_22FB5570C(v55, v51);
    v58(v52, v55 + v57, v53);
    v59 = (v51 + *(v106 + 20));
    v60 = *v59;
    *(v0 + 680) = *v59;
    v61 = v59[1];
    *(v0 + 688) = v61;

    sub_22FCC8434();
    sub_22FCC8464();
    v63 = *(v0 + 464);
    v62 = *(v0 + 472);
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v66 = *(v65 + 16);
    *(v0 + 696) = v66;
    *(v0 + 704) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66(v63, v62, v64);

    v67 = sub_22FCC8664();
    v68 = sub_22FCC8F34();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 464);
    v72 = *(v0 + 392);
    v71 = *(v0 + 400);
    if (v69)
    {
      v73 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v73 = 136315395;
      *(v73 + 4) = sub_22FA2F600(v60, v61, v116);
      *(v73 + 12) = 2081;
      v74 = sub_22FCC7154();
      v76 = v75;
      v77 = *(v71 + 8);
      v77(v70, v72);
      v78 = sub_22FA2F600(v74, v76, v116);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_22FA28000, v67, v68, "[Safety] Validating prompt with id %s with annotation %{private}s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v113, -1, -1);
      MEMORY[0x23190A000](v73, -1, -1);
    }

    else
    {

      v77 = *(v71 + 8);
      v77(v70, v72);
    }

    *(v0 + 712) = v77;
    v107 = *(v0 + 336);
    v109 = *(v0 + 352);
    v80 = *(v0 + 312);
    v79 = *(v0 + 320);
    v81 = *(v0 + 272);
    v82 = sub_22FCC7184();
    v111 = v83;
    v114 = v82;
    *(v0 + 720) = v83;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v84 = sub_22FCC7104();
    *(v0 + 728) = v84;

    v85 = sub_22FCC70C4();
    (*(*(v85 - 8) + 56))(v81, 1, 1, v85);
    v86 = *(v79 + 32);
    *(v0 + 736) = v86;
    *(v0 + 744) = (v79 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v86(v107, v109, v80);
    v87 = swift_task_alloc();
    *(v0 + 752) = v87;
    *v87 = v0;
    v87[1] = sub_22FB45E10;
    v31 = *(v0 + 304);
    v38 = *(v0 + 272);
    v88 = *(v0 + 72);
    v122 = *(v0 + 336);
    v123 = 0;
    v121 = v88;
    v120 = 1;
    v119 = 0;
    v33 = v111;
    v32 = v114;
    v34 = v84;
    v35 = 0;
    v36 = 0;
    v37 = 0;

    return MEMORY[0x28219BDA0](v31, v32, v33, v34, v35, v36, v37, v38);
  }

LABEL_13:
  sub_22FCC8484();

  v89 = sub_22FCC8664();
  v90 = sub_22FCC8F34();
  v91 = os_log_type_enabled(v89, v90);
  v115 = v12;
  if (v91)
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v2 + 16);

    _os_log_impl(&dword_22FA28000, v89, v90, "Safety Received results for prompts:%ld", v92, 0xCu);
    MEMORY[0x23190A000](v92, -1, -1);
  }

  else
  {
  }

  v93 = *(v0 + 608);
  v94 = *(v0 + 568);
  v95 = *(v0 + 552);
  v96 = *(v0 + 544);
  v102 = *(v0 + 616);
  v103 = *(v0 + 536);
  v97 = *(v0 + 72);
  v98 = *(v0 + 56);

  v98[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v98[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v99 = swift_allocObject();
  *v98 = v99;
  v99[2] = MEMORY[0x277D84F90];
  v99[3] = v94;
  v99[4] = v93;
  v99[5] = v102;
  v99[6] = v7;
  v99[7] = v115;
  __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  sub_22FCC83F4();
  (*(v96 + 8))(v95, v103);

  v100 = *(v0 + 8);

  return v100(v2);
}

uint64_t sub_22FB4DBC4()
{
  v114 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 896);
  v8 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v10 = v7;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 472);
  v16 = *(v0 + 400);
  v15 = *(v0 + 408);
  v17 = *(v0 + 392);
  if (v13)
  {
    v109 = v9;
    v18 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v113[0] = v105;
    *v18 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
    v101 = v12;
    v19 = sub_22FCC96C4();
    v107 = v14;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = sub_22FA2F600(v19, v21, v113);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v7;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v102 = v25;
    _os_log_impl(&dword_22FA28000, v11, v101, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v18, 0x16u);
    sub_22FA2B420(v102, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v102, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x23190A000](v105, -1, -1);
    v26 = v18;
    v9 = v109;
    MEMORY[0x23190A000](v26, -1, -1);

    v22(v107, v17);
  }

  else
  {

    v27 = *(v16 + 8);
    v27(v15, v17);
    v27(v14, v17);
  }

  v28 = sub_22FA72A34(*(v0 + 488));
  v1 = *(v0 + 664);
  v5 = *(v0 + 632);
  v36 = *(v0 + 672);
  *(v0 + 648) = v9;
  *(v0 + 640) = v9;
  v37 = *(v0 + 568);
  if (v36 == v37)
  {
    v38 = 1;
    goto LABEL_10;
  }

  if (v36 >= v37)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v36;
  v43 = *(*(v0 + 496) + 48);
  *v41 = v36;
  sub_22FA4FAA4(v42, v41 + v43, &qword_27DAD8138, &qword_22FCD4A60);
  sub_22FA4F224(v41, v40, &qword_27DAD8840, &qword_22FCD8140);
  v38 = 0;
  v36 = v39;
LABEL_10:
  *(v0 + 672) = v36;
  v44 = *(v0 + 528);
  v45 = *(v0 + 520);
  v46 = *(v0 + 496);
  v47 = *(v0 + 504);
  (*(v47 + 56))(v45, v38, 1, v46);
  sub_22FA4F224(v45, v44, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    v48 = *(v0 + 488);
    v49 = *(v0 + 472);
    v103 = *(v0 + 480);
    v50 = *(v0 + 392);
    v51 = *(v0 + 400);
    v52 = *(v0 + 384);
    v53 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v54 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v53, v52);
    v55 = *(v51 + 32);
    v55(v52 + v54, v53 + v54, v50);
    sub_22FB5570C(v52, v48);
    v55(v49, v52 + v54, v50);
    v56 = (v48 + *(v103 + 20));
    v57 = *v56;
    *(v0 + 680) = *v56;
    v58 = v56[1];
    *(v0 + 688) = v58;

    sub_22FCC8434();
    sub_22FCC8464();
    v60 = *(v0 + 464);
    v59 = *(v0 + 472);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v63 = *(v62 + 16);
    *(v0 + 696) = v63;
    *(v0 + 704) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v63(v60, v59, v61);

    v64 = sub_22FCC8664();
    v65 = sub_22FCC8F34();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 464);
    v69 = *(v0 + 392);
    v68 = *(v0 + 400);
    if (v66)
    {
      v70 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v113[0] = v110;
      *v70 = 136315395;
      *(v70 + 4) = sub_22FA2F600(v57, v58, v113);
      *(v70 + 12) = 2081;
      v71 = sub_22FCC7154();
      v73 = v72;
      v74 = *(v68 + 8);
      v74(v67, v69);
      v75 = sub_22FA2F600(v71, v73, v113);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_22FA28000, v64, v65, "[Safety] Validating prompt with id %s with annotation %{private}s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v110, -1, -1);
      MEMORY[0x23190A000](v70, -1, -1);
    }

    else
    {

      v74 = *(v68 + 8);
      v74(v67, v69);
    }

    *(v0 + 712) = v74;
    v104 = *(v0 + 336);
    v106 = *(v0 + 352);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 272);
    v79 = sub_22FCC7184();
    v108 = v80;
    v111 = v79;
    *(v0 + 720) = v80;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v81 = sub_22FCC7104();
    *(v0 + 728) = v81;

    v82 = sub_22FCC70C4();
    (*(*(v82 - 8) + 56))(v78, 1, 1, v82);
    v83 = *(v76 + 32);
    *(v0 + 736) = v83;
    *(v0 + 744) = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v83(v104, v106, v77);
    v84 = swift_task_alloc();
    *(v0 + 752) = v84;
    *v84 = v0;
    v84[1] = sub_22FB45E10;
    v28 = *(v0 + 304);
    v35 = *(v0 + 272);
    v85 = *(v0 + 72);
    v119 = *(v0 + 336);
    v120 = 0;
    v118 = v85;
    v117 = 1;
    v116 = 0;
    v30 = v108;
    v29 = v111;
    v31 = v81;
    v32 = 0;
    v33 = 0;
    v34 = 0;

    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_13:
  sub_22FCC8484();

  v86 = sub_22FCC8664();
  v87 = sub_22FCC8F34();
  v88 = os_log_type_enabled(v86, v87);
  v112 = v9;
  if (v88)
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = *(v1 + 16);

    _os_log_impl(&dword_22FA28000, v86, v87, "Safety Received results for prompts:%ld", v89, 0xCu);
    MEMORY[0x23190A000](v89, -1, -1);
  }

  else
  {
  }

  v90 = *(v0 + 608);
  v91 = *(v0 + 568);
  v92 = *(v0 + 552);
  v93 = *(v0 + 544);
  v99 = *(v0 + 616);
  v100 = *(v0 + 536);
  v94 = *(v0 + 72);
  v95 = *(v0 + 56);

  v95[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v95[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v96 = swift_allocObject();
  *v95 = v96;
  v96[2] = MEMORY[0x277D84F90];
  v96[3] = v91;
  v96[4] = v90;
  v96[5] = v99;
  v96[6] = v5;
  v96[7] = v112;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_22FCC83F4();
  (*(v93 + 8))(v92, v100);

  v97 = *(v0 + 8);

  return v97(v1);
}

uint64_t sub_22FB4E994()
{
  v114 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 928);
  v8 = *(v0 + 648);
  (*(*(v0 + 320) + 8))(*(v0 + 360), *(v0 + 312));
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 400) + 16))(*(v0 + 408), *(v0 + 472), *(v0 + 392));
  v10 = v7;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 472);
  v16 = *(v0 + 400);
  v15 = *(v0 + 408);
  v17 = *(v0 + 392);
  if (v13)
  {
    v109 = v9;
    v18 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v113[0] = v105;
    *v18 = 136380931;
    sub_22FB55F7C(&qword_28147B058, MEMORY[0x277D3C098], MEMORY[0x277D3C0A0]);
    v101 = v12;
    v19 = sub_22FCC96C4();
    v107 = v14;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = sub_22FA2F600(v19, v21, v113);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v7;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v102 = v25;
    _os_log_impl(&dword_22FA28000, v11, v101, "[Safety] Error validating prompt suggestion with annotation %{private}s: %@", v18, 0x16u);
    sub_22FA2B420(v102, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v102, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x23190A000](v105, -1, -1);
    v26 = v18;
    v9 = v109;
    MEMORY[0x23190A000](v26, -1, -1);

    v22(v107, v17);
  }

  else
  {

    v27 = *(v16 + 8);
    v27(v15, v17);
    v27(v14, v17);
  }

  v28 = sub_22FA72A34(*(v0 + 488));
  v1 = *(v0 + 664);
  v5 = *(v0 + 632);
  v36 = *(v0 + 672);
  *(v0 + 648) = v9;
  *(v0 + 640) = v9;
  v37 = *(v0 + 568);
  if (v36 == v37)
  {
    v38 = 1;
    goto LABEL_10;
  }

  if (v36 >= v37)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

  v40 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 64) + ((*(*(v0 + 376) + 80) + 32) & ~*(*(v0 + 376) + 80)) + *(*(v0 + 376) + 72) * v36;
  v43 = *(*(v0 + 496) + 48);
  *v41 = v36;
  sub_22FA4FAA4(v42, v41 + v43, &qword_27DAD8138, &qword_22FCD4A60);
  sub_22FA4F224(v41, v40, &qword_27DAD8840, &qword_22FCD8140);
  v38 = 0;
  v36 = v39;
LABEL_10:
  *(v0 + 672) = v36;
  v44 = *(v0 + 528);
  v45 = *(v0 + 520);
  v46 = *(v0 + 496);
  v47 = *(v0 + 504);
  (*(v47 + 56))(v45, v38, 1, v46);
  sub_22FA4F224(v45, v44, &qword_27DAD8848, &qword_22FCD8148);
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    v48 = *(v0 + 488);
    v49 = *(v0 + 472);
    v103 = *(v0 + 480);
    v50 = *(v0 + 392);
    v51 = *(v0 + 400);
    v52 = *(v0 + 384);
    v53 = *(v0 + 528) + *(*(v0 + 496) + 48);
    v54 = *(*(v0 + 368) + 48);
    sub_22FB5570C(v53, v52);
    v55 = *(v51 + 32);
    v55(v52 + v54, v53 + v54, v50);
    sub_22FB5570C(v52, v48);
    v55(v49, v52 + v54, v50);
    v56 = (v48 + *(v103 + 20));
    v57 = *v56;
    *(v0 + 680) = *v56;
    v58 = v56[1];
    *(v0 + 688) = v58;

    sub_22FCC8434();
    sub_22FCC8464();
    v60 = *(v0 + 464);
    v59 = *(v0 + 472);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    sub_22FCC8454();
    sub_22FCC8454();
    v63 = *(v62 + 16);
    *(v0 + 696) = v63;
    *(v0 + 704) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v63(v60, v59, v61);

    v64 = sub_22FCC8664();
    v65 = sub_22FCC8F34();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 464);
    v69 = *(v0 + 392);
    v68 = *(v0 + 400);
    if (v66)
    {
      v70 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v113[0] = v110;
      *v70 = 136315395;
      *(v70 + 4) = sub_22FA2F600(v57, v58, v113);
      *(v70 + 12) = 2081;
      v71 = sub_22FCC7154();
      v73 = v72;
      v74 = *(v68 + 8);
      v74(v67, v69);
      v75 = sub_22FA2F600(v71, v73, v113);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_22FA28000, v64, v65, "[Safety] Validating prompt with id %s with annotation %{private}s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v110, -1, -1);
      MEMORY[0x23190A000](v70, -1, -1);
    }

    else
    {

      v74 = *(v68 + 8);
      v74(v67, v69);
    }

    *(v0 + 712) = v74;
    v104 = *(v0 + 336);
    v106 = *(v0 + 352);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 272);
    v79 = sub_22FCC7184();
    v108 = v80;
    v111 = v79;
    *(v0 + 720) = v80;
    sub_22FA4CF38(MEMORY[0x277D84F90]);
    v81 = sub_22FCC7104();
    *(v0 + 728) = v81;

    v82 = sub_22FCC70C4();
    (*(*(v82 - 8) + 56))(v78, 1, 1, v82);
    v83 = *(v76 + 32);
    *(v0 + 736) = v83;
    *(v0 + 744) = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v83(v104, v106, v77);
    v84 = swift_task_alloc();
    *(v0 + 752) = v84;
    *v84 = v0;
    v84[1] = sub_22FB45E10;
    v28 = *(v0 + 304);
    v35 = *(v0 + 272);
    v85 = *(v0 + 72);
    v119 = *(v0 + 336);
    v120 = 0;
    v118 = v85;
    v117 = 1;
    v116 = 0;
    v30 = v108;
    v29 = v111;
    v31 = v81;
    v32 = 0;
    v33 = 0;
    v34 = 0;

    return MEMORY[0x28219BDA0](v28, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_13:
  sub_22FCC8484();

  v86 = sub_22FCC8664();
  v87 = sub_22FCC8F34();
  v88 = os_log_type_enabled(v86, v87);
  v112 = v9;
  if (v88)
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = *(v1 + 16);

    _os_log_impl(&dword_22FA28000, v86, v87, "Safety Received results for prompts:%ld", v89, 0xCu);
    MEMORY[0x23190A000](v89, -1, -1);
  }

  else
  {
  }

  v90 = *(v0 + 608);
  v91 = *(v0 + 568);
  v92 = *(v0 + 552);
  v93 = *(v0 + 544);
  v99 = *(v0 + 616);
  v100 = *(v0 + 536);
  v94 = *(v0 + 72);
  v95 = *(v0 + 56);

  v95[3] = &type metadata for PromptSuggestionSafetyValidationDiagnosticContext;
  v95[4] = &protocol witness table for PromptSuggestionSafetyValidationDiagnosticContext;
  v96 = swift_allocObject();
  *v95 = v96;
  v96[2] = MEMORY[0x277D84F90];
  v96[3] = v91;
  v96[4] = v90;
  v96[5] = v99;
  v96[6] = v5;
  v96[7] = v112;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_22FCC83F4();
  (*(v93 + 8))(v92, v100);

  v97 = *(v0 + 8);

  return v97(v1);
}

uint64_t sub_22FB4F764(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for TemplatedPrompt(0) + 20));
  if (v2 == *v4 && v3 == v4[1])
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704() & 1;
  }
}

BOOL PromptSuggestionValidator.validateTimeRange(promptAnnotation:resultAssetUUIDs:eventRecorder:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = sub_22FCC6794();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v89 = &v78 - v12;
  v13 = sub_22FCC84E4();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22FCC8414();
  if ((sub_22FCC7194() & 1) == 0)
  {
    v21 = 1;
    goto LABEL_47;
  }

  if (a2[2] < 2)
  {
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22FA28000, v18, v19, "No assets to validate time range", v20, 2u);
      MEMORY[0x23190A000](v20, -1, -1);
    }

LABEL_46:
    v21 = 0;
    goto LABEL_47;
  }

  v78 = v7;
  v79 = v6;
  v81 = v17;
  v82 = v14;
  v83 = v13;
  v22 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyPhotoLibraryContext;
  v23 = sub_22FCC7E04();
  [v23 setFetchLimit_];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v24 = swift_allocObject();
  v84 = xmmword_22FCD1F90;
  *(v24 + 16) = xmmword_22FCD1F90;
  v25 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v26 = sub_22FCC8A54();
  v27 = [v25 initWithKey:v26 ascending:1];

  *(v24 + 32) = v27;
  v28 = sub_22FA3A77C(0, &qword_28147AEB0, 0x277CCAC98);
  v29 = sub_22FCC8C24();

  v30 = &selRef_setDateStyle_;
  v87 = v23;
  [v23 setSortDescriptors_];

  v31 = a2[2];
  if (v31)
  {
    v80 = v28;
    v85 = v22;
    v32 = sub_22FA86B08(v31, 0);
    v13 = sub_22FA88270(v91, (v32 + 32), v31, a2);
    v14 = v91[0];
    v33 = v91[1];
    v17 = v91[2];
    v34 = v91[3];
    v35 = v91[4];

    sub_22FA37D64(v14);
    if (v13 != v31)
    {
      __break(1u);
      goto LABEL_41;
    }

    v30 = &selRef_setDateStyle_;
  }

  v36 = objc_opt_self();
  v37 = sub_22FCC8C24();

  v80 = v36;
  v85 = [v36 fetchAssetsWithUUIDs:v37 options:v87];

  v38 = sub_22FCC7E04();
  [v38 setFetchLimit_];
  v39 = swift_allocObject();
  *(v39 + 16) = v84;
  v40 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v41 = sub_22FCC8A54();
  v42 = [v40 initWithKey:v41 ascending:0];

  *(v39 + 32) = v42;
  v43 = sub_22FCC8C24();

  v44 = v30[133];
  v86 = v38;
  [v38 v44];

  v45 = a2[2];
  if (v45)
  {
    v46 = sub_22FA86B08(a2[2], 0);
    v47 = sub_22FA88270(v91, v46 + 4, v45, a2);
    v48 = v91[0];

    sub_22FA37D64(v48);
    if (v47 != v45)
    {
      __break(1u);
    }
  }

  v14 = v82;
  v13 = v83;
  v17 = v81;
  a2 = v85;
  v49 = sub_22FCC8C24();

  v35 = [v80 fetchAssetsWithUUIDs:v49 options:v86];

  if (!a2)
  {
    goto LABEL_43;
  }

  v33 = &selRef_chosenSuggestionLocalIdentifiersForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_atDate_usingStrategy_withRejectedPersonLocalIdentifiers_;
  v50 = [a2 fetchedObjects];
  if (!v50)
  {
    goto LABEL_43;
  }

  v34 = v50;
  v32 = sub_22FA3A77C(0, &qword_28147ADE8, 0x277CD97A8);
  v31 = sub_22FCC8C44();

  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_41:
  if (!sub_22FCC92C4())
  {
    goto LABEL_42;
  }

LABEL_17:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x231908810](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v51 = *(v31 + 32);
  }

  v34 = v51;

  if (!v35)
  {
    goto LABEL_37;
  }

  v52 = [v35 v33[307]];
  if (!v52)
  {
    goto LABEL_37;
  }

  v53 = v52;
  v32 = sub_22FCC8C44();

  if (!(v32 >> 62))
  {
    v54 = v89;
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v77 = sub_22FCC92C4();
  v54 = v89;
  if (!v77)
  {
LABEL_51:

    goto LABEL_42;
  }

LABEL_24:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x231908810](0, v32);
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_54;
    }

    v55 = *(v32 + 32);
  }

  *&v84 = v55;

  v56 = [v34 creationDate];
  if (!v56)
  {

LABEL_37:
LABEL_43:
    v73 = sub_22FCC8664();
    v74 = sub_22FCC8F14();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_22FA28000, v73, v74, "Unable to determine date range for assets", v75, 2u);
      MEMORY[0x23190A000](v75, -1, -1);
    }

    goto LABEL_46;
  }

  v57 = v56;
  sub_22FCC6754();

  v58 = v84;
  v59 = [v84 creationDate];
  if (!v59)
  {
    (*(v78 + 8))(v54, v79);

    goto LABEL_37;
  }

  v60 = v59;
  sub_22FCC6754();

  sub_22FCC66D4();
  v3 = v61;
  if (qword_27DAD6EE0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v62 = *&qword_27DAD87F8;
  v21 = *&qword_27DAD87F8 <= v3;
  v63 = sub_22FCC8664();
  v64 = sub_22FCC8F04();
  v90 = v63;
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v83 = v34;
    v66 = v65;
    v67 = swift_slowAlloc();
    v91[0] = v67;
    *v66 = 136315394;
    if (v62 > v3)
    {
      v68 = 0x64656C696166;
    }

    else
    {
      v68 = 0x646573736170;
    }

    v69 = sub_22FA2F600(v68, 0xE600000000000000, v91);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2048;
    *(v66 + 14) = v3;
    v70 = v90;
    _os_log_impl(&dword_22FA28000, v90, v64, "Time range validation: %s with %f between assets", v66, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x23190A000](v67, -1, -1);
    MEMORY[0x23190A000](v66, -1, -1);
  }

  else
  {
  }

  v71 = v79;
  v72 = *(v78 + 8);
  v72(v88, v79);
  v72(v89, v71);
LABEL_47:
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22FCC83F4();
  (*(v14 + 8))(v17, v13);
  return v21;
}

uint64_t sub_22FB50260(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = v4;
  *(v5 + 568) = a3;
  *(v5 + 176) = a1;
  *(v5 + 184) = a2;
  v6 = sub_22FCC6EF4();
  *(v5 + 208) = v6;
  *(v5 + 216) = *(v6 - 8);
  *(v5 + 224) = swift_task_alloc();
  v7 = sub_22FCC78E4();
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 - 8);
  *(v5 + 248) = swift_task_alloc();
  v8 = sub_22FCC7904();
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  v9 = sub_22FCC78A4();
  *(v5 + 280) = v9;
  *(v5 + 288) = *(v9 - 8);
  *(v5 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8860, &qword_22FCD8168);
  *(v5 + 304) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8868, &qword_22FCD8170);
  *(v5 + 312) = v10;
  *(v5 + 320) = *(v10 - 8);
  *(v5 + 328) = swift_task_alloc();
  v11 = sub_22FCC8494();
  *(v5 + 336) = v11;
  *(v5 + 344) = *(v11 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8870, &qword_22FCD8178);
  *(v5 + 392) = v12;
  *(v5 + 400) = *(v12 - 8);
  *(v5 + 408) = swift_task_alloc();
  v13 = sub_22FCC78B4();
  *(v5 + 416) = v13;
  *(v5 + 424) = *(v13 - 8);
  *(v5 + 432) = swift_task_alloc();
  v14 = sub_22FCC7924();
  *(v5 + 440) = v14;
  *(v5 + 448) = *(v14 - 8);
  *(v5 + 456) = swift_task_alloc();
  v15 = sub_22FCC81A4();
  *(v5 + 464) = v15;
  *(v5 + 472) = *(v15 - 8);
  *(v5 + 480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB506E4, 0, 0);
}

uint64_t sub_22FB506E4()
{
  v46 = v0;
  v1 = v0[22];
  v45 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = (v0[22] + 32);
    v0 = &selRef_initWithWeights_bias_;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x231908810](v3, *(v43 + 176));
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v7 length] <= 0)
      {
      }

      else
      {
        v1 = &v45;
        sub_22FCC93F4();
        sub_22FCC9424();
        sub_22FCC9434();
        sub_22FCC9404();
      }

      ++v3;
      if (v9 == i)
      {
        v0 = v43;
        v10 = v45;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:
  v0[61] = v10;
  v11 = v10 < 0 || (v10 & 0x4000000000000000) != 0;
  if (v11)
  {
    v12 = sub_22FCC92C4();
  }

  else
  {
    v12 = *(v10 + 16);
  }

  v0[62] = v12;
  if (v12 <= 0)
  {

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FA28000, v17, v18, "No prompts to validate", v19, 2u);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    v20 = v0[42];
    v21 = v0[43];
    v22 = v0[23];

    v44 = sub_22FA4D238(MEMORY[0x277D84F90]);
    (*(v21 + 1))(v22, v20);

    v23 = v0[1];

    return (v23)(v44);
  }

  else
  {
    v0[63] = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;

    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (v11)
      {
        v16 = sub_22FCC92C4();
      }

      else
      {
        v16 = *(v10 + 16);
      }

      *(v15 + 4) = v16;

      _os_log_impl(&dword_22FA28000, v13, v14, "Validating %ld prompts", v15, 0xCu);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {
    }

    sub_22FCC8464();
    if ((v0[71] & 1) == 0)
    {
      sub_22FCC7D94();
    }

    v26 = v0[59];
    v25 = v0[60];
    v27 = v0[58];
    v29 = v0[53];
    v28 = v0[54];
    v30 = v0[52];
    v42 = v0[25];
    (*(v26 + 13))(v25, *MEMORY[0x277D3C670], v27);
    sub_22FCC81B4();
    (*(v26 + 1))(v25, v27);
    (*(v29 + 13))(v28, *MEMORY[0x277D3C340], v30);
    sub_22FCC7CE4();
    sub_22FA2D328((v0 + 2), (v0 + 7));

    sub_22FCC7914();
    __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher], *&v42[OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher + 24]);
    v0[64] = sub_22FCC8554();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F80, &unk_22FCD8180);
    v0[65] = v31;
    v0[15] = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v0[66] = OpaqueTypeConformance2;
    v0[16] = OpaqueTypeConformance2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    MEMORY[0x231907860](boxed_opaque_existential_1, v34, v35, v36, v37);
    sub_22FCC7EA4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    sub_22FCC8454();
    sub_22FCC8454();
    sub_22FCC8464();
    sub_22FCC8D24();
    *(v0 + 140) = *MEMORY[0x277D3C338];
    v38 = MEMORY[0x277D84F98];
    *(v0 + 141) = *MEMORY[0x277D3C330];
    v0[68] = v38;
    v0[67] = 0;
    v39 = swift_task_alloc();
    v0[69] = v39;
    *v39 = v0;
    *(v39 + 1) = sub_22FB50F70;
    v40 = v0[38];
    v41 = v0[39];

    return MEMORY[0x2822003E8](v40, 0, 0, v41);
  }
}

uint64_t sub_22FB50F70()
{

  return MEMORY[0x2822009F8](sub_22FB5106C, 0, 0);
}

uint64_t sub_22FB5106C()
{
  v211 = v0;
  v1 = v0;
  v2 = v0[38];
  v3 = v0[36];
  v4 = v1[35];
  v207 = v1;
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v1[67];
    (*(v1[40] + 8))(v1[41], v1[39]);
    sub_22FCC8484();
    if (v5)
    {
      v7 = v1[56];
      v6 = v1[57];
      v8 = v1[55];
      v9 = v1[50];
      v10 = v1[51];
      v11 = v1[49];
      v12 = v1[47];
      v13 = v1[43];
      v14 = v1[42];
      v15 = v207[23];

      (*(v9 + 8))(v10, v11);
      (*(v7 + 8))(v6, v8);
      __swift_destroy_boxed_opaque_existential_0(v207 + 2);

      v16 = *(v13 + 8);
      v16(v12, v14);
      v17 = v14;
      v18 = v207;
      v16(v15, v17);
LABEL_14:

      v77 = v18[1];

      return v77();
    }

    sub_22FCC8464();
    v63 = v1[68];
    v85 = MEMORY[0x277D84F98];
    v208 = MEMORY[0x277D84F98];
    v209[0] = v63;
    v86 = -1 << *(v63 + 32);
    v87 = ~v86;
    v88 = *(v63 + 64);
    v89 = -v86;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    else
    {
      v90 = -1;
    }

    v209[1] = v63 + 64;
    v209[2] = v87;
    v209[3] = 0;
    v209[4] = v90 & v88;
    v209[5] = 0;

    sub_22FAB49FC();
    if (v92)
    {
      v94 = v91;
      v95 = v92;
      v96 = v93;
      v190 = (v1[43] + 32);
      v196 = (v1[27] + 8);
      v188 = *MEMORY[0x277D3BF78];
      v194 = *MEMORY[0x277D3BF70];
      v192 = (v1 + 65);
      *(&v97 + 1) = 2;
      *&v97 = 136380931;
      v187 = v97;
      while (1)
      {
        sub_22FCC8434();
        sub_22FCC8464();
        v198 = v94;

        sub_22FAA99B0(v98);

        sub_22FCC6F24();

        v99 = *(v96 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8858, &unk_22FCD8150);
        v100 = sub_22FCC6F04();
        v101 = *(v100 - 8);
        v102 = *(v101 + 72);
        v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        if (v99 >> 3 >= 0x271)
        {
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_22FCD17F0;
          v112 = v111 + v103;
          v113 = *(v101 + 104);
          v113(v111 + v103, v188, v100);
          v113(v112 + v102, v194, v100);
          v105 = sub_22FCC8664();
          v114 = sub_22FCC8F34();
          if (!os_log_type_enabled(v105, v114))
          {
LABEL_32:
            v1 = v207;
            goto LABEL_33;
          }

          v107 = swift_slowAlloc();
          *v107 = 134217984;
          *(v107 + 4) = 5000;
          v108 = v114;
          v109 = v105;
          v110 = "More than %ld retrieved assets, switching to extended safe mode";
        }

        else
        {
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_22FCD1800;
          (*(v101 + 104))(v104 + v103, v194, v100);
          v105 = sub_22FCC8664();
          v106 = sub_22FCC8F34();
          if (!os_log_type_enabled(v105, v106))
          {
            goto LABEL_32;
          }

          v107 = swift_slowAlloc();
          *v107 = 134217984;
          *(v107 + 4) = 5000;
          v108 = v106;
          v109 = v105;
          v110 = "Less than %ld retrieved assets, good with safe mode";
        }

        _os_log_impl(&dword_22FA28000, v109, v108, v110, v107, 0xCu);
        v1 = v207;
        MEMORY[0x23190A000](v107, -1, -1);
LABEL_33:
        v200 = *v192;

        *(v1 + 10) = v200;
        __swift_allocate_boxed_opaque_existential_1(v1 + 17);
        MEMORY[0x231907860]();
        sub_22FCC6F14();
        v115 = v1[45];
        v116 = v1[44];
        v117 = v1[42];

        __swift_destroy_boxed_opaque_existential_0(v1 + 17);
        sub_22FCC8454();
        (*v190)(v116, v115, v117);
        v118 = sub_22FCC7D44();

        v119 = sub_22FCC8664();
        v120 = sub_22FCC8F34();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v210[0] = v122;
          *v121 = v187;
          v123 = v198;
          *(v121 + 4) = sub_22FA2F600(v198, v95, v210);
          *(v121 + 12) = 2048;
          *(v121 + 14) = *(v118 + 16);

          _os_log_impl(&dword_22FA28000, v119, v120, "Validated prompt %{private}s. Assets processed:%ld", v121, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x23190A000](v122, -1, -1);
          MEMORY[0x23190A000](v121, -1, -1);
        }

        else
        {

          v123 = v198;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v210[0] = v208;
        sub_22FB25758(v118, v123, v95, isUniquelyReferenced_nonNull_native);

        v205 = v210[0];
        v208 = v210[0];
        sub_22FCC8484();
        (*v196)(v1[28], v1[26]);
        sub_22FAB49FC();
        v94 = v125;
        v95 = v126;
        v96 = v127;
        if (!v126)
        {
          goto LABEL_43;
        }
      }
    }

    v205 = v85;
LABEL_43:
    sub_22FA37D64(v209[0]);
    sub_22FCC8484();
    v134 = v1[61];
    v133 = v1[62];
    v209[0] = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v133, 0);
    v135 = 0;
    v136 = v209[0];
    v137 = v134 & 0xC000000000000001;
    v202 = v134 + 32;
    do
    {
      if (v137)
      {
        v138 = MEMORY[0x231908810](v135, v207[61]);
      }

      else
      {
        v138 = *(v202 + 8 * v135);
      }

      v139 = v138;
      v140 = [v138 string];
      v141 = sub_22FCC8A84();
      v143 = v142;

      v209[0] = v136;
      v145 = *(v136 + 16);
      v144 = *(v136 + 24);
      v146 = v145 + 1;
      if (v145 >= v144 >> 1)
      {
        v129 = sub_22FA86EA8((v144 > 1), v145 + 1, 1);
        v136 = v209[0];
      }

      v147 = v207[62];
      ++v135;
      *(v136 + 16) = v146;
      v148 = v136 + 16 * v145;
      *(v148 + 32) = v141;
      *(v148 + 40) = v143;
    }

    while (v135 != v147);
    v149 = 0;
    v150 = v136 + 40;
    v151 = MEMORY[0x277D84F90];
    do
    {
      v203 = v151;
      v152 = (v150 + 16 * v149);
      v153 = v149;
      while (1)
      {
        if (v153 > v145)
        {
          __break(1u);
LABEL_81:
          __break(1u);
          return MEMORY[0x2822003E8](v129, v131, v132, v130);
        }

        v149 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          goto LABEL_81;
        }

        v155 = *(v152 - 1);
        v154 = *v152;
        v156 = *(v205 + 16);

        if (!v156)
        {
          break;
        }

        sub_22FA2DB54(v155, v154);
        if ((v157 & 1) == 0)
        {
          break;
        }

        ++v153;
        v152 += 2;
        if (v149 == v146)
        {
          v151 = v203;
          goto LABEL_63;
        }
      }

      v151 = v203;
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v209[0] = v203;
      if ((v129 & 1) == 0)
      {
        v129 = sub_22FA86EA8(0, *(v203 + 16) + 1, 1);
        v151 = v209[0];
      }

      v159 = *(v151 + 16);
      v158 = *(v151 + 24);
      if (v159 >= v158 >> 1)
      {
        v129 = sub_22FA86EA8((v158 > 1), v159 + 1, 1);
        v151 = v209[0];
      }

      *(v151 + 16) = v159 + 1;
      v160 = v151 + 16 * v159;
      *(v160 + 32) = v155;
      *(v160 + 40) = v154;
      v150 = v136 + 40;
    }

    while (v149 != v146);
LABEL_63:

    if (*(v151 + 16))
    {
      v161 = v207;
      v162 = sub_22FCC8664();
      v163 = sub_22FCC8F34();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v209[0] = v165;
        *v164 = 136380675;
        v166 = MEMORY[0x2319080B0](v151, MEMORY[0x277D837D0]);
        v168 = sub_22FA2F600(v166, v167, v209);

        *(v164 + 4) = v168;
        _os_log_impl(&dword_22FA28000, v162, v163, "No validation results for prompts: %{private}s", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v165);
        MEMORY[0x23190A000](v165, -1, -1);
        MEMORY[0x23190A000](v164, -1, -1);
      }

      sub_22FB3DB04(v151, &v208);
    }

    else
    {
      v161 = v207;
    }

    v169 = v161[62];

    v170 = v208;
    if (v169 != *(v208 + 16))
    {

      v171 = sub_22FCC8664();
      v172 = sub_22FCC8F14();
      v173 = os_log_type_enabled(v171, v172);
      v174 = v161[61];
      if (v173)
      {
        v175 = swift_slowAlloc();
        *v175 = 134218240;
        if (v174 < 0 || (v174 & 0x4000000000000000) != 0)
        {
          v176 = sub_22FCC92C4();
        }

        else
        {
          v176 = *(v161[61] + 16);
        }

        *(v175 + 4) = v176;

        *(v175 + 12) = 2048;
        *(v175 + 14) = *(v170 + 16);
        _os_log_impl(&dword_22FA28000, v171, v172, "Wrong number of search results for queries. Expected %ld, got %ld", v175, 0x16u);
        MEMORY[0x23190A000](v175, -1, -1);
      }

      else
      {
      }
    }

    v177 = v161[56];
    v178 = v161[50];
    sub_22FCC8484();
    v179 = (v178 + 8);
    v180 = v161[61];
    v181 = v161[57];
    v182 = v161[55];
    v183 = v161[51];
    v184 = v161;
    v185 = v161[49];
    v206 = sub_22FB3D840(MEMORY[0x277D84F98], v180, &v208);

    (*v179)(v183, v185);
    (*(v177 + 8))(v181, v182);
    __swift_destroy_boxed_opaque_existential_0(v184 + 2);

    v186 = v184[1];

    return v186(v206);
  }

  else
  {
    v19 = *(v1 + 140);
    v20 = v1[37];
    (*(v3 + 32))(v20, v2, v4);
    v21 = (*(v3 + 88))(v20, v4);
    if (v21 == v19)
    {
      v22 = v1[68];
      v23 = v1[36];
      v24 = v1[37];
      v26 = v1[34];
      v25 = v1[35];
      v27 = v1;
      v28 = v1[33];
      v30 = v27[31];
      v29 = v27[32];
      v31 = v27[29];
      v32 = v27[30];
      (*(v23 + 96))(v24, v25);
      (*(v28 + 32))(v26, v24, v29);
      v33 = sub_22FCC78C4();
      sub_22FCC78F4();
      v34 = sub_22FCC78D4();
      (*(v32 + 8))(v30, v31);
      v35 = [v34 string];
      v36 = sub_22FCC8A84();
      v38 = v37;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v209[0] = v22;
      sub_22FB25798(v33, v36, v38, v39);

      v40 = v34;
      v41 = sub_22FCC8664();
      v42 = sub_22FCC8F34();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138478083;
        *(v43 + 4) = v40;
        *v44 = v40;
        *(v43 + 12) = 2048;
        v45 = *(v33 + 16);
        v46 = v40;

        *(v43 + 14) = v45;

        _os_log_impl(&dword_22FA28000, v41, v42, "Finished searching for prompt %{private}@. Assets received: %ld", v43, 0x16u);
        sub_22FA2B420(v44, &unk_27DAD7B10, &unk_22FCD21C0);
        MEMORY[0x23190A000](v44, -1, -1);
        MEMORY[0x23190A000](v43, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v1 = v207;
      v64 = v207[67];
      sub_22FCC8474();
      if (v64)
      {
        v197 = v207[57];
        v65 = v207[56];
        v193 = v207[51];
        v195 = v207[55];
        v66 = v207[50];
        v204 = v207[48];
        v199 = v207[47];
        v67 = v207[42];
        v68 = v207[43];
        v189 = v207[41];
        v191 = v207[49];
        v69 = v40;
        v71 = v207[39];
        v70 = v207[40];
        v72 = v207[34];
        v73 = v207[33];
        v74 = v207[32];
        v201 = v207[23];

        v75 = v72;
        v18 = v207;
        (*(v73 + 8))(v75, v74);
        (*(v70 + 8))(v189, v71);
        (*(v66 + 8))(v193, v191);
        (*(v65 + 8))(v197, v195);
        __swift_destroy_boxed_opaque_existential_0(v207 + 2);

        v76 = *(v68 + 8);
        v76(v199, v67);
        v76(v204, v67);
        v76(v201, v67);
        goto LABEL_14;
      }

      (*(v207[33] + 8))(v207[34], v207[32]);

      v207[68] = v22;
      v207[67] = 0;
    }

    else if (v21 == *(v1 + 141))
    {
      v47 = v1[37];
      (*(v1[36] + 96))(v47, v1[35]);
      v48 = *(v47 + 8);
      v49 = *v47;
      v50 = v48;
      v51 = sub_22FCC8664();
      v52 = sub_22FCC8F14();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v209[0] = v55;
        *v53 = 136643075;
        v56 = [v49 string];
        v57 = sub_22FCC8A84();
        v59 = v58;

        v60 = sub_22FA2F600(v57, v59, v209);

        *(v53 + 4) = v60;
        v1 = v207;
        *(v53 + 12) = 2112;
        v61 = v48;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 14) = v62;
        *v54 = v62;
        _os_log_impl(&dword_22FA28000, v51, v52, "Error when validating suggestion with query '%{sensitive}s': %@", v53, 0x16u);
        sub_22FA2B420(v54, &unk_27DAD7B10, &unk_22FCD21C0);
        MEMORY[0x23190A000](v54, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23190A000](v55, -1, -1);
        MEMORY[0x23190A000](v53, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v79 = sub_22FCC8664();
      v80 = sub_22FCC8F14();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_22FA28000, v79, v80, "Error when validating suggestion: UNKNOWN RESULT", v81, 2u);
        MEMORY[0x23190A000](v81, -1, -1);
      }

      v83 = v1[36];
      v82 = v1[37];
      v84 = v1[35];

      (*(v83 + 8))(v82, v84);
    }

    v128 = swift_task_alloc();
    v1[69] = v128;
    *v128 = v1;
    v128[1] = sub_22FB50F70;
    v129 = v1[38];
    v130 = v1[39];
    v131 = 0;
    v132 = 0;

    return MEMORY[0x2822003E8](v129, v131, v132, v130);
  }
}