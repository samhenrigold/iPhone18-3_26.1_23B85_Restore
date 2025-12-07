uint64_t sub_25E9B649C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
    v12 = *(result + 16);
    v42 = *(v12 + 80);
    v40 = *(v12 + 112);
    v41 = *(v12 + 96);
    v32 = *(v12 + 120);
    v38 = *(v12 + 64);
    v39 = *(v12 + 16);
    v36 = *(v12 + 48);
    v37 = *(v12 + 32);
    swift_beginAccess();
    v31 = *(v12 + 128);
    swift_beginAccess();
    v29 = *(v12 + 144);
    v30 = *(v12 + 136);

    v28 = sub_25E9C3AB4();
    v14 = v13;
    v27 = sub_25E9C3AB4();
    v16 = v15;
    v26 = sub_25E9C4F38();
    v18 = v17;
    v25 = sub_25E9C3AB4();
    v19 = a5;
    LOBYTE(a5) = v20;
    v21 = sub_25E9C3AB4();
    v22 = *(v12 + 104);
    v49 = v14 & 1;
    v48 = v16 & 1;
    v47 = v18 & 1;
    v46 = a5 & 1;
    v45 = v23 & 1;
    *__src = a2;
    *&__src[8] = a3;
    *&__src[16] = a4;
    *&__src[24] = v19;
    *&__src[32] = a6;
    *&__src[40] = a7;
    *&__src[48] = v39;
    *&__src[64] = v37;
    *&__src[80] = v36;
    *&__src[96] = v38;
    *&__src[112] = v42;
    *&__src[128] = v41;
    *&__src[136] = v40;
    *&__src[144] = v32;
    *&__src[152] = v31;
    *&__src[160] = v30;
    *&__src[168] = v29;
    *&__src[176] = v28;
    __src[184] = v14 & 1;
    *&__src[192] = v27;
    __src[200] = v16 & 1;
    *&__src[208] = v26;
    __src[216] = v18 & 1;
    *&__src[224] = v25;
    __src[232] = a5 & 1;
    *&__src[240] = v21;
    __src[248] = v23 & 1;
    *&__src[256] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D828, &qword_25E9D9470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E9D96A0;
    memcpy((inited + 32), __src, 0x108uLL);
    swift_beginAccess();

    sub_25E9B83F4(__src, v43);
    sub_25E9C147C(inited);
    swift_endAccess();
    return sub_25E9B8450(__src);
  }

  return result;
}

uint64_t sub_25E9B676C(uint64_t (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v157 = a2;
  v158 = a6;
  v145 = a4;
  v146 = a5;
  v167 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v155 = &v125 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v150 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v125 - v18;
  MEMORY[0x28223BE20](v17);
  v154 = &v125 - v19;
  v20 = sub_25E9D7A10();
  v168 = *(v20 - 8);
  v169 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v163 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v170 = &v125 - v23;
  v166 = sub_25E9D7940();
  v24 = *(v166 - 1);
  MEMORY[0x28223BE20](v166);
  v26 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25E9D78F0();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v129 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD0D588 != -1)
  {
    swift_once();
  }

  v30 = sub_25E9D7F10();
  v31 = __swift_project_value_buffer(v30, qword_27FD0DAD0);

  v156 = v31;
  v32 = sub_25E9D7F00();
  v33 = sub_25E9D8140();

  v34 = os_log_type_enabled(v32, v33);
  v147 = a7;
  v159 = a3;
  v152 = v12;
  v128 = v28;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = v27;
    v37 = swift_slowAlloc();
    *v172 = v37;
    *v35 = 136315394;
    *(v35 + 4) = sub_25E9887EC(v157, a3, v172);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_25E9887EC(v158, a7, v172);
    _os_log_impl(&dword_25E971000, v32, v33, "start for sessionId: %s clientRequestId: %s", v35, 0x16u);
    swift_arrayDestroy();
    v38 = v37;
    v27 = v36;
    v28 = v128;
    MEMORY[0x25F8C51A0](v38, -1, -1);
    MEMORY[0x25F8C51A0](v35, -1, -1);
  }

  v39 = v166;
  v184 = MEMORY[0x277D84F90];
  v40 = *(v28 + 16);
  v126 = v27;
  v40(v129, v167, v27);
  sub_25E9D78E0();
  v41 = sub_25E9D7930();
  (*(v24 + 8))(v26, v39);
  v43 = *(v41 + 16);
  v44 = v159;
  if (v43)
  {
    v162 = 0;
    v167 = *(v168 + 16);
    v45 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v125 = v41;
    v46 = v41 + v45;
    v166 = (v168 + 8);
    v168 += 16;
    v153 = *(v168 + 56);
    v148 = *MEMORY[0x277D23588];
    *&v42 = 136315138;
    v151 = v42;
    v127 = xmmword_25E9D96A0;
    while (1)
    {
      v164 = v46;
      v165 = v43;
      v167(v170);
      v70 = v155;
      sub_25E9D79A0();
      v71 = sub_25E9D7A80();
      v72 = *(v71 - 8);
      v161 = *(v72 + 48);
      if (v161(v70, 1, v71) == 1)
      {
        break;
      }

      v74 = v154;
      sub_25E9D7A70();
      (*(v72 + 8))(v70, v71);
      v75 = sub_25E9D7B90();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v74, 1, v75) == 1)
      {
        goto LABEL_15;
      }

      v77 = v149;
      sub_25E986774(v74, v149);
      v78 = (*(v76 + 88))(v77, v75);
      (*(v76 + 8))(v77, v75);
      if (v78 != v148)
      {
        goto LABEL_15;
      }

      sub_25E981210(v74, &qword_27FD0D888, &qword_25E9DBDA0);
      if (v162)
      {
        v79 = v162[2];
        v160 = *(v79 + 80);
        v80 = *(v79 + 96);
        v81 = *(v79 + 120);
        v143 = *(v79 + 112);
        v144 = v80;
        v138 = v81;
        v82 = *(v79 + 16);
        v83 = *(v79 + 32);
        v84 = *(v79 + 48);
        v141 = *(v79 + 64);
        v142 = v82;
        v139 = v84;
        v140 = v83;
        swift_beginAccess();
        v137 = *(v79 + 128);
        swift_beginAccess();
        v85 = *(v79 + 136);
        v135 = *(v79 + 144);
        v136 = v85;

        v86 = v146;

        v134 = sub_25E9C3AB4();
        v130 = v87;
        v88 = v162;
        v133 = sub_25E9C3AB4();
        v90 = v89;
        v132 = sub_25E9C4F38();
        LOBYTE(v85) = v91;
        v131 = sub_25E9C3AB4();
        LOBYTE(v81) = v92;
        v93 = sub_25E9C3AB4();
        v94 = *(v88[2] + 104);
        v177 = v130 & 1;
        v176 = v90 & 1;
        v175 = v85 & 1;
        v174 = v81 & 1;
        v173 = v95 & 1;
        *v172 = v157;
        *&v172[8] = v159;
        *&v172[16] = v145;
        *&v172[24] = v86;
        *&v172[32] = v158;
        *&v172[40] = v147;
        *&v172[48] = v142;
        *&v172[64] = v140;
        *&v172[80] = v139;
        *&v172[96] = v141;
        *&v172[112] = v160;
        *&v172[128] = v144;
        *&v172[136] = v143;
        *&v172[144] = v138;
        *&v172[152] = v137;
        *&v172[160] = v136;
        *&v172[168] = v135;
        *&v172[176] = v134;
        v172[184] = v130 & 1;
        *&v172[192] = v133;
        v172[200] = v90 & 1;
        *&v172[208] = v132;
        v172[216] = v85 & 1;
        *&v172[224] = v131;
        v172[232] = v81 & 1;
        *&v172[240] = v93;
        v172[248] = v95 & 1;
        *&v172[256] = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D828, &qword_25E9D9470);
        v96 = swift_allocObject();
        *(v96 + 16) = v127;
        memcpy((v96 + 32), v172, 0x108uLL);
        swift_beginAccess();

        sub_25E9B83F4(v172, &v171);
        sub_25E9C147C(v96);
        swift_endAccess();
        sub_25E9B8450(v172);
      }

      v97 = v169;
      v98 = v163;
      type metadata accessor for IERequestGrainSpec();
      v116 = swift_allocObject();
      v162 = sub_25E9BDA40(v116);

LABEL_16:
      (v167)(v98, v170, v97);
      v99 = sub_25E9D7F00();
      v100 = sub_25E9D8140();
      if (!os_log_type_enabled(v99, v100))
      {

        v107 = *v166;
        (*v166)(v98, v97);
        v108 = v162;
        if (!v162)
        {
          goto LABEL_26;
        }

        goto LABEL_7;
      }

      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v172 = v102;
      *v101 = v151;
      v103 = v152;
      sub_25E9D79A0();
      if (v161(v103, 1, v71) == 1)
      {
        v104 = v103;
        v105 = &qword_27FD0D880;
        v106 = &unk_25E9D97C0;
LABEL_23:
        sub_25E981210(v104, v105, v106);
        v112 = 0xE300000000000000;
        v113 = 7104878;
        goto LABEL_25;
      }

      v109 = v150;
      sub_25E9D7A70();
      (*(v72 + 8))(v103, v71);
      v110 = sub_25E9D7B90();
      v111 = *(v110 - 8);
      if ((*(v111 + 48))(v109, 1, v110) == 1)
      {
        v104 = v109;
        v105 = &qword_27FD0D888;
        v106 = &qword_25E9DBDA0;
        goto LABEL_23;
      }

      v113 = sub_25E9D7B80();
      v112 = v114;
      (*(v111 + 8))(v109, v110);
LABEL_25:
      v107 = *v166;
      (*v166)(v163, v169);
      v115 = sub_25E9887EC(v113, v112, v172);

      *(v101 + 4) = v115;
      _os_log_impl(&dword_25E971000, v99, v100, "handling event %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x25F8C51A0](v102, -1, -1);
      MEMORY[0x25F8C51A0](v101, -1, -1);

      v108 = v162;
      if (!v162)
      {
LABEL_26:
        v107(v170, v169);
        goto LABEL_8;
      }

LABEL_7:
      v161 = v108[2];
      v47 = v161;
      v48 = type metadata accessor for RequestGrainDimensionsSpec();
      v178[4] = &off_2870ACB78;
      v178[3] = v48;
      v178[0] = v47;
      v49 = v108[3];
      v50 = type metadata accessor for IETranscriptLatencyIntervalSpec();
      v179[4] = &off_2870ACB88;
      v179[3] = v50;
      v179[0] = v49;
      v51 = v108[4];
      v180[4] = &off_2870ACB88;
      v180[3] = v50;
      v180[0] = v51;
      v52 = v108[5];
      v181[4] = &off_2870ACB88;
      v181[3] = v50;
      v181[0] = v52;
      v53 = v108[6];
      v182[4] = &off_2870ACB88;
      v182[3] = v50;
      v182[0] = v53;
      v54 = v108[7];
      v183[4] = &off_2870ACB88;
      v183[3] = v50;
      v183[0] = v54;
      sub_25E986C6C(v178, v172);
      v55 = *&v172[24];
      v56 = *&v172[32];
      __swift_project_boxed_opaque_existential_1(v172, *&v172[24]);
      *&v160 = *(v56 + 8);

      v57 = v170;
      (v160)(v170, v55, v56);
      __swift_destroy_boxed_opaque_existential_0(v172);
      sub_25E986C6C(v179, v172);
      v58 = *&v172[24];
      v59 = *&v172[32];
      __swift_project_boxed_opaque_existential_1(v172, *&v172[24]);
      (*(v59 + 8))(v57, v58, v59);
      __swift_destroy_boxed_opaque_existential_0(v172);
      sub_25E986C6C(v180, v172);
      v60 = *&v172[24];
      v61 = *&v172[32];
      __swift_project_boxed_opaque_existential_1(v172, *&v172[24]);
      (*(v61 + 8))(v57, v60, v61);
      __swift_destroy_boxed_opaque_existential_0(v172);
      sub_25E986C6C(v181, v172);
      v62 = *&v172[24];
      v63 = *&v172[32];
      __swift_project_boxed_opaque_existential_1(v172, *&v172[24]);
      (*(v63 + 8))(v57, v62, v63);
      __swift_destroy_boxed_opaque_existential_0(v172);
      sub_25E986C6C(v182, v172);
      v64 = *&v172[24];
      v65 = *&v172[32];
      __swift_project_boxed_opaque_existential_1(v172, *&v172[24]);
      (*(v65 + 8))(v57, v64, v65);
      __swift_destroy_boxed_opaque_existential_0(v172);
      sub_25E986C6C(v183, v172);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D898, &unk_25E9DB860);
      swift_arrayDestroy();
      v66 = *&v172[24];
      v67 = *&v172[32];
      __swift_project_boxed_opaque_existential_1(v172, *&v172[24]);
      (*(v67 + 8))(v57, v66, v67);
      __swift_destroy_boxed_opaque_existential_0(v172);
      (*v166)(v57, v169);
LABEL_8:
      v68 = v158;
      v44 = v159;
      v69 = v157;
      v46 = v164 + v153;
      v43 = v165 - 1;
      if (v165 == 1)
      {

        v117 = v162;
        goto LABEL_30;
      }
    }

    sub_25E981210(v70, &qword_27FD0D880, &unk_25E9D97C0);
    v73 = sub_25E9D7B90();
    v74 = v154;
    (*(*(v73 - 8) + 56))(v154, 1, 1, v73);
LABEL_15:
    sub_25E981210(v74, &qword_27FD0D888, &qword_25E9DBDA0);
    v97 = v169;
    v98 = v163;
    goto LABEL_16;
  }

  v117 = 0;
  v69 = v157;
  v68 = v158;
LABEL_30:
  v118 = v147;
  v119 = v129;
  sub_25E9B649C(v117, v69, v44, v145, v146, v68, v147, v129, &v184);
  (*(v128 + 8))(v119, v126);

  v120 = sub_25E9D7F00();
  v121 = sub_25E9D8140();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v172 = v123;
    *v122 = 136315394;
    *(v122 + 4) = sub_25E9887EC(v69, v44, v172);
    *(v122 + 12) = 2080;
    *(v122 + 14) = sub_25E9887EC(v68, v118, v172);
    _os_log_impl(&dword_25E971000, v120, v121, "end for sessionId: %s clientRequestId: %s", v122, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v123, -1, -1);
    MEMORY[0x25F8C51A0](v122, -1, -1);
  }

  swift_beginAccess();
  return v184;
}

char *sub_25E9B7850()
{
  v120 = sub_25E9D78F0();
  v111 = *(v120 - 8);
  v0 = MEMORY[0x28223BE20](v120);
  v2 = (&v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v0);
  v109 = &v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA98, &qword_25E9DA7B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v93 - v8);
  v10 = sub_25E9D7920();
  v101 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v117 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA0, &qword_25E9DA7B8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v93 - v18;
  if (qword_27FD0D588 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v102 = v19;
    v20 = sub_25E9D7F10();
    v93 = __swift_project_value_buffer(v20, qword_27FD0DAD0);
    v21 = sub_25E9D7F00();
    v22 = sub_25E9D8140();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v10;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25E971000, v21, v22, "calculator start", v24, 2u);
      v25 = v24;
      v10 = v23;
      MEMORY[0x25F8C51A0](v25, -1, -1);
    }

    v26 = sub_25E9D7950();
    v27 = 0;
    v28 = *(v26 + 64);
    v95 = v26 + 64;
    v98 = v26;
    v29 = 1 << *(v26 + 32);
    v30 = v29 < 64 ? ~(-1 << v29) : -1;
    v31 = v30 & v28;
    v94 = (v29 + 63) >> 6;
    v96 = v101 + 16;
    v106 = (v101 + 32);
    v107 = v111 + 16;
    v119 = (v111 + 32);
    v113 = (v111 + 8);
    v121 = MEMORY[0x277D84F90];
    v99 = (v101 + 8);
    v110 = v2;
    v108 = v7;
    v118 = v9;
    v32 = v17;
    v103 = v17;
    v100 = v10;
LABEL_9:
    if (v31)
    {
      break;
    }

    if (v94 <= v27 + 1)
    {
      v33 = v27 + 1;
    }

    else
    {
      v33 = v94;
    }

    v34 = v33 - 1;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v94)
      {
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        v105 = 0;
        goto LABEL_19;
      }

      v31 = *(v95 + 8 * v19);
      ++v27;
      if (v31)
      {
        goto LABEL_18;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v19 = v27;
LABEL_18:
  v105 = (v31 - 1) & v31;
  v35 = __clz(__rbit64(v31)) | (v19 << 6);
  v36 = *(v98 + 56);
  v37 = (*(v98 + 48) + 16 * v35);
  v38 = v37[1];
  v116 = *v37;
  v39 = v101;
  v40 = v97;
  (*(v101 + 16))(v97, v36 + *(v101 + 72) * v35, v10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  v42 = *(v41 + 48);
  v43 = v103;
  *v103 = v116;
  *(v43 + 1) = v38;
  v44 = v40;
  v32 = v43;
  (*(v39 + 32))(&v43[v42], v44, v10);
  (*(*(v41 - 8) + 56))(v32, 0, 1, v41);

  v34 = v19;
LABEL_19:
  v45 = v102;
  sub_25E98B514(v32, v102, &qword_27FD0DAA0, &qword_25E9DA7B8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
  {
    v104 = v34;
    v47 = v45[1];
    v115 = *v45;
    v116 = v47;
    (*v106)(v117, v45 + *(v46 + 48), v10);
    v48 = sub_25E9D7910();
    v17 = 0;
    v50 = v48 + 64;
    v49 = *(v48 + 64);
    v112 = v48;
    v51 = 1 << *(v48 + 32);
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & v49;
    v19 = (v51 + 63) >> 6;
    v114 = v48 + 64;
    while (v53)
    {
      v54 = v17;
LABEL_36:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = v57 | (v54 << 6);
      v59 = v111;
      v60 = (*(v112 + 48) + 16 * v58);
      v62 = *v60;
      v61 = v60[1];
      v63 = v109;
      v64 = v120;
      (*(v111 + 16))(v109, *(v112 + 56) + *(v111 + 72) * v58, v120);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      v66 = *(v65 + 48);
      v67 = v108;
      *v108 = v62;
      *(v67 + 1) = v61;
      v68 = v63;
      v7 = v67;
      (*(v59 + 32))(&v67[v66], v68, v64);
      (*(*(v65 - 8) + 56))(v7, 0, 1, v65);

      v2 = v110;
      v9 = v118;
LABEL_37:
      sub_25E98B514(v7, v9, &qword_27FD0DA98, &qword_25E9DA7B0);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      if ((*(*(v69 - 8) + 48))(v9, 1, v69) == 1)
      {
        v10 = v100;
        (*v99)(v117, v100);

        v32 = v103;
        v27 = v104;
        v31 = v105;
        goto LABEL_9;
      }

      v70 = *v9;
      v71 = v9[1];
      (*v119)(v2, v9 + *(v69 + 48), v120);
      v72 = sub_25E9D7900();
      v74 = sub_25E9B676C(v2, v115, v116, v72, v73, v70, v71);

      v75 = *(v74 + 16);
      v10 = *(v121 + 2);
      v9 = (v10 + v75);
      if (__OFADD__(v10, v75))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v121;
      if (!isUniquelyReferenced_nonNull_native || v9 > *(v121 + 3) >> 1)
      {
        if (v10 <= v9)
        {
          v78 = v10 + v75;
        }

        else
        {
          v78 = v10;
        }

        v77 = sub_25E9840A8(isUniquelyReferenced_nonNull_native, v78, 1, v121);
      }

      v9 = v118;
      v79 = *(v74 + 16);
      v121 = v77;
      if (v79)
      {
        if ((*(v77 + 3) >> 1) - *(v77 + 2) < v75)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v75)
        {
          v80 = *(v121 + 2);
          v81 = __OFADD__(v80, v75);
          v82 = v80 + v75;
          if (v81)
          {
            goto LABEL_62;
          }

          *(v121 + 2) = v82;
        }
      }

      else
      {

        if (v75)
        {
          goto LABEL_60;
        }
      }

      (*v113)(v2, v120);
      v50 = v114;
    }

    if (v19 <= (v17 + 1))
    {
      v55 = v17 + 1;
    }

    else
    {
      v55 = v19;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v54 >= v19)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
        (*(*(v83 - 8) + 56))(v7, 1, 1, v83);
        v53 = 0;
        v17 = v56;
        goto LABEL_37;
      }

      v53 = *(v50 + 8 * v54);
      ++v17;
      if (v53)
      {
        v17 = v54;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  v85 = v121;

  v86 = sub_25E9D7F00();
  v87 = sub_25E9D8140();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    *(v88 + 4) = *(v85 + 2);

    _os_log_impl(&dword_25E971000, v86, v87, "computed metrics for %ld requests", v88, 0xCu);
    MEMORY[0x25F8C51A0](v88, -1, -1);
  }

  else
  {
  }

  v89 = sub_25E9D7F00();
  v90 = sub_25E9D8140();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_25E971000, v89, v90, "calculator end", v91, 2u);
    MEMORY[0x25F8C51A0](v91, -1, -1);
  }

  return v121;
}

uint64_t PnROnDeviceMetrics.__allocating_init(streamIdentifier:readerDomain:)(_BYTE *a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = *a1;
  *(result + 17) = v5;
  return result;
}

uint64_t PnROnDeviceMetrics.init(streamIdentifier:readerDomain:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = *a1;
  *(v2 + 17) = v3;
  return v2;
}

uint64_t sub_25E9B8528()
{
  v1 = 0xD00000000000001FLL;
  v2 = v0[90];
  v3 = "self.processedstream";
  v4 = 0xD00000000000002BLL;
  if (*(v2 + 16) != 1)
  {
    v4 = 0xD00000000000001FLL;
    v3 = "arplay.self.processedstream";
  }

  if (*(v2 + 16))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (*(v2 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = "ion";
  }

  v7 = *(v2 + 17);
  v8 = "ouse.pnr.PnROnDeviceWorker";
  if (v7 == 1)
  {
    v1 = 0xD000000000000031;
  }

  else
  {
    v8 = "eviceWorkerReader";
  }

  if (v7)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0xD00000000000002ALL;
  }

  if (v7)
  {
    v10 = v8;
  }

  else
  {
    v10 = "com.apple.biome.self.teststream";
  }

  type metadata accessor for Bookmark();
  swift_allocObject();
  v0[89] = sub_25E98B630(v5, v6 | 0x8000000000000000, v9, v10 | 0x8000000000000000);
  v11 = swift_task_alloc();
  v0[91] = v11;
  *v11 = v0;
  v11[1] = sub_25E9B8694;

  return SELFProcessedStreamTurnReader.read()();
}

uint64_t sub_25E9B8694(uint64_t a1)
{
  *(*v1 + 736) = a1;

  return MEMORY[0x2822009F8](sub_25E9B87B4, 0, 0);
}

