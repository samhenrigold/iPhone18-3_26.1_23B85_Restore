uint64_t sub_1DAB1E42C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1DAB1F498;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 1056));
    v3 = sub_1DAB1E560;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB1E560(uint64_t a1)
{
  v49 = v1;
  v2 = *(v1 + 976);
  if (v2)
  {
    v3 = *(v1 + 968);
    v4 = *(v1 + 984);
    v5 = *(v1 + 992);
    v6 = *(v1 + 1000);
    v7 = *(v1 + 1008);
    sub_1DACB6D24();
    v8 = *(v1 + 1120);
    v9 = *(v1 + 1128);
    __swift_project_boxed_opaque_existential_1((v1 + 1096), v8);
    *&v40 = v3;
    *(&v40 + 1) = v2;
    *&v41 = v4;
    *(&v41 + 1) = v5;
    *&v42 = v6;
    WORD4(v42) = v7;
    *(v1 + 1424) = (*(v9 + 112))(&v40, v8, v9);
    sub_1DAA75E60(v3, v2, v4, v5, v6);
    v10 = swift_task_alloc();
    *(v1 + 1432) = v10;
    *v10 = v1;
    v10[1] = sub_1DAB1E894;

    return MEMORY[0x1EEE44EE0](v1 + 1232);
  }

  else
  {
    sub_1DAB1F8FC(*(v1 + 1336), *(v1 + 1344), *(v1 + 1352));
    v11 = *(v1 + 1392);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v1 + 1312);
      v39 = MEMORY[0x1E69E7CC0];
      sub_1DAB25CC8(0, v12, 0);
      v14 = v39;
      v15 = v11 + 32;
      for (i = v12 - 1; ; --i)
      {
        v17 = *(v1 + 1320);
        *(v1 + 16) = *v15;
        v18 = *(v15 + 64);
        v20 = *(v15 + 16);
        v19 = *(v15 + 32);
        *(v1 + 64) = *(v15 + 48);
        *(v1 + 80) = v18;
        *(v1 + 32) = v20;
        *(v1 + 48) = v19;
        v22 = *(v15 + 96);
        v21 = *(v15 + 112);
        v23 = *(v15 + 80);
        *(v1 + 144) = *(v15 + 128);
        *(v1 + 112) = v22;
        *(v1 + 128) = v21;
        *(v1 + 96) = v23;
        v24 = *(v15 + 112);
        v46 = *(v15 + 96);
        v47 = v24;
        v48 = *(v15 + 128);
        v25 = *(v15 + 48);
        v42 = *(v15 + 32);
        v43 = v25;
        v26 = *(v15 + 80);
        v44 = *(v15 + 64);
        v45 = v26;
        v27 = *(v15 + 16);
        v40 = *v15;
        v41 = v27;
        sub_1DAA806E4(v1 + 16, v1 + 152);
        SymbolEntity.init(from:)(&v40, v17);
        v29 = *(v39 + 16);
        v28 = *(v39 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1DAB25CC8((v28 > 1), v29 + 1, 1);
        }

        v30 = *(v1 + 1320);
        *(v39 + 16) = v29 + 1;
        sub_1DAAF5AA4(v30, v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29);
        if (!i)
        {
          break;
        }

        v15 += 136;
      }

      v31 = *(v1 + 1352);
      v32 = *(v1 + 1344);
      v33 = *(v1 + 1336);

      sub_1DAB1F8FC(v33, v32, v31);
    }

    else
    {
      v34 = *(v1 + 1352);
      v35 = *(v1 + 1344);
      v36 = *(v1 + 1336);

      sub_1DAB1F8FC(v36, v35, v34);
      v14 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v1 + 8);

    return v37(v14);
  }
}

uint64_t sub_1DAB1E894()
{
  v2 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {

    v3 = sub_1DAB1F6A8;
  }

  else
  {
    sub_1DAB1F8FC(v2[167], v2[168], v2[169]);

    __swift_destroy_boxed_opaque_existential_1(v2 + 137);
    v3 = sub_1DAB1E9E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DAB1E9E0()
{
  v132 = v0;
  v1 = (v0 + 424);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 1232);
  sub_1DAB1F8B8(v4, v3, v2);
  sub_1DACB71E4();
  v6 = sub_1DACB8C74();
  v7 = sub_1DACB9914();
  sub_1DAB1F8FC(v4, v3, v2);

  v124 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v131[0] = v9;
    *v8 = 136315394;
    sub_1DACB6ED4();
    v10 = sub_1DAA7ABE4(*(v0 + 1176), *(v0 + 1184), v131);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = *(v5 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      log = v9;
      v119 = v8;
      v121 = v7;
      v123 = v6;
      *&v129[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v11, 0);
      v12 = *&v129[0];
      v13 = *(*&v129[0] + 16);
      v14 = 16 * v13;
      v15 = (v5 + 40);
      do
      {
        v16 = *v15;
        v125 = *(v15 - 1);
        *&v129[0] = v12;
        v17 = v13 + 1;
        v18 = *(v12 + 24);
        v19 = v12;
        sub_1DACB71E4();
        v12 = v19;
        if (v13 >= v18 >> 1)
        {
          sub_1DAA5859C((v18 > 1), v17, 1);
          v12 = *&v129[0];
        }

        *(v12 + 16) = v17;
        v20 = v12 + v14;
        *(v20 + 32) = v125;
        *(v20 + 40) = v16;
        v14 += 16;
        v15 += 17;
        ++v13;
        --v11;
      }

      while (v11);
      v5 = v124;
      v6 = v123;
      v7 = v121;
      v9 = log;
      v8 = v119;
    }

    *(v0 + 1256) = v12;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v21 = sub_1DACB9214();
    v23 = v22;

    v24 = sub_1DAA7ABE4(v21, v23, v131);

    *(v8 + 14) = v24;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "Filtering stocks against membership of watchlist='%s', watchlistStocks=[%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v25 = 0;
  v26 = (v0 + 696);
  v27 = *(v0 + 1392) + 32;
  v28 = MEMORY[0x1E69E7CC0];
  v126 = v27;
  do
  {
    v29 = v27 + 136 * v25++;
    while (1)
    {
      if ((v25 - 1) >= *(*(v0 + 1392) + 16))
      {
        __break(1u);
        return;
      }

      *(v0 + 288) = *v29;
      v30 = *(v29 + 16);
      v31 = *(v29 + 32);
      v32 = *(v29 + 64);
      *(v0 + 336) = *(v29 + 48);
      *(v0 + 352) = v32;
      *(v0 + 304) = v30;
      *(v0 + 320) = v31;
      v33 = *(v29 + 80);
      v34 = *(v29 + 96);
      v35 = *(v29 + 112);
      v36 = *(v29 + 128);
      *(v0 + 416) = v36;
      *(v0 + 384) = v34;
      *(v0 + 400) = v35;
      *(v0 + 368) = v33;
      v37 = *(v0 + 336);
      *(v0 + 456) = *(v0 + 320);
      *(v0 + 472) = v37;
      v38 = *(v0 + 304);
      *v1 = *(v0 + 288);
      *(v0 + 440) = v38;
      *(v0 + 552) = v36;
      v39 = *(v0 + 400);
      *(v0 + 520) = *(v0 + 384);
      *(v0 + 536) = v39;
      v40 = *(v0 + 368);
      *(v0 + 488) = *(v0 + 352);
      *(v0 + 504) = v40;
      v41 = swift_task_alloc();
      *(v41 + 16) = v1;
      sub_1DAA806E4(v0 + 288, v0 + 560);
      v42 = sub_1DAC784F4(sub_1DAB1F940, v41, v5);

      if ((v42 & 1) == 0)
      {
        break;
      }

      v43 = *(v0 + 1400);
      sub_1DAA9B1C8(v0 + 288);
      v29 += 136;
      v44 = v25++ == v43;
      if (v44)
      {
        goto LABEL_22;
      }
    }

    *&v129[0] = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DAA57914(0, v28[2] + 1, 1);
      v28 = *&v129[0];
    }

    v46 = v28[2];
    v45 = v28[3];
    if (v46 >= v45 >> 1)
    {
      sub_1DAA57914((v45 > 1), v46 + 1, 1);
      v28 = *&v129[0];
    }

    v47 = *(v0 + 1400);
    v28[2] = v46 + 1;
    v48 = &v28[17 * v46];
    *(v48 + 2) = *(v0 + 288);
    v49 = *(v0 + 304);
    v50 = *(v0 + 320);
    v51 = *(v0 + 352);
    *(v48 + 5) = *(v0 + 336);
    *(v48 + 6) = v51;
    *(v48 + 3) = v49;
    *(v48 + 4) = v50;
    v52 = *(v0 + 368);
    v53 = *(v0 + 384);
    v54 = *(v0 + 400);
    v48[20] = *(v0 + 416);
    *(v48 + 8) = v53;
    *(v48 + 9) = v54;
    *(v48 + 7) = v52;
    v44 = v47 == v25;
    v5 = v124;
    v27 = v126;
  }

  while (!v44);
LABEL_22:
  v55 = *(v0 + 1352);
  v56 = *(v0 + 1344);
  v57 = *(v0 + 1336);

  sub_1DAB1F8B8(v57, v56, v55);
  sub_1DACB71E4();
  sub_1DACB71F4();
  v58 = sub_1DACB8C74();
  v59 = sub_1DACB9914();
  sub_1DAB1F8FC(v57, v56, v55);

  if (os_log_type_enabled(v58, v59))
  {
    v116 = v59;
    loga = v58;
    v60 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v131[0] = v115;
    *v60 = 136315650;
    sub_1DACB6ED4();
    v61 = sub_1DAA7ABE4(*(v0 + 1160), *(v0 + 1168), v131);

    *(v60 + 4) = v61;
    *(v60 + 12) = 2080;
    v62 = *(v5 + 16);
    v120 = v60;
    v122 = v28;
    if (v62)
    {
      *&v129[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v62, 0);
      v63 = 0;
      v64 = *&v129[0];
      v65 = *(*&v129[0] + 16);
      v66 = 16 * v65;
      do
      {
        v67 = *(v5 + v63 + 40);
        v127 = *(v5 + v63 + 32);
        *&v129[0] = v64;
        v68 = *(v64 + 24);
        v69 = v65 + 1;
        sub_1DACB71E4();
        if (v65 >= v68 >> 1)
        {
          sub_1DAA5859C((v68 > 1), v69, 1);
          v64 = *&v129[0];
        }

        *(v64 + 16) = v69;
        v70 = v64 + v66;
        v5 = v124;
        *(v70 + 32) = v127;
        *(v70 + 40) = v67;
        v66 += 16;
        v63 += 136;
        ++v65;
        --v62;
      }

      while (v62);

      v60 = v120;
      v28 = v122;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1240) = v64;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v94 = sub_1DACB9214();
    v96 = v95;

    v97 = sub_1DAA7ABE4(v94, v96, v131);

    *(v60 + 14) = v97;
    *(v60 + 22) = 2080;
    v98 = v28[2];
    v99 = MEMORY[0x1E69E7CC0];
    if (v98)
    {
      *&v129[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v98, 0);
      v99 = *&v129[0];
      v100 = *(*&v129[0] + 16);
      v101 = 16 * v100;
      v102 = v28 + 5;
      do
      {
        v103 = *v102;
        v128 = *(v102 - 1);
        *&v129[0] = v99;
        v104 = v100 + 1;
        v105 = *(v99 + 24);
        sub_1DACB71E4();
        if (v100 >= v105 >> 1)
        {
          sub_1DAA5859C((v105 > 1), v104, 1);
          v99 = *&v129[0];
        }

        *(v99 + 16) = v104;
        v106 = v99 + v101;
        *(v106 + 32) = v128;
        *(v106 + 40) = v103;
        v101 += 16;
        v102 += 17;
        ++v100;
        --v98;
      }

      while (v98);
      v60 = v120;
      v28 = v122;
    }

    *(v0 + 1248) = v99;
    v107 = sub_1DACB9214();
    v109 = v108;

    v110 = sub_1DAA7ABE4(v107, v109, v131);

    *(v60 + 24) = v110;
    _os_log_impl(&dword_1DAA3F000, loga, v116, "Filtered stocks against membership of watchlist='%s', watchlistStocks=[%s], filteredStocks=[%s]", v60, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v115, -1, -1);
    MEMORY[0x1E1278C00](v60, -1, -1);

    v71 = v28[2];
    if (!v71)
    {
      goto LABEL_44;
    }

LABEL_30:
    v72 = *(v0 + 1312);
    v131[0] = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v71, 0);
    v73 = v131[0];
    v74 = v71 - 1;
    for (i = 4; ; i += 17)
    {
      v76 = *(v0 + 1328);
      *v26 = *&v28[i];
      v77 = *&v28[i + 8];
      v79 = *&v28[i + 2];
      v78 = *&v28[i + 4];
      *(v0 + 744) = *&v28[i + 6];
      *(v0 + 760) = v77;
      *(v0 + 712) = v79;
      *(v0 + 728) = v78;
      v81 = *&v28[i + 12];
      v80 = *&v28[i + 14];
      v82 = v28[i + 16];
      v83 = *&v28[i + 10];
      *(v0 + 824) = v82;
      *(v0 + 792) = v81;
      *(v0 + 808) = v80;
      *(v0 + 776) = v83;
      v84 = *(v0 + 808);
      v129[6] = *(v0 + 792);
      v129[7] = v84;
      v130 = v82;
      v85 = *(v0 + 744);
      v129[2] = *(v0 + 728);
      v129[3] = v85;
      v86 = *(v0 + 776);
      v129[4] = *(v0 + 760);
      v129[5] = v86;
      v87 = *(v0 + 712);
      v129[0] = *v26;
      v129[1] = v87;
      sub_1DAA806E4(v0 + 696, v0 + 832);
      SymbolEntity.init(from:)(v129, v76);
      v131[0] = v73;
      v89 = *(v73 + 16);
      v88 = *(v73 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_1DAB25CC8((v88 > 1), v89 + 1, 1);
        v73 = v131[0];
      }

      v90 = *(v0 + 1328);
      *(v73 + 16) = v89 + 1;
      sub_1DAAF5AA4(v90, v73 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v89);
      if (!v74)
      {
        break;
      }

      --v74;
    }

    v91 = *(v0 + 1352);
    v92 = *(v0 + 1344);
    v93 = *(v0 + 1336);

    sub_1DAB1F8FC(v93, v92, v91);
    goto LABEL_45;
  }

  v71 = v28[2];
  if (v71)
  {
    goto LABEL_30;
  }

LABEL_44:
  v111 = *(v0 + 1352);
  v112 = *(v0 + 1344);
  v113 = *(v0 + 1336);

  sub_1DAB1F8FC(v113, v112, v111);
  v73 = MEMORY[0x1E69E7CC0];
LABEL_45:

  v114 = *(v0 + 8);

  v114(v73);
}

