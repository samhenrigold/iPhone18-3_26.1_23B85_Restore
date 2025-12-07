uint64_t sub_225F46D04()
{
  v1 = v0[159];
  v0[116] = v0;
  MEMORY[0x277D82BD8](v1);

  v119 = v0[161];
  v117 = v0[149];
  v2 = v0[136];
  v116 = v0[134];
  v118 = v0[132];
  v3 = v119;
  v0[125] = v119;
  v4 = sub_225F3EC5C();
  v117(v2, v4, v116);
  MEMORY[0x277D82BE0](v118);
  v120 = swift_allocObject();
  *(v120 + 16) = v118;
  v5 = v119;
  v122 = swift_allocObject();
  *(v122 + 16) = v119;
  sub_225F3EAE8();

  v132 = sub_226098C48();
  v133 = sub_22609A088();
  v125 = swift_allocObject();
  *(v125 + 16) = 32;
  v126 = swift_allocObject();
  *(v126 + 16) = 8;
  v121 = swift_allocObject();
  *(v121 + 16) = sub_225F49848;
  *(v121 + 24) = v120;
  v127 = swift_allocObject();
  *(v127 + 16) = sub_225EF7B84;
  *(v127 + 24) = v121;
  v128 = swift_allocObject();
  *(v128 + 16) = 64;
  v129 = swift_allocObject();
  *(v129 + 16) = 8;
  v123 = swift_allocObject();
  *(v123 + 16) = sub_225F3EA68;
  *(v123 + 24) = v122;
  v124 = swift_allocObject();
  *(v124 + 16) = sub_225F3EA70;
  *(v124 + 24) = v123;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_225F3E1C8;
  *(v130 + 24) = v124;
  sub_22609A4F8();
  v131 = v6;

  *v131 = sub_225EF7434;
  v131[1] = v125;

  v131[2] = sub_225EF7434;
  v131[3] = v126;

  v131[4] = sub_225EF7B90;
  v131[5] = v127;

  v131[6] = sub_225EF7434;
  v131[7] = v128;

  v131[8] = sub_225EF7434;
  v131[9] = v129;

  v131[10] = sub_225F3E358;
  v131[11] = v130;
  sub_225EF5418();

  if (os_log_type_enabled(v132, v133))
  {
    v33 = sub_22609A188();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v34 = sub_225EF5468(1, v32, v32);
    v35 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v115 + 1008) = v33;
    *(v115 + 1016) = v34;
    *(v115 + 1024) = v35;
    sub_225EF54BC(2, (v115 + 1008));
    sub_225EF54BC(2, (v115 + 1008));
    *(v115 + 672) = sub_225EF7434;
    *(v115 + 680) = v125;
    sub_225EF73E8((v115 + 672), v115 + 1008, v115 + 1016, v115 + 1024);
    *(v115 + 672) = sub_225EF7434;
    *(v115 + 680) = v126;
    sub_225EF73E8((v115 + 672), v115 + 1008, v115 + 1016, v115 + 1024);
    *(v115 + 672) = sub_225EF7B90;
    *(v115 + 680) = v127;
    sub_225EF73E8((v115 + 672), v115 + 1008, v115 + 1016, v115 + 1024);
    *(v115 + 672) = sub_225EF7434;
    *(v115 + 680) = v128;
    sub_225EF73E8((v115 + 672), v115 + 1008, v115 + 1016, v115 + 1024);
    *(v115 + 672) = sub_225EF7434;
    *(v115 + 680) = v129;
    sub_225EF73E8((v115 + 672), v115 + 1008, v115 + 1016, v115 + 1024);
    *(v115 + 672) = sub_225F3E358;
    *(v115 + 680) = v130;
    sub_225EF73E8((v115 + 672), v115 + 1008, v115 + 1016, v115 + 1024);
    _os_log_impl(&dword_225EEB000, v132, v133, "Replay for requestId %s failed with error %@", v33, 0x16u);
    sub_225EF7AF4(v34, 1, v32);
    sub_225EF7AF4(v35, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v31 = *(v115 + 1216);
  v29 = *(v115 + 1088);
  v30 = *(v115 + 1072);
  MEMORY[0x277D82BD8](v132);
  v31(v29, v30);

  sub_225F4C4A4((v115 + 208));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786340, &qword_2260A04C8);
  sub_22609A388();
  v113 = *(v115 + 976);
  *(v115 + 1176) = v113;
  if (v113)
  {
    v7 = *(v115 + 1056);
    *(v115 + 984) = v113;
    v114 = [v7 audio];
    if (v114)
    {
      v109 = sub_226098978();
      v110 = v8;
      MEMORY[0x277D82BD8](v114);
      v111 = v109;
      v112 = v110;
    }

    else
    {
      v111 = 0;
      v112 = 0xF000000000000000;
    }

    v102 = *(v115 + 1128);
    v100 = *(v115 + 1112);
    v101 = *(v115 + 1120);
    v103 = *(v115 + 1136);
    sub_2260998E8();
    sub_2260998E8();
    v104 = sub_225F49850();
    v9 = sub_225F4985C();
    CESRAsrReplayWorkerConfig.init(audio:language:taskHint:useBaseProfile:profileData:requestEntityStrings:)(v111, v112, v100, v101, v102, v103, v104 & 1, 0, (v115 + 112), 0xF000000000000000, v9);
    memcpy((v115 + 208), (v115 + 112), 0x60uLL);
    *(v115 + 592) = sub_226099AA8();
    *(v115 + 600) = v10;
    sub_226099938();
    sub_225EFE6BC(v115 + 592);
    v106 = *(v115 + 576);
    v107 = *(v115 + 584);
    sub_2260998E8();
    v105 = sub_226099AA8();
    v108 = v11;
    sub_2260998E8();
    *(v115 + 400) = v106;
    *(v115 + 408) = v107;
    *(v115 + 416) = v105;
    *(v115 + 424) = v108;
    if (*(v115 + 408))
    {
      sub_225F4C5E0((v115 + 400), (v115 + 880));
      if (*(v115 + 424))
      {
        *(v115 + 896) = *(v115 + 880);
        *(v115 + 912) = *(v115 + 416);
        v98 = MEMORY[0x22AA72BD0](*(v115 + 896), *(v115 + 904), *(v115 + 912), *(v115 + 920));
        sub_225EFE6BC(v115 + 912);
        sub_225EFE6BC(v115 + 896);
        sub_225EFE6BC(v115 + 400);
        v99 = v98;
        goto LABEL_12;
      }

      sub_225EFE6BC(v115 + 880);
    }

    else if (!*(v115 + 424))
    {
      sub_225EFE6BC(v115 + 400);
      v99 = 1;
LABEL_12:

      if (v99)
      {
        v97 = [*(v115 + 1056) profile];
        if (v97)
        {
          v93 = sub_226098978();
          v94 = v12;
          MEMORY[0x277D82BD8](v97);
          v95 = v93;
          v96 = v94;
        }

        else
        {
          v95 = 0;
          v96 = 0xF000000000000000;
        }

        v91 = v95;
        v92 = v96;
      }

      else
      {
        v91 = 0;
        v92 = 0xF000000000000000;
      }

      v13 = *(v115 + 280);
      v14 = *(v115 + 288);
      *(v115 + 280) = v91;
      *(v115 + 288) = v92;
      sub_225F4C1F8(v13, v14);
      *(v115 + 624) = sub_226099AA8();
      *(v115 + 632) = v15;
      sub_226099938();
      sub_225EFE6BC(v115 + 624);
      v88 = *(v115 + 608);
      v89 = *(v115 + 616);
      sub_2260998E8();
      v87 = sub_226099AA8();
      v90 = v16;
      sub_2260998E8();
      *(v115 + 432) = v88;
      *(v115 + 440) = v89;
      *(v115 + 448) = v87;
      *(v115 + 456) = v90;
      if (*(v115 + 440))
      {
        sub_225F4C5E0((v115 + 432), (v115 + 832));
        if (*(v115 + 456))
        {
          *(v115 + 848) = *(v115 + 832);
          *(v115 + 864) = *(v115 + 448);
          v85 = MEMORY[0x22AA72BD0](*(v115 + 848), *(v115 + 856), *(v115 + 864), *(v115 + 872));
          sub_225EFE6BC(v115 + 864);
          sub_225EFE6BC(v115 + 848);
          sub_225EFE6BC(v115 + 432);
          v86 = v85;
          goto LABEL_26;
        }

        sub_225EFE6BC(v115 + 832);
      }

      else if (!*(v115 + 456))
      {
        sub_225EFE6BC(v115 + 432);
        v86 = 1;
LABEL_26:

        if (v86)
        {
          v82 = [*(v115 + 1056) contextualEntities];
          v83 = sub_226099C88();
          MEMORY[0x277D82BD8](v82);
          v84 = v83;
        }

        else
        {
          v84 = sub_22609A4F8();
        }

        *(v115 + 296) = v84;

        *(v115 + 656) = sub_226099AA8();
        *(v115 + 664) = v17;
        sub_226099938();
        sub_225EFE6BC(v115 + 656);
        v79 = *(v115 + 640);
        v80 = *(v115 + 648);
        sub_2260998E8();
        v78 = sub_226099AA8();
        v81 = v18;
        sub_2260998E8();
        *(v115 + 464) = v79;
        *(v115 + 472) = v80;
        *(v115 + 480) = v78;
        *(v115 + 488) = v81;
        if (*(v115 + 472))
        {
          sub_225F4C5E0((v115 + 464), (v115 + 784));
          if (*(v115 + 488))
          {
            *(v115 + 800) = *(v115 + 784);
            *(v115 + 816) = *(v115 + 480);
            v76 = MEMORY[0x22AA72BD0](*(v115 + 800), *(v115 + 808), *(v115 + 816), *(v115 + 824));
            sub_225EFE6BC(v115 + 816);
            sub_225EFE6BC(v115 + 800);
            sub_225EFE6BC(v115 + 464);
            v77 = v76;
LABEL_37:
            v57 = *(v115 + 1104);
            v60 = *(v115 + 1072);
            v61 = *(v115 + 1056);
            v59 = *(v115 + 1080);

            *(v115 + 272) = v77 & 1;
            type metadata accessor for CESRAsrReplayWorker();
            memcpy((v115 + 16), (v115 + 208), 0x60uLL);
            sub_225F4C240(v115 + 16, v115 + 304);
            v58 = CESRAsrReplayWorker.__allocating_init(config:)((v115 + 16));
            *(v115 + 1184) = v58;
            *(v115 + 992) = v58;
            v19 = sub_225F3EC5C();
            v20 = *(v59 + 16);
            *(v115 + 1192) = v20;
            *(v115 + 1200) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v20(v57, v19, v60);
            MEMORY[0x277D82BE0](v61);
            v63 = swift_allocObject();
            *(v63 + 16) = v61;
            sub_2260998E8();
            v62 = swift_allocObject();
            *(v62 + 16) = v113;

            v65 = swift_allocObject();
            *(v65 + 16) = sub_225F2CE08;
            *(v65 + 24) = v62;

            oslog = sub_226098C48();
            v75 = sub_22609A088();
            v67 = swift_allocObject();
            *(v67 + 16) = 32;
            v68 = swift_allocObject();
            *(v68 + 16) = 8;
            v64 = swift_allocObject();
            *(v64 + 16) = sub_225F49848;
            *(v64 + 24) = v63;
            v69 = swift_allocObject();
            *(v69 + 16) = sub_225EF7B84;
            *(v69 + 24) = v64;
            v70 = swift_allocObject();
            *(v70 + 16) = 32;
            v71 = swift_allocObject();
            *(v71 + 16) = 8;
            v66 = swift_allocObject();
            *(v66 + 16) = sub_225F4C3B4;
            *(v66 + 24) = v65;
            v72 = swift_allocObject();
            *(v72 + 16) = sub_225EF7B84;
            *(v72 + 24) = v66;
            *(v115 + 1208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
            sub_22609A4F8();
            v73 = v21;

            *v73 = sub_225EF7434;
            v73[1] = v67;

            v73[2] = sub_225EF7434;
            v73[3] = v68;

            v73[4] = sub_225EF7B90;
            v73[5] = v69;

            v73[6] = sub_225EF7434;
            v73[7] = v70;

            v73[8] = sub_225EF7434;
            v73[9] = v71;

            v73[10] = sub_225EF7B90;
            v73[11] = v72;
            sub_225EF5418();

            if (os_log_type_enabled(oslog, v75))
            {
              buf = sub_22609A188();
              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v55 = sub_225EF5468(0, v53, v53);
              v56 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              *(v115 + 1032) = buf;
              *(v115 + 1040) = v55;
              *(v115 + 1048) = v56;
              sub_225EF54BC(2, (v115 + 1032));
              sub_225EF54BC(2, (v115 + 1032));
              *(v115 + 768) = sub_225EF7434;
              *(v115 + 776) = v67;
              sub_225EF73E8((v115 + 768), v115 + 1032, v115 + 1040, v115 + 1048);
              *(v115 + 768) = sub_225EF7434;
              *(v115 + 776) = v68;
              sub_225EF73E8((v115 + 768), v115 + 1032, v115 + 1040, v115 + 1048);
              *(v115 + 768) = sub_225EF7B90;
              *(v115 + 776) = v69;
              sub_225EF73E8((v115 + 768), v115 + 1032, v115 + 1040, v115 + 1048);
              *(v115 + 768) = sub_225EF7434;
              *(v115 + 776) = v70;
              sub_225EF73E8((v115 + 768), v115 + 1032, v115 + 1040, v115 + 1048);
              *(v115 + 768) = sub_225EF7434;
              *(v115 + 776) = v71;
              sub_225EF73E8((v115 + 768), v115 + 1032, v115 + 1040, v115 + 1048);
              *(v115 + 768) = sub_225EF7B90;
              *(v115 + 776) = v72;
              sub_225EF73E8((v115 + 768), v115 + 1032, v115 + 1040, v115 + 1048);
              _os_log_impl(&dword_225EEB000, oslog, v75, "Attempting replay for requestId %s, replayType %s", buf, 0x16u);
              sub_225EF7AF4(v55, 0, v53);
              sub_225EF7AF4(v56, 2, MEMORY[0x277D84F70] + 8);
              sub_22609A168();
            }

            v51 = *(v115 + 1104);
            v52 = *(v115 + 1072);
            v50 = *(v115 + 1080);
            MEMORY[0x277D82BD8](oslog);
            v22 = *(v50 + 8);
            *(v115 + 1216) = v22;
            *(v115 + 1224) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v22(v51, v52);
            v23 = swift_task_alloc();
            *(v115 + 1232) = v23;
            *v23 = *(v115 + 928);
            v23[1] = sub_225F41CD4;

            return CESRAsrReplayWorker.runTranscription()();
          }

          sub_225EFE6BC(v115 + 784);
        }

        else if (!*(v115 + 488))
        {
          sub_225EFE6BC(v115 + 464);
          v77 = 1;
          goto LABEL_37;
        }

        sub_225F4C1C0(v115 + 464);
        v77 = 0;
        goto LABEL_37;
      }

      sub_225F4C1C0(v115 + 432);
      v86 = 0;
      goto LABEL_26;
    }

    sub_225F4C1C0(v115 + 400);
    v99 = 0;
    goto LABEL_12;
  }

  v48 = *(v115 + 1056);
  sub_225EFE6E8((v115 + 544));
  v49 = [v48 metadata];
  if (v49 && (v47 = [v49 ids], MEMORY[0x277D82BD8](v49), v47))
  {
    v25 = [v47 asrId];
    v46 = v25;
    if (v25)
    {
      v42 = sub_226099A08();
      v43 = v26;
      MEMORY[0x277D82BD8](v46);
      v44 = v42;
      v45 = v43;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    MEMORY[0x277D82BD8](v47);
    v40 = v44;
    v41 = v45;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  *(v115 + 560) = v40;
  *(v115 + 568) = v41;
  if (*(v115 + 568))
  {
    v134 = *(v115 + 560);
    v135 = *(v115 + 568);
  }

  else
  {
    v134 = sub_226099AA8();
    v135 = v27;
    if (*(v115 + 568))
    {
      sub_225EFE6BC(v115 + 560);
    }
  }

  v39 = *(v115 + 1160);
  v38 = *(v115 + 1144);
  v37 = *(v115 + 1152);
  v36 = *(v115 + 960);
  sub_2260998E8();
  sub_22603C688(v134, v135, v39, v36);

  sub_225EFE6E8((v115 + 960));
  (*(v37 + 8))(v39, v38);

  v28 = *(*(v115 + 928) + 8);

  return v28();
}

uint64_t sub_225F4966C(void *a1)
{
  v13 = [a1 metadata];
  if (v13 && (v12 = [v13 ids], MEMORY[0x277D82BD8](v13), v12))
  {
    v1 = [v12 requestId];
    v11 = v1;
    if (v1)
    {
      v7 = sub_226099A08();
      v8 = v2;
      MEMORY[0x277D82BD8](v11);
      v9 = v7;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    MEMORY[0x277D82BD8](v12);
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_226099AA8();
    v17 = v3;
  }

  return v16;
}

uint64_t sub_225F498C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 200) = a6;
  *(v7 + 192) = a5;
  *(v7 + 184) = a4;
  *(v7 + 176) = a3;
  *(v7 + 168) = a2;
  *(v7 + 160) = a1;
  *(v7 + 128) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 248) = 0;
  *(v7 + 249) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  v8 = sub_226098C58();
  *(v7 + 208) = v8;
  *(v7 + 216) = *(v8 - 8);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 152) = v6;

  return MEMORY[0x2822009F8](sub_225F49AB4, 0, 0);
}

