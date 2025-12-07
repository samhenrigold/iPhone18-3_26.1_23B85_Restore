unint64_t sub_2663029EC()
{
  result = qword_280072868;
  if (!qword_280072868)
  {
    sub_2664DFE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072868);
  }

  return result;
}

uint64_t sub_266302A44(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = sub_2664DFE38();
  v65 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = sub_2664DFC48();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v54 - v20;
  if (*(a1 + 16))
  {
    v61 = v21;
    v62 = v6;
    v23 = *(v21 + 16);
    v23(&v54 - v20, a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v13);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v25 = v65;
    (*(v65 + 16))(v10, v24, v7);
    v23(v19, v22, v13);
    v60 = v7;
    v26 = v23;
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    v29 = os_log_type_enabled(v27, v28);
    v59 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v56 = v22;
      v31 = v13;
      v32 = v30;
      v57 = swift_slowAlloc();
      v66 = v57;
      *v32 = 136315138;
      v26(v16, v19, v31);
      v33 = sub_2664E0318();
      v58 = v10;
      v35 = v34;
      v36 = v61;
      v37 = *(v61 + 8);
      v54 = v33;
      v55 = v37;
      v37(v19, v31);
      v38 = sub_2662A320C(v54, v35, &v66);

      v39 = v32;
      v13 = v31;
      v22 = v56;
      *(v39 + 1) = v38;
      v40 = v28;
      v41 = v39;
      _os_log_impl(&dword_26629C000, v27, v40, "OnscreenEntityProvider#firstOnScreenMediaItem returning on-screen media item: %s).", v39, 0xCu);
      v42 = v57;
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);

      v43 = v55;
      (*(v25 + 8))(v58, v60);
    }

    else
    {

      v36 = v61;
      v43 = *(v61 + 8);
      v43(v19, v13);
      (*(v25 + 8))(v10, v60);
    }

    v53 = v62;
    v59(v62, v22, v13);
    (*(v36 + 56))(v53, 0, 1, v13);
    sub_2662FC988(v53, v63, v64, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem for definite reference: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no onscreen mediaItem found.");
    sub_2662A9238(v53, &qword_280072858, &qword_2664E4E40);
    return (v43)(v22, v13);
  }

  else
  {
    v44 = v21;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v46 = v65;
    v47 = v7;
    (*(v65 + 16))(v12, v45, v7);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06C8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "OnscreenEntityProvider#firstOnScreenMediaItem media item not found.", v50, 2u);
      v51 = v50;
      v46 = v65;
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    (*(v46 + 8))(v12, v47);
    (*(v44 + 56))(v6, 1, 1, v13);
    sub_2662FC988(v6, v63, v64, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem for definite reference: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no onscreen mediaItem found.");
    return sub_2662A9238(v6, &qword_280072858, &qword_2664E4E40);
  }
}

uint64_t sub_266303070(void *a1, uint64_t a2, uint64_t a3)
{
  v152 = a1;
  v5 = sub_2664DFE68();
  v6 = *(v5 - 8);
  v177 = v5;
  v178 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v176 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v175 = &v143 - v9;
  v164 = sub_2664DFF28();
  v159 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_2664DFE88();
  v165 = *(v166 - 8);
  v11 = MEMORY[0x28223BE20](v166);
  v162 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v171 = &v143 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v161 = (&v143 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v160 = &v143 - v18;
  MEMORY[0x28223BE20](v17);
  v167 = &v143 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v20);
  v22 = &v143 - v21;
  v23 = sub_2664DFF38();
  v24 = *(v23 - 8);
  v172 = v23;
  v173 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v169 = (&v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v174 = &v143 - v27;
  v156 = sub_2664DFE38();
  v28 = *(v156 - 8);
  v29 = MEMORY[0x28223BE20](v156);
  v157 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v143 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v155 = (&v143 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v158 = (&v143 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v170 = &v143 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v168 = &v143 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v143 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v143 - v44;
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  *(v46 + 24) = a3;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_26630957C;
  *(v47 + 24) = v46;
  sub_2664DF148();
  swift_allocObject();
  swift_retain_n();
  v153 = v46;

  sub_2664DF138();
  v48 = MEMORY[0x266782230]();

  v154 = v48;
  if (!v48)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v68 = v156;
    v69 = __swift_project_value_buffer(v156, qword_280F914F0);
    swift_beginAccess();
    (*(v28 + 16))(v43, v69, v68);
    v70 = sub_2664DFE18();
    v71 = sub_2664E06D8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_26629C000, v70, v71, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v72, 2u);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    (*(v28 + 8))(v43, v156);

    sub_266302A44(MEMORY[0x277D84F90], a2, a3);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v146 = v47;
    v144 = a2;
    v49 = v156;
    v50 = __swift_project_value_buffer(v156, qword_280F914F0);
    swift_beginAccess();
    v51 = *(v28 + 16);
    v149 = v50;
    v148 = v28 + 16;
    v147 = v51;
    v51(v45, v50, v49);
    v52 = sub_2664DFE18();
    v53 = sub_2664E06C8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v52, v53, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v54, 2u);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = *(v28 + 8);
    v151 = v28 + 8;
    v150 = v55;
    v55(v45, v49);
    v180 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v152, v152[3]);
    sub_2664DFEA8();
    swift_allocObject();

    sub_2664DFE98();
    v56 = v49;
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v179 = *v22;
      v57 = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v58 = v168;
      v147(v168, v149, v49);
      v59 = v57;
      v60 = sub_2664DFE18();
      v61 = sub_2664E06D8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v179 = v63;
        *v62 = 136315138;
        swift_getErrorValue();
        v64 = sub_2664E0DE8();
        v66 = sub_2662A320C(v64, v65, &v179);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_26629C000, v60, v61, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x266784AD0](v63, -1, -1);
        MEMORY[0x266784AD0](v62, -1, -1);
      }

      v150(v58, v56);
      v67 = v144;

      sub_266302A44(MEMORY[0x277D84F90], v67, a3);
    }

    v74 = v173;
    v73 = v174;
    v47 = v172;
    (*(v173 + 32))(v174, v22, v172);
    v75 = v169;
    (*(v74 + 16))(v169, v73, v47);
    v76 = (*(v74 + 88))(v75, v47);
    v77 = v76 == *MEMORY[0x277D5FEC0];
    v143 = a3;
    if (v77)
    {
      (*(v74 + 96))(v75, v47);
      a2 = v165;
      v78 = v167;
      v28 = v166;
      v168 = *(v165 + 32);
      v169 = (v165 + 32);
      (v168)(v167, v75, v166);
      v79 = v156;
      v147(v170, v149, v156);
      v80 = v160;
      v158 = *(a2 + 16);
      v158(v160, v78, v28);
      v81 = sub_2664DFE18();
      v82 = sub_2664E06C8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v179 = v84;
        *v83 = 136315138;
        sub_2663029EC();
        v85 = sub_2664E0D48();
        v87 = v86;
        v160 = *(v165 + 8);
        (v160)(v80, v28);
        v88 = sub_2662A320C(v85, v87, &v179);
        a2 = v165;

        *(v83 + 4) = v88;
        _os_log_impl(&dword_26629C000, v81, v82, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        v89 = v84;
        v47 = v172;
        MEMORY[0x266784AD0](v89, -1, -1);
        v90 = v83;
        v78 = v167;
        MEMORY[0x266784AD0](v90, -1, -1);

        v91 = v170;
        v92 = v156;
      }

      else
      {

        v160 = *(a2 + 8);
        (v160)(v80, v28);
        v91 = v170;
        v92 = v79;
      }

      v150(v91, v92);
      v22 = v161;
      v158(v161, v78, v28);
      v106 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v108 = *(v106 + 2);
      v107 = *(v106 + 3);
      v109 = v173;
      if (v108 >= v107 >> 1)
      {
        v106 = sub_266384A74((v107 > 1), v108 + 1, 1, v106);
      }

      v110 = v78;
      v111 = v166;
      (v160)(v110, v166);
      (*(v109 + 8))(v174, v47);
      *(v106 + 2) = v108 + 1;
      (v168)(&v106[((*(a2 + 80) + 32) & ~*(a2 + 80)) + *(a2 + 72) * v108], v22, v111);
      v180 = v106;
    }

    else
    {
      v93 = v156;
      v94 = v166;
      a2 = v165;
      if (v76 == *MEMORY[0x277D5FED0])
      {
        (*(v74 + 96))(v75, v47);
        v95 = *v75;
        v96 = v158;
        v147(v158, v149, v93);

        v97 = sub_2664DFE18();
        v98 = sub_2664E06C8();

        if (os_log_type_enabled(v97, v98))
        {
          v22 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v179 = v99;
          *v22 = 136315138;
          v100 = MEMORY[0x2667834D0](v95, v94);
          v102 = sub_2662A320C(v100, v101, &v179);
          v47 = v172;

          *(v22 + 4) = v102;
          _os_log_impl(&dword_26629C000, v97, v98, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          v103 = v99;
          a2 = v165;
          MEMORY[0x266784AD0](v103, -1, -1);
          MEMORY[0x266784AD0](v22, -1, -1);

          v104 = v96;
          v105 = v156;
        }

        else
        {

          v104 = v96;
          v105 = v93;
        }

        v150(v104, v105);
        sub_2662FA148(v95, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_36:
        v120 = *(v74 + 8);
        v28 = v74 + 8;
        v120(v174, v47);
        goto LABEL_37;
      }

      if (v76 != *MEMORY[0x277D5FEC8] && v76 != *MEMORY[0x277D5FED8] && v76 == *MEMORY[0x277D5FEE0])
      {
        v22 = v155;
        v147(v155, v149, v156);
        v112 = sub_2664DFE18();
        v113 = sub_2664E06C8();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_26629C000, v112, v113, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v114, 2u);
          MEMORY[0x266784AD0](v114, -1, -1);
        }

        v150(v22, v93);
        goto LABEL_36;
      }

      v116 = *(v74 + 8);
      v28 = v74 + 8;
      v115 = v116;
      v116(v75, v47);
      v22 = v157;
      v147(v157, v149, v93);
      v117 = sub_2664DFE18();
      v118 = sub_2664E06D8();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_26629C000, v117, v118, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v119, 2u);
        MEMORY[0x266784AD0](v119, -1, -1);
      }

      v150(v22, v93);
      v115(v174, v47);
      a2 = v165;
    }

LABEL_37:
    v121 = v180;
    v161 = *(v180 + 2);
    if (!v161)
    {
      break;
    }

    v122 = 0;
    v160 = (a2 + 16);
    ++v159;
    v174 = (v178 + 16);
    LODWORD(v173) = *MEMORY[0x277D5FE90];
    v123 = *MEMORY[0x277D5FDF0];
    v172 = v178 + 104;
    a3 = v178 + 8;
    v157 = (a2 + 32);
    v155 = (a2 + 8);
    v124 = MEMORY[0x277D84F90];
    v45 = v166;
    v158 = v180;
    while (v122 < *(v121 + 2))
    {
      v170 = v124;
      v168 = ((*(a2 + 80) + 32) & ~*(a2 + 80));
      v167 = *(a2 + 72);
      (*(a2 + 16))(v171, &v168[v121 + v167 * v122], v45);
      v169 = (v122 + 1);
      v45 = v163;
      sub_2664DFE78();
      v125 = sub_2664DFF08();
      (*v159)(v45, v164);
      v28 = 0;
      v126 = *(v125 + 16);
      do
      {
        if (v126 == v28)
        {
          v45 = v166;
          (*v155)(v171, v166);

          v124 = v170;
          goto LABEL_40;
        }

        if (v28 >= *(v125 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v45 = v177;
        v127 = v178;
        v22 = v175;
        (*(v178 + 16))(v175, v125 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v28++, v177);
        v128 = sub_2664DFEB8();
        v47 = v176;
        (*(*(v128 - 8) + 104))(v176, v173, v128);
        (*(v127 + 104))(v47, v123, v45);
        a2 = sub_2664DFE58();
        v129 = *(v127 + 8);
        v129(v47, v45);
        v129(v22, v45);
      }

      while ((a2 & 1) == 0);

      v130 = *v157;
      v45 = v166;
      (*v157)(v162, v171, v166);
      v124 = v170;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179 = v124;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v124 + 16) + 1, 1);
        v124 = v179;
      }

      v28 = *(v124 + 16);
      v132 = *(v124 + 24);
      if (v28 >= v132 >> 1)
      {
        sub_2662FD058((v132 > 1), v28 + 1, 1);
        v124 = v179;
      }

      *(v124 + 16) = v28 + 1;
      v130(&v168[v124 + v28 * v167], v162, v45);
LABEL_40:
      v122 = v169;
      a2 = v165;
      v121 = v158;
      if (v169 == v161)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v124 = MEMORY[0x277D84F90];
LABEL_52:

  if (*(v124 + 16))
  {
    v133 = v152[8];
    v134 = v152[9];
    __swift_project_boxed_opaque_existential_1(v152 + 5, v133);
    (*(v134 + 8))(v124, sub_2663095A8, v146, v133, v134);
  }

  v136 = v145;
  v137 = v156;
  v147(v145, v149, v156);
  v138 = sub_2664DFE18();
  v139 = sub_2664E06C8();
  v140 = os_log_type_enabled(v138, v139);
  v141 = v143;
  if (v140)
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&dword_26629C000, v138, v139, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v142, 2u);
    MEMORY[0x266784AD0](v142, -1, -1);
  }

  v150(v136, v137);

  sub_266302A44(MEMORY[0x277D84F90], v144, v141);
}

uint64_t sub_2663047E4(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v151 = a1;
  v5 = sub_2664DFE68();
  v6 = *(v5 - 8);
  v175 = v5;
  v176 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v174 = (&v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v173 = (&v141 - v9);
  v164 = sub_2664DFF28();
  v158 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = (&v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = sub_2664DFE88();
  v11 = *(v165 - 8);
  v12 = MEMORY[0x28223BE20](v165);
  v162 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v141 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v159 = &v141 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v171 = &v141 - v19;
  MEMORY[0x28223BE20](v18);
  v168 = &v141 - v20;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v170);
  v22 = (&v141 - v21);
  v23 = sub_2664DFF38();
  v166 = *(v23 - 8);
  v167 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v161 = (&v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v172 = &v141 - v26;
  v27 = sub_2664DFE38();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v154 = (&v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v141 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v142 = &v141 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v155 = &v141 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v156 = &v141 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v160 = &v141 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v141 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v141 - v44;
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  *(v46 + 24) = a3;
  v152 = v46;
  sub_2664DF148();
  swift_allocObject();

  sub_2664DF138();
  v47 = MEMORY[0x266782230]();

  v153 = v47;
  if (!v47)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v27, qword_280F914F0);
    swift_beginAccess();
    (*(v28 + 16))(v43, v67, v27);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v27;
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v71, 2u);
      v72 = v71;
      v27 = v70;
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    (*(v28 + 8))(v43, v27);
    sub_2662F8E50(MEMORY[0x277D84F90], a2, a3);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v143 = a2;
    v144 = a3;
    v48 = __swift_project_value_buffer(v27, qword_280F914F0);
    swift_beginAccess();
    v49 = *(v28 + 16);
    v148 = v48;
    v147 = (v28 + 16);
    v146 = v49;
    v49(v45, v48, v27);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v171;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v54, 2u);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = *(v28 + 8);
    v28 += 8;
    v150 = v28;
    v149 = v55;
    v55(v45, v27);
    v178 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v151, v151[3]);
    sub_2664DFEA8();
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v177 = *v22;
      v56 = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v57 = v160;
      v146(v160, v148, v27);
      v58 = v56;
      v59 = v27;
      v60 = sub_2664DFE18();
      v61 = sub_2664E06D8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v177 = v63;
        *v62 = 136315138;
        swift_getErrorValue();
        v64 = sub_2664E0DE8();
        v66 = sub_2662A320C(v64, v65, &v177);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_26629C000, v60, v61, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x266784AD0](v63, -1, -1);
        MEMORY[0x266784AD0](v62, -1, -1);
      }

      v149(v57, v59);
      sub_2662F8E50(MEMORY[0x277D84F90], v143, v144);
    }

    v73 = v166;
    a3 = v167;
    v74 = v172;
    (*(v166 + 32))(v172, v22, v167);
    v75 = v161;
    (*(v73 + 16))(v161, v74, a3);
    v76 = (*(v73 + 88))(v75, a3);
    v77 = v76 == *MEMORY[0x277D5FEC0];
    v141 = v27;
    if (!v77)
    {
      if (v76 == *MEMORY[0x277D5FED0])
      {
        (*(v73 + 96))(v75, a3);
        v92 = *v75;
        v28 = v155;
        v146(v155, v148, v27);

        v93 = sub_2664DFE18();
        v94 = sub_2664E06C8();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v177 = v96;
          *v95 = 136315138;
          v97 = MEMORY[0x2667834D0](v92, v165);
          v99 = sub_2662A320C(v97, v98, &v177);
          v73 = v166;

          *(v95 + 4) = v99;
          _os_log_impl(&dword_26629C000, v93, v94, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          v100 = v96;
          a3 = v167;
          MEMORY[0x266784AD0](v100, -1, -1);
          MEMORY[0x266784AD0](v95, -1, -1);
        }

        v149(v28, v27);
        sub_2662FA148(v92, sub_266384A74, MEMORY[0x277D5FE08]);
      }

      else
      {
        if (v76 == *MEMORY[0x277D5FEC8] || v76 == *MEMORY[0x277D5FED8] || v76 != *MEMORY[0x277D5FEE0])
        {
          v112 = v27;
          v114 = *(v73 + 8);
          a2 = (v73 + 8);
          v113 = v114;
          v114(v75, a3);
          v28 = v154;
          v146(v154, v148, v112);
          v115 = sub_2664DFE18();
          v116 = sub_2664E06D8();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            *v117 = 0;
            _os_log_impl(&dword_26629C000, v115, v116, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v117, 2u);
            MEMORY[0x266784AD0](v117, -1, -1);
          }

          v149(v28, v112);
          v113(v172, a3);
          goto LABEL_36;
        }

        v107 = v142;
        v146(v142, v148, v27);
        v108 = sub_2664DFE18();
        v109 = sub_2664E06C8();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_26629C000, v108, v109, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v110, 2u);
          MEMORY[0x266784AD0](v110, -1, -1);
        }

        v149(v107, v27);
      }

      v111 = *(v73 + 8);
      a2 = (v73 + 8);
      v111(v172, a3);
LABEL_36:
      v22 = v165;
      goto LABEL_37;
    }

    (*(v73 + 96))(v75, a3);
    v78 = *(v11 + 32);
    v79 = v168;
    v22 = v165;
    v170 = v11 + 32;
    v161 = v78;
    (v78)(v168, v75, v165);
    v28 = v156;
    v146(v156, v148, v27);
    v160 = *(v11 + 16);
    (v160)(v53, v79, v22);
    v80 = sub_2664DFE18();
    v81 = sub_2664E06C8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v177 = v83;
      *v82 = 136315138;
      sub_2663029EC();
      v84 = sub_2664E0D48();
      v86 = v85;
      v87 = v53;
      v88 = *(v11 + 8);
      v88(v87, v165);
      v89 = sub_2662A320C(v84, v86, &v177);
      a3 = v167;

      *(v82 + 4) = v89;
      _os_log_impl(&dword_26629C000, v80, v81, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      v90 = v83;
      v73 = v166;
      MEMORY[0x266784AD0](v90, -1, -1);
      v91 = v82;
      v22 = v165;
      MEMORY[0x266784AD0](v91, -1, -1);
    }

    else
    {

      v101 = v53;
      v88 = *(v11 + 8);
      v88(v101, v22);
    }

    v149(v28, v141);
    v102 = v159;
    (v160)(v159, v168, v22);
    v103 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
    v105 = *(v103 + 2);
    v104 = *(v103 + 3);
    if (v105 >= v104 >> 1)
    {
      v103 = sub_266384A74((v104 > 1), v105 + 1, 1, v103);
    }

    v88(v168, v22);
    v106 = *(v73 + 8);
    a2 = (v73 + 8);
    v106(v172, a3);
    *(v103 + 2) = v105 + 1;
    (v161)(&v103[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v105], v102, v22);
    v178 = v103;