uint64_t sub_25E9B87B4()
{
  v68 = v0;
  v1 = *(v0 + 736);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25E9D8290())
    {
      v3 = 0;
      v4 = *(v0 + 736);
      v64 = v4 & 0xFFFFFFFFFFFFFF8;
      v65 = v4 & 0xC000000000000001;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v65)
        {
          v6 = MEMORY[0x25F8C4B40](v3, v1);
        }

        else
        {
          if (v3 >= *(v64 + 16))
          {
            goto LABEL_24;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        swift_beginAccess();
        v9 = qword_27FD0DD78;
        qword_27FD0DD78 = v7;
        v10 = v7;

        v67 = v10;
        SiriTurnGrainCalculator.extractLatencies()(v66);

        v11 = v66[11];
        *(v0 + 176) = v66[10];
        *(v0 + 192) = v11;
        v12 = v66[13];
        *(v0 + 208) = v66[12];
        *(v0 + 224) = v12;
        v13 = v66[7];
        *(v0 + 112) = v66[6];
        *(v0 + 128) = v13;
        v14 = v66[9];
        *(v0 + 144) = v66[8];
        *(v0 + 160) = v14;
        v15 = v66[3];
        *(v0 + 48) = v66[2];
        *(v0 + 64) = v15;
        v16 = v66[5];
        *(v0 + 80) = v66[4];
        *(v0 + 96) = v16;
        v17 = v66[1];
        *(v0 + 16) = v66[0];
        *(v0 + 32) = v17;
        if (sub_25E97F474(v0 + 16) == 1)
        {

          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_25E9841D0(0, *(v5 + 2) + 1, 1, v5);
        }

        v19 = *(v5 + 2);
        v18 = *(v5 + 3);
        if (v19 >= v18 >> 1)
        {
          v5 = sub_25E9841D0((v18 > 1), v19 + 1, 1, v5);
        }

        *(v5 + 2) = v19 + 1;
        v20 = &v5[224 * v19];
        v21 = *(v0 + 32);
        *(v20 + 2) = *(v0 + 16);
        *(v20 + 3) = v21;
        v22 = *(v0 + 48);
        v23 = *(v0 + 64);
        v24 = *(v0 + 96);
        *(v20 + 6) = *(v0 + 80);
        *(v20 + 7) = v24;
        *(v20 + 4) = v22;
        *(v20 + 5) = v23;
        v25 = *(v0 + 112);
        v26 = *(v0 + 128);
        v27 = *(v0 + 160);
        *(v20 + 10) = *(v0 + 144);
        *(v20 + 11) = v27;
        *(v20 + 8) = v25;
        *(v20 + 9) = v26;
        v28 = *(v0 + 176);
        v29 = *(v0 + 192);
        v30 = *(v0 + 224);
        *(v20 + 14) = *(v0 + 208);
        *(v20 + 15) = v30;
        *(v20 + 12) = v28;
        *(v20 + 13) = v29;
        ++v3;
        if (v8 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_27:

    v36 = *(v5 + 2);
    if (!v36)
    {
      v35 = MEMORY[0x277D84F90];
LABEL_37:

      goto LABEL_38;
    }

    v37 = 0;
    v38 = v5 + 32;
    v35 = MEMORY[0x277D84F90];
    while (v37 < *(v5 + 2))
    {
      v39 = v38[1];
      *(v0 + 240) = *v38;
      *(v0 + 256) = v39;
      v40 = v38[2];
      v41 = v38[3];
      v42 = v38[5];
      *(v0 + 304) = v38[4];
      *(v0 + 320) = v42;
      *(v0 + 272) = v40;
      *(v0 + 288) = v41;
      v43 = v38[6];
      v44 = v38[7];
      v45 = v38[9];
      *(v0 + 368) = v38[8];
      *(v0 + 384) = v45;
      *(v0 + 336) = v43;
      *(v0 + 352) = v44;
      v46 = v38[10];
      v47 = v38[11];
      v48 = v38[13];
      *(v0 + 432) = v38[12];
      *(v0 + 448) = v48;
      *(v0 + 400) = v46;
      *(v0 + 416) = v47;
      sub_25E9B8C60(v0 + 240, v0 + 464);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_25E9841D0(0, *(v35 + 2) + 1, 1, v35);
      }

      v50 = *(v35 + 2);
      v49 = *(v35 + 3);
      if (v50 >= v49 >> 1)
      {
        v35 = sub_25E9841D0((v49 > 1), v50 + 1, 1, v35);
      }

      ++v37;
      *(v35 + 2) = v50 + 1;
      v51 = &v35[224 * v50];
      v52 = *(v0 + 256);
      *(v51 + 2) = *(v0 + 240);
      *(v51 + 3) = v52;
      v53 = *(v0 + 272);
      v54 = *(v0 + 288);
      v55 = *(v0 + 320);
      *(v51 + 6) = *(v0 + 304);
      *(v51 + 7) = v55;
      *(v51 + 4) = v53;
      *(v51 + 5) = v54;
      v56 = *(v0 + 336);
      v57 = *(v0 + 352);
      v58 = *(v0 + 384);
      *(v51 + 10) = *(v0 + 368);
      *(v51 + 11) = v58;
      *(v51 + 8) = v56;
      *(v51 + 9) = v57;
      v59 = *(v0 + 400);
      v60 = *(v0 + 416);
      v61 = *(v0 + 448);
      *(v51 + 14) = *(v0 + 432);
      *(v51 + 15) = v61;
      *(v51 + 12) = v59;
      *(v51 + 13) = v60;
      v38 += 14;
      if (v36 == v37)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else if (qword_280F6FE70 == -1)
  {
    goto LABEL_18;
  }

  swift_once();
LABEL_18:
  v31 = sub_25E9D7F10();
  __swift_project_value_buffer(v31, qword_280F6FE78);
  v32 = sub_25E9D7F00();
  v33 = sub_25E9D8110();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_25E971000, v32, v33, "PnROnDeviceMetrics: No turn sequence to extract Siri latencies", v34, 2u);
    MEMORY[0x25F8C51A0](v34, -1, -1);
  }

LABEL_22:
  v35 = 0;
LABEL_38:
  v62 = *(v0 + 8);

  return v62(v35);
}

void sub_25E9B8D0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC68, &qword_25E9DBB18);
    v2 = sub_25E9D82C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6E8, &qword_25E9DBB20);
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
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v26);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v27 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v28 = (v26 << 9) | (8 * v27);
          v29 = *(*(a1 + 48) + v28);
          v30 = *(*(a1 + 56) + v28);

          v32 = sub_25E979058(v31);
          if (v33)
          {
            *(*(v2 + 48) + 8 * v32) = v29;
            v25 = v32;

            *(*(v2 + 56) + 8 * v25) = v30;
            v24 = v26;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = *(v2 + 16);
            if (v34 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
            *(*(v2 + 48) + 8 * v32) = v29;
            *(*(v2 + 56) + 8 * v32) = v30;
            *(v2 + 16) = v34 + 1;
            v24 = v26;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v26 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v10 = 0;
    while (v7)
    {
LABEL_16:
      v13 = (v10 << 9) | (8 * __clz(__rbit64(v7)));
      v14 = *(*(a1 + 48) + v13);
      v15 = *(*(a1 + 56) + v13);

      v16 = sub_25E9D7F60();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v14;
      *(*(v2 + 56) + 8 * v11) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_25E9B9054(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC60, &qword_25E9DBB08);
    v2 = sub_25E9D82C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6B8, &qword_25E9DBB10);
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
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v26);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v27 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v28 = (v26 << 9) | (8 * v27);
          v29 = *(*(a1 + 48) + v28);
          v30 = *(*(a1 + 56) + v28);

          v32 = sub_25E9790F8(v31);
          if (v33)
          {
            *(*(v2 + 48) + 8 * v32) = v29;
            v25 = v32;

            *(*(v2 + 56) + 8 * v25) = v30;
            v24 = v26;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = *(v2 + 16);
            if (v34 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
            *(*(v2 + 48) + 8 * v32) = v29;
            *(*(v2 + 56) + 8 * v32) = v30;
            *(v2 + 16) = v34 + 1;
            v24 = v26;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v26 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v10 = 0;
    while (v7)
    {
LABEL_16:
      v13 = (v10 << 9) | (8 * __clz(__rbit64(v7)));
      v14 = *(*(a1 + 48) + v13);
      v15 = *(*(a1 + 56) + v13);

      v16 = sub_25E9D7F60();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v14;
      *(*(v2 + 56) + 8 * v11) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_25E9B939C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC70, &qword_25E9DBB28);
    v2 = sub_25E9D82C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D708, qword_25E9DBB30);
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
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v26);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v27 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v28 = (v26 << 9) | (8 * v27);
          v29 = *(*(a1 + 48) + v28);
          v30 = *(*(a1 + 56) + v28);

          v32 = sub_25E97910C(v31);
          if (v33)
          {
            *(*(v2 + 48) + 8 * v32) = v29;
            v25 = v32;

            *(*(v2 + 56) + 8 * v25) = v30;
            v24 = v26;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v34 = *(v2 + 16);
            if (v34 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
            *(*(v2 + 48) + 8 * v32) = v29;
            *(*(v2 + 56) + 8 * v32) = v30;
            *(v2 + 16) = v34 + 1;
            v24 = v26;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v26 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v10 = 0;
    while (v7)
    {
LABEL_16:
      v13 = (v10 << 9) | (8 * __clz(__rbit64(v7)));
      v14 = *(*(a1 + 48) + v13);
      v15 = *(*(a1 + 56) + v13);

      v16 = sub_25E9D7F60();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v14;
      *(*(v2 + 56) + 8 * v11) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t IERequestGrainMetricsRecord.description.getter()
{
  v0 = IERequestGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t IERequestGrainMetricsRecord.dictionary.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v49 = v0[7];
  v50 = v0[8];
  v51 = v0[9];
  v52 = v0[10];
  v53 = v0[11];
  v54 = v0[12];
  v8 = v0[15];
  v55 = v0[13];
  v56 = v0[14];
  v48 = *(v0 + 17);
  v57 = v0[16];
  v58 = v0[19];
  v59 = v0[20];
  v9 = v0[22];
  v10 = v0[24];
  v60 = *(v0 + 184);
  v61 = *(v0 + 200);
  v11 = v0[26];
  v12 = v0[28];
  v62 = *(v0 + 216);
  v63 = *(v0 + 232);
  v13 = v0[30];
  v64 = *(v0 + 248);
  v65 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA70, &unk_25E9DA5A0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_25E9DB8E0;
  *(v14 + 32) = 0x496E6F6973736573;
  v16 = MEMORY[0x277D837D0];
  *(v14 + 40) = 0xE900000000000064;
  *(v14 + 48) = v2;
  *(v14 + 56) = v1;
  *(v14 + 72) = v16;
  strcpy((v14 + 80), "rawSessionId");
  *(v14 + 93) = 0;
  *(v14 + 94) = -5120;
  *(v14 + 96) = v4;
  *(v14 + 104) = v3;
  *(v14 + 120) = v16;
  *(v14 + 128) = 0x6552746E65696C63;
  *(v14 + 136) = 0xEF64497473657571;
  *(v14 + 144) = v6;
  v17 = v16;
  *(v14 + 152) = v5;
  *(v14 + 168) = v16;
  *(v14 + 176) = 0x6D45646C756F6873;
  *(v14 + 184) = 0xEA00000000007469;
  v19 = v7 > 0 || v8 > 0;
  v20 = MEMORY[0x277D839B0];
  *(v14 + 192) = v19;
  *(v14 + 216) = v20;
  *(v14 + 224) = 0x65757165526D756ELL;
  v21 = MEMORY[0x277D83B88];
  *(v14 + 232) = 0xEA00000000007473;
  *(v14 + 240) = v7;
  *(v14 + 264) = v21;
  strcpy((v14 + 272), "numPlanCreated");
  *(v14 + 287) = -18;
  *(v14 + 288) = v49;
  *(v14 + 312) = v21;
  *(v14 + 320) = 0xD000000000000019;
  *(v14 + 328) = 0x800000025E9DE620;
  *(v14 + 336) = v50;
  *(v14 + 360) = v21;
  *(v14 + 368) = 0xD000000000000011;
  *(v14 + 376) = 0x800000025E9DD550;
  *(v14 + 384) = v51;
  *(v14 + 408) = v21;
  *(v14 + 416) = 0xD000000000000010;
  *(v14 + 424) = 0x800000025E9DD530;
  *(v14 + 432) = v52;
  *(v14 + 456) = v21;
  *(v14 + 464) = 0xD000000000000015;
  *(v14 + 472) = 0x800000025E9DD590;
  *(v14 + 480) = v53;
  *(v14 + 504) = v21;
  *(v14 + 512) = 0xD000000000000020;
  *(v14 + 520) = 0x800000025E9DE080;
  *(v14 + 552) = v21;
  *(v14 + 528) = v54;
  *(v14 + 560) = 0xD00000000000001CLL;
  *(v14 + 568) = 0x800000025E9DE640;
  *(v14 + 600) = v21;
  *(v14 + 576) = v55;
  *(v14 + 608) = 0xD00000000000001ALL;
  *(v14 + 616) = 0x800000025E9DE660;
  *(v14 + 648) = v21;
  *(v14 + 624) = v56;
  *(v14 + 656) = 0xD000000000000017;
  *(v14 + 664) = 0x800000025E9DE0B0;
  *(v14 + 696) = v21;
  *(v14 + 672) = v8;
  *(v14 + 704) = 0xD000000000000010;
  *(v14 + 712) = 0x800000025E9DD5B0;
  *(v14 + 744) = v21;
  *(v14 + 720) = v57;
  *(v14 + 752) = 0x6449656C646E7562;
  *(v14 + 760) = 0xE900000000000073;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC48, &qword_25E9DB8F8);
  v15[99] = v22;
  v15[96] = v58;
  v15[100] = 0x7364496C6F6F74;
  v15[101] = 0xE700000000000000;
  v15[105] = v22;
  v15[102] = v59;

  v23 = sub_25E980C94(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D720, &qword_25E9DAC00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v70 = v23;
  if (*(&v48 + 1))
  {
    *(&v67 + 1) = v17;
    v66 = v48;
    sub_25E980EA8(&v66, &v68);
    v24 = v69;
  }

  else
  {
    v25 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v24 = sub_25E9A1988();
    v69 = v24;
    *&v68 = v25;
  }

  if (v24)
  {
    sub_25E980EA8(&v68, &v66);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0xD000000000000013, 0x800000025E9DD4F0, isUniquelyReferenced_nonNull_native);
    v70 = v23;
  }

  else
  {

    sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000013, 0x800000025E9DD4F0, &v66);
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

  v27 = MEMORY[0x277D839F8];
  if (v60)
  {
    v66 = 0u;
    v67 = 0u;
    v28 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v69 = sub_25E9A1988();
    *&v68 = v28;
    if (*(&v67 + 1))
    {
      sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
    }
  }

  else
  {
    *(&v67 + 1) = MEMORY[0x277D839F8];
    *&v66 = v9;
    sub_25E980EA8(&v66, &v68);
  }

  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v29 = v70;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0xD000000000000013, 0x800000025E9DB8E0, v30);
    v70 = v29;
    if (v61)
    {
      goto LABEL_19;
    }

LABEL_22:
    *(&v67 + 1) = v27;
    *&v66 = v10;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_23;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0xD000000000000013, 0x800000025E9DB8E0, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v61 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v66 = 0u;
  v67 = 0u;
  v31 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v31;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_23:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v32 = v70;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x676E696E6E616C70, 0xEC000000656D6954, v33);
    v70 = v32;
    if (v62)
    {
      goto LABEL_25;
    }

LABEL_28:
    *(&v67 + 1) = v27;
    *&v66 = v11;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_29;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0x676E696E6E616C70, 0xEC000000656D6954, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v62 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v66 = 0u;
  v67 = 0u;
  v34 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v34;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_29:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v35 = v70;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x6D69547972657571, 0xE900000000000065, v36);
    v70 = v35;
    if (v63)
    {
      goto LABEL_31;
    }

LABEL_34:
    *(&v67 + 1) = v27;
    *&v66 = v12;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_35;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0x6D69547972657571, 0xE900000000000065, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v63 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v66 = 0u;
  v67 = 0u;
  v37 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v37;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_35:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v38 = v70;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x6F69747563657865, 0xED0000656D69546ELL, v39);
    v70 = v38;
    if (v64)
    {
      goto LABEL_37;
    }

LABEL_40:
    *(&v67 + 1) = v27;
    *&v66 = v13;
    sub_25E980EA8(&v66, &v68);
    goto LABEL_41;
  }

  sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
  sub_25E9891E0(0x6F69747563657865, 0xED0000656D69546ELL, &v66);
  sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  if ((v64 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v66 = 0u;
  v67 = 0u;
  v40 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v40;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_41:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v41 = v70;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0xD000000000000017, 0x800000025E9DB900, v42);
    v70 = v41;
    if (v65)
    {
LABEL_43:
      v43 = sub_25E9A89B8();
      *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA80, &unk_25E9DA5D0);
      *&v66 = v43;
      sub_25E980EA8(&v66, &v68);
      goto LABEL_47;
    }
  }

  else
  {
    sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0xD000000000000017, 0x800000025E9DB900, &v66);
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
    if (v65)
    {
      goto LABEL_43;
    }
  }

  v66 = 0u;
  v67 = 0u;
  v44 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v69 = sub_25E9A1988();
  *&v68 = v44;
  if (*(&v67 + 1))
  {
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
  }

LABEL_47:
  if (v69)
  {
    sub_25E980EA8(&v68, &v66);
    v45 = v70;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_25E994BD0(&v66, 0x496572756C696166, 0xEB000000006F666ELL, v46);
    return v45;
  }

  else
  {
    sub_25E981210(&v68, &qword_27FD0D908, &unk_25E9D9910);
    sub_25E9891E0(0x496572756C696166, 0xEB000000006F666ELL, &v66);
    sub_25E981210(&v66, &qword_27FD0D908, &unk_25E9D9910);
    return v70;
  }
}

uint64_t sub_25E9BA388()
{
  v0 = IERequestGrainMetricsRecord.dictionary.getter();
  v1 = sub_25E9A9B34(v0, 1);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t sub_25E9BA3F0()
{
  v0 = IERequestGrainMetricsRecord.dictionary.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC50, ":h");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9DADD0;
  *(inited + 32) = swift_getKeyPath();
  if (*(v0 + 16) && (v2 = sub_25E978F5C(0x676E696E6E616C70, 0xEC000000656D6954), (v3 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v2, v22), swift_dynamicCast()))
  {
    v4 = v21;
  }

  else
  {
    v4 = 0;
  }

  *(inited + 40) = v4;
  *(inited + 48) = swift_getKeyPath();
  if (*(v0 + 16) && (v5 = sub_25E978F5C(0x6F69747563657865, 0xED0000656D69546ELL), (v6 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v5, v22), swift_dynamicCast()))
  {
    v7 = v21;
  }

  else
  {
    v7 = 0;
  }

  *(inited + 56) = v7;
  *(inited + 64) = swift_getKeyPath();
  if (*(v0 + 16) && (v8 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DB8E0), (v9 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v8, v22), swift_dynamicCast()))
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 72) = v10;
  *(inited + 80) = swift_getKeyPath();
  if (*(v0 + 16) && (v11 = sub_25E978F5C(0xD000000000000017, 0x800000025E9DB900), (v12 & 1) != 0) && (sub_25E980E4C(*(v0 + 56) + 32 * v11, v22), swift_dynamicCast()))
  {
    v13 = v21;
  }

  else
  {
    v13 = 0;
  }

  *(inited + 88) = v13;
  *(inited + 96) = swift_getKeyPath();
  if (!*(v0 + 16) || (v14 = sub_25E978F5C(0x6D69547972657571, 0xE900000000000065), (v15 & 1) == 0))
  {

    goto LABEL_26;
  }

  sub_25E980E4C(*(v0 + 56) + 32 * v14, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v16 = v21;
LABEL_27:
  *(inited + 104) = v16;
  v17 = sub_25E980DE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC58, &qword_25E9DBB00);
  swift_arrayDestroy();
  sub_25E9B9054(v17);
  v19 = v18;

  return v19;
}

BOOL IERequestGrainMetricsRecord.SELFShouldEmit.getter()
{
  v1 = v0[18];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[6];
  v3 = v0[15];
  v4 = v0[17] == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00;
  if (!v4 && (sub_25E9D8300() & 1) == 0)
  {
    return 0;
  }

  return v2 > 0 || v3 > 0;
}

unsigned int *IERequestGrainMetricsRecord.getSELFEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v130 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v129 = &v118 - v6;
  MEMORY[0x28223BE20](v5);
  v128 = &v118 - v7;
  v8 = sub_25E9D77F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v127 = &v118 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v118 - v16;
  MEMORY[0x28223BE20](v15);
  v125 = &v118 - v17;
  v18 = *v0;
  v139 = v0[1];
  v140 = v18;
  v19 = v0[2];
  v137 = v0[3];
  v138 = v19;
  v20 = v0[4];
  v135 = v0[5];
  v136 = v20;
  v21 = v0[6];
  v22 = v0[7];
  v23 = v0[9];
  v133 = v0[8];
  v134 = v22;
  v24 = v0[10];
  v131 = v21;
  v132 = v24;
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[21];
  v141 = v1[32];
  v142 = v25;
  v28 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = v28;
  v123 = v8;
  v124 = v26;
  v30 = [objc_allocWithZone(MEMORY[0x277D59E78]) init];
  if (!v30)
  {

LABEL_26:
    if (qword_27FD0D588 != -1)
    {
LABEL_62:
      swift_once();
    }

    v56 = sub_25E9D7F10();
    __swift_project_value_buffer(v56, qword_27FD0DAD0);
    v57 = sub_25E9D7F00();
    v58 = sub_25E9D8120();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_25E971000, v57, v58, "PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary init failed!", v59, 2u);
      MEMORY[0x25F8C51A0](v59, -1, -1);
    }

    return 0;
  }

  v31 = v30;
  v157[0] = v30;
  v32 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v32)
  {
    if (qword_27FD0D588 != -1)
    {
      swift_once();
    }

    v66 = sub_25E9D7F10();
    __swift_project_value_buffer(v66, qword_27FD0DAD0);
    v67 = sub_25E9D7F00();
    v68 = sub_25E9D8120();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_25E971000, v67, v68, "PNRODSchemaPNRODClientEventMetadata init failed!", v69, 2u);
      MEMORY[0x25F8C51A0](v69, -1, -1);
    }

    return 0;
  }

  v119 = v12;
  v120 = v29;
  v121 = v32;
  v122 = v9;
  v33 = sub_25E983188();
  v34 = sub_25E9BB530(v33);

  v35 = *(v34 + 2);
  if (v35)
  {
    v12 = (v34 + 32);
    do
    {
      v36 = *v12++;
      [v31 addRequestFeatureTag_];
      --v35;
    }

    while (v35);
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v35 = v133;
  v37 = v134;
  v38 = v132;
  if (HIDWORD(v23))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  [v31 setNumQueriesCreated_];
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (HIDWORD(v37))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  [v31 setNumPlansCreated_];
  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (HIDWORD(v38))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v31 setNumActionsCreated_];
  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (HIDWORD(v35))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
    goto LABEL_49;
  }

  [v31 setNumPlansCreatedForResponse_];
  [v31 setNumQueriesCreated_];
  v143[0] = v140;
  v143[1] = v139;
  v143[2] = v138;
  v143[3] = v137;
  v143[4] = v136;
  v143[5] = v135;
  v143[6] = v131;
  v143[7] = v37;
  v143[8] = v35;
  v143[9] = v23;
  v143[10] = v38;
  v144 = *(v1 + 11);
  v145 = *(v1 + 13);
  v146 = *(v1 + 15);
  v147 = *(v1 + 17);
  v148 = v124;
  v149 = v142;
  v150 = v27;
  v39 = *(v1 + 14);
  v155 = *(v1 + 15);
  v40 = *(v1 + 12);
  v41 = *(v1 + 13);
  v154 = v39;
  v153 = v41;
  v151 = *(v1 + 11);
  v152 = v40;
  v156 = v141;
  v42 = sub_25E9BA3F0();
  v43 = v42;
  v44 = 0;
  v45 = v42 + 64;
  v46 = 1 << *(v42 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v42 + 64);
  v49 = (v46 + 63) >> 6;
  if (v48)
  {
    while (1)
    {
      v50 = v44;
LABEL_22:
      v51 = *(*(v43 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(v48)))));
      v52 = objc_allocWithZone(MEMORY[0x277D59E90]);

      v53 = [v52 init];
      if (!v53)
      {
        break;
      }

      v54 = v53;
      v48 &= v48 - 1;
      [v53 setMetricValue_];
      v143[0] = v54;
      v55 = v54;
      swift_setAtWritableKeyPath();

      v44 = v50;
      if (!v48)
      {
        goto LABEL_19;
      }
    }

    if (qword_27FD0D588 != -1)
    {
      swift_once();
    }

    v112 = sub_25E9D7F10();
    __swift_project_value_buffer(v112, qword_27FD0DAD0);
    v113 = sub_25E9D7F00();
    v114 = sub_25E9D8120();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v120;
    if (v115)
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_25E971000, v113, v114, "PNROnDeviceProvisionalPNRIntervalDurationMetric init failed!", v117, 2u);
      MEMORY[0x25F8C51A0](v117, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  while (1)
  {
LABEL_19:
    v50 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v50 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v50);
    ++v44;
    if (v48)
    {
      goto LABEL_22;
    }
  }

  v134 = v157[0];
  v61 = v128;
  sub_25E9D77B0();
  v63 = v122;
  v62 = v123;
  v64 = *(v122 + 48);
  if (v64(v61, 1, v123) == 1)
  {
    sub_25E981210(v61, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v65 = 0;
  }

  else
  {
    v70 = v125;
    (*(v63 + 32))(v125, v61, v62);
    v71 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v72 = sub_25E9D77D0();
    v65 = [v71 initWithNSUUID_];

    (*(v63 + 8))(v70, v62);
  }

  v12 = v120;
  [v134 setClientRequestId_];

  v73 = v129;
  sub_25E9D77B0();
  if (v64(v73, 1, v62) == 1)
  {
    sub_25E981210(v73, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v74 = 0;
  }

  else
  {
    v75 = v122;
    v76 = v126;
    (*(v122 + 32))(v126, v73, v62);
    v77 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v78 = sub_25E9D77D0();
    v74 = [v77 initWithNSUUID_];

    (*(v75 + 8))(v76, v62);
  }

  [v134 setRawSessionId_];

  v79 = v130;
  sub_25E9D77B0();
  if (v64(v79, 1, v62) == 1)
  {
    sub_25E981210(v79, &qword_27FD0D7D8, &qword_25E9D9BC0);
    v80 = 0;
    v35 = v121;
    v81 = v122;
    v82 = 0x279A43000;
  }

  else
  {
    v81 = v122;
    v83 = v127;
    (*(v122 + 32))(v127, v79, v62);
    v84 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v85 = sub_25E9D77D0();
    v82 = 0x279A43000uLL;
    v80 = [v84 initWithNSUUID_];

    (*(v81 + 8))(v83, v62);
    v35 = v121;
  }

  [v134 setClientSessionId_];

  v86 = v141;
  if (v141)
  {
    sub_25E9A8130();
    v86 = v87;
  }

  v88 = v134;
  [v134 setFailureInfo_];

  v89 = sub_25E9D8070();
  [v88 setToolIds_];

  v90 = sub_25E9D8070();
  [v88 setBundleIds_];

  v91 = v119;
  sub_25E9D77E0();
  v92 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v93 = sub_25E9D77D0();
  v94 = [v92 *(v82 + 2808)];

  (*(v81 + 8))(v91, v62);
  [v35 setPnrodId_];

  [v12 setEventMetadata_];
  [v12 setPnrodIntelligenceFlowRequestGrainSummary_];
  if (qword_27FD0D588 != -1)
  {
    goto LABEL_71;
  }

LABEL_49:
  v95 = sub_25E9D7F10();
  __swift_project_value_buffer(v95, qword_27FD0DAD0);
  v96 = v12;
  v97 = sub_25E9D7F00();
  v98 = sub_25E9D8120();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v143[0] = v100;
    *v99 = 136315394;
    v101 = [v96 qualifiedMessageName];
    v102 = sub_25E9D7FB0();
    v104 = v103;

    v105 = sub_25E9887EC(v102, v104, v143);

    *(v99 + 4) = v105;
    *(v99 + 12) = 2080;
    v106 = [v96 formattedJsonBody];
    if (v106)
    {
      v107 = v106;
      v108 = sub_25E9D7FB0();
      v110 = v109;
    }

    else
    {
      v110 = 0xE500000000000000;
      v108 = 0x3E4C494E3CLL;
    }

    v111 = sub_25E9887EC(v108, v110, v143);

    *(v99 + 14) = v111;
    _os_log_impl(&dword_25E971000, v97, v98, "Creating %s\n%s", v99, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v100, -1, -1);
    MEMORY[0x25F8C51A0](v99, -1, -1);
  }

  else
  {
  }

  return v12;
}

