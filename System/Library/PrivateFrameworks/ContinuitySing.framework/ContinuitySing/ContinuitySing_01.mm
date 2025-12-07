uint64_t sub_2442494B0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 744) = v3;

  if (v3)
  {
    v9 = v8[77];
    v10 = v8[76];
    v11 = sub_24424B074;
  }

  else
  {
    v12 = v8[91];

    v8[94] = a2;
    v8[95] = a1;
    v9 = v8[77];
    v10 = v8[76];
    v11 = sub_244249600;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_244249600()
{
  v145 = v0;
  v1 = v0;
  (*(v0[54] + 8))(v0[55], v0[53]);
  v2 = v0[95];
  v3 = v0[94];
  v143 = v0;
  while (2)
  {
    v4 = v1[21];
    v5 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v4);
    (*(v5 + 32))(v4, v5);
    v6 = v1[21];
    v7 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v6);
    (*(v7 + 40))(v6, v7);
    v8 = v1[21];
    v9 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v8);
    (*(v9 + 16))(v8, v9);
    v11 = v10;
    sub_2442373BC(v2, v3);
    v12 = sub_244257A48();

    v13 = sub_244257A48();

    if (v3 >> 60 != 15)
    {
      v14 = sub_244257328();
      sub_244236264(v2, v3);
      v1 = v143;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_6:
      v15 = 0;
      goto LABEL_7;
    }

    v14 = 0;
    v1 = v143;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_4:
    v15 = sub_244257A48();

LABEL_7:
    v16 = [objc_allocWithZone(CSQueuedTrack) initWithSongTitle:v12 artistName:v13 artworkThumbnailImage:v14 catalogID:v15 trackType:v1[86]];

    v17 = v16;
    MEMORY[0x245D5C470]();
    if (*((v1[32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_244257B48();
    }

    v18 = v1[68];
    v19 = v1[65];
    v20 = v1[64];
    sub_244257B58();

    sub_244236264(v2, v3);
    (*(v19 + 8))(v18, v20);
    v133 = v1[32];
    __swift_destroy_boxed_opaque_existential_0(v1 + 18);
    v134 = *(v1 + 849);
    v135 = v1[89];
    v136 = v1[88];
    v137 = v1[87];
    v139 = v1[90];
    while (1)
    {
      v23 = v1[81] + 1;
      if (v23 == v1[78])
      {
        v1[85] = v139;
        v1[84] = v135;
        v1[83] = v133;
        v1[82] = v133;
        *(v1 + 848) = v134;
        if (v134)
        {

          (v1[36])(v1[82], *(v1 + 848));

          v105 = v1[1];

          return v105();
        }

        else
        {
          if (qword_27EDDC750 != -1)
          {
            swift_once();
          }

          v107 = sub_244257528();
          v1[96] = __swift_project_value_buffer(v107, qword_27EDDC758);
          v108 = sub_244257508();
          v109 = sub_244257C58();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = v1[60];
            v111 = v1[56];
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v144 = v113;
            *v112 = 136315394;

            v114 = MEMORY[0x245D5C4A0](v139, v110);
            v116 = v115;

            v117 = sub_24423CC9C(v114, v116, &v144);

            *(v112 + 4) = v117;
            *(v112 + 12) = 2080;

            v119 = MEMORY[0x245D5C4A0](v118, v111);
            v121 = v120;

            v122 = sub_24423CC9C(v119, v121, &v144);

            *(v112 + 14) = v122;
            _os_log_impl(&dword_2441FB000, v108, v109, "Queueing tracks via media remote: %s; %s", v112, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245D5D2D0](v113, -1, -1);
            v123 = v112;
            v124 = v139;
            MEMORY[0x245D5D2D0](v123, -1, -1);

            v125 = v135;
          }

          else
          {

            v125 = v136;
            v124 = v137;
          }

          v1[98] = v125;
          v1[97] = v124;
          v127 = v1[43];
          v126 = v1[44];
          v128 = v1[42];
          v129 = objc_opt_self();
          v1[2] = v1;
          v1[7] = v1 + 33;
          v1[3] = sub_24424A64C;
          swift_continuation_init();
          v1[17] = v128;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
          v1[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC178, &qword_24425CA78);
          sub_244257B78();
          (*(v127 + 32))(boxed_opaque_existential_1, v126, v128);
          v1[10] = MEMORY[0x277D85DD0];
          v1[11] = 1107296256;
          v1[12] = sub_24424C27C;
          v1[13] = &block_descriptor_3;
          [v129 getActiveRouteWithCompletion_];
          (*(v127 + 8))(boxed_opaque_existential_1, v128);

          return MEMORY[0x282200938](v1 + 2);
        }
      }

      v1[81] = v23;
      v24 = *(v1 + 209);
      v25 = v1[80];
      v26 = v1[68];
      v27 = v1[67];
      v28 = v1[65];
      v29 = v1[64];
      v25(v26, v1[35] + ((*(v1 + 832) + 32) & ~*(v1 + 832)) + v1[79] * v23, v29);
      v25(v27, v26, v29);
      v30 = (*(v28 + 88))(v27, v29);
      if (v30 == v24)
      {
        break;
      }

      if (v30 == *(v1 + 210))
      {
        v69 = v1[67];
        v71 = v1[58];
        v70 = v1[59];
        v73 = v1[56];
        v72 = v1[57];
        (*(v1[65] + 96))(v69, v1[64]);
        v74 = *(v72 + 32);
        v74(v70, v69, v73);
        v1[21] = v73;
        v1[22] = sub_24424D1B4(&qword_27EDDC188, MEMORY[0x277CD7E50], &unk_24425C9C0);
        v75 = __swift_allocate_boxed_opaque_existential_1(v1 + 18);
        v76 = *(v72 + 16);
        v76(v75, v70, v73);
        v76(v71, v70, v73);
        v77 = v136;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_24424C6B0(0, v136[2] + 1, 1, v136, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
        }

        v79 = v77[2];
        v78 = v77[3];
        if (v79 >= v78 >> 1)
        {
          v77 = sub_24424C6B0((v78 > 1), v79 + 1, 1, v77, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
        }

        v80 = v1[58];
        v81 = v1[56];
        v82 = v1[57];
        (*(v82 + 8))(v1[59], v81);
        v77[2] = v79 + 1;
        v83 = v77 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v79;
        v68 = v77;
        v74(v83, v80, v81);
        v65 = 1;
        v67 = v77;
        v61 = v137;
        v66 = v139;
        goto LABEL_29;
      }

      if (qword_27EDDC750 != -1)
      {
        swift_once();
      }

      v31 = v1[80];
      v32 = v1[68];
      v33 = v1[66];
      v34 = v1[64];
      v35 = sub_244257528();
      __swift_project_value_buffer(v35, qword_27EDDC758);
      v36 = sub_244257C48();
      v31(v33, v32, v34);
      v37 = sub_244257508();
      v38 = os_log_type_enabled(v37, v36);
      v39 = v1[68];
      v40 = v1[66];
      v41 = v1;
      v42 = v1[65];
      v43 = v41[64];
      if (v38)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v144 = v45;
        *v44 = 136315138;
        sub_24424D1B4(&qword_27EDDC180, MEMORY[0x277CD83B0], MEMORY[0x277CD83E8]);
        v46 = sub_244257E88();
        v141 = v39;
        v48 = v47;
        v21 = *(v42 + 8);
        v21(v40, v43);
        v49 = sub_24423CC9C(v46, v48, &v144);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_2441FB000, v37, v36, "User picked a track type from the picker that we don't handle: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x245D5D2D0](v45, -1, -1);
        MEMORY[0x245D5D2D0](v44, -1, -1);

        v22 = v141;
      }

      else
      {

        v21 = *(v42 + 8);
        v21(v40, v43);
        v22 = v39;
      }

      v21(v22, v43);
      v1 = v143;
      v21(v143[67], v143[64]);
    }

    v50 = v1[67];
    v51 = v1[63];
    v53 = v1[61];
    v52 = v1[62];
    v54 = v1[60];
    (*(v1[65] + 96))(v50, v1[64]);
    v55 = *(v53 + 32);
    v55(v51, v50, v54);
    v1[21] = v54;
    v1[22] = &off_2857974E8;
    v56 = __swift_allocate_boxed_opaque_existential_1(v1 + 18);
    v57 = *(v53 + 16);
    v57(v56, v51, v54);
    v57(v52, v51, v54);
    v58 = v137;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_24424C6B0(0, v137[2] + 1, 1, v137, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
    }

    v60 = v58[2];
    v59 = v58[3];
    v61 = v58;
    if (v60 >= v59 >> 1)
    {
      v61 = sub_24424C6B0((v59 > 1), v60 + 1, 1, v58, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
    }

    v62 = v1[62];
    v63 = v1[60];
    v64 = v1[61];
    (*(v64 + 8))(v1[63], v63);
    v61[2] = v60 + 1;
    v55(v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v60, v62, v63);
    v65 = 0;
    v66 = v61;
    v67 = v135;
    v68 = v136;
LABEL_29:
    v1[90] = v66;
    v1[89] = v67;
    v1[88] = v68;
    v1[87] = v61;
    v1[86] = v65;
    v84 = v1[21];
    v85 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v84);
    (*(v85 + 16))(v84, v85);
    if (v86)
    {

      v87 = v134;
    }

    else
    {
      v87 = 0;
    }

    *(v1 + 849) = v87;
    v88 = v1[51];
    v89 = v1[21];
    v90 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v89);
    (*(v90 + 24))(v89, v90);
    v91 = sub_2442579F8();
    v92 = *(v91 - 8);
    if ((*(v92 + 48))(v88, 1, v91) == 1)
    {
      v93 = v1[53];
      v94 = v1[54];
      v95 = v1[52];
      sub_244237440(v1[51], &qword_27EDDBE08, &qword_24425C1A0);
      (*(v94 + 56))(v95, 1, 1, v93);
LABEL_35:
      sub_244237440(v1[52], &qword_27EDDBE00, &qword_24425CA70);
      v2 = 0;
      v3 = 0xF000000000000000;
      continue;
    }

    break;
  }

  v96 = *(v1 + 211);
  v97 = v1[54];
  v142 = v1[53];
  v98 = v1[52];
  v100 = v1[49];
  v99 = v1[50];
  v101 = v1[47];
  v138 = v1[51];
  v140 = v1[48];
  v102 = v1[46];
  v103 = v143[45];
  sub_2442579B8();
  (*(v102 + 104))(v101, v96, v103);
  sub_2442579A8();
  v104 = v103;
  v1 = v143;
  (*(v102 + 8))(v101, v104);
  (*(v100 + 8))(v99, v140);
  (*(v92 + 8))(v138, v91);
  if ((*(v97 + 48))(v98, 1, v142) == 1)
  {
    goto LABEL_35;
  }

  (*(v143[54] + 32))(v143[55], v143[52], v143[53]);
  v143[91] = [objc_opt_self() sharedSession];
  v131 = swift_task_alloc();
  v143[92] = v131;
  *v131 = v143;
  v131[1] = sub_2442494B0;
  v132 = v143[55];

  return MEMORY[0x28211ED00](v132, 0);
}

