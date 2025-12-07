uint64_t sub_24B19818C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_24B1985C0;
  }

  else
  {

    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_24B1982A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B1982A8()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 224);
  v5 = *(v0 + 216);

  v6 = v1(v5, v4);
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  sub_24B1A35D0(v6, v7, v8);
  sub_24B2D5224();

  if (!*(v0 + 168))
  {
    v9 = sub_24B2D5584();
    if (sub_24B2D55C4())
    {
      sub_24B1A2638(v9, *(v0 + 304), *(v0 + 312));
    }
  }

  v20 = *(v0 + 456);
  v10 = *(v0 + 384);
  v18 = *(v0 + 376);
  v19 = *(v0 + 320);
  v21 = *(v0 + 224);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  (*(v0 + 424))();
  *(v0 + 176) = v12;

  *(v0 + 184) = sub_24B2D5824();
  *(v0 + 96) = v18;
  *(v0 + 104) = v10;
  v13 = *(v21 + 48);
  v14 = v13(v0 + 16, v11);
  sub_24B2D5214();
  sub_24B2D5234();
  sub_24B1A395C(v19);
  v14(v0 + 16, 0);
  v15 = (v13)(v0 + 48, v11, v21);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v20, v19);
  v15(v0 + 48, 0);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24B1985C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1986B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[35] = a4;
  v5[36] = v4;
  v5[33] = a1;
  v5[34] = a3;
  v7 = sub_24B2D2504();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v5[40] = v8;
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[46] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[47] = AssociatedConformanceWitness;
  v12 = type metadata accessor for SubscriptionManagerStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v5[48] = v12;
  v5[49] = *(v12 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *a2;
  v15 = a2[1];
  v5[55] = v13;
  v5[56] = v14;
  v5[57] = v15;
  v17 = sub_24B2D5604();
  v5[58] = v17;
  v5[59] = v16;

  return MEMORY[0x2822009F8](sub_24B198918, v17, v16);
}

uint64_t sub_24B198918()
{
  v183 = v0;
  v1 = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[45];
  v6 = v0[40];
  v5 = v0[41];
  v172 = *(v0[35] + 32);
  (v172)(v0[34]);
  v158 = *(v5 + 16);
  v158(v4, v1, v6);
  v7 = *(v3 + 8);
  v7(v1, v2);
  swift_unknownObjectRetain();

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();
  swift_unknownObjectRelease();

  v167 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v144 = v0[56];
    v146 = v0[57];
    v165 = v0[45];
    v152 = v0[41];
    v154 = v0[40];
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[37];
    v14 = v0[34];
    v13 = v0[35];
    v142 = v0[33];
    v15 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v182[0] = v149;
    *v15 = 136447235;
    (*(v13 + 56))(v14, v13);
    sub_24B2D12A4();

    v16 = sub_24B2D24B4();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_24AFF321C(v16, v18, v182);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v0[32] = v142;
    v20 = sub_24B2D5854();
    WitnessTable = swift_getWitnessTable();
    v22 = sub_24B232AB0((v0 + 32), v20, WitnessTable);
    v24 = sub_24AFF321C(v22, v23, v182);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v0[22] = v144;
    v0[23] = v146;

    v25 = sub_24B2D53C4();
    v27 = sub_24AFF321C(v25, v26, v182);

    *(v15 + 44) = v27;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):removeSubscriptions\n- subscriptionsToRemove: %{private,mask.hash}s\n- subscriber: %{private,mask.hash}s", v15, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v149, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);

    v28 = v165;
    v166 = *(v152 + 8);
    v166(v28, v154);
  }

  else
  {
    v29 = v0[45];
    v30 = v0[40];
    v31 = v0[41];

    v166 = *(v31 + 8);
    v166(v29, v30);
  }

  v33 = v0[56];
  v32 = v0[57];
  v34 = v0[48];
  v35 = v0[35];
  v36 = v0[34];

  v172(v36, v35);
  v147 = v34;
  v0[10] = v33;
  v0[11] = v32;
  v37 = sub_24B2D5854();
  sub_24B1A35D0(v37, v38, v39);
  sub_24B2D5224();

  v40 = v0[57];
  v41 = v0[35];
  v155 = v0[34];
  v150 = v37;
  if (!v0[24])
  {
    v73 = v0[50];
    v74 = v0[48];
    v145 = v0[42];
    v148 = v0[40];
    v167(v0[54], v74);
    v172(v155, v41);
    v158(v145, v73, v148);
    v167(v73, v74);
    swift_unknownObjectRetain();

    v75 = sub_24B2D3164();
    v76 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v75, v76))
    {
      v160 = v0[56];
      v163 = v0[57];
      v77 = v0[39];
      v174 = v0[40];
      v179 = v0[42];
      v78 = v0[37];
      v79 = v0[38];
      v80 = v0[35];
      v81 = v0[34];
      v156 = v0[33];
      v82 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v182[0] = v169;
      *v82 = 136447235;
      (*(v80 + 56))(v81, v80);
      sub_24B2D12A4();

      v83 = sub_24B2D24B4();
      v85 = v84;
      (*(v79 + 8))(v77, v78);
      v86 = sub_24AFF321C(v83, v85, v182);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2160;
      *(v82 + 14) = 1752392040;
      *(v82 + 22) = 2081;
      v0[25] = v156;
      v87 = swift_getWitnessTable();
      v88 = sub_24B232AB0((v0 + 25), v150, v87);
      v90 = sub_24AFF321C(v88, v89, v182);

      *(v82 + 24) = v90;
      *(v82 + 32) = 2160;
      *(v82 + 34) = 1752392040;
      *(v82 + 42) = 2081;
      v0[12] = v160;
      v0[13] = v163;

      v91 = sub_24B2D53C4();
      v93 = sub_24AFF321C(v91, v92, v182);

      *(v82 + 44) = v93;
      _os_log_impl(&dword_24AFD2000, v75, v76, "Provider(%{public}s):removeSubscriptions\n- Trying to remove a non existing subscriber %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v82, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v169, -1, -1);
      MEMORY[0x24C23D530](v82, -1, -1);

      v94 = v174;
      v95 = v179;
    }

    else
    {
      v120 = v0[42];
      v121 = v0[40];

      v95 = v120;
      v94 = v121;
    }

    v166(v95, v94);
LABEL_18:

    v133 = v0[1];

    return v133();
  }

  v42 = v0[53];
  v43 = v0[48];
  v143 = v0[56];
  v167(v0[54], v43);
  v141 = sub_24B2D5804();
  v0[60] = v141;
  v172(v155, v41);

  v167(v42, v43);
  v172(v155, v41);
  v44 = *(v42 + *(v147 + 36));

  v167(v42, v43);
  v0[26] = v44;
  v0[27] = v141;
  v0[14] = v143;
  v0[15] = v40;
  v0[61] = sub_24B2D5214();
  swift_bridgeObjectRetain_n();

  sub_24B2D5234();
  v0[62] = v0[26];
  nullsub_1();
  v0[28] = v45;
  v46 = swift_task_alloc();
  *(v46 + 16) = v155;
  *(v46 + 24) = v41;
  sub_24B2D5204();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v47 = sub_24B2D54D4();

  v0[29] = v47;
  sub_24B2D55E4();
  swift_getWitnessTable();
  v0[63] = sub_24B2D5864();
  v48 = sub_24B2D5804();
  v0[64] = v48;
  v49 = sub_24B2D5834();
  v50 = v0[48];
  v51 = v0[40];
  v52 = v0[35];
  v53 = v0[34];
  if (v49)
  {
    v151 = v0 + 2;
    v153 = v0 + 6;
    v54 = v0[52];
    v55 = v0[44];

    v172(v53, v52);
    v158(v55, v54, v51);
    v167(v54, v50);
    swift_unknownObjectRetain();

    v56 = sub_24B2D3164();
    v57 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v56, v57))
    {
      v168 = v0[57];
      v162 = v0[56];
      v173 = v0[40];
      v178 = v0[44];
      v59 = v0[38];
      v58 = v0[39];
      v159 = v0[37];
      v60 = v0[34];
      v61 = v0[35];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v182[0] = v63;
      *v62 = 136446723;
      (*(v61 + 56))(v60, v61);
      sub_24B2D12A4();

      v64 = sub_24B2D24B4();
      v66 = v65;
      (*(v59 + 8))(v58, v159);
      v67 = sub_24AFF321C(v64, v66, v182);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2160;
      *(v62 + 14) = 1752392040;
      *(v62 + 22) = 2081;
      v0[20] = v162;
      v0[21] = v168;

      v68 = sub_24B2D53C4();
      v70 = sub_24AFF321C(v68, v69, v182);

      *(v62 + 24) = v70;
      _os_log_impl(&dword_24AFD2000, v56, v57, "Provider(%{public}s):removeSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to isEmpty\n- Subscriber: %{private,mask.hash}s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v63, -1, -1);
      MEMORY[0x24C23D530](v62, -1, -1);

      v71 = v173;
      v72 = v178;
    }

    else
    {
      v122 = v0[44];
      v123 = v0[40];

      v72 = v122;
      v71 = v123;
    }

    v166(v72, v71);

    v124 = sub_24B2D5834();

    v125 = v0[60];
    if (v124)
    {

      v125 = 0;
    }

    v176 = v0[63];
    v127 = v0[56];
    v126 = v0[57];
    v128 = v0[48];
    v129 = v0[35];
    v130 = v0[34];
    v0[30] = v125;
    v0[16] = v127;
    v0[17] = v126;
    v131 = *(v129 + 48);
    v171 = v131(v151, v130, v129);
    sub_24B2D5234();
    sub_24B1A395C(v128);
    v171(v151, 0);
    v132 = v131(v153, v130, v129);
    SubscriptionManagerStorage.uniqueSubscriptions.setter(v176, v128);
    v132(v153, 0);

    goto LABEL_18;
  }

  v96 = v0[51];
  v97 = v0[43];
  v172(v53, v52);
  v158(v97, v96, v51);
  v167(v96, v50);
  swift_unknownObjectRetain();

  v98 = sub_24B2D3164();
  v99 = sub_24B2D5934();
  swift_unknownObjectRelease();

  v100 = v48;
  if (os_log_type_enabled(v98, v99))
  {
    v157 = v0[56];
    v161 = v0[57];
    v175 = v0[40];
    v180 = v0[43];
    v102 = v0[38];
    v101 = v0[39];
    v170 = v99;
    v103 = v0[37];
    v105 = v0[34];
    v104 = v0[35];
    v106 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v182[0] = v164;
    *v106 = 136447235;
    (*(v104 + 56))(v105, v104);
    sub_24B2D12A4();

    v107 = sub_24B2D24B4();
    v109 = v108;
    (*(v102 + 8))(v101, v103);
    v110 = sub_24AFF321C(v107, v109, v182);

    *(v106 + 4) = v110;
    *(v106 + 12) = 2160;
    *(v106 + 14) = 1752392040;
    *(v106 + 22) = 2081;
    v0[31] = v100;
    v111 = swift_getWitnessTable();
    v112 = sub_24B232AB0((v0 + 31), v150, v111);
    v114 = sub_24AFF321C(v112, v113, v182);

    *(v106 + 24) = v114;
    *(v106 + 32) = 2160;
    *(v106 + 34) = 1752392040;
    *(v106 + 42) = 2081;
    v0[18] = v157;
    v0[19] = v161;

    v115 = sub_24B2D53C4();
    v117 = sub_24AFF321C(v115, v116, v182);

    *(v106 + 44) = v117;
    _os_log_impl(&dword_24AFD2000, v98, v170, "Provider(%{public}s):removeSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v106, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v164, -1, -1);
    MEMORY[0x24C23D530](v106, -1, -1);

    v118 = v175;
    v119 = v180;
  }

  else
  {
    v135 = v0[43];
    v136 = v0[40];

    v119 = v135;
    v118 = v136;
  }

  v166(v119, v118);
  v181 = v0[35];
  v137 = sub_24B2D5834();
  v177 = (*(v181 + 72) + **(v181 + 72));
  v138 = swift_task_alloc();
  v0[65] = v138;
  *v138 = v0;
  v138[1] = sub_24B199B08;
  v139 = v0[35];
  v140 = v0[34];

  return v177(v100, v137 & 1, v140, v139);
}

uint64_t sub_24B199B08()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_24B199E78;
  }

  else
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_24B199C60;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B199C60()
{

  v1 = sub_24B2D5834();

  v2 = v0[60];
  if (v1)
  {

    v2 = 0;
  }

  v13 = v0[63];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[48];
  v6 = v0[35];
  v12 = v0[34];
  v0[30] = v2;
  v0[16] = v4;
  v0[17] = v3;
  v7 = *(v6 + 48);
  v11 = v7(v0 + 2);
  sub_24B2D5234();
  sub_24B1A395C(v5);
  v11(v0 + 2, 0);
  v8 = (v7)(v0 + 6, v12, v6);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v13, v5);
  v8(v0 + 6, 0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B199E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B199F70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a2;
  v6 = sub_24B2D2504();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_24B2D3184();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[15] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[16] = AssociatedConformanceWitness;
  v11 = type metadata accessor for SubscriptionManagerStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v4[17] = v11;
  v4[18] = *(v11 - 8);
  v12 = swift_task_alloc();
  v13 = *a1;
  v14 = a1[1];
  v4[19] = v12;
  v4[20] = v13;
  v4[21] = v14;
  v16 = sub_24B2D5604();
  v4[22] = v16;
  v4[23] = v15;

  return MEMORY[0x2822009F8](sub_24B19A178, v16, v15);
}