char *sub_25E9BB530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 <= 2)
      {
        if (!v4)
        {
          goto LABEL_4;
        }

        if (v4 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v10 = *(v3 + 3);
          v8 = v7 + 1;
          v9 = 1;
          if (v7 >= v10 >> 1)
          {
            v3 = sub_25E983E7C((v10 > 1), v7 + 1, 1, v3);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v12 = *(v3 + 3);
          v8 = v7 + 1;
          if (v7 >= v12 >> 1)
          {
            v3 = sub_25E983E7C((v12 > 1), v7 + 1, 1, v3);
          }

          v9 = 2;
        }
      }

      else if (v4 > 4)
      {
        if (v4 == 5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v11 = *(v3 + 3);
          v8 = v7 + 1;
          if (v7 >= v11 >> 1)
          {
            v3 = sub_25E983E7C((v11 > 1), v7 + 1, 1, v3);
          }

          v9 = 4;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
          }

          v7 = *(v3 + 2);
          v14 = *(v3 + 3);
          v8 = v7 + 1;
          if (v7 >= v14 >> 1)
          {
            v3 = sub_25E983E7C((v14 > 1), v7 + 1, 1, v3);
          }

          v9 = 7;
        }
      }

      else if (v4 == 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        v8 = v7 + 1;
        if (v7 >= v6 >> 1)
        {
          v3 = sub_25E983E7C((v6 > 1), v7 + 1, 1, v3);
        }

        v9 = 5;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25E983E7C(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v13 = *(v3 + 3);
        v8 = v7 + 1;
        if (v7 >= v13 >> 1)
        {
          v3 = sub_25E983E7C((v13 > 1), v7 + 1, 1, v3);
        }

        v9 = 8;
      }

      *(v3 + 2) = v8;
      *&v3[4 * v7 + 32] = v9;
LABEL_4:
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_25E9BB820()
{
  v1 = v0[18];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[6];
  v3 = v0[15];
  v4 = v0[17] == 0xD00000000000001ELL && v1 == 0x800000025E9DDD00;
  if (!v4 && (sub_25E9D8300() & 1) == 0)
  {
    return 0;
  }

  return v2 > 0 || v3 > 0;
}

uint64_t sub_25E9BB8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_25E9BB8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC88, &qword_25E9DBB80);
  MEMORY[0x28223BE20](v0 - 8);
  v98 = &v88 - v1;
  v2 = sub_25E9D7E20();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC90, &qword_25E9DBB88);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v99 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v88 - v10;
  MEMORY[0x28223BE20](v9);
  v100 = &v88 - v11;
  v12 = sub_25E9D7C00();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v104 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC98, &qword_25E9DBB90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v88 - v15;
  v17 = sub_25E9D7D50();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v105 = &v88 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCA0, &qword_25E9DBB98);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v88 - v23;
  v25 = sub_25E9D7D00();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v108 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCA8, qword_25E9DBBA0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v88 - v29;
  v31 = sub_25E9D7DA0();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E9D7C90();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v35 = &qword_27FD0DCA8;
    v36 = qword_25E9DBBA0;
    v37 = v30;
LABEL_7:
    sub_25E981210(v37, v35, v36);
    return 0;
  }

  (*(v32 + 32))(v34, v30, v31);
  sub_25E9D7D90();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    (*(v32 + 8))(v34, v31);
    v35 = &qword_27FD0DCA0;
    v36 = &qword_25E9DBB98;
    v37 = v24;
    goto LABEL_7;
  }

  v93 = v34;
  v38 = v108;
  (*(v26 + 32))(v108, v24, v25);
  sub_25E9D7CF0();
  v40 = v106;
  v39 = v107;
  if ((*(v106 + 48))(v16, 1, v107) == 1)
  {
    (*(v26 + 8))(v38, v25);
    (*(v32 + 8))(v93, v31);
    v35 = &qword_27FD0DC98;
    v36 = &qword_25E9DBB90;
    v37 = v16;
    goto LABEL_7;
  }

  v91 = v26;
  v92 = v25;
  v42 = v105;
  (*(v40 + 32))(v105, v16, v39);
  (*(v40 + 16))(v20, v42, v39);
  if ((*(v40 + 88))(v20, v39) != *MEMORY[0x277D23608])
  {
    v50 = *(v40 + 8);
    v50(v42, v39);
    (*(v91 + 8))(v108, v92);
    (*(v32 + 8))(v93, v31);
    v50(v20, v39);
    return 0;
  }

  (*(v40 + 96))(v20, v39);
  v43 = v102;
  v44 = v104;
  v45 = v20;
  v46 = v103;
  (*(v102 + 32))(v104, v45, v103);
  v47 = v100;
  sub_25E9D7BF0();
  v48 = sub_25E9D78C0();
  v90 = *(v48 - 8);
  v49 = *(v90 + 48);
  if (v49(v47, 1, v48) == 1)
  {
    (*(v43 + 8))(v44, v46);
    (*(v40 + 8))(v105, v107);
    (*(v91 + 8))(v108, v92);
    (*(v32 + 8))(v93, v31);
    v35 = &qword_27FD0DC90;
    v36 = &qword_25E9DBB88;
    v37 = v47;
    goto LABEL_7;
  }

  sub_25E981210(v47, &qword_27FD0DC90, &qword_25E9DBB88);
  v51 = v101;
  sub_25E9D7BF0();
  v100 = v48;
  v89 = v49;
  result = (v49)(v51, 1, v48);
  if (result == 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v52 = v98;
  sub_25E9D78B0();
  v53 = sub_25E9D78D0();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 48))(v52, 1, v53);
  v56 = v108;
  v57 = v99;
  v58 = v90;
  if (v55 == 1)
  {
    sub_25E981210(v52, &qword_27FD0DC88, &qword_25E9DBB80);
    v59 = v89;
    goto LABEL_23;
  }

  v60 = (*(v54 + 88))(v52, v53);
  v59 = v89;
  if (v60 != *MEMORY[0x277D234B0])
  {
    (*(v54 + 8))(v52, v53);
LABEL_23:
    v82 = *(v58 + 8);
    v83 = v100;
    v82(v101, v100);
    v84 = v104;
    sub_25E9D7BF0();
    result = v59(v57, 1, v83);
    if (result != 1)
    {
      v85 = sub_25E9823C8(v57);
      v87 = v86;
      (*(v102 + 8))(v84, v103, v85);
      (*(v106 + 8))(v105, v107);
      (*(v91 + 8))(v56, v92);
      (*(v32 + 8))(v93, v31);
      v82(v57, v83);
      return v87;
    }

    goto LABEL_26;
  }

  (*(v54 + 96))(v52, v53);
  v62 = v95;
  v61 = v96;
  v63 = v97;
  (*(v96 + 32))(v95, v52, v97);
  (*(v58 + 8))(v101, v100);
  v64 = v94;
  (*(v61 + 16))(v94, v62, v63);
  v110[0] = 89;
  type metadata accessor for PNRError();
  swift_allocObject();
  v65 = sub_25E9A7B94(v64, v110);
  if (qword_27FD0D5A0 != -1)
  {
    swift_once();
  }

  v66 = sub_25E9D7F10();
  __swift_project_value_buffer(v66, qword_27FD0DB18);

  v67 = sub_25E9D7F00();
  v68 = sub_25E9D8120();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v104;
  if (v69)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v109 = v72;
    *v71 = 136315138;
    v73 = sub_25E9A7C94();
    v75 = sub_25E9887EC(v73, v74, &v109);

    *(v71 + 4) = v75;
    v70 = v104;
    _os_log_impl(&dword_25E971000, v67, v68, "Found developerDefinedError: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x25F8C51A0](v72, -1, -1);
    MEMORY[0x25F8C51A0](v71, -1, -1);
  }

  v77 = v102;
  v76 = v103;
  v78 = v106;
  type metadata accessor for PNRFailureInfo();
  v79 = swift_allocObject();
  *(v79 + 16) = 9733;
  *(v79 + 18) = 42;
  *(v79 + 24) = v65;
  *(v79 + 32) = 0u;
  *(v79 + 48) = 0u;

  v81 = sub_25E981274(v80, v79);

  (*(v96 + 8))(v95, v97);
  (*(v77 + 8))(v70, v76);
  (*(v78 + 8))(v105, v107);
  (*(v91 + 8))(v108, v92);
  (*(v32 + 8))(v93, v31);
  return v81;
}

uint64_t _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(uint64_t a1)
{
  v2 = sub_25E9D7D60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v84 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v71 - v6;
  v7 = sub_25E9D7C20();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E9D7BB0();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E9D7DC0();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC78, &qword_25E9DBB78);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v92 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v18 = sub_25E9D7BD0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v90 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  if (qword_27FD0D5A0 != -1)
  {
    swift_once();
  }

  v24 = sub_25E9D7F10();
  v25 = __swift_project_value_buffer(v24, qword_27FD0DB18);
  v86 = *(v19 + 16);
  v87 = v19 + 16;
  v86(v23, a1, v18);
  v89 = v25;
  v26 = sub_25E9D7F00();
  v27 = sub_25E9D8120();
  v28 = os_log_type_enabled(v26, v27);
  v91 = v19;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v73 = v2;
    v30 = v29;
    v31 = swift_slowAlloc();
    v74 = a1;
    v72 = v17;
    v32 = v31;
    v93[0] = v31;
    *v30 = 136315138;
    sub_25E9BD07C();
    v33 = sub_25E9D78A0();
    v34 = v3;
    v36 = v35;
    v37 = *(v19 + 8);
    v38 = v18;
    v88 = v37;
    v37(v23, v18);
    v39 = sub_25E9887EC(v33, v36, v93);
    v3 = v34;

    *(v30 + 4) = v39;
    _os_log_impl(&dword_25E971000, v26, v27, "Processing criticalError from transcript: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v40 = v32;
    v17 = v72;
    a1 = v74;
    MEMORY[0x25F8C51A0](v40, -1, -1);
    v41 = v30;
    v2 = v73;
    MEMORY[0x25F8C51A0](v41, -1, -1);
  }

  else
  {

    v42 = *(v19 + 8);
    v38 = v18;
    v88 = v42;
    v42(v23, v18);
  }

  sub_25E9D7BC0();
  v43 = sub_25E9D7CE0();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v17, 1, v43);
  v46 = v92;
  if (v45 == 1)
  {
    goto LABEL_7;
  }

  sub_25E9BD0D4(v17, v92);
  v57 = (*(v44 + 88))(v46, v43);
  if (v57 == *MEMORY[0x277D235E8])
  {
    (*(v44 + 96))(v46, v43);
    v58 = v85;
    (*(v3 + 32))(v85, v46, v2);
    v59 = v84;
    (*(v3 + 16))(v84, v58, v2);
    LOBYTE(v93[0]) = 89;
    type metadata accessor for PNRError();
    swift_allocObject();
    v60 = sub_25E9A7B54(v59, v93);
    (*(v3 + 8))(v58, v2);
    type metadata accessor for PNRFailureInfo();
    v61 = swift_allocObject();
    *(v61 + 16) = 16129;
    *(v61 + 18) = 63;
    *(v61 + 24) = v60;
    *(v61 + 32) = 0u;
    *(v61 + 48) = 0u;
    goto LABEL_20;
  }

  if (v57 == *MEMORY[0x277D235D0])
  {
    (*(v44 + 96))(v46, v43);
    v66 = v81;
    v65 = v82;
    v67 = v83;
    (*(v82 + 32))(v81, v46, v83);
    v69.n128_f64[0] = sub_25E9BD158();
LABEL_19:
    v61 = v68;
    (*(v65 + 8))(v66, v67, v69);
    goto LABEL_20;
  }

  if (v57 == *MEMORY[0x277D235D8])
  {
    (*(v44 + 96))(v46, v43);
    v66 = v78;
    v65 = v79;
    v67 = v80;
    (*(v79 + 32))(v78, v46, v80);
    v69.n128_f64[0] = sub_25E982484();
    goto LABEL_19;
  }

  if (v57 == *MEMORY[0x277D235E0])
  {
    (*(v44 + 96))(v46, v43);
    v66 = v75;
    v65 = v76;
    v67 = v77;
    (*(v76 + 32))(v75, v46, v77);
    v68 = sub_25E981D64();
    goto LABEL_19;
  }

  (*(v44 + 8))(v46, v43);
LABEL_7:
  v47 = v90;
  v48 = v38;
  v86(v90, a1, v38);
  v49 = sub_25E9D7F00();
  v50 = sub_25E9D8120();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v93[0] = v52;
    *v51 = 136315138;
    sub_25E9BD07C();
    v53 = sub_25E9D78A0();
    v55 = v54;
    v88(v47, v48);
    v56 = sub_25E9887EC(v53, v55, v93);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_25E971000, v49, v50, "Unrecognized error from criticalError: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x25F8C51A0](v52, -1, -1);
    MEMORY[0x25F8C51A0](v51, -1, -1);
  }

  else
  {

    v88(v47, v38);
  }

  sub_25E9BD07C();
  v62 = sub_25E9D78A0();
  v64 = v63;
  type metadata accessor for PNRFailureInfo();
  v61 = swift_allocObject();
  *(v61 + 16) = 16129;
  *(v61 + 18) = 63;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = 0;
  *(v61 + 48) = v62;
  *(v61 + 56) = v64;
LABEL_20:
  sub_25E981210(v17, &qword_27FD0DC78, &qword_25E9DBB78);
  return v61;
}

unint64_t sub_25E9BD07C()
{
  result = qword_27FD0DC80;
  if (!qword_27FD0DC80)
  {
    sub_25E9D7BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DC80);
  }

  return result;
}

uint64_t sub_25E9BD0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DC78, &qword_25E9DBB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_25E9BD158()
{
  v0 = sub_25E9D7D60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB0, &unk_25E9DBBF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  sub_25E9D7DB0();
  v16 = sub_25E9D7E10();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_25E9BD758(v15, v13);
    v19 = (*(v17 + 88))(v13, v16);
    if (v19 == *MEMORY[0x277D23638])
    {
      (*(v17 + 96))(v13, v16);
      (*(v1 + 32))(v4, v13, v0);
      (*(v1 + 16))(v9, v4, v0);
      v37 = 89;
      type metadata accessor for PNRError();
      swift_allocObject();
      v18 = sub_25E9A7B54(v9, &v37);
      v20 = qword_27FD0D5A0;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_25E9D7F10();
      __swift_project_value_buffer(v21, qword_27FD0DB18);
      v22 = sub_25E9D7F00();
      v23 = sub_25E9D8120();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v36 = v33;
        *v24 = 136315138;
        v25 = sub_25E9A7C94();
        v27 = v1;
        v28 = sub_25E9887EC(v25, v26, &v36);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_25E971000, v22, v23, "Processing TranscriptProtoSessionCoordinatorError.other %s", v24, 0xCu);
        v29 = v33;
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x25F8C51A0](v29, -1, -1);
        MEMORY[0x25F8C51A0](v24, -1, -1);

        (*(v27 + 8))(v4, v0);
      }

      else
      {

        (*(v1 + 8))(v4, v0);
      }
    }

    else
    {
      if (v19 == *MEMORY[0x277D23628])
      {
        (*(v17 + 96))(v13, v16);
        (*(v1 + 32))(v9, v13, v0);
        (*(v1 + 16))(v7, v9, v0);
        v35 = 89;
        type metadata accessor for PNRError();
        swift_allocObject();
        v30 = &v35;
      }

      else
      {
        if (v19 != *MEMORY[0x277D23630])
        {
          (*(v17 + 8))(v13, v16);
          v18 = 0;
          goto LABEL_15;
        }

        (*(v17 + 96))(v13, v16);
        (*(v1 + 32))(v9, v13, v0);
        (*(v1 + 16))(v7, v9, v0);
        v34 = 89;
        type metadata accessor for PNRError();
        swift_allocObject();
        v30 = &v34;
      }

      v18 = sub_25E9A7B54(v7, v30);
      (*(v1 + 8))(v9, v0);
    }
  }

LABEL_15:
  sub_25E9BD6F0(v15);
  type metadata accessor for PNRFailureInfo();
  v31 = swift_allocObject();
  *(v31 + 16) = 16130;
  *(v31 + 18) = 63;
  *(v31 + 24) = v18;
  result = 0.0;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  return result;
}

uint64_t sub_25E9BD6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB0, &unk_25E9DBBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E9BD758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB0, &unk_25E9DBBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9BD7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCF0, &qword_25E9DBDA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25E9DA580;
  v2 = v0[2];
  *(v1 + 56) = type metadata accessor for RequestGrainDimensionsSpec();
  *(v1 + 64) = &off_2870ACB78;
  *(v1 + 32) = v2;
  v3 = v0[3];
  v4 = type metadata accessor for IETranscriptLatencyIntervalSpec();
  *(v1 + 96) = v4;
  *(v1 + 104) = &off_2870ACB88;
  *(v1 + 72) = v3;
  *(v1 + 136) = v4;
  *(v1 + 144) = &off_2870ACB88;
  v5 = v0[5];
  *(v1 + 112) = v0[4];
  *(v1 + 176) = v4;
  *(v1 + 184) = &off_2870ACB88;
  *(v1 + 152) = v5;
  *(v1 + 216) = v4;
  *(v1 + 224) = &off_2870ACB88;
  v7 = v0[6];
  v6 = v0[7];
  *(v1 + 192) = v7;
  *(v1 + 256) = v4;
  *(v1 + 264) = &off_2870ACB88;
  *(v1 + 232) = v6;

  return v1;
}