uint64_t sub_24424A64C()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);

  return MEMORY[0x2822009F8](sub_24424A754, v2, v1);
}

uint64_t sub_24424A754()
{
  v25 = v0;
  v1 = v0[33];
  v0[100] = v1;
  if (!v1)
  {

    v6 = 0;
    goto LABEL_5;
  }

  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = objc_opt_self();
  v6 = v1;
  v7 = sub_244257A48();
  v8 = [v5 systemMusicPathWithRoute:v6 playerID:v7];

  sub_244257348();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[38];

    sub_244237440(v9, &qword_27EDDC160, &qword_24425CA58);
LABEL_5:
    v10 = sub_244257C48();
    v11 = v6;
    v12 = sub_244257508();

    if (os_log_type_enabled(v12, v10))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v0[34] = v1;
      v15 = v11;
      v16 = sub_244257A88();
      v18 = sub_24423CC9C(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2441FB000, v12, v10, "cannot enqueue tracks with route %s ", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245D5D2D0](v14, -1, -1);
      MEMORY[0x245D5D2D0](v13, -1, -1);
    }

    else
    {
    }

    v19 = v0[1];

    return v19();
  }

  (*(v0[40] + 32))(v0[41], v0[38], v0[39]);
  sub_244257498();
  v0[101] = sub_244257488();

  v21 = swift_task_alloc();
  v0[102] = v21;
  *v21 = v0;
  v21[1] = sub_24424AB84;
  v22 = v0[96];
  v23 = v0[85];

  return sub_244239520(v23, v22);
}

uint64_t sub_24424AB84()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x2822009F8](sub_24424ACC8, v3, v2);
}

uint64_t sub_24424ACC8()
{

  v1 = swift_task_alloc();
  v0[103] = v1;
  *v1 = v0;
  v1[1] = sub_24424AD74;
  v2 = v0[96];
  v3 = v0[84];

  return sub_24423AEC4(v3, v2);
}

uint64_t sub_24424AD74()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x2822009F8](sub_24424AEB8, v3, v2);
}

uint64_t sub_24424AEB8()
{
  v1 = *(v0 + 800);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);

  (*(v3 + 8))(v2, v4);
  (*(v0 + 288))(*(v0 + 656), *(v0 + 848));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24424B074()
{
  v166 = v0;

  if (qword_27EDDC750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 744);
  v164 = sub_244257528();
  __swift_project_value_buffer(v164, qword_27EDDC758);
  sub_24424D228(v0 + 144, v0 + 184);
  v2 = v1;
  v3 = sub_244257508();
  v4 = sub_244257C58();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 744);
  v8 = *(v0 + 432);
  v7 = *(v0 + 440);
  v9 = *(v0 + 424);
  v163 = v0;
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v165 = v154;
    *v10 = 136315394;
    v160 = v9;
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 184), v12);
    v157 = v7;
    v14 = (*(v13 + 32))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    v17 = sub_24423CC9C(v14, v16, &v165);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    v18 = v6;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&dword_2441FB000, v3, v4, "Failed to fetch artwork for song '%s': %@", v10, 0x16u);
    sub_244237440(v11, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v154);
    MEMORY[0x245D5D2D0](v154, -1, -1);
    MEMORY[0x245D5D2D0](v10, -1, -1);

    (*(v8 + 8))(v157, v160);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  }

  v20 = v0;