uint64_t sub_24B19A178()
{
  v40 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[7] + 32))(v0[6]);
  (*(v5 + 16))(v4, v1, v6);
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRetain();

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v0[20];
    v35 = v0[21];
    v36 = v0[13];
    v9 = v0[11];
    v37 = v0[12];
    v38 = v0[14];
    v10 = v0[10];
    v33 = v0[9];
    v11 = v0[7];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136446723;
    (*(v11 + 56))(v12, v11);
    sub_24B2D12A4();

    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v10 + 8))(v9, v33);
    v18 = sub_24AFF321C(v15, v17, &v39);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v0[4] = v34;
    v0[5] = v35;

    v19 = sub_24B2D53C4();
    v21 = sub_24AFF321C(v19, v20, &v39);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):removeSubscriber\n- Subscriber: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    (*(v23 + 8))(v22, v24);
  }

  v25 = sub_24B2D5584();
  if (sub_24B2D55C4())
  {
    v26 = sub_24B1A2638(v25, v0[15], v0[16]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  v0[24] = v26;
  v28 = v0[20];
  v27 = v0[21];

  v0[2] = v28;
  v0[3] = v27;
  v29 = swift_task_alloc();
  v0[25] = v29;
  *v29 = v0;
  v29[1] = sub_24B19A504;
  v30 = v0[7];
  v31 = v0[6];

  return sub_24B19A6FC(v26, v0 + 2, v31, v30);
}

uint64_t sub_24B19A504()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];

    return MEMORY[0x2822009F8](sub_24B19A680, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B19A680()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19A6FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a1;
  v5[38] = a3;
  v7 = sub_24B2D2504();
  v5[41] = v7;
  v5[42] = *(v7 - 8);
  v5[43] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v5[44] = v8;
  v5[45] = *(v8 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[51] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[52] = AssociatedConformanceWitness;
  v12 = type metadata accessor for SubscriptionManagerStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v5[53] = v12;
  v5[54] = *(v12 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *a2;
  v15 = a2[1];
  v5[60] = v13;
  v5[61] = v14;
  v5[62] = v15;
  v17 = sub_24B2D5604();
  v5[63] = v17;
  v5[64] = v16;

  return MEMORY[0x2822009F8](sub_24B19A970, v17, v16);
}

uint64_t sub_24B19A970()
{
  v243 = v0;
  v1 = v0[60];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[50];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[38];
  v8 = v0[39];
  v9 = *(v8 + 32);
  v0[65] = v9;
  v0[66] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0xBE12000000000000;
  v225 = v9;
  (v9)(v7);
  v10 = *(v5 + 16);
  v0[67] = v10;
  v0[68] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v205 = v10;
  v10(v4, v1, v6);
  v11 = *(v3 + 8);
  v0[69] = v11;
  v0[70] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v222 = v11;
  v11(v1, v2);
  swift_unknownObjectRetain();

  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v190 = v0[61];
    v191 = v0[62];
    v216 = v0[50];
    v194 = v0[45];
    v199 = v0[44];
    v15 = v0[42];
    v14 = v0[43];
    v16 = v0[41];
    v18 = v0[38];
    v17 = v0[39];
    v188 = v0[37];
    v19 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v242[0] = v192;
    *v19 = 136447235;
    (*(v17 + 56))(v18, v17);
    sub_24B2D12A4();

    v20 = sub_24B2D24B4();
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_24AFF321C(v20, v22, v242);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v0[36] = v188;
    v24 = sub_24B2D5854();
    WitnessTable = swift_getWitnessTable();
    v26 = sub_24B232AB0((v0 + 36), v24, WitnessTable);
    v28 = sub_24AFF321C(v26, v27, v242);

    *(v19 + 24) = v28;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    v0[24] = v190;
    v0[25] = v191;

    v29 = sub_24B2D53C4();
    v31 = sub_24AFF321C(v29, v30, v242);

    *(v19 + 44) = v31;
    _os_log_impl(&dword_24AFD2000, v12, v13, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v19, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v192, -1, -1);
    MEMORY[0x24C23D530](v19, -1, -1);

    v32 = *(v194 + 8);
    v32(v216, v199);
  }

  else
  {
    v33 = v0[50];
    v34 = v0[44];
    v35 = v0[45];

    v32 = *(v35 + 8);
    v32(v33, v34);
  }

  v217 = v32;
  v0[71] = v32;
  v36 = v0[59];
  v37 = v0[53];
  v38 = v0[39];
  v39 = v0[38];
  v225(v39, v38);
  v0[72] = *(v36 + *(v37 + 40));

  v222(v36, v37);
  v225(v39, v38);
  v40 = *(v36 + *(v37 + 36));

  v222(v36, v37);
  v0[26] = v40;
  v41 = sub_24B2D5834();
  v42 = v0[61];
  v43 = v0[62];
  if (v41)
  {
    v0[35] = 0;
    v0[22] = v42;
    v0[23] = v43;
    v44 = sub_24B2D5854();
    sub_24B1A35D0(v44, v45, v46);
    sub_24B2D5214();
  }

  else
  {
    v0[27] = v0[37];
    v0[10] = v42;
    v0[11] = v43;
    v47 = sub_24B2D5854();
    sub_24B1A35D0(v47, v48, v49);
    sub_24B2D5214();
  }

  sub_24B2D5234();
  v0[73] = v0[26];
  v50 = sub_24B2D5854();
  v0[74] = v50;
  v0[75] = sub_24B1A35D0(v50, v51, v52);
  v195 = *(v0 + 19);
  nullsub_1();
  v0[28] = v53;
  *(swift_task_alloc() + 16) = v195;
  sub_24B2D5204();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v196 = v50;
  v54 = sub_24B2D54D4();

  v0[29] = v54;
  sub_24B2D55E4();
  swift_getWitnessTable();
  v0[76] = sub_24B2D5864();

  v0[77] = sub_24B2D5804();

  v55 = sub_24B2D5804();
  v0[78] = v55;
  v56 = sub_24B2D5834();
  v57 = v0[53];
  v58 = v0[44];
  v59 = v0[39];
  v60 = v0[38];
  if ((v56 & 1) == 0)
  {
    v84 = v0[57];
    v85 = v0[48];
    v225(v60, v59);
    v205(v85, v84, v58);
    v222(v84, v57);
    swift_unknownObjectRetain();

    v86 = sub_24B2D3164();
    v87 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v86, v87))
    {
      v201 = v0[61];
      v207 = v0[62];
      v231 = v0[44];
      v237 = v0[48];
      v89 = v0[42];
      v88 = v0[43];
      v193 = v0[41];
      v224 = v87;
      v90 = v0[39];
      v91 = v0[38];
      v92 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v242[0] = v211;
      *v92 = 136447235;
      (*(v90 + 56))(v91, v90);
      sub_24B2D12A4();

      v93 = sub_24B2D24B4();
      v95 = v94;
      (*(v89 + 8))(v88, v193);
      v96 = sub_24AFF321C(v93, v95, v242);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2160;
      *(v92 + 14) = 1752392040;
      *(v92 + 22) = 2081;
      v0[33] = v55;
      v97 = swift_getWitnessTable();
      v98 = sub_24B232AB0((v0 + 33), v196, v97);
      v100 = sub_24AFF321C(v98, v99, v242);

      *(v92 + 24) = v100;
      *(v92 + 32) = 2160;
      *(v92 + 34) = 1752392040;
      *(v92 + 42) = 2081;
      v0[18] = v201;
      v0[19] = v207;

      v101 = sub_24B2D53C4();
      v103 = sub_24AFF321C(v101, v102, v242);

      *(v92 + 44) = v103;
      _os_log_impl(&dword_24AFD2000, v86, v224, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v92, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v211, -1, -1);
      MEMORY[0x24C23D530](v92, -1, -1);

      v104 = v231;
      v105 = v237;
    }

    else
    {
      v135 = v0[48];
      v136 = v0[44];

      v105 = v135;
      v104 = v136;
    }

    v217(v105, v104);
    v239 = v0[39];
    v137 = sub_24B2D5834();
    v233 = (*(v239 + 72) + **(v239 + 72));
    v138 = swift_task_alloc();
    v0[79] = v138;
    *v138 = v0;
    v138[1] = sub_24B19C0DC;
    v139 = v0[39];
    v140 = v0[38];
    v141 = v137 & 1;
    v142 = v55;
    v143 = v233;

    return v143(v142, v141, v140, v139);
  }

  v61 = v0[58];
  v62 = v0[49];
  v225(v60, v59);
  v205(v62, v61, v58);
  v222(v61, v57);
  swift_unknownObjectRetain();

  v63 = sub_24B2D3164();
  v64 = sub_24B2D5934();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v63, v64))
  {
    v200 = v0[61];
    v206 = v0[62];
    v230 = v0[44];
    v236 = v0[49];
    v66 = v0[42];
    v65 = v0[43];
    v223 = v64;
    v67 = v0[41];
    v69 = v0[38];
    v68 = v0[39];
    v70 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v242[0] = v210;
    *v70 = 136447235;
    (*(v68 + 56))(v69, v68);
    sub_24B2D12A4();

    v71 = sub_24B2D24B4();
    v73 = v72;
    (*(v66 + 8))(v65, v67);
    v74 = sub_24AFF321C(v71, v73, v242);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2160;
    *(v70 + 14) = 1752392040;
    *(v70 + 22) = 2081;
    v0[34] = v55;
    v75 = swift_getWitnessTable();
    v76 = sub_24B232AB0((v0 + 34), v196, v75);
    v78 = sub_24AFF321C(v76, v77, v242);

    *(v70 + 24) = v78;
    *(v70 + 32) = 2160;
    *(v70 + 34) = 1752392040;
    *(v70 + 42) = 2081;
    v0[20] = v200;
    v0[21] = v206;

    v79 = sub_24B2D53C4();
    v81 = sub_24AFF321C(v79, v80, v242);

    *(v70 + 44) = v81;
    _os_log_impl(&dword_24AFD2000, v63, v223, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v70, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v210, -1, -1);
    MEMORY[0x24C23D530](v70, -1, -1);

    v82 = v230;
    v83 = v236;
  }

  else
  {
    v106 = v0[49];
    v107 = v0[44];

    v83 = v106;
    v82 = v107;
  }

  v217(v83, v82);
  if ((sub_24B2D5834() & 1) == 0)
  {
    v228 = v0[69];
    v220 = v0[67];
    v145 = v0[65];
    v146 = v0[55];
    v214 = v0[53];
    v147 = v0[46];
    v148 = v0[44];
    v149 = v0[39];
    v150 = v0[38];

    v145(v150, v149);
    v220(v147, v146, v148);
    v228(v146, v214);
    swift_unknownObjectRetain();

    v151 = sub_24B2D3164();
    v152 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v151, v152))
    {
      v198 = v0[77];
      v204 = v0[74];
      v240 = v0[71];
      v209 = v0[61];
      v215 = v0[62];
      v153 = v0[43];
      v229 = v0[44];
      v234 = v0[46];
      v154 = v0[41];
      v155 = v0[42];
      v156 = v0[39];
      v157 = v0[38];
      v158 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v242[0] = v221;
      *v158 = 136447235;
      (*(v156 + 56))(v157, v156);
      sub_24B2D12A4();

      v159 = sub_24B2D24B4();
      v161 = v160;
      (*(v155 + 8))(v153, v154);
      v162 = sub_24AFF321C(v159, v161, v242);

      *(v158 + 4) = v162;
      *(v158 + 12) = 2160;
      *(v158 + 14) = 1752392040;
      *(v158 + 22) = 2081;
      v0[31] = v198;
      v163 = swift_getWitnessTable();
      v164 = sub_24B232AB0((v0 + 31), v204, v163);
      v166 = sub_24AFF321C(v164, v165, v242);

      *(v158 + 24) = v166;
      *(v158 + 32) = 2160;
      *(v158 + 34) = 1752392040;
      *(v158 + 42) = 2081;
      v0[14] = v209;
      v0[15] = v215;

      v167 = sub_24B2D53C4();
      v169 = sub_24AFF321C(v167, v168, v242);

      *(v158 + 44) = v169;
      _os_log_impl(&dword_24AFD2000, v151, v152, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v158, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v221, -1, -1);
      MEMORY[0x24C23D530](v158, -1, -1);

      v240(v234, v229);
    }

    else
    {
      v174 = v0[71];
      v175 = v0[46];
      v176 = v0[44];

      v174(v175, v176);
    }

    v241 = v0[39];
    v177 = sub_24B2D5834();

    v235 = (*(v241 + 64) + **(v241 + 64));
    v178 = swift_task_alloc();
    v0[81] = v178;
    *v178 = v0;
    v178[1] = sub_24B19CC30;
    v139 = v0[39];
    v140 = v0[38];
    v141 = v177 & 1;
    v142 = v0[77];
    v143 = v235;

    return v143(v142, v141, v140, v139);
  }

  v226 = v0[69];
  v218 = v0[67];
  v202 = v0[65];
  v108 = v0[56];
  v212 = v0[53];
  v109 = v0[47];
  v110 = v0[44];
  v111 = v0[39];
  v112 = v0[38];

  v202(v112, v111);
  v218(v109, v108, v110);
  v226(v108, v212);
  swift_unknownObjectRetain();

  v113 = sub_24B2D3164();
  v114 = sub_24B2D5934();
  swift_unknownObjectRelease();

  v115 = os_log_type_enabled(v113, v114);
  v116 = v0[78];
  if (v115)
  {
    v197 = v0[74];
    v238 = v0[71];
    v203 = v0[61];
    v208 = v0[62];
    v227 = v0[44];
    v232 = v0[47];
    v117 = v0[42];
    v118 = v0[43];
    v219 = v114;
    v119 = v0[41];
    v120 = v0[38];
    v121 = v0[39];
    v122 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v242[0] = v213;
    *v122 = 136447235;
    (*(v121 + 56))(v120, v121);
    sub_24B2D12A4();

    v123 = sub_24B2D24B4();
    v125 = v124;
    (*(v117 + 8))(v118, v119);
    v126 = sub_24AFF321C(v123, v125, v242);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2160;
    *(v122 + 14) = 1752392040;
    *(v122 + 22) = 2081;
    v0[32] = v116;
    v127 = swift_getWitnessTable();
    v128 = sub_24B232AB0((v0 + 32), v197, v127);
    v130 = v129;

    v131 = sub_24AFF321C(v128, v130, v242);

    *(v122 + 24) = v131;
    *(v122 + 32) = 2160;
    *(v122 + 34) = 1752392040;
    *(v122 + 42) = 2081;
    v0[16] = v203;
    v0[17] = v208;

    v132 = sub_24B2D53C4();
    v134 = sub_24AFF321C(v132, v133, v242);

    *(v122 + 44) = v134;
    _os_log_impl(&dword_24AFD2000, v113, v219, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v122, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v213, -1, -1);
    MEMORY[0x24C23D530](v122, -1, -1);

    v238(v232, v227);
  }

  else
  {
    v170 = v0[71];
    v171 = v0[47];
    v172 = v0[44];

    v170(v171, v172);
  }

  if (sub_24B2D5834())
  {
    v173 = 0;
  }

  else
  {
  }

  v189 = v0[76];
  v180 = v0[61];
  v179 = v0[62];
  v181 = v0[53];
  v182 = v0[39];
  v187 = v0[38];
  v0[30] = v173;
  v0[12] = v180;
  v0[13] = v179;
  v183 = *(v182 + 48);
  v186 = v183(v0 + 2);
  sub_24B2D5214();
  sub_24B2D5234();
  sub_24B1A395C(v181);
  v186(v0 + 2, 0);
  v184 = (v183)(v0 + 6, v187, v182);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v189, v181);
  v184(v0 + 6, 0);

  v185 = v0[1];

  return v185();
}

uint64_t sub_24B19C0DC()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {

    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19CFA0;
  }

  else
  {
    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19C224;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19C224()
{
  v102 = v0;
  if (sub_24B2D5834())
  {
    v91 = v0[69];
    v87 = v0[67];
    v78 = v0[65];
    v1 = v0[56];
    v83 = v0[53];
    v2 = v0[47];
    v3 = v0[44];
    v4 = v0[39];
    v5 = v0[38];

    v78(v5, v4);
    v87(v2, v1, v3);
    v91(v1, v83);
    swift_unknownObjectRetain();

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();
    swift_unknownObjectRelease();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[78];
    if (v8)
    {
      v76 = v0[74];
      v98 = v0[71];
      v79 = v0[61];
      v81 = v0[62];
      v92 = v0[44];
      v95 = v0[47];
      v10 = v0[42];
      v11 = v0[43];
      v88 = v7;
      v12 = v0[41];
      v13 = v0[38];
      v14 = v0[39];
      v15 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v101 = v84;
      *v15 = 136447235;
      (*(v14 + 56))(v13, v14);
      sub_24B2D12A4();

      v16 = sub_24B2D24B4();
      v18 = v17;
      (*(v10 + 8))(v11, v12);
      v19 = sub_24AFF321C(v16, v18, &v101);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      v0[32] = v9;
      WitnessTable = swift_getWitnessTable();
      v21 = sub_24B232AB0((v0 + 32), v76, WitnessTable);
      v23 = v22;

      v24 = sub_24AFF321C(v21, v23, &v101);

      *(v15 + 24) = v24;
      *(v15 + 32) = 2160;
      *(v15 + 34) = 1752392040;
      *(v15 + 42) = 2081;
      v0[16] = v79;
      v0[17] = v81;

      v25 = sub_24B2D53C4();
      v27 = sub_24AFF321C(v25, v26, &v101);

      *(v15 + 44) = v27;
      _os_log_impl(&dword_24AFD2000, v6, v88, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v15, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v84, -1, -1);
      MEMORY[0x24C23D530](v15, -1, -1);

      v98(v95, v92);
    }

    else
    {
      v53 = v0[71];
      v54 = v0[47];
      v55 = v0[44];

      v53(v54, v55);
    }

    if (sub_24B2D5834())
    {
      v56 = 0;
    }

    else
    {
    }

    v75 = v0[76];
    v67 = v0[61];
    v66 = v0[62];
    v68 = v0[53];
    v69 = v0[39];
    v74 = v0[38];
    v0[30] = v56;
    v0[12] = v67;
    v0[13] = v66;
    v70 = *(v69 + 48);
    v73 = v70(v0 + 2);
    sub_24B2D5214();
    sub_24B2D5234();
    sub_24B1A395C(v68);
    v73(v0 + 2, 0);
    v71 = (v70)(v0 + 6, v74, v69);
    SubscriptionManagerStorage.uniqueSubscriptions.setter(v75, v68);
    v71(v0 + 6, 0);

    v72 = v0[1];

    return v72();
  }

  else
  {
    v93 = v0[69];
    v89 = v0[67];
    v28 = v0[65];
    v29 = v0[55];
    v85 = v0[53];
    v30 = v0[46];
    v31 = v0[44];
    v32 = v0[39];
    v33 = v0[38];

    v28(v33, v32);
    v89(v30, v29, v31);
    v93(v29, v85);
    swift_unknownObjectRetain();

    v34 = sub_24B2D3164();
    v35 = sub_24B2D5934();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v34, v35))
    {
      v77 = v0[77];
      v80 = v0[74];
      v99 = v0[71];
      v82 = v0[61];
      v86 = v0[62];
      v36 = v0[43];
      v94 = v0[44];
      v96 = v0[46];
      v37 = v0[41];
      v38 = v0[42];
      v39 = v0[39];
      v40 = v0[38];
      v41 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v101 = v90;
      *v41 = 136447235;
      (*(v39 + 56))(v40, v39);
      sub_24B2D12A4();

      v42 = sub_24B2D24B4();
      v44 = v43;
      (*(v38 + 8))(v36, v37);
      v45 = sub_24AFF321C(v42, v44, &v101);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2160;
      *(v41 + 14) = 1752392040;
      *(v41 + 22) = 2081;
      v0[31] = v77;
      v46 = swift_getWitnessTable();
      v47 = sub_24B232AB0((v0 + 31), v80, v46);
      v49 = sub_24AFF321C(v47, v48, &v101);

      *(v41 + 24) = v49;
      *(v41 + 32) = 2160;
      *(v41 + 34) = 1752392040;
      *(v41 + 42) = 2081;
      v0[14] = v82;
      v0[15] = v86;

      v50 = sub_24B2D53C4();
      v52 = sub_24AFF321C(v50, v51, &v101);

      *(v41 + 44) = v52;
      _os_log_impl(&dword_24AFD2000, v34, v35, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v41, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v90, -1, -1);
      MEMORY[0x24C23D530](v41, -1, -1);

      v99(v96, v94);
    }

    else
    {
      v57 = v0[71];
      v58 = v0[46];
      v59 = v0[44];

      v57(v58, v59);
    }

    v100 = v0[39];
    v60 = sub_24B2D5834();

    v97 = (*(v100 + 64) + **(v100 + 64));
    v61 = swift_task_alloc();
    v0[81] = v61;
    *v61 = v0;
    v61[1] = sub_24B19CC30;
    v62 = v0[77];
    v63 = v0[39];
    v64 = v0[38];

    return v97(v62, v60 & 1, v64, v63);
  }
}