uint64_t sub_1DAB1F3F8()
{
  sub_1DAB1F8FC(v0[167], v0[168], v0[169]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 127);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DAB1F498()
{
  v32 = v0;
  sub_1DAB1F8FC(*(v0 + 1336), *(v0 + 1344), *(v0 + 1352));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
  v1 = *(v0 + 1392);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 1312);
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v2, 0);
    v4 = v29;
    v5 = v1 + 32;
    for (i = v2 - 1; ; --i)
    {
      v7 = *(v0 + 1320);
      *(v0 + 16) = *v5;
      v8 = *(v5 + 64);
      v10 = *(v5 + 16);
      v9 = *(v5 + 32);
      *(v0 + 64) = *(v5 + 48);
      *(v0 + 80) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = *(v5 + 96);
      v11 = *(v5 + 112);
      v13 = *(v5 + 80);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v11;
      *(v0 + 96) = v13;
      v14 = *(v5 + 112);
      v30[6] = *(v5 + 96);
      v30[7] = v14;
      v31 = *(v5 + 128);
      v15 = *(v5 + 48);
      v30[2] = *(v5 + 32);
      v30[3] = v15;
      v16 = *(v5 + 80);
      v30[4] = *(v5 + 64);
      v30[5] = v16;
      v17 = *(v5 + 16);
      v30[0] = *v5;
      v30[1] = v17;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v30, v7);
      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DAB25CC8((v18 > 1), v19 + 1, 1);
      }

      v20 = *(v0 + 1320);
      *(v29 + 16) = v19 + 1;
      sub_1DAAF5AA4(v20, v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19);
      if (!i)
      {
        break;
      }

      v5 += 136;
    }

    v21 = *(v0 + 1352);
    v22 = *(v0 + 1344);
    v23 = *(v0 + 1336);

    sub_1DAB1F8FC(v23, v22, v21);
  }

  else
  {
    v24 = *(v0 + 1352);
    v25 = *(v0 + 1344);
    v26 = *(v0 + 1336);

    sub_1DAB1F8FC(v26, v25, v24);
    v4 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v0 + 8);

  return v27(v4);
}

uint64_t sub_1DAB1F6A8()
{
  v32 = v0;
  sub_1DAB1F8FC(*(v0 + 1336), *(v0 + 1344), *(v0 + 1352));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
  v1 = *(v0 + 1392);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 1312);
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v2, 0);
    v4 = v29;
    v5 = v1 + 32;
    for (i = v2 - 1; ; --i)
    {
      v7 = *(v0 + 1320);
      *(v0 + 16) = *v5;
      v8 = *(v5 + 64);
      v10 = *(v5 + 16);
      v9 = *(v5 + 32);
      *(v0 + 64) = *(v5 + 48);
      *(v0 + 80) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = *(v5 + 96);
      v11 = *(v5 + 112);
      v13 = *(v5 + 80);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v11;
      *(v0 + 96) = v13;
      v14 = *(v5 + 112);
      v30[6] = *(v5 + 96);
      v30[7] = v14;
      v31 = *(v5 + 128);
      v15 = *(v5 + 48);
      v30[2] = *(v5 + 32);
      v30[3] = v15;
      v16 = *(v5 + 80);
      v30[4] = *(v5 + 64);
      v30[5] = v16;
      v17 = *(v5 + 16);
      v30[0] = *v5;
      v30[1] = v17;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v30, v7);
      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DAB25CC8((v18 > 1), v19 + 1, 1);
      }

      v20 = *(v0 + 1320);
      *(v29 + 16) = v19 + 1;
      sub_1DAAF5AA4(v20, v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19);
      if (!i)
      {
        break;
      }

      v5 += 136;
    }

    v21 = *(v0 + 1352);
    v22 = *(v0 + 1344);
    v23 = *(v0 + 1336);

    sub_1DAB1F8FC(v23, v22, v21);
  }

  else
  {
    v24 = *(v0 + 1352);
    v25 = *(v0 + 1344);
    v26 = *(v0 + 1336);

    sub_1DAB1F8FC(v26, v25, v24);
    v4 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v0 + 8);

  return v27(v4);
}

void sub_1DAB1F8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1DACB71E4();

    sub_1DACB71F4();
  }
}

void sub_1DAB1F8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1DAB1F940(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v3;
  v15 = *(a1 + 128);
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(v2 + 112);
  v12[6] = *(v2 + 96);
  v12[7] = v7;
  v13 = *(v2 + 128);
  v8 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v8;
  v9 = *(v2 + 80);
  v12[4] = *(v2 + 64);
  v12[5] = v9;
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  return sub_1DAA9B398(v14, v12) & 1;
}

void sub_1DAB1F9D0(uint64_t a1)
{
  if (!qword_1ECBE7078)
  {
    sub_1DAB1FA2C();
    v1 = sub_1DACB7314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7078);
    }
  }
}

unint64_t sub_1DAB1FA2C()
{
  result = qword_1EE11DD30;
  if (!qword_1EE11DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD30);
  }

  return result;
}

uint64_t sub_1DAB1FAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA52F58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB1FB0C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB1FB78()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[8])
  {
    v4 = v0[8];
  }

  else
  {
    v5 = v0[6];
    v6 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v5);
    (*(v6 + 8))(v5, v6);
    v7 = *(v3 + 34);
    v8 = sub_1DAA640AC(v3);
    MEMORY[0x1EEE9AC00](v8);
    *(&v10 - 2) = v0;
    *(&v10 - 1) = v7;
    sub_1DAA65E94();
    swift_allocObject();
    v4 = sub_1DACB8B44();
    v0[8] = v4;
    sub_1DACB71F4();
  }

  sub_1DACB71F4();
  return v4;
}

uint64_t sub_1DAB1FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a5;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = sub_1DAA98788;
  *(v13 + 56) = v12;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB1FDC4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v11 = *a1;
  v12 = [objc_allocWithZone(SCWDatabasePollingCondition) initWithMinIntervalSinceLastSync_];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v16[4] = sub_1DAB20020;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DAB10208;
  v16[3] = &block_descriptor_3;
  v15 = _Block_copy(v16);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v11 pollForChangesWithCondition:v12 completion:v15];
  _Block_release(v15);
}

void sub_1DAB1FF2C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 0;
  }

  if (a1)
  {
    v9 = a1;
    a3(a1);
  }

  else
  {
    a5(Strong);
  }
}

uint64_t sub_1DAB20030@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (a2)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *a7 = v7;
  a7[1] = v9;
  if (a6)
  {
    v12 = a5;
  }

  else
  {
    v12 = 0;
  }

  a7[2] = v10;
  a7[3] = v11;
  if (a6)
  {
    v8 = a6;
  }

  a7[4] = v12;
  a7[5] = v8;
  return result;
}