LABEL_9:
  v24 = *(v20 + 168);
  v25 = *(v20 + 176);
  __swift_project_boxed_opaque_existential_1Tm((v20 + 144), v24);
  (*(v25 + 32))(v24, v25);
  v26 = *(v20 + 168);
  v27 = *(v20 + 176);
  __swift_project_boxed_opaque_existential_1Tm((v20 + 144), v26);
  (*(v27 + 40))(v26, v27);
  v28 = *(v20 + 168);
  v29 = *(v20 + 176);
  __swift_project_boxed_opaque_existential_1Tm((v20 + 144), v28);
  (*(v29 + 16))(v28, v29);
  v31 = v30;
  sub_2442373BC(0, 0xF000000000000000);
  v32 = sub_244257A48();

  v33 = sub_244257A48();

  if (v31)
  {
    v34 = sub_244257A48();
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_allocWithZone(CSQueuedTrack) initWithSongTitle:v32 artistName:v33 artworkThumbnailImage:0 catalogID:v34 trackType:*(v20 + 688)];

  v36 = v35;
  MEMORY[0x245D5C470]();
  if (*((*(v20 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_244257B48();
  }

  v37 = *(v20 + 544);
  v38 = *(v20 + 520);
  v39 = *(v20 + 512);
  sub_244257B58();

  sub_244236264(0, 0xF000000000000000);
  (*(v38 + 8))(v37, v39);
  v148 = *(v20 + 256);
  __swift_destroy_boxed_opaque_existential_0((v20 + 144));
  v150 = *(v20 + 849);
  v149 = *(v20 + 720);
  v152 = *(v20 + 712);
  v155 = *(v20 + 704);
  v158 = *(v20 + 696);
  while (1)
  {
    v42 = *(v20 + 648) + 1;
    if (v42 == *(v20 + 624))
    {
      break;
    }

    *(v20 + 648) = v42;
    v43 = *(v20 + 836);
    v44 = *(v20 + 640);
    v45 = *(v20 + 544);
    v46 = *(v20 + 536);
    v47 = *(v20 + 520);
    v48 = *(v20 + 512);
    v44(v45, *(v20 + 280) + ((*(v20 + 832) + 32) & ~*(v20 + 832)) + *(v20 + 632) * v42, v48);
    v44(v46, v45, v48);
    v49 = (*(v47 + 88))(v46, v48);
    if (v49 == v43)
    {
      v67 = *(v20 + 536);
      v68 = *(v20 + 504);
      v69 = *(v20 + 488);
      v70 = *(v20 + 496);
      v71 = *(v20 + 480);
      (*(*(v20 + 520) + 96))(v67, *(v20 + 512));
      v72 = *(v69 + 32);
      v72(v68, v67, v71);
      *(v20 + 168) = v71;
      *(v20 + 176) = &off_2857974E8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 144));
      v74 = *(v69 + 16);
      v74(boxed_opaque_existential_1, v68, v71);
      v74(v70, v68, v71);
      v75 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_24424C6B0(0, v158[2] + 1, 1, v158, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v77 = v75[2];
      v76 = v75[3];
      v78 = v75;
      if (v77 >= v76 >> 1)
      {
        v78 = sub_24424C6B0((v76 > 1), v77 + 1, 1, v75, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v79 = *(v20 + 496);
      v80 = *(v20 + 480);
      v81 = *(v20 + 488);
      (*(v81 + 8))(*(v20 + 504), v80);
      v78[2] = v77 + 1;
      v72(v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v77, v79, v80);
      v82 = 0;
      v83 = v78;
      v84 = v152;
      v85 = v155;
LABEL_34:
      *(v20 + 720) = v83;
      *(v20 + 712) = v84;
      *(v20 + 704) = v85;
      *(v20 + 696) = v78;
      *(v20 + 688) = v82;
      v101 = *(v20 + 168);
      v102 = *(v20 + 176);
      __swift_project_boxed_opaque_existential_1Tm((v20 + 144), v101);
      (*(v102 + 16))(v101, v102);
      if (v103)
      {

        v104 = v150;
      }

      else
      {
        v104 = 0;
      }

      *(v20 + 849) = v104;
      v105 = *(v20 + 408);
      v106 = *(v20 + 168);
      v107 = *(v20 + 176);
      __swift_project_boxed_opaque_existential_1Tm((v20 + 144), v106);
      (*(v107 + 24))(v106, v107);
      v108 = sub_2442579F8();
      v109 = *(v108 - 8);
      if ((*(v109 + 48))(v105, 1, v108) == 1)
      {
        v21 = *(v20 + 424);
        v22 = *(v20 + 432);
        v23 = *(v20 + 416);
        sub_244237440(*(v20 + 408), &qword_27EDDBE08, &qword_24425C1A0);
        (*(v22 + 56))(v23, 1, 1, v21);
      }

      else
      {
        v151 = *(v20 + 844);
        v159 = *(v20 + 432);
        v162 = *(v20 + 424);
        v110 = *(v20 + 408);
        v112 = *(v20 + 392);
        v111 = *(v20 + 400);
        v113 = *(v20 + 376);
        v153 = *(v20 + 416);
        v156 = *(v20 + 384);
        v115 = *(v20 + 360);
        v114 = *(v20 + 368);
        sub_2442579B8();
        (*(v114 + 104))(v113, v151, v115);
        sub_2442579A8();
        (*(v114 + 8))(v113, v115);
        (*(v112 + 8))(v111, v156);
        (*(v109 + 8))(v110, v108);
        if ((*(v159 + 48))(v153, 1, v162) != 1)
        {
          (*(*(v20 + 432) + 32))(*(v20 + 440), *(v20 + 416), *(v20 + 424));
          *(v20 + 728) = [objc_opt_self() sharedSession];
          v146 = swift_task_alloc();
          *(v20 + 736) = v146;
          *v146 = v20;
          v146[1] = sub_2442494B0;
          v147 = *(v20 + 440);

          return MEMORY[0x28211ED00](v147, 0);
        }
      }

      sub_244237440(*(v20 + 416), &qword_27EDDBE00, &qword_24425CA70);
      goto LABEL_9;
    }

    if (v49 == *(v20 + 840))
    {
      v86 = *(v20 + 536);
      v88 = *(v20 + 464);
      v87 = *(v20 + 472);
      v90 = *(v20 + 448);
      v89 = *(v20 + 456);
      (*(*(v20 + 520) + 96))(v86, *(v20 + 512));
      v91 = *(v89 + 32);
      v91(v87, v86, v90);
      *(v20 + 168) = v90;
      *(v20 + 176) = sub_24424D1B4(&qword_27EDDC188, MEMORY[0x277CD7E50], &unk_24425C9C0);
      v92 = __swift_allocate_boxed_opaque_existential_1((v20 + 144));
      v93 = *(v89 + 16);
      v93(v92, v87, v90);
      v93(v88, v87, v90);
      v94 = v155;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_24424C6B0(0, v155[2] + 1, 1, v155, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v96 = v94[2];
      v95 = v94[3];
      if (v96 >= v95 >> 1)
      {
        v94 = sub_24424C6B0((v95 > 1), v96 + 1, 1, v94, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v97 = *(v20 + 464);
      v98 = *(v20 + 448);
      v99 = *(v20 + 456);
      (*(v99 + 8))(*(v20 + 472), v98);
      v94[2] = v96 + 1;
      v100 = v94 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v96;
      v85 = v94;
      v91(v100, v97, v98);
      v82 = 1;
      v84 = v94;
      v78 = v158;
      v83 = v149;
      goto LABEL_34;
    }

    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v50 = *(v20 + 640);
    v51 = *(v20 + 544);
    v52 = *(v20 + 528);
    v53 = *(v20 + 512);
    __swift_project_value_buffer(v164, qword_27EDDC758);
    v54 = sub_244257C48();
    v50(v52, v51, v53);
    v55 = sub_244257508();
    v56 = os_log_type_enabled(v55, v54);
    v57 = *(v20 + 544);
    v58 = *(v20 + 528);
    v59 = *(v20 + 520);
    v60 = *(v20 + 512);
    if (v56)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v165 = v62;
      *v61 = 136315138;
      sub_24424D1B4(&qword_27EDDC180, MEMORY[0x277CD83B0], MEMORY[0x277CD83E8]);
      v63 = sub_244257E88();
      v161 = v57;
      v65 = v64;
      v40 = *(v59 + 8);
      v40(v58, v60);
      v66 = sub_24423CC9C(v63, v65, &v165);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_2441FB000, v55, v54, "User picked a track type from the picker that we don't handle: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x245D5D2D0](v62, -1, -1);
      MEMORY[0x245D5D2D0](v61, -1, -1);

      v41 = v161;
    }

    else
    {

      v40 = *(v59 + 8);
      v40(v58, v60);
      v41 = v57;
    }

    v40(v41, v60);
    v20 = v163;
    v40(*(v163 + 536), *(v163 + 512));
  }

  *(v20 + 680) = v149;
  *(v20 + 672) = v152;
  *(v20 + 664) = v148;
  *(v20 + 656) = v148;
  *(v20 + 848) = v150;
  if (v150)
  {

    (*(v20 + 288))(*(v20 + 656), *(v20 + 848));

    v116 = *(v20 + 8);

    return v116();
  }

  else
  {
    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    *(v20 + 768) = __swift_project_value_buffer(v164, qword_27EDDC758);
    v118 = sub_244257508();
    v119 = sub_244257C58();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = *(v20 + 480);
      v121 = *(v20 + 448);
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v165 = v123;
      *v122 = 136315394;

      v125 = MEMORY[0x245D5C4A0](v124, v120);
      v127 = v126;

      v128 = sub_24423CC9C(v125, v127, &v165);

      *(v122 + 4) = v128;
      *(v122 + 12) = 2080;
      v129 = v152;

      v131 = MEMORY[0x245D5C4A0](v130, v121);
      v133 = v132;

      v134 = sub_24423CC9C(v131, v133, &v165);

      *(v122 + 14) = v134;
      _os_log_impl(&dword_2441FB000, v118, v119, "Queueing tracks via media remote: %s; %s", v122, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5D2D0](v123, -1, -1);
      MEMORY[0x245D5D2D0](v122, -1, -1);

      v135 = v149;
    }

    else
    {

      v129 = v155;
      v135 = v158;
    }

    v136 = v20 + 16;
    v137 = v20 + 264;
    v138 = v20 + 80;
    *(v20 + 784) = v129;
    *(v20 + 776) = v135;
    v139 = v20;
    v142 = v20 + 344;
    v141 = *(v20 + 344);
    v140 = *(v142 + 8);
    v143 = v139[42];
    v144 = objc_opt_self();
    v139[2] = v139;
    v139[7] = v137;
    v139[3] = sub_24424A64C;
    swift_continuation_init();
    v139[17] = v143;
    v145 = __swift_allocate_boxed_opaque_existential_1(v139 + 14);
    v139[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC178, &qword_24425CA78);
    sub_244257B78();
    (*(v141 + 32))(v145, v140, v143);
    v139[10] = MEMORY[0x277D85DD0];
    v139[11] = 1107296256;
    v139[12] = sub_24424C27C;
    v139[13] = &block_descriptor_3;
    [v144 getActiveRouteWithCompletion_];
    (*(v141 + 8))(v145, v143);

    return MEMORY[0x282200938](v136);
  }
}

uint64_t sub_24424C27C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC168, &unk_24425CA60);
  return sub_244257B88();
}

void sub_24424C4FC(uint64_t a1, char a2, uint64_t a3)
{
  sub_244243124(0, &qword_27EDDC100, off_278E0A270);
  v5 = sub_244257B18();
  (*(a3 + 16))(a3, v5, a2 & 1);
}

void *sub_24424C6B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_24424C88C(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC108, &qword_24425CA08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC110, &qword_24425CA10);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC118, &qword_24425CA18);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v28 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC120, &qword_24425CA20);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC128, &qword_24425CA28);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  sub_2442574E8();
  v17 = sub_2442574D8();
  v18 = [a1 window];
  if (v18)
  {
    v19 = v18;
    sub_2442574C8();

    sub_2442574B8();
    sub_244243124(0, &qword_27EDDBF48, 0x277D85C78);
    v20 = sub_244257C78();
    v37 = v20;
    v21 = sub_244257C68();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    sub_24423D4F8(&qword_27EDDC130, &qword_27EDDC110, &qword_24425CA10, MEMORY[0x277CBCEC8]);
    sub_24424CF1C();
    sub_2442576F8();
    sub_244237440(v6, &qword_27EDDC108, &qword_24425CA08);

    (*(v28 + 8))(v9, v7);
    sub_24423D4F8(&qword_27EDDC140, &qword_27EDDC118, &qword_24425CA18, MEMORY[0x277CBCD60]);
    sub_24424CF84();
    v22 = v31;
    sub_244257718();
    (*(v29 + 8))(v11, v22);
    sub_24423D4F8(&qword_27EDDC150, &qword_27EDDC120, &qword_24425CA20, MEMORY[0x277CBCBE0]);
    v23 = v32;
    sub_244257708();
    (*(v30 + 8))(v13, v23);
    v24 = swift_allocObject();
    v25 = v36;
    *(v24 + 16) = v35;
    *(v24 + 24) = v25;
    sub_24423D4F8(&qword_27EDDC158, &qword_27EDDC128, &qword_24425CA28, MEMORY[0x277CBCC18]);

    v26 = v34;
    v27 = sub_244257728();

    (*(v33 + 8))(v16, v26);
    swift_beginAccess();
    qword_27EDDCB60 = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24424CE2C(uint64_t a1)
{
  result = sub_24424D1B4(&qword_27EDDBF28, MEMORY[0x277CD7E50], MEMORY[0x277D2AE88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24424CE84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24424CEBC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_244257A48();
  (*(v3 + 16))(v3, v4);
}

unint64_t sub_24424CF1C()
{
  result = qword_27EDDC138;
  if (!qword_27EDDC138)
  {
    sub_244243124(255, &qword_27EDDBF48, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC138);
  }

  return result;
}

unint64_t sub_24424CF84()
{
  result = qword_27EDDC148;
  if (!qword_27EDDC148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC008, &unk_24425CA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC148);
  }

  return result;
}

double sub_24424D000(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = a1[1];
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v5)
  {
    v3(v4, v5);
  }

  return result;
}

uint64_t sub_24424D0C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24424D10C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2442372C8;

  return sub_244247B14(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_24424D1B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24424D228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_24424D5E0()
{
  v1 = OBJC_IVAR___CSArtworkImageView_content;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24424D6FC(void *a1)
{
  v3 = OBJC_IVAR___CSArtworkImageView_content;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    v7 = [v6 metadataObject];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 song];

      if (v9)
      {
        v10 = [v9 artworkCatalog];

        if (v10)
        {
          [v10 setFittingSize_];
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_24424D9C8;
          aBlock[5] = v11;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_24424D9D4;
          aBlock[3] = &block_descriptor_4;
          v12 = _Block_copy(aBlock);

          [v10 setDestination:v1 configurationBlock:v12];

          _Block_release(v12);
          v5 = v10;
        }
      }
    }
  }
}

