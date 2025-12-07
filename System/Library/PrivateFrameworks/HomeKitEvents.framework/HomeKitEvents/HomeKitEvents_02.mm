uint64_t sub_254154FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v9 + 304) = v20;
  *(v9 + 312) = v8;
  *(v9 + 934) = a8;
  *(v9 + 933) = a7;
  *(v9 + 932) = a6;
  *(v9 + 288) = a4;
  *(v9 + 296) = a5;
  *(v9 + 272) = a2;
  *(v9 + 280) = a3;
  *(v9 + 264) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0);
  *(v9 + 320) = v10;
  *(v9 + 328) = *(v10 - 8);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v11 = type metadata accessor for SomeEvent(0);
  *(v9 + 360) = v11;
  *(v9 + 368) = *(v11 - 8);
  *(v9 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9100, &qword_254254520);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9108, &qword_254254528);
  *(v9 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v9 + 424) = v12;
  *(v9 + 432) = *(v12 - 8);
  *(v9 + 440) = swift_task_alloc();
  v13 = sub_25424D8B8();
  *(v9 + 448) = v13;
  *(v9 + 456) = *(v13 - 8);
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v9 + 480) = v14;
  *(v9 + 488) = *(v14 - 8);
  *(v9 + 496) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v9 + 504) = v15;
  *(v9 + 512) = *(v15 - 8);
  *(v9 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = type metadata accessor for CKQueryAsyncSequence(0);
  *(v9 + 560) = swift_task_alloc();
  type metadata accessor for EventQuery(0);
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v16 = sub_25424DAA8();
  *(v9 + 608) = v16;
  *(v9 + 616) = *(v16 - 8);
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  v17 = sub_25424D948();
  *(v9 + 672) = v17;
  *(v9 + 680) = *(v17 - 8);
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541555E4, 0, 0);
}

uint64_t sub_2541555E4()
{
  v148 = v0;
  v1 = *(v0 + 312);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (((*(v3 + 24))(v2, v3) & 1) == 0)
  {
    sub_25424E1E8();
    v14 = *(v0 + 768);
    v15 = *(v0 + 760);
    v16 = *(v0 + 680);
    v17 = *(v0 + 672);
    v18 = *(v0 + 664);
    v19 = *(v0 + 600);
    v20 = *(v0 + 312);
    sub_25424D938();
    sub_25421ACE8(v18);
    sub_25417C110(v20, v19, type metadata accessor for EventQuery);
    v21 = *(v16 + 16);
    *(v0 + 784) = v21;
    *(v0 + 792) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v146 = v21;
    v21(v15, v14, v17);
    v22 = sub_25424DA88();
    v23 = sub_25424E408();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 760);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    v28 = *(v0 + 664);
    v29 = *(v0 + 616);
    v30 = *(v0 + 608);
    v31 = *(v0 + 600);
    if (v24)
    {
      v144 = *(v0 + 608);
      v32 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v147[0] = v140;
      *v32 = 136446466;
      type metadata accessor for EventQuery.Configuration(0);
      v142 = v28;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v137 = v22;
      v33 = sub_25424EA58();
      v135 = v23;
      v35 = v34;
      sub_25417C0B0(v31, type metadata accessor for EventQuery);
      v36 = sub_2542203C4(v33, v35, v147);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v37 = sub_25424EA58();
      v39 = v38;
      v40 = *(v26 + 8);
      v40(v25, v27);
      v41 = sub_2542203C4(v37, v39, v147);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_254124000, v137, v135, "[%{public}s] Beginning subquery %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v140, -1, -1);
      MEMORY[0x259C07330](v32, -1, -1);

      v42 = *(v29 + 8);
      v42(v142, v144);
    }

    else
    {

      v40 = *(v26 + 8);
      v40(v25, v27);
      sub_25417C0B0(v31, type metadata accessor for EventQuery);
      v42 = *(v29 + 8);
      v42(v28, v30);
    }

    v145 = v40;
    *(v0 + 800) = v40;
    v43 = *(v0 + 752);
    v44 = *(v0 + 672);
    v45 = *(v0 + 312);
    v46 = *(v0 + 934);
    v47 = *(v0 + 933);
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = type metadata accessor for EventQuery.Configuration(0);
    *(v0 + 808) = v50;
    v51 = *(v50 + 24);
    *(v0 + 928) = v51;
    v52 = v45 + v51;
    v146(v43, v52, v44);
    v53 = sub_25417C454(v43, v49, 0, v46, v47 ^ 1u, v47);
    v54 = sub_25417DE78(v43, v48);
    v141 = v52;
    v143 = v50;
    if (v54)
    {
      v55 = v54;
      if (v53 >> 62)
      {
        v110 = sub_25424E868();
        if (v110 < 0)
        {
          __break(1u);
          return MEMORY[0x2822005A8](v110, v112, v113, v109, v111);
        }
      }

      sub_2541D2080(0, 0, v55);
    }

    v56 = *(v0 + 752);
    v57 = *(v0 + 744);
    v58 = *(v0 + 672);
    v59 = *(v0 + 656);
    sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
    v60 = sub_25424DF88();

    v61 = [objc_opt_self() andPredicateWithSubpredicates_];

    sub_25421ACE8(v59);
    v146(v57, v56, v58);
    v62 = v61;
    v63 = sub_25424DA88();
    v64 = sub_25424E418();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 744);
    v67 = *(v0 + 680);
    v68 = *(v0 + 672);
    v69 = *(v0 + 656);
    v138 = *(v0 + 616);
    v70 = *(v0 + 608);
    if (v65)
    {
      v136 = *(v0 + 608);
      v71 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v147[0] = v130;
      *v71 = 136315394;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v133 = v42;
      v72 = sub_25424EA58();
      v128 = v69;
      v73 = v62;
      v75 = v74;
      v132 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v145(v66, v68);
      v76 = sub_2542203C4(v72, v75, v147);

      *(v71 + 4) = v76;
      *(v71 + 12) = 2080;
      v77 = [v73 debugDescription];
      v78 = sub_25424DCB8();
      v80 = v79;

      v81 = v78;
      v62 = v73;
      v82 = sub_2542203C4(v81, v80, v147);

      *(v71 + 14) = v82;
      _os_log_impl(&dword_254124000, v63, v64, "[%s] Final predicate: %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v130, -1, -1);
      MEMORY[0x259C07330](v71, -1, -1);

      v83 = v138 + 8;
      v133(v128, v136);
    }

    else
    {

      v132 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v145(v66, v68);
      v83 = v138 + 8;
      v42(v69, v70);
    }

    *(v0 + 816) = v83;
    v121 = *(v0 + 768);
    v117 = *(v0 + 672);
    v118 = *(v0 + 752);
    v84 = *(v0 + 560);
    v85 = *(v0 + 552);
    v124 = *(v0 + 544);
    v131 = *(v0 + 496);
    v139 = *(v0 + 488);
    v134 = *(v0 + 480);
    v122 = *(v0 + 456);
    v123 = *(v0 + 448);
    v125 = *(v0 + 472);
    v126 = *(v0 + 432);
    v127 = *(v0 + 440);
    v129 = *(v0 + 424);
    v86 = *(v0 + 312);
    v115 = *(v0 + 932);
    v114 = *(v0 + 296);
    v116 = *(v0 + 288);
    v119 = *(v0 + 264);
    v120 = *(v0 + 272);
    sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
    v87 = v62;
    v88 = sub_25424E538();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_254254370;
    v90 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v91 = sub_25424DCA8();
    v92 = [v90 initWithKey:v91 ascending:0];

    *(v89 + 32) = v92;
    sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
    v93 = sub_25424DF88();

    [v88 setSortDescriptors_];

    *(v0 + 824) = v132;
    v145(v118, v117);
    sub_254160BA8(v114, v115 & 1, v86, v116);
    v95 = v94;
    LOBYTE(v92) = v96;
    v146(v84 + v85[7], v141, v117);
    v146(v84 + v85[8], v121, v117);
    v97 = v86 + *(v143 + 60);
    v98 = *v97;
    LOBYTE(v97) = *(v97 + 8);
    v99 = *(v86 + *(v143 + 64));
    *(v0 + 832) = v99;
    *v84 = v119;
    *(v84 + 8) = 0u;
    *(v84 + 24) = v120;
    *(v84 + 32) = v88;
    *(v84 + v85[9]) = &unk_286632F10;
    v100 = v84 + v85[10];
    *v100 = v95;
    *(v100 + 8) = v92 & 1;
    v101 = v84 + v85[11];
    *v101 = v98;
    *(v101 + 8) = v97;
    *(v84 + v85[12]) = v99;
    v102 = *(v122 + 56);
    *(v0 + 840) = v102;
    *(v0 + 848) = (v122 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v102(v124, 1, 1, v123);
    v103 = MEMORY[0x277D84F90];
    *(v0 + 240) = MEMORY[0x277D84F90];
    v104 = v119;
    swift_unknownObjectRetain();
    v105 = v120;
    sub_25424D898();
    v106 = swift_task_alloc();
    *(v106 + 16) = v84;
    *(v106 + 24) = v125;
    sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
    (*(v126 + 104))(v127, *MEMORY[0x277D858A0], v129);
    sub_25424E278();

    v107 = *(v122 + 8);
    *(v0 + 856) = v107;
    *(v0 + 864) = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v107(v125, v123);
    sub_25424E178();
    (*(v139 + 8))(v131, v134);
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 872) = v103;
    v108 = swift_task_alloc();
    *(v0 + 912) = v108;
    *v108 = v0;
    v108[1] = sub_2541569B4;
    v109 = *(v0 + 504);
    v110 = v0 + 248;
    v111 = v0 + 256;
    v112 = 0;
    v113 = 0;

    return MEMORY[0x2822005A8](v110, v112, v113, v109, v111);
  }

  v4 = *(v0 + 932);
  v5 = swift_task_alloc();
  *(v0 + 776) = v5;
  *v5 = v0;
  v5[1] = sub_2541563D4;
  v6 = *(v0 + 934);
  v7 = *(v0 + 933);
  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  v12 = *(v0 + 264);
  v150 = *(v0 + 304);

  return sub_25415B098(v12, v10, v11, v8, v9, v4 & 1, v7, v6);
}