LABEL_37:
    v118 = v178;
    v160 = *(v178 + 2);
    if (!v160)
    {
      break;
    }

    v119 = 0;
    v159 = (v11 + 16);
    ++v158;
    v172 = (v176 + 16);
    LODWORD(v171) = *MEMORY[0x277D5FE90];
    v45 = *MEMORY[0x277D5FDF0];
    v170 = v176 + 104;
    v27 = v176 + 8;
    v155 = (v11 + 32);
    v154 = (v11 + 8);
    v161 = MEMORY[0x277D84F90];
    v157 = v11;
    v156 = v178;
    while (v119 < *(v118 + 2))
    {
      v167 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v166 = *(v11 + 72);
      (*(v11 + 16))(v169, &v118[v167 + v166 * v119], v22);
      v168 = (v119 + 1);
      v22 = v163;
      sub_2664DFE78();
      v120 = sub_2664DFF08();
      (*v158)(v22, v164);
      v28 = 0;
      v11 = *(v120 + 16);
      do
      {
        if (v11 == v28)
        {
          v22 = v165;
          (*v154)(v169, v165);

          goto LABEL_40;
        }

        if (v28 >= *(v120 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v121 = v175;
        v122 = v176;
        v22 = v173;
        (*(v176 + 16))(v173, v120 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v28++, v175);
        v123 = sub_2664DFEB8();
        a2 = v174;
        (*(*(v123 - 8) + 104))(v174, v171, v123);
        (*(v122 + 104))(a2, v45, v121);
        a3 = sub_2664DFE58();
        v124 = *(v122 + 8);
        v124(a2, v121);
        v124(v22, v121);
      }

      while ((a3 & 1) == 0);

      v28 = *v155;
      v22 = v165;
      (*v155)(v162, v169, v165);
      v125 = v161;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v125;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v125 + 16) + 1, 1);
        v125 = v177;
      }

      v127 = v167;
      v129 = *(v125 + 16);
      v128 = *(v125 + 24);
      a3 = v129 + 1;
      if (v129 >= v128 >> 1)
      {
        sub_2662FD058((v128 > 1), v129 + 1, 1);
        v125 = v177;
      }

      *(v125 + 16) = a3;
      v161 = v125;
      (v28)(v125 + v127 + v129 * v166, v162, v22);
LABEL_40:
      v119 = v168;
      v11 = v157;
      v118 = v156;
      if (v168 == v160)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v161 = MEMORY[0x277D84F90];
LABEL_52:

  v130 = v161;
  if (v161[2])
  {
    v131 = v151[8];
    v132 = v151[9];
    __swift_project_boxed_opaque_existential_1(v151 + 5, v131);
    (*(v132 + 8))(v130, sub_266309658, v152, v131, v132);
  }

  else
  {

    v133 = v145;
    v134 = v141;
    v146(v145, v148, v141);
    v135 = sub_2664DFE18();
    v136 = sub_2664E06C8();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = v134;
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_26629C000, v135, v136, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v138, 2u);
      v139 = v138;
      v134 = v137;
      MEMORY[0x266784AD0](v139, -1, -1);
    }

    v149(v133, v134);
    sub_2662F8E50(MEMORY[0x277D84F90], v143, v144);
  }
}

uint64_t sub_266305E30(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t (*a4)(void *), uint64_t a5)
{
  v68 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v57[-v10];
  v11 = sub_2664DFE38();
  v69 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v57[-v15];
  v16 = sub_2664DFC48();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v57[-v21];
  result = MEMORY[0x28223BE20](v20);
  v26 = &v57[-v24];
  v27 = *(a1 + 16);
  v28 = a2;
  if (a2 < 0)
  {
    v28 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
      return result;
    }
  }

  if (v28 < v27)
  {
    if (a2 < 0 || v27 <= a2)
    {
      __break(1u);
    }

    else
    {
      v64 = a3;
      v65 = a4;
      v63 = v25;
      a3 = *(v25 + 16);
      a3(&v57[-v24], a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * a2, v16);
      if (qword_280F914E8 == -1)
      {
LABEL_7:
        v29 = v11;
        v30 = __swift_project_value_buffer(v11, qword_280F914F0);
        swift_beginAccess();
        v31 = v69;
        v32 = *(v69 + 16);
        v33 = v66;
        v62 = v29;
        v32(v66, v30, v29);
        a3(v22, v26, v16);
        v34 = a3;
        v35 = sub_2664DFE18();
        v36 = sub_2664E06C8();
        v37 = os_log_type_enabled(v35, v36);
        v61 = v34;
        if (v37)
        {
          v38 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v70 = v60;
          *v38 = 136315138;
          v34(v19, v22, v16);
          v39 = sub_2664E0318();
          v41 = v40;
          v42 = v63;
          v59 = v26;
          v43 = *(v63 + 8);
          v58 = v36;
          v43(v22, v16);
          v44 = sub_2662A320C(v39, v41, &v70);

          *(v38 + 4) = v44;
          _os_log_impl(&dword_26629C000, v35, v58, "OnscreenEntityProvider#onScreenMediaItemAtIndex returning on-screen media item: %s).", v38, 0xCu);
          v45 = v60;
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x266784AD0](v45, -1, -1);
          MEMORY[0x266784AD0](v38, -1, -1);

          v46 = v43;
          v26 = v59;
          (*(v69 + 8))(v66, v62);
        }

        else
        {

          v42 = v63;
          v46 = *(v63 + 8);
          v46(v22, v16);
          (*(v31 + 8))(v33, v62);
        }

        v56 = v67;
        v61(v67, v26, v16);
        (*(v42 + 56))(v56, 0, 1, v16);
        sub_2662FC3F4(v56, v64, v65, v68);
        sub_2662A9238(v56, &qword_280072858, &qword_2664E4E40);
        return (v46)(v26, v16);
      }
    }

    swift_once();
    goto LABEL_7;
  }

  v47 = v25;
  v48 = a3;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v49 = v11;
  v50 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v51 = v69;
  (*(v69 + 16))(v14, v50, v49);
  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26629C000, v52, v53, "OnscreenEntityProvider#onScreenMediaItemAtIndex index seems to be out of bound.", v54, 2u);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  (*(v51 + 8))(v14, v49);
  v55 = v67;
  (*(v47 + 56))(v67, 1, 1, v16);
  sub_2662FC3F4(v55, v48, a4, v68);
  return sub_2662A9238(v55, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_2663064A4(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v163 = a1;
  v9 = sub_2664DFE68();
  v10 = *(v9 - 8);
  v189 = v9;
  v190 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v188 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v187 = &v151 - v13;
  v176 = sub_2664DFF28();
  v171 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2664DFE88();
  v177 = *(v178 - 8);
  v15 = MEMORY[0x28223BE20](v178);
  v174 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v183 = &v151 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v172 = &v151 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v170 = &v151 - v22;
  MEMORY[0x28223BE20](v21);
  v184 = &v151 - v23;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v185);
  v25 = &v151 - v24;
  v26 = sub_2664DFF38();
  v180 = *(v26 - 8);
  v181 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v173 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v186 = &v151 - v29;
  v167 = sub_2664DFE38();
  v168 = *(v167 - 8);
  v30 = MEMORY[0x28223BE20](v167);
  v166 = (&v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v156 = &v151 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v153 = &v151 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v169 = &v151 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v179 = &v151 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v182 = &v151 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v151 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v151 - v45;
  v47 = swift_allocObject();
  v162 = a3;
  v47[2] = a3;
  v47[3] = a4;
  v48 = a4;
  v47[4] = a5;
  v49 = swift_allocObject();
  v50 = a2;
  *(v49 + 16) = a2;
  v51 = a5;
  *(v49 + 24) = sub_2663095B0;
  *(v49 + 32) = v47;
  sub_2664DF148();
  swift_allocObject();
  swift_retain_n();
  v164 = v47;

  sub_2664DF138();
  v52 = MEMORY[0x266782230]();

  v165 = v52;
  if (!v52)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v75 = v167;
    v76 = __swift_project_value_buffer(v167, qword_280F914F0);
    swift_beginAccess();
    (*(v168 + 16))(v44, v76, v75);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06D8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_26629C000, v77, v78, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v79, 2u);
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    (*(v168 + 8))(v44, v167);

    sub_266305E30(MEMORY[0x277D84F90], v50, v162, v48, a5);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v157 = v49;
    v154 = v50;
    v155 = v48;
    v53 = v167;
    v54 = __swift_project_value_buffer(v167, qword_280F914F0);
    swift_beginAccess();
    v55 = *(v168 + 16);
    v160 = v54;
    v159 = v168 + 16;
    v158 = v55;
    v55(v46, v54, v53);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26629C000, v56, v57, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v58, 2u);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    v59 = *(v168 + 8);
    v168 += 8;
    v161 = v59;
    v59(v46, v53);
    v192 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    sub_2664DFEA8();
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v48 = v177;
    if (EnumCaseMultiPayload == 1)
    {
      v191 = *v25;
      v61 = v191;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v62 = v182;
      v158(v182, v160, v53);
      v63 = v61;
      v64 = sub_2664DFE18();
      v65 = sub_2664E06D8();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v155;
      v68 = v162;
      if (v66)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v191 = v70;
        *v69 = 136315138;
        swift_getErrorValue();
        v71 = sub_2664E0DE8();
        v73 = sub_2662A320C(v71, v72, &v191);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_26629C000, v64, v65, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x266784AD0](v70, -1, -1);
        MEMORY[0x266784AD0](v69, -1, -1);

        v74 = v182;
      }

      else
      {

        v74 = v62;
      }

      v161(v74, v167);

      sub_266305E30(MEMORY[0x277D84F90], v154, v68, v67, v51);
    }

    v80 = v180;
    v50 = v181;
    v81 = v186;
    (*(v180 + 32))(v186, v25, v181);
    v82 = v173;
    (*(v80 + 16))(v173, v81, v50);
    v83 = (*(v80 + 88))(v82, v50);
    v84 = v83 == *MEMORY[0x277D5FEC0];
    v152 = v51;
    if (v84)
    {
      (*(v80 + 96))(v82, v50);
      v85 = *(v48 + 32);
      v86 = v184;
      v87 = v178;
      v185 = v48 + 32;
      v182 = v85;
      (v85)(v184, v82, v178);
      v88 = v167;
      v158(v179, v160, v167);
      v89 = v170;
      v173 = *(v48 + 16);
      (v173)(v170, v86, v87);
      v90 = sub_2664DFE18();
      v91 = sub_2664E06C8();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = v89;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v191 = v94;
        *v93 = 136315138;
        sub_2663029EC();
        LODWORD(v169) = v91;
        v95 = sub_2664E0D48();
        v97 = v96;
        v25 = *(v48 + 8);
        (v25)(v92, v87);
        v98 = sub_2662A320C(v95, v97, &v191);
        v50 = v181;

        *(v93 + 4) = v98;
        _os_log_impl(&dword_26629C000, v90, v169, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
        v99 = v94;
        v80 = v180;
        MEMORY[0x266784AD0](v99, -1, -1);
        MEMORY[0x266784AD0](v93, -1, -1);

        v100 = v179;
        v101 = v167;
      }

      else
      {

        v25 = *(v48 + 8);
        (v25)(v89, v87);
        v100 = v179;
        v101 = v88;
      }

      v161(v100, v101);
      v115 = v172;
      (v173)(v172, v184, v87);
      v116 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v118 = *(v116 + 2);
      v117 = *(v116 + 3);
      if (v118 >= v117 >> 1)
      {
        v116 = sub_266384A74((v117 > 1), v118 + 1, 1, v116);
      }

      v119 = v178;
      (v25)(v184, v178);
      (*(v80 + 8))(v186, v50);
      *(v116 + 2) = v118 + 1;
      (v182)(&v116[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v118], v115, v119);
      v192 = v116;
    }

    else
    {
      v102 = v167;
      v103 = v178;
      if (v83 == *MEMORY[0x277D5FED0])
      {
        (*(v80 + 96))(v82, v50);
        v104 = *v82;
        v105 = v169;
        v158(v169, v160, v102);

        v106 = sub_2664DFE18();
        v107 = sub_2664E06C8();

        if (os_log_type_enabled(v106, v107))
        {
          v25 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v191 = v108;
          *v25 = 136315138;
          v109 = MEMORY[0x2667834D0](v104, v103);
          v111 = sub_2662A320C(v109, v110, &v191);
          v80 = v180;

          *(v25 + 4) = v111;
          _os_log_impl(&dword_26629C000, v106, v107, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          v112 = v108;
          v50 = v181;
          MEMORY[0x266784AD0](v112, -1, -1);
          MEMORY[0x266784AD0](v25, -1, -1);

          v113 = v105;
          v114 = v167;
        }

        else
        {

          v113 = v105;
          v114 = v102;
        }

        v161(v113, v114);
        sub_2662FA148(v104, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_37:
        (*(v80 + 8))(v186, v50);
        goto LABEL_38;
      }

      if (v83 != *MEMORY[0x277D5FEC8] && v83 != *MEMORY[0x277D5FED8] && v83 == *MEMORY[0x277D5FEE0])
      {
        v120 = v153;
        v158(v153, v160, v167);
        v121 = sub_2664DFE18();
        v122 = sub_2664E06C8();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          *v123 = 0;
          _os_log_impl(&dword_26629C000, v121, v122, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v123, 2u);
          MEMORY[0x266784AD0](v123, -1, -1);
        }

        v161(v120, v102);
        goto LABEL_37;
      }

      v25 = *(v80 + 8);
      (v25)(v82, v50);
      v124 = v166;
      v158(v166, v160, v102);
      v125 = sub_2664DFE18();
      v126 = sub_2664E06D8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_26629C000, v125, v126, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v127, 2u);
        MEMORY[0x266784AD0](v127, -1, -1);
      }

      v161(v124, v102);
      (v25)(v186, v50);
    }

LABEL_38:
    v128 = v192;
    v173 = *(v192 + 2);
    if (!v173)
    {
      break;
    }

    v129 = 0;
    v172 = (v48 + 16);
    ++v171;
    v186 = (v190 + 16);
    LODWORD(v185) = *MEMORY[0x277D5FE90];
    v49 = *MEMORY[0x277D5FDF0];
    v184 = (v190 + 104);
    v51 = v190 + 8;
    v169 = (v48 + 32);
    v166 = (v48 + 8);
    v130 = MEMORY[0x277D84F90];
    v46 = v178;
    v170 = v192;
    while (v129 < *(v128 + 2))
    {
      v182 = v130;
      v180 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v179 = *(v48 + 72);
      (*(v48 + 16))(v183, &v128[v180 + v179 * v129], v46);
      v181 = v129 + 1;
      v46 = v175;
      sub_2664DFE78();
      v131 = sub_2664DFF08();
      (*v171)(v46, v176);
      v132 = 0;
      v48 = *(v131 + 16);
      do
      {
        if (v48 == v132)
        {
          v46 = v178;
          (*v166)(v183, v178);

          v130 = v182;
          goto LABEL_41;
        }

        if (v132 >= *(v131 + 16))
        {
          __break(1u);
          goto LABEL_61;
        }

        v134 = v189;
        v133 = v190;
        v25 = v187;
        (*(v190 + 16))(v187, v131 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v132++, v189);
        v135 = sub_2664DFEB8();
        v46 = v188;
        (*(*(v135 - 8) + 104))(v188, v185, v135);
        (*(v133 + 104))(v46, v49, v134);
        v50 = sub_2664DFE58();
        v136 = *(v133 + 8);
        v136(v46, v134);
        v136(v25, v134);
      }

      while ((v50 & 1) == 0);

      v137 = *v169;
      v46 = v178;
      (*v169)(v174, v183, v178);
      v130 = v182;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191 = v130;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v130 + 16) + 1, 1);
        v130 = v191;
      }

      v140 = *(v130 + 16);
      v139 = *(v130 + 24);
      v50 = v140 + 1;
      if (v140 >= v139 >> 1)
      {
        sub_2662FD058((v139 > 1), v140 + 1, 1);
        v130 = v191;
      }

      *(v130 + 16) = v50;
      v137(v130 + v180 + v140 * v179, v174, v46);
LABEL_41:
      v129 = v181;
      v48 = v177;
      v128 = v170;
      if (v181 == v173)
      {
        goto LABEL_53;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v130 = MEMORY[0x277D84F90];
LABEL_53:

  if (*(v130 + 16))
  {
    v141 = v163[8];
    v142 = v163[9];
    __swift_project_boxed_opaque_existential_1(v163 + 5, v141);
    (*(v142 + 8))(v130, sub_2663095BC, v157, v141, v142);
  }

  v144 = v156;
  v145 = v167;
  v158(v156, v160, v167);
  v146 = sub_2664DFE18();
  v147 = sub_2664E06C8();
  v148 = os_log_type_enabled(v146, v147);
  v149 = v152;
  if (v148)
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_26629C000, v146, v147, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v150, 2u);
    MEMORY[0x266784AD0](v150, -1, -1);
  }

  v161(v144, v145);

  sub_266305E30(MEMORY[0x277D84F90], v154, v162, v155, v149);
}

uint64_t sub_266307C70(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v145 = a1;
  v7 = sub_2664DFE68();
  v8 = *(v7 - 8);
  v170 = v7;
  v171 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v169 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v168 = (&v136 - v11);
  v157 = sub_2664DFF28();
  v152 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2664DFE88();
  v158 = *(v161 - 8);
  v13 = MEMORY[0x28223BE20](v161);
  v155 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v136 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v153 = &v136 - v20;
  MEMORY[0x28223BE20](v19);
  v163 = (&v136 - v21);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v166);
  v23 = (&v136 - v22);
  v162 = sub_2664DFF38();
  v165 = *(v162 - 8);
  v24 = MEMORY[0x28223BE20](v162);
  v159 = (&v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v167 = &v136 - v26;
  v148 = sub_2664DFE38();
  v27 = *(v148 - 8);
  v28 = MEMORY[0x28223BE20](v148);
  v150 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v139 = &v136 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v149 = (&v136 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v151 = (&v136 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v160 = &v136 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v136 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v136 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v136 - v44;
  v46 = swift_allocObject();
  v46[2] = a2;
  v46[3] = a3;
  v146 = v46;
  v46[4] = a4;
  sub_2664DF148();
  swift_allocObject();

  sub_2664DF138();
  v47 = MEMORY[0x266782230]();

  v147 = v47;
  if (!v47)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v67 = v148;
    v68 = __swift_project_value_buffer(v148, qword_280F914F0);
    swift_beginAccess();
    (*(v27 + 16))(v43, v68, v67);
    v69 = sub_2664DFE18();
    v70 = sub_2664E06D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26629C000, v69, v70, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v71, 2u);
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    (*(v27 + 8))(v43, v148);
    sub_2662F9658(MEMORY[0x277D84F90], a2, a3, a4);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v136 = a2;
    v137 = a3;
    v138 = a4;
    v48 = v148;
    v49 = __swift_project_value_buffer(v148, qword_280F914F0);
    swift_beginAccess();
    v50 = *(v27 + 16);
    v142 = v49;
    v141 = v27 + 16;
    v140 = v50;
    v50(v45, v49, v48);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06C8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v51, v52, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v54 = *(v27 + 8);
    v144 = v27 + 8;
    v143 = v54;
    v54(v45, v48);
    v173 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v145, v145[3]);
    sub_2664DFEA8();
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v172 = *v23;
      v55 = v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v140(v40, v142, v48);
      v56 = v55;
      v57 = sub_2664DFE18();
      v58 = v48;
      v59 = sub_2664E06D8();

      v60 = os_log_type_enabled(v57, v59);
      v61 = v138;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v172 = v63;
        *v62 = 136315138;
        swift_getErrorValue();
        v64 = sub_2664E0DE8();
        v66 = sub_2662A320C(v64, v65, &v172);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_26629C000, v57, v59, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x266784AD0](v63, -1, -1);
        MEMORY[0x266784AD0](v62, -1, -1);
      }

      v143(v40, v58);
      sub_2662F9658(MEMORY[0x277D84F90], v136, v137, v61);
    }

    v72 = v165;
    v73 = v167;
    v74 = v162;
    (*(v165 + 32))(v167, v23, v162);
    v75 = v159;
    (*(v72 + 16))(v159, v73, v74);
    v76 = (*(v72 + 88))(v75, v74);
    if (v76 == *MEMORY[0x277D5FEC0])
    {
      (*(v72 + 96))(v75, v74);
      a3 = v158;
      v77 = v158 + 32;
      v78 = v163;
      v27 = v161;
      v159 = *(v158 + 32);
      (v159)(v163, v75, v161);
      v140(v160, v142, v48);
      v79 = v153;
      v151 = *(a3 + 16);
      v151(v153, v78, v27);
      v80 = sub_2664DFE18();
      v40 = sub_2664E06C8();
      v81 = os_log_type_enabled(v80, v40);
      v166 = v77;
      if (v81)
      {
        v82 = v79;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v172 = v84;
        *v83 = 136315138;
        sub_2663029EC();
        v85 = sub_2664E0D48();
        v87 = v86;
        v88 = *(v158 + 8);
        v88(v82, v27);
        v89 = sub_2662A320C(v85, v87, &v172);
        a3 = v158;

        *(v83 + 4) = v89;
        _os_log_impl(&dword_26629C000, v80, v40, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        v90 = v84;
        v74 = v162;
        MEMORY[0x266784AD0](v90, -1, -1);
        MEMORY[0x266784AD0](v83, -1, -1);
      }

      else
      {

        v88 = *(a3 + 8);
        v88(v79, v27);
      }

      v143(v160, v148);
      v101 = v154;
      v151(v154, v163, v27);
      v102 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v104 = *(v102 + 2);
      v103 = *(v102 + 3);
      v105 = v165;
      if (v104 >= v103 >> 1)
      {
        v102 = sub_266384A74((v103 > 1), v104 + 1, 1, v102);
      }

      v88(v163, v27);
      (*(v105 + 8))(v167, v74);
      *(v102 + 2) = v104 + 1;
      (v159)(&v102[((*(a3 + 80) + 32) & ~*(a3 + 80)) + *(a3 + 72) * v104], v101, v27);
      v173 = v102;
    }

    else
    {
      v27 = v161;
      a3 = v158;
      if (v76 == *MEMORY[0x277D5FED0])
      {
        (*(v72 + 96))(v75, v74);
        v40 = *v75;
        v91 = v151;
        v140(v151, v142, v48);

        v92 = sub_2664DFE18();
        v93 = sub_2664E06C8();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v172 = v95;
          *v94 = 136315138;
          v96 = MEMORY[0x2667834D0](v40, v27);
          v98 = sub_2662A320C(v96, v97, &v172);
          v74 = v162;

          *(v94 + 4) = v98;
          _os_log_impl(&dword_26629C000, v92, v93, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v95);
          v99 = v95;
          a3 = v158;
          MEMORY[0x266784AD0](v99, -1, -1);
          v100 = v94;
          v72 = v165;
          MEMORY[0x266784AD0](v100, -1, -1);
        }

        v143(v91, v48);
        sub_2662FA148(v40, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_31:
        (*(v72 + 8))(v167, v74);
        goto LABEL_35;
      }

      if (v76 != *MEMORY[0x277D5FEC8] && v76 != *MEMORY[0x277D5FED8] && v76 == *MEMORY[0x277D5FEE0])
      {
        v106 = v149;
        v140(v149, v142, v48);
        v107 = sub_2664DFE18();
        v108 = sub_2664E06C8();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_26629C000, v107, v108, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v109, 2u);
          MEMORY[0x266784AD0](v109, -1, -1);
        }

        v143(v106, v48);
        goto LABEL_31;
      }

      v110 = v48;
      v111 = *(v72 + 8);
      v111(v75, v74);
      v40 = v150;
      v140(v150, v142, v110);
      v112 = sub_2664DFE18();
      v113 = sub_2664E06D8();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_26629C000, v112, v113, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v114, 2u);
        MEMORY[0x266784AD0](v114, -1, -1);
      }

      v143(v40, v110);
      v111(v167, v74);
    }