uint64_t sub_24424D89C()
{
  MEMORY[0x245D5D3C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24424D8D4(uint64_t a1, uint64_t a2)
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setImage_];
    [v4 setContentMode_];
  }

  else
  {
  }

  return result;
}

uint64_t sub_24424D9D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, a3);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_24424DA7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CSArtworkImageView_content;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24424DB04;
}

void sub_24424DB04(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[6] + v3[7]);
    if (v4)
    {
      v5 = [v4 metadataObject];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 song];

        if (v7)
        {
          v8 = [v7 artworkCatalog];

          if (v8)
          {
            v9 = v3[6];
            [v8 setFittingSize_];
            v10 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v3[4] = sub_24424DDF0;
            v3[5] = v10;
            *v3 = MEMORY[0x277D85DD0];
            v3[1] = 1107296256;
            v3[2] = sub_24424D9D4;
            v3[3] = &block_descriptor_5;
            v11 = _Block_copy(v3);

            [v8 setDestination:v9 configurationBlock:v11];
            _Block_release(v11);
          }
        }
      }
    }
  }

  free(v3);
}

id sub_24424DDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24424DDF4()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC7F8);
  __swift_project_value_buffer(v0, qword_27EDDC7F8);
  return sub_244257518();
}

uint64_t sub_24424DE94()
{
  sub_244243D8C();

  v1 = sub_244243EE0();

  if (v1)
  {
    if (qword_27EDDC7F0 != -1)
    {
      swift_once();
    }

    v2 = sub_244257528();
    __swift_project_value_buffer(v2, qword_27EDDC7F8);
    v3 = sub_244257508();
    v4 = sub_244257C58();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2441FB000, v3, v4, "Resetting Tips on launch", v5, 2u);
      MEMORY[0x245D5D2D0](v5, -1, -1);
    }

    sub_244257588();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1A8, &qword_24425CAE0);
  sub_244257618();
  *(swift_allocObject() + 16) = xmmword_24425CAC0;
  v6 = sub_2442575C8();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  sub_2442575B8();
  sub_2442575D8();
  (*(v7 + 8))(v8, v6);

  v9 = sub_2442575F8();
  v10 = *(v9 - 8);
  v11 = swift_task_alloc();
  MEMORY[0x245D5BF50]();
  sub_244257608();
  (*(v10 + 8))(v11, v9);

  sub_244257688();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24424E2E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24424E410()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2442372C8;

  return sub_24424DE78();
}

uint64_t sub_24424E4A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer);
  v2 = sub_24424F3C4();
  return (*((*MEMORY[0x277D85000] & *v1) + 0xD8))(0x726F6C6F43, 0xE500000000000000, v2 & 1);
}

char *sub_24424E518(double a1, double a2, double a3, double a4)
{
  type metadata accessor for MicaPlayer(0);
  v9 = type metadata accessor for GlowView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  result = sub_244251A04(0x534F69776F6C67, 0xE700000000000000, v11);
  if (result)
  {
    *&v4[OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer] = result;
    v27.receiver = v4;
    v27.super_class = v9;
    v13 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 clearColor];
    [v15 setBackgroundColor_];

    v17 = OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer;
    v18 = *&v15[OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer];
    v19 = [v15 layer];

    v20 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v18) + 0xC0))(v19, 1, *MEMORY[0x277CDA708]);

    v21 = *&v15[v17];
    v22 = *((*v20 & *v21) + 0x198);
    v23 = v21;
    v22(6710863, 0xE300000000000000);

    v24 = *&v15[v17];
    v25 = *((*v20 & *v24) + 0xE8);
    v26 = v24;
    v25();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24424EAA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 2225512432 && a2 == 0xA400000000000000 || (sub_244257EB8() & 1) != 0)
  {
    v4 = &selRef_purpleColor;
  }

  else if (a1 == 0x8FB8EFA49DE2 && a2 == 0xA600000000000000 || (sub_244257EB8() & 1) != 0)
  {
    v4 = &selRef_redColor;
  }

  else if (a1 == 2777980912 && a2 == 0xA400000000000000 || (sub_244257EB8() & 1) != 0)
  {
    v4 = &selRef_orangeColor;
  }

  else
  {
    v4 = &selRef_brownColor;
    if ((a1 != 2307825648 || a2 != 0xA400000000000000) && (sub_244257EB8() & 1) == 0)
    {
      v4 = &selRef_yellowColor;
    }
  }

  v5 = [objc_opt_self() *v4];

  return v5;
}

void *sub_24424EC18(void *result)
{
  if (result[2])
  {
    v2 = result[4];
    v3 = result[5];
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);

    v6 = v5(v2, v3);

    v7 = [objc_allocWithZone(MEMORY[0x277CD9E98]) initWithType_];
    v10[3] = sub_24424ED3C();
    v10[0] = v7;
    v8 = *((*v4 & *v1) + 0x88);
    v9 = v7;
    v8(v6, v10, 0.18);

    return sub_24424413C(v10);
  }

  return result;
}

unint64_t sub_24424ED3C()
{
  result = qword_27EDDC1B8;
  if (!qword_27EDDC1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDC1B8);
  }

  return result;
}

uint64_t sub_24424ED88(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer);
  v4 = sub_24424F3C4();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))(0x726F6C6F43, 0xE500000000000000, v4 & 1);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = [a1 CGColor];
      [v9 setFillColor_];

      v7 = v10;
    }
  }

  v11 = (*((*v5 & *v3) + 0x198))(28239, 0xE200000000000000);
  result = (*((*v5 & *v3) + 0xF8))(v11);
  if ((result & 1) == 0)
  {
    return (*((*v5 & *v3) + 0xE8))();
  }

  return result;
}

id sub_24424EF80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24424EFC4()
{
  v1 = MEMORY[0x277D84F90];
  sub_24424EFF8(&v1);
  return v1;
}

void sub_24424EFF8(void *a1)
{
  v3 = v1;
  MEMORY[0x245D5C470]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_244257B48();
  }

  sub_244257B58();
  v4 = [v3 mask];
  if (v4)
  {
    v5 = v4;
    sub_24424EFF8(a1);
  }

  v6 = [v3 sublayers];
  if (v6)
  {
    v7 = v6;
    sub_244243124(0, &qword_27EDDC1C8, 0x277CD9ED8);
    v8 = sub_244257B28();

    if (v8 >> 62)
    {
      v9 = sub_244257D08();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x245D5C700](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          sub_24424EFF8(a1);
        }
      }
    }
  }
}