uint64_t sub_2541563D4(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_2541569B4()
{
  *(*v1 + 920) = v0;

  if (v0)
  {
    v2 = sub_254158D38;
  }

  else
  {
    v2 = sub_254156AC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254156AC8(uint64_t a1)
{
  v354 = v1;
  v4 = v1 + 248;
  v3 = *(v1 + 248);
  if (v3)
  {
    v5 = *(v1 + 920);
    sub_25424E1E8();
    if (v5)
    {
      v6 = *(v1 + 800);
      v7 = *(v1 + 768);
      v8 = *(v1 + 672);
      v9 = *(v1 + 560);
      v10 = v3;
      v11 = *(v1 + 544);
      v12 = *(v1 + 520);
      v14 = *(v1 + 504);
      v13 = *(v1 + 512);

      (*(v13 + 8))(v12, v14);
      sub_254132E5C(v11, &unk_27F5BA1B0, qword_2542544A0);
      v6(v7, v8);
LABEL_6:
      sub_25417C0B0(v9, type metadata accessor for CKQueryAsyncSequence);

      v23 = *(v1 + 8);

      return v23();
    }

    v25 = *(v1 + 904);
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    v27 = *(v1 + 384);
    sub_2541612EC(v3, v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      v29 = *(v1 + 384);

      sub_254132E5C(v29, &qword_27F5B9100, &qword_254254520);
      goto LABEL_37;
    }

    v277 = v3;
    v352 = v26;
    v347 = v1 + 248;
    v316 = *(v1 + 736);
    v30 = *(v1 + 680);
    v31 = *(v1 + 672);
    v32 = *(v1 + 456);
    v33 = *(v1 + 448);
    v305 = *(v1 + 416);
    v330 = *(v1 + 464);
    v339 = *(v1 + 408);
    v35 = *(v1 + 392);
    v34 = *(v1 + 400);
    v36 = *(v1 + 384);
    v323 = *(v1 + 368);
    v350 = *(v1 + 360);
    v294 = *(v28 + 64);
    v37 = *(v35 + 48);
    v278 = *(v28 + 48);
    v283 = *(v35 + 64);
    sub_25417E6C8(v36, v34, &qword_27F5B9110, &qword_254254530);
    v38 = *(v30 + 32);
    v38(v34 + v37, v36 + v278, v31);
    v39 = *(v32 + 32);
    v39(v34 + v283, v36 + v294, v33);
    v40 = *(v35 + 48);
    v41 = *(v35 + 64);
    sub_25417E6C8(v34, v305, &qword_27F5B9110, &qword_254254530);
    v38(v316, v34 + v40, v31);
    v39(v330, v34 + v41, v33);
    sub_254132DF4(v305, v339, &qword_27F5B9110, &qword_254254530);
    if ((*(v323 + 48))(v339, 1, v350) == 1)
    {
      v42 = *(v1 + 856);
      v43 = *(v1 + 800);
      v44 = *(v1 + 736);
      v45 = *(v1 + 672);
      v46 = *(v1 + 464);
      v47 = *(v1 + 448);
      v48 = *(v1 + 416);
      v351 = *(v1 + 408);

      v42(v46, v47);
      v43(v44, v45);
      sub_254132E5C(v48, &qword_27F5B9110, &qword_254254530);
      sub_254132E5C(v351, &qword_27F5B9110, &qword_254254530);
LABEL_36:
      v4 = v347;
      v26 = v352;
LABEL_37:
      *(v1 + 904) = v26;
      v171 = swift_task_alloc();
      *(v1 + 912) = v171;
      *v171 = v1;
      v171[1] = sub_2541569B4;
      v155 = *(v1 + 504);
      v156 = v1 + 256;
      v152 = v4;
      v153 = 0;
      v154 = 0;

      return MEMORY[0x2822005A8](v152, v153, v154, v155, v156);
    }

    v49 = *(v1 + 312);
    sub_25417C178(*(v1 + 408), *(v1 + 376), type metadata accessor for SomeEvent);
    sub_2541DA834((v1 + 56));
    v50 = *(v1 + 80);
    v51 = *(v1 + 88);
    v52 = __swift_project_boxed_opaque_existential_1((v1 + 56), v50);
    *(v1 + 40) = v50;
    v53 = *(v51 + 8);
    *(v1 + 48) = v53;
    v349 = (v1 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
    (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v52, v50);
    __swift_destroy_boxed_opaque_existential_1((v1 + 56));
    v55 = sub_25417A418(boxed_opaque_existential_1, v49, v50, v53);
    v56 = *(v1 + 784);
    v57 = *(v1 + 736);
    v58 = *(v1 + 672);
    v59 = *(v1 + 312);
    if ((v55 & 1) == 0)
    {
      v83 = *(v1 + 728);
      v84 = *(v1 + 592);
      sub_25421ACE8(*(v1 + 648));
      sub_25417C110(v59, v84, type metadata accessor for EventQuery);
      v56(v83, v57, v58);
      v341 = (v1 + 96);
      sub_254140708(v349, v1 + 96);
      v85 = sub_25424DA88();
      v86 = sub_25424E408();
      if (os_log_type_enabled(v85, v86))
      {
        v280 = *(v1 + 800);
        v87 = *(v1 + 728);
        v88 = *(v1 + 672);
        v318 = *(v1 + 648);
        v296 = *(v1 + 616);
        v307 = *(v1 + 608);
        v89 = *(v1 + 592);
        v90 = swift_slowAlloc();
        v289 = swift_slowAlloc();
        v353[0] = v289;
        *v90 = 136446722;
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v91 = sub_25424EA58();
        v93 = v92;
        sub_25417C0B0(v89, type metadata accessor for EventQuery);
        v94 = sub_2542203C4(v91, v93, v353);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2082;
        v95 = sub_25424EA58();
        v97 = v96;
        v280(v87, v88);
        v98 = sub_2542203C4(v95, v97, v353);

        *(v90 + 14) = v98;
        *(v90 + 22) = 2080;
        __swift_project_boxed_opaque_existential_1(v341, *(v1 + 120));
        DynamicType = swift_getDynamicType();
        v100 = *(v1 + 128);
        *(v1 + 208) = DynamicType;
        *(v1 + 216) = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
        v101 = sub_25424DD08();
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_1(v341);
        v104 = sub_2542203C4(v101, v103, v353);

        *(v90 + 24) = v104;
        _os_log_impl(&dword_254124000, v85, v86, "[%{public}s] Ignoring record that does not match query: %{public}s, %s", v90, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v289, -1, -1);
        MEMORY[0x259C07330](v90, -1, -1);

        (*(v296 + 8))(v318, v307);
      }

      else
      {
        v135 = *(v1 + 800);
        v136 = *(v1 + 728);
        v137 = *(v1 + 672);
        v138 = *(v1 + 648);
        v139 = *(v1 + 616);
        v140 = *(v1 + 608);
        v141 = *(v1 + 592);

        __swift_destroy_boxed_opaque_existential_1(v341);
        v135(v136, v137);
        sub_25417C0B0(v141, type metadata accessor for EventQuery);
        (*(v139 + 8))(v138, v140);
      }

      v142 = *(v1 + 856);
      v331 = *(v1 + 800);
      v143 = *(v1 + 736);
      v144 = *(v1 + 672);
      v145 = *(v1 + 464);
      v146 = *(v1 + 448);
      v147 = *(v1 + 416);
      v148 = *(v1 + 376);
      sub_254163628(17);

      sub_25417C0B0(v148, type metadata accessor for SomeEvent);
      v142(v145, v146);
      v331(v143, v144);
      sub_254132E5C(v147, &qword_27F5B9110, &qword_254254530);
      __swift_destroy_boxed_opaque_existential_1(v349);
      goto LABEL_36;
    }

    v60 = *(v1 + 720);
    v61 = *(v1 + 584);
    sub_25421ACE8(*(v1 + 640));
    sub_25417C110(v59, v61, type metadata accessor for EventQuery);
    v56(v60, v57, v58);
    v340 = (v1 + 136);
    sub_254140708(v349, v1 + 136);
    v62 = sub_25424DA88();
    v63 = sub_25424E408();
    if (os_log_type_enabled(v62, v63))
    {
      v279 = *(v1 + 800);
      v64 = *(v1 + 720);
      v65 = *(v1 + 672);
      v317 = *(v1 + 640);
      v295 = *(v1 + 616);
      v306 = *(v1 + 608);
      v66 = *(v1 + 584);
      v67 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v353[0] = v288;
      *v67 = 136446722;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v68 = sub_25424EA58();
      v70 = v69;
      sub_25417C0B0(v66, type metadata accessor for EventQuery);
      v71 = sub_2542203C4(v68, v70, v353);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2082;
      v72 = sub_25424EA58();
      v74 = v73;
      v279(v64, v65);
      v75 = sub_2542203C4(v72, v74, v353);

      *(v67 + 14) = v75;
      *(v67 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1(v340, *(v1 + 160));
      v76 = swift_getDynamicType();
      v77 = *(v1 + 168);
      *(v1 + 224) = v76;
      *(v1 + 232) = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
      v78 = sub_25424DD08();
      v80 = v79;
      __swift_destroy_boxed_opaque_existential_1(v340);
      v81 = sub_2542203C4(v78, v80, v353);

      *(v67 + 24) = v81;
      _os_log_impl(&dword_254124000, v62, v63, "[%{public}s] Record contains an event that matches query: %{public}s: %s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v288, -1, -1);
      MEMORY[0x259C07330](v67, -1, -1);

      v82 = *(v295 + 8);
      v82(v317, v306);
    }

    else
    {
      v105 = *(v1 + 800);
      v106 = *(v1 + 720);
      v107 = *(v1 + 672);
      v108 = *(v1 + 640);
      v109 = *(v1 + 616);
      v110 = *(v1 + 608);
      v111 = *(v1 + 584);

      __swift_destroy_boxed_opaque_existential_1(v340);
      v105(v106, v107);
      sub_25417C0B0(v111, type metadata accessor for EventQuery);
      v82 = *(v109 + 8);
      v82(v108, v110);
    }

    v112 = *(v1 + 536);
    v113 = *(v1 + 448);
    v114 = *(v1 + 456);
    sub_254132DF4(*(v1 + 544), v112, &unk_27F5BA1B0, qword_2542544A0);
    v116 = *(v114 + 48);
    v2 = (v114 + 48);
    v115 = v116;
    if (v116(v112, 1, v113) == 1)
    {
      v284 = *(v1 + 840);
      v308 = *(v1 + 736);
      v319 = *(v1 + 784);
      v297 = *(v1 + 672);
      v117 = *(v1 + 544);
      v118 = *(v1 + 536);
      v119 = *(v1 + 456);
      v120 = *(v1 + 464);
      v121 = *(v1 + 448);
      v324 = *(v1 + 376);
      v122 = *(v1 + 352);
      v123 = *(v1 + 320);
      sub_254132E5C(v117, &unk_27F5BA1B0, qword_2542544A0);
      sub_254132E5C(v118, &unk_27F5BA1B0, qword_2542544A0);
      (*(v119 + 16))(v117, v120, v121);
      v284(v117, 0, 1, v121);
      v124 = *(v123 + 48);
      v319(v122, v308, v297);
      sub_25417C110(v324, v122 + v124, type metadata accessor for SomeEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v1 + 872);
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_22:
        v127 = v2[2];
        v126 = v2[3];
        v342 = v127 + 1;
        if (v127 >= v126 >> 1)
        {
          v2 = sub_2541B0F3C((v126 > 1), v127 + 1, 1, v2);
        }

        v128 = *(v1 + 856);
        v320 = *(v1 + 800);
        v129 = *(v1 + 736);
        v130 = *(v1 + 672);
        v131 = *(v1 + 464);
        v132 = *(v1 + 448);
        v309 = *(v1 + 416);
        v133 = *(v1 + 376);
        v134 = *(v1 + 352);
LABEL_34:
        v332 = v134;
        v167 = *(v1 + 328);

        sub_25417C0B0(v133, type metadata accessor for SomeEvent);
        v128(v131, v132);
        v320(v129, v130);
        sub_254132E5C(v309, &qword_27F5B9110, &qword_254254530);
        v168 = v2;
        v2[2] = v342;
        sub_25417E6C8(v332, v2 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v127, &qword_27F5B90F8, &unk_25425CBB0);
        *(v1 + 240) = v2;
        v169 = *(v1 + 896);
        v170 = *(v1 + 888);
        v2 = *(v1 + 880);
LABEL_35:
        __swift_destroy_boxed_opaque_existential_1(v349);
        *(v1 + 896) = v169;
        *(v1 + 888) = v170;
        *(v1 + 880) = v2;
        *(v1 + 872) = v168;
        goto LABEL_36;
      }

LABEL_79:
      v2 = sub_2541B0F3C(0, v2[2] + 1, 1, v2);
      goto LABEL_22;
    }

    v149 = *(v1 + 544);
    v150 = *(v1 + 528);
    v151 = *(v1 + 448);
    sub_254132E5C(*(v1 + 536), &unk_27F5BA1B0, qword_2542544A0);
    sub_254132DF4(v149, v150, &unk_27F5BA1B0, qword_2542544A0);
    v152 = v115(v150, 1, v151);
    if (v152 == 1)
    {
      __break(1u);
      return MEMORY[0x2822005A8](v152, v153, v154, v155, v156);
    }

    v157 = *(v1 + 856);
    v158 = *(v1 + 528);
    v159 = *(v1 + 448);
    v160 = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
    v157(v158, v159);
    v161 = *(v1 + 872);
    if (v160)
    {
      v162 = *(v1 + 376);
      v163 = *(v1 + 344);
      v164 = *(*(v1 + 320) + 48);
      (*(v1 + 784))(v163, *(v1 + 736), *(v1 + 672));
      sub_25417C110(v162, v163 + v164, type metadata accessor for SomeEvent);
      v165 = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v1 + 872);
      if ((v165 & 1) == 0)
      {
        v2 = sub_2541B0F3C(0, v2[2] + 1, 1, *(v1 + 872));
      }

      v127 = v2[2];
      v166 = v2[3];
      v342 = v127 + 1;
      if (v127 >= v166 >> 1)
      {
        v2 = sub_2541B0F3C((v166 > 1), v127 + 1, 1, v2);
      }

      v128 = *(v1 + 856);
      v320 = *(v1 + 800);
      v129 = *(v1 + 736);
      v130 = *(v1 + 672);
      v131 = *(v1 + 464);
      v132 = *(v1 + 448);
      v309 = *(v1 + 416);
      v133 = *(v1 + 376);
      v134 = *(v1 + 344);
      goto LABEL_34;
    }

    v172 = *(v1 + 932);
    (*(v1 + 784))(*(v1 + 712), *(v1 + 312) + *(v1 + 928), *(v1 + 672));
    v173 = sub_2541FA6F8(v161);
    if (v172)
    {
      v174 = *(v1 + 296);
      v175 = *(v1 + 896);
    }

    else
    {
      v175 = *(v1 + 896);
      v176 = *(v1 + 296);
      v174 = v176 - v175;
      if (__OFSUB__(v176, v175))
      {
        goto LABEL_81;
      }
    }

    v177 = *(v1 + 800);
    v172 = *(v1 + 712);
    v178 = *(v1 + 672);
    v179 = *(v1 + 544);
    v180 = sub_2541637DC(v172, v173, v174, *(v1 + 932) & 1, *(v1 + 304));
    v333 = v181;

    v177(v172, v178);
    sub_254132E5C(v179, &unk_27F5BA1B0, qword_2542544A0);
    v2 = (v175 + v180);
    if (!__OFADD__(v175, v180))
    {
      (*(v1 + 840))(*(v1 + 544), 1, 1, *(v1 + 448));
      v182 = *(v1 + 240);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v183 = v182[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_2541B0F3C(0, v183, 1, v182);
          *(v1 + 240) = v182;
        }

        sub_2541D21B8(0, v183, 0);
      }

      else
      {
        v184 = sub_2541ED0AC(0, v182[3] >> 1);

        v182 = v184;
      }

      v343 = v182;
      if ((*(v1 + 932) & 1) == 0 && v2 == *(v1 + 296))
      {
        v185 = *(v1 + 576);
        v186 = *(v1 + 312);
        sub_25421ACE8(*(v1 + 632));
        sub_25417C110(v186, v185, type metadata accessor for EventQuery);
        v187 = sub_25424DA88();
        v188 = sub_25424E408();
        v189 = os_log_type_enabled(v187, v188);
        v325 = *(v1 + 856);
        if (v189)
        {
          v281 = *(v1 + 736);
          v285 = *(v1 + 800);
          v190 = *(v1 + 672);
          v270 = *(v1 + 608);
          v271 = *(v1 + 632);
          v191 = *(v1 + 576);
          v310 = *(v1 + 520);
          v290 = *(v1 + 512);
          v298 = *(v1 + 504);
          v272 = *(v1 + 448);
          v273 = *(v1 + 464);
          v274 = *(v1 + 416);
          v268 = *(v1 + 296);
          v269 = *(v1 + 376);
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v353[0] = v193;
          *v192 = 136446466;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v194 = sub_25424EA58();
          v196 = v195;
          sub_25417C0B0(v191, type metadata accessor for EventQuery);
          v197 = sub_2542203C4(v194, v196, v353);

          *(v192 + 4) = v197;
          *(v192 + 12) = 2048;
          *(v192 + 14) = v268;
          _os_log_impl(&dword_254124000, v187, v188, "[%{public}s] Reached subquery limit: %ld", v192, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v193);
          MEMORY[0x259C07330](v193, -1, -1);
          MEMORY[0x259C07330](v192, -1, -1);

          v82(v271, v270);
          sub_25417C0B0(v269, type metadata accessor for SomeEvent);
          v325(v273, v272);
          v285(v281, v190);
          sub_254132E5C(v274, &qword_27F5B9110, &qword_254254530);
          (*(v290 + 8))(v310, v298);
        }

        else
        {
          v286 = *(v1 + 736);
          v291 = *(v1 + 800);
          v282 = *(v1 + 672);
          v221 = *(v1 + 632);
          v222 = *(v1 + 608);
          v223 = *(v1 + 576);
          v313 = *(v1 + 520);
          v224 = *(v1 + 512);
          v302 = *(v1 + 504);
          v225 = *(v1 + 464);
          v275 = *(v1 + 448);
          v276 = *(v1 + 416);
          v226 = *(v1 + 376);

          sub_25417C0B0(v223, type metadata accessor for EventQuery);
          v82(v221, v222);
          sub_25417C0B0(v226, type metadata accessor for SomeEvent);
          v325(v225, v275);
          v291(v286, v282);
          sub_254132E5C(v276, &qword_27F5B9110, &qword_254254530);
          (*(v224 + 8))(v313, v302);
        }

        __swift_destroy_boxed_opaque_existential_1(v349);
        v2 = *(v1 + 296);
        v15 = 1;
        goto LABEL_61;
      }

      v198 = *(v1 + 736);
      v199 = *(v1 + 672);
      if ((v333 & 1) == 0)
      {
        v216 = *(v1 + 856);
        v312 = *(v1 + 800);
        v217 = *(v1 + 512);
        v327 = *(v1 + 504);
        v335 = *(v1 + 520);
        v218 = *(v1 + 464);
        v219 = *(v1 + 448);
        v301 = *(v1 + 416);
        v220 = *(v1 + 376);

        sub_25417C0B0(v220, type metadata accessor for SomeEvent);
        v216(v218, v219);
        v312(v198, v199);
        sub_254132E5C(v301, &qword_27F5B9110, &qword_254254530);
        (*(v217 + 8))(v335, v327);
        __swift_destroy_boxed_opaque_existential_1(v349);
        v15 = 0;
LABEL_61:
        v18 = v2;
        v19 = v343;
        v4 = v1 + 248;
        v17 = v352;
        sub_25424E1E8();
        goto LABEL_62;
      }

      v299 = *(v1 + 840);
      v321 = *(v1 + 784);
      v200 = *(v1 + 544);
      v202 = *(v1 + 456);
      v201 = *(v1 + 464);
      v203 = *(v1 + 448);
      v334 = *(v1 + 376);
      v204 = *(v1 + 336);
      v205 = *(v1 + 320);
      sub_254132E5C(v200, &unk_27F5BA1B0, qword_2542544A0);
      (*(v202 + 16))(v200, v201, v203);
      v299(v200, 0, 1, v203);
      v206 = *(v205 + 48);
      v321(v204, v198, v199);
      sub_25417C110(v334, v204 + v206, type metadata accessor for SomeEvent);
      v172 = v343;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_55:
        v208 = *(v172 + 16);
        v207 = *(v172 + 24);
        if (v208 >= v207 >> 1)
        {
          v344 = sub_2541B0F3C((v207 > 1), v208 + 1, 1, v172);
        }

        else
        {
          v344 = v172;
        }

        v209 = *(v1 + 856);
        v311 = *(v1 + 800);
        v210 = *(v1 + 736);
        v211 = *(v1 + 672);
        v212 = *(v1 + 464);
        v213 = *(v1 + 448);
        v300 = *(v1 + 416);
        v214 = *(v1 + 376);
        v215 = *(v1 + 328);
        v326 = *(v1 + 336);

        sub_25417C0B0(v214, type metadata accessor for SomeEvent);
        v209(v212, v213);
        v311(v210, v211);
        sub_254132E5C(v300, &qword_27F5B9110, &qword_254254530);
        v168 = v344;
        v344[2] = v208 + 1;
        sub_25417E6C8(v326, v344 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v208, &qword_27F5B90F8, &unk_25425CBB0);
        *(v1 + 240) = v344;
        v170 = v2;
        v169 = v2;
        goto LABEL_35;
      }

LABEL_82:
      v172 = sub_2541B0F3C(0, *(v172 + 16) + 1, 1, v172);
      goto LABEL_55;
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  (*(*(v1 + 512) + 8))(*(v1 + 520), *(v1 + 504));
  v15 = 0;
  v16 = *(v1 + 920);
  v17 = *(v1 + 904);
  v18 = *(v1 + 888);
  v2 = *(v1 + 880);
  v19 = *(v1 + 872);
  sub_25424E1E8();
  if (v16)
  {
    v20 = *(v1 + 800);
    v21 = *(v1 + 768);
    v22 = *(v1 + 672);
    v9 = *(v1 + 560);
    sub_254132E5C(*(v1 + 544), &unk_27F5BA1B0, qword_2542544A0);
    v20(v21, v22);
    goto LABEL_6;
  }

LABEL_62:
  if (*(v19 + 16))
  {
    v227 = v15;
  }

  else
  {
    v227 = 1;
  }

  v352 = v17;
  if ((v227 & 1) == 0)
  {
    v228 = *(v1 + 932);
    (*(v1 + 784))(*(v1 + 704), *(v1 + 312) + *(v1 + 928), *(v1 + 672));
    v229 = sub_2541FA6F8(v19);

    v230 = *(v1 + 296);
    if ((v228 & 1) == 0)
    {
      v231 = __OFSUB__(v230, v18);
      v230 -= v18;
      if (v231)
      {
        goto LABEL_78;
      }
    }

    v2 = *(v1 + 824);
    v232 = *(v1 + 800);
    v233 = *(v1 + 704);
    v234 = *(v1 + 672);
    v235 = sub_2541637DC(v233, v229, v230, *(v1 + 932) & 1, *(v1 + 304));

    v232(v233, v234);
    v349 = (v18 + v235);
    if (!__OFADD__(v18, v235))
    {
      goto LABEL_70;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v349 = v2;

LABEL_70:
  v314 = *(v1 + 832);
  v303 = *(v1 + 928);
  v236 = *(v1 + 800);
  v237 = *(v1 + 784);
  v238 = *(v1 + 696);
  v345 = *(v1 + 688);
  v348 = *(v1 + 768);
  v239 = *(v1 + 672);
  v328 = *(v1 + 624);
  v336 = *(v1 + 568);
  v292 = *(v1 + 312);
  v237(v238, v292 + v303, v239);
  v240 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
  v241 = objc_allocWithZone(v240);
  v237(&v241[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v238, v239);
  v241[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 10;
  *&v241[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v241[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = v352;
  *&v241[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v1 + 176) = v241;
  *(v1 + 184) = v240;
  v242 = objc_msgSendSuper2((v4 - 72), sel_init);
  v236(v238, v239);
  [v314 submitLogEvent_];

  v237(v238, v292 + v303, v239);
  v243 = objc_allocWithZone(v240);
  v237(&v243[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v238, v239);
  v243[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 12;
  *&v243[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = v349;
  *&v243[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v243[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v1 + 192) = v243;
  *(v1 + 200) = v240;
  v244 = objc_msgSendSuper2((v4 - 56), sel_init);
  v236(v238, v239);
  [v314 submitLogEvent_];

  sub_25421ACE8(v328);
  sub_25417C110(v292, v336, type metadata accessor for EventQuery);
  v237(v345, v348, v239);
  v245 = sub_25424DA88();
  v246 = sub_25424E408();
  if (os_log_type_enabled(v245, v246))
  {
    v293 = *(v1 + 800);
    v337 = *(v1 + 768);
    v287 = *(v1 + 688);
    v247 = *(v1 + 672);
    v322 = *(v1 + 624);
    v304 = *(v1 + 616);
    v315 = *(v1 + 608);
    v248 = *(v1 + 568);
    v346 = *(v1 + 560);
    v329 = *(v1 + 544);
    v249 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v353[0] = v250;
    *v249 = 136446722;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v251 = sub_25424EA58();
    v253 = v252;
    sub_25417C0B0(v248, type metadata accessor for EventQuery);
    v254 = sub_2542203C4(v251, v253, v353);

    *(v249 + 4) = v254;
    *(v249 + 12) = 2082;
    v255 = sub_25424EA58();
    v257 = v256;
    v293(v287, v247);
    v258 = sub_2542203C4(v255, v257, v353);

    *(v249 + 14) = v258;
    *(v249 + 22) = 2048;
    *(v249 + 24) = v349;
    _os_log_impl(&dword_254124000, v245, v246, "[%{public}s] Finished subquery %{public}s, emitted %ld matching event(s)", v249, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v250, -1, -1);
    MEMORY[0x259C07330](v249, -1, -1);

    (*(v304 + 8))(v322, v315);
    sub_254132E5C(v329, &unk_27F5BA1B0, qword_2542544A0);
    v293(v337, v247);
  }

  else
  {
    v259 = *(v1 + 800);
    v260 = *(v1 + 688);
    v261 = *(v1 + 672);
    v262 = *(v1 + 624);
    v263 = *(v1 + 616);
    v264 = *(v1 + 608);
    v265 = *(v1 + 568);
    v338 = *(v1 + 768);
    v346 = *(v1 + 560);
    v266 = *(v1 + 544);

    v259(v260, v261);
    sub_25417C0B0(v265, type metadata accessor for EventQuery);
    (*(v263 + 8))(v262, v264);
    sub_254132E5C(v266, &unk_27F5BA1B0, qword_2542544A0);
    v259(v338, v261);
  }

  sub_25417C0B0(v346, type metadata accessor for CKQueryAsyncSequence);

  v267 = *(v1 + 8);

  return v267(v349);
}

uint64_t sub_254158D38()
{
  v1 = v0[100];
  v2 = v0[96];
  v3 = v0[84];
  v4 = v0[70];
  v5 = v0[68];
  (*(v0[64] + 8))(v0[65], v0[63]);
  sub_254132E5C(v5, &unk_27F5BA1B0, qword_2542544A0);
  v1(v2, v3);
  sub_25417C0B0(v4, type metadata accessor for CKQueryAsyncSequence);

  v6 = v0[1];

  return v6();
}

uint64_t sub_254159034(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for EncryptionKeyQuery(0);
  v2[7] = swift_task_alloc();
  v3 = sub_25424D948();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for EventQuery(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = sub_25424DAA8();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25415923C, 0, 0);
}

uint64_t sub_25415923C()
{
  v1 = *(v0 + 40);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = type metadata accessor for EventQuery.Configuration(0);
    *(v0 + 216) = v5;
    v6 = *(v5 + 72);
    *(v0 + 296) = v6;
    v7 = *(v4 + v6 + 24);
    v8 = *(v4 + v6 + 32);
    __swift_project_boxed_opaque_existential_1((v4 + v6), v7);
    v9 = *(v5 + 28);
    *(v0 + 300) = v9;
    v13 = (*(v8 + 32) + **(v8 + 32));
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    v10[1] = sub_2541594D4;

    return v13(v0 + 16, v4 + v9, v7, v8);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_2541594D4()
{

  return MEMORY[0x2822009F8](sub_2541595D0, 0, 0);
}

uint64_t sub_2541595D0(uint64_t a1)
{
  v93 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = *(v1 + 40);
    sub_25421ACE8(*(v1 + 208));
    sub_25417C110(v4, v3, type metadata accessor for EventQuery);
    swift_bridgeObjectRetain_n();
    v5 = sub_25424DA88();
    v6 = sub_25424E408();
    v91 = v2;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v1 + 176);
      v86 = *(v1 + 168);
      v89 = *(v1 + 208);
      v8 = *(v1 + 160);
      v9 = v2;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v92 = v11;
      *v10 = 136446466;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v12 = sub_25424EA58();
      v14 = v13;
      sub_25417C0B0(v8, type metadata accessor for EventQuery);
      v15 = sub_2542203C4(v12, v14, &v92);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2048;
      v16 = *(v9 + 16);

      *(v10 + 14) = v16;

      _os_log_impl(&dword_254124000, v5, v6, "[%{public}s] Reusing %ld cached encryption key(s)", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x259C07330](v11, -1, -1);
      MEMORY[0x259C07330](v10, -1, -1);

      (*(v7 + 8))(v89, v86);
    }

    else
    {
      v42 = *(v1 + 208);
      v44 = *(v1 + 168);
      v43 = *(v1 + 176);
      v45 = *(v1 + 160);
      swift_bridgeObjectRelease_n();

      sub_25417C0B0(v45, type metadata accessor for EventQuery);
      (*(v43 + 8))(v42, v44);
    }

    v46 = *(v1 + 8);

    return v46(v91);
  }

  else
  {
    v17 = *(v1 + 200);
    v18 = *(v1 + 152);
    v20 = *(v1 + 112);
    v19 = *(v1 + 120);
    v21 = *(v1 + 64);
    v22 = *(v1 + 72);
    v23 = *(v1 + 40);
    sub_25424D938();
    sub_25421ACE8(v17);
    sub_25417C110(v23, v18, type metadata accessor for EventQuery);
    v90 = *(v22 + 16);
    v90(v20, v19, v21);
    v24 = sub_25424DA88();
    v25 = sub_25424E408();
    if (os_log_type_enabled(v24, v25))
    {
      v79 = v25;
      v81 = *(v1 + 176);
      v84 = *(v1 + 168);
      v87 = *(v1 + 200);
      v26 = *(v1 + 152);
      v27 = *(v1 + 112);
      v29 = *(v1 + 64);
      v28 = *(v1 + 72);
      v30 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v92 = v77;
      *v30 = 136446466;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = sub_25424EA58();
      v33 = v32;
      sub_25417C0B0(v26, type metadata accessor for EventQuery);
      v34 = sub_2542203C4(v31, v33, &v92);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = v27;
      v36 = sub_25424EA58();
      v38 = v37;
      v39 = *(v28 + 8);
      v39(v35, v29);
      v40 = sub_2542203C4(v36, v38, &v92);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_254124000, v24, v79, "[%{public}s] Fetching encryption keys with query identifier %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v77, -1, -1);
      MEMORY[0x259C07330](v30, -1, -1);

      v41 = *(v81 + 8);
      v41(v87, v84);
    }

    else
    {
      v48 = *(v1 + 200);
      v49 = *(v1 + 168);
      v50 = *(v1 + 176);
      v51 = *(v1 + 152);
      v52 = *(v1 + 112);
      v53 = *(v1 + 64);
      v54 = *(v1 + 72);

      v39 = *(v54 + 8);
      v39(v52, v53);
      sub_25417C0B0(v51, type metadata accessor for EventQuery);
      v41 = *(v50 + 8);
      v41(v48, v49);
    }

    v88 = v39;
    *(v1 + 232) = v41;
    *(v1 + 240) = v39;
    v78 = *(v1 + 120);
    v56 = *(v1 + 96);
    v55 = *(v1 + 104);
    v57 = *(v1 + 88);
    v80 = *(v1 + 80);
    v82 = *(v1 + 216);
    v58 = *(v1 + 56);
    v59 = *(v1 + 64);
    v61 = *(v1 + 40);
    v60 = *(v1 + 48);
    v85 = *(v1 + 32);
    v90(v55, v61 + *(v1 + 300), v59);
    v90(v56, v78, v59);
    v62 = (v61 + *(v82 + 60));
    v83 = *v62;
    LOBYTE(v61) = *(v62 + 8);
    v90(v57, v55, v59);
    v90(v80, v56, v59);
    v90(v58, v57, v59);
    *(v58 + v60[5]) = 0;
    v90(v58 + v60[6], v80, v59);
    v63 = v58 + v60[7];
    *v63 = 0;
    *(v63 + 8) = 1;
    v64 = v58 + v60[8];
    *v64 = v83;
    *(v64 + 8) = v61;
    v65 = (v58 + v60[9]);
    v65[1] = 0;
    v65[2] = 0;
    *v65 = v85;
    v66 = qword_27F5B8468;
    v67 = v85;
    if (v66 != -1)
    {
      swift_once();
    }

    v68 = *(v1 + 96);
    v69 = *(v1 + 104);
    v70 = *(v1 + 80);
    v71 = *(v1 + 88);
    v72 = *(v1 + 64);
    v74 = *(v1 + 48);
    v73 = *(v1 + 56);
    v75 = off_27F5BAFB0;
    *(v1 + 248) = (*(v1 + 72) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v88(v70, v72);
    v88(v71, v72);
    v88(v68, v72);
    v88(v69, v72);
    *(v73 + *(v74 + 40)) = v75[2];
    swift_unknownObjectRetain();
    v76 = swift_task_alloc();
    *(v1 + 256) = v76;
    *v76 = v1;
    v76[1] = sub_254159E1C;

    return EncryptionKeyQuery.fetchKeys()();
  }
}

uint64_t sub_254159E1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_25415AA04;
  }

  else
  {
    v4 = sub_254159F30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254159F30(uint64_t a1)
{
  v76 = v1;
  v2 = *(v1 + 144);
  v3 = *(v1 + 40);
  sub_25421ACE8(*(v1 + 192));
  sub_25417C110(v3, v2, type metadata accessor for EventQuery);
  swift_bridgeObjectRetain_n();
  v4 = sub_25424DA88();
  v5 = sub_25424E408();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 264);
  v8 = *(v1 + 232);
  if (v6)
  {
    v70 = *(v1 + 168);
    v72 = *(v1 + 192);
    v9 = *(v1 + 144);
    v10 = *(v1 + 232);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v75[0] = v12;
    *v11 = 136446466;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_25424EA58();
    v15 = v14;
    sub_25417C0B0(v9, type metadata accessor for EventQuery);
    v16 = sub_2542203C4(v13, v15, v75);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    v17 = *(v7 + 16);

    *(v11 + 14) = v17;

    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Fetched %ld encryption key(s)", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x259C07330](v12, -1, -1);
    MEMORY[0x259C07330](v11, -1, -1);

    v10(v72, v70);
  }

  else
  {
    v18 = *(v1 + 192);
    v19 = *(v1 + 168);
    v20 = *(v1 + 144);
    swift_bridgeObjectRelease_n();

    sub_25417C0B0(v20, type metadata accessor for EventQuery);
    v8(v18, v19);
  }

  v21 = *(v1 + 264);
  v22 = *(v1 + 216);
  v23 = *(v1 + 40);
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  v25 = sub_2541DD888(sub_25417E730, v24, v21);

  v26 = *(v23 + *(v22 + 68));
  if (v26 < v25[2])
  {
    v28 = *(v1 + 128);
    v27 = *(v1 + 136);
    v29 = *(v1 + 40);
    sub_25421ACE8(*(v1 + 184));
    sub_25417C110(v29, v27, type metadata accessor for EventQuery);
    sub_25417C110(v29, v28, type metadata accessor for EventQuery);
    v30 = sub_25424DA88();
    v31 = sub_25424E448();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v1 + 232);
    if (v32)
    {
      v71 = *(v1 + 168);
      v73 = *(v1 + 184);
      v34 = *(v1 + 136);
      v68 = *(v1 + 128);
      v67 = v22;
      v35 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75[0] = v69;
      *v35 = 136446722;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_25424EA58();
      v38 = v37;
      sub_25417C0B0(v34, type metadata accessor for EventQuery);
      v39 = sub_2542203C4(v36, v38, v75);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v25[2];
      *(v35 + 22) = 2048;
      v40 = *(v68 + *(v67 + 68));
      sub_25417C0B0(v68, type metadata accessor for EventQuery);
      *(v35 + 24) = v40;
      _os_log_impl(&dword_254124000, v30, v31, "[%{public}s] Found %ld encryption keys, truncating to the most recent %ld", v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x259C07330](v69, -1, -1);
      MEMORY[0x259C07330](v35, -1, -1);

      v33(v73, v71);
    }

    else
    {
      v41 = *(v1 + 184);
      v42 = *(v1 + 168);
      v43 = *(v1 + 136);
      sub_25417C0B0(*(v1 + 128), type metadata accessor for EventQuery);

      sub_25417C0B0(v43, type metadata accessor for EventQuery);
      v33(v41, v42);
    }

    v44 = sub_2541A5390(v26, v25);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    if (v49)
    {
      sub_25424EAD8();
      swift_unknownObjectRetain_n();

      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        swift_unknownObjectRelease();
        v53 = MEMORY[0x277D84F90];
      }

      v54 = *(v53 + 16);

      if (__OFSUB__(v50 >> 1, v48))
      {
        __break(1u);
      }

      else if (v54 == (v50 >> 1) - v48)
      {
        v55 = swift_dynamicCastClass();
        swift_unknownObjectRelease();

        v25 = v55;
        if (v55)
        {
          goto LABEL_18;
        }

        v52 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_254168B78(v44, v46, v48, v50, &qword_27F5B9278, &qword_2542545D0, type metadata accessor for LubyRackoffEncryptionKey);
    v52 = v51;

LABEL_17:
    swift_unknownObjectRelease();
    v25 = v52;
  }

LABEL_18:
  *(v1 + 280) = v25;
  if (v25[2])
  {
    v56 = *(v1 + 300);
    v57 = *(v1 + 40);
    v58 = (v57 + *(v1 + 296));
    v59 = v58[3];
    v60 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v59);
    *(v1 + 24) = v25;
    v74 = (*(v60 + 48) + **(v60 + 48));
    v61 = swift_task_alloc();
    *(v1 + 288) = v61;
    *v61 = v1;
    v61[1] = sub_25415A7A4;

    return v74(v1 + 24, v57 + v56, v59, v60);
  }

  else
  {
    v63 = *(v1 + 240);
    v64 = *(v1 + 120);
    v65 = *(v1 + 64);
    sub_25417C0B0(*(v1 + 56), type metadata accessor for EncryptionKeyQuery);
    v63(v64, v65);

    v66 = *(v1 + 8);

    return v66(v25);
  }
}

uint64_t sub_25415A7A4()
{

  return MEMORY[0x2822009F8](sub_25415A8A0, 0, 0);
}

uint64_t sub_25415A8A0()
{
  v6 = v0[35];
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[8];
  sub_25417C0B0(v0[7], type metadata accessor for EncryptionKeyQuery);
  v1(v2, v3);

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_25415AA04()
{
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[8];
  sub_25417C0B0(v0[7], type metadata accessor for EncryptionKeyQuery);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25415AB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EventQuery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424DAA8();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9280, &qword_2542545D8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  sub_254140708(a1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DE0, &qword_2542545E0);
  v15 = type metadata accessor for LubyRackoffEncryptionKey(0);
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  if (v16)
  {
    v17(v14, 0, 1, v15);
    sub_25417C178(v14, a3, type metadata accessor for LubyRackoffEncryptionKey);
    v18 = a3;
    v19 = 0;
  }

  else
  {
    v41 = a3;
    v17(v14, 1, 1, v15);
    sub_254132E5C(v14, &unk_27F5B9280, &qword_2542545D8);
    sub_25421ACE8(v11);
    sub_25417C110(a2, v8, type metadata accessor for EventQuery);
    sub_254140708(a1, v44);
    v20 = sub_25424DA88();
    v21 = sub_25424E408();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v17;
      v23 = v22;
      v39 = swift_slowAlloc();
      v45 = v39;
      *v23 = 136446466;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_25424EA58();
      v26 = v25;
      sub_25417C0B0(v8, type metadata accessor for EventQuery);
      v27 = sub_2542203C4(v24, v26, &v45);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      MEMORY[0x28223BE20](v28);
      (*(v30 + 16))(&v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = sub_25424DD08();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(v44);
      v34 = sub_2542203C4(v31, v33, &v45);

      *(v23 + 14) = v34;
      _os_log_impl(&dword_254124000, v20, v21, "[%{public}s] Ignoring unknown encryption key type: %s", v23, 0x16u);
      v35 = v39;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v35, -1, -1);
      v36 = v23;
      v17 = v40;
      MEMORY[0x259C07330](v36, -1, -1);

      (*(v42 + 8))(v11, v43);
    }

    else
    {

      sub_25417C0B0(v8, type metadata accessor for EventQuery);
      (*(v42 + 8))(v11, v43);
      __swift_destroy_boxed_opaque_existential_1(v44);
    }

    v18 = v41;
    v19 = 1;
  }

  return (v17)(v18, v19, 1, v15);
}

uint64_t sub_25415B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v9 + 480) = v21;
  *(v9 + 488) = v8;
  *(v9 + 1306) = a8;
  *(v9 + 1305) = a7;
  *(v9 + 1304) = a6;
  *(v9 + 464) = a4;
  *(v9 + 472) = a5;
  *(v9 + 448) = a2;
  *(v9 + 456) = a3;
  *(v9 + 440) = a1;
  *(v9 + 496) = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  *(v9 + 504) = swift_task_alloc();
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  v10 = type metadata accessor for SomeEvent(0);
  *(v9 + 528) = v10;
  *(v9 + 536) = *(v10 - 8);
  *(v9 + 544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9100, &qword_254254520);
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9108, &qword_254254528);
  *(v9 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530);
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v9 + 592) = v11;
  *(v9 + 600) = *(v11 - 8);
  *(v9 + 608) = swift_task_alloc();
  v12 = sub_25424D8B8();
  *(v9 + 616) = v12;
  *(v9 + 624) = *(v12 - 8);
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v9 + 680) = v13;
  *(v9 + 688) = *(v13 - 8);
  *(v9 + 696) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v9 + 704) = v14;
  *(v9 + 712) = *(v14 - 8);
  *(v9 + 720) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  *(v9 + 728) = v15;
  *(v9 + 736) = *(v15 - 8);
  *(v9 + 744) = swift_task_alloc();
  type metadata accessor for EventQuery(0);
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  *(v9 + 776) = swift_task_alloc();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = type metadata accessor for CKQueryAsyncSequence(0);
  *(v9 + 824) = swift_task_alloc();
  v16 = sub_25424DAA8();
  *(v9 + 832) = v16;
  *(v9 + 840) = *(v16 - 8);
  *(v9 + 848) = swift_task_alloc();
  *(v9 + 856) = swift_task_alloc();
  *(v9 + 864) = swift_task_alloc();
  *(v9 + 872) = swift_task_alloc();
  *(v9 + 880) = swift_task_alloc();
  *(v9 + 888) = swift_task_alloc();
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  v17 = sub_25424D948();
  *(v9 + 936) = v17;
  *(v9 + 944) = *(v17 - 8);
  *(v9 + 952) = swift_task_alloc();
  *(v9 + 960) = swift_task_alloc();
  *(v9 + 968) = swift_task_alloc();
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  *(v9 + 1048) = swift_task_alloc();
  *(v9 + 1056) = swift_task_alloc();
  v18 = sub_25424D218();
  *(v9 + 1064) = v18;
  *(v9 + 1072) = *(v18 - 8);
  *(v9 + 1080) = swift_task_alloc();
  *(v9 + 1088) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25415B7C0, 0, 0);
}

uint64_t sub_25415B7C0()
{
  v138 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 1304);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = *(v0 + 456);
  (*(*(v0 + 1072) + 16))(*(v0 + 1088), v7, *(v0 + 1064));
  v8 = *(v6 + 16);
  *(v0 + 1096) = v8;
  sub_2541677C8(v7, v8 != 0, v5, v4 & 1);
  v10 = v9;
  v11 = *(v2 + 56);
  *(v0 + 1104) = v11;
  *(v0 + 1112) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v3);
  *(v0 + 408) = MEMORY[0x277D84FA0];
  sub_25424E1E8();
  v130 = v10;
  v12 = *(v0 + 944);
  LODWORD(v10) = *(v0 + 1305);
  *(v0 + 1296) = *MEMORY[0x277D858A0];
  *(v0 + 1120) = 0x3FF0000000000000;
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 936);
  v16 = *(v0 + 488);
  LODWORD(v7) = *(v0 + 1306);
  v134 = *(v0 + 464);
  v17 = type metadata accessor for EventQuery.Configuration(0);
  v18 = *(v12 + 16);
  *(v0 + 1128) = v17;
  v19 = *(v17 + 24);
  *(v0 + 1300) = v19;
  *(v0 + 1136) = v18;
  *(v0 + 1144) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v124 = v19;
  v127 = v16;
  v18(v14, v16 + v19, v15);
  v20 = sub_25417C454(v14, v13, 0, v7, v10 ^ 1, v10);
  *(v0 + 416) = v20;
  v21 = sub_25417DE78(v14, v134);
  if (v21)
  {
    v22 = v21;
    if (v20 >> 62)
    {
      v108 = sub_25424E868();
      if (v108 < 0)
      {
        __break(1u);
        return MEMORY[0x2822005A8](v108, v110, v111, v107, v109);
      }
    }

    sub_2541D2080(0, 0, v22);
  }

  v133 = v17;
  v23 = *(v0 + 1024);
  v24 = *(v0 + 1016);
  v25 = *(v0 + 936);
  v26 = *(v0 + 928);
  sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
  v27 = sub_25424DF88();

  v28 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_25421ACE8(v26);
  v121 = v18;
  v18(v24, v23, v25);
  v29 = v28;
  v30 = sub_25424DA88();
  v31 = sub_25424E418();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 1016);
  v34 = *(v0 + 944);
  v35 = *(v0 + 936);
  v36 = *(v0 + 928);
  v37 = *(v0 + 840);
  v119 = *(v0 + 832);
  if (v32)
  {
    v117 = *(v0 + 928);
    v38 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v137[0] = v115;
    *v38 = 136315394;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_25424EA58();
    v113 = v31;
    v40 = v29;
    v42 = v41;
    v135 = *(v34 + 8);
    v135(v33, v35);
    v43 = sub_2542203C4(v39, v42, v137);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = [v40 debugDescription];
    v45 = sub_25424DCB8();
    v47 = v46;

    v48 = sub_2542203C4(v45, v47, v137);

    *(v38 + 14) = v48;
    _os_log_impl(&dword_254124000, v30, v113, "[%s] Final predicate: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v115, -1, -1);
    MEMORY[0x259C07330](v38, -1, -1);

    v49 = *(v37 + 8);
    v49(v117, v119);
  }

  else
  {

    v135 = *(v34 + 8);
    v135(v33, v35);
    v49 = *(v37 + 8);
    v49(v36, v119);
    v40 = v29;
  }

  *(v0 + 1160) = v135;
  *(v0 + 1152) = v49;
  v118 = *(v0 + 1024);
  v120 = v49;
  v50 = *(v0 + 936);
  v51 = *(v0 + 944) + 8;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v52 = v40;
  v114 = sub_25424E538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_254254370;
  v54 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v55 = sub_25424DCA8();
  v56 = [v54 initWithKey:v55 ascending:0];

  *(v53 + 32) = v56;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v57 = sub_25424DF88();

  [v114 setSortDescriptors_];

  *(v0 + 1168) = v51 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v135(v118, v50);
  sub_25424D938();
  *(v0 + 1176) = v130;
  v58 = *(v0 + 1008);
  v59 = *(v0 + 936);
  v60 = *(v0 + 824);
  v61 = *(v0 + 816);
  v62 = *(v0 + 488);
  v63 = *(v0 + 440);
  v116 = *(v0 + 448);
  v121(&v60[v61[7]], v127 + v124, v59);
  v121(&v60[v61[8]], v58, v59);
  v64 = (v62 + *(v133 + 60));
  v65 = *v64;
  LOBYTE(v64) = *(v64 + 8);
  v66 = *(v62 + *(v133 + 64));
  *(v0 + 1184) = v66;
  *v60 = v63;
  *(v60 + 1) = 0;
  *(v60 + 2) = 0;
  *(v60 + 3) = v116;
  *(v60 + 4) = v114;
  *&v60[v61[9]] = &unk_286632EC0;
  v67 = &v60[v61[10]];
  *v67 = v130;
  v67[8] = 0;
  v68 = &v60[v61[11]];
  *v68 = v65;
  v68[8] = v64;
  *&v60[v61[12]] = v66;
  *(v0 + 1192) = 1;
  v131 = *(v0 + 1008);
  v69 = *(v0 + 1000);
  v70 = *(v0 + 936);
  v71 = *(v0 + 920);
  v72 = *(v0 + 808);
  v73 = *(v0 + 488);
  v74 = *(v0 + 448);
  v75 = *(v0 + 440);
  swift_unknownObjectRetain();
  v76 = v74;
  sub_25421ACE8(v71);
  sub_25417C110(v73, v72, type metadata accessor for EventQuery);
  v121(v69, v131, v70);
  v77 = sub_25424DA88();
  v78 = sub_25424E408();
  v79 = os_log_type_enabled(v77, v78);
  v80 = *(v0 + 1000);
  v81 = *(v0 + 936);
  v82 = *(v0 + 920);
  v83 = *(v0 + 832);
  v84 = *(v0 + 808);
  if (v79)
  {
    v128 = v78;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v137[0] = v86;
    *v85 = 136446722;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v87 = sub_25424EA58();
    v125 = v82;
    v89 = v88;
    sub_25417C0B0(v84, type metadata accessor for EventQuery);
    v90 = sub_2542203C4(v87, v89, v137);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2082;
    v91 = sub_25424EA58();
    v93 = v92;
    v135(v80, v81);
    v94 = sub_2542203C4(v91, v93, v137);

    *(v85 + 14) = v94;
    *(v85 + 22) = 2048;
    *(v85 + 24) = 1;
    _os_log_impl(&dword_254124000, v77, v128, "[%{public}s] Beginning subquery %{public}s (%ld)", v85, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v86, -1, -1);
    MEMORY[0x259C07330](v85, -1, -1);

    v120(v125, v83);
  }

  else
  {

    v135(v80, v81);
    sub_25417C0B0(v84, type metadata accessor for EventQuery);
    v49(v82, v83);
  }

  v126 = *(v0 + 1296);
  v95 = *(v0 + 744);
  v96 = *(v0 + 736);
  v97 = *(v0 + 728);
  v98 = *(v0 + 696);
  v136 = *(v0 + 688);
  v99 = *(v0 + 672);
  v100 = *(v0 + 624);
  v129 = *(v0 + 616);
  v132 = *(v0 + 680);
  v101 = *(v0 + 608);
  v102 = *(v0 + 600);
  v122 = *(v0 + 824);
  v123 = *(v0 + 592);
  v103 = *(v0 + 480);
  sub_25417C110(*(v0 + 488), *(v0 + 800), type metadata accessor for EventQuery);
  (*(v96 + 16))(v95, v103, v97);
  sub_25424D898();
  v104 = swift_task_alloc();
  *(v104 + 16) = v122;
  *(v104 + 24) = v99;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v102 + 104))(v101, v126, v123);
  sub_25424E278();

  v105 = *(v100 + 8);
  *(v0 + 1200) = v105;
  *(v0 + 1208) = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v105(v99, v129);
  sub_25424E178();
  (*(v136 + 8))(v98, v132);
  swift_beginAccess();
  *(v0 + 1307) = 0;
  *(v0 + 1216) = 0u;
  *(v0 + 1232) = 0u;
  *(v0 + 1248) = 0u;
  *(v0 + 1264) = 0u;
  v106 = swift_task_alloc();
  *(v0 + 1280) = v106;
  *v106 = v0;
  v106[1] = sub_25415C6C4;
  v107 = *(v0 + 704);
  v108 = v0 + 424;
  v109 = v0 + 432;
  v110 = 0;
  v111 = 0;

  return MEMORY[0x2822005A8](v108, v110, v111, v107, v109);
}