uint64_t sub_225F49AB4()
{
  v114 = v0;
  v1 = v0[30];
  v67 = v0[27];
  v68 = v0[26];
  v74 = v0[25];
  v76 = v0[24];
  v73 = v0[23];
  v72 = v0[22];
  v71 = v0[21];
  v70 = v0[20];
  v0[16] = v0;
  v2 = sub_225F3EC5C();
  v69 = *(v67 + 16);
  v69(v1, v2, v68);
  sub_2260998E8();
  v77 = swift_allocObject();
  *(v77 + 16) = v70;
  *(v77 + 24) = v71;
  sub_2260998E8();
  v79 = swift_allocObject();
  *(v79 + 16) = v72;
  *(v79 + 24) = v73;
  sub_2260998E8();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;

  v81 = swift_allocObject();
  *(v81 + 16) = sub_225F2CE08;
  *(v81 + 24) = v75;

  MEMORY[0x277D82BE0](v76);
  v83 = swift_allocObject();
  *(v83 + 16) = v76;
  sub_225F3EAE8();

  v97 = sub_226098C48();
  v98 = sub_22609A088();
  v84 = swift_allocObject();
  *(v84 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_225F4C620;
  *(v78 + 24) = v77;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_225EF7B84;
  *(v86 + 24) = v78;
  v87 = swift_allocObject();
  *(v87 + 16) = 32;
  v88 = swift_allocObject();
  *(v88 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_225F4C620;
  *(v80 + 24) = v79;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_225EF7B84;
  *(v89 + 24) = v80;
  v90 = swift_allocObject();
  *(v90 + 16) = 32;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_225F4C3B4;
  *(v82 + 24) = v81;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_225EF7B84;
  *(v92 + 24) = v82;
  v93 = swift_allocObject();
  *(v93 + 16) = 64;
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_225F4C62C;
  *(v95 + 24) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v96 = v3;

  *v96 = sub_225EF7434;
  v96[1] = v84;

  v96[2] = sub_225EF7434;
  v96[3] = v85;

  v96[4] = sub_225EF7B90;
  v96[5] = v86;

  v96[6] = sub_225EF7434;
  v96[7] = v87;

  v96[8] = sub_225EF7434;
  v96[9] = v88;

  v96[10] = sub_225EF7B90;
  v96[11] = v89;

  v96[12] = sub_225EF7434;
  v96[13] = v90;

  v96[14] = sub_225EF7434;
  v96[15] = v91;

  v96[16] = sub_225EF7B90;
  v96[17] = v92;

  v96[18] = sub_225EF7434;
  v96[19] = v93;

  v96[20] = sub_225EF7434;
  v96[21] = v94;

  v96[22] = sub_225F3E358;
  v96[23] = v95;
  sub_225EF5418();

  if (os_log_type_enabled(v97, v98))
  {
    buf = sub_22609A188();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v64 = sub_225EF5468(1, v62, v62);
    v65 = sub_225EF5468(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v109 = buf;
    v110 = v64;
    v111 = v65;
    sub_225EF54BC(2, &v109);
    sub_225EF54BC(4, &v109);
    v112 = sub_225EF7434;
    v113 = v84;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v85;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7B90;
    v113 = v86;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v87;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v88;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7B90;
    v113 = v89;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v90;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v91;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7B90;
    v113 = v92;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v93;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225EF7434;
    v113 = v94;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    v112 = sub_225F3E358;
    v113 = v95;
    sub_225EF73E8(&v112, &v109, &v110, &v111);
    _os_log_impl(&dword_225EEB000, v97, v98, "Processing results for replay transcript %s, original transcript %s, replay type %s, for requestID %@", buf, 0x2Au);
    sub_225EF7AF4(v64, 1, v62);
    sub_225EF7AF4(v65, 3, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v58 = *(v66 + 240);
  v59 = *(v66 + 208);
  v61 = *(v66 + 168);
  v57 = *(v66 + 216);
  MEMORY[0x277D82BD8](v97);
  v60 = *(v57 + 8);
  v60(v58, v59);
  sub_2260998E8();
  if (v61)
  {
    v55 = *(v66 + 168);
    v56 = *(v66 + 184);
    *(v66 + 48) = *(v66 + 160);
    *(v66 + 56) = v55;
    sub_2260998E8();
    if (v56)
    {
      v52 = *(v66 + 184);
      *(v66 + 64) = *(v66 + 176);
      *(v66 + 72) = v52;
      sub_225F4C634();
      v53 = sub_225F26174();
      v54 = [v53 contextualEntityConfig];
      MEMORY[0x277D82BD8](v53);
      if (!v54)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRAsrReplayCounterfactualABManager.swift", 72, 2, 59, 0);
      }

      v51 = [v54 enablementConfig];
      MEMORY[0x277D82BD8](v54);
      if (!v51)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRAsrReplayCounterfactualABManager.swift", 72, 2, 59, 0);
      }

      v48 = [v51 shouldEnroll];
      *(v66 + 248) = v48 & 1;
      MEMORY[0x277D82BD8](v51);
      *(v66 + 249) = 0;
      *(v66 + 96) = sub_226099AA8();
      *(v66 + 104) = v5;
      sub_226099938();
      sub_225EFE6BC(v66 + 96);
      v49 = *(v66 + 80);
      v50 = *(v66 + 88);
      if (v50)
      {
        *(v66 + 112) = v49;
        *(v66 + 120) = v50;
        v6 = sub_226099AA8();
        v47 = MEMORY[0x22AA72BD0](v49, v50, v6);

        if (v47)
        {
          *(v66 + 249) = 1;

          v46 = 1;
        }

        else
        {

          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      if ((MEMORY[0x22AA72BD0](*(v66 + 160), v55, *(v66 + 176), v52) & 1) != 0 && v48 == (v46 & 1))
      {
        v7 = *(v66 + 232);
        v37 = *(v66 + 208);
        v38 = *(v66 + 192);
        v8 = sub_225F3EC5C();
        v69(v7, v8, v37);
        MEMORY[0x277D82BE0](v38);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        sub_225F3EAE8();

        oslog = sub_226098C48();
        v45 = sub_22609A088();
        v40 = swift_allocObject();
        *(v40 + 16) = 64;
        v41 = swift_allocObject();
        *(v41 + 16) = 8;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_225F4C62C;
        *(v42 + 24) = v39;
        sub_22609A4F8();
        v43 = v9;

        *v43 = sub_225EF7434;
        v43[1] = v40;

        v43[2] = sub_225EF7434;
        v43[3] = v41;

        v43[4] = sub_225F3E358;
        v43[5] = v42;
        sub_225EF5418();

        if (os_log_type_enabled(oslog, v45))
        {
          v34 = sub_22609A188();
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v35 = sub_225EF5468(1, v33, v33);
          v36 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v104 = v34;
          v105 = v35;
          v106 = v36;
          sub_225EF54BC(2, &v104);
          sub_225EF54BC(1, &v104);
          v107 = sub_225EF7434;
          v108 = v40;
          sub_225EF73E8(&v107, &v104, &v105, &v106);
          v107 = sub_225EF7434;
          v108 = v41;
          sub_225EF73E8(&v107, &v104, &v105, &v106);
          v107 = sub_225F3E358;
          v108 = v42;
          sub_225EF73E8(&v107, &v104, &v105, &v106);
          _os_log_impl(&dword_225EEB000, oslog, v45, "Original and replay transcript match for matching configurations, emitting stability trigger log for requestID %@", v34, 0xCu);
          sub_225EF7AF4(v35, 1, v33);
          sub_225EF7AF4(v36, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        else
        {
        }

        v30 = *(v66 + 232);
        v31 = *(v66 + 208);
        v32 = *(v66 + 192);
        MEMORY[0x277D82BD8](oslog);
        v60(v30, v31);
        type metadata accessor for CESAExperimentationManager();
        sub_226046714(2u, v32);
      }

      else if ((MEMORY[0x22AA72BD0](*(v66 + 160), v55, *(v66 + 176), v52) & 1) == 0 && v48 != (v46 & 1))
      {
        v10 = *(v66 + 224);
        v21 = *(v66 + 208);
        v22 = *(v66 + 192);
        v11 = sub_225F3EC5C();
        v69(v10, v11, v21);
        MEMORY[0x277D82BE0](v22);
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        sub_225F3EAE8();

        log = sub_226098C48();
        v29 = sub_22609A088();
        v24 = swift_allocObject();
        *(v24 + 16) = 64;
        v25 = swift_allocObject();
        *(v25 + 16) = 8;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_225F4C62C;
        *(v26 + 24) = v23;
        sub_22609A4F8();
        v27 = v12;

        *v27 = sub_225EF7434;
        v27[1] = v24;

        v27[2] = sub_225EF7434;
        v27[3] = v25;

        v27[4] = sub_225F3E358;
        v27[5] = v26;
        sub_225EF5418();

        if (os_log_type_enabled(log, v29))
        {
          v18 = sub_22609A188();
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v19 = sub_225EF5468(1, v17, v17);
          v20 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v99 = v18;
          v100 = v19;
          v101 = v20;
          sub_225EF54BC(2, &v99);
          sub_225EF54BC(1, &v99);
          v102 = sub_225EF7434;
          v103 = v24;
          sub_225EF73E8(&v102, &v99, &v100, &v101);
          v102 = sub_225EF7434;
          v103 = v25;
          sub_225EF73E8(&v102, &v99, &v100, &v101);
          v102 = sub_225F3E358;
          v103 = v26;
          sub_225EF73E8(&v102, &v99, &v100, &v101);
          _os_log_impl(&dword_225EEB000, log, v29, "Original and replay transcript differ for differing configurations, emitting counterfactual trigger log for requestID %@", v18, 0xCu);
          sub_225EF7AF4(v19, 1, v17);
          sub_225EF7AF4(v20, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        else
        {
        }

        v14 = *(v66 + 224);
        v15 = *(v66 + 208);
        v16 = *(v66 + 192);
        MEMORY[0x277D82BD8](log);
        v60(v14, v15);
        type metadata accessor for CESAExperimentationManager();
        sub_226046714(3u, v16);
      }
    }

    else
    {
    }
  }

  v13 = *(*(v66 + 128) + 8);

  return v13();
}

uint64_t sub_225F4BEC0(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_226099AA8();
    v9 = v2;
  }

  return v8;
}

uint64_t sub_225F4BF60(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_225F4C084(uint64_t a1, uint64_t a2)
{
  v4 = sub_2260999F8();
  v5 = [v3 initWithUUIDString_];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

uint64_t sub_225F4C0E8(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_225F4C138()
{
  v2 = qword_27D786338;
  if (!qword_27D786338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786330, &qword_2260A04C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F4C1F8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_225EF5990(result, a2);
  }

  return result;
}

uint64_t sub_225F4C240(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v12 = *(a1 + 8);
  sub_2260998E8();
  *(a2 + 8) = v12;
  if ((*(a1 + 24) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 16) = *(a1 + 16);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    sub_225EF5A38(v8, v9);
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_2260998E8();
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_2260998E8();
  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 64);
  if ((*(a1 + 80) & 0xF000000000000000) == 0xF000000000000000)
  {
    *(a2 + 72) = *(a1 + 72);
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    sub_225EF5A38(v4, v5);
    *(a2 + 72) = v4;
    *(a2 + 80) = v5;
  }

  v3 = *(a1 + 88);
  sub_2260998E8();
  result = a2;
  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_225F4C3B4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786520, &unk_2260A0490);
  v1 = sub_225F4C41C();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F4C41C()
{
  v2 = qword_27D786348;
  if (!qword_27D786348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786520, &unk_2260A0490);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786348);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F4C4A4(void *a1)
{

  if ((a1[3] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[2], a1[3]);
  }

  if ((a1[10] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_225EF5990(a1[9], a1[10]);
  }

  return a1;
}

unint64_t sub_225F4C57C()
{
  v2 = qword_280D763B0;
  if (!qword_280D763B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763B0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F4C5E0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_2260998E8();
  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_225F4C634()
{
  v2 = qword_280D76470;
  if (!qword_280D76470)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76470);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F4C698()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786350);
  __swift_project_value_buffer(v1, qword_27D786350);
  return sub_225F4C6E4();
}

uint64_t sub_225F4C6E4()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 32, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F4C7E0()
{
  if (qword_27D785D70 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786350);
}

BOOL sub_225F4C84C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_225F4CAA0()
{
  v2 = qword_27D786368;
  if (!qword_27D786368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786368);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F4CBEC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v702 = v1;
  v704 = v2;
  v703 = v3;
  v726 = 0;
  v881 = 0;
  v880 = 0;
  v879 = 0;
  v878 = 0;
  v877 = 0;
  v876 = 0;
  v875 = 0;
  v874[1] = 0;
  v874[0] = 0;
  v869 = 0;
  v868 = 0;
  v867 = 0;
  v866 = 0;
  v865 = 0;
  v864 = 0;
  v860[1] = 0;
  v860[0] = 0;
  v701 = 0;
  v851 = 0;
  v847 = 0;
  v846 = 0;
  v840 = 0;
  v839 = 0;
  v832 = 0;
  v827 = 0;
  v826 = 0;
  v825 = 0;
  v824 = 0;
  v823 = 0;
  v818 = 0;
  v813 = 0;
  v809 = 0;
  v808 = 0;
  v807 = 0;
  v806 = 0;
  v805 = 0;
  v802 = 0;
  v801[1] = 0;
  v801[0] = 0;
  v798 = 0;
  v795 = 0;
  v792 = 0;
  v791 = 0;
  v788 = 0;
  v787 = 0;
  v786 = 0;
  v778 = 0;
  v774 = 0;
  v773 = 0;
  v768 = 0;
  v767 = 0;
  v755 = 0;
  v721 = sub_226098C58();
  v705 = v721;
  v706 = *(v721 - 8);
  v720 = v706;
  v707 = v706;
  v716 = *(v706 + 64);
  MEMORY[0x28223BE20](v703);
  v718 = (v716 + 15) & 0xFFFFFFFFFFFFFFF0;
  v708 = &v160 - v718;
  MEMORY[0x28223BE20](v4);
  v709 = &v160 - v718;
  MEMORY[0x28223BE20](v5);
  v710 = &v160 - v718;
  MEMORY[0x28223BE20](v6);
  v711 = &v160 - v718;
  MEMORY[0x28223BE20](v7);
  v712 = &v160 - v718;
  MEMORY[0x28223BE20](v8);
  v713 = &v160 - v718;
  MEMORY[0x28223BE20](v9);
  v714 = &v160 - v718;
  MEMORY[0x28223BE20](v10);
  v715 = &v160 - v718;
  MEMORY[0x28223BE20](v11);
  v717 = &v160 - v718;
  MEMORY[0x28223BE20](v12);
  v13 = &v160 - v718;
  v719 = &v160 - v718;
  v880 = v14;
  v881 = v15;
  v879 = v16;
  v17 = sub_225F4C7E0();
  v722 = *(v720 + 16);
  v723 = (v720 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v722(v13, v17, v721);
  v729 = sub_226098C48();
  v724 = v729;
  v728 = sub_22609A078();
  v725 = v728;
  v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v730 = sub_22609A4F8();
  if (os_log_type_enabled(v729, v728))
  {
    v18 = v701;
    v692 = sub_22609A188();
    v688 = v692;
    v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v690 = 0;
    v693 = sub_225EF5468(0, v689, v689);
    v691 = v693;
    v694 = sub_225EF5468(v690, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v734 = v692;
    v733 = v693;
    v732 = v694;
    v695 = 0;
    v696 = &v734;
    sub_225EF54BC(0, &v734);
    sub_225EF54BC(v695, v696);
    v731 = v730;
    v697 = &v160;
    MEMORY[0x28223BE20](&v160);
    v698 = &v160 - 6;
    v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v700 = v18;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v724, v725, "FullPayloadCorrector::Applying corrections", v688, 2u);
      v686 = 0;
      sub_225EF7AF4(v691, 0, v689);
      sub_225EF7AF4(v694, v686, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v687 = v700;
    }
  }

  else
  {

    v687 = v701;
  }

  v684 = v687;

  v678 = *(v707 + 8);
  v679 = (v707 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v678(v719, v705);
  v19 = sub_226099AE8();
  v680 = v20;
  v681 = MEMORY[0x22AA72C90](v19);
  v878 = v681;

  sub_2260998E8();
  v876 = v703;
  v877 = v704;
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
  v875 = sub_22609A4F8();
  sub_2260998E8();
  v873 = v702;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786380, &qword_2260A0510);
  sub_225F513A8();
  sub_22609A028();
  for (i = v684; ; i = v348)
  {
    v674 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786390, &qword_2260A0518);
    sub_22609A388();
    v675 = v870;
    v676 = v871;
    v677 = v872;
    if (v872 == 1)
    {
      break;
    }

    v671 = v675;
    v672 = v676;
    v673 = v677;
    v21 = v717;
    v650 = v677;
    v652 = v676;
    v651 = v675;
    v807 = v675;
    v808 = v676;
    v809 = v677;
    v805 = v675;
    v806 = v676;
    v22 = sub_225F4C7E0();
    v722(v21, v22, v705);
    v655 = 32;
    v659 = 32;
    v660 = 7;
    v23 = swift_allocObject();
    v24 = v652;
    v661 = v23;
    *(v23 + 16) = v651;
    *(v23 + 24) = v24;
    v670 = sub_226098C48();
    v653 = v670;
    v669 = sub_22609A078();
    v654 = v669;
    v656 = 17;
    v664 = swift_allocObject();
    v657 = v664;
    *(v664 + 16) = v655;
    v665 = swift_allocObject();
    v658 = v665;
    *(v665 + 16) = 8;
    v25 = swift_allocObject();
    v26 = v661;
    v662 = v25;
    *(v25 + 16) = sub_225F7B770;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v662;
    v668 = v27;
    v663 = v27;
    *(v27 + 16) = sub_225EF7B84;
    *(v27 + 24) = v28;
    v666 = sub_22609A4F8();
    v667 = v29;

    v30 = v664;
    v31 = v667;
    *v667 = sub_225EF7434;
    v31[1] = v30;

    v32 = v665;
    v33 = v667;
    v667[2] = sub_225EF7434;
    v33[3] = v32;

    v34 = v667;
    v35 = v668;
    v667[4] = sub_225EF7B90;
    v34[5] = v35;
    sub_225EF5418();

    if (os_log_type_enabled(v670, v669))
    {
      v36 = v674;
      v640 = sub_22609A188();
      v637 = v640;
      v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v641 = sub_225EF5468(0, v638, v638);
      v639 = v641;
      v643 = 1;
      v642 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v739[0] = v640;
      v738 = v641;
      v737 = v642;
      v644 = v739;
      sub_225EF54BC(2, v739);
      sub_225EF54BC(v643, v644);
      v735 = sub_225EF7434;
      v736 = v657;
      sub_225EF73E8(&v735, v644, &v738, &v737);
      v645 = v36;
      v646 = v657;
      v647 = v658;
      v648 = v663;
      v649 = v36;
      if (v36)
      {
        v632 = v646;
        v633 = v647;
        v634 = v648;
        v635 = 0;
        v621 = v648;
        v620 = v647;

        __break(1u);
      }

      else
      {
        v735 = sub_225EF7434;
        v736 = v658;
        sub_225EF73E8(&v735, v739, &v738, &v737);
        v627 = 0;
        v628 = v657;
        v629 = v658;
        v630 = v663;
        v631 = 0;
        v735 = sub_225EF7B90;
        v736 = v663;
        sub_225EF73E8(&v735, v739, &v738, &v737);
        v622 = 0;
        v623 = v657;
        v624 = v658;
        v625 = v663;
        v626 = 0;
        _os_log_impl(&dword_225EEB000, v653, v654, "FullPayloadCorrector::Result range %s", v637, 0xCu);
        sub_225EF7AF4(v639, 0, v638);
        sub_225EF7AF4(v642, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v636 = v622;
      }
    }

    else
    {
      v37 = v674;

      v636 = v37;
    }

    v619 = v636;

    v678(v717, v705);
    v803 = v651;
    v804 = v652;
    v885 = v652;
    v884 = v651;
    if (v681 >= v651 + v652)
    {
      sub_2260998E8();
      if (v650)
      {
        v618 = v650;
        v614 = v650;
        v802 = v650;
        sub_2260998E8();
        v800 = v614;
        v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
        v615 = v616;
        sub_225F7B7B4();
        sub_22609A028();
        for (j = v619; ; j = v528)
        {
          v612 = j;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786408, &qword_2260A0558);
          sub_22609A388();
          v613 = v799;
          if (!v799)
          {
            sub_225EFE6E8(v801);

            v348 = v612;
            goto LABEL_94;
          }

          v611 = v613;
          v609 = v613;
          v798 = v613;
          v796[0] = sub_226099AA8();
          v796[1] = v38;
          v610 = v796;
          sub_226099938();
          sub_225EFE6BC(v610);
          if (v797[3])
          {
            sub_225F7BA0C();
            if (swift_dynamicCast())
            {
              v608 = v739[1];
            }

            else
            {
              v608 = 0;
            }

            v607 = v608;
          }

          else
          {
            sub_225F186BC(v797);
            v607 = 0;
          }

          v605 = v607;
          v795 = v607;
          v793[0] = sub_226099AA8();
          v793[1] = v39;
          v606 = v793;
          sub_226099938();
          sub_225EFE6BC(v606);
          if (v794[3])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
            if (swift_dynamicCast())
            {
              v604 = v739[2];
            }

            else
            {
              v604 = 0;
            }

            v603 = v604;
          }

          else
          {
            sub_225F186BC(v794);
            v603 = 0;
          }

          v602 = v603;
          v792 = v603;
          v40 = v605;
          if (!v605)
          {
            goto LABEL_88;
          }

          v601 = v605;
          v600 = v605;
          v791 = v605;
          sub_2260998E8();
          if (v602)
          {
            v599 = v602;
            v598 = v602;
            v739[3] = v602;
            v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
            sub_225F7B984();
            sub_226099FE8();
          }

          else
          {
            memset(v789, 0, sizeof(v789));
            v790 = 0;
          }

          if (v790)
          {
            if (swift_dynamicCast())
            {
              v595 = v739[4];
              v596 = v739[5];
            }

            else
            {
              v595 = 0;
              v596 = 0;
            }

            v593 = v595;
            v594 = v596;
          }

          else
          {
            sub_225F186BC(v789);
            v593 = 0;
            v594 = 0;
          }

          v591 = v594;
          v592 = v593;
          if (!v594)
          {
            break;
          }

          v589 = v592;
          v590 = v591;
          v579 = v591;
          v580 = v592;
          v787 = v592;
          v788 = v591;
          v583 = swift_allocObject();
          v581 = v583;
          v585 = (v583 + 16);
          v582 = (v583 + 16);
          v786 = v583 + 16;
          v41 = [v600 rangeValue];
          v42 = v583;
          v785[7] = v43;
          v785[6] = v41;
          v586 = v41;
          v584 = v43;
          *(v583 + 16) = v41;
          *(v42 + 24) = v43;
          result = swift_beginAccess();
          v587 = v585;
          v45 = __OFADD__(v586, v651);
          v588 = &v586[v651];
          if (v45)
          {
            goto LABEL_190;
          }

          *v587 = v588;
          swift_endAccess();
          v578 = v785;
          swift_beginAccess();
          swift_endAccess();
          v784[1] = v588;
          v784[2] = v584;
          v883 = v584;
          v882 = v588;
          if (v681 < &v584[v588])
          {
            v117 = v712;
            v118 = sub_225F4C7E0();
            v722(v117, v118, v705);

            v396 = sub_226098C48();
            v380 = v396;
            v395 = sub_22609A078();
            v381 = v395;
            v382 = 17;
            v387 = 7;
            v390 = swift_allocObject();
            v383 = v390;
            v384 = 32;
            *(v390 + 16) = 32;
            v119 = swift_allocObject();
            v120 = v384;
            v391 = v119;
            v385 = v119;
            *(v119 + 16) = 8;
            v386 = v120;
            v121 = swift_allocObject();
            v122 = v581;
            v388 = v121;
            *(v121 + 16) = sub_225F7B83C;
            *(v121 + 24) = v122;
            v123 = swift_allocObject();
            v124 = v388;
            v394 = v123;
            v389 = v123;
            *(v123 + 16) = sub_225EF7B84;
            *(v123 + 24) = v124;
            v392 = sub_22609A4F8();
            v393 = v125;

            v126 = v390;
            v127 = v393;
            *v393 = sub_225EF7434;
            v127[1] = v126;

            v128 = v391;
            v129 = v393;
            v393[2] = sub_225EF7434;
            v129[3] = v128;

            v130 = v393;
            v131 = v394;
            v393[4] = sub_225EF7B90;
            v130[5] = v131;
            sub_225EF5418();

            if (os_log_type_enabled(v396, v395))
            {
              v132 = v612;
              v370 = sub_22609A188();
              v367 = v370;
              v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
              v371 = sub_225EF5468(0, v368, v368);
              v369 = v371;
              v373 = 1;
              v372 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v784[0] = v370;
              v783 = v371;
              v782 = v372;
              v374 = v784;
              sub_225EF54BC(2, v784);
              sub_225EF54BC(v373, v374);
              v780 = sub_225EF7434;
              v781 = v383;
              sub_225EF73E8(&v780, v374, &v783, &v782);
              v375 = v132;
              v376 = v383;
              v377 = v385;
              v378 = v389;
              v379 = v132;
              if (v132)
              {
                v362 = v376;
                v363 = v377;
                v364 = v378;
                v365 = 0;
                v351 = v378;
                v350 = v377;

                __break(1u);
              }

              else
              {
                v780 = sub_225EF7434;
                v781 = v385;
                sub_225EF73E8(&v780, v784, &v783, &v782);
                v357 = 0;
                v358 = v383;
                v359 = v385;
                v360 = v389;
                v361 = 0;
                v780 = sub_225EF7B90;
                v781 = v389;
                sub_225EF73E8(&v780, v784, &v783, &v782);
                v352 = 0;
                v353 = v383;
                v354 = v385;
                v355 = v389;
                v356 = 0;
                _os_log_impl(&dword_225EEB000, v380, v381, "FullPayloadCorrector::Dropping Range %s Correction REDACTED", v367, 0xCu);
                sub_225EF7AF4(v369, 0, v368);
                sub_225EF7AF4(v372, 1, MEMORY[0x277D84F70] + 8);
                sub_22609A168();

                v366 = v352;
              }
            }

            else
            {
              v133 = v612;

              v366 = v133;
            }

            v349 = v366;

            v678(v712, v705);

            v528 = v349;
          }

          else
          {
            v576 = &v779;
            swift_beginAccess();
            v577 = v582[1];
            swift_endAccess();
            if (v577)
            {
              v522 = 0;
              sub_225F7B844();
              sub_2260998E8();
              v517 = sub_225F51668(v703, v704);
              v515 = v517;
              v778 = v517;
              v521 = 32;
              v516 = &v777;
              swift_beginAccess();
              v518 = *v582;
              swift_endAccess();
              v63 = [v517 rangeOfComposedCharacterSequenceAtIndex_];
              v776 = v64;
              v775 = v63;
              v519.location = v63;
              v519.length = v64;
              v773 = v63;
              v774 = v64;
              v520 = &v772;
              swift_beginAccess();
              v525 = *v582;
              swift_endAccess();
              v523 = &v771;
              swift_beginAccess();
              v524 = v582[1];
              result = swift_endAccess();
              v65 = __OFADD__(v525, v524);
              v526 = v525 + v524;
              if (v65)
              {
                goto LABEL_191;
              }

              result = v526 - 1;
              v66 = __OFSUB__(v526, 1);
              v514 = v526 - 1;
              if (v66)
              {
                goto LABEL_192;
              }

              v67 = [v515 rangeOfComposedCharacterSequenceAtIndex_];
              v770 = v68;
              v769 = v67;
              v510.location = v67;
              v510.length = v68;
              v767 = v67;
              v768 = v68;
              v511 = &v766;
              swift_beginAccess();
              v512 = *v582;
              swift_endAccess();
              v765 = v512;
              v764 = v519;
              v763 = NSIntersectionRange(v512, v519);
              v762 = v763;
              *&v761[24] = v519;
              v889 = v763;
              v888 = v519;
              v513 = 0;
              if (v763.location == v519.location)
              {
                v513 = v889.length == v888.length;
              }

              if (v513)
              {
                v506 = v761;
                swift_beginAccess();
                v507 = *v582;
                swift_endAccess();
                v760 = v507;
                v759 = v510;
                v758 = NSIntersectionRange(v507, v510);
                v757 = v758;
                *&v756[24] = v510;
                v887 = v758;
                v886 = v510;
                v508 = 0;
                if (v758.location == v510.location)
                {
                  v508 = v887.length == v886.length;
                }

                v509 = !v508;
              }

              else
              {
                v509 = 1;
              }

              if (v509)
              {
                v69 = v714;
                v70 = sub_225F4C7E0();
                v722(v69, v70, v705);

                v490 = 32;
                v494 = 32;
                v495 = 7;
                v71 = swift_allocObject();
                v72 = v581;
                v496 = v71;
                *(v71 + 16) = sub_225F7B8A8;
                *(v71 + 24) = v72;

                v505 = sub_226098C48();
                v488 = v505;
                v504 = sub_22609A078();
                v489 = v504;
                v491 = 17;
                v499 = swift_allocObject();
                v492 = v499;
                *(v499 + 16) = v490;
                v500 = swift_allocObject();
                v493 = v500;
                *(v500 + 16) = 8;
                v73 = swift_allocObject();
                v74 = v496;
                v497 = v73;
                *(v73 + 16) = sub_225F7B8B0;
                *(v73 + 24) = v74;
                v75 = swift_allocObject();
                v76 = v497;
                v503 = v75;
                v498 = v75;
                *(v75 + 16) = sub_225EF7B84;
                *(v75 + 24) = v76;
                v501 = sub_22609A4F8();
                v502 = v77;

                v78 = v499;
                v79 = v502;
                *v502 = sub_225EF7434;
                v79[1] = v78;

                v80 = v500;
                v81 = v502;
                v502[2] = sub_225EF7434;
                v81[3] = v80;

                v82 = v502;
                v83 = v503;
                v502[4] = sub_225EF7B90;
                v82[5] = v83;
                sub_225EF5418();

                if (os_log_type_enabled(v505, v504))
                {
                  v84 = v612;
                  v478 = sub_22609A188();
                  v475 = v478;
                  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v479 = sub_225EF5468(0, v476, v476);
                  v477 = v479;
                  v481 = 1;
                  v480 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v749 = v478;
                  v748 = v479;
                  v747 = v480;
                  v482 = &v749;
                  sub_225EF54BC(2, &v749);
                  sub_225EF54BC(v481, v482);
                  v745 = sub_225EF7434;
                  v746 = v492;
                  sub_225EF73E8(&v745, v482, &v748, &v747);
                  v483 = v84;
                  v484 = v492;
                  v485 = v493;
                  v486 = v498;
                  v487 = v84;
                  if (v84)
                  {
                    v470 = v484;
                    v471 = v485;
                    v472 = v486;
                    v473 = 0;
                    v459 = v486;
                    v458 = v485;

                    __break(1u);
                  }

                  else
                  {
                    v745 = sub_225EF7434;
                    v746 = v493;
                    sub_225EF73E8(&v745, &v749, &v748, &v747);
                    v465 = 0;
                    v466 = v492;
                    v467 = v493;
                    v468 = v498;
                    v469 = 0;
                    v745 = sub_225EF7B90;
                    v746 = v498;
                    sub_225EF73E8(&v745, &v749, &v748, &v747);
                    v460 = 0;
                    v461 = v492;
                    v462 = v493;
                    v463 = v498;
                    v464 = 0;
                    _os_log_impl(&dword_225EEB000, v488, v489, "FullPayloadCorrector::Dropping Range %s Correction REDACTED", v475, 0xCu);
                    sub_225EF7AF4(v477, 0, v476);
                    sub_225EF7AF4(v480, 1, MEMORY[0x277D84F70] + 8);
                    sub_22609A168();

                    v474 = v460;
                  }
                }

                else
                {
                  v85 = v612;

                  v474 = v85;
                }

                v457 = v474;

                v678(v714, v705);

                v528 = v457;
              }

              else
              {
                v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786C70, &qword_2260A0560);
                v433 = sub_22609A4F8();
                v434 = v86;
                v446 = 7;
                v432 = 1;
                v87 = sub_226099AA8();
                v88 = v434;
                *v434 = v87;
                v88[1] = v89;
                v441 = 32;
                v445 = 32;
                v428 = v756;
                v429 = 0;
                swift_beginAccess();
                v430 = *v582;
                v431 = v582[1];
                swift_endAccess();
                v90 = type metadata accessor for _NSRange(v429);
                v91 = v430;
                v92 = v431;
                v93 = v434;
                v434[5] = v90;
                v93[2] = v91;
                v93[3] = v92;
                v94 = sub_226099AA8();
                v95 = v434;
                v434[6] = v94;
                v95[7] = v96;
                sub_2260998E8();
                v97 = v580;
                v98 = v434;
                v99 = v579;
                v436 = MEMORY[0x277D837D0];
                v434[11] = MEMORY[0x277D837D0];
                v98[8] = v97;
                v98[9] = v99;
                sub_225EF5418();
                v438 = sub_2260998A8();
                v437 = v438;
                v755 = v438;
                sub_2260998E8();
                v754[1] = v438;
                sub_226099CE8();
                v100 = v713;
                v101 = sub_225F4C7E0();
                v722(v100, v101, v705);

                v102 = swift_allocObject();
                v103 = v581;
                v447 = v102;
                *(v102 + 16) = sub_225F7B8A8;
                *(v102 + 24) = v103;

                v456 = sub_226098C48();
                v439 = v456;
                v455 = sub_22609A078();
                v440 = v455;
                v442 = 17;
                v450 = swift_allocObject();
                v443 = v450;
                *(v450 + 16) = v441;
                v451 = swift_allocObject();
                v444 = v451;
                *(v451 + 16) = 8;
                v104 = swift_allocObject();
                v105 = v447;
                v448 = v104;
                *(v104 + 16) = sub_225F7B8B0;
                *(v104 + 24) = v105;
                v106 = swift_allocObject();
                v107 = v448;
                v454 = v106;
                v449 = v106;
                *(v106 + 16) = sub_225EF7B84;
                *(v106 + 24) = v107;
                v452 = sub_22609A4F8();
                v453 = v108;

                v109 = v450;
                v110 = v453;
                *v453 = sub_225EF7434;
                v110[1] = v109;

                v111 = v451;
                v112 = v453;
                v453[2] = sub_225EF7434;
                v112[3] = v111;

                v113 = v453;
                v114 = v454;
                v453[4] = sub_225EF7B90;
                v113[5] = v114;
                sub_225EF5418();

                if (os_log_type_enabled(v456, v455))
                {
                  v115 = v612;
                  v418 = sub_22609A188();
                  v415 = v418;
                  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v419 = sub_225EF5468(0, v416, v416);
                  v417 = v419;
                  v421 = 1;
                  v420 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v754[0] = v418;
                  v753 = v419;
                  v752 = v420;
                  v422 = v754;
                  sub_225EF54BC(2, v754);
                  sub_225EF54BC(v421, v422);
                  v750 = sub_225EF7434;
                  v751 = v443;
                  sub_225EF73E8(&v750, v422, &v753, &v752);
                  v423 = v115;
                  v424 = v443;
                  v425 = v444;
                  v426 = v449;
                  v427 = v115;
                  if (v115)
                  {
                    v410 = v424;
                    v411 = v425;
                    v412 = v426;
                    v413 = 0;
                    v399 = v426;
                    v398 = v425;

                    __break(1u);
                  }

                  else
                  {
                    v750 = sub_225EF7434;
                    v751 = v444;
                    sub_225EF73E8(&v750, v754, &v753, &v752);
                    v405 = 0;
                    v406 = v443;
                    v407 = v444;
                    v408 = v449;
                    v409 = 0;
                    v750 = sub_225EF7B90;
                    v751 = v449;
                    sub_225EF73E8(&v750, v754, &v753, &v752);
                    v400 = 0;
                    v401 = v443;
                    v402 = v444;
                    v403 = v449;
                    v404 = 0;
                    _os_log_impl(&dword_225EEB000, v439, v440, "FullPayloadCorrector::Detail NSRange: %s Correction: REDACTED", v415, 0xCu);
                    sub_225EF7AF4(v417, 0, v416);
                    sub_225EF7AF4(v420, 1, MEMORY[0x277D84F70] + 8);
                    sub_22609A168();

                    v414 = v400;
                  }
                }

                else
                {
                  v116 = v612;

                  v414 = v116;
                }

                v397 = v414;

                v678(v713, v705);

                v528 = v397;
              }
            }

            else
            {
              v46 = v715;
              v47 = sub_225F4C7E0();
              v722(v46, v47, v705);

              v575 = sub_226098C48();
              v559 = v575;
              v574 = sub_22609A078();
              v560 = v574;
              v561 = 17;
              v566 = 7;
              v569 = swift_allocObject();
              v562 = v569;
              v563 = 32;
              *(v569 + 16) = 32;
              v48 = swift_allocObject();
              v49 = v563;
              v570 = v48;
              v564 = v48;
              *(v48 + 16) = 8;
              v565 = v49;
              v50 = swift_allocObject();
              v51 = v581;
              v567 = v50;
              *(v50 + 16) = sub_225F7B83C;
              *(v50 + 24) = v51;
              v52 = swift_allocObject();
              v53 = v567;
              v573 = v52;
              v568 = v52;
              *(v52 + 16) = sub_225EF7B84;
              *(v52 + 24) = v53;
              v571 = sub_22609A4F8();
              v572 = v54;

              v55 = v569;
              v56 = v572;
              *v572 = sub_225EF7434;
              v56[1] = v55;

              v57 = v570;
              v58 = v572;
              v572[2] = sub_225EF7434;
              v58[3] = v57;

              v59 = v572;
              v60 = v573;
              v572[4] = sub_225EF7B90;
              v59[5] = v60;
              sub_225EF5418();

              if (os_log_type_enabled(v575, v574))
              {
                v61 = v612;
                v549 = sub_22609A188();
                v546 = v549;
                v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                v550 = sub_225EF5468(0, v547, v547);
                v548 = v550;
                v552 = 1;
                v551 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v744 = v549;
                v743 = v550;
                v742 = v551;
                v553 = &v744;
                sub_225EF54BC(2, &v744);
                sub_225EF54BC(v552, v553);
                v740 = sub_225EF7434;
                v741 = v562;
                sub_225EF73E8(&v740, v553, &v743, &v742);
                v554 = v61;
                v555 = v562;
                v556 = v564;
                v557 = v568;
                v558 = v61;
                if (v61)
                {
                  v541 = v555;
                  v542 = v556;
                  v543 = v557;
                  v544 = 0;
                  v530 = v557;
                  v529 = v556;

                  __break(1u);
                }

                else
                {
                  v740 = sub_225EF7434;
                  v741 = v564;
                  sub_225EF73E8(&v740, &v744, &v743, &v742);
                  v536 = 0;
                  v537 = v562;
                  v538 = v564;
                  v539 = v568;
                  v540 = 0;
                  v740 = sub_225EF7B90;
                  v741 = v568;
                  sub_225EF73E8(&v740, &v744, &v743, &v742);
                  v531 = 0;
                  v532 = v562;
                  v533 = v564;
                  v534 = v568;
                  v535 = 0;
                  _os_log_impl(&dword_225EEB000, v559, v560, "FullPayloadCorrector::Dropping Range %s Correction REDACTED", v546, 0xCu);
                  sub_225EF7AF4(v548, 0, v547);
                  sub_225EF7AF4(v551, 1, MEMORY[0x277D84F70] + 8);
                  sub_22609A168();

                  v545 = v531;
                }
              }

              else
              {
                v62 = v612;

                v545 = v62;
              }

              v527 = v545;

              v678(v715, v705);

              v528 = v527;
            }
          }

LABEL_89:
          ;
        }

LABEL_88:

        v528 = v612;
        goto LABEL_89;
      }
    }

    v348 = v619;
LABEL_94:
    ;
  }

  sub_225EFE6E8(v874);
  v346 = v875;
  sub_2260998E8();
  v347 = sub_226099CD8();

  if (!v347)
  {
    sub_2260998E8();
    v341 = v704;
    sub_225EFE6E8(&v875);
    sub_225EFE6BC(&v876);
    v342 = v703;
    v343 = v341;
    v344 = 0;
    v345 = v674;
    return v342;
  }

  v869 = 0;
  v868 = 0;
  v338 = v875;
  sub_2260998E8();
  v339 = sub_226099CD8();

  result = v339;
  v134 = __OFSUB__(v339, 1);
  v340 = v339 - 1;
  if (!v134)
  {
    if (v340 < 0)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
      __break(1u);
    }

    v862 = 0;
    v863 = v340;
    v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786398, &qword_2260A0520);
    v330 = v331;
    v332 = sub_225F51430();
    sub_22609A028();
    v333 = 0;
    v334 = 0;
    v335 = 0;
    v336 = 0;
    for (k = v674; ; k = v296)
    {
      v321 = k;
      v322 = v336;
      v323 = v335;
      v326 = v334;
      v325 = v333;
      v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863B0, &qword_2260A0528);
      sub_22609A388();
      result = v326;
      v327 = v860[2];
      v328 = v325;
      v329 = v326;
      if (v861)
      {
        break;
      }

      v320 = v327;
      v318 = v327;
      v832 = v327;
      v135 = __OFADD__(v327, 1);
      v319 = v320 + 1;
      if (v135)
      {
        goto LABEL_186;
      }

      v315 = v875;
      sub_2260998E8();
      v316 = sub_226099CD8();

      result = v316;
      v136 = __OFSUB__(v316, 1);
      v317 = v316 - 1;
      if (v136)
      {
        goto LABEL_187;
      }

      v313 = v325;
      v314 = v326;
      if (v317 < v319)
      {
        v310 = v313;
        v311 = v314;
        v312 = v321;
        goto LABEL_145;
      }

      v306 = sub_226099AA8();
      v307 = v137;
      sub_226099D38();
      v308 = v830[4];
      v829[0] = v306;
      v829[1] = v307;
      v309 = v829;
      sub_226099938();
      sub_225EFE6BC(v309);
      if (!v830[3])
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 121, 0);
        __break(1u);
      }

      v302 = v831;
      sub_225EF9790(v830, v831);
      v303 = type metadata accessor for _NSRange(0);
      swift_dynamicCast();
      v304 = v828;
      v827 = v828;

      v138 = __OFADD__(v318, 1);
      v305 = v318 + 1;
      if (v138)
      {
        goto LABEL_188;
      }

      v299 = v875;
      sub_2260998E8();
      v300 = sub_226099CD8();

      result = v300;
      v139 = __OFSUB__(v300, 1);
      v301 = v300 - 1;
      if (v139)
      {
        goto LABEL_189;
      }

      if (v301 < v305)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
        __break(1u);
      }

      v821 = v305;
      v822 = v301;
      sub_22609A028();
      for (m = v321; ; m = v296)
      {
        v296 = m;
        sub_22609A388();
        v297 = v819;
        if (v820)
        {
          break;
        }

        v295 = v297;
        v290 = v297;
        v818 = v297;
        v291 = sub_226099AA8();
        v292 = v140;
        sub_226099D38();
        v293 = v816[4];
        v815[0] = v291;
        v815[1] = v292;
        v294 = v815;
        sub_226099938();
        sub_225EFE6BC(v294);
        if (!v816[3])
        {
          sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 124, 0);
          __break(1u);
        }

        v287 = v817;
        sub_225EF9790(v816, v817);
        swift_dynamicCast();
        v289 = v814;
        location = v814.location;
        v813 = v814;

        v812 = v304;
        v811 = v289;
        v810 = NSIntersectionRange(v304, v289);
        if (v810.length >= 1)
        {
          v869 = 1;
          v284 = v325;
          v285 = v323;
          v286 = 1;
          goto LABEL_138;
        }

        if (v304.location >= location)
        {
          v868 = 1;
          v284 = 1;
          v285 = 1;
          v286 = v322;
          goto LABEL_138;
        }
      }

      v284 = v325;
      v285 = v323;
      v286 = v322;
LABEL_138:
      v281 = v286;
      v282 = v285;
      v283 = v284;
      if (v286)
      {
        v279 = 1;
        v280 = v283;
      }

      else
      {
        v279 = v282;
        v280 = v282;
      }

      v276 = v280;
      v277 = v280;
      v278 = v281;
      if (v279)
      {
        v310 = v277;
        v311 = v278;
        v312 = v296;
        goto LABEL_145;
      }

      v333 = v276;
      v334 = v281;
      v335 = v282;
      v336 = v281;
    }

    v310 = v328;
    v311 = v329;
    v312 = v321;
LABEL_145:
    v273 = v312;
    v274 = v311;
    v275 = v310;
    if (v311)
    {
      v272 = 1;
    }

    else
    {
      v272 = v275;
    }

    if (v272)
    {
      if (v274)
      {
        v141 = v711;
        v142 = sub_225F4C7E0();
        v722(v141, v142, v705);
        v270 = sub_226098C48();
        v267 = v270;
        v269 = sub_22609A078();
        v268 = v269;
        v271 = sub_22609A4F8();
        if (os_log_type_enabled(v270, v269))
        {
          v143 = v273;
          v258 = sub_22609A188();
          v254 = v258;
          v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v256 = 0;
          v259 = sub_225EF5468(0, v255, v255);
          v257 = v259;
          v260 = sub_225EF5468(v256, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v836[0] = v258;
          v835 = v259;
          v834 = v260;
          v261 = 0;
          v262 = v836;
          sub_225EF54BC(0, v836);
          sub_225EF54BC(v261, v262);
          v833 = v271;
          v263 = &v160;
          MEMORY[0x28223BE20](&v160);
          v264 = &v160 - 6;
          v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v266 = v143;
          if (v143)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v267, v268, "Output ranges are intersecting", v254, 2u);
            v252 = 0;
            sub_225EF7AF4(v257, 0, v255);
            sub_225EF7AF4(v260, v252, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v253 = v266;
          }
        }

        else
        {

          v253 = v273;
        }

        v250 = v253;

        v678(v711, v705);
        v251 = v250;
      }

      else
      {
        v144 = v710;
        v145 = sub_225F4C7E0();
        v722(v144, v145, v705);
        v248 = sub_226098C48();
        v245 = v248;
        v247 = sub_22609A078();
        v246 = v247;
        v249 = sub_22609A4F8();
        if (os_log_type_enabled(v248, v247))
        {
          v146 = v273;
          v236 = sub_22609A188();
          v232 = v236;
          v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v234 = 0;
          v237 = sub_225EF5468(0, v233, v233);
          v235 = v237;
          v238 = sub_225EF5468(v234, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v837[0] = v236;
          v836[3] = v237;
          v836[2] = v238;
          v239 = 0;
          v240 = v837;
          sub_225EF54BC(0, v837);
          sub_225EF54BC(v239, v240);
          v836[1] = v249;
          v241 = &v160;
          MEMORY[0x28223BE20](&v160);
          v242 = &v160 - 6;
          v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v244 = v146;
          if (v146)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v245, v246, "Output ranges are not sorted", v232, 2u);
            v230 = 0;
            sub_225EF7AF4(v235, 0, v233);
            sub_225EF7AF4(v238, v230, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v231 = v244;
          }
        }

        else
        {

          v231 = v273;
        }

        v229 = v231;

        v678(v710, v705);
        v251 = v229;
      }

      v228 = v251;
      sub_225F7B6F4();
      v226 = 0;
      v147 = swift_allocError();
      *v148 = 3;
      v227 = v147;
      sub_225EFE6E8(&v875);
      sub_225EFE6BC(&v876);
      v342 = v227;
      v343 = v226;
      v344 = 1;
      v345 = v228;
    }

    else
    {
      v223 = v875;
      sub_2260998E8();
      v858 = v223;
      v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862D0, &qword_2260A0530);
      v149 = sub_225F514D4();
      MEMORY[0x22AA72AD0](&v859, v224, v149);
      v857 = v859;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7863C8, &qword_2260A0538);
      sub_22609A418();
      for (n = v273; ; n = v185)
      {
        v221 = n;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863D0, &unk_2260A0540);
        sub_22609A428();
        v222 = v856;
        if (!v856)
        {
          break;
        }

        v220 = v222;
        v218 = v222;
        v851 = v222;
        v848[0] = sub_226099AA8();
        v848[1] = v150;
        v219 = v848;
        sub_226099938();
        sub_225EFE6BC(v219);
        if (!v849[3])
        {
          sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 152, 0);
          __break(1u);
        }

        v215 = v850;
        sub_225EF9790(v849, v850);
        type metadata accessor for _NSRange(0);
        swift_dynamicCast();
        v216 = sub_22609A058();
        v217 = v151;
        if (v152)
        {
          sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 152, 0);
          __break(1u);
        }

        else
        {
          v213 = v216;
          v214 = v217;
        }

        v210 = v214;
        v211 = v213;
        v846 = v213;
        v847 = v214;
        v843[0] = sub_226099AA8();
        v843[1] = v153;
        v212 = v843;
        sub_226099938();
        sub_225EFE6BC(v212);
        if (!v844[3])
        {
          sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 153, 0);
          __break(1u);
        }

        v202 = v845;
        sub_225EF9790(v844, v845);
        v204 = MEMORY[0x277D837D0];
        swift_dynamicCast();
        v203 = v842;
        v839 = v841;
        v840 = v842;
        v838[1] = v841;
        v838[2] = v842;
        sub_225F2D16C();
        sub_226099A78();
        v154 = v709;
        v155 = sub_225F4C7E0();
        v722(v154, v155, v705);
        v208 = sub_226098C48();
        v205 = v208;
        v207 = sub_22609A078();
        v206 = v207;
        v209 = sub_22609A4F8();
        if (os_log_type_enabled(v208, v207))
        {
          v156 = v221;
          v192 = sub_22609A188();
          v188 = v192;
          v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v190 = 0;
          v193 = sub_225EF5468(0, v189, v189);
          v191 = v193;
          v194 = sub_225EF5468(v190, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v838[0] = v192;
          v837[3] = v193;
          v837[2] = v194;
          v195 = 0;
          v196 = v838;
          sub_225EF54BC(0, v838);
          sub_225EF54BC(v195, v196);
          v837[1] = v209;
          v199 = &v160;
          MEMORY[0x28223BE20](&v160);
          v197 = &v160 - 6;
          v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v200 = v156;
          v201 = v199;
          if (v156)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v205, v206, "FullPayloadCorrector::Output REDACTED", v188, 2u);
            v186 = 0;
            sub_225EF7AF4(v191, 0, v189);
            sub_225EF7AF4(v194, v186, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v187 = v200;
          }
        }

        else
        {

          v187 = v221;
        }

        v185 = v187;

        v678(v709, v705);
      }

      v157 = v708;
      sub_225EFE6E8(v860);
      v158 = sub_225F4C7E0();
      v722(v157, v158, v705);
      v183 = sub_226098C48();
      v180 = v183;
      v182 = sub_22609A078();
      v181 = v182;
      v184 = sub_22609A4F8();
      if (os_log_type_enabled(v183, v182))
      {
        v159 = v221;
        v171 = sub_22609A188();
        v167 = v171;
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v169 = 0;
        v172 = sub_225EF5468(0, v168, v168);
        v170 = v172;
        v173 = sub_225EF5468(v169, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v855 = v171;
        v854 = v172;
        v853 = v173;
        v174 = 0;
        v175 = &v855;
        sub_225EF54BC(0, &v855);
        sub_225EF54BC(v174, v175);
        v852 = v184;
        v176 = &v160;
        MEMORY[0x28223BE20](&v160);
        v177 = &v160 - 6;
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v179 = v159;
        if (v159)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v180, v181, "FullPayloadCorrector::Final Output REDACTED", v167, 2u);
          v165 = 0;
          sub_225EF7AF4(v170, 0, v168);
          sub_225EF7AF4(v173, v165, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v166 = v179;
        }
      }

      else
      {

        v166 = v221;
      }

      v164 = v166;

      v678(v708, v705);
      v162 = v876;
      v161 = v877;
      sub_2260998E8();
      v163 = v161;
      sub_225EFE6E8(&v875);
      sub_225EFE6BC(&v876);
      v342 = v162;
      v343 = v163;
      v344 = 0;
      v345 = v164;
    }

    return v342;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
  return result;
}