uint64_t sub_24B19CC30()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19D0AC;
  }

  else
  {

    v3 = *(v2 + 504);
    v4 = *(v2 + 512);
    v5 = sub_24B19CD4C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19CD4C()
{

  if (sub_24B2D5834())
  {
    v1 = 0;
  }

  else
  {
  }

  v12 = v0[76];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[53];
  v5 = v0[39];
  v11 = v0[38];
  v0[30] = v1;
  v0[12] = v3;
  v0[13] = v2;
  v6 = *(v5 + 48);
  v10 = v6(v0 + 2);
  sub_24B2D5214();
  sub_24B2D5234();
  sub_24B1A395C(v4);
  v10(v0 + 2, 0);
  v7 = (v6)(v0 + 6, v11, v5);
  SubscriptionManagerStorage.uniqueSubscriptions.setter(v12, v4);
  v7(v0 + 6, 0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24B19CFA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19D0AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19D1CC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24B2D2504();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[16] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[17] = AssociatedConformanceWitness;
  v9 = type metadata accessor for SubscriptionManagerStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v3[18] = v9;
  v3[19] = *(v9 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v11 = sub_24B2D5604();
  v3[24] = v11;
  v3[25] = v10;

  return MEMORY[0x2822009F8](sub_24B19D3F8, v11, v10);
}

uint64_t sub_24B19D3F8()
{
  v60 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v0[7] + 32);
  v4(v0[6]);
  v5 = *(v1 + *(v2 + 44));
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5 != 1)
  {
    v30 = v0[20];
    v55 = v0[18];
    v31 = v0[13];
    v32 = v0[14];
    v33 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v31 + 16))(v32, v30, v33);
    v6(v30, v55);
    swift_unknownObjectRetain();
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v34 = os_log_type_enabled(v14, v15);
    v19 = v0[13];
    v17 = v0[14];
    v18 = v0[12];
    if (v34)
    {
      v35 = v0[10];
      v36 = v0[11];
      v51 = v0[9];
      v54 = v0[12];
      v57 = v0[14];
      v37 = v0[7];
      v38 = v0[6];
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v24 = 136446466;
      (*(v37 + 56))(v38, v37);
      sub_24B2D12A4();

      v39 = sub_24B2D24B4();
      v41 = v40;
      (*(v35 + 8))(v36, v51);
      v42 = sub_24AFF321C(v39, v41, &v59);

      *(v24 + 4) = v42;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AFF321C(0xD000000000000016, 0x800000024B2DC720, &v59);
      v29 = "Provider(%{public}s):%s - Skipping since it's not paused";
      goto LABEL_7;
    }

LABEL_8:

    (*(v19 + 8))(v17, v18);
    goto LABEL_9;
  }

  v7 = v0[23];
  v8 = v0[18];
  (v4)(v0[6], v0[7]);

  v6(v7, v8);
  v9 = sub_24B2D5834();

  v10 = v0[18];
  if (v9)
  {
    v11 = v0[21];
    v12 = v0[15];
    v13 = v0[13];
    v53 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v13 + 16))(v12, v11, v53);
    v6(v11, v10);
    swift_unknownObjectRetain();
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[15];
    v18 = v0[12];
    v19 = v0[13];
    if (v16)
    {
      v20 = v0[10];
      v21 = v0[11];
      v50 = v0[9];
      v54 = v0[12];
      v57 = v0[15];
      v22 = v0[7];
      v23 = v0[6];
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v24 = 136446466;
      (*(v22 + 56))(v23, v22);
      sub_24B2D12A4();

      v25 = sub_24B2D24B4();
      v27 = v26;
      (*(v20 + 8))(v21, v50);
      v28 = sub_24AFF321C(v25, v27, &v59);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AFF321C(0xD000000000000016, 0x800000024B2DC720, &v59);
      v29 = "Provider(%{public}s):%s - Skipping since it's not running";
LABEL_7:
      _os_log_impl(&dword_24AFD2000, v14, v15, v29, v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v24, -1, -1);

      (*(v19 + 8))(v57, v54);
LABEL_9:

      v43 = v0[1];

      return v43();
    }

    goto LABEL_8;
  }

  v45 = v0[22];
  v58 = v0[7];
  v4(v0[6]);
  v46 = *(v45 + *(v8 + 40));
  v0[26] = v46;

  v6(v45, v10);
  v56 = (*(v58 + 64) + **(v58 + 64));
  v47 = swift_task_alloc();
  v0[27] = v47;
  *v47 = v0;
  v47[1] = sub_24B19DA64;
  v48 = v0[7];
  v49 = v0[6];

  return v56(v46, 1, v49, v48);
}

uint64_t sub_24B19DA64()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B1A3644;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B19DB80;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19DB80()
{
  v1 = v0[18];
  v2 = (*(v0[7] + 48))(v0 + 2, v0[6]);
  SubscriptionManagerStorage.isPaused.setter(0, v1);
  v2(v0 + 2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B19DC80(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24B2D2504();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_24B2D3184();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[16] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[17] = AssociatedConformanceWitness;
  v9 = type metadata accessor for SubscriptionManagerStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v3[18] = v9;
  v3[19] = *(v9 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v11 = sub_24B2D5604();
  v3[24] = v11;
  v3[25] = v10;

  return MEMORY[0x2822009F8](sub_24B19DEAC, v11, v10);
}

uint64_t sub_24B19DEAC()
{
  v60 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v0[7] + 32);
  v4(v0[6]);
  v5 = *(v1 + *(v2 + 44));
  v6 = *(v3 + 8);
  v6(v1, v2);
  if (v5)
  {
    v7 = v0[20];
    v53 = v0[18];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v8 + 16))(v9, v7, v10);
    v6(v7, v53);
    swift_unknownObjectRetain();
    v11 = sub_24B2D3164();
    v12 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    if (v13)
    {
      v17 = v0[10];
      v18 = v0[11];
      v50 = v0[9];
      v54 = v0[12];
      v57 = v0[14];
      v19 = v0[7];
      v20 = v0[6];
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v21 = 136446466;
      (*(v19 + 56))(v20, v19);
      sub_24B2D12A4();

      v22 = sub_24B2D24B4();
      v24 = v23;
      (*(v17 + 8))(v18, v50);
      v25 = sub_24AFF321C(v22, v24, &v59);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DC700, &v59);
      v26 = "Provider(%{public}s):%s - Skipping since it's already paused";
LABEL_7:
      _os_log_impl(&dword_24AFD2000, v11, v12, v26, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);

      (*(v15 + 8))(v57, v54);
LABEL_9:

      v43 = v0[1];

      return v43();
    }

    goto LABEL_8;
  }

  v27 = v0[23];
  v28 = v0[18];
  (v4)(v0[6], v0[7]);

  v6(v27, v28);
  v29 = sub_24B2D5834();

  v30 = v0[18];
  if (v29)
  {
    v31 = v0[21];
    v32 = v0[15];
    v33 = v0[13];
    v55 = v0[12];
    (v4)(v0[6], v0[7]);
    (*(v33 + 16))(v32, v31, v55);
    v6(v31, v30);
    swift_unknownObjectRetain();
    v11 = sub_24B2D3164();
    v12 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v34 = os_log_type_enabled(v11, v12);
    v14 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    if (v34)
    {
      v35 = v0[10];
      v36 = v0[11];
      v51 = v0[9];
      v54 = v0[12];
      v57 = v0[15];
      v37 = v0[7];
      v38 = v0[6];
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v21 = 136446466;
      (*(v37 + 56))(v38, v37);
      sub_24B2D12A4();

      v39 = sub_24B2D24B4();
      v41 = v40;
      (*(v35 + 8))(v36, v51);
      v42 = sub_24AFF321C(v39, v41, &v59);

      *(v21 + 4) = v42;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AFF321C(0xD000000000000015, 0x800000024B2DC700, &v59);
      v26 = "Provider(%{public}s):%s - Skipping since it's not running";
      goto LABEL_7;
    }

LABEL_8:

    (*(v15 + 8))(v14, v16);
    goto LABEL_9;
  }

  v45 = v0[22];
  v58 = v0[7];
  v4(v0[6]);
  v46 = *(v45 + *(v28 + 40));
  v0[26] = v46;

  v6(v45, v30);
  v56 = (*(v58 + 72) + **(v58 + 72));
  v47 = swift_task_alloc();
  v0[27] = v47;
  *v47 = v0;
  v47[1] = sub_24B19E514;
  v48 = v0[7];
  v49 = v0[6];

  return v56(v46, 1, v49, v48);
}

uint64_t sub_24B19E514()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B19E730;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_24B19E630;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B19E630()
{
  v1 = v0[18];
  v2 = (*(v0[7] + 48))(v0 + 2, v0[6]);
  SubscriptionManagerStorage.isPaused.setter(1, v1);
  v2(v0 + 2, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B19E730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_24B2D2504();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_24B2D3184();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[14] = AssociatedConformanceWitness;
  v11 = type metadata accessor for SubscriptionManagerStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v5[15] = v11;
  v5[16] = *(v11 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v13 = sub_24B2D5604();
  v5[21] = v13;
  v5[22] = v12;

  return MEMORY[0x2822009F8](sub_24B19EA18, v13, v12);
}

uint64_t sub_24B19EA18()
{
  v45 = v0;
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v5 + 32);
  v0[23] = v6;
  v0[24] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0xBE12000000000000;
  v6(v4);
  v7 = *(v3 + 8);
  v0[25] = v7;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

  v7(v1, v2);
  v8 = sub_24B2D5834();

  v9 = v0[15];
  if (v8)
  {
    v10 = v0[17];
    v40 = v0[15];
    v11 = v0[11];
    v12 = v0[12];
    v37 = v0[10];
    (v6)(v0[4], v0[5]);
    (*(v11 + 16))(v12, v10, v37);
    v7(v10, v40);
    swift_unknownObjectRetain();
    v13 = sub_24B2D3164();
    v14 = sub_24B2D5934();
    swift_unknownObjectRelease();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    if (v15)
    {
      v19 = v0[8];
      v20 = v0[9];
      v35 = v0[7];
      v38 = v0[10];
      v41 = v0[12];
      v21 = v0[5];
      v22 = v0[4];
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v23 = 136446466;
      (*(v21 + 56))(v22, v21);
      sub_24B2D12A4();

      v24 = sub_24B2D24B4();
      v26 = v25;
      (*(v19 + 8))(v20, v35);
      v27 = sub_24AFF321C(v24, v26, &v44);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_24AFF321C(0xD000000000000028, 0x800000024B2DC6D0, &v44);
      _os_log_impl(&dword_24AFD2000, v13, v14, "Provider(%{public}s):%s - Skipping since it's not running", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v36, -1, -1);
      MEMORY[0x24C23D530](v23, -1, -1);

      (*(v17 + 8))(v41, v38);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v43 = (v0[2] + *v0[2]);
    v34 = swift_task_alloc();
    v0[34] = v34;
    *v34 = v0;
    v34[1] = sub_24B19F558;

    return v43();
  }

  else
  {
    v28 = v0[19];
    v42 = v0[5];
    v6(v0[4]);
    v29 = *(v28 + *(v2 + 40));
    v0[27] = v29;

    v7(v28, v9);
    v39 = (*(v42 + 72) + **(v42 + 72));
    v30 = swift_task_alloc();
    v0[28] = v30;
    *v30 = v0;
    v30[1] = sub_24B19EF08;
    v31 = v0[5];
    v32 = v0[4];

    return v39(v29, 1, v32, v31);
  }
}

uint64_t sub_24B19EF08()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = v2[22];

    return MEMORY[0x2822009F8](sub_24B19F70C, v3, v4);
  }

  else
  {
    v5 = v2[2];

    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    v2[30] = v6;
    *v6 = v2;
    v6[1] = sub_24B19F0DC;

    return v8();
  }
}

uint64_t sub_24B19F0DC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);

    return MEMORY[0x2822009F8](sub_24B19F25C, v6, v7);
  }
}

uint64_t sub_24B19F25C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v10 = *(v0 + 40);
  (*(v0 + 184))(*(v0 + 32));
  v4 = *(v2 + *(v3 + 40));
  *(v0 + 248) = v4;

  v1(v2, v3);
  v9 = (*(v10 + 64) + **(v10 + 64));
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_24B19F3C8;
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);

  return v9(v4, 1, v7, v6);
}

uint64_t sub_24B19F3C8()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = v2[22];

    return MEMORY[0x2822009F8](sub_24B19F7BC, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B19F558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B19F70C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19F7BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B19F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19F958;

  return sub_24B197158(a2, v6 + 2, a5, a6);
}

uint64_t sub_24B19F958()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B19FA8C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B19FABC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t, uint64_t))
{
  v8 = *a2;
  v9 = a2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v11 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v12 = sub_24B2D5554();
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = sub_24B1A2638(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v18[0] = v8;
  v18[1] = v9;
  a5(v15, v18, a3, a4);
}

double sub_24B19FC78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v10 = a2[1];
  (*(a4 + 56))(a3, a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v6;
  v12[5] = a1;
  v12[6] = v11;
  v12[7] = v10;
  swift_unknownObjectRetain();

  sub_24B2D12C4();

  return result;
}

uint64_t sub_24B19FD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19FE20;

  return sub_24B1986B0(a2, v6 + 2, a5, a6);
}

uint64_t sub_24B19FE20()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B1A3648, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B19FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a2;
  v5[3] = a3;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_24B19FE20;

  return sub_24B199F70(v5 + 2, a4, a5);
}

uint64_t sub_24B1A0010()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B19FF54(v4, v5, v6, v2, v3);
}

uint64_t sub_24B1A00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19FE20;

  return sub_24B19A6FC(a2, v6 + 2, a5, a6);
}

uint64_t sub_24B1A01B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A00E4(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A0290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B19D1CC(a2, a3);
}

double sub_24B1A035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a2 + 56))();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  swift_unknownObjectRetain();
  sub_24B2D12C4();

  return result;
}

uint64_t sub_24B1A0404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return sub_24B19DC80(a2, a3);
}

uint64_t sub_24B1A04B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AFFDE44;

  return sub_24B19E7F4(a2, a3, a4, a5);
}

uint64_t SubscriptionsManager.addSubscription(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = a2[1];
  v5[8] = *a2;
  v5[9] = v6;
  v8 = sub_24B2D5604();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_24B1A05F8, v8, v7);
}

uint64_t sub_24B1A05F8()
{
  v1 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_24B2D5554();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_24B1A2638(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v0[12] = v7;
  v9 = v0[8];
  v8 = v0[9];

  v0[2] = v9;
  v0[3] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24B1A07C8;
  v11 = v0[6];
  v12 = v0[5];

  return SubscriptionsManager.addSubscriptions(_:for:)(v7, v0 + 2, v12, v11);
}

uint64_t sub_24B1A07C8()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    return MEMORY[0x2822009F8](sub_24B1A0920, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.addSubscriptions(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  v8 = sub_24B2D5604();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_24B1A09BC, v8, v7);
}

uint64_t sub_24B1A09BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[10] = (*(v4 + 56))(v5, v4);
  v7 = swift_allocObject();
  v0[11] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v2;
  v7[7] = v1;
  v10 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A0B08;

  return v10(&unk_24B2EFA58, v7);
}

uint64_t sub_24B1A0B08()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_24B1A0C4C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B1A0C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A0CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B19FE20;

  return sub_24B197158(a2, v6 + 2, a5, a6);
}

uint64_t SubscriptionsManager.removeSubscription(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = a2[1];
  v5[8] = *a2;
  v5[9] = v6;
  v8 = sub_24B2D5604();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_24B1A0E08, v8, v7);
}

uint64_t sub_24B1A0E08()
{
  v1 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_24B2D5554();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_24B1A2638(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v0[12] = v7;
  v9 = v0[8];
  v8 = v0[9];

  v0[2] = v9;
  v0[3] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24B1A0FD8;
  v11 = v0[6];
  v12 = v0[5];

  return SubscriptionsManager.removeSubscriptions(_:for:)(v7, v0 + 2, v12, v11);
}

uint64_t sub_24B1A0FD8()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    return MEMORY[0x2822009F8](sub_24B1A364C, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.removeSubscriptions(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  v8 = sub_24B2D5604();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_24B1A11B4, v8, v7);
}

uint64_t sub_24B1A11B4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[10] = (*(v4 + 56))(v5, v4);
  v7 = swift_allocObject();
  v0[11] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v2;
  v7[7] = v1;
  v10 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A1300;

  return v10(&unk_24B2EFA78, v7);
}

uint64_t sub_24B1A1300()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_24B1A3668, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.removeSubscriber(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[4] = v3;
  v4[5] = v5;
  v4[6] = v6;
  v8 = sub_24B2D5604();
  v4[7] = v8;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_24B1A14CC, v8, v7);
}