uint64_t sub_25415C6C4()
{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v3 = v2[100];
    (*(v2[92] + 8))(v2[93], v2[91]);
    sub_25417C0B0(v3, type metadata accessor for EventQuery);
    v4 = sub_2541607AC;
  }

  else
  {
    v4 = sub_25415C814;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25415C814(uint64_t a1)
{
  v642 = v2;
  v5 = *(v2 + 424);
  if (!v5)
  {
    (*(*(v2 + 712) + 8))(*(v2 + 720), *(v2 + 704));
    v608 = *(v2 + 1288);
    v18 = *(v2 + 1272);
    v19 = *(v2 + 1264);
    v20 = *(v2 + 1256);
    v21 = *(v2 + 1248);
    v22 = *(v2 + 1240);
    v23 = *(v2 + 1307);
    v24 = *(v2 + 1232);
    v25 = *(v2 + 1224);
    v26 = *(v2 + 1216);
    goto LABEL_8;
  }

  v1 = *(v2 + 1288);
  sub_25424E1E8();
  if (v1)
  {
    v6 = *(v2 + 1072);
    v598 = *(v2 + 1064);
    v572 = *(v2 + 1160);
    v581 = *(v2 + 1056);
    v7 = *(v2 + 1008);
    v8 = *(v2 + 936);
    v636 = *(v2 + 824);
    v607 = *(v2 + 1088);
    v621 = *(v2 + 800);
    v9 = *(v2 + 744);
    v10 = *(v2 + 736);
    v11 = *(v2 + 728);
    v12 = v5;
    v13 = *(v2 + 720);
    v14 = *(v2 + 712);
    v15 = *(v2 + 704);

    (*(v14 + 8))(v13, v15);
    (*(v10 + 8))(v9, v11);
    v572(v7, v8);
    sub_254132E5C(v581, &unk_27F5BA1B0, qword_2542544A0);
    (*(v6 + 8))(v607, v598);
    sub_25417C0B0(v621, type metadata accessor for EventQuery);
    sub_25417C0B0(v636, type metadata accessor for CKQueryAsyncSequence);
LABEL_4:

    v16 = *(v2 + 8);

    return v16();
  }

  v55 = *(v2 + 1264);
  v56 = v55 + 1;
  if (__OFADD__(v55, 1))
  {
    __break(1u);
    goto LABEL_137;
  }

  v57 = *(v2 + 1272);
  v3 = v57 + 1;
  if (__OFADD__(v57, 1))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v58 = *(v2 + 552);
  sub_2541612EC(v5, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    v60 = *(v2 + 552);

    sub_254132E5C(v60, &qword_27F5B9100, &qword_254254520);
    v61 = v3;
    goto LABEL_91;
  }

  v537 = v56;
  v539 = v5;
  v640 = v3;
  v62 = *(v2 + 944);
  v63 = *(v2 + 936);
  v64 = *(v2 + 624);
  v573 = *(v2 + 616);
  v582 = *(v2 + 584);
  v590 = *(v2 + 992);
  v609 = *(v2 + 664);
  v622 = *(v2 + 576);
  v65 = *(v2 + 568);
  v66 = *(v2 + 560);
  v67 = *(v2 + 552);
  v597 = *(v2 + 536);
  v637 = *(v2 + 528);
  v68 = *(v59 + 48);
  v553 = v63;
  v564 = *(v59 + 64);
  v69 = *(v66 + 48);
  v543 = *(v66 + 64);
  sub_25417E6C8(v67, v65, &qword_27F5B9110, &qword_254254530);
  v70 = *(v62 + 32);
  v70(v65 + v69, v67 + v68, v63);
  v71 = *(v64 + 32);
  v71(v65 + v543, v67 + v564, v573);
  v72 = *(v66 + 48);
  v73 = *(v66 + 64);
  sub_25417E6C8(v65, v582, &qword_27F5B9110, &qword_254254530);
  v70(v590, v65 + v72, v553);
  v74 = v71;
  v71(v609, v65 + v73, v573);
  sub_254132DF4(v582, v622, &qword_27F5B9110, &qword_254254530);
  if ((*(v597 + 48))(v622, 1, v637) == 1)
  {
    v75 = *(v2 + 1056);
    v76 = *(v2 + 1040);
    v77 = *(v2 + 624);
    v78 = *(v2 + 616);
    sub_254132E5C(*(v2 + 576), &qword_27F5B9110, &qword_254254530);
    sub_254132DF4(v75, v76, &unk_27F5BA1B0, qword_2542544A0);
    if ((*(v77 + 48))(v76, 1, v78) == 1)
    {
      v79 = *(v2 + 1160);
      v623 = *(v2 + 1104);
      v80 = *(v2 + 1056);
      v81 = *(v2 + 1040);
      v82 = *(v2 + 992);
      v83 = *(v2 + 936);
      v84 = *(v2 + 664);
      v85 = *(v2 + 616);
      v86 = *(v2 + 584);

      v79(v82, v83);
      sub_254132E5C(v86, &qword_27F5B9110, &qword_254254530);
      sub_254132E5C(v80, &unk_27F5BA1B0, qword_2542544A0);
      sub_254132E5C(v81, &unk_27F5BA1B0, qword_2542544A0);
      v71(v80, v84, v85);
      v623(v80, 0, 1, v85);
LABEL_49:
      v230 = *(v2 + 1248);
      v231 = *(v2 + 1240);
      v232 = *(v2 + 1307);
      v233 = *(v2 + 1232);
      v234 = *(v2 + 1224);
      v3 = v640;
      v61 = v640;
      v235 = *(v2 + 1216);
      v56 = v537;
LABEL_90:
      *(v2 + 1248) = v230;
      *(v2 + 1240) = v231;
      *(v2 + 1307) = v232 & 1;
      *(v2 + 1232) = v233;
      *(v2 + 1224) = v234;
      *(v2 + 1216) = v235;
LABEL_91:
      *(v2 + 1272) = v61;
      *(v2 + 1264) = v56;
      *(v2 + 1256) = v3;
      v387 = swift_task_alloc();
      *(v2 + 1280) = v387;
      *v387 = v2;
      v387[1] = sub_25415C6C4;
      v145 = *(v2 + 704);
      v142 = v2 + 424;
      v146 = v2 + 432;
      v143 = 0;
      v144 = 0;

      return MEMORY[0x2822005A8](v142, v143, v144, v145, v146);
    }

    v71(*(v2 + 648), *(v2 + 1040), *(v2 + 616));
    sub_25417BFB4(&qword_27F5B9138, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v142 = sub_25424DC98();
    if (v142)
    {
      sub_25421ACE8(*(v2 + 888));
      v147 = sub_25424DA88();
      v148 = sub_25424E418();
      v149 = os_log_type_enabled(v147, v148);
      v150 = *(v2 + 1200);
      v625 = *(v2 + 1160);
      v600 = *(v2 + 936);
      v610 = *(v2 + 992);
      v151 = *(v2 + 888);
      v152 = *(v2 + 832);
      v575 = *(v2 + 1152);
      v584 = *(v2 + 664);
      v153 = *(v2 + 648);
      v154 = *(v2 + 616);
      v591 = *(v2 + 584);
      if (v149)
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_254124000, v147, v148, "Using same date", v155, 2u);
        MEMORY[0x259C07330](v155, -1, -1);
      }

      v575(v151, v152);
      v150(v153, v154);
      v150(v584, v154);
      v625(v610, v600);
      sub_254132E5C(v591, &qword_27F5B9110, &qword_254254530);
      goto LABEL_49;
    }

    v208 = *(v2 + 408);
    v535 = v71;
    if (!v208[2])
    {
      v357 = *(v2 + 1200);
      v358 = *(v2 + 1160);
      v638 = *(v2 + 1056);
      v359 = *(v2 + 992);
      v360 = *(v2 + 936);
      v361 = *(v2 + 648);
      v362 = *(v2 + 616);
      v363 = *(v2 + 584);

      v357(v361, v362);
      v358(v359, v360);
      sub_254132E5C(v363, &qword_27F5B9110, &qword_254254530);
      sub_254132E5C(v638, &unk_27F5BA1B0, qword_2542544A0);
      v589 = *(v2 + 1248);
      v620 = *(v2 + 1240);
      v232 = *(v2 + 1307);
      v364 = *(v2 + 1232);
      v365 = *(v2 + 1224);
      v235 = *(v2 + 1216);
      v3 = v640;
LABEL_88:
      v384 = *(v2 + 1104);
      v385 = *(v2 + 1056);
      v386 = *(v2 + 616);
      v535(v385, *(v2 + 664), v386);
      v384(v385, 0, 1, v386);
      v61 = v3;
      v56 = v537;
      v234 = v365;
      v233 = v364;
LABEL_89:
      v231 = v620;
      v230 = v589;
      goto LABEL_90;
    }

    v209 = *(v2 + 1304);
    if (v209)
    {
      v210 = *(v2 + 472);
    }

    else
    {
      v366 = *(v2 + 1232);
      v367 = *(v2 + 472);
      v210 = v367 - v366;
      if (__OFSUB__(v367, v366))
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }
    }

    v368 = *(v2 + 1128);
    v369 = *(v2 + 800);
    v370 = *(v2 + 744);
    v371 = *(v369 + *(v368 + 64));
    swift_getObjectType();
    v639 = sub_2541656E4(v208, v210, v209 & 1, v369 + *(v368 + 24), v371, v370);
    v595 = v372;
    v373 = v208[2];
    swift_beginAccess();
    if (v373 <= 0xA)
    {
      if (!v208[2])
      {
LABEL_85:
        v631 = *(v2 + 1248);
        v375 = *(v2 + 1200);
        v376 = *(v2 + 1160);
        v604 = *(v2 + 1056);
        v377 = *(v2 + 992);
        v378 = *(v2 + 936);
        v379 = *(v2 + 648);
        v380 = *(v2 + 616);
        v381 = *(v2 + 584);
        swift_endAccess();

        v375(v379, v380);
        v376(v377, v378);
        sub_254132E5C(v381, &qword_27F5B9110, &qword_254254530);
        v142 = sub_254132E5C(v604, &unk_27F5BA1B0, qword_2542544A0);
        v382 = v631 + v639;
        if (__OFADD__(v631, v639))
        {
LABEL_145:
          __break(1u);
        }

        else
        {
          v383 = *(v2 + 1232);
          v235 = v383 + v639;
          v3 = v640;
          if (!__OFADD__(v383, v639))
          {
            v232 = v595 ^ 1 | *(v2 + 1307);
            v365 = v383 + v639;
            v364 = v383 + v639;
            v620 = v631 + v639;
            v589 = v382;
            goto LABEL_88;
          }
        }

        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v641[0] = *(v2 + 408);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9130, &qword_254254550);
      sub_25424E618();
      v374 = v641[0];
    }

    else
    {

      v374 = MEMORY[0x277D84FA0];
    }

    *(v2 + 408) = v374;
    goto LABEL_85;
  }

  v95 = *(v2 + 488);
  sub_25417C178(*(v2 + 576), *(v2 + 544), type metadata accessor for SomeEvent);
  sub_2541DA834((v2 + 56));
  v96 = *(v2 + 80);
  v97 = *(v2 + 88);
  v98 = __swift_project_boxed_opaque_existential_1((v2 + 56), v96);
  *(v2 + 40) = v96;
  v99 = *(v97 + 8);
  *(v2 + 48) = v99;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 16));
  (*(*(v96 - 8) + 16))(boxed_opaque_existential_1, v98, v96);
  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v101 = sub_25417A418(boxed_opaque_existential_1, v95, v96, v99);
  v102 = *(v2 + 1136);
  v103 = *(v2 + 992);
  v104 = *(v2 + 936);
  v105 = *(v2 + 488);
  if ((v101 & 1) == 0)
  {
    v156 = *(v2 + 976);
    v157 = *(v2 + 776);
    sub_25421ACE8(*(v2 + 896));
    sub_25417C110(v105, v157, type metadata accessor for EventQuery);
    v102(v156, v103, v104);
    sub_254140708(v2 + 16, v2 + 96);
    v158 = sub_25424DA88();
    v159 = sub_25424E408();
    v160 = os_log_type_enabled(v158, v159);
    v161 = *(v2 + 1160);
    v162 = *(v2 + 1152);
    if (v160)
    {
      v592 = v159;
      v163 = *(v2 + 976);
      v164 = *(v2 + 936);
      v611 = *(v2 + 832);
      v626 = *(v2 + 896);
      v165 = *(v2 + 776);
      v166 = swift_slowAlloc();
      v585 = swift_slowAlloc();
      v641[0] = v585;
      *v166 = 136446722;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v167 = sub_25424EA58();
      v576 = v162;
      v169 = v168;
      sub_25417C0B0(v165, type metadata accessor for EventQuery);
      v170 = sub_2542203C4(v167, v169, v641);

      *(v166 + 4) = v170;
      *(v166 + 12) = 2082;
      v171 = sub_25424EA58();
      v173 = v172;
      v161(v163, v164);
      v174 = sub_2542203C4(v171, v173, v641);

      *(v166 + 14) = v174;
      *(v166 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
      DynamicType = swift_getDynamicType();
      v176 = *(v2 + 128);
      *(v2 + 376) = DynamicType;
      *(v2 + 384) = v176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
      v177 = sub_25424DD08();
      v179 = v178;
      __swift_destroy_boxed_opaque_existential_1((v2 + 96));
      v180 = sub_2542203C4(v177, v179, v641);

      *(v166 + 24) = v180;
      _os_log_impl(&dword_254124000, v158, v592, "[%{public}s] Ignoring record that does not match query: %{public}s, %s", v166, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v585, -1, -1);
      MEMORY[0x259C07330](v166, -1, -1);

      v576(v626, v611);
    }

    else
    {
      v211 = *(v2 + 976);
      v212 = *(v2 + 936);
      v213 = *(v2 + 896);
      v214 = *(v2 + 832);
      v215 = *(v2 + 776);

      __swift_destroy_boxed_opaque_existential_1((v2 + 96));
      v161(v211, v212);
      sub_25417C0B0(v215, type metadata accessor for EventQuery);
      v162(v213, v214);
    }

    v216 = *(v2 + 1200);
    v628 = *(v2 + 1160);
    v217 = *(v2 + 992);
    v218 = *(v2 + 936);
    v219 = *(v2 + 664);
    v220 = *(v2 + 616);
    v221 = *(v2 + 584);
    v222 = *(v2 + 544);
    sub_254163628(17);

    sub_25417C0B0(v222, type metadata accessor for SomeEvent);
    v216(v219, v220);
    v628(v217, v218);
    v207 = v221;
    goto LABEL_45;
  }

  v533 = v74;
  v106 = *(v2 + 984);
  v107 = *(v2 + 792);
  sub_25421ACE8(*(v2 + 912));
  sub_25417C110(v105, v107, type metadata accessor for EventQuery);
  v102(v106, v103, v104);
  sub_254140708(v2 + 16, v2 + 136);
  v108 = sub_25424DA88();
  v109 = sub_25424E408();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v2 + 1160);
  v112 = *(v2 + 1152);
  if (v110)
  {
    v583 = v109;
    v113 = *(v2 + 984);
    v114 = *(v2 + 936);
    v624 = *(v2 + 912);
    v115 = *(v2 + 792);
    v597 = *(v2 + 832);
    v116 = swift_slowAlloc();
    v574 = swift_slowAlloc();
    v641[0] = v574;
    *v116 = 136446722;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v117 = sub_25424EA58();
    v565 = v112;
    v119 = v118;
    sub_25417C0B0(v115, type metadata accessor for EventQuery);
    v120 = sub_2542203C4(v117, v119, v641);

    *(v116 + 4) = v120;
    *(v116 + 12) = 2082;
    v121 = sub_25424EA58();
    v123 = v122;
    v111(v113, v114);
    v124 = sub_2542203C4(v121, v123, v641);

    *(v116 + 14) = v124;
    *(v116 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
    v125 = swift_getDynamicType();
    v126 = *(v2 + 168);
    *(v2 + 392) = v125;
    *(v2 + 400) = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
    v127 = sub_25424DD08();
    v129 = v128;
    __swift_destroy_boxed_opaque_existential_1((v2 + 136));
    v130 = sub_2542203C4(v127, v129, v641);

    *(v116 + 24) = v130;
    _os_log_impl(&dword_254124000, v108, v583, "[%{public}s] Record contains an event that matches query: %{public}s: %s", v116, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v574, -1, -1);
    MEMORY[0x259C07330](v116, -1, -1);

    v565(v624, v597);
  }

  else
  {
    v188 = *(v2 + 984);
    v189 = *(v2 + 936);
    v190 = *(v2 + 912);
    v191 = *(v2 + 832);
    v192 = *(v2 + 792);

    __swift_destroy_boxed_opaque_existential_1((v2 + 136));
    v111(v188, v189);
    sub_25417C0B0(v192, type metadata accessor for EventQuery);
    v112(v190, v191);
  }

  v193 = *(v2 + 1056);
  v194 = *(v2 + 1048);
  v195 = *(v2 + 624);
  v196 = *(v2 + 616);
  v197 = *(v2 + 544);
  v198 = *(v2 + 520);
  v199 = *(v2 + 496);
  (*(v2 + 1136))(v198, *(v2 + 992), *(v2 + 936));
  sub_25417C110(v197, v198 + *(v199 + 20), type metadata accessor for SomeEvent);
  sub_254132DF4(v193, v194, &unk_27F5BA1B0, qword_2542544A0);
  if ((*(v195 + 48))(v194, 1, v196) == 1)
  {
    v601 = *(v2 + 1200);
    v627 = *(v2 + 1160);
    v534 = *(v2 + 1104);
    v200 = *(v2 + 1056);
    v201 = *(v2 + 1048);
    v577 = *(v2 + 936);
    v586 = *(v2 + 992);
    v202 = *(v2 + 664);
    v203 = *(v2 + 624);
    v204 = *(v2 + 616);
    v593 = *(v2 + 584);
    v566 = *(v2 + 544);
    v205 = *(v2 + 520);
    v206 = *(v2 + 504);
    v554 = *(v2 + 512);
    sub_254132E5C(v200, &unk_27F5BA1B0, qword_2542544A0);
    sub_254132E5C(v201, &unk_27F5BA1B0, qword_2542544A0);
    (*(v203 + 16))(v200, v202, v204);
    v534(v200, 0, 1, v204);
    sub_25417C110(v205, v206, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_beginAccess();
    sub_2541692F4(v554, v206);
    swift_endAccess();

    sub_25417C0B0(v554, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v205, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v566, type metadata accessor for SomeEvent);
    v601(v202, v204);
    v627(v586, v577);
    v207 = v593;
LABEL_45:
    sub_254132E5C(v207, &qword_27F5B9110, &qword_254254530);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = v640;
    v61 = v640;
    v56 = v537;
    goto LABEL_91;
  }

  v533(*(v2 + 656), *(v2 + 1048), *(v2 + 616));
  sub_25417BFB4(&qword_27F5B9138, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v142 = sub_25424DC98();
  if (v142)
  {
    v223 = *(v2 + 1200);
    v629 = *(v2 + 1160);
    v594 = *(v2 + 936);
    v602 = *(v2 + 992);
    v587 = *(v2 + 664);
    v224 = *(v2 + 656);
    v225 = *(v2 + 616);
    v612 = *(v2 + 584);
    v226 = *(v2 + 544);
    v227 = *(v2 + 520);
    v229 = *(v2 + 504);
    v228 = *(v2 + 512);
    sub_25417C110(v227, v229, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_beginAccess();
    sub_2541692F4(v228, v229);
    swift_endAccess();

    sub_25417C0B0(v228, type metadata accessor for EventQuery.FetchedRecordInfo);
    v223(v224, v225);
    sub_25417C0B0(v227, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v226, type metadata accessor for SomeEvent);
    v223(v587, v225);
    v629(v602, v594);
    v207 = v612;
    goto LABEL_45;
  }

  v236 = *(v2 + 408);
  if (!v236[2])
  {
    v388 = *(v2 + 1248);
    v389 = *(v2 + 1240);
    v390 = *(v2 + 1307);
    v391 = *(v2 + 1232);
    v392 = *(v2 + 1216);
    goto LABEL_104;
  }

  v237 = *(v2 + 1304);
  if (v237)
  {
    v238 = *(v2 + 472);
  }

  else
  {
    v393 = *(v2 + 1232);
    v394 = *(v2 + 472);
    v238 = v394 - v393;
    if (__OFSUB__(v394, v393))
    {
LABEL_154:
      __break(1u);
      return MEMORY[0x2822005A8](v142, v143, v144, v145, v146);
    }
  }

  v395 = *(v2 + 1128);
  v396 = *(v2 + 800);
  v397 = *(v2 + 744);
  v398 = *(v396 + *(v395 + 64));
  swift_getObjectType();
  v399 = sub_2541656E4(v236, v238, v237 & 1, v396 + *(v395 + 24), v398, v397);
  v401 = v400;
  v402 = v236[2];
  swift_beginAccess();
  if (v402 > 0xA)
  {

    v403 = MEMORY[0x277D84FA0];
LABEL_100:
    *(v2 + 408) = v403;
    goto LABEL_101;
  }

  if (v236[2])
  {
    swift_isUniquelyReferenced_nonNull_native();
    v641[0] = *(v2 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9130, &qword_254254550);
    sub_25424E618();
    v403 = v641[0];
    goto LABEL_100;
  }

LABEL_101:
  v404 = *(v2 + 1248);
  v142 = swift_endAccess();
  v389 = v404 + v399;
  if (__OFADD__(v404, v399))
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v405 = *(v2 + 1232);
  v392 = v405 + v399;
  if (__OFADD__(v405, v399))
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v390 = v401 ^ 1 | *(v2 + 1307);
  v391 = v405 + v399;
  v388 = v404 + v399;
LABEL_104:
  v620 = v389;
  v635 = v392;
  v589 = v388;
  if ((*(v2 + 1304) & 1) == 0 && v391 == *(v2 + 472))
  {
    LODWORD(v597) = v390;
    v406 = *(v2 + 784);
    v407 = *(v2 + 488);
    sub_25421ACE8(*(v2 + 904));
    sub_25417C110(v407, v406, type metadata accessor for EventQuery);
    v408 = sub_25424DA88();
    v409 = sub_25424E408();
    v410 = os_log_type_enabled(v408, v409);
    v614 = *(v2 + 1200);
    if (v410)
    {
      v510 = *(v2 + 1176);
      v559 = *(v2 + 1160);
      v520 = *(v2 + 1152);
      v548 = *(v2 + 992);
      v511 = *(v2 + 936);
      v515 = *(v2 + 832);
      v517 = *(v2 + 904);
      v411 = *(v2 + 784);
      v412 = *(v2 + 712);
      v571 = *(v2 + 704);
      v580 = *(v2 + 720);
      v530 = *(v2 + 664);
      v512 = *(v2 + 616);
      v513 = *(v2 + 656);
      v532 = *(v2 + 584);
      v525 = *(v2 + 544);
      v514 = *(v2 + 520);
      v3 = swift_slowAlloc();
      v413 = swift_slowAlloc();
      v641[0] = v413;
      *v3 = 136446466;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v414 = sub_25424EA58();
      v416 = v415;
      sub_25417C0B0(v411, type metadata accessor for EventQuery);
      v417 = sub_2542203C4(v414, v416, v641);

      *(v3 + 4) = v417;
      *(v3 + 12) = 2048;
      *(v3 + 14) = v510;
      _os_log_impl(&dword_254124000, v408, v409, "[%{public}s] Reached subquery limit: %ld", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v413);
      MEMORY[0x259C07330](v413, -1, -1);
      MEMORY[0x259C07330](v3, -1, -1);

      v520(v517, v515);
      v614(v513, v512);
      sub_25417C0B0(v514, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v525, type metadata accessor for SomeEvent);
      v614(v530, v512);
      v559(v548, v511);
      sub_254132E5C(v532, &qword_27F5B9110, &qword_254254530);
      v418 = *(v412 + 8);
      v1 = (v412 + 8);
      v418(v580, v571);
    }

    else
    {
      v561 = *(v2 + 1160);
      v518 = *(v2 + 1152);
      v551 = *(v2 + 992);
      v432 = *(v2 + 904);
      v3 = *(v2 + 832);
      v433 = *(v2 + 784);
      v434 = *(v2 + 712);
      v571 = *(v2 + 704);
      v580 = *(v2 + 720);
      v1 = *(v2 + 656);
      v435 = *(v2 + 616);
      v531 = *(v2 + 584);
      v532 = *(v2 + 936);
      v521 = *(v2 + 544);
      v527 = *(v2 + 664);
      v516 = *(v2 + 520);

      sub_25417C0B0(v433, type metadata accessor for EventQuery);
      v518(v432, v3);
      v614(v1, v435);
      sub_25417C0B0(v516, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v521, type metadata accessor for SomeEvent);
      v614(v527, v435);
      v561(v551, v532);
      sub_254132E5C(v531, &qword_27F5B9110, &qword_254254530);
      (*(v434 + 8))(v580, v571);
    }

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v608 = 0;
    v25 = *(v2 + 472);
    v26 = v635;
    v20 = v640;
    v18 = v640;
    v24 = v25;
    v19 = v537;
    v22 = v620;
    v21 = v589;
    v23 = v597;
LABEL_8:
    if (v19 == *(v2 + 1176))
    {
      goto LABEL_9;
    }

    goto LABEL_115;
  }

  v580 = v391;
  v3 = *(v2 + 1200);
  if ((v390 & 1) == 0)
  {
    v526 = *(v2 + 1104);
    v425 = *(v2 + 1056);
    v578 = *(v2 + 992);
    v570 = *(v2 + 936);
    v426 = *(v2 + 664);
    v536 = *(v2 + 656);
    v427 = *(v2 + 624);
    v428 = *(v2 + 616);
    v605 = *(v2 + 584);
    v616 = *(v2 + 1160);
    v550 = *(v2 + 544);
    v429 = *(v2 + 520);
    v431 = *(v2 + 504);
    v430 = *(v2 + 512);
    sub_254132E5C(v425, &unk_27F5BA1B0, qword_2542544A0);
    (*(v427 + 16))(v425, v426, v428);
    v526(v425, 0, 1, v428);
    sub_25417C110(v429, v431, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_beginAccess();
    sub_2541692F4(v430, v431);
    swift_endAccess();

    sub_25417C0B0(v430, type metadata accessor for EventQuery.FetchedRecordInfo);
    (v3)(v536, v428);
    sub_25417C0B0(v429, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C0B0(v550, type metadata accessor for SomeEvent);
    (v3)(v426, v428);
    v616(v578, v570);
    sub_254132E5C(v605, &qword_27F5B9110, &qword_254254530);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v232 = 0;
    v235 = v635;
    v3 = v640;
    v61 = v640;
    v234 = v580;
    v233 = v580;
    v56 = v537;
    goto LABEL_89;
  }

  v419 = *(v2 + 1176);
  v569 = *(v2 + 1160);
  v571 = *(v2 + 1168);
  v549 = *(v2 + 936);
  v560 = *(v2 + 992);
  v420 = *(v2 + 712);
  v597 = *(v2 + 704);
  v615 = *(v2 + 720);
  v421 = *(v2 + 664);
  v422 = *(v2 + 656);
  v423 = *(v2 + 616);
  v532 = *(v2 + 584);
  v424 = *(v2 + 544);
  v1 = *(v2 + 520);

  (v3)(v422, v423);
  sub_25417C0B0(v1, type metadata accessor for EventQuery.FetchedRecordInfo);
  sub_25417C0B0(v424, type metadata accessor for SomeEvent);
  (v3)(v421, v423);
  v569(v560, v549);
  sub_254132E5C(v532, &qword_27F5B9110, &qword_254254530);
  (*(v420 + 8))(v615, v597);
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v537 == v419)
  {
    v608 = 0;
    v23 = 1;
    v26 = v635;
    v20 = v640;
    v18 = v640;
    v25 = v580;
    v24 = v580;
    v22 = v620;
LABEL_9:
    v599 = v23;
    v620 = v22;
    v635 = v26;
    v571 = v18;
    v580 = v25;
    v589 = v24;
    v640 = v20;
    v27 = *(v2 + 1136);
    v28 = *(v2 + 1008);
    v29 = *(v2 + 968);
    v30 = *(v2 + 936);
    v31 = *(v2 + 880);
    v32 = *(v2 + 800);
    v33 = *(v2 + 768);
    v34 = *(v2 + 488);
    (*(*(v2 + 736) + 8))(*(v2 + 744), *(v2 + 728));
    sub_25417C0B0(v32, type metadata accessor for EventQuery);
    sub_25421ACE8(v31);
    sub_25417C110(v34, v33, type metadata accessor for EventQuery);
    v27(v29, v28, v30);
    v35 = sub_25424DA88();
    v36 = sub_25424E408();
    if (os_log_type_enabled(v35, v36))
    {
      v532 = *(v2 + 1168);
      v537 = *(v2 + 1192);
      v522 = *(v2 + 968);
      v528 = *(v2 + 1160);
      v37 = *(v2 + 936);
      v552 = *(v2 + 880);
      v563 = *(v2 + 1152);
      v539 = (*(v2 + 840) + 8);
      v542 = *(v2 + 832);
      v38 = *(v2 + 768);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v641[0] = v40;
      *v39 = 136446978;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v41 = sub_25424EA58();
      v43 = v42;
      sub_25417C0B0(v38, type metadata accessor for EventQuery);
      v44 = sub_2542203C4(v41, v43, v641);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v45 = sub_25424EA58();
      v47 = v46;
      v528(v522, v37);
      v48 = sub_2542203C4(v45, v47, v641);

      *(v39 + 14) = v48;
      *(v39 + 22) = 2048;
      *(v39 + 24) = v537;
      *(v39 + 32) = 2048;
      *(v39 + 34) = v620;
      _os_log_impl(&dword_254124000, v35, v36, "[%{public}s] Finished subquery %{public}s (%ld), emitted %ld matching event(s)", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v40, -1, -1);
      MEMORY[0x259C07330](v39, -1, -1);

      v563(v552, v542);
      if ((v599 & 1) == 0)
      {
LABEL_11:
        v49 = *(v2 + 1032);
        v50 = *(v2 + 624);
        v51 = *(v2 + 616);
        sub_254132DF4(*(v2 + 1056), v49, &unk_27F5BA1B0, qword_2542544A0);
        if ((*(v50 + 48))(v49, 1, v51) == 1)
        {
          v52 = *(v2 + 1032);
          v53 = *(v2 + 824);
          (*(v2 + 1160))(*(v2 + 1008), *(v2 + 936));
          sub_254132E5C(v52, &unk_27F5BA1B0, qword_2542544A0);
          v54 = v53;
          goto LABEL_130;
        }

        v131 = *(v2 + 1200);
        v132 = *(v2 + 672);
        v133 = *(v2 + 616);
        (*(*(v2 + 624) + 32))(*(v2 + 640), *(v2 + 1032), v133);
        sub_25424D1D8();
        v134 = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0();
        v131(v132, v133);
        if (v134)
        {
          sub_25421ACE8(*(v2 + 872));
          v135 = sub_25424DA88();
          v136 = sub_25424E428();
          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            *v137 = 0;
            _os_log_impl(&dword_254124000, v135, v136, "Batch limit too small to make any progress with this coalescing window, increasing", v137, 2u);
            MEMORY[0x259C07330](v137, -1, -1);
          }

          v138 = *(v2 + 1152);
          v139 = *(v2 + 1120);
          v140 = *(v2 + 872);
          v141 = *(v2 + 832);

          v138(v140, v141);
          v4 = v139 * 1.1;
        }

        else
        {
          v4 = *(v2 + 1120);
          if (v4 > 1.0)
          {
            sub_25421ACE8(*(v2 + 864));
            v181 = sub_25424DA88();
            v182 = sub_25424E408();
            v183 = os_log_type_enabled(v181, v182);
            v184 = *(v2 + 1152);
            v185 = *(v2 + 864);
            v186 = *(v2 + 832);
            if (v183)
            {
              v187 = swift_slowAlloc();
              *v187 = 0;
              _os_log_impl(&dword_254124000, v181, v182, "Resuming using original batch limit", v187, 2u);
              MEMORY[0x259C07330](v187, -1, -1);
            }

            v184(v185, v186);
            v4 = 1.0;
          }
        }

        v597 = *(v2 + 1088);
        v1 = *(v2 + 1080);
        v239 = *(v2 + 1072);
        v240 = *(v2 + 1064);
        v241 = *(v2 + 640);
        v242 = *(v2 + 632);
        v243 = *(v2 + 624);
        v3 = *(v2 + 616);
        LODWORD(v620) = *(v2 + 1304);
        sub_25424D1F8();
        (*(v243 + 16))(v242, v241, v3);
        sub_25424D1E8();
        (*(v239 + 8))(v597, v240);
        (*(v239 + 32))(v597, v1, v240);
        v244 = *(v2 + 472);
        if (v620)
        {
LABEL_57:
          v246 = *(v2 + 1200);
          v247 = *(v2 + 1160);
          v248 = *(v2 + 1008);
          v249 = *(v2 + 936);
          v250 = *(v2 + 824);
          v251 = *(v2 + 640);
          v252 = *(v2 + 616);
          sub_2541677C8(*(v2 + 1088), *(v2 + 1096) != 0, v244, *(v2 + 1304) & 1);
          v254 = v253;
          v246(v251, v252);
          v247(v248, v249);
          sub_25417C0B0(v250, type metadata accessor for CKQueryAsyncSequence);
          sub_25424E1E8();
          if (v608)
          {
            v255 = *(v2 + 1088);
            v256 = *(v2 + 1072);
            v257 = *(v2 + 1064);
            sub_254132E5C(*(v2 + 1056), &unk_27F5BA1B0, qword_2542544A0);
            (*(v256 + 8))(v255, v257);
            goto LABEL_4;
          }

          v620 = v254;
          v258 = *(v2 + 1192);
          *(v2 + 1120) = v4;
          v259 = *(v2 + 1088);
          v260 = *(v2 + 1024);
          v261 = *(v2 + 944);
          v262 = *(v2 + 936);
          v263 = *(v2 + 488);
          v264 = *(v2 + 1306);
          v265 = *(v2 + 464);
          v266 = type metadata accessor for EventQuery.Configuration(0);
          v3 = *(v261 + 16);
          *(v2 + 1128) = v266;
          v597 = v266;
          v267 = *(v266 + 24);
          *(v2 + 1300) = v267;
          *(v2 + 1136) = v3;
          *(v2 + 1144) = (v261 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v532 = v267;
          v537 = v263;
          (v3)(v260, v263 + v267, v262);
          v268 = sub_25417C454(v260, v259, 0, v264, 0, 0);
          *(v2 + 416) = v268;
          v269 = sub_25417DE78(v260, v265);
          v539 = v258;
          if (!v269)
          {
            goto LABEL_62;
          }

          v1 = v269;
          if (v268 >> 62)
          {
            goto LABEL_143;
          }

          while (1)
          {
            sub_2541D2080(0, 0, v1);

LABEL_62:
            v270 = *(v2 + 1024);
            v271 = *(v2 + 1016);
            v272 = *(v2 + 936);
            v273 = *(v2 + 928);
            sub_254148D7C(0, &qword_27F5B9118, 0x277CCAC30);
            v274 = sub_25424DF88();

            v275 = [objc_opt_self() andPredicateWithSubpredicates_];

            sub_25421ACE8(v273);
            v613 = v3;
            (v3)(v271, v270, v272);
            v276 = v275;
            v277 = sub_25424DA88();
            v278 = sub_25424E418();

            v279 = os_log_type_enabled(v277, v278);
            v280 = *(v2 + 1016);
            v281 = *(v2 + 944);
            v282 = *(v2 + 936);
            v283 = *(v2 + 928);
            v284 = *(v2 + 840);
            v285 = *(v2 + 832);
            if (v279)
            {
              v555 = *(v2 + 832);
              v286 = swift_slowAlloc();
              v544 = swift_slowAlloc();
              v641[0] = v544;
              *v286 = 136315394;
              sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v523 = v278;
              v287 = v276;
              v288 = sub_25424EA58();
              v529 = v283;
              v290 = v289;
              v519 = v277;
              v291 = *(v281 + 8);
              v291(v280, v282);
              v292 = sub_2542203C4(v288, v290, v641);

              *(v286 + 4) = v292;
              *(v286 + 12) = 2080;
              v293 = [v287 debugDescription];
              v294 = sub_25424DCB8();
              v296 = v295;

              v297 = sub_2542203C4(v294, v296, v641);

              *(v286 + 14) = v297;
              _os_log_impl(&dword_254124000, v519, v523, "[%s] Final predicate: %s", v286, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C07330](v544, -1, -1);
              MEMORY[0x259C07330](v286, -1, -1);

              v298 = *(v284 + 8);
              v298(v529, v555);
            }

            else
            {

              v291 = *(v281 + 8);
              v291(v280, v282);
              v298 = *(v284 + 8);
              v298(v283, v285);
              v287 = v276;
            }

            *(v2 + 1160) = v291;
            v524 = v298;
            *(v2 + 1152) = v298;
            v545 = *(v2 + 1024);
            v299 = *(v2 + 936);
            v300 = *(v2 + 944) + 8;
            sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
            v301 = v287;
            v302 = sub_25424E538();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
            v303 = swift_allocObject();
            *(v303 + 16) = xmmword_254254370;
            v304 = objc_allocWithZone(MEMORY[0x277CCAC98]);
            v305 = sub_25424DCA8();
            v306 = [v304 initWithKey:v305 ascending:0];

            *(v303 + 32) = v306;
            sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
            v307 = sub_25424DF88();

            [v302 setSortDescriptors_];

            *(v2 + 1168) = v300 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v308 = v545;
            v546 = v291;
            v291(v308, v299);
            v142 = sub_25424D938();
            if (v4 > 1.0)
            {
              v309 = v4 * v620;
              if (COERCE__INT64(fabs(v309)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_147;
              }

              if (v309 <= -9.22337204e18)
              {
                goto LABEL_148;
              }

              if (v309 >= 9.22337204e18)
              {
                goto LABEL_149;
              }

              v310 = v620 + 1;
              if (__OFADD__(v620, 1))
              {
                goto LABEL_150;
              }

              if (v310 <= v309)
              {
                v310 = v309;
              }

              v620 = v310;
            }

            *(v2 + 1176) = v620;
            v311 = *(v2 + 1008);
            v1 = *(v2 + 936);
            v312 = *(v2 + 824);
            v313 = *(v2 + 816);
            v314 = *(v2 + 488);
            v3 = *(v2 + 440);
            v556 = *(v2 + 448);
            v613(v312 + v313[7], v537 + v532, v1);
            v613(v312 + v313[8], v311, v1);
            v315 = (v314 + *(v597 + 60));
            v316 = *v315;
            LOBYTE(v315) = *(v315 + 8);
            v317 = *(v314 + *(v597 + 64));
            *(v2 + 1184) = v317;
            *v312 = v3;
            v312[1] = 0;
            v312[2] = 0;
            v312[3] = v556;
            v312[4] = v302;
            *(v312 + v313[9]) = &unk_286632EC0;
            v318 = v312 + v313[10];
            *v318 = v620;
            v318[8] = 0;
            v319 = v312 + v313[11];
            *v319 = v316;
            v319[8] = v315;
            *(v312 + v313[12]) = v317;
            v620 = (v539 + 1);
            *(v2 + 1192) = v539 + 1;
            if (!__OFADD__(v539, 1))
            {
              break;
            }

LABEL_142:
            __break(1u);
LABEL_143:
            v142 = sub_25424E868();
            if (v142 < 0)
            {
              __break(1u);
              goto LABEL_145;
            }
          }

          v320 = *(v2 + 1008);
          v321 = *(v2 + 1000);
          v322 = *(v2 + 936);
          v323 = *(v2 + 920);
          v324 = *(v2 + 808);
          v325 = *(v2 + 488);
          v326 = *(v2 + 448);
          v327 = *(v2 + 440);
          swift_unknownObjectRetain();
          v328 = v326;
          sub_25421ACE8(v323);
          sub_25417C110(v325, v324, type metadata accessor for EventQuery);
          v613(v321, v320, v322);
          v329 = sub_25424DA88();
          v330 = sub_25424E408();
          v331 = os_log_type_enabled(v329, v330);
          v332 = *(v2 + 1000);
          v333 = *(v2 + 936);
          v334 = *(v2 + 920);
          v335 = *(v2 + 832);
          v336 = *(v2 + 808);
          if (v331)
          {
            v337 = swift_slowAlloc();
            v567 = swift_slowAlloc();
            v641[0] = v567;
            *v337 = 136446722;
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v338 = sub_25424EA58();
            v557 = v334;
            v340 = v339;
            sub_25417C0B0(v336, type metadata accessor for EventQuery);
            v341 = sub_2542203C4(v338, v340, v641);

            *(v337 + 4) = v341;
            *(v337 + 12) = 2082;
            v342 = sub_25424EA58();
            v344 = v343;
            v546(v332, v333);
            v345 = sub_2542203C4(v342, v344, v641);

            *(v337 + 14) = v345;
            *(v337 + 22) = 2048;
            *(v337 + 24) = v620;
            _os_log_impl(&dword_254124000, v329, v330, "[%{public}s] Beginning subquery %{public}s (%ld)", v337, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x259C07330](v567, -1, -1);
            MEMORY[0x259C07330](v337, -1, -1);

            v524(v557, v335);
          }

          else
          {

            v546(v332, v333);
            sub_25417C0B0(v336, type metadata accessor for EventQuery);
            v524(v334, v335);
          }

          v558 = *(v2 + 1296);
          v346 = *(v2 + 744);
          v347 = *(v2 + 736);
          v348 = *(v2 + 728);
          v349 = *(v2 + 696);
          v630 = *(v2 + 688);
          v603 = *(v2 + 680);
          v350 = *(v2 + 672);
          v351 = *(v2 + 624);
          v568 = *(v2 + 616);
          v352 = *(v2 + 608);
          v353 = *(v2 + 600);
          v540 = *(v2 + 824);
          v547 = *(v2 + 592);
          v354 = *(v2 + 480);
          sub_25417C110(*(v2 + 488), *(v2 + 800), type metadata accessor for EventQuery);
          (*(v347 + 16))(v346, v354, v348);
          sub_25424D898();
          v355 = swift_task_alloc();
          *(v355 + 16) = v540;
          *(v355 + 24) = v350;
          sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
          (*(v353 + 104))(v352, v558, v547);
          sub_25424E278();

          v356 = *(v351 + 8);
          *(v2 + 1200) = v356;
          *(v2 + 1208) = (v351 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v356(v350, v568);
          sub_25424E178();
          (*(v630 + 8))(v349, v603);
          swift_beginAccess();
          v56 = 0;
          v232 = 0;
          v231 = 0;
          v230 = 0;
          v235 = v635;
          v3 = v640;
          v234 = v580;
          v233 = v589;
          v61 = v571;
          goto LABEL_90;
        }

        v245 = __OFSUB__(v244, v589);
        v244 -= v589;
        if (!v245)
        {
          v580 = v589;
          goto LABEL_57;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
      v87 = *(v2 + 1160);
      v88 = *(v2 + 1152);
      v89 = *(v2 + 968);
      v90 = *(v2 + 936);
      v91 = *(v2 + 880);
      v92 = *(v2 + 832);
      v93 = *(v2 + 768);

      v87(v89, v90);
      sub_25417C0B0(v93, type metadata accessor for EventQuery);
      v88(v91, v92);
      if ((v599 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v94 = *(v2 + 824);
    (*(v2 + 1160))(*(v2 + 1008), *(v2 + 936));
    v54 = v94;
    goto LABEL_130;
  }

  v26 = v635;
  v20 = v640;
  v25 = v580;
  v21 = v589;
  v22 = v620;
LABEL_115:
  v436 = *(v2 + 408);
  if (!v436[2])
  {
    v632 = v22;
    v635 = v26;
    (*(*(v2 + 736) + 8))(*(v2 + 744), *(v2 + 728));
    goto LABEL_127;
  }

  v437 = *(v2 + 1304);
  v438 = *(v2 + 472);
  if ((v437 & 1) == 0)
  {
    v245 = __OFSUB__(v438, v25);
    v438 -= v25;
    if (v245)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }
  }

  v589 = v21;
  v439 = *(v2 + 1128);
  v3 = *(v2 + 800);
  v440 = *(v2 + 744);
  v441 = *(v3 + *(v439 + 64));
  swift_getObjectType();
  v442 = sub_2541656E4(v436, v438, v437 & 1, v3 + *(v439 + 24), v441, v440);
  v443 = v436[2];
  swift_beginAccess();
  if (v443 <= 0xA)
  {
    if (!v436[2])
    {
      goto LABEL_124;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v641[0] = *(v2 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9130, &qword_254254550);
    sub_25424E618();
    v444 = v641[0];
  }

  else
  {

    v444 = MEMORY[0x277D84FA0];
  }

  *(v2 + 408) = v444;
LABEL_124:
  v445 = *(v2 + 744);
  v446 = *(v2 + 736);
  v1 = *(v2 + 728);
  swift_endAccess();
  (*(v446 + 8))(v445, v1);
  if (__OFADD__(v589, v442))
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (__OFADD__(v25, v442))
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v632 = v589 + v442;
  v635 = v25 + v442;
LABEL_127:
  v640 = v20;
  v447 = *(v2 + 1136);
  v448 = *(v2 + 1008);
  v449 = *(v2 + 960);
  v450 = *(v2 + 936);
  v451 = *(v2 + 856);
  v452 = *(v2 + 760);
  v453 = *(v2 + 488);
  sub_25417C0B0(*(v2 + 800), type metadata accessor for EventQuery);
  sub_25421ACE8(v451);
  sub_25417C110(v453, v452, type metadata accessor for EventQuery);
  v447(v449, v448, v450);
  v454 = sub_25424DA88();
  v455 = sub_25424E408();
  if (os_log_type_enabled(v454, v455))
  {
    v562 = *(v2 + 1192);
    v596 = *(v2 + 1152);
    v606 = *(v2 + 1008);
    v538 = *(v2 + 960);
    v541 = *(v2 + 1160);
    v456 = *(v2 + 936);
    v579 = *(v2 + 832);
    v588 = *(v2 + 856);
    v617 = *(v2 + 824);
    v457 = *(v2 + 760);
    v458 = swift_slowAlloc();
    v459 = swift_slowAlloc();
    v641[0] = v459;
    *v458 = 136446978;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v460 = sub_25424EA58();
    v462 = v461;
    sub_25417C0B0(v457, type metadata accessor for EventQuery);
    v463 = sub_2542203C4(v460, v462, v641);

    *(v458 + 4) = v463;
    *(v458 + 12) = 2082;
    v464 = sub_25424EA58();
    v466 = v465;
    v541(v538, v456);
    v467 = sub_2542203C4(v464, v466, v641);

    *(v458 + 14) = v467;
    *(v458 + 22) = 2048;
    *(v458 + 24) = v562;
    *(v458 + 32) = 2048;
    *(v458 + 34) = v632;
    _os_log_impl(&dword_254124000, v454, v455, "[%{public}s] Finished subquery %{public}s (%ld), emitted %ld matching event(s)", v458, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v459, -1, -1);
    MEMORY[0x259C07330](v458, -1, -1);

    v596(v588, v579);
    v541(v606, v456);
    v54 = v617;
  }

  else
  {
    v468 = v454;
    v469 = *(v2 + 1160);
    v470 = *(v2 + 1152);
    v471 = *(v2 + 960);
    v472 = *(v2 + 936);
    v473 = *(v2 + 856);
    v474 = *(v2 + 832);
    v618 = *(v2 + 1008);
    v633 = *(v2 + 824);
    v475 = *(v2 + 760);

    v469(v471, v472);
    sub_25417C0B0(v475, type metadata accessor for EventQuery);
    v470(v473, v474);
    v469(v618, v472);
    v54 = v633;
  }

LABEL_130:
  sub_25417C0B0(v54, type metadata accessor for CKQueryAsyncSequence);
  v476 = *(v2 + 752);
  v477 = *(v2 + 488);
  sub_25421ACE8(*(v2 + 848));
  sub_25417C110(v477, v476, type metadata accessor for EventQuery);
  v478 = sub_25424DA88();
  v479 = sub_25424E408();
  if (os_log_type_enabled(v478, v479))
  {
    v480 = *(v2 + 1192);
    v619 = *(v2 + 848);
    v634 = *(v2 + 1152);
    v481 = *(v2 + 832);
    v482 = *(v2 + 752);
    v483 = swift_slowAlloc();
    v484 = swift_slowAlloc();
    v641[0] = v484;
    *v483 = 136446466;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v485 = sub_25424EA58();
    v487 = v486;
    sub_25417C0B0(v482, type metadata accessor for EventQuery);
    v488 = sub_2542203C4(v485, v487, v641);

    *(v483 + 4) = v488;
    *(v483 + 12) = 2048;
    *(v483 + 14) = v480;
    _os_log_impl(&dword_254124000, v478, v479, "[%{public}s] Executed %ld subquery(s)", v483, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v484);
    MEMORY[0x259C07330](v484, -1, -1);
    MEMORY[0x259C07330](v483, -1, -1);

    v634(v619, v481);
  }

  else
  {
    v489 = *(v2 + 1152);
    v490 = *(v2 + 848);
    v491 = *(v2 + 832);
    v492 = *(v2 + 752);

    sub_25417C0B0(v492, type metadata accessor for EventQuery);
    v489(v490, v491);
  }

  v493 = *(v2 + 1160);
  v494 = *(v2 + 1136);
  v503 = *(v2 + 1300);
  v509 = *(v2 + 1088);
  v507 = *(v2 + 1072);
  v508 = *(v2 + 1064);
  v505 = *(v2 + 1184);
  v506 = *(v2 + 1056);
  v495 = *(v2 + 952);
  v496 = *(v2 + 936);
  v504 = *(v2 + 488);
  v494(v495, v504 + v503, v496);
  v497 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
  v498 = objc_allocWithZone(v497);
  v494(&v498[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v495, v496);
  v498[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 10;
  *&v498[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v498[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = v640;
  *&v498[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v2 + 344) = v498;
  *(v2 + 352) = v497;
  v499 = objc_msgSendSuper2((v2 + 344), sel_init);
  v493(v495, v496);
  [v505 submitLogEvent_];

  v494(v495, v504 + v503, v496);
  v500 = objc_allocWithZone(v497);
  v494(&v500[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v495, v496);
  v500[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 12;
  *&v500[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = v635;
  *&v500[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v500[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v2 + 360) = v500;
  *(v2 + 368) = v497;
  v501 = objc_msgSendSuper2((v2 + 360), sel_init);
  v493(v495, v496);
  [v505 submitLogEvent_];

  sub_254132E5C(v506, &unk_27F5BA1B0, qword_2542544A0);
  (*(v507 + 8))(v509, v508);

  v502 = *(v2 + 8);

  return v502(v635);
}

uint64_t sub_2541607AC()
{
  v1 = v0[145];
  v2 = v0[136];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[126];
  v7 = v0[117];
  v8 = v0[103];
  (*(v0[89] + 8))(v0[90], v0[88]);
  v1(v6, v7);
  sub_254132E5C(v5, &unk_27F5BA1B0, qword_2542544A0);
  (*(v3 + 8))(v2, v4);
  sub_25417C0B0(v8, type metadata accessor for CKQueryAsyncSequence);

  v9 = v0[1];

  return v9();
}

void sub_254160BA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v7 = type metadata accessor for EventQuery(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = sub_25424DAA8();
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  if (a2)
  {
    sub_25421ACE8(&v52 - v23);
    sub_25417C110(a3, v15, type metadata accessor for EventQuery);
    v25 = sub_25424DA88();
    v26 = sub_25424E418();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 136315138;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_25424EA58();
      v31 = v30;
      sub_25417C0B0(v15, type metadata accessor for EventQuery);
      v32 = sub_2542203C4(v29, v31, &v55);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_254124000, v25, v26, "[%s] Not imposing any subquery result limit because none was requested", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x259C07330](v28, -1, -1);
      MEMORY[0x259C07330](v27, -1, -1);
    }

    else
    {

      sub_25417C0B0(v15, type metadata accessor for EventQuery);
    }

    (*(v53 + 8))(v24, v54);
    return;
  }

  if (!*(a3 + *(type metadata accessor for EventQuery.Configuration(0) + 36)) || *(a4 + 16))
  {
    sub_25424D208();
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v33 > -9.22337204e18)
    {
      if (v33 < 9.22337204e18)
      {
        v34 = 4 * (v33 / 3600) + 4;
        v35 = v52 + v34;
        if (!__OFADD__(v52, v34))
        {
          sub_25421ACE8(v19);
          sub_25417C110(a3, v10, type metadata accessor for EventQuery);
          v36 = sub_25424DA88();
          v37 = sub_25424E418();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v55 = v39;
            *v38 = 136315650;
            sub_25424D948();
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v40 = sub_25424EA58();
            v42 = v41;
            sub_25417C0B0(v10, type metadata accessor for EventQuery);
            v43 = sub_2542203C4(v40, v42, &v55);

            *(v38 + 4) = v43;
            *(v38 + 12) = 2048;
            *(v38 + 14) = v52;
            *(v38 + 22) = 2048;
            *(v38 + 24) = v35;
            _os_log_impl(&dword_254124000, v36, v37, "[%s] Subquery is limiting result count to %ld, setting CKQuery limit to %ld to handle fake events", v38, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v39);
            MEMORY[0x259C07330](v39, -1, -1);
            MEMORY[0x259C07330](v38, -1, -1);
          }

          else
          {

            sub_25417C0B0(v10, type metadata accessor for EventQuery);
          }

          (*(v53 + 8))(v19, v54);
          return;
        }

LABEL_23:
        __break(1u);
        return;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_25421ACE8(v22);
  sub_25417C110(a3, v13, type metadata accessor for EventQuery);
  v44 = sub_25424DA88();
  v45 = sub_25424E418();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    *v46 = 136315138;
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v48 = sub_25424EA58();
    v50 = v49;
    sub_25417C0B0(v13, type metadata accessor for EventQuery);
    v51 = sub_2542203C4(v48, v50, &v55);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_254124000, v44, v45, "[%s] Not imposing any subquery result limit because there are no tags to match against", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x259C07330](v47, -1, -1);
    MEMORY[0x259C07330](v46, -1, -1);
  }

  else
  {

    sub_25417C0B0(v13, type metadata accessor for EventQuery);
  }

  (*(v53 + 8))(v22, v54);
}

uint64_t sub_2541612EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v258 = a2;
  v230 = type metadata accessor for EventRecord.DecodedEvent(0);
  v3 = MEMORY[0x28223BE20](v230);
  v232 = &v222 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v236 = &v222 - v6;
  MEMORY[0x28223BE20](v5);
  v231 = &v222 - v7;
  v8 = type metadata accessor for EventQuery(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v234 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v243 = &v222 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v222 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v250 = &v222 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v246 = &v222 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v227 = &v222 - v21;
  MEMORY[0x28223BE20](v20);
  v235 = &v222 - v22;
  v23 = sub_25424DAA8();
  v24 = *(v23 - 8);
  v256 = v23;
  v257 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v237 = &v222 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v244 = &v222 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v252 = &v222 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v253 = (&v222 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v248 = &v222 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v229 = &v222 - v36;
  MEMORY[0x28223BE20](v35);
  v239 = &v222 - v37;
  v240 = type metadata accessor for EventRecord(0);
  v38 = MEMORY[0x28223BE20](v240);
  v226 = &v222 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v245 = &v222 - v41;
  MEMORY[0x28223BE20](v40);
  v241 = &v222 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v222 - v44;
  v46 = sub_25424D8B8();
  v47 = *(v46 - 8);
  v254 = v46;
  v255 = v47;
  MEMORY[0x28223BE20](v46);
  v249 = &v222 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v222 - v50;
  v52 = sub_25424D948();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  v233 = &v222 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v242 = &v222 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v251 = (&v222 - v59);
  v60 = MEMORY[0x28223BE20](v58);
  v247 = &v222 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v228 = &v222 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v238 = &v222 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v222 - v66;
  v68 = a1;
  v69 = [a1 recordID];
  v70 = [v69 recordName];

  sub_25424DCB8();
  v71 = v52;
  sub_25424D8C8();

  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_254132E5C(v51, &unk_27F5B8E50, &qword_254254390);
    v72 = v252;
    sub_25421ACE8(v252);
    sub_25417C110(v259, v15, type metadata accessor for EventQuery);
    v73 = v68;
    v74 = sub_25424DA88();
    v75 = sub_25424E408();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v261 = v77;
      *v76 = 136446722;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v78 = sub_25424EA58();
      v80 = v79;
      sub_25417C0B0(v15, type metadata accessor for EventQuery);
      v81 = sub_2542203C4(v78, v80, &v261);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2160;
      *(v76 + 14) = 1752392040;
      *(v76 + 22) = 2080;
      v82 = [v73 recordID];
      v83 = [v82 recordName];

      v84 = sub_25424DCB8();
      v86 = v85;

      v87 = sub_2542203C4(v84, v86, &v261);

      *(v76 + 24) = v87;
      _os_log_impl(&dword_254124000, v74, v75, "[%{public}s] Ignoring record with non-UUID record name: %{mask.hash}s", v76, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v77, -1, -1);
      MEMORY[0x259C07330](v76, -1, -1);
    }

    else
    {

      sub_25417C0B0(v15, type metadata accessor for EventQuery);
    }

    (*(v257 + 8))(v72, v256);
    sub_254163628(9);
LABEL_16:
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    return (*(*(v141 - 8) + 56))(v258, 1, 1, v141);
  }

  v88 = v53;
  v90 = v53 + 32;
  v89 = *(v53 + 32);
  v89(v67, v51, v52);
  v91 = MEMORY[0x259C06420](1702125924, 0xE400000000000000);
  if (!v91)
  {
    (*(v255 + 56))(v45, 1, 1, v254);
    v97 = v259;
    v98 = v251;
    goto LABEL_12;
  }

  v92 = v68;
  v225 = v89;
  v261 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
  v93 = v254;
  v94 = swift_dynamicCast();
  v95 = v255;
  (*(v255 + 56))(v45, v94 ^ 1u, 1, v93);
  v96 = (*(v95 + 48))(v45, 1, v93);
  v97 = v259;
  v98 = v251;
  if (v96 == 1)
  {
LABEL_12:
    sub_254132E5C(v45, &unk_27F5BA1B0, qword_2542544A0);
    v122 = v253;
    sub_25421ACE8(v253);
    v123 = v250;
    sub_25417C110(v97, v250, type metadata accessor for EventQuery);
    v124 = v88;
    (*(v88 + 16))(v98, v67, v71);
    v125 = sub_25424DA88();
    v126 = sub_25424E408();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = v71;
      v255 = swift_slowAlloc();
      v261 = v255;
      *v127 = 136446466;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v252 = v67;
      v129 = sub_25424EA58();
      v130 = v123;
      v132 = v131;
      sub_25417C0B0(v130, type metadata accessor for EventQuery);
      v133 = sub_2542203C4(v129, v132, &v261);

      *(v127 + 4) = v133;
      *(v127 + 12) = 2082;
      v134 = sub_25424EA58();
      v136 = v135;
      v137 = *(v124 + 8);
      v137(v98, v71);
      v138 = sub_2542203C4(v134, v136, &v261);
      v67 = v252;

      *(v127 + 14) = v138;
      _os_log_impl(&dword_254124000, v125, v126, "[%{public}s] Ignoring record with no date: %{public}s", v127, 0x16u);
      v139 = v255;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v139, -1, -1);
      MEMORY[0x259C07330](v127, -1, -1);

      (*(v257 + 8))(v253, v256);
    }

    else
    {

      v140 = v123;
      v137 = *(v88 + 8);
      v128 = v71;
      v137(v98, v71);
      sub_25417C0B0(v140, type metadata accessor for EventQuery);
      (*(v257 + 8))(v122, v256);
    }

    sub_254163628(8);
    v137(v67, v128);
    goto LABEL_16;
  }

  v100 = *(v95 + 32);
  v99 = v95 + 32;
  v101 = v249;
  v253 = v100;
  (v100)(v249, v45, v93);
  v102 = [v92 isExpired];
  v224 = v90;
  if (v102)
  {
    sub_25421ACE8(v248);
    v103 = v246;
    sub_25417C110(v97, v246, type metadata accessor for EventQuery);
    v104 = v247;
    (*(v88 + 16))(v247, v67, v71);
    v105 = sub_25424DA88();
    v106 = sub_25424E408();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = v103;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v255 = v99;
      v110 = v71;
      v111 = v109;
      v261 = v109;
      *v108 = 136446466;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v252 = v67;
      v112 = sub_25424EA58();
      v114 = v113;
      sub_25417C0B0(v107, type metadata accessor for EventQuery);
      v115 = sub_2542203C4(v112, v114, &v261);
      v101 = v249;

      *(v108 + 4) = v115;
      *(v108 + 12) = 2082;
      v116 = v247;
      v117 = sub_25424EA58();
      v119 = v118;
      (*(v88 + 8))(v116, v110);
      v120 = sub_2542203C4(v117, v119, &v261);
      v67 = v252;

      *(v108 + 14) = v120;
      _os_log_impl(&dword_254124000, v105, v106, "[%{public}s] Ignoring record that has expired: %{public}s", v108, 0x16u);
      swift_arrayDestroy();
      v121 = v111;
      v71 = v110;
      MEMORY[0x259C07330](v121, -1, -1);
      MEMORY[0x259C07330](v108, -1, -1);
    }

    else
    {

      (*(v88 + 8))(v104, v71);
      sub_25417C0B0(v103, type metadata accessor for EventQuery);
    }

    (*(v257 + 8))(v248, v256);
    sub_254163628(7);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    v147 = *(v146 + 48);
    v148 = *(v146 + 64);
    v149 = type metadata accessor for SomeEvent(0);
    v150 = v258;
    (*(*(v149 - 8) + 56))(v258, 1, 1, v149);
    v151 = v150 + v147;
    v152 = v67;
    v153 = v71;
    goto LABEL_21;
  }

  v143 = v92;
  v144 = v245;
  EventRecord.init(from:)(v143, v245);
  v145 = v88;
  v154 = v71;
  v155 = v241;
  sub_25417C178(v144, v241, type metadata accessor for EventRecord);
  v156 = *(v155 + *(v240 + 28));
  if (v156 == 7)
  {
    v157 = v239;
    sub_25421ACE8(v239);
    v158 = v235;
    sub_25417C110(v259, v235, type metadata accessor for EventQuery);
    v159 = v238;
    (*(v88 + 16))(v238, v67, v154);
    v160 = sub_25424DA88();
    v161 = sub_25424E418();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = v158;
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v252 = v67;
      v165 = v164;
      v261 = v164;
      *v163 = 136315394;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v255 = v99;
      v166 = sub_25424EA58();
      LODWORD(v251) = v161;
      v168 = v167;
      sub_25417C0B0(v162, type metadata accessor for EventQuery);
      v169 = sub_2542203C4(v166, v168, &v261);
      v101 = v249;

      *(v163 + 4) = v169;
      *(v163 + 12) = 2080;
      v170 = v238;
      v171 = sub_25424EA58();
      v173 = v172;
      (*(v145 + 8))(v170, v154);
      v174 = sub_2542203C4(v171, v173, &v261);
      v155 = v241;

      *(v163 + 14) = v174;
      _os_log_impl(&dword_254124000, v160, v251, "[%s] Ignoring fake record: %s", v163, 0x16u);
      swift_arrayDestroy();
      v175 = v165;
      v67 = v252;
      MEMORY[0x259C07330](v175, -1, -1);
      MEMORY[0x259C07330](v163, -1, -1);

      (*(v257 + 8))(v239, v256);
    }

    else
    {

      (*(v145 + 8))(v159, v154);
      sub_25417C0B0(v158, type metadata accessor for EventQuery);
      (*(v257 + 8))(v157, v256);
      v101 = v249;
    }

    sub_254163628(16);
    sub_25417C0B0(v155, type metadata accessor for EventRecord);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    v183 = *(v146 + 48);
    v148 = *(v146 + 64);
    v184 = type metadata accessor for SomeEvent(0);
    v150 = v258;
    (*(*(v184 - 8) + 56))(v258, 1, 1, v184);
    goto LABEL_29;
  }

  v176 = v240;
  v250 = type metadata accessor for EventQuery.Configuration(0);
  v177 = (v155 + *(v176 + 32));
  v178 = *v177;
  v179 = v177[1];
  if (*(v259 + *(v250 + 84)) == 1)
  {
    LOBYTE(v261) = v156;
    v262 = v178;
    v263 = v179;
    sub_254140660(v178, v179);
    v180 = v236;
    v181 = v236;
    v182 = 1;
  }

  else
  {
    LOBYTE(v261) = v156;
    v262 = v178;
    v263 = v179;
    sub_254140660(v178, v179);
    v180 = v236;
    v181 = v236;
    v182 = 0;
  }

  static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(&v261, v182, v181);
  v251 = 0;
  sub_254134D04(v262, v263);
  v185 = v231;
  sub_25417C178(v180, v231, type metadata accessor for EventRecord.DecodedEvent);
  v186 = v232;
  sub_25417C110(v185, v232, type metadata accessor for EventRecord.DecodedEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v188 = v259;
  v101 = v249;
  if (EnumCaseMultiPayload != 1)
  {
    sub_25417C0B0(v185, type metadata accessor for EventRecord.DecodedEvent);
    sub_25417C0B0(v155, type metadata accessor for EventRecord);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
    v183 = *(v146 + 48);
    v148 = *(v146 + 64);
    v215 = v186;
    v150 = v258;
    sub_25417C178(v215, v258, type metadata accessor for SomeEvent);
    v216 = type metadata accessor for SomeEvent(0);
    (*(*(v216 - 8) + 56))(v150, 0, 1, v216);
LABEL_29:
    v151 = v150 + v183;
    v152 = v67;
    v153 = v154;
LABEL_21:
    v225(v151, v152, v153);
    (v253)(v150 + v148, v101, v254);
    return (*(*(v146 - 8) + 56))(v150, 0, 1, v146);
  }

  v189 = v229;
  sub_25421ACE8(v229);
  v190 = v227;
  sub_25417C110(v188, v227, type metadata accessor for EventQuery);
  v191 = v155;
  v192 = v226;
  sub_25417C110(v191, v226, type metadata accessor for EventRecord);
  v193 = *(v88 + 16);
  v194 = v228;
  v223 = v154;
  v193(v228, v67, v154);
  v195 = sub_25424DA88();
  v196 = sub_25424E428();
  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v252 = v67;
    v255 = v198;
    v261 = v198;
    *v197 = 136446722;
    v251 = v195;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v199 = v223;
    v200 = sub_25424EA58();
    v202 = v201;
    sub_25417C0B0(v190, type metadata accessor for EventQuery);
    v203 = sub_2542203C4(v200, v202, &v261);

    *(v197 + 4) = v203;
    *(v197 + 12) = 2080;
    v260 = *(v192 + *(v240 + 28));
    v204 = sub_25424DD08();
    v206 = v205;
    sub_25417C0B0(v192, type metadata accessor for EventRecord);
    v207 = sub_2542203C4(v204, v206, &v261);
    v101 = v249;

    *(v197 + 14) = v207;
    *(v197 + 22) = 2080;
    v208 = v228;
    v209 = sub_25424EA58();
    v211 = v210;
    (*(v88 + 8))(v208, v199);
    v212 = sub_2542203C4(v209, v211, &v261);

    *(v197 + 24) = v212;
    v213 = v251;
    _os_log_impl(&dword_254124000, v251, v196, "[%{public}s] Ignoring fake record that had mismatched dataType (%s): %s", v197, 0x20u);
    v214 = v255;
    swift_arrayDestroy();
    v67 = v252;
    MEMORY[0x259C07330](v214, -1, -1);
    MEMORY[0x259C07330](v197, -1, -1);

    (*(v257 + 8))(v229, v256);
  }

  else
  {

    (*(v88 + 8))(v194, v223);
    sub_25417C0B0(v192, type metadata accessor for EventRecord);
    sub_25417C0B0(v190, type metadata accessor for EventQuery);
    (*(v257 + 8))(v189, v256);
  }

  sub_254163628(16);
  sub_25417C0B0(v231, type metadata accessor for EventRecord.DecodedEvent);
  sub_25417C0B0(v241, type metadata accessor for EventRecord);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9120, &qword_254254538);
  v218 = *(v217 + 48);
  v219 = *(v217 + 64);
  v220 = type metadata accessor for SomeEvent(0);
  v221 = v258;
  (*(*(v220 - 8) + 56))(v258, 1, 1, v220);
  v225(v221 + v218, v67, v223);
  (v253)(v221 + v219, v101, v254);
  (*(*(v217 - 8) + 56))(v221, 0, 1, v217);
  return sub_25417C0B0(v232, type metadata accessor for EventRecord.DecodedEvent);
}

void sub_254163628(char a1)
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EventQuery.Configuration(0);
  v8 = *(v4 + 16);
  v8(v6, v1 + *(v7 + 24), v3);
  v9 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
  v10 = objc_allocWithZone(v9);
  v8(&v10[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v6, v3);
  v10[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = a1;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v10[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  v12.receiver = v10;
  v12.super_class = v9;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  (*(v4 + 8))(v6, v3);
  [*(v1 + *(v7 + 64)) submitLogEvent_];
}

uint64_t sub_2541637DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v234 = a5;
  v210 = a4;
  v206 = a3;
  v244 = a1;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1E0, &qword_254254560);
  v7 = *(v253 - 8);
  v8 = MEMORY[0x28223BE20](v253);
  v204 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v225 = &v199 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v243 = (&v199 - v13);
  MEMORY[0x28223BE20](v12);
  v15 = &v199 - v14;
  v254 = sub_25424D948();
  v16 = *(v254 - 8);
  v17 = MEMORY[0x28223BE20](v254);
  v218 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v201 = &v199 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v213 = &v199 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v202 = &v199 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v205 = &v199 - v26;
  MEMORY[0x28223BE20](v25);
  v237 = &v199 - v27;
  v246 = sub_25424DAA8();
  v28 = *(v246 - 8);
  v29 = MEMORY[0x28223BE20](v246);
  v226 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v220 = &v199 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v203 = &v199 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v224 = &v199 - v36;
  MEMORY[0x28223BE20](v35);
  v238 = &v199 - v37;
  v200 = type metadata accessor for SomeEvent(0);
  v38 = MEMORY[0x28223BE20](v200);
  v219 = &v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v236 = &v199 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v199 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v199 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9218, &qword_254254598);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v50 = &v199 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v199 - v51;
  v258[0] = a2;

  sub_25416AC3C(v258);
  v53 = v258[0];
  v54 = type metadata accessor for EventQuery.Configuration(0);
  v221 = 0;
  v231 = 0;
  v55 = 0;
  v211 = v54;
  v56 = *(v54 + 64);
  v214 = v5;
  v212 = *(v5 + v56);
  v251 = (v16 + 16);
  v222 = v53;
  v57 = *(v53 + 16);
  v250 = (v16 + 8);
  v245 = (v28 + 8);
  v241 = (v7 + 16);
  v233 = (v7 + 88);
  v239 = (v7 + 8);
  v232 = *MEMORY[0x277D85888];
  v217 = (v7 + 96);
  v216 = *MEMORY[0x277D85880];
  v209 = *MEMORY[0x277D85878];
  *&v58 = 136315394;
  v215 = v58;
  *&v58 = 136446466;
  v207 = v58;
  v235 = v15;
  v240 = v46;
  v248 = v52;
  v59 = v243;
  v60 = v237;
  v242 = v44;
  v230 = v57;
  v61 = v238;
  v228 = v50;
  while (1)
  {
    if (v55 == v57)
    {
      v62 = v15;
      v63 = v61;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
      (*(*(v64 - 8) + 56))(v50, 1, 1, v64);
      v247 = v57;
      goto LABEL_9;
    }

    if ((v55 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v55 >= *(v222 + 16))
    {
      goto LABEL_43;
    }

    v62 = v15;
    v63 = v61;
    v65 = v222;
    v66 = v55;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
    v68 = *(v67 - 8);
    sub_254132DF4(v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v66, v50, &qword_27F5B8DD0, &qword_2542545A0);
    v247 = (v66 + 1);
    (*(v68 + 56))(v50, 0, 1, v67);
    v59 = v243;
LABEL_9:
    v69 = v248;
    sub_25417E6C8(v50, v248, &unk_27F5B9218, &qword_254254598);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
    v71 = (*(*(v70 - 8) + 48))(v69, 1, v70);
    if (v71 == 1)
    {

      return v221;
    }

    LODWORD(v229) = v71;
    sub_25417C178(v69 + *(v70 + 48), v46, type metadata accessor for SomeEvent);
    v72 = v63;
    sub_25421ACE8(v63);
    v249 = *v251;
    v249(v60, v244, v254);
    v73 = v242;
    sub_25417C110(v46, v242, type metadata accessor for SomeEvent);
    v74 = sub_25424DA88();
    v75 = sub_25424E418();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v259 = v227;
      *v76 = v215;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v77 = v254;
      v78 = sub_25424EA58();
      v80 = v79;
      v252 = *v250;
      v252(v60, v77);
      v81 = sub_2542203C4(v78, v80, &v259);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2080;
      sub_2541DA834(&v255);
      v82 = v256;
      v83 = v257;
      v84 = __swift_project_boxed_opaque_existential_1(&v255, v256);
      v258[3] = v82;
      v258[4] = *(v83 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v258);
      v86 = *(*(v82 - 8) + 16);
      v86(boxed_opaque_existential_1, v84, v82);
      v87 = __swift_destroy_boxed_opaque_existential_1(&v255);
      v88 = v72;
      MEMORY[0x28223BE20](v87);
      v86((&v199 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0)), boxed_opaque_existential_1, v82);
      v59 = v243;
      v90 = sub_25424DD08();
      v92 = v91;
      v15 = v235;
      sub_25417C0B0(v242, type metadata accessor for SomeEvent);
      __swift_destroy_boxed_opaque_existential_1(v258);
      v93 = sub_2542203C4(v90, v92, &v259);

      *(v76 + 14) = v93;
      v94 = v75;
      v95 = v252;
      _os_log_impl(&dword_254124000, v74, v94, "[%s] Emitting matching event: %s", v76, 0x16u);
      v96 = v227;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v96, -1, -1);
      v97 = v76;
      v46 = v240;
      MEMORY[0x259C07330](v97, -1, -1);

      v98 = *v245;
      (*v245)(v88, v246);
    }

    else
    {

      sub_25417C0B0(v73, type metadata accessor for SomeEvent);
      v95 = *v250;
      (*v250)(v60, v254);
      v98 = *v245;
      (*v245)(v72, v246);
      v15 = v62;
    }

    sub_25417C110(v46, v236, type metadata accessor for SomeEvent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E228();
    v99 = *v241;
    v100 = v253;
    (*v241)(v59, v15, v253);
    v101 = (*v233)(v59, v100);
    if (v101 == v232)
    {
      (*v217)(v59, v253);
      v102 = *v59;
      v103 = v224;
      if (*v59 > 99)
      {
        (*v239)(v15, v253);
        sub_25417C0B0(v46, type metadata accessor for SomeEvent);
        v61 = v238;
      }

      else
      {
        sub_25421ACE8(v224);
        v104 = v205;
        v249(v205, v244, v254);
        v105 = sub_25424DA88();
        v106 = sub_25424E408();
        v107 = os_log_type_enabled(v105, v106);
        v61 = v238;
        if (v107)
        {
          v108 = swift_slowAlloc();
          v252 = v95;
          v109 = v108;
          v110 = v98;
          v111 = swift_slowAlloc();
          v258[0] = v111;
          *v109 = v207;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v112 = sub_25424EA58();
          v114 = v113;
          v252(v104, v254);
          v115 = sub_2542203C4(v112, v114, v258);

          *(v109 + 4) = v115;
          *(v109 + 12) = 2048;
          *(v109 + 14) = v102;
          _os_log_impl(&dword_254124000, v105, v106, "[%{public}s] Running out of queue space, %ld slots left", v109, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v111);
          MEMORY[0x259C07330](v111, -1, -1);
          v116 = v109;
          v95 = v252;
          MEMORY[0x259C07330](v116, -1, -1);

          v110(v224, v246);
          v61 = v238;
        }

        else
        {

          v95(v104, v254);
          v98(v103, v246);
        }

        v15 = v235;
        (*v239)(v235, v253);
        v46 = v240;
        sub_25417C0B0(v240, type metadata accessor for SomeEvent);
      }

      v60 = v237;
      v57 = v230;
      if (__OFADD__(v231, 1))
      {
        goto LABEL_44;
      }

      if ((v210 & 1) == 0 && v231 + 1 == v206)
      {
        v152 = v248;

        v95(v152, v254);
        v153 = &v237;
        return *(v153 - 32);
      }

      v221 = ++v231;
    }

    else
    {
      v227 = v98;
      v117 = v15;
      v118 = v220;
      v119 = v219;
      v120 = v218;
      v121 = v226;
      v252 = v95;
      if (v101 == v216)
      {

        v155 = v203;
        sub_25421ACE8(v203);
        v156 = v202;
        v249(v202, v244, v254);
        sub_25417C110(v46, v119, type metadata accessor for SomeEvent);
        v157 = sub_25424DA88();
        v158 = sub_25424E428();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          v247 = swift_slowAlloc();
          v258[0] = v247;
          *v159 = v207;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          LODWORD(v244) = v158;
          v160 = sub_25424EA58();
          v162 = v161;
          v163 = v252;
          v252(v156, v254);
          v164 = sub_2542203C4(v160, v162, v258);

          *(v159 + 4) = v164;
          *(v159 + 12) = 2080;
          sub_25417C110(v119, v236, type metadata accessor for SomeEvent);
          v165 = sub_25424DD08();
          v167 = v166;
          sub_25417C0B0(v119, type metadata accessor for SomeEvent);
          v168 = sub_2542203C4(v165, v167, v258);

          *(v159 + 14) = v168;
          v169 = v163;
          _os_log_impl(&dword_254124000, v157, v244, "[%{public}s] Yield dropped event: %s", v159, 0x16u);
          v170 = v247;
          swift_arrayDestroy();
          v171 = v235;
          MEMORY[0x259C07330](v170, -1, -1);
          MEMORY[0x259C07330](v159, -1, -1);

          v227(v155, v246);
          v172 = v214;
        }

        else
        {

          sub_25417C0B0(v119, type metadata accessor for SomeEvent);
          v169 = v252;
          v252(v156, v254);
          v227(v155, v246);
          v172 = v214;
          v171 = v117;
        }

        v185 = v213;
        v186 = v254;
        v187 = v249;
        v249(v213, v172 + *(v211 + 24), v254);
        v188 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
        v189 = objc_allocWithZone(v188);
        v187(&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v185, v186);
        v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 4;
        *&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
        *&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
        *&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
        v260.receiver = v189;
        v260.super_class = v188;
        v190 = objc_msgSendSuper2(&v260, sel_init);
        v169(v185, v186);
        [v212 submitLogEvent_];

        v191 = *v239;
        v192 = v253;
        (*v239)(v171, v253);
        sub_25417C0B0(v240, type metadata accessor for SomeEvent);
        v191(v243, v192);
        v169(v248, v186);
        goto LABEL_39;
      }

      if (v101 == v209)
      {

        sub_25421ACE8(v118);
        v173 = v201;
        v249(v201, v244, v254);
        v174 = v118;
        v175 = sub_25424DA88();
        v176 = sub_25424E408();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v247 = swift_slowAlloc();
          v258[0] = v247;
          *v177 = 136446210;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v178 = sub_25424EA58();
          v180 = v179;
          v181 = v252;
          v252(v173, v254);
          v182 = sub_2542203C4(v178, v180, v258);

          *(v177 + 4) = v182;
          _os_log_impl(&dword_254124000, v175, v176, "[%{public}s] Yield indicated that the stream is terminated", v177, 0xCu);
          v183 = v247;
          __swift_destroy_boxed_opaque_existential_1(v247);
          v184 = v183;
          v117 = v235;
          MEMORY[0x259C07330](v184, -1, -1);
          MEMORY[0x259C07330](v177, -1, -1);
        }

        else
        {

          v181 = v252;
          v252(v173, v254);
        }

        v227(v174, v246);
        v193 = v213;
        v194 = v254;
        v195 = v249;
        v249(v213, v214 + *(v211 + 24), v254);
        v196 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
        v197 = objc_allocWithZone(v196);
        v195(&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v193, v194);
        v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 5;
        *&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
        *&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
        *&v197[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
        v261.receiver = v197;
        v261.super_class = v196;
        v198 = objc_msgSendSuper2(&v261, sel_init);
        v181(v193, v194);
        [v212 submitLogEvent_];

        (*v239)(v117, v253);
        sub_25417C0B0(v240, type metadata accessor for SomeEvent);
        v181(v248, v194);
LABEL_39:
        v153 = &v253;
        return *(v153 - 32);
      }

      sub_25421ACE8(v226);
      v249(v120, v244, v254);
      v122 = v225;
      v99(v225, v117, v253);
      v123 = sub_25424DA88();
      v223 = sub_25424E438();
      v124 = os_log_type_enabled(v123, v223);
      v125 = v239;
      v229 = v239 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v124)
      {
        v126 = swift_slowAlloc();
        v127 = v253;
        v128 = v126;
        v208 = swift_slowAlloc();
        v258[0] = v208;
        *v128 = v207;
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v129 = sub_25424EA58();
        v131 = v130;
        v132 = v120;
        v133 = v252;
        v252(v132, v254);
        v134 = sub_2542203C4(v129, v131, v258);

        *(v128 + 4) = v134;
        *(v128 + 12) = 2082;
        v135 = v225;
        v99(v204, v225, v127);
        v136 = sub_25424DD08();
        v138 = v137;
        v139 = *v239;
        (*v239)(v135, v127);
        v140 = sub_2542203C4(v136, v138, v258);

        *(v128 + 14) = v140;
        _os_log_impl(&dword_254124000, v123, v223, "[%{public}s] Yield result not handled: %{public}s", v128, 0x16u);
        v141 = v208;
        swift_arrayDestroy();
        v142 = v141;
        v117 = v235;
        MEMORY[0x259C07330](v142, -1, -1);
        MEMORY[0x259C07330](v128, -1, -1);

        v143 = v226;
      }

      else
      {

        v139 = *v125;
        (*v125)(v122, v253);
        v144 = v120;
        v133 = v252;
        v252(v144, v254);
        v143 = v121;
      }

      v227(v143, v246);
      v145 = v213;
      v146 = v254;
      v147 = v249;
      v249(v213, v214 + *(v211 + 24), v254);
      v148 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
      v149 = objc_allocWithZone(v148);
      v147(&v149[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v145, v146);
      v149[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 6;
      *&v149[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
      *&v149[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
      *&v149[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
      v262.receiver = v149;
      v262.super_class = v148;
      v150 = objc_msgSendSuper2(&v262, sel_init);
      v133(v145, v146);
      [v212 submitLogEvent_];

      v151 = v253;
      v139(v117, v253);
      v46 = v240;
      sub_25417C0B0(v240, type metadata accessor for SomeEvent);
      v59 = v243;
      v139(v243, v151);
      v95 = v133;
      v60 = v237;
      v15 = v117;
      v61 = v238;
      v57 = v230;
    }

    (v95)();
    v50 = v228;
    v55 = v247;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2541654AC()
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  SomeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254165550(uint64_t a1)
{
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  return SomeEvent.hash(into:)(a1);
}

uint64_t sub_2541655DC(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  SomeEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t sub_25416567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_2541656E4(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v217 = a6;
  v210 = a5;
  v241 = a4;
  v200 = a3;
  v195 = a2;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1E0, &qword_254254560);
  v7 = *(v223 - 8);
  v8 = MEMORY[0x28223BE20](v223 - 8);
  v203 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v226 = &v192 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v235 = (&v192 - v13);
  MEMORY[0x28223BE20](v12);
  v15 = &v192 - v14;
  v16 = sub_25424D948();
  v239 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v216 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v196 = &v192 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v209 = &v192 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v198 = &v192 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v192 - v26;
  MEMORY[0x28223BE20](v25);
  v215 = &v192 - v28;
  v238 = sub_25424DAA8();
  v237 = *(v238 - 8);
  v29 = MEMORY[0x28223BE20](v238);
  v31 = &v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v218 = &v192 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v192 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v193 = &v192 - v38;
  MEMORY[0x28223BE20](v37);
  v228 = &v192 - v39;
  v222 = type metadata accessor for SomeEvent(0);
  v240 = *(v222 - 8);
  v40 = MEMORY[0x28223BE20](v222);
  v197 = &v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v219 = &v192 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v214 = &v192 - v45;
  MEMORY[0x28223BE20](v44);
  v229 = &v192 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530);
  MEMORY[0x28223BE20](v47 - 8);
  v221 = &v192 - v48;
  v49 = a1;
  v50 = a1[2];
  v242 = v16;
  v225 = v31;
  v227 = v15;
  v199 = v36;
  v194 = v27;
  if (v50 == 1)
  {
    v192 = 0;
    AssociatedTypeWitness = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9160, &qword_254254570);
    AssociatedConformanceWitness = sub_25414081C(&qword_27F5B9168, &qword_27F5B9160, &qword_254254570, MEMORY[0x277D842F0]);
    *&v251 = a1;
    *(&v251 + 1) = sub_25417E918;
    v252 = 0;

    v51 = v228;
LABEL_8:
    sub_25412DC4C(&v251, v255);
    v58 = __swift_project_boxed_opaque_existential_1(v255, v255[3]);
    MEMORY[0x28223BE20](v58);
    (*(v60 + 16))(&v192 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v251);
    sub_25424DE98();
    v61 = 0;
    v220 = (v240 + 6);
    v240 = (v239 + 16);
    ++v237;
    v213 = (v7 + 11);
    v212 = *MEMORY[0x277D85888];
    v208 = *MEMORY[0x277D85880];
    v207 = *MEMORY[0x277D85878];
    v201 = (v7 + 12);
    *&v62 = 136315394;
    v205 = v62;
    *&v62 = 136446466;
    v204 = v62;
    v63 = v229;
    v64 = v221;
    v211 = (v7 + 1);
    v236 = (v239 + 8);
    v234 = v7 + 2;
    while (1)
    {
      v202 = v61;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v251, AssociatedTypeWitness);
        sub_25424E5C8();
        v87 = (*v220)(v64, 1, v222);
        if (v87 == 1)
        {
          v146 = v202;
          goto LABEL_42;
        }

        v88 = v15;
        LODWORD(v231) = v87;
        sub_25417C178(v64, v63, type metadata accessor for SomeEvent);
        sub_25421ACE8(v51);
        v89 = v215;
        v90 = v242;
        v239 = *v240;
        (v239)(v215, v241, v242);
        v91 = v214;
        sub_25417C110(v63, v214, type metadata accessor for SomeEvent);
        v92 = sub_25424DA88();
        v93 = sub_25424E418();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v247 = v232;
          *v94 = v205;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v95 = sub_25424EA58();
          v97 = v96;
          v233 = *v236;
          v233(v89, v242);
          v98 = sub_2542203C4(v95, v97, &v247);

          *(v94 + 4) = v98;
          *(v94 + 12) = 2080;
          sub_2541DA834(&v243);
          v99 = v244;
          v100 = v245;
          v101 = __swift_project_boxed_opaque_existential_1(&v243, v244);
          v246[3] = v99;
          v246[4] = *(v100 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v246);
          v103 = *(*(v99 - 8) + 16);
          v103(boxed_opaque_existential_1, v101, v99);
          v104 = __swift_destroy_boxed_opaque_existential_1(&v243);
          MEMORY[0x28223BE20](v104);
          v103((&v192 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0)), boxed_opaque_existential_1, v99);
          v106 = sub_25424DD08();
          v108 = v107;
          v109 = v223;
          sub_25417C0B0(v91, type metadata accessor for SomeEvent);
          __swift_destroy_boxed_opaque_existential_1(v246);
          v110 = sub_2542203C4(v106, v108, &v247);
          v111 = v227;

          *(v94 + 14) = v110;
          _os_log_impl(&dword_254124000, v92, v93, "[%s] Emitting matching event: %s", v94, 0x16u);
          v112 = v232;
          swift_arrayDestroy();
          v90 = v242;
          MEMORY[0x259C07330](v112, -1, -1);
          v113 = v94;
          v63 = v229;
          MEMORY[0x259C07330](v113, -1, -1);

          v232 = *v237;
          v232(v228, v238);
          v114 = v218;
          v115 = v226;
          v116 = v216;
        }

        else
        {

          sub_25417C0B0(v91, type metadata accessor for SomeEvent);
          v233 = *v236;
          v233(v89, v90);
          v232 = *v237;
          v232(v51, v238);
          v114 = v218;
          v115 = v226;
          v116 = v216;
          v111 = v88;
          v109 = v223;
        }

        sub_25417C110(v63, v219, type metadata accessor for SomeEvent);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
        sub_25424E228();
        v117 = *v234;
        v118 = v235;
        (*v234)(v235, v111, v109);
        v119 = (*v213)(v118, v109);
        v15 = v111;
        if (v119 == v212)
        {
          break;
        }

        if (v119 == v208)
        {
          v147 = v199;
          sub_25421ACE8(v199);
          v148 = v198;
          (v239)(v198, v241, v90);
          v149 = v197;
          sub_25417C110(v63, v197, type metadata accessor for SomeEvent);
          v150 = sub_25424DA88();
          v151 = sub_25424E428();
          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            v234 = swift_slowAlloc();
            v246[0] = v234;
            *v152 = v204;
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v153 = sub_25424EA58();
            v155 = v154;
            v156 = v148;
            v157 = v233;
            v233(v156, v242);
            v158 = sub_2542203C4(v153, v155, v246);

            *(v152 + 4) = v158;
            *(v152 + 12) = 2080;
            sub_25417C110(v149, v219, type metadata accessor for SomeEvent);
            v159 = sub_25424DD08();
            v161 = v160;
            sub_25417C0B0(v149, type metadata accessor for SomeEvent);
            v162 = sub_2542203C4(v159, v161, v246);
            v90 = v242;

            *(v152 + 14) = v162;
            v163 = v151;
            v164 = v157;
            _os_log_impl(&dword_254124000, v150, v163, "[%{public}s] Yield dropped event: %s", v152, 0x16u);
            v165 = v234;
            swift_arrayDestroy();
            MEMORY[0x259C07330](v165, -1, -1);
            v166 = v152;
            v63 = v229;
            MEMORY[0x259C07330](v166, -1, -1);
          }

          else
          {

            sub_25417C0B0(v149, type metadata accessor for SomeEvent);
            v164 = v233;
            v233(v148, v90);
          }

          v232(v147, v238);
          v179 = v209;
          v180 = v239;
          (v239)(v209, v241, v90);
          v181 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
          v182 = objc_allocWithZone(v181);
          v180(&v182[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v179, v90);
          v182[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 4;
          *&v182[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
          *&v182[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
          *&v182[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
          v248.receiver = v182;
          v248.super_class = v181;
          v183 = objc_msgSendSuper2(&v248, sel_init);
          v164(v179, v90);
          [v210 submitLogEvent_];

          v184 = *v211;
          v185 = v223;
          (*v211)(v227, v223);
          sub_25417C0B0(v63, type metadata accessor for SomeEvent);
          v184(v235, v185);
          goto LABEL_40;
        }

        if (v119 == v207)
        {
          v167 = v114;
          sub_25421ACE8(v114);
          v168 = v196;
          (v239)(v196, v241, v90);
          v169 = sub_25424DA88();
          v170 = sub_25424E408();
          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            v246[0] = v235;
            *v171 = 136446210;
            sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v172 = sub_25424EA58();
            v174 = v173;
            v175 = v233;
            v233(v168, v242);
            v176 = sub_2542203C4(v172, v174, v246);
            v90 = v242;

            *(v171 + 4) = v176;
            _os_log_impl(&dword_254124000, v169, v170, "[%{public}s] Yield indicated that the stream is terminated", v171, 0xCu);
            v177 = v235;
            __swift_destroy_boxed_opaque_existential_1(v235);
            MEMORY[0x259C07330](v177, -1, -1);
            v178 = v171;
            v63 = v229;
            MEMORY[0x259C07330](v178, -1, -1);
          }

          else
          {

            v175 = v233;
            v233(v168, v90);
          }

          v232(v167, v238);
          v186 = v209;
          v187 = v239;
          (v239)(v209, v241, v90);
          v188 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
          v189 = objc_allocWithZone(v188);
          v187(&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v186, v90);
          v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 5;
          *&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
          *&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
          *&v189[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
          v249.receiver = v189;
          v249.super_class = v188;
          v190 = objc_msgSendSuper2(&v249, sel_init);
          v175(v186, v90);
          [v210 submitLogEvent_];

          (*v211)(v227, v223);
          sub_25417C0B0(v63, type metadata accessor for SomeEvent);
LABEL_40:
          v145 = &v232;
LABEL_41:
          v146 = *(v145 - 32);
LABEL_42:
          __swift_destroy_boxed_opaque_existential_1(&v251);
          __swift_destroy_boxed_opaque_existential_1(v255);
          return v146;
        }

        v120 = v90;
        v121 = v225;
        sub_25421ACE8(v225);
        (v239)(v116, v241, v120);
        v117(v115, v111, v109);
        v122 = v109;
        v123 = sub_25424DA88();
        v224 = sub_25424E438();
        v124 = os_log_type_enabled(v123, v224);
        v230 = v236 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v125 = v211;
        v231 = v211 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v124)
        {
          v65 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v246[0] = v206;
          *v65 = v204;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v66 = v125;
          v67 = sub_25424EA58();
          v69 = v68;
          v70 = v116;
          v71 = v233;
          v233(v70, v242);
          v72 = sub_2542203C4(v67, v69, v246);

          *(v65 + 4) = v72;
          *(v65 + 12) = 2082;
          v73 = v226;
          v117(v203, v226, v122);
          v74 = sub_25424DD08();
          v76 = v75;
          v77 = *v66;
          (*v66)(v73, v122);
          v78 = sub_2542203C4(v74, v76, v246);
          v15 = v227;

          *(v65 + 14) = v78;
          v79 = v71;
          _os_log_impl(&dword_254124000, v123, v224, "[%{public}s] Yield result not handled: %{public}s", v65, 0x16u);
          v80 = v206;
          swift_arrayDestroy();
          v81 = v242;
          MEMORY[0x259C07330](v80, -1, -1);
          MEMORY[0x259C07330](v65, -1, -1);

          v232(v225, v238);
        }

        else
        {

          v77 = *v125;
          (*v125)(v115, v122);
          v79 = v233;
          v233(v116, v120);
          v232(v121, v238);
          v15 = v227;
          v81 = v120;
        }

        v82 = v209;
        v83 = v239;
        (v239)(v209, v241, v81);
        v84 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
        v85 = objc_allocWithZone(v84);
        v83(&v85[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v82, v81);
        v85[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 6;
        *&v85[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
        *&v85[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
        *&v85[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
        v250.receiver = v85;
        v250.super_class = v84;
        v86 = objc_msgSendSuper2(&v250, sel_init);
        v79(v82, v81);
        [v210 submitLogEvent_];

        v77(v15, v122);
        v63 = v229;
        sub_25417C0B0(v229, type metadata accessor for SomeEvent);
        v77(v235, v122);
        v51 = v228;
        v64 = v221;
      }

      v126 = v235;
      (*v201)(v235, v109);
      v127 = *v126;
      if (*v126 > 99)
      {
        (*v211)(v111, v109);
      }

      else
      {
        v128 = v111;
        v129 = v193;
        sub_25421ACE8(v193);
        v130 = v194;
        v131 = v242;
        (v239)(v194, v241, v242);
        v132 = sub_25424DA88();
        v133 = sub_25424E408();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v246[0] = v135;
          *v134 = v204;
          sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v136 = sub_25424EA58();
          v138 = v137;
          v233(v130, v131);
          v139 = sub_2542203C4(v136, v138, v246);
          v140 = v227;

          *(v134 + 4) = v139;
          *(v134 + 12) = 2048;
          *(v134 + 14) = v127;
          _os_log_impl(&dword_254124000, v132, v133, "[%{public}s] Running out of queue space, %ld slots left", v134, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v135);
          MEMORY[0x259C07330](v135, -1, -1);
          v141 = v134;
          v63 = v229;
          MEMORY[0x259C07330](v141, -1, -1);

          v142 = v129;
          v15 = v140;
          v232(v142, v238);
          v143 = *v211;
          v144 = v140;
        }

        else
        {

          v233(v130, v131);
          v232(v129, v238);
          v143 = *v211;
          v15 = v128;
          v144 = v128;
        }

        v143(v144, v223);
      }

      sub_25417C0B0(v63, type metadata accessor for SomeEvent);
      v64 = v221;
      v61 = v202 + 1;
      if (__OFADD__(v202, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      v51 = v228;
      if ((v200 & 1) == 0 && v61 == v195)
      {
        v145 = &v225;
        goto LABEL_41;
      }
    }
  }

  if (!v50)
  {
    v54 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v234 = v7;
  v52 = sub_2541ECFB0(v50, 0);
  v53 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v54 = v52;
  v55 = sub_2541D12E8(v255, v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v50, v49);
  v56 = v255[0];
  v236 = v255[4];

  sub_25417E5CC(v56);
  if (v55 == v50)
  {
    v15 = v227;
    v7 = v234;
LABEL_7:
    v255[0] = v54;
    sub_25416AB94(v255);
    v192 = 0;
    v51 = v228;
    v57 = v255[0];
    AssociatedTypeWitness = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9150, &qword_254254568);
    AssociatedConformanceWitness = sub_25414081C(&qword_27F5B9158, &qword_27F5B9150, &qword_254254568, MEMORY[0x277D842F0]);
    *&v251 = v57;
    *(&v251 + 1) = sub_25417E918;
    v252 = 0;
    goto LABEL_8;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_254167494(uint64_t a1, uint64_t a2)
{
  v23 = sub_25424D8B8();
  v3 = *(v23 - 8);
  v4 = MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v22 = a1;
  sub_2541DA834(v24);
  v10 = v25;
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v28 = v10;
  v11 = *(v9 + 8);
  v29 = v11;
  __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v10 - 8) + 16))();
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_2541DA834(v24);
  v12 = v25;
  v13 = v26;
  v14 = __swift_project_boxed_opaque_existential_1(v24, v25);
  v28 = v12;
  v15 = *(v13 + 8);
  v29 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v14, v12);
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v15 + 32))(v12, v15);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
  {
    sub_25424D948();
    sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    v17 = sub_25424DC58();
  }

  else
  {
    v17 = sub_25424D828();
  }

  v18 = v17;
  v19 = *(v3 + 8);
  v20 = v23;
  v19(v6, v23);
  v19(v8, v20);
  return v18 & 1;
}

void sub_2541677C8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v58 = a3;
  v7 = type metadata accessor for EventQuery(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = sub_25424DAA8();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  if (a4)
  {
    sub_25421ACE8(v19);
    sub_25417C110(v4, v10, type metadata accessor for EventQuery);
    v25 = sub_25424DA88();
    v26 = sub_25424E418();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v61 = v28;
      *v27 = 136315138;
      type metadata accessor for EventQuery.Configuration(0);
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_25424EA58();
      v31 = v30;
      sub_25417C0B0(v10, type metadata accessor for EventQuery);
      v32 = sub_2542203C4(v29, v31, &v61);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_254124000, v25, v26, "[%s] No results limit specified, using max results batch limit until all events are returned", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x259C07330](v28, -1, -1);
      MEMORY[0x259C07330](v27, -1, -1);
    }

    else
    {

      sub_25417C0B0(v10, type metadata accessor for EventQuery);
    }

    (*(v59 + 8))(v19, v60);
    type metadata accessor for EventQuery.Configuration(0);
    return;
  }

  v33 = type metadata accessor for EventQuery.Configuration(0);
  if (*(v4 + v33[9]) && (a2 & 1) == 0)
  {
    sub_25421ACE8(v24);
    sub_25417C110(v4, v15, type metadata accessor for EventQuery);
    v34 = sub_25424DA88();
    v35 = sub_25424E418();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136315138;
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_25424EA58();
      v40 = v39;
      sub_25417C0B0(v15, type metadata accessor for EventQuery);
      v41 = sub_2542203C4(v38, v40, &v61);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_254124000, v34, v35, "[%s] Using max results batch limit because there are no tags to match against", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x259C07330](v37, -1, -1);
      MEMORY[0x259C07330](v36, -1, -1);
    }

    else
    {

      sub_25417C0B0(v15, type metadata accessor for EventQuery);
    }

    (*(v59 + 8))(v24, v60);
    return;
  }

  sub_25424D208();
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = v42 / 3600 + 1;
  v44 = *(v4 + v33[20]);
  v45 = v44 * v43;
  if ((v44 * v43) >> 64 != (v44 * v43) >> 63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v58;
  v47 = __OFADD__(v58, v45);
  v48 = v58 + v45;
  if (v47)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (*(v4 + v33[19]) >= v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = *(v4 + v33[19]);
  }

  sub_25421ACE8(v22);
  sub_25417C110(v4, v13, type metadata accessor for EventQuery);
  v50 = sub_25424DA88();
  v51 = sub_25424E418();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61 = v53;
    *v52 = 136315650;
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v54 = sub_25424EA58();
    v56 = v55;
    sub_25417C0B0(v13, type metadata accessor for EventQuery);
    v57 = sub_2542203C4(v54, v56, &v61);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2048;
    *(v52 + 14) = v46;
    *(v52 + 22) = 2048;
    *(v52 + 24) = v49;
    _os_log_impl(&dword_254124000, v50, v51, "[%s] Subquery limited result count to %ld, setting query limit to %ld to handle fake events", v52, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x259C07330](v53, -1, -1);
    MEMORY[0x259C07330](v52, -1, -1);
  }

  else
  {

    sub_25417C0B0(v13, type metadata accessor for EventQuery);
  }

  (*(v59 + 8))(v22, v60);
}

uint64_t sub_254167F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v39 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v33 - v10;
  v33[0] = a1;
  sub_254132DF4(a1, v33 - v10, &qword_27F5B8DD0, &qword_2542545A0);
  v12 = *(v9 + 56);
  sub_2541DA834(v45);
  v14 = v46;
  v13 = v47;
  v15 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v48[3] = v14;
  v37 = *(v13 + 8);
  v48[4] = v37;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v35 = type metadata accessor for SomeEvent;
  sub_25417C0B0(&v11[v12], type metadata accessor for SomeEvent);
  v16 = sub_25424D948();
  v34 = *(*(v16 - 8) + 8);
  v34(v11, v16);
  v33[1] = a2;
  sub_254132DF4(a2, v11, &qword_27F5B8DD0, &qword_2542545A0);
  v17 = *(v9 + 56);
  sub_2541DA834(v42);
  v18 = v43;
  v19 = v44;
  v20 = __swift_project_boxed_opaque_existential_1(v42, v43);
  v46 = v18;
  v47 = *(v19 + 8);
  v21 = v47;
  v22 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(v18 - 8) + 16))(v22, v20, v18);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = &v11[v17];
  v24 = v38;
  sub_25417C0B0(v23, v35);
  v34(v11, v16);
  (*(v37 + 32))(v14);
  v25 = v18;
  v26 = v39;
  (*(v21 + 32))(v25, v21);
  if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
  {
    sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    v27 = sub_25424DC58();
  }

  else
  {
    v27 = sub_25424D828();
  }

  v28 = v27;
  v29 = *(v40 + 8);
  v30 = v26;
  v31 = v41;
  v29(v30, v41);
  v29(v24, v31);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v28 & 1;
}

uint64_t sub_254168384(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25412F818;

  return v8(a1, a2);
}

uint64_t sub_254168488(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9140, &qword_254254558);
  result = sub_25424E638();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_25417C178(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25424EBD8();
      sub_25424D948();
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_25424DC28();
      SomeEvent.hash(into:)(v35);
      result = sub_25424EC28();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_25417C178(v5, *(v8 + 48) + v16 * v21, type metadata accessor for EventQuery.FetchedRecordInfo);
      ++*(v8 + 16);
      v6 = v32;
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

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_2541687F4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25424D948();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9098, &unk_254254480);
  result = sub_25424E638();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25424DC18();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

void sub_254168B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_254168D1C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25424EBD8();
  v6 = qword_2542546A0[a2];
  MEMORY[0x259C06AA0](v6);
  v7 = sub_25424EC28();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_2542546A0[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_2541698DC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_254168E3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25412F724;

  return sub_254152C7C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_254168F78(uint64_t a1)
{
  result = type metadata accessor for EventQuery.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25416900C(uint64_t a1)
{
  sub_2541691B0();
  if (v1 <= 0x3F)
  {
    sub_25424D948();
    if (v2 <= 0x3F)
    {
      sub_25424D218();
      if (v3 <= 0x3F)
      {
        sub_254141A7C(319);
        if (v4 <= 0x3F)
        {
          sub_254169214(319, &qword_27F5B9068, MEMORY[0x277CC95F0]);
          if (v5 <= 0x3F)
          {
            sub_25414810C();
            if (v6 <= 0x3F)
            {
              sub_254169214(319, &qword_27F5B8D98, type metadata accessor for QualityOfService);
              if (v7 <= 0x3F)
              {
                sub_2541481B4();
                if (v8 <= 0x3F)
                {
                  sub_254169268();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2541691B0()
{
  result = qword_27F5B9050;
  if (!qword_27F5B9050)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5B9050);
  }

  return result;
}

void sub_254169214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25424E598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_254169268()
{
  result = qword_27F5B9078;
  if (!qword_27F5B9078)
  {
    sub_25424D948();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5B9080, &unk_254254458);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F5B9078);
  }

  return result;
}

uint64_t sub_2541692F4(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v22 - v9;
  v24 = v2;
  v10 = *v2;
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  v26 = v4;
  v11 = *(v4 + 20);
  SomeEvent.hash(into:)(v27);
  v12 = sub_25424EC28();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    do
    {
      sub_25417C110(*(v10 + 48) + v16 * v14, v8, type metadata accessor for EventQuery.FetchedRecordInfo);
      if (sub_25424D8F8())
      {
        v17 = _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(&v8[*(v26 + 20)], a2 + v11);
        sub_25417C0B0(v8, type metadata accessor for EventQuery.FetchedRecordInfo);
        if (v17)
        {
          sub_25417C0B0(a2, type metadata accessor for EventQuery.FetchedRecordInfo);
          sub_25417C110(*(v10 + 48) + v16 * v14, v25, type metadata accessor for EventQuery.FetchedRecordInfo);
          return 0;
        }
      }

      else
      {
        sub_25417C0B0(v8, type metadata accessor for EventQuery.FetchedRecordInfo);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v23;
  sub_25417C110(a2, v23, type metadata accessor for EventQuery.FetchedRecordInfo);
  v27[0] = *v19;
  sub_254169A44(v21, v14, isUniquelyReferenced_nonNull_native);
  *v19 = v27[0];
  sub_25417C178(a2, v25, type metadata accessor for EventQuery.FetchedRecordInfo);
  return 1;
}

uint64_t sub_2541695FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_25424DC18();
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
      sub_25417BFB4(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_25424DC98();
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
    sub_254169D10(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2541698DC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_254126C24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25416A1C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25412724C(v5 + 1);
  }

  v8 = *v3;
  sub_25424EBD8();
  v9 = qword_2542546A0[v4];
  MEMORY[0x259C06AA0](v9);
  result = sub_25424EC28();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (qword_2542546A0[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25424EB28();
  __break(1u);
  return result;
}

uint64_t sub_254169A44(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_254168488(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_254169FB4();
      goto LABEL_15;
    }

    sub_25416A53C(v10 + 1);
  }

  v12 = *v3;
  sub_25424EBD8();
  sub_25424D948();
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  v13 = *(v7 + 20);
  SomeEvent.hash(into:)(v27);
  v14 = sub_25424EC28();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v26 + 72);
    do
    {
      sub_25417C110(*(v12 + 48) + v17 * a2, v9, type metadata accessor for EventQuery.FetchedRecordInfo);
      if (sub_25424D8F8())
      {
        v18 = _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(&v9[*(v7 + 20)], a1 + v13);
        sub_25417C0B0(v9, type metadata accessor for EventQuery.FetchedRecordInfo);
        if (v18)
        {
          sub_25424EB28();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_25417C0B0(v9, type metadata accessor for EventQuery.FetchedRecordInfo);
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25417C178(a1, *(v19 + 48) + *(v26 + 72) * a2, type metadata accessor for EventQuery.FetchedRecordInfo);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_254169D10(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25424D948();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2541687F4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25416A304();
      goto LABEL_12;
    }

    sub_25416A878(v10 + 1);
  }

  v12 = *v3;
  sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_25424DC18();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25417BFB4(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_25424DC98();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25424EB28();
  __break(1u);
  return result;
}

void *sub_254169FB4()
{
  v1 = v0;
  v2 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9140, &qword_254254558);
  v6 = *v0;
  v7 = sub_25424E628();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_25417C110(*(v6 + 48) + v21, v5, type metadata accessor for EventQuery.FetchedRecordInfo);
        result = sub_25417C178(v5, *(v8 + 48) + v21, type metadata accessor for EventQuery.FetchedRecordInfo);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_25416A1C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90A0, &qword_254253DD0);
  v2 = *v0;
  v3 = sub_25424E628();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

void *sub_25416A304()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9098, &unk_254254480);
  v6 = *v0;
  v7 = sub_25424E628();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_25416A53C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9140, &qword_254254558);
  result = sub_25424E638();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_25417C110(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25424EBD8();
      sub_25424D948();
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_25424DC28();
      SomeEvent.hash(into:)(v34);
      result = sub_25424EC28();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_25417C178(v5, *(v8 + 48) + v16 * v21, type metadata accessor for EventQuery.FetchedRecordInfo);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_25416A878(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25424D948();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9098, &unk_254254480);
  v7 = sub_25424E638();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25417BFB4(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25424DC18();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25416AB94(uint64_t *a1)
{
  v2 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25417A3F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25416ACF0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25416AC3C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25417A404(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25416AE1C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25416ACF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25424EA38();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EventQuery.FetchedRecordInfo(0);
        v6 = sub_25424DFE8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25416DD28(v8, v9, a1, v4);
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
    return sub_25416AF60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25416AE1C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25424EA38();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
        v6 = sub_25424DFE8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254170E7C(v8, v9, a1, v4);
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
    return sub_25416C55C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25416AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v133 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v8 = MEMORY[0x28223BE20](v133);
  v132 = &v117[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v117[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v117[-v13];
  MEMORY[0x28223BE20](v12);
  v129 = &v117[-v14];
  v128 = type metadata accessor for SomeAccessoryEvent(0);
  v15 = MEMORY[0x28223BE20](v128);
  v127 = &v117[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v126 = &v117[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v125 = &v117[-v20];
  MEMORY[0x28223BE20](v19);
  v124 = &v117[-v21];
  v154 = type metadata accessor for SomeEvent(0);
  v22 = MEMORY[0x28223BE20](v154);
  v142 = &v117[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v141 = &v117[-v24];
  v140 = sub_25424D8B8();
  v25 = *(v140 - 8);
  v26 = MEMORY[0x28223BE20](v140);
  v139 = &v117[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v146 = &v117[-v28];
  v29 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v30 = MEMORY[0x28223BE20](v29);
  v136 = &v117[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v117[-v33];
  result = MEMORY[0x28223BE20](v32);
  v138 = &v117[-v37];
  v119 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v137 = (v25 + 8);
    v39 = *(v36 + 72);
    v40 = v38 + v39 * (a3 - 1);
    v134 = -v39;
    v41 = a1 - a3;
    v135 = v38;
    v118 = v39;
    v42 = v38 + v39 * a3;
    v145 = v34;
    v43 = v138;
LABEL_5:
    v123 = a3;
    v120 = v42;
    v121 = v41;
    v44 = v41;
    v122 = v40;
    while (1)
    {
      sub_25417C110(v42, v43, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v40, v34, type metadata accessor for EventQuery.FetchedRecordInfo);
      v45 = v141;
      sub_25417C110(v43 + *(v29 + 20), v141, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v143 = v40;
      v144 = v42;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v149 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v147);
          sub_25417C178(v45, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_36;
        }

        v52 = v129;
        sub_25417C178(v45, v129, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v52, v130, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v53 = swift_getEnumCaseMultiPayload();
        if (v53)
        {
          if (v53 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v54 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v55 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v54 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v55 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v54 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v55 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v56 = v55;
        v149 = v54;
        v57 = __swift_allocate_boxed_opaque_existential_1(&v147);
        sub_25417C178(v130, v57, v56);
        sub_25412DC4C(&v147, &v150);
        v58 = v151;
        v59 = v152;
        v60 = __swift_project_boxed_opaque_existential_1(&v150, v151);
        SessionEvent = v58;
        v149 = *(v59 + 16);
        v61 = __swift_allocate_boxed_opaque_existential_1(&v147);
        (*(*(v58 - 8) + 16))(v61, v60, v58);
        v62 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v63 = &v155;
      }

      else
      {
        v48 = v124;
        sub_25417C178(v45, v124, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v48, v125, type metadata accessor for SomeAccessoryEvent);
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 > 4)
        {
          if (v49 <= 6)
          {
            if (v49 == 5)
            {
              v151 = type metadata accessor for SmokeDetectorEvent(0);
              v50 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v51 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v151 = type metadata accessor for ThermostatAutomationEvent(0);
              v50 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v51 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v49 == 7)
          {
            v151 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v50 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v51 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v49 == 8)
          {
            v151 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v50 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v51 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v151 = type metadata accessor for WindowEvent(0);
            v50 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v51 = type metadata accessor for WindowEvent;
          }
        }

        else if (v49 <= 1)
        {
          if (v49)
          {
            v151 = type metadata accessor for DoorEvent(0);
            v50 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v51 = type metadata accessor for DoorEvent;
          }

          else
          {
            v151 = type metadata accessor for ContactSensorEvent(0);
            v50 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v51 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v49 == 2)
        {
          v151 = type metadata accessor for GarageDoorEvent(0);
          v50 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v51 = type metadata accessor for GarageDoorEvent;
        }

        else if (v49 == 3)
        {
          v151 = type metadata accessor for LockEvent(0);
          v50 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v51 = type metadata accessor for LockEvent;
        }

        else
        {
          v151 = type metadata accessor for SecuritySystemEvent(0);
          v50 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v51 = type metadata accessor for SecuritySystemEvent;
        }

        v64 = v51;
        v152 = v50;
        v65 = __swift_allocate_boxed_opaque_existential_1(&v150);
        sub_25417C178(v125, v65, v64);
        v66 = v151;
        v67 = v152;
        v68 = __swift_project_boxed_opaque_existential_1(&v150, v151);
        SessionEvent = v66;
        v149 = *(v67 + 16);
        v69 = __swift_allocate_boxed_opaque_existential_1(&v147);
        (*(*(v66 - 8) + 16))(v69, v68, v66);
        v62 = type metadata accessor for SomeAccessoryEvent;
        v63 = &v152;
      }

      sub_25417C0B0(*(v63 - 32), v62);
      __swift_destroy_boxed_opaque_existential_1(&v150);
LABEL_36:
      v71 = SessionEvent;
      v70 = v149;
      __swift_project_boxed_opaque_existential_1(&v147, SessionEvent);
      v151 = v71;
      v152 = *(v70 + 8);
      v72 = v152;
      __swift_allocate_boxed_opaque_existential_1(&v150);
      (*(*(v71 - 8) + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v147);
      (*(v72 + 32))(v71, v72);
      __swift_destroy_boxed_opaque_existential_1(&v150);
      v73 = v142;
      sub_25417C110(&v145[*(v29 + 20)], v142, type metadata accessor for SomeEvent);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74)
      {
        if (v74 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v149 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v75 = __swift_allocate_boxed_opaque_existential_1(&v147);
          sub_25417C178(v73, v75, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_66;
        }

        v81 = v73;
        v82 = v131;
        sub_25417C178(v81, v131, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v82, v132, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v83 = swift_getEnumCaseMultiPayload();
        if (v83)
        {
          if (v83 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v84 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v85 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v84 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v85 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v84 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v85 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v86 = v85;
        v149 = v84;
        v87 = __swift_allocate_boxed_opaque_existential_1(&v147);
        sub_25417C178(v132, v87, v86);
        sub_25412DC4C(&v147, &v150);
        v88 = v151;
        v89 = v152;
        v90 = __swift_project_boxed_opaque_existential_1(&v150, v151);
        SessionEvent = v88;
        v149 = *(v89 + 16);
        v91 = __swift_allocate_boxed_opaque_existential_1(&v147);
        (*(*(v88 - 8) + 16))(v91, v90, v88);
        v92 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v93 = &v156;
      }

      else
      {
        v76 = v73;
        v77 = v126;
        sub_25417C178(v76, v126, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v77, v127, type metadata accessor for SomeAccessoryEvent);
        v78 = swift_getEnumCaseMultiPayload();
        if (v78 > 4)
        {
          if (v78 <= 6)
          {
            if (v78 == 5)
            {
              v151 = type metadata accessor for SmokeDetectorEvent(0);
              v79 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v80 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v151 = type metadata accessor for ThermostatAutomationEvent(0);
              v79 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v80 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v78 == 7)
          {
            v151 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v79 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v80 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v78 == 8)
          {
            v151 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v79 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v80 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v151 = type metadata accessor for WindowEvent(0);
            v79 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v80 = type metadata accessor for WindowEvent;
          }
        }

        else if (v78 <= 1)
        {
          if (v78)
          {
            v151 = type metadata accessor for DoorEvent(0);
            v79 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v80 = type metadata accessor for DoorEvent;
          }

          else
          {
            v151 = type metadata accessor for ContactSensorEvent(0);
            v79 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v80 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v78 == 2)
        {
          v151 = type metadata accessor for GarageDoorEvent(0);
          v79 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v80 = type metadata accessor for GarageDoorEvent;
        }

        else if (v78 == 3)
        {
          v151 = type metadata accessor for LockEvent(0);
          v79 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v80 = type metadata accessor for LockEvent;
        }

        else
        {
          v151 = type metadata accessor for SecuritySystemEvent(0);
          v79 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v80 = type metadata accessor for SecuritySystemEvent;
        }

        v94 = v80;
        v152 = v79;
        v95 = __swift_allocate_boxed_opaque_existential_1(&v150);
        sub_25417C178(v127, v95, v94);
        v96 = v151;
        v97 = v152;
        v98 = __swift_project_boxed_opaque_existential_1(&v150, v151);
        SessionEvent = v96;
        v149 = *(v97 + 16);
        v99 = __swift_allocate_boxed_opaque_existential_1(&v147);
        (*(*(v96 - 8) + 16))(v99, v98, v96);
        v92 = type metadata accessor for SomeAccessoryEvent;
        v93 = &v153;
      }

      sub_25417C0B0(*(v93 - 32), v92);
      __swift_destroy_boxed_opaque_existential_1(&v150);
LABEL_66:
      v100 = v29;
      v101 = SessionEvent;
      v102 = v149;
      v103 = __swift_project_boxed_opaque_existential_1(&v147, SessionEvent);
      v151 = v101;
      v104 = *(v102 + 8);
      v152 = v104;
      v105 = __swift_allocate_boxed_opaque_existential_1(&v150);
      (*(*(v101 - 8) + 16))(v105, v103, v101);
      __swift_destroy_boxed_opaque_existential_1(&v147);
      v106 = v139;
      (*(v104 + 32))(v101, v104);
      __swift_destroy_boxed_opaque_existential_1(&v150);
      v107 = v146;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25424D948();
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        v108 = v145;
        v109 = sub_25424DC58();
      }

      else
      {
        v109 = sub_25424D828();
        v108 = v145;
      }

      v110 = *v137;
      v111 = v106;
      v112 = v140;
      (*v137)(v111, v140);
      v110(v107, v112);
      sub_25417C0B0(v108, type metadata accessor for EventQuery.FetchedRecordInfo);
      result = sub_25417C0B0(v43, type metadata accessor for EventQuery.FetchedRecordInfo);
      v29 = v100;
      v34 = v108;
      v114 = v143;
      v113 = v144;
      if ((v109 & 1) == 0)
      {
LABEL_4:
        a3 = v123 + 1;
        v40 = v122 + v118;
        v41 = v121 - 1;
        v42 = v120 + v118;
        if (v123 + 1 == v119)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v135)
      {
        __break(1u);
        return result;
      }

      v115 = v136;
      sub_25417C178(v144, v136, type metadata accessor for EventQuery.FetchedRecordInfo);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25417C178(v115, v114, type metadata accessor for EventQuery.FetchedRecordInfo);
      v40 = v114 + v134;
      v42 = v113 + v134;
      if (__CFADD__(v44++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_25416C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v157 = sub_25424D8B8();
  v8 = *(v157 - 8);
  v9 = MEMORY[0x28223BE20](v157);
  v11 = &v132[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v132[-v12];
  v148 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v14 = MEMORY[0x28223BE20](v148);
  v147 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v146 = &v132[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v132[-v19];
  MEMORY[0x28223BE20](v18);
  v144 = &v132[-v20];
  v143 = type metadata accessor for SomeAccessoryEvent(0);
  v21 = MEMORY[0x28223BE20](v143);
  v142 = &v132[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v132[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v140 = &v132[-v26];
  MEMORY[0x28223BE20](v25);
  v139 = &v132[-v27];
  v28 = type metadata accessor for SomeEvent(0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v132[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v166 = &v132[-v32];
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0);
  v33 = MEMORY[0x28223BE20](v168);
  v151 = &v132[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v165 = &v132[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v164 = &v132[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v167 = &v132[-v40];
  result = MEMORY[0x28223BE20](v39);
  v158 = &v132[-v43];
  v134 = a2;
  if (a3 != a2)
  {
    v152 = (v8 + 8);
    v44 = *a4;
    v45 = *(v42 + 72);
    v46 = *a4 + v45 * (a3 - 1);
    v149 = -v45;
    v47 = a1 - a3;
    v150 = v44;
    v133 = v45;
    v48 = v44 + v45 * a3;
    v156 = v11;
    v155 = v13;
    v154 = v28;
    v153 = v31;
LABEL_5:
    v138 = a3;
    v135 = v48;
    v49 = v48;
    v136 = v47;
    v50 = v47;
    v137 = v46;
    v180 = v46;
    v51 = v167;
    v52 = v158;
    while (1)
    {
      sub_254132DF4(v49, v52, &qword_27F5B8DD0, &qword_2542545A0);
      sub_254132DF4(v180, v51, &qword_27F5B8DD0, &qword_2542545A0);
      v53 = v164;
      sub_254132DF4(v52, v164, &qword_27F5B8DD0, &qword_2542545A0);
      v54 = *(v168 + 48);
      sub_25417C110(&v53[v54], v166, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v176 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v173);
          sub_25417C178(v166, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_36;
        }

        v61 = v144;
        sub_25417C178(v166, v144, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v61, v145, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v62 = swift_getEnumCaseMultiPayload();
        if (v62)
        {
          if (v62 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v63 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v64 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v63 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v64 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v63 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v64 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v65 = v64;
        v176 = v63;
        v66 = __swift_allocate_boxed_opaque_existential_1(&v173);
        sub_25417C178(v145, v66, v65);
        sub_25412DC4C(&v173, &v177);
        v67 = v178;
        v68 = v179;
        v69 = __swift_project_boxed_opaque_existential_1(&v177, v178);
        SessionEvent = v67;
        v176 = *(v68 + 16);
        v70 = __swift_allocate_boxed_opaque_existential_1(&v173);
        (*(*(v67 - 8) + 16))(v70, v69, v67);
        v71 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v72 = &v174;
      }

      else
      {
        v57 = v139;
        sub_25417C178(v166, v139, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v57, v140, type metadata accessor for SomeAccessoryEvent);
        v58 = swift_getEnumCaseMultiPayload();
        if (v58 > 4)
        {
          if (v58 <= 6)
          {
            if (v58 == 5)
            {
              v178 = type metadata accessor for SmokeDetectorEvent(0);
              v59 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v60 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v178 = type metadata accessor for ThermostatAutomationEvent(0);
              v59 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v60 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v58 == 7)
          {
            v178 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v60 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v58 == 8)
          {
            v178 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v60 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v178 = type metadata accessor for WindowEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v60 = type metadata accessor for WindowEvent;
          }
        }

        else if (v58 <= 1)
        {
          if (v58)
          {
            v178 = type metadata accessor for DoorEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v60 = type metadata accessor for DoorEvent;
          }

          else
          {
            v178 = type metadata accessor for ContactSensorEvent(0);
            v59 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v60 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v58 == 2)
        {
          v178 = type metadata accessor for GarageDoorEvent(0);
          v59 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v60 = type metadata accessor for GarageDoorEvent;
        }

        else if (v58 == 3)
        {
          v178 = type metadata accessor for LockEvent(0);
          v59 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v60 = type metadata accessor for LockEvent;
        }

        else
        {
          v178 = type metadata accessor for SecuritySystemEvent(0);
          v59 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v60 = type metadata accessor for SecuritySystemEvent;
        }

        v73 = v60;
        v179 = v59;
        v74 = __swift_allocate_boxed_opaque_existential_1(&v177);
        sub_25417C178(v140, v74, v73);
        v75 = v178;
        v76 = v179;
        v77 = __swift_project_boxed_opaque_existential_1(&v177, v178);
        SessionEvent = v75;
        v176 = *(v76 + 16);
        v78 = __swift_allocate_boxed_opaque_existential_1(&v173);
        (*(*(v75 - 8) + 16))(v78, v77, v75);
        v71 = type metadata accessor for SomeAccessoryEvent;
        v72 = &v170;
      }

      sub_25417C0B0(*(v72 - 32), v71);
      __swift_destroy_boxed_opaque_existential_1(&v177);
LABEL_36:
      v80 = SessionEvent;
      v79 = v176;
      v81 = __swift_project_boxed_opaque_existential_1(&v173, SessionEvent);
      v178 = v80;
      v162 = *(v79 + 8);
      v179 = v162;
      v82 = __swift_allocate_boxed_opaque_existential_1(&v177);
      v83 = *(*(v80 - 8) + 16);
      v161 = v82;
      v83(v82, v81, v80);
      __swift_destroy_boxed_opaque_existential_1(&v173);
      v84 = v164;
      sub_25417C0B0(&v164[v54], type metadata accessor for SomeEvent);
      v85 = sub_25424D948();
      v86 = *(v85 - 8);
      v160 = *(v86 + 8);
      v159 = v86 + 8;
      v160(v84, v85);
      v87 = v165;
      sub_254132DF4(v167, v165, &qword_27F5B8DD0, &qword_2542545A0);
      v88 = *(v168 + 48);
      sub_25417C110(&v87[v88], v31, type metadata accessor for SomeEvent);
      v89 = swift_getEnumCaseMultiPayload();
      v163 = v50;
      if (v89)
      {
        if (v89 == 1)
        {
          DailyDigestEvent = type metadata accessor for HomeActivityStateEvent(0);
          v172 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v90 = __swift_allocate_boxed_opaque_existential_1(&v169);
          sub_25417C178(v31, v90, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_66;
        }

        v95 = v146;
        sub_25417C178(v31, v146, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v95, v147, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v96 = swift_getEnumCaseMultiPayload();
        if (v96)
        {
          if (v96 == 1)
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v97 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v98 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v97 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v98 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          DailyDigestEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v97 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v98 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v99 = v98;
        v172 = v97;
        v100 = __swift_allocate_boxed_opaque_existential_1(&v169);
        sub_25417C178(v147, v100, v99);
        sub_25412DC4C(&v169, &v173);
        v101 = SessionEvent;
        v102 = v176;
        v103 = __swift_project_boxed_opaque_existential_1(&v173, SessionEvent);
        DailyDigestEvent = v101;
        v172 = *(v102 + 16);
        v104 = __swift_allocate_boxed_opaque_existential_1(&v169);
        (*(*(v101 - 8) + 16))(v104, v103, v101);
        v105 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v106 = &v176;
      }

      else
      {
        v91 = v141;
        sub_25417C178(v31, v141, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v91, v142, type metadata accessor for SomeAccessoryEvent);
        v92 = swift_getEnumCaseMultiPayload();
        if (v92 > 4)
        {
          if (v92 <= 6)
          {
            if (v92 == 5)
            {
              SessionEvent = type metadata accessor for SmokeDetectorEvent(0);
              v93 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v94 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              SessionEvent = type metadata accessor for ThermostatAutomationEvent(0);
              v93 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v94 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v92 == 7)
          {
            SessionEvent = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v93 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v94 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v92 == 8)
          {
            SessionEvent = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v93 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v94 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for WindowEvent(0);
            v93 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v94 = type metadata accessor for WindowEvent;
          }
        }

        else if (v92 <= 1)
        {
          if (v92)
          {
            SessionEvent = type metadata accessor for DoorEvent(0);
            v93 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v94 = type metadata accessor for DoorEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for ContactSensorEvent(0);
            v93 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v94 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v92 == 2)
        {
          SessionEvent = type metadata accessor for GarageDoorEvent(0);
          v93 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v94 = type metadata accessor for GarageDoorEvent;
        }

        else if (v92 == 3)
        {
          SessionEvent = type metadata accessor for LockEvent(0);
          v93 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v94 = type metadata accessor for LockEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for SecuritySystemEvent(0);
          v93 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v94 = type metadata accessor for SecuritySystemEvent;
        }

        v107 = v94;
        v176 = v93;
        v108 = __swift_allocate_boxed_opaque_existential_1(&v173);
        sub_25417C178(v142, v108, v107);
        v109 = SessionEvent;
        v110 = v176;
        v111 = __swift_project_boxed_opaque_existential_1(&v173, SessionEvent);
        DailyDigestEvent = v109;
        v172 = *(v110 + 16);
        v112 = __swift_allocate_boxed_opaque_existential_1(&v169);
        (*(*(v109 - 8) + 16))(v112, v111, v109);
        v105 = type metadata accessor for SomeAccessoryEvent;
        v106 = &v172;
      }

      sub_25417C0B0(*(v106 - 32), v105);
      __swift_destroy_boxed_opaque_existential_1(&v173);
LABEL_66:
      v113 = v49;
      v114 = DailyDigestEvent;
      v115 = v172;
      v116 = __swift_project_boxed_opaque_existential_1(&v169, DailyDigestEvent);
      SessionEvent = v114;
      v176 = *(v115 + 8);
      v117 = v176;
      v118 = __swift_allocate_boxed_opaque_existential_1(&v173);
      (*(*(v114 - 8) + 16))(v118, v116, v114);
      __swift_destroy_boxed_opaque_existential_1(&v169);
      v119 = v165;
      sub_25417C0B0(&v165[v88], type metadata accessor for SomeEvent);
      v160(v119, v85);
      v120 = v155;
      (*(v162 + 32))(v80);
      v121 = v156;
      (*(v117 + 32))(v114, v117);
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        v122 = v158;
        v51 = v167;
        v123 = sub_25424DC58();
      }

      else
      {
        v123 = sub_25424D828();
        v51 = v167;
        v122 = v158;
      }

      v124 = *v152;
      v125 = v121;
      v126 = v157;
      (*v152)(v125, v157);
      v124(v120, v126);
      __swift_destroy_boxed_opaque_existential_1(&v173);
      __swift_destroy_boxed_opaque_existential_1(&v177);
      sub_254132E5C(v51, &qword_27F5B8DD0, &qword_2542545A0);
      result = sub_254132E5C(v122, &qword_27F5B8DD0, &qword_2542545A0);
      v31 = v153;
      v52 = v122;
      v127 = v113;
      v128 = v163;
      if ((v123 & 1) == 0)
      {
LABEL_4:
        a3 = v138 + 1;
        v46 = v137 + v133;
        v47 = v136 - 1;
        v48 = v135 + v133;
        if (v138 + 1 == v134)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v150)
      {
        __break(1u);
        return result;
      }

      v129 = v151;
      sub_25417E6C8(v127, v151, &qword_27F5B8DD0, &qword_2542545A0);
      v130 = v180;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25417E6C8(v129, v130, &qword_27F5B8DD0, &qword_2542545A0);
      v180 = v130 + v149;
      v49 = v127 + v149;
      v131 = __CFADD__(v128, 1);
      v50 = v128 + 1;
      if (v131)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_25416DD28(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v282 = a4;
  v281 = a1;
  v317 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v5 = MEMORY[0x28223BE20](v317);
  v315 = &v278 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v314 = &v278 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v313 = &v278 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v312 = &v278 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v294 = &v278 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v293 = &v278 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v292 = &v278 - v18;
  MEMORY[0x28223BE20](v17);
  v291 = &v278 - v19;
  v316 = type metadata accessor for SomeAccessoryEvent(0);
  v20 = MEMORY[0x28223BE20](v316);
  v311 = &v278 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v310 = &v278 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v309 = &v278 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v308 = &v278 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v290 = &v278 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v289 = &v278 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v288 = &v278 - v33;
  MEMORY[0x28223BE20](v32);
  v287 = &v278 - v34;
  v332 = type metadata accessor for SomeEvent(0);
  v35 = MEMORY[0x28223BE20](v332);
  v330 = &v278 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v329 = &v278 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v304 = &v278 - v40;
  MEMORY[0x28223BE20](v39);
  v303 = &v278 - v41;
  v324 = sub_25424D8B8();
  v42 = *(v324 - 8);
  v43 = MEMORY[0x28223BE20](v324);
  v45 = &v278 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v328 = &v278 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v278 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v278 - v51;
  v53 = type metadata accessor for EventQuery.FetchedRecordInfo(0);
  v299 = *(v53 - 8);
  v54 = MEMORY[0x28223BE20](v53);
  v285 = &v278 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v320 = &v278 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v278 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v325 = &v278 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v278 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v302 = &v278 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v279 = &v278 - v69;
  result = MEMORY[0x28223BE20](v68);
  v300 = a3;
  if (a3[1] < 1)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_225:
    v75 = *v281;
    if (!*v281)
    {
      goto LABEL_265;
    }

    v42 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v307;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_259;
    }

    result = v42;
LABEL_228:
    v341 = result;
    v42 = *(result + 16);
    if (v42 >= 2)
    {
      while (*v300)
      {
        v274 = *(result + 16 * v42);
        v275 = result;
        v276 = *(result + 16 * (v42 - 1) + 40);
        sub_254174304(*v300 + *(v299 + 72) * v274, *v300 + *(v299 + 72) * *(result + 16 * (v42 - 1) + 32), (*v300 + *(v299 + 72) * v276), v75);
        if (v74)
        {
        }

        if (v276 < v274)
        {
          goto LABEL_252;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v275 = sub_254179EB8(v275);
        }

        if (v42 - 2 >= *(v275 + 2))
        {
          goto LABEL_253;
        }

        v277 = &v275[16 * v42];
        *v277 = v274;
        *(v277 + 1) = v276;
        v341 = v275;
        sub_254179E2C(v42 - 1);
        result = v341;
        v42 = *(v341 + 16);
        if (v42 <= 1)
        {
        }
      }

      goto LABEL_263;
    }
  }

  v72 = a3[1];
  v278 = &v278 - v71;
  v322 = (v42 + 8);
  v73 = MEMORY[0x277D84F90];
  v321 = v45;
  v298 = v50;
  v301 = v52;
  v74 = 0;
  v323 = v53;
  v331 = v60;
  v75 = v325;
  v305 = v65;
  while (1)
  {
    v306 = v72;
    v286 = v73;
    if (v74 + 1 >= v72)
    {
      v149 = v74 + 1;
      v150 = v282;
      v151 = v74;
      goto LABEL_88;
    }

    v76 = *v300;
    v77 = *(v299 + 72);
    v327 = *v300 + v77 * (v74 + 1);
    v78 = v278;
    sub_25417C110(v327, v278, type metadata accessor for EventQuery.FetchedRecordInfo);
    v79 = v279;
    sub_25417C110(v76 + v77 * v74, v279, type metadata accessor for EventQuery.FetchedRecordInfo);
    v80 = v307;
    LODWORD(v318) = sub_254167494(v78, v79);
    v307 = v80;
    if (v80)
    {
      sub_25417C0B0(v79, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C0B0(v78, type metadata accessor for EventQuery.FetchedRecordInfo);
    }

    v42 = type metadata accessor for EventQuery.FetchedRecordInfo;
    sub_25417C0B0(v79, type metadata accessor for EventQuery.FetchedRecordInfo);
    result = sub_25417C0B0(v78, type metadata accessor for EventQuery.FetchedRecordInfo);
    v280 = v74;
    v81 = v74 + 2;
    v82 = v76 + v77 * (v74 + 2);
    v83 = v77;
    v319 = v77;
    v84 = v327;
    do
    {
      if (v306 == v81)
      {
        v149 = v306;
        goto LABEL_74;
      }

      v326 = v81;
      v89 = v302;
      sub_25417C110(v82, v302, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v84, v65, type metadata accessor for EventQuery.FetchedRecordInfo);
      sub_25417C110(v89 + *(v53 + 20), v303, type metadata accessor for SomeEvent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v327 = v84;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v335 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v333);
          sub_25417C178(v303, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_40;
        }

        v96 = v291;
        sub_25417C178(v303, v291, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v96, v292, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v97 = swift_getEnumCaseMultiPayload();
        if (v97)
        {
          if (v97 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v98 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v99 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v98 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v99 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v98 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v99 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v100 = v99;
        v335 = v98;
        v101 = __swift_allocate_boxed_opaque_existential_1(&v333);
        sub_25417C178(v292, v101, v100);
        sub_25412DC4C(&v333, &v336);
        v102 = v338;
        v103 = v339;
        v104 = __swift_project_boxed_opaque_existential_1(&v336, v338);
        SessionEvent = v102;
        v335 = *(v103 + 16);
        v105 = __swift_allocate_boxed_opaque_existential_1(&v333);
        (*(*(v102 - 8) + 16))(v105, v104, v102);
        v106 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v107 = &v323;
      }

      else
      {
        v92 = v287;
        sub_25417C178(v303, v287, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v92, v288, type metadata accessor for SomeAccessoryEvent);
        v93 = swift_getEnumCaseMultiPayload();
        if (v93 > 4)
        {
          if (v93 <= 6)
          {
            if (v93 == 5)
            {
              v338 = type metadata accessor for SmokeDetectorEvent(0);
              v94 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v95 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v338 = type metadata accessor for ThermostatAutomationEvent(0);
              v94 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v95 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v93 == 7)
          {
            v338 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v94 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v95 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v93 == 8)
          {
            v338 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v94 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v95 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v338 = type metadata accessor for WindowEvent(0);
            v94 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v95 = type metadata accessor for WindowEvent;
          }
        }

        else if (v93 <= 1)
        {
          if (v93)
          {
            v338 = type metadata accessor for DoorEvent(0);
            v94 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v95 = type metadata accessor for DoorEvent;
          }

          else
          {
            v338 = type metadata accessor for ContactSensorEvent(0);
            v94 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v95 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v93 == 2)
        {
          v338 = type metadata accessor for GarageDoorEvent(0);
          v94 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v95 = type metadata accessor for GarageDoorEvent;
        }

        else if (v93 == 3)
        {
          v338 = type metadata accessor for LockEvent(0);
          v94 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v95 = type metadata accessor for LockEvent;
        }

        else
        {
          v338 = type metadata accessor for SecuritySystemEvent(0);
          v94 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v95 = type metadata accessor for SecuritySystemEvent;
        }

        v108 = v95;
        v339 = v94;
        v109 = __swift_allocate_boxed_opaque_existential_1(&v336);
        sub_25417C178(v288, v109, v108);
        v110 = v338;
        v111 = v339;
        v112 = __swift_project_boxed_opaque_existential_1(&v336, v338);
        SessionEvent = v110;
        v335 = *(v111 + 16);
        v113 = __swift_allocate_boxed_opaque_existential_1(&v333);
        (*(*(v110 - 8) + 16))(v113, v112, v110);
        v106 = type metadata accessor for SomeAccessoryEvent;
        v107 = &v319;
      }

      sub_25417C0B0(*(v107 - 32), v106);
      __swift_destroy_boxed_opaque_existential_1(&v336);
LABEL_40:
      v115 = SessionEvent;
      v114 = v335;
      __swift_project_boxed_opaque_existential_1(&v333, SessionEvent);
      v338 = v115;
      v339 = *(v114 + 8);
      v116 = v339;
      __swift_allocate_boxed_opaque_existential_1(&v336);
      (*(*(v115 - 8) + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v333);
      (*(v116 + 32))(v115, v116);
      __swift_destroy_boxed_opaque_existential_1(&v336);
      sub_25417C110(&v305[*(v53 + 20)], v304, type metadata accessor for SomeEvent);
      v117 = swift_getEnumCaseMultiPayload();
      if (v117)
      {
        if (v117 == 1)
        {
          SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
          v335 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
          v118 = __swift_allocate_boxed_opaque_existential_1(&v333);
          sub_25417C178(v304, v118, type metadata accessor for HomeActivityStateEvent);
          goto LABEL_70;
        }

        v123 = v293;
        sub_25417C178(v304, v293, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_25417C110(v123, v294, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v124 = swift_getEnumCaseMultiPayload();
        if (v124)
        {
          if (v124 == 1)
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
            v125 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
            v126 = type metadata accessor for EnergyKit.LoadSessionEvent;
          }

          else
          {
            SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
            v125 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
            v126 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
          }
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
          v125 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
          v126 = type metadata accessor for EnergyKit.LoadEvent;
        }

        v127 = v126;
        v335 = v125;
        v128 = __swift_allocate_boxed_opaque_existential_1(&v333);
        sub_25417C178(v294, v128, v127);
        sub_25412DC4C(&v333, &v336);
        v129 = v338;
        v130 = v339;
        v131 = __swift_project_boxed_opaque_existential_1(&v336, v338);
        SessionEvent = v129;
        v335 = *(v130 + 16);
        v132 = __swift_allocate_boxed_opaque_existential_1(&v333);
        (*(*(v129 - 8) + 16))(v132, v131, v129);
        v133 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        v134 = &v325;
      }

      else
      {
        v119 = v289;
        sub_25417C178(v304, v289, type metadata accessor for SomeAccessoryEvent);
        sub_25417C110(v119, v290, type metadata accessor for SomeAccessoryEvent);
        v120 = swift_getEnumCaseMultiPayload();
        if (v120 > 4)
        {
          if (v120 <= 6)
          {
            if (v120 == 5)
            {
              v338 = type metadata accessor for SmokeDetectorEvent(0);
              v121 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
              v122 = type metadata accessor for SmokeDetectorEvent;
            }

            else
            {
              v338 = type metadata accessor for ThermostatAutomationEvent(0);
              v121 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
              v122 = type metadata accessor for ThermostatAutomationEvent;
            }
          }

          else if (v120 == 7)
          {
            v338 = type metadata accessor for ThermostatAutomationFailureEvent(0);
            v121 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
            v122 = type metadata accessor for ThermostatAutomationFailureEvent;
          }

          else if (v120 == 8)
          {
            v338 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
            v121 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
            v122 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          }

          else
          {
            v338 = type metadata accessor for WindowEvent(0);
            v121 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
            v122 = type metadata accessor for WindowEvent;
          }
        }

        else if (v120 <= 1)
        {
          if (v120)
          {
            v338 = type metadata accessor for DoorEvent(0);
            v121 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
            v122 = type metadata accessor for DoorEvent;
          }

          else
          {
            v338 = type metadata accessor for ContactSensorEvent(0);
            v121 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
            v122 = type metadata accessor for ContactSensorEvent;
          }
        }

        else if (v120 == 2)
        {
          v338 = type metadata accessor for GarageDoorEvent(0);
          v121 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
          v122 = type metadata accessor for GarageDoorEvent;
        }

        else if (v120 == 3)
        {
          v338 = type metadata accessor for LockEvent(0);
          v121 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
          v122 = type metadata accessor for LockEvent;
        }

        else
        {
          v338 = type metadata accessor for SecuritySystemEvent(0);
          v121 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
          v122 = type metadata accessor for SecuritySystemEvent;
        }

        v135 = v122;
        v339 = v121;
        v136 = __swift_allocate_boxed_opaque_existential_1(&v336);
        sub_25417C178(v290, v136, v135);
        v137 = v338;
        v138 = v339;
        v139 = __swift_project_boxed_opaque_existential_1(&v336, v338);
        SessionEvent = v137;
        v335 = *(v138 + 16);
        v140 = __swift_allocate_boxed_opaque_existential_1(&v333);
        (*(*(v137 - 8) + 16))(v140, v139, v137);
        v133 = type metadata accessor for SomeAccessoryEvent;
        v134 = &v321;
      }

      sub_25417C0B0(*(v134 - 32), v133);
      __swift_destroy_boxed_opaque_existential_1(&v336);
LABEL_70:
      v142 = SessionEvent;
      v141 = v335;
      v143 = __swift_project_boxed_opaque_existential_1(&v333, SessionEvent);
      v338 = v142;
      v339 = *(v141 + 8);
      v144 = v339;
      v145 = __swift_allocate_boxed_opaque_existential_1(&v336);
      (*(*(v142 - 8) + 16))(v145, v143, v142);
      __swift_destroy_boxed_opaque_existential_1(&v333);
      v146 = v142;
      v147 = v298;
      (*(v144 + 32))(v146, v144);
      __swift_destroy_boxed_opaque_existential_1(&v336);
      v148 = v301;
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        sub_25424D948();
        sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
        v85 = v302;
        v65 = v305;
        v42 = sub_25424DC58();
        v60 = v331;
      }

      else
      {
        v42 = sub_25424D828();
        v60 = v331;
        v65 = v305;
        v85 = v302;
      }

      v74 = v322;
      v86 = *v322;
      v87 = v147;
      v88 = v324;
      (*v322)(v87, v324);
      v86(v148, v88);
      sub_25417C0B0(v65, type metadata accessor for EventQuery.FetchedRecordInfo);
      result = sub_25417C0B0(v85, type metadata accessor for EventQuery.FetchedRecordInfo);
      v81 = v326 + 1;
      v83 = v319;
      v82 += v319;
      v84 = v327 + v319;
      v53 = v323;
    }

    while ((v318 & 1) == (v42 & 1));
    v149 = v326;
LABEL_74:
    v150 = v282;
    v75 = v325;
    v151 = v280;
    if (v318)
    {
      if (v149 >= v280)
      {
        if (v280 < v149)
        {
          v152 = v83 * (v149 - 1);
          v153 = v149 * v83;
          v154 = v149;
          v74 = v280;
          v155 = v280 * v83;
          do
          {
            if (v74 != --v149)
            {
              v156 = *v300;
              if (!*v300)
              {
                goto LABEL_262;
              }

              v42 = v156 + v155;
              sub_25417C178(v156 + v155, v285, type metadata accessor for EventQuery.FetchedRecordInfo);
              if (v155 < v152 || v42 >= v156 + v153)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v155 != v152)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25417C178(v285, v156 + v152, type metadata accessor for EventQuery.FetchedRecordInfo);
              v150 = v282;
              v60 = v331;
              v83 = v319;
            }

            ++v74;
            v152 -= v83;
            v153 -= v83;
            v155 += v83;
          }

          while (v74 < v149);
          v75 = v325;
          v149 = v154;
          v151 = v280;
        }

        goto LABEL_88;
      }

LABEL_258:
      __break(1u);
LABEL_259:
      result = sub_254179EB8(v42);
      goto LABEL_228;
    }

LABEL_88:
    v157 = v300[1];
    if (v149 >= v157)
    {
      goto LABEL_168;
    }

    if (__OFSUB__(v149, v151))
    {
      goto LABEL_255;
    }

    if (v149 - v151 >= v150)
    {
      goto LABEL_168;
    }

    if (__OFADD__(v151, v150))
    {
      goto LABEL_256;
    }

    if (v151 + v150 < v157)
    {
      v157 = v151 + v150;
    }

    if (v157 < v151)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v284 = v157;
    if (v149 == v157)
    {
      goto LABEL_168;
    }

    v158 = *v300;
    v159 = *(v299 + 72);
    v160 = *v300 + v159 * (v149 - 1);
    v318 = -v159;
    v280 = v151;
    v161 = v151 - v149;
    v319 = v158;
    v283 = v159;
    v162 = v158 + v149 * v159;
LABEL_99:
    v306 = v149;
    v295 = v162;
    v296 = v161;
    v163 = v161;
    v297 = v160;
    v164 = v160;
LABEL_100:
    sub_25417C110(v162, v75, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C110(v164, v60, type metadata accessor for EventQuery.FetchedRecordInfo);
    sub_25417C110(v75 + *(v53 + 20), v329, type metadata accessor for SomeEvent);
    v165 = swift_getEnumCaseMultiPayload();
    v326 = v162;
    v327 = v163;
    if (v165)
    {
      if (v165 == 1)
      {
        SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
        v335 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
        v166 = __swift_allocate_boxed_opaque_existential_1(&v333);
        sub_25417C178(v329, v166, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_130;
      }

      v171 = v312;
      sub_25417C178(v329, v312, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v171, v313, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v172 = swift_getEnumCaseMultiPayload();
      if (v172)
      {
        if (v172 == 1)
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v173 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
          v174 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v173 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
          v174 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v173 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
        v174 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v175 = v174;
      v335 = v173;
      v176 = __swift_allocate_boxed_opaque_existential_1(&v333);
      sub_25417C178(v313, v176, v175);
      sub_25412DC4C(&v333, &v336);
      v177 = v338;
      v178 = v339;
      v179 = __swift_project_boxed_opaque_existential_1(&v336, v338);
      SessionEvent = v177;
      v335 = *(v178 + 16);
      v180 = __swift_allocate_boxed_opaque_existential_1(&v333);
      (*(*(v177 - 8) + 16))(v180, v179, v177);
      v181 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v182 = &v340;
    }

    else
    {
      v167 = v308;
      sub_25417C178(v329, v308, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v167, v309, type metadata accessor for SomeAccessoryEvent);
      v168 = swift_getEnumCaseMultiPayload();
      if (v168 > 4)
      {
        if (v168 <= 6)
        {
          if (v168 == 5)
          {
            v338 = type metadata accessor for SmokeDetectorEvent(0);
            v169 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
            v170 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            v338 = type metadata accessor for ThermostatAutomationEvent(0);
            v169 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
            v170 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v168 == 7)
        {
          v338 = type metadata accessor for ThermostatAutomationFailureEvent(0);
          v169 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
          v170 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v168 == 8)
        {
          v338 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v169 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
          v170 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          v338 = type metadata accessor for WindowEvent(0);
          v169 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
          v170 = type metadata accessor for WindowEvent;
        }
      }

      else if (v168 <= 1)
      {
        if (v168)
        {
          v338 = type metadata accessor for DoorEvent(0);
          v169 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
          v170 = type metadata accessor for DoorEvent;
        }

        else
        {
          v338 = type metadata accessor for ContactSensorEvent(0);
          v169 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
          v170 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v168 == 2)
      {
        v338 = type metadata accessor for GarageDoorEvent(0);
        v169 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
        v170 = type metadata accessor for GarageDoorEvent;
      }

      else if (v168 == 3)
      {
        v338 = type metadata accessor for LockEvent(0);
        v169 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
        v170 = type metadata accessor for LockEvent;
      }

      else
      {
        v338 = type metadata accessor for SecuritySystemEvent(0);
        v169 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
        v170 = type metadata accessor for SecuritySystemEvent;
      }

      v183 = v170;
      v339 = v169;
      v184 = __swift_allocate_boxed_opaque_existential_1(&v336);
      sub_25417C178(v309, v184, v183);
      v185 = v338;
      v186 = v339;
      v187 = __swift_project_boxed_opaque_existential_1(&v336, v338);
      SessionEvent = v185;
      v335 = *(v186 + 16);
      v188 = __swift_allocate_boxed_opaque_existential_1(&v333);
      (*(*(v185 - 8) + 16))(v188, v187, v185);
      v181 = type metadata accessor for SomeAccessoryEvent;
      v182 = &v337;
    }

    sub_25417C0B0(*(v182 - 32), v181);
    __swift_destroy_boxed_opaque_existential_1(&v336);
LABEL_130:
    v190 = SessionEvent;
    v189 = v335;
    __swift_project_boxed_opaque_existential_1(&v333, SessionEvent);
    v338 = v190;
    v339 = *(v189 + 8);
    v191 = v339;
    __swift_allocate_boxed_opaque_existential_1(&v336);
    (*(*(v190 - 8) + 16))();
    __swift_destroy_boxed_opaque_existential_1(&v333);
    (*(v191 + 32))(v190, v191);
    __swift_destroy_boxed_opaque_existential_1(&v336);
    sub_25417C110(&v331[*(v53 + 20)], v330, type metadata accessor for SomeEvent);
    v192 = swift_getEnumCaseMultiPayload();
    if (v192)
    {
      if (v192 == 1)
      {
        SessionEvent = type metadata accessor for HomeActivityStateEvent(0);
        v335 = sub_25417BFB4(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent, &unk_2542578B4);
        v193 = __swift_allocate_boxed_opaque_existential_1(&v333);
        sub_25417C178(v330, v193, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_160;
      }

      v198 = v314;
      sub_25417C178(v330, v314, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_25417C110(v198, v315, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v199 = swift_getEnumCaseMultiPayload();
      if (v199)
      {
        if (v199 == 1)
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v200 = sub_25417BFB4(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
          v201 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v200 = sub_25417BFB4(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
          v201 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
        v200 = sub_25417BFB4(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
        v201 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v202 = v201;
      v335 = v200;
      v203 = __swift_allocate_boxed_opaque_existential_1(&v333);
      sub_25417C178(v315, v203, v202);
      sub_25412DC4C(&v333, &v336);
      v204 = v338;
      v205 = v339;
      v206 = __swift_project_boxed_opaque_existential_1(&v336, v338);
      SessionEvent = v204;
      v335 = *(v205 + 16);
      v207 = __swift_allocate_boxed_opaque_existential_1(&v333);
      (*(*(v204 - 8) + 16))(v207, v206, v204);
      v208 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v209 = &v342;
    }

    else
    {
      v194 = v310;
      sub_25417C178(v330, v310, type metadata accessor for SomeAccessoryEvent);
      sub_25417C110(v194, v311, type metadata accessor for SomeAccessoryEvent);
      v195 = swift_getEnumCaseMultiPayload();
      if (v195 > 4)
      {
        if (v195 <= 6)
        {
          if (v195 == 5)
          {
            v338 = type metadata accessor for SmokeDetectorEvent(0);
            v196 = sub_25417BFB4(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent, &unk_25425C86C);
            v197 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            v338 = type metadata accessor for ThermostatAutomationEvent(0);
            v196 = sub_25417BFB4(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent, &unk_2542552D8);
            v197 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v195 == 7)
        {
          v338 = type metadata accessor for ThermostatAutomationFailureEvent(0);
          v196 = sub_25417BFB4(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent, &unk_25425BB40);
          v197 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v195 == 8)
        {
          v338 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v196 = sub_25417BFB4(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent, &unk_25425A748);
          v197 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          v338 = type metadata accessor for WindowEvent(0);
          v196 = sub_25417BFB4(&qword_27F5B9198, type metadata accessor for WindowEvent, &unk_25425DB0C);
          v197 = type metadata accessor for WindowEvent;
        }
      }

      else if (v195 <= 1)
      {
        if (v195)
        {
          v338 = type metadata accessor for DoorEvent(0);
          v196 = sub_25417BFB4(&qword_27F5B91D8, type metadata accessor for DoorEvent, &unk_254260FCC);
          v197 = type metadata accessor for DoorEvent;
        }

        else
        {
          v338 = type metadata accessor for ContactSensorEvent(0);
          v196 = sub_25417BFB4(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent, &unk_25426131C);
          v197 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v195 == 2)
      {
        v338 = type metadata accessor for GarageDoorEvent(0);
        v196 = sub_25417BFB4(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent, &unk_254260AE4);
        v197 = type metadata accessor for GarageDoorEvent;
      }

      else if (v195 == 3)
      {
        v338 = type metadata accessor for LockEvent(0);
        v196 = sub_25417BFB4(&qword_27F5B91C8, type metadata accessor for LockEvent, &unk_254254174);
        v197 = type metadata accessor for LockEvent;
      }

      else
      {
        v338 = type metadata accessor for SecuritySystemEvent(0);
        v196 = sub_25417BFB4(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent, &unk_2542586FC);
        v197 = type metadata accessor for SecuritySystemEvent;
      }

      v210 = v197;
      v339 = v196;
      v211 = __swift_allocate_boxed_opaque_existential_1(&v336);
      sub_25417C178(v311, v211, v210);
      v212 = v338;
      v213 = v339;
      v214 = __swift_project_boxed_opaque_existential_1(&v336, v338);
      SessionEvent = v212;
      v335 = *(v213 + 16);
      v215 = __swift_allocate_boxed_opaque_existential_1(&v333);
      (*(*(v212 - 8) + 16))(v215, v214, v212);
      v208 = type metadata accessor for SomeAccessoryEvent;
      v209 = &v339;
    }

    sub_25417C0B0(*(v209 - 32), v208);
    __swift_destroy_boxed_opaque_existential_1(&v336);
LABEL_160:
    v216 = SessionEvent;
    v217 = v335;
    v218 = __swift_project_boxed_opaque_existential_1(&v333, SessionEvent);
    v338 = v216;
    v219 = *(v217 + 8);
    v339 = v219;
    v220 = __swift_allocate_boxed_opaque_existential_1(&v336);
    (*(*(v216 - 8) + 16))(v220, v218, v216);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v74 = v321;
    (*(v219 + 32))(v216, v219);
    __swift_destroy_boxed_opaque_existential_1(&v336);
    v221 = v328;
    if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
    {
      sub_25424D948();
      sub_25417BFB4(&qword_27F5B9178, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      v75 = v325;
      v60 = v331;
      v42 = sub_25424DC58();
    }

    else
    {
      v42 = sub_25424D828();
      v60 = v331;
      v75 = v325;
    }

    v222 = *v322;
    v223 = v324;
    (*v322)(v74, v324);
    v222(v221, v223);
    sub_25417C0B0(v60, type metadata accessor for EventQuery.FetchedRecordInfo);
    result = sub_25417C0B0(v75, type metadata accessor for EventQuery.FetchedRecordInfo);
    if (v42)
    {
      break;
    }

    v53 = v323;
LABEL_98:
    v149 = v306 + 1;
    v160 = v297 + v283;
    v161 = v296 - 1;
    v162 = v295 + v283;
    if (v306 + 1 != v284)
    {
      goto LABEL_99;
    }

    v151 = v280;
    v149 = v284;
LABEL_168:
    if (v149 < v151)
    {
      goto LABEL_254;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v73 = v286;
    }

    else
    {
      result = sub_25417A0A0(0, *(v286 + 2) + 1, 1, v286);
      v73 = result;
    }

    v228 = *(v73 + 2);
    v227 = *(v73 + 3);
    v42 = v228 + 1;
    if (v228 >= v227 >> 1)
    {
      result = sub_25417A0A0((v227 > 1), v228 + 1, 1, v73);
      v73 = result;
    }

    *(v73 + 2) = v42;
    v229 = &v73[16 * v228];
    *(v229 + 4) = v151;
    *(v229 + 5) = v149;
    v74 = v149;
    v230 = *v281;
    if (!*v281)
    {
      goto LABEL_264;
    }

    if (v228)
    {
      v75 = v325;
      while (1)
      {
        v231 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v232 = *(v73 + 4);
          v233 = *(v73 + 5);
          v242 = __OFSUB__(v233, v232);
          v234 = v233 - v232;
          v235 = v242;
LABEL_189:
          if (v235)
          {
            goto LABEL_243;
          }

          v248 = &v73[16 * v42];
          v250 = *v248;
          v249 = *(v248 + 1);
          v251 = __OFSUB__(v249, v250);
          v252 = v249 - v250;
          v253 = v251;
          if (v251)
          {
            goto LABEL_246;
          }

          v254 = &v73[16 * v231 + 32];
          v256 = *v254;
          v255 = *(v254 + 1);
          v242 = __OFSUB__(v255, v256);
          v257 = v255 - v256;
          if (v242)
          {
            goto LABEL_249;
          }

          if (__OFADD__(v252, v257))
          {
            goto LABEL_250;
          }

          if (v252 + v257 >= v234)
          {
            if (v234 < v257)
            {
              v231 = v42 - 2;
            }

            goto LABEL_210;
          }

          goto LABEL_203;
        }

        v258 = &v73[16 * v42];
        v260 = *v258;
        v259 = *(v258 + 1);
        v242 = __OFSUB__(v259, v260);
        v252 = v259 - v260;
        v253 = v242;
LABEL_203:
        if (v253)
        {
          goto LABEL_245;
        }

        v261 = &v73[16 * v231];
        v263 = *(v261 + 4);
        v262 = *(v261 + 5);
        v242 = __OFSUB__(v262, v263);
        v264 = v262 - v263;
        if (v242)
        {
          goto LABEL_248;
        }

        if (v264 < v252)
        {
          goto LABEL_220;
        }

LABEL_210:
        v75 = v231 - 1;
        if (v231 - 1 >= v42)
        {
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
          goto LABEL_257;
        }

        if (!*v300)
        {
          goto LABEL_261;
        }

        v269 = v73;
        v42 = *&v73[16 * v75 + 32];
        v270 = *&v73[16 * v231 + 40];
        v271 = v307;
        sub_254174304(*v300 + *(v299 + 72) * v42, *v300 + *(v299 + 72) * *&v73[16 * v231 + 32], (*v300 + *(v299 + 72) * v270), v230);
        v307 = v271;
        if (v271)
        {
        }

        if (v270 < v42)
        {
          goto LABEL_239;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v269 = sub_254179EB8(v269);
        }

        if (v75 >= *(v269 + 2))
        {
          goto LABEL_240;
        }

        v272 = &v269[16 * v75];
        *(v272 + 4) = v42;
        *(v272 + 5) = v270;
        v341 = v269;
        result = sub_254179E2C(v231);
        v73 = v341;
        v42 = *(v341 + 16);
        v75 = v325;
        if (v42 <= 1)
        {
          goto LABEL_220;
        }
      }

      v236 = &v73[16 * v42 + 32];
      v237 = *(v236 - 64);
      v238 = *(v236 - 56);
      v242 = __OFSUB__(v238, v237);
      v239 = v238 - v237;
      if (v242)
      {
        goto LABEL_241;
      }

      v241 = *(v236 - 48);
      v240 = *(v236 - 40);
      v242 = __OFSUB__(v240, v241);
      v234 = v240 - v241;
      v235 = v242;
      if (v242)
      {
        goto LABEL_242;
      }

      v243 = &v73[16 * v42];
      v245 = *v243;
      v244 = *(v243 + 1);
      v242 = __OFSUB__(v244, v245);
      v246 = v244 - v245;
      if (v242)
      {
        goto LABEL_244;
      }

      v242 = __OFADD__(v234, v246);
      v247 = v234 + v246;
      if (v242)
      {
        goto LABEL_247;
      }

      if (v247 >= v239)
      {
        v265 = &v73[16 * v231 + 32];
        v267 = *v265;
        v266 = *(v265 + 1);
        v242 = __OFSUB__(v266, v267);
        v268 = v266 - v267;
        if (v242)
        {
          goto LABEL_251;
        }

        if (v234 < v268)
        {
          v231 = v42 - 2;
        }

        goto LABEL_210;
      }

      goto LABEL_189;
    }

    v75 = v325;
LABEL_220:
    v72 = v300[1];
    v65 = v305;
    if (v74 >= v72)
    {
      goto LABEL_225;
    }
  }

  v53 = v323;
  v224 = v327;
  if (v319)
  {
    v42 = type metadata accessor for EventQuery.FetchedRecordInfo;
    v225 = v326;
    v226 = v320;
    sub_25417C178(v326, v320, type metadata accessor for EventQuery.FetchedRecordInfo);
    swift_arrayInitWithTakeFrontToBack();
    sub_25417C178(v226, v164, type metadata accessor for EventQuery.FetchedRecordInfo);
    v164 += v318;
    v162 = v225 + v318;
    v163 = v224 + 1;
    if (v224 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}