unint64_t sub_24424F1A0()
{
  v0 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  sub_24424EFF8(&v22);
  v1 = v22;
  v22 = v0;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_244257D08())
  {
    v3 = 0;
    v21 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v19 = i;
    v20 = v1;
    while (1)
    {
      if (v21)
      {
        v5 = MEMORY[0x245D5C700](v3, v1);
      }

      else
      {
        if (v3 >= *(v18 + 16))
        {
          goto LABEL_20;
        }

        v5 = *(v17 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 animationKeys];
      if (v8)
      {
        v9 = v8;
        v10 = sub_244257B28();

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = v10 + 40;
          do
          {

            v13 = sub_244257A48();

            v14 = [v6 animationForKey_];

            if (v14)
            {
              v15 = v14;
              MEMORY[0x245D5C470]();
              if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_244257B48();
              }

              sub_244257B58();

              v4 = v22;
            }

            v12 += 16;
            --v11;
          }

          while (v11);
        }

        i = v19;
        v1 = v20;
      }

      if (v3 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  return v4;
}

void sub_24424F3CC(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = [v3 superlayer];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  [v3 bounds];
  if (v15 >= 0.00001)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.00001;
  }

  if (v14 >= 0.00001)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0.00001;
  }

  if (v13 >= 0.00001)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.00001;
  }

  if (v11 >= 0.00001)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0.00001;
  }

  v20 = *MEMORY[0x277CDA750];
  if (a2)
  {
    v21 = sub_244257A78();
    v23 = v22;
    if (v21 == sub_244257A78() && v23 == v24)
    {
    }

    else
    {
      v26 = sub_244257EB8();

      if ((v26 & 1) == 0)
      {
        v27 = *MEMORY[0x277CDA738];
        v28 = sub_244257A78();
        v30 = v29;
        if (v28 == sub_244257A78() && v30 == v31)
        {
        }

        else
        {
          v49 = sub_244257EB8();

          if ((v49 & 1) == 0)
          {
            v55 = *MEMORY[0x277CDA758];
            v56 = sub_244257A78();
            v58 = v57;
            if (v56 == sub_244257A78() && v58 == v59)
            {
            }

            else
            {
              v64 = sub_244257EB8();

              if ((v64 & 1) == 0)
              {
                v66 = sub_244257A78();
                v68 = v67;
                if (v66 == sub_244257A78() && v68 == v69)
                {

                  v32 = v20;
                }

                else
                {
                  v123 = sub_244257EB8();

                  v32 = v20;
                  if ((v123 & 1) == 0)
                  {
                    v32 = v27;
                    v74 = sub_244257A78();
                    v76 = v75;
                    if (v74 == sub_244257A78() && v76 == v77)
                    {
                    }

                    else
                    {
                      v79 = sub_244257EB8();

                      if ((v79 & 1) == 0)
                      {
                        v80 = sub_244257A78();
                        v82 = v81;
                        if (v80 == sub_244257A78() && v82 == v83)
                        {

                          v32 = v55;
                        }

                        else
                        {
                          v89 = sub_244257EB8();

                          if (v89)
                          {
                            v32 = v55;
                          }

                          else
                          {
                            v32 = a1;
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_27;
              }
            }

            v33 = MEMORY[0x277CDA6C8];
            goto LABEL_26;
          }
        }

        v33 = MEMORY[0x277CDA6A8];
LABEL_26:
        v32 = *v33;
        goto LABEL_27;
      }
    }

    v33 = MEMORY[0x277CDA6C0];
    goto LABEL_26;
  }

  v32 = a1;
LABEL_27:
  v34 = v32;
  v35 = sub_244257A78();
  v37 = v36;
  if (v35 == sub_244257A78() && v37 == v38)
  {
    goto LABEL_66;
  }

  v40 = sub_244257EB8();

  if ((v40 & 1) == 0)
  {
    v41 = sub_244257A78();
    v43 = v42;
    if (v41 == sub_244257A78() && v43 == v44)
    {
LABEL_66:

      goto LABEL_37;
    }

    v45 = sub_244257EB8();

    if ((v45 & 1) == 0)
    {
      v50 = sub_244257A78();
      v52 = v51;
      if (v50 == sub_244257A78() && v52 == v53)
      {
        goto LABEL_66;
      }

      v54 = sub_244257EB8();

      if (v54)
      {
        goto LABEL_37;
      }

      v60 = sub_244257A78();
      v62 = v61;
      if (v60 == sub_244257A78() && v62 == v63)
      {
        goto LABEL_66;
      }

      v65 = sub_244257EB8();

      if (v65)
      {
        goto LABEL_37;
      }

      v70 = sub_244257A78();
      v72 = v71;
      if (v70 == sub_244257A78() && v72 == v73)
      {
        goto LABEL_66;
      }

      v78 = sub_244257EB8();

      if (v78)
      {
        goto LABEL_37;
      }

      v84 = sub_244257A78();
      v86 = v85;
      if (v84 == sub_244257A78() && v86 == v87)
      {
        goto LABEL_66;
      }

      v88 = sub_244257EB8();

      if (v88)
      {
        goto LABEL_37;
      }

      v90 = sub_244257A78();
      v92 = v91;
      if (v90 == sub_244257A78() && v92 == v93)
      {
        goto LABEL_66;
      }

      v94 = sub_244257EB8();

      v46 = 1.0;
      if (v94)
      {
        goto LABEL_38;
      }

      v95 = sub_244257A78();
      v97 = v96;
      if (v95 == sub_244257A78() && v97 == v98)
      {
        goto LABEL_89;
      }

      v99 = sub_244257EB8();

      if (v99)
      {
        goto LABEL_38;
      }

      v100 = sub_244257A78();
      v102 = v101;
      if (v100 == sub_244257A78() && v102 == v103)
      {
LABEL_89:

        goto LABEL_38;
      }

      v104 = sub_244257EB8();

      if (v104)
      {
        goto LABEL_38;
      }

      v105 = sub_244257A78();
      v107 = v106;
      if (v105 == sub_244257A78() && v107 == v108)
      {

LABEL_98:
        v47 = v19 / v17;
        v46 = v18 / v16;
        goto LABEL_39;
      }

      v109 = sub_244257EB8();

      if (v109)
      {
        goto LABEL_98;
      }

      v110 = sub_244257A78();
      v112 = v111;
      if (v110 == sub_244257A78() && v112 == v113)
      {
      }

      else
      {
        v114 = sub_244257EB8();

        if ((v114 & 1) == 0)
        {
          v117 = sub_244257A78();
          v119 = v118;
          if (v117 == sub_244257A78() && v119 == v120)
          {
          }

          else
          {
            v121 = sub_244257EB8();

            if ((v121 & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
              v122 = swift_allocObject();
              *(v122 + 16) = xmmword_24425C680;
              v124.m11 = 0.0;
              v124.m12 = -2.68156159e154;
              sub_244257D88();
              MEMORY[0x245D5C430](0xD000000000000011, 0x8000000244263650);
              v125[0] = v34;
              type metadata accessor for CALayerContentsGravity();
              sub_244257DC8();
              *(v122 + 56) = MEMORY[0x277D837D0];
              *(v122 + 32) = 0;
              *(v122 + 40) = 0xE000000000000000;
              sub_244257EE8();

              goto LABEL_38;
            }
          }

          v46 = v19 / v17;
          v115 = v18 / v16;
          if (v18 / v16 >= v19 / v17)
          {
            goto LABEL_104;
          }

          goto LABEL_110;
        }
      }

      v46 = v19 / v17;
      v115 = v18 / v16;
      if (v19 / v17 > v18 / v16)
      {
LABEL_104:
        if ((*&v115 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v116 = v46;
        }

        else
        {
          v116 = v115;
        }

        if ((~*&v115 & 0x7FF0000000000000) != 0)
        {
          v46 = v115;
        }

        else
        {
          v46 = v116;
        }
      }

LABEL_110:
      v47 = v46;
      goto LABEL_39;
    }
  }

LABEL_37:
  v46 = 1.0;
LABEL_38:
  v47 = 1.0;
LABEL_39:
  if ((a3 & 1) == 0)
  {
    v48 = objc_opt_self();
    [v48 begin];
    [v48 setDisableActions_];
  }

  CATransform3DMakeScale(&v124, v47, v46, 1.0);
  [v4 setTransform_];
  [v4 frame];
  [v4 frame];
  CGRectMake();
  [v4 setFrame_];
  if ((a3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }
}

void sub_244250008()
{
  v1 = v0;
  v2 = [objc_allocWithZone(swift_getObjCClassFromObject()) initWithLayer_];
  v3 = [v0 sublayers];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_244243124(0, &qword_27EDDC1C8, 0x277CD9ED8);
  v5 = sub_244257B28();

  if (v5 >> 62)
  {
    v6 = sub_244257D08();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
LABEL_69:
        __break(1u);
        return;
      }

      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x245D5C700](v7, v5);
        }

        else
        {
          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        ++v7;
        sub_244250008();
        v11 = v10;
        [v2 addSublayer_];
      }

      while (v6 != v7);
    }
  }

LABEL_12:
  v12 = [v1 mask];
  if (v12)
  {
    v13 = v12;
    sub_244250008();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v2 setMask_];

  v16 = sub_2442515E4(&unk_2857976D8);
  swift_arrayDestroy();
  *&v57[0] = v16;
  sub_244243124(0, &qword_27EDDC200, 0x277CD9FD0);
  v54 = v2;
  if ([v1 isKindOfClass_])
  {
    sub_24425167C(&unk_285797A08);
  }

  else
  {
    sub_244243124(0, &qword_27EDDC208, 0x277CD9F98);
    if ([v1 isKindOfClass_])
    {
      sub_24425167C(&unk_285797A98);
    }

    else
    {
      sub_244243124(0, &qword_27EDDC210, 0x277CD9F78);
      if ([v1 isKindOfClass_])
      {
        sub_24425167C(&unk_285797B78);
        sub_2442462F0(&unk_285797B98);
        goto LABEL_20;
      }

      sub_244243124(0, &qword_27EDDC218, 0x277CD9FD8);
      if (![v1 isKindOfClass_])
      {
        goto LABEL_20;
      }

      sub_24425167C(&unk_285797BA8);
    }
  }

  swift_arrayDestroy();
LABEL_20:
  v17 = 0;
  v18 = 0x726579616C627573;
  v19 = *&v57[0];
  v20 = *&v57[0] + 56;
  v21 = 1 << *(*&v57[0] + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(*&v57[0] + 56);
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
LABEL_29:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = (*(v19 + 48) + ((v17 << 10) | (16 * v27)));
    v30 = *v28;
    v29 = v28[1];
    if (*v28 != v18 || v29 != 0xE900000000000073)
    {
      v32 = v18;
      v33 = sub_244257EB8();
      v18 = v32;
      if ((v33 & 1) == 0 && (v30 != 1802723693 || v29 != 0xE400000000000000))
      {
        v35 = sub_244257EB8();
        v18 = v32;
        if ((v35 & 1) == 0)
        {

          v36 = sub_244257A48();
          LODWORD(v53) = [v1 shouldArchiveValueForKey_];

          if (v53)
          {
            v53 = sub_244257A48();
            v37 = [v1 valueForKey_];

            if (v37)
            {
              sub_244257CB8();
              swift_unknownObjectRelease();
            }

            else
            {
              v55 = 0u;
              v56 = 0u;
            }

            v57[0] = v55;
            v57[1] = v56;
            sub_244250A34(v57, &v55);
            v38 = *(&v56 + 1);
            if (*(&v56 + 1))
            {
              v39 = __swift_project_boxed_opaque_existential_1Tm(&v55, *(&v56 + 1));
              v50[1] = v50;
              v52 = *(v38 - 8);
              MEMORY[0x28223BE20](v39);
              v51 = v50 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v52 + 16))();
              v53 = sub_244257EA8();
              (*(v52 + 8))(v51, v38);
              __swift_destroy_boxed_opaque_existential_0(&v55);
            }

            else
            {
              v53 = 0;
            }

            v41 = sub_244257A48();

            [v54 setValue:v53 forKey:v41];
            swift_unknownObjectRelease();

            sub_24424413C(v57);
            v18 = v32;
          }

          else
          {

            v18 = v32;
          }
        }
      }
    }
  }

  v25 = v54;
  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v17;
    if (v23)
    {
      v17 = v26;
      goto LABEL_29;
    }
  }

  if ([v1 needsDisplay])
  {
    [v25 setNeedsDisplay];
  }

  if ([v1 needsLayout])
  {
    [v25 setNeedsLayout];
  }

  v42 = [v1 animationKeys];
  if (v42)
  {
    v43 = v42;
    v44 = sub_244257B28();

    v53 = v44;
    v45 = *(v44 + 2);
    if (v45)
    {
      v46 = v53 + 40;
      do
      {

        v47 = sub_244257A48();
        v48 = [v1 animationForKey_];

        if (v48)
        {
          if ([v48 isRemovedOnCompletion])
          {
          }

          else
          {
            v49 = sub_244257A48();

            [v25 addAnimation:v48 forKey:v49];
          }
        }

        else
        {
        }

        v46 += 16;
        --v45;
      }

      while (v45);
    }
  }
}

uint64_t sub_2442507AC(uint64_t a1, id *a2)
{
  result = sub_244257A58();
  *a2 = 0;
  return result;
}

uint64_t sub_244250824(uint64_t a1, id *a2)
{
  v3 = sub_244257A68();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2442508A4@<X0>(uint64_t *a2@<X8>)
{
  sub_244257A78();
  v4 = sub_244257A48();

  *a2 = v4;
  return result;
}

uint64_t sub_2442508E8(void *a1, uint64_t *a2, __n128 a3)
{
  v3 = sub_244257A78();
  v5 = v4;
  if (v3 == sub_244257A78() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_244257EB8();
  }

  return v8 & 1;
}

uint64_t sub_244250970@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_244257A48();

  *a2 = v3;
  return result;
}

uint64_t sub_2442509B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_244257A78();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void type metadata accessor for CALayerContentsGravity()
{
  if (!qword_27EDDC1D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDDC1D0);
    }
  }
}