uint64_t sub_24B1A14CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v0[9] = (*(v4 + 56))(v5, v4);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v1;
  v9 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_24B1A160C;

  return v9(&unk_24B2EFA90, v6);
}

uint64_t sub_24B1A160C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](sub_24B1A3670, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.setSubscription(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = a2[1];
  v5[8] = *a2;
  v5[9] = v6;
  v8 = sub_24B2D5604();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_24B1A17D4, v8, v7);
}

uint64_t sub_24B1A17D4()
{
  v1 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_24B2D5554();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  sub_24B2D55E4();
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = sub_24B1A2638(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v0[12] = v7;
  v9 = v0[8];
  v8 = v0[9];

  v0[2] = v9;
  v0[3] = v8;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24B1A0FD8;
  v11 = v0[6];
  v12 = v0[5];

  return SubscriptionsManager.setSubscriptions(_:for:)(v7, v0 + 2, v12, v11);
}

uint64_t SubscriptionsManager.setSubscriptions(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  v8 = sub_24B2D5604();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_24B1A1A28, v8, v7);
}

uint64_t sub_24B1A1A28()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v0[10] = (*(v4 + 56))(v5, v4);
  v7 = swift_allocObject();
  v0[11] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v7[6] = v2;
  v7[7] = v1;
  v10 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A1300;

  return v10(&unk_24B2EFAB0, v7);
}

uint64_t SubscriptionsManager.resumeSubscriptions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_24B2D5604();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B1A1BEC, v5, v4);
}

uint64_t sub_24B1A1BEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[7] = (*(v1 + 56))(v3, v1);
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v7 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24B1A1D14;

  return v7(&unk_24B2EFAC8, v4);
}

uint64_t sub_24B1A1D14()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](sub_24B1A366C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t SubscriptionsManager.pauseSubscriptions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_24B2D5604();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B1A1ED0, v5, v4);
}

uint64_t sub_24B1A1ED0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[7] = (*(v1 + 56))(v3, v1);
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v7 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24B1A1FF8;

  return v7(&unk_24B2EFAE0, v4);
}

uint64_t sub_24B1A1FF8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](sub_24B1A213C, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B1A213C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A21A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return sub_24B19DC80(a2, a3);
}

uint64_t SubscriptionsManager.restartSubscriptions(intermediateStep:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_24B2D5604();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_24B1A22D4, v7, v6);
}

uint64_t sub_24B1A22D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v0[9] = (*(v2 + 56))(v3, v2);
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v5;
  v6[6] = v4;
  v9 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);
  swift_unknownObjectRetain();

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_24B1A2414;

  return v9(&unk_24B2EFAF8, v6);
}

uint64_t sub_24B1A2414()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return MEMORY[0x2822009F8](sub_24B1A2558, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_24B1A2558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A25C4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98, &unk_24B2E6670);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

uint64_t sub_24B1A2638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (sub_24B2D55C4())
  {
    sub_24B2D5C14();
    v15 = sub_24B2D5C04();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_24B2D55C4();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_24B2D55A4();
    sub_24B2D5564();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_24B2D5C64();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_24B2D5244();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_24B2D52A4();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24B1A29F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B1A04B0(v4, v5, v6, v2, v3);
}

uint64_t sub_24B1A2AB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B19F88C(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2B70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B19FD54(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2C30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A0290(v4, v2, v3);
}

uint64_t sub_24B1A2CD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A0404(v4, v2, v3);
}

uint64_t sub_24B1A2D80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A0CB8(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2E40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B19FD54(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A2F00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B19FF54(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B1A3004()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AFFDE44;

  return sub_24B1A00E4(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_24B1A30C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A0290(v4, v2, v3);
}

uint64_t sub_24B1A316C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AFFDE44;

  return sub_24B1A21A8(v4, v2, v3);
}

uint64_t objectdestroyTm_25(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 48));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_24B1A3264()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B1A04B0(v4, v5, v6, v2, v3);
}

uint64_t dispatch thunk of SubscriptionsManager.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AFFD370;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SubscriptionsManager.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AFFDE44;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_24B1A35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCDF98[0];
  if (!qword_27EFCDF98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFCDF98);
  }

  return result;
}

double sub_24B1A3624@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t SubscriptionManagerStorage.init(identifier:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for SubscriptionManagerStorage(0, a3, a4, a4);
  v9 = v8[9];
  v10 = sub_24B2D5854();
  swift_getTupleTypeMetadata2();
  v11 = sub_24B2D5584();
  v14 = sub_24B1A35D0(v11, v12, v13);
  v15 = sub_24B1A4278(v11, &type metadata for Subscriber, v10, v14);

  *(a5 + v9) = v15;
  v16 = sub_24B2D5584();
  if (sub_24B2D55C4())
  {
    v17 = sub_24B1A2638(v16, a3, a4);
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  *(a5 + v8[10]) = v17;
  *(a5 + v8[11]) = 0;

  return sub_24B2D3174();
}

uint64_t *(*SubscriptionManagerStorage.subscriptionsBySubscriber.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B1A380C;
}

uint64_t *sub_24B1A380C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B1A395C(*result);
  }

  return result;
}

uint64_t SubscriptionManagerStorage.uniqueSubscriptions.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);

  *(v2 + v5) = a1;

  return sub_24B1A3BEC(a2);
}

uint64_t SubscriptionManagerStorage.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D3184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SubscriptionManagerStorage.subscriptionsBySubscriber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 36);

  *(v2 + v5) = a1;

  return sub_24B1A395C(a2);
}

uint64_t sub_24B1A395C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(a1 + 36));
  (*(v5 + 16))(v8, v2, v4, v6);

  v10 = sub_24B2D3164();
  v11 = sub_24B2D5904();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v9;
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_24B2D5854();
    sub_24B1A35D0(v14, v15, v16);
    v17 = sub_24B2D5214();
    WitnessTable = swift_getWitnessTable();
    v19 = sub_24B232AB0(&v23, v17, WitnessTable);
    v21 = sub_24AFF321C(v19, v20, &v24);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_24AFD2000, v10, v11, "SubscriptionManagerStorage: subscriptionsBySubscriber - %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24B1A3B94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for SubscriptionManagerStorage(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  return a5(v7, v6);
}

uint64_t sub_24B1A3BEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(a1 + 40));
  (*(v5 + 16))(v8, v2, v4, v6);

  v10 = sub_24B2D3164();
  v11 = sub_24B2D5904();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v9;
    v21 = v13;
    *v12 = 136315138;
    v14 = sub_24B2D5854();
    WitnessTable = swift_getWitnessTable();
    v16 = sub_24B232AB0(&v20, v14, WitnessTable);
    v18 = sub_24AFF321C(v16, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_24AFD2000, v10, v11, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t *(*SubscriptionManagerStorage.uniqueSubscriptions.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B1A3E20;
}

uint64_t *sub_24B1A3E20(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B1A3BEC(*result);
  }

  return result;
}

uint64_t sub_24B1A3E58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(a1 + 44));
  (*(v5 + 16))(v8, v2, v4, v6);
  v10 = sub_24B2D3164();
  v11 = sub_24B2D5904();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    if (v9)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v9)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_24AFF321C(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24AFD2000, v10, v11, "SubscriptionManagerStorage: isPaused - %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t *(*SubscriptionManagerStorage.isPaused.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B1A4068;
}

uint64_t *sub_24B1A4068(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B1A3E58(*result);
  }

  return result;
}

unint64_t sub_24B1A4094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B2D5244();

  return sub_24B1A40F0(a1, v6, a2, a3);
}

unint64_t sub_24B1A40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_24B2D52A4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_24B1A4278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24B2D55C4())
  {
    sub_24B2D5DF4();
    v13 = sub_24B2D5DE4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24B2D55C4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24B2D55A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24B2D5C64();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24B1A4094(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_24B1A4564(uint64_t a1)
{
  result = sub_24B2D3184();
  if (v2 <= 0x3F)
  {
    v3 = sub_24B2D5854();
    v5 = v4;
    sub_24B1A35D0(v3, v4, v6);
    result = sub_24B2D5214();
    if (v7 <= 0x3F)
    {
      if (v5 > 0x3F)
      {
        return v3;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

FindMyUICore::Subscriber __swiftcall Subscriber.init()()
{
  v1 = v0;
  v2 = sub_24B2D2504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v6 = sub_24B2D24B4();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  *v1 = v6;
  v1[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t Subscriber.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Subscriber.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B2D6004();
  }
}

uint64_t Subscriber.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1A47FC()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

uint64_t sub_24B1A4850(uint64_t a1)
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

unint64_t sub_24B1A489C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFCE020;
  if (!qword_27EFCE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE020);
  }

  return result;
}

uint64_t sub_24B1A48F0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24B1A4920(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B2D6004();
  }
}

uint64_t sub_24B1A4950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B1A4998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B1A49EC(uint64_t a1)
{
  v2 = sub_24B2D1DA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
  result = MEMORY[0x24C23BFF0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_24B1AF20C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1A4C4C(uint64_t a1)
{
  v2 = sub_24B2D1574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  result = MEMORY[0x24C23BFF0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_24B1AF4EC(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1A4EAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850, &unk_24B2EC0F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24B008890(a1, &v10 - v5, &qword_27EFCC850, &unk_24B2EC0F0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1A504C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24B1A4F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  return sub_24B008890(v1 + v3, a1, &qword_27EFCC850, &unk_24B2EC0F0);
}

uint64_t sub_24B1A4FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B1A504C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24B1A504C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850, &unk_24B2EC0F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_24B1A511C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;

  return result;
}

uint64_t sub_24B1A519C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
}

double sub_24B1A5254@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v8 = v3[3];
  v7 = v3[4];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;

  return result;
}

uint64_t sub_24B1A52D0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  *(v6 + 24) = *(a1 + 3);
}

uint64_t ItemsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ItemsProvider.init(dependencies:)(a1);
  return v2;
}

_OWORD *ItemsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58, &unk_24B2F1240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  swift_defaultActor_initialize();
  v8 = v2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850, &unk_24B2EC0F0);
  v10 = v9[9];
  v11 = MEMORY[0x277D84F90];
  *&v8[v10] = sub_24B19494C(MEMORY[0x277D84F90]);
  *&v8[v9[10]] = MEMORY[0x277D84FA0];
  v8[v9[11]] = 0;
  sub_24B2D3174();
  v12 = v2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  *(v12 + 3) = sub_24B194548(v11);
  v12[16] = 0;
  *(v12 + 4) = sub_24B1933E8(v11);
  strcpy(v12, "ItemsProvider");
  *(v12 + 7) = -4864;
  v13 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_taskQueue;
  sub_24B2D12D4();
  v14 = sub_24B2D1294();
  v15 = *(*(v14 - 8) + 56);
  v16 = *a1;
  v21 = a1[1];
  v22 = v16;
  v20 = a1[2];
  v15(v7, 1, 1, v14);
  sub_24B2D24F4();
  *(v2 + v13) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher) = 0;
  v17 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_loadingStateResetTaskBySubscription;
  *(v2 + v17) = sub_24B194764(v11);
  v18 = v21;
  v2[7] = v22;
  v2[8] = v18;
  v2[9] = v20;
  return v2;
}

uint64_t sub_24B1A569C()
{
  v1[19] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v1[20] = swift_task_alloc();
  v2 = sub_24B2D3184();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A5794, v0, 0);
}

uint64_t sub_24B1A5794()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5934();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v0[18] = v11;
    v14 = sub_24B2D53C4();
    v16 = sub_24AFF321C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v28);
    _os_log_impl(&dword_24AFD2000, v6, v7, "ItemsProvider%s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher;
  v0[24] = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher;
  if (*(v20 + v21))
  {

    sub_24B2D5764();

    v22 = v0[19];
  }

  else
  {
    v22 = v20;
  }

  *(v20 + v21) = 0;

  v23 = v22 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  sub_24B1F4268(v24);
  swift_endAccess();
  v27 = (*(v22 + 128) + **(v22 + 128));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_24B1A5AE8;

  return v27(v0 + 2);
}

uint64_t sub_24B1A5AE8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B1A5C14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1A5C14()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider, &protocol conformance descriptor for ItemsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2EFE58, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B1A5D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  v5[13] = swift_task_alloc();
  v7 = sub_24B2D1F24();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A0, &qword_24B2EFE08);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE120, &qword_24B2EFE60);
  v5[20] = swift_task_alloc();
  v8 = sub_24B2D1DA4();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v9 = sub_24B2D24A4();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A5FF4, a5, 0);
}

uint64_t sub_24B1A5FF4()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider, &protocol conformance descriptor for ItemsProvider);
  v0[30] = v6;
  v7 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_24B1A61F0;

  return MEMORY[0x282200310](v0 + 7, v7, v6);
}

uint64_t sub_24B1A61F0()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_24B1A6300, v4, 0);
  }

  return result;
}

uint64_t sub_24B1A6300()
{
  v117 = v0;
  if (v0[7])
  {
    v101 = v0[7];
    sub_24B2D2494();
    v1 = MEMORY[0x277D84FA0];
    v0[8] = MEMORY[0x277D84FA0];
    v0[9] = v1;
    v2 = sub_24B194974(MEMORY[0x277D84F90]);
    v5 = v101;
    v6 = v2;
    v102 = *(v101 + 16);
    if (!v102)
    {

      v86 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
LABEL_64:
        __break(1u);
        return MEMORY[0x282200310](v2, v3, v4);
      }

      v8 = v101 + 32 + 16 * v7;
      v2 = *v8;
      v9 = *(v8 + 8);
      v106 = v2;
      if (v9)
      {
        break;
      }

      v68 = *(v2 + 16);
      if (v68)
      {
        v103 = v7;
        v115 = v6;
        v69 = v0[22];
        v70 = v2 + ((*(v69 + 80) + 32) & ~*(v69 + 80));

        v113 = *(v69 + 72);
        v71 = *(v69 + 16);
        do
        {
          v73 = v0[25];
          v72 = v0[26];
          v74 = v0[21];
          v75 = v0[22];
          v71(v72, v70, v74);
          sub_24B1AF20C(v73, v72);
          (*(v75 + 8))(v73, v74);
          v70 += v113;
          --v68;
        }

        while (v68);
LABEL_4:

LABEL_5:
        v6 = v115;
        v5 = v101;
        v7 = v103;
      }

LABEL_6:
      if (++v7 == v102)
      {

        v86 = v0[8];
        if (!*(v86 + 16))
        {
LABEL_57:

          goto LABEL_58;
        }

LABEL_55:
        v87 = v0[30];
        v89 = v0[12];
        v88 = v0[13];
        v90 = sub_24B2D56D4();
        (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
        v91 = swift_allocObject();
        v91[2] = v89;
        v91[3] = v87;
        v91[4] = v89;
        v91[5] = v86;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v88, &unk_24B2EFE68, v91);

LABEL_58:
        v92 = v0[28];
        v93 = v0[29];
        v94 = v0[27];

        v96 = sub_24B1A49EC(v95);
        sub_24B25A7F8(v0[9], v96);
        v116 = v97;
        sub_24B1A87BC(&v116, v6, v93);

        (*(v92 + 8))(v93, v94);
        v98 = v0[30];
        v99 = v0[12];
        __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
        v100 = swift_task_alloc();
        v0[31] = v100;
        *v100 = v0;
        v100[1] = sub_24B1A61F0;
        v2 = (v0 + 7);
        v3 = v99;
        v4 = v98;

        return MEMORY[0x282200310](v2, v3, v4);
      }
    }

    if (v9 == 1)
    {
      v103 = v7;
      v10 = v2;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v6;
      v105 = v10 + 64;
      v12 = -1 << *(v10 + 32);
      if (-v12 < 64)
      {
        v13 = ~(-1 << -v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v10 + 64);
      v104 = (63 - v12) >> 6;

      for (i = 0; ; i = v111)
      {
        v115 = v6;
        v112 = isUniquelyReferenced_nonNull_native;
        if (!v14)
        {
          if (v104 <= i + 1)
          {
            v18 = i + 1;
          }

          else
          {
            v18 = v104;
          }

          while (1)
          {
            v17 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v17 >= v104)
            {
              v111 = v18 - 1;
              v66 = v0[19];
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8, &qword_24B2EFE10);
              (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
              v14 = 0;
              goto LABEL_25;
            }

            v14 = *(v105 + 8 * v17);
            ++i;
            if (v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v17 = i;
LABEL_24:
        v19 = v0[21];
        v20 = v0[22];
        v21 = v0[19];
        v22 = v0[17];
        v23 = v0[15];
        v107 = v0[14];
        v110 = v0[25];
        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v25 = v24 | (v17 << 6);
        (*(v20 + 16))(v110);
        (*(v23 + 16))(v22, *(v106 + 56) + *(v23 + 72) * v25, v107);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8, &qword_24B2EFE10);
        v27 = *(v26 + 48);
        (*(v20 + 32))(v21, v110, v19);
        (*(v23 + 32))(v21 + v27, v22, v107);
        (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
        v111 = v17;
LABEL_25:
        v28 = v0[18];
        sub_24B0391CC(v0[19], v28, &qword_27EFCE0A0, &qword_24B2EFE08);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8, &qword_24B2EFE10);
        if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
        {
          v30 = v0[20];
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20, &qword_24B2EF900);
          (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
        }

        else
        {
          v32 = v0[21];
          v33 = v0[22];
          v34 = v0[20];
          v35 = v0[18];
          v36 = v0[15];
          v108 = v0[14];
          v37 = *(v29 + 48);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20, &qword_24B2EF900);
          v39 = *(v38 + 48);
          (*(v33 + 16))(v34, v35, v32);
          (*(v36 + 16))(v34 + v39, v35 + v37, v108);
          sub_24AFF8258(v35, &qword_27EFCE0A8, &qword_24B2EFE10);
          (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
        }

        v40 = v0[20];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDF20, &qword_24B2EF900);
        if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_5;
        }

        v42 = v0[24];
        v44 = v0[15];
        v43 = v0[16];
        v45 = v0[14];
        v46 = *(v41 + 48);
        v47 = *(v0[22] + 32);
        v47(v42, v40, v0[21]);
        v109 = *(v44 + 32);
        v109(v43, v40 + v46, v45);
        v48 = sub_24B181698(v42);
        v49 = *(v115 + 16);
        v50 = (v3 & 1) == 0;
        v2 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_62;
        }

        v51 = v3;
        if (*(v115 + 24) >= v2)
        {
          if ((v112 & 1) == 0)
          {
            sub_24B1CF05C(MEMORY[0x277D08EA8], MEMORY[0x277D08E20], &qword_27EFCDF28, &qword_24B2EF908);
          }
        }

        else
        {
          v52 = v0[24];
          sub_24B1C7128(v2, v112 & 1, MEMORY[0x277D08EA8], &qword_27EFCDF28, &qword_24B2EF908);
          v53 = sub_24B181698(v52);
          if ((v51 & 1) != (v54 & 1))
          {

            return sub_24B2D6054();
          }

          v48 = v53;
        }

        v55 = v0[24];
        v56 = v0[21];
        v57 = v0[22];
        v59 = v0[15];
        v58 = v0[16];
        v60 = v0[14];
        if (v51)
        {
          (*(v57 + 8))(v0[24], v0[21]);
          v16 = v0[10];
          v2 = (*(v59 + 40))(*(v16 + 56) + *(v59 + 72) * v48, v58, v60);
          v6 = v16;
        }

        else
        {
          v61 = v0[10];
          v61[(v48 >> 6) + 8] |= 1 << v48;
          v47(v61[6] + *(v57 + 72) * v48, v55, v56);
          v62 = *(v59 + 72);
          v6 = v61;
          v2 = (v109)(v61[7] + v62 * v48, v58, v60);
          v63 = v61[2];
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_63;
          }

          v61[2] = v65;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    v76 = *(v2 + 16);
    if (!v76)
    {
      goto LABEL_6;
    }

    v103 = v7;
    v115 = v6;
    v77 = v0[22];
    v78 = v2 + ((*(v77 + 80) + 32) & ~*(v77 + 80));

    v114 = *(v77 + 72);
    v79 = *(v77 + 16);
    do
    {
      v80 = v0[25];
      v82 = v0[22];
      v81 = v0[23];
      v83 = v0[21];
      v79(v81, v78, v83);
      sub_24B1AF20C(v80, v81);
      (*(v82 + 8))(v80, v83);
      v78 += v114;
      --v76;
    }

    while (v76);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v84 = v0[1];

  return v84();
}

uint64_t sub_24B1A6E48()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F4268(v3);
  return swift_endAccess();
}