uint64_t sub_25E9BD8BC(uint64_t a1)
{
  v2 = sub_25E9BD7C8();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_25E986C6C(v4, v8);
      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v6 + 8))(a1, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

void *IERequestGrainSpec.deinit()
{

  return v0;
}

uint64_t IERequestGrainSpec.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_25E9BDA40(uint64_t a1)
{
  type metadata accessor for RequestGrainDimensionsSpec();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 128) = MEMORY[0x277D84F90];
  *(v2 + 136) = v3;
  type metadata accessor for IERequestGrainFeatureTags();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 20) = 0;
  *(v2 + 144) = v4;
  *(v1 + 16) = v2;
  type metadata accessor for IETranscriptLatencyIntervalSpec();
  v5 = swift_allocObject();
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[1] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v6 = sub_25E9D7B60();
  v7 = *(v6 - 8);
  v46 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25E9D96A0;
  v50 = *(v7 + 104);
  v10 = v6;
  (v50)(v9 + v8, *MEMORY[0x277D23528], v6);
  type metadata accessor for IETranscriptNextEvent(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  v13 = sub_25E9D7A10();
  v47 = *(*(v13 - 8) + 56);
  v47(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v9;
  v14 = MEMORY[0x277D84F90];
  *(v11 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v15 = type metadata accessor for IETranscriptEventFilter(0);
  v53 = v15;
  v54 = &off_2870ACBA8;
  v52[0] = v11;
  swift_beginAccess();
  sub_25E986D14(v52, (v5 + 1));
  swift_endAccess();
  v16 = v10;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25E9D9690;
  v51 = v8;
  v18 = v17 + v8;
  v19 = v13;
  v43 = *MEMORY[0x277D23508];
  v50(v18);
  v45 = *MEMORY[0x277D23500];
  v50(v18 + v46);
  type metadata accessor for IETranscriptLastEvent(0);
  v20 = swift_allocObject();
  v47(v20 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v20 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v17;
  *(v20 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = v14;
  v53 = v15;
  v54 = &off_2870ACBA8;
  v48 = v15;
  v52[0] = v20;
  swift_beginAccess();
  sub_25E986D14(v52, v5 + 56);
  swift_endAccess();
  v49[3] = v5;
  v21 = swift_allocObject();
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[5] = 0u;
  if (qword_27FD0D5D8 != -1)
  {
    swift_once();
  }

  v22 = qword_27FD0F560;
  v23 = swift_allocObject();
  v47(v23 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v23 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v22;
  *(v23 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v15;
  v54 = &off_2870ACBA8;
  v52[0] = v23;
  swift_beginAccess();

  sub_25E986D14(v52, (v21 + 1));
  swift_endAccess();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_25E9D9690;
  v42 = *MEMORY[0x277D234C0];
  v50(v24 + v51);
  (v50)(v24 + v51 + v46, v45, v16);
  v25 = swift_allocObject();
  v47(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v24;
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v15;
  v54 = &off_2870ACBA8;
  v52[0] = v25;
  swift_beginAccess();
  sub_25E986D14(v52, v21 + 56);
  swift_endAccess();
  v49[4] = v21;
  v26 = swift_allocObject();
  v26[2] = 0u;
  v26[3] = 0u;
  v26[4] = 0u;
  v26[5] = 0u;
  v26[1] = 0u;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_25E9D96A0;
  (v50)(v27 + v51, *MEMORY[0x277D234C8], v16);
  type metadata accessor for IETranscriptAllEvent(0);
  v28 = swift_allocObject();
  v47(v28 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v28 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v27;
  *(v28 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v48;
  v54 = &off_2870ACBA8;
  v52[0] = v28;
  swift_beginAccess();
  sub_25E986D14(v52, (v26 + 1));
  swift_endAccess();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25E9D96A0;
  v44 = *MEMORY[0x277D23520];
  v50(v29 + v51);
  v30 = swift_allocObject();
  v47(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v29;
  *(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v48;
  v54 = &off_2870ACBA8;
  v52[0] = v30;
  swift_beginAccess();
  sub_25E986D14(v52, v26 + 56);
  swift_endAccess();
  v49[5] = v26;
  v31 = swift_allocObject();
  v31[2] = 0u;
  v31[3] = 0u;
  v31[4] = 0u;
  v31[5] = 0u;
  v31[1] = 0u;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25E9D9690;
  (v50)(v32 + v51, v42, v16);
  (v50)(v32 + v51 + v46, *MEMORY[0x277D234F0], v16);
  v33 = swift_allocObject();
  v47(v33 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v33 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v32;
  *(v33 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v48;
  v54 = &off_2870ACBA8;
  v52[0] = v33;
  swift_beginAccess();
  sub_25E986D14(v52, (v31 + 1));
  swift_endAccess();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25E9D96A0;
  (v50)(v34 + v51, v44, v16);
  v35 = swift_allocObject();
  v47(v35 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v35 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v34;
  *(v35 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v48;
  v54 = &off_2870ACBA8;
  v52[0] = v35;
  swift_beginAccess();
  sub_25E986D14(v52, v31 + 56);
  swift_endAccess();
  v49[6] = v31;
  v36 = swift_allocObject();
  v36[2] = 0u;
  v36[3] = 0u;
  v36[4] = 0u;
  v36[5] = 0u;
  v36[1] = 0u;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_25E9D96A0;
  (v50)(v37 + v51, v44, v16);
  v38 = swift_allocObject();
  v47(v38 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v13);
  *(v38 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v37;
  *(v38 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v48;
  v54 = &off_2870ACBA8;
  v52[0] = v38;
  swift_beginAccess();
  sub_25E986D14(v52, (v36 + 1));
  swift_endAccess();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25E9D9690;
  (v50)(v39 + v51, v43, v16);
  (v50)(v39 + v51 + v46, v45, v16);
  v40 = swift_allocObject();
  v47(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v19);
  *(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v39;
  *(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v53 = v48;
  v54 = &off_2870ACBA8;
  v52[0] = v40;
  swift_beginAccess();
  sub_25E986D14(v52, v36 + 56);
  swift_endAccess();
  result = v49;
  v49[7] = v36;
  return result;
}

uint64_t sub_25E9BE6A0(uint64_t a1)
{
  v2 = v1;
  v256 = sub_25E9D7BD0();
  v255 = *(v256 - 1);
  MEMORY[0x28223BE20](v256);
  v254 = &v240 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_25E9D7CA0();
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v250 = (&v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D878, &unk_25E9DBD50);
  MEMORY[0x28223BE20](v6 - 8);
  v259 = (&v240 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v247 = (&v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v265 = &v240 - v11;
  v266 = sub_25E9D7A40();
  v274 = *(v266 - 1);
  MEMORY[0x28223BE20](v266);
  v282 = &v240 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCB8, &qword_25E9DBD60);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v240 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v252 = &v240 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v257 = &v240 - v20;
  MEMORY[0x28223BE20](v19);
  v262 = &v240 - v21;
  v263 = sub_25E9D7B40();
  v270 = *(v263 - 8);
  v22 = MEMORY[0x28223BE20](v263);
  v253 = &v240 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v261 = &v240 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCC0, &qword_25E9DBD68);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v251 = (&v240 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v260 = &v240 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v264 = (&v240 - v31);
  MEMORY[0x28223BE20](v30);
  v272 = (&v240 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCC8, &qword_25E9DBD70);
  MEMORY[0x28223BE20](v33 - 8);
  v275 = (&v240 - v34);
  v276 = sub_25E9D7AC0();
  v269 = *(v276 - 8);
  v35 = MEMORY[0x28223BE20](v276);
  v258 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v271 = &v240 - v37;
  v280 = sub_25E9D7E00();
  v268 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v281 = &v240 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCD0, &qword_25E9DBD78);
  MEMORY[0x28223BE20](v39 - 8);
  v290 = &v240 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCD8, &qword_25E9DBD80);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v285 = &v240 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v291 = &v240 - v44;
  v45 = sub_25E9D7CD0();
  v46 = *(v45 - 8);
  v288 = v45;
  v289 = v46;
  MEMORY[0x28223BE20](v45);
  v287 = &v240 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25E9D7980();
  v278 = *(v48 - 8);
  v279 = v48;
  v49 = MEMORY[0x28223BE20](v48);
  v273 = &v240 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v277 = &v240 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE0, &qword_25E9DBD88);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v240 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE8, &unk_25E9DBD90);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v240 - v56;
  v58 = sub_25E9D7AA0();
  v283 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v60 = &v240 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v240 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v65 = MEMORY[0x28223BE20](v64 - 8);
  v67 = &v240 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v286 = &v240 - v68;
  if (sub_25E9C1098())
  {
    *(v2 + 14) = sub_25E9D79D0();
    *(v2 + 15) = v69;
  }

  v284 = v2;
  v267 = a1;
  sub_25E9D79A0();
  v70 = sub_25E9D7A80();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v63, 1, v70) == 1)
  {
    sub_25E981210(v63, &qword_27FD0D880, &unk_25E9D97C0);
    v72 = sub_25E9D7B90();
    v73 = v286;
    (*(*(v72 - 8) + 56))(v286, 1, 1, v72);
    return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  v246 = v16;
  v74 = v286;
  sub_25E9D7A70();
  v76 = *(v71 + 8);
  v75 = v71 + 8;
  v77 = v70;
  v73 = v74;
  v76(v63, v77);
  v78 = sub_25E9D7B90();
  v79 = *(v78 - 8);
  if ((*(v79 + 48))(v74, 1, v78) == 1)
  {
    return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9811A8(v74, v67, &qword_27FD0D888, &qword_25E9DBDA0);
  result = (*(v79 + 88))(v67, v78);
  if (result == *MEMORY[0x277D23588])
  {
    (*(v79 + 96))(v67, v78);
    v81 = v283;
    (*(v283 + 32))(v60, v67, v58);
    sub_25E9D7A90();
    v75 = sub_25E9D7C70();
    v82 = *(v75 - 8);
    v83 = (*(v82 + 48))(v54, 1, v75);
    v84 = v284;
    if (v83 == 1)
    {
      (*(v81 + 8))(v60, v58);
      sub_25E981210(v54, &qword_27FD0DCE0, &qword_25E9DBD88);
      v85 = sub_25E9D7D20();
      (*(*(v85 - 8) + 56))(v57, 1, 1, v85);
LABEL_15:
      sub_25E981210(v57, &qword_27FD0DCE8, &unk_25E9DBD90);
LABEL_16:
      v103 = *(v84 + 2);
      v88 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (!v88)
      {
        *(v84 + 2) = v104;
        return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
      }

      __break(1u);
      goto LABEL_134;
    }

    sub_25E9D7C60();
    v101 = *(v81 + 8);
    v86 = v81 + 8;
    v101(v60, v58);
    (*(v82 + 8))(v54, v75);
    v58 = sub_25E9D7D20();
    v102 = *(v58 - 8);
    if ((*(v102 + 48))(v57, 1, v58) == 1)
    {
      goto LABEL_15;
    }

    v78 = (*(v102 + 88))(v57, v58);
    v54 = *MEMORY[0x277D23600];
    (*(v102 + 8))(v57, v58);
    if (v78 != v54)
    {
      goto LABEL_16;
    }

    v110 = *(v84 + 11);
    v88 = __OFADD__(v110, 1);
    v111 = v110 + 1;
    if (!v88)
    {
      *(v84 + 11) = v111;
      return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    goto LABEL_137;
  }

  v86 = v284;
  if (result == *MEMORY[0x277D23538])
  {
    (*(v79 + 96))(v67, v78);
    v73 = v277;
    v84 = v278;
    v75 = v279;
    (*(v278 + 32))(v277, v67, v279);
    v87 = *(v86 + 24);
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (!v88)
    {
      *(v86 + 24) = v89;
      if (qword_280F6FE70 == -1)
      {
LABEL_12:
        v90 = sub_25E9D7F10();
        v91 = __swift_project_value_buffer(v90, qword_280F6FE78);
        v92 = v273;
        (*(v84 + 2))(v273, v73, v75);
        v274 = v91;
        v93 = sub_25E9D7F00();
        v94 = sub_25E9D8120();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v292 = v96;
          *v95 = 136315138;
          v97 = sub_25E9D7970();
          v99 = v98;
          v266 = *(v84 + 1);
          v266(v92, v75);
          v100 = sub_25E9887EC(v97, v99, &v292);

          *(v95 + 4) = v100;
          _os_log_impl(&dword_25E971000, v93, v94, "Here is the planResponse%s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x25F8C51A0](v96, -1, -1);
          MEMORY[0x25F8C51A0](v95, -1, -1);
        }

        else
        {

          v266 = *(v84 + 1);
          v266(v92, v75);
        }

        v112 = v290;
        v113 = sub_25E9D7960();
        v73 = v113;
        v114 = *(v113 + 16);
        if (!v114)
        {
LABEL_83:

          v266(v277, v279);
          v73 = v286;
          return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
        }

        v86 = 0;
        v283 = v113 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
        v282 = (v289 + 16);
        v115 = v289 + 8;
        LODWORD(v273) = *MEMORY[0x277D235B0];
        v259 = (v268 + 4);
        v256 = (v269 + 48);
        v255 = v269 + 32;
        v254 = (v269 + 8);
        LODWORD(v267) = *MEMORY[0x277D235A8];
        ++v268;
        v247 = (v269 + 16);
        v250 = (v270 + 2);
        LODWORD(v269) = *MEMORY[0x277D235A0];
        ++v270;
        LODWORD(v249) = *MEMORY[0x277D23598];
        LODWORD(v248) = *MEMORY[0x277D235B8];
        v116 = &qword_27FD0DCD8;
        v265 = (v289 + 8);
        while (1)
        {
          if (v86 >= *(v73 + 16))
          {
            __break(1u);
            goto LABEL_126;
          }

          v119 = v288;
          v120 = v289;
          v121 = v287;
          (*(v289 + 16))(v287, v283 + *(v289 + 72) * v86, v288);
          sub_25E9D7CC0();
          (*(v120 + 8))(v121, v119);
          v93 = sub_25E9D7B20();
          isa = v93[-1].isa;
          if ((*(isa + 6))(v112, 1, v93) == 1)
          {
            sub_25E981210(v112, &qword_27FD0DCD0, &qword_25E9DBD78);
            v117 = sub_25E9D7C50();
            v118 = v291;
            (*(*(v117 - 8) + 56))(v291, 1, 1, v117);
            goto LABEL_31;
          }

          v75 = v116;
          v123 = v291;
          sub_25E9D7B10();
          (*(isa + 1))(v112, v93);
          v118 = v123;
          v116 = v75;
          v93 = sub_25E9D7C50();
          v124 = v93[-1].isa;
          if ((*(v124 + 6))(v118, 1, v93) == 1)
          {
            goto LABEL_31;
          }

          v125 = v285;
          sub_25E9811A8(v118, v285, v75, &qword_25E9DBD80);
          v126 = (*(v124 + 11))(v125, v93);
          if (v126 == v273)
          {
            *(*(v284 + 18) + 19) = 1;
            v127 = sub_25E9D7F00();
            v128 = sub_25E9D8120();
            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              *v129 = 0;
              _os_log_impl(&dword_25E971000, v127, v128, "Found hasCall", v129, 2u);
              v130 = v129;
              v116 = v75;
              MEMORY[0x25F8C51A0](v130, -1, -1);
            }

            (*(v124 + 1))(v285, v93);
            v118 = v291;
            goto LABEL_31;
          }

          if (v126 != v267)
          {
            (*(v124 + 1))(v285, v93);
            goto LABEL_31;
          }

          v131 = v285;
          (*(v124 + 12))(v285, v93);
          (*v259)(v281, v131, v280);
          *(*(v284 + 18) + 16) = 1;
          v132 = sub_25E9D7F00();
          v133 = sub_25E9D8120();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_25E971000, v132, v133, "Found Structured Search Request", v134, 2u);
            v135 = v134;
            v118 = v291;
            MEMORY[0x25F8C51A0](v135, -1, -1);
          }

          v136 = *(sub_25E9D7DE0() + 16);

          v137 = v276;
          if (v136)
          {
            break;
          }

          if (*(sub_25E9D7DD0() + 16))
          {
            sub_25E978F5C(0x6562697263736564, 0xE800000000000000);
            v147 = v146;

            if (v147)
            {
              break;
            }
          }

          else
          {
          }

LABEL_46:
          v93 = v275;
          v142 = v281;
          sub_25E9D7DF0();
          if ((*v256)(v93, 1, v137) != 1)
          {
            v143 = v271;
            (*v255)(v271, v93, v137);
            v93 = v272;
            sub_25E9D7AB0();
            v144 = sub_25E9D7BE0();
            v145 = *(v144 - 8);
            v245 = *(v145 + 48);
            if (v245(v93, 1, v144) == 1)
            {
              (*v254)(v143, v137);
              (*v268)(v281, v280);
              goto LABEL_51;
            }

            v148 = v264;
            sub_25E9811A8(v93, v264, &qword_27FD0DCC0, &qword_25E9DBD68);
            v244 = *(v145 + 88);
            v149 = (v244)(v148, v144);
            v150 = v145;
            if (v149 == v269)
            {
              (*(v145 + 96))(v148, v144);
              v245 = *v148;
              v151 = swift_projectBox();
              v152 = v261;
              v153 = v263;
              (*v250)(v261, v151, v263);
              v154 = v262;
              sub_25E9D7B30();
              v155 = sub_25E9D7C80();
              v156 = *(v155 - 8);
              if ((*(v156 + 48))(v154, 1, v155) == 1)
              {
                (*v270)(v152, v153);
                (*v254)(v271, v276);
                (*v268)(v281, v280);
                v115 = v265;
              }

              else
              {
                v163 = v154;
                v164 = v257;
                sub_25E9811A8(v163, v257, &qword_27FD0DCB8, &qword_25E9DBD60);
                v165 = (*(v156 + 88))(v164, v155);
                v115 = v265;
                if (v165 == v248)
                {
                  *(*(v284 + 18) + 18) = 1;
                  v166 = sub_25E9D7F00();
                  v167 = sub_25E9D8120();
                  v244 = v166;
                  v168 = os_log_type_enabled(v166, v167);
                  v169 = v261;
                  if (v168)
                  {
                    v170 = swift_slowAlloc();
                    *v170 = 0;
                    v171 = v167;
                    v172 = v170;
                    _os_log_impl(&dword_25E971000, v244, v171, "Found hasStructuredSearchReturnTypeCustom", v170, 2u);
                    MEMORY[0x25F8C51A0](v172, -1, -1);
                  }

                  (*v270)(v169, v263);
                }

                else
                {
                  (*v270)(v261, v263);
                }

                (*v254)(v271, v276);
                (*v268)(v281, v280);
                (*(v156 + 8))(v164, v155);
                v154 = v262;
              }

              sub_25E981210(v154, &qword_27FD0DCB8, &qword_25E9DBD60);

              v93 = v272;
              v118 = v291;
              v116 = v75;
              goto LABEL_82;
            }

            if (v149 == v249)
            {
              v241 = *(v145 + 96);
              v242 = v145 + 96;
              v241(v148, v144);
              v243 = *v148;
              v157 = swift_projectBox();
              v158 = v258;
              (*v247)(v258, v157, v276);
              v159 = v260;
              sub_25E9D7AB0();
              if (v245(v159, 1, v144) == 1)
              {
                v160 = *v254;
                v161 = v158;
                v162 = v276;
                (*v254)(v161, v276);
                v160(v271, v162);
                (*v268)(v281, v280);
                goto LABEL_74;
              }

              v173 = v251;
              sub_25E9811A8(v260, v251, &qword_27FD0DCC0, &qword_25E9DBD68);
              v174 = (v244)(v173, v144);
              v175 = v253;
              if (v174 == v269)
              {
                v241(v173, v144);
                v176 = *v173;
                v177 = swift_projectBox();
                v178 = v263;
                (*v250)(v175, v177, v263);
                v179 = v252;
                sub_25E9D7B30();
                v180 = sub_25E9D7C80();
                v181 = v180[-1].isa;
                if ((*(v181 + 6))(v179, 1, v180) == 1)
                {
                  (*v270)(v175, v178);
                  v182 = *v254;
                  v183 = v276;
                  (*v254)(v258, v276);
                  v182(v271, v183);
                  (*v268)(v281, v280);
                  v115 = v265;
                }

                else
                {
                  v187 = v246;
                  sub_25E9811A8(v179, v246, &qword_27FD0DCB8, &qword_25E9DBD60);
                  v188 = (*(v181 + 11))(v187, v180);
                  v189 = v258;
                  v115 = v265;
                  v245 = v176;
                  if (v188 == v248)
                  {
                    *(*(v284 + 18) + 18) = 1;
                    v190 = sub_25E9D7F00();
                    v191 = sub_25E9D8120();
                    if (os_log_type_enabled(v190, v191))
                    {
                      v192 = swift_slowAlloc();
                      *v192 = 0;
                      _os_log_impl(&dword_25E971000, v190, v191, "Found hasStructuredSearchReturnTypeCustom in collection", v192, 2u);
                      MEMORY[0x25F8C51A0](v192, -1, -1);
                    }

                    (*v270)(v253, v263);
                    v193 = *v254;
                    v194 = v276;
                    (*v254)(v258, v276);
                    v193(v271, v194);
                    (*v268)(v281, v280);
                    (*(v181 + 1))(v246, v180);
                  }

                  else
                  {
                    (*v270)(v253, v263);
                    v244 = v180;
                    v195 = *v254;
                    v196 = v276;
                    (*v254)(v189, v276);
                    v195(v271, v196);
                    (*v268)(v281, v280);
                    (*(v181 + 1))(v187, v244);
                  }
                }

                sub_25E981210(v252, &qword_27FD0DCB8, &qword_25E9DBD60);

                v186 = v260;
                v93 = v272;
                v118 = v291;
                v116 = v75;
              }

              else
              {
                v184 = *v254;
                v185 = v276;
                (*v254)(v258, v276);
                v184(v271, v185);
                (*v268)(v281, v280);
                (*(v150 + 8))(v173, v144);
LABEL_74:
                v186 = v260;
                v93 = v272;
                v118 = v291;
                v116 = v75;
                v115 = v265;
              }

              sub_25E981210(v186, &qword_27FD0DCC0, &qword_25E9DBD68);
            }

            else
            {
              (*v254)(v271, v276);
              (*v268)(v281, v280);
              (*(v145 + 8))(v148, v144);
              v93 = v272;
LABEL_51:
              v118 = v291;
              v116 = v75;
              v115 = v265;
            }

LABEL_82:
            sub_25E981210(v93, &qword_27FD0DCC0, &qword_25E9DBD68);
            goto LABEL_31;
          }

          (*v268)(v142, v280);
          sub_25E981210(v93, &qword_27FD0DCC8, &qword_25E9DBD70);
          v115 = v265;
LABEL_31:
          ++v86;
          sub_25E981210(v118, v116, &qword_25E9DBD80);
          v112 = v290;
          if (v114 == v86)
          {
            goto LABEL_83;
          }
        }

        *(*(v284 + 18) + 17) = 1;
        v138 = sub_25E9D7F00();
        v139 = sub_25E9D8120();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          *v140 = 0;
          _os_log_impl(&dword_25E971000, v138, v139, "Found hasStructuredSearchAnswerSynthesis", v140, 2u);
          v141 = v140;
          v118 = v291;
          MEMORY[0x25F8C51A0](v141, -1, -1);
        }

        goto LABEL_46;
      }

LABEL_135:
      swift_once();
      goto LABEL_12;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (result == *MEMORY[0x277D23540])
  {
    (*(v79 + 96))(v67, v78);
    v84 = v266;
    (*(v274 + 32))(v282, v67, v266);
    v105 = *(v86 + 48);
    v88 = __OFADD__(v105, 1);
    v106 = v105 + 1;
    if (v88)
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      v78 = sub_25E983A64(0, *(v78 + 16) + 1, 1, v78);
      *(v86 + 128) = v78;
LABEL_103:
      v213 = *(v78 + 16);
      v212 = *(v78 + 24);
      if (v213 >= v212 >> 1)
      {
        v78 = sub_25E983A64((v212 > 1), v213 + 1, 1, v78);
      }

      *(v78 + 16) = v213 + 1;
      v214 = v78 + 16 * v213;
      *(v214 + 32) = v54;
      *(v214 + 40) = v75;
      *(v86 + 128) = v78;
      swift_endAccess();
      v215 = v259;
      sub_25E9D7A20();
      v216 = sub_25E9D7D40();
      v217 = *(v216 - 8);
      if ((*(v217 + 48))(v215, 1, v216) == 1)
      {
        sub_25E981210(v215, &qword_27FD0D878, &unk_25E9DBD50);
      }

      else
      {
        v57 = sub_25E9D79E0();
        v58 = v218;
        (*(v217 + 8))(v215, v216);
      }

      swift_beginAccess();
      v219 = *(v86 + 136);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v86 + 136) = v219;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v219 = sub_25E983A64(0, *(v219 + 2) + 1, 1, v219);
        *(v86 + 136) = v219;
      }

      v222 = *(v219 + 2);
      v221 = *(v219 + 3);
      if (v222 >= v221 >> 1)
      {
        v219 = sub_25E983A64((v221 > 1), v222 + 1, 1, v219);
      }

      *(v219 + 2) = v222 + 1;
      v223 = &v219[16 * v222];
      *(v223 + 4) = v57;
      *(v223 + 5) = v58;
      *(v86 + 136) = v219;
      swift_endAccess();
      goto LABEL_113;
    }

    *(v86 + 48) = v106;
    v107 = v265;
    sub_25E9D79F0();
    v108 = sub_25E9D7C40();
    v109 = *(v108 - 8);
    if ((*(v109 + 48))(v107, 1, v108) == 1)
    {
      sub_25E981210(v107, &qword_27FD0D8A0, &unk_25E9D97E0);
LABEL_113:
      (*(v274 + 8))(v282, v84);
      return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    v199 = sub_25E9D79E0();
    v201 = v200;
    (*(v109 + 8))(v107, v108);
    if (v199 == 0x6F7365526E616C70 && v201 == 0xEE006E6F6974756CLL)
    {
    }

    else
    {
      v208 = sub_25E9D8300();

      if ((v208 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    v58 = 0xEB00000000646569;
    v57 = 0x6669636570736E75;
    v209 = sub_25E9D7A30();
    if (v210)
    {
      v54 = v209;
    }

    else
    {
      v54 = 0x6669636570736E75;
    }

    if (v210)
    {
      v75 = v210;
    }

    else
    {
      v75 = 0xEB00000000646569;
    }

    swift_beginAccess();
    v78 = *(v86 + 128);
    v211 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 128) = v78;
    if (v211)
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  if (result == *MEMORY[0x277D23568])
  {
    *(*(v284 + 18) + 20) = 1;
LABEL_87:
    (*(v79 + 8))(v67, v78);
    return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23550])
  {
    v197 = *(v284 + 5);
    v88 = __OFADD__(v197, 1);
    v198 = v197 + 1;
    if (!v88)
    {
      *(v284 + 5) = v198;
      goto LABEL_87;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (result == *MEMORY[0x277D23548])
  {
    (*(v79 + 96))(v67, v78);
    v202 = v255;
    v203 = v254;
    v204 = v256;
    result = (*(v255 + 32))(v254, v67, v256);
    v205 = *(v86 + 96);
    v88 = __OFADD__(v205, 1);
    v206 = v205 + 1;
    if (v88)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    *(v86 + 96) = v206;
    v207 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(v203);
    (*(v202 + 8))(v203, v204);
LABEL_94:
    *(v86 + 104) = v207;

    return sub_25E981210(v73, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23578])
  {
    v224 = *(v284 + 9);
    v88 = __OFADD__(v224, 1);
    v225 = v224 + 1;
    if (!v88)
    {
      *(v284 + 9) = v225;
      goto LABEL_87;
    }

    goto LABEL_141;
  }

  if (result == *MEMORY[0x277D23570])
  {
    v226 = *(v284 + 10);
    v88 = __OFADD__(v226, 1);
    v227 = v226 + 1;
    if (!v88)
    {
      *(v284 + 10) = v227;
      goto LABEL_87;
    }

    goto LABEL_142;
  }

  if (result != *MEMORY[0x277D23560])
  {
    goto LABEL_87;
  }

  (*(v79 + 96))(v67, v78);
  v114 = v248;
  v228 = v67;
  v112 = v249;
  result = (*(v248 + 32))(v250, v228, v249);
  v229 = *(v86 + 56);
  v88 = __OFADD__(v229, 1);
  v230 = v229 + 1;
  if (v88)
  {
    goto LABEL_143;
  }

  *(v86 + 56) = v230;
  v115 = v247;
  sub_25E9D79F0();
  v93 = sub_25E9D7C40();
  v75 = v93[-1].isa;
  if ((*(v75 + 48))(v115, 1, v93) == 1)
  {
    sub_25E981210(v115, &qword_27FD0D8A0, &unk_25E9D97E0);
LABEL_132:
    v239 = v250;
    v207 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0();
    (*(v114 + 8))(v239, v112);
    goto LABEL_94;
  }

LABEL_126:
  v231 = sub_25E9D79E0();
  v232 = v115;
  v233 = v231;
  v235 = v234;
  (*(v75 + 8))(v232, v93);
  if (v233 == 0x6F7365526E616C70 && v235 == 0xEE006E6F6974756CLL)
  {
  }

  else
  {
    v236 = sub_25E9D8300();

    if ((v236 & 1) == 0)
    {
      goto LABEL_132;
    }
  }

  v237 = *(v86 + 64);
  v88 = __OFADD__(v237, 1);
  v238 = v237 + 1;
  if (!v88)
  {
    *(v86 + 64) = v238;
    goto LABEL_132;
  }

LABEL_144:
  __break(1u);
  return result;
}

void *RequestGrainDimensionsSpec.deinit()
{

  return v0;
}

uint64_t RequestGrainDimensionsSpec.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25E9C0FA4()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 128) = MEMORY[0x277D84F90];
  *(v0 + 136) = v1;
  type metadata accessor for IERequestGrainFeatureTags();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 20) = 0;
  *(v0 + 144) = v2;
  return v0;
}

BOOL sub_25E9C1098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_25E9D79A0();
  v9 = sub_25E9D7A80();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_25E981210(v2, &qword_27FD0D880, &unk_25E9D97C0);
    v11 = sub_25E9D7B90();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    sub_25E9D7A70();
    (*(v10 + 8))(v2, v9);
    v12 = sub_25E9D7B90();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) != 1)
    {
      sub_25E9811A8(v8, v6, &qword_27FD0D888, &qword_25E9DBDA0);
      v14 = (*(v13 + 88))(v6, v12) == *MEMORY[0x277D23588];
      (*(v13 + 8))(v6, v12);
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  sub_25E981210(v8, &qword_27FD0D888, &qword_25E9DBDA0);
  return v14;
}

char *sub_25E9C1384(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25E983F80(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25E9C147C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25E9840A8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25E9C1574(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25E9842F8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25E9C166C(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v136 = a2;
  v137 = a6;
  v124 = a4;
  v125 = a5;
  v150 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v118 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v134 = &v118 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v128 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v129 = &v118 - v21;
  MEMORY[0x28223BE20](v20);
  v132 = &v118 - v22;
  v138 = sub_25E9D7A10();
  v152 = *(v138 - 8);
  v23 = MEMORY[0x28223BE20](v138);
  *&v146 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v151 = &v118 - v25;
  v26 = sub_25E9D7940();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_25E9D78F0();
  v121 = *(v30 - 8);
  v122 = v30;
  MEMORY[0x28223BE20](v30);
  v126 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD0D590 != -1)
  {
    swift_once();
  }

  v140 = sub_25E9D7F10();
  v32 = __swift_project_value_buffer(v140, qword_27FD0DAE8);

  v141 = v32;
  v33 = sub_25E9D7F00();
  v34 = sub_25E9D8140();

  v35 = os_log_type_enabled(v33, v34);
  v135 = a7;
  v142 = a3;
  v119 = v11;
  v131 = v15;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v156[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_25E9887EC(v136, a3, v156);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_25E9887EC(v137, a7, v156);
    _os_log_impl(&dword_25E971000, v33, v34, "start for sessionId: %s clientRequestId: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v37, -1, -1);
    MEMORY[0x25F8C51A0](v36, -1, -1);
  }

  v38 = v151;
  v157 = MEMORY[0x277D84F90];
  (*(v121 + 16))(v126, v150, v122);
  sub_25E9D78E0();
  v39 = sub_25E9D7930();
  (*(v27 + 8))(v29, v26);
  v41 = *(v39 + 16);
  v42 = v138;
  if (!v41)
  {

    goto LABEL_41;
  }

  v43 = 0;
  v150 = *(v152 + 16);
  v44 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v118 = v39;
  v45 = v39 + v44;
  v149 = (v152 + 8);
  v152 += 16;
  v139 = *(v152 + 56);
  v127 = *MEMORY[0x277D23588];
  v123 = *MEMORY[0x277D23560];
  *&v40 = 136315138;
  v130 = v40;
  v120 = xmmword_25E9D96A0;
  v46 = v134;
  v47 = v132;
  do
  {
    v147 = v45;
    v148 = v41;
    (v150)(v38);
    sub_25E9D79A0();
    v48 = sub_25E9D7A80();
    v49 = *(v48 - 8);
    v144 = *(v49 + 48);
    v145 = v49 + 48;
    v50 = v144(v46, 1, v48);
    v143 = v49;
    if (v50 == 1)
    {
      v51 = v48;
      sub_25E981210(v46, &qword_27FD0D880, &unk_25E9D97C0);
      v52 = sub_25E9D7B90();
      (*(*(v52 - 8) + 56))(v47, 1, 1, v52);
LABEL_11:
      sub_25E981210(v47, &qword_27FD0D888, &qword_25E9DBDA0);
      goto LABEL_12;
    }

    sub_25E9D7A70();
    v51 = v48;
    (*(v49 + 8))(v46, v48);
    v53 = sub_25E9D7B90();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v47, 1, v53) == 1)
    {
      goto LABEL_11;
    }

    v68 = v129;
    sub_25E986774(v47, v129);
    v69 = (*(v54 + 88))(v68, v53);
    if (v69 == v127)
    {
      goto LABEL_20;
    }

    if (v69 != v123)
    {
      (*(v54 + 8))(v68, v53);
      v42 = v138;
      goto LABEL_11;
    }

    v133 = v43;
    v77 = v119;
    sub_25E9D79F0();
    v78 = sub_25E9D7C40();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v77, 1, v78) == 1)
    {
      sub_25E981210(v77, &qword_27FD0D8A0, &unk_25E9D97E0);
      v43 = v133;
      v46 = v134;
      v68 = v129;
    }

    else
    {
      v80 = sub_25E9D79E0();
      v82 = v81;
      (*(v79 + 8))(v77, v78);
      if (v80 == 0x726F747563657865 && v82 == 0xE800000000000000)
      {

        v43 = v133;
        v46 = v134;
        v68 = v129;
LABEL_20:
        (*(v54 + 8))(v68, v53);
        sub_25E981210(v47, &qword_27FD0D888, &qword_25E9DBDA0);
        if (v43)
        {
          sub_25E9CA850(v136, v142, v124, v125, v137, v135, v156);
          memcpy(v155, v156, sizeof(v155));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D810, &qword_25E9D9458);
          v70 = swift_allocObject();
          *(v70 + 16) = v120;
          memcpy((v70 + 32), v156, 0x1A0uLL);
          swift_beginAccess();
          sub_25E9C342C(v155, &v153);
          sub_25E9C1574(v70);
          swift_endAccess();
          sub_25E9C3488(v155);
        }

        type metadata accessor for IEPlannerGrainSpec();
        swift_allocObject();
        v43 = sub_25E9CAC80();

        goto LABEL_32;
      }

      v83 = sub_25E9D8300();

      v43 = v133;
      v46 = v134;
      v68 = v129;
      if (v83)
      {
        goto LABEL_20;
      }
    }

    (*(v54 + 8))(v68, v53);
    sub_25E981210(v47, &qword_27FD0D888, &qword_25E9DBDA0);
LABEL_32:
    v42 = v138;
LABEL_12:
    v55 = v146;
    (v150)(v146, v151, v42);
    v56 = sub_25E9D7F00();
    v57 = sub_25E9D8140();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v43;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v156[0] = v60;
      *v59 = v130;
      v61 = v131;
      sub_25E9D79A0();
      if (v144(v61, 1, v51) == 1)
      {
        sub_25E981210(v61, &qword_27FD0D880, &unk_25E9D97C0);
        v62 = 0xE300000000000000;
        v63 = 7104878;
      }

      else
      {
        v133 = v58;
        v65 = v128;
        sub_25E9D7A70();
        (*(v143 + 8))(v61, v51);
        v66 = sub_25E9D7B90();
        v67 = *(v66 - 8);
        if ((*(v67 + 48))(v65, 1, v66) == 1)
        {
          sub_25E981210(v65, &qword_27FD0D888, &qword_25E9DBDA0);
          v62 = 0xE300000000000000;
          v63 = 7104878;
        }

        else
        {
          v71 = sub_25E9D7B80();
          v72 = v65;
          v63 = v71;
          v62 = v73;
          (*(v67 + 8))(v72, v66);
        }

        v58 = v133;
      }

      v64 = *v149;
      v74 = v138;
      (*v149)(v146, v138);
      v75 = sub_25E9887EC(v63, v62, v156);

      *(v59 + 4) = v75;
      _os_log_impl(&dword_25E971000, v56, v57, "handling event %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v76 = v60;
      v42 = v74;
      MEMORY[0x25F8C51A0](v76, -1, -1);
      MEMORY[0x25F8C51A0](v59, -1, -1);

      v46 = v134;
      v43 = v58;
      v47 = v132;
      v38 = v151;
      if (v43)
      {
LABEL_25:
        sub_25E9C8F88(v38);
      }
    }

    else
    {

      v64 = *v149;
      (*v149)(v55, v42);
      v38 = v151;
      if (v43)
      {
        goto LABEL_25;
      }
    }

    v64(v38, v42);
    v45 = v147 + v139;
    v41 = v148 - 1;
  }

  while (v148 != 1);

  if (v43)
  {
    v84 = v142;
    v85 = v135;
    v86 = v126;
    sub_25E9CA850(v136, v142, v124, v125, v137, v135, v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D810, &qword_25E9D9458);
    v87 = swift_allocObject();
    *(v87 + 16) = v120;
    memcpy((v87 + 32), v156, 0x1A0uLL);
    swift_beginAccess();
    sub_25E9C342C(v156, v155);
    sub_25E9C1574(v87);
    swift_endAccess();
    sub_25E9C3488(v156);
    (*(v121 + 8))(v86, v122);
    goto LABEL_42;
  }

LABEL_41:
  (*(v121 + 8))(v126, v122);
  v85 = v135;
  v84 = v142;
LABEL_42:

  v88 = sub_25E9D7F00();
  v89 = sub_25E9D8140();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = v84;
    v92 = swift_slowAlloc();
    v156[0] = v92;
    *v90 = 136315394;
    *(v90 + 4) = sub_25E9887EC(v136, v91, v156);
    *(v90 + 12) = 2080;
    *(v90 + 14) = sub_25E9887EC(v137, v85, v156);
    _os_log_impl(&dword_25E971000, v88, v89, "end for sessionId: %s clientRequestId: %s", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v92, -1, -1);
    MEMORY[0x25F8C51A0](v90, -1, -1);
  }

  swift_beginAccess();
  v152 = v157;
  v93 = *(v157 + 16);
  if (v93)
  {

    v94 = 0;
    v95 = (v93 - 1);
    v96 = 32;
    *&v97 = 136315906;
    v146 = v97;
    while (1)
    {
      memcpy(v156, (v152 + v96), sizeof(v156));
      sub_25E9C342C(v156, v155);
      if (qword_27FD0D588 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v140, qword_27FD0DAD0);

      sub_25E9C342C(v156, v155);
      v98 = sub_25E9D7F00();
      v99 = sub_25E9D8140();

      sub_25E9C3488(v156);
      if (os_log_type_enabled(v98, v99))
      {
        v100 = v156[10];
        v150 = v98;
        v101 = v156[11];
        v102 = swift_slowAlloc();
        v151 = v95;
        v103 = v102;
        v149 = swift_slowAlloc();
        v154[0] = v149;
        *v103 = v146;
        *(v103 + 4) = sub_25E9887EC(v136, v142, v154);
        LODWORD(v148) = v99;
        *(v103 + 12) = 2080;
        *(v103 + 14) = sub_25E9887EC(v137, v85, v154);
        *(v103 + 22) = 2080;
        if (v101)
        {
          v104 = v100;
        }

        else
        {
          v104 = 7104878;
        }

        if (v101)
        {
          v105 = v101;
        }

        else
        {
          v105 = 0xE300000000000000;
        }

        v106 = sub_25E9887EC(v104, v105, v154);

        *(v103 + 24) = v106;
        *(v103 + 32) = 2080;
        memcpy(v155, v156, sizeof(v155));
        v107 = sub_25E9A4E2C();
        memcpy(v155, v156, sizeof(v155));
        v108 = sub_25E9A5524();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155[0] = v107;
        sub_25E9A7674(v108, sub_25E9A74C8, 0, isUniquelyReferenced_nonNull_native, v155);
        v147 = v94;

        v110 = sub_25E9D7F40();
        v112 = v111;

        v113 = sub_25E9887EC(v110, v112, v154);
        v85 = v135;

        *(v103 + 34) = v113;
        v114 = v150;
        _os_log_impl(&dword_25E971000, v150, v148, "computed for sessionId: %s clientRequestId: %s %s\n%s", v103, 0x2Au);
        v94 = v147;
        v115 = v149;
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v115, -1, -1);
        v116 = v103;
        v95 = v151;
        MEMORY[0x25F8C51A0](v116, -1, -1);
        sub_25E9C3488(v156);

        if (!v95)
        {
LABEL_59:

          break;
        }
      }

      else
      {

        sub_25E9C3488(v156);
        if (!v95)
        {
          goto LABEL_59;
        }
      }

      --v95;
      v96 += 416;
    }
  }

  return v152;
}

char *sub_25E9C2888()
{
  v120 = sub_25E9D78F0();
  v111 = *(v120 - 8);
  v0 = MEMORY[0x28223BE20](v120);
  v2 = (&v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v0);
  v109 = &v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DA98, &qword_25E9DA7B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v93 - v8);
  v10 = sub_25E9D7920();
  v101 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v117 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA0, &qword_25E9DA7B8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v93 - v18;
  if (qword_27FD0D590 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v102 = v19;
    v20 = sub_25E9D7F10();
    v93 = __swift_project_value_buffer(v20, qword_27FD0DAE8);
    v21 = sub_25E9D7F00();
    v22 = sub_25E9D8140();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v10;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25E971000, v21, v22, "calculator start", v24, 2u);
      v25 = v24;
      v10 = v23;
      MEMORY[0x25F8C51A0](v25, -1, -1);
    }

    v26 = sub_25E9D7950();
    v27 = 0;
    v28 = *(v26 + 64);
    v95 = v26 + 64;
    v98 = v26;
    v29 = 1 << *(v26 + 32);
    v30 = v29 < 64 ? ~(-1 << v29) : -1;
    v31 = v30 & v28;
    v94 = (v29 + 63) >> 6;
    v96 = v101 + 16;
    v106 = (v101 + 32);
    v107 = v111 + 16;
    v119 = (v111 + 32);
    v113 = (v111 + 8);
    v121 = MEMORY[0x277D84F90];
    v99 = (v101 + 8);
    v110 = v2;
    v108 = v7;
    v118 = v9;
    v32 = v17;
    v103 = v17;
    v100 = v10;
LABEL_9:
    if (v31)
    {
      break;
    }

    if (v94 <= v27 + 1)
    {
      v33 = v27 + 1;
    }

    else
    {
      v33 = v94;
    }

    v34 = v33 - 1;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v94)
      {
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        v105 = 0;
        goto LABEL_19;
      }

      v31 = *(v95 + 8 * v19);
      ++v27;
      if (v31)
      {
        goto LABEL_18;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  v19 = v27;
LABEL_18:
  v105 = (v31 - 1) & v31;
  v35 = __clz(__rbit64(v31)) | (v19 << 6);
  v36 = *(v98 + 56);
  v37 = (*(v98 + 48) + 16 * v35);
  v38 = v37[1];
  v116 = *v37;
  v39 = v101;
  v40 = v97;
  (*(v101 + 16))(v97, v36 + *(v101 + 72) * v35, v10);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  v42 = *(v41 + 48);
  v43 = v103;
  *v103 = v116;
  *(v43 + 1) = v38;
  v44 = v40;
  v32 = v43;
  (*(v39 + 32))(&v43[v42], v44, v10);
  (*(*(v41 - 8) + 56))(v32, 0, 1, v41);

  v34 = v19;
LABEL_19:
  v45 = v102;
  sub_25E98B514(v32, v102, &qword_27FD0DAA0, &qword_25E9DA7B8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAA8, &qword_25E9DA7C0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
  {
    v104 = v34;
    v47 = v45[1];
    v115 = *v45;
    v116 = v47;
    (*v106)(v117, v45 + *(v46 + 48), v10);
    v48 = sub_25E9D7910();
    v17 = 0;
    v50 = v48 + 64;
    v49 = *(v48 + 64);
    v112 = v48;
    v51 = 1 << *(v48 + 32);
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & v49;
    v19 = (v51 + 63) >> 6;
    v114 = v48 + 64;
    while (v53)
    {
      v54 = v17;
LABEL_36:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = v57 | (v54 << 6);
      v59 = v111;
      v60 = (*(v112 + 48) + 16 * v58);
      v62 = *v60;
      v61 = v60[1];
      v63 = v109;
      v64 = v120;
      (*(v111 + 16))(v109, *(v112 + 56) + *(v111 + 72) * v58, v120);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      v66 = *(v65 + 48);
      v67 = v108;
      *v108 = v62;
      *(v67 + 1) = v61;
      v68 = v63;
      v7 = v67;
      (*(v59 + 32))(&v67[v66], v68, v64);
      (*(*(v65 - 8) + 56))(v7, 0, 1, v65);

      v2 = v110;
      v9 = v118;
LABEL_37:
      sub_25E98B514(v7, v9, &qword_27FD0DA98, &qword_25E9DA7B0);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
      if ((*(*(v69 - 8) + 48))(v9, 1, v69) == 1)
      {
        v10 = v100;
        (*v99)(v117, v100);

        v32 = v103;
        v27 = v104;
        v31 = v105;
        goto LABEL_9;
      }

      v70 = *v9;
      v71 = v9[1];
      (*v119)(v2, v9 + *(v69 + 48), v120);
      v72 = sub_25E9D7900();
      v74 = sub_25E9C166C(v2, v115, v116, v72, v73, v70, v71);

      v75 = *(v74 + 16);
      v10 = *(v121 + 2);
      v9 = (v10 + v75);
      if (__OFADD__(v10, v75))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v121;
      if (!isUniquelyReferenced_nonNull_native || v9 > *(v121 + 3) >> 1)
      {
        if (v10 <= v9)
        {
          v78 = v10 + v75;
        }

        else
        {
          v78 = v10;
        }

        v77 = sub_25E9842F8(isUniquelyReferenced_nonNull_native, v78, 1, v121);
      }

      v9 = v118;
      v79 = *(v74 + 16);
      v121 = v77;
      if (v79)
      {
        if ((*(v77 + 3) >> 1) - *(v77 + 2) < v75)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v75)
        {
          v80 = *(v121 + 2);
          v81 = __OFADD__(v80, v75);
          v82 = v80 + v75;
          if (v81)
          {
            goto LABEL_62;
          }

          *(v121 + 2) = v82;
        }
      }

      else
      {

        if (v75)
        {
          goto LABEL_60;
        }
      }

      (*v113)(v2, v120);
      v50 = v114;
    }

    if (v19 <= (v17 + 1))
    {
      v55 = v17 + 1;
    }

    else
    {
      v55 = v19;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v54 >= v19)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DAB0, &qword_25E9DA7C8);
        (*(*(v83 - 8) + 56))(v7, 1, 1, v83);
        v53 = 0;
        v17 = v56;
        goto LABEL_37;
      }

      v53 = *(v50 + 8 * v54);
      ++v17;
      if (v53)
      {
        v17 = v54;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  v85 = v121;

  v86 = sub_25E9D7F00();
  v87 = sub_25E9D8140();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    *(v88 + 4) = *(v85 + 2);

    _os_log_impl(&dword_25E971000, v86, v87, "computed metrics for %ld requests", v88, 0xCu);
    MEMORY[0x25F8C51A0](v88, -1, -1);
  }

  else
  {
  }

  v89 = sub_25E9D7F00();
  v90 = sub_25E9D8140();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_25E971000, v89, v90, "calculator end", v91, 2u);
    MEMORY[0x25F8C51A0](v91, -1, -1);
  }

  return v121;
}

BOOL sub_25E9C34DC(uint64_t a1, uint64_t a2)
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

    sub_25E9D7B60();
    ++v2;
    sub_25E9C8584();
  }

  while ((sub_25E9D7F90() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_25E9C35B4(uint64_t a1)
{
  swift_beginAccess();
  sub_25E9811A8(v1 + 16, v11, &qword_27FD0D8B0, qword_25E9D97F0);
  if (v12)
  {
    sub_25E986C6C(v11, v8);
    sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(*(v4 + 8) + 8))(a1, v3);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
  }

  swift_beginAccess();
  sub_25E9811A8(v1 + 56, v11, &qword_27FD0D8B0, qword_25E9D97F0);
  if (!v12)
  {
    return sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
  }

  sub_25E986C6C(v11, v8);
  sub_25E981210(v11, &qword_27FD0D8B0, qword_25E9D97F0);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(*(v6 + 8) + 8))(a1, v5);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_25E9C3758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_25E9811A8(v3 + 16, v22, &qword_27FD0D8B0, qword_25E9D97F0);
  v6 = v23;
  if (v23)
  {
    v7 = v24;
    v8 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v9 = *(v6 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v9 + 16))(v11);
    sub_25E981210(v22, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v7 + 16))(v6, v7);
    (*(v9 + 8))(v11, v6);
  }

  else
  {
    sub_25E981210(v22, &qword_27FD0D8B0, qword_25E9D97F0);
    v12 = sub_25E9D7A10();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  swift_beginAccess();
  sub_25E9811A8(v3 + 56, v22, &qword_27FD0D8B0, qword_25E9D97F0);
  v13 = v23;
  if (v23)
  {
    v14 = v24;
    v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = *(v13 - 8);
    MEMORY[0x28223BE20](v15);
    v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v16 + 16))(v18);
    sub_25E981210(v22, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v14 + 16))(v13, v14);
    return (*(v16 + 8))(v18, v13);
  }

  else
  {
    sub_25E981210(v22, &qword_27FD0D8B0, qword_25E9D97F0);
    v20 = sub_25E9D7A10();
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }
}