uint64_t sub_244250A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE8, &qword_24425C780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244250AA4(uint64_t a1)
{
  v2 = sub_244250CDC(&qword_27EDDC1F0, &unk_24425CC20);
  v3 = sub_244250CDC(&qword_27EDDC1F8, &unk_24425CBC0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_244250BD8(__n128 a1)
{
  v1 = sub_244257A78();
  v2 = MEMORY[0x245D5C450](v1);

  return v2;
}

uint64_t sub_244250C14(uint64_t a1, __n128 a2)
{
  sub_244257A78();
  sub_244257AB8();
}

uint64_t sub_244250C68(uint64_t a1, __n128 a2)
{
  sub_244257A78();
  sub_244257EF8();
  sub_244257AB8();
  v2 = sub_244257F08();

  return v2;
}

uint64_t sub_244250CDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CALayerContentsGravity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_244250D20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_244257EF8();
  sub_244257AB8();
  v8 = sub_244257F08();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_244257EB8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2442510D0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_244250E70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC220, &qword_24425CCB0);
  v4 = sub_244257D58();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_244257EF8();
      sub_244257AB8();
      v21 = sub_244257F08();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2442510D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_244250E70(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_244251250();
      goto LABEL_16;
    }

    sub_2442513AC(v8 + 1);
  }

  v10 = *v4;
  sub_244257EF8();
  sub_244257AB8();
  v11 = sub_244257F08();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_244257EB8() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_244257EC8();
  __break(1u);
}

void sub_244251250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC220, &qword_24425CCB0);
  v2 = *v0;
  v3 = sub_244257D48();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_2442513AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC220, &qword_24425CCB0);
  v4 = sub_244257D58();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_244257EF8();

      sub_244257AB8();
      v20 = sub_244257F08();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_2442515E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D5C570](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_244250D20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24425167C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_244250D20(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_2442516EC()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xF8))() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_documentDuration) != INFINITY)
  {
    goto LABEL_6;
  }

  v2 = *((*v1 & *v0) + 0xA0);
  if (!v2())
  {
    goto LABEL_9;
  }

  v3 = swift_unknownObjectRelease();
  v4 = (v2)(v3);
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = [v4 respondsToSelector_];
  swift_unknownObjectRelease();
  if (v5)
  {
LABEL_6:

    sub_244253C34();
  }

  else
  {
LABEL_9:
    v6 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
    v7 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v0 + v6);
      *(v0 + v6) = 0;
    }
  }
}

uint64_t sub_244251880(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_2442516EC();
  return swift_unknownObjectRelease();
}

void (*sub_2442518E4(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24425197C;
}

void sub_24425197C(void **a1, char a2)
{
  v3 = *a1;
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
    sub_2442516EC();
  }

  free(v3);
}

uint64_t sub_244251A04(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = sub_244257318();
  v6 = *(v50 - 8);
  v7 = MEMORY[0x28223BE20](v50);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v47 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v47 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v49 = a1;
  v51 = a2;
  v25 = sub_244257A48();
  v26 = sub_244257A48();
  v27 = a3;
  v28 = [a3 URLForResource:v25 withExtension:v26];

  if (v28)
  {

    sub_244257308();

    v29 = v50;
    (*(v6 + 32))(v24, v22, v50);
    (*(v6 + 16))(v13, v24, v29);
    v30 = sub_244251F04(v13);

    (*(v6 + 8))(v24, v29);
    return v30;
  }

  v32 = v19;
  v33 = v50;
  v34 = sub_244257A48();
  v35 = sub_244257A48();
  v36 = v27;
  v37 = [v27 URLForResource:v34 withExtension:v35];

  if (v37)
  {

    sub_244257308();

    (*(v6 + 32))(v32, v16, v33);
    (*(v6 + 16))(v13, v32, v33);
    v38 = sub_244251F04(v13);

    (*(v6 + 8))(v32, v33);
  }

  else
  {
    v39 = sub_244257A48();
    v40 = sub_244257A48();
    v41 = [v36 URLForResource:v39 withExtension:v40];

    if (!v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_24425C680;
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_244257D88();

      v52 = 0xD00000000000001ELL;
      v53 = 0x8000000244263670;
      MEMORY[0x245D5C430](v49, v51);

      v45 = v52;
      v46 = v53;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 32) = v45;
      *(v44 + 40) = v46;
      sub_244257EE8();

      return 0;
    }

    v42 = v47;
    sub_244257308();

    v43 = v48;
    (*(v6 + 32))(v48, v42, v33);
    (*(v6 + 16))(v13, v43, v33);
    v38 = sub_244251F04(v13);

    (*(v6 + 8))(v43, v33);
  }

  return v38;
}