uint64_t sub_1DAB20068(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 40 == *a2 << 40)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DACBA174();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DAB200E0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB20144(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB2018C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB201EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB20E88(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAB20260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB20E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB20288(uint64_t a1)
{
  v2 = sub_1DAB208D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB202C4(uint64_t a1)
{
  v2 = sub_1DAB208D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB20300@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAB20CFC(0, &qword_1EE123CB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB208D8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v54 = MEMORY[0x1E69E7CC0];
    v53 = 0;
    sub_1DACB9F84();
    v10 = v52;
    v48 = v51;
    if (v52)
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v47 = 0;
      swift_beginAccess();
      v11 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1DAA9A3B0((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = 0x78316567616D69;
      *(v14 + 5) = 0xE700000000000000;
      v54 = v11;
      swift_endAccess();
      v10 = v47;
    }

    v53 = 1;
    sub_1DACB9F84();
    v45 = v51;
    v46 = v52;
    if (!v52)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1DAA9A3B0((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = 0x78326567616D69;
      *(v18 + 5) = 0xE700000000000000;
      v54 = v11;
      swift_endAccess();
      v10 = v47;
    }

    LOBYTE(v51) = 2;
    sub_1DACB9F84();
    if (v50)
    {
      v43 = v50;
      v20 = v48;
      v44 = v49;
      v21 = *(v11 + 2);
      if (!v10)
      {
        v20 = 0;
      }

      v48 = v20;
      v22 = 0xE000000000000000;
      if (!v10)
      {
        v10 = 0xE000000000000000;
      }

      v23 = v45;
      if (v46)
      {
        v22 = v46;
      }

      else
      {
        v23 = 0;
      }

      v46 = v22;
      v47 = v23;
      if (!v21)
      {
        sub_1DAA41DCC();
        v34 = sub_1DACB9AD4();
        v36 = sub_1DACB9914();
        sub_1DACB8C64("loaded MultiResolutionImage configuration with no need for fallback values", 74, 2, &dword_1DAA3F000, v34, v36, MEMORY[0x1E69E7CC0]);
        goto LABEL_42;
      }

      v42 = v10;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v25 = *(v11 + 2);
      v24 = *(v11 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v44 = v25 + 1;
        v40 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v11);
        v26 = v44;
        v11 = v40;
      }

      v44 = 0;
      *(v11 + 2) = v26;
      v27 = &v11[16 * v25];
      *(v27 + 4) = 0x78336567616D69;
      *(v27 + 5) = 0xE700000000000000;
      if (v10)
      {
        v28 = v48;
      }

      else
      {
        v28 = 0;
      }

      if (v10)
      {
        v29 = v10;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v42 = v29;
      v31 = v45;
      v30 = v46;
      if (!v46)
      {
        v31 = 0;
      }

      v47 = v31;
      v48 = v28;
      v43 = 0xE000000000000000;
      if (!v46)
      {
        v30 = 0xE000000000000000;
      }

      v46 = v30;
    }

    sub_1DAA41D64(0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v32 + 56) = v33;
    *(v32 + 64) = sub_1DAAF691C();
    *(v32 + 32) = v11;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v34 = sub_1DACB9AD4();
    v35 = sub_1DACB9914();
    sub_1DACB8C64("loaded MultiResolutionImage configuration with fallback values for keys: %@", 75, 2, &dword_1DAA3F000, v34, v35, v32);

    v10 = v42;
LABEL_42:

    (*(v7 + 8))(v9, v6);

    v37 = v47;
    *a2 = v48;
    a2[1] = v10;
    v38 = v46;
    a2[2] = v37;
    a2[3] = v38;
    v39 = v43;
    a2[4] = v44;
    a2[5] = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB208D8()
{
  result = qword_1EE124B00;
  if (!qword_1EE124B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124B00);
  }

  return result;
}

uint64_t sub_1DAB2092C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t sub_1DAB20A24(void *a1)
{
  sub_1DAB20CFC(0, &qword_1EE123BF8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB208D8();
  sub_1DACBA304();
  v15 = 0;
  v10 = v12[5];
  sub_1DACBA094();
  if (!v10)
  {
    v14 = 1;
    sub_1DACBA094();
    v13 = 2;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAB20C04(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DAB20CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB208D8();
    v7 = a3(a1, &type metadata for MultiResolutionImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAB20D84()
{
  result = qword_1ECBE7080;
  if (!qword_1ECBE7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7080);
  }

  return result;
}

unint64_t sub_1DAB20DDC()
{
  result = qword_1EE124AF0;
  if (!qword_1EE124AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AF0);
  }

  return result;
}

unint64_t sub_1DAB20E34()
{
  result = qword_1EE124AF8;
  if (!qword_1EE124AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AF8);
  }

  return result;
}

unint64_t sub_1DAB20E88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1DAB20EF8()
{
  v0 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1DACB92E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = sub_1DACB9324();
  v10 = v9;
  sub_1DACB9284();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE13E470;
  sub_1DACB7DF4();
  v12 = sub_1DACB9384();
  v14 = v13;
  (*(v2 + 8))(v7, v1);
  return WatchlistEntity.init(id:name:)(v8, v10, v12, v14, &qword_1ECBE7088);
}

uint64_t WatchlistEntity.init(id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v18 = a3;
  v19 = a4;
  v8 = sub_1DACB78E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1DAA8D89C(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v9 + 104))(v11, *MEMORY[0x1E6968DF0], v8);
  sub_1DACB7914();
  v15 = sub_1DACB6F34();
  a5[1] = a2;
  a5[2] = v15;
  *a5 = a1;
  v20 = v18;
  v21 = v19;
  return sub_1DACB6EE4();
}

uint64_t static WatchlistEntity.defaultWatchlistEntity.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECBE5A08 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ECBE7090;
  v2 = qword_1ECBE7098;
  *a1 = qword_1ECBE7088;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71E4();

  return sub_1DACB71F4();
}

uint64_t WatchlistEntity.id.getter()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21430@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EC10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECBE70A0;

  return sub_1DACB71F4();
}

uint64_t static WatchlistEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EC10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECBE70A0;

  return sub_1DACB71F4();
}

uint64_t sub_1DAB21510@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE70A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static WatchlistEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE70A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB21660(uint64_t a1)
{
  v2 = sub_1DAADA468();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB216AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1DAB21770(uint64_t a1)
{
  v2 = sub_1DAA8E0D0();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB217BC()
{
  sub_1DAA8E498(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  qword_1ECBE70A0 = result;
  return result;
}

uint64_t sub_1DAB21850()
{
  v14 = MEMORY[0x1E6968E10];
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13 = &v12 - v1;
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7354();
  __swift_allocate_value_buffer(v10, qword_1ECBE70A8);
  __swift_project_value_buffer(v10, qword_1ECBE70A8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_1DACB7914();
  (*(v9 + 56))(v13, 1, 1, v8);
  sub_1DAA8E498(0, &qword_1ECBE6D78, v14, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1DACC4A00;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAB21CB8()
{
  result = qword_1EE11F168;
  if (!qword_1EE11F168)
  {
    sub_1DAA8D89C(255, &qword_1EE11F160, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F168);
  }

  return result;
}

uint64_t sub_1DAB21D48()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21D78()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21DA8()
{
  v1 = *(v0 + 32);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21DD8()
{
  v1 = *(v0 + 48);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E08()
{
  v1 = *(v0 + 64);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E38()
{
  v1 = *(v0 + 80);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E68()
{
  v1 = *(v0 + 96);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E98()
{
  v1 = *(v0 + 112);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21EC8()
{
  v1 = *(v0 + 128);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21EF8()
{
  v1 = *(v0 + 144);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21F28()
{
  v1 = *(v0 + 160);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21F58()
{
  v1 = *(v0 + 176);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21F88()
{
  v1 = *(v0 + 192);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21FB8()
{
  v1 = *(v0 + 208);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21FE8()
{
  v1 = *(v0 + 224);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB22018()
{
  v1 = *(v0 + 240);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB22048()
{
  v1 = *(v0 + 256);
  sub_1DACB71E4();
  return v1;
}

unint64_t sub_1DAB22078(char a1)
{
  result = 0x6D6E6F7269766E65;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 9:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 10:
    case 13:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAB22254(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAB22078(*a1);
  v5 = v4;
  if (v3 == sub_1DAB22078(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB222DC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB22078(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB22340(uint64_t a1)
{
  sub_1DAB22078(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAB22394(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAB22078(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB223F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB244A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAB22424@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAB22078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAB2246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB244A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB224A0(uint64_t a1)
{
  v2 = sub_1DAB23770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB224DC(uint64_t a1)
{
  v2 = sub_1DAB23770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB22518@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAB24110(0, &qword_1EE123CA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v87 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB23770();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v117 = MEMORY[0x1E69E7CC0];
  v116 = 0;
  sub_1DACB9F84();
  v10 = v115;
  v111 = v114;
  if (v115)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v110 = v7;
    v12 = a2;
    swift_beginAccess();
    v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    v11 = v13;
    if (v15 >= v14 >> 1)
    {
      v11 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
    }

    *(v11 + 2) = v15 + 1;
    v16 = &v11[16 * v15];
    *(v16 + 4) = 0x6D6E6F7269766E65;
    *(v16 + 5) = 0xEB00000000746E65;
    v117 = v11;
    swift_endAccess();
    a2 = v12;
    v10 = 0;
    v7 = v110;
  }

  v116 = 1;
  sub_1DACB9F84();
  v17 = v115;
  v108 = v114;
  if (!v115)
  {
    v109 = a2;
    v110 = v10;
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v11);
    }

    *(v11 + 2) = v19 + 1;
    v20 = &v11[16 * v19];
    *(v20 + 4) = 0xD000000000000017;
    *(v20 + 5) = 0x80000001DACE0F00;
    v117 = v11;
    swift_endAccess();
    v17 = 0;
    a2 = v109;
    v10 = v110;
  }

  v116 = 2;
  sub_1DACB9F84();
  v110 = v10;
  v22 = v115;
  v106 = v114;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v23 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v25 = *(v11 + 2);
    v24 = *(v11 + 3);
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v11);
    }

    *(v11 + 2) = v25 + 1;
    v26 = &v11[16 * v25];
    *(v26 + 4) = 0xD000000000000015;
    *(v26 + 5) = 0x80000001DACE0F20;
    v117 = v11;
    swift_endAccess();
    v2 = v107;
    v17 = v23;
    a2 = v109;
  }

  v116 = 3;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
LABEL_56:

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v104 = v114;
  v105 = v115;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v27 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v29 = *(v11 + 2);
    v28 = *(v11 + 3);
    if (v29 >= v28 >> 1)
    {
      v11 = sub_1DAA9A3B0((v28 > 1), v29 + 1, 1, v11);
    }

    *(v11 + 2) = v29 + 1;
    v30 = &v11[16 * v29];
    *(v30 + 4) = 0xD000000000000010;
    *(v30 + 5) = 0x80000001DACE0F40;
    v117 = v11;
    swift_endAccess();
    v2 = v107;
    v17 = v27;
    a2 = v109;
  }

  v116 = 4;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
LABEL_55:

    goto LABEL_56;
  }

  v102 = v114;
  v103 = v115;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v31 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v33 = *(v11 + 2);
    v32 = *(v11 + 3);
    if (v33 >= v32 >> 1)
    {
      v11 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v11);
    }

    *(v11 + 2) = v33 + 1;
    v34 = &v11[16 * v33];
    *(v34 + 4) = 0xD000000000000018;
    *(v34 + 5) = 0x80000001DACE0F60;
    v117 = v11;
    swift_endAccess();
    v2 = v107;
    v17 = v31;
    a2 = v109;
  }

  v116 = 5;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
LABEL_54:

    goto LABEL_55;
  }

  v100 = v114;
  v101 = v115;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v35 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v37 = *(v11 + 2);
    v36 = *(v11 + 3);
    if (v37 >= v36 >> 1)
    {
      v11 = sub_1DAA9A3B0((v36 > 1), v37 + 1, 1, v11);
    }

    *(v11 + 2) = v37 + 1;
    v38 = &v11[16 * v37];
    *(v38 + 4) = 0xD000000000000012;
    *(v38 + 5) = 0x80000001DACE0F80;
    v117 = v11;
    swift_endAccess();
    v2 = v107;
    v17 = v35;
    a2 = v109;
  }

  v116 = 6;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);

    goto LABEL_54;
  }

  v107 = v115;
  v98 = v114;
  if (!v115)
  {
    v99 = v22;
    v109 = a2;
    swift_beginAccess();
    v39 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v41 = *(v11 + 2);
    v40 = *(v11 + 3);
    if (v41 >= v40 >> 1)
    {
      v11 = sub_1DAA9A3B0((v40 > 1), v41 + 1, 1, v11);
    }

    *(v11 + 2) = v41 + 1;
    v42 = &v11[16 * v41];
    *(v42 + 4) = 0xD000000000000017;
    *(v42 + 5) = 0x80000001DACE0FA0;
    v117 = v11;
    swift_endAccess();
    v17 = v39;
    a2 = v109;
    v22 = v99;
  }

  v116 = 7;
  sub_1DACB9F84();
  v99 = v22;
  v109 = a2;
  v95 = v114;
  v96 = v115;
  v97 = v17;
  if (!v115)
  {
    swift_beginAccess();
    v43 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1DAA9A3B0((v44 > 1), v45 + 1, 1, v43);
    }

    v11 = v43;
    *(v43 + 2) = v45 + 1;
    v46 = &v43[16 * v45];
    *(v46 + 4) = 0xD000000000000019;
    *(v46 + 5) = 0x80000001DACE0FC0;
    v117 = v43;
    swift_endAccess();
  }

  v116 = 8;
  sub_1DACB9F84();
  v93 = v114;
  v94 = v115;
  if (!v115)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v48 = *(v11 + 2);
    v47 = *(v11 + 3);
    if (v48 >= v47 >> 1)
    {
      v11 = sub_1DAA9A3B0((v47 > 1), v48 + 1, 1, v11);
    }

    *(v11 + 2) = v48 + 1;
    v49 = &v11[16 * v48];
    *(v49 + 4) = 0xD000000000000024;
    *(v49 + 5) = 0x80000001DACE0FE0;
    v117 = v11;
    swift_endAccess();
  }

  v116 = 9;
  sub_1DACB9F84();
  v91 = v114;
  v92 = v115;
  if (!v115)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v51 = *(v11 + 2);
    v50 = *(v11 + 3);
    if (v51 >= v50 >> 1)
    {
      v11 = sub_1DAA9A3B0((v50 > 1), v51 + 1, 1, v11);
    }

    *(v11 + 2) = v51 + 1;
    v52 = &v11[16 * v51];
    *(v52 + 4) = 0xD000000000000018;
    *(v52 + 5) = 0x80000001DACE1010;
    v117 = v11;
    swift_endAccess();
  }

  LOBYTE(v114) = 10;
  sub_1DACB9F84();
  v89 = v112;
  v90 = v113;
  if (v113)
  {
    if (v110)
    {
      goto LABEL_77;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
    }

    v63 = *(v11 + 2);
    v62 = *(v11 + 3);
    if (v63 >= v62 >> 1)
    {
      v11 = sub_1DAA9A3B0((v62 > 1), v63 + 1, 1, v11);
    }

    *(v11 + 2) = v63 + 1;
    v64 = &v11[16 * v63];
    *(v64 + 4) = 0xD000000000000014;
    *(v64 + 5) = 0x80000001DACE1030;
    if (v110)
    {
LABEL_77:
      if (v97)
      {
        goto LABEL_78;
      }

      goto LABEL_99;
    }
  }

  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v65 = sub_1DAA619A0();
  v110 = v66;
  v111 = v65;
  if (v97)
  {
LABEL_78:
    if (v99)
    {
      goto LABEL_79;
    }

    goto LABEL_100;
  }

LABEL_99:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v108 = sub_1DAA61EDC();
  v97 = v67;
  if (v99)
  {
LABEL_79:
    if (v105)
    {
      goto LABEL_80;
    }

    goto LABEL_101;
  }

LABEL_100:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v106 = sub_1DAA625DC();
  v99 = v68;
  if (v105)
  {
LABEL_80:
    if (v103)
    {
      goto LABEL_81;
    }

    goto LABEL_102;
  }

LABEL_101:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v104 = sub_1DAA62758();
  v105 = v69;
  if (v103)
  {
LABEL_81:
    if (v101)
    {
      goto LABEL_82;
    }

LABEL_103:
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v100 = sub_1DAA62914();
    v101 = v71;
    if (v107)
    {
      goto LABEL_83;
    }

LABEL_104:
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v98 = sub_1DAA62A88();
    v107 = v72;
    goto LABEL_83;
  }

LABEL_102:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v102 = sub_1DAA62758();
  v103 = v70;
  if (!v101)
  {
    goto LABEL_103;
  }

LABEL_82:
  if (!v107)
  {
    goto LABEL_104;
  }

LABEL_83:
  if (!v96)
  {
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v95 = sub_1DAA62C98();
    v96 = v53;
  }

  if (!v94)
  {
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v93 = sub_1DAA62E08();
    v94 = v54;
  }

  if (!v92)
  {
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v91 = sub_1DAA63458();
    v92 = v55;
  }

  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v87 = sub_1DAA635C8();
  v88 = v56;
  if (!v90)
  {
    v89 = sub_1DAA61EDC();
    v90 = v57;
  }

  if (*(v11 + 2))
  {
    sub_1DAA41D64(0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v58 + 56) = v59;
    *(v58 + 64) = sub_1DAA618B8(&qword_1EE123E80, sub_1DAA613E8, MEMORY[0x1E6969E28]);
    *(v58 + 32) = v11;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v60 = sub_1DACB9AD4();
    v61 = sub_1DACB9914();
    sub_1DACB8C64("loaded endpoint configuration with fallback values for keys: %@", 63, 2, &dword_1DAA3F000, v60, v61, v58);
  }

  else
  {
    sub_1DAA41DCC();
    v60 = sub_1DACB9AD4();
    v73 = sub_1DACB9914();
    sub_1DACB8C64("loaded endpoint configuration with no need for fallback values", 62, 2, &dword_1DAA3F000, v60, v73, MEMORY[0x1E69E7CC0]);
  }

  (*(v7 + 8))(v9, v6);

  v74 = v109;
  v75 = v110;
  *v109 = v111;
  v74[1] = v75;
  v76 = v97;
  v74[2] = v108;
  v74[3] = v76;
  v77 = v99;
  v74[4] = v106;
  v74[5] = v77;
  v78 = v105;
  v74[6] = v104;
  v74[7] = v78;
  v79 = v103;
  v74[8] = v102;
  v74[9] = v79;
  v80 = v101;
  v74[10] = v100;
  v74[11] = v80;
  v81 = v107;
  v74[12] = v98;
  v74[13] = v81;
  v82 = v96;
  v74[14] = v95;
  v74[15] = v82;
  v83 = v94;
  v74[16] = v93;
  v74[17] = v83;
  v84 = v92;
  v74[18] = v91;
  v74[19] = v84;
  v85 = v88;
  v74[20] = v87;
  v74[21] = v85;
  v86 = v90;
  v74[22] = v89;
  v74[23] = v86;
  *(v74 + 15) = 0u;
  *(v74 + 16) = 0u;
  *(v74 + 13) = 0u;
  *(v74 + 14) = 0u;
  *(v74 + 12) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB23770()
{
  result = qword_1EE1249D0;
  if (!qword_1EE1249D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1249D0);
  }

  return result;
}

uint64_t sub_1DAB237C8(void *a1)
{
  sub_1DAB24110(0, &qword_1EE123BF0, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - v5;
  v7 = v1[2];
  v28[28] = v1[3];
  v28[29] = v7;
  v8 = v1[4];
  v28[26] = v1[5];
  v28[27] = v8;
  v9 = v1[6];
  v28[24] = v1[7];
  v28[25] = v9;
  v10 = v1[8];
  v28[22] = v1[9];
  v28[23] = v10;
  v11 = v1[11];
  v28[20] = v1[10];
  v28[21] = v11;
  v12 = v1[13];
  v28[18] = v1[12];
  v28[19] = v12;
  v13 = v1[15];
  v28[16] = v1[14];
  v28[17] = v13;
  v14 = v1[17];
  v28[14] = v1[16];
  v28[15] = v14;
  v15 = v1[19];
  v28[12] = v1[18];
  v28[13] = v15;
  v16 = v1[23];
  v28[10] = v1[22];
  v28[11] = v16;
  v17 = v1[25];
  v28[8] = v1[24];
  v28[9] = v17;
  v18 = v1[27];
  v28[6] = v1[26];
  v28[7] = v18;
  v19 = v1[29];
  v28[4] = v1[28];
  v28[5] = v19;
  v20 = v1[31];
  v28[2] = v1[30];
  v28[3] = v20;
  v21 = v1[33];
  v28[1] = v1[32];
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1DAB23770();
  sub_1DACBA304();
  v30 = 0;
  v26 = v29;
  sub_1DACBA094();
  if (!v26)
  {
    v29 = v21;
    v30 = 1;
    sub_1DACBA094();
    v30 = 2;
    sub_1DACBA094();
    v30 = 3;
    sub_1DACBA094();
    v30 = 4;
    sub_1DACBA094();
    v30 = 5;
    sub_1DACBA094();
    v30 = 6;
    sub_1DACBA094();
    v30 = 7;
    sub_1DACBA094();
    v30 = 8;
    sub_1DACBA094();
    v30 = 9;
    sub_1DACBA094();
    v30 = 10;
    sub_1DACBA094();
    v30 = 11;
    sub_1DACBA024();
    v30 = 12;
    sub_1DACBA024();
    v30 = 13;
    sub_1DACBA024();
    v30 = 14;
    sub_1DACBA024();
    v30 = 15;
    sub_1DACBA024();
  }

  return (*(v4 + 8))(v6, v25);
}

uint64_t sub_1DAB23C84(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v65 = a1[7];
  v66 = a1[6];
  v63 = a1[9];
  v64 = a1[8];
  v59 = a1[11];
  v60 = a1[10];
  v55 = a1[13];
  v56 = a1[12];
  v51 = a1[15];
  v52 = a1[14];
  v47 = a1[17];
  v48 = a1[16];
  v43 = a1[19];
  v44 = a1[18];
  v39 = a1[21];
  v40 = a1[20];
  v35 = a1[23];
  v36 = a1[22];
  v28 = a1[24];
  v32 = a1[25];
  v30 = a1[27];
  v19 = a1[28];
  v25 = a1[29];
  v15 = a1[30];
  v22 = a1[31];
  v23 = a1[26];
  v13 = a1[32];
  v18 = a1[33];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v61 = a2[9];
  v62 = a2[8];
  v57 = a2[11];
  v58 = a2[10];
  v53 = a2[13];
  v54 = a2[12];
  v49 = a2[15];
  v50 = a2[14];
  v46 = a2[16];
  v45 = a2[17];
  v41 = a2[19];
  v42 = a2[18];
  v37 = a2[21];
  v38 = a2[20];
  v33 = a2[23];
  v34 = a2[22];
  v31 = a2[25];
  v24 = a2[26];
  v29 = a2[27];
  v26 = a2[29];
  v27 = a2[24];
  v20 = a2[28];
  v21 = a2[31];
  v14 = a2[32];
  v16 = a2[30];
  v17 = a2[33];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1DACBA174() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_1DACBA174() & 1) == 0 || (v66 != v10 || v65 != v11) && (sub_1DACBA174() & 1) == 0 || (v64 != v62 || v63 != v61) && (sub_1DACBA174() & 1) == 0 || (v60 != v58 || v59 != v57) && (sub_1DACBA174() & 1) == 0 || (v56 != v54 || v55 != v53) && (sub_1DACBA174() & 1) == 0 || (v52 != v50 || v51 != v49) && (sub_1DACBA174() & 1) == 0 || (v48 != v46 || v47 != v45) && (sub_1DACBA174() & 1) == 0 || (v44 != v42 || v43 != v41) && (sub_1DACBA174() & 1) == 0 || (v40 != v38 || v39 != v37) && (sub_1DACBA174() & 1) == 0 || (v36 != v34 || v35 != v33) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v32)
  {
    if (!v31 || (v28 != v27 || v32 != v31) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  if (v30)
  {
    if (!v29 || (v23 != v24 || v30 != v29) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (v25)
  {
    if (!v26 || (v19 != v20 || v25 != v26) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v22)
  {
    if (!v21 || (v15 != v16 || v22 != v21) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v13 == v14 && v18 == v17 || (sub_1DACBA174() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

void sub_1DAB24110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB23770();
    v7 = a3(a1, &type metadata for EndpointConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB2417C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1DAB241C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndpointConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndpointConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAB2439C()
{
  result = qword_1ECBE70C0;
  if (!qword_1ECBE70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70C0);
  }

  return result;
}

unint64_t sub_1DAB243F4()
{
  result = qword_1EE1249C0;
  if (!qword_1EE1249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1249C0);
  }

  return result;
}

unint64_t sub_1DAB2444C()
{
  result = qword_1EE1249C8;
  if (!qword_1EE1249C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1249C8);
  }

  return result;
}

unint64_t sub_1DAB244A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAB24524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v50 = type metadata accessor for Chart.Entry(0);
  v14 = *(v50 - 8);
  v15 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  *a7 = a1;
  v19 = type metadata accessor for Chart(0);
  v20 = &a7[v19[5]];
  v47 = a2;
  sub_1DAA94848(a2, v20, sub_1DAA49610);
  v21 = &a7[v19[6]];
  *v21 = a3;
  v21[8] = a4 & 1;
  v22 = v19[7];
  v23 = sub_1DACB7F54();
  v42 = *(v23 - 8);
  v43 = v23;
  v24 = *(v42 + 16);
  v46 = a5;
  v24(&a7[v22], a5);
  v44 = v19;
  v25 = v19[8];
  v26 = sub_1DACB7CC4();
  v40 = *(v26 - 8);
  v41 = v26;
  v27 = *(v40 + 16);
  v48 = a7;
  v45 = a6;
  v27(&a7[v25], a6);
  v28 = *(a1 + 16);
  result = sub_1DACB71E4();
  v30 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v31 = 0;
    while (v31 < *(a1 + 16))
    {
      v32 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v33 = *(v14 + 72);
      sub_1DAA94848(a1 + v32 + v33 * v31, v18, type metadata accessor for Chart.Entry);
      v34 = &v18[*(v50 + 36)];
      if ((v34[8] & 1) != 0 || *v34 <= 0.0)
      {
        result = sub_1DAA853A4(v18, type metadata accessor for Chart.Entry);
      }

      else
      {
        sub_1DAB2729C(v18, v49, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v30 + 16) + 1, 1);
          v30 = v51;
        }

        v37 = *(v30 + 16);
        v36 = *(v30 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1DAA83020((v36 > 1), v37 + 1, 1);
          v30 = v51;
        }

        *(v30 + 16) = v37 + 1;
        result = sub_1DAB2729C(v49, v30 + v32 + v37 * v33, type metadata accessor for Chart.Entry);
      }

      if (v28 == ++v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v38 = *(v30 + 16);

    (*(v40 + 8))(v45, v41);
    (*(v42 + 8))(v46, v43);
    result = sub_1DAA853A4(v47, sub_1DAA49610);
    v39 = &unk_1F567C260;
    if (!v38)
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    *&v48[v44[9]] = v39;
  }

  return result;
}

int *sub_1DAB24900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  v20 = sub_1DACB7CC4();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  result = type metadata accessor for Chart.Entry(0);
  v22 = a9 + result[5];
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  v23 = a9 + result[6];
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  v24 = a9 + result[7];
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  v25 = a9 + result[8];
  *v25 = a8;
  *(v25 + 8) = a10 & 1;
  v26 = a9 + result[9];
  *v26 = a11;
  *(v26 + 8) = a12 & 1;
  return result;
}

uint64_t sub_1DAB24ADC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAB274B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB24B04(uint64_t a1)
{
  v2 = sub_1DAA895A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB24B40(uint64_t a1)
{
  v2 = sub_1DAA895A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB24B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1DACB7CC4();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA86CA8(0, &qword_1EE11F5A8, sub_1DAA895A0, &type metadata for Chart.Entry.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Chart.Entry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA895A0();
  v37 = v7;
  v11 = v38;
  sub_1DACBA2F4();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v33;
  v13 = v34;
  v44 = 0;
  sub_1DAA804AC(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DACB9FE4();
  (*(v13 + 32))(v10, v36, v3);
  v43 = 1;
  v14 = sub_1DACB9F54();
  v15 = &v10[v8[5]];
  *v15 = v14;
  v15[8] = v16 & 1;
  v42 = 2;
  v17 = sub_1DACB9F54();
  v18 = &v10[v8[6]];
  *v18 = v17;
  v18[8] = v19 & 1;
  v41 = 3;
  v20 = sub_1DACB9F54();
  v21 = &v10[v8[7]];
  *v21 = v20;
  v21[8] = v22 & 1;
  v40 = 4;
  v23 = sub_1DACB9F54();
  v24 = &v10[v8[8]];
  *v24 = v23;
  v24[8] = v25 & 1;
  v39 = 5;
  v26 = sub_1DACB9F54();
  v28 = v27;
  (*(v12 + 8))(v37, v35);
  v29 = &v10[v8[9]];
  *v29 = v26;
  v29[8] = v28 & 1;
  sub_1DAA94848(v10, v32, type metadata accessor for Chart.Entry);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAA853A4(v10, type metadata accessor for Chart.Entry);
}

uint64_t sub_1DAB2501C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAB25088()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB250EC(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB25138@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DAB251F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Chart(0) + 28);
  v4 = sub_1DACB7F54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAB25270@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Chart(0) + 32);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAB252EC()
{
  type metadata accessor for Chart(0);

  return sub_1DACB71E4();
}

uint64_t sub_1DAB25324@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAB276B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB2534C(uint64_t a1)
{
  v2 = sub_1DAA86DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB25388(uint64_t a1)
{
  v2 = sub_1DAA86DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB253C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v33 = sub_1DACB7CC4();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DACB7F54();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49610(0);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA86CA8(0, &qword_1EE11F5B0, sub_1DAA86DB8, &type metadata for Chart.CodingKeys, MEMORY[0x1E69E6F48]);
  v38 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Chart(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA86DB8();
  v37 = v10;
  v14 = v39;
  sub_1DACBA2F4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v7;
  v16 = v34;
  v39 = v11;
  v17 = v36;
  sub_1DAA4932C(0, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
  v40 = 0;
  sub_1DAA8713C(&qword_1EE11FAE0, &qword_1EE120488, &unk_1DACC66CC, MEMORY[0x1E69E6330]);
  sub_1DACB9FE4();
  *v13 = v41;
  LOBYTE(v41) = 1;
  sub_1DAA89828(&qword_1EE11FC38, &qword_1EE123A38, MEMORY[0x1E6969558], MEMORY[0x1E69E5FC0]);
  sub_1DACB9FE4();
  v18 = v15;
  v19 = v39;
  sub_1DAB2729C(v18, &v13[v39[5]], sub_1DAA49610);
  LOBYTE(v41) = 2;
  v20 = sub_1DACB9F54();
  v35 = a1;
  v21 = &v13[v19[6]];
  *v21 = v20;
  v21[8] = v22 & 1;
  LOBYTE(v41) = 3;
  sub_1DAA804AC(&qword_1EE1239F8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  v23 = v30;
  sub_1DACB9FE4();
  (*(v32 + 32))(&v13[v19[7]], v23, v17);
  LOBYTE(v41) = 4;
  sub_1DAA804AC(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v24 = v29;
  v25 = v33;
  sub_1DACB9FE4();
  (*(v31 + 32))(&v13[v19[8]], v24, v25);
  sub_1DAA495C0(0, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
  v40 = 5;
  sub_1DAA898B8(&qword_1EE11FAC8, sub_1DAB27304, MEMORY[0x1E69E6330]);
  sub_1DACB9FE4();
  (*(v16 + 8))(v37, v38);
  *&v13[v19[9]] = v41;
  sub_1DAA94848(v13, v28, type metadata accessor for Chart);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_1DAA853A4(v13, type metadata accessor for Chart);
}

void *sub_1DAB25BB8(void *a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE11F530, type metadata accessor for NetworkEvent, type metadata accessor for NetworkEvent);
  *v3 = result;
  return result;
}

char *sub_1DAB25C08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB25F78(a1, a2, a3, *v3, &qword_1ECBE70E8, &type metadata for FundHolding);
  *v3 = result;
  return result;
}

char *sub_1DAB25C38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB25F78(a1, a2, a3, *v3, &qword_1ECBE70E0, &type metadata for FundSector);
  *v3 = result;
  return result;
}

char *sub_1DAB25C68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB260B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25C88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB261E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25CA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB2631C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAB25CC8(void *a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1ECBE6A40, type metadata accessor for SymbolEntity, type metadata accessor for SymbolEntity);
  *v3 = result;
  return result;
}

void *sub_1DAB25D18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25D38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAB25D58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB266B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25D78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB268F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25D98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25DB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25DD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAB25DF8(void *a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE123B80, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

void *sub_1DAB25E48(void *a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1DAB25E98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAB25EB8(void *a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1ECBE70F0, sub_1DAB278D0, sub_1DAB278D0);
  *v3 = result;
  return result;
}

void *sub_1DAB25F08(void *a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E6969680]);
  *v3 = result;
  return result;
}

char *sub_1DAB25F58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAB26EC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25F78(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1DAA495C0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1DAB260B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11CF00, &type metadata for WatchlistEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB261E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB2631C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F480, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAB26448(void *result, int64_t a2, char a3, void *a4)
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
    sub_1DAA4932C(0, &qword_1EE11F4B0, sub_1DAB279F4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1DAB279F4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26594(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAB266B8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAB27964(0);
  sub_1DAA86CA8(0, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1DAA86CA8(0, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_1DAB268F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11CEF8, &type metadata for CurrencyConversion, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26A2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11CEE0, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DAB26B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE123B30, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1DAB26C6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE123B28, MEMORY[0x1E69E7360], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1DAB26D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, qword_1EE1264F0, &type metadata for YahooMultiQuoteResponse, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26EC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE1264E8, &type metadata for YahooQuoteDetailResponse, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1DAB26FE4(uint64_t a1, uint64_t a2)
{
  if ((sub_1DACB7C64() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Chart.Entry(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if ((v27 & 1) == 0)
  {
    if (*v26 != *v28)
    {
      v29 = 1;
    }

    return (v29 & 1) == 0;
  }

  return (v29 & 1) != 0;
}

BOOL sub_1DAB27124(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1DAA931B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Chart(0);
  sub_1DACB7CC4();
  sub_1DAA804AC(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if ((sub_1DACB9264() & 1) == 0)
  {
    return 0;
  }

  sub_1DAA49610(0);
  if ((sub_1DACB9264() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((MEMORY[0x1E1275A20](a1 + v4[7], a2 + v4[7]) & 1) == 0 || (sub_1DACB7C64() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1DAC3701C(v11, v12);
}

uint64_t sub_1DAB2729C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAB27304()
{
  result = qword_1EE1203C0;
  if (!qword_1EE1203C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1203C0);
  }

  return result;
}

unint64_t sub_1DAB2735C()
{
  result = qword_1ECBE70C8;
  if (!qword_1ECBE70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70C8);
  }

  return result;
}

unint64_t sub_1DAB2740C()
{
  result = qword_1ECBE70D0;
  if (!qword_1ECBE70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70D0);
  }

  return result;
}

unint64_t sub_1DAB27464()
{
  result = qword_1ECBE70D8;
  if (!qword_1ECBE70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70D8);
  }

  return result;
}

uint64_t sub_1DAB274B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xED00006574614465;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736F6C63 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DAB276B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xED000065736F6C43 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE3AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1DAB278D0(uint64_t a1)
{
  if (!qword_1ECBE70F8)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAA804AC(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    v1 = sub_1DACB6E34();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE70F8);
    }
  }
}

void sub_1DAB27964(uint64_t a1)
{
  if (!qword_1ECBE7100)
  {
    sub_1DAA86CA8(255, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7100);
    }
  }
}

void sub_1DAB279F4()
{
  if (!qword_1EE11FC50)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC50);
    }
  }
}

uint64_t sub_1DAB27A5C(__int128 *a1, uint64_t a2)
{
  v5 = sub_1DACB8FB4();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB9004();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[7];
  v37 = a1[6];
  v38 = v11;
  v39 = *(a1 + 16);
  v12 = a1[3];
  v33 = a1[2];
  v34 = v12;
  v13 = a1[5];
  v35 = a1[4];
  v36 = v13;
  v14 = a1[1];
  v31 = *a1;
  v32 = v14;
  v24[1] = *(v2 + 32);
  v15 = swift_allocObject();
  v16 = a1[4];
  *(v15 + 104) = a1[5];
  v17 = a1[7];
  *(v15 + 120) = a1[6];
  *(v15 + 136) = v17;
  v18 = *a1;
  *(v15 + 40) = a1[1];
  v19 = a1[3];
  *(v15 + 56) = a1[2];
  *(v15 + 72) = v19;
  *(v15 + 88) = v16;
  *(v15 + 16) = v2;
  v20 = *(a1 + 16);
  *(v15 + 24) = v18;
  *(v15 + 152) = v20;
  *(v15 + 160) = a2;
  v28[4] = sub_1DAB29DD8;
  v28[5] = v15;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1DAA5796C;
  v28[3] = &block_descriptor_25;
  v21 = _Block_copy(v28);
  sub_1DACB71F4();
  sub_1DAA806E4(&v31, v29);
  sub_1DACB8FD4();
  *&v29[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v22);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v10, v7, v21);
  _Block_release(v21);
  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);

  v29[6] = v37;
  v29[7] = v38;
  v30 = v39;
  v29[2] = v33;
  v29[3] = v34;
  v29[4] = v35;
  v29[5] = v36;
  v29[0] = v31;
  v29[1] = v32;
  sub_1DAA59E24(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA806E4(&v31, v28);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB27E18(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = *(a2 + 7);
  v85 = *(a2 + 6);
  v86 = v6;
  v87 = a2[16];
  v7 = *(a2 + 3);
  v81 = *(a2 + 2);
  v82 = v7;
  v8 = *(a2 + 5);
  v83 = *(a2 + 4);
  v84 = v8;
  v9 = *(a2 + 1);
  v79 = *a2;
  v80 = v9;
  os_unfair_lock_lock((a1 + 16));
  v10 = *(a1 + 24);
  sub_1DACB71E4();
  v55 = a1;
  os_unfair_lock_unlock((a1 + 16));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v56 = a3;
    v70.Kind = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v11, 0);
    Kind = v70.Kind;
    v14 = (v10 + 56);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v70.Kind = Kind;
      v18 = *(Kind + 16);
      v17 = *(Kind + 24);
      sub_1DACB71E4();
      if (v18 >= v17 >> 1)
      {
        sub_1DAA5859C((v17 > 1), v18 + 1, 1);
        Kind = v70.Kind;
      }

      *(Kind + 16) = v18 + 1;
      v19 = Kind + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += 17;
      --v11;
    }

    while (v11);

    a3 = v56;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  os_unfair_lock_lock((v55 + 16));
  v20 = *(v55 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v55 + 16));
  ObjectType = sub_1DAAF0804(a2, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    os_unfair_lock_lock((v55 + 16));
    v24 = *(v55 + 24);
    sub_1DACB71E4();
    os_unfair_lock_unlock((v55 + 16));
    v68[0] = v24;
    sub_1DAC96360(ObjectType, &v58);
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v70 = v58;
    v71 = v59;
    sub_1DAA9B1C8(&v70);
    ObjectType = v68[0];
    os_unfair_lock_lock((v55 + 16));

    *(v55 + 24) = ObjectType;
    os_unfair_lock_unlock((v55 + 16));
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  os_unfair_lock_lock((v55 + 16));
  ObjectType = *(v55 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v55 + 16));
  v25 = *(ObjectType + 16);
  if (v25 < a3)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1DAA806E4(a2, &v70);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = ObjectType;
  if (!isUniquelyReferenced_nonNull_native || v25 >= *(ObjectType + 24) >> 1)
  {
    ObjectType = sub_1DAA5A0A8(isUniquelyReferenced_nonNull_native, v25 + 1, 1, ObjectType);
    v69 = ObjectType;
  }

  v76 = v85;
  v77 = v86;
  v78 = v87;
  v72 = v81;
  v73 = v82;
  v74 = v83;
  v75 = v84;
  v70 = v79;
  v71 = v80;
  sub_1DACA6CC0(a3, a3, 1, &v70);
  sub_1DAA9B1C8(a2);
  os_unfair_lock_lock((v55 + 16));

  *(v55 + 24) = ObjectType;
  os_unfair_lock_unlock((v55 + 16));
  os_unfair_lock_lock((v55 + 16));
  v27 = *(v55 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v55 + 16));
  v28 = *(v27 + 16);
  if (v28)
  {
    v58.Kind = v12;
    sub_1DAA5859C(0, v28, 0);
    v29 = v58.Kind;
    v30 = (v27 + 56);
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      v58.Kind = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      sub_1DACB71E4();
      if (v34 >= v33 >> 1)
      {
        sub_1DAA5859C((v33 > 1), v34 + 1, 1);
        v29 = v58.Kind;
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v30 += 17;
      --v28;
    }

    while (v28);
  }

  result = swift_beginAccess();
  ObjectType = *(v55 + 40);
  if (ObjectType >> 62)
  {
LABEL_38:
    result = sub_1DACB9E14();
    v37 = result;
    if (result)
    {
      goto LABEL_22;
    }

LABEL_39:
  }

  v37 = *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_39;
  }

LABEL_22:
  if (v37 >= 1)
  {
    v57 = ObjectType & 0xC000000000000001;
    sub_1DACB71E4();
    v38 = 0;
    v53 = v37;
    v54 = ObjectType;
    while (1)
    {
      if (v57)
      {
        v39 = MEMORY[0x1E12777A0](v38, ObjectType);
      }

      else
      {
        v39 = *(ObjectType + 8 * v38 + 32);
        sub_1DACB71F4();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = *(v39 + 24);
        ObjectType = swift_getObjectType();
        *(&v59 + 1) = type metadata accessor for StubWatchlistService();
        *&v60 = &off_1F5683C48;
        v58.Kind = v55;
        v41 = objc_allocWithZone(SCWWatchlistDiff);
        sub_1DACB71F4();
        v42 = sub_1DACB9634();
        v43 = sub_1DACB9634();
        v44 = [v41 initWithOldSymbols:v42 newSymbols:v43 updatedName:0 updatedSortState:0 updatedSortOrderState:0 updatedDisplayState:0];

        sub_1DAB29DE8(0);
        v45 = sub_1DACB9EA4();
        v46 = v44;
        sub_1DACB71F4();
        v47 = sub_1DAA4BF3C(1953719636, 0xE400000000000000);
        LOBYTE(v44) = v48;

        if (v44)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v45[(v47 >> 6) + 8] |= 1 << v47;
        v49 = (v45[6] + 16 * v47);
        *v49 = 1953719636;
        v49[1] = 0xE400000000000000;
        *(v45[7] + 8 * v47) = v46;

        v50 = v45[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_35;
        }

        v45[2] = v52;
        v67 = v45;
        (*(v40 + 8))(&v58, &v67, ObjectType, v40);

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(&v58);
        v37 = v53;
        ObjectType = v54;
      }

      else
      {
      }

      if (v37 == ++v38)
      {

        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB28448(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v5 = sub_1DACB8FB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB9004();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 32);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v17 = a2;
  v12[4] = a2;
  v26 = sub_1DAB29E60;
  v27 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1DAA5796C;
  v25 = &block_descriptor_31;
  v13 = _Block_copy(&aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v14);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v20);

  aBlock = v19;
  v23 = v17;
  sub_1DAA59E24(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB28784(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_lock_lock(a1 + 4);
  v6 = *&v5[6]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(v5 + 4);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v56 = v5;
  if (v7)
  {
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v7, 0);
    v9 = v59[0];
    v10 = (v6 + 56);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v59[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = v9;
      sub_1DACB71E4();
      v9 = v15;
      if (v14 >= v13 >> 1)
      {
        sub_1DAA5859C((v13 > 1), v14 + 1, 1);
        v9 = v59[0];
      }

      *(v9 + 16) = v14 + 1;
      v16 = v9 + 16 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      v10 += 17;
      --v7;
    }

    while (v7);

    v5 = v56;
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  os_unfair_lock_lock(v5 + 4);
  v17 = *&v5[6]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(v5 + 4);
  v18 = (v17 + 56);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
    }

    if (*(v18 - 1) == a2 && *v18 == a3)
    {
      break;
    }

    v18 += 17;
  }

  while ((sub_1DACBA174() & 1) == 0);

  os_unfair_lock_lock(v5 + 4);
  v21 = *&v5[6]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(v5 + 4);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (v21 + 56);
    while (1)
    {
      v25 = *(v24 - 1) == a2 && *v24 == a3;
      if (v25 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      ++v23;
      v24 += 17;
      if (v22 == v23)
      {
        goto LABEL_23;
      }
    }

    os_unfair_lock_lock(v5 + 4);
    v27 = *&v5[6]._os_unfair_lock_opaque;
    sub_1DACB71E4();
    os_unfair_lock_unlock(v5 + 4);
    v58[1] = v27;
    sub_1DAC96360(v23, v59);
    sub_1DAA9B1C8(v59);
    os_unfair_lock_lock(v5 + 4);

    *&v5[6]._os_unfair_lock_opaque = v27;
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
LABEL_23:
  }

  os_unfair_lock_lock(v5 + 4);
  v28 = *&v5[6]._os_unfair_lock_opaque;
  sub_1DACB71E4();
  os_unfair_lock_unlock(v5 + 4);
  v29 = *(v28 + 16);
  if (v29)
  {
    v59[0] = v8;
    sub_1DAA5859C(0, v29, 0);
    v30 = v59[0];
    v31 = (v28 + 56);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      v59[0] = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);
      sub_1DACB71E4();
      if (v35 >= v34 >> 1)
      {
        sub_1DAA5859C((v34 > 1), v35 + 1, 1);
        v30 = v59[0];
      }

      *(v30 + 16) = v35 + 1;
      v36 = v30 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v31 += 17;
      --v29;
    }

    while (v29);

    v5 = v56;
  }

  else
  {
  }

  result = swift_beginAccess();
  ObjectType = *&v5[10]._os_unfair_lock_opaque;
  if (ObjectType >> 62)
  {
    goto LABEL_51;
  }

  v38 = *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
LABEL_37:
    if (v38 < 1)
    {
      __break(1u);
      return result;
    }

    v57 = ObjectType & 0xC000000000000001;
    sub_1DACB71E4();
    v39 = 0;
    v54 = v38;
    v55 = ObjectType;
    while (1)
    {
      if (v57)
      {
        v40 = MEMORY[0x1E12777A0](v39, ObjectType);
      }

      else
      {
        v40 = *(ObjectType + 8 * v39 + 32);
        sub_1DACB71F4();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v40 + 24);
        ObjectType = swift_getObjectType();
        v59[3] = type metadata accessor for StubWatchlistService();
        v59[4] = &off_1F5683C48;
        v59[0] = v5;
        v42 = objc_allocWithZone(SCWWatchlistDiff);
        sub_1DACB71F4();
        v43 = sub_1DACB9634();
        v44 = sub_1DACB9634();
        v45 = [v42 initWithOldSymbols:v43 newSymbols:v44 updatedName:0 updatedSortState:0 updatedSortOrderState:0 updatedDisplayState:0];

        sub_1DAB29DE8(0);
        v46 = sub_1DACB9EA4();
        v47 = v45;
        sub_1DACB71F4();
        v48 = sub_1DAA4BF3C(1953719636, 0xE400000000000000);
        v5 = v49;

        if (v5)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          result = sub_1DACB9E14();
          v38 = result;
          if (!result)
          {
            break;
          }

          goto LABEL_37;
        }

        v46[(v48 >> 6) + 8] |= 1 << v48;
        v50 = (v46[6] + 16 * v48);
        *v50 = 1953719636;
        v50[1] = 0xE400000000000000;
        *(v46[7] + 8 * v48) = v47;

        v51 = v46[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_50;
        }

        v46[2] = v53;
        v58[0] = v46;
        (*(v41 + 8))(v59, v58, ObjectType, v41);

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v59);
        v5 = v56;
        v38 = v54;
        ObjectType = v55;
      }

      else
      {
      }

      if (v38 == ++v39)
      {
      }
    }
  }
}

uint64_t sub_1DAB28D5C(__int128 *a1)
{
  v3 = sub_1DACB8FB4();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9004();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[7];
  v34 = a1[6];
  v35 = v9;
  v36 = *(a1 + 16);
  v10 = a1[3];
  v30 = a1[2];
  v31 = v10;
  v11 = a1[5];
  v32 = a1[4];
  v33 = v11;
  v12 = a1[1];
  v28 = *a1;
  v29 = v12;
  v21[1] = *(v1 + 32);
  v13 = swift_allocObject();
  v14 = a1[4];
  *(v13 + 104) = a1[5];
  v15 = a1[7];
  *(v13 + 120) = a1[6];
  *(v13 + 136) = v15;
  v16 = *a1;
  *(v13 + 40) = a1[1];
  v17 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v17;
  *(v13 + 88) = v14;
  *(v13 + 16) = v1;
  *(v13 + 152) = *(a1 + 16);
  *(v13 + 24) = v16;
  v25[4] = sub_1DAB29EF0;
  v25[5] = v13;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1DAA5796C;
  v25[3] = &block_descriptor_37;
  v18 = _Block_copy(v25);
  sub_1DACB71F4();
  sub_1DAA806E4(&v28, v26);
  sub_1DACB8FD4();
  *&v26[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v19);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v8, v5, v18);
  _Block_release(v18);
  (*(v24 + 8))(v5, v3);
  (*(v22 + 8))(v8, v23);

  v26[6] = v34;
  v26[7] = v35;
  v27 = v36;
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[5] = v33;
  v26[0] = v28;
  v26[1] = v29;
  sub_1DAA59E24(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA806E4(&v28, v25);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29114(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 24);
  sub_1DACB71E4();
  v52 = a1;
  os_unfair_lock_unlock((a1 + 16));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v55[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v5, 0);
    v7 = v55[0];
    v8 = (v4 + 56);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v55[0] = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      sub_1DACB71E4();
      if (v12 >= v11 >> 1)
      {
        sub_1DAA5859C((v11 > 1), v12 + 1, 1);
        v7 = v55[0];
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 17;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_1DAA806E4(a2, v55);
  os_unfair_lock_lock((v52 + 16));
  ObjectType = *(v52 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v52 + 16));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v16 = *(ObjectType + 16);
    v15 = *(ObjectType + 24);
    if (v16 >= v15 >> 1)
    {
      ObjectType = sub_1DAA5A0A8((v15 > 1), v16 + 1, 1, ObjectType);
    }

    *(ObjectType + 16) = v16 + 1;
    v17 = ObjectType + 136 * v16;
    *(v17 + 32) = *a2;
    v18 = *(a2 + 16);
    v19 = *(a2 + 32);
    v20 = *(a2 + 64);
    *(v17 + 80) = *(a2 + 48);
    *(v17 + 96) = v20;
    *(v17 + 48) = v18;
    *(v17 + 64) = v19;
    v21 = *(a2 + 80);
    v22 = *(a2 + 96);
    v23 = *(a2 + 112);
    *(v17 + 160) = *(a2 + 128);
    *(v17 + 128) = v22;
    *(v17 + 144) = v23;
    *(v17 + 112) = v21;
    os_unfair_lock_lock((v52 + 16));

    *(v52 + 24) = ObjectType;
    os_unfair_lock_unlock((v52 + 16));
    os_unfair_lock_lock((v52 + 16));
    v24 = *(v52 + 24);
    sub_1DACB71E4();
    os_unfair_lock_unlock((v52 + 16));
    v25 = *(v24 + 16);
    if (v25)
    {
      v55[0] = v6;
      sub_1DAA5859C(0, v25, 0);
      a2 = v55[0];
      v26 = (v24 + 56);
      do
      {
        v28 = *(v26 - 1);
        v27 = *v26;
        v55[0] = a2;
        v30 = *(a2 + 16);
        v29 = *(a2 + 24);
        sub_1DACB71E4();
        if (v30 >= v29 >> 1)
        {
          sub_1DAA5859C((v29 > 1), v30 + 1, 1);
          a2 = v55[0];
        }

        *(a2 + 16) = v30 + 1;
        v31 = a2 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        v26 += 17;
        --v25;
      }

      while (v25);
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    result = swift_beginAccess();
    v33 = *(v52 + 40);
    if (v33 >> 62)
    {
      result = sub_1DACB9E14();
      v34 = result;
      if (!result)
      {
LABEL_36:
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v34)
      {
        goto LABEL_36;
      }
    }

    if (v34 < 1)
    {
      break;
    }

    v53 = v33 & 0xC000000000000001;
    sub_1DACB71E4();
    v35 = 0;
    v50 = v34;
    v51 = v33;
    while (1)
    {
      if (v53)
      {
        v36 = MEMORY[0x1E12777A0](v35, v33);
      }

      else
      {
        v36 = *(v33 + 8 * v35 + 32);
        sub_1DACB71F4();
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {

        goto LABEL_23;
      }

      v37 = *(v36 + 24);
      ObjectType = swift_getObjectType();
      v55[3] = type metadata accessor for StubWatchlistService();
      v55[4] = &off_1F5683C48;
      v55[0] = v52;
      v38 = objc_allocWithZone(SCWWatchlistDiff);
      sub_1DACB71F4();
      v39 = sub_1DACB9634();
      v40 = sub_1DACB9634();
      v41 = [v38 initWithOldSymbols:v39 newSymbols:v40 updatedName:0 updatedSortState:0 updatedSortOrderState:0 updatedDisplayState:0];

      sub_1DAB29DE8(0);
      v42 = sub_1DACB9EA4();
      v43 = v41;
      sub_1DACB71F4();
      v44 = sub_1DAA4BF3C(1953719636, 0xE400000000000000);
      v6 = v45;

      if (v6)
      {
        break;
      }

      v42[(v44 >> 6) + 8] |= 1 << v44;
      v46 = (v42[6] + 16 * v44);
      *v46 = 1953719636;
      v46[1] = 0xE400000000000000;
      *(v42[7] + 8 * v44) = v43;

      v47 = v42[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_33;
      }

      v42[2] = v49;
      v54 = v42;
      (*(v37 + 8))(v55, &v54, ObjectType, v37);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v55);
      v34 = v50;
      v33 = v51;
LABEL_23:
      if (v34 == ++v35)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ObjectType = sub_1DAA5A0A8(0, *(ObjectType + 16) + 1, 1, ObjectType);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB29650(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_1DACB9E14();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1DACB71F4();
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        v1 = &v11;
        sub_1DACB9D44();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v1[5] = v8;
}

uint64_t sub_1DAB297D8()
{
  sub_1DAB29EFC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB2988C(uint64_t a1)
{
  sub_1DAA726DC(0, &qword_1EE11FE28, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29994(uint64_t a1)
{
  sub_1DAA59E24(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29A40()
{
  sub_1DAA59E24(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29AA0(uint64_t a1, uint64_t a2)
{
  sub_1DAA59E24(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29B18(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 112);
  v11[6] = v18;
  v11[7] = v8;
  v11[2] = v14;
  v11[3] = v5;
  v11[4] = v16;
  v11[5] = v1;
  v20 = *(a1 + 128);
  v12 = *(a1 + 128);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_1DAA59E24(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA806E4(v13, v10);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29BE4(uint64_t a1, uint64_t a2)
{
  sub_1DACB9324();
  sub_1DAA59E24(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v8 = sub_1DACB7CE4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = MEMORY[0x1E69E7CC0];
  v12[3] = v8;
  v12[4] = v10;
  v13 = 160;
  sub_1DAA59E24(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAB29DE8(uint64_t a1)
{
  if (!qword_1ECBE7118)
  {
    sub_1DAA420F4(255, &qword_1EE11F8C8, off_1E85E2110);
    v1 = sub_1DACB9EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7118);
    }
  }
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DAB29EFC(uint64_t a1)
{
  sub_1DAA59E24(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DAB29FD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DAB2A028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DAB2A098()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v17 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v11 = sub_1DACB9644();
  if (!*(v11 + 16))
  {

    __break(1u);
    return result;
  }

  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DACB71E4();

  sub_1DACB86A4();

  if (qword_1EE125750 != -1)
  {
LABEL_8:
    swift_once();
  }

  sub_1DAA4DA94(v9);
  sub_1DACB7A14();
  sub_1DACB8694();
  v12 = *(v1 + 8);
  v12(v7, v0);
  sub_1DACB7A14();
  sub_1DACB8694();
  v12(v7, v0);
  if (qword_1EE11D798 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v7);
  sub_1DACB7A14();
  sub_1DACB8694();
  v12(v4, v0);
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  sub_1DACB8684();

  v15 = [v13 standardUserDefaults];
  sub_1DACB8684();

  v12(v7, v0);
  return (v12)(v9, v0);
}

uint64_t sub_1DAB2A438@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAB2A494()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7865646E69;
  if (v1 != 6)
  {
    v3 = 0x75466C617574756DLL;
  }

  v4 = 6714469;
  if (v1 != 4)
  {
    v4 = 0x73657275747566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x75636F7470797263;
  if (v1 != 2)
  {
    v5 = 0x797469757165;
  }

  if (*v0)
  {
    v2 = 0x79636E6572727563;
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

unint64_t sub_1DAB2A594()
{
  result = qword_1ECBE7120;
  if (!qword_1ECBE7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7120);
  }

  return result;
}

uint64_t sub_1DAB2A6B8()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE7128);
  __swift_project_value_buffer(v6, qword_1ECBE7128);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB2A8D0()
{
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE7140);
  __swift_project_value_buffer(v10, qword_1ECBE7140);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DAB2AC04@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A590];
  v3 = sub_1DACB7374();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAB2AC78()
{
  sub_1DAB2C6FC(0, &qword_1ECBE7158, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAB2C6FC(0, &qword_1ECBE7160, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DAB2AE94();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB2AF0C(0);
  sub_1DACB7234();

  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB2B024(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DAB2AE94()
{
  result = qword_1EE11D8B0;
  if (!qword_1EE11D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D8B0);
  }

  return result;
}

void sub_1DAB2AF0C(uint64_t a1)
{
  if (!qword_1ECBE7168)
  {
    sub_1DAB2AF6C(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7168);
    }
  }
}

void sub_1DAB2AF6C(uint64_t a1)
{
  if (!qword_1EE11F1B8)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAAA1500(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F1B8);
    }
  }
}

void sub_1DAB2B024(uint64_t a1)
{
  if (!qword_1ECBE7170)
  {
    sub_1DAB2C6FC(255, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7170);
    }
  }
}

uint64_t sub_1DAB2B0BC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SymbolEntity(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1DAAA2C80(a1, &v10 - v7);
  sub_1DAAA2C80(v8, v6);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v8);
}

uint64_t sub_1DAB2B1B8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAA2C80(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

uint64_t (*sub_1DAB2B248(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

double sub_1DAB2B2BC@<D0>(uint64_t a1@<X8>)
{
  sub_1DACB6FB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DAB2B300(void *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAB2B3CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB2B464(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAB2B4A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB2B540@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v1 = sub_1DACB7274();
  v2 = *(v1 - 8);
  v63 = v1;
  v64 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v62 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA6AA44(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v42[-v7];
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v42[-v9];
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v42[-v11];
  v12 = sub_1DACB78E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1DACB7904();
  v55 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v42[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAB2AF6C(0);
  v52 = v21;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v23 = *(v13 + 104);
  v48 = *MEMORY[0x1E6968DF0];
  v22 = v48;
  v49 = v12;
  v23(v15, v48, v12);
  v50 = v23;
  v51 = v13 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v23(v15, v22, v12);
  v24 = v58;
  sub_1DACB7914();
  v25 = *(v19 + 56);
  v54 = v19 + 56;
  v56 = v25;
  v25(v24, 0, 1, v18);
  v26 = type metadata accessor for SymbolEntity(0);
  (*(*(v26 - 8) + 56))(v61, 1, 1, v26);
  v27 = sub_1DACB6E84();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v46 = v29;
  v47 = v28 + 56;
  v29(v59, 1, 1, v27);
  v29(v60, 1, 1, v27);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  v53 = sub_1DACB6D94();
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  sub_1DACB6D84();
  v30 = sub_1DACB6D54();
  sub_1DAB2C6FC(0, &qword_1ECBE7178, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A548]);
  swift_getKeyPath();
  v31 = sub_1DACB7324();
  *&v65 = v30;
  *(&v65 + 1) = v31;
  v43 = *MEMORY[0x1E695A500];
  v32 = *(v64 + 104);
  v64 += 104;
  v44 = v32;
  v32(v62);
  sub_1DAB2BE88();
  sub_1DAAA1500(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v33 = sub_1DACB6FF4();
  v34 = v57;
  *v57 = v33;
  sub_1DAB2C6FC(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v61 = v35;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v50(v15, v48, v49);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v38(v15, v36, v37);
  v39 = v58;
  sub_1DACB7914();
  v56(v39, 0, 1, v55);
  v65 = 0uLL;
  *&v66 = 0;
  v40 = v46;
  v46(v59, 1, 1, v27);
  v40(v60, 1, 1, v27);
  v44(v62, v43, v63);
  sub_1DAADA468();
  v34[1] = sub_1DACB7014();
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948, &protocol descriptor for StocksIntentHandlerType);
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v34[2] = result;
  return result;
}

unint64_t sub_1DAB2BE88()
{
  result = qword_1ECBE7180;
  if (!qword_1ECBE7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7180);
  }

  return result;
}

uint64_t sub_1DAB2BEDC(uint64_t a1)
{
  *(v2 + 128) = a1;
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;
  *(v2 + 160) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAB2BF98, 0, 0);
}

uint64_t sub_1DAB2BF98(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  sub_1DACB6D24();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v1[7] = v4;
  v1[8] = v3;
  v1[9] = v2 | 0x2000000000000000;
  v7 = *(v6 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v1[21] = v8;
  *v8 = v1;
  v8[1] = sub_1DAB2C118;

  return (v10)(v1 + 7, v5, v6);
}

uint64_t sub_1DAB2C118()
{
  v2 = *v1;
  v2[22] = v0;

  sub_1DAAF5A24(v2[7], v2[8], v2[9]);
  if (v0)
  {
    v3 = sub_1DAB2C368;
  }

  else
  {
    v3 = sub_1DAB2C238;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB2C238()
{
  v10 = v0;
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6FB4();
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v2 = type metadata accessor for SymbolEntity(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1DAAF42EC(&v8, v1, &v6);
  v3 = v7;
  *(v0 + 104) = v6;
  *(v0 + 120) = v3;
  sub_1DAAF3184();
  sub_1DACB6E94();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DAB2C368()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DAB2C3DC()
{
  result = qword_1EE11D8A8;
  if (!qword_1EE11D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D8A8);
  }

  return result;
}

unint64_t sub_1DAB2C434()
{
  result = qword_1EE11D8B8[0];
  if (!qword_1EE11D8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11D8B8);
  }

  return result;
}

uint64_t sub_1DAB2C4D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE7128);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB2C584(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB2BEDC(a1);
}

uint64_t sub_1DAB2C620(uint64_t a1)
{
  v2 = sub_1DAB2AE94();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DAB2C66C()
{
  result = qword_1ECBE7188;
  if (!qword_1ECBE7188)
  {
    sub_1DAB2C6FC(255, &qword_1ECBE7190, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7188);
  }

  return result;
}

void sub_1DAB2C6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DAB2C764(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F43656C797473;
  v4 = 0xEC00000073676966;
  if (v2 != 1)
  {
    v3 = 0x6954736567646162;
    v4 = 0xED000074756F656DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x496C656E6E616863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x6E6F43656C797473;
  v8 = 0xEC00000073676966;
  if (*a2 != 1)
  {
    v7 = 0x6954736567646162;
    v8 = 0xED000074756F656DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x496C656E6E616863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAB2C890()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB2C94C(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAB2C9F4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAB2CAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB2D98C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAB2CADC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC00000073676966;
  v5 = 0x6E6F43656C797473;
  if (v2 != 1)
  {
    v5 = 0x6954736567646162;
    v4 = 0xED000074756F656DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x496C656E6E616863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAB2CB54()
{
  v1 = 0x6E6F43656C797473;
  if (*v0 != 1)
  {
    v1 = 0x6954736567646162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496C656E6E616863;
  }
}

unint64_t sub_1DAB2CBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB2D98C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB2CBF0(uint64_t a1)
{
  v2 = sub_1DAB2D330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB2CC2C(uint64_t a1)
{
  v2 = sub_1DAB2D330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAB2CC68@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = 0x80000001DACE6EB0;
  v7 = 0xD000000000000017;
  if (a2)
  {
    v7 = result;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v6 = a2;
  }

  if (a3)
  {
    v8 = a3;
  }

  *a6 = v7;
  *(a6 + 8) = v6;
  if (a5)
  {
    a4 = 21600.0;
  }

  *(a6 + 16) = v8;
  *(a6 + 24) = a4;
  return result;
}

uint64_t sub_1DAB2CCC4@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAB2D6A8(0, &qword_1EE123C88, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB2D330();
  sub_1DACBA2F4();
  if (!v2)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v46 = 0;
    sub_1DACB9F84();
    v10 = v45;
    v40 = v44;
    v11 = MEMORY[0x1E69E7CC0];
    if (!v45)
    {
      v41 = 0;
      swift_beginAccess();
      v11 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1DAA9A3B0((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = 0x496C656E6E616863;
      *(v14 + 5) = 0xE900000000000064;
      v47 = v11;
      swift_endAccess();
      v10 = v41;
    }

    v46 = 1;
    sub_1DAA488A4(0, &qword_1EE123F08, &type metadata for TopStoriesStyleConfiguration);
    sub_1DAB2D70C(&qword_1EE123EF8, sub_1DAB2D654, MEMORY[0x1E69E6330]);
    sub_1DACB9F84();
    v39 = v44;
    if (!v44)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1DAA9A3B0((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      strcpy(v18 + 32, "styleConfigs");
      v18[45] = 0;
      *(v18 + 23) = -5120;
      v47 = v11;
      swift_endAccess();
      v10 = v41;
    }

    LOBYTE(v44) = 2;
    sub_1DACB9F84();
    if (v43)
    {
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v10;
      if ((v20 & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v22 = *(v11 + 2);
      v21 = *(v11 + 3);
      if (v22 >= v21 >> 1)
      {
        v11 = sub_1DAA9A3B0((v21 > 1), v22 + 1, 1, v11);
      }

      *(v11 + 2) = v22 + 1;
      v23 = &v11[16 * v22];
      strcpy(v23 + 32, "badgesTimeout");
      *(v23 + 23) = -4864;
      v24 = 0x80000001DACE6EB0;
      v25 = v40;
      if (!v41)
      {
        v25 = 0xD000000000000017;
      }

      v40 = v25;
      if (v41)
      {
        v24 = v41;
      }

      v38 = v24;
      v26 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v26 = v39;
      }

      v41 = v26;
      v27 = 0x40D5180000000000;
    }

    else
    {
      v27 = v42;
      v28 = *(v11 + 2);
      v29 = v40;
      if (!v10)
      {
        v29 = 0xD000000000000017;
      }

      v40 = v29;
      if (!v10)
      {
        v10 = 0x80000001DACE6EB0;
      }

      v30 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v30 = v39;
      }

      v41 = v30;
      if (!v28)
      {
        sub_1DAA41DCC();
        v33 = sub_1DACB9AD4();
        v36 = sub_1DACB9914();
        sub_1DACB8C64("loaded Top Stories configuration with no need for fallback values", 65, 2, &dword_1DAA3F000, v33, v36, MEMORY[0x1E69E7CC0]);
        goto LABEL_35;
      }

      v38 = v10;
    }

    sub_1DAA41D64(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DACC1D20;
    sub_1DAA488A4(0, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    *(v31 + 56) = v32;
    *(v31 + 64) = sub_1DAAF691C();
    *(v31 + 32) = v11;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v33 = sub_1DACB9AD4();
    v34 = sub_1DACB9914();
    sub_1DACB8C64("loaded Top Stories configuration with fallback values for keys: %@", 66, 2, &dword_1DAA3F000, v33, v34, v31);

    v10 = v38;
LABEL_35:

    (*(v7 + 8))(v9, v6);

    v35 = v41;
    *a2 = v40;
    a2[1] = v10;
    a2[2] = v35;
    a2[3] = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB2D330()
{
  result = qword_1EE1246D0;
  if (!qword_1EE1246D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246D0);
  }

  return result;
}

uint64_t sub_1DAB2D388(void *a1)
{
  sub_1DAB2D6A8(0, &qword_1EE123BD0, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v13 = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_1DAB2D330();
  sub_1DACBA304();
  v17 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v16 = v13;
    v15 = 1;
    sub_1DAA488A4(0, &qword_1EE123F08, &type metadata for TopStoriesStyleConfiguration);
    sub_1DAB2D70C(&qword_1EE123F00, sub_1DAB2D788, MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
    v14 = 2;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_1DAB2D5D8(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return sub_1DAA5386C(v2, v4) & (v3 == v5);
  }

  v7 = sub_1DACBA174();
  result = 0;
  if (v7)
  {
    return sub_1DAA5386C(v2, v4) & (v3 == v5);
  }

  return result;
}

unint64_t sub_1DAB2D654()
{
  result = qword_1EE1244D0;
  if (!qword_1EE1244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244D0);
  }

  return result;
}

void sub_1DAB2D6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB2D330();
    v7 = a3(a1, &type metadata for TopStoriesConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB2D70C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1EE123F08, &type metadata for TopStoriesStyleConfiguration);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB2D788()
{
  result = qword_1EE1244D8;
  if (!qword_1EE1244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244D8);
  }

  return result;
}

uint64_t sub_1DAB2D7DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAB2D824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAB2D888()
{
  result = qword_1ECBE71A0;
  if (!qword_1ECBE71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE71A0);
  }

  return result;
}

unint64_t sub_1DAB2D8E0()
{
  result = qword_1EE1246C0;
  if (!qword_1EE1246C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246C0);
  }

  return result;
}

unint64_t sub_1DAB2D938()
{
  result = qword_1EE1246C8;
  if (!qword_1EE1246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246C8);
  }

  return result;
}

unint64_t sub_1DAB2D98C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1DAB2D9F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA4F6B0(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType, 1);
  result = sub_1DACB8254();
  if (!v11[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v10)
  {
    type metadata accessor for CloudKitWatchlistDefaultsProvider();
    v6 = swift_allocObject();
    sub_1DAA4D460(&v9, v6 + 16);
    v7 = type metadata accessor for CloudKitWatchlistService();
    v8 = swift_allocObject();
    result = sub_1DAB324B8(v5, v11, v6, v8);
    a2[3] = v7;
    a2[4] = &off_1F56825D8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1DAB2DBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v37);
  v4 = sub_1DAA6CBB4(v37);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v4 & 1) == 0)
  {
    sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v38)
    {
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      MEMORY[0x1EEE9AC00](v21);
      v23 = (&v33[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v24 + 16))(v23);
      v25 = *v23;
      v26 = type metadata accessor for YahooBaseOperationFactory();
      v34 = v26;
      v35 = &off_1F56825C8;
      v33[0] = v25;
      v13 = type metadata accessor for YahooQuoteService();
      v14 = swift_allocObject();
      v27 = __swift_mutable_project_boxed_opaque_existential_1(v33, v26);
      MEMORY[0x1EEE9AC00](v27);
      v29 = (&v33[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29);
      v31 = *v29;
      v14[5] = v26;
      v14[6] = &off_1F56825C8;
      v14[2] = v31;
      __swift_destroy_boxed_opaque_existential_1(v33);
      result = __swift_destroy_boxed_opaque_existential_1(v37);
      v20 = &off_1F568E868;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
  result = sub_1DACB8254();
  if (!v38)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB3244C(0);
  result = sub_1DACB8254();
  v6 = v36;
  if (v36)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    MEMORY[0x1EEE9AC00](v7);
    v9 = (&v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for SDSBaseOperationFactory();
    v34 = v12;
    v35 = &off_1F5690858;
    v33[0] = v11;
    v13 = type metadata accessor for SDSQuoteService();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v33, v12);
    MEMORY[0x1EEE9AC00](v15);
    v17 = (&v33[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[5] = v12;
    v14[6] = &off_1F5690858;
    v14[2] = v19;
    v14[7] = v6;
    __swift_destroy_boxed_opaque_existential_1(v33);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v20 = &off_1F5690848;
LABEL_7:
    a2[3] = v13;
    a2[4] = v20;
    *a2 = v14;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1DAB2E028@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v34);
  v4 = sub_1DAA6CBB4(v34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SDSBaseOperationFactory();
      v32 = v11;
      v33 = &off_1F5690858;
      v31[0] = v10;
      v12 = type metadata accessor for SDSQuoteDetailService();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F5690858;
      v13[2] = v18;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F5692790;
LABEL_6:
      a2[3] = v12;
      a2[4] = v19;
      *a2 = v13;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v20);
      v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v22;
      v25 = type metadata accessor for YahooBaseOperationFactory();
      v32 = v25;
      v33 = &off_1F56825C8;
      v31[0] = v24;
      v12 = type metadata accessor for YahooQuoteDetailService();
      v13 = swift_allocObject();
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v31, v25);
      MEMORY[0x1EEE9AC00](v26);
      v28 = (v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v13[5] = v25;
      v13[6] = &off_1F56825C8;
      v13[2] = v30;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F568EB88;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DAB2E44C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v34);
  v4 = sub_1DAA6CBB4(v34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SDSBaseOperationFactory();
      v32 = v11;
      v33 = &off_1F5690858;
      v31[0] = v10;
      v12 = type metadata accessor for SDSChartService();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F5690858;
      v13[2] = v18;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F5690868;
LABEL_6:
      a2[3] = v12;
      a2[4] = v19;
      *a2 = v13;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &unk_1EE1257C0, &protocol descriptor for YahooChartOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v20);
      v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v22;
      v25 = type metadata accessor for YahooChartOperationFactory();
      v32 = v25;
      v33 = &off_1F568AB08;
      v31[0] = v24;
      v12 = type metadata accessor for YahooChartService();
      v13 = swift_allocObject();
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v31, v25);
      MEMORY[0x1EEE9AC00](v26);
      v28 = (v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v13[5] = v25;
      v13[6] = &off_1F568AB08;
      v13[2] = v30;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F5690828;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DAB2E8A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1257E8, &protocol descriptor for SparklineOperationFactoryType, 1);
  result = sub_1DACB8254();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SparklineOperationFactory();
    v17[3] = v9;
    v17[4] = &off_1F56848A0;
    v17[0] = v8;
    v10 = type metadata accessor for SparklineService();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F56848A0;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F5692648;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB2EAD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (!v50)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1DAA4D460(&v49, v51);
  v5 = v52;
  v6 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  if ((*(v6 + 8))(v5, v6))
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125F08, &protocol descriptor for NewsFeedServiceType, 1);
    result = sub_1DACB8254();
    if (v50)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DAA44440(0, qword_1EE125D90, &protocol descriptor for FeedLookupServiceType, 1);
      result = sub_1DACB8254();
      if (v47)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_1DAA44440(0, &unk_1EE1258E8, &protocol descriptor for NewsUserProfileProviderType, 0);
        result = sub_1DACB8254();
        if (v44)
        {
          v7 = v45;
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
          result = sub_1DACB8254();
          if (v43)
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_1DAA44440(0, &unk_1EE125810, &protocol descriptor for NewsConfigurationManagerType, 0);
            result = sub_1DACB8254();
            v8 = v40;
            if (v40)
            {
              v9 = v41;
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              sub_1DAA44440(0, qword_1EE125E60, &protocol descriptor for LanguageSettingsType, 1);
              result = sub_1DACB8254();
              if (v39)
              {
                v10 = type metadata accessor for NewsStockFeedService();
                v11 = swift_allocObject();
                sub_1DAA4D460(&v49, (v11 + 2));
                sub_1DAA4D460(&v46, (v11 + 7));
                v11[12] = v44;
                v11[13] = v7;
                sub_1DAA4D460(&v42, (v11 + 14));
                v11[19] = v8;
                v11[20] = v9;
                sub_1DAA4D460(&v38, (v11 + 21));
                v12 = &off_1F568B490;
LABEL_16:
                a2[3] = v10;
                a2[4] = v12;
                *a2 = v11;
                return __swift_destroy_boxed_opaque_existential_1(v51);
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1DAA4D678(a1, &v49);
  v13 = sub_1DAA6CBB4(&v49);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v13 & 1) == 0)
  {
    sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v50)
    {
      v26 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v50);
      MEMORY[0x1EEE9AC00](v26);
      v28 = (&v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v31 = type metadata accessor for YahooBaseOperationFactory();
      v47 = v31;
      v48 = &off_1F56825C8;
      *&v46 = v30;
      v10 = type metadata accessor for YahooStockFeedService();
      v11 = swift_allocObject();
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v31);
      MEMORY[0x1EEE9AC00](v32);
      v34 = (&v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v35 + 16))(v34);
      v36 = *v34;
      v11[5] = v31;
      v11[6] = &off_1F56825C8;
      v11[2] = v36;
      __swift_destroy_boxed_opaque_existential_1(&v46);
      __swift_destroy_boxed_opaque_existential_1(&v49);
      v12 = &off_1F568DA38;
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
  result = sub_1DACB8254();
  if (!v50)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB3244C(0);
  result = sub_1DACB8254();
  v14 = v42;
  if (v42)
  {
    v15 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v50);
    MEMORY[0x1EEE9AC00](v15);
    v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v20 = type metadata accessor for SDSBaseOperationFactory();
    v47 = v20;
    v48 = &off_1F5690858;
    *&v46 = v19;
    v10 = type metadata accessor for SDSStockFeedService();
    v11 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v20);
    MEMORY[0x1EEE9AC00](v21);
    v23 = (&v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;
    v11[5] = v20;
    v11[6] = &off_1F5690858;
    v11[2] = v25;
    v11[7] = v14;
    __swift_destroy_boxed_opaque_existential_1(&v46);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    v12 = &off_1F5690080;
    goto LABEL_16;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DAB2F230@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BC0, &protocol descriptor for NewsHeadlineServiceType, 1);
  sub_1DACB8254();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125D90, &protocol descriptor for FeedLookupServiceType, 1);
    sub_1DACB8254();
    if (v8)
    {
      v4 = type metadata accessor for TestStockFeedService();
      v5 = swift_allocObject();
      sub_1DAB326EC(0);
      swift_allocObject();
      *(v5 + 16) = sub_1DACB8414();
      sub_1DAA4D460(&v9, v5 + 24);
      result = sub_1DAA4D460(&v7, v5 + 64);
      a2[3] = v4;
      a2[4] = &off_1F568E638;
      *a2 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1DAB2F3A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125A00, &protocol descriptor for StockMetadataServiceType, 1);
  result = sub_1DACB8234();
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1DAA4D460(&v12, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1DAA4D460(&v10, &v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(&v12, v13);
  if (((*(v6 + 8))(v5, v6) & 1) == 0)
  {
    sub_1DAA4D460(v15, a2);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (result)
  {
    v7 = result;
    sub_1DAA4D678(v15, &v10);
    v8 = type metadata accessor for NewsStockMetadataService();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    sub_1DAA4D460(&v10, v9 + 24);
    a2[3] = v8;
    a2[4] = &off_1F568E300;
    *a2 = v9;
    __swift_destroy_boxed_opaque_existential_1(v15);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1DAB2F5CC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for IdentificationService();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &off_1F5689180;
  *a1 = result;
  return result;
}

void *sub_1DAB2F618@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE1206F0, &protocol descriptor for RemoteConfigurationJSONProvider, 1);
  result = sub_1DACB8254();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &unk_1EE125768, &protocol descriptor for RemoteConfigurationSettingsFactoryType, 1);
    result = sub_1DACB8254();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for RemoteConfigurationSettingsFactory();
      v19[3] = v10;
      v19[4] = &off_1F56896D8;
      v19[0] = v9;
      v11 = type metadata accessor for RemoteAppConfigurationService();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[10] = v10;
      v12[11] = &off_1F56896D8;
      v12[7] = v17;
      sub_1DAA4D460(&v22, (v12 + 2));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v11;
      a2[4] = &off_1F56916A0;
      *a2 = v12;
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

void *sub_1DAB2F8A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA4F6B0(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088);
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
    result = sub_1DACB8254();
    if (v9)
    {
      v6 = type metadata accessor for CloudKitPollingService();
      v7 = swift_allocObject();
      *(v7 + 64) = 0;
      *(v7 + 16) = v5;
      result = sub_1DAA4D460(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F56836D8;
      *a2 = v7;
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

void *sub_1DAB2F9BC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (qword_1EE1200A8 != -1)
  {
    swift_once();
  }

  sub_1DAA5CC28(&qword_1EE124E58, a2, type metadata accessor for ServiceAssembly, &unk_1DACC70E0);
  sub_1DACB7F84();
  if (v17)
  {
    v5 = type metadata accessor for EmptyTopStoriesService();
    result = swift_allocObject();
    v7 = &off_1F56806A0;
LABEL_11:
    a3[3] = v5;
    a3[4] = v7;
    *a3 = result;
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125808, &protocol descriptor for ForYouConfigRecordServiceType, 1);
  result = sub_1DACB8254();
  if (!v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BC0, &protocol descriptor for NewsHeadlineServiceType, 1);
  result = sub_1DACB8254();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1258E8, &protocol descriptor for NewsUserProfileProviderType, 0);
  result = sub_1DACB8254();
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125320, &protocolRef_FCCoreConfigurationManager);
  result = sub_1DACB8244();
  if (result)
  {
    v9 = result;
    v5 = type metadata accessor for TopStoriesService();
    v10 = swift_allocObject();
    sub_1DAA4D460(&v17, (v10 + 2));
    sub_1DAA4D460(&v15, (v10 + 7));
    v10[12] = v13;
    v10[13] = v8;
    sub_1DAA4D460(&v11, (v10 + 14));
    result = v10;
    v10[19] = v9;
    v7 = &off_1F5680668;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DAB2FCC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BC0, &protocol descriptor for NewsHeadlineServiceType, 1);
  sub_1DACB8254();
  if (v7)
  {
    v3 = type metadata accessor for TestTopStoriesService();
    v4 = swift_allocObject();
    sub_1DAB326EC(0);
    swift_allocObject();
    *(v4 + 16) = sub_1DACB8414();
    result = sub_1DAA4D460(&v6, v4 + 24);
    a2[3] = v3;
    a2[4] = &off_1F568E128;
    *a2 = v4;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_1DAB2FDD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125808, &protocol descriptor for ForYouConfigRecordServiceType, 1);
  result = sub_1DACB8254();
  if (!v32)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE1206F0, &protocol descriptor for RemoteConfigurationJSONProvider, 1);
  result = sub_1DACB8254();
  v5 = v29;
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = v30;
  v6 = __swift_project_boxed_opaque_existential_1(v28, v29);
  v23 = &v19;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v21 = *(v7 + 16);
  v21(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125768, &protocol descriptor for RemoteConfigurationSettingsFactoryType, 1);
  result = sub_1DACB8254();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v25)
  {
    v10 = type metadata accessor for ForYouFeedConfigService();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v19 = &v19;
    MEMORY[0x1EEE9AC00](v11);
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = (*(v14 + 16))(v13);
    MEMORY[0x1EEE9AC00](v15);
    (v21)(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v16 = type metadata accessor for RemoteConfigurationSettingsFactory();
    v17 = sub_1DAB0E8F0(&v31, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v9, &v24, v10, v5, v16, v22, &off_1F56896D8);
    __swift_destroy_boxed_opaque_existential_1(v26);
    (*(v7 + 8))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v18 = v20;
    v20[3] = v10;
    v18[4] = &off_1F5682428;
    *v18 = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1DAB30208@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
    result = sub_1DACB8254();
    if (v9)
    {
      v6 = type metadata accessor for StockFeedConfigService();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1DAA4D460(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F5685270;
      *a2 = v7;
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

void *sub_1DAB30314@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E48, &protocol descriptor for StockFeedServiceType, 1);
  result = sub_1DACB8254();
  if (v7)
  {
    v4 = type metadata accessor for TestNewsFeedService();
    v5 = swift_allocObject();
    result = sub_1DAA4D460(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F56866B0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB303C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE125E60, &protocol descriptor for LanguageSettingsType, 1);
  result = sub_1DACB8254();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v9)
  {
    v6 = type metadata accessor for StockFeedLookupService();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_1DAA4D460(&v10, v7 + 24);
    result = sub_1DAA4D460(&v8, v7 + 64);
    a2[3] = v6;
    a2[4] = &off_1F568EBD0;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DAB30574@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TestFeedLookupService();
  v3 = swift_allocObject();
  sub_1DAB326EC(0);
  swift_allocObject();
  result = sub_1DACB8414();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F5685C90;
  *a1 = v3;
  return result;
}

void *sub_1DAB30634@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE1207A0, &protocol descriptor for NewsHeadlineScorerFactoryType, 1);
    result = sub_1DACB8254();
    if (v9)
    {
      v6 = type metadata accessor for NewsHeadlineService();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1DAA4D460(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F5686E50;
      *a2 = v7;
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

void *sub_1DAB30740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 408);
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v4 = sub_1DAA619A0();
  sub_1DAA61D24(v3, v4, v5, v7);

  return memcpy(a2, v7, 0x110uLL);
}

uint64_t sub_1DAB307C4(uint64_t a1, uint64_t *a2)
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA5CC28(&qword_1EE124E58, a2, type metadata accessor for ServiceAssembly, &unk_1DACC70E0);
  sub_1DACB7F84();
  type metadata accessor for PermanentURLFactory();
  result = swift_allocObject();
  *(result + 16) = 0x403000000020100uLL >> (8 * v3);
  return result;
}

void *sub_1DAB308CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1DAA4D460(&v26, v28);
  v5 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  swift_getKeyPath();
  (*(v5 + 56))();

  sub_1DACB7AB4();
  v6 = sub_1DACB8BC4();

  v7 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  swift_getKeyPath();
  (*(v7 + 56))();

  v8 = sub_1DACB8BC4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125938, &protocol descriptor for YahooChartModelEngineType, 1);
  result = sub_1DACB8254();
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20, &protocol descriptor for NetworkMonitorType, 1);
  result = sub_1DACB8254();
  if (v25)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
    MEMORY[0x1EEE9AC00](v9);
    v11 = (&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for YahooChartModelEngine();
    v23[3] = v14;
    v23[4] = &off_1F5690098;
    v23[0] = v13;
    v15 = type metadata accessor for SparklineOperationFactory();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    MEMORY[0x1EEE9AC00](v17);
    v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[7] = v14;
    v16[8] = &off_1F5690098;
    v16[3] = v8;
    v16[4] = v21;
    v16[2] = v6;
    sub_1DAA4D460(&v24, (v16 + 9));
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(&v26);
    a2[3] = v15;
    a2[4] = &off_1F56848A0;
    *a2 = v16;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAB30CD8@<X0>(uint64_t a2@<X8>)
{
  sub_1DAA44304(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1DACB7A94();
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a2, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB30E00@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DACB7AF4();
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

void *sub_1DAB30E44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125938, &protocol descriptor for YahooChartModelEngineType, 1);
  result = sub_1DACB8254();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x1EEE9AC00](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x1EEE9AC00](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for YahooChartModelEngine();
      v33[3] = v15;
      v33[4] = &off_1F5690098;
      v33[0] = v13;
      v16 = type metadata accessor for YahooBaseOperationFactory();
      v31 = v16;
      v32 = &off_1F56825C8;
      v30[0] = v14;
      v17 = type metadata accessor for YahooChartOperationFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x1EEE9AC00](v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x1EEE9AC00](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_1F5690098;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_1F56825C8;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_1F568AB08;
      *a2 = v18;
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

void *sub_1DAB3129C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20, &protocol descriptor for NetworkMonitorType, 1);
  result = sub_1DACB8254();
  if (v7)
  {
    v4 = type metadata accessor for YahooBaseOperationFactory();
    v5 = swift_allocObject();
    result = sub_1DAA4D460(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F56825C8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DAB31350@<X0>(void *a1@<X8>)
{
  v2 = sub_1DACB7AB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (result)
  {
    v10 = result;
    sub_1DACB7A44();

    v11 = [objc_opt_self() defaultConfiguration];
    v12 = [v11 contentContainerCombinationIdentifier];

    sub_1DACB9324();
    sub_1DACB7A14();

    v13 = *(v3 + 8);
    v13(v6, v2);
    v14 = objc_allocWithZone(MEMORY[0x1E69C6D58]);
    v15 = sub_1DACB7A04();
    v16 = [v14 initWithContentDirectoryURL_];

    a1[3] = sub_1DAA420F4(0, &qword_1EE123DE0, 0x1E69C6D58);
    a1[4] = &off_1F5689458;
    *a1 = v16;
    return (v13)(v8, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB31548@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125948, &protocol descriptor for IdentificationServiceType, 1);
  result = sub_1DACB8254();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PermanentURLFactory();
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = result;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA5CC28(&qword_1EE124E58, v6, type metadata accessor for ServiceAssembly, &unk_1DACC70E0);
  sub_1DACB7F84();
  v8 = type metadata accessor for RemoteConfigurationSettingsFactory();
  v9 = swift_allocObject();
  result = sub_1DAA4D460(&v11, v9 + 16);
  *(v9 + 56) = v7;
  *(v9 + 64) = v10;
  a3[3] = v8;
  a3[4] = &off_1F56896D8;
  *a3 = v9;
  return result;
}

void *sub_1DAB31704@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (!v14)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1DAA4D460(&v13, v15);
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  if (((*(v6 + 8))(v5, v6) & 1) == 0)
  {
    v8 = type metadata accessor for NoopWatchlistDeprecationService();
    v9 = swift_allocObject();
    v10 = &off_1F56813C8;
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType, 1);
  result = sub_1DACB8254();
  if (!v14)
  {
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (!result)
  {
    goto LABEL_13;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v12)
  {
    v8 = type metadata accessor for WatchlistDeprecationService();
    v9 = swift_allocObject();
    sub_1DAA4D460(&v13, v9 + 16);
    *(v9 + 56) = v7;
    sub_1DAA4D460(&v11, v9 + 64);
    v10 = &off_1F56813D8;
LABEL_10:
    a2[3] = v8;
    a2[4] = v10;
    *a2 = v9;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1DAB31970@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE125D90, &protocol descriptor for FeedLookupServiceType, 1);
  result = sub_1DACB8254();
  if (v7)
  {
    v4 = type metadata accessor for NewsStockFeedIdentifierService();
    v5 = swift_allocObject();
    result = sub_1DAA4D460(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F568A658;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAB31A24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v34);
  v4 = sub_1DAA6CBB4(v34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SDSBaseOperationFactory();
      v32 = v11;
      v33 = &off_1F5690858;
      v31[0] = v10;
      v12 = type metadata accessor for SDSStockMetadataService();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F5690858;
      v13[2] = v18;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F56918D8;
LABEL_6:
      a2[3] = v12;
      a2[4] = v19;
      *a2 = v13;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
    result = sub_1DACB8254();
    if (v35)
    {
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      MEMORY[0x1EEE9AC00](v20);
      v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v22;
      v25 = type metadata accessor for YahooBaseOperationFactory();
      v32 = v25;
      v33 = &off_1F56825C8;
      v31[0] = v24;
      v12 = type metadata accessor for YahooStockMetadataService();
      v13 = swift_allocObject();
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v31, v25);
      MEMORY[0x1EEE9AC00](v26);
      v28 = (v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v13[5] = v25;
      v13[6] = &off_1F56825C8;
      v13[2] = v30;
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = __swift_destroy_boxed_opaque_existential_1(v34);
      v19 = &off_1F5686D60;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DAB31E48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
  result = sub_1DACB8254();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAB3244C(0);
    result = sub_1DACB8254();
    v5 = v21;
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v6);
      v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SDSBaseOperationFactory();
      v20[3] = v11;
      v20[4] = &off_1F5690858;
      v20[0] = v10;
      v12 = type metadata accessor for SDSCurrencyService();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
      MEMORY[0x1EEE9AC00](v14);
      v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F5690858;
      v13[2] = v18;
      v13[7] = v5;
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v12;
      a2[4] = &off_1F568C6A8;
      *a2 = v13;
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

void *sub_1DAB320C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE125310, &protocolRef_FCJSONRecordTreeSourceType);
  result = sub_1DACB8244();
  if (result)
  {
    v6 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
    result = sub_1DACB8254();
    if (v10)
    {
      v7 = type metadata accessor for ForYouConfigRecordService();
      v8 = swift_allocObject();
      sub_1DAA5CC28(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
      sub_1DAA44304(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
      sub_1DAB3235C();
      sub_1DACB9BB4();
      sub_1DAB323E4(0);
      swift_allocObject();
      *(v8 + 64) = sub_1DACB8354();
      *(v8 + 16) = v6;
      result = sub_1DAA4D460(&v9, v8 + 24);
      a2[3] = v7;
      a2[4] = &off_1F568BCA8;
      *a2 = v8;
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

unint64_t sub_1DAB3235C()
{
  result = qword_1EE125508;
  if (!qword_1EE125508)
  {
    sub_1DAA44304(255, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125508);
  }

  return result;
}

void sub_1DAB323E4(uint64_t a1)
{
  if (!qword_1EE120020)
  {
    type metadata accessor for ForYouConfigRecord(255);
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE120020);
    }
  }
}

void sub_1DAB3244C(uint64_t a1)
{
  if (!qword_1EE125548)
  {
    sub_1DAA44440(255, qword_1EE125A20, &protocol descriptor for SDSMetadataProcessorType, 1);
    v1 = sub_1DACB9724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE125548);
    }
  }
}

uint64_t sub_1DAB324B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  sub_1DAA4D678(a2, v12);
  type metadata accessor for CloudKitWatchlistMetadataProvider();
  v9 = swift_allocObject();
  sub_1DAB1BBE0();
  swift_allocObject();
  *(v9 + 56) = sub_1DACB8964();
  sub_1DAA4D460(v12, v9 + 16);
  sub_1DAA4D678(a2, a4 + 32);
  *(a4 + 72) = v9;
  sub_1DACB71F4();
  sub_1DACB81C4();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v9;
  v10[4] = a3;
  sub_1DAA4F6B0(0, &qword_1EE11FF30, &qword_1EE11F868, off_1E85E2120);
  swift_allocObject();
  sub_1DACB71F4();
  sub_1DACB71F4();
  *(a4 + 80) = sub_1DACB8914();
  sub_1DACB71F4();
  sub_1DACB8904();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

void sub_1DAB326A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_1DAB326EC(uint64_t a1)
{
  if (!qword_1ECBE72D8)
  {
    sub_1DAB32748();
    v1 = sub_1DACB8404();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE72D8);
    }
  }
}

unint64_t sub_1DAB32748()
{
  result = qword_1ECBE72E0;
  if (!qword_1ECBE72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE72E0);
  }

  return result;
}

void *sub_1DAB32854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result[6];
    v5 = result[7];
    __swift_project_boxed_opaque_existential_1(result + 3, v4);
    if ((*(v5 + 24))(v4, v5))
    {
      if (qword_1EE120098 != -1)
      {
        swift_once();
      }

      type metadata accessor for LanguageSettings();
      sub_1DAA609A0(&qword_1EE122B38, v6, type metadata accessor for LanguageSettings, &unk_1DACC72B0);
      sub_1DACB7F84();
      v7 = v8;
      if (v8 == *(v3 + 16))
      {
      }
    }

    else
    {
      if ((v3[2] & 1) == 0)
      {
      }

      v7 = 0;
    }

    *(v3 + 16) = v7;
    sub_1DAB32D18(v7);
  }

  return result;
}

uint64_t sub_1DAB3299C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&qword_1EE122B38, a2, type metadata accessor for LanguageSettings, &unk_1DACC72B0);
  sub_1DACB7F84();
  if (v7)
  {
    return 0;
  }

  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  if (((*(v4 + 24))(v3, v4) & 1) == 0)
  {
    return 0;
  }

  if (qword_1ECBE5A90 != -1)
  {
    swift_once();
  }

  sub_1DACB7F84();
  return v6;
}

uint64_t sub_1DAB32B18(char a1, uint64_t a2)
{
  v3 = a2;
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&unk_1ECBE73B0, a2, type metadata accessor for LanguageSettings, &unk_1DACC72F0);
  sub_1DACB80C4();
  if (v3)
  {
    if (qword_1ECBE5A90 != -1)
    {
      swift_once();
    }

    sub_1DACB80C4();
  }

  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v4);
  result = (*(v5 + 24))(v4, v5);
  if ((result & 1) == 0)
  {
    if ((*(v2 + 16) & 1) == 0)
    {
      return result;
    }

    LOBYTE(result) = 0;
    goto LABEL_12;
  }

  sub_1DAA609A0(&qword_1EE122B38, v7, type metadata accessor for LanguageSettings, &unk_1DACC72B0);
  sub_1DACB7F84();
  result = v8;
  if (v8 != *(v2 + 16))
  {
LABEL_12:
    *(v2 + 16) = result;
    return sub_1DAB32D18(result);
  }

  return result;
}

uint64_t sub_1DAB32D18(char a1)
{
  v3 = sub_1DACB8FB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB9004();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA57C58();
  v11 = sub_1DACB9954();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1DAB33844;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_5;
  v13 = _Block_copy(aBlock);
  sub_1DACB71F4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA609A0(&qword_1EE124040, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA571EC(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DAB33000(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[8];
  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_1DACB9E14();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1DACB71F4();
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        v1 = &v11;
        sub_1DACB9D44();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v1[8] = v8;
}

uint64_t sub_1DAB33188()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v1);
  result = (*(v2 + 24))(v1, v2);
  if ((result & 1) == 0)
  {
    if ((*(v0 + 16) & 1) == 0)
    {
      return result;
    }

    LOBYTE(result) = 0;
    goto LABEL_8;
  }

  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&qword_1EE122B38, v4, type metadata accessor for LanguageSettings, &unk_1DACC72B0);
  sub_1DACB7F84();
  result = v5;
  if (v5 != *(v0 + 16))
  {
LABEL_8:
    *(v0 + 16) = result;
    return sub_1DAB32D18(result);
  }

  return result;
}

uint64_t sub_1DAB33308(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  v4 = *(a1 + 64);
  if (v4 >> 62)
  {
    result = sub_1DACB9E14();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB71E4();
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E12777A0](i, v4);
      }

      else
      {
        v10 = *(v4 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v12[3] = type metadata accessor for LanguageSettings();
      v12[4] = &off_1F5684240;
      v12[0] = a1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v10 + 24);
        ObjectType = swift_getObjectType();
        v9 = *(v7 + 8);
        sub_1DACB71F4();
        v9(v12, a2 & 1, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1DACB71F4();
      }

      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  return result;
}

uint64_t sub_1DAB33484()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB334F8(uint64_t a1, uint64_t a2)
{
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&qword_1EE122B38, a2, type metadata accessor for LanguageSettings, &unk_1DACC72B0);
  sub_1DACB7F84();
  return v3;
}

uint64_t sub_1DAB335B0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1DAB33630(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (qword_1ECBE5A90 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&unk_1ECBE73B0, a2, type metadata accessor for LanguageSettings, &unk_1DACC72F0);
  sub_1DACB80C4();
  return sub_1DAB32D18(*(v3 + 16));
}

uint64_t sub_1DAB337A0(void *a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DAB338A0(v6, v3, v2, v4, v5);
}

void sub_1DAB33850()
{
  if (!qword_1EE123FD0)
  {
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123FD0);
    }
  }
}

uint64_t sub_1DAB338A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2 & 1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void *sub_1DAB33964(void *a1)
{
  v3 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = objc_allocWithZone(v1);
  v5 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers;
  *&v4[v5] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v6 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers;
  *&v4[v6] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v7 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
  v8 = type metadata accessor for AppConfiguration(0);
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig] = 0;
  v9 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_configLock;
  sub_1DACB8164();
  sub_1DACB8194();
  swift_allocObject();
  *&v4[v9] = sub_1DACB8184();
  sub_1DAA4D678(a1, &v4[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager]);
  v17.receiver = v4;
  v17.super_class = v1;
  v10 = objc_msgSendSuper2(&v17, sel_init);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 16);
  v14 = v10;
  v13(v11, v12);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1DACB83D4();

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void *sub_1DAB33BB0(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v7 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v8 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
  v9 = type metadata accessor for AppConfiguration(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig] = 0;
  v10 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_configLock;
  sub_1DACB8164();
  sub_1DACB8194();
  swift_allocObject();
  *&v2[v10] = sub_1DACB8184();
  sub_1DAA4D678(a1, &v2[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager]);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 16);
  v15 = v11;
  v14(v12, v13);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1DACB83D4();

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

void sub_1DAB33DFC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers];

  v4 = [v3 allObjects];
  sub_1DAA485B8(0, &unk_1EE11F800, &protocolRef_FCCoreConfigurationObserving);
  v5 = sub_1DACB9644();

  if (v5 >> 62)
  {
    v6 = sub_1DACB9E14();
    v7 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E12777A0](i, v5);
    }

    else
    {
      v9 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v9 v7[93]])
    {
      v10 = swift_unknownObjectUnownedLoadStrong();
      v11 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectRetain();
      v12 = sub_1DAA4E530();

      [v9 configurationManager:v10 configurationDidChange:v12];
      v7 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

LABEL_12:

  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = *&v13[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers];

  v15 = [v14 allObjects];
  sub_1DAA485B8(0, &unk_1EE11F7E8, &protocolRef_FCNewsAppConfigurationObserving);
  v16 = sub_1DACB9644();

  if (v16 >> 62)
  {
    v17 = sub_1DACB9E14();
    if (v17)
    {
LABEL_14:
      if (v17 >= 1)
      {
        for (j = 0; j != v17; ++j)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E12777A0](j, v16);
          }

          else
          {
            v19 = *(v16 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v19 v7[93]])
          {
            v20 = swift_unknownObjectUnownedLoadStrong();
            v21 = swift_unknownObjectUnownedLoadStrong();
            swift_unknownObjectRetain();
            v22 = sub_1DAA4E530();

            [v19 configurationManager:v20 appConfigurationDidChange:v22];
            v7 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_23;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }
  }

LABEL_23:
}