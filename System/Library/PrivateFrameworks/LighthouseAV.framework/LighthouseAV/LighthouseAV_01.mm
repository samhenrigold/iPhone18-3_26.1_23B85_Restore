uint64_t sub_255EB8728(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_255EB87F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EB8858()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255EB8890(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5) & 1;
}

uint64_t sub_255EB897C(uint64_t *a1, uint64_t (*a2)(void *, void *), uint64_t a3, void *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a4[1];
  v11[0] = *a4;
  v11[1] = v6;
  if (v5)
  {
    v10[0] = v4;
    v10[1] = v5;

    v8 = a2(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_255EB89FC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_255ECF588();
  }
}

uint64_t sub_255EB8A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  return v5(v8, v7) & 1;
}

uint64_t sub_255EB8AD0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = **(v1 + 32);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v7 = v3;
    v5 = v2(&v7, &v8);
  }

  return v5 & 1;
}

uint64_t sub_255EB8B3C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255ECF588() & 1;
  }
}

uint64_t sub_255EB8BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EB8C48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_255ECEE68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255EB8CCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v188 = a3;
  v174 = sub_255ECEFC8();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v178 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v169 = &v160 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v160 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v181 = &v160 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v160 - v16;
  v18 = sub_255ECF078();
  isa = v18[-1].isa;
  v184 = v18;
  v185 = isa;
  v20 = MEMORY[0x28223BE20](v18);
  v173 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v160 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v170 = (&v160 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v160 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v177 = &v160 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v176 = &v160 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v179 = &v160 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v182 = &v160 - v37;
  MEMORY[0x28223BE20](v36);
  v187 = (&v160 - v38);
  v39 = type metadata accessor for DataSlice(0);
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v186 = &v160 - v44;
  v45 = a1[3];
  v180 = a1[2];
  v183 = v45;
  v175 = a1;
  v46 = a1[4];
  v191 = v46;
  if (!*(v46 + 16) || (v47 = sub_255EACAD4(0x696C537475706E69, 0xEA00000000006563), (v48 & 1) == 0))
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v63 = sub_255ECF198();
    __swift_project_value_buffer(v63, qword_27F815878);
    v64 = sub_255ECF178();
    v65 = sub_255ECF408();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_16;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_255EA2000, v64, v65, "Could not find input slice argument.", v66, 2u);
    goto LABEL_15;
  }

  v167 = v24;
  v168 = v29;
  v49 = (*(v46 + 56) + 16 * v47);
  v50 = *v49;
  v51 = v49[1];
  v52 = *(a2 + 16);

  if (!v52 || (v53 = sub_255EACAD4(v50, v51), (v54 & 1) == 0))
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v67 = sub_255ECF198();
    __swift_project_value_buffer(v67, qword_27F815878);

    v64 = sub_255ECF178();
    v68 = sub_255ECF408();

    if (!os_log_type_enabled(v64, v68))
    {

      goto LABEL_16;
    }

    v66 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v190 = v69;
    *v66 = 136315138;
    v70 = sub_255EBCAE0(v50, v51, &v190);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_255EA2000, v64, v68, "Input slice '%s' does not exist.", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x259C511E0](v69, -1, -1);
LABEL_15:
    MEMORY[0x259C511E0](v66, -1, -1);
LABEL_16:

    v71 = type metadata accessor for EventSet(0);
    v72 = *(*(v71 - 8) + 56);
    v73 = v71;
    v74 = v188;

    return v72(v74, 1, 1, v73);
  }

  v163 = v50;
  v166 = v51;
  sub_255EBBF4C(*(a2 + 56) + *(v40 + 72) * v53, v43);
  v55 = v186;
  sub_255EBBFB0(v43, v186);
  v56 = *(v39 + 20);
  v57 = v184;
  v58 = v185;
  v59 = *(v185 + 2);
  v60 = v187;
  v59(v187, v55 + v56, v184);
  sub_255EBA1B4(v60, v17);
  v61 = *(v58 + 6);
  v165 = v58 + 48;
  v164 = v61;
  if (v61(v17, 1, v57) == 1)
  {

    (*(v58 + 1))(v60, v57);
    sub_255EBC014(v55);
    v62 = v17;
LABEL_41:
    sub_255EB1E28(v62, &qword_27F8159D8, &qword_255ECFC20);
    v117 = type metadata accessor for EventSet(0);
    return (*(*(v117 - 8) + 56))(v188, 1, 1, v117);
  }

  v76 = *(v58 + 4);
  v77 = v182;
  v162 = v58 + 32;
  v161 = v76;
  v76(v182, v17, v57);
  v79 = *(v58 + 7);
  v78 = (v58 + 56);
  v80 = v181;
  v160 = v79;
  v79(v181, 1, 1, v57);
  v81 = v180;
  if (v180 == 0xD00000000000001BLL && 0x8000000255ED0F20 == v183 || (sub_255ECF588() & 1) != 0)
  {
    sub_255EBAC44(v13);
    if (v164(v13, 1, v57) == 1)
    {

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v82 = v57;
      v83 = *(v185 + 1);
      v83(v77, v82);
      v83(v187, v82);
      sub_255EBC014(v186);
      v62 = v13;
      goto LABEL_41;
    }

    v183 = v78;
    v84 = v179;
    v161(v179, v13, v57);
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v85 = sub_255ECF198();
    __swift_project_value_buffer(v85, qword_27F815878);
    v86 = v176;
    v59(v176, v84, v57);
    v87 = v59;
    v88 = v177;
    v89 = v187;
    v87(v177, v187, v57);
    v90 = v166;

    v91 = sub_255ECF178();
    v92 = sub_255ECF3F8();

    v180 = v91;
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&v190 = v170;
      *v93 = 134218498;
      v94 = v171;
      sub_255ECEFD8();
      v95 = sub_255ECEFB8();
      LODWORD(v169) = v92;
      v96 = *(v172 + 8);
      v97 = v174;
      v96(v94, v174);
      v98 = *(v185 + 1);
      v98(v86, v184);
      *(v93 + 4) = v95;
      *(v93 + 12) = 2080;
      v99 = sub_255EBCAE0(v163, v90, &v190);

      *(v93 + 14) = v99;
      *(v93 + 22) = 2048;
      sub_255ECEFD8();
      v100 = sub_255ECEFB8();
      v101 = v94;
      v84 = v179;
      v96(v101, v97);
      v80 = v181;
      v98(v88, v184);
      *(v93 + 24) = v100;
      v102 = v180;
      _os_log_impl(&dword_255EA2000, v180, v169, "Found %ld system volume change events in data slice set '%s' (%ld samples).", v93, 0x20u);
      v103 = v170;
      __swift_destroy_boxed_opaque_existential_0(v170);
      v104 = v103;
      v57 = v184;
      MEMORY[0x259C511E0](v104, -1, -1);
      MEMORY[0x259C511E0](v93, -1, -1);

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v98(v182, v57);
      v98(v187, v57);
    }

    else
    {
      v114 = *(v185 + 1);
      v114(v88, v57);
      v114(v86, v57);

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v114(v77, v57);
      v114(v89, v57);
    }
  }

  else
  {
    if ((v81 != 0xD00000000000001ALL || 0x8000000255ED0F40 != v183) && (sub_255ECF588() & 1) == 0)
    {

      v149 = v187;
      if (qword_27F815870 != -1)
      {
        swift_once();
      }

      v150 = sub_255ECF198();
      __swift_project_value_buffer(v150, qword_27F815878);
      v190 = *v175;
      sub_255EBC070(&v190, v189);
      v151 = v183;

      sub_255EB27F8(&v191, v189, &qword_27F815B18, &qword_255ED0008);
      v152 = sub_255ECF178();
      v153 = sub_255ECF408();
      sub_255EBC0CC(&v190);

      sub_255EB1E28(&v191, &qword_27F815B18, &qword_255ED0008);
      v154 = os_log_type_enabled(v152, v153);
      v155 = v185;
      if (v154)
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v189[0] = v157;
        *v156 = 136315138;
        *(v156 + 4) = sub_255EBCAE0(v180, v151, v189);
        _os_log_impl(&dword_255EA2000, v152, v153, "Cannot find volume change retriever called '%s'.", v156, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v157);
        MEMORY[0x259C511E0](v157, -1, -1);
        MEMORY[0x259C511E0](v156, -1, -1);
      }

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v158 = *(v155 + 1);
      v57 = v184;
      v158(v182, v184);
      v158(v149, v57);
      v115 = 1;
      v116 = v178;
      goto LABEL_39;
    }

    v183 = v59;
    v105 = 0.0;
    v106 = v187;
    if (*(v46 + 16))
    {
      v107 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED0F60);
      v108 = v168;
      v109 = v169;
      if (v110)
      {
        v111 = (*(v46 + 56) + 16 * v107);
        v112 = *v111;
        v113 = v111[1];
        *&v190 = 0;

        LOBYTE(v112) = sub_255EBDA88(v112, v113, &v190);

        if (v112)
        {
          v105 = *&v190;
        }

        v57 = v184;
      }
    }

    else
    {
      v108 = v168;
      v109 = v169;
    }

    sub_255EBAF68(v77, v109, v105);
    v125 = v164(v109, 1, v57);
    v126 = v170;
    if (v125 == 1)
    {

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v127 = v57;
      v128 = *(v185 + 1);
      v128(v77, v127);
      v128(v106, v127);
      sub_255EBC014(v186);
      v62 = v109;
      goto LABEL_41;
    }

    v161(v108, v109, v57);
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v129 = sub_255ECF198();
    __swift_project_value_buffer(v129, qword_27F815878);
    v130 = v108;
    v131 = v183;
    v183(v126, v130, v57);
    v132 = v167;
    v131(v167, v106, v57);
    v133 = v166;

    v134 = sub_255ECF178();
    v135 = v57;
    v136 = sub_255ECF3F8();

    v184 = v134;
    if (os_log_type_enabled(v134, v136))
    {
      v137 = swift_slowAlloc();
      v183 = v78;
      v138 = v137;
      v180 = swift_slowAlloc();
      *&v190 = v180;
      *v138 = 134218498;
      v139 = v126;
      v140 = v171;
      sub_255ECEFD8();
      v141 = sub_255ECEFB8();
      LODWORD(v179) = v136;
      v177 = *(v172 + 8);
      (v177)(v140, v174);
      v142 = v139;
      v143 = *(v185 + 1);
      v143(v142, v135);
      *(v138 + 4) = v141;
      *(v138 + 12) = 2080;
      v144 = sub_255EBCAE0(v163, v133, &v190);

      *(v138 + 14) = v144;
      *(v138 + 22) = 2048;
      sub_255ECEFD8();
      v145 = sub_255ECEFB8();
      (v177)(v140, v174);
      v84 = v168;
      v143(v132, v135);
      v146 = v143;
      *(v138 + 24) = v145;
      v147 = v184;
      _os_log_impl(&dword_255EA2000, v184, v179, "Found %ld user volume change events in data slice set '%s' (%ld samples).", v138, 0x20u);
      v148 = v180;
      __swift_destroy_boxed_opaque_existential_0(v180);
      MEMORY[0x259C511E0](v148, -1, -1);
      MEMORY[0x259C511E0](v138, -1, -1);

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v146(v182, v135);
      v146(v187, v135);
      v57 = v135;
    }

    else
    {
      v159 = *(v185 + 1);
      v159(v132, v135);
      v159(v126, v135);

      sub_255EB1E28(v80, &qword_27F8159D8, &qword_255ECFC20);
      v159(v77, v135);
      v159(v187, v135);
      v57 = v135;
      v84 = v168;
    }
  }

  v161(v80, v84, v57);
  v115 = 0;
  v116 = v178;
LABEL_39:
  v160(v80, v115, 1, v57);
  sub_255EBC120(v80, v116);
  if (v164(v116, 1, v57) == 1)
  {
    sub_255EBC014(v186);
    v62 = v116;
    goto LABEL_41;
  }

  v118 = v173;
  v119 = v161;
  v161(v173, v116, v57);
  v120 = v57;
  v122 = *v175;
  v121 = v175[1];
  v123 = type metadata accessor for EventSet(0);
  v124 = v188;
  v119(v188 + *(v123 + 20), v118, v120);
  sub_255EBBFB0(v186, v124 + *(v123 + 24));
  *v124 = v122;
  v124[1] = v121;
  (*(*(v123 - 8) + 56))(v124, 0, 1, v123);
}

uint64_t sub_255EBA1B4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v85 = sub_255ECEF98();
  v3 = *(v85 - 8);
  v4 = MEMORY[0x28223BE20](v85);
  v86 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v70 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v71);
  v8 = &v70 - v7;
  v9 = sub_255ECEFF8();
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255ECEFC8();
  v79 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255ECF078();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - v17;
  if (qword_27F815870 != -1)
  {
    swift_once();
  }

  v19 = sub_255ECF198();
  v20 = __swift_project_value_buffer(v19, qword_27F815878);
  v21 = *(v14 + 16);
  v81 = a1;
  v74 = v21;
  v75 = v14 + 16;
  v21(v18, a1, v13);
  v22 = sub_255ECF178();
  v23 = sub_255ECF3F8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v77 = v14;
    v78 = v13;
    v25 = v24;
    *v24 = 134217984;
    v26 = v20;
    v27 = v11;
    v28 = v3;
    v29 = v76;
    sub_255ECEFD8();
    v30 = sub_255ECEFB8();
    v31 = v29;
    v3 = v28;
    v11 = v27;
    v20 = v26;
    (*(v79 + 8))(v31, v11);
    v73 = *(v77 + 8);
    v73(v18, v78);
    *(v25 + 1) = v30;
    _os_log_impl(&dword_255EA2000, v22, v23, "Attempting to create a volume change event table from %ld data samples.", v25, 0xCu);
    v32 = v25;
    v14 = v77;
    v13 = v78;
    MEMORY[0x259C511E0](v32, -1, -1);
  }

  else
  {
    v73 = *(v14 + 8);
    v73(v18, v13);
  }

  sub_255ECEF78();
  if (v33)
  {
    v34 = sub_255ECF178();
    v35 = sub_255ECF408();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v13;
      v38 = swift_slowAlloc();
      v88[0] = v38;
      *v36 = 136315138;
      v39 = 1702125924;
      v40 = 0xE400000000000000;
LABEL_12:
      *(v36 + 4) = sub_255EBCAE0(v39, v40, v88);
      _os_log_impl(&dword_255EA2000, v34, v35, "Column '%s' does not exist.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v42 = v38;
      v13 = v37;
      MEMORY[0x259C511E0](v42, -1, -1);
      MEMORY[0x259C511E0](v36, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v83 = "manualVolumeChangeFlag";
  sub_255ECEF78();
  if (v41)
  {
    v34 = sub_255ECF178();
    v35 = sub_255ECF408();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v13;
      v38 = swift_slowAlloc();
      v88[0] = v38;
      *v36 = 136315138;
      v40 = v83 | 0x8000000000000000;
      v39 = 0xD000000000000010;
      goto LABEL_12;
    }

LABEL_13:

    return (*(v14 + 56))(v82, 1, 1, v13);
  }

  sub_255ECEE68();
  sub_255ECF048();
  sub_255ECF088();
  if (sub_255ECEF48())
  {
    v44 = sub_255ECF178();
    v45 = sub_255ECF408();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_255EA2000, v44, v45, "No samples available to create volume change event table.", v46, 2u);
      MEMORY[0x259C511E0](v46, -1, -1);
    }

    v47 = v82;
    v48 = v80;
    v74(v82, v80, v13);
    (*(v14 + 56))(v47, 0, 1, v13);
    v49 = v48;
    v50 = v13;
  }

  else
  {
    v72 = v20;
    v77 = v14;
    v78 = v13;
    v51 = v76;
    sub_255ECEFD8();
    v52 = v79;
    (*(v79 + 16))(v8, v51, v11);
    v53 = *(v71 + 36);
    sub_255EBC190(&qword_27F815B10, MEMORY[0x277CE1870], MEMORY[0x277CE1880]);
    sub_255ECF398();
    v54 = *(v52 + 8);
    v79 = v52 + 8;
    v81 = v54;
    v54(v51, v11);
    sub_255ECF3C8();
    if (*&v8[v53] != v88[0])
    {
      v63 = (v3 + 16);
      v64 = (v3 + 32);
      v65 = (v3 + 8);
      v66 = v84;
      do
      {
        v67 = sub_255ECF3E8();
        v68 = v85;
        (*v63)(v66);
        v67(v88, 0);
        sub_255ECF3D8();
        (*v64)(v86, v66, v68);
        sub_255ECEFA8();
        if (v88[3])
        {
          if ((swift_dynamicCast() & 1) != 0 && v87)
          {
            v69 = v86;
            sub_255ECF018();
            (*v65)(v69, v85);
          }

          else
          {
            (*v65)(v86, v85);
          }
        }

        else
        {
          (*v65)(v86, v68);
          sub_255EB1E28(v88, &qword_27F815AF8, &qword_255ECFF80);
        }

        sub_255ECF3C8();
      }

      while (*&v8[v53] != v88[0]);
    }

    sub_255EB1E28(v8, &qword_27F815B08, &qword_255ED0080);
    v55 = sub_255ECF178();
    v56 = sub_255ECF3F8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      swift_beginAccess();
      v58 = v76;
      sub_255ECEFD8();
      swift_endAccess();
      v59 = sub_255ECEFB8();
      v81(v58, v11);
      *(v57 + 4) = v59;
      _os_log_impl(&dword_255EA2000, v55, v56, "Found %ld volume change events.", v57, 0xCu);
      MEMORY[0x259C511E0](v57, -1, -1);
    }

    v60 = v80;
    swift_beginAccess();
    v61 = v82;
    v62 = v78;
    v74(v82, v60, v78);
    (*(v77 + 56))(v61, 0, 1, v62);
    v49 = v60;
    v50 = v62;
  }

  return (v73)(v49, v50);
}

uint64_t sub_255EBAC44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_255ECEFF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  sub_255ECEF78();
  if (v9)
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v10 = sub_255ECF198();
    __swift_project_value_buffer(v10, qword_27F815878);
    v11 = sub_255ECF178();
    v12 = sub_255ECF408();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_255EBCAE0(0xD000000000000016, 0x8000000255ED0BC0, &v20);
      _os_log_impl(&dword_255EA2000, v11, v12, "Data frame does not contain '%s' column.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x259C511E0](v14, -1, -1);
      MEMORY[0x259C511E0](v13, -1, -1);
    }

    v15 = sub_255ECF078();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }

  else
  {
    sub_255ECF048();
    (*(v3 + 16))(v6, v8, v2);
    sub_255ECF088();
    (*(v3 + 8))(v8, v2);
    v18 = sub_255ECF078();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }
}