unint64_t sub_225F513A8()
{
  v2 = qword_27D786388;
  if (!qword_27D786388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786380, &qword_2260A0510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F51430()
{
  v2 = qword_27D7863A0;
  if (!qword_27D7863A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786398, &qword_2260A0520);
    sub_225EF94B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F514D4()
{
  v2 = qword_27D7863C0;
  if (!qword_27D7863C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7862D0, &qword_2260A0530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F5155C(NSRange a1)
{
  v2 = NSStringFromRange(a1);
  v3 = sub_226099A08();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_225F515C0(NSRange *a1)
{
  swift_beginAccess();
  v3 = a1[1];
  swift_endAccess();
  v4 = NSStringFromRange(v3);
  v5 = sub_226099A08();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t sub_225F516B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
  return swift_endAccess();
}

uint64_t sub_225F51708(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  v24[5] = a1;
  v24[6] = a2;
  v2 = sub_226099A48();
  v19 = v3;
  v24[3] = v2;
  v24[4] = v3;
  v24[1] = v2;
  v24[2] = v3;
  v14 = 0;
  v11 = sub_2260987C8();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v12 = &v7 - v8;
  sub_2260987B8();
  sub_225F2CF00();
  v13 = sub_22609A1D8();
  (*(v9 + 8))(v12, v11);
  v18 = v24;
  v24[0] = v13;
  v16 = sub_226099AA8();
  v17 = v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3F050();
  v20 = sub_2260999C8();
  v21 = v5;

  sub_225EFE6E8(v18);
  v22 = v20;
  v23 = v21;

  return v20;
}

uint64_t sub_225F518C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[77] = a6;
  v6[76] = a5;
  v6[75] = a4;
  v6[74] = a3;
  v6[73] = a2;
  v6[72] = a1;
  v6[41] = v6;
  v6[27] = 0;
  v6[28] = 0;
  v6[29] = 0;
  v6[30] = 0;
  v6[31] = 0;
  v6[32] = 0;
  v6[42] = 0;
  v6[21] = 0;
  v6[22] = 0;
  v6[23] = 0;
  v6[43] = 0;
  v6[44] = 0;
  v6[52] = 0;
  v6[53] = 0;
  v6[24] = 0;
  v6[25] = 0;
  v6[26] = 0;
  v6[61] = 0;
  v7 = sub_226098C58();
  v6[78] = v7;
  v6[79] = *(v7 - 8);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[27] = a1;
  v6[28] = a2;
  v6[29] = a3;
  v6[30] = a4;
  v6[31] = a5;
  v6[32] = a6;

  return MEMORY[0x2822009F8](sub_225F51A98, 0, 0);
}

uint64_t sub_225F51A98()
{
  *(v0 + 328) = v0;
  v13 = sub_226099B18();
  sub_2260998E8();
  if (v13)
  {

LABEL_4:
    v8 = sub_22609A4F8();
    v9 = sub_22609A4F8();
    *(v12 + 560) = sub_226099AD8();
    *(v12 + 568) = sub_226099AD8();
    sub_22609A528();
    v10 = *(v12 + 552);

    v1 = *(*(v12 + 328) + 8);

    return v1(v8, v9, v10);
  }

  v11 = sub_226099B18();

  if (v11)
  {
    goto LABEL_4;
  }

  sub_225F7BA70();
  v7 = sub_225F26174();
  *(v12 + 664) = v7;
  *(v12 + 336) = v7;
  sub_2260998E8();
  v4 = sub_2260999F8();
  *(v12 + 672) = v4;

  sub_2260998E8();
  v5 = sub_2260999F8();
  *(v12 + 680) = v5;

  sub_2260998E8();
  v6 = sub_2260999F8();
  *(v12 + 688) = v6;

  *(v12 + 16) = *(v12 + 328);
  *(v12 + 56) = v12 + 144;
  *(v12 + 24) = sub_225F51F14;
  v3 = swift_continuation_init();
  *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786450, &unk_2260A0580);
  *(v12 + 112) = v3;
  *(v12 + 80) = MEMORY[0x277D85DD0];
  *(v12 + 88) = 1107296256;
  *(v12 + 92) = 0;
  *(v12 + 96) = sub_225F537A0;
  *(v12 + 104) = &block_descriptor_1;
  [v7 editAlignmentWithRefText:v4 hypText:v5 placeholderSymbol:v6 caseInsensitive:1 removeWordSense:0 completion:?];

  return MEMORY[0x282200938](v12 + 16);
}

uint64_t sub_225F51F14()
{
  *(*v0 + 328) = *v0;

  return MEMORY[0x2822009F8](sub_225F52010, 0, 0);
}

uint64_t sub_225F52010()
{
  v1 = v0[86];
  v76 = v0[85];
  v77 = v0[84];
  v0[41] = v0;
  v78 = v0[18];
  v79 = v0[19];
  v80 = v0[20];
  v0[21] = v78;
  v0[22] = v79;
  v0[23] = v80;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BE0](v78);
  sub_2260998E8();
  sub_2260998E8();
  if (v80)
  {
    v73 = sub_22609A458();

    MEMORY[0x277D82BD8](v78);
    v74 = v73;
  }

  else
  {

    MEMORY[0x277D82BD8](v78);
    v74 = 0;
  }

  *(v75 + 344) = v74;
  MEMORY[0x277D82BE0](v78);
  sub_2260998E8();
  sub_2260998E8();
  if (v79)
  {
    v71 = sub_22609A458();

    MEMORY[0x277D82BD8](v78);
    v72 = v71;
  }

  else
  {

    MEMORY[0x277D82BD8](v78);
    v72 = 0;
  }

  *(v75 + 352) = v72;
  sub_2260998E8();
  if (!v74)
  {
    goto LABEL_27;
  }

  *(v75 + 416) = v74;
  sub_2260998E8();
  if (!v72)
  {

LABEL_27:
    v7 = *(v75 + 640);
    v23 = *(v75 + 624);
    v22 = *(v75 + 632);
    v8 = sub_225F4C7E0();
    (*(v22 + 16))(v7, v8, v23);
    v25 = sub_226098C48();
    v24 = sub_22609A098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v26 = sub_22609A4F8();
    if (os_log_type_enabled(v25, v24))
    {
      v18 = sub_22609A188();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v19 = sub_225EF5468(0, v17, v17);
      v20 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v75 + 384) = v18;
      *(v75 + 392) = v19;
      *(v75 + 400) = v20;
      sub_225EF54BC(0, (v75 + 384));
      sub_225EF54BC(0, (v75 + 384));
      *(v75 + 408) = v26;
      v21 = swift_task_alloc();
      v21[2] = v75 + 384;
      v21[3] = v75 + 392;
      v21[4] = v75 + 400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v25, v24, "Edit alignment output corrupted", v18, 2u);
      sub_225EF7AF4(v19, 0, v17);
      sub_225EF7AF4(v20, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v13 = *(v75 + 664);
    v11 = *(v75 + 640);
    v12 = *(v75 + 624);
    v10 = *(v75 + 632);
    MEMORY[0x277D82BD8](v25);
    (*(v10 + 8))(v11, v12);
    v14 = sub_22609A4F8();
    v15 = sub_22609A4F8();
    *(v75 + 368) = sub_226099AD8();
    *(v75 + 376) = sub_226099AD8();
    sub_22609A528();
    v16 = *(v75 + 360);

    MEMORY[0x277D82BD8](v78);

    MEMORY[0x277D82BD8](v13);
    v53 = v14;
    v54 = v15;
    v55 = v16;
    goto LABEL_32;
  }

  *(v75 + 424) = v72;
  v70 = sub_226099CD8();
  if (v70 == sub_226099CD8())
  {
    v69 = sub_226099CD8();
    if (v69 < 0)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    }

    *(v75 + 264) = 0;
    *(v75 + 272) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
    sub_225F7BB14();
    sub_22609A028();
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786468, &unk_2260A0590);
      sub_22609A388();
      if (*(v75 + 320))
      {
        v44 = *(v75 + 664);
        MEMORY[0x277D82BE0](v78);
        sub_2260998E8();
        sub_2260998E8();
        v45 = [v78 integerValue];
        MEMORY[0x277D82BD8](v78);

        MEMORY[0x277D82BD8](v78);

        MEMORY[0x277D82BD8](v44);
        v53 = v74;
        v54 = v72;
        v55 = v45;
        goto LABEL_32;
      }

      *(v75 + 488) = *(v75 + 312);
      sub_226099D38();
      v68 = MEMORY[0x22AA72BD0](*(v75 + 280));

      sub_2260998E8();
      sub_2260998E8();
      if (v68)
      {
        sub_226099D38();
        v66 = MEMORY[0x22AA72BD0](*(v75 + 296));

        v67 = v66;
      }

      else
      {
        v67 = 0;
      }
    }

    while ((v67 & 1) == 0);
    v3 = *(v75 + 656);
    v62 = *(v75 + 624);
    v61 = *(v75 + 632);
    v4 = sub_225F4C7E0();
    (*(v61 + 16))(v3, v4, v62);
    oslog = sub_226098C48();
    v63 = sub_22609A098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v65 = sub_22609A4F8();
    if (os_log_type_enabled(oslog, v63))
    {
      buf = sub_22609A188();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v58 = sub_225EF5468(0, v56, v56);
      v59 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v75 + 520) = buf;
      *(v75 + 528) = v58;
      *(v75 + 536) = v59;
      sub_225EF54BC(0, (v75 + 520));
      sub_225EF54BC(0, (v75 + 520));
      *(v75 + 544) = v65;
      v60 = swift_task_alloc();
      v60[2] = v75 + 520;
      v60[3] = v75 + 528;
      v60[4] = v75 + 536;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, oslog, v63, "Edit alignment has both elements as placeholders", buf, 2u);
      sub_225EF7AF4(v58, 0, v56);
      sub_225EF7AF4(v59, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v49 = *(v75 + 664);
    v47 = *(v75 + 656);
    v48 = *(v75 + 624);
    v46 = *(v75 + 632);
    MEMORY[0x277D82BD8](oslog);
    (*(v46 + 8))(v47, v48);
    v50 = sub_22609A4F8();
    v51 = sub_22609A4F8();
    *(v75 + 504) = sub_226099AD8();
    *(v75 + 512) = sub_226099AD8();
    sub_22609A528();
    v52 = *(v75 + 496);

    MEMORY[0x277D82BD8](v78);

    MEMORY[0x277D82BD8](v49);
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    v5 = *(v75 + 648);
    v40 = *(v75 + 624);
    v39 = *(v75 + 632);
    v6 = sub_225F4C7E0();
    (*(v39 + 16))(v5, v6, v40);
    log = sub_226098C48();
    v41 = sub_22609A098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v43 = sub_22609A4F8();
    if (os_log_type_enabled(log, v41))
    {
      v35 = sub_22609A188();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v36 = sub_225EF5468(0, v34, v34);
      v37 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v75 + 456) = v35;
      *(v75 + 464) = v36;
      *(v75 + 472) = v37;
      sub_225EF54BC(0, (v75 + 456));
      sub_225EF54BC(0, (v75 + 456));
      *(v75 + 480) = v43;
      v38 = swift_task_alloc();
      v38[2] = v75 + 456;
      v38[3] = v75 + 464;
      v38[4] = v75 + 472;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, log, v41, "Edit alignment output not equal in size", v35, 2u);
      sub_225EF7AF4(v36, 0, v34);
      sub_225EF7AF4(v37, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v30 = *(v75 + 664);
    v28 = *(v75 + 648);
    v29 = *(v75 + 624);
    v27 = *(v75 + 632);
    MEMORY[0x277D82BD8](log);
    (*(v27 + 8))(v28, v29);
    v31 = sub_22609A4F8();
    v32 = sub_22609A4F8();
    *(v75 + 440) = sub_226099AD8();
    *(v75 + 448) = sub_226099AD8();
    sub_22609A528();
    v33 = *(v75 + 432);

    MEMORY[0x277D82BD8](v78);

    MEMORY[0x277D82BD8](v30);
    v53 = v31;
    v54 = v32;
    v55 = v33;
  }

LABEL_32:

  v9 = *(*(v75 + 328) + 8);

  return v9(v53, v54, v55);
}

uint64_t sub_225F537A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v12 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x277D82BE0](a2);
  v15[0] = a2;
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v8 = sub_226099C88();
    MEMORY[0x277D82BD8](a3);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v15[1] = v9;
  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v6 = sub_226099C88();
    MEMORY[0x277D82BD8](a4);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v15[2] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866F0, &unk_2260A0810);
  sub_225F53974(v12, v15, v4);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a2);
}