char *sub_25E9C3AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v166 = (v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v165 = v156 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v162 = v156 - v8;
  MEMORY[0x28223BE20](v7);
  v161 = v156 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v164 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v163 = (v156 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v156 - v16;
  MEMORY[0x28223BE20](v15);
  v160 = v156 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v170 = v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v156 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v156 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v156 - v28;
  v30 = sub_25E9D7A10();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v168 = v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v167 = v156 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v156 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v156 - v39;
  swift_beginAccess();
  sub_25E9811A8(v1 + 16, v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v41 = v175;
  v172 = v31;
  if (!v175)
  {
    sub_25E981210(v174, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v31 + 56))(v29, 1, 1, v30);
    goto LABEL_7;
  }

  v158 = v17;
  v159 = v38;
  v169 = v40;
  v42 = v176;
  v43 = __swift_project_boxed_opaque_existential_1(v174, v175);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v46);
  sub_25E981210(v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v47 = *(v42 + 16);
  v48 = v42;
  v49 = v172;
  v47(v41, v48);
  (*(v44 + 8))(v46, v41);
  v50 = *(v49 + 48);
  if (v50(v29, 1, v30) == 1)
  {
LABEL_7:
    v27 = v29;
    goto LABEL_8;
  }

  v51 = v169;
  v157 = *(v49 + 32);
  v157(v169, v29, v30);
  swift_beginAccess();
  sub_25E9811A8(v1 + 56, v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v52 = v175;
  if (!v175)
  {
    (*(v49 + 8))(v51, v30);
    sub_25E981210(v174, &qword_27FD0D8B0, qword_25E9D97F0);
    (*(v49 + 56))(v27, 1, 1, v30);
LABEL_8:
    sub_25E981210(v27, &qword_27FD0DD40, &unk_25E9DC120);
    if (qword_27FD0D580 != -1)
    {
      swift_once();
    }

    v59 = sub_25E9D7F10();
    __swift_project_value_buffer(v59, qword_27FD0DAB8);

    v60 = sub_25E9D7F00();
    v61 = sub_25E9D8120();

    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_28;
    }

    v171 = v30;
    v169 = 7104878;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v173 = v63;
    *v62 = 136315394;
    sub_25E9811A8(v1 + 16, v174, &qword_27FD0D8B0, qword_25E9D97F0);
    v64 = v175;
    if (v175)
    {
      v168 = v63;
      v65 = v176;
      v66 = __swift_project_boxed_opaque_existential_1(v174, v175);
      v67 = *(v64 - 8);
      MEMORY[0x28223BE20](v66);
      v69 = v156 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v67 + 16))(v69);
      sub_25E981210(v174, &qword_27FD0D8B0, qword_25E9D97F0);
      (*(v65 + 16))(v64, v65);
      (*(v67 + 8))(v69, v64);
      v70 = v171;
      v71 = v172;
      if ((*(v172 + 48))(v24, 1, v171) == 1)
      {
        v72 = &qword_27FD0DD40;
        v73 = &unk_25E9DC120;
        v74 = v24;
LABEL_18:
        sub_25E981210(v74, v72, v73);
        v78 = 0xE300000000000000;
        v79 = 7104878;
        v63 = v168;
        goto LABEL_19;
      }

      v167 = v156;
      v80 = v165;
      sub_25E9D79A0();
      v81 = v80;
      (*(v71 + 8))(v24, v70);
      v82 = sub_25E9D7A80();
      v83 = *(v82 - 8);
      if ((*(v83 + 48))(v80, 1, v82) == 1)
      {
        v72 = &qword_27FD0D880;
        v73 = &unk_25E9D97C0;
        v74 = v80;
        goto LABEL_18;
      }

      v121 = v163;
      sub_25E9D7A70();
      (*(v83 + 8))(v81, v82);
      v122 = sub_25E9D7B90();
      v123 = *(v122 - 8);
      v124 = (*(v123 + 48))(v121, 1, v122);
      v63 = v168;
      if (v124 != 1)
      {
        v129 = sub_25E9D7B80();
        v78 = v130;
        (*(v123 + 8))(v121, v122);
        v79 = v129;
LABEL_19:
        v84 = sub_25E9887EC(v79, v78, &v173);

        *(v62 + 4) = v84;
        *(v62 + 12) = 2080;
        swift_beginAccess();
        sub_25E9811A8(v1 + 56, v174, &qword_27FD0D8B0, qword_25E9D97F0);
        v85 = v175;
        if (v175)
        {
          v86 = v176;
          v87 = __swift_project_boxed_opaque_existential_1(v174, v175);
          v88 = *(v85 - 8);
          MEMORY[0x28223BE20](v87);
          v90 = v156 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v88 + 16))(v90);
          sub_25E981210(v174, &qword_27FD0D8B0, qword_25E9D97F0);
          v91 = v170;
          (*(v86 + 16))(v85, v86);
          v92 = v90;
          v93 = v91;
          (*(v88 + 8))(v92, v85);
          v94 = v171;
          v95 = v172;
          if ((*(v172 + 48))(v91, 1, v171) == 1)
          {
            v96 = &qword_27FD0DD40;
            v97 = &unk_25E9DC120;
          }

          else
          {
            v99 = v166;
            sub_25E9D79A0();
            (*(v95 + 8))(v93, v94);
            v100 = sub_25E9D7A80();
            v101 = *(v100 - 8);
            if ((*(v101 + 48))(v99, 1, v100) == 1)
            {
              v96 = &qword_27FD0D880;
              v97 = &unk_25E9D97C0;
              v98 = v99;
              goto LABEL_26;
            }

            v125 = v164;
            sub_25E9D7A70();
            v93 = v125;
            (*(v101 + 8))(v99, v100);
            v126 = sub_25E9D7B90();
            v127 = *(v126 - 8);
            if ((*(v127 + 48))(v93, 1, v126) != 1)
            {
              v169 = sub_25E9D7B80();
              v102 = v131;
              (*(v127 + 8))(v93, v126);
              goto LABEL_27;
            }

            v96 = &qword_27FD0D888;
            v97 = &qword_25E9DBDA0;
          }

          v98 = v93;
        }

        else
        {
          v96 = &qword_27FD0D8B0;
          v97 = qword_25E9D97F0;
          v98 = v174;
        }

LABEL_26:
        sub_25E981210(v98, v96, v97);
        v102 = 0xE300000000000000;
LABEL_27:
        v103 = sub_25E9887EC(v169, v102, &v173);

        *(v62 + 14) = v103;
        _os_log_impl(&dword_25E971000, v60, v61, "calculateInterval - failed for begin: %s, end: %s", v62, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v63, -1, -1);
        MEMORY[0x25F8C51A0](v62, -1, -1);
LABEL_28:

        return 0;
      }

      v75 = &qword_27FD0D888;
      v76 = &qword_25E9DBDA0;
      v77 = v121;
    }

    else
    {
      v75 = &qword_27FD0D8B0;
      v76 = qword_25E9D97F0;
      v77 = v174;
    }

    sub_25E981210(v77, v75, v76);
    v78 = 0xE300000000000000;
    v79 = 7104878;
    goto LABEL_19;
  }

  v53 = v176;
  v54 = __swift_project_boxed_opaque_existential_1(v174, v175);
  v156[1] = v156;
  v55 = *(v52 - 8);
  v171 = v30;
  v56 = v55;
  MEMORY[0x28223BE20](v54);
  v58 = v156 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v58);
  sub_25E981210(v174, &qword_27FD0D8B0, qword_25E9D97F0);
  (*(v53 + 16))(v52, v53);
  (*(v56 + 8))(v58, v52);
  v30 = v171;
  if (v50(v27, 1, v171) == 1)
  {
    (*(v172 + 8))(v169, v30);
    goto LABEL_8;
  }

  v105 = v159;
  v157(v159, v27, v30);
  v106 = v169;
  v170 = sub_25E9C85DC(v169, v105);
  v107 = v172;
  if (qword_27FD0D580 != -1)
  {
    swift_once();
  }

  v108 = sub_25E9D7F10();
  __swift_project_value_buffer(v108, qword_27FD0DAB8);
  v109 = *(v107 + 16);
  v110 = v167;
  v109(v167, v106, v30);
  v111 = v168;
  v109(v168, v105, v30);
  v112 = sub_25E9D7F00();
  v113 = sub_25E9D8120();
  if (!os_log_type_enabled(v112, v113))
  {

    v128 = *(v107 + 8);
    v128(v111, v30);
    v128(v110, v30);
    v128(v105, v30);
    v128(v106, v30);
    return v170;
  }

  LODWORD(v165) = v113;
  v166 = v112;
  v114 = swift_slowAlloc();
  v164 = swift_slowAlloc();
  v174[0] = v164;
  *v114 = 136315650;
  v115 = v161;
  sub_25E9D79A0();
  v116 = sub_25E9D7A80();
  v117 = *(v116 - 8);
  v163 = *(v117 + 48);
  if ((v163)(v115, 1, v116) == 1)
  {
    v118 = &qword_27FD0D880;
    v119 = &unk_25E9D97C0;
    v120 = v115;
  }

  else
  {
    v132 = v160;
    sub_25E9D7A70();
    (*(v117 + 8))(v115, v116);
    v133 = sub_25E9D7B90();
    v134 = *(v133 - 8);
    if ((*(v134 + 48))(v132, 1, v133) != 1)
    {
      v136 = sub_25E9D7B80();
      v135 = v137;
      (*(v134 + 8))(v132, v133);
      goto LABEL_46;
    }

    v118 = &qword_27FD0D888;
    v119 = &qword_25E9DBDA0;
    v120 = v132;
  }

  sub_25E981210(v120, v118, v119);
  v135 = 0xE300000000000000;
  v136 = 7104878;