LABEL_35:
    v115 = v173;
    v154 = *(v173 + 2);
    if (!v154)
    {
      break;
    }

    v116 = 0;
    v153 = (a3 + 16);
    ++v152;
    v167 = (v171 + 16);
    LODWORD(v166) = *MEMORY[0x277D5FE90];
    v45 = *MEMORY[0x277D5FDF0];
    v165 = v171 + 104;
    a4 = v171 + 8;
    v150 = (a3 + 32);
    v149 = (a3 + 8);
    v23 = MEMORY[0x277D84F90];
    v151 = v173;
    a2 = v169;
    while (v116 < *(v115 + 2))
    {
      v163 = v23;
      v160 = ((*(a3 + 80) + 32) & ~*(a3 + 80));
      v159 = *(a3 + 72);
      (*(a3 + 16))(v164, &v160[v115 + v159 * v116], v27);
      v162 = v116 + 1;
      v117 = v156;
      sub_2664DFE78();
      v118 = sub_2664DFF08();
      (*v152)(v117, v157);
      v27 = 0;
      v119 = *(v118 + 16);
      do
      {
        if (v119 == v27)
        {
          v27 = v161;
          (*v149)(v164, v161);

          v23 = v163;
          goto LABEL_38;
        }

        if (v27 >= *(v118 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        v120 = v170;
        v121 = v171;
        v23 = v168;
        (*(v171 + 16))(v168, v118 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v27++, v170);
        v122 = sub_2664DFEB8();
        (*(*(v122 - 8) + 104))(a2, v166, v122);
        (*(v121 + 104))(a2, v45, v120);
        a3 = sub_2664DFE58();
        v40 = *(v121 + 8);
        (v40)(a2, v120);
        (v40)(v23, v120);
      }

      while ((a3 & 1) == 0);

      v123 = *v150;
      (*v150)(v155, v164, v161);
      v23 = v163;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v172 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, v23[2] + 1, 1);
        v23 = v172;
      }

      v126 = v23[2];
      v125 = v23[3];
      if (v126 >= v125 >> 1)
      {
        sub_2662FD058((v125 > 1), v126 + 1, 1);
        v23 = v172;
      }

      v23[2] = v126 + 1;
      v127 = &v160[v23 + v126 * v159];
      v27 = v161;
      v123(v127, v155, v161);
LABEL_38:
      v116 = v162;
      a3 = v158;
      v115 = v151;
      if (v162 == v154)
      {
        goto LABEL_50;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v23 = MEMORY[0x277D84F90];
LABEL_50:

  if (v23[2])
  {
    v128 = v145[8];
    v129 = v145[9];
    __swift_project_boxed_opaque_existential_1(v145 + 5, v128);
    (*(v129 + 8))(v23, sub_266309650, v146, v128, v129);
  }

  else
  {

    v130 = v139;
    v131 = v148;
    v140(v139, v142, v148);
    v132 = sub_2664DFE18();
    v133 = sub_2664E06C8();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_26629C000, v132, v133, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v134, 2u);
      MEMORY[0x266784AD0](v134, -1, -1);
    }

    v143(v130, v131);
    sub_2662F9658(MEMORY[0x277D84F90], v136, v137, v138);
  }
}

uint64_t sub_2663092DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_280F914E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "OnscreenEntityProvider#firstOnScreenMediaItem...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_266303070(a1, a2, a3);
}

unint64_t sub_2663094CC()
{
  result = qword_2800728D0;
  if (!qword_2800728D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800728D0);
  }

  return result;
}

unint64_t sub_266309518()
{
  result = qword_2800728E0;
  if (!qword_2800728E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800728D8, &qword_2664E4F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800728E0);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t *AtomicValue.__allocating_init(name:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26630D9D0(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2663096A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2662A7224(a1, &v6 - v3, &qword_2800737D0, qword_2664E4FD0);
  return sub_2663097B4(v4);
}

uint64_t sub_26630974C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280F91D08;
  swift_beginAccess();
  return sub_2662A7224(v1 + v3, a1, &qword_2800737D0, qword_2664E4FD0);
}

uint64_t sub_2663097B4(uint64_t a1)
{
  v3 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_266309814@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_2664E0948();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2663098C0(uint64_t a1)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_2664E0948();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t *AtomicValue.init(name:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26630D7FC(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2663099A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v48 - v6;
  v53 = *(v4 + 80);
  v7 = sub_2664E0948();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v48 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v59 = *(v10 + 16);
  v59(v17, v18, v9);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();

  v21 = os_log_type_enabled(v19, v20);
  v55 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v49 = v10;
    v24 = v23;
    v62 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v62);
    _os_log_impl(&dword_26629C000, v19, v20, "AtomicValue#next [%{public}s]", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    v10 = v49;
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v60 = *(v10 + 8);
  v60(v17, v9);
  sub_2662A98AC();
  v26 = v52;
  v59(v52, v18, v9);

  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v62 = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v62);
    _os_log_impl(&dword_26629C000, v27, v28, "AtomicValue#next [%{public}s] lock acquired", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v60(v26, v9);
  v31 = v54;
  v32 = v55;
  v3[24] = 0;
  (*(*(v53 - 8) + 56))(v31, 1, 1);
  sub_2663098C0(v31);
  v59(v32, v18, v9);

  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62 = v36;
    *v35 = 136446466;
    *(v35 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v62);
    *(v35 + 12) = 2082;
    sub_266309814(v31);
    v37 = v51;
    (*(v50 + 8))(v31, v51);
    v61 = v37;
    swift_getMetatypeMetadata();
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, &v62);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_26629C000, v33, v34, "AtomicValue#next [%{public}s] computing value for: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  v60(v32, v9);
  v41 = v56;
  sub_2664DE428();
  v42 = sub_2664DE438();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  sub_2663097B4(v41);
  v43 = *&v3[*(*v3 + 120)];
  v44 = swift_allocObject();
  v45 = v57;
  v46 = v58;
  v44[2] = v3;
  v44[3] = v45;
  v44[4] = v46;

  v43(sub_26630DA3C, v44);
}

uint64_t sub_26630A104(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v92 = a1;
  v93 = a2;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v83 - v6;
  v88 = *(v4 + 80);
  v7 = sub_2664E0948();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v90 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v9;
  MEMORY[0x28223BE20](v8);
  v91 = &v83 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v84 = &v83 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v83 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v97 = *(v12 + 16);
  v98 = v12 + 16;
  v97(v24, v25, v11);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  v28 = os_log_type_enabled(v26, v27);
  v96 = v25;
  if (v28)
  {
    v29 = v11;
    v30 = v12;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v100 = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v100);
    _os_log_impl(&dword_26629C000, v26, v27, "AtomicValue#getAndCompute [%{public}s]", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v33 = v32;
    v25 = v96;
    MEMORY[0x266784AD0](v33, -1, -1);
    v34 = v31;
    v12 = v30;
    v11 = v29;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = *(v12 + 8);
  v35(v24, v11);
  sub_2662A98AC();
  v97(v22, v25, v11);

  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v87 = v17;
    v40 = v35;
    v41 = v11;
    v42 = v12;
    v43 = v39;
    v100 = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v100);
    _os_log_impl(&dword_26629C000, v36, v37, "AtomicValue#getAndCompute [%{public}s] lock acquired", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v44 = v43;
    v12 = v42;
    v11 = v41;
    v35 = v40;
    v17 = v87;
    MEMORY[0x266784AD0](v44, -1, -1);
    v45 = v38;
    v25 = v96;
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v35(v22, v11);
  if (v3[24] == 1)
  {
    sub_2662AA89C();
    v46 = v84;
    v97(v84, v25, v11);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06E8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v100 = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v100);
      _os_log_impl(&dword_26629C000, v47, v48, "AtomicValue#getAndCompute [%{public}s] lock released", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v35(v46, v11);
    v97(v17, v96, v11);

    v62 = v17;
    v63 = sub_2664DFE18();
    v64 = sub_2664E06E8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v96 = v35;
      v66 = v65;
      v67 = swift_slowAlloc();
      v100 = v67;
      *v66 = 136446466;
      *(v66 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v100);
      *(v66 + 12) = 2082;
      v68 = v91;
      v87 = v62;
      sub_266309814(v91);
      v69 = v95;
      (*(v94 + 8))(v68, v95);
      v99 = v69;
      swift_getMetatypeMetadata();
      v70 = sub_2664E0318();
      v72 = sub_2662A320C(v70, v71, &v100);

      *(v66 + 14) = v72;
      _os_log_impl(&dword_26629C000, v63, v64, "AtomicValue#getAndCompute [%{public}s] using pre-computed value: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v67, -1, -1);
      MEMORY[0x266784AD0](v66, -1, -1);

      v96(v87, v11);
    }

    else
    {

      v35(v62, v11);
      v68 = v91;
    }

    sub_266309814(v68);
    v92(v68);
    v56 = v94;
    v81 = v95;
    v80 = v68;
  }

  else
  {
    v96 = v35;
    sub_266309814(v90);
    v51 = v89;
    v97(v89, v25, v11);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06E8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = v12;
      v100 = v97;
      *v54 = 136446466;
      *(v54 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], &v100);
      *(v54 + 12) = 2082;
      v55 = v91;
      sub_266309814(v91);
      v56 = v94;
      v57 = v95;
      (*(v94 + 8))(v55, v95);
      v99 = v57;
      swift_getMetatypeMetadata();
      v58 = sub_2664E0318();
      v60 = sub_2662A320C(v58, v59, &v100);

      *(v54 + 14) = v60;
      _os_log_impl(&dword_26629C000, v52, v53, "AtomicValue#getAndCompute [%{public}s] computing value for: %{public}s", v54, 0x16u);
      v61 = v97;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);

      v96(v89, v11);
    }

    else
    {

      v96(v51, v11);
      v56 = v94;
      v57 = v95;
      v55 = v91;
    }

    v73 = v85;
    sub_2664DE428();
    v74 = sub_2664DE438();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    sub_2663097B4(v73);
    v75 = *&v3[*(*v3 + 120)];
    v76 = v90;
    (*(v56 + 16))(v55, v90, v57);
    v77 = (*(v56 + 80) + 48) & ~*(v56 + 80);
    v78 = swift_allocObject();
    *(v78 + 2) = v88;
    *(v78 + 3) = v3;
    v79 = v93;
    *(v78 + 4) = v92;
    *(v78 + 5) = v79;
    (*(v56 + 32))(&v78[v77], v55, v57);

    v75(sub_26630DA64, v78);

    v80 = v76;
    v81 = v57;
  }

  return (*(v56 + 8))(v80, v81);
}

uint64_t sub_26630AC90(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664E0948();
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  a2[24] = 1;
  (*(v16 + 16))(v29 - v14, a1, v13);
  sub_2663098C0(v15);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v17, v9);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29[1] = a4;
    v21 = a3;
    v22 = v20;
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], &v32);
    *(v22 + 12) = 2082;
    v31 = v13;
    swift_getMetatypeMetadata();
    v24 = sub_2664E0318();
    v26 = sub_2662A320C(v24, v25, &v32);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#getAndCompute [%{public}s] lock released, received value: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v23, -1, -1);
    v27 = v22;
    a3 = v21;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return a3(v30);
}

uint64_t sub_26630AFF8(uint64_t a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v108 = a4;
  v109 = a3;
  v113 = a2;
  v110 = a1;
  v6 = sub_2664E0948();
  v102 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v107 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v96 - v11;
  v114 = sub_2664DE438();
  v12 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v98 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v106 = &v96 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v99 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v96 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v112 = &v96 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v96 - v26;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v115 = *(v15 + 16);
  v116 = v15 + 16;
  v115(v27, v28, v14);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();

  v31 = os_log_type_enabled(v29, v30);
  v111 = v12;
  v103 = v6;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v118 = v97;
    *v32 = 136446466;
    *(v32 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v118);
    *(v32 + 12) = 2082;
    v119 = v110;
    v120 = v113 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v33 = sub_2664E0318();
    v34 = v15;
    v36 = v14;
    v37 = sub_2662A320C(v33, v35, &v118);

    *(v32 + 14) = v37;
    v14 = v36;
    _os_log_impl(&dword_26629C000, v29, v30, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v32, 0x16u);
    v38 = v97;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);

    v39 = *(v34 + 8);
  }

  else
  {

    v39 = *(v15 + 8);
  }

  v39(v27, v14);
  v40 = v112;
  v97 = v5[2];
  sub_2662A98AC();
  v112 = v28;
  v115(v40, v28, v14);

  v41 = sub_2664DFE18();
  v42 = sub_2664E06E8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = v40;
    v45 = v14;
    v46 = swift_slowAlloc();
    v119 = v46;
    *v43 = 136446210;
    *(v43 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v119);
    _os_log_impl(&dword_26629C000, v41, v42, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    v47 = v46;
    v14 = v45;
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);

    v48 = v44;
    v49 = v45;
  }

  else
  {

    v48 = v40;
    v49 = v14;
  }

  v39(v48, v49);
  v50 = v111;
  v51 = v105;
  v52 = v104;
  if ((v113 & 1) == 0)
  {
    v53 = *&v110;
    v54 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(v5 + v54, v52, &qword_2800737D0, qword_2664E4FD0);
    v55 = *(v50 + 48);
    if (v55(v52, 1, v114) == 1)
    {
      v56 = v39;
      v57 = v98;
      sub_2664DE378();
      v58 = v55(v52, 1, v114);
      v59 = v57;
      v39 = v56;
      if (v58 != 1)
      {
        sub_2662A9238(v52, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v59 = v98;
      (*(v50 + 32))(v98, v52, v114);
    }

    sub_2664DE3C8();
    v61 = v60;
    (*(v50 + 8))(v59, v114);
    v62 = fabs(v61);
    if (v62 > v53)
    {
      v115(v51, v112, v14);

      v63 = sub_2664DFE18();
      v64 = sub_2664E06E8();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = v51;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v118 = v67;
        *v66 = 136446722;
        *(v66 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v118);
        *(v66 + 12) = 2050;
        *(v66 + 14) = v62;
        *(v66 + 22) = 2050;
        *(v66 + 24) = *&v110;
        _os_log_impl(&dword_26629C000, v63, v64, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v66, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        v50 = v111;
        MEMORY[0x266784AD0](v67, -1, -1);
        MEMORY[0x266784AD0](v66, -1, -1);

        v68 = v65;
      }

      else
      {

        v68 = v51;
      }

      v39(v68, v14);
      *(v5 + 24) = 0;
    }
  }

  if (*(v5 + 24) == 1)
  {
    sub_266309814(v107);
    sub_2662AA89C();
    v69 = v99;
    v70 = v112;
    v115(v99, v112, v14);

    v71 = sub_2664DFE18();
    v72 = sub_2664E06E8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v118 = v74;
      *v73 = 136446210;
      *(v73 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v118);
      _os_log_impl(&dword_26629C000, v71, v72, "AtomicValue#computeIfAbsent [%{public}s] lock released", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x266784AD0](v74, -1, -1);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v39(v69, v14);
    v115(v106, v70, v14);

    v81 = sub_2664DFE18();
    v82 = sub_2664E06E8();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v118 = v84;
      *v83 = 136446466;
      *(v83 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v118);
      *(v83 + 12) = 2082;
      v85 = v103;
      v117 = v103;
      swift_getMetatypeMetadata();
      v86 = sub_2664E0318();
      v88 = sub_2662A320C(v86, v87, &v118);

      *(v83 + 14) = v88;
      _os_log_impl(&dword_26629C000, v81, v82, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v84, -1, -1);
      MEMORY[0x266784AD0](v83, -1, -1);

      v39(v106, v14);
    }

    else
    {

      v39(v106, v14);
      v85 = v103;
    }

    v95 = v107;
    v109(v107);
    return (*(v102 + 8))(v95, v85);
  }

  else
  {
    v75 = v39;
    v76 = v100;
    v115(v100, v112, v14);

    v77 = sub_2664DFE18();
    v78 = sub_2664E06E8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v118 = v80;
      *v79 = 136446210;
      *(v79 + 4) = sub_2662A320C(*(v5 + *(*v5 + 128)), *(v5 + *(*v5 + 128) + 8), &v118);
      _os_log_impl(&dword_26629C000, v77, v78, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    v75(v76, v14);
    v89 = v101;
    sub_2664DE428();
    (*(v50 + 56))(v89, 0, 1, v114);
    sub_2663097B4(v89);
    v90 = *(v5 + *(*v5 + 120));
    v91 = swift_allocObject();
    v93 = v108;
    v92 = v109;
    v91[2] = v5;
    v91[3] = v92;
    v91[4] = v93;

    v90(sub_26630DAE0, v91);
  }
}

uint64_t sub_26630BE20(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  a2[24] = 1;
  v12 = *(*a2 + 112);
  swift_beginAccess();
  *&a2[v12] = a1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26[1] = a4;
    v19 = v18;
    v29 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], &v29);
    *(v17 + 12) = 2082;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072978, &qword_2664E5088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072980, &unk_2664E5090);
    v20 = sub_2664E0318();
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = sub_2662A320C(v20, v22, &v29);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_26629C000, v14, v15, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v19, -1, -1);
    v24 = v17;
    a3 = v27;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v9 + 8))(v11, v8);
  return a3(&v30);
}