uint64_t sub_244251F04(uint64_t a1)
{
  v2 = sub_244257318();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - v6;
  sub_2442572E8();
  v9 = sub_244257A98();
  v10 = v8;
  if (v9 == 24931 && v8 == 0xE200000000000000 || (sub_244257EB8() & 1) != 0 || v9 == 1918984547 && v10 == 0xE400000000000000 || (sub_244257EB8() & 1) != 0 || v9 == 1819107683 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v52 = sub_244257EB8();

    if ((v52 & 1) == 0)
    {

      goto LABEL_39;
    }
  }

  v11 = sub_244257A78();
  v13 = v12;

  if (!v13)
  {
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24425C680;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_244257D88();

    v17 = 0x8000000244263690;
    v18 = 0xD000000000000026;
    goto LABEL_40;
  }

  sub_244243124(0, &qword_27EDDC230, 0x277CD9F20);
  v14 = *(v3 + 16);
  v14(v7, a1, v2);
  v15 = sub_244252700(v7, v11, v13, 0);
  if (!v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24425C680;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_244257D88();

    v17 = 0x80000002442636C0;
    v18 = 0xD00000000000001ALL;
LABEL_40:
    *&v68 = v18;
    *(&v68 + 1) = v17;
    sub_24425496C();
    v53 = sub_244257E88();
    MEMORY[0x245D5C430](v53);

    v54 = v68;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 32) = v54;
    sub_244257EE8();
    goto LABEL_41;
  }

  v19 = v15;
  v20 = [v15 rootLayer];
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_24425C680;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_244257D88();

    *&v68 = 0xD00000000000001BLL;
    *(&v68 + 1) = 0x80000002442636E0;
    sub_24425496C();
    v50 = sub_244257E88();
    MEMORY[0x245D5C430](v50);

    v51 = v68;
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 32) = v51;
    sub_244257EE8();

LABEL_41:

    (*(v3 + 8))(a1, v2);
    return 0;
  }

  v56 = v20;
  v57 = v3 + 16;
  v58 = v3;
  v59 = v2;
  v60 = a1;
  v21 = sub_2442549C4(MEMORY[0x277D84F90]);
  v64 = v19;
  v22 = [v19 publishedObjectNames];
  v23 = sub_244257B28();

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v23 + 32;
    v62 = v14;
    v63 = v24;
    v61 = v23;
    while (v25 < *(v23 + 16))
    {
      sub_24423D540(v26, &v68);
      if (swift_dynamicCast())
      {
        v27 = v67;
        v28 = sub_244257A48();
        v29 = [v64 publishedObjectWithName_];

        if (v29)
        {
          sub_244257CB8();
          swift_unknownObjectRelease();
          sub_2442552EC(&v67, &v68);
          __swift_project_boxed_opaque_existential_1Tm(&v68, v69);
          v30 = sub_244257EA8();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v67 = v21;
          v33 = sub_2442410B8(v27, *(&v27 + 1));
          v34 = v21[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_43;
          }

          v37 = v32;
          if (v21[3] >= v36)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2442547FC();
            }
          }

          else
          {
            sub_2442543D8(v36, isUniquelyReferenced_nonNull_native);
            v38 = sub_2442410B8(v27, *(&v27 + 1));
            if ((v27 & 1) != (v39 & 1))
            {
              goto LABEL_45;
            }

            v33 = v38;
          }

          if (v37)
          {

            v21 = v67;
            *(*(v67 + 56) + 8 * v33) = v30;
            swift_unknownObjectRelease();
          }

          else
          {
            v21 = v67;
            *(v67 + 8 * (v33 >> 6) + 64) |= 1 << v33;
            *(v21[6] + 16 * v33) = v27;
            *(v21[7] + 8 * v33) = v30;
            v40 = v21[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_44;
            }

            v21[2] = v42;
          }

          __swift_destroy_boxed_opaque_existential_0(&v68);
          v14 = v62;
          v24 = v63;
          v23 = v61;
        }

        else
        {

          v24 = v63;
        }
      }

      ++v25;
      v26 += 32;
      if (v24 == v25)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_244257ED8();
    __break(1u);
  }

  else
  {
LABEL_32:

    v43 = v56;
    [v56 setGeometryFlipped_];
    [v43 setMasksToBounds_];
    [v43 setRepeatCount_];
    v44 = v65;
    v46 = v59;
    v45 = v60;
    v14(v65, v60, v59);
    v47 = (*(v66 + 184))(v44, v43, v21);

    (*(v58 + 8))(v45, v46);
    return v47;
  }

  return result;
}

id sub_244252700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2442572F8();
  v7 = sub_244257A48();

  if (a4)
  {
    v8 = sub_244257A18();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_244257318();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_2442572D8();

    swift_willThrow();
    v15 = sub_244257318();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_2442528C8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_244254AC8(a1, a2, a3);

  return v8;
}

id sub_244252920()
{
  v1 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
  v2 = *&v0[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MicaPlayer(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_244252ADC(void *a1, char a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  v8 = [v7 superlayer];
  if (v8)
  {
  }

  else
  {
    v9 = MEMORY[0x277D85000];
    v10 = (*((*MEMORY[0x277D85000] & *v3) + 0xF0))();
    (*((*v9 & *v3) + 0x138))(v10, 0.0);
    if (a2)
    {
      [a1 addSublayer_];
    }

    else
    {
      [a1 insertSublayer:v7 atIndex:0];
    }

    v11 = *((*v9 & *v3) + 0xD0);

    v11(a3, 0);
  }
}

id sub_244252C4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  result = [v1 superlayer];
  if (result)
  {

    (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();

    return [v1 removeFromSuperlayer];
  }

  return result;
}

void sub_244252CF0(void *a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) superlayer];
  if (v5)
  {

    sub_24424F3CC(a1, 1, a2 & 1);
  }
}

uint64_t sub_244252D5C()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_244252DDC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects);
  if (v7)
  {
    if (*(v7 + 16))
    {
      sub_2442410B8(a1, a2);
      if (v8)
      {
        return swift_unknownObjectRetain();
      }
    }
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24425C680;
    sub_244257D88();
    MEMORY[0x245D5C430](0xD00000000000001ALL, 0x8000000244263700);
    MEMORY[0x245D5C430](a1, a2);
    MEMORY[0x245D5C430](0xD000000000000014, 0x8000000244263720);
    sub_244257318();
    sub_24425496C();
    v11 = sub_244257E88();
    MEMORY[0x245D5C430](v11);

    MEMORY[0x245D5C430](39, 0xE100000000000000);
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_244257EE8();
  }

  return 0;
}

uint64_t sub_244252F80()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  if ((result & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    v4 = CACurrentMediaTime();
    v5 = (*((*v1 & *v0) + 0x130))();
    v6 = *((*v1 & *v0) + 0x100);
    [v3 setBeginTime_];
    (v6)([v3 setTimeOffset_]);
    [v3 setSpeed_];
    sub_244253C34();
    result = (*((*v1 & *v0) + 0xA0))();
    if (result)
    {
      v7 = result;
      if ([result respondsToSelector_])
      {
        [v7 micaPlayerDidStartPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_244253150()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  if (result)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    (*((*v1 & *v0) + 0x130))();
    [v3 setTimeOffset_];
    [v3 setBeginTime_];
    [v3 setSpeed_];
    v4 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
    v5 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer);
    if (v5)
    {
      [v5 invalidate];
      v6 = *(v0 + v4);
      *(v0 + v4) = 0;
    }

    result = (*((*v1 & *v0) + 0xA0))();
    if (result)
    {
      v7 = result;
      if ([result respondsToSelector_])
      {
        [v7 micaPlayerDidStopPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

float sub_244253300()
{
  v1 = v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_244253348(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed);
  v4 = swift_beginAccess();
  v5 = 1.0;
  if (a1 > 0.0)
  {
    v5 = a1;
  }

  *v3 = v5;
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))(v4);
  if (result)
  {
    *&v7 = *v3;
    return [*(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) setSpeed_];
  }

  return result;
}

uint64_t (*sub_2442533FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_244253484;
}

void sub_244253484(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v3[3];
    v5 = v3[4];
    if (*(v6 + v5) <= 0.0)
    {
      *(v6 + v5) = 1065353216;
      v6 = v3[3];
    }

    if ((*((*MEMORY[0x277D85000] & *v6) + 0xF8))(v4))
    {
      v8 = v3[3];
      LODWORD(v7) = *(v8 + v3[4]);
      [*(v8 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) setSpeed_];
    }
  }

  free(v3);
}

uint64_t sub_24425353C()
{
  v1 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_shouldLoop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_244253580(char a1)
{
  v3 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_shouldLoop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_244253634()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF8))())
  {
    CACurrentMediaTime();
    v1 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    [v1 beginTime];
    return [v1 speed];
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);

    return [v3 timeOffset];
  }
}

void *sub_244253704(double a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  v5 = *(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  v6 = 0.0;
  if (v4)
  {
    v6 = CACurrentMediaTime() - a1;
    a1 = 0.0;
  }

  [v5 setBeginTime_];
  result = (*((*v3 & *v1) + 0xA0))([v5 setTimeOffset_]);
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 micaPlayerDidChangePlaybackTime_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *(*sub_244253830(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))())
  {
    v3 = CACurrentMediaTime();
    v4 = *(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    [v4 beginTime];
    v6 = v3 - v5;
    [v4 speed];
    v8 = v6 * v7;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) timeOffset];
  }

  *a1 = v8;
  return sub_244253910;
}