LABEL_46:
  v138 = *(v172 + 8);
  v172 += 8;
  v138(v167, v171);
  v139 = sub_25E9887EC(v136, v135, v174);

  *(v114 + 4) = v139;
  *(v114 + 12) = 2080;
  v140 = v162;
  v141 = v168;
  sub_25E9D79A0();
  if ((v163)(v140, 1, v116) == 1)
  {
    sub_25E981210(v140, &qword_27FD0D880, &unk_25E9D97C0);
    v142 = 0xE300000000000000;
    v143 = 7104878;
  }

  else
  {
    v144 = v158;
    sub_25E9D7A70();
    (*(v117 + 8))(v140, v116);
    v145 = sub_25E9D7B90();
    v146 = *(v145 - 8);
    v143 = 7104878;
    if ((*(v146 + 48))(v144, 1, v145) == 1)
    {
      sub_25E981210(v144, &qword_27FD0D888, &qword_25E9DBDA0);
      v142 = 0xE300000000000000;
    }

    else
    {
      v143 = sub_25E9D7B80();
      v142 = v147;
      (*(v146 + 8))(v144, v145);
    }

    v141 = v168;
  }

  v148 = v171;
  v138(v141, v171);
  v149 = sub_25E9887EC(v143, v142, v174);

  *(v114 + 14) = v149;
  *(v114 + 22) = 2080;
  v150 = v170;
  v151 = sub_25E9D80E0();
  v153 = sub_25E9887EC(v151, v152, v174);

  *(v114 + 24) = v153;
  v154 = v166;
  _os_log_impl(&dword_25E971000, v166, v165, "calculateInterval - begin: %s, end: %s, duration: %s", v114, 0x20u);
  v155 = v164;
  swift_arrayDestroy();
  MEMORY[0x25F8C51A0](v155, -1, -1);
  MEMORY[0x25F8C51A0](v114, -1, -1);

  v138(v159, v148);
  v138(v169, v148);
  return v150;
}

uint64_t sub_25E9C4F38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v139 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v150 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v139 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD50, &qword_25E9DBF78);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v156 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v139 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD58, &qword_25E9DBF80);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v139 - v22;
  v24 = sub_25E9D7A10();
  v170 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v153 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v155 = &v139 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v161 = &v139 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v160 = &v139 - v32;
  MEMORY[0x28223BE20](v31);
  v173 = &v139 - v33;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD60, &qword_25E9DBF88);
  MEMORY[0x28223BE20](v169);
  v168 = &v139 - v34;
  swift_beginAccess();
  sub_25E9811A8(v1 + 16, &v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v35 = v175;
  if (!v175)
  {
    goto LABEL_7;
  }

  v159 = v24;
  v158 = v23;
  v151 = v21;
  v165 = v17;
  v147 = v12;
  v148 = v7;
  v149 = v5;
  v36 = v176;
  v37 = __swift_project_boxed_opaque_existential_1(&v174, v175);
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v40);
  sub_25E981210(&v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v41 = (*(v36 + 24))(v35, v36);
  (*(v38 + 8))(v40, v35);
  swift_beginAccess();
  sub_25E9811A8(v1 + 56, &v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v42 = v175;
  if (!v175)
  {

LABEL_7:
    sub_25E981210(&v174, &qword_27FD0D8B0, qword_25E9D97F0);
    v61 = 0.0;
    return *&v61;
  }

  v166 = v41;
  v43 = v176;
  v44 = __swift_project_boxed_opaque_existential_1(&v174, v175);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v139 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v47);
  sub_25E981210(&v174, &qword_27FD0D8B0, qword_25E9D97F0);
  v48 = (*(v43 + 24))(v42, v43);
  (*(v45 + 8))(v47, v42);
  if (qword_27FD0D580 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v49 = sub_25E9D7F10();
    v50 = __swift_project_value_buffer(v49, qword_27FD0DAB8);
    v51 = v166;

    v146 = v50;
    v52 = sub_25E9D7F00();
    v53 = sub_25E9D8120();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v159;
    v56 = v161;
    v57 = v160;
    v167 = v48;
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 134218240;
      *(v58 + 4) = *(v51 + 16);

      *(v58 + 12) = 2048;
      *(v58 + 14) = *(v167 + 16);

      _os_log_impl(&dword_25E971000, v52, v53, "sumIntervals beginEvents count: %ld, endEvents count: %ld", v58, 0x16u);
      v59 = v58;
      v48 = v167;
      MEMORY[0x25F8C51A0](v59, -1, -1);
    }

    else
    {
    }

    v163 = *(v51 + 16);
    if (!v163)
    {
      break;
    }

    v62 = 0;
    v172 = v170 + 16;
    v162 = (v170 + 32);
    v164 = (v170 + 8);
    v61 = 0.0;
    *&v60 = 136315650;
    v145 = v60;
    while (v62 < *(v51 + 16))
    {
      v63 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v64 = *(v170 + 72) * v62;
      v65 = *(v170 + 16);
      v65(v173, v51 + v63 + v64, v55);
      v66 = *(v48 + 16);
      if (v62 == v66)
      {
        (*v164)(v173, v55);
        goto LABEL_46;
      }

      if (v62 >= v66)
      {
        goto LABEL_49;
      }

      v171 = v62;
      v67 = v48 + v63;
      v68 = v168;
      v69 = *(v169 + 48);
      v70 = *v162;
      (*v162)(v168, v173, v55);
      v65(&v68[v69], v67 + v64, v55);
      v70(v57, v68, v55);
      v70(v56, &v68[v69], v55);
      v71 = v165;
      sub_25E9D7A00();
      v72 = sub_25E9D7B00();
      v73 = v56;
      v74 = *(v72 - 8);
      v75 = *(v74 + 48);
      if (v75(v71, 1, v72) == 1)
      {
        v76 = *v164;
        (*v164)(v73, v55);
        v76(v57, v55);
        sub_25E981210(v71, &qword_27FD0DD50, &qword_25E9DBF78);
        v56 = v73;
      }

      else
      {
        v77 = v158;
        sub_25E9D7AF0();
        v78 = *(v74 + 8);
        (v78)(v71, v72);
        v79 = sub_25E9D7890();
        v80 = *(v79 - 8);
        v157 = *(v80 + 48);
        if ((v157)(v77, 1, v79) == 1)
        {
          v81 = *v164;
          v56 = v161;
          v82 = v159;
          (*v164)(v161, v159);
          v57 = v160;
          v81(v160, v82);
          v83 = v77;
          v55 = v82;
        }

        else
        {
          v154 = v78;
          sub_25E9D7880();
          v85 = v84;
          v152 = *(v80 + 8);
          v152(v77, v79);
          v86 = v156;
          v87 = v161;
          sub_25E9D7A00();
          if (v75(v86, 1, v72) == 1)
          {
            v88 = *v164;
            v89 = v159;
            (*v164)(v87, v159);
            v57 = v160;
            v88(v160, v89);
            sub_25E981210(v86, &qword_27FD0DD50, &qword_25E9DBF78);
            v55 = v89;
            v56 = v87;
            goto LABEL_21;
          }

          v91 = v151;
          sub_25E9D7AF0();
          v92 = v91;
          (v154)(v86, v72);
          v93 = (v157)(v91, 1, v79);
          v94 = v155;
          if (v93 != 1)
          {
            sub_25E9D7880();
            v97 = v96;
            v152(v91, v79);
            v55 = v159;
            v98 = v153;
            v56 = v161;
            v90 = v171;
            if (v85 >= v97)
            {
              v111 = *v164;
              (*v164)(v161, v159);
              v57 = v160;
              v111(v160, v55);
              v51 = v166;
              v48 = v167;
            }

            else
            {
              v99 = v97 - v85;
              v100 = v160;
              v65(v94, v160, v159);
              v65(v98, v56, v55);
              v101 = sub_25E9D7F00();
              v102 = sub_25E9D8120();
              if (os_log_type_enabled(v101, v102))
              {
                LODWORD(v152) = v102;
                v154 = v101;
                v103 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v174 = v144;
                *v103 = v145;
                v104 = v148;
                sub_25E9D79A0();
                v105 = sub_25E9D7A80();
                v106 = *(v105 - 8);
                v107 = *(v106 + 48);
                v143 = (v106 + 48);
                v141 = v107;
                v108 = v107(v104, 1, v105);
                v157 = v103;
                v142 = v105;
                v140 = v106;
                if (v108 == 1)
                {
                  sub_25E981210(v104, &qword_27FD0D880, &unk_25E9D97C0);
                  v109 = 0xE300000000000000;
                  v110 = 7104878;
                }

                else
                {
                  v113 = v147;
                  sub_25E9D7A70();
                  (*(v106 + 8))(v104, v105);
                  v114 = sub_25E9D7B90();
                  v115 = *(v114 - 8);
                  if ((*(v115 + 48))(v113, 1, v114) == 1)
                  {
                    sub_25E981210(v113, &qword_27FD0D888, &qword_25E9DBDA0);
                    v109 = 0xE300000000000000;
                    v110 = 7104878;
                  }

                  else
                  {
                    v110 = sub_25E9D7B80();
                    v109 = v116;
                    (*(v115 + 8))(v113, v114);
                  }

                  v56 = v161;
                  v90 = v171;
                  v103 = v157;
                }

                v117 = v153;
                v143 = *v164;
                v143(v94, v55);
                v118 = sub_25E9887EC(v110, v109, &v174);

                *(v103 + 4) = v118;
                *(v103 + 12) = 2080;
                v119 = v149;
                sub_25E9D79A0();
                v120 = v142;
                if (v141(v119, 1, v142) == 1)
                {
                  sub_25E981210(v119, &qword_27FD0D880, &unk_25E9D97C0);
                  v121 = 0xE300000000000000;
                  v122 = 7104878;
                  v51 = v166;
                  v48 = v167;
                }

                else
                {
                  v123 = v119;
                  v124 = v150;
                  sub_25E9D7A70();
                  (*(v140 + 8))(v123, v120);
                  v125 = sub_25E9D7B90();
                  v126 = *(v125 - 8);
                  v127 = (*(v126 + 48))(v124, 1, v125);
                  v51 = v166;
                  if (v127 == 1)
                  {
                    sub_25E981210(v124, &qword_27FD0D888, &qword_25E9DBDA0);
                    v121 = 0xE300000000000000;
                    v122 = 7104878;
                  }

                  else
                  {
                    v122 = sub_25E9D7B80();
                    v128 = v124;
                    v121 = v129;
                    (*(v126 + 8))(v128, v125);
                  }

                  v48 = v167;
                  v90 = v171;
                }

                v130 = v143;
                v143(v117, v55);
                v131 = sub_25E9887EC(v122, v121, &v174);

                v132 = v157;
                *(v157 + 14) = v131;
                *(v132 + 22) = 2080;
                v133 = sub_25E9D80E0();
                v135 = sub_25E9887EC(v133, v134, &v174);

                *(v132 + 24) = v135;
                v136 = v154;
                _os_log_impl(&dword_25E971000, v154, v152, "calculateInterval in sumIntervals - begin: %s, end: %s, duration: %s", v132, 0x20u);
                v137 = v144;
                swift_arrayDestroy();
                MEMORY[0x25F8C51A0](v137, -1, -1);
                MEMORY[0x25F8C51A0](v132, -1, -1);

                v130(v56, v55);
                v57 = v160;
                v130(v160, v55);
              }

              else
              {

                v112 = *v164;
                (*v164)(v98, v55);
                v112(v94, v55);
                v112(v56, v55);
                v112(v100, v55);
                v57 = v100;
                v51 = v166;
                v48 = v167;
              }

              v61 = v61 + v99;
            }

            goto LABEL_22;
          }

          v95 = *v164;
          v56 = v161;
          v55 = v159;
          (*v164)(v161, v159);
          v57 = v160;
          v95(v160, v55);
          v83 = v92;
        }

        sub_25E981210(v83, &qword_27FD0DD58, &qword_25E9DBF80);
      }

LABEL_21:
      v51 = v166;
      v48 = v167;
      v90 = v171;
LABEL_22:
      v62 = v90 + 1;
      if (v163 == v62)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v61 = 0.0;
LABEL_46:

  return *&v61;
}

uint64_t IETranscriptLatencyIntervalSpec.deinit()
{
  sub_25E981210(v0 + 16, &qword_27FD0D8B0, qword_25E9D97F0);
  sub_25E981210(v0 + 56, &qword_27FD0D8B0, qword_25E9D97F0);
  return v0;
}

uint64_t IETranscriptLatencyIntervalSpec.__deallocating_deinit()
{
  sub_25E981210(v0 + 16, &qword_27FD0D8B0, qword_25E9D97F0);
  sub_25E981210(v0 + 56, &qword_27FD0D8B0, qword_25E9D97F0);

  return swift_deallocClassInstance();
}

uint64_t sub_25E9C639C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  MEMORY[0x28223BE20](v2 - 8);
  v114 = &v104 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v115 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v104 - v7;
  v9 = sub_25E9D7A10();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v104 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v104 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v104 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v104 - v20;
  v121 = sub_25E9D7B60();
  v22 = *(v121 - 8);
  v23 = MEMORY[0x28223BE20](v121);
  v120 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v104 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v104 - v28;
  v119 = a1;
  sub_25E9D79A0();
  v30 = sub_25E9D7A80();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v18, 1, v30) == 1)
  {
    return sub_25E981210(v18, &qword_27FD0D880, &unk_25E9D97C0);
  }

  sub_25E9D7A70();
  (*(v31 + 8))(v18, v30);
  v33 = sub_25E9D7B90();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v21, 1, v33) == 1)
  {
    return sub_25E981210(v21, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9D7B70();
  (*(v34 + 8))(v21, v33);
  v35 = v121;
  (*(v22 + 32))(v29, v27, v121);
  v36 = *(v22 + 104);
  v37 = v120;
  v36(v120, *MEMORY[0x277D234E8], v35);
  v38 = sub_25E9D7B50();
  v40 = v22 + 8;
  v39 = *(v22 + 8);
  v39(v37, v35);
  if ((v38 & 1) == 0)
  {
    return (v39)(v29, v35);
  }

  v111 = v40;
  if (qword_27FD0D580 != -1)
  {
    swift_once();
  }

  v41 = sub_25E9D7F10();
  v42 = __swift_project_value_buffer(v41, qword_27FD0DAB8);
  v44 = v117;
  v43 = v118;
  v107 = *(v117 + 16);
  v108 = v117 + 16;
  v107(v15, v119, v118);
  v106 = v42;
  v45 = sub_25E9D7F00();
  LODWORD(v109) = sub_25E9D8120();
  v46 = os_log_type_enabled(v45, v109);
  v47 = v116;
  v110 = v36;
  if (v46)
  {
    v105 = v45;
    v48 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v122[0] = v104;
    v49 = v48;
    *v48 = 136315138;
    sub_25E9D79F0();
    v50 = sub_25E9D7C40();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v8, 1, v50) == 1)
    {
      sub_25E981210(v8, &qword_27FD0D8A0, &unk_25E9D97E0);
      v52 = 0xE300000000000000;
      v53 = 7104878;
    }

    else
    {
      v53 = sub_25E9D79E0();
      v52 = v54;
      (*(v51 + 8))(v8, v50);
    }

    (*(v117 + 8))(v15, v118);
    v55 = sub_25E9887EC(v53, v52, v122);

    *(v49 + 1) = v55;
    v56 = v105;
    _os_log_impl(&dword_25E971000, v105, v109, "handleStatementEvaluated, sender: %s", v49, 0xCu);
    v57 = v104;
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x25F8C51A0](v57, -1, -1);
    MEMORY[0x25F8C51A0](v49, -1, -1);

    v47 = v116;
  }

  else
  {

    (*(v44 + 8))(v15, v43);
  }

  v58 = v115;
  sub_25E9D79F0();
  v59 = sub_25E9D7C40();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    v39(v29, v121);
    return sub_25E981210(v58, &qword_27FD0D8A0, &unk_25E9D97E0);
  }

  v109 = v39;
  v61 = sub_25E9D79E0();
  v63 = v62;
  v64 = v58;
  v65 = v61;
  (*(v60 + 8))(v64, v59);
  v66 = v121;
  if (v65 == 0x726F747563657865 && v63 == 0xE800000000000000 || (sub_25E9D8300() & 1) != 0)
  {
    v67 = *(v47 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes);
    v68 = v120;
    v110(v120, *MEMORY[0x277D23520], v66);
    LOBYTE(v67) = sub_25E9C34DC(v68, v67);
    v109(v68, v66);
    if (v67)
    {
      v115 = v65;
      v69 = sub_25E9D7F00();
      v70 = sub_25E9D8120();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v117;
      if (v71)
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_25E971000, v69, v70, "handleStatementEvaluated - found event from executor", v73, 2u);
        MEMORY[0x25F8C51A0](v73, -1, -1);
      }

      v74 = v114;
      v75 = v118;
      v76 = v119;
      v77 = v107;
      v107(v114, v119, v118);
      (*(v72 + 56))(v74, 0, 1, v75);
      v78 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
      v47 = v116;
      swift_beginAccess();
      sub_25E9C8514(v74, v47 + v78);
      swift_endAccess();
      v77(v113, v76, v75);
      v79 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
      swift_beginAccess();
      v80 = *(v47 + v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + v79) = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_25E983888(0, v80[2] + 1, 1, v80);
        *(v47 + v79) = v80;
      }

      v83 = v80[2];
      v82 = v80[3];
      v66 = v121;
      v65 = v115;
      if (v83 >= v82 >> 1)
      {
        v80 = sub_25E983888((v82 > 1), v83 + 1, 1, v80);
      }

      v80[2] = v83 + 1;
      (*(v117 + 32))(v80 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v83, v113, v118);
      *(v47 + v79) = v80;
      swift_endAccess();
    }
  }

  if (v65 == 0x6F7365526E616C70 && v63 == 0xEE006E6F6974756CLL)
  {
  }

  else
  {
    v84 = sub_25E9D8300();

    if ((v84 & 1) == 0)
    {
      return (v109)(v29, v66);
    }
  }

  v85 = *(v47 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes);
  v86 = v120;
  v110(v120, *MEMORY[0x277D23518], v66);
  LOBYTE(v85) = sub_25E9C34DC(v86, v85);
  v87 = v109;
  v109(v86, v66);
  v88 = v118;
  if (v85)
  {
    v89 = v47;
    v90 = sub_25E9D7F00();
    v91 = sub_25E9D8120();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_25E971000, v90, v91, "handleStatementEvaluated - found event from planner", v92, 2u);
      MEMORY[0x25F8C51A0](v92, -1, -1);
    }

    v93 = v114;
    v94 = v119;
    v95 = v107;
    v107(v114, v119, v88);
    (*(v117 + 56))(v93, 0, 1, v88);
    v96 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
    v97 = v89;
    swift_beginAccess();
    sub_25E9C8514(v93, v89 + v96);
    swift_endAccess();
    v98 = v112;
    v95(v112, v94, v88);
    v99 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
    swift_beginAccess();
    v100 = *(v97 + v99);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *(v97 + v99) = v100;
    if ((v101 & 1) == 0)
    {
      v100 = sub_25E983888(0, v100[2] + 1, 1, v100);
      *(v97 + v99) = v100;
    }

    v103 = v100[2];
    v102 = v100[3];
    if (v103 >= v102 >> 1)
    {
      v100 = sub_25E983888((v102 > 1), v103 + 1, 1, v100);
    }

    v100[2] = v103 + 1;
    (*(v117 + 32))(v100 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v103, v98, v88);
    *(v97 + v99) = v100;
    swift_endAccess();
    return (v109)(v29, v66);
  }

  return v87(v29, v66);
}

void sub_25E9C7130(uint64_t a1)
{
  sub_25E9C71D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25E9C71D0(uint64_t a1)
{
  if (!qword_27FD0DD08)
  {
    sub_25E9D7A10();
    v1 = sub_25E9D81C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD0DD08);
    }
  }
}

uint64_t sub_25E9C7228@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  swift_beginAccess();
  return sub_25E9811A8(v3 + v4, a1, &qword_27FD0DD40, &unk_25E9DC120);
}