uint64_t sub_26630C160(__int128 *a1, _BYTE *a2, uint64_t (*a3)(void))
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[9];
  v11 = a1[7];
  v65 = a1[8];
  v66 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v67 = a1[10];
  v68 = v13;
  v14 = a1[5];
  v15 = a1[3];
  v61 = a1[4];
  v62 = v14;
  v16 = a1[5];
  v17 = a1[7];
  v63 = a1[6];
  v64 = v17;
  v18 = a1[1];
  v57 = *a1;
  v58 = v18;
  v19 = a1[3];
  v21 = *a1;
  v20 = a1[1];
  v59 = a1[2];
  v22 = v59;
  v60 = v19;
  v77 = v65;
  v78 = v12;
  v23 = a1[11];
  v79 = v67;
  v80 = v23;
  v73 = v61;
  v74 = v16;
  v75 = v63;
  v76 = v11;
  v69 = v21;
  v70 = v20;
  a2[24] = 1;
  v71 = v22;
  v72 = v15;
  v24 = &a2[*(*a2 + 112)];
  swift_beginAccess();
  v25 = v24[9];
  v81[8] = v24[8];
  v81[9] = v25;
  v26 = v24[11];
  v81[10] = v24[10];
  v81[11] = v26;
  v27 = v24[5];
  v81[4] = v24[4];
  v81[5] = v27;
  v28 = v24[7];
  v81[6] = v24[6];
  v81[7] = v28;
  v29 = v24[1];
  v81[0] = *v24;
  v81[1] = v29;
  v30 = v24[3];
  v81[2] = v24[2];
  v81[3] = v30;
  v31 = v78;
  v24[8] = v77;
  v24[9] = v31;
  v32 = v80;
  v24[10] = v79;
  v24[11] = v32;
  v33 = v74;
  v24[4] = v73;
  v24[5] = v33;
  v34 = v76;
  v24[6] = v75;
  v24[7] = v34;
  v35 = v70;
  *v24 = v69;
  v24[1] = v35;
  v36 = v72;
  v24[2] = v71;
  v24[3] = v36;
  sub_2662A7224(&v69, v82, &qword_280073320, &unk_2664EF750);
  sub_2662A9238(v81, &qword_280073320, &unk_2664EF750);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v37, v6);
  v82[8] = v65;
  v82[9] = v66;
  v82[10] = v67;
  v82[11] = v68;
  v82[4] = v61;
  v82[5] = v62;
  v82[6] = v63;
  v82[7] = v64;
  v82[0] = v57;
  v82[1] = v58;
  v82[2] = v59;
  v82[3] = v60;

  sub_2662A7224(v82, v56, &qword_280073320, &unk_2664EF750);
  v38 = sub_2664DFE18();
  v39 = v9;
  v40 = sub_2664E06E8();

  if (os_log_type_enabled(v38, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54 = v7;
    v43 = v42;
    v56[0] = v42;
    *v41 = 136446466;
    *(v41 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], v56);
    *(v41 + 12) = 2082;
    v53 = v39;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
    v44 = sub_2664E0318();
    v52 = v6;
    v45 = a3;
    v46 = v44;
    v48 = v47;
    sub_2662A9238(v82, &qword_280073320, &unk_2664EF750);
    v49 = v46;
    a3 = v45;
    v50 = sub_2662A320C(v49, v48, v56);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_26629C000, v38, v40, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    (*(v54 + 8))(v53, v52);
  }

  else
  {

    sub_2662A9238(v82, &qword_280073320, &unk_2664EF750);
    (*(v7 + 8))(v39, v6);
  }

  return a3(&v57);
}

uint64_t sub_26630C614(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  a2[24] = 1;
  v12 = *(*a2 + 112);
  swift_beginAccess();
  *&a2[v12] = a1;
  swift_bridgeObjectRetain_n();

  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26[1] = a4;
    v19 = v18;
    v29 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], &v29);
    *(v17 + 12) = 2082;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072968, &qword_2664E5070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072970, &unk_2664E5078);
    v20 = sub_2664E0318();
    v22 = v21;

    v23 = sub_2662A320C(v20, v22, &v29);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_26629C000, v14, v15, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v19, -1, -1);
    v24 = v17;
    a3 = v27;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  return a3(&v30);
}

uint64_t sub_26630C954(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void *))
{
  v23[0] = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  a4[24] = 1;
  v13 = &a4[*(*a4 + 112)];
  swift_beginAccess();
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;

  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2662A320C(*&a4[*(*a4 + 128)], *&a4[*(*a4 + 128) + 8], &v24);
    *(v17 + 12) = 2082;
    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
    v19 = sub_2664E0318();
    v21 = sub_2662A320C(v19, v20, &v24);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_26629C000, v15, v16, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return (v23[0])(v25);
}

uint64_t sub_26630CC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(uint64_t *), uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  v12 = sub_2664DFE38();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  a5[24] = 1;
  v14 = &a5[*(*a5 + 112)];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  sub_266314294(a1, a2, a3, a4);
  sub_2663142F4(v15, v16, v17, v18);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = v40;
  v20 = __swift_project_value_buffer(v40, qword_280F914F0);
  swift_beginAccess();
  v22 = v38;
  v21 = v39;
  (*(v39 + 16))(v38, v20, v19);
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v26 = v48;

  sub_266314294(v23, v24, v25, v26);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  sub_2663142F4(v23, v24, v25, v26);
  v29 = v19;
  v30 = v21;
  if (os_log_type_enabled(v27, v28))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136446466;
    *(v31 + 4) = sub_2662A320C(*&a5[*(*a5 + 128)], *&a5[*(*a5 + 128) + 8], &v44);
    *(v31 + 12) = 2082;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, &v44);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_26629C000, v27, v28, "AtomicValue#computeIfAbsent [%{public}s] lock released, received result: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  (*(v30 + 8))(v22, v29);
  return v42(&v45);
}

uint64_t sub_26630CFF8(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v28 = a5;
  v29 = a4;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E0948();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  a2[24] = 1;
  (*(v15 + 16))(&v27 - v13, a1, v12);
  sub_2663098C0(v14);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v16, v8);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], &v31);
    *(v20 + 12) = 2082;
    v30 = v12;
    swift_getMetatypeMetadata();
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v31);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_26629C000, v17, v18, v28, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v21, -1, -1);
    v25 = v20;
    a3 = v27;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  return a3(a1);
}

uint64_t sub_26630D350()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_2664E0948();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[2];
  sub_2662A98AC();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18[1] = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_2662A320C(*&v1[*(*v1 + 128)], *&v1[*(*v1 + 128) + 8], &v19);
    _os_log_impl(&dword_26629C000, v12, v13, "AtomicValue#reset [%{public}s] resetting value", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
  sub_2663098C0(v5);
  v1[24] = 0;
  return sub_2662AA89C();
}

char *AtomicValue.deinit()
{

  sub_2662A9238(v0 + qword_280F91D08, &qword_2800737D0, qword_2664E4FD0);
  v1 = *(*v0 + 112);
  v2 = sub_2664E0948();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AtomicValue.__deallocating_deinit()
{
  AtomicValue.deinit();

  return swift_deallocClassInstance();
}

void sub_26630D7A8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t *sub_26630D7FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 24) = 0;
  v11 = qword_280F91D08;
  v12 = sub_2664DE438();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  (*(*(*(v10 + 80) - 8) + 56))(v5 + *(*v5 + 112), 1, 1);
  v13 = (v5 + *(*v5 + 120));
  *v13 = a3;
  v13[1] = a4;
  v14 = (v5 + *(*v5 + 128));
  *v14 = a1;
  v14[1] = a2;
  v15 = qword_280F91468;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91470;
  v18[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v18[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[0] = v16;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v5[2] = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v18);
  return v5;
}

uint64_t *sub_26630D9D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AtomicValue(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_26630D7FC(a1, a2, a3, a4);
}

uint64_t sub_26630DA64(uint64_t a1)
{
  v3 = *(sub_2664E0948() - 8);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_26630AC90(a1, v4, v5, v6, v7);
}

void sub_26630DB08(uint64_t a1)
{
  sub_26630DD10(319);
  if (v1 <= 0x3F)
  {
    sub_2664E0948();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_26630DD10(uint64_t a1)
{
  if (!qword_280F914D0)
  {
    sub_2664DE438();
    v1 = sub_2664E0948();
    if (!v2)
    {
      atomic_store(v1, &qword_280F914D0);
    }
  }
}

uint64_t sub_26630DD68(uint64_t a1, int a2, _BYTE *a3, void (*a4)(__int128 *), uint64_t a5, int a6, void *a7, uint64_t a8, char *a9, uint64_t a10)
{
  v121 = a7;
  v115 = a2;
  v113 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v101 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = &v97 - v18;
  v118 = sub_2664DE438();
  v114 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v98 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v99 = &v97 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v100 = &v97 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v111 = &v97 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v116 = &v97 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v97 - v32;
  v34 = swift_allocObject();
  v105 = a4;
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  v107 = a6;
  *(v34 + 32) = a6;
  v35 = v121;
  *(v34 + 40) = v121;
  *(v34 + 48) = a8;
  v104 = a9;
  *(v34 + 56) = a9;
  *(v34 + 64) = a10;
  v112 = v34;
  v36 = qword_280F914E8;
  v108 = a5;

  v102 = v35;
  v109 = a8;

  v106 = a10;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  v38 = *(v21 + 16);
  v120 = v21 + 16;
  v121 = v37;
  v119 = v38;
  v38(v33, v37, v20);

  v39 = sub_2664DFE18();
  v40 = sub_2664E06E8();

  v41 = os_log_type_enabled(v39, v40);
  v117 = v21;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v122[0] = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v122);
    *(v42 + 12) = 2082;
    v125 = v113;
    v126 = v115 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v44 = sub_2664E0318();
    v46 = sub_2662A320C(v44, v45, v122);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_26629C000, v39, v40, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    v47 = v117;
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  else
  {
    v47 = v21;
  }

  v48 = *(v47 + 8);
  v48(v33, v20);
  v49 = v116;
  sub_2662A98AC();
  v119(v49, v121, v20);

  v50 = sub_2664DFE18();
  v51 = sub_2664E06E8();

  v52 = os_log_type_enabled(v50, v51);
  v116 = v48;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v125 = v54;
    *v53 = 136446210;
    *(v53 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
    _os_log_impl(&dword_26629C000, v50, v51, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  v48(v49, v20);
  v55 = v114;
  v56 = v110;
  v57 = v111;
  if ((v115 & 1) == 0)
  {
    v58 = *&v113;
    v59 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v59], v56, &qword_2800737D0, qword_2664E4FD0);
    v60 = *(v55 + 48);
    if (v60(v56, 1, v118) == 1)
    {
      v61 = v98;
      sub_2664DE378();
      v62 = v60(v56, 1, v118);
      v63 = v61;
      if (v62 != 1)
      {
        sub_2662A9238(v56, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v63 = v98;
      (*(v55 + 32))(v98, v56, v118);
    }

    sub_2664DE3C8();
    v65 = v64;
    (*(v55 + 8))(v63, v118);
    v66 = fabs(v65);
    if (v66 > v58)
    {
      v119(v57, v121, v20);

      v67 = sub_2664DFE18();
      v68 = sub_2664E06E8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v125 = v70;
        *v69 = 136446722;
        *(v69 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
        *(v69 + 12) = 2050;
        *(v69 + 14) = v66;
        *(v69 + 22) = 2050;
        *(v69 + 24) = *&v113;
        _os_log_impl(&dword_26629C000, v67, v68, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v69, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x266784AD0](v70, -1, -1);
        v71 = v69;
        v55 = v114;
        MEMORY[0x266784AD0](v71, -1, -1);
      }

      (v116)(v57, v20);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v72 = *(*a3 + 112);
    swift_beginAccess();
    v124 = *&a3[v72];
    swift_unknownObjectRetain_n();
    sub_2662AA89C();
    v73 = v100;
    v119(v100, v121, v20);

    v74 = sub_2664DFE18();
    v75 = sub_2664E06E8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v123 = v77;
      *v76 = 136446210;
      *(v76 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v123);
      _os_log_impl(&dword_26629C000, v74, v75, "AtomicValue#computeIfAbsent [%{public}s] lock released", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x266784AD0](v77, -1, -1);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v78 = v116;
    (v116)(v73, v20);
    v79 = v103;
    v119(v103, v121, v20);

    v80 = sub_2664DFE18();
    v81 = sub_2664E06E8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v123 = v83;
      *v82 = 136446466;
      *(v82 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v123);
      *(v82 + 12) = 2082;
      v122[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072978, &qword_2664E5088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072980, &unk_2664E5090);
      v84 = sub_2664E0318();
      v86 = sub_2662A320C(v84, v85, &v123);

      *(v82 + 14) = v86;
      _os_log_impl(&dword_26629C000, v80, v81, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v83, -1, -1);
      MEMORY[0x266784AD0](v82, -1, -1);

      (v116)(v79, v20);
    }

    else
    {

      v78(v79, v20);
    }

    sub_2662C7454(&v124, v105, v108, v107 & 1, v102, v109, v104, v106);

    return swift_unknownObjectRelease();
  }

  else
  {
    v87 = v99;
    v119(v99, v121, v20);

    v88 = sub_2664DFE18();
    v89 = sub_2664E06E8();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v125 = v91;
      *v90 = 136446210;
      *(v90 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
      _os_log_impl(&dword_26629C000, v88, v89, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x266784AD0](v91, -1, -1);
      MEMORY[0x266784AD0](v90, -1, -1);
    }

    (v116)(v87, v20);
    v92 = v101;
    sub_2664DE428();
    (*(v55 + 56))(v92, 0, 1, v118);
    v93 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v92, &a3[v93]);
    swift_endAccess();
    v94 = *&a3[*(*a3 + 120)];
    v95 = swift_allocObject();
    v95[2] = a3;
    v95[3] = sub_266314388;
    v95[4] = v112;

    v94(sub_266314400, v95);
  }
}

uint64_t sub_26630EBB8(uint64_t a1, int a2, _BYTE *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v109 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v101 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v97 - v14;
  v15 = sub_2664DE438();
  v110 = *(v15 - 8);
  v111 = v15;
  MEMORY[0x28223BE20](v15);
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v102 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v97 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v100 = &v97 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v97 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  v33 = swift_allocObject();
  v103 = a4;
  v33[2] = a4;
  v33[3] = a5;
  v106 = v33;
  v33[4] = a6;
  v34 = qword_280F914E8;
  v104 = a5;

  v105 = a6;

  if (v34 != -1)
  {
    swift_once();
  }

  v97 = v27;
  v35 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v36 = *(v18 + 16);
  v114 = v18 + 16;
  v115 = v35;
  v113 = v36;
  v36(v32, v35, v17);

  v37 = sub_2664DFE18();
  v38 = sub_2664E06E8();

  v39 = os_log_type_enabled(v37, v38);
  v112 = v18;
  v107 = a2;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v116[0] = v41;
    *v40 = 136446466;
    *(v40 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v116);
    *(v40 + 12) = 2082;
    v119 = v109;
    v120 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v42 = sub_2664E0318();
    v44 = sub_2662A320C(v42, v43, v116);
    v18 = v112;

    *(v40 + 14) = v44;
    _os_log_impl(&dword_26629C000, v37, v38, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v45 = *(v18 + 8);
  v45(v32, v17);
  sub_2662A98AC();
  v113(v30, v115, v17);

  v46 = sub_2664DFE18();
  v47 = sub_2664E06E8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v119 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v119);
    _os_log_impl(&dword_26629C000, v46, v47, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  v45(v30, v17);
  v51 = v110;
  v50 = v111;
  v52 = &unk_280F91000;
  v53 = v108;
  if ((v107 & 1) == 0)
  {
    v54 = *&v109;
    v55 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v55], v53, &qword_2800737D0, qword_2664E4FD0);
    v56 = *(v51 + 48);
    if (v56(v53, 1, v50) == 1)
    {
      v57 = v45;
      v58 = v98;
      sub_2664DE378();
      v59 = v56(v53, 1, v50);
      v60 = v58;
      v45 = v57;
      v52 = &unk_280F91000;
      if (v59 != 1)
      {
        sub_2662A9238(v53, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v60 = v98;
      (*(v51 + 32))(v98, v53, v50);
    }

    sub_2664DE3C8();
    v62 = v61;
    (*(v51 + 8))(v60, v50);
    v63 = fabs(v62);
    if (v63 > v54)
    {
      v64 = v97;
      v113(v97, v115, v17);

      v65 = sub_2664DFE18();
      v66 = sub_2664E06E8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v119 = v68;
        *v67 = 136446722;
        *(v67 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v119);
        *(v67 + 12) = 2050;
        *(v67 + 14) = v63;
        *(v67 + 22) = 2050;
        *(v67 + 24) = *&v109;
        _os_log_impl(&dword_26629C000, v65, v66, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v67, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        v69 = v68;
        v51 = v110;
        MEMORY[0x266784AD0](v69, -1, -1);
        v70 = v67;
        v50 = v111;
        MEMORY[0x266784AD0](v70, -1, -1);
      }

      v45(v64, v17);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v71 = *(*a3 + 112);
    swift_beginAccess();
    v118 = *&a3[v71];
    swift_unknownObjectRetain_n();
    sub_2662AA89C();
    v72 = v100;
    v113(v100, v115, v17);

    v73 = sub_2664DFE18();
    v74 = sub_2664E06E8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v117 = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v117);
      _os_log_impl(&dword_26629C000, v73, v74, "AtomicValue#computeIfAbsent [%{public}s] lock released", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v45(v72, v17);
    v77 = v102;
    v113(v102, v115, v17);

    v78 = sub_2664DFE18();
    v79 = sub_2664E06E8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v117 = v81;
      *v80 = 136446466;
      *(v80 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v117);
      *(v80 + 12) = 2082;
      v116[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072978, &qword_2664E5088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072980, &unk_2664E5090);
      v82 = sub_2664E0318();
      v84 = sub_2662A320C(v82, v83, &v117);

      *(v80 + 14) = v84;
      _os_log_impl(&dword_26629C000, v78, v79, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v81, -1, -1);
      MEMORY[0x266784AD0](v80, -1, -1);
    }

    v45(v77, v17);
    sub_2662C9830(&v118, v103, v104, v105);

    return swift_unknownObjectRelease();
  }

  else
  {
    v86 = v99;
    v113(v99, v115, v17);

    v87 = sub_2664DFE18();
    v88 = sub_2664E06E8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v119 = v90;
      *v89 = 136446210;
      *(v89 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v119);
      _os_log_impl(&dword_26629C000, v87, v88, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      v91 = v90;
      v51 = v110;
      MEMORY[0x266784AD0](v91, -1, -1);
      v92 = v89;
      v50 = v111;
      MEMORY[0x266784AD0](v92, -1, -1);
    }

    v45(v86, v17);
    v93 = v101;
    sub_2664DE428();
    (*(v51 + 56))(v93, 0, 1, v50);
    v94 = v52[417];
    swift_beginAccess();
    sub_2663132FC(v93, &a3[v94]);
    swift_endAccess();
    v95 = *&a3[*(*a3 + 120)];
    v96 = swift_allocObject();
    v96[2] = a3;
    v96[3] = sub_26631436C;
    v96[4] = v106;

    v95(sub_266314378, v96);
  }
}

uint64_t sub_26630F97C(uint64_t a1, int a2, _BYTE *a3, void (*a4)(void), uint64_t a5)
{
  LODWORD(v126) = a2;
  v122 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v116 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v112 - v11;
  v127 = sub_2664DE438();
  v124 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v113 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v115 = &v112 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v112 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v112 = &v112 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v125 = &v112 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v112 - v27;
  v29 = swift_allocObject();
  v118 = a4;
  v119 = a5;
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  v121 = v29;
  v30 = qword_280F914E8;

  if (v30 != -1)
  {
    swift_once();
  }

  v114 = v12;
  v117 = v18;
  v31 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v32 = *(v15 + 16);
  v130 = v15 + 16;
  v131 = v31;
  v129 = v32;
  v32(v28, v31, v14);

  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();

  v35 = os_log_type_enabled(v33, v34);
  v128 = v15;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v135 = v37;
    *v36 = 136446466;
    *(v36 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v135);
    *(v36 + 12) = 2082;
    *&v147[0] = v122;
    BYTE8(v147[0]) = v126 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, &v135);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_26629C000, v33, v34, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    v41 = v37;
    v15 = v128;
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  v42 = *(v15 + 8);
  v42(v28, v14);
  v43 = v125;
  sub_2662A98AC();
  v129(v43, v131, v14);

  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v147[0] = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v147);
    _os_log_impl(&dword_26629C000, v44, v45, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);

    v48 = v125;
  }

  else
  {

    v48 = v43;
  }

  v49 = v14;
  v42(v48, v14);
  v51 = v123;
  v50 = v124;
  v52 = v127;
  v53 = &unk_280F91000;
  v54 = v49;
  v120 = v42;
  if ((v126 & 1) == 0)
  {
    v126 = v49;
    v55 = *&v122;
    v56 = qword_280F91D08;
    swift_beginAccess();
    v57 = v114;
    sub_2662A7224(&a3[v56], v114, &qword_2800737D0, qword_2664E4FD0);
    v58 = v50;
    v59 = *(v50 + 48);
    if (v59(v57, 1, v52) == 1)
    {
      v60 = v51;
      v61 = v113;
      sub_2664DE378();
      v62 = v59(v57, 1, v52);
      v63 = v61;
      v51 = v60;
      v50 = v58;
      if (v62 != 1)
      {
        sub_2662A9238(v57, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v63 = v113;
      (*(v58 + 32))(v113, v57, v52);
      v50 = v58;
    }

    sub_2664DE3C8();
    v65 = v64;
    (*(v50 + 8))(v63, v52);
    v66 = fabs(v65);
    v42 = v120;
    v54 = v126;
    v53 = &unk_280F91000;
    if (v66 > v55)
    {
      v67 = v112;
      v129(v112, v131, v126);

      v68 = sub_2664DFE18();
      v69 = sub_2664E06E8();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v147[0] = v71;
        *v70 = 136446722;
        *(v70 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v147);
        *(v70 + 12) = 2050;
        *(v70 + 14) = v66;
        *(v70 + 22) = 2050;
        *(v70 + 24) = *&v122;
        _os_log_impl(&dword_26629C000, v68, v69, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v70, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v72 = v71;
        v50 = v124;
        MEMORY[0x266784AD0](v72, -1, -1);
        v73 = v70;
        v51 = v123;
        MEMORY[0x266784AD0](v73, -1, -1);
      }

      v42(v67, v54);
      a3[24] = 0;
      v52 = v127;
      v53 = &unk_280F91000;
    }
  }

  if (a3[24] == 1)
  {
    v74 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v75 = v74[9];
    v76 = v74[7];
    v154 = v74[8];
    v155 = v75;
    v77 = v74[9];
    v78 = v74[11];
    v156 = v74[10];
    v157 = v78;
    v79 = v74[5];
    v80 = v74[3];
    v150 = v74[4];
    v151 = v79;
    v81 = v74[5];
    v82 = v74[7];
    v152 = v74[6];
    v153 = v82;
    v83 = v74[1];
    v147[0] = *v74;
    v147[1] = v83;
    v84 = v74[3];
    v86 = *v74;
    v85 = v74[1];
    v148 = v74[2];
    v149 = v84;
    v143 = v154;
    v144 = v77;
    v87 = v74[11];
    v145 = v156;
    v146 = v87;
    v139 = v150;
    v140 = v81;
    v141 = v152;
    v142 = v76;
    v135 = v86;
    v136 = v85;
    v137 = v148;
    v138 = v80;
    sub_2662A7224(v147, v134, &qword_280073320, &unk_2664EF750);
    sub_2662AA89C();
    v129(v51, v131, v54);

    v88 = sub_2664DFE18();
    v89 = sub_2664E06E8();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v134[0] = v91;
      *v90 = 136446210;
      *(v90 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v134);
      _os_log_impl(&dword_26629C000, v88, v89, "AtomicValue#computeIfAbsent [%{public}s] lock released", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x266784AD0](v91, -1, -1);
      MEMORY[0x266784AD0](v90, -1, -1);
    }

    v42(v51, v54);
    v92 = v117;
    v129(v117, v131, v54);
    v134[8] = v143;
    v134[9] = v144;
    v134[10] = v145;
    v134[11] = v146;
    v134[4] = v139;
    v134[5] = v140;
    v134[6] = v141;
    v134[7] = v142;
    v134[0] = v135;
    v134[1] = v136;
    v134[2] = v137;
    v134[3] = v138;

    sub_2662A7224(v134, v133, &qword_280073320, &unk_2664EF750);
    v93 = sub_2664DFE18();
    v94 = sub_2664E06E8();

    sub_2662A9238(v134, &qword_280073320, &unk_2664EF750);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v133[0] = v96;
      *v95 = 136446466;
      *(v95 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v133);
      *(v95 + 12) = 2082;
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
      v97 = sub_2664E0318();
      v99 = sub_2662A320C(v97, v98, v133);

      *(v95 + 14) = v99;
      _os_log_impl(&dword_26629C000, v93, v94, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v96, -1, -1);
      MEMORY[0x266784AD0](v95, -1, -1);
    }

    v120(v92, v54);
    sub_2663BDEB0(&v135, v118);
    v133[8] = v143;
    v133[9] = v144;
    v133[10] = v145;
    v133[11] = v146;
    v133[4] = v139;
    v133[5] = v140;
    v133[6] = v141;
    v133[7] = v142;
    v133[0] = v135;
    v133[1] = v136;
    v133[2] = v137;
    v133[3] = v138;
    sub_2662A9238(v133, &qword_280073320, &unk_2664EF750);
  }

  else
  {
    v100 = v115;
    v129(v115, v131, v54);

    v101 = sub_2664DFE18();
    v102 = sub_2664E06E8();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v147[0] = v104;
      *v103 = 136446210;
      *(v103 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v147);
      _os_log_impl(&dword_26629C000, v101, v102, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      v105 = v104;
      v52 = v127;
      MEMORY[0x266784AD0](v105, -1, -1);
      v106 = v103;
      v50 = v124;
      MEMORY[0x266784AD0](v106, -1, -1);
    }

    v42(v100, v54);
    v107 = v116;
    sub_2664DE428();
    (*(v50 + 56))(v107, 0, 1, v52);
    v108 = v53[417];
    swift_beginAccess();
    sub_2663132FC(v107, &a3[v108]);
    swift_endAccess();
    v109 = *&a3[*(*a3 + 120)];
    v110 = swift_allocObject();
    v110[2] = a3;
    v110[3] = sub_26631439C;
    v110[4] = v121;

    v109(sub_2663143A4, v110);
  }
}