uint64_t sub_255EBAF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_255ECEE68();
  v103 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v89 - v9;
  v106 = sub_255ECEF98();
  v96 = *(v106 - 8);
  v10 = MEMORY[0x28223BE20](v106);
  v108 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v89 - v12;
  v117 = sub_255ECEFC8();
  v105 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = (&v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v97);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v109 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v113 = &v89 - v22;
  v110 = sub_255ECF078();
  v115 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v102 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_255ECEFF8();
  v98 = *(v99 - 8);
  v24 = MEMORY[0x28223BE20](v99);
  MEMORY[0x28223BE20](v24);
  v100 = &v89 - v25;
  v26 = sub_255ECF158();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEF78();
  if (v30)
  {
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v31 = sub_255ECF198();
    __swift_project_value_buffer(v31, qword_27F815878);
    v32 = sub_255ECF178();
    v33 = sub_255ECF408();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v110;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v118[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_255EBCAE0(0xD000000000000016, 0x8000000255ED0BC0, v118);
      _os_log_impl(&dword_255EA2000, v32, v33, "Data frame does not contain '%s' column.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x259C511E0](v37, -1, -1);
      MEMORY[0x259C511E0](v36, -1, -1);
    }

    v38 = *(v115 + 56);

    return v38(a2, 1, 1, v35);
  }

  v95 = a2;
  v40 = sub_255ECEF78();
  if (v41)
  {
    goto LABEL_13;
  }

  v42 = v40;
  v112 = a1;
  v43 = sub_255ECF058();
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v42 >= *(v43 + 16))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_21;
  }

  (*(v27 + 16))(v29, v43 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v42, v26);

  v44 = sub_255ECF148();
  (*(v27 + 8))(v29, v26);
  if (v44 != v6)
  {
LABEL_13:
    if (qword_27F815870 != -1)
    {
      swift_once();
    }

    v45 = sub_255ECF198();
    __swift_project_value_buffer(v45, qword_27F815878);
    v46 = sub_255ECF178();
    v47 = sub_255ECF408();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v95;
    v50 = v110;
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_255EA2000, v46, v47, "Data frame does not contain date column.", v51, 2u);
      MEMORY[0x259C511E0](v51, -1, -1);
    }

    return (*(v115 + 56))(v49, 1, 1, v50);
  }

  sub_255ECF048();
  sub_255ECF048();
  sub_255ECF088();
  v52 = v103;
  v53 = *(v103 + 56);
  v107 = v6;
  v111 = v53;
  v112 = v103 + 56;
  v53(v113, 1, 1, v6);
  v54 = v104;
  sub_255ECEFE8();
  v55 = v105;
  v56 = v117;
  (*(v105 + 16))(v15, v54, v117);
  v57 = *(v97 + 36);
  v58 = sub_255EBC190(&qword_27F815B10, MEMORY[0x277CE1870], MEMORY[0x277CE1880]);
  sub_255ECF398();
  (*(v55 + 8))(v54, v56);
  sub_255ECF3C8();
  v59 = v106;
  v60 = v108;
  if (*&v15[v57] != v118[0])
  {
    v105 = v96 + 16;
    v104 = (v96 + 32);
    v97 = v52 + 48;
    v91 = (v52 + 32);
    v90 = (v52 + 8);
    v103 = v96 + 8;
    v92 = v21;
    v94 = v57;
    v93 = v58;
    do
    {
      v73 = sub_255ECF3E8();
      v74 = v116;
      (*v105)(v116);
      v73(v118, 0);
      sub_255ECF3D8();
      (*v104)(v60, v74, v59);
      sub_255ECEFA8();
      if (v118[3])
      {
        v75 = v107;
        v76 = swift_dynamicCast();
        v111(v21, v76 ^ 1u, 1, v75);
        v77 = *v97;
        v78 = (*v97)(v21, 1, v75);
        v79 = v109;
        if (v78 != 1)
        {
          v80 = *v91;
          (*v91)(v114, v21, v75);
          sub_255EB27F8(v113, v79, &qword_27F815960, &qword_255ECFBC8);
          if (v77(v79, 1, v75) == 1)
          {
            sub_255EB1E28(v79, &qword_27F815960, &qword_255ECFBC8);
            v81 = v114;
            goto LABEL_33;
          }

          v82 = v101;
          v80(v101, v79, v75);
          sub_255ECEDE8();
          v84 = v83;
          v85 = v82;
          v60 = v108;
          v81 = v114;
          (*v90)(v85, v75);
          if (v84 >= a3)
          {
LABEL_33:
            sub_255ECF018();
          }

          v86 = v60;
          v87 = v106;
          (*v103)(v86, v106);
          v88 = v113;
          sub_255EB1E28(v113, &qword_27F815960, &qword_255ECFBC8);
          v80(v88, v81, v75);
          v59 = v87;
          v60 = v108;
          v111(v88, 0, 1, v75);
          v21 = v92;
          v57 = v94;
          goto LABEL_26;
        }

        (*v103)(v60, v59);
        v57 = v94;
      }

      else
      {
        (*v103)(v60, v59);
        sub_255EB1E28(v118, &qword_27F815AF8, &qword_255ECFF80);
        v111(v21, 1, 1, v107);
      }

      sub_255EB1E28(v21, &qword_27F815960, &qword_255ECFBC8);
LABEL_26:
      sub_255ECF3C8();
    }

    while (*&v15[v57] != v118[0]);
  }

  sub_255EB1E28(v15, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815870 != -1)
  {
    goto LABEL_37;
  }

LABEL_21:
  v61 = sub_255ECF198();
  __swift_project_value_buffer(v61, qword_27F815878);
  v62 = sub_255ECF178();
  v63 = sub_255ECF3F8();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v95;
  v66 = v110;
  v67 = v102;
  if (v64)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v118[0] = v69;
    *v68 = 136315138;
    swift_beginAccess();
    sub_255EBC190(&qword_27F815B20, MEMORY[0x277CE1898], MEMORY[0x277CE18A0]);
    v70 = sub_255ECF578();
    v72 = sub_255EBCAE0(v70, v71, v118);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_255EA2000, v62, v63, "INFO: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x259C511E0](v69, -1, -1);
    MEMORY[0x259C511E0](v68, -1, -1);
  }

  sub_255EB1E28(v113, &qword_27F815960, &qword_255ECFBC8);
  (*(v98 + 8))(v100, v99);
  swift_beginAccess();
  (*(v115 + 16))(v65, v67, v66);
  (*(v115 + 56))(v65, 0, 1, v66);
  return (*(v115 + 8))(v67, v66);
}