double sub_25E9C7294()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_25E9C7324(uint64_t a1)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_25E9D7B60();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  swift_beginAccess();
  sub_25E9811A8(v1 + v17, v16, &qword_27FD0DD40, &unk_25E9DC120);
  v18 = sub_25E9D7A10();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v16, 1, v18);
  result = sub_25E981210(v16, &qword_27FD0DD40, &unk_25E9DC120);
  if (v20 == 1)
  {
    v22 = v42;
    sub_25E9D79A0();
    v23 = sub_25E9D7A80();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      v25 = &qword_27FD0D880;
      v26 = &unk_25E9D97C0;
      v27 = v4;
    }

    else
    {
      sub_25E9D7A70();
      (*(v24 + 8))(v4, v23);
      v28 = sub_25E9D7B90();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v7, 1, v28) != 1)
      {
        v30 = v38;
        sub_25E9D7B70();
        (*(v29 + 8))(v7, v28);
        v32 = v39;
        v31 = v40;
        v33 = v30;
        v34 = v41;
        v22 = v42;
        (*(v40 + 32))(v39, v33, v41);
        v35 = sub_25E9C34DC(v32, *(v1 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes));
        (*(v31 + 8))(v32, v34);
        if (v35)
        {
          v36 = v37;
          (*(v19 + 16))(v37, v22, v18);
          (*(v19 + 56))(v36, 0, 1, v18);
          swift_beginAccess();
          sub_25E9C8514(v36, v1 + v17);
          swift_endAccess();
        }

        return sub_25E9C639C(v22);
      }

      v25 = &qword_27FD0D888;
      v26 = &qword_25E9DBDA0;
      v27 = v7;
    }

    sub_25E981210(v27, v25, v26);
    return sub_25E9C639C(v22);
  }

  return result;
}

uint64_t sub_25E9C77E0()
{
  sub_25E981210(v0 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, &qword_27FD0DD40, &unk_25E9DC120);

  return swift_deallocClassInstance();
}

uint64_t sub_25E9C789C(uint64_t a1)
{
  v2 = sub_25E9D7A10();
  v3 = *(v2 - 8);
  v75 = v2;
  v76 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v73 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - v16;
  v18 = sub_25E9D7B60();
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v80 = a1;
  sub_25E9D79A0();
  v24 = sub_25E9D7A80();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v12, 1, v24) == 1)
  {
    return sub_25E981210(v12, &qword_27FD0D880, &unk_25E9D97C0);
  }

  v71 = v23;
  sub_25E9D7A70();
  v69 = *(v25 + 8);
  v69(v12, v24);
  v28 = sub_25E9D7B90();
  v29 = *(v28 - 8);
  v68 = *(v29 + 48);
  if (v68(v17, 1, v28) == 1)
  {
    return sub_25E981210(v17, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  v70 = v28;
  sub_25E9D7B70();
  v31 = *(v29 + 8);
  v30 = v29 + 8;
  v67 = v31;
  v31(v17, v70);
  v32 = v71;
  (*(v78 + 32))(v71, v21, v79);
  v33 = v77;
  if (sub_25E9C34DC(v32, *(v77 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes)))
  {
    v65 = v30;
    v66 = *(v76 + 16);
    (v66)(v7, v80, v75);
    v34 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList;
    swift_beginAccess();
    v35 = *(v33 + v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + v34) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_25E983888(0, v35[2] + 1, 1, v35);
      *(v33 + v34) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    v39 = (v38 + 1);
    if (v38 >= v37 >> 1)
    {
      v64 = (v38 + 1);
      v62 = sub_25E983888((v37 > 1), v38 + 1, 1, v35);
      v39 = v64;
      v35 = v62;
    }

    v35[2] = v39;
    v40 = v7;
    v41 = v75;
    (*(v76 + 32))(v35 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v38, v40, v75);
    *(v77 + v34) = v35;
    swift_endAccess();
    if (qword_27FD0D580 != -1)
    {
      swift_once();
    }

    v42 = sub_25E9D7F10();
    __swift_project_value_buffer(v42, qword_27FD0DAB8);
    v43 = v74;
    (v66)(v74, v80, v41);
    v44 = v41;
    v45 = sub_25E9D7F00();
    v46 = sub_25E9D8120();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v81[0] = v64;
      v66 = v47;
      *v47 = 136315138;
      v48 = v73;
      sub_25E9D79A0();
      v49 = v26(v48, 1, v24);
      v50 = v46;
      if (v49 == 1)
      {
        v51 = 7104878;
        v52 = &qword_27FD0D880;
        v53 = &unk_25E9D97C0;
        v54 = v48;
      }

      else
      {
        v55 = v72;
        sub_25E9D7A70();
        v69(v48, v24);
        v56 = v70;
        if (v68(v55, 1, v70) != 1)
        {
          v51 = sub_25E9D7B80();
          v57 = v58;
          v67(v55, v56);
          goto LABEL_20;
        }

        v51 = 7104878;
        v52 = &qword_27FD0D888;
        v53 = &qword_25E9DBDA0;
        v54 = v55;
      }

      sub_25E981210(v54, v52, v53);
      v57 = 0xE300000000000000;
LABEL_20:
      (*(v76 + 8))(v43, v75);
      v59 = sub_25E9887EC(v51, v57, v81);

      v60 = v66;
      *(v66 + 1) = v59;
      _os_log_impl(&dword_25E971000, v45, v50, "IETranscriptAllEvent: %s", v60, 0xCu);
      v61 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x25F8C51A0](v61, -1, -1);
      MEMORY[0x25F8C51A0](v60, -1, -1);

      goto LABEL_21;
    }

    (*(v76 + 8))(v43, v44);
  }

LABEL_21:
  sub_25E9C639C(v80);
  return (*(v78 + 8))(v71, v79);
}

uint64_t sub_25E9C804C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_25E9D7B60();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  sub_25E9D79A0();
  v17 = sub_25E9D7A80();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    v19 = &qword_27FD0D880;
    v20 = &unk_25E9D97C0;
    v21 = v6;
LABEL_5:
    sub_25E981210(v21, v19, v20);
    return sub_25E9C639C(a1);
  }

  sub_25E9D7A70();
  (*(v18 + 8))(v6, v17);
  v22 = sub_25E9D7B90();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    v19 = &qword_27FD0D888;
    v20 = &qword_25E9DBDA0;
    v21 = v9;
    goto LABEL_5;
  }

  sub_25E9D7B70();
  (*(v23 + 8))(v9, v22);
  (*(v11 + 32))(v16, v14, v10);
  v25 = v33;
  v26 = sub_25E9C34DC(v16, *(v33 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes));
  (*(v11 + 8))(v16, v10);
  if (v26)
  {
    v27 = sub_25E9D7A10();
    v28 = *(v27 - 8);
    v29 = v32;
    (*(v28 + 16))(v32, a1, v27);
    (*(v28 + 56))(v29, 0, 1, v27);
    v30 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
    swift_beginAccess();
    sub_25E9C8514(v29, v25 + v30);
    swift_endAccess();
  }

  return sub_25E9C639C(a1);
}

uint64_t sub_25E9C84A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E9C8514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E9C8584()
{
  result = qword_27FD0DD48;
  if (!qword_27FD0DD48)
  {
    sub_25E9D7B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DD48);
  }

  return result;
}

uint64_t sub_25E9C85DC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD50, &qword_25E9DBF78);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD58, &qword_25E9DBF80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  sub_25E9D7A00();
  v15 = sub_25E9D7B00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v8, 1, v15) == 1)
  {
    sub_25E981210(v8, &qword_27FD0DD50, &qword_25E9DBF78);
  }

  else
  {
    v31 = v12;
    v32 = a2;
    sub_25E9D7AF0();
    v18 = *(v16 + 8);
    v18(v8, v15);
    v19 = sub_25E9D7890();
    v20 = *(v19 - 8);
    v30 = *(v20 + 48);
    if (v30(v14, 1, v19) == 1)
    {
      sub_25E981210(v14, &qword_27FD0DD58, &qword_25E9DBF80);
    }

    else
    {
      v29 = v18;
      sub_25E9D7880();
      v22 = v21;
      v23 = v14;
      v24 = *(v20 + 8);
      v24(v23, v19);
      sub_25E9D7A00();
      if (v17(v6, 1, v15) == 1)
      {
        sub_25E981210(v6, &qword_27FD0DD50, &qword_25E9DBF78);
      }

      else
      {
        v25 = v31;
        sub_25E9D7AF0();
        v29(v6, v15);
        if (v30(v25, 1, v19) == 1)
        {
          sub_25E981210(v25, &qword_27FD0DD58, &qword_25E9DBF80);
        }

        else
        {
          sub_25E9D7880();
          v27 = v26;
          v24(v25, v19);
          if (v22 < v27)
          {
            *&result = v27 - v22;
            return result;
          }
        }
      }
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t sub_25E9C897C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v0 = sub_25E9D7B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E9DADD0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D234C0], v0);
  v6(v5 + v2, *MEMORY[0x277D234F0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D23518], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D23508], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x277D23500], v0);
  qword_27FD0F568 = v4;
  return result;
}

uint64_t sub_25E9C8B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v0 = sub_25E9D7B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E9DBF90;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D234C0], v0);
  v6(v5 + v2, *MEMORY[0x277D234F0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D23518], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D23508], v0);
  qword_27FD0F570 = v4;
  return result;
}

uint64_t sub_25E9C8C88(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v9 = sub_25E9D7B60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25E9D8990;
  v14 = v13 + v12;
  v15 = *a2;
  v16 = *(v10 + 104);
  v16(v14, v15, v9);
  v16(v14 + v11, *a3, v9);
  result = (v16)(v14 + 2 * v11, *a4, v9);
  *a5 = v13;
  return result;
}

uint64_t sub_25E9C8DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCF0, &qword_25E9DBDA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25E9DA800;
  v2 = v0[2];
  *(v1 + 56) = type metadata accessor for PlannerGrainDimensionsSpec();
  *(v1 + 64) = &off_2870ACBC8;
  *(v1 + 32) = v2;
  v3 = v0[3];
  v4 = type metadata accessor for IETranscriptLatencyIntervalSpec();
  *(v1 + 96) = v4;
  *(v1 + 104) = &off_2870ACB88;
  *(v1 + 72) = v3;
  *(v1 + 136) = v4;
  *(v1 + 144) = &off_2870ACB88;
  v12 = v0[5];
  *(v1 + 112) = v0[4];
  *(v1 + 176) = v4;
  *(v1 + 184) = &off_2870ACB88;
  *(v1 + 152) = v12;
  *(v1 + 216) = v4;
  *(v1 + 224) = &off_2870ACB88;
  v11 = v0[7];
  *(v1 + 192) = v0[6];
  *(v1 + 256) = v4;
  *(v1 + 264) = &off_2870ACB88;
  *(v1 + 232) = v11;
  *(v1 + 296) = v4;
  *(v1 + 304) = &off_2870ACB88;
  v5 = v0[9];
  *(v1 + 272) = v0[8];
  *(v1 + 336) = v4;
  *(v1 + 344) = &off_2870ACB88;
  *(v1 + 312) = v5;
  *(v1 + 376) = v4;
  *(v1 + 384) = &off_2870ACB88;
  v6 = v0[11];
  *(v1 + 352) = v0[10];
  *(v1 + 416) = v4;
  *(v1 + 424) = &off_2870ACB88;
  *(v1 + 392) = v6;
  *(v1 + 456) = v4;
  *(v1 + 464) = &off_2870ACB88;
  v7 = v0[13];
  *(v1 + 432) = v0[12];
  *(v1 + 496) = v4;
  *(v1 + 504) = &off_2870ACB88;
  *(v1 + 472) = v7;
  *(v1 + 536) = v4;
  *(v1 + 544) = &off_2870ACB88;
  v8 = v0[15];
  *(v1 + 512) = v0[14];
  *(v1 + 576) = v4;
  *(v1 + 584) = &off_2870ACB88;
  *(v1 + 552) = v8;
  v9 = v0[16];
  *(v1 + 616) = v4;
  *(v1 + 624) = &off_2870ACB88;
  *(v1 + 592) = v9;

  return v1;
}

uint64_t sub_25E9C8F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D890, &unk_25E9D97D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_25E9D79C0();
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  result = swift_beginAccess();
  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = sub_25E9CD2F8(&v24, *(*(v5 + 56) + ((v11 << 9) | (8 * v12))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= ((v6 + 63) >> 6))
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  swift_endAccess();

  sub_25E9D79B0();
  v13 = sub_25E9D7A60();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_25E981210(v4, &qword_27FD0D890, &unk_25E9D97D0);
  }

  else
  {
    v15 = sub_25E9D7A50();
    (*(v14 + 8))(v4, v13);
    swift_beginAccess();
    sub_25E9CD2F8(&v24, v15);
    swift_endAccess();
  }

  v16 = sub_25E9C8DC4();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;
    do
    {
      sub_25E986C6C(v18, v21);
      v19 = v22;
      v20 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v20 + 8))(a1, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v18 += 40;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_25E9C9230@<X0>(unsigned __int8 *a1@<X8>)
{
  v168 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE0, &qword_25E9DBD88);
  MEMORY[0x28223BE20](v1 - 8);
  v154 = &v153 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE8, &unk_25E9DBD90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v153 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v156 = &v153 - v6;
  v7 = sub_25E9D7AA0();
  v161 = *(v7 - 8);
  v162 = v7;
  MEMORY[0x28223BE20](v7);
  v157 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD68, &qword_25E9DC118);
  MEMORY[0x28223BE20](v169);
  v170 = (&v153 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v164 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v153 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v153 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v153 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v159 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v158 = &v153 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v153 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v160 = &v153 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v167 = &v153 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v153 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v153 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD40, &unk_25E9DC120);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v166 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v165 = &v153 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v175 = &v153 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v174 = &v153 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v153 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v153 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v51);
  v53 = &v153 - v52;
  v179[0] = 6;
  v172 = v54;
  sub_25E9C3758(&v153 - v52, v54);
  v173 = v53;
  sub_25E9811A8(v53, v50, &qword_27FD0DD40, &unk_25E9DC120);
  v55 = sub_25E9D7A10();
  v56 = *(v55 - 8);
  v176 = *(v56 + 48);
  v177 = v56 + 48;
  v57 = v176(v50, 1, v55);
  v171 = v56;
  if (v57 == 1)
  {
    v58 = &qword_27FD0DD40;
    v59 = &unk_25E9DC120;
    v60 = v50;
LABEL_5:
    sub_25E981210(v60, v58, v59);
    v63 = v172;
    v64 = sub_25E9D7B90();
    (*(*(v64 - 8) + 56))(v35, 1, 1, v64);
    goto LABEL_7;
  }

  sub_25E9D79A0();
  (*(v56 + 8))(v50, v55);
  v61 = sub_25E9D7A80();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v19, 1, v61) == 1)
  {
    v58 = &qword_27FD0D880;
    v59 = &unk_25E9D97C0;
    v60 = v19;
    goto LABEL_5;
  }

  sub_25E9D7A70();
  (*(v62 + 8))(v19, v61);
  v63 = v172;
LABEL_7:
  sub_25E9811A8(v63, v47, &qword_27FD0DD40, &unk_25E9DC120);
  if (v176(v47, 1, v55) == 1)
  {
    v65 = &qword_27FD0DD40;
    v66 = &unk_25E9DC120;
    v67 = v47;
LABEL_11:
    sub_25E981210(v67, v65, v66);
    v70 = v170;
    v71 = sub_25E9D7B90();
    (*(*(v71 - 8) + 56))(v33, 1, 1, v71);
    v72 = v174;
    goto LABEL_13;
  }

  sub_25E9D79A0();
  (*(v171 + 8))(v47, v55);
  v68 = sub_25E9D7A80();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v17, 1, v68) == 1)
  {
    v65 = &qword_27FD0D880;
    v66 = &unk_25E9D97C0;
    v67 = v17;
    goto LABEL_11;
  }

  sub_25E9D7A70();
  (*(v69 + 8))(v17, v68);
  v72 = v174;
  v70 = v170;
LABEL_13:
  v73 = *(v169 + 48);
  sub_25E9CDE98(v35, v70);
  sub_25E9CDE98(v33, v70 + v73);
  v74 = sub_25E9D7B90();
  v75 = *(v74 - 8);
  v170 = *(v75 + 48);
  v76 = v170(v70, 1, v74);
  v169 = v75 + 48;
  if (v76 == 1)
  {
LABEL_25:
    v179[0] = 6;
    v92 = &qword_27FD0DD68;
    v93 = &qword_25E9DC118;
    v94 = v70;
LABEL_26:
    sub_25E981210(v94, v92, v93);
    goto LABEL_27;
  }

  v77 = v167;
  sub_25E9811A8(v70, v167, &qword_27FD0D888, &qword_25E9DBDA0);
  v78 = *(v75 + 88);
  v79 = v78(v77, v74);
  if (v79 != *MEMORY[0x277D23588])
  {
    if (v79 != *MEMORY[0x277D23560])
    {
      (*(v75 + 8))(v167, v74);
      goto LABEL_24;
    }

    v80 = v170(v70 + v73, 1, v74);
    v72 = v174;
    if (v80 == 1)
    {
      (*(v75 + 8))(v167, v74);
      goto LABEL_25;
    }

    v114 = v155;
    sub_25E9811A8(v70 + v73, v155, &qword_27FD0D888, &qword_25E9DBDA0);
    v115 = v78(v114, v74);
    if (v115 == *MEMORY[0x277D23540])
    {
      v179[0] = 1;
      v116 = *(v75 + 8);
      v117 = v114;
    }

    else
    {
      if (v115 != *MEMORY[0x277D23578])
      {
        v151 = v167;
        if (v115 != *MEMORY[0x277D23570])
        {
          v152 = *(v75 + 8);
          v152(v155, v74);
          v152(v151, v74);
          goto LABEL_25;
        }

        v179[0] = 4;
        v116 = *(v75 + 8);
        v116(v155, v74);
        goto LABEL_75;
      }

      v179[0] = 5;
      v116 = *(v75 + 8);
      v117 = v155;
    }

    v151 = v167;
    v116(v117, v74);
LABEL_75:
    v116(v151, v74);
LABEL_83:
    sub_25E981210(v70 + v73, &qword_27FD0D888, &qword_25E9DBDA0);
    v94 = v70;
    v92 = &qword_27FD0D888;
    v93 = &qword_25E9DBDA0;
    goto LABEL_26;
  }

  (*(v75 + 96))(v77, v74);
  if (v170(v70 + v73, 1, v74) == 1)
  {
    (*(v161 + 8))(v77, v162);
LABEL_24:
    v72 = v174;
    goto LABEL_25;
  }

  v81 = v160;
  sub_25E9811A8(v70 + v73, v160, &qword_27FD0D888, &qword_25E9DBDA0);
  v82 = v78(v81, v74);
  if (v82 == *MEMORY[0x277D23540])
  {
    v83 = v161;
    v84 = v162;
    (*(v161 + 32))(v157, v167, v162);
    v85 = v154;
    sub_25E9D7A90();
    v86 = v85;
    v87 = sub_25E9D7C70();
    v88 = *(v87 - 8);
    v89 = *(v88 + 48);
    v167 = v87;
    if (v89(v86, 1) == 1)
    {
      (*(v83 + 8))(v157, v84);
      sub_25E981210(v86, &qword_27FD0DCE0, &qword_25E9DBD88);
      v90 = sub_25E9D7D20();
      v91 = v156;
      (*(*(v90 - 8) + 56))(v156, 1, 1, v90);
      v72 = v174;
    }

    else
    {
      sub_25E9D7C60();
      (*(v83 + 8))(v157, v84);
      (*(v88 + 8))(v86, v167);
      v91 = v156;
      v145 = sub_25E9D7D20();
      v146 = *(v145 - 8);
      v147 = (*(v146 + 48))(v91, 1, v145);
      v72 = v174;
      if (v147 != 1)
      {
        v167 = v145;
        v148 = v153;
        sub_25E9811A8(v91, v153, &qword_27FD0DCE8, &unk_25E9DBD90);
        v149 = v148;
        v150 = v167;
        if ((*(v146 + 88))(v149, v167) == *MEMORY[0x277D23600])
        {
          v179[0] = 3;
          (*(v146 + 8))(v153, v150);
LABEL_82:
          sub_25E981210(v91, &qword_27FD0DCE8, &unk_25E9DBD90);
          (*(v75 + 8))(v160, v74);
          goto LABEL_83;
        }

        (*(v146 + 8))(v153, v150);
      }
    }

    v179[0] = 0;
    goto LABEL_82;
  }

  v119 = v161;
  v118 = v162;
  if (v82 != *MEMORY[0x277D23570])
  {
    (*(v75 + 8))(v160, v74);
    (*(v119 + 8))(v167, v118);
    goto LABEL_24;
  }

  v179[0] = 2;
  (*(v75 + 8))(v160, v74);
  (*(v119 + 8))(v167, v118);
  sub_25E981210(v70 + v73, &qword_27FD0D888, &qword_25E9DBDA0);
  sub_25E981210(v70, &qword_27FD0D888, &qword_25E9DBDA0);
  v72 = v174;
LABEL_27:
  v167 = v75;
  v95 = v173;
  if (qword_27FD0D590 != -1)
  {
    swift_once();
  }

  v96 = sub_25E9D7F10();
  __swift_project_value_buffer(v96, qword_27FD0DAE8);
  sub_25E9811A8(v95, v72, &qword_27FD0DD40, &unk_25E9DC120);
  v97 = v175;
  sub_25E9811A8(v63, v175, &qword_27FD0DD40, &unk_25E9DC120);
  v98 = v179[0];
  v99 = v63;
  v100 = sub_25E9D7F00();
  v101 = sub_25E9D8120();
  if (os_log_type_enabled(v100, v101))
  {
    LODWORD(v161) = v101;
    v102 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v178[0] = v162;
    *v102 = 136315650;
    v103 = v165;
    sub_25E9811A8(v72, v165, &qword_27FD0DD40, &unk_25E9DC120);
    if (v176(v103, 1, v55) == 1)
    {
      v104 = &qword_27FD0DD40;
      v105 = &unk_25E9DC120;
      v106 = v103;
    }

    else
    {
      v108 = v163;
      sub_25E9D79A0();
      (*(v171 + 8))(v103, v55);
      v109 = sub_25E9D7A80();
      v110 = *(v109 - 8);
      if ((*(v110 + 48))(v108, 1, v109) != 1)
      {
        v113 = v158;
        sub_25E9D7A70();
        (*(v110 + 8))(v108, v109);
        if (v170(v113, 1, v74) == 1)
        {
          sub_25E981210(v113, &qword_27FD0D888, &qword_25E9DBDA0);
          v111 = 0xE300000000000000;
          v112 = 7104878;
        }

        else
        {
          v112 = sub_25E9D7B80();
          v111 = v120;
          (*(v167 + 8))(v113, v74);
        }

        v72 = v174;
LABEL_44:
        sub_25E981210(v72, &qword_27FD0DD40, &unk_25E9DC120);
        v121 = sub_25E9887EC(v112, v111, v178);

        *(v102 + 4) = v121;
        *(v102 + 12) = 2080;
        v122 = v175;
        v123 = v166;
        sub_25E9811A8(v175, v166, &qword_27FD0DD40, &unk_25E9DC120);
        if (v176(v123, 1, v55) == 1)
        {
          sub_25E981210(v123, &qword_27FD0DD40, &unk_25E9DC120);
          v124 = 0xE300000000000000;
          v125 = v173;
        }

        else
        {
          v126 = v164;
          sub_25E9D79A0();
          v127 = v123;
          v128 = v126;
          (*(v171 + 8))(v127, v55);
          v129 = sub_25E9D7A80();
          v130 = *(v129 - 8);
          v131 = (*(v130 + 48))(v128, 1, v129);
          v125 = v173;
          if (v131 == 1)
          {
            v132 = &qword_27FD0D880;
            v133 = &unk_25E9D97C0;
            v134 = v128;
          }

          else
          {
            v135 = v159;
            sub_25E9D7A70();
            (*(v130 + 8))(v128, v129);
            if (v170(v135, 1, v74) != 1)
            {
              v136 = sub_25E9D7B80();
              v124 = v144;
              (*(v167 + 8))(v135, v74);
              v122 = v175;
LABEL_52:
              sub_25E981210(v122, &qword_27FD0DD40, &unk_25E9DC120);
              v137 = sub_25E9887EC(v136, v124, v178);

              *(v102 + 14) = v137;
              *(v102 + 22) = 2080;
              if (v98 > 2)
              {
                if (v98 <= 4)
                {
                  if (v98 == 3)
                  {
                    v138 = 0x800000025E9DCBB0;
                    v139 = 0xD00000000000001ALL;
                  }

                  else
                  {
                    v138 = 0xEE0065736E6F7073;
                    v139 = 0x65526E6F69746361;
                  }

                  goto LABEL_66;
                }

                if (v98 != 5)
                {
                  v138 = 0xE700000000000000;
                  v139 = 0x6E776F6E6B6E75;
                  goto LABEL_66;
                }

                v139 = 0xD000000000000015;
                v140 = "actionWithoutResponse";
                goto LABEL_63;
              }

              if (v98)
              {
                if (v98 != 1)
                {
                  v139 = 0xD000000000000015;
                  v140 = "requestDisambiguation";
LABEL_63:
                  v138 = (v140 - 32) | 0x8000000000000000;
                  goto LABEL_66;
                }

                v138 = 0xEC00000065746169;
                v139 = 0x64656D7265746E69;
              }

              else
              {
                v138 = 0xED00006E6F697463;
                v139 = 0x4174736575716572;
              }

LABEL_66:
              v107 = v168;
              v141 = v162;
              v142 = sub_25E9887EC(v139, v138, v178);

              *(v102 + 24) = v142;
              _os_log_impl(&dword_25E971000, v100, v161, "permutation - begin: %s, end: %s, result: %s", v102, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x25F8C51A0](v141, -1, -1);
              MEMORY[0x25F8C51A0](v102, -1, -1);

              sub_25E981210(v172, &qword_27FD0DD40, &unk_25E9DC120);
              sub_25E981210(v125, &qword_27FD0DD40, &unk_25E9DC120);
              goto LABEL_67;
            }

            v132 = &qword_27FD0D888;
            v133 = &qword_25E9DBDA0;
            v134 = v135;
          }

          sub_25E981210(v134, v132, v133);
          v124 = 0xE300000000000000;
          v122 = v175;
        }

        v136 = 7104878;
        goto LABEL_52;
      }

      v104 = &qword_27FD0D880;
      v105 = &unk_25E9D97C0;
      v106 = v108;
    }

    sub_25E981210(v106, v104, v105);
    v111 = 0xE300000000000000;
    v112 = 7104878;
    goto LABEL_44;
  }

  sub_25E981210(v97, &qword_27FD0DD40, &unk_25E9DC120);
  sub_25E981210(v72, &qword_27FD0DD40, &unk_25E9DC120);
  sub_25E981210(v99, &qword_27FD0DD40, &unk_25E9DC120);
  sub_25E981210(v95, &qword_27FD0DD40, &unk_25E9DC120);
  v107 = v168;