uint64_t sub_266310808(uint64_t a1, int a2, _BYTE *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v118 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v111 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v105 - v12;
  v13 = sub_2664DE438();
  v14 = *(v13 - 8);
  v119 = v13;
  v120 = v14;
  MEMORY[0x28223BE20](v13);
  v108 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v112 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v109 = &v105 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v110 = &v105 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v105 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v105 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v105 - v30;
  v32 = swift_allocObject();
  v113 = a4;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  v117 = v32;
  v33 = qword_280F914E8;
  v114 = a5;

  if (v33 != -1)
  {
    swift_once();
  }

  v106 = v26;
  v34 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v122 = *(v17 + 16);
  v123 = v17 + 16;
  v122(v31, v34, v16);

  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  v37 = os_log_type_enabled(v35, v36);
  v115 = a2;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v107 = v17;
    v39 = v38;
    v40 = swift_slowAlloc();
    v105 = v29;
    v41 = v40;
    v124[0] = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v124);
    *(v39 + 12) = 2082;
    v127 = v118;
    v128 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v42 = sub_2664E0318();
    v44 = v16;
    v45 = v34;
    v46 = sub_2662A320C(v42, v43, v124);

    *(v39 + 14) = v46;
    v34 = v45;
    v16 = v44;
    _os_log_impl(&dword_26629C000, v35, v36, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    v47 = v41;
    v29 = v105;
    MEMORY[0x266784AD0](v47, -1, -1);
    v48 = v39;
    v49 = v107;
    MEMORY[0x266784AD0](v48, -1, -1);

    v50 = *(v49 + 8);
    v51 = v31;
    v52 = v44;
  }

  else
  {

    v50 = *(v17 + 8);
    v51 = v31;
    v52 = v16;
  }

  v121 = v50;
  v50(v51, v52);
  v107 = *(a3 + 2);
  sub_2662A98AC();
  v122(v29, v34, v16);

  v53 = sub_2664DFE18();
  v54 = sub_2664E06E8();

  v55 = os_log_type_enabled(v53, v54);
  v56 = v116;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v127 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v127);
    _os_log_impl(&dword_26629C000, v53, v54, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v59 = v121;
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);

    v59(v29, v16);
  }

  else
  {

    v121(v29, v16);
  }

  v61 = v119;
  v60 = v120;
  v62 = &unk_280F91000;
  if ((v115 & 1) == 0)
  {
    v63 = *&v118;
    v64 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v64], v56, &qword_2800737D0, qword_2664E4FD0);
    v65 = *(v60 + 48);
    if (v65(v56, 1, v61) == 1)
    {
      v66 = v108;
      sub_2664DE378();
      v67 = v65(v56, 1, v61);
      v68 = v66;
      v62 = &unk_280F91000;
      if (v67 != 1)
      {
        sub_2662A9238(v56, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v68 = v108;
      (*(v60 + 32))(v108, v56, v61);
    }

    sub_2664DE3C8();
    v70 = v69;
    (*(v60 + 8))(v68, v61);
    v71 = fabs(v70);
    if (v71 > v63)
    {
      v72 = v106;
      v122(v106, v34, v16);

      v73 = sub_2664DFE18();
      v74 = sub_2664E06E8();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v127 = v76;
        *v75 = 136446722;
        *(v75 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v127);
        *(v75 + 12) = 2050;
        *(v75 + 14) = v71;
        *(v75 + 22) = 2050;
        *(v75 + 24) = *&v118;
        _os_log_impl(&dword_26629C000, v73, v74, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v75, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        v61 = v119;
        MEMORY[0x266784AD0](v76, -1, -1);
        v77 = v75;
        v60 = v120;
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      v121(v72, v16);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v78 = *(*a3 + 112);
    swift_beginAccess();
    v126 = *&a3[v78];
    swift_bridgeObjectRetain_n();
    sub_2662AA89C();
    v79 = v110;
    v122(v110, v34, v16);

    v80 = sub_2664DFE18();
    v81 = sub_2664E06E8();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v125 = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
      _os_log_impl(&dword_26629C000, v80, v81, "AtomicValue#computeIfAbsent [%{public}s] lock released", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      v84 = v121;
      MEMORY[0x266784AD0](v83, -1, -1);
      MEMORY[0x266784AD0](v82, -1, -1);

      v84(v79, v16);
    }

    else
    {

      v121(v79, v16);
    }

    v97 = v112;
    v122(v112, v34, v16);

    v98 = sub_2664DFE18();
    v99 = sub_2664E06E8();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v125 = v101;
      *v100 = 136446466;
      *(v100 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v125);
      *(v100 + 12) = 2082;
      v124[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072968, &qword_2664E5070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072970, &unk_2664E5078);
      v102 = sub_2664E0318();
      v104 = sub_2662A320C(v102, v103, &v125);

      *(v100 + 14) = v104;
      _os_log_impl(&dword_26629C000, v98, v99, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v101, -1, -1);
      MEMORY[0x266784AD0](v100, -1, -1);
    }

    v121(v97, v16);
    sub_2662DF980(&v126, v113);
  }

  else
  {
    v85 = v34;
    v86 = v109;
    v122(v109, v85, v16);

    v87 = sub_2664DFE18();
    v88 = sub_2664E06E8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v127 = v90;
      *v89 = 136446210;
      *(v89 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v127);
      _os_log_impl(&dword_26629C000, v87, v88, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x266784AD0](v90, -1, -1);
      v91 = v89;
      v60 = v120;
      MEMORY[0x266784AD0](v91, -1, -1);
    }

    v121(v86, v16);
    v92 = v111;
    sub_2664DE428();
    (*(v60 + 56))(v92, 0, 1, v61);
    v93 = v62[417];
    swift_beginAccess();
    sub_2663132FC(v92, &a3[v93]);
    swift_endAccess();
    v94 = *&a3[*(*a3 + 120)];
    v95 = swift_allocObject();
    v95[2] = a3;
    v95[3] = sub_266314354;
    v95[4] = v117;

    v94(sub_26631435C, v95);
  }
}

uint64_t sub_266311654(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v120 = a2;
  v118 = a1;
  v121 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v106 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v115 = &v102 - v19;
  v119 = sub_2664DE438();
  v116 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v102 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2664DFE38();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v108 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v104 = &v102 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v102 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v103 = &v102 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v114 = &v102 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v102 - v33;
  v35 = swift_allocObject();
  v109 = a4;
  v35[2] = a4;
  v35[3] = a5;
  v112 = a6;
  v35[4] = a6;
  v35[5] = a7;
  v36 = v121;
  v35[6] = a8;
  v35[7] = v36;
  v117 = v35;
  v35[8] = a10;
  v37 = qword_280F914E8;
  v111 = a5;

  v113 = a7;

  v107 = a8;
  v110 = a10;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v21, qword_280F914F0);
  swift_beginAccess();
  v39 = *(v22 + 16);
  v124 = v22 + 16;
  v125 = v38;
  v123 = v39;
  v39(v34, v38, v21);

  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();

  v42 = os_log_type_enabled(v40, v41);
  v122 = v22;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v128[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v128);
    *(v43 + 12) = 2082;
    *&v129 = v118;
    BYTE8(v129) = v120 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v45 = sub_2664E0318();
    v47 = sub_2662A320C(v45, v46, v128);
    v22 = v122;

    *(v43 + 14) = v47;
    _os_log_impl(&dword_26629C000, v40, v41, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v48 = *(v22 + 8);
  v48(v34, v21);
  v49 = v21;
  v50 = v115;
  v51 = v114;
  v115 = *(a3 + 2);
  sub_2662A98AC();
  v123(v51, v125, v21);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06E8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v129 = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v129);
    _os_log_impl(&dword_26629C000, v52, v53, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v56 = v51;
  v57 = v48;
  v48(v56, v21);
  v58 = v119;
  if ((v120 & 1) == 0)
  {
    v59 = *&v118;
    v60 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v60], v50, &qword_2800737D0, qword_2664E4FD0);
    v61 = v116;
    v62 = *(v116 + 48);
    if (v62(v50, 1, v58) == 1)
    {
      v63 = v102;
      sub_2664DE378();
      v64 = v62(v50, 1, v58);
      v65 = v63;
      if (v64 != 1)
      {
        sub_2662A9238(v50, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v65 = v102;
      (*(v61 + 32))(v102, v50, v58);
    }

    sub_2664DE3C8();
    v67 = v66;
    (*(v61 + 8))(v65, v58);
    v68 = fabs(v67);
    v69 = v103;
    if (v68 > v59)
    {
      v123(v103, v125, v49);

      v70 = sub_2664DFE18();
      v71 = sub_2664E06E8();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v49;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v129 = v74;
        *v73 = 136446722;
        *(v73 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v129);
        *(v73 + 12) = 2050;
        *(v73 + 14) = v68;
        *(v73 + 22) = 2050;
        *(v73 + 24) = *&v118;
        _os_log_impl(&dword_26629C000, v70, v71, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v73, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x266784AD0](v74, -1, -1);
        v75 = v73;
        v49 = v72;
        v58 = v119;
        MEMORY[0x266784AD0](v75, -1, -1);
      }

      v48(v69, v49);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v76 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v77 = *(v76 + 2);
    v129 = *v76;
    v130 = v77;

    sub_2662AA89C();
    v78 = v105;
    v123(v105, v125, v49);

    v79 = sub_2664DFE18();
    v80 = sub_2664E06E8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v127 = v82;
      *v81 = 136446210;
      *(v81 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v127);
      _os_log_impl(&dword_26629C000, v79, v80, "AtomicValue#computeIfAbsent [%{public}s] lock released", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x266784AD0](v82, -1, -1);
      MEMORY[0x266784AD0](v81, -1, -1);
    }

    v57(v78, v49);
    v83 = v108;
    v123(v108, v125, v49);

    v84 = sub_2664DFE18();
    v85 = sub_2664E06E8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v127 = v87;
      *v86 = 136446466;
      *(v86 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v127);
      *(v86 + 12) = 2082;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
      v88 = sub_2664E0318();
      v90 = sub_2662A320C(v88, v89, &v127);

      *(v86 + 14) = v90;
      _os_log_impl(&dword_26629C000, v84, v85, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v86, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v87, -1, -1);
      MEMORY[0x266784AD0](v86, -1, -1);
    }

    v57(v83, v49);
    sub_2663F3148(&v129, v109, v111, v112, v113, v107, v121, v110);
  }

  else
  {
    v92 = v104;
    v123(v104, v125, v49);

    v93 = sub_2664DFE18();
    v94 = sub_2664E06E8();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v129 = v96;
      *v95 = 136446210;
      *(v95 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v129);
      _os_log_impl(&dword_26629C000, v93, v94, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x266784AD0](v96, -1, -1);
      MEMORY[0x266784AD0](v95, -1, -1);
    }

    v57(v92, v49);
    v97 = v116;
    v98 = v106;
    sub_2664DE428();
    (*(v97 + 56))(v98, 0, 1, v58);
    v99 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v98, &a3[v99]);
    swift_endAccess();
    v100 = *&a3[*(*a3 + 120)];
    v101 = swift_allocObject();
    v101[2] = a3;
    v101[3] = sub_266313370;
    v101[4] = v117;

    v100(sub_266314404, v101);
  }
}

uint64_t sub_2663124DC(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  v110 = a2;
  v106 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v95 - v11;
  v107 = sub_2664DE438();
  v109 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v96 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v114 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v100 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v95 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v95 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v95 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v95 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v95 - v27;
  v29 = swift_allocObject();
  v101 = a4;
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  v105 = v29;
  v30 = qword_280F914E8;
  v102 = a5;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v32 = *(v114 + 16);
  v112 = v114 + 16;
  v113 = v31;
  v111 = v32;
  v32(v28, v31, v13);

  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();

  v35 = os_log_type_enabled(v33, v34);
  v98 = v20;
  v104 = v23;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v117[0] = v37;
    *v36 = 136446466;
    *(v36 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v117);
    *(v36 + 12) = 2082;
    *&v118 = v106;
    BYTE8(v118) = v110 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, v117);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_26629C000, v33, v34, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  v41 = *(v114 + 8);
  v41(v28, v13);
  sub_2662A98AC();
  v111(v26, v113, v13);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();

  v44 = os_log_type_enabled(v42, v43);
  v108 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v118 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v118);
    _os_log_impl(&dword_26629C000, v42, v43, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v41(v26, v13);
  v47 = v109;
  v48 = v104;
  v49 = v107;
  v50 = v103;
  if ((v110 & 1) == 0)
  {
    v51 = *&v106;
    v52 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v52], v50, &qword_2800737D0, qword_2664E4FD0);
    v53 = *(v47 + 48);
    if (v53(v50, 1, v49) == 1)
    {
      v54 = v96;
      sub_2664DE378();
      v55 = v53(v50, 1, v49);
      v56 = v54;
      if (v55 != 1)
      {
        sub_2662A9238(v50, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v56 = v96;
      (*(v47 + 32))(v96, v50, v49);
    }

    sub_2664DE3C8();
    v58 = v57;
    (*(v47 + 8))(v56, v49);
    v59 = fabs(v58);
    if (v59 > v51)
    {
      v111(v48, v113, v13);

      v60 = sub_2664DFE18();
      v61 = sub_2664E06E8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v118 = v63;
        *v62 = 136446722;
        *(v62 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v118);
        *(v62 + 12) = 2050;
        *(v62 + 14) = v59;
        *(v62 + 22) = 2050;
        *(v62 + 24) = *&v106;
        _os_log_impl(&dword_26629C000, v60, v61, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v62, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        v49 = v107;
        MEMORY[0x266784AD0](v63, -1, -1);
        v64 = v62;
        v47 = v109;
        MEMORY[0x266784AD0](v64, -1, -1);
      }

      v108(v48, v13);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v65 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v66 = *(v65 + 2);
    v118 = *v65;
    v119 = v66;

    sub_2662AA89C();
    v67 = v98;
    v111(v98, v113, v13);

    v68 = sub_2664DFE18();
    v69 = sub_2664E06E8();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v108;
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v116 = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v116);
      _os_log_impl(&dword_26629C000, v68, v69, "AtomicValue#computeIfAbsent [%{public}s] lock released", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x266784AD0](v73, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    v71(v67, v13);
    v74 = v100;
    v111(v100, v113, v13);

    v75 = sub_2664DFE18();
    v76 = sub_2664E06E8();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v116 = v78;
      *v77 = 136446466;
      *(v77 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v116);
      *(v77 + 12) = 2082;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
      v79 = sub_2664E0318();
      v81 = sub_2662A320C(v79, v80, &v116);

      *(v77 + 14) = v81;
      _os_log_impl(&dword_26629C000, v75, v76, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v71(v74, v13);
    sub_2663F4550(&v118, v101, v102);
  }

  else
  {
    v83 = v97;
    v111(v97, v113, v13);

    v84 = sub_2664DFE18();
    v85 = sub_2664E06E8();

    v86 = os_log_type_enabled(v84, v85);
    v87 = v108;
    if (v86)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&v118 = v89;
      *v88 = 136446210;
      *(v88 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v118);
      _os_log_impl(&dword_26629C000, v84, v85, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x266784AD0](v89, -1, -1);
      v90 = v88;
      v47 = v109;
      MEMORY[0x266784AD0](v90, -1, -1);
    }

    v87(v83, v13);
    v91 = v99;
    sub_2664DE428();
    (*(v47 + 56))(v91, 0, 1, v49);
    v92 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v91, &a3[v92]);
    swift_endAccess();
    v93 = *&a3[*(*a3 + 120)];
    v94 = swift_allocObject();
    v94[2] = a3;
    v94[3] = sub_2663132F4;
    v94[4] = v105;

    v93(sub_26631336C, v94);
  }
}