uint64_t sub_24B1A6EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_24B2D3184();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_24B2D24A4();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A701C, a4, 0);
}

uint64_t sub_24B1A701C(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[11];
  sub_24B2D2494();
  v4 = *(v2 + 112);
  v1[8] = v3;
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[18] = v5;
  *v5 = v1;
  v5[1] = sub_24B1A7124;

  return v7(v1 + 8);
}

uint64_t sub_24B1A7124(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  v5 = *(v4 + 80);
  if (v1)
  {
    v6 = sub_24B1A7310;
  }

  else
  {
    *(v4 + 160) = a1;
    v6 = sub_24B1A7250;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B1A7250()
{
  v8 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v7 = v0[11];
  sub_24B1A87BC(&v7, v1, v2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B1A7310()
{
  v27 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 104);
    v25 = *(v0 + 112);
    v23 = *(v0 + 152);
    v24 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2DC570, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "ItemsProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1A7600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v77 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870, &qword_24B2EC158);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0B0, &qword_24B2EFE18);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v71 - v8;
  v9 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ItemsProvider.InfoState(0);
  v11 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v71 - v14;
  v15 = sub_24B2D1DA4();
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x28223BE20](v15);
  v82 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24B2D3184();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemsProvider.InfoState.Request(0);
  MEMORY[0x28223BE20](v18 - 8);
  v89 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC878, &qword_24B2F0430);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = sub_24B2D24A4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v75 = &v71 - v31;
  v88 = v3;
  v32 = v3 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v33 = *(v32 + 24);
  if (*(v33 + 16))
  {

    v34 = a2;
    v35 = sub_24B181698(a2);
    if (v36)
    {
      sub_24B1D2670(*(v33 + 56) + *(v11 + 72) * v35, v25, type metadata accessor for ItemsProvider.InfoState);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v34 = a2;
    v37 = 1;
  }

  v38 = v90;
  (*(v11 + 56))(v25, v37, 1, v90);
  if ((*(v11 + 48))(v25, 1, v38))
  {
    sub_24AFF8258(v25, &qword_27EFCC878, &qword_24B2F0430);
    v39 = v87;
    v40 = v26;
LABEL_14:
    sub_24B1A92BC(v34);
    v55 = v84;
    v54 = v85;
    v56 = v82;
    (*(v84 + 16))(v82, v34, v85);
    (*(v27 + 16))(v89, v39, v40);
    v57 = v78;
    sub_24B008890(v77, v78, &qword_27EFCC870, &qword_24B2EC158);
    v58 = sub_24B2D1F24();
    v59 = *(v58 - 8);
    v60 = 1;
    v61 = (*(v59 + 48))(v57, 1, v58);
    v62 = v80;
    v63 = v76;
    if (v61 != 1)
    {
      (*(v59 + 32))(v76, v57, v58);
      swift_storeEnumTagMultiPayload();
      v60 = 0;
    }

    v64 = v79;
    (*(v79 + 56))(v63, v60, 1, v62);
    v65 = *(v64 + 48);
    if (v65(v63, 1, v62) == 1)
    {
      v66 = v83;
      *v83 = 0;
      swift_storeEnumTagMultiPayload();
      if (v65(v63, 1, v62) != 1)
      {
        sub_24AFF8258(v63, &qword_27EFCE0B0, &qword_24B2EFE18);
      }
    }

    else
    {
      v66 = v83;
      sub_24B1D26D8(v63, v83, type metadata accessor for ItemsProvider.InfoState.Result);
    }

    v67 = v81;
    sub_24B1D26D8(v89, v81, type metadata accessor for ItemsProvider.InfoState.Request);
    sub_24B1D26D8(v66, v67 + *(v90 + 20), type metadata accessor for ItemsProvider.InfoState.Result);
    swift_beginAccess();
    v68 = *(v32 + 24);
    v69 = v86;
    sub_24B1D26D8(v67, v86, type metadata accessor for ItemsProvider.InfoState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v68;
    sub_24B1CA604(v69, v56, isUniquelyReferenced_nonNull_native);
    (*(v55 + 8))(v56, v54);
    *(v32 + 24) = v91;
    sub_24B1D5010(v68);
    swift_endAccess();
  }

  sub_24B1D2670(v25, v22, type metadata accessor for ItemsProvider.InfoState.Request);
  sub_24AFF8258(v25, &qword_27EFCC878, &qword_24B2F0430);
  v41 = *(v27 + 32);
  v42 = v22;
  v40 = v26;
  v41(v29, v42, v26);
  v43 = v75;
  v41(v75, v29, v26);
  v39 = v87;
  if ((sub_24B2D23C4() & 1) == 0)
  {
    (*(v27 + 8))(v43, v26);
    goto LABEL_14;
  }

  v44 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v45 = v88;
  swift_beginAccess();
  v46 = v73;
  v47 = v72;
  v48 = v74;
  (*(v73 + 16))(v72, v45 + v44, v74);
  v49 = sub_24B2D3164();
  v50 = sub_24B2D5934();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v91 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_24AFF321C(0xD00000000000001DLL, 0x800000024B2DC830, &v91);
    _os_log_impl(&dword_24AFD2000, v49, v50, "ItemsProvider: %s - Skipping due to older timestamp", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v51, -1, -1);
  }

  (*(v46 + 8))(v47, v48);
  return (*(v27 + 8))(v43, v40);
}

uint64_t sub_24B1A8010(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24B2D1DA4();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ItemsProvider.InfoState.Result(0);
  MEMORY[0x28223BE20](v61);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v12;
  v13 = type metadata accessor for ItemsProvider.InfoState(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC878, &qword_24B2F0430);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v64 = a2;
  sub_24B1A92BC(a2);
  v57 = a1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  v56 = v6;
  v26 = v3 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v27 = *(v26 + 24);
  if (!*(v27 + 16))
  {
LABEL_16:
    (*(v14 + 56))(v25, 1, 1, v13);
    sub_24AFF8258(v25, &qword_27EFCC878, &qword_24B2F0430);
    sub_24B2D2324();
    v19[*(v13 + 20)] = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v44 = *(v26 + 24);
    sub_24B1D26D8(v19, v16, type metadata accessor for ItemsProvider.InfoState);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v44;
    sub_24B1CA604(v16, v64, isUniquelyReferenced_nonNull_native);
    *(v26 + 24) = v65[0];
    sub_24B1D5010(v44);
    swift_endAccess();
  }

  v28 = sub_24B181698(v64);
  if ((v29 & 1) == 0)
  {

    goto LABEL_16;
  }

  sub_24B1D2670(*(v27 + 56) + *(v14 + 72) * v28, v25, type metadata accessor for ItemsProvider.InfoState);

  (*(v14 + 56))(v25, 0, 1, v13);
  sub_24AFF8258(v25, &qword_27EFCC878, &qword_24B2F0430);
  v6 = v56;
LABEL_5:
  v30 = v3 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
  swift_beginAccess();
  v31 = *(v30 + 24);
  if (*(v31 + 16))
  {

    v32 = sub_24B181698(v64);
    v33 = v62;
    if (v34)
    {
      sub_24B1D2670(*(v31 + 56) + *(v14 + 72) * v32, v22, type metadata accessor for ItemsProvider.InfoState);
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = v63;
    v36 = v6;
  }

  else
  {
    v36 = v6;
    v35 = 1;
    v33 = v62;
    v37 = v63;
  }

  (*(v14 + 56))(v22, v35, 1, v13);
  v38 = *(v14 + 48);
  if (v38(v22, 1, v13))
  {
    return sub_24AFF8258(v22, &qword_27EFCC878, &qword_24B2F0430);
  }

  v40 = v58;
  sub_24B1D2670(&v22[*(v13 + 20)], v58, type metadata accessor for ItemsProvider.InfoState.Result);
  sub_24AFF8258(v22, &qword_27EFCC878, &qword_24B2F0430);
  v41 = v40;
  v42 = v60;
  sub_24B1D26D8(v41, v60, type metadata accessor for ItemsProvider.InfoState.Result);
  v43 = v59;
  sub_24B1D2670(v42, v59, type metadata accessor for ItemsProvider.InfoState.Result);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B1D2740(v43, type metadata accessor for ItemsProvider.InfoState.Result);
    return sub_24B1D2740(v42, type metadata accessor for ItemsProvider.InfoState.Result);
  }

  else
  {
    (*(v37 + 16))(v33, v64, v36);
    v46 = sub_24B1A5364(v67);
    v47 = v37;
    v49 = v48;
    v66 = *(v48 + 24);

    v50 = sub_24B1D6B3C(v65);
    v52 = v51;
    if (!v38(v51, 1, v13))
    {
      v54 = *(v13 + 20);
      sub_24B1D2740(&v52[v54], type metadata accessor for ItemsProvider.InfoState.Result);
      v52[v54] = v57 & 1;
      swift_storeEnumTagMultiPayload();
    }

    (v50)(v65, 0);
    (*(v47 + 8))(v33, v36);
    v53 = *(v49 + 24);
    *(v49 + 24) = v66;
    sub_24B1D5010(v53);

    (v46)(v67, 0);
    return sub_24B1D2740(v60, type metadata accessor for ItemsProvider.InfoState.Result);
  }
}

void sub_24B1A87BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v6 = sub_24B2D1F24();
  v108 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v104 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A0, &qword_24B2EFE08);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v97 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC870, &qword_24B2EC158);
  MEMORY[0x28223BE20](v13 - 8);
  v109 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v107 = &v97 - v16;
  v17 = sub_24B2D1DA4();
  v111 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v116 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = (&v97 - v20);
  MEMORY[0x28223BE20](v21);
  v106 = (&v97 - v22);
  v23 = sub_24B2D3184();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  v29 = *(v24 + 16);
  v113 = v3;
  v103 = v23;
  v29(v26, v3 + v28, v23);

  v114 = v26;
  v30 = sub_24B2D3164();
  v31 = sub_24B2D5934();

  v32 = os_log_type_enabled(v30, v31);
  v110 = a2;
  v117 = v6;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v102 = v27;
    v34 = v33;
    v35 = swift_slowAlloc();
    v118[0] = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_24AFF321C(0xD000000000000028, 0x800000024B2DC800, v118);
    *(v34 + 12) = 2080;
    sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
    v36 = sub_24B2D51F4();
    v38 = v30;
    v39 = sub_24AFF321C(v36, v37, v118);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_24AFD2000, v38, v31, "ItemsProvider: %s - updated: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v35, -1, -1);
    v40 = v34;
    v27 = v102;
    MEMORY[0x24C23D530](v40, -1, -1);
  }

  else
  {
  }

  (*(v24 + 8))(v114, v103);
  v114 = v17;
  v41 = v105;
  if (v27)
  {
    if (*(v27 + 16))
    {
      v42 = v27 + 56;
      v43 = 1 << *(v27 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v27 + 56);
      v46 = (v43 + 63) >> 6;
      v116 = (v111 + 16);
      v109 = (v111 + 32);
      v104 = (v108 + 16);
      v105 = (v108 + 56);
      v47 = (v111 + 8);

      v48 = 0;
      v49 = v117;
      while (v45)
      {
LABEL_16:
        v54 = v27;
        v55 = *(v27 + 48);
        v56 = v111;
        v57 = v106;
        v58 = v114;
        (*(v111 + 16))(v106, v55 + *(v111 + 72) * (__clz(__rbit64(v45)) | (v48 << 6)), v114);
        v59 = *(v56 + 32);
        v60 = v115;
        v59(v115, v57, v58);
        v61 = v110;
        if (*(v110 + 16))
        {
          v62 = sub_24B181698(v60);
          if (v63)
          {
            v49 = v117;
            (*(v108 + 16))(v107, *(v61 + 56) + *(v108 + 72) * v62, v117);
            v50 = 0;
          }

          else
          {
            v50 = 1;
            v49 = v117;
          }
        }

        else
        {
          v50 = 1;
        }

        v45 &= v45 - 1;
        v51 = v107;
        (*v105)(v107, v50, 1, v49);
        v52 = v115;
        sub_24B1A7600(v51, v115, v112);
        sub_24AFF8258(v51, &qword_27EFCC870, &qword_24B2EC158);
        (*v47)(v52, v114);
        v27 = v54;
      }

      while (1)
      {
        v53 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v53 >= v46)
        {

          v64 = v113 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
          goto LABEL_38;
        }

        v45 = *(v42 + 8 * v53);
        ++v48;
        if (v45)
        {
          v48 = v53;
          goto LABEL_16;
        }
      }

LABEL_41:
      __break(1u);
    }
  }

  else
  {
    v65 = v113 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage;
    swift_beginAccess();
    v66 = *(v65 + 24);
    *(v65 + 24) = MEMORY[0x277D84F98];
    v97 = v65;
    sub_24B1D5010(v66);
    swift_endAccess();

    v67 = *(v110 + 64);
    v99 = v110 + 64;
    v68 = 1 << *(v110 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & v67;
    v98 = (v68 + 63) >> 6;
    v102 = v111 + 16;
    v101 = v108 + 16;
    v115 = (v111 + 32);
    v71 = (v108 + 32);
    v106 = (v111 + 8);
    v107 = (v108 + 56);

    v72 = 0;
    v103 = v12;
    v100 = v71;
    if (!v70)
    {
LABEL_25:
      if (v98 <= v72 + 1)
      {
        v74 = v72 + 1;
      }

      else
      {
        v74 = v98;
      }

      v75 = v74 - 1;
      while (1)
      {
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        if (v73 >= v98)
        {
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8, &qword_24B2EFE10);
          (*(*(v95 - 8) + 56))(v41, 1, 1, v95);
          v70 = 0;
          goto LABEL_33;
        }

        v70 = *(v99 + 8 * v73);
        ++v72;
        if (v70)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    while (1)
    {
      v73 = v72;
LABEL_32:
      v76 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v77 = v76 | (v73 << 6);
      v79 = v110;
      v78 = v111;
      v80 = v116;
      (*(v111 + 16))(v116, *(v110 + 48) + *(v111 + 72) * v77, v17);
      v81 = v17;
      v82 = v108;
      v83 = v104;
      v84 = v117;
      (*(v108 + 16))(v104, *(v79 + 56) + *(v108 + 72) * v77, v117);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8, &qword_24B2EFE10);
      v86 = *(v85 + 48);
      v87 = *(v78 + 32);
      v41 = v105;
      v87(v105, v80, v81);
      v88 = v83;
      v71 = v100;
      (*(v82 + 32))(v41 + v86, v88, v84);
      (*(*(v85 - 8) + 56))(v41, 0, 1, v85);
      v75 = v73;
      v12 = v103;
LABEL_33:
      sub_24B0391CC(v41, v12, &qword_27EFCE0A0, &qword_24B2EFE08);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0A8, &qword_24B2EFE10);
      if ((*(*(v89 - 8) + 48))(v12, 1, v89) == 1)
      {
        break;
      }

      v90 = *(v89 + 48);
      v91 = v116;
      v17 = v114;
      (*v115)(v116, v12, v114);
      v92 = &v12[v90];
      v93 = v109;
      v94 = v117;
      (*v71)(v109, v92, v117);
      (*v107)(v93, 0, 1, v94);
      sub_24B1A7600(v93, v91, v112);
      sub_24AFF8258(v93, &qword_27EFCC870, &qword_24B2EC158);
      (*v106)(v91, v17);
      v72 = v75;
      if (!v70)
      {
        goto LABEL_25;
      }
    }

    v64 = v97;
LABEL_38:
    swift_beginAccess();
    v96 = *(v64 + 16);
    *(v64 + 16) = 1;
    sub_24B1F4268(v96);
    swift_endAccess();
  }
}