void sub_225F539A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v64 = 0;
  v79[4] = a1;
  v79[3] = a2;
  v79[1] = a3;
  v79[2] = a4;
  v79[0] = sub_22609A4F8();
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F156F8();
  v53 = sub_22609A008();
  sub_2260998E8();
  if (v53)
  {
    v49 = sub_22609A008();
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    v43 = sub_22609A4F8();
    sub_225EFE6E8(v79);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v43;
LABEL_48:
    *a5 = v44;
    a5[1] = v45;
    a5[2] = v46;
    a5[3] = v47;
    a5[4] = v48;
    return;
  }

  v77 = a1;
  if (sub_22609A008())
  {
    v40 = sub_226099CD8();
    v41 = sub_226099CD8();
    v42 = sub_22609A4F8();
    sub_225EFE6E8(v79);
    v44 = 0;
    v45 = 0;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    goto LABEL_48;
  }

  v76 = a2;
  if (sub_22609A008())
  {
    v38 = sub_226099CD8();
    v39 = sub_22609A4F8();
    sub_225EFE6E8(v79);
    v44 = 0;
    v45 = v38;
    v46 = 0;
    v47 = 0;
    v48 = v39;
    goto LABEL_48;
  }

  sub_2260998E8();
  sub_2260998E8();
  v37 = sub_226099CD8();
  if (v37 != sub_226099CD8())
  {
    sub_225F7B77C();
    sub_22609A3C8();
    __break(1u);
  }

  v75 = 0;
  v74 = 0;
  v73 = 0;
  v36 = sub_226099CD8();
  v72 = v36;
  if (v36 < 0)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
    __break(1u);
  }

  v67 = 0;
  v68 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
  sub_225F7BB14();
  sub_22609A028();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  for (i = 0; ; i = v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786468, &unk_2260A0590);
    sub_22609A388();
    if (v66)
    {
      break;
    }

    v64 = v65;
    sub_2260998E8();
    sub_2260998E8();
    sub_2260998E8();
    sub_226099D38();
    v29 = MEMORY[0x22AA72BD0](v63);

    sub_2260998E8();
    sub_2260998E8();
    if (v29)
    {
      sub_226099D38();
      v27 = MEMORY[0x22AA72BD0]();

      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      sub_225F7B77C();
      sub_22609A3C8();
      __break(1u);
    }

    sub_226099D38();
    v26 = MEMORY[0x22AA72BD0](v62);

    if (v26)
    {
      if (__OFADD__(i, 1))
      {
        goto LABEL_52;
      }

      v74 = i + 1;
      v20 = i + 1;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = i + 1;
    }

    else
    {
      sub_226099D38();
      v19 = MEMORY[0x22AA72BD0](v61);

      if (v19)
      {
        if (__OFADD__(v34, 1))
        {
          goto LABEL_51;
        }

        v75 = v34 + 1;
        v15 = v34 + 1;
        v16 = v32;
        v17 = v33;
        v18 = v34 + 1;
      }

      else
      {
        sub_226099D38();
        v57 = v59;
        v58 = v60;
        sub_226099D38();
        v54[0] = v55;
        v54[1] = v56;
        v14 = MEMORY[0x22AA72BD0](v57, v58, v55, v56);
        sub_225EFE6BC(v54);
        sub_225EFE6BC(&v57);
        if (v14)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
          sub_226099CE8();
          v12 = v32;
          v13 = v33;
        }

        else
        {
          if (__OFADD__(v33, 1))
          {
            goto LABEL_50;
          }

          v73 = v33 + 1;
          v12 = v33 + 1;
          v13 = v33 + 1;
        }

        v15 = v31;
        v16 = v12;
        v17 = v13;
        v18 = v34;
      }

      v20 = v30;
      v21 = v15;
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = i;
    }

    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
  }

  v8 = sub_226099CD8();
  v11 = v8 - v31;
  if (!__OFSUB__(v8, v31))
  {
    v10 = v79[0];
    sub_2260998E8();
    sub_225EFE6E8(v79);
    v44 = v32;
    v45 = v31;
    v46 = v30;
    v47 = v11;
    v48 = v10;
    goto LABEL_48;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_225F54384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v352 = a4;
  v351 = a3;
  v361 = a2;
  v353 = a1;
  v349 = 0;
  v422 = 0;
  v421 = 0;
  v420 = 0;
  v419 = 0;
  v418 = 0;
  v417 = 0;
  v416 = 0;
  v415 = 0;
  v414 = 0;
  v413 = 0;
  v412 = 0;
  v411 = 0;
  v410 = 0;
  v409 = 0;
  v405[0] = 0;
  v404 = 0;
  v403 = 0;
  v402 = 0;
  v401 = 0;
  v400[1] = 0;
  v400[0] = 0;
  v395 = 0;
  v394 = 0;
  v350 = 0;
  v383 = 0;
  v354 = sub_226098C58();
  v355 = *(v354 - 8);
  v356 = v355;
  v357 = *(v355 + 64);
  MEMORY[0x28223BE20](v353);
  v359 = (v357 + 15) & 0xFFFFFFFFFFFFFFF0;
  v358 = &v67 - v359;
  MEMORY[0x28223BE20](v4);
  v360 = &v67 - v359;
  v422 = v5;
  v421 = v6;
  v419 = v7;
  v420 = v8;
  v362 = sub_226099CD8();
  sub_2260998E8();
  if (v362)
  {
    v348 = sub_226099CD8() == 0;
  }

  else
  {
    v348 = 1;
  }

  v347 = v348;

  if (v347)
  {
    v337 = MEMORY[0x277D837D0];
    v338 = 0;
    v340 = sub_22609A4F8();
    v339 = sub_22609A4F8();
    v341 = v339;
    v342 = sub_22609A4F8();
    v343 = v340;
    v344 = v341;
    v345 = v342;
    v346 = v350;
    return v343;
  }

  v336 = sub_226099CD8();
  v327 = v336;
  v418 = v336;
  v330 = &unk_2839385B8;
  v328 = 24;
  v329 = 7;
  v331 = swift_allocObject();
  v332 = (v331 + 16);
  v417 = v331 + 16;
  *(v331 + 16) = -1;
  v333 = swift_allocObject();
  v334 = (v333 + 16);
  v416 = v333 + 16;
  v335 = 0;
  *(v333 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786480, &qword_2260A05A0);
  v415 = sub_22609A4F8();
  v413 = sub_225F563A0;
  v414 = v335;
  if (v336 < 0)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
    __break(1u);
  }

  v407 = 0;
  v408 = v327;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786398, &qword_2260A0520);
  sub_225F51430();
  sub_22609A028();
  for (i = v350; ; i = v189)
  {
    v323 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863B0, &qword_2260A0528);
    sub_22609A388();
    v324 = v405[1];
    if (v406)
    {
      break;
    }

    v322 = v324;
    v321 = v324;
    v383 = v324;
    sub_2260998E8();
    sub_2260998E8();
    if (v321 == v327)
    {
      v320 = 1;
    }

    else
    {
      v315 = MEMORY[0x277D837D0];
      sub_226099D38();
      v316 = v382[5];
      v318 = v382[6];
      sub_226099D38();
      v317 = v382[4];
      v319 = MEMORY[0x22AA72BD0](v316, v318, v382[3]);

      v320 = v319;
    }

    v314 = v320;

    if (v314)
    {
      if (v321 < v327)
      {
        sub_2260998E8();
        sub_2260998E8();
        sub_2260998E8();
        sub_226099D38();
        v312 = v366;
        v313 = MEMORY[0x22AA72BD0](v365);

        sub_2260998E8();
        sub_2260998E8();
        if (v313)
        {
          sub_226099D38();
          v309 = v364;
          v310 = MEMORY[0x22AA72BD0](v363);

          v311 = v310;
        }

        else
        {
          v311 = 0;
        }

        v308 = v311;

        if (v308)
        {
          sub_225F7B77C();
          LODWORD(v66) = 0;
          v65 = 265;
          sub_22609A3C8();
          __break(1u);
        }
      }

      v305 = &v379;
      swift_beginAccess();
      v307 = *v332;
      v306 = v307;
      swift_endAccess();
      if (v307 == -1)
      {
        v304 = 0;
      }

      else
      {
        v302 = &v367;
        swift_beginAccess();
        v303 = *v334;
        swift_endAccess();
        v304 = v303 > 0;
      }

      v301 = v304;
      sub_2260998E8();
      sub_2260998E8();
      sub_2260998E8();
      if (v301)
      {
        v296 = 32;
        v295 = &v369;
        v297 = 0;
        swift_beginAccess();
        swift_endAccess();
        v298 = &v368;
        swift_beginAccess();
        v299 = *v334;
        swift_endAccess();
        v300 = sub_225F563A0(v306, v299, v353, v361, v351, v352);
      }

      else
      {
        v300 = 0;
      }

      v294 = v300;

      if (v294)
      {
        v9 = v360;
        v10 = sub_225F4C7E0();
        (*(v356 + 16))(v9, v10, v354);

        v293 = sub_226098C48();
        v268 = v293;
        v292 = sub_22609A078();
        v269 = v292;
        v275 = 17;
        v280 = 7;
        v283 = swift_allocObject();
        v270 = v283;
        v274 = 0;
        *(v283 + 16) = 0;
        v284 = swift_allocObject();
        v271 = v284;
        v277 = 8;
        *(v284 + 16) = 8;
        v279 = 32;
        v11 = swift_allocObject();
        v12 = v331;
        v272 = v11;
        *(v11 + 16) = sub_225F2D274;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v272;
        v285 = v13;
        v273 = v13;
        *(v13 + 16) = sub_225F2D374;
        *(v13 + 24) = v14;
        v286 = swift_allocObject();
        v276 = v286;
        *(v286 + 16) = v274;
        v287 = swift_allocObject();
        v278 = v287;
        *(v287 + 16) = v277;
        v15 = swift_allocObject();
        v16 = v333;
        v281 = v15;
        *(v15 + 16) = sub_225F2D274;
        *(v15 + 24) = v16;
        v17 = swift_allocObject();
        v18 = v281;
        v290 = v17;
        v282 = v17;
        *(v17 + 16) = sub_225F2D374;
        *(v17 + 24) = v18;
        v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v288 = sub_22609A4F8();
        v289 = v19;

        v20 = v283;
        v21 = v289;
        *v289 = sub_225EF7434;
        v21[1] = v20;

        v22 = v284;
        v23 = v289;
        v289[2] = sub_225EF7434;
        v23[3] = v22;

        v24 = v285;
        v25 = v289;
        v289[4] = sub_225EF71D0;
        v25[5] = v24;

        v26 = v286;
        v27 = v289;
        v289[6] = sub_225EF7434;
        v27[7] = v26;

        v28 = v287;
        v29 = v289;
        v289[8] = sub_225EF7434;
        v29[9] = v28;

        v30 = v289;
        v31 = v290;
        v289[10] = sub_225EF71D0;
        v30[11] = v31;
        sub_225EF5418();

        if (os_log_type_enabled(v293, v292))
        {
          v32 = v323;
          v256 = sub_22609A188();
          v252 = v256;
          v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v254 = 0;
          v257 = sub_225EF5468(0, v253, v253);
          v255 = v257;
          v258 = sub_225EF5468(v254, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v374[0] = v256;
          v373 = v257;
          v372 = v258;
          v259 = v374;
          sub_225EF54BC(0, v374);
          sub_225EF54BC(2, v259);
          v370 = sub_225EF7434;
          v371 = v270;
          sub_225EF73E8(&v370, v259, &v373, &v372);
          v260 = v32;
          v261 = v270;
          v262 = v271;
          v263 = v273;
          v264 = v276;
          v265 = v278;
          v266 = v282;
          v267 = v32;
          if (v32)
          {
            v244 = v261;
            v245 = v262;
            v246 = v263;
            v247 = v264;
            v248 = v265;
            v249 = v266;
            v250 = 0;
            v202 = v266;
            v201 = v265;
            v200 = v264;
            v199 = v263;
            v198 = v262;

            __break(1u);
          }

          else
          {
            v370 = sub_225EF7434;
            v371 = v271;
            sub_225EF73E8(&v370, v374, &v373, &v372);
            v236 = 0;
            v237 = v270;
            v238 = v271;
            v239 = v273;
            v240 = v276;
            v241 = v278;
            v242 = v282;
            v243 = 0;
            v370 = sub_225EF71D0;
            v371 = v273;
            sub_225EF73E8(&v370, v374, &v373, &v372);
            v228 = 0;
            v229 = v270;
            v230 = v271;
            v231 = v273;
            v232 = v276;
            v233 = v278;
            v234 = v282;
            v235 = 0;
            v370 = sub_225EF7434;
            v371 = v276;
            sub_225EF73E8(&v370, v374, &v373, &v372);
            v220 = 0;
            v221 = v270;
            v222 = v271;
            v223 = v273;
            v224 = v276;
            v225 = v278;
            v226 = v282;
            v227 = 0;
            v370 = sub_225EF7434;
            v371 = v278;
            sub_225EF73E8(&v370, v374, &v373, &v372);
            v212 = 0;
            v213 = v270;
            v214 = v271;
            v215 = v273;
            v216 = v276;
            v217 = v278;
            v218 = v282;
            v219 = 0;
            v370 = sub_225EF71D0;
            v371 = v282;
            sub_225EF73E8(&v370, v374, &v373, &v372);
            v204 = 0;
            v205 = v270;
            v206 = v271;
            v207 = v273;
            v208 = v276;
            v209 = v278;
            v210 = v282;
            v211 = 0;
            _os_log_impl(&dword_225EEB000, v268, v269, "ASRFullPayloadCorrectionWorker::Span generated offset %ld length %ld", v252, 0x16u);
            v203 = 0;
            sub_225EF7AF4(v255, 0, v253);
            sub_225EF7AF4(v258, v203, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v251 = v204;
          }
        }

        else
        {
          v33 = v323;

          v251 = v33;
        }

        v196 = v251;

        (*(v356 + 8))(v360, v354);
        v191 = 32;
        v190 = &v376;
        v192 = 0;
        swift_beginAccess();
        v194 = *v332;
        swift_endAccess();
        v193 = &v375;
        swift_beginAccess();
        v195 = *v334;
        swift_endAccess();
        v374[1] = v194;
        v374[2] = v195;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786488, &qword_2260A05A8);
        sub_226099CE8();
        v197 = v196;
      }

      else
      {
        v197 = v323;
      }

      v188 = v197;
      v185 = 33;
      v184 = &v378;
      v186 = 0;
      swift_beginAccess();
      *v332 = -1;
      swift_endAccess();
      v187 = &v377;
      swift_beginAccess();
      *v334 = v186;
      swift_endAccess();
      v189 = v188;
    }

    else
    {
      v182 = v382;
      swift_beginAccess();
      v183 = *v332;
      swift_endAccess();
      if (v183 == -1)
      {
        v178 = 33;
        v177 = &v381;
        v179 = 0;
        swift_beginAccess();
        *v332 = v321;
        swift_endAccess();
        v180 = &v380;
        swift_beginAccess();
        *v334 = 1;
        swift_endAccess();
      }

      else
      {
        result = swift_beginAccess();
        v35 = __OFADD__(*v334, 1);
        v181 = *v334 + 1;
        if (v35)
        {
          goto LABEL_117;
        }

        *v334 = v181;
        swift_endAccess();
      }

      v189 = v323;
    }
  }

  v169 = MEMORY[0x277D837D0];
  v172 = 0;
  v405[0] = sub_22609A4F8();
  v404 = sub_22609A4F8();
  v403 = sub_22609A4F8();
  v402 = v172;
  v401 = v172;
  v170 = v415;
  sub_2260998E8();
  v399 = v170;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786488, &qword_2260A05A8);
  sub_225F7BBB8();
  sub_22609A028();
  v173 = v172;
  v174 = v172;
  v175 = v172;
  v176 = v323;
  while (2)
  {
    v165 = v175;
    v166 = v174;
    v167 = v173;
    for (j = v176; ; j = v162)
    {
      v162 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786498, &unk_2260A05B0);
      sub_22609A388();
      v163 = v396;
      result = v397;
      v164 = v397;
      if (v398)
      {
        sub_225EFE6E8(v400);
        v68 = v405[0];
        sub_2260998E8();
        v69 = v404;
        sub_2260998E8();
        v70 = v403;
        sub_2260998E8();
        sub_225EFE6E8(&v403);
        sub_225EFE6E8(&v404);
        sub_225EFE6E8(v405);
        sub_225EFE6E8(&v415);

        v343 = v68;
        v344 = v69;
        v345 = v70;
        v346 = v162;
        return v343;
      }

      v160 = v163;
      v161 = v164;
      v158 = v164;
      v159 = v163;
      v394 = v163;
      v395 = v164;
      v157 = v163 != -1 && v158 > 0;
      if (v157 && v159 < v327)
      {
        v36 = __OFADD__(v159, v158);
        v155 = v159 + v158;
        if (v36)
        {
          goto LABEL_116;
        }

        v154 = v327 >= v155;
      }

      else
      {
        v154 = 0;
      }

      v152 = v159;
      v153 = v158;
      if (v154)
      {
        break;
      }
    }

    v146 = v153;
    v147 = v152;
    v148 = v167;
    v149 = v166;
    v150 = v165;
    for (k = v162; ; k = v142)
    {
      v142 = k;
      v143 = v150;
      v144 = v149;
      v145 = v148;
      v140 = v150 < v147 && v143 < v327;
      v141 = v143;
      v136 = v143;
      v137 = v145;
      v138 = v144;
      v139 = v143;
      if (!v140)
      {
        break;
      }

      sub_226099D38();
      v132 = v384;
      v134 = v385;
      v37 = sub_226099AA8();
      v133 = v38;
      v135 = MEMORY[0x22AA72BD0](v132, v134, v37);

      result = v135;
      if (v135)
      {
        v39 = __OFADD__(v144, 1);
        v131 = v144 + 1;
        if (v39)
        {
          goto LABEL_115;
        }

        v402 = v131;
        v129 = v131;
        v130 = v131;
      }

      else
      {
        v129 = v145;
        v130 = v144;
      }

      result = v129;
      v126 = v130;
      v127 = v129;
      v40 = __OFADD__(v136, 1);
      v128 = v136 + 1;
      if (v40)
      {
        goto LABEL_114;
      }

      v401 = v128;
      v148 = v127;
      v149 = v126;
      v150 = v128;
    }

    result = v138;
    v123 = v139;
    v124 = v138;
    v125 = v137;
    if (v147 < v137)
    {
      v60 = v358;
      v61 = sub_225F4C7E0();
      (*(v356 + 16))(v60, v61, v354);
      v91 = sub_226098C48();
      v88 = v91;
      v90 = sub_22609A098();
      v89 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v92 = sub_22609A4F8();
      if (os_log_type_enabled(v91, v90))
      {
        v62 = v142;
        v78 = sub_22609A188();
        v74 = v78;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v76 = 0;
        v79 = sub_225EF5468(0, v75, v75);
        v77 = v79;
        v80 = sub_225EF5468(v76, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v393 = v78;
        v392 = v79;
        v391 = v80;
        v81 = 0;
        v82 = &v393;
        sub_225EF54BC(0, &v393);
        sub_225EF54BC(v81, v82);
        v390[6] = v92;
        v85 = &v67;
        MEMORY[0x28223BE20](&v67);
        v83 = &v67 - 6;
        v64[0] = v63;
        v64[1] = &v392;
        v65 = &v391;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v86 = v62;
        v87 = v85;
        if (v62)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v88, v89, "Placeholder count mismatch in span", v74, 2u);
          v72 = 0;
          sub_225EF7AF4(v77, 0, v75);
          sub_225EF7AF4(v80, v72, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v73 = v86;
        }
      }

      else
      {

        v73 = v142;
      }

      v71 = v73;

      (*(v356 + 8))(v358, v354);
      v93 = v71;
      goto LABEL_105;
    }

    v41 = __OFADD__(v147, v146);
    v122 = v147 + v146;
    if (v41)
    {
      goto LABEL_111;
    }

    if (v122 < v147)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v42 = v142;
    v390[1] = sub_226099D28();
    v390[2] = v43;
    v390[3] = v44;
    v390[4] = v45;
    sub_2260998E8();
    v118 = &v67;
    MEMORY[0x28223BE20](&v67);
    v115 = v64;
    v65 = v351;
    v66 = v46;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7864A0, &qword_2260A01C0);
    v114 = v116;
    v117 = sub_225F7BC70();
    v47 = sub_22609A2D8();
    v119 = v42;
    v120 = v47;
    v121 = v118;
    if (v42)
    {

      __break(1u);
LABEL_110:

      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      break;
    }

    v104 = v120;

    v390[0] = v104;
    v106 = sub_226099AA8();
    v108 = v48;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    v105 = v111;
    v107 = sub_225F3F050();
    v109 = v390;
    v112 = sub_2260999C8();
    v110 = v49;

    sub_225EFE6E8(v109);
    v389[5] = v112;
    v389[6] = v110;
    result = sub_226099CE8();
    v50 = __OFADD__(v147, v146);
    v113 = v147 + v146;
    if (v50)
    {
      goto LABEL_112;
    }

    if (v113 < v147)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v51 = v119;
    v389[1] = sub_226099D28();
    v389[2] = v52;
    v389[3] = v53;
    v389[4] = v54;
    sub_2260998E8();
    v100 = &v67;
    MEMORY[0x28223BE20](&v67);
    v65 = v351;
    v66 = v55;
    v56 = sub_22609A2D8();
    v101 = v51;
    v102 = v56;
    v103 = v100;
    if (v51)
    {
      goto LABEL_110;
    }

    v94 = v102;

    v389[0] = v94;
    sub_226099AA8();
    v95 = v57;
    v96 = v389;
    v98 = sub_2260999C8();
    v97 = v58;

    sub_225EFE6E8(v96);
    v387 = v98;
    v388 = v97;
    result = sub_226099CE8();
    v59 = __OFSUB__(v147, v125);
    v99 = v147 - v125;
    if (!v59)
    {
      v386 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
      sub_226099CE8();
      v93 = v101;
LABEL_105:
      v173 = v125;
      v174 = v124;
      v175 = v123;
      v176 = v93;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

uint64_t sub_225F563A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = result;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v32 = 0;
  v45 = result;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v40 = a5;
  v41 = a6;
  v16 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v16 < result)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      __break(1u);
    }

    v35 = v13;
    v36 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
    sub_225F7BB14();
    sub_22609A028();
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786468, &unk_2260A0590);
      sub_22609A388();
      if (v34)
      {
        v12 = 0;
        return v12 & 1;
      }

      v32 = v33;
      sub_226099D38();
      v29[0] = v30;
      v29[1] = v31;
      v27 = a5;
      v28 = a6;
      v11 = MEMORY[0x22AA72BD0](v30, v31, a5, a6);
      sub_225EFE6BC(v29);
      sub_2260998E8();
      sub_2260998E8();
      if (v11)
      {
        v10 = 0;
      }

      else
      {
        sub_226099D38();
        v17[0] = v18;
        v17[1] = v19;
        v9 = MEMORY[0x22AA72BD0](v18, v19, a5, a6) ^ 1;
        sub_225EFE6BC(v17);
        v10 = v9;
      }

      sub_2260998E8();
      sub_2260998E8();
      if (v10)
      {
        sub_226099D38();
        v23 = v25;
        v24 = v26;
        sub_226099D38();
        v20[0] = v21;
        v20[1] = v22;
        v7 = MEMORY[0x22AA72BD0](v23, v24, v21, v22) ^ 1;
        sub_225EFE6BC(v20);
        sub_225EFE6BC(&v23);
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    while ((v8 & 1) == 0);
    v12 = 1;
    return v12 & 1;
  }

  return result;
}

uint64_t sub_225F567E0()
{
  v2 = *(v0 + 32);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F56818()
{
  v2 = *(v0 + 48);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_225F56844()
{
  v2 = *(v0 + 56);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_225F56878()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  swift_endAccess();
  return v2;
}

uint64_t sub_225F568DC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  return swift_endAccess();
}

uint64_t sub_225F569A4()
{
  v2 = *(v0 + 80);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F569F0()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t ASRFullPayloadCorrectionWorker.init(taskId:taskName:maxRecords:locales:generateConfusionPairs:calculateAlignmentWithUserEdits:euclidThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9)
{
  v34 = a1;
  v55 = a2;
  v35 = a3;
  v54 = a4;
  v38 = a5;
  v53 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0.0;
  v58 = 0;
  v52 = 0;
  v32 = (*(*(sub_226099398() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v51 = &v31 - v32;
  v46 = sub_226099388();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v33 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v55);
  v50 = &v31 - v33;
  v66 = v11;
  v67 = v12;
  v64 = v13;
  v65 = v14;
  v63 = v15;
  v62 = v16;
  v43 = 1;
  v61 = v17 & 1;
  v60 = v18 & 1;
  v59 = v10;
  v58 = v9;
  sub_2260998E8();
  v19 = v55;
  v9[2] = v34;
  v9[3] = v19;
  sub_2260998E8();
  v20 = v54;
  v9[4] = v35;
  v9[5] = v20;
  v9[6] = [objc_opt_self() sharedStream];
  sub_226098C88();
  v21 = sub_226098C78();
  v22 = v56;
  *(v56 + 56) = v21;
  *(v22 + 64) = 0;
  *(v22 + 68) = 0;
  v36 = (v22 + 64);
  v37 = &v57;
  swift_beginAccess();
  mach_timebase_info(v36);
  swift_endAccess();
  *(v22 + 72) = v38;
  sub_2260998E8();
  v23 = v39;
  v24 = v40;
  v25 = v41;
  *(v22 + 80) = v53;
  *(v22 + 88) = v23;
  *(v22 + 89) = v24;
  *(v22 + 96) = v25;
  sub_2260993E8();
  v26 = sub_226098AB8();
  v42 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v47 = &v31 - v42;
  sub_226099AA8();
  sub_226098A88();
  v48 = sub_226099AA8();
  v49 = v27;
  (*(v44 + 104))(v50, *MEMORY[0x277CDCC88], v46);
  sub_225F56EB4(v51);
  v28 = sub_2260993B8();
  v29 = v56;
  *(v56 + 104) = v28;
  *(v29 + 112) = sub_22609A4F8();

  return v56;
}

uint64_t sub_225F56EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CDCC90];
  v1 = sub_226099398();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t ASRFullPayloadCorrectionWorker.__allocating_init(taskId:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2260998E8();
  sub_2260998E8();
  sub_22609A4F8();
  v8 = v4;
  *v4 = sub_226099AA8();
  v8[1] = v5;
  sub_225EF5418();
  v13 = ASRFullPayloadCorrectionWorker.__allocating_init(taskId:taskName:maxRecords:locales:generateConfusionPairs:calculateAlignmentWithUserEdits:euclidThreshold:)(a1, a2, a3, a4, 10, v6, 1, 1, 1.0);

  return v13;
}

uint64_t sub_225F57040(uint64_t a1, void *a2, uint64_t a3)
{
  v209 = a3;
  v221 = a2;
  v210 = a1;
  v207 = 0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v246 = 0;
  v208 = 0;
  v241 = 0;
  v236 = 0;
  v231 = 0;
  v211 = sub_226098C58();
  v212 = *(v211 - 8);
  v213 = v212;
  v217 = *(v212 + 64);
  MEMORY[0x28223BE20](v210);
  v219 = (v217 + 15) & 0xFFFFFFFFFFFFFFF0;
  v214 = &v53 - v219;
  MEMORY[0x28223BE20](v4);
  v215 = &v53 - v219;
  MEMORY[0x28223BE20](v5);
  v216 = &v53 - v219;
  MEMORY[0x28223BE20](v6);
  v218 = &v53 - v219;
  MEMORY[0x28223BE20](v7);
  v220 = &v53 - v219;
  v249 = v8;
  v248 = v9;
  v247 = v10;
  v246 = v3;
  v11 = v9;
  if (v221)
  {
    v205 = v221;
    v203 = v221;
    v241 = v221;
    sub_225F7BCF8();
    v204 = sub_225F26174();
    if (v204)
    {
      v202 = v204;
      v198 = v204;
      v236 = v204;
      v200 = 0;
      sub_225F7BD5C();
      v194 = *(sub_226098A78() - 8);
      v195 = v194;
      v197 = &v53;
      v12 = MEMORY[0x28223BE20](&v53);
      v196 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v195 + 16))(v12);
      v199 = sub_22603E5E0(v196);
      [v198 setDodMlId_];

      sub_225F7BDC0();
      v201 = sub_225F26174();
      if (v201)
      {
        v193 = v201;
        v192 = v201;
        v231 = v201;
        v14 = v198;
        [v192 setEventMetadata_];

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v15 = v203;
          objc_opt_self();
          v191 = swift_dynamicCastObjCClass();
          if (v191)
          {
            v190 = v191;
          }

          else
          {

            v190 = 0;
          }

          v188 = v190;
          [v192 setFullPayloadCorrectionExperimentContext_];

          v189 = v208;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v16 = v203;
            objc_opt_self();
            v187 = swift_dynamicCastObjCClass();
            if (v187)
            {
              v186 = v187;
            }

            else
            {

              v186 = 0;
            }

            v185 = v186;
            [v192 setFullPayloadCorrectionExperimentTier1_];

            v189 = v208;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v17 = v203;
              objc_opt_self();
              v184 = swift_dynamicCastObjCClass();
              if (v184)
              {
                v183 = v184;
              }

              else
              {

                v183 = 0;
              }

              v182 = v183;
              [v192 setUserEditExperimentContext_];

              v189 = v208;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v18 = v203;
                objc_opt_self();
                v181 = swift_dynamicCastObjCClass();
                if (v181)
                {
                  v180 = v181;
                }

                else
                {

                  v180 = 0;
                }

                v179 = v180;
                [v192 setUserEditExperimentEndedTier1_];

                v189 = v208;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v19 = v203;
                  objc_opt_self();
                  v178 = swift_dynamicCastObjCClass();
                  if (v178)
                  {
                    v177 = v178;
                  }

                  else
                  {

                    v177 = 0;
                  }

                  v176 = v177;
                  [v192 setFullPayloadCorrectionExperimentPostAnalysis_];

                  v189 = v208;
                }

                else
                {
                  v20 = v220;
                  v21 = sub_225F4C7E0();
                  (*(v213 + 16))(v20, v21, v211);
                  v174 = sub_226098C48();
                  v171 = v174;
                  v173 = sub_22609A098();
                  v172 = v173;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
                  v175 = sub_22609A4F8();
                  if (os_log_type_enabled(v174, v173))
                  {
                    v22 = v208;
                    v162 = sub_22609A188();
                    v158 = v162;
                    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                    v160 = 0;
                    v163 = sub_225EF5468(0, v159, v159);
                    v161 = v163;
                    v164 = sub_225EF5468(v160, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                    v225 = v162;
                    v224 = v163;
                    v223 = v164;
                    v165 = 0;
                    v166 = &v225;
                    sub_225EF54BC(0, &v225);
                    sub_225EF54BC(v165, v166);
                    v222 = v175;
                    v167 = &v53;
                    MEMORY[0x28223BE20](&v53);
                    v168 = &v53 - 6;
                    *(&v53 - 4) = v23;
                    *(&v53 - 3) = &v224;
                    *(&v53 - 2) = &v223;
                    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
                    sub_225EFE598();
                    sub_226099C28();
                    v170 = v22;
                    if (v22)
                    {
                      __break(1u);
                    }

                    else
                    {
                      _os_log_impl(&dword_225EEB000, v171, v172, "SELF: Failed trying to wrap and emit top-level DODML event because event type was not mapped to loggable message type in the DODML SELF schema.", v158, 2u);
                      v156 = 0;
                      sub_225EF7AF4(v161, 0, v159);
                      sub_225EF7AF4(v164, v156, MEMORY[0x277D84F70] + 8);
                      sub_22609A168();

                      v157 = v170;
                    }
                  }

                  else
                  {

                    v157 = v208;
                  }

                  v155 = v157;

                  (*(v213 + 8))(v220, v211);
                  v189 = v155;
                }
              }
            }
          }
        }

        v24 = v218;
        v136 = v189;
        v25 = sub_225F4C7E0();
        (*(v213 + 16))(v24, v25, v211);
        v26 = v203;
        v143 = 7;
        v144 = swift_allocObject();
        *(v144 + 16) = v203;
        v154 = sub_226098C48();
        v137 = v154;
        v153 = sub_22609A088();
        v138 = v153;
        v139 = 17;
        v147 = swift_allocObject();
        v140 = v147;
        *(v147 + 16) = 64;
        v148 = swift_allocObject();
        v141 = v148;
        *(v148 + 16) = 8;
        v142 = 32;
        v27 = swift_allocObject();
        v28 = v144;
        v145 = v27;
        *(v27 + 16) = sub_225F3E198;
        *(v27 + 24) = v28;
        v29 = swift_allocObject();
        v30 = v145;
        v151 = v29;
        v146 = v29;
        *(v29 + 16) = sub_225F3E1C8;
        *(v29 + 24) = v30;
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v149 = sub_22609A4F8();
        v150 = v31;

        v32 = v147;
        v33 = v150;
        *v150 = sub_225EF7434;
        v33[1] = v32;

        v34 = v148;
        v35 = v150;
        v150[2] = sub_225EF7434;
        v35[3] = v34;

        v36 = v150;
        v37 = v151;
        v150[4] = sub_225F3E358;
        v36[5] = v37;
        sub_225EF5418();

        if (os_log_type_enabled(v154, v153))
        {
          v38 = v136;
          v129 = sub_22609A188();
          v126 = v129;
          v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v132 = 1;
          v130 = sub_225EF5468(1, v127, v127);
          v128 = v130;
          v131 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v230 = v129;
          v229 = v130;
          v228 = v131;
          v133 = &v230;
          sub_225EF54BC(2, &v230);
          sub_225EF54BC(v132, v133);
          v226 = sub_225EF7434;
          v227 = v140;
          sub_225EF73E8(&v226, v133, &v229, &v228);
          v134 = v38;
          v135 = v38;
          if (v38)
          {
            v124 = 0;

            __break(1u);
          }

          else
          {
            v226 = sub_225EF7434;
            v227 = v141;
            sub_225EF73E8(&v226, &v230, &v229, &v228);
            v122 = 0;
            v123 = 0;
            v226 = sub_225F3E358;
            v227 = v146;
            sub_225EF73E8(&v226, &v230, &v229, &v228);
            v120 = 0;
            v121 = 0;
            _os_log_impl(&dword_225EEB000, v137, v138, "SELF: Wrapping and logging an event of type %@", v126, 0xCu);
            sub_225EF7AF4(v128, 1, v127);
            sub_225EF7AF4(v131, 0, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v125 = v120;
          }
        }

        else
        {
          v39 = v136;

          v125 = v39;
        }

        v119 = v125;

        (*(v213 + 8))(v218, v211);
        if (v209)
        {
          v118 = *(v206 + 48);
          swift_unknownObjectRetain();
          swift_getObjectType();
          [v118 emitMessage:v192 timestamp:v209];
        }

        else
        {
          v117 = *(v206 + 48);
          swift_unknownObjectRetain();
          swift_getObjectType();
          [v117 emitMessage_];
        }

        swift_unknownObjectRelease();

        return v119;
      }

      else
      {
        v40 = v216;
        v41 = sub_225F4C7E0();
        (*(v213 + 16))(v40, v41, v211);
        v114 = sub_226098C48();
        v111 = v114;
        v113 = sub_22609A098();
        v112 = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v115 = sub_22609A4F8();
        if (os_log_type_enabled(v114, v113))
        {
          v42 = v208;
          v102 = sub_22609A188();
          v98 = v102;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v100 = 0;
          v103 = sub_225EF5468(0, v99, v99);
          v101 = v103;
          v104 = sub_225EF5468(v100, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v235 = v102;
          v234 = v103;
          v233 = v104;
          v105 = 0;
          v106 = &v235;
          sub_225EF54BC(0, &v235);
          sub_225EF54BC(v105, v106);
          v232 = v115;
          v107 = &v53;
          MEMORY[0x28223BE20](&v53);
          v108 = &v53 - 6;
          *(&v53 - 4) = v43;
          *(&v53 - 3) = &v234;
          *(&v53 - 2) = &v233;
          v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v110 = v42;
          if (v42)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v111, v112, "Failed to create SELF event", v98, 2u);
            v96 = 0;
            sub_225EF7AF4(v101, 0, v99);
            sub_225EF7AF4(v104, v96, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v97 = v110;
          }
        }

        else
        {

          v97 = v208;
        }

        v95 = v97;

        (*(v213 + 8))(v216, v211);
        return v95;
      }
    }

    else
    {
      v44 = v215;
      v45 = sub_225F4C7E0();
      (*(v213 + 16))(v44, v45, v211);
      v93 = sub_226098C48();
      v90 = v93;
      v92 = sub_22609A098();
      v91 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v94 = sub_22609A4F8();
      if (os_log_type_enabled(v93, v92))
      {
        v46 = v208;
        v81 = sub_22609A188();
        v77 = v81;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v79 = 0;
        v82 = sub_225EF5468(0, v78, v78);
        v80 = v82;
        v83 = sub_225EF5468(v79, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v240 = v81;
        v239 = v82;
        v238 = v83;
        v84 = 0;
        v85 = &v240;
        sub_225EF54BC(0, &v240);
        sub_225EF54BC(v84, v85);
        v237 = v94;
        v86 = &v53;
        MEMORY[0x28223BE20](&v53);
        v87 = &v53 - 6;
        *(&v53 - 4) = v47;
        *(&v53 - 3) = &v239;
        *(&v53 - 2) = &v238;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        v89 = v46;
        if (v46)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_225EEB000, v90, v91, "Failed to create SELF event metadata", v77, 2u);
          v75 = 0;
          sub_225EF7AF4(v80, 0, v78);
          sub_225EF7AF4(v83, v75, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v76 = v89;
        }
      }

      else
      {

        v76 = v208;
      }

      v74 = v76;

      (*(v213 + 8))(v215, v211);
      return v74;
    }
  }

  else
  {
    v48 = v214;
    v49 = sub_225F4C7E0();
    (*(v213 + 16))(v48, v49, v211);
    v72 = sub_226098C48();
    v69 = v72;
    v71 = sub_22609A098();
    v70 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v73 = sub_22609A4F8();
    if (os_log_type_enabled(v72, v71))
    {
      v50 = v208;
      v60 = sub_22609A188();
      v56 = v60;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v58 = 0;
      v61 = sub_225EF5468(0, v57, v57);
      v59 = v61;
      v62 = sub_225EF5468(v58, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v245 = v60;
      v244 = v61;
      v243 = v62;
      v63 = 0;
      v64 = &v245;
      sub_225EF54BC(0, &v245);
      sub_225EF54BC(v63, v64);
      v242 = v73;
      v65 = &v53;
      MEMORY[0x28223BE20](&v53);
      v66 = &v53 - 6;
      *(&v53 - 4) = v51;
      *(&v53 - 3) = &v244;
      *(&v53 - 2) = &v243;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v68 = v50;
      if (v50)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v69, v70, "topLevelEvent is nil", v56, 2u);
        v54 = 0;
        sub_225EF7AF4(v59, 0, v57);
        sub_225EF7AF4(v62, v54, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v55 = v68;
      }
    }

    else
    {

      v55 = v208;
    }

    v53 = v55;

    (*(v213 + 8))(v214, v211);
    return v53;
  }
}