uint64_t sub_2663132FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26631339C(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned __int8 a9, void *a10)
{
  v128 = a2;
  v126 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v113 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v108 - v19;
  v127 = sub_2664DE438();
  v124 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v109 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2664DFE38();
  v129 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v115 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v108 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v108 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v110 = &v108 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v122 = &v108 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v108 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  *(v34 + 32) = a6;
  *(v34 + 40) = a7;
  *(v34 + 48) = a8;
  v116 = a9;
  *(v34 + 56) = a9;
  v125 = v34;
  *(v34 + 64) = a10;
  v35 = qword_280F914E8;
  v117 = a4;

  v119 = a5;

  v120 = a6;

  v121 = a7;

  v114 = a8;
  v118 = a10;
  v36 = a10;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v21, qword_280F914F0);
  swift_beginAccess();
  v38 = v129;
  v39 = *(v129 + 16);
  v132 = v129 + 16;
  v133 = v37;
  v131 = v39;
  v39(v33, v37, v21);

  v40 = sub_2664DFE18();
  v41 = v21;
  v42 = sub_2664E06E8();

  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v136[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], v136);
    *(v43 + 12) = 2082;
    v137 = v126;
    LOBYTE(v138) = v128 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v45 = sub_2664E0318();
    v47 = sub_2662A320C(v45, v46, v136);

    *(v43 + 14) = v47;
    _os_log_impl(&dword_26629C000, v40, v42, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v130 = *(v38 + 8);
  v130(v33, v41);
  v48 = v41;
  v49 = v122;
  v122 = *(a3 + 2);
  sub_2662A98AC();
  v131(v49, v133, v41);

  v50 = sub_2664DFE18();
  v51 = sub_2664E06E8();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v123;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v137 = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v137);
    _os_log_impl(&dword_26629C000, v50, v51, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v130(v49, v48);
  v56 = v127;
  if ((v128 & 1) == 0)
  {
    v57 = *&v126;
    v58 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&a3[v58], v53, &qword_2800737D0, qword_2664E4FD0);
    v59 = v124;
    v60 = *(v124 + 48);
    if (v60(v53, 1, v56) == 1)
    {
      v61 = v109;
      sub_2664DE378();
      v62 = v60(v53, 1, v56);
      v63 = v61;
      if (v62 != 1)
      {
        sub_2662A9238(v53, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v63 = v109;
      (*(v59 + 32))(v109, v53, v56);
    }

    sub_2664DE3C8();
    v65 = v64;
    (*(v59 + 8))(v63, v56);
    v66 = fabs(v65);
    v67 = v110;
    if (v66 > v57)
    {
      v131(v110, v133, v48);

      v68 = sub_2664DFE18();
      v69 = sub_2664E06E8();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = v48;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v137 = v72;
        *v71 = 136446722;
        *(v71 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v137);
        *(v71 + 12) = 2050;
        *(v71 + 14) = v66;
        *(v71 + 22) = 2050;
        *(v71 + 24) = *&v126;
        _os_log_impl(&dword_26629C000, v68, v69, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v71, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x266784AD0](v72, -1, -1);
        v73 = v71;
        v48 = v70;
        MEMORY[0x266784AD0](v73, -1, -1);
      }

      v130(v67, v48);
      a3[24] = 0;
    }
  }

  if (a3[24] == 1)
  {
    v74 = &a3[*(*a3 + 112)];
    swift_beginAccess();
    v75 = v74[1];
    v76 = v74[2];
    v77 = v74[3];
    v137 = *v74;
    v138 = v75;
    v139 = v76;
    v140 = v77;
    sub_266314294(v137, v75, v76, v77);
    sub_2662AA89C();
    v78 = v112;
    v131(v112, v133, v48);

    v79 = sub_2664DFE18();
    v80 = sub_2664E06E8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v135 = v82;
      *v81 = 136446210;
      *(v81 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v135);
      _os_log_impl(&dword_26629C000, v79, v80, "AtomicValue#computeIfAbsent [%{public}s] lock released", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x266784AD0](v82, -1, -1);
      MEMORY[0x266784AD0](v81, -1, -1);
    }

    v130(v78, v48);
    v83 = v115;
    v131(v115, v133, v48);
    v84 = v137;
    v85 = v138;
    v86 = v48;
    v87 = v139;
    v88 = v140;

    sub_266314294(v84, v85, v87, v88);
    v89 = sub_2664DFE18();
    v90 = sub_2664E06E8();

    sub_2663142F4(v84, v85, v87, v88);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v135 = v92;
      *v91 = 136446466;
      *(v91 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v135);
      *(v91 + 12) = 2082;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
      v93 = sub_2664E0318();
      v95 = sub_2662A320C(v93, v94, &v135);

      *(v91 + 14) = v95;
      _os_log_impl(&dword_26629C000, v89, v90, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v92, -1, -1);
      MEMORY[0x266784AD0](v91, -1, -1);
    }

    v130(v83, v86);
    sub_26644B010(&v137, v117, v119, v120, v121, v114, v116 & 1, v118);
    sub_2663142F4(v137, v138, v139, v140);
  }

  else
  {
    v96 = v111;
    v131(v111, v133, v48);

    v97 = sub_2664DFE18();
    v98 = sub_2664E06E8();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v137 = v100;
      *v99 = 136446210;
      *(v99 + 4) = sub_2662A320C(*&a3[*(*a3 + 128)], *&a3[*(*a3 + 128) + 8], &v137);
      _os_log_impl(&dword_26629C000, v97, v98, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      v101 = v100;
      v56 = v127;
      MEMORY[0x266784AD0](v101, -1, -1);
      MEMORY[0x266784AD0](v99, -1, -1);
    }

    v130(v96, v48);
    v102 = v124;
    v103 = v113;
    sub_2664DE428();
    (*(v102 + 56))(v103, 0, 1, v56);
    v104 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v103, &a3[v104]);
    swift_endAccess();
    v105 = *&a3[*(*a3 + 120)];
    v106 = swift_allocObject();
    v106[2] = a3;
    v106[3] = sub_266314264;
    v106[4] = v125;

    v105(sub_26631427C, v106);
  }
}

uint64_t sub_266314294(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2663142F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2663143A4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[9];
  v11[8] = a1[8];
  v11[9] = v4;
  v5 = a1[11];
  v11[10] = a1[10];
  v11[11] = v5;
  v6 = a1[5];
  v11[4] = a1[4];
  v11[5] = v6;
  v7 = a1[7];
  v11[6] = a1[6];
  v11[7] = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v9 = a1[3];
  v11[2] = a1[2];
  v11[3] = v9;
  return sub_26630C160(v11, v2, v3);
}

SiriAudioSupport::CoreAnalyticsResponses::FabricatedPlayCodes_optional __swiftcall CoreAnalyticsResponses.FabricatedPlayCodes.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 0xFFFFFFFFFFFFFFFALL)
  {
    v2 = ~rawValue;
  }

  else
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26631442C()
{
  result = qword_280072990;
  if (!qword_280072990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072990);
  }

  return result;
}

uint64_t sub_266314480()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](~v1);
  return sub_2664E0EB8();
}

uint64_t sub_2663144F8(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  MEMORY[0x266783E90](~v2);
  return sub_2664E0EB8();
}

void AccountStoreProvider.storeAccount(forHomeUserIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() ic_sharedAccountStore];
  v6 = sub_2664DE478();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_26631472C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2662A6624;
  v9[3] = &block_descriptor_7;
  v8 = _Block_copy(v9);

  [v5 ic:v6 storeAccountForHomeUserIdentifier:v8 completion:?];
  _Block_release(v8);
}

uint64_t sub_26631469C(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = sub_2663147C4();
    v10 = &protocol witness table for ACAccount;
    *&v8 = a1;
    sub_2662A8618(&v8, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  v6 = a1;
  a3(v11, a2);
  return sub_2663149FC(v11);
}

unint64_t AccountStoreProvider.activeiTunesAccount.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  result = 0;
  if (v3)
  {
    result = sub_2663147C4();
    v5 = &protocol witness table for ACAccount;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

unint64_t sub_2663147C4()
{
  result = qword_280072998;
  if (!qword_280072998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072998);
  }

  return result;
}

void sub_266314810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() ic_sharedAccountStore];
  v6 = sub_2664DE478();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_266314A68;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2662A6624;
  v9[3] = &block_descriptor_11;
  v8 = _Block_copy(v9);

  [v5 ic:v6 storeAccountForHomeUserIdentifier:v8 completion:?];
  _Block_release(v8);
}