uint64_t sub_24B1A92BC(uint64_t a1)
{
  v3 = sub_24B2D1DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {

    sub_24B181698(a1);
    if (v8)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_24B18C820(0, v6);
  return swift_endAccess();
}

uint64_t sub_24B1A944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A9570, a6, 0);
}

uint64_t sub_24B1A9570(uint64_t a1)
{
  sub_24B2D6084();
  v2 = swift_task_alloc();
  v1[19] = v2;
  *v2 = v1;
  v2[1] = sub_24B1A9630;
  v4 = v1[9];
  v3 = v1[10];

  return sub_24B09A030(v4, v3, 0, 0, 1);
}

uint64_t sub_24B1A9630()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1A9830;
  }

  else
  {
    v7 = sub_24B1A97B8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1A97B8()
{
  sub_24B1A8010(0, *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1A9830()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: loadingStateResetTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1A9AD0(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D8, &qword_24B2EC3D0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580, &qword_24B2E0010);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v4 = sub_24B2D1DA4();
  *(v3 + 136) = v4;
  v5 = *(v4 - 8);
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 + 64);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = *(type metadata accessor for ItemsProvider.Subscription(0) - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1A9D00, v2, 0);
}

void sub_24B1A9D00()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 72);
  v112 = *(v0 + 80);
  v94 = v2 + 56;
  v3 = *(v0 + 144);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_loadingStateResetTaskBySubscription;
  v93 = (63 - v5) >> 6;
  v8 = (v3 + 48);
  v101 = *(v0 + 144);
  v95 = (v3 + 8);

  v9 = 0;
  v97 = v2;
  v98 = v1;
  v99 = v7;
  v96 = v8;
  while (v6)
  {
LABEL_11:
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    v16 = *(v0 + 136);
    v17 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_24B1D2670(*(v2 + 48) + *(v1 + 72) * (v17 | (v9 << 6)), v15, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D26D8(v15, v14, type metadata accessor for ItemsProvider.Subscription);
    if ((*v8)(v14, 1, v16) != 1)
    {
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v103 = *(v0 + 168);
      v20 = *(v0 + 128);
      v21 = *(v0 + 136);
      v109 = *(v0 + 120);
      v104 = *(v0 + 80);
      v107 = *(v101 + 32);
      v22 = v107(v18, *(v0 + 240), v21);
      v23 = (*(v112 + 144))(v22);
      v105 = v24;
      v106 = v23;
      sub_24B1A8010(1, v18);
      v25 = *(v101 + 16);
      v25(v19, v18, v21);
      v26 = sub_24B2D56D4();
      v102 = *(v26 - 8);
      (*(v102 + 56))(v20, 1, 1, v26);
      v100 = v25;
      v25(v103, v18, v21);
      v27 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider, &protocol conformance descriptor for ItemsProvider);
      v28 = (*(v101 + 80) + 56) & ~*(v101 + 80);
      v29 = swift_allocObject();
      v29[2] = v104;
      v29[3] = v27;
      v29[4] = v106;
      v29[5] = v105;
      v29[6] = v104;
      v107(v29 + v28, v103, v21);
      sub_24B008890(v20, v109, &qword_27EFC8580, &qword_24B2E0010);
      LODWORD(v28) = (*(v102 + 48))(v109, 1, v26);
      swift_retain_n();

      v30 = *(v0 + 120);
      if (v28 == 1)
      {
        sub_24AFF8258(*(v0 + 120), &qword_27EFC8580, &qword_24B2E0010);
      }

      else
      {
        sub_24B2D56C4();
        (*(v102 + 8))(v30, v26);
      }

      v31 = v29[2];
      swift_unknownObjectRetain();

      if (v31)
      {
        swift_getObjectType();
        v32 = sub_24B2D5604();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      sub_24AFF8258(*(v0 + 128), &qword_27EFC8580, &qword_24B2E0010);
      v35 = swift_allocObject();
      *(v35 + 16) = &unk_24B2EFC88;
      *(v35 + 24) = v29;
      if (v34 | v32)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v32;
        *(v0 + 40) = v34;
      }

      v36 = *(v0 + 176);
      v37 = swift_task_create();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v112 + v99);
      *(v112 + v99) = 0x8000000000000000;
      v40 = sub_24B181698(v36);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v46 = v41;
      if (v39[3] < v45)
      {
        v47 = *(v0 + 176);
        sub_24B1C56C8(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_24B181698(v47);
        if ((v46 & 1) != (v48 & 1))
        {

          sub_24B2D6054();
          return;
        }

LABEL_25:
        if (v46)
        {
          goto LABEL_4;
        }

        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v54 = v40;
      sub_24B1CE3A8(MEMORY[0x277D08E20], &qword_27EFCDF38, &qword_24B2EF918);
      v40 = v54;
      if (v46)
      {
LABEL_4:
        *(v39[7] + 8 * v40) = v37;

        goto LABEL_5;
      }

LABEL_26:
      v49 = *(v0 + 176);
      v50 = *(v0 + 136);
      v39[(v40 >> 6) + 8] |= 1 << v40;
      v51 = v40;
      v100(v39[6] + *(v101 + 72) * v40, v49, v50);
      *(v39[7] + 8 * v51) = v37;
      v52 = v39[2];
      v44 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v44)
      {
        goto LABEL_65;
      }

      v39[2] = v53;
LABEL_5:
      v10 = *(v0 + 184);
      v11 = *(v0 + 136);
      v12 = *v95;
      (*v95)(*(v0 + 176), v11);
      *(v112 + v99) = v39;
      swift_endAccess();
      v12(v10, v11);
      v2 = v97;
      v1 = v98;
      v8 = v96;
    }
  }

  while (2)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v13 < v93)
    {
      v6 = *(v94 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v55 = *(v0 + 272);

  if ((v55 & 1) == 0)
  {
    v57 = *(v0 + 72);
    v58 = -1;
    v59 = -1 << *(v57 + 32);
    if (-v59 < 64)
    {
      v58 = ~(-1 << -v59);
    }

    v60 = v58 & *(v57 + 56);
    v61 = (63 - v59) >> 6;
    v111 = (*(v0 + 144) + 56);

    v62 = 0;
    v108 = MEMORY[0x277D84F90];
    v110 = v61;
    while (v60)
    {
      v63 = *(v0 + 72);
LABEL_43:
      v65 = *(v0 + 232);
      v66 = *(v0 + 216);
      v68 = *(v0 + 136);
      v67 = *(v0 + 144);
      sub_24B1D2670(*(v63 + 48) + *(*(v0 + 192) + 72) * (__clz(__rbit64(v60)) | (v62 << 6)), v65, type metadata accessor for ItemsProvider.Subscription);
      sub_24B1D2670(v65, v66, type metadata accessor for ItemsProvider.Subscription);
      v113 = *(v67 + 48);
      v69 = v113(v66, 1, v68);
      v70 = *(v0 + 216);
      if (v69 == 1)
      {
        (*v111)(*(v0 + 88), 1, 1, *(v0 + 136));
        sub_24B1D2740(v70, type metadata accessor for ItemsProvider.Subscription);
      }

      else
      {
        v71 = *(v0 + 136);
        v72 = *(v0 + 88);
        (*(*(v0 + 144) + 32))(v72, *(v0 + 216), v71);
        (*v111)(v72, 0, 1, v71);
      }

      v60 &= v60 - 1;
      v73 = *(v0 + 232);
      v74 = *(v0 + 136);
      v76 = *(v0 + 96);
      v75 = *(v0 + 104);
      sub_24B0391CC(*(v0 + 88), v76, &qword_27EFC85D8, &qword_24B2EC3D0);
      sub_24B0391CC(v76, v75, &qword_27EFC85D8, &qword_24B2EC3D0);
      sub_24B1D2740(v73, type metadata accessor for ItemsProvider.Subscription);
      if (v113(v75, 1, v74) == 1)
      {
        sub_24AFF8258(*(v0 + 104), &qword_27EFC85D8, &qword_24B2EC3D0);
        v61 = v110;
      }

      else
      {
        v77 = *(*(v0 + 144) + 32);
        v77(*(v0 + 160), *(v0 + 104), *(v0 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24B006C7C(0, *(v108 + 2) + 1, 1, v108);
        }

        v79 = *(v108 + 2);
        v78 = *(v108 + 3);
        if (v79 >= v78 >> 1)
        {
          v108 = sub_24B006C7C((v78 > 1), v79 + 1, 1, v108);
        }

        v80 = *(v0 + 160);
        v81 = *(v0 + 136);
        v82 = *(v0 + 144);
        *(v108 + 2) = v79 + 1;
        v77(&v108[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v79], v80, v81);
        v61 = v110;
      }
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_63;
      }

      if (v64 >= v61)
      {
        v83 = *(v0 + 224);
        v84 = *(v0 + 136);
        v85 = *(v0 + 72);

        (*v111)(v83, 1, 1, v84);
        LOBYTE(v84) = sub_24B12625C(v83, v85);
        sub_24B1D2740(v83, type metadata accessor for ItemsProvider.Subscription);
        if (v84)
        {

          v86 = 0;
        }

        else
        {
          v86 = sub_24B1D0E28(v108);
        }

        v87 = *(v0 + 112);
        v88 = *(v0 + 80);
        v89 = sub_24B2D56D4();
        (*(*(v89 - 8) + 56))(v87, 1, 1, v89);
        v90 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider, &protocol conformance descriptor for ItemsProvider);
        v91 = swift_allocObject();
        v91[2] = v88;
        v91[3] = v90;
        v91[4] = v88;
        v91[5] = v86;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v87, &unk_24B2EFCA0, v91);

        v92 = *(v0 + 8);

        v92();
        return;
      }

      v63 = *(v0 + 72);
      v60 = *(v63 + 8 * v64 + 56);
      ++v62;
      if (v60)
      {
        v62 = v64;
        goto LABEL_43;
      }
    }
  }

  v56 = swift_task_alloc();
  *(v0 + 256) = v56;
  *v56 = v0;
  v56[1] = sub_24B1AA980;

  sub_24B1A569C();
}