void sub_2442539A8(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_244250008();
  v9 = v8;
  v10 = sub_244254D00(*(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects));
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_url, v4);
  v11 = type metadata accessor for MicaPlayer(0);
  objc_allocWithZone(v11);
  v12 = v9;
  v13 = sub_244254AC8(v7, v12, v10);

  a1[3] = v11;
  *a1 = v13;
}

void sub_244253C34()
{
  v1 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
  if (!*(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer))
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v0) + 0xF8))())
    {
      if (*(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_documentDuration) != INFINITY)
      {
        goto LABEL_7;
      }

      v3 = *((*v2 & *v0) + 0xA0);
      if (v3())
      {
        v4 = swift_unknownObjectRelease();
        v5 = (v3)(v4);
        if (!v5)
        {
          __break(1u);
          return;
        }

        v6 = [v5 respondsToSelector_];
        swift_unknownObjectRelease();
        if (v6)
        {
LABEL_7:
          v7 = objc_opt_self();
          v8 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v12[4] = sub_244255288;
          v12[5] = v8;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 1107296256;
          v12[2] = sub_24423E3B0;
          v12[3] = &block_descriptor_5;
          v9 = _Block_copy(v12);

          v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:0.0333333333];
          _Block_release(v9);
          v11 = *(v0 + v1);
          *(v0 + v1) = v10;
        }
      }
    }
  }
}

void *sub_244253E18()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
  if (v2)
  {
    if ((*((*v1 & *v0) + 0x118))())
    {
      v2 = (*((*v1 & *v0) + 0x138))(0.0);
    }

    else
    {
      v2 = (*((*v1 & *v0) + 0xF0))();
    }
  }

  result = (*((*v1 & *v0) + 0xA0))(v2);
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 micaPlayerDidChangePlaybackTime_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_244253F90(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName);
  swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    if (!a2 || (v8 == a1 ? (v9 = v7 == a2) : (v9 = 0), !v9 && (sub_244257EB8() & 1) == 0))
    {
      v10 = *(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);

      v11 = sub_244257A48();

      v12 = [v10 stateWithName_];

      LODWORD(v13) = 1.0;
      [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:v12 ofLayer:v10 transitionSpeed:v13];
    }
  }

  else if (a2)
  {
    LODWORD(v6) = 1.0;
    [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:0 ofLayer:*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) transitionSpeed:v6];
  }
}

uint64_t sub_2442540D0()
{
  v1 = (v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_244254128(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName);
  swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (!v8 || (v7 == a1 ? (v9 = v8 == a2) : (v9 = 0), !v9 && (sub_244257EB8() & 1) == 0))
    {
      v10 = *(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);

      v11 = sub_244257A48();

      v12 = [v10 stateWithName_];

      LODWORD(v13) = 1.0;
      [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:v12 ofLayer:v10 transitionSpeed:v13];

      return;
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    LODWORD(v6) = 1.0;
    [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:0 ofLayer:*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) transitionSpeed:v6];
  }
}

void (*sub_244254274(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_244254314;
}

void sub_244254314(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_244253F90(v9, v8);
  }

  else
  {
    sub_244253F90(v9, v8);
  }

  free(v2);
}

void sub_2442543D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDC2A0, &unk_24425CD40);
  v35 = v4;
  v6 = sub_244257E58();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_244257EF8();
      sub_244257AB8();
      v25 = sub_244257F08();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_244254680(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2442410B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2442543D8(v16, a4 & 1);
      v11 = sub_2442410B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_244257ED8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2442547FC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void sub_2442547FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDC2A0, &unk_24425CD40);
  v2 = *v0;
  v3 = sub_244257E48();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_24425496C()
{
  result = qword_27EDDC228;
  if (!qword_27EDDC228)
  {
    sub_244257318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC228);
  }

  return result;
}

unint64_t sub_2442549C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDC2A0, &unk_24425CD40);
    v3 = sub_244257E68();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2442410B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_244254AC8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed] = 1065353216;
  v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_shouldLoop] = 0;
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer] = 0;
  v7 = &v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_url;
  v9 = sub_244257318();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v11 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer;
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer] = a2;
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects] = a3;

  v12 = a2;
  [v12 duration];
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_documentDuration] = v13;
  [*&v3[v11] setDuration_];
  result = [objc_allocWithZone(MEMORY[0x277CD9FB0]) initWithLayer_];
  if (result)
  {
    v15 = result;

    *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController] = v15;
    v17.receiver = v3;
    v17.super_class = type metadata accessor for MicaPlayer(0);
    v16 = objc_msgSendSuper2(&v17, sel_init);
    (*(v10 + 8))(a1, v9);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MicaPlayer(uint64_t a1)
{
  result = qword_27EDDCB28;
  if (!qword_27EDDCB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_244254D00(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = a1;
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F98];
  }

  v2 = sub_24424EFC4();
  v3 = sub_24424F1A0();
  v4 = sub_24424EFC4();
  v5 = sub_24424F1A0();
  v6 = v1 + 64;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;
  v46 = v3 & 0xFFFFFFFFFFFFFF8;
  v49 = v3;
  v48 = v3 & 0xC000000000000001;
  v37 = v5 & 0xFFFFFFFFFFFFFF8;
  v38 = v5 & 0xC000000000000001;
  v40 = v4 & 0xC000000000000001;
  v41 = v5;
  v42 = v4;
  v39 = v4 & 0xFFFFFFFFFFFFFF8;

  v12 = 0;
  v43 = MEMORY[0x277D84F98];
  v45 = v1;
  v13 = &_swift_FORCE_LOAD___swiftMetal___ContinuitySing;
  if (!v9)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      v17 = *(v1 + 56);
      v18 = (*(v1 + 48) + 16 * v16);
      v19 = v18[1];
      v44 = *v18;
      v20 = *(v17 + 8 * v16);
      sub_244243124(0, &qword_27EDDC1C8, 0x277CD9ED8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = v19;

      if ([swift_unknownObjectRetain() v13[176]])
      {
        break;
      }

      sub_244243124(0, &qword_27EDDC298, 0x277CD9DF0);
      if (![v20 v13[176]])
      {
        goto LABEL_34;
      }

      if (v49 >> 62)
      {
        v27 = sub_244257D08();
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = *(v46 + 16);
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      result = swift_unknownObjectRetain();
      v23 = 4;
      while (1)
      {
        v28 = v23 - 4;
        if (!v48)
        {
          break;
        }

        v29 = MEMORY[0x245D5C700](v23 - 4, v49);
        result = swift_unknownObjectRelease();
        if (v29 == v20)
        {
          goto LABEL_39;
        }

LABEL_31:
        v30 = v23 - 3;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_56;
        }

        ++v23;
        if (v30 == v27)
        {
LABEL_33:
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      if (v28 >= *(v46 + 16))
      {
        goto LABEL_58;
      }

      if (*(v49 + 8 * v23) != v20)
      {
        goto LABEL_31;
      }

LABEL_39:
      if (v38)
      {
        v35 = v23 - 4;
        v36 = v41;
LABEL_51:
        v32 = MEMORY[0x245D5C700](v35, v36);
      }

      else
      {
        if (v28 >= *(v37 + 16))
        {
          goto LABEL_60;
        }

        v31 = v41;
LABEL_42:
        v32 = *(v31 + 8 * v23);
      }

      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_244254680(v33, v44, v47, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease_n();

      v1 = v45;
      v13 = &_swift_FORCE_LOAD___swiftMetal___ContinuitySing;
      if (!v9)
      {
        do
        {
LABEL_6:
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v14 >= v10)
          {

            return v43;
          }

          v9 = *(v6 + 8 * v14);
          ++v12;
        }

        while (!v9);
        v12 = v14;
      }
    }

    if (!(v2 >> 62))
    {
      v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_34:
      swift_unknownObjectRelease();

      v1 = v45;
      v13 = &_swift_FORCE_LOAD___swiftMetal___ContinuitySing;
      if (!v9)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v22 = sub_244257D08();
  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_13:
  result = swift_unknownObjectRetain();
  v23 = 4;
  while (2)
  {
    v24 = v23 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x245D5C700](v23 - 4, v2);
      result = swift_unknownObjectRelease();
      if (v25 == v20)
      {
        break;
      }

      goto LABEL_19;
    }

    if (v24 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if (*(v2 + 8 * v23) != v20)
    {
LABEL_19:
      v26 = v23 - 3;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_55;
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  if (v40)
  {
    v35 = v23 - 4;
    v36 = v42;
    goto LABEL_51;
  }

  if (v24 < *(v39 + 16))
  {
    v31 = v42;
    goto LABEL_42;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_24425516C(uint64_t a1)
{
  result = sub_244257318();
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

uint64_t sub_244255250()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_244255288()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_244253E18();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_2442552EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}