unint64_t sub_266314934@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  result = 0;
  if (v3)
  {
    result = sub_2663147C4();
    v5 = &protocol witness table for ACAccount;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_2663149FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729A0, qword_2664E5288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShimExperience(uint64_t a1)
{
  result = qword_2800729A8;
  if (!qword_2800729A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266314B0C(uint64_t a1)
{
  sub_266314B80(319);
  if (v1 <= 0x3F)
  {
    sub_2664DE268();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266314B80(uint64_t a1)
{
  if (!qword_2800729B8)
  {
    sub_2664DFCD8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800729C0, &qword_2664E52B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2800729B8);
    }
  }
}

uint64_t sub_266314C78(__int128 *a1)
{
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v64 - v4;
  v6 = sub_2664DEC48();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v64 - v10;
  if (qword_280F90DC0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v72 = v5;
    v78 = v2;
    v11 = *(qword_280F91D00 + 16);
    v12 = MEMORY[0x277D837D0];
    v13 = MEMORY[0x277D837E0];
    v71 = v6;
    v14 = MEMORY[0x266783210](v11, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    v6 = *(a1 + 2);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v16 = MEMORY[0x266783210](v6, v12, v15, v13);
    v76 = v7;
    v77 = v6;
    v69 = v14;
    v79 = a1;
    if (v6)
    {
      break;
    }

LABEL_17:
    v5 = (qword_280F91D00 + 56);
    v31 = 1 << *(qword_280F91D00 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(qword_280F91D00 + 56);
    v7 = ((v31 + 63) >> 6);
    a1 = &v81;
    v73 = (v76 + 48);
    v66 = (v76 + 32);
    v65 = (v76 + 16);
    v64 = (v76 + 8);
    v76 = qword_280F91D00;

    v34 = 0;
    v6 = v78;
    v70 = v79 + 5;
    v36 = v71;
    v35 = v72;
    v74 = v7;
    v75 = v5;
LABEL_20:
    v37 = v34;
    v2 = v77;
    if (!v33)
    {
      goto LABEL_22;
    }

    do
    {
      v34 = v37;
LABEL_25:
      v38 = *(v76 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v33))));
      v39 = *(v38 + 8);
      v79 = *v38;
      v80 = v39;
      if (v2)
      {
        v78 = v6;
        v84 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v2, 0);
        v40 = v84;
        v41 = v70;
        v42 = v2;
        while (1)
        {
          v43 = *(v41 - 1);
          v44 = *v41;
          *&v81 = v43;
          *(&v81 + 1) = v44;
          v45 = *(v16 + 2);
          swift_bridgeObjectRetain_n();
          if (!v45)
          {
            goto LABEL_33;
          }

          v46 = sub_2662A3E98(v43, v44);
          if ((v47 & 1) == 0)
          {
            goto LABEL_33;
          }

          v48 = *(*(v16 + 7) + 8 * v46);
          if (!*(v48 + 16))
          {
            goto LABEL_33;
          }

          v49 = sub_2662A3E98(v79, v80);
          if ((v50 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v48 + 56) + 32 * v49, &v82);

LABEL_34:

          v84 = v40;
          v52 = *(v40 + 16);
          v51 = *(v40 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_2662FCF64((v51 > 1), v52 + 1, 1);
            v40 = v84;
          }

          *(v40 + 16) = v52 + 1;
          v53 = (v40 + 48 * v52);
          v54 = v81;
          v55 = v83;
          v53[3] = v82;
          v53[4] = v55;
          v53[2] = v54;
          v41 += 2;
          if (!--v42)
          {

            v6 = v78;
            v36 = v71;
            v35 = v72;
            if (*(v40 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v56 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v82 = 0u;
        v83 = 0u;
        goto LABEL_34;
      }

      v40 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v56 = sub_2664E0C98();
LABEL_41:
      *&v81 = v56;
      sub_266318424(v40, 1, &v81);
      if (v6)
      {
        goto LABEL_52;
      }

      v33 &= v33 - 1;
      sub_266317280(v81);

      sub_2664DEC38();

      v57 = (*v73)(v35, 1, v36);
      v2 = v77;
      v7 = v74;
      v5 = v75;
      if (v57 != 1)
      {
        v58 = v67;
        (*v66)(v67, v35, v36);
        v59 = v68;
        (*v65)(v68, v58, v36);
        v60 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v81 = v60;
        sub_26634F030(v59, v79, v80, isUniquelyReferenced_nonNull_native);

        v62 = v58;
        v7 = v74;
        v5 = v75;
        (*v64)(v62, v36);
        v69 = v81;
        goto LABEL_20;
      }

      sub_2662A9238(v35, &qword_2800729C8, &unk_2664E52E0);
      v37 = v34;
    }

    while (v33);
LABEL_22:
    while (1)
    {
      v34 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v34 >= v7)
      {

        return v69;
      }

      v33 = *&v5[8 * v34];
      ++v37;
      if (v33)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v7 = a1 + 5;
  while (1)
  {
    a1 = *(v7 - 1);
    v17 = *v7;

    v18 = sub_2664B8A70(a1, v17);
    v2 = swift_isUniquelyReferenced_nonNull_native();
    *&v81 = v16;
    v5 = v16;
    v20 = sub_2662A3E98(a1, v17);
    v21 = *(v16 + 2);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_48;
    }

    v24 = v19;
    if (*(v16 + 3) < v23)
    {
      break;
    }

    if (v2)
    {
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = &v81;
      sub_266453E1C();
      if (v24)
      {
LABEL_4:

        v16 = v81;
        *(*(v81 + 56) + 8 * v20) = v18;

        goto LABEL_5;
      }
    }

LABEL_13:
    v16 = v81;
    *(v81 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v27 = (*(v16 + 6) + 16 * v20);
    *v27 = a1;
    v27[1] = v17;
    *(*(v16 + 7) + 8 * v20) = v18;
    v28 = *(v16 + 2);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_49;
    }

    *(v16 + 2) = v30;
LABEL_5:
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v23, v2);
  v5 = v81;
  v25 = sub_2662A3E98(a1, v17);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2663153A0(__int128 *a1)
{
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v64 - v4;
  v6 = sub_2664DEC48();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v64 - v10;
  if (qword_280F90A10 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v72 = v5;
    v77 = qword_280F91CF8;
    v78 = v2;
    v11 = *(qword_280F91CF8 + 16);
    v12 = MEMORY[0x277D837D0];
    v13 = MEMORY[0x277D837E0];
    v71 = v6;
    v14 = MEMORY[0x266783210](v11, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    v6 = *(a1 + 2);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v16 = MEMORY[0x266783210](v6, v12, v15, v13);
    v76 = v6;
    v69 = v14;
    v70 = v7;
    v79 = a1;
    if (v6)
    {
      break;
    }

LABEL_17:
    v5 = (v77 + 56);
    v31 = 1 << *(v77 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v77 + 56);
    v7 = ((v31 + 63) >> 6);
    a1 = &v81;
    v73 = (v70 + 6);
    v66 = (v70 + 4);
    v65 = (v70 + 2);
    v64 = (v70 + 1);

    v34 = 0;
    v6 = v78;
    v70 = v79 + 5;
    v36 = v71;
    v35 = v72;
    v74 = v7;
    v75 = v5;
LABEL_20:
    v37 = v34;
    v2 = v76;
    if (!v33)
    {
      goto LABEL_22;
    }

    do
    {
      v34 = v37;
LABEL_25:
      v38 = *(v77 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v33))));
      v39 = *(v38 + 8);
      v79 = *v38;
      v80 = v39;
      if (v2)
      {
        v78 = v6;
        v84 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v2, 0);
        v40 = v84;
        v41 = v70;
        v42 = v2;
        while (1)
        {
          v43 = *(v41 - 1);
          v44 = *v41;
          *&v81 = v43;
          *(&v81 + 1) = v44;
          v45 = *(v16 + 2);
          swift_bridgeObjectRetain_n();
          if (!v45)
          {
            goto LABEL_33;
          }

          v46 = sub_2662A3E98(v43, v44);
          if ((v47 & 1) == 0)
          {
            goto LABEL_33;
          }

          v48 = *(*(v16 + 7) + 8 * v46);
          if (!*(v48 + 16))
          {
            goto LABEL_33;
          }

          v49 = sub_2662A3E98(v79, v80);
          if ((v50 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v48 + 56) + 32 * v49, &v82);

LABEL_34:

          v84 = v40;
          v52 = *(v40 + 16);
          v51 = *(v40 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_2662FCF64((v51 > 1), v52 + 1, 1);
            v40 = v84;
          }

          *(v40 + 16) = v52 + 1;
          v53 = (v40 + 48 * v52);
          v54 = v81;
          v55 = v83;
          v53[3] = v82;
          v53[4] = v55;
          v53[2] = v54;
          v41 += 2;
          if (!--v42)
          {

            v6 = v78;
            v36 = v71;
            v35 = v72;
            if (*(v40 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v56 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v82 = 0u;
        v83 = 0u;
        goto LABEL_34;
      }

      v40 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v56 = sub_2664E0C98();
LABEL_41:
      *&v81 = v56;
      sub_266318424(v40, 1, &v81);
      if (v6)
      {
        goto LABEL_52;
      }

      v33 &= v33 - 1;
      sub_266317280(v81);

      sub_2664DEC38();

      v57 = (*v73)(v35, 1, v36);
      v5 = v75;
      v2 = v76;
      v7 = v74;
      if (v57 != 1)
      {
        v58 = v67;
        (*v66)(v67, v35, v36);
        v59 = v68;
        (*v65)(v68, v58, v36);
        v60 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v81 = v60;
        sub_26634F030(v59, v79, v80, isUniquelyReferenced_nonNull_native);

        v62 = v58;
        v7 = v74;
        v5 = v75;
        (*v64)(v62, v36);
        v69 = v81;
        goto LABEL_20;
      }

      sub_2662A9238(v35, &qword_2800729C8, &unk_2664E52E0);
      v37 = v34;
    }

    while (v33);
LABEL_22:
    while (1)
    {
      v34 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v34 >= v7)
      {

        return v69;
      }

      v33 = *&v5[8 * v34];
      ++v37;
      if (v33)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v7 = a1 + 5;
  while (1)
  {
    v18 = *(v7 - 1);
    v17 = *v7;

    a1 = sub_2663F9890();
    v2 = swift_isUniquelyReferenced_nonNull_native();
    *&v81 = v16;
    v5 = v16;
    v20 = sub_2662A3E98(v18, v17);
    v21 = *(v16 + 2);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_48;
    }

    v24 = v19;
    if (*(v16 + 3) < v23)
    {
      break;
    }

    if (v2)
    {
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = &v81;
      sub_266453E1C();
      if (v24)
      {
LABEL_4:

        v16 = v81;
        *(*(v81 + 56) + 8 * v20) = a1;

        goto LABEL_5;
      }
    }

LABEL_13:
    v16 = v81;
    *(v81 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v27 = (*(v16 + 6) + 16 * v20);
    *v27 = v18;
    v27[1] = v17;
    *(*(v16 + 7) + 8 * v20) = a1;
    v28 = *(v16 + 2);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_49;
    }

    *(v16 + 2) = v30;
LABEL_5:
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v23, v2);
  v5 = v81;
  v25 = sub_2662A3E98(v18, v17);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266315AB8(__int128 *a1, uint64_t a2, double a3)
{
  v82 = a2;
  v4 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - v6;
  v8 = sub_2664DEC48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v66 - v12;
  if (qword_280F90918 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v74 = v7;
    v79 = qword_280F91CE8;
    v80 = v4;
    v13 = *(qword_280F91CE8 + 16);
    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837E0];
    v73 = v8;
    v16 = MEMORY[0x266783210](v13, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
    v8 = *(a1 + 2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v18 = MEMORY[0x266783210](v8, v14, v17, v15);
    v78 = v8;
    v71 = v16;
    v81 = a1;
    v72 = v9;
    if (v8)
    {
      break;
    }

LABEL_17:
    v7 = (v79 + 56);
    v33 = 1 << *(v79 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v79 + 56);
    v9 = ((v33 + 63) >> 6);
    a1 = &v83;
    v75 = (v72 + 6);
    v68 = (v72 + 4);
    v67 = (v72 + 2);
    v66 = (v72 + 1);

    v36 = 0;
    v8 = v80;
    v72 = v81 + 5;
    v38 = v73;
    v37 = v74;
    v76 = v9;
    v77 = v7;
LABEL_20:
    v39 = v36;
    v4 = v78;
    if (!v35)
    {
      goto LABEL_22;
    }

    do
    {
      v36 = v39;
LABEL_25:
      v40 = *(v79 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v35))));
      v41 = *(v40 + 8);
      v81 = *v40;
      v82 = v41;
      if (v4)
      {
        v80 = v8;
        v86 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v4, 0);
        v42 = v86;
        v43 = v72;
        v44 = v4;
        while (1)
        {
          v45 = *(v43 - 1);
          v46 = *v43;
          *&v83 = v45;
          *(&v83 + 1) = v46;
          v47 = *(v18 + 2);
          swift_bridgeObjectRetain_n();
          if (!v47)
          {
            goto LABEL_33;
          }

          v48 = sub_2662A3E98(v45, v46);
          if ((v49 & 1) == 0)
          {
            goto LABEL_33;
          }

          v50 = *(*(v18 + 7) + 8 * v48);
          if (!*(v50 + 16))
          {
            goto LABEL_33;
          }

          v51 = sub_2662A3E98(v81, v82);
          if ((v52 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v50 + 56) + 32 * v51, &v84);

LABEL_34:

          v86 = v42;
          v54 = *(v42 + 16);
          v53 = *(v42 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2662FCF64((v53 > 1), v54 + 1, 1);
            v42 = v86;
          }

          *(v42 + 16) = v54 + 1;
          v55 = (v42 + 48 * v54);
          v56 = v83;
          v57 = v85;
          v55[3] = v84;
          v55[4] = v57;
          v55[2] = v56;
          v43 += 2;
          if (!--v44)
          {

            v8 = v80;
            v38 = v73;
            v37 = v74;
            if (*(v42 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v58 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v84 = 0u;
        v85 = 0u;
        goto LABEL_34;
      }

      v42 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v58 = sub_2664E0C98();
LABEL_41:
      *&v83 = v58;
      sub_266318424(v42, 1, &v83);
      if (v8)
      {
        goto LABEL_52;
      }

      v35 &= v35 - 1;
      sub_266317280(v83);

      sub_2664DEC38();

      v59 = (*v75)(v37, 1, v38);
      v7 = v77;
      v4 = v78;
      v9 = v76;
      if (v59 != 1)
      {
        v60 = v69;
        (*v68)(v69, v37, v38);
        v61 = v70;
        (*v67)(v70, v60, v38);
        v62 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v83 = v62;
        sub_26634F030(v61, v81, v82, isUniquelyReferenced_nonNull_native);

        v64 = v60;
        v9 = v76;
        v7 = v77;
        (*v66)(v64, v38);
        v71 = v83;
        goto LABEL_20;
      }

      sub_2662A9238(v37, &qword_2800729C8, &unk_2664E52E0);
      v39 = v36;
    }

    while (v35);
LABEL_22:
    while (1)
    {
      v36 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v36 >= v9)
      {

        return v71;
      }

      v35 = *&v7[8 * v36];
      ++v39;
      if (v35)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v9 = a1 + 5;
  while (1)
  {
    a1 = *(v9 - 1);
    v19 = *v9;

    v20 = sub_266469114(a1, v19, v82);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    *&v83 = v18;
    v7 = v18;
    v22 = sub_2662A3E98(a1, v19);
    v23 = *(v18 + 2);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_48;
    }

    v26 = v21;
    if (*(v18 + 3) < v25)
    {
      break;
    }

    if (v4)
    {
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = &v83;
      sub_266453E1C();
      if (v26)
      {
LABEL_4:

        v18 = v83;
        *(*(v83 + 56) + 8 * v22) = v20;

        goto LABEL_5;
      }
    }

LABEL_13:
    v18 = v83;
    *(v83 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v29 = (*(v18 + 6) + 16 * v22);
    *v29 = a1;
    v29[1] = v19;
    *(*(v18 + 7) + 8 * v22) = v20;
    v30 = *(v18 + 2);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_49;
    }

    *(v18 + 2) = v32;
LABEL_5:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v25, v4);
  v7 = v83;
  v27 = sub_2662A3E98(a1, v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266316204(uint64_t a1, int a2)
{
  LODWORD(v85) = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - v5;
  v7 = sub_2664DEC48();
  v73 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v69 - v10;
  if (qword_280F8FD88 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v77 = v6;
    v83 = v3;
    v82 = qword_280F91C68;
    v11 = *(qword_280F91C68 + 16);
    v12 = MEMORY[0x277D837D0];
    v13 = MEMORY[0x277D837E0];
    v76 = v7;
    v74 = MEMORY[0x266783210](v11, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    v14 = *(a1 + 16);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v16 = MEMORY[0x266783210](v14, v12, v15, v13);
    v78 = v14;
    v75 = a1;
    if (v14)
    {
      break;
    }

LABEL_19:
    v3 = v82 + 56;
    v39 = 1 << *(v82 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v82 + 56);
    v6 = ((v39 + 63) >> 6);
    v79 = (v73 + 6);
    v70 = (v73 + 4);
    v69 = (v73 + 2);
    ++v73;

    v42 = 0;
    v75 += 40;
    v7 = v83;
    a1 = v77;
    v43 = v76;
    v81 = v3;
    v80 = v6;
LABEL_22:
    v44 = v42;
    v45 = v78;
    if (!v41)
    {
      goto LABEL_24;
    }

    do
    {
      v42 = v44;
LABEL_27:
      v46 = (*(v82 + 48) + ((v42 << 10) | (16 * __clz(__rbit64(v41)))));
      v47 = v46[1];
      v84 = *v46;
      v85 = v47;
      if (v45)
      {
        v83 = v7;
        v86 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v45, 0);
        v48 = v86;
        v49 = v75;
        while (1)
        {
          v50 = *(v49 - 1);
          v51 = *v49;
          *&v87 = v50;
          *(&v87 + 1) = v51;
          v52 = *(v16 + 2);
          swift_bridgeObjectRetain_n();
          if (!v52)
          {
            goto LABEL_35;
          }

          v53 = sub_2662A3E98(v50, v51);
          if ((v54 & 1) == 0)
          {
            goto LABEL_35;
          }

          v55 = *(*(v16 + 7) + 8 * v53);
          if (!*(v55 + 16))
          {
            goto LABEL_35;
          }

          v56 = sub_2662A3E98(v84, v85);
          if ((v57 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v55 + 56) + 32 * v56, &v88);

LABEL_36:

          v86 = v48;
          v59 = *(v48 + 16);
          v58 = *(v48 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_2662FCF64((v58 > 1), v59 + 1, 1);
            v48 = v86;
          }

          *(v48 + 16) = v59 + 1;
          v60 = (v48 + 48 * v59);
          v61 = v87;
          v62 = v89;
          v60[3] = v88;
          v60[4] = v62;
          v60[2] = v61;
          v49 += 2;
          if (!--v45)
          {

            v7 = v83;
            a1 = v77;
            v43 = v76;
            v45 = v78;
            if (*(v48 + 16))
            {
              goto LABEL_40;
            }

LABEL_42:
            v63 = MEMORY[0x277D84F98];
            goto LABEL_43;
          }
        }

LABEL_35:
        v88 = 0u;
        v89 = 0u;
        goto LABEL_36;
      }

      v48 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_42;
      }

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v63 = sub_2664E0C98();
LABEL_43:
      *&v87 = v63;
      sub_266318424(v48, 1, &v87);
      if (v7)
      {
        goto LABEL_56;
      }

      v41 &= v41 - 1;
      sub_266317280(v87);

      sub_2664DEC38();

      if ((*v79)(a1, 1, v43) != 1)
      {
        v64 = v71;
        (*v70)(v71, a1, v43);
        v65 = v72;
        (*v69)(v72, v64, v43);
        v66 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v66;
        sub_26634F030(v65, v84, v85, isUniquelyReferenced_nonNull_native);

        (*v73)(v64, v43);
        v74 = v87;
        v3 = v81;
        v6 = v80;
        goto LABEL_22;
      }

      sub_2662A9238(a1, &qword_2800729C8, &unk_2664E52E0);
      v44 = v42;
      v3 = v81;
      v6 = v80;
    }

    while (v41);
LABEL_24:
    while (1)
    {
      v42 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v42 >= v6)
      {

        return v74;
      }

      v41 = *(v3 + 8 * v42);
      ++v44;
      if (v41)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
  v17 = (a1 + 40);
  v3 = v14;
  while (1)
  {
    v7 = *(v17 - 1);
    v18 = *v17;
    v90[0] = 0x6979616C50776F6ELL;
    v90[1] = 0xEF6574617453676ELL;
    *&v87 = 0x6574617473;
    *(&v87 + 1) = 0xE500000000000000;
    LODWORD(v86) = v85;

    v19 = sub_2664E0D48();
    MEMORY[0x2667833B0](v19);

    v92 = MEMORY[0x277D837D0];
    v91 = v87;
    v20 = sub_2664E0C98();

    sub_2662A7224(v90, &v87, &unk_2800734F0, &unk_2664E3660);
    v21 = *(&v87 + 1);
    a1 = v87;
    v6 = v20;
    v22 = sub_2662A3E98(v87, *(&v87 + 1));
    if (v23)
    {
      goto LABEL_50;
    }

    *&v20[8 * (v22 >> 6) + 64] |= 1 << v22;
    v24 = (*(v20 + 6) + 16 * v22);
    *v24 = a1;
    v24[1] = v21;
    sub_266318804(&v88, (*(v20 + 7) + 32 * v22));
    v25 = *(v20 + 2);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_51;
    }

    *(v20 + 2) = v27;

    sub_2662A9238(v90, &unk_2800734F0, &unk_2664E3660);
    a1 = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = v16;
    v6 = v16;
    v29 = sub_2662A3E98(v7, v18);
    v30 = *(v16 + 2);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_52;
    }

    v33 = v28;
    if (*(v16 + 3) < v32)
    {
      break;
    }

    if (a1)
    {
      if (v28)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = &v87;
      sub_266453E1C();
      if (v33)
      {
LABEL_4:

        v16 = v87;
        *(*(v87 + 56) + 8 * v29) = v20;

        goto LABEL_5;
      }
    }

LABEL_15:
    v16 = v87;
    *(v87 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v36 = (*(v16 + 6) + 16 * v29);
    *v36 = v7;
    v36[1] = v18;
    *(*(v16 + 7) + 8 * v29) = v20;
    v37 = *(v16 + 2);
    v26 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v26)
    {
      goto LABEL_53;
    }

    *(v16 + 2) = v38;
LABEL_5:
    v17 += 2;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  sub_2664508A8(v32, a1);
  v6 = v87;
  v34 = sub_2662A3E98(v7, v18);
  if ((v33 & 1) == (v35 & 1))
  {
    v29 = v34;
    if (v33)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_56:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266316B18(int64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v73 - v7;
  v84 = 0;
  v8 = sub_2664DEC48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v73 - v12;
  v13 = *(a3 + 16);
  v89 = a2;
  v77 = (a3 + 16);
  v76 = v13;
  v14 = *((v13)(a2, a3) + 16);

  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837E0];
  v83 = v8;
  v17 = MEMORY[0x266783210](v14, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
  v18 = *(a1 + 16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
  v20 = MEMORY[0x266783210](v18, v15, v19, v16);
  v81 = v18;
  v82 = a1;
  v78 = v17;
  v79 = v9;
  if (v18)
  {
    v86 = *(a3 + 32);
    v87 = a3 + 32;
    v21 = (a1 + 40);
    v85 = a3;
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      v24 = (v86)(v22, v23, v89, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v90 = v20;
      v27 = sub_2662A3E98(v22, v23);
      v28 = v20[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_47;
      }

      v31 = v26;
      if (v20[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v26)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_266453E1C();
          if (v31)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_2664508A8(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_2662A3E98(v22, v23);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_49;
        }

        v27 = v32;
        if (v31)
        {
LABEL_3:

          v20 = v90;
          *(*(v90 + 56) + 8 * v27) = v24;

          goto LABEL_4;
        }
      }

      v20 = v90;
      *(v90 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v20[6] + 16 * v27);
      *v34 = v22;
      v34[1] = v23;
      *(v20[7] + 8 * v27) = v24;
      v35 = v20[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_48;
      }

      v20[2] = v37;
LABEL_4:
      v21 += 2;
      --v18;
      a3 = v85;
    }

    while (v18);
  }

  v38 = v76();
  v39 = 0;
  v40 = v38 + 56;
  v41 = 1 << *(v38 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v38 + 56);
  v44 = (v41 + 63) >> 6;
  v86 = (v79 + 48);
  v87 = v38;
  v77 = (v79 + 32);
  v76 = (v79 + 16);
  v73 = (v79 + 8);
  v79 = v82 + 40;
  v45 = v84;
  v46 = v80;
  v82 = v44;
  v85 = v38 + 56;
LABEL_19:
  v47 = v39;
  v48 = v81;
  if (!v43)
  {
    goto LABEL_21;
  }

  do
  {
    v39 = v47;
LABEL_24:
    v49 = (*(v87 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v43)))));
    v50 = v49[1];
    v88 = *v49;
    v89 = v50;
    if (v48)
    {
      v84 = v45;
      v93 = MEMORY[0x277D84F90];
      swift_bridgeObjectRetain_n();
      sub_2662FCF64(0, v48, 0);
      v51 = v93;
      v52 = v79;
      while (1)
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        *&v90 = v53;
        *(&v90 + 1) = v54;
        v55 = v20[2];
        swift_bridgeObjectRetain_n();
        if (!v55)
        {
          goto LABEL_32;
        }

        v56 = sub_2662A3E98(v53, v54);
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }

        v58 = *(v20[7] + 8 * v56);
        if (!*(v58 + 16))
        {
          goto LABEL_32;
        }

        v59 = sub_2662A3E98(v88, v89);
        if ((v60 & 1) == 0)
        {
          break;
        }

        sub_2662A01E8(*(v58 + 56) + 32 * v59, &v91);

LABEL_33:

        v93 = v51;
        v62 = *(v51 + 16);
        v61 = *(v51 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_2662FCF64((v61 > 1), v62 + 1, 1);
          v51 = v93;
        }

        *(v51 + 16) = v62 + 1;
        v63 = (v51 + 48 * v62);
        v64 = v90;
        v65 = v92;
        v63[3] = v91;
        v63[4] = v65;
        v63[2] = v64;
        v52 += 2;
        if (!--v48)
        {

          v45 = v84;
          v46 = v80;
          v48 = v81;
          if (*(v51 + 16))
          {
            goto LABEL_37;
          }

LABEL_39:
          v66 = MEMORY[0x277D84F98];
          goto LABEL_40;
        }
      }

LABEL_32:
      v91 = 0u;
      v92 = 0u;
      goto LABEL_33;
    }

    v51 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_39;
    }

LABEL_37:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
    v66 = sub_2664E0C98();
LABEL_40:
    *&v90 = v66;
    sub_266318424(v51, 1, &v90);
    if (v45)
    {
      goto LABEL_50;
    }

    v43 &= v43 - 1;
    sub_266317280(v90);

    sub_2664DEC38();

    if ((*v86)(v46, 1, v83) != 1)
    {
      v67 = v74;
      v68 = v83;
      (*v77)(v74, v46, v83);
      v69 = v75;
      (*v76)(v75, v67, v68);
      v70 = v78;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *&v90 = v70;
      sub_26634F030(v69, v88, v89, v71);

      (*v73)(v67, v68);
      v78 = v90;
      v40 = v85;
      v44 = v82;
      goto LABEL_19;
    }

    sub_2662A9238(v46, &qword_2800729C8, &unk_2664E52E0);
    v47 = v39;
    v40 = v85;
    v44 = v82;
  }

  while (v43);
LABEL_21:
  while (1)
  {
    v39 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v39 >= v44)
    {

      return v78;
    }

    v43 = *(v40 + 8 * v39);
    ++v47;
    if (v43)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_2664E0DD8();
  __break(1u);
LABEL_50:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_266317280(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
    v1 = sub_2664E0C98();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        sub_2662A7224(*(a1 + 56) + 32 * v13, &v29, &unk_280074250, &unk_2664E3680);
        v27 = v16;
        v28 = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
        swift_dynamicCast();
        sub_266318804(&v23, v25);
        sub_266318804(v25, v26);
        sub_266318804(v26, &v24);
        result = sub_2662A3E98(v16, v15);
        if (v17)
        {
          v8 = (v1[6] + 16 * result);
          *v8 = v16;
          v8[1] = v15;
          v9 = result;

          v10 = (v1[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          result = sub_266318804(&v24, v10);
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v1[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_266318804(&v24, (v1[7] + 32 * result));
          v19 = v1[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v1[2] = v21;
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_26631750C(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
  v2 = MEMORY[0x28223BE20](v44);
  v43 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v42 = &v39 - v4;
  v45 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E8, &qword_2664E5310);
    v5 = sub_2664E0C98();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v45 + 64;
  v7 = 1 << *(v45 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v45 + 64);
  v10 = (v7 + 63) >> 6;
  v39 = v5 + 8;

  v12 = 0;
  v41 = v5;
  v40 = v6;
  while (v9)
  {
    v16 = v12;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v45 + 56);
    v20 = (*(v45 + 48) + 16 * v18);
    v22 = *v20;
    v46 = v20[1];
    v21 = v46;
    v23 = sub_2664DF398();
    v24 = *(v23 - 8);
    v25 = v19 + *(v24 + 72) * v18;
    v26 = v44;
    v27 = v42;
    (*(v24 + 16))(&v42[*(v44 + 48)], v25, v23);
    *v27 = v22;
    v27[1] = v21;
    v28 = v27;
    v29 = v43;
    sub_266319B8C(v28, v43, &qword_2800729E0, &qword_2664E5308);
    v30 = *(v26 + 48);
    v31 = *v29;
    v32 = v29[1];
    v48 = v23;
    v49 = &protocol witness table for HistoryStats;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v24 + 32))(boxed_opaque_existential_1, v29 + v30, v23);
    sub_2662A8618(&v47, v51);
    sub_2662A8618(v51, v52);
    sub_2662A8618(v52, &v50);

    v5 = v41;
    result = sub_2662A3E98(v31, v32);
    if (v34)
    {
      v13 = (v5[6] + 16 * result);
      *v13 = v31;
      v13[1] = v32;
      v14 = result;

      v15 = (v5[7] + 40 * v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      result = sub_2662A8618(&v50, v15);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v35 = (v5[6] + 16 * result);
      *v35 = v31;
      v35[1] = v32;
      result = sub_2662A8618(&v50, v5[7] + 40 * result);
      v36 = v5[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_21;
      }

      v5[2] = v38;
    }

    v12 = v16;
    v6 = v40;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2663178D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729F0, &qword_2664E5318);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_2662A01E8(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_266318804((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_266318804(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_266318804(v30, v31);
    result = sub_2664E0A98();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_266318804(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_266317B9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
LABEL_39:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v34 = v33 | (v32 << 6);
          v35 = *(*(a1 + 48) + 8 * v34);
          sub_2662A01E8(*(a1 + 56) + 32 * v34, v43 + 8);
          *&v43[0] = v35;
          v48 = v43[0];
          v49 = v43[1];
          v50 = v44;
          type metadata accessor for CFString(0);
          v36 = v35;
          swift_dynamicCast();
          sub_266318804((&v48 + 8), (v45 + 8));
          v37 = *&v45[0];
          sub_266318804((v45 + 8), (v46 + 8));
          sub_266318804((v46 + 8), v42);
          sub_266318804(v42, v46);
          result = sub_26634DD28(v37);
          if (v38)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v37;
            v30 = result;

            v31 = (*(v2 + 56) + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1Tm(v31);
            result = sub_266318804(v46, v31);
            v27 = v32;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_43;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v37;
            result = sub_266318804(v46, (*(v2 + 56) + 32 * result));
            v39 = *(v2 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_44;
            }

            *(v2 + 16) = v41;
            v27 = v32;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v32 = v27;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_2662A01E8(*(a1 + 56) + 32 * v15, &v48 + 8);
      *&v48 = v16;
      v46[0] = v48;
      v46[1] = v49;
      v47 = v50;
      *&v42[0] = v16;
      type metadata accessor for CFString(0);
      v17 = v16;
      swift_dynamicCast();
      sub_266318804((v46 + 8), (v45 + 8));
      v18 = *&v45[0];
      sub_266318804((v45 + 8), (v43 + 8));
      sub_266318804((v43 + 8), v45);
      sub_2664E0E68();
      sub_2664E0E88();
      if (v18)
      {
        sub_266318878();
        sub_2664DF658();
      }

      result = sub_2664E0EB8();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v18;
      result = sub_266318804(v45, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_39;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_266318040(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729F0, &qword_2664E5318);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_2662A01E8(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    swift_dynamicCast();
    sub_266318804((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_266318804(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_266318804(v30, v31);
    result = sub_2664E0A98();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_266318804(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_266318424(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_2662A7224(a1 + 32, &v49, &qword_280072880, &unk_2664E4EE0);
  v8 = v49;
  v7 = v50;
  v47 = v49;
  v48 = v50;
  v45 = v51;
  v46 = v52;
  v9 = *a3;
  v10 = sub_2662A3E98(v49, v50);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2664505E0(v15, a2 & 1);
    v10 = sub_2662A3E98(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2664E0DD8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_266453C68();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v53 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2662A9238(&v45, &unk_280074250, &unk_2664E3680);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 32 * v10);
  v24 = v46;
  *v23 = v45;
  v23[1] = v24;
  v25 = v21[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v14)
  {
    v21[2] = v26;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v27 = a1 + 80;
    v28 = 1;
    while (v28 < *(a1 + 16))
    {
      sub_2662A7224(v27, &v49, &qword_280072880, &unk_2664E4EE0);
      v30 = v49;
      v29 = v50;
      v47 = v49;
      v48 = v50;
      v45 = v51;
      v46 = v52;
      v31 = *a3;
      v32 = sub_2662A3E98(v49, v50);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        goto LABEL_23;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_2664505E0(v36, 1);
        v32 = sub_2662A3E98(v30, v29);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v30;
      v40[1] = v29;
      v41 = (v39[7] + 32 * v32);
      v42 = v46;
      *v41 = v45;
      v41[1] = v42;
      v43 = v39[2];
      v14 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v28;
      v39[2] = v44;
      v27 += 48;
      if (v4 == v28)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

_OWORD *sub_266318804(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

unint64_t sub_266318878()
{
  result = qword_2800729F8;
  if (!qword_2800729F8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800729F8);
  }

  return result;
}

void *sub_2663188D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = a2;
  v121 = a1;
  v140 = sub_2664DEC48();
  v4 = *(v140 - 8);
  v5 = MEMORY[0x28223BE20](v140);
  v133 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v127 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A8, &unk_2664E5330);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v134 = (&v119 - v12);
  v13 = sub_2663854AC(MEMORY[0x277D84F90]);
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a3 + 64);
  v124 = (v15 + 63) >> 6;
  v126 = v4 + 16;
  v138 = (v4 + 32);
  v132 = (v4 + 88);
  v131 = *MEMORY[0x277D60170];
  v125 = *MEMORY[0x277D60188];
  v123 = *MEMORY[0x277D60178];
  v120 = (v4 + 8);
  v128 = v4;
  v130 = (v4 + 96);
  v129 = a3;

  v18 = 0;
  v135 = a3 + 64;
  v136 = v11;
  while (1)
  {
    v139 = v13;
    if (!v17)
    {
      break;
    }

    v20 = v140;
    v21 = v18;
LABEL_16:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v21 << 6);
    v27 = (*(v129 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = v128;
    v31 = v127;
    (*(v128 + 16))(v127, *(v129 + 56) + *(v128 + 72) * v26, v20);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
    v33 = *(v32 + 48);
    v34 = v136;
    *v136 = v29;
    *(v34 + 1) = v28;
    v35 = v31;
    v11 = v34;
    (*(v30 + 32))(&v34[v33], v35, v20);
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);

    v24 = v134;
    v14 = v135;
LABEL_17:
    sub_266319B8C(v11, v24, &qword_2800724A8, &unk_2664E5330);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
    if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1)
    {

      return v139;
    }

    v38 = *v24;
    v37 = v24[1];
    v39 = v24 + *(v36 + 48);
    v40 = v133;
    v41 = v140;
    (*v138)(v133, v39, v140);
    v42 = (*v132)(v40, v41);
    v43 = v139;
    if (v42 == v131)
    {
      (*v130)(v40, v140);
      v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v144 = sub_266319BF4();
      *&v143 = v44;
      sub_266318804(&v143, v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v141 = v43;
      v46 = v38;
      v48 = sub_2662A3E98(v38, v37);
      v49 = v43[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_77;
      }

      v52 = v47;
      if (v43[3] >= v51)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266453AC4();
        }

        v11 = v136;
      }

      else
      {
        sub_266450328(v51, isUniquelyReferenced_nonNull_native);
        v53 = sub_2662A3E98(v46, v37);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_85;
        }

        v48 = v53;
        v11 = v136;
      }

      v14 = v135;
      if (v52)
      {

        v13 = v141;
        v19 = (v141[7] + 32 * v48);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_266318804(v142, v19);
      }

      else
      {
        v13 = v141;
        v141[(v48 >> 6) + 8] |= 1 << v48;
        v76 = (v13[6] + 16 * v48);
        *v76 = v46;
        v76[1] = v37;
        sub_266318804(v142, (v13[7] + 32 * v48));
        v77 = v13[2];
        v71 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v71)
        {
          goto LABEL_79;
        }

        v13[2] = v78;
      }
    }

    else
    {
      v137 = v37;
      if (v42 == v125)
      {
        (*v130)(v40, v140);
        v55 = *v40;
        if (*(*v40 + 16))
        {
          v56 = v11;
          v57 = sub_2662A3E98(v121, v122);
          if (v58)
          {
            v59 = v38;
            v60 = *(*(v55 + 56) + 8 * v57);
            goto LABEL_49;
          }
        }

        else
        {
          v56 = v11;
        }

        v59 = v38;
        v60 = -1;
LABEL_49:

        v92 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v144 = sub_266319BF4();
        *&v143 = v92;
        sub_266318804(&v143, v142);
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v141 = v43;
        v67 = sub_2662A3E98(v59, v137);
        v95 = v43[2];
        v96 = (v94 & 1) == 0;
        v71 = __OFADD__(v95, v96);
        v97 = v95 + v96;
        if (v71)
        {
          goto LABEL_78;
        }

        v98 = v94;
        if (v43[3] >= v97)
        {
          if (v93)
          {
            v100 = v137;
            if (v94)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v113 = v67;
            sub_266453AC4();
            v67 = v113;
            v100 = v137;
            if (v98)
            {
              goto LABEL_61;
            }
          }

LABEL_56:
          v13 = v141;
          v141[(v67 >> 6) + 8] |= 1 << v67;
          v101 = (v13[6] + 16 * v67);
          *v101 = v59;
          v101[1] = v100;
          sub_266318804(v142, (v13[7] + 32 * v67));
          v102 = v13[2];
          v71 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v71)
          {
            goto LABEL_82;
          }

          goto LABEL_74;
        }

        sub_266450328(v97, v93);
        v67 = sub_2662A3E98(v59, v137);
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_85;
        }

        v100 = v137;
        if ((v98 & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_61:
        v104 = v67;

        v13 = v141;
        v105 = (v141[7] + 32 * v104);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        sub_266318804(v142, v105);
        v11 = v56;
      }

      else
      {
        v56 = v11;
        if (v42 == v123)
        {
          (*v130)(v40, v140);
          v61 = *v40;
          v62 = 0;
          v63 = v38;
          if (*(*v40 + 16))
          {
            v64 = sub_2662A3E98(v121, v122);
            if (v65)
            {
              v62 = *(*(v61 + 56) + 8 * v64);
            }
          }

          v144 = MEMORY[0x277D839F8];
          *&v143 = v62;
          sub_266318804(&v143, v142);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v141 = v43;
          v67 = sub_2662A3E98(v63, v137);
          v69 = v43[2];
          v70 = (v68 & 1) == 0;
          v71 = __OFADD__(v69, v70);
          v72 = v69 + v70;
          if (v71)
          {
            goto LABEL_80;
          }

          v73 = v68;
          if (v43[3] >= v72)
          {
            if (v66)
            {
              v75 = v137;
              if (v68)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v114 = v67;
              sub_266453AC4();
              v67 = v114;
              v75 = v137;
              if (v73)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            sub_266450328(v72, v66);
            v67 = sub_2662A3E98(v63, v137);
            if ((v73 & 1) != (v74 & 1))
            {
              goto LABEL_85;
            }

            v75 = v137;
            if (v73)
            {
              goto LABEL_61;
            }
          }

          v13 = v141;
          v141[(v67 >> 6) + 8] |= 1 << v67;
          v115 = (v13[6] + 16 * v67);
          *v115 = v63;
          v115[1] = v75;
          sub_266318804(v142, (v13[7] + 32 * v67));
          v116 = v13[2];
          v71 = __OFADD__(v116, 1);
          v103 = v116 + 1;
          if (v71)
          {
            goto LABEL_84;
          }

LABEL_74:
          v13[2] = v103;
          v11 = v56;
        }

        else
        {
          v144 = MEMORY[0x277D83B88];
          *&v143 = -1;
          sub_266318804(&v143, v142);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v81 = v38;
          v82 = v80;
          v141 = v43;
          v83 = v81;
          v84 = sub_2662A3E98(v81, v137);
          v86 = v43[2];
          v87 = (v85 & 1) == 0;
          v71 = __OFADD__(v86, v87);
          v88 = v86 + v87;
          if (v71)
          {
            goto LABEL_81;
          }

          v89 = v85;
          if (v43[3] >= v88)
          {
            if ((v82 & 1) == 0)
            {
              v117 = v84;
              sub_266453AC4();
              v84 = v117;
            }

            v90 = v83;
          }

          else
          {
            sub_266450328(v88, v82);
            v90 = v83;
            v84 = sub_2662A3E98(v83, v137);
            if ((v89 & 1) != (v91 & 1))
            {
              goto LABEL_85;
            }
          }

          v11 = v56;
          v106 = v137;
          if (v89)
          {
            v107 = v84;

            v13 = v141;
            v108 = (v141[7] + 32 * v107);
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            sub_266318804(v142, v108);
          }

          else
          {
            v109 = v90;
            v13 = v141;
            v141[(v84 >> 6) + 8] |= 1 << v84;
            v110 = (v13[6] + 16 * v84);
            *v110 = v109;
            v110[1] = v106;
            sub_266318804(v142, (v13[7] + 32 * v84));
            v111 = v13[2];
            v71 = __OFADD__(v111, 1);
            v112 = v111 + 1;
            if (v71)
            {
              goto LABEL_83;
            }

            v13[2] = v112;
          }

          (*v120)(v133, v140);
        }
      }
    }
  }

  if (v124 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v124;
  }

  v23 = v22 - 1;
  v24 = v134;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v124)
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
      (*(*(v79 - 8) + 56))(v11, 1, 1, v79);
      v17 = 0;
      v18 = v23;
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v21);
    ++v18;
    if (v17)
    {
      v20 = v140;
      v18 = v21;
      goto LABEL_16;
    }
  }

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
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_26631946C(__int128 *a1, uint64_t a2, void *a3, int64_t a4, __int128 *a5)
{
  v85 = a2;
  v8 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v69 - v10;
  v11 = sub_2664DEC48();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v69 - v15;
  if (*a3 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v83 = v8;
    v81 = a4;
    v16 = *(*a4 + 16);
    v17 = MEMORY[0x277D837D0];
    v18 = MEMORY[0x277D837E0];
    v76 = v11;
    v19 = MEMORY[0x266783210](v16, MEMORY[0x277D837D0], v11, MEMORY[0x277D837E0]);
    v11 = *(a1 + 2);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v21 = MEMORY[0x266783210](v11, v17, v20, v18);
    v82 = v11;
    v74 = v19;
    v75 = v12;
    v84 = a1;
    if (v11)
    {
      break;
    }

LABEL_17:
    v35 = *v81;
    v36 = *v81 + 56;
    v37 = 1 << *(*v81 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(*v81 + 56);
    a4 = (v37 + 63) >> 6;
    a1 = &v86;
    v78 = (v75 + 48);
    v71 = (v75 + 32);
    v70 = (v75 + 16);
    v69 = (v75 + 8);
    v81 = v35;

    v40 = 0;
    v11 = v83;
    v75 = v84 + 40;
    v12 = v76;
    v41 = v77;
    v79 = a4;
    v80 = v36;
LABEL_20:
    v42 = v40;
    v8 = v82;
    if (!v39)
    {
      goto LABEL_22;
    }

    do
    {
      v40 = v42;
LABEL_25:
      v43 = v81[6] + ((v40 << 10) | (16 * __clz(__rbit64(v39))));
      v44 = *(v43 + 8);
      v84 = *v43;
      v85 = v44;
      if (v8)
      {
        v83 = v11;
        v89 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v8, 0);
        v45 = v89;
        v46 = v75;
        v47 = v8;
        while (1)
        {
          v48 = *(v46 - 1);
          v49 = *v46;
          *&v86 = v48;
          *(&v86 + 1) = v49;
          v50 = v21[2];
          swift_bridgeObjectRetain_n();
          if (!v50)
          {
            goto LABEL_33;
          }

          v51 = sub_2662A3E98(v48, v49);
          if ((v52 & 1) == 0)
          {
            goto LABEL_33;
          }

          v53 = *(v21[7] + 8 * v51);
          if (!*(v53 + 16))
          {
            goto LABEL_33;
          }

          v54 = sub_2662A3E98(v84, v85);
          if ((v55 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v53 + 56) + 32 * v54, &v87);

LABEL_34:

          v89 = v45;
          v57 = *(v45 + 16);
          v56 = *(v45 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2662FCF64((v56 > 1), v57 + 1, 1);
            v45 = v89;
          }

          *(v45 + 16) = v57 + 1;
          v58 = (v45 + 48 * v57);
          v59 = v86;
          v60 = v88;
          v58[3] = v87;
          v58[4] = v60;
          v58[2] = v59;
          v46 += 2;
          if (!--v47)
          {

            v11 = v83;
            v12 = v76;
            v41 = v77;
            if (*(v45 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v61 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v87 = 0u;
        v88 = 0u;
        goto LABEL_34;
      }

      v45 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v61 = sub_2664E0C98();
LABEL_41:
      *&v86 = v61;
      sub_266318424(v45, 1, &v86);
      if (v11)
      {
        goto LABEL_52;
      }

      v39 &= v39 - 1;
      sub_266317280(v86);

      sub_2664DEC38();

      v62 = (*v78)(v41, 1, v12);
      v8 = v82;
      a4 = v79;
      v36 = v80;
      if (v62 != 1)
      {
        v63 = v72;
        (*v71)(v72, v41, v12);
        v64 = v73;
        (*v70)(v73, v63, v12);
        v65 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v65;
        sub_26634F030(v64, v84, v85, isUniquelyReferenced_nonNull_native);

        v67 = v63;
        a4 = v79;
        v36 = v80;
        (*v69)(v67, v12);
        v74 = v86;
        goto LABEL_20;
      }

      sub_2662A9238(v41, &qword_2800729C8, &unk_2664E52E0);
      v42 = v40;
    }

    while (v39);
LABEL_22:
    while (1)
    {
      v40 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v40 >= a4)
      {

        return v74;
      }

      v39 = *(v36 + 8 * v40);
      ++v42;
      if (v39)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v22 = a1 + 5;
  while (1)
  {
    a1 = *(v22 - 1);
    v23 = *v22;

    v24 = sub_2663188D0(a1, v23, v85);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v21;
    a4 = sub_2662A3E98(a1, v23);
    v26 = v21[2];
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_48;
    }

    v12 = v25;
    if (v21[3] < v28)
    {
      break;
    }

    if (v8)
    {
      if (v25)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_266453E1C();
      if (v12)
      {
LABEL_4:

        v21 = v86;
        *(*(v86 + 56) + 8 * a4) = v24;

        goto LABEL_5;
      }
    }

LABEL_13:
    v21 = v86;
    *(v86 + 8 * (a4 >> 6) + 64) |= 1 << a4;
    v31 = (v21[6] + 16 * a4);
    *v31 = a1;
    v31[1] = v23;
    *(v21[7] + 8 * a4) = v24;
    v32 = v21[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_49;
    }

    v21[2] = v34;
LABEL_5:
    v22 += 2;
    if (!--v11)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v28, v8);
  v29 = sub_2662A3E98(a1, v23);
  if ((v12 & 1) == (v30 & 1))
  {
    a4 = v29;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_266319B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_266319BF4()
{
  result = qword_280F8F550;
  if (!qword_280F8F550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F550);
  }

  return result;
}

uint64_t sub_266319C40(__int128 *a1, uint64_t a2)
{
  v81 = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_2664DEC48();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v65 - v11;
  if (qword_280F8FE38 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v73 = v6;
    v78 = qword_280F91C70;
    v79 = v3;
    v12 = *(qword_280F91C70 + 16);
    v13 = MEMORY[0x277D837D0];
    v14 = MEMORY[0x277D837E0];
    v72 = v7;
    v15 = MEMORY[0x266783210](v12, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    v7 = *(a1 + 2);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    v17 = MEMORY[0x266783210](v7, v13, v16, v14);
    v77 = v7;
    v70 = v15;
    v71 = v8;
    v80 = a1;
    if (v7)
    {
      break;
    }

LABEL_17:
    v6 = (v78 + 56);
    v32 = 1 << *(v78 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v78 + 56);
    v8 = ((v32 + 63) >> 6);
    a1 = &v82;
    v74 = (v71 + 6);
    v67 = (v71 + 4);
    v66 = (v71 + 2);
    v65 = (v71 + 1);

    v35 = 0;
    v7 = v79;
    v71 = v80 + 5;
    v37 = v72;
    v36 = v73;
    v75 = v8;
    v76 = v6;
LABEL_20:
    v38 = v35;
    v3 = v77;
    if (!v34)
    {
      goto LABEL_22;
    }

    do
    {
      v35 = v38;
LABEL_25:
      v39 = *(v78 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v34))));
      v40 = *(v39 + 8);
      v80 = *v39;
      v81 = v40;
      if (v3)
      {
        v79 = v7;
        v85 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        sub_2662FCF64(0, v3, 0);
        v41 = v85;
        v42 = v71;
        v43 = v3;
        while (1)
        {
          v44 = *(v42 - 1);
          v45 = *v42;
          *&v82 = v44;
          *(&v82 + 1) = v45;
          v46 = *(v17 + 2);
          swift_bridgeObjectRetain_n();
          if (!v46)
          {
            goto LABEL_33;
          }

          v47 = sub_2662A3E98(v44, v45);
          if ((v48 & 1) == 0)
          {
            goto LABEL_33;
          }

          v49 = *(*(v17 + 7) + 8 * v47);
          if (!*(v49 + 16))
          {
            goto LABEL_33;
          }

          v50 = sub_2662A3E98(v80, v81);
          if ((v51 & 1) == 0)
          {
            break;
          }

          sub_2662A01E8(*(v49 + 56) + 32 * v50, &v83);

LABEL_34:

          v85 = v41;
          v53 = *(v41 + 16);
          v52 = *(v41 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2662FCF64((v52 > 1), v53 + 1, 1);
            v41 = v85;
          }

          *(v41 + 16) = v53 + 1;
          v54 = (v41 + 48 * v53);
          v55 = v82;
          v56 = v84;
          v54[3] = v83;
          v54[4] = v56;
          v54[2] = v55;
          v42 += 2;
          if (!--v43)
          {

            v7 = v79;
            v37 = v72;
            v36 = v73;
            if (*(v41 + 16))
            {
              goto LABEL_38;
            }

LABEL_40:
            v57 = MEMORY[0x277D84F98];
            goto LABEL_41;
          }
        }

LABEL_33:
        v83 = 0u;
        v84 = 0u;
        goto LABEL_34;
      }

      v41 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_40;
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
      v57 = sub_2664E0C98();
LABEL_41:
      *&v82 = v57;
      sub_266318424(v41, 1, &v82);
      if (v7)
      {
        goto LABEL_52;
      }

      v34 &= v34 - 1;
      sub_266317280(v82);

      sub_2664DEC38();

      v58 = (*v74)(v36, 1, v37);
      v6 = v76;
      v3 = v77;
      v8 = v75;
      if (v58 != 1)
      {
        v59 = v68;
        (*v67)(v68, v36, v37);
        v60 = v69;
        (*v66)(v69, v59, v37);
        v61 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v61;
        sub_26634F030(v60, v80, v81, isUniquelyReferenced_nonNull_native);

        v63 = v59;
        v8 = v75;
        v6 = v76;
        (*v65)(v63, v37);
        v70 = v82;
        goto LABEL_20;
      }

      sub_2662A9238(v36, &qword_2800729C8, &unk_2664E52E0);
      v38 = v35;
    }

    while (v34);
LABEL_22:
    while (1)
    {
      v35 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v35 >= v8)
      {

        return v70;
      }

      v34 = *&v6[8 * v35];
      ++v38;
      if (v34)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v8 = a1 + 5;
  while (1)
  {
    v19 = *(v8 - 1);
    v18 = *v8;

    a1 = sub_2663DAE00(v19, v18, v81);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v82 = v17;
    v6 = v17;
    v21 = sub_2662A3E98(v19, v18);
    v22 = *(v17 + 2);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_48;
    }

    v25 = v20;
    if (*(v17 + 3) < v24)
    {
      break;
    }

    if (v3)
    {
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = &v82;
      sub_266453E1C();
      if (v25)
      {
LABEL_4:

        v17 = v82;
        *(*(v82 + 56) + 8 * v21) = a1;

        goto LABEL_5;
      }
    }

LABEL_13:
    v17 = v82;
    *(v82 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v28 = (*(v17 + 6) + 16 * v21);
    *v28 = v19;
    v28[1] = v18;
    *(*(v17 + 7) + 8 * v21) = a1;
    v29 = *(v17 + 2);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_49;
    }

    *(v17 + 2) = v31;
LABEL_5:
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  sub_2664508A8(v24, v3);
  v6 = v82;
  v26 = sub_2662A3E98(v19, v18);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if (v25)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_52:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26631A3F0(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_26631A454(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_26631A50C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}