void sub_225F58E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v40 = a1;
  v41 = 0;
  v49 = 0;
  v46 = 0;
  v45 = 0;
  v52 = a1;
  v51 = a2;
  v50 = a3;
  sub_225F7BE24();
  v42 = sub_225F26174();
  v48 = v42;
  sub_225F7BE88();
  v44 = sub_225F26174();
  v43 = v44;
  v47 = v44;
  v3 = v44;
  if (v44)
  {
    v37 = v43;
    v36 = v43;
    [v43 setStartedOrChanged_];
  }

  sub_225F7BEEC();
  v35 = sub_225F26174();
  v34 = v35;
  v46 = v35;
  v4 = v35;
  if (v35)
  {
    v33 = v34;
    v32 = v34;
    [v34 setFullPayloadCorrectionContext_];
  }

  v30 = sub_226098A78();
  v20 = v30;
  v21 = *(v30 - 8);
  v29 = v21;
  v22 = v21;
  v23 = *(v21 + 64);
  v24 = &v12;
  MEMORY[0x28223BE20](&v12);
  v25 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v25;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v26 = &v12;
  v27 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v31 = &v12 - v27;
  v28 = &v12 - v27;
  sub_225F7BF50(v7, &v12 - v27);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    sub_225F7C078(v28);
  }

  else
  {
    (*(v22 + 32))(v25, v28, v20);
    v8 = v34;
    if (v34)
    {
      v19 = v34;
      v18 = v34;
      sub_225F7BD5C();
      v16 = &v12;
      v9 = MEMORY[0x28223BE20](&v12);
      v15 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v9);
      v17 = sub_22603E5E0(v15);
      [v18 setOriginalAsrId_];
    }

    (*(v22 + 8))(v25, v20);
  }

  v11 = v34;
  if (v34)
  {
    v14 = v34;
    v13 = v34;
  }

  else
  {
    v13 = 0;
  }

  v12 = v13;
  sub_225F57040(v40, v13, v39);
}