uint64_t sub_255EBBF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSlice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EBBFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSlice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EBC014(uint64_t a1)
{
  v2 = type metadata accessor for DataSlice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EBC120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EBC190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_255EBC1D8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_255ECF4E8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_255EBD088(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_255EBC4D8(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_255ECEE68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB27F8(a1, v6, &qword_27F815960, &qword_255ECFBC8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_255EB1E28(v6, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_255ECEBC8();
    v13 = v12;
    sub_255ECEBC8();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    return v13 - v15 >= 0.0 && v13 - v15 <= a2;
  }
}

BOOL sub_255EBC6CC(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_255ECEE68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB27F8(a1, v6, &qword_27F815960, &qword_255ECFBC8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_255EB1E28(v6, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_255ECEBC8();
    v13 = v12;
    sub_255ECEBC8();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    return v13 - v15 >= 0.0 && v13 - v15 <= a2;
  }
}

BOOL sub_255EBC8C4(uint64_t a1, uint64_t a2, char a3)
{
  v18 = *&a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_255ECEE68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB27F8(a1, v7, &qword_27F815960, &qword_255ECFBC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_255EB1E28(v7, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (a3)
    {
      (*(v9 + 8))(v11, v8);
      return 0;
    }

    else
    {
      sub_255ECEBC8();
      v14 = v13;
      sub_255ECEBC8();
      v16 = v15;
      (*(v9 + 8))(v11, v8);
      return v14 - v16 >= 0.0 && v14 - v16 <= v18;
    }
  }
}

unint64_t sub_255EBCAE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255EBCBAC(v11, 0, 0, 1, a1, a2);
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
    sub_255EAF798(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_255EBCBAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_255EBCCB8(a5, a6);
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
    result = sub_255ECF4E8();
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

void *sub_255EBCCB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_255EBCD04(a1, a2);
  sub_255EBCE34(&unk_2867F91C8);
  return v3;
}

void *sub_255EBCD04(uint64_t a1, unint64_t a2)
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

  v6 = sub_255EBCF20(v5, 0);
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

  result = sub_255ECF4E8();
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
        v10 = sub_255ECF2F8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255EBCF20(v10, 0);
        result = sub_255ECF4B8();
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

uint64_t sub_255EBCE34(uint64_t result)
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

  result = sub_255EBCF94(result, v11, 1, v3);
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

void *sub_255EBCF20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B38, &qword_255ED0038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255EBCF94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B38, &qword_255ED0038);
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

unsigned __int8 *sub_255EBD088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_255ECF348();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_255EBD614(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_255ECF4E8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_255EBD614(uint64_t a1, unint64_t a2)
{
  v2 = sub_255ECF358();
  v6 = sub_255EBD694(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_255EBD694(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_255ECF448();
    if (!v9 || (v10 = v9, v11 = sub_255EBCF20(v9, 0), v12 = sub_255EBD7EC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_255ECF2B8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_255ECF2B8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_255ECF4E8();
LABEL_4:

  return sub_255ECF2B8();
}

unint64_t sub_255EBD7EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_255EBDA0C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_255ECF328();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_255ECF4E8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_255EBDA0C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_255ECF308();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_255EBDA0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255ECF338();
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
    v5 = MEMORY[0x259C50AA0](15, a1 >> 16);
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

BOOL sub_255EBDA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_255ECF4C8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void sub_255EBDB80(uint64_t a1, char *a2, double a3)
{
  v97 = a2;
  v5 = sub_255ECF078();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v87 = sub_255ECEFF8();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v75 - v14;
  v99 = sub_255ECEE68();
  v89 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v85 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_255ECEF98();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v98 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_255ECEFC8();
  v18 = *(v17 - 8);
  v95 = v17;
  v96 = v18;
  MEMORY[0x28223BE20](v17);
  v94 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v93);
  v21 = &v75 - v20;
  v22 = sub_255ECF158();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_255ECEF78();
  if (v27)
  {
    return;
  }

  v28 = v26;
  v83 = a1;
  v29 = sub_255ECF058();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v28 >= *(v29 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = v11;
  v81 = v9;
  v84 = v6;
  v82 = v5;
  v9 = ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v30 = *(v23 + 72);
  v31 = *(v23 + 16);
  v31(v25, &v9[v29 + v30 * v28], v22);

  v32 = sub_255ECF148();
  v34 = *(v23 + 8);
  v23 += 8;
  v33 = v34;
  v34(v25, v22);
  if (v32 != v99)
  {
    return;
  }

  v35 = sub_255ECEF78();
  if (v36)
  {
    return;
  }

  v79 = v35;
  v37 = sub_255ECF058();
  if ((v79 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v79 >= *(v37 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31(v25, &v9[v37 + v79 * v30], v22);

  v38 = sub_255ECF148();
  v33(v25, v22);
  v39 = v99;
  if (v38 != v99)
  {
    return;
  }

  v40 = v94;
  v9 = v97;
  sub_255ECEFD8();
  v41 = v95;
  v42 = v96;
  (*(v96 + 16))(v21, v40, v95);
  v43 = *(v93 + 36);
  sub_255EC4234();
  sub_255ECF398();
  v44 = *(v42 + 8);
  v96 = v42 + 8;
  v78 = v44;
  v44(v40, v41);
  sub_255ECF3C8();
  if (*&v21[v43] == v101[0])
  {
    v23 = 0;
    goto LABEL_21;
  }

  v23 = 0;
  v77 = 0;
  v93 = (v88 + 2);
  ++v88;
  v45 = (v89 + 7);
  v79 = (v89 + 6);
  v76 = (v89 + 4);
  ++v89;
  ++v90;
  v46 = v92;
  while (2)
  {
    v99 = v23;
    v47 = v91;
    while (1)
    {
      v48 = sub_255ECF3E8();
      v49 = v98;
      (*v93)(v98);
      v48(v101, 0);
      sub_255ECF3D8();
      sub_255ECEFA8();
      (*v88)(v49, v47);
      if (v101[3])
      {
        break;
      }

      sub_255EB1E28(v101, &qword_27F815AF8, &qword_255ECFF80);
      (*v45)(v46, 1, 1, v39);
LABEL_14:
      sub_255EB1E28(v46, &qword_27F815960, &qword_255ECFBC8);
      sub_255ECF3C8();
      if (*&v21[v43] == v101[0])
      {
        v23 = v99;
        v9 = v97;
        goto LABEL_21;
      }
    }

    v50 = swift_dynamicCast();
    (*v45)(v46, v50 ^ 1u, 1, v39);
    if ((*v79)(v46, 1, v39) == 1)
    {
      goto LABEL_14;
    }

    v51 = v85;
    v52 = (*v76)(v85, v46, v39);
    MEMORY[0x28223BE20](v52);
    *(&v75 - 2) = v51;
    *(&v75 - 1) = a3;
    v53 = v86;
    v54 = v77;
    sub_255ECF048();
    v77 = v54;
    v56 = v94;
    v55 = v95;
    sub_255ECEFE8();
    sub_255ECF398();
    sub_255ECF3C8();
    v78(v56, v55);
    (*v90)(v53, v87);
    v57 = v101[0] != v100;
    v23 = v99 + v57;
    if (__OFADD__(v99, v57))
    {
      __break(1u);
      return;
    }

    (*v89)(v51, v39);
    sub_255ECF3C8();
    v46 = v92;
    v9 = v97;
    if (*&v21[v43] != v101[0])
    {
      continue;
    }

    break;
  }

LABEL_21:
  sub_255EB1E28(v21, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815830 != -1)
  {
LABEL_31:
    swift_once();
  }

  v58 = sub_255ECF198();
  __swift_project_value_buffer(v58, qword_27F815838);
  v59 = v84;
  v60 = *(v84 + 16);
  v61 = v80;
  v62 = v82;
  v60(v80, v83, v82);
  v63 = v81;
  v60(v81, v9, v62);
  v64 = sub_255ECF178();
  v65 = sub_255ECF3F8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134218496;
    *(v66 + 4) = v23;
    *(v66 + 12) = 2048;
    v98 = v64;
    v67 = v94;
    LODWORD(v97) = v65;
    sub_255ECEFD8();
    v93 = sub_255ECEFB8();
    v68 = v95;
    v69 = v78;
    v78(v67, v95);
    v99 = v23;
    v70 = *(v84 + 8);
    v70(v61, v62);
    v71 = v70;
    *(v66 + 14) = v93;
    *(v66 + 22) = 2048;
    sub_255ECEFD8();
    v72 = sub_255ECEFB8();
    v73 = v67;
    v64 = v98;
    v69(v73, v68);
    v71(v63, v62);
    *(v66 + 24) = v72;
    _os_log_impl(&dword_255EA2000, v64, v97, "Found %ld false positives in %ld user volume changes and %ld system volume changes.", v66, 0x20u);
    MEMORY[0x259C511E0](v66, -1, -1);
  }

  else
  {
    v74 = *(v59 + 8);
    v74(v63, v62);
    v74(v61, v62);
  }
}

void sub_255EBE744(char *a1, uint64_t a2, double a3)
{
  v95 = a2;
  v5 = sub_255ECF078();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v74 - v10;
  v85 = sub_255ECEFF8();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = &v74 - v14;
  v97 = sub_255ECEE68();
  v87 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v83 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_255ECEF98();
  v86 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v96 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_255ECEFC8();
  v18 = *(v17 - 8);
  v93 = v17;
  v94 = v18;
  MEMORY[0x28223BE20](v17);
  v92 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v91);
  v21 = &v74 - v20;
  v22 = sub_255ECF158();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_255ECEF78();
  if (v27)
  {
    return;
  }

  v28 = v26;
  v82 = a1;
  v29 = sub_255ECF058();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v28 >= *(v29 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v78 = v11;
  v79 = v9;
  v81 = v6;
  v80 = v5;
  v9 = ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v30 = *(v23 + 72);
  v31 = *(v23 + 16);
  v31(v25, &v9[v29 + v30 * v28], v22);

  v32 = sub_255ECF148();
  v34 = *(v23 + 8);
  v23 += 8;
  v33 = v34;
  v34(v25, v22);
  if (v32 != v97)
  {
    return;
  }

  v35 = sub_255ECEF78();
  if (v36)
  {
    return;
  }

  v77 = v35;
  v37 = sub_255ECF058();
  if ((v77 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v77 >= *(v37 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31(v25, &v9[v37 + v77 * v30], v22);

  v38 = sub_255ECF148();
  v33(v25, v22);
  if (v38 != v97)
  {
    return;
  }

  v39 = v92;
  v9 = v82;
  sub_255ECEFD8();
  v40 = v93;
  v41 = v94;
  (*(v94 + 16))(v21, v39, v93);
  v42 = *(v91 + 36);
  sub_255EC4234();
  sub_255ECF398();
  v43 = *(v41 + 8);
  v94 = v41 + 8;
  v76 = v43;
  v43(v39, v40);
  sub_255ECF3C8();
  if (*&v21[v42] == v98[0])
  {
    v23 = 0;
    goto LABEL_21;
  }

  v23 = 0;
  v75 = 0;
  v91 = (v86 + 2);
  ++v86;
  v44 = (v87 + 7);
  v77 = (v87 + 6);
  v74 = (v87 + 4);
  ++v87;
  ++v88;
  v45 = v90;
  v46 = v97;
  while (2)
  {
    v97 = v23;
    v47 = v89;
    while (1)
    {
      v48 = sub_255ECF3E8();
      v49 = v96;
      (*v91)(v96);
      v48(v98, 0);
      sub_255ECF3D8();
      sub_255ECEFA8();
      (*v86)(v49, v47);
      if (v98[3])
      {
        break;
      }

      sub_255EB1E28(v98, &qword_27F815AF8, &qword_255ECFF80);
      (*v44)(v45, 1, 1, v46);
LABEL_14:
      sub_255EB1E28(v45, &qword_27F815960, &qword_255ECFBC8);
      sub_255ECF3C8();
      if (*&v21[v42] == v98[0])
      {
        v23 = v97;
        v9 = v82;
        goto LABEL_21;
      }
    }

    v50 = swift_dynamicCast();
    (*v44)(v45, v50 ^ 1u, 1, v46);
    if ((*v77)(v45, 1, v46) == 1)
    {
      goto LABEL_14;
    }

    v51 = v83;
    v52 = (*v74)(v83, v45, v46);
    MEMORY[0x28223BE20](v52);
    *(&v74 - 2) = v51;
    *(&v74 - 1) = a3;
    v53 = v84;
    v54 = v75;
    sub_255ECF048();
    v75 = v54;
    v55 = v85;
    v56 = sub_255ECEF48();
    (*v88)(v53, v55);
    v23 = v97 + (v56 & 1);
    if (__OFADD__(v97, v56 & 1))
    {
      __break(1u);
      return;
    }

    (*v87)(v51, v46);
    sub_255ECF3C8();
    v45 = v90;
    v9 = v82;
    if (*&v21[v42] != v98[0])
    {
      continue;
    }

    break;
  }

LABEL_21:
  sub_255EB1E28(v21, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815830 != -1)
  {
LABEL_31:
    swift_once();
  }

  v57 = sub_255ECF198();
  __swift_project_value_buffer(v57, qword_27F815838);
  v58 = v81;
  v59 = *(v81 + 16);
  v60 = v78;
  v61 = v80;
  v59(v78, v9, v80);
  v62 = v79;
  v59(v79, v95, v61);
  v63 = sub_255ECF178();
  v64 = sub_255ECF3F8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134218496;
    *(v65 + 4) = v23;
    *(v65 + 12) = 2048;
    v96 = v63;
    v66 = v92;
    LODWORD(v95) = v64;
    sub_255ECEFD8();
    v91 = sub_255ECEFB8();
    v67 = v93;
    v68 = v76;
    v76(v66, v93);
    v97 = v23;
    v69 = *(v81 + 8);
    v69(v60, v61);
    v70 = v69;
    *(v65 + 14) = v91;
    *(v65 + 22) = 2048;
    sub_255ECEFD8();
    v71 = sub_255ECEFB8();
    v72 = v66;
    v63 = v96;
    v68(v72, v67);
    v70(v62, v61);
    *(v65 + 24) = v71;
    _os_log_impl(&dword_255EA2000, v63, v95, "Found %ld false negatives in %ld user volume changes and %ld system volume changes.", v65, 0x20u);
    MEMORY[0x259C511E0](v65, -1, -1);
  }

  else
  {
    v73 = *(v58 + 8);
    v73(v62, v61);
    v73(v60, v61);
  }
}

void sub_255EBF2CC(uint64_t a1, char *a2, double a3)
{
  v97 = a2;
  v5 = sub_255ECF078();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  v87 = sub_255ECEFF8();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v75 - v14;
  v99 = sub_255ECEE68();
  v89 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v85 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_255ECEF98();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v98 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_255ECEFC8();
  v18 = *(v17 - 8);
  v95 = v17;
  v96 = v18;
  MEMORY[0x28223BE20](v17);
  v94 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v93);
  v21 = &v75 - v20;
  v22 = sub_255ECF158();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_255ECEF78();
  if (v27)
  {
    return;
  }

  v28 = v26;
  v83 = a1;
  v29 = sub_255ECF058();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v28 >= *(v29 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = v11;
  v81 = v9;
  v84 = v6;
  v82 = v5;
  v9 = ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v30 = *(v23 + 72);
  v31 = *(v23 + 16);
  v31(v25, &v9[v29 + v30 * v28], v22);

  v32 = sub_255ECF148();
  v34 = *(v23 + 8);
  v23 += 8;
  v33 = v34;
  v34(v25, v22);
  if (v32 != v99)
  {
    return;
  }

  v35 = sub_255ECEF78();
  if (v36)
  {
    return;
  }

  v79 = v35;
  v37 = sub_255ECF058();
  if ((v79 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v79 >= *(v37 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31(v25, &v9[v37 + v79 * v30], v22);

  v38 = sub_255ECF148();
  v33(v25, v22);
  v39 = v99;
  if (v38 != v99)
  {
    return;
  }

  v40 = v94;
  v9 = v97;
  sub_255ECEFD8();
  v41 = v95;
  v42 = v96;
  (*(v96 + 16))(v21, v40, v95);
  v43 = *(v93 + 36);
  sub_255EC4234();
  sub_255ECF398();
  v44 = *(v42 + 8);
  v96 = v42 + 8;
  v78 = v44;
  v44(v40, v41);
  sub_255ECF3C8();
  if (*&v21[v43] == v101[0])
  {
    v23 = 0;
    goto LABEL_21;
  }

  v23 = 0;
  v77 = 0;
  v93 = (v88 + 2);
  ++v88;
  v45 = (v89 + 7);
  v79 = (v89 + 6);
  v76 = (v89 + 4);
  ++v89;
  ++v90;
  v46 = v92;
  while (2)
  {
    v99 = v23;
    v47 = v91;
    while (1)
    {
      v48 = sub_255ECF3E8();
      v49 = v98;
      (*v93)(v98);
      v48(v101, 0);
      sub_255ECF3D8();
      sub_255ECEFA8();
      (*v88)(v49, v47);
      if (v101[3])
      {
        break;
      }

      sub_255EB1E28(v101, &qword_27F815AF8, &qword_255ECFF80);
      (*v45)(v46, 1, 1, v39);
LABEL_14:
      sub_255EB1E28(v46, &qword_27F815960, &qword_255ECFBC8);
      sub_255ECF3C8();
      if (*&v21[v43] == v101[0])
      {
        v23 = v99;
        v9 = v97;
        goto LABEL_21;
      }
    }

    v50 = swift_dynamicCast();
    (*v45)(v46, v50 ^ 1u, 1, v39);
    if ((*v79)(v46, 1, v39) == 1)
    {
      goto LABEL_14;
    }

    v51 = v85;
    v52 = (*v76)(v85, v46, v39);
    MEMORY[0x28223BE20](v52);
    *(&v75 - 2) = v51;
    *(&v75 - 1) = a3;
    v53 = v86;
    v54 = v77;
    sub_255ECF048();
    v77 = v54;
    v56 = v94;
    v55 = v95;
    sub_255ECEFE8();
    sub_255ECF398();
    sub_255ECF3C8();
    v78(v56, v55);
    (*v90)(v53, v87);
    v57 = v101[0] == v100;
    v23 = v99 + v57;
    if (__OFADD__(v99, v57))
    {
      __break(1u);
      return;
    }

    (*v89)(v51, v39);
    sub_255ECF3C8();
    v46 = v92;
    v9 = v97;
    if (*&v21[v43] != v101[0])
    {
      continue;
    }

    break;
  }

LABEL_21:
  sub_255EB1E28(v21, &qword_27F815B08, &qword_255ED0080);
  if (qword_27F815830 != -1)
  {
LABEL_31:
    swift_once();
  }

  v58 = sub_255ECF198();
  __swift_project_value_buffer(v58, qword_27F815838);
  v59 = v84;
  v60 = *(v84 + 16);
  v61 = v80;
  v62 = v82;
  v60(v80, v83, v82);
  v63 = v81;
  v60(v81, v9, v62);
  v64 = sub_255ECF178();
  v65 = sub_255ECF3F8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134218496;
    *(v66 + 4) = v23;
    *(v66 + 12) = 2048;
    v98 = v64;
    v67 = v94;
    LODWORD(v97) = v65;
    sub_255ECEFD8();
    v93 = sub_255ECEFB8();
    v68 = v95;
    v69 = v78;
    v78(v67, v95);
    v99 = v23;
    v70 = *(v84 + 8);
    v70(v61, v62);
    v71 = v70;
    *(v66 + 14) = v93;
    *(v66 + 22) = 2048;
    sub_255ECEFD8();
    v72 = sub_255ECEFB8();
    v73 = v67;
    v64 = v98;
    v69(v73, v68);
    v71(v63, v62);
    *(v66 + 24) = v72;
    _os_log_impl(&dword_255EA2000, v64, v97, "Found %ld true positives in %ld user volume changes and %ld system volume changes.", v66, 0x20u);
    MEMORY[0x259C511E0](v66, -1, -1);
  }

  else
  {
    v74 = *(v59 + 8);
    v74(v63, v62);
    v74(v61, v62);
  }
}

double sub_255EBFE90(__int128 *a1, char *a2, char *a3, double a4)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = v7 == 0x736F5065736C6166 && v8 == 0xEE00736576697469;
  if (v9 || (v10 = *(a1 + 4), v11 = a4, v12 = sub_255ECF588(), a4 = v11, (v12 & 1) != 0))
  {

    sub_255EBDB80(a2, a3, a4);
  }

  else
  {
    v14 = v7 == 0x67654E65736C6166 && v8 == 0xEE00736576697461;
    if (v14 || (v15 = sub_255ECF588(), a4 = v11, (v15 & 1) != 0))
    {

      sub_255EBE744(a2, a3, a4);
    }

    else if (v7 == 0x69736F5065757274 && v8 == 0xED00007365766974 || (v16 = sub_255ECF588(), a4 = v11, (v16 & 1) != 0))
    {

      sub_255EBF2CC(a2, a3, a4);
    }

    else
    {
      if (qword_27F815830 != -1)
      {
        swift_once();
      }

      v17 = sub_255ECF198();
      __swift_project_value_buffer(v17, qword_27F815838);
      v23 = *a1;
      v24 = v10;
      sub_255EBC070(&v23, v22);

      sub_255EB27F8(&v24, v22, &qword_27F815B18, &qword_255ED0008);
      v18 = sub_255ECF178();
      v19 = sub_255ECF408();
      sub_255EBC0CC(&v23);

      sub_255EB1E28(&v24, &qword_27F815B18, &qword_255ED0008);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_255EBCAE0(v7, v8, v22);
        _os_log_impl(&dword_255EA2000, v18, v19, "Aggregator function named '%s' does not exist.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x259C511E0](v21, -1, -1);
        MEMORY[0x259C511E0](v20, -1, -1);
      }

      return 0.0;
    }
  }

  return result;
}

uint64_t sub_255EC01C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815908, &qword_255ECFB80);
  v52 = *(v0 - 8);
  v53 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v51 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v51 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - v6;
  v8 = sub_255ECF158();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0x8000000255ED11E0;
  v12 = sub_255ECEF78();
  v55 = 0xD000000000000011;
  if (v13)
  {
    v56 = 0xD000000000000015;
  }

  else
  {
    v14 = v12;
    result = sub_255ECF058();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v14 >= *(result + 16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    (*(v9 + 16))(v11, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);

    v16 = sub_255ECF148();
    (*(v9 + 8))(v11, v8);
    v17 = 0xD000000000000015;
    if (v16 == MEMORY[0x277D83B88])
    {
      sub_255ECF098();
      if (sub_255ECF2D8() >= 1)
      {
        sub_255EB2624(&qword_27F815B50, &qword_27F815908, &qword_255ECFB80, MEMORY[0x277CE1908]);
        v18 = sub_255ECF3B8();
        v56 = 0xD000000000000015;
        if (v18 & 1) != 0 || (sub_255ECF3C8(), sub_255EB2624(&qword_27F815B58, &qword_27F815908, &qword_255ECFB80, MEMORY[0x277CE18F8]), sub_255ECF218(), v19 = sub_255ECF3E8(), v21 = *v20, v22 = *(v20 + 8), v19(v58, 0), (v22))
        {
          v17 = v56;
        }

        else
        {
          v58[0] = 0;
          v58[1] = 0xE000000000000000;
          sub_255ECF4D8();

          v58[0] = 0xD000000000000012;
          v58[1] = 0x8000000255ED1280;
          v59 = v21;
          v23 = sub_255ECF578();
          MEMORY[0x259C50A70](v23);

          v17 = v58[0];
          v57 = v58[1];
        }
      }

      v56 = v17;
      (*(v52 + 8))(v7, v53);
    }

    else
    {
      v56 = 0xD000000000000015;
    }
  }

  v54 = 0x8000000255ED1200;
  v24 = sub_255ECEF78();
  if (v25)
  {
    v26 = 0xD000000000000013;
    goto LABEL_25;
  }

  v27 = v24;
  result = sub_255ECF058();
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if (v27 >= *(result + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  (*(v9 + 16))(v11, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v8);

  v28 = sub_255ECF148();
  (*(v9 + 8))(v11, v8);
  v26 = 0xD000000000000013;
  if (v28 == MEMORY[0x277D83B88])
  {
    sub_255ECF098();
    v29 = v53;
    if (sub_255ECF118() >= 1)
    {
      sub_255EB2624(&qword_27F815B50, &qword_27F815908, &qword_255ECFB80, MEMORY[0x277CE1908]);
      v26 = 0xD000000000000013;
      if ((sub_255ECF3B8() & 1) == 0)
      {
        sub_255ECF3C8();
        sub_255EB2624(&qword_27F815B58, &qword_27F815908, &qword_255ECFB80, MEMORY[0x277CE18F8]);
        sub_255ECF218();
        v30 = sub_255ECF3E8();
        v32 = *v31;
        v33 = *(v31 + 8);
        v30(v58, 0);
        if ((v33 & 1) == 0)
        {
          if ((v32 & 2) != 0)
          {
            v54 = 0x8000000255ED1260;
            v26 = 0xD000000000000017;
          }

          else
          {
            v54 = 0x8000000255ED1240;
            v26 = 0xD000000000000018;
          }
        }
      }
    }

    (*(v52 + 8))(v5, v29);
  }

LABEL_25:
  v34 = 0x8000000255ED1220;
  v35 = sub_255ECEF78();
  if (v36)
  {
    goto LABEL_29;
  }

  v37 = v35;
  result = sub_255ECF058();
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  if (v37 < *(result + 16))
  {
    (*(v9 + 16))(v11, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v8);

    v38 = sub_255ECF148();
    (*(v9 + 8))(v11, v8);
    if (v38 == MEMORY[0x277D83B88])
    {
      v44 = v51;
      sub_255ECF098();
      v45 = v53;
      if (sub_255ECF118() >= 1)
      {
        sub_255EB2624(&qword_27F815B50, &qword_27F815908, &qword_255ECFB80, MEMORY[0x277CE1908]);
        if ((sub_255ECF3B8() & 1) == 0)
        {
          sub_255ECF3C8();
          sub_255EB2624(&qword_27F815B58, &qword_27F815908, &qword_255ECFB80, MEMORY[0x277CE18F8]);
          sub_255ECF218();
          v46 = sub_255ECF3E8();
          v48 = *v47;
          v49 = *(v47 + 8);
          v46(v58, 0);
          if ((v49 & 1) == 0)
          {
            v58[0] = 0;
            v58[1] = 0xE000000000000000;
            sub_255ECF4D8();

            strcpy(v58, "headphoneMode:");
            HIBYTE(v58[1]) = -18;
            v59 = v48;
            v50 = sub_255ECF578();
            MEMORY[0x259C50A70](v50);

            v34 = v58[1];
            v55 = v58[0];
          }
        }
      }

      v40 = v54;
      (*(v52 + 8))(v44, v45);
      v39 = v56;
      goto LABEL_30;
    }

LABEL_29:
    v39 = v56;
    v40 = v54;
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A78, &qword_255ECFF10);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_255ECFF70;
    v42 = v57;
    *(v41 + 32) = v39;
    *(v41 + 40) = v42;
    *(v41 + 48) = v26;
    *(v41 + 56) = v40;
    *(v41 + 64) = v55;
    *(v41 + 72) = v34;
    v58[0] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815930, &unk_255ECFB98);
    sub_255EB2624(&qword_27F815B48, &qword_27F815930, &unk_255ECFB98, MEMORY[0x277D83958]);
    v43 = sub_255ECF228();

    return v43;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_255EC0BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815908, &qword_255ECFB80);
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = sub_255ECF158();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255ECEF78();
  if ((v11 & 1) == 0)
  {
    v12 = result;
    result = sub_255ECF058();
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(result + 16))
    {
      (*(v7 + 16))(v9, result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6);

      v13 = sub_255ECF148();
      result = (*(v7 + 8))(v9, v6);
      if (v13 == MEMORY[0x277D83B88])
      {
        sub_255ECF098();
        sub_255EC42D4();
        sub_255ECF128();
        return (*(v15 + 8))(v5, v3);
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

double sub_255EC0E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_255ECEFC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEFD8();
  sub_255EC4234();
  sub_255ECF398();
  sub_255ECF3C8();
  v14 = *(v11 + 8);
  v14(v13, v10);
  result = 0.0;
  if (v18[1] != v18[0])
  {
    if (a1 == 0x65676172657661 && a2 == 0xE700000000000000 || (sub_255ECF588() & 1) != 0)
    {
      sub_255EC0BC4(a3, a4, a5);
    }

    else if (a1 == 0x6D6153746E756F63 && a2 == 0xEC00000073656C70 || (v16 = sub_255ECF588(), result = 0.0, (v16 & 1) != 0))
    {
      sub_255ECEFD8();
      v17 = sub_255ECEFB8();
      v14(v13, v10);
      return v17;
    }
  }

  return result;
}

char *sub_255EC1024(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v127) = a4;
  v111 = a2;
  v5 = sub_255ECEFF8();
  v116 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v113 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  MEMORY[0x28223BE20](v7 - 8);
  v110 = &v87 - v8;
  v114 = sub_255ECF078();
  v115 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v123 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v87 - v13;
  v132 = sub_255ECEE68();
  v117 = *(v132 - 8);
  v14 = MEMORY[0x28223BE20](v132);
  v109 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v87 - v17;
  MEMORY[0x28223BE20](v16);
  v120 = &v87 - v18;
  v19 = sub_255ECEF98();
  v130 = *(v19 - 8);
  v131 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v124 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = &v87 - v22;
  v23 = sub_255ECEFC8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v122 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  v26 = MEMORY[0x28223BE20](v121);
  v125 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  v30 = sub_255ECF158();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255ECEF78();
  if ((v35 & 1) == 0)
  {
    v36 = result;
    v107 = v5;
    result = sub_255ECF058();
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v36 < *(result + 2))
    {
      (*(v31 + 16))(v33, &result[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v36], v30);

      v37 = sub_255ECF148();
      result = (*(v31 + 8))(v33, v30);
      if (v37 != v132)
      {
        return result;
      }

      v104 = a3;
      v38 = v122;
      sub_255ECEFD8();
      v39 = v24 + 16;
      v40 = *(v24 + 16);
      v40(v29, v38, v23);
      v41 = *(v121 + 36);
      sub_255EC4234();
      sub_255ECF398();
      v43 = *(v24 + 8);
      v42 = v24 + 8;
      v103 = v43;
      v43(v38, v23);
      sub_255ECF3C8();
      v106 = v41;
      if (*&v29[v41] == v133)
      {
        goto LABEL_38;
      }

      v96 = v40;
      v97 = v39;
      v98 = v42;
      v44 = 0;
      v100 = 0;
      v128 = (v130 + 1);
      v129 = (v130 + 2);
      v130 = (v117 + 56);
      v126 = (v117 + 48);
      v102 = (v117 + 32);
      v99 = (v115 + 6);
      v95 = (v115 + 4);
      v91 = (v117 + 16);
      v101 = (v117 + 8);
      v94 = (v116 + 1);
      v45 = MEMORY[0x277D84F90];
      v93 = (v115 + 1);
      v92 = v127 & 1;
      v46 = v119;
      v47 = v118;
      while (1)
      {
        v115 = v45;
        v105 = v44;
        v48 = v106;
        while (1)
        {
          v49 = sub_255ECF3E8();
          v50 = *v129;
          v51 = v131;
          (*v129)(v47);
          v49(&v133, 0);
          sub_255ECF3D8();
          sub_255ECEFA8();
          v52 = *v128;
          (*v128)(v47, v51);
          if (v134)
          {
            break;
          }

          sub_255EB1E28(&v133, &qword_27F815AF8, &qword_255ECFF80);
          (*v130)(v46, 1, 1, v132);
LABEL_9:
          sub_255EB1E28(v46, &qword_27F815960, &qword_255ECFBC8);
          sub_255ECF3C8();
          if (*&v29[v48] == v133)
          {
            goto LABEL_38;
          }
        }

        v127 = v50;
        v53 = v132;
        v54 = swift_dynamicCast();
        v55 = *v130;
        (*v130)(v46, v54 ^ 1u, 1, v53);
        v56 = *v126;
        if ((*v126)(v46, 1, v53) == 1)
        {
          goto LABEL_9;
        }

        v90 = *v102;
        v90(v120, v46, v53);
        v57 = v110;
        sub_255EB27F8(v111, v110, &qword_27F8159D8, &qword_255ECFC20);
        v58 = v114;
        if ((*v99)(v57, 1, v114) == 1)
        {
          result = sub_255EB1E28(v57, &qword_27F8159D8, &qword_255ECFC20);
          v44 = v105 + 1;
          if (!__OFADD__(v105, 1))
          {
            v59 = v132;
            result = v120;
            goto LABEL_37;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        v60 = (*v95)(v112, v57, v58);
        v116 = &v87;
        MEMORY[0x28223BE20](v60);
        *(&v87 - 4) = v104;
        *(&v87 - 24) = v92;
        *(&v87 - 2) = v120;
        v61 = v100;
        sub_255ECF048();
        v100 = v61;
        v62 = v122;
        sub_255ECEFE8();
        v96(v125, v62, v23);
        v63 = *(v121 + 36);
        sub_255ECF398();
        v64 = v125;
        v103(v62, v23);
        sub_255ECF3C8();
        if (*(v63 + v64) == v133)
        {
          LOBYTE(v65) = 0;
          goto LABEL_34;
        }

        v65 = 0;
        v116 = v63;
        while (2)
        {
          v89 = v65;
          while (2)
          {
            v67 = sub_255ECF3E8();
            v68 = v124;
            v69 = v131;
            v127(v124);
            v67(&v133, 0);
            v70 = v116;
            sub_255ECF3D8();
            sub_255ECEFA8();
            v52(v68, v69);
            if (!v134)
            {
              sub_255EB1E28(&v133, &qword_27F815AF8, &qword_255ECFF80);
              v66 = v123;
              v55(v123, 1, 1, v132);
LABEL_20:
              sub_255EB1E28(v66, &qword_27F815960, &qword_255ECFBC8);
              v64 = v125;
              sub_255ECF3C8();
              if (*(v70 + v64) == v133)
              {
                v47 = v118;
                LOBYTE(v65) = v89;
                goto LABEL_34;
              }

              continue;
            }

            break;
          }

          v66 = v123;
          v71 = v132;
          v72 = swift_dynamicCast();
          v55(v66, v72 ^ 1u, 1, v71);
          if (v56(v66, 1, v71) == 1)
          {
            goto LABEL_20;
          }

          v73 = v108;
          v74 = v66;
          v75 = v132;
          v90(v108, v74, v132);
          v76 = v115;
          v77 = sub_255EAB9DC(v73, v115);
          v47 = v118;
          if (v77)
          {
            (*v101)(v73, v75);
            v65 = 1;
            v78 = v116;
          }

          else
          {
            (*v91)(v109, v73, v75);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = v76;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v80 = sub_255EAC6D0(0, v76[2] + 1, 1, v76);
            }

            v78 = v116;
            v82 = v80[2];
            v81 = v80[3];
            v88 = v82 + 1;
            v87 = v82;
            if (v82 >= v81 >> 1)
            {
              v115 = sub_255EAC6D0((v81 > 1), v88, 1, v80);
            }

            else
            {
              v115 = v80;
            }

            v83 = v117;
            v84 = v73;
            v85 = v132;
            (*(v117 + 8))(v84, v132);
            v86 = v115;
            v115[2] = v88;
            v90(&v86[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v87], v109, v85);
            v65 = v89;
          }

          v64 = v125;
          sub_255ECF3C8();
          if (*(v78 + v64) != v133)
          {
            continue;
          }

          break;
        }

LABEL_34:
        sub_255EB1E28(v64, &qword_27F815B08, &qword_255ED0080);
        (*v94)(v113, v107);
        (*v93)(v112, v114);
        if (v65)
        {
          v46 = v119;
          result = v120;
          v59 = v132;
          v44 = v105;
          goto LABEL_37;
        }

        v44 = v105 + 1;
        v46 = v119;
        result = v120;
        v59 = v132;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_43;
        }

LABEL_37:
        (*v101)(result, v59);
        sub_255ECF3C8();
        v45 = v115;
        if (*&v29[v106] == v133)
        {
LABEL_38:
          sub_255EB1E28(v29, &qword_27F815B08, &qword_255ED0080);
        }
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  return result;
}

unint64_t sub_255EC2018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v415 = a3;
  v408 = a2;
  v406 = type metadata accessor for Metric(0);
  v404 = *(v406 - 8);
  MEMORY[0x28223BE20](v406);
  v387 = &v385 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = type metadata accessor for ManualVolumeChange(0);
  v385 = *(v388 - 8);
  v5 = MEMORY[0x28223BE20](v388);
  v389 = &v385 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v386 = &v385 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  MEMORY[0x28223BE20](v8 - 8);
  v411 = (&v385 - v9);
  v401 = sub_255ECF078();
  v409 = *(v401 - 8);
  v10 = MEMORY[0x28223BE20](v401);
  v400 = &v385 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v402 = &v385 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B28, &qword_255ED0960);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v399 = &v385 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v414 = &v385 - v16;
  v407 = type metadata accessor for DataSlice(0);
  v410 = *(v407 - 8);
  v17 = MEMORY[0x28223BE20](v407);
  v392 = &v385 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v393 = &v385 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v395 = &v385 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v396 = &v385 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v397 = &v385 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v398 = &v385 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v385 - v30;
  MEMORY[0x28223BE20](v29);
  v394 = &v385 - v32;
  v403 = type metadata accessor for EventSet(0);
  v413 = *(v403 - 8);
  v33 = MEMORY[0x28223BE20](v403);
  v35 = &v385 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v412 = &v385 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v385 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v390 = &v385 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v385 - v44;
  MEMORY[0x28223BE20](v43);
  v391 = &v385 - v46;
  v48 = *(a1 + 16);
  v47 = *(a1 + 24);
  v405 = a1;
  v49 = *(a1 + 32);
  v416 = "minimumTimeGapBetweenEvents";
  if (!*(v49 + 16))
  {
    goto LABEL_29;
  }

  sub_255EACAD4(0xD000000000000011, v416 | 0x8000000000000000);
  if (v50)
  {
    if (!*(v49 + 16))
    {
      goto LABEL_29;
    }

    sub_255EACAD4(0xD000000000000010, 0x8000000255ED11A0);
    if (v51)
    {
      if (!*(v49 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v52 = sub_255EACAD4(0xD000000000000010, 0x8000000255ED11A0);
      if ((v53 & 1) == 0 || !*(v49 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v54 = (*(v49 + 56) + 16 * v52);
      v56 = *v54;
      v55 = v54[1];

      v57 = sub_255EACAD4(0xD000000000000011, v416 | 0x8000000000000000);
      if ((v58 & 1) != 0 && *(v49 + 16))
      {
        v59 = (*(v49 + 56) + 16 * v57);
        v61 = *v59;
        v60 = v59[1];

        v62 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED11C0);
        if (v63 & 1) != 0 && (v64 = (*(v49 + 56) + 16 * v62), v65 = *v64, v66 = v64[1], v418 = 0.0, , LOBYTE(v65) = sub_255EBDA88(v65, v66, &v418), , (v65))
        {
          v67 = v415;
          if (*(v415 + 16))
          {
            v68 = v418;
            v69 = sub_255EACAD4(v56, v55);
            v71 = v70;

            if (v71)
            {
              v72 = v413;
              v73 = *(v413 + 72);
              sub_255EC4094(*(v67 + 56) + v73 * v69, v45, type metadata accessor for EventSet);
              v74 = v391;
              sub_255EC40FC(v45, v391, type metadata accessor for EventSet);
              if (*(v67 + 16))
              {
                v75 = sub_255EACAD4(v61, v60);
                v77 = v76;

                if (v77)
                {
                  sub_255EC4094(*(v67 + 56) + v75 * v73, v40, type metadata accessor for EventSet);
                  v78 = v390;
                  sub_255EC40FC(v40, v390, type metadata accessor for EventSet);
                  v79 = v405;
                  v80 = sub_255EBFE90(v405, (v74 + *(v403 + 20)), (v78 + *(v403 + 20)), v68);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
                  v81 = (*(v404 + 80) + 32) & ~*(v404 + 80);
                  v82 = swift_allocObject();
                  v416 = v82;
                  *(v82 + 16) = xmmword_255ECFB60;
                  v83 = v72;
                  v84 = v74;
                  v85 = (v82 + v81);
                  v86 = *(v79 + 1);
                  *&v415 = *v79;
                  v87 = v407;

                  v88 = sub_255EC01C8();
                  v90 = v89;
                  v91 = v406;
                  (*(v410 + 56))(v85 + *(v406 + 28), 1, 1, v87);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B30, &qword_255ED0030);
                  v92 = (*(v83 + 80) + 32) & ~*(v83 + 80);
                  v93 = swift_allocObject();
                  *(v93 + 16) = xmmword_255ED0020;
                  v94 = v93 + v92;
                  sub_255EC4094(v84, v94, type metadata accessor for EventSet);
                  v95 = v94 + v73;
                  v96 = v390;
                  sub_255EC4094(v390, v95, type metadata accessor for EventSet);
                  *v85 = v415;
                  *(v85 + 1) = v86;
                  v85[2] = v80;
                  *(v85 + 3) = v88;
                  *(v85 + 4) = v90;
                  *(v85 + *(v91 + 32)) = v93;
                  sub_255EC4164(v96, type metadata accessor for EventSet);
                  v97 = v84;
                  v98 = type metadata accessor for EventSet;
LABEL_17:
                  sub_255EC4164(v97, v98);
                  return v416;
                }
              }

              else
              {
              }

              v203 = type metadata accessor for EventSet;
              v204 = v74;
              goto LABEL_86;
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

LABEL_132:

      return MEMORY[0x277D84F90];
    }
  }

  if (*(v49 + 16))
  {
    sub_255EACAD4(0x6E6D756C6F63, 0xE600000000000000);
    if (v100)
    {
      if (*(v49 + 16))
      {
        sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
        if (v101)
        {
          if (!*(v49 + 16))
          {
            return MEMORY[0x277D84F90];
          }

          v102 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
          if ((v103 & 1) == 0 || !*(v49 + 16))
          {
            return MEMORY[0x277D84F90];
          }

          v104 = (*(v49 + 56) + 16 * v102);
          v106 = *v104;
          v105 = v104[1];

          v107 = sub_255EACAD4(0x6E6D756C6F63, 0xE600000000000000);
          if (v108)
          {
            v109 = v408;
            if (*(v408 + 16))
            {
              v110 = (*(v49 + 56) + 16 * v107);
              v112 = *v110;
              v111 = v110[1];

              v113 = sub_255EACAD4(v106, v105);
              v115 = v114;

              if (v115)
              {
                v116 = v410;
                v117 = *(v109 + 56) + *(v410 + 72) * v113;
                v416 = type metadata accessor for DataSlice;
                sub_255EC4094(v117, v31, type metadata accessor for DataSlice);
                v118 = v394;
                sub_255EC40FC(v31, v394, type metadata accessor for DataSlice);
                v119 = sub_255EC0E30(v48, v47, v118 + *(v407 + 20), v112, v111);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
                v120 = (*(v404 + 80) + 32) & ~*(v404 + 80);
                v121 = swift_allocObject();
                *(v121 + 16) = xmmword_255ECFB60;
                v122 = (v121 + v120);
                v123 = *(v405 + 1);
                *&v415 = *v405;

                v124 = sub_255EC01C8();
                v126 = v125;
                v127 = v406;
                v128 = *(v406 + 28);
                v129 = v416;
                sub_255EC4094(v118, v122 + v128, v416);
                (*(v116 + 56))(v122 + v128, 0, 1, v407);
                *v122 = v415;
                *(v122 + 1) = v123;
                v122[2] = v119;
                *(v122 + 3) = v124;
                *(v122 + 4) = v126;
                *(v122 + *(v127 + 32)) = 0.0;
                sub_255EC4164(v118, v129);
                return v121;
              }
            }
          }

          goto LABEL_132;
        }
      }
    }
  }

LABEL_29:
  if ((v48 != 0x657645746E756F63 || v47 != 0xEB0000000073746ELL) && (sub_255ECF588() & 1) == 0)
  {
    if (v48 == 0xD000000000000031 && 0x8000000255ED0FA0 == v47 || (sub_255ECF588() & 1) != 0)
    {
      if (!*(v49 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v156 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
      if ((v157 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v158 = v408;
      if (!*(v408 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v159 = (*(v49 + 56) + 16 * v156);
      v160 = *v159;
      v161 = v159[1];

      v162 = sub_255EACAD4(v160, v161);
      v164 = v163;

      if ((v164 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v165 = *(v158 + 56) + *(v410 + 72) * v162;
      v166 = v397;
      sub_255EC4094(v165, v397, type metadata accessor for DataSlice);
      v167 = v398;
      sub_255EC40FC(v166, v398, type metadata accessor for DataSlice);
      if (*(v49 + 16))
      {
        v168 = sub_255EACAD4(0xD00000000000001DLL, 0x8000000255ED10C0);
        if (v169)
        {
          v170 = (*(v49 + 56) + 16 * v168);
          v171 = *v170;
          v172 = v170[1];
          v418 = 0.0;

          LOBYTE(v171) = sub_255EBDA88(v171, v172, &v418);

          if (v171)
          {
            if (*(v49 + 16))
            {
              v173 = v418;
              v174 = sub_255EACAD4(0xD00000000000001CLL, 0x8000000255ED1160);
              if (v175)
              {
                v176 = (*(v49 + 56) + 16 * v174);
                v177 = *v176;
                v178 = v176[1];
                v418 = 0.0;

                LOBYTE(v177) = sub_255EBDA88(v177, v178, &v418);

                if (v177)
                {
                  if (*(v49 + 16))
                  {
                    v179 = v418;
                    v180 = sub_255EACAD4(0xD000000000000015, 0x8000000255ED10E0);
                    if (v181)
                    {
                      v182 = (*(v49 + 56) + 16 * v180);
                      v183 = *v182;
                      v184 = v182[1];

                      v185 = sub_255EBC1D8(v183, v184);
                      if ((v186 & 1) == 0)
                      {
                        if (!*(v49 + 16) || (v187 = v185, v188 = sub_255EACAD4(0xD000000000000017, 0x8000000255ED1100), (v189 & 1) == 0) || (v190 = (*(v49 + 56) + 16 * v188), v192 = *v190, v191 = v190[1], , v193 = sub_255EBC1D8(v192, v191), (v194 & 1) != 0) || !*(v49 + 16) || (v195 = v193, v196 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED1120), (v197 & 1) == 0) || (v198 = (*(v49 + 56) + 16 * v196), v199 = *v198, v200 = v198[1], , v201 = sub_255EBC1D8(v199, v200), (v202 & 1) != 0))
                        {
                          v203 = type metadata accessor for DataSlice;
                          v204 = v398;
LABEL_86:
                          sub_255EC4164(v204, v203);
                          return MEMORY[0x277D84F90];
                        }

                        v351 = v201;
                        type metadata accessor for ManualVolumeChangeFunctions();
                        v352 = sub_255EC43EC((v398 + *(v407 + 20)), v187, v195, v351, v173);
                        v353 = v352[2];
                        if (v353)
                        {
                          v354 = &v386[*(v388 + 24)];
                          v355 = v352 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
                          v356 = *(v385 + 72);
                          v357 = fabs(v179);
                          v358 = 0.0;
                          v359 = 0.0;
                          v360 = v386;
                          do
                          {
                            sub_255EC4094(v355, v360, type metadata accessor for ManualVolumeChange);
                            v361 = *v354;
                            v362 = v354[8];
                            sub_255EC4164(v360, type metadata accessor for ManualVolumeChange);
                            if (!(v362 & 1 | (v357 >= v361)))
                            {
                              v358 = v359 + 1.0;
                              v359 = v359 + 1.0;
                            }

                            v355 += v356;
                            --v353;
                          }

                          while (v353);
                        }

                        else
                        {

                          v358 = 0.0;
                        }

                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
                        v363 = (*(v404 + 80) + 32) & ~*(v404 + 80);
                        v364 = swift_allocObject();
                        *(v364 + 16) = xmmword_255ECFB60;
                        v365 = v364 + v363;
                        v367 = *v405;
                        v366 = *(v405 + 1);

                        v368 = v398;
                        v369 = sub_255EC01C8();
                        v371 = v370;
                        v372 = v406;
                        v373 = *(v406 + 28);
                        sub_255EC4094(v368, v365 + v373, type metadata accessor for DataSlice);
                        (*(v410 + 56))(v365 + v373, 0, 1, v407);
                        *v365 = v367;
                        *(v365 + 8) = v366;
                        *(v365 + 16) = v358;
                        *(v365 + 24) = v369;
                        *(v365 + 32) = v371;
                        *(v365 + *(v372 + 32)) = 0;
LABEL_157:
                        sub_255EC4164(v368, type metadata accessor for DataSlice);
                        return v364;
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

    else
    {
      if ((v48 != 0xD000000000000017 || 0x8000000255ED0FE0 != v47) && (sub_255ECF588() & 1) == 0)
      {
        if ((v48 != 0xD00000000000001CLL || 0x8000000255ED1000 != v47) && (sub_255ECF588() & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }

        if (!*(v49 + 16))
        {
          return MEMORY[0x277D84F90];
        }

        v248 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
        if ((v249 & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }

        v250 = v408;
        if (!*(v408 + 16))
        {
          return MEMORY[0x277D84F90];
        }

        v251 = (*(v49 + 56) + 16 * v248);
        v252 = *v251;
        v253 = v251[1];

        v254 = sub_255EACAD4(v252, v253);
        v256 = v255;

        if ((v256 & 1) == 0)
        {
          return MEMORY[0x277D84F90];
        }

        v257 = *(v250 + 56) + *(v410 + 72) * v254;
        v258 = v392;
        sub_255EC4094(v257, v392, type metadata accessor for DataSlice);
        v259 = v393;
        sub_255EC40FC(v258, v393, type metadata accessor for DataSlice);
        if (!*(v49 + 16) || (v260 = sub_255EACAD4(0x456D756D696E696DLL, 0xEF61746C6544766ELL), (v261 & 1) == 0) || (v262 = (*(v49 + 56) + 16 * v260), v263 = *v262, v264 = v262[1], v418 = 0.0, , LOBYTE(v263) = sub_255EBDA88(v263, v264, &v418), , (v263 & 1) == 0) || !*(v49 + 16) || (v265 = v418, v266 = sub_255EACAD4(0xD000000000000012, 0x8000000255ED1020), (v267 & 1) == 0))
        {
          v203 = type metadata accessor for DataSlice;
          v204 = v259;
          goto LABEL_86;
        }

        v268 = (*(v49 + 56) + 16 * v266);
        v269 = *v268;
        v270 = v268[1];

        v271 = sub_255EBC1D8(v269, v270);
        if (v272 & 1) != 0 || !*(v49 + 16) || (v273 = v271, v274 = sub_255EACAD4(0xD000000000000016, 0x8000000255ED1040), (v275 & 1) == 0) || (v276 = (*(v49 + 56) + 16 * v274), v278 = *v276, v277 = v276[1], , v279 = sub_255EBC1D8(v278, v277), (v280) || !*(v49 + 16) || (v281 = v279, v282 = sub_255EACAD4(0xD000000000000011, 0x8000000255ED1060), (v283 & 1) == 0) || (v284 = (*(v49 + 56) + 16 * v282), v286 = *v284, v285 = v284[1], , v287 = sub_255EBC1D8(v286, v285), (v288) || !*(v49 + 16) || (v289 = v287, v290 = sub_255EACAD4(0xD000000000000012, 0x8000000255ED1080), (v291 & 1) == 0) || (v292 = (*(v49 + 56) + 16 * v290), v294 = *v292, v293 = v292[1], , v295 = sub_255EBC1D8(v294, v293), (v296) || !*(v49 + 16) || (v297 = v295, v298 = sub_255EACAD4(0xD000000000000017, 0x8000000255ED10A0), (v299 & 1) == 0) || (v300 = (*(v49 + 56) + 16 * v298), v301 = *v300, v302 = v300[1], , v303 = sub_255EBC1D8(v301, v302), (v304))
        {
          v203 = type metadata accessor for DataSlice;
          v204 = v393;
          goto LABEL_86;
        }

        v368 = v393;
        sub_255EC7B30(v393 + *(v407 + 20), v273, v281, v289, v297, v303, v265);
        v375 = v374;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
        v376 = (*(v404 + 80) + 32) & ~*(v404 + 80);
        v364 = swift_allocObject();
        *(v364 + 16) = xmmword_255ECFB60;
        v377 = (v364 + v376);
        v379 = *v405;
        v378 = *(v405 + 1);

        v380 = sub_255EC01C8();
        v382 = v381;
        v383 = v406;
        v384 = *(v406 + 28);
        sub_255EC4094(v368, &v377[v384], type metadata accessor for DataSlice);
        (*(v410 + 56))(&v377[v384], 0, 1, v407);
        *v377 = v379;
        *(v377 + 1) = v378;
        *(v377 + 2) = v375;
        *(v377 + 3) = v380;
        *(v377 + 4) = v382;
        *&v377[*(v383 + 32)] = 0;
        goto LABEL_157;
      }

      if (!*(v49 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v205 = sub_255EACAD4(0x6D614E6563696C73, 0xE900000000000065);
      if ((v206 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v207 = v408;
      if (!*(v408 + 16))
      {
        return MEMORY[0x277D84F90];
      }

      v208 = (*(v49 + 56) + 16 * v205);
      v209 = *v208;
      v210 = v208[1];

      v211 = sub_255EACAD4(v209, v210);
      v213 = v212;

      if ((v213 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      v214 = *(v207 + 56) + *(v410 + 72) * v211;
      v215 = v395;
      sub_255EC4094(v214, v395, type metadata accessor for DataSlice);
      v167 = v396;
      sub_255EC40FC(v215, v396, type metadata accessor for DataSlice);
      if (*(v49 + 16))
      {
        v216 = sub_255EACAD4(0xD00000000000001DLL, 0x8000000255ED10C0);
        if (v217)
        {
          v218 = (*(v49 + 56) + 16 * v216);
          v219 = *v218;
          v220 = v218[1];
          v418 = 0.0;

          LOBYTE(v219) = sub_255EBDA88(v219, v220, &v418);

          if (v219)
          {
            if (*(v49 + 16))
            {
              v221 = v418;
              v222 = sub_255EACAD4(0xD000000000000015, 0x8000000255ED10E0);
              if (v223)
              {
                v224 = (*(v49 + 56) + 16 * v222);
                v225 = *v224;
                v226 = v224[1];

                v227 = sub_255EBC1D8(v225, v226);
                if ((v228 & 1) == 0)
                {
                  if (*(v49 + 16))
                  {
                    v229 = v227;
                    v230 = sub_255EACAD4(0xD000000000000017, 0x8000000255ED1100);
                    if (v231)
                    {
                      v232 = (*(v49 + 56) + 16 * v230);
                      v234 = *v232;
                      v233 = v232[1];

                      v235 = sub_255EBC1D8(v234, v233);
                      if ((v236 & 1) == 0)
                      {
                        if (*(v49 + 16))
                        {
                          v237 = v235;
                          v238 = sub_255EACAD4(0xD00000000000001BLL, 0x8000000255ED1120);
                          if (v239)
                          {
                            v240 = (*(v49 + 56) + 16 * v238);
                            v241 = *v240;
                            v242 = v240[1];

                            v243 = sub_255EBC1D8(v241, v242);
                            if ((v244 & 1) == 0)
                            {
                              v330 = v243;
                              type metadata accessor for ManualVolumeChangeFunctions();
                              v414 = *(v407 + 20);
                              v411 = sub_255EC43EC((v396 + v414), v229, v237, v330, v221);
                              v331 = v411[2];
                              if (v331)
                              {
                                v332 = v411 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
                                *&v415 = *(v385 + 72);
                                v413 = "envDeltaAveragingWindowSize";
                                v416 = MEMORY[0x277D84F90];
                                v412 = (v410 + 56);
                                v333 = v406;
                                do
                                {
                                  v334 = v389;
                                  sub_255EC4094(v332, v389, type metadata accessor for ManualVolumeChange);
                                  v335 = v334 + *(v388 + 24);
                                  if (*(v335 + 8))
                                  {
                                    sub_255EC4164(v389, type metadata accessor for ManualVolumeChange);
                                  }

                                  else
                                  {
                                    v336 = *v335;
                                    v418 = 0.0;
                                    v419 = 0xE000000000000000;
                                    sub_255ECF4D8();
                                    v337 = *v405;
                                    v338 = *(v405 + 1);

                                    v418 = v337;
                                    v419 = v338;
                                    MEMORY[0x259C50A70](0xD000000000000017, v413 | 0x8000000000000000);
                                    v417 = *(v389 + *(v388 + 20));
                                    v339 = sub_255ECF578();
                                    MEMORY[0x259C50A70](v339);

                                    MEMORY[0x259C50A70](93, 0xE100000000000000);
                                    v341 = v418;
                                    v340 = v419;
                                    v342 = v396;
                                    v343 = sub_255EC01C8();
                                    v345 = v344;
                                    v346 = *(v333 + 28);
                                    v347 = v387;
                                    sub_255EC4094(v342, &v387[v346], type metadata accessor for DataSlice);
                                    (*v412)(&v347[v346], 0, 1, v407);
                                    *v347 = v341;
                                    *(v347 + 1) = v340;
                                    *(v347 + 2) = v336;
                                    *(v347 + 3) = v343;
                                    *(v347 + 4) = v345;
                                    *&v347[*(v333 + 32)] = 0;
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v416 = sub_255EAC84C(0, *(v416 + 16) + 1, 1, v416);
                                    }

                                    v349 = *(v416 + 16);
                                    v348 = *(v416 + 24);
                                    if (v349 >= v348 >> 1)
                                    {
                                      v416 = sub_255EAC84C((v348 > 1), v349 + 1, 1, v416);
                                    }

                                    sub_255EC4164(v389, type metadata accessor for ManualVolumeChange);
                                    v350 = v416;
                                    *(v416 + 16) = v349 + 1;
                                    sub_255EC40FC(v387, v350 + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v349, type metadata accessor for Metric);
                                  }

                                  v332 += v415;
                                  --v331;
                                }

                                while (v331);
                              }

                              else
                              {

                                v416 = MEMORY[0x277D84F90];
                              }

                              v98 = type metadata accessor for DataSlice;
                              v97 = v396;
                              goto LABEL_17;
                            }
                          }
                        }
                      }

                      v203 = type metadata accessor for DataSlice;
                      v204 = v396;
                      goto LABEL_86;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v203 = type metadata accessor for DataSlice;
    v204 = v167;
    goto LABEL_86;
  }

  if (!*(v49 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v130 = sub_255EACAD4(0x73746E657665, 0xE600000000000000);
  if ((v131 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v132 = v415;
  if (!*(v415 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v133 = (*(v49 + 56) + 16 * v130);
  v135 = *v133;
  v134 = v133[1];

  v136 = sub_255EACAD4(v135, v134);
  LOBYTE(v135) = v137;

  if ((v135 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v138 = 3157552;
  v139 = *(v132 + 56);
  v140 = v413;
  v408 = *(v413 + 72);
  sub_255EC4094(v139 + v408 * v136, v35, type metadata accessor for EventSet);
  sub_255EC40FC(v35, v412, type metadata accessor for EventSet);
  v141 = *(v140 + 56);
  v142 = v403;
  v141(v414, 1, 1, v403);
  if (*(v49 + 16))
  {
    v143 = sub_255EACAD4(0xD000000000000011, v416 | 0x8000000000000000);
    v144 = v409;
    if (v145)
    {
      v146 = v415;
      if (*(v415 + 16))
      {
        v147 = (*(v49 + 56) + 16 * v143);
        v148 = *v147;
        v149 = v147[1];

        v150 = sub_255EACAD4(v148, v149);
        v152 = v151;

        if (v152)
        {
          v153 = *(v146 + 56) + v150 * v408;
          v154 = v399;
          sub_255EC4094(v153, v399, type metadata accessor for EventSet);
          v155 = 0;
          v144 = v409;
        }

        else
        {
          v155 = 1;
          v144 = v409;
          v154 = v399;
        }
      }

      else
      {
        v155 = 1;
        v154 = v399;
      }

      v141(v154, v155, 1, v142);
      sub_255EC41C4(v154, v414);
    }

    v247 = v401;
    if (*(v49 + 16) && (v305 = sub_255EACAD4(0xD000000000000019, 0x8000000255ED1180), (v306 & 1) != 0))
    {
      v307 = (*(v49 + 56) + 16 * v305);
      v138 = *v307;
      v245 = v307[1];
    }

    else
    {
      v245 = 0xE300000000000000;
    }

    v246 = v414;
  }

  else
  {
    v245 = 0xE300000000000000;
    v246 = v414;
    v247 = v401;
    v144 = v409;
  }

  v418 = 0.0;
  v308 = sub_255EBDA88(v138, v245, &v418);

  if (v308)
  {
    v309 = *&v418;
  }

  else
  {
    v309 = 0;
  }

  v310 = !v308;
  v311 = *(v144 + 16);
  v312 = v402;
  v311(v402, &v412[*(v142 + 20)], v247);
  v313 = 1;
  if (!(*(v413 + 48))(v246, 1, v142))
  {
    v314 = v400;
    v311(v400, (v246 + *(v142 + 20)), v247);
    (*(v144 + 32))(v411, v314, v247);
    v313 = 0;
  }

  v315 = v411;
  (*(v144 + 56))(v411, v313, 1, v247);
  sub_255EC1024(v312, v315, v309, v310);
  v317 = v316;
  sub_255EB1E28(v315, &qword_27F8159D8, &qword_255ECFC20);
  (*(v144 + 8))(v312, v247);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815A48, &qword_255ECFEE8);
  v318 = (*(v404 + 80) + 32) & ~*(v404 + 80);
  v319 = swift_allocObject();
  v415 = xmmword_255ECFB60;
  *(v319 + 16) = xmmword_255ECFB60;
  v320 = (v319 + v318);
  v321 = *(v405 + 1);
  v416 = *v405;
  v322 = v407;

  v323 = v412;
  v324 = sub_255EC01C8();
  v326 = v325;
  v327 = v406;
  (*(v410 + 56))(v320 + *(v406 + 28), 1, 1, v322);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B30, &qword_255ED0030);
  v328 = (*(v413 + 80) + 32) & ~*(v413 + 80);
  v329 = swift_allocObject();
  *(v329 + 16) = v415;
  sub_255EC4094(v323, v329 + v328, type metadata accessor for EventSet);
  *v320 = v416;
  v320[1] = v321;
  v320[2] = v317;
  v320[3] = v324;
  v320[4] = v326;
  *(v320 + *(v327 + 32)) = v329;
  sub_255EC4164(v323, type metadata accessor for EventSet);
  sub_255EB1E28(v414, &qword_27F815B28, &qword_255ED0960);
  return v319;
}

uint64_t sub_255EC4094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255EC40FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255EC4164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255EC41C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B28, &qword_255ED0960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_255EC4234()
{
  result = qword_27F815B10;
  if (!qword_27F815B10)
  {
    sub_255ECEFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815B10);
  }

  return result;
}

unint64_t sub_255EC42D4()
{
  result = qword_27F815B40;
  if (!qword_27F815B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815B40);
  }

  return result;
}

_BYTE *sub_255EC4350@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *sub_255EC43EC(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v175 = a4;
  v173 = a2;
  v174 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B60, &unk_255ED0070);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v156 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v167 = &v131 - v10;
  v171 = type metadata accessor for ManualVolumeChange(0);
  v160 = *(v171 - 8);
  v11 = MEMORY[0x28223BE20](v171);
  v153 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v152 = &v131 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v151 = &v131 - v16;
  MEMORY[0x28223BE20](v15);
  v150 = &v131 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v168 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v169 = &v131 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v164 = &v131 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v170 = &v131 - v26;
  MEMORY[0x28223BE20](v25);
  v180 = &v131 - v27;
  v178 = sub_255ECEE68();
  v155 = *(v178 - 8);
  v28 = MEMORY[0x28223BE20](v178);
  v162 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v176 = &v131 - v30;
  v177 = sub_255ECEF98();
  v165 = *(v177 - 8);
  v31 = MEMORY[0x28223BE20](v177);
  v149 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v148 = &v131 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v154 = &v131 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v163 = &v131 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v166 = &v131 - v40;
  MEMORY[0x28223BE20](v39);
  v179 = &v131 - v41;
  v181 = sub_255ECEFC8();
  v157 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v43 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v44);
  v46 = &v131 - v45;
  v159 = sub_255ECEFF8();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v161 = &v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_255ECF158();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v131 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8159D8, &qword_255ECFC20);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v131 - v53;
  v55 = sub_255ECF078();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v58 = &v131 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = a1;
  v59 = a1;
  v61 = v60;
  sub_255EBA1B4(v59, v54);
  if ((*(v56 + 48))(v54, 1, v61) == 1)
  {
    sub_255EB1E28(v54, &qword_27F8159D8, &qword_255ECFC20);
    return MEMORY[0x277D84F90];
  }

  v147 = v56;
  (*(v56 + 32))(v58, v54, v61);
  v62 = sub_255ECEF78();
  if (v63)
  {
LABEL_8:
    (*(v147 + 8))(v58, v61);
    return MEMORY[0x277D84F90];
  }

  v64 = v62;
  v139 = v58;
  v65 = sub_255ECF058();
  if ((v64 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  if (v64 >= *(v65 + 16))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  (*(v49 + 16))(v51, v65 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v64, v48);

  v66 = sub_255ECF148();
  (*(v49 + 8))(v51, v48);
  v58 = v139;
  if (v66 != v178)
  {
    goto LABEL_8;
  }

  sub_255ECEF78();
  if (v67)
  {
    goto LABEL_8;
  }

  sub_255ECF048();
  sub_255ECEFE8();
  v69 = v157;
  v70 = v181;
  (*(v157 + 16))(v46, v43, v181);
  v71 = *(v44 + 36);
  v72 = sub_255EC938C(&qword_27F815B10, MEMORY[0x277CE1870], MEMORY[0x277CE1880]);
  sub_255ECF398();
  (*(v69 + 8))(v43, v70);
  sub_255ECF3C8();
  if (*&v46[v71] == v182)
  {
    v73 = MEMORY[0x277D84F90];
    v132 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v157 = v165 + 16;
  v145 = (v165 + 32);
  v142 = (v155 + 56);
  v141 = (v155 + 48);
  v138 = (v155 + 32);
  v146 = (v165 + 8);
  v137 = (v155 + 8);
  v133 = (v160 + 48);
  v73 = MEMORY[0x277D84F90];
  v132 = MEMORY[0x277D84F90];
  v74 = v177;
  v75 = v178;
  v135 = v61;
  v144 = v71;
  v143 = v72;
  do
  {
    v140 = v73;
    while (2)
    {
      v76 = v166;
      while (1)
      {
        v79 = sub_255ECF3E8();
        v80 = v179;
        v155 = *v157;
        v155(v179);
        v79(&v182, 0);
        sub_255ECF3D8();
        v81 = *v145;
        (*v145)(v76, v80, v74);
        sub_255ECEFA8();
        if (v183)
        {
          break;
        }

        (*v146)(v76, v74);
        sub_255EB1E28(&v182, &qword_27F815AF8, &qword_255ECFF80);
        v77 = v180;
        (*v142)(v180, 1, 1, v75);
LABEL_16:
        sub_255EB1E28(v77, &qword_27F815960, &qword_255ECFBC8);
        v78 = v144;
LABEL_17:
        sub_255ECF3C8();
        if (*&v46[v78] == v182)
        {
          goto LABEL_55;
        }
      }

      v77 = v180;
      v82 = swift_dynamicCast();
      v83 = *v142;
      (*v142)(v77, v82 ^ 1u, 1, v75);
      v84 = *v141;
      if ((*v141)(v77, 1, v75) == 1)
      {
        v74 = v177;
        (*v146)(v76, v177);
        goto LABEL_16;
      }

      v134 = v81;
      v136 = *v138;
      v136(v176, v77, v75);
      v85 = v170;
      v83(v170, 1, 1, v75);
      if (*(v140 + 2))
      {
        v86 = v165;
        v87 = v163;
        v88 = v177;
        (v155)(v163, v140 + ((*(v86 + 80) + 32) & ~*(v86 + 80)), v177);
        sub_255ECEFA8();
        sub_255EB1E28(v85, &qword_27F815960, &qword_255ECFBC8);
        (*(v86 + 8))(v87, v88);
        if (v183)
        {
          v89 = v164;
          v90 = v178;
          v91 = swift_dynamicCast() ^ 1;
          v92 = v89;
          v93 = v90;
        }

        else
        {
          sub_255EB1E28(&v182, &qword_27F815AF8, &qword_255ECFF80);
          v89 = v164;
          v92 = v164;
          v91 = 1;
          v93 = v178;
        }

        v83(v92, v91, 1, v93);
        sub_255EB2860(v89, v85, &qword_27F815960, &qword_255ECFBC8);
        v76 = v166;
      }

      v94 = v169;
      sub_255EB8BB8(v85, v169);
      v75 = v178;
      v95 = v84(v94, 1, v178);
      sub_255EB1E28(v94, &qword_27F815960, &qword_255ECFBC8);
      if (v95 == 1)
      {
        v74 = v177;
        (v155)(v154, v76, v177);
        v101 = v140;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_255EAC720(0, *(v101 + 2) + 1, 1, v101);
        }

        v75 = v178;
        v61 = v135;
        v102 = v144;
        v104 = *(v101 + 2);
        v103 = *(v101 + 3);
        v155 = (v104 + 1);
        if (v104 >= v103 >> 1)
        {
          v140 = sub_255EAC720((v103 > 1), v155, 1, v101);
        }

        else
        {
          v140 = v101;
        }

        sub_255EB1E28(v170, &qword_27F815960, &qword_255ECFBC8);
        (*v137)(v176, v75);
        v105 = &v183;
LABEL_43:
        v110 = *(v105 - 32);
        v111 = v165;
        (*(v165 + 8))(v166, v74);
        v112 = v140;
        *(v140 + 2) = v155;
        v134(v112 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v104, v110, v74);
        sub_255ECF3C8();
        if (*&v46[v102] != v182)
        {
          continue;
        }

LABEL_55:
        v73 = v140;
        goto LABEL_56;
      }

      break;
    }

    v96 = v168;
    sub_255EB8BB8(v85, v168);
    v97 = v84(v96, 1, v75);
    v74 = v177;
    if (v97 == 1)
    {
      sub_255EB1E28(v96, &qword_27F815960, &qword_255ECFBC8);
      v98 = v167;
    }

    else
    {
      v99 = v162;
      v136(v162, v96, v75);
      sub_255ECEDE8();
      if (v100 < a5)
      {
        (v155)(v148, v76, v74);
        v106 = v140;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v135;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v106 = sub_255EAC720(0, *(v106 + 2) + 1, 1, v106);
        }

        v75 = v178;
        v102 = v144;
        v104 = *(v106 + 2);
        v108 = *(v106 + 3);
        v155 = (v104 + 1);
        if (v104 >= v108 >> 1)
        {
          v140 = sub_255EAC720((v108 > 1), v155, 1, v106);
        }

        else
        {
          v140 = v106;
        }

        v109 = *v137;
        (*v137)(v162, v75);
        sub_255EB1E28(v170, &qword_27F815960, &qword_255ECFBC8);
        v109(v176, v75);
        v105 = &v179;
        goto LABEL_43;
      }

      (*v137)(v99, v75);
      v98 = v167;
    }

    sub_255EC5BE4(v140, v172, v173, v174, v175, v98);
    if ((*v133)(v98, 1, v171) == 1)
    {
      sub_255EB1E28(v85, &qword_27F815960, &qword_255ECFBC8);
      (*v137)(v176, v75);
      (*v146)(v76, v74);
      sub_255EB1E28(v98, &qword_27F815B60, &unk_255ED0070);
      v78 = v144;
      v61 = v135;
      goto LABEL_17;
    }

    v113 = v98;
    v114 = v150;
    sub_255EC73E4(v113, v150);
    sub_255EC7448(v114, v151);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = sub_255EAC6F8(0, v132[2] + 1, 1, v132);
    }

    v115 = v132;
    v117 = v132[2];
    v116 = v132[3];
    if (v117 >= v116 >> 1)
    {
      v115 = sub_255EAC6F8((v116 > 1), v117 + 1, 1, v132);
    }

    v115[2] = v117 + 1;
    v118 = (v160[80] + 32) & ~v160[80];
    v132 = v115;
    sub_255EC73E4(v151, v115 + v118 + *(v160 + 9) * v117);
    (v155)(v149, v76, v74);
    v119 = sub_255EAC720(0, 1, 1, MEMORY[0x277D84F90]);
    v121 = *(v119 + 2);
    v120 = *(v119 + 3);
    v155 = (v121 + 1);
    if (v121 >= v120 >> 1)
    {
      v119 = sub_255EAC720((v120 > 1), v121 + 1, 1, v119);
    }

    v122 = v144;
    v61 = v135;
    sub_255EC74AC(v150);
    sub_255EB1E28(v170, &qword_27F815960, &qword_255ECFBC8);
    (*v137)(v176, v75);
    v123 = v165;
    (*(v165 + 8))(v166, v74);
    *(v119 + 2) = v155;
    v124 = v119 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v125 = *(v123 + 72);
    v73 = v119;
    v134(&v124[v125 * v121], v149, v74);
    sub_255ECF3C8();
  }

  while (*&v46[v122] != v182);
LABEL_56:
  sub_255EB1E28(v46, &qword_27F815B08, &qword_255ED0080);
  if (*(v73 + 2))
  {
    v126 = v156;
    sub_255EC5BE4(v73, v172, v173, v174, v175, v156);

    v43 = v160;
    v127 = (*(v160 + 6))(v126, 1, v171);
    v64 = v147;
    if (v127 == 1)
    {
      (*(v158 + 8))(v161, v159);
      (*(v64 + 8))(v139, v61);
      sub_255EB1E28(v126, &qword_27F815B60, &unk_255ED0070);
      return v132;
    }

    v48 = v152;
    sub_255EC73E4(v126, v152);
    v46 = v153;
    sub_255EC7448(v48, v153);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_62:
      v129 = v132[2];
      v128 = v132[3];
      if (v129 >= v128 >> 1)
      {
        v132 = sub_255EAC6F8((v128 > 1), v129 + 1, 1, v132);
      }

      sub_255EC74AC(v48);
      (*(v158 + 8))(v161, v159);
      (*(v64 + 8))(v139, v61);
      v130 = v132;
      v132[2] = v129 + 1;
      sub_255EC73E4(v46, v130 + ((v43[80] + 32) & ~v43[80]) + *(v43 + 9) * v129);
      return v130;
    }

LABEL_67:
    v132 = sub_255EAC6F8(0, v132[2] + 1, 1, v132);
    goto LABEL_62;
  }

  (*(v158 + 8))(v161, v159);
  (*(v147 + 8))(v139, v61);

  return v132;
}

uint64_t sub_255EC5BE4@<X0>(void (*a1)(void (**)(char *), uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v133 = a5;
  v132 = a4;
  v128 = a3;
  v153 = a1;
  v156 = a6;
  v131 = sub_255ECF078();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_255ECEFF8();
  v136 = *(v137 - 8);
  v12 = MEMORY[0x28223BE20](v137);
  v127 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v121 - v14;
  v149 = sub_255ECEF98();
  v151 = *(v149 - 8);
  v15 = MEMORY[0x28223BE20](v149);
  v150 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = &v121 - v17;
  v146 = sub_255ECEFC8();
  v140 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v139 = (&v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
  MEMORY[0x28223BE20](v138);
  v145 = &v121 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v142 = (&v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v147 = (&v121 - v24);
  MEMORY[0x28223BE20](v23);
  v152 = &v121 - v25;
  v26 = sub_255ECEE68();
  v154 = *(v26 - 8);
  v155 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v134 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v141 = &v121 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v121 - v32;
  MEMORY[0x28223BE20](v31);
  v148 = &v121 - v33;
  v34 = sub_255ECF158();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_255ECEF78();
  if (v39)
  {
    goto LABEL_27;
  }

  v40 = v38;
  v41 = sub_255ECF058();
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v40 >= *(v41 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v43 = *(v35 + 72);
  v44 = v42 + v41 + v43 * v40;
  v45 = a2;
  v46 = *(v35 + 16);
  v46(v37, v44, v34);

  v47 = sub_255ECF148();
  v48 = *(v35 + 8);
  v48(v37, v34);
  if (v47 != MEMORY[0x277D83B88])
  {
    goto LABEL_27;
  }

  v126 = v46;
  v49 = sub_255ECEF78();
  if (v50)
  {
    goto LABEL_27;
  }

  v51 = v49;
  v125 = v45;
  v52 = sub_255ECF058();
  if ((v51 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v51 >= *(v52 + 16))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    sub_255ECEFA8();
    if (*(&v159 + 1))
    {
      if (swift_dynamicCast())
      {
        v82 = v157;
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v126(v37, v42 + v52 + v51 * v43, v34);

  v53 = sub_255ECF148();
  v48(v37, v34);
  if (v53 != v155)
  {
    goto LABEL_27;
  }

  v54 = sub_255ECEF78();
  if (v55)
  {
    goto LABEL_27;
  }

  v56 = v54;
  v57 = sub_255ECF058();
  if ((v56 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v56 >= *(v57 + 16))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v126(v37, v42 + v57 + v56 * v43, v34);

  v58 = sub_255ECF148();
  v48(v37, v34);
  if (v58 != v155)
  {
LABEL_27:
    v77 = type metadata accessor for ManualVolumeChange(0);
    return (*(*(v77 - 8) + 56))(v156, 1, 1, v77);
  }

  v59 = *(v153 + 2);
  if (!v59)
  {
    v158 = 0u;
    v159 = 0u;
    v8 = v154;
    v6 = v155;
    v61 = v152;
    goto LABEL_25;
  }

  v60 = v153 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
  sub_255ECEFA8();
  v8 = v154;
  v6 = v155;
  v61 = v152;
  if (!*(&v159 + 1))
  {
LABEL_25:
    sub_255EB1E28(&v158, &qword_27F815AF8, &qword_255ECFF80);
    (*(v8 + 56))(v61, 1, 1, v6);
    goto LABEL_26;
  }

  v62 = swift_dynamicCast();
  v63 = *(v8 + 56);
  v63(v61, v62 ^ 1u, 1, v6);
  v64 = *(v8 + 48);
  if (v64(v61, 1, v6) == 1)
  {
LABEL_26:
    sub_255EB1E28(v61, &qword_27F815960, &qword_255ECFBC8);
    goto LABEL_27;
  }

  v126 = v64;
  v65 = *(v8 + 32);
  v9 = v148;
  v152 = (v8 + 32);
  v153 = v63;
  v124 = v65;
  v65(v148, v61, v6);
  v66 = &v60[*(v151 + 72) * (v59 - 1)];
  sub_255ECEFA8();
  if (!*(&v159 + 1))
  {
    sub_255EB1E28(&v158, &qword_27F815AF8, &qword_255ECFF80);
    v67 = v147;
    v153(v147, 1, 1, v6);
    goto LABEL_29;
  }

  v67 = v147;
  v68 = swift_dynamicCast();
  v153(v67, v68 ^ 1u, 1, v6);
  if (v126(v67, 1, v6) == 1)
  {
LABEL_29:
    sub_255EB1E28(v67, &qword_27F815960, &qword_255ECFBC8);
    v79 = type metadata accessor for ManualVolumeChange(0);
    (*(*(v79 - 8) + 56))(v156, 1, 1, v79);
    return (*(v8 + 8))(v9, v6);
  }

  v123 = "lastUserVolChangeType";
  v7 = v143;
  v124(v143, v67, v6);
  sub_255ECEFA8();
  if (!*(&v159 + 1))
  {
LABEL_32:
    sub_255EB1E28(&v158, &qword_27F815AF8, &qword_255ECFF80);
LABEL_33:
    v80 = type metadata accessor for ManualVolumeChange(0);
    (*(*(v80 - 8) + 56))(v156, 1, 1, v80);
    v81 = *(v8 + 8);
    v81(v7, v6);
    return (v81)(v9, v6);
  }

  if ((swift_dynamicCast() & 1) == 0 || v157 < 0)
  {
    goto LABEL_33;
  }

  v121 = v66;
  v122 = v157;
  if (!v157)
  {
    goto LABEL_36;
  }

  v69 = v139;
  sub_255ECEFD8();
  v70 = v140;
  v72 = v145;
  v71 = v146;
  v140[2](v145, v69, v146);
  v73 = *(v138 + 36);
  sub_255EC938C(&qword_27F815B10, MEMORY[0x277CE1870], MEMORY[0x277CE1880]);
  sub_255ECF398();
  (v70[1])(v69, v71);
  sub_255ECF3C8();
  if (*(v72 + v73) == v158)
  {
LABEL_23:
    v74 = &qword_27F815B08;
    v75 = &qword_255ED0080;
    v76 = v72;
LABEL_65:
    sub_255EB1E28(v76, v74, v75);
    goto LABEL_66;
  }

  v147 = (v151 + 16);
  v140 = (v151 + 32);
  v151 += 8;
  v139 = (v154 + 8);
  v138 = v122 - 1;
  while (1)
  {
    v102 = sub_255ECF3E8();
    v103 = v144;
    v104 = v149;
    (*v147)(v144);
    v102(&v158, 0);
    sub_255ECF3D8();
    (*v140)(v150, v103, v104);
    sub_255ECEFA8();
    if (!*(&v159 + 1))
    {
      goto LABEL_47;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_63;
    }

    v105 = v157;
    sub_255ECEFA8();
    if (!*(&v159 + 1))
    {
      (*v151)(v150, v149);
      sub_255EB1E28(&v158, &qword_27F815AF8, &qword_255ECFF80);
      v153(v142, 1, 1, v6);
      goto LABEL_56;
    }

    v106 = v142;
    v107 = swift_dynamicCast();
    v153(v106, v107 ^ 1u, 1, v6);
    if (v126(v106, 1, v6) == 1)
    {
      (*v151)(v150, v149);
LABEL_56:
      v72 = v145;
      sub_255EB1E28(v142, &qword_27F815960, &qword_255ECFBC8);
      goto LABEL_49;
    }

    v124(v141, v142, v6);
    sub_255ECEFA8();
    if (*(&v159 + 1))
    {
      break;
    }

    v6 = v155;
    (*v139)(v141, v155);
LABEL_47:
    (*v151)(v150, v149);
    sub_255EB1E28(&v158, &qword_27F815AF8, &qword_255ECFF80);
LABEL_48:
    v72 = v145;
LABEL_49:
    sub_255ECF3C8();
    if (*(v72 + v73) == v158)
    {
      goto LABEL_23;
    }
  }

  if ((swift_dynamicCast() & 1) == 0 || v105 != v138)
  {
    v6 = v155;
    (*v139)(v141, v155);
LABEL_63:
    (*v151)(v150, v149);
    goto LABEL_48;
  }

  v82 = v157;
  v108 = v141;
  sub_255ECEDE8();
  v110 = v109;
  v111 = v108;
  v6 = v155;
  (*v139)(v111, v155);
  (*v151)(v150, v149);
  v72 = v145;
  if (v110 >= 5.0)
  {
    goto LABEL_49;
  }

  sub_255EB1E28(v145, &qword_27F815B08, &qword_255ED0080);
LABEL_39:
  sub_255ECEFA8();
  if (!*(&v159 + 1))
  {
LABEL_64:
    v74 = &qword_27F815AF8;
    v75 = &qword_255ECFF80;
    v76 = &v158;
    goto LABEL_65;
  }

  v83 = swift_dynamicCast();
  if ((v83 & 1) == 0)
  {
LABEL_66:
    v112 = type metadata accessor for ManualVolumeChange(0);
    (*(*(v112 - 8) + 56))(v156, 1, 1, v112);
    v113 = v155;
    v114 = *(v154 + 8);
    v114(v143, v155);
    return (v114)(v148, v113);
  }

  v153 = (v157 - v82);
  if (__OFSUB__(v157, v82))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v83);
    v84 = v143;
    *(&v121 - 4) = v148;
    *(&v121 - 3) = v84;
    *(&v121 - 2) = v128;
    v85 = v135;
    sub_255ECF048();
    (*(v136 + 16))(v127, v85, v137);
    v86 = v129;
    sub_255ECF088();
    v152 = sub_255EC752C(v86, v132, v133);
    LODWORD(v151) = v87;
    (*(v130 + 8))(v86, v131);
    if (qword_27F815870 == -1)
    {
      goto LABEL_43;
    }
  }

  swift_once();
LABEL_43:
  v88 = sub_255ECF198();
  __swift_project_value_buffer(v88, qword_27F815878);
  v150 = *(v154 + 16);
  (v150)(v134, v148, v155);
  v42 = sub_255ECF178();
  v89 = sub_255ECF3F8();
  if (os_log_type_enabled(v42, v89))
  {
    v90 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v157 = v149;
    *v90 = 136315650;
    sub_255EC938C(&qword_27F815B00, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v91 = v134;
    v92 = v155;
    v93 = sub_255ECF578();
    v95 = v94;
    v96 = *(v154 + 8);
    v96(v91, v92);
    v97 = sub_255EBCAE0(v93, v95, &v157);

    *(v90 + 4) = v97;
    *(v90 + 12) = 2048;
    *(v90 + 14) = v153;
    *(v90 + 22) = 2080;
    *&v158 = v152;
    BYTE8(v158) = v151 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B68, &qword_255ED0088);
    v98 = sub_255ECF2A8();
    v100 = sub_255EBCAE0(v98, v99, &v157);

    *(v90 + 24) = v100;
    _os_log_impl(&dword_255EA2000, v42, v89, "Found manual volume change at %s. System volume changed by %ld, environmental audio exposure changed by %s.", v90, 0x20u);
    v101 = v149;
    swift_arrayDestroy();
    MEMORY[0x259C511E0](v101, -1, -1);
    MEMORY[0x259C511E0](v90, -1, -1);

    goto LABEL_70;
  }

LABEL_69:

  v96 = *(v154 + 8);
  v96(v134, v155);
LABEL_70:
  (*(v136 + 8))(v135, v137);
  v116 = v155;
  v115 = v156;
  v117 = v148;
  (v150)(v156, v148, v155);
  v118 = type metadata accessor for ManualVolumeChange(0);
  v119 = v152;
  *(v115 + *(v118 + 20)) = v153;
  v120 = v115 + *(v118 + 24);
  *v120 = v119;
  *(v120 + 8) = v151 & 1;
  (*(*(v118 - 8) + 56))(v115, 0, 1, v118);
  v96(v143, v116);
  return (v96)(v117, v116);
}

uint64_t type metadata accessor for ManualVolumeChange(uint64_t a1)
{
  result = qword_27F815BA8;
  if (!qword_27F815BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_255EC71F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815960, &qword_255ECFBC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_255ECEE68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255EB8BB8(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_255EB1E28(v8, &qword_27F815960, &qword_255ECFBC8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_255ECEDE8();
    v15 = v14;
    sub_255ECEDE8();
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    if (v15 <= a4)
    {
      v18 = 2.0;
      if (v17 > 2.0)
      {
        v18 = v17;
      }

      return v18 < v15;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_255EC73E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualVolumeChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EC7448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualVolumeChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255EC74AC(uint64_t a1)
{
  v2 = type metadata accessor for ManualVolumeChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255EC752C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v5 = sub_255ECF158();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255ECEFC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECEFD8();
  v13 = sub_255ECEFB8();
  (*(v10 + 8))(v12, v9);
  if (v13 < a2)
  {
    return 0;
  }

  v14 = sub_255ECEF78();
  if (v15)
  {
    return 0;
  }

  v16 = v14;
  result = sub_255ECF058();
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
  }

  else if (v16 < *(result + 16))
  {
    (*(v6 + 16))(v8, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v5);

    v18 = sub_255ECF148();
    (*(v6 + 8))(v8, v5);
    if (v18 != MEMORY[0x277D83B88])
    {
      return 0;
    }

    v19 = sub_255ECF0A8();
    v20 = v19;
    v21 = 0;
    v22 = *(v19 + 16);
    v23 = v19 + 32;
    v24 = a2 - a3;
    v25 = __OFSUB__(a2, a3);
    v26 = a3;
    v27 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v19 + 40;
    v29 = MEMORY[0x277D84F90];
    v30 = 0.0;
    result = MEMORY[0x277D84F90];
    while (1)
    {
      do
      {
        if (v21 == v22)
        {
LABEL_60:

          return *&v30;
        }

        v31 = *(v20 + 16);
        if (v21 <= v31)
        {
          v32 = *(v20 + 16);
        }

        else
        {
          v32 = v21;
        }

        v33 = (v28 + 16 * v21);
        v34 = v31 - v21;
        v35 = v21;
        while (1)
        {
          if (v32 == v35)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          if (v34 < a2)
          {
            goto LABEL_60;
          }

          if ((*v33 & 1) == 0)
          {
            if (v25)
            {
              goto LABEL_62;
            }

            v36 = v35 + v24;
            if (__OFADD__(v35, v24))
            {
              goto LABEL_63;
            }

            if (v36 >= v31)
            {
              goto LABEL_64;
            }

            v37 = v23 + 16 * v36;
            if (*(v37 + 8) != 1)
            {
              break;
            }
          }

          ++v35;
          v33 += 16;
          --v34;
          if (v22 == v35)
          {
            goto LABEL_60;
          }
        }

        v78 = v28;
        v79 = v27;
        v38 = *(v33 - 1);
        v76 = *v37;
        v77 = v38;
        v39 = result;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_255EAC5CC(0, *(v39 + 2) + 1, 1, v39);
        }

        v41 = v39;
        v43 = *(v39 + 2);
        v42 = *(v39 + 3);
        if (v43 >= v42 >> 1)
        {
          v41 = sub_255EAC5CC((v42 > 1), v43 + 1, 1, v39);
        }

        v44 = v77;
        *(v41 + 2) = v43 + 1;
        v77 = v41;
        v45 = v41 + 32;
        *&v41[8 * v43 + 32] = v44;
        v46 = v80;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v45;
        if ((v47 & 1) == 0)
        {
          v46 = sub_255EAC5CC(0, *(v46 + 2) + 1, 1, v46);
        }

        v28 = v78;
        v27 = v79;
        v48 = v46;
        v49 = *(v46 + 2);
        v80 = v48;
        v50 = *(v48 + 3);
        v51 = v49 + 1;
        result = v77;
        if (v49 >= v50 >> 1)
        {
          v74 = sub_255EAC5CC((v50 > 1), v49 + 1, 1, v80);
          v28 = v78;
          v27 = v79;
          v80 = v74;
          result = v77;
        }

        v52 = v76;
        v53 = v80;
        *(v80 + 2) = v51;
        v54 = (v53 + 32);
        v54[v49] = v52;
        v55 = *(result + 16);
        if (v55 > a3)
        {
          v76 = v54;
          if (!v55)
          {
            goto LABEL_67;
          }

          --v55;
          memmove(v75, (result + 40), 8 * v55);
          result = v77;
          v28 = v78;
          *(v77 + 16) = v55;
          v27 = v79;
          v51 = *(v80 + 2);
          v54 = v76;
        }

        if (v51 > a3)
        {
          if (!v51)
          {
            goto LABEL_68;
          }

          --v51;
          v56 = v80;
          memmove(v54, v80 + 40, 8 * v51);
          *(v56 + 2) = v51;
          result = v77;
          v28 = v78;
          v55 = *(v77 + 16);
          v27 = v79;
        }

        v21 = v35 + 1;
        v57 = v55 == a3;
        v29 = v80;
      }

      while (!v57 || v51 != a3);
      if (!a3)
      {
        v59 = 0.0;
        v60 = 0.0;
        goto LABEL_57;
      }

      if (a3 < 4)
      {
        break;
      }

      v61 = (result + 48);
      v59 = 0.0;
      v62 = v27;
      do
      {
        v59 = v59 + *(v61 - 2) + *(v61 - 1) + *v61 + v61[1];
        v61 += 4;
        v62 -= 4;
      }

      while (v62);
      v58 = v27;
      if (v27 != a3)
      {
        goto LABEL_48;
      }

LABEL_50:
      if (a3 < 4)
      {
        v66 = 0;
        v60 = 0.0;
LABEL_55:
        v69 = a3 - v66;
        v70 = &v80[8 * v66 + 32];
        do
        {
          v71 = *v70++;
          v60 = v60 + v71;
          --v69;
        }

        while (v69);
        goto LABEL_57;
      }

      v67 = (v80 + 48);
      v60 = 0.0;
      v68 = v27;
      do
      {
        v60 = v60 + *(v67 - 2) + *(v67 - 1) + *v67 + v67[1];
        v67 += 4;
        v68 -= 4;
      }

      while (v68);
      v66 = v27;
      if (v27 != a3)
      {
        goto LABEL_55;
      }

LABEL_57:
      v21 = v35 + 1;
      v72 = v59 / v26;
      v73 = v60 / v26;
      if (fabs(v30) < vabdd_f64(v73, v72))
      {
        v30 = v73 - v72;
      }
    }

    v58 = 0;
    v59 = 0.0;
LABEL_48:
    v63 = a3 - v58;
    v64 = (result + 8 * v58 + 32);
    do
    {
      v65 = *v64++;
      v59 = v59 + v65;
      --v63;
    }

    while (v63);
    goto LABEL_50;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void sub_255EC7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v165 = a6;
  v204 = a1;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B70, &qword_255ED0090);
  v201 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v147 - v12;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B78, &qword_255ED0098);
  MEMORY[0x28223BE20](v199);
  v198 = &v147 - v13;
  v171 = sub_255ECEFF8();
  v200 = *(v171 - 8);
  v14 = MEMORY[0x28223BE20](v171);
  v175 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v193 = &v147 - v17;
  MEMORY[0x28223BE20](v16);
  v197 = &v147 - v18;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B80, &qword_255ED00A0);
  v202 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v180 = &v147 - v19;
  v181 = sub_255ECEF98();
  v20 = *(v181 - 8);
  v21 = MEMORY[0x28223BE20](v181);
  v162 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v158 = &v147 - v24;
  MEMORY[0x28223BE20](v23);
  v177 = &v147 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B88, &qword_255ED00A8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v160 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v159 = (&v147 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v178 = &v147 - v32;
  MEMORY[0x28223BE20](v31);
  v195 = &v147 - v33;
  v205 = sub_255ECEFC8();
  v34 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B90, &qword_255ED00B0);
  MEMORY[0x28223BE20](v36 - 8);
  v164 = &v147 - v37;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B98, &qword_255ED00B8);
  v38 = MEMORY[0x28223BE20](v163);
  v161 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v147 - v40;
  v42 = sub_255ECF158();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = a3;
  v176 = a2;
  v46 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    goto LABEL_83;
  }

  if (a5 <= a4)
  {
    v47 = a4;
  }

  else
  {
    v47 = a5;
  }

  v194 = v46 + v47;
  if (__OFADD__(v46, v47))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v173 = a4;
  v172 = a5;
  v48 = sub_255ECEF78();
  v49 = v195;
  if (v50)
  {
LABEL_10:
    if (qword_27F815830 == -1)
    {
LABEL_11:
      v54 = sub_255ECF198();
      __swift_project_value_buffer(v54, qword_27F815838);
      v55 = sub_255ECF178();
      v56 = sub_255ECF408();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_255EA2000, v55, v56, "Data Frame does not contain downlinkdBA column! Returning 0.0 as manual volume change likelihood.", v57, 2u);
        MEMORY[0x259C511E0](v57, -1, -1);
      }

      return;
    }

LABEL_85:
    swift_once();
    goto LABEL_11;
  }

  v51 = v48;
  v52 = sub_255ECF058();
  if ((v51 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v51 < *(v52 + 16))
  {
    (*(v43 + 16))(v45, v52 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v51, v42);

    v53 = sub_255ECF148();
    (*(v43 + 8))(v45, v42);
    if (v53 != MEMORY[0x277D83B88])
    {
      goto LABEL_10;
    }

    v58 = v164;
    sub_255ECEFD8();
    v150 = *(v34 + 32);
    v150(v203, v58, v205);
    v59 = MEMORY[0x277CE1870];
    v60 = v41;
    v149 = sub_255EC938C(&qword_27F815BA0, MEMORY[0x277CE1870], MEMORY[0x277CE1878]);
    sub_255ECF368();
    v168 = *(v163 + 36);
    *&v41[v168] = 0;
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B08, &qword_255ED0080);
    v190 = *(v148 + 36);
    v61 = sub_255EC938C(&qword_27F815B10, v59, MEMORY[0x277CE1880]);
    v154 = 0;
    v156 = 0;
    v157 = 0;
    v189 = 0;
    v169 = (v20 + 16);
    v170 = (v20 + 32);
    v192 = (v202 + 7);
    v191 = (v202 + 6);
    v202 = (v34 + 8);
    v188 = (v20 + 8);
    v196 = (v34 + 16);
    v182 = (v201 + 8);
    v166 = (v200 + 8);
    v153 = "manualVolumeChangeFlag";
    v151 = "LighthouseAVShadowEval";
    v155 = MEMORY[0x277D84F90];
    v62 = v179;
    v63 = v180;
    v64 = v181;
    v65 = v178;
    v206 = v61;
    v152 = v34 + 32;
    v167 = v41;
LABEL_15:
    sub_255ECF3C8();
    if (*(v60 + v190) == v208)
    {
      v66 = *v192;
      (*v192)(v65, 1, 1, v62);
    }

    else
    {
      v67 = v49;
      v68 = sub_255ECF3E8();
      v69 = v177;
      (*v169)(v177);
      v68(&v208, 0);
      sub_255ECF3D8();
      v70 = *(v62 + 48);
      v71 = v189;
      *v63 = v189;
      (*v170)(&v63[v70], v69, v64);
      if (__OFADD__(v71, 1))
      {
        goto LABEL_72;
      }

      v189 = v71 + 1;
      *(v60 + v168) = v71 + 1;
      sub_255EB2860(v63, v65, &qword_27F815B80, &qword_255ED00A0);
      v66 = *v192;
      (*v192)(v65, 0, 1, v62);
      v49 = v67;
    }

    sub_255EB2860(v65, v49, &qword_27F815B88, &qword_255ED00A8);
    v72 = *v191;
    if ((*v191)(v49, 1, v62) == 1)
    {
      sub_255EB1E28(v60, &qword_27F815B98, &qword_255ED00B8);

      return;
    }

    v73 = v60;
    v74 = *v49;
    v75 = *v49 + v194;
    if (__OFADD__(*v49, v194))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
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
      goto LABEL_84;
    }

    v186 = v72;
    v200 = v74;
    v187 = v66;
    v76 = *(v62 + 48);
    v77 = v203;
    sub_255ECEFD8();
    v78 = sub_255ECEFB8();
    v201 = *v202;
    (v201)(v77, v205);
    if (v75 >= v78)
    {
      goto LABEL_38;
    }

    v79 = v200 + v176;
    if (__OFADD__(v200, v176))
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v79, 1))
    {
      goto LABEL_74;
    }

    if (v79 - 1 < v200)
    {
      goto LABEL_75;
    }

    v185 = v76;
    sub_255ECF078();
    v80 = v203;
    sub_255ECEF28();
    v81 = *v196;
    v82 = v198;
    v83 = v205;
    (*v196)(v198, v80, v205);
    sub_255ECF398();
    sub_255ECF3C8();
    (v201)(v80, v83);
    v207 = v79 - 1;
    sub_255ECF3A8();
    sub_255EB1E28(v82, &qword_27F815B78, &qword_255ED0098);
    sub_255ECEF58();
    v84 = __OFADD__(v79, v174);
    v85 = v79 + v174;
    if (v84)
    {
      goto LABEL_76;
    }

    v86 = v85 + v173;
    if (__OFADD__(v85, v173))
    {
      goto LABEL_77;
    }

    v87 = v86 - 1;
    if (__OFSUB__(v86, 1))
    {
      goto LABEL_78;
    }

    if (v87 < v85)
    {
      goto LABEL_79;
    }

    v88 = v203;
    sub_255ECEF28();
    v89 = v198;
    v90 = v205;
    v81(v198, v88, v205);
    sub_255ECF398();
    sub_255ECF3C8();
    (v201)(v88, v90);
    v207 = v87;
    sub_255ECF3A8();
    sub_255EB1E28(v89, &qword_27F815B78, &qword_255ED0098);
    sub_255ECEF58();
    v91 = v85 + v172;
    if (__OFADD__(v85, v172))
    {
      goto LABEL_80;
    }

    v92 = v91 - 1;
    if (__OFSUB__(v91, 1))
    {
      goto LABEL_81;
    }

    if (v92 < v85)
    {
      goto LABEL_82;
    }

    v93 = v203;
    sub_255ECEF28();
    v94 = v198;
    v95 = v205;
    v81(v198, v93, v205);
    sub_255ECF398();
    sub_255ECF3C8();
    (v201)(v93, v95);
    v207 = v92;
    sub_255ECF3A8();
    sub_255EB1E28(v94, &qword_27F815B78, &qword_255ED0098);
    v96 = v175;
    v97 = v193;
    sub_255ECEF58();
    v98 = v183;
    sub_255ECF008();
    sub_255EC42D4();
    v99 = v184;
    v100 = sub_255ECF0E8();
    v102 = v101;
    v103 = *v182;
    (*v182)(v98, v99);
    v73 = v167;
    if (v102)
    {
      goto LABEL_37;
    }

    v104 = v183;
    sub_255ECF008();
    v105 = v184;
    v106 = sub_255ECF0E8();
    v108 = v107;
    v103(v104, v105);
    if ((v108 & 1) != 0 || vabdd_f64(*&v106, *&v100) < a7)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v200, v157))
    {
      goto LABEL_88;
    }

    if (v200 - v157 < v165)
    {
LABEL_37:
      v109 = *v166;
      v110 = v171;
      (*v166)(v96, v171);
      v109(v97, v110);
      v109(v197, v110);
      v62 = v179;
      v63 = v180;
      v64 = v181;
      v65 = v178;
      v76 = v185;
LABEL_38:
      v111 = &v195[v76];
      v49 = v195;
      (*v188)(v111, v64);
      goto LABEL_39;
    }

    if (__OFADD__(v156, 1))
    {
      goto LABEL_89;
    }

    ++v156;
    sub_255ECEF78();
    v49 = v195;
    v112 = v185;
    if (v113)
    {
      v114 = *v166;
      v115 = v171;
      (*v166)(v175, v171);
      v114(v97, v115);
      v114(v197, v115);
      v64 = v181;
      (*v188)(v49 + v112, v181);
      v62 = v179;
      goto LABEL_43;
    }

    v116 = v164;
    sub_255ECEFE8();
    v150(v203, v116, v205);
    v117 = v161;
    sub_255ECF368();
    v147 = 0;
    v118 = 0;
    v157 = *(v163 + 36);
    *(v117 + v157) = 0;
    v119 = *(v148 + 36);
    v62 = v179;
    v201 = v119;
    while (1)
    {
      while (1)
      {
        sub_255ECF3C8();
        if (*&v119[v117] == v208)
        {
          v120 = v160;
          v187(v160, 1, 1, v62);
        }

        else
        {
          v121 = v117;
          v122 = sub_255ECF3E8();
          v123 = v158;
          v124 = v181;
          (*v169)(v158);
          v122(&v208, 0);
          sub_255ECF3D8();
          v125 = *(v62 + 48);
          v126 = v180;
          *v180 = v118;
          (*v170)(&v126[v125], v123, v124);
          v84 = __OFADD__(v118++, 1);
          if (v84)
          {
            goto LABEL_90;
          }

          *(v121 + v157) = v118;
          v127 = v126;
          v120 = v160;
          sub_255EB2860(v127, v160, &qword_27F815B80, &qword_255ED00A0);
          v187(v120, 0, 1, v62);
          v117 = v121;
          v73 = v167;
          v112 = v185;
        }

        v128 = v193;
        v129 = v120;
        v130 = v159;
        sub_255EB2860(v129, v159, &qword_27F815B88, &qword_255ED00A8);
        if (v186(v130, 1, v62) == 1)
        {
          sub_255EB1E28(v117, &qword_27F815B98, &qword_255ED00B8);
          v145 = *v166;
          v146 = v171;
          (*v166)(v175, v171);
          v145(v128, v146);
          v145(v197, v146);
          v84 = __OFADD__(v154, v147);
          v154 += v147;
          if (v84)
          {
            goto LABEL_91;
          }

          v49 = v195;
          v64 = v181;
          (*v188)(&v195[v112], v181);
          v157 = v200;
LABEL_43:
          v63 = v180;
          v65 = v178;
LABEL_39:
          v60 = v73;
          goto LABEL_15;
        }

        v131 = *v130;
        v132 = v130 + *(v62 + 48);
        v133 = v162;
        v134 = v181;
        (*v170)(v162, v132, v181);
        sub_255ECEFA8();
        if (v209)
        {
          break;
        }

        (*v188)(v133, v134);
        sub_255EB1E28(&v208, &qword_27F815AF8, &qword_255ECFF80);
        v117 = v161;
        v119 = v201;
      }

      v135 = swift_dynamicCast();
      v119 = v201;
      if ((v135 & 1) == 0)
      {
        break;
      }

      v136 = v207;
      v137 = v162;
      sub_255ECEFA8();
      if (v209)
      {
        if ((swift_dynamicCast() & 1) == 0 || v136 != 1 || v207 != 1)
        {
          break;
        }

        v138 = *(v155 + 2);
        v139 = v138;
        v140 = 32;
        while (v139)
        {
          v141 = *&v155[v140];
          v140 += 8;
          --v139;
          if (v141 == v131)
          {
            goto LABEL_60;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_255EAC748(0, v138 + 1, 1, v155);
        }

        v143 = *(v155 + 2);
        v142 = *(v155 + 3);
        if (v143 >= v142 >> 1)
        {
          v155 = sub_255EAC748((v142 > 1), v143 + 1, 1, v155);
        }

        (*v188)();
        v144 = v155;
        *(v155 + 2) = v143 + 1;
        *&v144[8 * v143 + 32] = v131;
        v147 = 1;
      }

      else
      {
        (*v188)(v137, v181);
        sub_255EB1E28(&v208, &qword_27F815AF8, &qword_255ECFF80);
      }

LABEL_61:
      v117 = v161;
    }

LABEL_60:
    (*v188)(v162, v181);
    goto LABEL_61;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t sub_255EC938C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255EC93E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255ECEE68();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255EC9468(uint64_t a1, uint64_t a2)
{
  v4 = sub_255ECEE68();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_255EC94D8(uint64_t a1)
{
  sub_255ECEE68();
  if (v1 <= 0x3F)
  {
    sub_255EC9564();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255EC9564()
{
  if (!qword_27F815BB8)
  {
    v0 = sub_255ECF438();
    if (!v1)
    {
      atomic_store(v0, &qword_27F815BB8);
    }
  }
}

uint64_t sub_255EC9600()
{
  if (*v0)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_255EC9638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_255ECF588() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255ECF588();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255EC9734(uint64_t a1)
{
  v2 = sub_255ECC218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255EC9770(uint64_t a1)
{
  v2 = sub_255ECC218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255EC97AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D20, &unk_255ED0830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECC218();
  sub_255ECF618();
  v13 = 0;
  sub_255ECF558();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B18, &qword_255ED0008);
    sub_255ECC26C(&qword_27F815D30, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_255ECF568();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_255EC9974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C68, &qword_255ED0470);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECBB70();
  sub_255ECF618();
  v13 = 0;
  sub_255ECF558();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C78, &qword_255ED0478);
    sub_255ECBBC4();
    sub_255ECF568();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_255EC9B18(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255ECF618();
  LOBYTE(v16) = 0;
  v13 = v15[1];
  sub_255ECF558();
  if (!v13)
  {
    v16 = *(v7 + 16);
    v17 = *(v7 + 32);
    v18 = 1;
    sub_255ECBC48();
    sub_255ECF568();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_255EC9CF0()
{
  if (*v0)
  {
    return 0x737265746C6966;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_255EC9D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000255ED1310 == a2 || (sub_255ECF588() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_255ECF588();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_255EC9E18(uint64_t a1)
{
  v2 = sub_255ECBB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255EC9E54(uint64_t a1)
{
  v2 = sub_255ECBB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255EC9EBC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_255EC9F10()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_255EC9F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000255ED1330 == a2 || (sub_255ECF588() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000255ED1350 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_255ECF588();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_255ECA030(uint64_t a1)
{
  v2 = sub_255ECBC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255ECA06C(uint64_t a1)
{
  v2 = sub_255ECBC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255ECA130()
{
  v1 = *v0;
  sub_255ECF5C8();
  MEMORY[0x259C50D60](v1);
  return sub_255ECF5F8();
}

uint64_t sub_255ECA178(uint64_t a1)
{
  v2 = *v1;
  sub_255ECF5C8();
  MEMORY[0x259C50D60](v2);
  return sub_255ECF5F8();
}

uint64_t sub_255ECA1BC()
{
  if (*v0)
  {
    return 0x6E6F6974636E7566;
  }

  else
  {
    return 0x614E63697274656DLL;
  }
}

uint64_t sub_255ECA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E63697274656DLL && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_255ECF588() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255ECF588();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255ECA2E0(uint64_t a1)
{
  v2 = sub_255ECBCF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255ECA31C(uint64_t a1)
{
  v2 = sub_255ECBCF0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_255ECA39C@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_255ECB834(a1, a2, a3, a4, v10);
  if (!v6)
  {
    result = *v10;
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    *(a6 + 32) = v11;
  }

  return result;
}

unint64_t sub_255ECA438()
{
  v1 = 0x7461676572676761;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_255ECA4A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255ECBA44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255ECA4D4(uint64_t a1)
{
  v2 = sub_255ECA7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255ECA510(uint64_t a1)
{
  v2 = sub_255ECA7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EvaluationJobDescription.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BC0, &qword_255ED00E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECA7BC();

  sub_255ECF618();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BD0, &qword_255ED00E8);
  sub_255ECA810();
  sub_255ECF568();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BE8, &qword_255ED00F0);
    sub_255ECA8E8();
    sub_255ECF568();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C00, &qword_255ED00F8);
    sub_255ECA9C0();
    sub_255ECF568();
  }

  return (*(v5 + 8))(v7, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_255ECA7BC()
{
  result = qword_27F815BC8;
  if (!qword_27F815BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BC8);
  }

  return result;
}

unint64_t sub_255ECA810()
{
  result = qword_27F815BD8;
  if (!qword_27F815BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BD0, &qword_255ED00E8);
    sub_255ECA894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BD8);
  }

  return result;
}

unint64_t sub_255ECA894()
{
  result = qword_27F815BE0;
  if (!qword_27F815BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BE0);
  }

  return result;
}

unint64_t sub_255ECA8E8()
{
  result = qword_27F815BF0;
  if (!qword_27F815BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BE8, &qword_255ED00F0);
    sub_255ECA96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BF0);
  }

  return result;
}

unint64_t sub_255ECA96C()
{
  result = qword_27F815BF8;
  if (!qword_27F815BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815BF8);
  }

  return result;
}

unint64_t sub_255ECA9C0()
{
  result = qword_27F815C08;
  if (!qword_27F815C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C00, &qword_255ED00F8);
    sub_255ECAA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C08);
  }

  return result;
}

unint64_t sub_255ECAA44()
{
  result = qword_27F815C10;
  if (!qword_27F815C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C10);
  }

  return result;
}

uint64_t EvaluationJobDescription.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C18, &qword_255ED0100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECA7BC();
  sub_255ECF608();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BD0, &qword_255ED00E8);
  v14 = 0;
  sub_255ECAD70();
  sub_255ECF548();
  v9 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815BE8, &qword_255ED00F0);
  v14 = 1;
  sub_255ECAE48();
  sub_255ECF548();
  v13 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C00, &qword_255ED00F8);
  v14 = 2;
  sub_255ECAF20();
  sub_255ECF548();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *a2 = v9;
  a2[1] = v11;
  a2[2] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_255ECAD70()
{
  result = qword_27F815C20;
  if (!qword_27F815C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BD0, &qword_255ED00E8);
    sub_255ECADF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C20);
  }

  return result;
}

unint64_t sub_255ECADF4()
{
  result = qword_27F815C28;
  if (!qword_27F815C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C28);
  }

  return result;
}

unint64_t sub_255ECAE48()
{
  result = qword_27F815C30;
  if (!qword_27F815C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815BE8, &qword_255ED00F0);
    sub_255ECAECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C30);
  }

  return result;
}

unint64_t sub_255ECAECC()
{
  result = qword_27F815C38;
  if (!qword_27F815C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C38);
  }

  return result;
}

unint64_t sub_255ECAF20()
{
  result = qword_27F815C40;
  if (!qword_27F815C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C00, &qword_255ED00F8);
    sub_255ECAFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C40);
  }

  return result;
}

unint64_t sub_255ECAFA4()
{
  result = qword_27F815C48;
  if (!qword_27F815C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C48);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_255ECB03C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255ECB084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255ECB100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255ECB148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvaluationJobDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EvaluationJobDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255ECB304()
{
  result = qword_27F815C50;
  if (!qword_27F815C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C50);
  }

  return result;
}

unint64_t sub_255ECB35C()
{
  result = qword_27F815C58;
  if (!qword_27F815C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C58);
  }

  return result;
}

unint64_t sub_255ECB3B4()
{
  result = qword_27F815C60;
  if (!qword_27F815C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C60);
  }

  return result;
}

uint64_t sub_255ECB408(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D38, &qword_255ED0840);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECC218();
  sub_255ECF608();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_255ECF538();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B18, &qword_255ED0008);
    v9[15] = 1;
    sub_255ECC26C(&qword_27F815D40, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_255ECF548();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_255ECB630(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815CB0, &qword_255ED0490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255ECBB70();
  sub_255ECF608();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_255ECF538();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815C78, &qword_255ED0478);
    v9[15] = 1;
    sub_255ECBD44();
    sub_255ECF548();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_255ECB834@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v21 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  *&v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255ECF608();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v20;
  v13 = v21;
  LOBYTE(v22) = 0;
  v14 = sub_255ECF538();
  v16 = v15;
  v17 = v14;
  v24 = 1;
  sub_255ECBDC8();
  sub_255ECF548();
  (*(v12 + 8))(v11, v9);
  v18 = v22;
  v20 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *v13 = v17;
  *(v13 + 8) = v16;
  *(v13 + 16) = v18;
  *(v13 + 24) = v20;
  return result;
}

uint64_t sub_255ECBA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000255ED12D0 == a2 || (sub_255ECF588() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255ED12F0 == a2 || (sub_255ECF588() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB0000000073726FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_255ECF588();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_255ECBB70()
{
  result = qword_27F815C70;
  if (!qword_27F815C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C70);
  }

  return result;
}

unint64_t sub_255ECBBC4()
{
  result = qword_27F815C80;
  if (!qword_27F815C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C78, &qword_255ED0478);
    sub_255ECBC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C80);
  }

  return result;
}

unint64_t sub_255ECBC48()
{
  result = qword_27F815C88;
  if (!qword_27F815C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C88);
  }

  return result;
}

unint64_t sub_255ECBC9C()
{
  result = qword_27F815C98;
  if (!qword_27F815C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815C98);
  }

  return result;
}

unint64_t sub_255ECBCF0()
{
  result = qword_27F815CA8;
  if (!qword_27F815CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CA8);
  }

  return result;
}

unint64_t sub_255ECBD44()
{
  result = qword_27F815CB8;
  if (!qword_27F815CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815C78, &qword_255ED0478);
    sub_255ECBDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CB8);
  }

  return result;
}

unint64_t sub_255ECBDC8()
{
  result = qword_27F815CC0;
  if (!qword_27F815CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CC0);
  }

  return result;
}

uint64_t sub_255ECBE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255ECBEB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255ECBF04()
{
  result = qword_27F815CD8;
  if (!qword_27F815CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CD8);
  }

  return result;
}

unint64_t sub_255ECBF5C()
{
  result = qword_27F815CE0;
  if (!qword_27F815CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CE0);
  }

  return result;
}

unint64_t sub_255ECBFB4()
{
  result = qword_27F815CE8;
  if (!qword_27F815CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CE8);
  }

  return result;
}

unint64_t sub_255ECC00C()
{
  result = qword_27F815CF0;
  if (!qword_27F815CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CF0);
  }

  return result;
}

unint64_t sub_255ECC064()
{
  result = qword_27F815CF8;
  if (!qword_27F815CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815CF8);
  }

  return result;
}

unint64_t sub_255ECC0BC()
{
  result = qword_27F815D00;
  if (!qword_27F815D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D00);
  }

  return result;
}

unint64_t sub_255ECC114()
{
  result = qword_27F815D08;
  if (!qword_27F815D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D08);
  }

  return result;
}

unint64_t sub_255ECC16C()
{
  result = qword_27F815D10;
  if (!qword_27F815D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D10);
  }

  return result;
}

unint64_t sub_255ECC1C4()
{
  result = qword_27F815D18;
  if (!qword_27F815D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D18);
  }

  return result;
}

unint64_t sub_255ECC218()
{
  result = qword_27F815D28;
  if (!qword_27F815D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D28);
  }

  return result;
}

uint64_t sub_255ECC26C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815B18, &qword_255ED0008);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255ECC2D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_255ECC368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255ECC42C()
{
  result = qword_27F815D48;
  if (!qword_27F815D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D48);
  }

  return result;
}

unint64_t sub_255ECC484()
{
  result = qword_27F815D50;
  if (!qword_27F815D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D50);
  }

  return result;
}

unint64_t sub_255ECC4DC()
{
  result = qword_27F815D58;
  if (!qword_27F815D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815D58);
  }

  return result;
}

char *EvaluationJobRunner.__allocating_init(dataFrame:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  *(v2 + 2) = MEMORY[0x277D84F98];
  *(v2 + 3) = v3;
  *(v2 + 4) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v5 = sub_255ECF078();
  (*(*(v5 - 8) + 32))(&v2[v4], a1, v5);
  return v2;
}

char *EvaluationJobRunner.init(dataFrame:)(uint64_t a1)
{
  v3 = MEMORY[0x277D84F98];
  *(v1 + 2) = MEMORY[0x277D84F98];
  *(v1 + 3) = v3;
  *(v1 + 4) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v5 = sub_255ECF078();
  (*(*(v5 - 8) + 32))(&v1[v4], a1, v5);
  return v1;
}

uint64_t sub_255ECC684(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815B28, &qword_255ED0960);
  MEMORY[0x28223BE20](v4 - 8);
  isUniquelyReferenced_nonNull_native = &v100 - v5;
  v109 = type metadata accessor for EventSet(0);
  v104 = *(v109 - 8);
  v7 = MEMORY[0x28223BE20](v109);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = &v100 - v9;
  v116 = type metadata accessor for DataSlice(0);
  v112 = *(v116 - 8);
  v10 = MEMORY[0x28223BE20](v116);
  v122 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = (&v100 - v12);
  v13 = sub_255ECF078();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v100 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = a1[1];
  v119 = *a1;
  v118 = v20;
  v101 = a1[2];
  v102 = v21;
  v22 = *(v21 + 16);
  v117 = &v100 - v23;
  v114 = v21 + 16;
  v113 = v22;
  v22();
  if (qword_27F815850 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v110 = isUniquelyReferenced_nonNull_native;
    v24 = sub_255ECF198();
    v103 = __swift_project_value_buffer(v24, qword_27F815858);
    v25 = sub_255ECF178();
    isUniquelyReferenced_nonNull_native = sub_255ECF3F8();
    if (os_log_type_enabled(v25, isUniquelyReferenced_nonNull_native))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_255EA2000, v25, isUniquelyReferenced_nonNull_native, "Running data sample filters.", v26, 2u);
      MEMORY[0x259C511E0](v26, -1, -1);
    }

    v27 = *(v119 + 16);
    v125 = v2;
    v111 = v27;
    if (!v27)
    {
LABEL_25:
      v59 = sub_255ECF178();
      isUniquelyReferenced_nonNull_native = sub_255ECF3F8();
      if (os_log_type_enabled(v59, isUniquelyReferenced_nonNull_native))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_255EA2000, v59, isUniquelyReferenced_nonNull_native, "Running volume change event detectors.", v60, 2u);
        MEMORY[0x259C511E0](v60, -1, -1);
      }

      v126 = *(v118 + 16);
      if (v126)
      {
        swift_beginAccess();
        v61 = 0;
        v124 = (v104 + 48);
        v62 = (v118 + 64);
        while (1)
        {
          if (v61 >= *(v118 + 16))
          {
            goto LABEL_66;
          }

          v19 = *(v62 - 4);
          v63 = *(v62 - 3);
          v64 = *(v62 - 2);
          isUniquelyReferenced_nonNull_native = *(v62 - 1);
          v65 = *v62;
          v129[0] = v19;
          v129[1] = v63;
          v129[2] = v64;
          v129[3] = isUniquelyReferenced_nonNull_native;
          v129[4] = v65;
          v16 = v2[2];
          swift_bridgeObjectRetain_n();

          v66 = v110;
          sub_255EB8CCC(v129, v16, v110);

          if ((*v124)(v66, 1, v109) != 1)
          {
            break;
          }

          sub_255EB1E28(v66, &qword_27F815B28, &qword_255ED0960);
LABEL_30:
          ++v61;
          v62 += 5;
          if (v126 == v61)
          {
            goto LABEL_44;
          }
        }

        v67 = v107;
        sub_255ECDA74(v66, v107, type metadata accessor for EventSet);
        swift_beginAccess();
        sub_255ECDADC(v67, v108);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v2[3];
        v68 = v127;
        v2[3] = 0x8000000000000000;
        v69 = sub_255EACAD4(v19, v63);
        v71 = *(v68 + 16);
        v72 = (v70 & 1) == 0;
        v57 = __OFADD__(v71, v72);
        v73 = v71 + v72;
        if (v57)
        {
          goto LABEL_71;
        }

        v16 = v70;
        if (*(v68 + 24) >= v73)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = v69;
            sub_255EAD8EC();
            v69 = v76;
            if (v16)
            {
              goto LABEL_39;
            }

            goto LABEL_41;
          }
        }

        else
        {
          sub_255EAD25C(v73, isUniquelyReferenced_nonNull_native);
          v69 = sub_255EACAD4(v19, v63);
          if ((v16 & 1) != (v74 & 1))
          {
            goto LABEL_75;
          }
        }

        if (v16)
        {
LABEL_39:
          v75 = v69;

          isUniquelyReferenced_nonNull_native = v127;
          sub_255ECDB40(v108, *(v127 + 56) + *(v104 + 72) * v75, type metadata accessor for EventSet);
LABEL_43:
          v2 = v125;
          v125[3] = isUniquelyReferenced_nonNull_native;

          swift_endAccess();
          sub_255ECDC18(v107, type metadata accessor for EventSet);
          goto LABEL_30;
        }

LABEL_41:
        isUniquelyReferenced_nonNull_native = v127;
        *(v127 + 8 * (v69 >> 6) + 64) |= 1 << v69;
        v77 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v69);
        *v77 = v19;
        v77[1] = v63;
        sub_255ECDA74(v108, *(isUniquelyReferenced_nonNull_native + 56) + *(v104 + 72) * v69, type metadata accessor for EventSet);
        v78 = *(isUniquelyReferenced_nonNull_native + 16);
        v57 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v57)
        {
          goto LABEL_73;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v79;
        goto LABEL_43;
      }

LABEL_44:
      v80 = sub_255ECF178();
      v81 = sub_255ECF3F8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_255EA2000, v80, v81, "Running data aggregators.", v82, 2u);
        MEMORY[0x259C511E0](v82, -1, -1);
      }

      v83 = v101;
      v16 = *(v101 + 16);
      if (!v16)
      {
LABEL_63:
        (*(v102 + 8))(v117, v13);
        swift_beginAccess();
      }

      swift_beginAccess();
      swift_beginAccess();
      v19 = v83 + 8;
      while (1)
      {
        isa = v19[-3].isa;
        v85 = v19[-2].isa;
        v86 = v19[-1].isa;
        v87.isa = v19->isa;
        v128[0] = v19[-4].isa;
        v128[1] = isa;
        v128[2] = v85;
        v128[3] = v86;
        v128[4] = v87.isa;
        v88 = v2[2];
        v89 = v125[3];

        v90 = sub_255EC2018(v128, v88, v89);

        v2 = v125;

        swift_beginAccess();
        v91 = *(v90 + 16);
        v92 = v2[4];
        isUniquelyReferenced_nonNull_native = v92[2];
        v93 = isUniquelyReferenced_nonNull_native + v91;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, v91))
        {
          goto LABEL_67;
        }

        v94 = swift_isUniquelyReferenced_nonNull_native();
        if (v94 && v93 <= v92[3] >> 1)
        {
          if (!*(v90 + 16))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (isUniquelyReferenced_nonNull_native <= v93)
          {
            v95 = isUniquelyReferenced_nonNull_native + v91;
          }

          else
          {
            v95 = isUniquelyReferenced_nonNull_native;
          }

          v92 = sub_255EAC84C(v94, v95, 1, v92);
          if (!*(v90 + 16))
          {
LABEL_48:

            if (v91)
            {
              goto LABEL_68;
            }

            goto LABEL_49;
          }
        }

        isUniquelyReferenced_nonNull_native = v92[2];
        v96 = (v92[3] >> 1) - isUniquelyReferenced_nonNull_native;
        type metadata accessor for Metric(0);
        if (v96 < v91)
        {
          goto LABEL_69;
        }

        swift_arrayInitWithCopy();

        if (v91)
        {
          v97 = v92[2];
          v57 = __OFADD__(v97, v91);
          v98 = v97 + v91;
          if (v57)
          {
            goto LABEL_72;
          }

          v92[2] = v98;
        }

LABEL_49:
        v2[4] = v92;
        swift_endAccess();
        v19 += 5;
        if (!--v16)
        {
          goto LABEL_63;
        }
      }
    }

    v28 = 0;
    v106 = v119 + 32;
    v29 = (v102 + 8);
    v30 = (v102 + 32);
    v105 = (v102 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v121 = v13;
LABEL_8:
    if (v28 < *(v119 + 16))
    {
      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v31 = v2;
  v120 = v28;
  v32 = v106 + 24 * v28;
  v33 = *(v32 + 8);
  v124 = *v32;
  v34 = *(v32 + 16);
  (v113)(v19, v117, v13);
  v35 = *(v34 + 16);
  v126 = v33;
  v123 = v34;
  if (v35)
  {
    swift_bridgeObjectRetain_n();

    v36 = (v34 + 48);
    do
    {
      v37 = *(v36 - 2);
      v38 = *(v36 - 1);
      v39 = *v36;
      v36 += 3;

      sub_255EB35C8(v37, v38, v39, v19, v16);

      (*v29)(v19, v13);
      v40 = *v30;
      (*v30)(v19, v16, v13);
      --v35;
    }

    while (v35);
    v2 = v125;
    v41 = v126;
  }

  else
  {
    v40 = *v30;
    swift_bridgeObjectRetain_n();

    v41 = v33;
    v2 = v31;
  }

  v42 = v115;
  v13 = v124;
  *v115 = v124;
  *(v42 + 8) = v41;
  v43 = v116;
  v40(v42 + *(v116 + 20), v19, v121);
  v44 = (v42 + *(v43 + 24));
  *v44 = v13;
  v44[1] = v41;
  v44[2] = v123;
  swift_beginAccess();
  sub_255ECDA74(v42, v122, type metadata accessor for DataSlice);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128[0] = v2[2];
  v45 = v128[0];
  v2[2] = 0x8000000000000000;
  v47 = sub_255EACAD4(v13, v41);
  v48 = *(v45 + 16);
  v49 = (v46 & 1) == 0;
  v50 = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    goto LABEL_65;
  }

  v51 = v46;
  if (*(v45 + 24) >= v50)
  {
    v13 = v121;
    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v128[0];
      if (v46)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_255EAD928();
      isUniquelyReferenced_nonNull_native = v128[0];
      if (v51)
      {
LABEL_6:
        sub_255ECDB40(v122, *(isUniquelyReferenced_nonNull_native + 56) + *(v112 + 72) * v47, type metadata accessor for DataSlice);
        goto LABEL_7;
      }
    }

LABEL_21:
    *(isUniquelyReferenced_nonNull_native + 8 * (v47 >> 6) + 64) |= 1 << v47;
    v54 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v47);
    v55 = v126;
    *v54 = v124;
    v54[1] = v55;
    sub_255ECDA74(v122, *(isUniquelyReferenced_nonNull_native + 56) + *(v112 + 72) * v47, type metadata accessor for DataSlice);
    v56 = *(isUniquelyReferenced_nonNull_native + 16);
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_70;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v58;

LABEL_7:
    v28 = v120 + 1;
    v2[2] = isUniquelyReferenced_nonNull_native;

    swift_endAccess();

    if (v28 == v111)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  sub_255EAD298(v50, isUniquelyReferenced_nonNull_native);
  v52 = sub_255EACAD4(v124, v126);
  v13 = v121;
  if ((v51 & 1) == (v53 & 1))
  {
    v47 = v52;
    isUniquelyReferenced_nonNull_native = v128[0];
    if (v51)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_75:
  result = sub_255ECF598();
  __break(1u);
  return result;
}

char *EvaluationJobRunner.deinit()
{

  v1 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v2 = sub_255ECF078();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EvaluationJobRunner.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12LighthouseAV19EvaluationJobRunner_fullDataFrame;
  v2 = sub_255ECF078();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t Metric.metricName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Metric.controllerVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Metric.originDataSlice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Metric(0) + 28);

  return sub_255ECDBA8(v3, a1);
}

Swift::Int __swiftcall Metric.samplesUsed()()
{
  v1 = type metadata accessor for EventSet(0);
  v21[0] = *(v1 - 8);
  v21[1] = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255ECEFC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = type metadata accessor for DataSlice(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Metric(0);
  sub_255ECDBA8(v0 + *(v15 + 28), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_255EB1E28(v10, &qword_27F815D60, &qword_255ED0968);
    v16 = *(v0 + *(v15 + 32));
    if (!v16 || !*(v16 + 16))
    {
      return 0;
    }

    sub_255ECDADC(v16 + ((*(v21[0] + 80) + 32) & ~*(v21[0] + 80)), v3);
    sub_255ECEFD8();
    v17 = sub_255ECEFB8();
    (*(v5 + 8))(v7, v4);
    v18 = type metadata accessor for EventSet;
    v19 = v3;
  }

  else
  {
    sub_255ECDA74(v10, v14, type metadata accessor for DataSlice);
    sub_255ECEFD8();
    v17 = sub_255ECEFB8();
    (*(v5 + 8))(v7, v4);
    v18 = type metadata accessor for DataSlice;
    v19 = v14;
  }

  sub_255ECDC18(v19, v18);
  return v17;
}

uint64_t sub_255ECDA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255ECDADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255ECDB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_255ECDBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255ECDC18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255ECDCA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255ECDCD8(uint64_t a1)
{
  result = sub_255ECF078();
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

uint64_t sub_255ECDDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_255ECF078();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255ECDEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_255ECF078();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255ECDF44(uint64_t a1)
{
  result = sub_255ECF078();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255ECDFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255ECE0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F815D60, &qword_255ED0968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_255ECE15C(uint64_t a1)
{
  sub_255ECE200(319);
  if (v1 <= 0x3F)
  {
    sub_255ECE258(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255ECE200(uint64_t a1)
{
  if (!qword_27F815D98)
  {
    type metadata accessor for DataSlice(255);
    v1 = sub_255ECF438();
    if (!v2)
    {
      atomic_store(v1, &qword_27F815D98);
    }
  }
}

void sub_255ECE258(uint64_t a1)
{
  if (!qword_27F815DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F815DA8, &qword_255ED09E0);
    v1 = sub_255ECF438();
    if (!v2)
    {
      atomic_store(v1, &qword_27F815DA0);
    }
  }
}

uint64_t sub_255ECE2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_255ECF078();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DataSlice(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255ECE408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_255ECF078();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DataSlice(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255ECE52C(uint64_t a1)
{
  result = sub_255ECF078();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DataSlice(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static EvaluationJobHelpers.evaluationJobFromJson(path:)@<X0>(uint64_t x8_0@<X8>)
{
  v4 = sub_255ECF298();
  MEMORY[0x28223BE20](v4 - 8);
  sub_255ECF288();
  sub_255ECF258();
  static EvaluationJobHelpers.evaluationJobFromJson(jsonString:)(x8_0);
}

uint64_t static EvaluationJobHelpers.evaluationJobFromJson(jsonString:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_255ECF298();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255ECF288();
  v8 = sub_255ECF278();
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_255ECEB78();
    swift_allocObject();
    sub_255ECEB68();
    sub_255ECE9BC();
    sub_255ECEB58();

    result = sub_255ECEA10(v8, v10);
    v12 = v15;
    *a3 = v14;
    *(a3 + 16) = v12;
  }

  return result;
}

unint64_t sub_255ECE9BC()
{
  result = qword_27F815DC8;
  if (!qword_27F815DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F815DC8);
  }

  return result;
}

uint64_t sub_255ECEA10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255ECEA24(a1, a2);
  }

  return a1;
}

uint64_t sub_255ECEA24(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for EvaluationJobHelpers(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EvaluationJobHelpers(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}