LABEL_67:
  result = swift_beginAccess();
  *v107 = v179[0];
  return result;
}

__n128 sub_25E9CA850@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25E9C9230(v71);
  v67 = v71[0];
  v9 = *(v7 + 16);
  v70 = *(v9 + 152);
  v63 = *(v9 + 40);
  v52 = *(v9 + 48);
  v62 = *(v9 + 56);
  v49 = *(v9 + 64);
  v60 = *(v9 + 32);
  v61 = *(v9 + 24);
  v64 = *(v9 + 144);
  v65 = *(v9 + 136);

  v57 = *(v9 + 72);
  v56 = *(v9 + 104);
  v53 = *(v9 + 120);
  v54 = *(v9 + 88);
  v51 = sub_25E9C3AB4();
  v50 = v10;
  v48 = sub_25E9C3AB4();
  v47 = v11;
  v46 = sub_25E9C3AB4();
  v45 = v12;
  v44 = sub_25E9C3AB4();
  v43 = v13;
  v42 = sub_25E9C3AB4();
  v41 = v14;
  v40 = sub_25E9C3AB4();
  v39 = v15;
  v38 = sub_25E9C3AB4();
  v37 = v16;
  v36 = sub_25E9C3AB4();
  v35 = v17;
  v34 = sub_25E9C3AB4();
  v33 = v18;
  v32 = sub_25E9C3AB4();
  v20 = v19;
  v21 = sub_25E9C3AB4();
  v23 = v22;
  v24 = sub_25E9C3AB4();
  LOBYTE(v9) = v25;
  v26 = sub_25E9C3AB4();
  v28 = v27;
  v29 = sub_25E9C3AB4();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v63;
  *(a7 + 56) = v52;
  *(a7 + 64) = v62;
  *(a7 + 72) = v49;
  *(a7 + 80) = v61;
  *(a7 + 88) = v60;
  *(a7 + 96) = v67;
  *(a7 + 168) = v65;
  *(a7 + 176) = v64;
  *(a7 + 120) = v54;
  *(a7 + 104) = v57;
  *(a7 + 152) = v53;
  result = v56;
  *(a7 + 136) = v56;
  *(a7 + 184) = v51;
  *(a7 + 192) = v50 & 1;
  *(a7 + 200) = v48;
  *(a7 + 208) = v47 & 1;
  *(a7 + 216) = v46;
  *(a7 + 224) = v45 & 1;
  *(a7 + 232) = v44;
  *(a7 + 240) = v43 & 1;
  *(a7 + 248) = v42;
  *(a7 + 256) = v41 & 1;
  *(a7 + 264) = v40;
  *(a7 + 272) = v39 & 1;
  *(a7 + 280) = v38;
  *(a7 + 288) = v37 & 1;
  *(a7 + 296) = v36;
  *(a7 + 304) = v35 & 1;
  *(a7 + 312) = v34;
  *(a7 + 320) = v33 & 1;
  *(a7 + 328) = v32;
  *(a7 + 336) = v20 & 1;
  *(a7 + 344) = v21;
  *(a7 + 352) = v23 & 1;
  *(a7 + 360) = v24;
  *(a7 + 368) = v9 & 1;
  *(a7 + 376) = v26;
  *(a7 + 384) = v28 & 1;
  *(a7 + 392) = v29;
  *(a7 + 400) = v31 & 1;
  *(a7 + 408) = v70;
  return result;
}

void *sub_25E9CAB90()
{

  return v0;
}

uint64_t sub_25E9CAC28()
{
  sub_25E9CAB90();

  return swift_deallocClassInstance();
}

void *sub_25E9CAC80()
{
  type metadata accessor for PlannerGrainDimensionsSpec();
  v1 = swift_allocObject();
  *(v1 + 16) = 6;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v78 = v0;
  v0[2] = v1;
  type metadata accessor for IETranscriptLatencyIntervalSpec();
  v2 = swift_allocObject();
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  if (qword_27FD0D5D8 != -1)
  {
    swift_once();
  }

  v3 = qword_27FD0F560;
  type metadata accessor for IETranscriptNextEvent(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  v6 = sub_25E9D7A10();
  v7 = *(*(v6 - 8) + 56);
  v77 = v6;
  v7(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v3;
  *(v4 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v8 = type metadata accessor for IETranscriptEventFilter(0);
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v4;
  swift_beginAccess();
  v72 = v3;

  sub_25E986D14(v79, (v2 + 1));
  swift_endAccess();
  if (qword_27FD0D5E0 != -1)
  {
    swift_once();
  }

  v9 = qword_27FD0F568;
  type metadata accessor for IETranscriptLastEvent(0);
  v10 = swift_allocObject();
  v7(v10 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v10 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v9;
  v11 = MEMORY[0x277D84F90];
  *(v10 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v10;
  swift_beginAccess();

  sub_25E986D14(v79, v2 + 56);
  swift_endAccess();
  v78[3] = v2;
  v12 = swift_allocObject();
  v12[2] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[5] = 0u;
  v12[1] = 0u;
  v13 = swift_allocObject();
  v7(v13 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v13 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v3;
  *(v13 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = v11;
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v13;
  swift_beginAccess();

  sub_25E986D14(v79, (v12 + 1));
  swift_endAccess();
  if (qword_27FD0D5E8 != -1)
  {
    swift_once();
  }

  v14 = qword_27FD0F570;
  v15 = swift_allocObject();
  v7(v15 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v15 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v14;
  *(v15 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v15;
  swift_beginAccess();
  v71 = v14;

  sub_25E986D14(v79, v12 + 56);
  swift_endAccess();
  v78[4] = v12;
  v16 = swift_allocObject();
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[5] = 0u;
  v16[1] = 0u;
  v17 = swift_allocObject();
  v7(v17 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v17 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v72;
  *(v17 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v17;
  swift_beginAccess();

  sub_25E986D14(v79, (v16 + 1));
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v74 = sub_25E9D7B60();
  v18 = *(v74 - 8);
  v76 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25E9D96A0;
  v75 = *(v18 + 104);
  v69 = *MEMORY[0x277D23510];
  v75(v19 + v76);
  v20 = swift_allocObject();
  v7(v20 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  v73 = v7;
  *(v20 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v19;
  *(v20 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v20;
  swift_beginAccess();
  sub_25E986D14(v79, v16 + 56);
  swift_endAccess();
  v78[5] = v16;
  v21 = swift_allocObject();
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[5] = 0u;
  v21[1] = 0u;
  v22 = swift_allocObject();
  v7(v22 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v22 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v72;
  *(v22 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v22;
  swift_beginAccess();

  sub_25E986D14(v79, (v21 + 1));
  swift_endAccess();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25E9D96A0;
  v70 = *MEMORY[0x277D234B8];
  v75(v23 + v76);
  v24 = swift_allocObject();
  v7(v24 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v24 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v23;
  *(v24 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v24;
  swift_beginAccess();
  sub_25E986D14(v79, v21 + 56);
  swift_endAccess();
  v78[6] = v21;
  v25 = swift_allocObject();
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[5] = 0u;
  v25[1] = 0u;
  v26 = swift_allocObject();
  v7(v26 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v26 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v72;
  *(v26 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v26;
  swift_beginAccess();

  sub_25E986D14(v79, (v25 + 1));
  swift_endAccess();
  if (qword_27FD0D5F0 != -1)
  {
    swift_once();
  }

  v27 = qword_27FD0F578;
  v28 = swift_allocObject();
  v7(v28 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v28 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v27;
  *(v28 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v28;
  swift_beginAccess();

  sub_25E986D14(v79, v25 + 56);
  swift_endAccess();
  v78[7] = v25;
  v29 = swift_allocObject();
  v29[2] = 0u;
  v29[3] = 0u;
  v29[4] = 0u;
  v29[5] = 0u;
  v29[1] = 0u;
  v30 = swift_allocObject();
  v7(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v14;
  *(v30 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v30;
  swift_beginAccess();

  sub_25E986D14(v79, (v29 + 1));
  swift_endAccess();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25E9D96A0;
  (v75)(v31 + v76, *MEMORY[0x277D23500], v74);
  v32 = swift_allocObject();
  v7(v32 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v32 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v31;
  *(v32 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v32;
  swift_beginAccess();
  sub_25E986D14(v79, v29 + 56);
  swift_endAccess();
  v78[8] = v29;
  v33 = swift_allocObject();
  v33[2] = 0u;
  v33[3] = 0u;
  v33[4] = 0u;
  v33[5] = 0u;
  v33[1] = 0u;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25E9D96A0;
  (v75)(v34 + v76, v69, v74);
  v35 = swift_allocObject();
  v7(v35 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v35 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v34;
  *(v35 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v35;
  swift_beginAccess();
  sub_25E986D14(v79, (v33 + 1));
  swift_endAccess();
  v36 = swift_allocObject();
  v7(v36 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v36 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v14;
  *(v36 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v36;
  swift_beginAccess();

  sub_25E986D14(v79, v33 + 56);
  swift_endAccess();
  v78[9] = v33;
  v37 = swift_allocObject();
  v37[2] = 0u;
  v37[3] = 0u;
  v37[4] = 0u;
  v37[5] = 0u;
  v37[1] = 0u;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_25E9D96A0;
  (v75)(v38 + v76, v70, v74);
  v39 = swift_allocObject();
  v7(v39 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v39 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v38;
  *(v39 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v39;
  swift_beginAccess();
  sub_25E986D14(v79, (v37 + 1));
  swift_endAccess();
  v40 = swift_allocObject();
  v7(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v71;
  *(v40 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v40;
  swift_beginAccess();

  sub_25E986D14(v79, v37 + 56);
  swift_endAccess();
  v78[10] = v37;
  v41 = swift_allocObject();
  v41[2] = 0u;
  v41[3] = 0u;
  v41[4] = 0u;
  v41[5] = 0u;
  v41[1] = 0u;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_25E9D96A0;
  (v75)(v42 + v76, v70, v74);
  v43 = swift_allocObject();
  v7(v43 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v43 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v42;
  *(v43 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v43;
  swift_beginAccess();
  sub_25E986D14(v79, (v41 + 1));
  swift_endAccess();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_25E9D96A0;
  (v75)(v44 + v76, v69, v74);
  v45 = swift_allocObject();
  v7(v45 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v45 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v44;
  *(v45 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v45;
  swift_beginAccess();
  sub_25E986D14(v79, v41 + 56);
  swift_endAccess();
  v78[11] = v41;
  v46 = swift_allocObject();
  v46[2] = 0u;
  v46[3] = 0u;
  v46[4] = 0u;
  v46[5] = 0u;
  v46[1] = 0u;
  v47 = swift_allocObject();
  v7(v47 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v47 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v27;
  *(v47 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v47;
  swift_beginAccess();

  sub_25E986D14(v79, (v46 + 1));
  swift_endAccess();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_25E9D96A0;
  (v75)(v48 + v76, v70, v74);
  v49 = swift_allocObject();
  v7(v49 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v49 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v48;
  *(v49 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v49;
  swift_beginAccess();
  sub_25E986D14(v79, v46 + 56);
  swift_endAccess();
  v78[12] = v46;
  v50 = swift_allocObject();
  v50[2] = 0u;
  v50[3] = 0u;
  v50[4] = 0u;
  v50[5] = 0u;
  v50[1] = 0u;
  v51 = swift_allocObject();
  v7(v51 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v51 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v72;
  *(v51 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v51;
  swift_beginAccess();

  sub_25E986D14(v79, (v50 + 1));
  swift_endAccess();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25E9D96A0;
  (v75)(v52 + v76, *MEMORY[0x277D234D8], v74);
  v53 = swift_allocObject();
  v7(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v52;
  *(v53 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v53;
  swift_beginAccess();
  sub_25E986D14(v79, v50 + 56);
  swift_endAccess();
  v78[13] = v50;
  v54 = swift_allocObject();
  v54[2] = 0u;
  v54[3] = 0u;
  v54[4] = 0u;
  v54[5] = 0u;
  v54[1] = 0u;
  v55 = swift_allocObject();
  v7(v55 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v55 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v72;
  *(v55 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v55;
  swift_beginAccess();

  sub_25E986D14(v79, (v54 + 1));
  swift_endAccess();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_25E9D96A0;
  (v75)(v56 + v76, *MEMORY[0x277D234D0], v74);
  v57 = swift_allocObject();
  v7(v57 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v57 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v56;
  *(v57 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v57;
  swift_beginAccess();
  sub_25E986D14(v79, v54 + 56);
  swift_endAccess();
  v78[14] = v54;
  v58 = swift_allocObject();
  v58[2] = 0u;
  v58[3] = 0u;
  v58[4] = 0u;
  v58[5] = 0u;
  v58[1] = 0u;
  v59 = swift_allocObject();
  v7(v59 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v59 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v72;
  *(v59 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v59;
  swift_beginAccess();

  sub_25E986D14(v79, (v58 + 1));
  swift_endAccess();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_25E9D96A0;
  (v75)(v60 + v76, *MEMORY[0x277D234E0], v74);
  v61 = swift_allocObject();
  v7(v61 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v61 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v60;
  *(v61 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v61;
  swift_beginAccess();
  sub_25E986D14(v79, v58 + 56);
  swift_endAccess();
  v78[15] = v58;
  v62 = swift_allocObject();
  v62[2] = 0u;
  v62[3] = 0u;
  v62[4] = 0u;
  v62[5] = 0u;
  v62[1] = 0u;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_25E9D96A0;
  (v75)(v63 + v76, *MEMORY[0x277D234C8], v74);
  v64 = swift_allocObject();
  v73(v64 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v64 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v63;
  *(v64 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v64;
  swift_beginAccess();
  sub_25E986D14(v79, (v62 + 1));
  swift_endAccess();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_25E9D96A0;
  (v75)(v65 + v76, *MEMORY[0x277D234E8], v74);
  v66 = swift_allocObject();
  v73(v66 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v77);
  *(v66 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v65;
  *(v66 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v80 = v8;
  v81 = &off_2870ACBA8;
  v79[0] = v66;
  swift_beginAccess();
  sub_25E986D14(v79, v62 + 56);
  swift_endAccess();
  v67 = MEMORY[0x277D84FA0];
  result = v78;
  v78[16] = v62;
  v78[17] = v67;
  return result;
}

uint64_t sub_25E9CC728(uint64_t a1)
{
  v2 = sub_25E9D7BD0();
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v84 - v5;
  v6 = sub_25E9D7CA0();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE0, &qword_25E9DBD88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DCE8, &unk_25E9DBD90);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v84 - v12;
  v13 = sub_25E9D7AA0();
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v84 - v23;
  if (sub_25E9CDA4C())
  {
    v1[7] = sub_25E9D7990();
    v1[8] = v25;

    v1[5] = sub_25E9D79D0();
    v1[6] = v26;
  }

  v93 = v1;
  sub_25E9D79A0();
  v27 = sub_25E9D7A80();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v18, 1, v27) == 1)
  {
    sub_25E981210(v18, &qword_27FD0D880, &unk_25E9D97C0);
    v29 = sub_25E9D7B90();
    v30 = v24;
    (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
    return sub_25E981210(v30, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9D7A70();
  (*(v28 + 8))(v18, v27);
  v30 = v24;
  v31 = sub_25E9D7B90();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v24, 1, v31) == 1)
  {
    return sub_25E981210(v30, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9811A8(v24, v22, &qword_27FD0D888, &qword_25E9DBDA0);
  result = (*(v32 + 88))(v22, v31);
  if (result == *MEMORY[0x277D23588])
  {
    (*(v32 + 96))(v22, v31);
    v34 = v91;
    (*(v91 + 32))(v15, v22, v13);
    sub_25E9D7A90();
    v35 = sub_25E9D7C70();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 48))(v10, 1, v35);
    v38 = v93;
    if (v37 == 1)
    {
      (*(v34 + 8))(v15, v13);
      sub_25E981210(v10, &qword_27FD0DCE0, &qword_25E9DBD88);
      v39 = sub_25E9D7D20();
      v40 = v92;
      (*(*(v39 - 8) + 56))(v92, 1, 1, v39);
    }

    else
    {
      v40 = v92;
      sub_25E9D7C60();
      (*(v34 + 8))(v15, v13);
      (*(v36 + 8))(v10, v35);
      v46 = sub_25E9D7D20();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v40, 1, v46) != 1)
      {
        v52 = (*(v47 + 88))(v40, v46);
        v53 = *MEMORY[0x277D23600];
        result = (*(v47 + 8))(v40, v46);
        if (v52 == v53)
        {
          v54 = v38[17];
          v44 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (!v44)
          {
            v38[17] = v55;
            return sub_25E981210(v30, &qword_27FD0D888, &qword_25E9DBDA0);
          }

          goto LABEL_51;
        }

        goto LABEL_14;
      }
    }

    result = sub_25E981210(v40, &qword_27FD0DCE8, &unk_25E9DBD90);
LABEL_14:
    v48 = v38[9];
    v44 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (!v44)
    {
      v38[9] = v49;
      return sub_25E981210(v30, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    __break(1u);
    goto LABEL_49;
  }

  v41 = v93;
  if (result == *MEMORY[0x277D23538])
  {
    v41[3] = sub_25E9D79E0();
    v41[4] = v42;

    v43 = v41[10];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v41[10] = v45;
LABEL_25:
    (*(v32 + 8))(v22, v31);
    return sub_25E981210(v30, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23568])
  {
    v50 = v93[13];
    v44 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v44)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v93[13] = v51;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D23550])
  {
    v56 = v93[11];
    v44 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v44)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v93[11] = v57;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D23548])
  {
    (*(v32 + 96))(v22, v31);
    v59 = v88;
    v58 = v89;
    v60 = v90;
    result = (*(v89 + 32))(v88, v22, v90);
    v61 = v41[18];
    v44 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v44)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v41[18] = v62;
    v63 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(v59);
    (*(v58 + 8))(v59, v60);
LABEL_30:
    v41[19] = v63;

    return sub_25E981210(v30, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23558])
  {
    v64 = v93[12];
    v44 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v44)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v93[12] = v65;
    goto LABEL_25;
  }

  if (result == *MEMORY[0x277D23580])
  {
    v66 = v93[14];
    v44 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v44)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v93[14] = v67;
    goto LABEL_25;
  }

  if (result != *MEMORY[0x277D23560])
  {
    goto LABEL_25;
  }

  (*(v32 + 96))(v22, v31);
  v69 = v85;
  v68 = v86;
  result = (*(v85 + 32))(v87, v22, v86);
  v70 = v41[15];
  v44 = __OFADD__(v70, 1);
  v71 = v70 + 1;
  if (v44)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v41[15] = v71;
  v72 = v84;
  sub_25E9D79F0();
  v73 = sub_25E9D7C40();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_25E981210(v72, &qword_27FD0D8A0, &unk_25E9D97E0);
LABEL_47:
    v83 = v87;
    v63 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0();
    (*(v69 + 8))(v83, v68);
    goto LABEL_30;
  }

  v75 = sub_25E9D79E0();
  v76 = v72;
  v77 = v75;
  v79 = v78;
  (*(v74 + 8))(v76, v73);
  if (v77 == 0x6F7365526E616C70 && v79 == 0xEE006E6F6974756CLL)
  {
  }

  else
  {
    v80 = sub_25E9D8300();

    if ((v80 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v81 = v41[16];
  v44 = __OFADD__(v81, 1);
  v82 = v81 + 1;
  if (!v44)
  {
    v41[16] = v82;
    goto LABEL_47;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_25E9CD228()
{

  return swift_deallocClassInstance();
}

double sub_25E9CD29C()
{
  *(v0 + 16) = 6;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  return result;
}

uint64_t sub_25E9CD2F8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_25E9D8380();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_25E9CD5FC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25E9CD3D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD70, qword_25E9DC130);
  result = sub_25E9D8220();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_25E9D8380();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E9CD5FC(uint64_t result, unint64_t a2, char a3)
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
    sub_25E9CD3D8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25E9CD71C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25E9CD85C(v5 + 1);
  }

  v8 = *v3;
  result = sub_25E9D8380();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25E9D8320();
  __break(1u);
  return result;
}

void *sub_25E9CD71C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD70, qword_25E9DC130);
  v2 = *v0;
  v3 = sub_25E9D8210();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_25E9CD85C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD70, qword_25E9DC130);
  result = sub_25E9D8220();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_25E9D8380();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_25E9CDA4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  sub_25E9D79A0();
  v12 = sub_25E9D7A80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_25E981210(v5, &qword_27FD0D880, &unk_25E9D97C0);
    v14 = sub_25E9D7B90();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  sub_25E9D7A70();
  (*(v13 + 8))(v5, v12);
  v15 = sub_25E9D7B90();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    goto LABEL_10;
  }

  sub_25E9811A8(v11, v9, &qword_27FD0D888, &qword_25E9DBDA0);
  v17 = (*(v16 + 88))(v9, v15);
  if (v17 != *MEMORY[0x277D23588])
  {
    if (v17 == *MEMORY[0x277D23560])
    {
      sub_25E9D79F0();
      v19 = sub_25E9D7C40();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v2, 1, v19) == 1)
      {
        sub_25E981210(v2, &qword_27FD0D8A0, &unk_25E9D97E0);
      }

      else
      {
        v22 = sub_25E9D79E0();
        v24 = v23;
        (*(v20 + 8))(v2, v19);
        if (v22 == 0x726F747563657865 && v24 == 0xE800000000000000)
        {

          goto LABEL_5;
        }

        v25 = sub_25E9D8300();

        if (v25)
        {
          goto LABEL_5;
        }
      }
    }

    (*(v16 + 8))(v9, v15);
    goto LABEL_10;
  }

LABEL_5:
  (*(v16 + 8))(v9, v15);
  v18 = 1;
LABEL_11:
  sub_25E981210(v11, &qword_27FD0D888, &qword_25E9DBDA0);
  return v18;
}

uint64_t sub_25E9CDE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SELFComponent.turn.getter()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  v1 = qword_27FD0DD78;
  return v0;
}

void static SELFComponent.turn.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_27FD0DD78;
  qword_27FD0DD78 = a1;
}

void sub_25E9CDFFC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = qword_27FD0DD78;
  qword_27FD0DD78 = v1;
  v3 = v1;
}

uint64_t PnRLatencyContextMetrics.description.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_25E9D8240();
  MEMORY[0x25F8C4910](0xD000000000000012, 0x800000025E9DEB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD80, "|d");
  v3 = sub_25E9D7FF0();
  MEMORY[0x25F8C4910](v3);

  MEMORY[0x25F8C4910](0xD000000000000010, 0x800000025E9DEB60);
  v4 = sub_25E9D7FF0();
  MEMORY[0x25F8C4910](v4);

  MEMORY[0x25F8C4910](0xD000000000000014, 0x800000025E9DEB80);
  v5 = 0xE300000000000000;
  v6 = 7104878;
  if (v1 != 89 && v2 != 89)
  {
    sub_25E9D80F0();
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v6, v5);

  MEMORY[0x25F8C4910](32010, 0xE200000000000000);
  return 0;
}