void sub_225F59320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v107 = a6;
  v108 = a4;
  v109 = a3;
  v110 = a2;
  v111 = a1;
  v112 = 0;
  v125 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v113 = a5;
  v131 = a1;
  v130 = a2;
  v129 = a3;
  v127 = a4;
  v128 = a5 & 1;
  v126 = a6;
  sub_225F7C120();
  v115 = sub_225F26174();
  v114 = v115;
  v124 = v115;
  v6 = v115;
  if (v115)
  {
    v106 = v114;
    v105 = v114;
    [v114 setErrorType_];
  }

  v7 = v109;
  v123 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  if (swift_dynamicCast())
  {
    v104 = v122[1];
  }

  else
  {
    v104 = 4;
  }

  v102 = v104;
  v103 = v122;
  v121 = v104;
  v122[0] = 3;
  if (v104 != 4)
  {
    v116 = v102;
    if (*v103 != 4)
    {
      v101 = sub_225F4C84C(v116, *v103);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (*v103 != 4)
  {
LABEL_14:
    v101 = 0;
    goto LABEL_12;
  }

  v101 = 1;
LABEL_12:
  if (v101)
  {
    v8 = v114;
    if (v114)
    {
      v100 = v114;
      v99 = v114;
      [v114 setErrorType_];
    }
  }

  else
  {
    v9 = v109;
    v93 = sub_2260988D8();
    v97 = [v93 domain];
    v94 = sub_226099A08();
    v96 = v10;

    v11 = sub_226099AA8();
    v95 = v12;
    v98 = MEMORY[0x22AA72BD0](v94, v96, v11);

    if (v98)
    {
      v13 = v109;
      v90 = sub_2260988D8();
      v92 = [v90 code];
      v91 = v92;

      if (v92 == 1)
      {
        v14 = v114;
        if (v114)
        {
          v89 = v114;
          v88 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 2)
      {
        v15 = v114;
        if (v114)
        {
          v87 = v114;
          v86 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 3)
      {
        v16 = v114;
        if (v114)
        {
          v85 = v114;
          v84 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 7)
      {
        v17 = v114;
        if (v114)
        {
          v83 = v114;
          v82 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 8)
      {
        v18 = v114;
        if (v114)
        {
          v81 = v114;
          v80 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 9)
      {
        v19 = v114;
        if (v114)
        {
          v79 = v114;
          v78 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 19)
      {
        v20 = v114;
        if (v114)
        {
          v77 = v114;
          v76 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 24)
      {
        v21 = v114;
        if (v114)
        {
          v75 = v114;
          v74 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 32)
      {
        v22 = v114;
        if (v114)
        {
          v73 = v114;
          v72 = v114;
          [v114 setErrorType_];
        }
      }

      else if (v91 == 34)
      {
        v23 = v114;
        if (v114)
        {
          v71 = v114;
          v70 = v114;
          [v114 setErrorType_];
        }
      }

      else
      {
        v24 = v114;
        if (v114)
        {
          v69 = v114;
          v68 = v114;
          [v114 setErrorType_];
        }
      }
    }
  }

  if ((v113 & 1) == 0)
  {
    v67 = v108;
    v66 = v108;
    v117 = v108;
    v25 = v114;
    if (v114)
    {
      v65 = v114;
      v64 = v114;
      [v114 setResponseTimeInNs_];
    }
  }

  sub_225F7BE88();
  v63 = sub_225F26174();
  v62 = v63;
  v120 = v63;
  v26 = v63;
  if (v63)
  {
    v61 = v62;
    v60 = v62;
    [v62 setFailed_];
  }

  sub_225F7BEEC();
  v59 = sub_225F26174();
  v58 = v59;
  v119 = v59;
  v27 = v59;
  if (v59)
  {
    v57 = v58;
    v56 = v58;
    [v58 setFullPayloadCorrectionContext_];
  }

  v54 = sub_226098A78();
  v44 = v54;
  v45 = *(v54 - 8);
  v53 = v45;
  v46 = v45;
  v47 = *(v45 + 64);
  v48 = &v35;
  MEMORY[0x28223BE20](&v35);
  v49 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v49;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v50 = &v35;
  v51 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v107);
  v55 = &v35 - v51;
  v52 = &v35 - v51;
  sub_225F7BF50(v30, &v35 - v51);
  if ((*(v53 + 48))(v55, 1, v54) == 1)
  {
    sub_225F7C078(v52);
  }

  else
  {
    (*(v46 + 32))(v49, v52, v44);
    v31 = v58;
    if (v58)
    {
      v43 = v58;
      v42 = v58;
      sub_225F7BD5C();
      v40 = &v35;
      v32 = MEMORY[0x28223BE20](&v35);
      v39 = &v35 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v32);
      v41 = sub_22603E5E0(v39);
      [v42 setOriginalAsrId_];
    }

    (*(v46 + 8))(v49, v44);
  }

  v34 = v58;
  if (v58)
  {
    v38 = v58;
    v37 = v58;
  }

  else
  {
    v37 = 0;
  }

  v36 = v37;
  sub_225F57040(v111, v37, v110);
}

void sub_225F5A138(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a8;
  v78 = a7;
  v79 = a6;
  v80 = a5;
  v93 = a4;
  v81 = a3;
  v82 = a2;
  v83 = a1;
  v84 = a9;
  v86 = 0;
  v105 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v114 = a1;
  v113 = a2;
  v111 = a3;
  v112 = a4 & 1;
  v109 = a5;
  v110 = a6;
  v107 = a7;
  v108 = a8;
  v106 = a9;
  sub_225F7C184();
  v85 = sub_225F26174();
  v104 = v85;
  v87 = sub_225F7BD5C();
  v88 = sub_226098A78();
  v89 = *(v88 - 8);
  v90 = v89;
  v91 = *(v89 + 64);
  MEMORY[0x28223BE20](v88 - 8);
  v92 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226098A68();
  v94 = sub_22603E5E0(v92);
  v103 = v94;
  if ((v93 & 1) == 0)
  {
    v76 = v81;
    v75 = v81;
    v95 = v81;
    v10 = v85;
    if (v85)
    {
      v74 = v85;
      v73 = v85;
      [v85 setResponseTimeInNs_];
    }
  }

  v11 = v85;
  if (v85)
  {
    v72 = v85;
    v71 = v85;
    v12 = v94;
    [v71 setLinkId_];
  }

  sub_225F7BE88();
  v70 = sub_225F26174();
  v69 = v70;
  v102 = v70;
  v13 = v70;
  if (v70)
  {
    v68 = v69;
    v67 = v69;
    [v69 setEnded_];
  }

  sub_225F7BEEC();
  v66 = sub_225F26174();
  v65 = v66;
  v101 = v66;
  v14 = v66;
  if (v66)
  {
    v64 = v65;
    v63 = v65;
    [v65 setFullPayloadCorrectionContext_];
  }

  v57 = &v28;
  MEMORY[0x28223BE20](&v28);
  v58 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v58;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
  v59 = &v28;
  v60 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v62 = &v28 - v60;
  v61 = &v28 - v60;
  sub_225F7BF50(v17, &v28 - v60);
  if ((*(v90 + 48))(v62, 1, v88) == 1)
  {
    sub_225F7C078(v61);
  }

  else
  {
    (*(v90 + 32))(v58, v61, v88);
    v18 = v65;
    if (v65)
    {
      v56 = v65;
      v55 = v65;
      v53 = &v28;
      v19 = MEMORY[0x28223BE20](&v28);
      v52 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v90 + 16))(v19);
      v54 = sub_22603E5E0(v52);
      [v55 setOriginalAsrId_];
    }

    (*(v90 + 8))(v58, v88);
  }

  v21 = v65;
  if (v65)
  {
    v51 = v65;
    v50 = v65;
  }

  else
  {
    v50 = 0;
  }

  v47 = v50;
  sub_225F57040(v83, v50, v82);

  sub_225F7C1E8();
  v49 = sub_225F26174();
  v48 = v49;
  v99 = v49;
  v22 = v49;
  if (v49)
  {
    v46 = v48;
    v45 = v48;
    sub_2260998E8();
    v44 = sub_2260999F8();

    [v45 setFullPayloadCorrectorInput_];
  }

  sub_2260998E8();
  if (v77)
  {
    v42 = v78;
    v43 = v77;
    v40 = v77;
    v41 = v78;
    v96 = v78;
    v97 = v77;
    v23 = v48;
    if (v48)
    {
      v39 = v48;
      v38 = v48;
      sub_2260998E8();
      v37 = sub_2260999F8();

      [v38 setFullPayloadCorrectorOutput_];
    }
  }

  v24 = v48;
  if (v48)
  {
    v36 = v48;
    v35 = v48;
    v25 = v94;
    [v35 setLinkId_];
  }

  sub_225F7C24C();
  v34 = sub_225F26174();
  v33 = v34;
  v98 = v34;
  v26 = v34;
  if (v34)
  {
    v32 = v33;
    v31 = v33;
    [v33 setInfoTier1_];
  }

  v27 = v33;
  if (v33)
  {
    v30 = v33;
    v29 = v33;
  }

  else
  {
    v29 = 0;
  }

  v28 = v29;
  sub_225F57040(v83, v29, v82);
}

uint64_t sub_225F5AC0C(uint64_t a1)
{
  v79 = a1;
  v71 = 0;
  v64 = sub_225F2CE08;
  v65 = sub_225F4C3B4;
  v66 = sub_225EF7B84;
  v67 = sub_225EF7434;
  v68 = sub_225EF7434;
  v69 = sub_225EF7B90;
  v94 = 0;
  v93 = 0;
  v88 = 0.0;
  v86 = 0;
  v70 = 0;
  v72 = sub_226098C58();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v76 = &v30 - v75;
  v94 = v2;
  v93 = v1;
  v77 = &v92;
  swift_beginAccess();
  v78 = *(v1 + 64);
  swift_endAccess();
  result = v79;
  v80 = v79 * v78;
  if (is_mul_ok(v79, v78))
  {
    v4 = v76;
    v39 = &v91;
    v91 = v80;
    sub_225F7C2B0();
    sub_226099EC8();
    v43 = v5;
    v40 = &v90;
    v51 = 32;
    swift_beginAccess();
    v41 = *(v63 + 68);
    swift_endAccess();
    v42 = &v89;
    v89 = v41;
    sub_225EF92C0();
    sub_226099EC8();
    v44 = v43 / v6;
    v88 = v43 / v6;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
    v46 = sub_22609A4F8();
    v45 = v7;
    v8 = sub_226099AA8();
    v9 = v44;
    v10 = v45;
    *v45 = v8;
    v10[1] = v11;
    v87 = v9;
    v12 = sub_226099BD8();
    v13 = v45;
    v45[2] = v12;
    v13[3] = v14;
    sub_225EF5418();
    v48 = sub_2260998A8();
    v86 = v48;
    v15 = sub_225F4C7E0();
    (*(v73 + 16))(v4, v15, v72);
    sub_2260998E8();
    v52 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = v48;

    v16 = swift_allocObject();
    v17 = v49;
    v53 = v16;
    *(v16 + 16) = v64;
    *(v16 + 24) = v17;

    v61 = sub_226098C48();
    v62 = sub_22609A078();
    v50 = 17;
    v55 = swift_allocObject();
    *(v55 + 16) = 32;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v18 = swift_allocObject();
    v19 = v53;
    v54 = v18;
    *(v18 + 16) = v65;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v54;
    v58 = v20;
    *(v20 + 16) = v66;
    *(v20 + 24) = v21;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v57 = sub_22609A4F8();
    v59 = v22;

    v23 = v55;
    v24 = v59;
    *v59 = v67;
    v24[1] = v23;

    v25 = v56;
    v26 = v59;
    v59[2] = v68;
    v26[3] = v25;

    v27 = v58;
    v28 = v59;
    v59[4] = v69;
    v28[5] = v27;
    sub_225EF5418();

    if (os_log_type_enabled(v61, v62))
    {
      v29 = v70;
      v32 = sub_22609A188();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v33 = sub_225EF5468(0, v31, v31);
      v34 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v35 = &v85;
      v85 = v32;
      v36 = &v84;
      v84 = v33;
      v37 = &v83;
      v83 = v34;
      sub_225EF54BC(2, &v85);
      sub_225EF54BC(1, v35);
      v81 = v67;
      v82 = v55;
      sub_225EF73E8(&v81, v35, v36, v37);
      v38 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v81 = v68;
        v82 = v56;
        sub_225EF73E8(&v81, &v85, &v84, &v83);
        v30 = 0;
        v81 = v69;
        v82 = v58;
        sub_225EF73E8(&v81, &v85, &v84, &v83);
        _os_log_impl(&dword_225EEB000, v61, v62, "FullPayloadCorrector::loggingInfo %s", v32, 0xCu);
        sub_225EF7AF4(v33, 0, v31);
        sub_225EF7AF4(v34, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v61);
    (*(v73 + 8))(v76, v72);
    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_225F5B548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[56] = v3;
  v4[55] = a3;
  v4[54] = a2;
  v4[53] = a1;
  v4[33] = v4;
  v4[34] = 0;
  v4[35] = 0;
  v4[36] = 0;
  v4[37] = 0;
  v4[38] = 0;
  v4[39] = 0;
  v4[40] = 0;
  memset(v4 + 2, 0, 0x30uLL);
  v4[43] = 0;
  v4[21] = 0;
  v4[22] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[44] = 0;
  v5 = sub_226098C58();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = a3;
  v4[37] = v3;

  return MEMORY[0x2822009F8](sub_225F5B6F0, 0, 0);
}

uint64_t sub_225F5B6F0()
{
  v0[33] = v0;
  v0[38] = sub_22609A4F8();
  v0[39] = sub_22609A4F8();
  v0[40] = sub_22609A4F8();
  v22 = sub_226099CD8();
  if (v22 == sub_226099CD8())
  {
    v1 = v21[54];
    v21[41] = v21[53];
    v21[42] = v1;
    v21[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    sub_225F3006C();
    sub_22609A538();
    v2 = v21[16];
    v21[17] = v21[15];
    v21[18] = v2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786528, &qword_2260A05D8);
    v3 = sub_225F7C328();
    MEMORY[0x22AA72D20](v15, v3);
    sub_225F7C3B0(v21 + 17);
    v4 = v21[14];
    v21[19] = v21[13];
    v21[20] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786538, &qword_2260A05E0);
    sub_22609A3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786540, &qword_2260A05E8);
    sub_22609A408();
    v16 = v21[8];
    v21[62] = v16;
    v17 = v21[9];
    v21[63] = v17;
    v18 = v21[10];
    v21[64] = v18;
    v19 = v21[11];
    v21[65] = v19;
    v20 = v21[12];
    v21[66] = v20;
    if (v18)
    {
      v5 = v21[56];
      v21[43] = v16;
      v21[21] = v17;
      v21[22] = v18;
      v21[23] = v19;
      v21[24] = v20;
      v21[67] = *(v5 + 104);

      v6 = swift_task_alloc();
      v21[68] = v6;
      *v6 = v21[33];
      v6[1] = sub_225F5BC38;

      return MEMORY[0x28212BFE8](v17, v18, v19, v20);
    }

    sub_225F7C3E8(v21 + 2);
    v9 = v21[38];
    sub_2260998E8();
    v10 = v21[39];
    sub_2260998E8();
    v11 = v21[40];
    sub_2260998E8();
    sub_225EFE6E8(v21 + 40);
    sub_225EFE6E8(v21 + 39);
    sub_225EFE6E8(v21 + 38);
    v12 = v9;
    v13 = v10;
    v14 = v11;
  }

  else
  {
    sub_2260998E8();
    sub_2260998E8();
    sub_2260998E8();
    sub_225EFE6E8(v21 + 40);
    sub_225EFE6E8(v21 + 39);
    sub_225EFE6E8(v21 + 38);
    v12 = v21[53];
    v13 = v21[54];
    v14 = v21[55];
  }

  v7 = *(v21[33] + 8);

  return v7(v12, v13, v14);
}

uint64_t sub_225F5BC38(double a1)
{
  v5 = *v2;
  *(v5 + 264) = *v2;
  *(v5 + 552) = a1;
  *(v5 + 560) = v1;

  if (v1)
  {
    v3 = sub_225F5CF7C;
  }

  else
  {

    v3 = sub_225F5BDBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225F5BDBC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 448);
  *(v0 + 264) = v0;
  *(v0 + 352) = v1;
  if (v1 < *(v2 + 96))
  {
    v49 = *(v63 + 496);
    v5 = *(v63 + 480);
    v48 = *(v63 + 456);
    v47 = *(v63 + 464);
    v6 = sub_225F4C7E0();
    (*(v47 + 16))(v5, v6, v48);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v56 = sub_226098C48();
    v57 = sub_22609A078();
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_225F2D734;
    *(v51 + 24) = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_225F2D374;
    *(v54 + 24) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v55 = v7;

    *v55 = sub_225EF7434;
    v55[1] = v52;

    v55[2] = sub_225EF7434;
    v55[3] = v53;

    v55[4] = sub_225EF71D0;
    v55[5] = v54;
    sub_225EF5418();

    if (os_log_type_enabled(v56, v57))
    {
      v8 = *(v63 + 560);
      buf = sub_22609A188();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v45 = sub_225EF5468(0, v43, v43);
      v46 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v63 + 400) = buf;
      *(v63 + 408) = v45;
      *(v63 + 416) = v46;
      sub_225EF54BC(0, (v63 + 400));
      sub_225EF54BC(1, (v63 + 400));
      *(v63 + 248) = sub_225EF7434;
      *(v63 + 256) = v52;
      sub_225EF73E8((v63 + 248), v63 + 400, v63 + 408, v63 + 416);
      if (v8)
      {
        goto LABEL_16;
      }

      *(v63 + 248) = sub_225EF7434;
      *(v63 + 256) = v53;
      sub_225EF73E8((v63 + 248), v63 + 400, v63 + 408, v63 + 416);
      *(v63 + 248) = sub_225EF71D0;
      *(v63 + 256) = v54;
      sub_225EF73E8((v63 + 248), v63 + 400, v63 + 408, v63 + 416);
      _os_log_impl(&dword_225EEB000, v56, v57, "Confusion pair accepted at index %ld", buf, 0xCu);
      sub_225EF7AF4(v45, 0, v43);
      sub_225EF7AF4(v46, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v41 = *(v63 + 520);
    v39 = *(v63 + 504);
    v37 = *(v63 + 480);
    v38 = *(v63 + 456);
    v42 = *(v63 + 528);
    v40 = *(v63 + 512);
    v36 = *(v63 + 464);
    MEMORY[0x277D82BD8](v56);
    (*(v36 + 8))(v37, v38);
    sub_2260998E8();
    *(v63 + 216) = v39;
    *(v63 + 224) = v40;
    sub_226099CE8();
    sub_2260998E8();
    *(v63 + 232) = v41;
    *(v63 + 240) = v42;
    sub_226099CE8();
    sub_226099D38();
    *(v63 + 392) = *(v63 + 384);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
    sub_226099CE8();
    goto LABEL_18;
  }

  v27 = *(v63 + 496);
  v9 = *(v63 + 472);
  v26 = *(v63 + 456);
  v25 = *(v63 + 464);
  v10 = sub_225F4C7E0();
  (*(v25 + 16))(v9, v10, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  oslog = sub_226098C48();
  v35 = sub_22609A078();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F2D734;
  *(v29 + 24) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F2D374;
  *(v32 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v33 = v11;

  *v33 = sub_225EF7434;
  v33[1] = v30;

  v33[2] = sub_225EF7434;
  v33[3] = v31;

  v33[4] = sub_225EF71D0;
  v33[5] = v32;
  sub_225EF5418();

  if (!os_log_type_enabled(oslog, v35))
  {

    goto LABEL_17;
  }

  v12 = *(v63 + 560);
  v22 = sub_22609A188();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
  v23 = sub_225EF5468(0, v21, v21);
  v24 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
  *(v63 + 360) = v22;
  *(v63 + 368) = v23;
  *(v63 + 376) = v24;
  sub_225EF54BC(0, (v63 + 360));
  sub_225EF54BC(1, (v63 + 360));
  *(v63 + 200) = sub_225EF7434;
  *(v63 + 208) = v30;
  sub_225EF73E8((v63 + 200), v63 + 360, v63 + 368, v63 + 376);
  if (v12)
  {
LABEL_16:
  }

  *(v63 + 200) = sub_225EF7434;
  *(v63 + 208) = v31;
  sub_225EF73E8((v63 + 200), v63 + 360, v63 + 368, v63 + 376);
  *(v63 + 200) = sub_225EF71D0;
  *(v63 + 208) = v32;
  sub_225EF73E8((v63 + 200), v63 + 360, v63 + 368, v63 + 376);
  _os_log_impl(&dword_225EEB000, oslog, v35, "Confusion pair rejected at index %ld", v22, 0xCu);
  sub_225EF7AF4(v23, 0, v21);
  sub_225EF7AF4(v24, 0, MEMORY[0x277D84F70] + 8);
  sub_22609A168();

LABEL_17:
  v19 = *(v63 + 472);
  v20 = *(v63 + 456);
  v18 = *(v63 + 464);
  MEMORY[0x277D82BD8](oslog);
  (*(v18 + 8))(v19, v20);
LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786540, &qword_2260A05E8);
  sub_22609A408();
  v60 = *(v63 + 64);
  *(v63 + 496) = v60;
  v62 = *(v63 + 72);
  *(v63 + 504) = v62;
  v58 = *(v63 + 80);
  *(v63 + 512) = v58;
  v61 = *(v63 + 88);
  *(v63 + 520) = v61;
  v59 = *(v63 + 96);
  *(v63 + 528) = v59;
  if (v58)
  {
    v3 = *(v63 + 448);
    *(v63 + 344) = v60;
    *(v63 + 168) = v62;
    *(v63 + 176) = v58;
    *(v63 + 184) = v61;
    *(v63 + 192) = v59;
    *(v63 + 536) = *(v3 + 104);

    v4 = swift_task_alloc();
    *(v63 + 544) = v4;
    *v4 = *(v63 + 264);
    v4[1] = sub_225F5BC38;

    return MEMORY[0x28212BFE8](v62, v58, v61, v59);
  }

  else
  {
    sub_225F7C3E8((v63 + 16));
    v15 = *(v63 + 304);
    sub_2260998E8();
    v16 = *(v63 + 312);
    sub_2260998E8();
    v17 = *(v63 + 320);
    sub_2260998E8();
    sub_225EFE6E8((v63 + 320));
    sub_225EFE6E8((v63 + 312));
    sub_225EFE6E8((v63 + 304));

    v13 = *(*(v63 + 264) + 8);

    return v13(v15, v16, v17);
  }
}

uint64_t sub_225F5CF7C()
{
  v0[33] = v0;

  sub_225F7C3E8(v0 + 2);
  sub_225EFE6E8(v0 + 40);
  sub_225EFE6E8(v0 + 39);
  sub_225EFE6E8(v0 + 38);

  v1 = *(*(v3 + 264) + 8);

  return v1();
}

uint64_t sub_225F5D098(uint64_t a1, uint64_t a2, int a3)
{
  v205 = a3;
  v208 = a2;
  v207 = a1;
  v202 = a3;
  v203 = 0;
  v270 = 0;
  v269 = 0;
  v206 = 0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v204 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v247[1] = 0;
  v247[0] = 0;
  v244 = 0;
  v239 = 0;
  v234 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v220 = 0;
  v216 = 0;
  v209 = sub_226098C58();
  v210 = *(v209 - 8);
  v211 = v210;
  v212 = *(v210 + 64);
  MEMORY[0x28223BE20](v207);
  v213 = &v39 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = v4;
  v269 = v5;
  v268 = v6;
  v267 = v3;
  v266 = v7;
  v214 = [objc_opt_self() sharedConnection];
  if (v214)
  {
    v201 = v214;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 532, 0);
    __break(1u);
  }

  v198 = v201;
  v196 = *MEMORY[0x277D25E50];
  v8 = v196;
  sub_226099A08();
  v195 = v9;
  v197 = sub_2260999F8();

  v199 = [v198 effectiveBoolValueForSetting_];
  v265 = v199;
  v264 = 1;
  v200 = type metadata accessor for MCRestrictedBoolType(0);
  sub_225F7C420();
  v266 = sub_22609A508() & 1;
  if (!v266)
  {
    v35 = v213;
    v36 = sub_225F4C7E0();
    (*(v211 + 16))(v35, v36, v209);
    v58 = sub_226098C48();
    v55 = v58;
    v57 = sub_22609A078();
    v56 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v59 = sub_22609A4F8();
    if (os_log_type_enabled(v58, v57))
    {
      v37 = v204;
      v46 = sub_22609A188();
      v42 = v46;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v44 = 0;
      v47 = sub_225EF5468(0, v43, v43);
      v45 = v47;
      v48 = sub_225EF5468(v44, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v263 = v46;
      v262 = v47;
      v261 = v48;
      v49 = 0;
      v50 = &v263;
      sub_225EF54BC(0, &v263);
      sub_225EF54BC(v49, v50);
      v260 = v59;
      v51 = &v39;
      MEMORY[0x28223BE20](&v39);
      v52 = &v39 - 6;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v54 = v37;
      if (v37)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v55, v56, "FullPayloadCorrector::Confusion pair logging disabled", v42, 2u);
        v40 = 0;
        sub_225EF7AF4(v45, 0, v43);
        sub_225EF7AF4(v48, v40, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v41 = v54;
      }
    }

    else
    {

      v41 = v204;
    }

    v39 = v41;

    (*(v211 + 8))(v213, v209);
    return v39;
  }

  v256[0] = sub_226099AA8();
  v256[1] = v10;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
  v194 = v256;
  sub_226099938();
  sub_225EFE6BC(v194);
  if (*(&v258 + 1) == 1)
  {
    sub_225F7C4A0(&v257);
  }

  else
  {
    v259[1] = v258;
    v259[0] = v257;
    if (*(&v258 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786588, &qword_2260A0600);
      if (swift_dynamicCast())
      {
        v192 = v215;
      }

      else
      {
        v192 = 0;
      }

      v191 = v192;
      goto LABEL_13;
    }

    sub_225F186BC(v259);
  }

  v191 = 0;
LABEL_13:
  v190 = v191;
  v255 = v191;
  sub_2260998E8();
  if (!v190)
  {

    return v204;
  }

  v189 = v190;
  v188 = v190;
  v254 = v190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786558, &qword_2260A05F8);
  if (sub_226099CD8() < 1)
  {

    return v204;
  }

  v184 = 0;
  v183 = sub_225F7C4F4();
  v187 = sub_225F26174();
  v185 = v187;
  v253 = v187;
  sub_225F7C558();
  v186 = sub_225F26174();
  v252 = v186;
  v11 = v187;
  if (v187)
  {
    v182 = v185;
    v181 = v185;
    [v185 setStartedOrChanged_];
  }

  v180 = sub_225F26174();
  v175 = v180;
  v251 = v180;
  v176 = 0;
  sub_225F7C5BC();
  v177 = sub_225F26174();
  v250 = v177;
  v178 = sub_225F7C620();
  v179 = sub_225F26174();
  v249 = v179;
  v12 = v180;
  if (v180)
  {
    v174 = v175;
    v173 = v175;
    [v175 setEnded_];
  }

  v13 = v179;
  if (v179)
  {
    v172 = v179;
    v171 = v179;
    v216 = v179;
    v14 = v177;
    if (v177)
    {
      v170 = v177;
      v169 = v177;
      v166 = sub_22609A4F8();
      v165 = v15;
      v16 = v171;
      *v165 = v171;
      sub_225EF5418();
      v167 = v17;
      v168 = sub_226099C78();

      [v169 setRedecodingResults_];
    }
  }

  v18 = v179;
  if (v179)
  {
    v164 = v179;
    v163 = v179;
    v159 = 0;
    v160 = sub_225F7C770();
    v161 = sub_22609A4F8();
    v162 = sub_226099C78();

    [v163 setConfusionPairs_];
  }

  sub_225F7C684();
  v158 = sub_225F26174();
  v157 = v158;
  v248 = v158;
  v19 = v158;
  if (v158)
  {
    v156 = v157;
    v155 = v157;
    v151 = 0;
    v152 = sub_225F7C7D4();
    v153 = sub_22609A4F8();
    v154 = sub_226099C78();

    [v155 setConfusionPairs_];
  }

  sub_2260998E8();
  v246 = v188;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786588, &qword_2260A0600);
  sub_225F7C6E8();
  sub_22609A028();
  for (i = v204; ; i = v147)
  {
    v147 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786598, &qword_2260A0608);
    sub_22609A388();
    v148 = v245;
    if (!v245)
    {
      break;
    }

    v146 = v148;
    v144 = v148;
    v244 = v148;
    v240[0] = sub_226099AA8();
    v240[1] = v20;
    v145 = v240;
    sub_226099938();
    sub_225EFE6BC(v145);
    if (*(&v242 + 1) == 1)
    {
      sub_225F7C4A0(&v241);
LABEL_114:
      v142 = 0;
      goto LABEL_40;
    }

    v243[1] = v242;
    v243[0] = v241;
    if (!*(&v242 + 1))
    {
      sub_225F186BC(v243);
      goto LABEL_114;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    if (swift_dynamicCast())
    {
      v143 = v217;
    }

    else
    {
      v143 = 0;
    }

    v142 = v143;
LABEL_40:
    v140 = v142;
    v239 = v142;
    v235[0] = sub_226099AA8();
    v235[1] = v21;
    v141 = v235;
    sub_226099938();
    sub_225EFE6BC(v141);
    if (*(&v237 + 1) == 1)
    {
      sub_225F7C4A0(&v236);
LABEL_113:
      v138 = 0;
      goto LABEL_48;
    }

    v238[1] = v237;
    v238[0] = v236;
    if (!*(&v237 + 1))
    {
      sub_225F186BC(v238);
      goto LABEL_113;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    if (swift_dynamicCast())
    {
      v139 = v218;
    }

    else
    {
      v139 = 0;
    }

    v138 = v139;
LABEL_48:
    v136 = v138;
    v234 = v138;
    v230[0] = sub_226099AA8();
    v230[1] = v22;
    v137 = v230;
    sub_226099938();
    sub_225EFE6BC(v137);
    if (*(&v232 + 1) == 1)
    {
      sub_225F7C4A0(&v231);
LABEL_112:
      v132 = 0;
      v133 = 1;
      goto LABEL_56;
    }

    v233[1] = v232;
    v233[0] = v231;
    if (!*(&v232 + 1))
    {
      sub_225F186BC(v233);
      goto LABEL_112;
    }

    if (swift_dynamicCast())
    {
      v134 = v219;
      v135 = 0;
    }

    else
    {
      v134 = 0;
      v135 = 1;
    }

    v132 = v134;
    v133 = v135;
LABEL_56:
    v130 = v133;
    v131 = v132;
    v228 = v132;
    v229 = v133 & 1;
    sub_2260998E8();
    if (!v140)
    {
      goto LABEL_110;
    }

    v129 = v140;
    v128 = v140;
    v227 = v140;
    sub_2260998E8();
    if (!v136)
    {

LABEL_110:

      continue;
    }

    v127 = v136;
    v125 = v136;
    v226 = v136;
    v126 = sub_226099CD8();
    sub_2260998E8();
    v124 = v126 >= 1 || sub_226099CD8() > 0;
    v123 = v124;

    if (v123 && (v121 = sub_225F7C770(), (v122 = sub_225F26174()) != 0))
    {
      v120 = v122;
      v119 = v122;
      v225 = v122;
      if ((v130 & 1) == 0)
      {
        v118 = v131;
        v117 = v118;
        v220 = v118;
        if (v118 <= 0xFFFFFFFF7FFFFFFFLL)
        {
          sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        if (v117 >= 0x80000000)
        {
          sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
          __break(1u);
        }

        [v119 setRecognizedTextStartIndex_];
      }

      v23 = v179;
      if (v179)
      {
        v116 = v179;
        v114 = v179;
        v24 = [v179 confusionPairs];
        v115 = v24;
        if (v24)
        {
          v113 = v115;
          v110 = v115;
          v111 = sub_226099C88();

          v112 = v111;
        }

        else
        {
          v112 = 0;
        }

        v222[0] = v112;
        if (v112)
        {
          v25 = v119;
          v221 = v119;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865B8, &qword_2260A0618);
          sub_226099CE8();
          v102 = v222[0];
          if (v222[0])
          {
            v101 = v102;
            v98 = v102;
            v99 = sub_226099C78();

            v100 = v99;
          }

          else
          {
            v100 = 0;
          }

          v97 = v100;
          [v114 setConfusionPairs_];
        }

        else
        {
          v109 = 0;
          v108 = 0;
          sub_2260998E8();
          if (v109)
          {
            v107 = v108;
            v104 = v108;
            v105 = sub_226099C78();

            v106 = v105;
          }

          else
          {
            v106 = 0;
          }

          v103 = v106;
          [v114 setConfusionPairs_];

          sub_225EFE6E8(v222);
        }
      }

      v95 = sub_225F7C7D4();
      v96 = sub_225F26174();
      if (v96)
      {
        v94 = v96;
        v92 = v96;
        v224 = v96;
        sub_2260998E8();
        v91 = MEMORY[0x277D837D0];
        v90 = sub_226099C78();

        [v92 setRecognizedTokens_];

        sub_2260998E8();
        v93 = sub_226099C78();

        [v92 setCorrectedTokens_];

        v26 = v157;
        if (v157)
        {
          v89 = v157;
          v87 = v157;
          v27 = [v157 confusionPairs];
          v88 = v27;
          if (v27)
          {
            v86 = v88;
            v83 = v88;
            v84 = sub_226099C88();

            v85 = v84;
          }

          else
          {
            v85 = 0;
          }

          v223 = v85;
          if (v85)
          {
            v28 = v92;
            v222[1] = v92;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865B0, &qword_2260A0610);
            sub_226099CE8();
            v75 = v223;
            if (v223)
            {
              v74 = v75;
              v71 = v75;
              v72 = sub_226099C78();

              v73 = v72;
            }

            else
            {
              v73 = 0;
            }

            v70 = v73;
            [v87 setConfusionPairs_];
          }

          else
          {
            v82 = 0;
            v81 = 0;
            sub_2260998E8();
            if (v82)
            {
              v80 = v81;
              v77 = v81;
              v78 = sub_226099C78();

              v79 = v78;
            }

            else
            {
              v79 = 0;
            }

            v76 = v79;
            [v87 setConfusionPairs_];

            sub_225EFE6E8(&v223);
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_225EFE6E8(v247);
  v29 = v185;
  if (v185)
  {
    v69 = v185;
    v68 = v185;
  }

  else
  {
    v68 = 0;
  }

  v67 = v68;
  v30 = mach_absolute_time();
  sub_225F57040(v207, v67, v30);

  v31 = v175;
  if (v175)
  {
    v66 = v175;
    v65 = v175;
  }

  else
  {
    v65 = 0;
  }

  v64 = v65;
  v32 = mach_absolute_time();
  sub_225F57040(v207, v64, v32);

  if (v202)
  {
    v33 = v157;
    if (v157)
    {
      v63 = v157;
      v62 = v157;
    }

    else
    {
      v62 = 0;
    }

    v61 = v62;
    v34 = mach_absolute_time();
    sub_225F57040(v207, v61, v34);
  }

  return v147;
}

void sub_225F5E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = 0;
  v94 = a1;
  v93 = a2;
  v92 = a3;
  v91 = a4;
  v90 = a5;
  v86[0] = sub_226099AA8();
  v86[1] = v5;
  sub_226099938();
  sub_225EFE6BC(v86);
  v23 = v87;
  v40 = v88;
  v84 = v87;
  v85 = v88 & 1;
  v81[0] = sub_226099AA8();
  v81[1] = v6;
  sub_226099938();
  sub_225EFE6BC(v81);
  v24 = v82;
  v25 = v83;
  v79 = v82;
  v80 = v83 & 1;
  v76[0] = sub_226099AA8();
  v76[1] = v7;
  sub_226099938();
  sub_225EFE6BC(v76);
  v26 = v77;
  v27 = v78;
  v74 = v77;
  v75 = v78 & 1;
  v71[0] = sub_226099AA8();
  v71[1] = v8;
  sub_226099938();
  sub_225EFE6BC(v71);
  v28 = v72;
  v29 = v73;
  v69 = v72;
  v70 = v73 & 1;
  v66[0] = sub_226099AA8();
  v66[1] = v9;
  sub_226099938();
  sub_225EFE6BC(v66);
  v30 = v67;
  v31 = v68;
  v64 = v67;
  v65 = v68 & 1;
  v61[0] = sub_226099AA8();
  v61[1] = v10;
  sub_226099938();
  sub_225EFE6BC(v61);
  v32 = v62;
  v33 = v63;
  v59 = v62;
  v60 = v63 & 1;
  v56[0] = sub_226099AA8();
  v56[1] = v11;
  sub_226099938();
  sub_225EFE6BC(v56);
  v34 = v57;
  v35 = v58;
  v54 = v57;
  v55 = v58 & 1;
  v51[0] = sub_226099AA8();
  v51[1] = v12;
  sub_226099938();
  sub_225EFE6BC(v51);
  v36 = v52;
  v37 = v53;
  v49 = v52;
  v50 = v53 & 1;
  v46[0] = sub_226099AA8();
  v46[1] = v13;
  sub_226099938();
  sub_225EFE6BC(v46);
  v38 = v47;
  v39 = v48;
  v44 = v47;
  v45 = v48 & 1;
  v42[0] = sub_226099AA8();
  v42[1] = v14;
  sub_226099938();
  sub_225EFE6BC(v42);
  v41 = v42[2];
  if ((v40 & 1) == 0 && (v25 & 1) == 0 && (v27 & 1) == 0 && (v29 & 1) == 0 && (v31 & 1) == 0 && (v33 & 1) == 0 && (v35 & 1) == 0 && (v37 & 1) == 0 && (v39 & 1) == 0 && (v43 & 1) == 0)
  {
    sub_225F7C838();
    v17 = sub_225F26174();
    sub_225F7C89C();
    v19 = sub_225F26174();
    v18 = sub_225F26174();
    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v23 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v23 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v19 setEditDistance_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v24 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v24 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v19 setNumInsertions_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v26 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v26 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v19 setNumDeletions_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v28 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v28 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v19 setNumSubstitutions_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v19);
    if (v19)
    {
      if (v30 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v30 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v19 setReferenceSize_];
        MEMORY[0x277D82BD8](v19);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (v32 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v32 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v18 setEditDistance_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (v34 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v34 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v18 setNumInsertions_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (v36 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v36 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v18 setNumDeletions_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (v38 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v38 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v18 setNumSubstitutions_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v18);
    if (v18)
    {
      if (v41 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (v41 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v18 setReferenceSize_];
        MEMORY[0x277D82BD8](v18);
      }
    }

    MEMORY[0x277D82BE0](v17);
    if (v17)
    {
      [v17 setAsrOutputToUserEdit_];
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BE0](v17);
    if (v17)
    {
      [v17 setAsrFullPayloadCorrectedToUserEdit_];
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BE0](v17);
    if (v17)
    {
      if (a4 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (a4 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v17 setTrueCorrections_];
        MEMORY[0x277D82BD8](v17);
      }
    }

    MEMORY[0x277D82BE0](v17);
    if (v17)
    {
      if (a5 < 0)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
        __break(1u);
      }

      if (a5 > 0xFFFFFFFFLL)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
        __break(1u);
      }

      else
      {
        [v17 setTrueRegressions_];
        MEMORY[0x277D82BD8](v17);
      }
    }

    MEMORY[0x277D82BE0](v17);
    if (v17)
    {
      v16 = v17;
    }

    else
    {
      v16 = 0;
    }

    v15 = mach_absolute_time();
    sub_225F57040(a1, v16, v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v17);
  }
}

uint64_t sub_225F5FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = v3;
  *(v4 + 304) = a2;
  *(v4 + 296) = a1;
  *(v4 + 152) = v4;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = sub_226098C58();
  *(v4 + 320) = v5;
  *(v4 + 328) = *(v5 - 8);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;

  return MEMORY[0x2822009F8](sub_225F60078, 0, 0);
}

uint64_t sub_225F60078()
{
  v52 = v0;
  v1 = v0[43];
  v41 = v0[41];
  v42 = v0[40];
  v0[19] = v0;
  v2 = mach_absolute_time();
  v0[44] = v2;
  v0[22] = v2;
  v3 = sub_225F4C7E0();
  v43 = *(v41 + 16);
  v43(v1, v3, v42);
  v45 = sub_226098C48();
  v44 = sub_22609A078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v46 = sub_22609A4F8();
  if (os_log_type_enabled(v45, v44))
  {
    buf = sub_22609A188();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = sub_225EF5468(0, v35, v35);
    v38 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v40 + 264) = buf;
    *(v40 + 272) = v37;
    *(v40 + 280) = v38;
    sub_225EF54BC(0, (v40 + 264));
    sub_225EF54BC(0, (v40 + 264));
    *(v40 + 288) = v46;
    v39 = swift_task_alloc();
    v39[2] = v40 + 264;
    v39[3] = v40 + 272;
    v39[4] = v40 + 280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v45, v44, "FullPayloadCorrector::Running rewritePostITNOutput", buf, 2u);
    sub_225EF7AF4(v37, 0, v35);
    sub_225EF7AF4(v38, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v19 = *(v40 + 344);
  v21 = *(v40 + 336);
  v25 = *(v40 + 320);
  v22 = *(v40 + 304);
  v23 = *(v40 + 296);
  v18 = *(v40 + 328);
  MEMORY[0x277D82BD8](v45);
  v20 = *(v18 + 8);
  v20(v19, v25);
  sub_225F7C900();
  sub_2260998E8();
  v24 = sub_225F51668(v23, v22);
  *(v40 + 360) = v24;
  *(v40 + 184) = v24;
  v4 = sub_226099AE8();
  v26 = MEMORY[0x22AA72C90](v4);
  *(v40 + 192) = v26;

  v5 = sub_225F4C7E0();
  v43(v21, v5, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  oslog = sub_226098C48();
  v34 = sub_22609A078();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_225F2D734;
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_225F2D374;
  *(v31 + 24) = v28;
  sub_22609A4F8();
  v32 = v6;

  *v32 = sub_225EF7434;
  v32[1] = v29;

  v32[2] = sub_225EF7434;
  v32[3] = v30;

  v32[4] = sub_225EF71D0;
  v32[5] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(oslog, v34))
  {
    v15 = sub_22609A188();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = sub_225EF5468(0, v14, v14);
    v17 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v47 = v15;
    v48 = v16;
    v49 = v17;
    sub_225EF54BC(0, &v47);
    sub_225EF54BC(1, &v47);
    v50 = sub_225EF7434;
    v51 = v29;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7434;
    v51 = v30;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF71D0;
    v51 = v31;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_225EEB000, oslog, v34, "FullPayloadCorrector::Input: REDACTED InputUtf16Length: %ld", v15, 0xCu);
    sub_225EF7AF4(v16, 0, v14);
    sub_225EF7AF4(v17, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v10 = *(v40 + 336);
  v11 = *(v40 + 320);
  v12 = *(v40 + 312);
  MEMORY[0x277D82BD8](oslog);
  v20(v10, v11);
  v7 = *(v12 + 56);
  *(v40 + 368) = v7;
  MEMORY[0x277D82BE0](v7);
  v13 = (MEMORY[0x277D4B190] + *MEMORY[0x277D4B190]);
  v8 = swift_task_alloc();
  *(v40 + 376) = v8;
  *v8 = *(v40 + 152);
  v8[1] = sub_225F60B50;

  return v13(v24, 0, v26, 0);
}

uint64_t sub_225F60B50(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 152) = *v3;
  *(v6 + 384) = v2;
  *(v6 + 392) = a1;
  *(v6 + 400) = a2;

  if (v2)
  {
    v4 = sub_225F613F8;
  }

  else
  {

    v4 = sub_225F60CD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_225F60CD8()
{
  v30 = v0[50];
  v31 = v0[49];
  v0[19] = v0;
  sub_2260998E8();
  v0[13] = v31;
  v0[14] = v30;
  v0[26] = sub_22609A4F8();
  v0[27] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865D8, &qword_2260A0628);
  sub_225F7C964();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7865E8, &qword_2260A0630);
    sub_22609A388();
    v28 = *(v29 + 224);
    if (!v28)
    {
      break;
    }

    *(v29 + 240) = v28;
    *(v29 + 248) = [v28 resultType];
    *(v29 + 256) = 4;
    type metadata accessor for CheckingType(0);
    sub_225F7CA30();
    if (sub_22609A508())
    {
      [v28 range];
      v27 = [v28 grammarDetails];
      if (v27)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
        sub_226099C88();
        MEMORY[0x277D82BD8](v27);
      }

      nullsub_1();
      v24 = v1;
      v25 = v2;
      v26 = v3;
      *(v29 + 16) = v1;
      *(v29 + 24) = v2;
      *(v29 + 32) = v3;
      sub_2260998E8();
      *(v29 + 40) = v24;
      *(v29 + 48) = v25;
      *(v29 + 56) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786380, &qword_2260A0510);
      sub_226099CE8();

      MEMORY[0x277D82BD8](v28);
    }

    else
    {
      MEMORY[0x277D82BD8](v28);
    }
  }

  v20 = *(v29 + 296);
  sub_225EFE6E8((v29 + 120));
  sub_2260998E8();
  v21 = sub_225F4CBEC(v20);
  v22 = v4;
  v23 = v5;

  *(v29 + 64) = v21;
  *(v29 + 72) = v22;
  *(v29 + 80) = v23 & 1;
  if ((v23 & 1) == 0)
  {
    v12 = *(v29 + 352);
    sub_2260998E8();
    *(v29 + 136) = v21;
    *(v29 + 144) = v22;
    result = mach_absolute_time();
    if (result >= v12)
    {
      v10 = *(v29 + 360);
      v11 = sub_225F5AC0C(result - v12);
      sub_225F7C9EC(v21, v22, v23 & 1);
      sub_225EFE6E8((v29 + 208));
      sub_225F7C3B0((v29 + 104));
      MEMORY[0x277D82BD8](v10);
      v15 = v21;
      v16 = v22;
      v17 = 0;
      v18 = v11;
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = *(v29 + 352);
  v6 = v21;
  *(v29 + 232) = v21;
  v7 = v21;
  result = mach_absolute_time();
  if (result < v19)
  {
    goto LABEL_17;
  }

  v13 = *(v29 + 360);
  v14 = sub_225F5AC0C(result - v19);

  sub_225F7C9EC(v21, v22, v23 & 1);
  sub_225EFE6E8((v29 + 208));
  sub_225F7C3B0((v29 + 104));
  MEMORY[0x277D82BD8](v13);
  v15 = v21;
  v16 = 0;
  v17 = 1;
  v18 = v14;
LABEL_13:

  v9 = *(*(v29 + 152) + 8);

  return v9(v15, v16, v17 & 1, v18);
}

uint64_t sub_225F613F8()
{
  v10 = v0[48];
  v1 = v0[46];
  v11 = v0[44];
  v0[19] = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v10;
  v0[25] = v10;
  v3 = v10;
  result = mach_absolute_time();
  if (result < v11)
  {
    __break(1u);
  }

  else
  {
    v6 = v9[48];
    v7 = v9[45];
    v8 = sub_225F5AC0C(result - v11);

    MEMORY[0x277D82BD8](v7);

    v5 = *(v9[19] + 8);

    return v5(v10, 0, 1, v8);
  }

  return result;
}

uint64_t ASRFullPayloadCorrectionWorker.runWorker()()
{
  *(v1 + 2192) = v0;
  *(v1 + 1424) = v1;
  *(v1 + 1432) = 0;
  *(v1 + 1472) = 0;
  *(v1 + 1480) = 0;
  *(v1 + 1488) = 0;
  *(v1 + 1496) = 0;
  *(v1 + 1504) = 0;
  *(v1 + 1512) = 0;
  *(v1 + 73) = 0;
  *(v1 + 1024) = 0;
  *(v1 + 1032) = 0;
  *(v1 + 1616) = 0;
  *(v1 + 736) = 0;
  *(v1 + 744) = 0;
  *(v1 + 752) = 0;
  *(v1 + 1648) = 0;
  *(v1 + 1664) = 0;
  *(v1 + 1672) = 0;
  *(v1 + 1680) = 0;
  *(v1 + 1688) = 0;
  *(v1 + 1704) = 0;
  *(v1 + 1088) = 0;
  *(v1 + 1096) = 0;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 1000) = 0;
  *(v1 + 1008) = 0;
  *(v1 + 1016) = 0;
  *(v1 + 1104) = 0;
  *(v1 + 1112) = 0;
  *(v1 + 1120) = 0;
  *(v1 + 1128) = 0;
  *(v1 + 1136) = 0;
  *(v1 + 1144) = 0;
  *(v1 + 808) = 0;
  *(v1 + 816) = 0;
  *(v1 + 824) = 0;
  *(v1 + 832) = 0;
  *(v1 + 840) = 0;
  *(v1 + 848) = 0;
  *(v1 + 1712) = 0;
  *(v1 + 856) = 0;
  *(v1 + 864) = 0;
  *(v1 + 872) = 0;
  *(v1 + 880) = 0;
  *(v1 + 888) = 0;
  *(v1 + 896) = 0;
  memset((v1 + 256), 0, 0x28uLL);
  memset((v1 + 296), 0, 0x28uLL);
  *(v1 + 1720) = 0;
  *(v1 + 1728) = 0;
  *(v1 + 1736) = 0;
  *(v1 + 1744) = 0;
  *(v1 + 904) = 0;
  *(v1 + 912) = 0;
  *(v1 + 920) = 0;
  *(v1 + 1832) = 0;
  memset((v1 + 16), 0, 0x39uLL);
  *(v1 + 1864) = 0;
  *(v1 + 1216) = 0;
  *(v1 + 1224) = 0;
  *(v1 + 1232) = 0;
  *(v1 + 1240) = 0;
  *(v1 + 1872) = 0;
  *(v1 + 1968) = 0;
  *(v1 + 2000) = 0;
  *(v1 + 1328) = 0;
  *(v1 + 1336) = 0;
  *(v1 + 1408) = 0;
  *(v1 + 1416) = 0;
  *(v1 + 2008) = 0;
  *(v1 + 1432) = v0;

  return MEMORY[0x2822009F8](sub_225F617A4, 0, 0);
}

uint64_t sub_225F617A4(uint64_t a1)
{
  v279 = v1;
  MEMORY[0x28223BE20](a1);
  v255 = v1;
  *(v1 + 1424) = v1;
  v257 = sub_225F4C7E0();
  v258 = sub_226098C58();
  *(v1 + 2200) = v258;
  v256 = *(v258 - 8);
  *(v1 + 2208) = v256[8];
  v259 = swift_task_alloc();
  v260 = v256[2];
  *(v1 + 2216) = v260;
  *(v1 + 2224) = (v256 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v260(v259, v257, v258);
  oslog = sub_226098C48();
  v261 = sub_22609A078();
  *(v1 + 2232) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v263 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v261))
  {
    buf = sub_22609A188();
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v252 = sub_225EF5468(0, v250, v250);
    v253 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2160) = buf;
    *(v1 + 2168) = v252;
    *(v1 + 2176) = v253;
    sub_225EF54BC(0, (v1 + 2160));
    sub_225EF54BC(0, (v1 + 2160));
    *(v1 + 2184) = v263;
    v254 = swift_task_alloc();
    v254[2] = v1 + 2160;
    v254[3] = v1 + 2168;
    v254[4] = v1 + 2176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, oslog, v261, "ASRFullPayloadCorrectionWorker::Running", buf, 2u);
    sub_225EF7AF4(v252, 0, v250);
    sub_225EF7AF4(v253, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v249 = 0;
  }

  else
  {
  }

  MEMORY[0x277D82BD8](oslog);
  v248 = v256[1];
  *(v1 + 2240) = v248;
  *(v1 + 2248) = (v256 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v248(v259, v258);

  if (sub_226099E58())
  {
    v237 = *(v1 + 2192);
    v234 = sub_225F4C7E0();
    v235 = swift_task_alloc();
    v260(v235, v234, v258);

    log = sub_226098C48();
    v247 = sub_22609A078();
    v239 = swift_allocObject();
    *(v239 + 16) = 32;
    v240 = swift_allocObject();
    *(v240 + 16) = 8;
    v236 = swift_allocObject();
    *(v236 + 16) = sub_225F7D2E0;
    *(v236 + 24) = v237;
    v241 = swift_allocObject();
    *(v241 + 16) = sub_225EF7B84;
    *(v241 + 24) = v236;
    v242 = swift_allocObject();
    *(v242 + 16) = 32;
    v243 = swift_allocObject();
    *(v243 + 16) = 8;
    v238 = swift_allocObject();
    *(v238 + 16) = sub_225F7D2E8;
    *(v238 + 24) = v237;
    v244 = swift_allocObject();
    *(v244 + 16) = sub_225EF7B84;
    *(v244 + 24) = v238;
    sub_22609A4F8();
    v245 = v2;

    *v245 = sub_225EF7434;
    v245[1] = v239;

    v245[2] = sub_225EF7434;
    v245[3] = v240;

    v245[4] = sub_225EF7B90;
    v245[5] = v241;

    v245[6] = sub_225EF7434;
    v245[7] = v242;

    v245[8] = sub_225EF7434;
    v245[9] = v243;

    v245[10] = sub_225EF7B90;
    v245[11] = v244;
    sub_225EF5418();

    if (os_log_type_enabled(log, v247))
    {
      v231 = sub_22609A188();
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v232 = sub_225EF5468(0, v230, v230);
      v233 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v274 = v231;
      v275 = v232;
      v276 = v233;
      sub_225EF54BC(2, &v274);
      sub_225EF54BC(2, &v274);
      v277 = sub_225EF7434;
      v278 = v239;
      sub_225EF73E8(&v277, &v274, &v275, &v276);
      v277 = sub_225EF7434;
      v278 = v240;
      sub_225EF73E8(&v277, &v274, &v275, &v276);
      v277 = sub_225EF7B90;
      v278 = v241;
      sub_225EF73E8(&v277, &v274, &v275, &v276);
      v277 = sub_225EF7434;
      v278 = v242;
      sub_225EF73E8(&v277, &v274, &v275, &v276);
      v277 = sub_225EF7434;
      v278 = v243;
      sub_225EF73E8(&v277, &v274, &v275, &v276);
      v277 = sub_225EF7B90;
      v278 = v244;
      sub_225EF73E8(&v277, &v274, &v275, &v276);
      _os_log_impl(&dword_225EEB000, log, v247, "TaskId: %s, TaskName: %s: asked to stop!", v231, 0x16u);
      sub_225EF7AF4(v232, 0, v230);
      sub_225EF7AF4(v233, 2, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    MEMORY[0x277D82BD8](log);
    v248(v235, v258);

    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    goto LABEL_93;
  }

  if (!sub_225F7CAB0())
  {
    v33 = sub_225F4C7E0();
    v34 = swift_task_alloc();
    v260(v34, v33, v258);
    v36 = sub_226098C48();
    v35 = sub_22609A078();
    v37 = sub_22609A4F8();
    if (os_log_type_enabled(v36, v35))
    {
      v29 = sub_22609A188();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v30 = sub_225EF5468(0, v28, v28);
      v31 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v1 + 1440) = v29;
      *(v1 + 1448) = v30;
      *(v1 + 1456) = v31;
      sub_225EF54BC(0, (v1 + 1440));
      sub_225EF54BC(0, (v1 + 1440));
      *(v1 + 1464) = v37;
      v32 = swift_task_alloc();
      v32[2] = v1 + 1440;
      v32[3] = v1 + 1448;
      v32[4] = v1 + 1456;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v36, v35, "ASRFullPayloadCorrectionWorker::Unsupported device", v29, 2u);
      sub_225EF7AF4(v30, 0, v28);
      sub_225EF7AF4(v31, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    MEMORY[0x277D82BD8](v36);
    v248(v34, v258);

    goto LABEL_90;
  }

  v226 = sub_226098B28();
  *(v1 + 2256) = v226;
  v225 = *(v226 - 8);
  v224 = swift_task_alloc();
  *(v1 + 2264) = v224;
  v222 = sub_226098B88();
  v221 = *(v222 - 8);
  v223 = swift_task_alloc();
  v219 = sub_226098B48();
  v218 = *(v219 - 8);
  v220 = swift_task_alloc();
  sub_22609A4F8();
  v214 = v3;
  *v3 = sub_226099AA8();
  v214[1] = v4;
  sub_225EF5418();
  v216 = sub_226098B68();
  v215 = *(v216 - 8);
  v217 = swift_task_alloc();
  sub_226099AA8();
  sub_226098AA8();
  (*(v215 + 104))(v217, *MEMORY[0x277D0E2C8], v216);
  sub_226098B38();

  sub_226098B78();
  (*(v218 + 8))(v220, v219);

  sub_226098B58();
  (*(v221 + 8))(v223, v222);

  v228 = swift_task_alloc();
  (*(v225 + 104))(v228, *MEMORY[0x277D0E270], v226);
  sub_225F7CAC4();
  v229 = sub_2260999D8();
  v227 = *(v225 + 8);
  *(v1 + 2272) = v227;
  *(v1 + 2280) = (v225 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v227(v228, v226);

  if ((v229 & 1) == 0)
  {
    v209 = sub_225F4C7E0();
    v210 = swift_task_alloc();
    v260(v210, v209, v258);
    v212 = sub_226098C48();
    v211 = sub_22609A078();
    v213 = sub_22609A4F8();
    if (os_log_type_enabled(v212, v211))
    {
      v205 = sub_22609A188();
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v206 = sub_225EF5468(0, v204, v204);
      v207 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v1 + 2128) = v205;
      *(v1 + 2136) = v206;
      *(v1 + 2144) = v207;
      sub_225EF54BC(0, (v1 + 2128));
      sub_225EF54BC(0, (v1 + 2128));
      *(v1 + 2152) = v213;
      v208 = swift_task_alloc();
      v208[2] = v1 + 2128;
      v208[3] = v1 + 2136;
      v208[4] = v1 + 2144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v212, v211, "ASRFullPayloadCorrectionWorker::Worker unable to run", v205, 2u);
      sub_225EF7AF4(v206, 0, v204);
      sub_225EF7AF4(v207, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    MEMORY[0x277D82BD8](v212);
    v248(v210, v258);

    sub_225F7B6F4();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v227(v224, v226);

    goto LABEL_93;
  }

  v199 = sub_225F4C7E0();
  v200 = swift_task_alloc();
  v260(v200, v199, v258);
  v202 = sub_226098C48();
  v201 = sub_22609A078();
  v203 = sub_22609A4F8();
  if (os_log_type_enabled(v202, v201))
  {
    v195 = sub_22609A188();
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v196 = sub_225EF5468(0, v194, v194);
    v197 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2096) = v195;
    *(v1 + 2104) = v196;
    *(v1 + 2112) = v197;
    sub_225EF54BC(0, (v1 + 2096));
    sub_225EF54BC(0, (v1 + 2096));
    *(v1 + 2120) = v203;
    v198 = swift_task_alloc();
    v198[2] = v1 + 2096;
    v198[3] = v1 + 2104;
    v198[4] = v1 + 2112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v202, v201, "ASRFullPayloadCorrectionWorker::Worker able to run", v195, 2u);
    sub_225EF7AF4(v196, 0, v194);
    sub_225EF7AF4(v197, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v193 = 0;
  }

  else
  {

    v193 = v249;
  }

  v184 = *(v1 + 2192);
  MEMORY[0x277D82BD8](v202);
  v248(v200, v258);

  v175 = BiomeLibrary();
  swift_getObjectType();
  v174 = [v175 Dictation];
  swift_getObjectType();
  v180 = [v174 UserEdit];
  *(v1 + 2288) = v180;
  *(v1 + 1472) = v180;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_225F7CB3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640);
  v179 = swift_task_alloc();
  v176 = sub_226098A08();
  v177 = *(*(v176 - 8) + 56);
  v177(v179, 1);
  v178 = swift_task_alloc();
  (v177)(v178, 1, 1, v176);
  v181 = sub_225F79254(v179, v178, *(v184 + 72), *(v184 + 72), 0);
  *(v1 + 2296) = v181;

  *(v1 + 1480) = v181;
  v186 = loadBookmark(1);
  *(v1 + 2304) = v186;
  *(v1 + 1488) = v186;
  v183 = swift_allocObject();
  *(v1 + 2312) = v183;
  *(v1 + 1496) = v183 + 16;
  *(v183 + 16) = 0;
  v191 = swift_allocObject();
  *(v1 + 2320) = v191;
  *(v1 + 1504) = v191 + 16;
  *(v191 + 16) = 0;
  v185 = swift_allocObject();
  *(v1 + 2328) = v185;
  *(v1 + 1512) = v185 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786670, &qword_2260A0650);
  *(v185 + 16) = sub_22609A4F8();
  sub_226099AA8();
  sub_2260998E8();
  v182 = sub_2260999F8();
  MEMORY[0x277D82BE0](v182);

  MEMORY[0x277D82BD8](v182);
  MEMORY[0x277D82BE0](v181);
  v189 = [v180 publisherWithUseCase:v182 options:v181];
  MEMORY[0x277D82BD8](v181);
  MEMORY[0x277D82BD8](v182);

  v6 = swift_allocObject();
  *(v6 + 16) = v191;
  *(v6 + 24) = v183;
  *(v1 + 112) = sub_225F7CBA0;
  *(v1 + 120) = v6;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 92) = 0;
  *(v1 + 96) = sub_225F7A030;
  *(v1 + 104) = &block_descriptor_251;
  v188 = _Block_copy((v1 + 80));

  v7 = swift_allocObject();
  *(v7 + 16) = v184;
  *(v7 + 24) = v185;
  *(v1 + 160) = sub_225F7CC10;
  *(v1 + 168) = v7;
  *(v1 + 128) = MEMORY[0x277D85DD0];
  *(v1 + 136) = 1107296256;
  *(v1 + 140) = 0;
  *(v1 + 144) = sub_225F7B140;
  *(v1 + 152) = &block_descriptor_257;
  aBlock = _Block_copy((v1 + 128));

  v190 = [v189 drivableSinkWithBookmark:v186 completion:v188 shouldContinue:aBlock];
  _Block_release(aBlock);
  _Block_release(v188);
  MEMORY[0x277D82BD8](v189);
  MEMORY[0x277D82BD8](v190);
  swift_beginAccess();
  v192 = *(v191 + 16);
  swift_endAccess();
  if ((v192 & 1) == 0)
  {
    sub_225F7B6F4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v181);
    MEMORY[0x277D82BD8](v180);
    v227(v224, v226);

LABEL_93:
    v27 = *(*(v1 + 1424) + 8);

    return v27();
  }

  swift_beginAccess();
  v172 = *(v185 + 16);
  sub_2260998E8();
  swift_endAccess();
  *(v1 + 1520) = v172;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786678, &qword_2260A0658);
  sub_225F7CC80();
  v173 = sub_22609A008();

  if (v173)
  {

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v181);
    MEMORY[0x277D82BD8](v180);
    v227(v224, v226);

LABEL_90:
    v26 = *(*(v1 + 1424) + 8);

    return v26();
  }

  *(v1 + 73) = 0;
  swift_beginAccess();
  v170 = *(v185 + 16);
  sub_2260998E8();
  swift_endAccess();
  *(v1 + 1528) = v170;
  sub_22609A028();
  *(v1 + 74) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786688, &qword_2260A0660);
  sub_22609A388();
  v171 = *(v1 + 1536);
  *(v1 + 2336) = v171;
  if (!v171)
  {
    sub_225EFE6E8((v1 + 1024));
    swift_beginAccess();
    sub_2260998E8();
    swift_endAccess();
    v92 = sub_226099CD8();

    if (v92 > 0)
    {
      swift_beginAccess();
      sub_2260998E8();
      swift_endAccess();
      v91 = sub_226099CD8();

      if (v91 < 0)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
      }

      v86 = *(v1 + 2192);
      *(v1 + 1040) = 0;
      *(v1 + 1048) = v91;
      sub_225EF9438();
      sub_22609A3A8();
      v85 = *(v1 + 1608);
      *(v1 + 1616) = v85;
      swift_beginAccess();
      v87 = *(v86 + 112);
      sub_2260998E8();
      swift_endAccess();
      *(v1 + 1632) = v87;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
      v20 = sub_225F7CD08();
      MEMORY[0x22AA72D20](v88, v20);
      sub_225EFE6E8((v1 + 1632));
      *(v1 + 1640) = *(v1 + 1624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786698, &qword_2260A0668);
      sub_22609A3F8();
      v89 = 0;
      for (i = v193; ; i = v81)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866A0, &qword_2260A0670);
        sub_22609A408();
        memcpy((v1 + 176), (v1 + 216), 0x28uLL);
        if (!*(v1 + 208))
        {
          break;
        }

        v84 = *(v1 + 176);
        *(v1 + 1648) = v84;
        sub_225EF9790(v1 + 184, v1 + 376);
        sub_225EF3E30(v1 + 376, v1 + 408);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
        if (swift_dynamicCast())
        {
          v83 = *(v1 + 1656);
        }

        else
        {
          v83 = 0;
        }

        *(v1 + 1664) = v83;
        sub_2260998E8();
        if (v83)
        {
          *(v1 + 1672) = v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
          v82 = swift_task_alloc();
          *(v1 + 1056) = sub_226099AA8();
          *(v1 + 1064) = v21;
          sub_226099938();
          sub_225EFE6BC(v1 + 1056);
          if (*(v1 + 464))
          {
            v79 = sub_226098A78();
            v22 = swift_dynamicCast();
            if (v22)
            {
              (*(*(v79 - 8) + 56))(v82, 0, 1);
            }

            else
            {
              (*(*(v79 - 8) + 56))(v82, 1);
            }
          }

          else
          {
            sub_225F186BC((v1 + 440));
            v25 = sub_226098A78();
            (*(*(v25 - 8) + 56))(v82, 1);
          }

          *(v1 + 1072) = sub_226099AA8();
          *(v1 + 1080) = v23;
          sub_226099938();
          sub_225EFE6BC(v1 + 1072);
          if (*(v1 + 496))
          {
            if (swift_dynamicCast())
            {
              v78 = *(v1 + 1696);
            }

            else
            {
              v78 = 0;
            }

            v77 = v78;
          }

          else
          {
            sub_225F186BC((v1 + 472));
            v77 = 0;
          }

          *(v1 + 1680) = v77;
          v75 = sub_226098A78();
          v74 = *(v75 - 8);
          v73 = swift_task_alloc();
          v76 = swift_task_alloc();
          sub_225F7BF50(v82, v76);
          if ((*(v74 + 48))(v76, 1, v75) == 1)
          {
            sub_225F7C078(v76);

            v71 = v89;
            v72 = i;
          }

          else
          {
            v70 = *(v74 + 32);
            v70(v73, v76, v75);

            sub_2260998E8();
            if (v77)
            {
              *(v1 + 1688) = v77;
              if (v85 == v84)
              {
                v57 = *(v1 + 2216);
                v56 = *(v1 + 2200);
                v55 = sub_225F4C7E0();
                v58 = swift_task_alloc();
                v57(v58, v55, v56);
                v60 = swift_task_alloc();
                (*(v74 + 16))(v60, v73, v75);
                v59 = (*(v74 + 80) + 16) & ~*(v74 + 80);
                v61 = swift_allocObject();
                v70(v61 + v59, v60, v75);

                v62 = swift_allocObject();
                *(v62 + 16) = sub_225F7CD90;
                *(v62 + 24) = v61;

                v68 = sub_226098C48();
                v69 = sub_22609A078();
                v64 = swift_allocObject();
                *(v64 + 16) = 32;
                v65 = swift_allocObject();
                *(v65 + 16) = 8;
                v63 = swift_allocObject();
                *(v63 + 16) = sub_225F7CE04;
                *(v63 + 24) = v62;
                v66 = swift_allocObject();
                *(v66 + 16) = sub_225EF7B84;
                *(v66 + 24) = v63;
                sub_22609A4F8();
                v67 = v24;

                *v67 = sub_225EF7434;
                v67[1] = v64;

                v67[2] = sub_225EF7434;
                v67[3] = v65;

                v67[4] = sub_225EF7B90;
                v67[5] = v66;
                sub_225EF5418();

                if (os_log_type_enabled(v68, v69))
                {
                  v52 = sub_22609A188();
                  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                  v53 = sub_225EF5468(0, v51, v51);
                  v54 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v264 = v52;
                  v265 = v53;
                  v266 = v54;
                  sub_225EF54BC(2, &v264);
                  sub_225EF54BC(1, &v264);
                  v267 = sub_225EF7434;
                  v268 = v64;
                  sub_225EF73E8(&v267, &v264, &v265, &v266);
                  v267 = sub_225EF7434;
                  v268 = v65;
                  sub_225EF73E8(&v267, &v264, &v265, &v266);
                  v267 = sub_225EF7B90;
                  v268 = v66;
                  sub_225EF73E8(&v267, &v264, &v265, &v266);
                  _os_log_impl(&dword_225EEB000, v68, v69, "ASRFullPayloadCorrectionWorker::Chosen record is %s", v52, 0xCu);
                  sub_225EF7AF4(v53, 0, v51);
                  sub_225EF7AF4(v54, 1, MEMORY[0x277D84F70] + 8);
                  sub_22609A168();

                  v49 = 0;
                  v50 = 0;
                }

                else
                {

                  v49 = v89;
                  v50 = i;
                }

                v45 = *(v1 + 2240);
                v44 = *(v1 + 2200);
                MEMORY[0x277D82BD8](v68);
                v45(v58, v44);

                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v46 = sub_22609A3E8();
                sub_225F5D098(v73, v46, 1);

                v47 = v49;
                v48 = v50;
              }

              else
              {
                sub_2260998E8();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                v43 = sub_22609A3E8();
                sub_225F5D098(v73, v43, 0);

                v47 = v89;
                v48 = i;
              }

              (*(v74 + 8))(v73, v75);

              v71 = v47;
              v72 = v48;
            }

            else
            {
              (*(v74 + 8))(v73, v75);

              v71 = v89;
              v72 = i;
            }
          }

          sub_225F7C078(v82);

          v80 = v71;
          v81 = v72;
        }

        else
        {
          v80 = v89;
          v81 = i;
        }

        __swift_destroy_boxed_opaque_existential_0((v1 + 376));
        v89 = v80;
      }

      sub_225EFE6E8((v1 + 736));
      swift_beginAccess();
      sub_225F7B3F4();
      sub_226099CF8();
      swift_endAccess();
    }

    swift_beginAccess();
    swift_endAccess();
    v38 = *(v1 + 2296);
    v39 = *(v1 + 2288);
    v41 = *(v1 + 2272);
    v42 = *(v1 + 2264);
    v40 = *(v1 + 2256);

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    v41(v42, v40);

    goto LABEL_90;
  }

  *(v1 + 1704) = v171;
  if (sub_226099E58())
  {
    v156 = *(v1 + 2216);
    v155 = *(v1 + 2200);
    v159 = *(v1 + 2192);
    v154 = sub_225F4C7E0();
    v157 = swift_task_alloc();
    v156(v157, v154, v155);

    v168 = sub_226098C48();
    v169 = sub_22609A078();
    v161 = swift_allocObject();
    *(v161 + 16) = 32;
    v162 = swift_allocObject();
    *(v162 + 16) = 8;
    v158 = swift_allocObject();
    *(v158 + 16) = sub_225F7D2E0;
    *(v158 + 24) = v159;
    v163 = swift_allocObject();
    *(v163 + 16) = sub_225EF7B84;
    *(v163 + 24) = v158;
    v164 = swift_allocObject();
    *(v164 + 16) = 32;
    v165 = swift_allocObject();
    *(v165 + 16) = 8;
    v160 = swift_allocObject();
    *(v160 + 16) = sub_225F7D2E8;
    *(v160 + 24) = v159;
    v166 = swift_allocObject();
    *(v166 + 16) = sub_225EF7B84;
    *(v166 + 24) = v160;
    sub_22609A4F8();
    v167 = v9;

    *v167 = sub_225EF7434;
    v167[1] = v161;

    v167[2] = sub_225EF7434;
    v167[3] = v162;

    v167[4] = sub_225EF7B90;
    v167[5] = v163;

    v167[6] = sub_225EF7434;
    v167[7] = v164;

    v167[8] = sub_225EF7434;
    v167[9] = v165;

    v167[10] = sub_225EF7B90;
    v167[11] = v166;
    sub_225EF5418();

    if (os_log_type_enabled(v168, v169))
    {
      v151 = sub_22609A188();
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v152 = sub_225EF5468(0, v150, v150);
      v153 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v269 = v151;
      v270 = v152;
      v271 = v153;
      sub_225EF54BC(2, &v269);
      sub_225EF54BC(2, &v269);
      v272 = sub_225EF7434;
      v273 = v161;
      sub_225EF73E8(&v272, &v269, &v270, &v271);
      v272 = sub_225EF7434;
      v273 = v162;
      sub_225EF73E8(&v272, &v269, &v270, &v271);
      v272 = sub_225EF7B90;
      v273 = v163;
      sub_225EF73E8(&v272, &v269, &v270, &v271);
      v272 = sub_225EF7434;
      v273 = v164;
      sub_225EF73E8(&v272, &v269, &v270, &v271);
      v272 = sub_225EF7434;
      v273 = v165;
      sub_225EF73E8(&v272, &v269, &v270, &v271);
      v272 = sub_225EF7B90;
      v273 = v166;
      sub_225EF73E8(&v272, &v269, &v270, &v271);
      _os_log_impl(&dword_225EEB000, v168, v169, "TaskId: %s, TaskName: %s: asked to stop!", v151, 0x16u);
      sub_225EF7AF4(v152, 0, v150);
      sub_225EF7AF4(v153, 2, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v145 = *(v1 + 2296);
    v146 = *(v1 + 2288);
    v148 = *(v1 + 2272);
    v149 = *(v1 + 2264);
    v147 = *(v1 + 2256);
    v144 = *(v1 + 2240);
    v143 = *(v1 + 2200);
    MEMORY[0x277D82BD8](v168);
    v144(v157, v143);

    sub_226099D58();
    sub_225F7D2F0();
    swift_allocError();
    sub_226099858();
    swift_willThrow();
    MEMORY[0x277D82BD8](v171);
    sub_225EFE6E8((v1 + 1024));

    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v146);
    v148(v149, v147);

    goto LABEL_93;
  }

  v138 = *(v1 + 2216);
  v137 = *(v1 + 2200);
  v136 = sub_225F4C7E0();
  v139 = swift_task_alloc();
  v138(v139, v136, v137);
  v141 = sub_226098C48();
  v140 = sub_22609A078();
  v142 = sub_22609A4F8();
  if (os_log_type_enabled(v141, v140))
  {
    v132 = sub_22609A188();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v133 = sub_225EF5468(0, v131, v131);
    v134 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2064) = v132;
    *(v1 + 2072) = v133;
    *(v1 + 2080) = v134;
    sub_225EF54BC(0, (v1 + 2064));
    sub_225EF54BC(0, (v1 + 2064));
    *(v1 + 2088) = v142;
    v135 = swift_task_alloc();
    v135[2] = v1 + 2064;
    v135[3] = v1 + 2072;
    v135[4] = v1 + 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, v141, v140, "ASRFullPayloadCorrectionWorker::Processing individual Biome record", v132, 2u);
    sub_225EF7AF4(v133, 0, v131);
    sub_225EF7AF4(v134, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v129 = *(v1 + 2240);
  v128 = *(v1 + 2200);
  MEMORY[0x277D82BD8](v141);
  v129(v139, v128);

  v130 = [v171 eventBody];
  if (!v130)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 784, 0);
  }

  v127 = [v130 recognizedText];
  if (v127)
  {
    v123 = sub_226099A08();
    v124 = v11;
    MEMORY[0x277D82BD8](v127);
    v125 = v123;
    v126 = v124;
  }

  else
  {
    v125 = 0;
    v126 = 0;
  }

  *(v1 + 2352) = v126;
  *(v1 + 2344) = v125;
  MEMORY[0x277D82BD8](v130);
  if (!v126)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 784, 0);
  }

  *(v1 + 1088) = v125;
  *(v1 + 1096) = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
  v121 = swift_task_alloc();
  *(v1 + 2360) = v121;
  v12 = [v171 eventBody];
  v122 = v12;
  if (!v12)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 785, 0);
  }

  v13 = [v12 asrID];
  v120 = v13;
  if (v13)
  {
    sub_226099A08();
    v118 = v14;
    MEMORY[0x277D82BD8](v120);
    v119 = v118;
  }

  else
  {
    v119 = 0;
  }

  MEMORY[0x277D82BD8](v122);
  if (!v119)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 785, 0);
  }

  v101 = *(v1 + 2216);
  v100 = *(v1 + 2200);
  sub_226098A18();

  v107 = sub_226098A78();
  *(v1 + 2368) = v107;
  v15 = *(v107 - 8);
  v106 = v15;
  *(v1 + 2376) = v15;
  v104 = v15;
  v103 = swift_task_alloc();
  *(v1 + 2384) = v103;
  sub_226098A68();
  v99 = sub_225F4C7E0();
  v102 = swift_task_alloc();
  v101(v102, v99, v100);
  v108 = swift_task_alloc();
  v16 = *(v106 + 16);
  *(v1 + 2392) = v16;
  *(v1 + 2400) = (v106 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v108, v103, v107);
  v105 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v109 = swift_allocObject();
  (*(v106 + 32))(v109 + v105, v108, v107);

  v110 = swift_allocObject();
  *(v110 + 16) = sub_225F7CD90;
  *(v110 + 24) = v109;

  v116 = sub_226098C48();
  v117 = sub_22609A078();
  v112 = swift_allocObject();
  *(v112 + 16) = 32;
  v113 = swift_allocObject();
  *(v113 + 16) = 8;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_225F7CE04;
  *(v111 + 24) = v110;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_225EF7B84;
  *(v114 + 24) = v111;
  sub_22609A4F8();
  v115 = v17;

  *v115 = sub_225EF7434;
  v115[1] = v112;

  v115[2] = sub_225EF7434;
  v115[3] = v113;

  v115[4] = sub_225EF7B90;
  v115[5] = v114;
  sub_225EF5418();

  if (os_log_type_enabled(v116, v117))
  {
    v96 = sub_22609A188();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v97 = sub_225EF5468(0, v95, v95);
    v98 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2040) = v96;
    *(v1 + 2048) = v97;
    *(v1 + 2056) = v98;
    sub_225EF54BC(2, (v1 + 2040));
    sub_225EF54BC(1, (v1 + 2040));
    *(v1 + 1376) = sub_225EF7434;
    *(v1 + 1384) = v112;
    sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
    *(v1 + 1376) = sub_225EF7434;
    *(v1 + 1384) = v113;
    sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
    *(v1 + 1376) = sub_225EF7B90;
    *(v1 + 1384) = v114;
    sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
    _os_log_impl(&dword_225EEB000, v116, v117, "ASRFullPayloadCorrectionWorker::dodMLID for SELF logs %s", v96, 0xCu);
    sub_225EF7AF4(v97, 0, v95);
    sub_225EF7AF4(v98, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  *(v1 + 2408) = 0;
  v94 = *(v1 + 2240);
  v93 = *(v1 + 2200);
  MEMORY[0x277D82BD8](v116);
  v94(v102, v93);

  v18 = mach_absolute_time();
  sub_225F58E70(v103, v18, v121);
  v19 = swift_task_alloc();
  *(v255 + 2416) = v19;
  *v19 = *(v255 + 1424);
  v19[1] = sub_225F67044;

  return sub_225F5FED4(v125, v126, 0);
}