uint64_t sub_24B1AA980()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24B1AB04C;
  }

  else
  {
    v4 = sub_24B1AAAAC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_24B1AAAAC()
{
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;
  v40 = (v0[18] + 56);

  v6 = 0;
  v38 = MEMORY[0x277D84F90];
  v39 = v5;
  while (v4)
  {
    v7 = v0[9];
LABEL_10:
    v9 = v0[29];
    v10 = v0[27];
    v12 = v0[17];
    v11 = v0[18];
    sub_24B1D2670(*(v7 + 48) + *(v0[24] + 72) * (__clz(__rbit64(v4)) | (v6 << 6)), v9, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D2670(v9, v10, type metadata accessor for ItemsProvider.Subscription);
    v13 = *(v11 + 48);
    v14 = v13(v10, 1, v12);
    v15 = v0[27];
    v41 = v13;
    if (v14 == 1)
    {
      (*v40)(v0[11], 1, 1, v0[17]);
      sub_24B1D2740(v15, type metadata accessor for ItemsProvider.Subscription);
    }

    else
    {
      v16 = v0[17];
      v17 = v0[11];
      (*(v0[18] + 32))(v17, v15, v16);
      (*v40)(v17, 0, 1, v16);
    }

    v4 &= v4 - 1;
    v18 = v0[29];
    v19 = v0[17];
    v21 = v0[12];
    v20 = v0[13];
    sub_24B0391CC(v0[11], v21, &qword_27EFC85D8, &qword_24B2EC3D0);
    sub_24B0391CC(v21, v20, &qword_27EFC85D8, &qword_24B2EC3D0);
    sub_24B1D2740(v18, type metadata accessor for ItemsProvider.Subscription);
    if (v41(v20, 1, v19) == 1)
    {
      sub_24AFF8258(v0[13], &qword_27EFC85D8, &qword_24B2EC3D0);
      v5 = v39;
    }

    else
    {
      v22 = *(v0[18] + 32);
      v22(v0[20], v0[13], v0[17]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_24B006C7C(0, *(v38 + 2) + 1, 1, v38);
      }

      v24 = *(v38 + 2);
      v23 = *(v38 + 3);
      if (v24 >= v23 >> 1)
      {
        v38 = sub_24B006C7C((v23 > 1), v24 + 1, 1, v38);
      }

      v25 = v0[20];
      v26 = v0[17];
      v27 = v0[18];
      *(v38 + 2) = v24 + 1;
      v22(&v38[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24], v25, v26);
      v5 = v39;
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v5)
    {
      break;
    }

    v7 = v0[9];
    v4 = *(v7 + 8 * v8 + 56);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  v28 = v0[28];
  v29 = v0[17];
  v30 = v0[9];

  (*v40)(v28, 1, 1, v29);
  LOBYTE(v29) = sub_24B12625C(v28, v30);
  sub_24B1D2740(v28, type metadata accessor for ItemsProvider.Subscription);
  if (v29)
  {

    v31 = 0;
  }

  else
  {
    v31 = sub_24B1D0E28(v38);
  }

  v32 = v0[14];
  v33 = v0[10];
  v34 = sub_24B2D56D4();
  (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
  v35 = sub_24B1D27A0(&qword_27EFCE038, type metadata accessor for ItemsProvider, &protocol conformance descriptor for ItemsProvider);
  v36 = swift_allocObject();
  v36[2] = v33;
  v36[3] = v35;
  v36[4] = v33;
  v36[5] = v31;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v32, &unk_24B2EFCA0, v36);

  v37 = v0[1];

  v37();
}

void sub_24B1AB04C()
{
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v0[9];
LABEL_10:
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[17];
    v12 = v0[18];
    v13 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_24B1D2670(*(v7 + 48) + *(v0[24] + 72) * (v13 | (v6 << 6)), v10, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D26D8(v10, v9, type metadata accessor for ItemsProvider.Subscription);
    if ((*(v12 + 48))(v9, 1, v11) != 1)
    {
      v14 = v0[21];
      v15 = v0[17];
      v16 = v0[18];
      (*(v16 + 32))(v14, v0[25], v15);
      sub_24B1A8010(0, v14);
      (*(v16 + 8))(v14, v15);
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v5)
    {
      break;
    }

    v7 = v0[9];
    v4 = *(v7 + 8 * v8 + 56);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  swift_willThrow();

  v17 = v0[1];

  v17();
}

uint64_t sub_24B1AB2EC(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_24B2D1DA4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *(type metadata accessor for ItemsProvider.Subscription(0) - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1AB414, v2, 0);
}

void sub_24B1AB414()
{
  if (*(v0 + 80) == 1)
  {
    sub_24B1A6E48();
  }

  v19 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  v7 = (v1 + 48);
  v17 = (v1 + 8);
  v18 = (v1 + 32);

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 32);
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_24B1D2670(*(v2 + 48) + *(v19 + 72) * (v13 | (v8 << 6)), v10, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D26D8(v10, v11, type metadata accessor for ItemsProvider.Subscription);
    if ((*v7)(v11, 1, v12) != 1)
    {
      v14 = *(v0 + 48);
      v15 = *(v0 + 32);
      (*v18)(v14, *(v0 + 64), v15);
      sub_24B1A8010(0, v14);
      (*v17)(v14, v15);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v16 = *(v0 + 8);

  v16();
}

void *ItemsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage, &qword_27EFCC850, &unk_24B2EC0F0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ItemsProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage, &qword_27EFCC850, &unk_24B2EC0F0);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B1AB7F0(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1A9AD0(a1, a2);
}

uint64_t sub_24B1AB894(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1AB2EC(a1, a2);
}

uint64_t sub_24B1AB998(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B1D27EC;

  return v6(a1);
}

uint64_t sub_24B1ABA90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B1ABB88;

  return v6(a1);
}

uint64_t sub_24B1ABB88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B1ABC80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  sub_24B03ABC8(v20);
  v10 = sub_24B2D6124();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24B1D2670(*(v9 + 48) + v14 * v12, v8, _s14descr285E46659O16SubscriptionDataOMa);
      v15 = sub_24B0401A4(v8, a2);
      sub_24B1D2740(v8, _s14descr285E46659O16SubscriptionDataOMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B1D2670(*(v9 + 48) + v14 * v12, v19, _s14descr285E46659O16SubscriptionDataOMa);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24B1D2670(a2, v8, _s14descr285E46659O16SubscriptionDataOMa);
    v20[0] = *v3;
    sub_24B1B5D94(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_24B1D26D8(a2, v17, _s14descr285E46659O16SubscriptionDataOMa);
    return 1;
  }
}

uint64_t sub_24B1ABEC0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v21 = &v21 - v9;
  v22 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  sub_24B2D5254();
  v25 = v4;
  v24 = *(a2 + *(v4 + 20));
  sub_24B2D6104();
  v11 = sub_24B2D6124();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_24B1D2670(*(v10 + 48) + v15 * v13, v7, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      if (sub_24B2D52A4())
      {
        v16 = v7[*(v25 + 20)];
        sub_24B1D2740(v7, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        if (v24 == v16)
        {
          sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          sub_24B1D2670(*(v10 + 48) + v15 * v13, v23, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          return 0;
        }
      }

      else
      {
        sub_24B1D2740(v7, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v18 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v21;
  sub_24B1D2670(a2, v21, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  v26 = *v18;
  sub_24B1B5FD8(v20, v13, isUniquelyReferenced_nonNull_native);
  *v18 = v26;
  sub_24B1D26D8(a2, v23, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  return 1;
}

uint64_t sub_24B1AC204(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  v11 = a2;
  sub_24B2D5254();
  v12 = sub_24B2D6124();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_24B1D2670(*(v10 + 48) + v16 * v14, v7, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v17 = sub_24B2D52A4();
      sub_24B1D2740(v7, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    sub_24B1D2670(*(v10 + 48) + v16 * v14, v25, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v23;
    sub_24B1D2670(v11, v23, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    v26 = *v18;
    sub_24B1B62E8(v20, v14, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    *v18 = v26;
    sub_24B1D26D8(v11, v21, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    return 1;
  }
}

uint64_t sub_24B1AC4F8(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  v11 = a2;
  sub_24B2D5254();
  v12 = sub_24B2D6124();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_24B1D2670(*(v10 + 48) + v16 * v14, v7, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v17 = sub_24B2D52A4();
      sub_24B1D2740(v7, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    sub_24B1D2670(*(v10 + 48) + v16 * v14, v25, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v23;
    sub_24B1D2670(v11, v23, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    v26 = *v18;
    sub_24B1B65EC(v20, v14, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    *v18 = v26;
    sub_24B1D26D8(v11, v21, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
    return 1;
  }
}

uint64_t sub_24B1AC7EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFC7E90, MEMORY[0x277D08BF8], MEMORY[0x277D08C10]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B68F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1ACACC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](a2);
  v6 = sub_24B2D6124();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24B1B6BB8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24B1ACBC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D15F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCC748, MEMORY[0x277D08B70], MEMORY[0x277D08B80]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B6D04(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1ACEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = type metadata accessor for ContactsProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)(v22, v10);
  v11 = sub_24B2D6124();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_24B1D2670(*(v9 + 48) + v15 * v13, v8, type metadata accessor for ContactsProvider.Subscription);
      MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(v8, a2, v16);
      sub_24B1D2740(v8, type metadata accessor for ContactsProvider.Subscription);
      if (MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B1D2740(a2, type metadata accessor for ContactsProvider.Subscription);
    sub_24B1D2670(*(v9 + 48) + v15 * v13, v21, type metadata accessor for ContactsProvider.Subscription);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24B1D2670(a2, v8, type metadata accessor for ContactsProvider.Subscription);
    v22[0] = *v3;
    sub_24B1B6FE8(v8, v13, isUniquelyReferenced_nonNull_native);
    v19 = v21;
    *v3 = v22[0];
    sub_24B1D26D8(a2, v19, type metadata accessor for ContactsProvider.Subscription);
    return 1;
  }
}

uint64_t sub_24B1AD0E4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v28 = &v28 - v9;
  v29 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  sub_24B2D5254();
  v31 = *(v4 + 20);
  v32 = v4;
  sub_24B2D5404();

  v11 = sub_24B2D6124();
  v12 = v10 + 56;
  v34 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_30:
    v24 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v28;
    sub_24B1D2670(a2, v28, type metadata accessor for PeopleLocationsProvider.Subscription);
    v37 = *v24;
    sub_24B1B722C(v26, v14, isUniquelyReferenced_nonNull_native);
    *v24 = v37;
    sub_24B1D26D8(a2, v30, type metadata accessor for PeopleLocationsProvider.Subscription);
    return 1;
  }

  v33 = ~v13;
  v15 = *(v5 + 72);
  while (1)
  {
    sub_24B1D2670(*(v34 + 48) + v15 * v14, v7, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B1D27A0(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v37 == v35 && v38 == v36)
    {
    }

    else
    {
      v17 = sub_24B2D6004();

      if ((v17 & 1) == 0)
      {
        sub_24B1D2740(v7, type metadata accessor for PeopleLocationsProvider.Subscription);
        goto LABEL_4;
      }
    }

    v18 = v7[*(v32 + 20)] ? 0x776F6C6C616873 : 1702259052;
    v19 = v7[*(v32 + 20)] ? 0xE700000000000000 : 0xE400000000000000;
    v20 = *(a2 + v31) ? 0x776F6C6C616873 : 1702259052;
    v21 = *(a2 + v31) ? 0xE700000000000000 : 0xE400000000000000;
    if (v18 == v20 && v19 == v21)
    {
      break;
    }

    v23 = sub_24B2D6004();

    sub_24B1D2740(v7, type metadata accessor for PeopleLocationsProvider.Subscription);
    if (v23)
    {
      goto LABEL_32;
    }

LABEL_4:
    v14 = (v14 + 1) & v33;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  sub_24B1D2740(v7, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_32:
  sub_24B1D2740(a2, type metadata accessor for PeopleLocationsProvider.Subscription);
  sub_24B1D2670(*(v34 + 48) + v15 * v14, v30, type metadata accessor for PeopleLocationsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1AD568(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0, &qword_24B2EBE70);
  MEMORY[0x28223BE20](v46);
  v5 = &v41 - v4;
  v6 = sub_24B2D1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for PeopleProvider.Subscription(0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v42 = v2;
  v56 = *v2;
  sub_24B2D60E4();
  sub_24B1D2670(a2, v22, type metadata accessor for PeopleProvider.Subscription);
  v23 = v7 + 48;
  v55 = *(v7 + 48);
  if (v55(v22, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x24C23C8D0](1);
    sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v56 + 32);
  v26 = v24 & ~v25;
  v54 = v56 + 56;
  if (((*(v56 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_16:
    v36 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v41;
    sub_24B1D2670(a2, v41, type metadata accessor for PeopleProvider.Subscription);
    v59 = *v36;
    sub_24B1B7670(v38, v26, isUniquelyReferenced_nonNull_native);
    *v36 = v59;
    sub_24B1D26D8(a2, v43, type metadata accessor for PeopleProvider.Subscription);
    return 1;
  }

  v51 = v14;
  v52 = ~v25;
  v53 = *(v53 + 72);
  v44 = (v7 + 32);
  v48 = (v7 + 8);
  v27 = v46;
  v45 = a2;
  v47 = v23;
  v49 = v17;
  while (1)
  {
    v28 = v53 * v26;
    sub_24B1D2670(*(v56 + 48) + v53 * v26, v17, type metadata accessor for PeopleProvider.Subscription);
    v29 = *(v27 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for PeopleProvider.Subscription);
    sub_24B1D2670(a2, &v5[v29], type metadata accessor for PeopleProvider.Subscription);
    v30 = v55;
    if (v55(v5, 1, v6) == 1)
    {
      sub_24B1D2740(v17, type metadata accessor for PeopleProvider.Subscription);
      if (v30(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v31 = v51;
    sub_24B1D2670(v5, v51, type metadata accessor for PeopleProvider.Subscription);
    if (v30(&v5[v29], 1, v6) == 1)
    {
      v32 = v49;
      sub_24B1D2740(v49, type metadata accessor for PeopleProvider.Subscription);
      v33 = v31;
      v17 = v32;
      (*v48)(v33, v6);
LABEL_7:
      sub_24AFF8258(v5, &qword_27EFCC6D0, &qword_24B2EBE70);
      goto LABEL_8;
    }

    (*v44)(v50, &v5[v29], v6);
    sub_24B1D27A0(&qword_27EFCC6D8, MEMORY[0x277D08B50], MEMORY[0x277D08B68]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v59 == v57 && v60 == v58)
    {
      break;
    }

    v34 = sub_24B2D6004();
    v35 = *v48;
    (*v48)(v50, v6);
    v17 = v49;
    sub_24B1D2740(v49, type metadata accessor for PeopleProvider.Subscription);

    v35(v51, v6);
    a2 = v45;
    v27 = v46;
    if (v34)
    {
      goto LABEL_18;
    }

    sub_24B1D2740(v5, type metadata accessor for PeopleProvider.Subscription);
LABEL_8:
    v26 = (v26 + 1) & v52;
    if (((*(v54 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v40 = *v48;
  (*v48)(v50, v6);
  sub_24B1D2740(v49, type metadata accessor for PeopleProvider.Subscription);

  v40(v51, v6);
  a2 = v45;
LABEL_18:
  sub_24B1D2740(v5, type metadata accessor for PeopleProvider.Subscription);
  sub_24B1D2740(a2, type metadata accessor for PeopleProvider.Subscription);
  sub_24B1D2670(*(v56 + 48) + v28, v43, type metadata accessor for PeopleProvider.Subscription);
  return 0;
}

uint64_t sub_24B1ADD20(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCE48, &qword_24B2ED048);
  MEMORY[0x28223BE20](v51);
  v5 = &v40 - v4;
  v6 = sub_24B2D1684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for ListPersonInfo.Sort(0);
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  v41 = v2;
  v53 = *v2;
  sub_24B2D60E4();
  v52 = a2;
  sub_24B1D2670(a2, v22, type metadata accessor for ListPersonInfo.Sort);
  v23 = *(v7 + 48);
  v24 = v23(v22, 2, v6);
  if (v24)
  {
    MEMORY[0x24C23C8D0](v24 != 1);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x24C23C8D0](2);
    sub_24B1D27A0(&qword_27EFCCDF0, MEMORY[0x277D08BC8], MEMORY[0x277D08BD0]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v25 = sub_24B2D6124();
  v26 = -1 << *(v53 + 32);
  v27 = v25 & ~v26;
  v50 = v53 + 56;
  if (((*(v53 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_17:
    v35 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v52;
    v38 = v40;
    sub_24B1D2670(v52, v40, type metadata accessor for ListPersonInfo.Sort);
    v54 = *v35;
    sub_24B1B7DC0(v38, v27, isUniquelyReferenced_nonNull_native);
    *v35 = v54;
    sub_24B1D26D8(v37, v42, type metadata accessor for ListPersonInfo.Sort);
    return 1;
  }

  v48 = ~v26;
  v49 = *(v49 + 72);
  v47 = (v7 + 8);
  v43 = (v7 + 32);
  v44 = v23;
  while (1)
  {
    v28 = v49 * v27;
    sub_24B1D2670(*(v53 + 48) + v49 * v27, v17, type metadata accessor for ListPersonInfo.Sort);
    v29 = *(v51 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for ListPersonInfo.Sort);
    sub_24B1D2670(v52, &v5[v29], type metadata accessor for ListPersonInfo.Sort);
    v30 = v23(v5, 2, v6);
    if (v30)
    {
      if (v30 == 1)
      {
        sub_24B1D2740(v17, type metadata accessor for ListPersonInfo.Sort);
        if (v23(&v5[v29], 2, v6) == 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_24B1D2740(v17, type metadata accessor for ListPersonInfo.Sort);
        if (v23(&v5[v29], 2, v6) == 2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_7;
    }

    sub_24B1D2670(v5, v14, type metadata accessor for ListPersonInfo.Sort);
    if (!v23(&v5[v29], 2, v6))
    {
      break;
    }

    sub_24B1D2740(v17, type metadata accessor for ListPersonInfo.Sort);
    (*v47)(v14, v6);
LABEL_7:
    sub_24AFF8258(v5, &qword_27EFCCE48, &qword_24B2ED048);
LABEL_8:
    v27 = (v27 + 1) & v48;
    if (((*(v50 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v31 = v14;
  v32 = v45;
  (*v43)(v45, &v5[v29], v6);
  v46 = sub_24B2D1674();
  v33 = *v47;
  v34 = v32;
  v14 = v31;
  (*v47)(v34, v6);
  sub_24B1D2740(v17, type metadata accessor for ListPersonInfo.Sort);
  v33(v31, v6);
  v23 = v44;
  if ((v46 & 1) == 0)
  {
    sub_24B1D2740(v5, type metadata accessor for ListPersonInfo.Sort);
    goto LABEL_8;
  }

LABEL_18:
  sub_24B1D2740(v5, type metadata accessor for ListPersonInfo.Sort);
  sub_24B1D2740(v52, type metadata accessor for ListPersonInfo.Sort);
  sub_24B1D2670(*(v53 + 48) + v28, v42, type metadata accessor for ListPersonInfo.Sort);
  return 0;
}

uint64_t sub_24B1AE3F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCE088, MEMORY[0x277D08C20], MEMORY[0x277D08C28]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCE090, MEMORY[0x277D08C20], MEMORY[0x277D08C30]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B845C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AE6D0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v23 - v9;
  v24 = v2;
  v10 = *v2;
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
  v27 = a2;
  sub_24B2D5254();
  sub_24B2D5404();
  v11 = sub_24B2D6124();
  v26 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_24B1D2670(*(v26 + 48) + v15 * v13, v7, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B1D27A0(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      if (v30 == v28 && v31 == v29)
      {
        break;
      }

      v17 = sub_24B2D6004();

      if (v17)
      {
        goto LABEL_11;
      }

      sub_24B1D2740(v7, type metadata accessor for ItemsLocationsProvider.Subscription);
      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_24B1D2740(v7, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B1D2740(v27, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B1D2670(*(v26 + 48) + v15 * v13, v25, type metadata accessor for ItemsLocationsProvider.Subscription);
    return 0;
  }

  else
  {
LABEL_9:
    v18 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v27;
    v21 = v23;
    sub_24B1D2670(v27, v23, type metadata accessor for ItemsLocationsProvider.Subscription);
    v30 = *v18;
    sub_24B1B8724(v21, v13, isUniquelyReferenced_nonNull_native);
    *v18 = v30;
    sub_24B1D26D8(v20, v25, type metadata accessor for ItemsLocationsProvider.Subscription);
    return 1;
  }
}

uint64_t sub_24B1AEA54(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0, &unk_24B2F0100);
  MEMORY[0x28223BE20](v46);
  v5 = &v41 - v4;
  v6 = sub_24B2D1DA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for ItemsProvider.Subscription(0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v42 = v2;
  v56 = *v2;
  sub_24B2D60E4();
  sub_24B1D2670(a2, v22, type metadata accessor for ItemsProvider.Subscription);
  v23 = v7 + 48;
  v55 = *(v7 + 48);
  if (v55(v22, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x24C23C8D0](1);
    sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
    sub_24B2D5254();
    (*(v7 + 8))(v11, v6);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v56 + 32);
  v26 = v24 & ~v25;
  v54 = v56 + 56;
  if (((*(v56 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_16:
    v36 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v41;
    sub_24B1D2670(a2, v41, type metadata accessor for ItemsProvider.Subscription);
    v59 = *v36;
    sub_24B1B8A74(v38, v26, isUniquelyReferenced_nonNull_native);
    *v36 = v59;
    sub_24B1D26D8(a2, v43, type metadata accessor for ItemsProvider.Subscription);
    return 1;
  }

  v51 = v14;
  v52 = ~v25;
  v53 = *(v53 + 72);
  v44 = (v7 + 32);
  v48 = (v7 + 8);
  v27 = v46;
  v45 = a2;
  v47 = v23;
  v49 = v17;
  while (1)
  {
    v28 = v53 * v26;
    sub_24B1D2670(*(v56 + 48) + v53 * v26, v17, type metadata accessor for ItemsProvider.Subscription);
    v29 = *(v27 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for ItemsProvider.Subscription);
    sub_24B1D2670(a2, &v5[v29], type metadata accessor for ItemsProvider.Subscription);
    v30 = v55;
    if (v55(v5, 1, v6) == 1)
    {
      sub_24B1D2740(v17, type metadata accessor for ItemsProvider.Subscription);
      if (v30(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v31 = v51;
    sub_24B1D2670(v5, v51, type metadata accessor for ItemsProvider.Subscription);
    if (v30(&v5[v29], 1, v6) == 1)
    {
      v32 = v49;
      sub_24B1D2740(v49, type metadata accessor for ItemsProvider.Subscription);
      v33 = v31;
      v17 = v32;
      (*v48)(v33, v6);
LABEL_7:
      sub_24AFF8258(v5, &qword_27EFCC6E0, &unk_24B2F0100);
      goto LABEL_8;
    }

    (*v44)(v50, &v5[v29], v6);
    sub_24B1D27A0(&qword_27EFCC6E8, MEMORY[0x277D08E20], MEMORY[0x277D08E40]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v59 == v57 && v60 == v58)
    {
      break;
    }

    v34 = sub_24B2D6004();
    v35 = *v48;
    (*v48)(v50, v6);
    v17 = v49;
    sub_24B1D2740(v49, type metadata accessor for ItemsProvider.Subscription);

    v35(v51, v6);
    a2 = v45;
    v27 = v46;
    if (v34)
    {
      goto LABEL_18;
    }

    sub_24B1D2740(v5, type metadata accessor for ItemsProvider.Subscription);
LABEL_8:
    v26 = (v26 + 1) & v52;
    if (((*(v54 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v40 = *v48;
  (*v48)(v50, v6);
  sub_24B1D2740(v49, type metadata accessor for ItemsProvider.Subscription);

  v40(v51, v6);
  a2 = v45;
LABEL_18:
  sub_24B1D2740(v5, type metadata accessor for ItemsProvider.Subscription);
  sub_24B1D2740(a2, type metadata accessor for ItemsProvider.Subscription);
  sub_24B1D2670(*(v56 + 48) + v28, v43, type metadata accessor for ItemsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1AF20C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1DA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC630, MEMORY[0x277D08E20], MEMORY[0x277D08E28]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCDBD0, MEMORY[0x277D08E20], MEMORY[0x277D08E38]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B91C4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AF4EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCC6C8, MEMORY[0x277D08B50], MEMORY[0x277D08B60]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B948C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AF7CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1A24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCE0F8, MEMORY[0x277D08D28], MEMORY[0x277D08D30]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCE100, MEMORY[0x277D08D28], MEMORY[0x277D08D38]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1B9754(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B1AFAAC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8, &qword_24B2EF018);
  MEMORY[0x28223BE20](v68);
  v5 = &v54 - v4;
  v6 = sub_24B2D1704();
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for SettingsContactsProvider.Subscription(0);
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v63 = &v54 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v55 = v2;
  v24 = *v2;
  sub_24B2D60E4();
  v69 = a2;
  sub_24B1D2670(a2, v23, type metadata accessor for SettingsContactsProvider.Subscription);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v20;
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();

    v26 = v67;
  }

  else
  {
    v26 = v67;
    (*(v67 + 32))(v10, v23, v6);
    MEMORY[0x24C23C8D0](0);
    sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    (*(v26 + 8))(v10, v6);
  }

  v27 = sub_24B2D6124();
  v28 = -1 << *(v24 + 32);
  v29 = v27 & ~v28;
  v59 = v24 + 56;
  if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_21:
    v49 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v69;
    v52 = v54;
    sub_24B1D2670(v69, v54, type metadata accessor for SettingsContactsProvider.Subscription);
    v70 = *v49;
    sub_24B1B9A1C(v52, v29, isUniquelyReferenced_nonNull_native);
    *v49 = v70;
    sub_24B1D26D8(v51, v56, type metadata accessor for SettingsContactsProvider.Subscription);
    return 1;
  }

  v62 = v6;
  v66 = ~v28;
  v67 = *(v65 + 72);
  v57 = (v26 + 32);
  v61 = (v26 + 8);
  v30 = v59;
  while (1)
  {
    v31 = v67 * v29;
    sub_24B1D2670(*(v24 + 48) + v67 * v29, v17, type metadata accessor for SettingsContactsProvider.Subscription);
    v32 = &v5[*(v68 + 48)];
    sub_24B1D2670(v17, v5, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B1D2670(v69, v32, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v40 = v63;
    sub_24B1D2670(v5, v63, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v65 = v31;
      v41 = v24;
      v42 = v58;
      v43 = v62;
      (*v57)(v58, v32, v62);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v44 = v11;
      v45 = v40;
      v46 = *v61;
      v47 = v42;
      v24 = v41;
      (*v61)(v47, v43);
      sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
      v48 = v45;
      v11 = v44;
      v30 = v59;
      v46(v48, v43);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v61)(v40, v62);
LABEL_7:
    sub_24AFF8258(v5, &qword_27EFCDBC8, &qword_24B2EF018);
LABEL_8:
    v29 = (v29 + 1) & v66;
    if (((*(v30 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v65 = v31;
  v33 = v64;
  sub_24B1D2670(v5, v64, type metadata accessor for SettingsContactsProvider.Subscription);
  v35 = *v33;
  v34 = v33[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_7;
  }

  v36 = *v32;
  v37 = *(v32 + 1);
  if (v35 != v36 || v34 != v37)
  {
    v39 = sub_24B2D6004();

    sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_19:
    sub_24B1D2740(v5, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_8;
  }

  sub_24B1D2740(v17, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_23:
  sub_24B1D2740(v5, type metadata accessor for SettingsContactsProvider.Subscription);
  sub_24B1D2740(v69, type metadata accessor for SettingsContactsProvider.Subscription);
  sub_24B1D2670(*(v24 + 48) + v65, v56, type metadata accessor for SettingsContactsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1B0234(_BYTE *a1, char a2)
{
  v5 = *v2;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  v6 = a2 & 1;
  sub_24B2D6104();
  v7 = sub_24B2D6124();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + v9) == (a2 & 1))
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v6 = *(v11 + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24B1BA124(a2 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_24B1B034C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8, &unk_24B2F2FF0);
  MEMORY[0x28223BE20](v47);
  v5 = &v38 - v4;
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v39 = &v38 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v40 = v2;
  v49 = *v2;
  sub_24B2D60E4();
  v48 = a2;
  sub_24B1D2670(a2, v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v23 = *(v7 + 48);
  if (v23(v22, 1, v6) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    sub_24B1D26D8(v22, v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
    sub_24B2D5254();
    sub_24B1D2740(v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v49 + 32);
  v26 = v24 & ~v25;
  v46 = v49 + 56;
  v27 = v43;
  if (((*(v49 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v48;
    v36 = v39;
    sub_24B1D2670(v48, v39, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v50 = *v33;
    sub_24B1BA284(v36, v26, isUniquelyReferenced_nonNull_native);
    *v33 = v50;
    sub_24B1D26D8(v35, v41, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    return 1;
  }

  v44 = ~v25;
  v45 = *(v13 + 72);
  while (1)
  {
    v28 = v45 * v26;
    sub_24B1D2670(*(v49 + 48) + v45 * v26, v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v29 = *(v47 + 48);
    sub_24B1D2670(v17, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B1D2670(v48, &v5[v29], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(v5, 1, v6) == 1)
    {
      sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if (v23(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    sub_24B1D2670(v5, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(&v5[v29], 1, v6) != 1)
    {
      break;
    }

    sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B1D2740(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_7:
    sub_24AFF8258(v5, &qword_27EFCC7A8, &unk_24B2F2FF0);
LABEL_8:
    v26 = (v26 + 1) & v44;
    if (((*(v46 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v30 = v42;
  sub_24B1D26D8(&v5[v29], v42, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
  v32 = v30;
  v27 = v43;
  sub_24B1D2740(v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  sub_24B1D2740(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B1D2740(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    sub_24B1D2740(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    goto LABEL_8;
  }

LABEL_15:
  sub_24B1D2740(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B1D2740(v48, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B1D2670(*(v49 + 48) + v28, v41, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  return 0;
}

uint64_t sub_24B1B09AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B2D1974();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B1D27A0(&qword_27EFCC7C0, MEMORY[0x277D08CF8], MEMORY[0x277D08D00]);
  v33 = a2;
  v11 = sub_24B2D5244();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B1D27A0(&qword_27EFCC7C8, MEMORY[0x277D08CF8], MEMORY[0x277D08D08]);
      v21 = sub_24B2D52A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B1BAA2C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_24B1B0C8C(uint64_t a1)
{
  v2 = v1;
  v49 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v43 - v12;
  v13 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0, &qword_24B2EC1D8);
  v14 = sub_24B2D5BF4();
  v15 = v14;
  if (*(v13 + 16))
  {
    v45 = v1;
    v16 = 0;
    v17 = (v13 + 56);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 56);
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 56;
    v50 = v8;
    v51 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = *(v13 + 48);
      v53 = *(v9 + 72);
      v28 = v54;
      sub_24B1D26D8(v27 + v53 * (v24 | (v16 << 6)), v54, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B1D2670(v28, v52, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v30 = v47;
          sub_24B1D26D8(v52, v47, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          MEMORY[0x24C23C8D0](3);
          sub_24B2D1704();
          sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          v31 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        }

        else
        {
          v30 = v46;
          sub_24B1D26D8(v52, v46, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          MEMORY[0x24C23C8D0](2);
          sub_24B2D1704();
          sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
          sub_24B2D5254();
          v31 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        }

        sub_24B1D2740(v30, v31);
        v13 = v51;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v32 = v48;
        sub_24B1D26D8(v52, v48, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        v44 = v9;
        sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
        v9 = v44;
        sub_24B2D5254();
        sub_24B2D6104();
        v33 = v32;
        v13 = v51;
        sub_24B1D2740(v33, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        MEMORY[0x24C23C8D0](1);
      }

      v34 = sub_24B2D6124();
      v35 = -1 << *(v15 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_24B1D26D8(v54, *(v15 + 48) + v23 * v53, _s14descr285E46659O16SubscriptionDataOMa);
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    v42 = 1 << *(v13 + 32);
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    v2 = v45;
    *(v13 + 16) = 0;
  }

  *v2 = v15;
}

void sub_24B1B1310(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24B2D1704();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0D0, &qword_24B2EFE30);
  v6 = sub_24B2D5BF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      v21 = sub_24B2D5244();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24B1B166C(uint64_t a1)
{
  v2 = v1;
  v3 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE140, &qword_24B2F5830);
  v7 = sub_24B2D5BF4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_24B1D26D8(v20 + v21 * (v17 | (v9 << 6)), v5, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      sub_24B2D6104();
      v22 = sub_24B2D6124();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_24B1D26D8(v5, *(v8 + 48) + v16 * v21, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_24B1B19D4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = v5;
  v10 = a2(0);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v37 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = sub_24B2D5BF4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v38 = v5;
    v39 = v12;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v27 = *(v40 + 72);
      sub_24B1D26D8(v26 + v27 * (v23 | (v15 << 6)), v41, a5);
      sub_24B2D60E4();
      sub_24B2D1704();
      sub_24B1D27A0(&unk_27EFC7E58, MEMORY[0x277D08BF8], MEMORY[0x277D08C00]);
      sub_24B2D5254();
      v28 = sub_24B2D6124();
      v29 = -1 << *(v14 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v21 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_24B1D26D8(v41, *(v14 + 48) + v22 * v27, a5);
      ++*(v14 + 16);
      v12 = v39;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v12 + 32);
    if (v36 >= 64)
    {
      bzero(v16, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v36;
    }

    v9 = v38;
    *(v12 + 16) = 0;
  }

  *v9 = v14;
}

void sub_24B1B1D18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC750, &qword_24B2EBFE0);
  v4 = sub_24B2D5BF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](v17);
      v18 = sub_24B2D6124();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24B1B1F68(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24B2D15F4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC738, &qword_24B2EBFD8);
  v6 = sub_24B2D5BF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
      v21 = sub_24B2D5244();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24B1B22C4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v61 = sub_24B2D14C4();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24B2D15F4();
  v6 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810, &qword_24B2F5690);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v50 - v11;
  v12 = type metadata accessor for ContactsProvider.Subscription(0);
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v50 - v16;
  v17 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818, &unk_24B2EC090);
  v18 = sub_24B2D5BF4();
  v19 = v17;
  v20 = v18;
  if (*(v19 + 16))
  {
    v50 = v3;
    v21 = 0;
    v22 = (v19 + 56);
    v23 = 1 << *(v19 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v19 + 56);
    v26 = (v23 + 63) >> 6;
    v58 = (v6 + 32);
    v57 = (v4 + 48);
    v52 = (v4 + 32);
    v51 = (v4 + 8);
    v56 = (v6 + 8);
    v27 = v18 + 56;
    v28 = v61;
    v62 = v19;
    v55 = v14;
    v54 = v18;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v33 = *(v19 + 48);
      v68 = *(v63 + 72);
      v34 = v69;
      sub_24B1D26D8(v33 + v68 * (v30 | (v21 << 6)), v69, type metadata accessor for ContactsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B1D2670(v34, v14, type metadata accessor for ContactsProvider.Subscription);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x24C23C8D0](1);
        v28 = v61;
        sub_24B2D5404();
      }

      else
      {
        v60 = v25;
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820, &unk_24B2EF120) + 48);
        v36 = v65;
        sub_24B0391CC(v14, v65, &qword_27EFCC810, &qword_24B2F5690);
        (*v58)(v66, &v14[v35], v67);
        MEMORY[0x24C23C8D0](0);
        v37 = v59;
        sub_24B008890(v36, v59, &qword_27EFCC810, &qword_24B2F5690);
        if ((*v57)(v37, 1, v28) == 1)
        {
          sub_24B2D6104();
        }

        else
        {
          v38 = v53;
          (*v52)(v53, v37, v28);
          sub_24B2D6104();
          sub_24B1D27A0(&qword_27EFCC830, MEMORY[0x277D08B38], MEMORY[0x277D08B40]);
          sub_24B2D5254();
          (*v51)(v38, v28);
        }

        sub_24B1D27A0(&qword_27EFCC740, MEMORY[0x277D08B70], MEMORY[0x277D08B78]);
        v39 = v66;
        v40 = v67;
        sub_24B2D5254();
        (*v56)(v39, v40);
        sub_24AFF8258(v65, &qword_27EFCC810, &qword_24B2F5690);
        v14 = v55;
        v25 = v60;
        v20 = v54;
      }

      v41 = sub_24B2D6124();
      v42 = -1 << *(v20 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v27 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v19 = v62;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v27 + 8 * v44);
          if (v48 != -1)
          {
            v29 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v43) & ~*(v27 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v19 = v62;
LABEL_7:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      sub_24B1D26D8(v69, *(v20 + 48) + v29 * v68, type metadata accessor for ContactsProvider.Subscription);
      ++*(v20 + 16);
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v26)
      {
        break;
      }

      v32 = v22[v21];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    v49 = 1 << *(v19 + 32);
    if (v49 >= 64)
    {
      bzero(v22, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v49;
    }

    v3 = v50;
    *(v19 + 16) = 0;
  }

  *v3 = v20;
}

void sub_24B1B2A2C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0, &qword_24B2EC048);
  v7 = sub_24B2D5BF4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_24B1D26D8(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D1574();
      sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
      sub_24B2D5254();
      sub_24B2D5404();

      v22 = sub_24B2D6124();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_24B1D26D8(v5, *(v8 + 48) + v16 * v21, type metadata accessor for PeopleLocationsProvider.Subscription);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_24B1B2DD0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeopleProvider.Subscription(0);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8, &unk_24B2EC070);
  v12 = sub_24B2D5BF4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v46 = v3;
    v40 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v45 = (v4 + 48);
    v41 = (v4 + 8);
    v42 = (v4 + 32);
    v20 = v12 + 56;
    v21 = v48;
    v43 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v11 + 48);
      v49 = *(v47 + 72);
      sub_24B1D26D8(v26 + v49 * (v23 | (v14 << 6)), v10, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2D60E4();
      v27 = v10;
      sub_24B1D2670(v10, v21, type metadata accessor for PeopleProvider.Subscription);
      v28 = v46;
      if ((*v45)(v21, 1, v46) == 1)
      {
        MEMORY[0x24C23C8D0](0);
      }

      else
      {
        v29 = v44;
        (*v42)(v44, v21, v28);
        MEMORY[0x24C23C8D0](1);
        sub_24B1D27A0(&qword_27EFCC6C0, MEMORY[0x277D08B50], MEMORY[0x277D08B58]);
        sub_24B2D5254();
        v30 = v29;
        v11 = v43;
        (*v41)(v30, v28);
      }

      v31 = sub_24B2D6124();
      v32 = -1 << *(v13 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v10 = v27;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v21 = v48;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_24B1D26D8(v27, *(v13 + 48) + v22 * v49, type metadata accessor for PeopleProvider.Subscription);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v11 + 32);
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    v2 = v40;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
}

void sub_24B1B3294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE138, &qword_24B2F5820);
  v4 = sub_24B2D5BF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_24B2D5A24();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}