uint64_t sub_225F67044(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *v4;
  *(v6 + 1424) = *v4;
  *(v6 + 2424) = a1;
  *(v6 + 2432) = a2;
  *(v6 + 75) = a3;
  *(v6 + 2440) = a4;

  return MEMORY[0x2822009F8](sub_225F67194, 0, 0);
}

uint64_t sub_225F67194(uint64_t a1)
{
  v357 = v1;
  MEMORY[0x28223BE20](a1);
  v342 = v1;
  v346 = *(v1 + 2440);
  v2 = *(v1 + 75);
  v345 = v2;
  v344 = *(v1 + 2432);
  v343 = *(v1 + 2424);
  *(v1 + 1424) = v1;
  *(v1 + 504) = v343;
  *(v1 + 512) = v344;
  *(v1 + 520) = v2 & 1;
  *(v1 + 528) = v346;
  sub_225F7CED8(v343, v344, v2 & 1);
  sub_2260998E8();
  *(v1 + 1000) = v343;
  *(v1 + 1008) = v344;
  *(v1 + 1016) = v345 & 1;

  *(v1 + 1392) = 0;
  *(v1 + 1400) = 1;
  sub_225F7CED8(v343, v344, v345 & 1);
  sub_2260998E8();
  if (v346)
  {
    v252 = *(v1 + 2440);
    v13 = *(v1 + 75);
    v14 = *(v1 + 2432);
    v15 = *(v1 + 2424);
    v250 = *(v1 + 2216);
    v249 = *(v1 + 2200);
    *(v1 + 2000) = v252;
    sub_225F7C9EC(v15, v14, v13 & 1);
    v248 = sub_225F4C7E0();
    v251 = swift_task_alloc();
    v250(v251, v248, v249);
    sub_2260998E8();
    v253 = swift_allocObject();
    *(v253 + 16) = v252;

    v254 = swift_allocObject();
    *(v254 + 16) = sub_225F2CE08;
    *(v254 + 24) = v253;

    v260 = sub_226098C48();
    v261 = sub_22609A078();
    v256 = swift_allocObject();
    *(v256 + 16) = 32;
    v257 = swift_allocObject();
    *(v257 + 16) = 8;
    v255 = swift_allocObject();
    *(v255 + 16) = sub_225F4C3B4;
    *(v255 + 24) = v254;
    v258 = swift_allocObject();
    *(v258 + 16) = sub_225EF7B84;
    *(v258 + 24) = v255;
    sub_22609A4F8();
    v259 = v16;

    *v259 = sub_225EF7434;
    v259[1] = v256;

    v259[2] = sub_225EF7434;
    v259[3] = v257;

    v259[4] = sub_225EF7B90;
    v259[5] = v258;
    sub_225EF5418();

    if (os_log_type_enabled(v260, v261))
    {
      v17 = *(v1 + 2408);
      v242 = sub_22609A188();
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v243 = sub_225EF5468(0, v241, v241);
      v244 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v1 + 2016) = v242;
      *(v1 + 2024) = v243;
      *(v1 + 2032) = v244;
      sub_225EF54BC(2, (v1 + 2016));
      sub_225EF54BC(1, (v1 + 2016));
      *(v1 + 1360) = sub_225EF7434;
      *(v1 + 1368) = v256;
      sub_225EF73E8((v1 + 1360), v1 + 2016, v1 + 2024, v1 + 2032);
      if (v17)
      {
        goto LABEL_69;
      }

      *(v1 + 1360) = sub_225EF7434;
      *(v1 + 1368) = v257;
      sub_225EF73E8((v1 + 1360), v1 + 2016, v1 + 2024, v1 + 2032);
      *(v1 + 1360) = sub_225EF7B90;
      *(v1 + 1368) = v258;
      sub_225EF73E8((v1 + 1360), v1 + 2016, v1 + 2024, v1 + 2032);
      _os_log_impl(&dword_225EEB000, v260, v261, "ASRFullPayloadCorrectionWorker::Logging Info %s", v242, 0xCu);
      sub_225EF7AF4(v243, 0, v241);
      sub_225EF7AF4(v244, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v240 = 0;
      v239 = 0;
    }

    else
    {

      v240 = *(v1 + 2408);
    }

    v236 = *(v1 + 2240);
    v235 = *(v1 + 2200);
    MEMORY[0x277D82BD8](v260);
    v236(v251, v235);

    *(v1 + 1312) = sub_226099AA8();
    *(v1 + 1320) = v18;
    sub_226099938();
    sub_225EFE6BC(v1 + 1312);
    v237 = *(v1 + 1296);
    v238 = *(v1 + 1304);
    if (v238)
    {
      *(v1 + 1328) = v237;
      *(v1 + 1336) = v238;
      sub_2260998E8();
      *(v1 + 1344) = v237;
      *(v1 + 1352) = v238;
      sub_225F2CF00();
      v234 = COERCE_DOUBLE(sub_226099EB8());
      *(v1 + 1408) = v234;
      *(v1 + 1416) = v19 & 1;
      if (v19)
      {
        v230 = 0;
        v231 = 1;
      }

      else
      {
        *(v1 + 2008) = v234;
        if (((*&v234 >> 52) & 0x7FFLL) == 0x7FF)
        {
          return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to UInt64 because it is either infinite or NaN", 79, 2, "Swift/IntegerTypes.swift", 24, 2, 5923, 0);
        }

        if (v234 <= -1.0)
        {
          return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to UInt64 because the result would be less than UInt64.min", 91, 2, "Swift/IntegerTypes.swift", 24, 2, 5926, 0);
        }

        if (v234 >= 1.84467441e19)
        {
          return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to UInt64 because the result would be greater than UInt64.max", 94, 2, "Swift/IntegerTypes.swift", 24, 2, 5929, 0);
        }

        *(v1 + 1392) = v234;
        *(v1 + 1400) = 0;
        v230 = v234;
        v231 = 0;
      }

      v232 = v230;
      v233 = v231;
    }

    else
    {
      v232 = 0;
      v233 = 1;
    }

    v245 = v240;
    v246 = v232;
    v247 = v233;
    v229 = v239;
  }

  else
  {
    sub_225F7C9EC(*(v1 + 2424), *(v1 + 2432), *(v1 + 75) & 1);
    v245 = *(v1 + 2408);
    v246 = 0;
    v247 = 1;
  }

  if (*(v1 + 75))
  {
    v219 = *(v1 + 2424);
    v214 = *(v1 + 2384);
    v213 = *(v1 + 2360);
    v217 = *(v1 + 2216);
    v216 = *(v1 + 2200);
    v20 = v219;
    *(v1 + 1968) = v219;
    v21 = mach_absolute_time();
    sub_225F59320(v214, v21, v219, v246, v247 & 1, v213);
    v215 = sub_225F4C7E0();
    v218 = swift_task_alloc();
    v217(v218, v215, v216);
    v22 = v219;
    v220 = swift_allocObject();
    *(v220 + 16) = v219;
    sub_225F3EAE8();

    v227 = sub_226098C48();
    v228 = sub_22609A078();
    v223 = swift_allocObject();
    *(v223 + 16) = 64;
    v224 = swift_allocObject();
    *(v224 + 16) = 8;
    v221 = swift_allocObject();
    *(v221 + 16) = sub_225F3EA68;
    *(v221 + 24) = v220;
    v222 = swift_allocObject();
    *(v222 + 16) = sub_225F3EA70;
    *(v222 + 24) = v221;
    v225 = swift_allocObject();
    *(v225 + 16) = sub_225F3E1C8;
    *(v225 + 24) = v222;
    sub_22609A4F8();
    v226 = v23;

    *v226 = sub_225EF7434;
    v226[1] = v223;

    v226[2] = sub_225EF7434;
    v226[3] = v224;

    v226[4] = sub_225F3E358;
    v226[5] = v225;
    sub_225EF5418();

    if (os_log_type_enabled(v227, v228))
    {
      v210 = sub_22609A188();
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v211 = sub_225EF5468(1, v209, v209);
      v212 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v1 + 1976) = v210;
      *(v1 + 1984) = v211;
      *(v1 + 1992) = v212;
      sub_225EF54BC(2, (v1 + 1976));
      sub_225EF54BC(1, (v1 + 1976));
      *(v1 + 1280) = sub_225EF7434;
      *(v1 + 1288) = v223;
      sub_225EF73E8((v1 + 1280), v1 + 1976, v1 + 1984, v1 + 1992);
      if (v245)
      {
        goto LABEL_69;
      }

      *(v1 + 1280) = sub_225EF7434;
      *(v1 + 1288) = v224;
      sub_225EF73E8((v1 + 1280), v1 + 1976, v1 + 1984, v1 + 1992);
      *(v1 + 1280) = sub_225F3E358;
      *(v1 + 1288) = v225;
      sub_225EF73E8((v1 + 1280), v1 + 1976, v1 + 1984, v1 + 1992);
      _os_log_impl(&dword_225EEB000, v227, v228, "ASRFullPayloadCorrectionWorker::Processing individual Biome record failed with error %@", v210, 0xCu);
      sub_225EF7AF4(v211, 1, v209);
      sub_225EF7AF4(v212, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v207 = 0;
      v208 = 0;
    }

    else
    {

      v207 = v245;
      v208 = v229;
    }

    v203 = *(v1 + 2240);
    v202 = *(v1 + 2200);
    MEMORY[0x277D82BD8](v227);
    v203(v218, v202);

    v204 = v207;
    v205 = *(v1 + 74);
    v206 = v208;
    goto LABEL_90;
  }

  v193 = *(v1 + 2432);
  v192 = *(v1 + 2424);
  v187 = *(v1 + 2384);
  v184 = *(v1 + 2360);
  v185 = *(v1 + 2344);
  v190 = *(v1 + 2216);
  v189 = *(v1 + 2200);
  v186 = *(v1 + 2352);
  sub_2260998E8();
  *(v1 + 1104) = v192;
  *(v1 + 1112) = v193;
  *(v1 + 73) = 1;
  v24 = mach_absolute_time();
  sub_225F5A138(v187, v24, v246, v247 & 1, v185, v186, v192, v193, v184);
  v188 = sub_225F4C7E0();
  v191 = swift_task_alloc();
  v190(v191, v188, v189);
  sub_2260998E8();
  v194 = swift_allocObject();
  *(v194 + 16) = v192;
  *(v194 + 24) = v193;
  v200 = sub_226098C48();
  v201 = sub_22609A078();
  v196 = swift_allocObject();
  *(v196 + 16) = 32;
  v197 = swift_allocObject();
  *(v197 + 16) = 8;
  v195 = swift_allocObject();
  *(v195 + 16) = sub_225F7CF1C;
  *(v195 + 24) = v194;
  v198 = swift_allocObject();
  *(v198 + 16) = sub_225EF7B84;
  *(v198 + 24) = v195;
  sub_22609A4F8();
  v199 = v25;

  *v199 = sub_225EF7434;
  v199[1] = v196;

  v199[2] = sub_225EF7434;
  v199[3] = v197;

  v199[4] = sub_225EF7B90;
  v199[5] = v198;
  sub_225EF5418();

  if (os_log_type_enabled(v200, v201))
  {
    v181 = sub_22609A188();
    v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v182 = sub_225EF5468(0, v180, v180);
    v183 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 1944) = v181;
    *(v1 + 1952) = v182;
    *(v1 + 1960) = v183;
    sub_225EF54BC(2, (v1 + 1944));
    sub_225EF54BC(1, (v1 + 1944));
    *(v1 + 1264) = sub_225EF7434;
    *(v1 + 1272) = v196;
    sub_225EF73E8((v1 + 1264), v1 + 1944, v1 + 1952, v1 + 1960);
    if (v245)
    {
      goto LABEL_69;
    }

    *(v1 + 1264) = sub_225EF7434;
    *(v1 + 1272) = v197;
    sub_225EF73E8((v1 + 1264), v1 + 1944, v1 + 1952, v1 + 1960);
    *(v1 + 1264) = sub_225EF7B90;
    *(v1 + 1272) = v198;
    sub_225EF73E8((v1 + 1264), v1 + 1944, v1 + 1952, v1 + 1960);
    _os_log_impl(&dword_225EEB000, v200, v201, "ASRFullPayloadCorrectionWorker::Processing individual Biome record succeeded with outputString: %s", v181, 0xCu);
    sub_225EF7AF4(v182, 0, v180);
    sub_225EF7AF4(v183, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();

    v178 = 0;
    v179 = 0;
  }

  else
  {

    v178 = v245;
    v179 = v229;
  }

  v177 = *(v1 + 2432);
  v176 = *(v1 + 2240);
  v175 = *(v1 + 2200);
  MEMORY[0x277D82BD8](v200);
  v176(v191, v175);

  sub_2260998E8();
  if (!v177)
  {
    v173 = v178;
LABEL_89:

    v204 = v173;
    v205 = 1;
    v206 = v179;
LABEL_90:
    v138 = *(v1 + 75);
    v137 = *(v1 + 2432);
    v136 = *(v1 + 2424);
    v141 = *(v1 + 2384);
    v140 = *(v1 + 2368);
    v142 = *(v1 + 2360);
    v139 = *(v1 + 2376);
    v143 = *(v1 + 2336);
    sub_225F7C9EC(v136, v137, v138 & 1);
    sub_225F7C9EC(v136, v137, v138 & 1);

    (*(v139 + 8))(v141, v140);

    sub_225F7C078(v142);

    MEMORY[0x277D82BD8](v143);
    *(v1 + 74) = v205 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786688, &qword_2260A0660);
    sub_22609A388();
    v341 = *(v1 + 1536);
    *(v1 + 2336) = v341;
    if (!v341)
    {
      sub_225EFE6E8((v1 + 1024));
      swift_beginAccess();
      sub_2260998E8();
      swift_endAccess();
      v135 = sub_226099CD8();

      if (v135 <= 0)
      {
        v85 = v204;
      }

      else
      {
        swift_beginAccess();
        sub_2260998E8();
        swift_endAccess();
        v134 = sub_226099CD8();

        if (v134 < 0)
        {
          return sub_22609A3B8("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/Range.swift", 17, 2, 760, 0);
        }

        v129 = *(v1 + 2192);
        *(v1 + 1040) = 0;
        *(v1 + 1048) = v134;
        sub_225EF9438();
        sub_22609A3A8();
        v128 = *(v1 + 1608);
        *(v1 + 1616) = v128;
        swift_beginAccess();
        v130 = *(v129 + 112);
        sub_2260998E8();
        swift_endAccess();
        *(v1 + 1632) = v130;
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786418, &unk_2260A0568);
        v34 = sub_225F7CD08();
        MEMORY[0x22AA72D20](v131, v34);
        sub_225EFE6E8((v1 + 1632));
        *(v1 + 1640) = *(v1 + 1624);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786698, &qword_2260A0668);
        sub_22609A3F8();
        v132 = v204;
        for (i = v206; ; i = v124)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7866A0, &qword_2260A0670);
          sub_22609A408();
          memcpy((v1 + 176), (v1 + 216), 0x28uLL);
          if (!*(v1 + 208))
          {
            break;
          }

          v127 = *(v1 + 176);
          *(v1 + 1648) = v127;
          sub_225EF9790(v1 + 184, v1 + 376);
          sub_225EF3E30(v1 + 376, v1 + 408);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862C8, &qword_2260A0320);
          if (swift_dynamicCast())
          {
            v126 = *(v1 + 1656);
          }

          else
          {
            v126 = 0;
          }

          *(v1 + 1664) = v126;
          sub_2260998E8();
          if (v126)
          {
            *(v1 + 1672) = v126;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
            v125 = swift_task_alloc();
            *(v1 + 1056) = sub_226099AA8();
            *(v1 + 1064) = v35;
            sub_226099938();
            sub_225EFE6BC(v1 + 1056);
            if (*(v1 + 464))
            {
              v122 = sub_226098A78();
              v36 = swift_dynamicCast();
              if (v36)
              {
                (*(*(v122 - 8) + 56))(v125, 0, 1);
              }

              else
              {
                (*(*(v122 - 8) + 56))(v125, 1);
              }
            }

            else
            {
              sub_225F186BC((v1 + 440));
              v39 = sub_226098A78();
              (*(*(v39 - 8) + 56))(v125, 1);
            }

            *(v1 + 1072) = sub_226099AA8();
            *(v1 + 1080) = v37;
            sub_226099938();
            sub_225EFE6BC(v1 + 1072);
            if (*(v1 + 496))
            {
              if (swift_dynamicCast())
              {
                v121 = *(v1 + 1696);
              }

              else
              {
                v121 = 0;
              }

              v120 = v121;
            }

            else
            {
              sub_225F186BC((v1 + 472));
              v120 = 0;
            }

            *(v1 + 1680) = v120;
            v118 = sub_226098A78();
            v117 = *(v118 - 8);
            v116 = swift_task_alloc();
            v119 = swift_task_alloc();
            sub_225F7BF50(v125, v119);
            if ((*(v117 + 48))(v119, 1, v118) == 1)
            {
              sub_225F7C078(v119);

              v114 = v132;
              v115 = i;
            }

            else
            {
              v113 = *(v117 + 32);
              v113(v116, v119, v118);

              sub_2260998E8();
              if (v120)
              {
                *(v1 + 1688) = v120;
                if (v128 == v127)
                {
                  v100 = *(v1 + 2216);
                  v99 = *(v1 + 2200);
                  v98 = sub_225F4C7E0();
                  v101 = swift_task_alloc();
                  v100(v101, v98, v99);
                  v103 = swift_task_alloc();
                  (*(v117 + 16))(v103, v116, v118);
                  v102 = (*(v117 + 80) + 16) & ~*(v117 + 80);
                  v104 = swift_allocObject();
                  v113(v104 + v102, v103, v118);

                  v105 = swift_allocObject();
                  *(v105 + 16) = sub_225F7CD90;
                  *(v105 + 24) = v104;

                  v111 = sub_226098C48();
                  v112 = sub_22609A078();
                  v107 = swift_allocObject();
                  *(v107 + 16) = 32;
                  v108 = swift_allocObject();
                  *(v108 + 16) = 8;
                  v106 = swift_allocObject();
                  *(v106 + 16) = sub_225F7CE04;
                  *(v106 + 24) = v105;
                  v109 = swift_allocObject();
                  *(v109 + 16) = sub_225EF7B84;
                  *(v109 + 24) = v106;
                  sub_22609A4F8();
                  v110 = v38;

                  *v110 = sub_225EF7434;
                  v110[1] = v107;

                  v110[2] = sub_225EF7434;
                  v110[3] = v108;

                  v110[4] = sub_225EF7B90;
                  v110[5] = v109;
                  sub_225EF5418();

                  if (os_log_type_enabled(v111, v112))
                  {
                    v95 = sub_22609A188();
                    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
                    v96 = sub_225EF5468(0, v94, v94);
                    v97 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                    v347 = v95;
                    v348 = v96;
                    v349 = v97;
                    sub_225EF54BC(2, &v347);
                    sub_225EF54BC(1, &v347);
                    v350 = sub_225EF7434;
                    v351 = v107;
                    sub_225EF73E8(&v350, &v347, &v348, &v349);
                    if (v132)
                    {
                    }

                    v350 = sub_225EF7434;
                    v351 = v108;
                    sub_225EF73E8(&v350, &v347, &v348, &v349);
                    v350 = sub_225EF7B90;
                    v351 = v109;
                    sub_225EF73E8(&v350, &v347, &v348, &v349);
                    _os_log_impl(&dword_225EEB000, v111, v112, "ASRFullPayloadCorrectionWorker::Chosen record is %s", v95, 0xCu);
                    sub_225EF7AF4(v96, 0, v94);
                    sub_225EF7AF4(v97, 1, MEMORY[0x277D84F70] + 8);
                    sub_22609A168();

                    v92 = 0;
                    v93 = 0;
                  }

                  else
                  {

                    v92 = v132;
                    v93 = i;
                  }

                  v88 = *(v1 + 2240);
                  v87 = *(v1 + 2200);
                  MEMORY[0x277D82BD8](v111);
                  v88(v101, v87);

                  sub_2260998E8();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                  v89 = sub_22609A3E8();
                  sub_225F5D098(v116, v89, 1);

                  v90 = v92;
                  v91 = v93;
                }

                else
                {
                  sub_2260998E8();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786550, &qword_2260A05F0);
                  v86 = sub_22609A3E8();
                  sub_225F5D098(v116, v86, 0);

                  v90 = v132;
                  v91 = i;
                }

                (*(v117 + 8))(v116, v118);

                v114 = v90;
                v115 = v91;
              }

              else
              {
                (*(v117 + 8))(v116, v118);

                v114 = v132;
                v115 = i;
              }
            }

            sub_225F7C078(v125);

            v123 = v114;
            v124 = v115;
          }

          else
          {
            v123 = v132;
            v124 = i;
          }

          __swift_destroy_boxed_opaque_existential_0((v1 + 376));
          v132 = v123;
        }

        sub_225EFE6E8((v1 + 736));
        swift_beginAccess();
        sub_225F7B3F4();
        sub_226099CF8();
        swift_endAccess();
        v85 = v132;
      }

      v83 = *(v1 + 2320);
      swift_beginAccess();
      v84 = *(v83 + 16);
      swift_endAccess();
      if ((v84 & 1) == 0 || (v205 & 1) == 0)
      {
        goto LABEL_147;
      }

      v80 = *(v1 + 2312);
      swift_beginAccess();
      v81 = *(v80 + 16);
      swift_unknownObjectRetain();
      swift_endAccess();
      v82 = saveBookmark(1, v81);
      swift_unknownObjectRelease();
      if ((v82 & 1) == 0)
      {
        v75 = *(v1 + 2216);
        v74 = *(v1 + 2200);
        v73 = sub_225F4C7E0();
        v76 = swift_task_alloc();
        v75(v76, v73, v74);
        v78 = sub_226098C48();
        v77 = sub_22609A098();
        v79 = sub_22609A4F8();
        if (!os_log_type_enabled(v78, v77))
        {

          goto LABEL_140;
        }

        v69 = sub_22609A188();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v70 = sub_225EF5468(0, v68, v68);
        v71 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v1 + 1544) = v69;
        *(v1 + 1552) = v70;
        *(v1 + 1560) = v71;
        sub_225EF54BC(0, (v1 + 1544));
        sub_225EF54BC(0, (v1 + 1544));
        *(v1 + 1568) = v79;
        v72 = swift_task_alloc();
        v72[2] = v1 + 1544;
        v72[3] = v1 + 1552;
        v72[4] = v1 + 1560;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (!v85)
        {

          _os_log_impl(&dword_225EEB000, v78, v77, "ASRFullPayloadCorrectionWorker::Biome bookmark failed to update", v69, 2u);
          sub_225EF7AF4(v70, 0, v68);
          sub_225EF7AF4(v71, 0, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

LABEL_140:
          v63 = *(v1 + 2296);
          v64 = *(v1 + 2288);
          v66 = *(v1 + 2272);
          v67 = *(v1 + 2264);
          v65 = *(v1 + 2256);
          v62 = *(v1 + 2240);
          v61 = *(v1 + 2200);
          MEMORY[0x277D82BD8](v78);
          v62(v76, v61);

          sub_225F7B6F4();
          swift_allocError();
          *v40 = 2;
          swift_willThrow();

          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v63);
          MEMORY[0x277D82BD8](v64);
          v66(v67, v65);

LABEL_150:
          v41 = *(*(v1 + 1424) + 8);

          return v41();
        }
      }

      v56 = *(v1 + 2216);
      v55 = *(v1 + 2200);
      v54 = sub_225F4C7E0();
      v57 = swift_task_alloc();
      v56(v57, v54, v55);
      v59 = sub_226098C48();
      v58 = sub_22609A078();
      v60 = sub_22609A4F8();
      if (os_log_type_enabled(v59, v58))
      {
        v50 = sub_22609A188();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v51 = sub_225EF5468(0, v49, v49);
        v52 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v1 + 1576) = v50;
        *(v1 + 1584) = v51;
        *(v1 + 1592) = v52;
        sub_225EF54BC(0, (v1 + 1576));
        sub_225EF54BC(0, (v1 + 1576));
        *(v1 + 1600) = v60;
        v53 = swift_task_alloc();
        v53[2] = v1 + 1576;
        v53[3] = v1 + 1584;
        v53[4] = v1 + 1592;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
        sub_225EFE598();
        sub_226099C28();
        if (v85)
        {
        }

        _os_log_impl(&dword_225EEB000, v59, v58, "ASRFullPayloadCorrectionWorker::Biome bookmark updated", v50, 2u);
        sub_225EF7AF4(v51, 0, v49);
        sub_225EF7AF4(v52, 0, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v48 = *(v1 + 2240);
      v47 = *(v1 + 2200);
      MEMORY[0x277D82BD8](v59);
      v48(v57, v47);

LABEL_147:
      v42 = *(v1 + 2296);
      v43 = *(v1 + 2288);
      v45 = *(v1 + 2272);
      v46 = *(v1 + 2264);
      v44 = *(v1 + 2256);

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      v45(v46, v44);

      v41 = *(*(v1 + 1424) + 8);

      return v41();
    }

    *(v1 + 1704) = v341;
    if (sub_226099E58())
    {
      v327 = *(v1 + 2216);
      v326 = *(v1 + 2200);
      v330 = *(v1 + 2192);
      v325 = sub_225F4C7E0();
      v328 = swift_task_alloc();
      v327(v328, v325, v326);

      oslog = sub_226098C48();
      v340 = sub_22609A078();
      v332 = swift_allocObject();
      *(v332 + 16) = 32;
      v333 = swift_allocObject();
      *(v333 + 16) = 8;
      v329 = swift_allocObject();
      *(v329 + 16) = sub_225F7D2E0;
      *(v329 + 24) = v330;
      v334 = swift_allocObject();
      *(v334 + 16) = sub_225EF7B84;
      *(v334 + 24) = v329;
      v335 = swift_allocObject();
      *(v335 + 16) = 32;
      v336 = swift_allocObject();
      *(v336 + 16) = 8;
      v331 = swift_allocObject();
      *(v331 + 16) = sub_225F7D2E8;
      *(v331 + 24) = v330;
      v337 = swift_allocObject();
      *(v337 + 16) = sub_225EF7B84;
      *(v337 + 24) = v331;
      sub_22609A4F8();
      v338 = v3;

      *v338 = sub_225EF7434;
      v338[1] = v332;

      v338[2] = sub_225EF7434;
      v338[3] = v333;

      v338[4] = sub_225EF7B90;
      v338[5] = v334;

      v338[6] = sub_225EF7434;
      v338[7] = v335;

      v338[8] = sub_225EF7434;
      v338[9] = v336;

      v338[10] = sub_225EF7B90;
      v338[11] = v337;
      sub_225EF5418();

      if (os_log_type_enabled(oslog, v340))
      {
        buf = sub_22609A188();
        v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v323 = sub_225EF5468(0, v321, v321);
        v324 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v352 = buf;
        v353 = v323;
        v354 = v324;
        sub_225EF54BC(2, &v352);
        sub_225EF54BC(2, &v352);
        v355 = sub_225EF7434;
        v356 = v332;
        sub_225EF73E8(&v355, &v352, &v353, &v354);
        if (v204)
        {
        }

        v355 = sub_225EF7434;
        v356 = v333;
        sub_225EF73E8(&v355, &v352, &v353, &v354);
        v355 = sub_225EF7B90;
        v356 = v334;
        sub_225EF73E8(&v355, &v352, &v353, &v354);
        v355 = sub_225EF7434;
        v356 = v335;
        sub_225EF73E8(&v355, &v352, &v353, &v354);
        v355 = sub_225EF7434;
        v356 = v336;
        sub_225EF73E8(&v355, &v352, &v353, &v354);
        v355 = sub_225EF7B90;
        v356 = v337;
        sub_225EF73E8(&v355, &v352, &v353, &v354);
        _os_log_impl(&dword_225EEB000, oslog, v340, "TaskId: %s, TaskName: %s: asked to stop!", buf, 0x16u);
        sub_225EF7AF4(v323, 0, v321);
        sub_225EF7AF4(v324, 2, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }

      else
      {
      }

      v316 = *(v1 + 2296);
      v317 = *(v1 + 2288);
      v319 = *(v1 + 2272);
      v320 = *(v1 + 2264);
      v318 = *(v1 + 2256);
      v315 = *(v1 + 2240);
      v314 = *(v1 + 2200);
      MEMORY[0x277D82BD8](oslog);
      v315(v328, v314);

      sub_226099D58();
      sub_225F7D2F0();
      swift_allocError();
      sub_226099858();
      swift_willThrow();
      MEMORY[0x277D82BD8](v341);
      sub_225EFE6E8((v1 + 1024));

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v316);
      MEMORY[0x277D82BD8](v317);
      v319(v320, v318);

      goto LABEL_150;
    }

    v309 = *(v1 + 2216);
    v308 = *(v1 + 2200);
    v307 = sub_225F4C7E0();
    v310 = swift_task_alloc();
    v309(v310, v307, v308);
    log = sub_226098C48();
    v311 = sub_22609A078();
    v313 = sub_22609A4F8();
    if (!os_log_type_enabled(log, v311))
    {

      v301 = v204;
LABEL_15:
      v299 = *(v1 + 2240);
      v298 = *(v1 + 2200);
      MEMORY[0x277D82BD8](log);
      v299(v310, v298);

      v300 = [v341 eventBody];
      if (!v300)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 784, 0);
      }

      v297 = [v300 recognizedText];
      if (v297)
      {
        v293 = sub_226099A08();
        v294 = v5;
        MEMORY[0x277D82BD8](v297);
        v295 = v293;
        v296 = v294;
      }

      else
      {
        v295 = 0;
        v296 = 0;
      }

      *(v1 + 2352) = v296;
      *(v1 + 2344) = v295;
      MEMORY[0x277D82BD8](v300);
      if (!v296)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 784, 0);
      }

      *(v1 + 1088) = v295;
      *(v1 + 1096) = v296;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0);
      v291 = swift_task_alloc();
      *(v1 + 2360) = v291;
      v292 = [v341 eventBody];
      if (!v292)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 785, 0);
      }

      v6 = [v292 asrID];
      v290 = v6;
      if (v6)
      {
        sub_226099A08();
        v288 = v7;
        MEMORY[0x277D82BD8](v290);
        v289 = v288;
      }

      else
      {
        v289 = 0;
      }

      MEMORY[0x277D82BD8](v292);
      if (!v289)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/ASRFullPayloadCorrectionWorker.swift", 66, 2, 785, 0);
      }

      v271 = *(v1 + 2216);
      v270 = *(v1 + 2200);
      sub_226098A18();

      v277 = sub_226098A78();
      *(v1 + 2368) = v277;
      v8 = *(v277 - 8);
      v276 = v8;
      *(v1 + 2376) = v8;
      v274 = v8;
      v273 = swift_task_alloc();
      *(v1 + 2384) = v273;
      sub_226098A68();
      v269 = sub_225F4C7E0();
      v272 = swift_task_alloc();
      v271(v272, v269, v270);
      v278 = swift_task_alloc();
      v9 = *(v276 + 16);
      *(v1 + 2392) = v9;
      *(v1 + 2400) = (v276 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v278, v273, v277);
      v275 = (*(v274 + 80) + 16) & ~*(v274 + 80);
      v279 = swift_allocObject();
      (*(v276 + 32))(v279 + v275, v278, v277);

      v280 = swift_allocObject();
      *(v280 + 16) = sub_225F7CD90;
      *(v280 + 24) = v279;

      v286 = sub_226098C48();
      v287 = sub_22609A078();
      v282 = swift_allocObject();
      *(v282 + 16) = 32;
      v283 = swift_allocObject();
      *(v283 + 16) = 8;
      v281 = swift_allocObject();
      *(v281 + 16) = sub_225F7CE04;
      *(v281 + 24) = v280;
      v284 = swift_allocObject();
      *(v284 + 16) = sub_225EF7B84;
      *(v284 + 24) = v281;
      sub_22609A4F8();
      v285 = v10;

      *v285 = sub_225EF7434;
      v285[1] = v282;

      v285[2] = sub_225EF7434;
      v285[3] = v283;

      v285[4] = sub_225EF7B90;
      v285[5] = v284;
      sub_225EF5418();

      if (!os_log_type_enabled(v286, v287))
      {

        v264 = v301;
LABEL_35:
        *(v1 + 2408) = v264;
        v263 = *(v1 + 2240);
        v262 = *(v1 + 2200);
        MEMORY[0x277D82BD8](v286);
        v263(v272, v262);

        v11 = mach_absolute_time();
        sub_225F58E70(v273, v11, v291);
        v12 = swift_task_alloc();
        v342[302] = v12;
        *v12 = v342[178];
        v12[1] = sub_225F67044;

        return sub_225F5FED4(v295, v296, 0);
      }

      v266 = sub_22609A188();
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v267 = sub_225EF5468(0, v265, v265);
      v268 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v1 + 2040) = v266;
      *(v1 + 2048) = v267;
      *(v1 + 2056) = v268;
      sub_225EF54BC(2, (v1 + 2040));
      sub_225EF54BC(1, (v1 + 2040));
      *(v1 + 1376) = sub_225EF7434;
      *(v1 + 1384) = v282;
      sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
      if (!v301)
      {
        *(v1 + 1376) = sub_225EF7434;
        *(v1 + 1384) = v283;
        sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
        *(v1 + 1376) = sub_225EF7B90;
        *(v1 + 1384) = v284;
        sub_225EF73E8((v1 + 1376), v1 + 2040, v1 + 2048, v1 + 2056);
        _os_log_impl(&dword_225EEB000, v286, v287, "ASRFullPayloadCorrectionWorker::dodMLID for SELF logs %s", v266, 0xCu);
        sub_225EF7AF4(v267, 0, v265);
        sub_225EF7AF4(v268, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v264 = 0;
        goto LABEL_35;
      }

LABEL_69:
    }

    v303 = sub_22609A188();
    v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v304 = sub_225EF5468(0, v302, v302);
    v305 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 2064) = v303;
    *(v1 + 2072) = v304;
    *(v1 + 2080) = v305;
    sub_225EF54BC(0, (v1 + 2064));
    sub_225EF54BC(0, (v1 + 2064));
    *(v1 + 2088) = v313;
    v306 = swift_task_alloc();
    v306[2] = v1 + 2064;
    v306[3] = v1 + 2072;
    v306[4] = v1 + 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (!v204)
    {

      _os_log_impl(&dword_225EEB000, log, v311, "ASRFullPayloadCorrectionWorker::Processing individual Biome record", v303, 2u);
      sub_225EF7AF4(v304, 0, v302);
      sub_225EF7AF4(v305, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v301 = 0;
      goto LABEL_15;
    }
  }

  v26 = *(v1 + 2432);
  v27 = *(v1 + 2336);
  *(v1 + 1120) = *(v1 + 2424);
  *(v1 + 1128) = v26;
  v174 = [v27 eventBody];
  if (v174)
  {
    v28 = [v174 correctedText];
    v172 = v28;
    if (v28)
    {
      v168 = sub_226099A08();
      v169 = v29;
      MEMORY[0x277D82BD8](v172);
      v170 = v168;
      v171 = v169;
    }

    else
    {
      v170 = 0;
      v171 = 0;
    }

    MEMORY[0x277D82BD8](v174);
    v166 = v170;
    v167 = v171;
  }

  else
  {
    v166 = 0;
    v167 = 0;
  }

  *(v1 + 2456) = v167;
  *(v1 + 2448) = v166;
  if (!v167)
  {

    v173 = v178;
    goto LABEL_89;
  }

  v161 = *(v1 + 2216);
  v160 = *(v1 + 2200);
  *(v1 + 1136) = v166;
  *(v1 + 1144) = v167;
  v159 = sub_225F4C7E0();
  v162 = swift_task_alloc();
  v161(v162, v159, v160);
  v164 = sub_226098C48();
  v163 = sub_22609A078();
  v165 = sub_22609A4F8();
  if (os_log_type_enabled(v164, v163))
  {
    v155 = sub_22609A188();
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v156 = sub_225EF5468(0, v154, v154);
    v157 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v1 + 1912) = v155;
    *(v1 + 1920) = v156;
    *(v1 + 1928) = v157;
    sub_225EF54BC(0, (v1 + 1912));
    sub_225EF54BC(0, (v1 + 1912));
    *(v1 + 1936) = v165;
    v158 = swift_task_alloc();
    v158[2] = v1 + 1912;
    v158[3] = v1 + 1920;
    v158[4] = v1 + 1928;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    if (v178)
    {
    }

    _os_log_impl(&dword_225EEB000, v164, v163, "ASRFullPayloadCorrectionWorker::Generating confusion pairs for chosen record", v155, 2u);
    sub_225EF7AF4(v156, 0, v154);
    sub_225EF7AF4(v157, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v146 = *(v1 + 2344);
  v145 = *(v1 + 2240);
  v144 = *(v1 + 2200);
  v147 = *(v1 + 2352);
  MEMORY[0x277D82BD8](v164);
  v145(v162, v144);

  v153 = sub_225F51708(v146, v147);
  v148 = v30;
  *(v1 + 2464) = v30;
  v149 = sub_225F51708(v166, v167);
  v150 = v31;
  *(v1 + 2472) = v31;
  v151 = sub_226099AA8();
  v152 = v32;
  *(v1 + 2480) = v32;
  v33 = swift_task_alloc();
  v342[311] = v33;
  *v33 = v342[178];
  v33[1] = sub_225F6DD20;

  return sub_225F518C4(v153, v148, v149, v150, v151, v152);
}