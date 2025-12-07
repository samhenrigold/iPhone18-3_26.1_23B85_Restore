uint64_t sub_24F337A98(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_24F337F80;
  }

  else
  {
    *(v4 + 116) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_24F337BC4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24F337BC4()
{
  v21 = v0;
  v1 = *(v0 + 116);

  if (v1 == 1)
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E8F8);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "The player needs a new nickname.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    sub_24F927358();
    v6 = *(v0 + 24);
    swift_getKeyPath();
    *(v0 + 32) = v6;
    sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
    sub_24F91FD88();

    v7 = *(v6 + 48);

    if (v7[2])
    {
      v8 = v7[4];
      v9 = v7[5];
      swift_bridgeObjectRetain_n();

      v10 = sub_24F9220B8();
      v11 = sub_24F92BD98();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_24E7620D4(v8, v9, &v20);
        _os_log_impl(&dword_24E5DD000, v10, v11, "Received nickname suggestions: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x2530542D0](v13, -1, -1);
        MEMORY[0x2530542D0](v12, -1, -1);
      }

      sub_24F927358();
      sub_24F549384(v8, v9);

      sub_24F3394EC();
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E8F8);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "The player may have changed the nickname. Skipping auto-assigning a new nickname.", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24F337F80()
{

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get the player default nickname state: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24E5DD000, v12, v13, "The player may have changed the nickname. Skipping auto-assigning a new nickname.", v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24F3381F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v129 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F798, &qword_24F9E6C88);
  MEMORY[0x28223BE20](v116);
  v117 = &v114 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7A0, &qword_24F9E6C90);
  v125 = *(v4 - 8);
  v126 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v114 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7A8, &qword_24F9E6C98);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v133 = &v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7B0, &qword_24F9E6CA0);
  MEMORY[0x28223BE20](v12);
  v14 = &v114 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7B8, &qword_24F9E6CA8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v114 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7C0, &qword_24F9E6CB0);
  MEMORY[0x28223BE20](v131);
  v132 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v114 - v20;
  MEMORY[0x28223BE20](v22);
  v134 = &v114 - v23;
  v135 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7C8, &qword_24F9E6CB8);
  sub_24E602068(&qword_27F23F7D0, &qword_27F23F7C8, &qword_24F9E6CB8, MEMORY[0x277CE14C0]);
  sub_24F923BA8();
  v24 = sub_24F9257F8();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7D8, &qword_24F9E6CC0) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7E0, &qword_24F9E6CC8) + 36)];
  v35 = v158;
  *v34 = v157;
  *(v34 + 1) = v35;
  *(v34 + 2) = v159;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7E8, &qword_24F9E6CD0) + 36)] = 256;
  v115 = objc_opt_self();
  v36 = [v115 secondarySystemBackgroundColor];
  v37 = sub_24F926BF8();
  v38 = sub_24F925808();
  v39 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F7F0, &qword_24F9E6CD8) + 36)];
  *v39 = v37;
  v39[8] = v38;
  v40 = &v14[*(v12 + 36)];
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_24F924B38();
  (*(*(v42 - 8) + 104))(v40, v41, v42);
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)] = 256;
  sub_24F33B3E8();
  sub_24F9262F8();
  sub_24E601704(v14, &qword_27F23F7B0, &qword_24F9E6CA0);
  v43 = sub_24F925828();
  type metadata accessor for NicknameSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  sub_24F927358();
  v44 = v143;
  swift_getKeyPath();
  *&v143 = v44;
  sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F91FD88();

  v45 = *(v44 + 80);

  if (v45)
  {
  }

  sub_24F923318();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24E6009C8(v17, v21, &qword_27F23F7B8, &qword_24F9E6CA8);
  v54 = &v21[*(v131 + 36)];
  *v54 = v43;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_24E6009C8(v21, v134, &qword_27F23F7C0, &qword_24F9E6CB0);
  v124 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  v130 = v160;
  v131 = v162;
  v122 = v165;
  v123 = v164;
  v120 = v161;
  v121 = v163;
  LOBYTE(v143) = v161;
  LOBYTE(v136) = v163;
  sub_24F927358();
  v55 = v143;
  swift_getKeyPath();
  *&v143 = v55;
  sub_24F91FD88();

  v57 = *(v55 + 72);
  v56 = *(v55 + 80);

  if (v56)
  {
    *&v143 = v57;
    *(&v143 + 1) = v56;
    sub_24E600AEC();
    v58 = sub_24F925E18();
    v60 = v59;
    v62 = v61;
    v63 = [v115 systemRedColor];
    *&v143 = sub_24F926BF8();
    v64 = sub_24F925C58();
    v66 = v65;
    v68 = v67;
    sub_24E600B40(v58, v60, v62 & 1);

    sub_24F925A08();
    v69 = sub_24F925C98();
    v71 = v70;
    v73 = v72;
    v75 = v74;

    sub_24E600B40(v64, v66, v68 & 1);

    LOBYTE(v58) = sub_24F9257F8();
    sub_24F923318();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v73 & 1;
    LOBYTE(v143) = v73 & 1;
    LOBYTE(v136) = 0;
    v85 = sub_24F925868();
    sub_24F923318();
    LOBYTE(v150) = 0;
    *&v136 = v69;
    *(&v136 + 1) = v71;
    LOBYTE(v137) = v84;
    *(&v137 + 1) = v75;
    LOBYTE(v138) = v58;
    *(&v138 + 1) = v77;
    *&v139 = v79;
    *(&v139 + 1) = v81;
    *&v140 = v83;
    BYTE8(v140) = 0;
    LOBYTE(v141) = v85;
    *(&v141 + 1) = v86;
    *&v142[0] = v87;
    *(&v142[0] + 1) = v88;
    *&v142[1] = v89;
    BYTE8(v142[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F840, &qword_24F9E6CF8);
    sub_24F33B7B4();
    v90 = v117;
    sub_24F9262F8();
    v147 = v140;
    v148 = v141;
    v149[0] = v142[0];
    *(v149 + 9) = *(v142 + 9);
    v143 = v136;
    v144 = v137;
    v145 = v138;
    v146 = v139;
    sub_24E601704(&v143, &qword_27F23F840, &qword_24F9E6CF8);
    *(v90 + *(v116 + 36)) = 256;
    sub_24F927628();
    sub_24F9242E8();
    v91 = v119;
    sub_24E6009C8(v90, v119, &qword_27F23F798, &qword_24F9E6C88);
    v92 = v126;
    v93 = (v91 + *(v126 + 36));
    v94 = v141;
    v93[4] = v140;
    v93[5] = v94;
    v93[6] = v142[0];
    v95 = v137;
    *v93 = v136;
    v93[1] = v95;
    v96 = v139;
    v93[2] = v138;
    v93[3] = v96;
    v97 = v91;
    v98 = v118;
    sub_24E6009C8(v97, v118, &qword_27F23F7A0, &qword_24F9E6C90);
    v99 = v98;
    v100 = v133;
    sub_24E6009C8(v99, v133, &qword_27F23F7A0, &qword_24F9E6C90);
    (*(v125 + 56))(v100, 0, 1, v92);
  }

  else
  {
    v100 = v133;
    (*(v125 + 56))(v133, 1, 1, v126);
  }

  v129 = 0x800000024FA589F0;
  v101 = v132;
  sub_24E60169C(v134, v132, &qword_27F23F7C0, &qword_24F9E6CB0);
  v102 = v127;
  sub_24E60169C(v100, v127, &qword_27F23F7A8, &qword_24F9E6C98);
  v103 = v128;
  sub_24E60169C(v101, v128, &qword_27F23F7C0, &qword_24F9E6CB0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F830, &qword_24F9E6CE8);
  v105 = v103 + *(v104 + 48);
  v106 = v123;
  v107 = v124;
  *&v150 = v124;
  *(&v150 + 1) = v130;
  v109 = v120;
  v108 = v121;
  LOBYTE(v151) = v120;
  *(&v151 + 1) = *v156;
  DWORD1(v151) = *&v156[3];
  *(&v151 + 1) = v131;
  LOBYTE(v152) = v121;
  *(&v152 + 1) = *v155;
  DWORD1(v152) = *&v155[3];
  *(&v152 + 1) = v123;
  v110 = v122;
  *&v153 = v122;
  *(&v153 + 1) = 0xD000000000000020;
  v154 = v129;
  *(v105 + 64) = v129;
  v111 = v151;
  *v105 = v150;
  *(v105 + 16) = v111;
  v112 = v153;
  *(v105 + 32) = v152;
  *(v105 + 48) = v112;
  sub_24E60169C(v102, v103 + *(v104 + 64), &qword_27F23F7A8, &qword_24F9E6C98);
  sub_24E60169C(&v150, &v143, &qword_27F23F838, &qword_24F9E6CF0);
  sub_24E601704(v133, &qword_27F23F7A8, &qword_24F9E6C98);
  sub_24E601704(v134, &qword_27F23F7C0, &qword_24F9E6CB0);
  sub_24E601704(v102, &qword_27F23F7A8, &qword_24F9E6C98);
  *&v143 = v107;
  *(&v143 + 1) = v130;
  LOBYTE(v144) = v109;
  *(&v144 + 1) = *v156;
  DWORD1(v144) = *&v156[3];
  *(&v144 + 1) = v131;
  LOBYTE(v145) = v108;
  *(&v145 + 1) = *v155;
  DWORD1(v145) = *&v155[3];
  *(&v145 + 1) = v106;
  *&v146 = v110;
  *(&v146 + 1) = 0xD000000000000020;
  *&v147 = v129;
  sub_24E601704(&v143, &qword_27F23F838, &qword_24F9E6CF0);
  return sub_24E601704(v132, &qword_27F23F7C0, &qword_24F9E6CB0);
}

uint64_t sub_24F338E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F850, &qword_24F9E6D00);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v7;
  v8 = type metadata accessor for NicknameSection(0);
  v9 = v8 - 8;
  v54 = *(v8 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F858, &qword_24F9E6D08);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F860, &qword_24F9E6D10);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  sub_24F927358();
  v25 = *(v9 + 36);
  v55 = a1;
  v53 = *(a1 + v25);
  sub_24F33AF90(a1, v11, type metadata accessor for NicknameSection);
  v26 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v27 = swift_allocObject();
  sub_24F33AC48(v11, v27 + v26);
  type metadata accessor for NicknameModel(0);
  sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F927378();
  v28 = type metadata accessor for NicknameTextField(0);
  v15[*(v28 + 20)] = v53;
  v29 = &v15[*(v28 + 24)];
  *v29 = sub_24F33B840;
  v29[1] = v27;
  v30 = v56;
  v31 = [objc_opt_self() secondarySystemBackgroundColor];
  v32 = sub_24F926BF8();
  v33 = sub_24F925808();
  v34 = &v15[*(v13 + 44)];
  *v34 = v32;
  v34[8] = v33;
  sub_24F927638();
  v35 = 1;
  sub_24F9242E8();
  v36 = v15;
  v37 = v57;
  sub_24E6009C8(v36, v21, &qword_27F23F858, &qword_24F9E6D08);
  v38 = &v21[*(v17 + 44)];
  v39 = v70;
  *(v38 + 4) = v69;
  *(v38 + 5) = v39;
  *(v38 + 6) = v71;
  v40 = v66;
  *v38 = v65;
  *(v38 + 1) = v40;
  v41 = v68;
  *(v38 + 2) = v67;
  *(v38 + 3) = v41;
  sub_24E6009C8(v21, v24, &qword_27F23F860, &qword_24F9E6D10);
  v42 = v55 + *(v9 + 40);
  v43 = *v42;
  v44 = *(v42 + 8);
  v63 = v43;
  v64 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v45 = v59;
  if (v62 == 1)
  {
    v46 = v52;
    sub_24F923798();
    (*(v45 + 32))(v30, v46, v37);
    v35 = 0;
  }

  (*(v45 + 56))(v30, v35, 1, v37);
  v47 = v58;
  sub_24E60169C(v24, v58, &qword_27F23F860, &qword_24F9E6D10);
  v48 = v60;
  sub_24E60169C(v30, v60, &qword_27F23F850, &qword_24F9E6D00);
  v49 = v61;
  sub_24E60169C(v47, v61, &qword_27F23F860, &qword_24F9E6D10);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F868, &qword_24F9E6D18);
  sub_24E60169C(v48, v49 + *(v50 + 48), &qword_27F23F850, &qword_24F9E6D00);
  sub_24E601704(v30, &qword_27F23F850, &qword_24F9E6D00);
  sub_24E601704(v24, &qword_27F23F860, &qword_24F9E6D10);
  sub_24E601704(v48, &qword_27F23F850, &qword_24F9E6D00);
  return sub_24E601704(v47, &qword_27F23F860, &qword_24F9E6D10);
}

uint64_t sub_24F3394EC()
{
  v1 = v0;
  v57 = sub_24F921B58();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for NicknameSection(0);
  v63 = *(v3 - 8);
  v62 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24F928AD8();
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928B08();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = type metadata accessor for SetNicknameAction(0);
  MEMORY[0x28223BE20](v15);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  sub_24F927358();
  v17 = v74;
  swift_getKeyPath();
  *&v74 = v17;
  sub_24F33B9F4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
  sub_24F91FD88();

  v18 = *(v17 + 56);
  v19 = *(v17 + 64);

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  v20 = v14;
  v21 = v66;
  (*(v12 + 8))(v20, v11);
  v22 = v67;
  v58 = v74;
  v23 = v75;
  v24 = v76;
  v53 = v15;
  v25 = v59;
  sub_24F928A98();
  *v25 = v18;
  *(v25 + 8) = v19;
  *(v25 + 16) = v58;
  *(v25 + 32) = v23;
  *(v25 + 40) = v24;
  *(v25 + 48) = 0;
  sub_24F928A98();
  sub_24F928AF8();
  sub_24F928A98();
  v26 = v1;
  v27 = v1;
  v28 = v61;
  sub_24F33AF90(v27, v61, type metadata accessor for NicknameSection);
  v29 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v30 = swift_allocObject();
  sub_24F33AC48(v28, v30 + v29);
  sub_24F928AF8();
  sub_24F7695C8(&v74);
  if (v76)
  {
    v62 = v76;
    v63 = v77;
    v61 = __swift_project_boxed_opaque_existential_1(&v74, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24F9479A0;
    *(v31 + 56) = v53;
    *(v31 + 64) = sub_24F33B9F4(&qword_27F216390, type metadata accessor for SetNicknameAction, &unk_24F994310);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
    sub_24F33AF90(v25, boxed_opaque_existential_1, type metadata accessor for SetNicknameAction);
    v33 = MEMORY[0x277D21CB8];
    v34 = v65;
    *(v31 + 96) = v65;
    *(v31 + 104) = v33;
    v35 = __swift_allocate_boxed_opaque_existential_1((v31 + 72));
    v36 = v64;
    v37 = *(v64 + 16);
    v37(v35, v21, v34);
    *(v31 + 136) = v34;
    *(v31 + 144) = v33;
    v38 = __swift_allocate_boxed_opaque_existential_1((v31 + 112));
    v37(v38, v22, v34);
    v39 = *(v54 + 32);
    v52 = v26;
    v40 = (v26 + v39);
    v41 = *v40;
    v42 = *(v40 + 1);
    v68 = v41;
    v69 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F58();
    v44 = v70[0];
    v43 = v70[1];
    v45 = v71;
    v72 = type metadata accessor for ProgressPerformAction(0);
    v73 = sub_24F33B9F4(&qword_27F2162F0, type metadata accessor for ProgressPerformAction, &unk_24F975958);
    v46 = __swift_allocate_boxed_opaque_existential_1(v70);
    sub_24F928A98();
    *v46 = v31;
    v46[1] = v44;
    v46[2] = v43;
    *(v46 + 24) = v45;
    v46[5] = 0;
    v46[6] = 0;
    v46[4] = 0;
    v47 = v55;
    sub_24F76973C(v55);
    sub_24F9218A8();
    (*(v56 + 8))(v47, v57);
    v48 = *(v36 + 8);
    v48(v67, v34);
    v48(v66, v34);
    sub_24F33B28C(v25, type metadata accessor for SetNicknameAction);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    v50 = v65;
    v51 = *(v64 + 8);
    v51(v22, v65);
    v51(v21, v50);
    sub_24F33B28C(v25, type metadata accessor for SetNicknameAction);
    return sub_24E601704(&v74, &unk_27F212740, &unk_24F940730);
  }
}

uint64_t sub_24F339CE4@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0x656D616E6B63694ELL;
  v2._object = 0xEE006C6562614C2ELL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  sub_24F925938();
  v9 = sub_24F925B78();
  v11 = v10;
  v13 = v12;
  sub_24E600B40(v4, v6, v8 & 1);

  sub_24F9251C8();
  v14 = sub_24F925C58();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24E600B40(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

double sub_24F339E34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_24F92B858();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_24F92B7F8();
  v4 = sub_24F92B7E8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_24EA99ECC(0, 0, v2, &unk_24F9E6C48, v5);

  return result;
}

uint64_t sub_24F339F50(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_24F92B7F8();
  *(v1 + 24) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F339FE8, v3, v2);
}

uint64_t sub_24F339FE8()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

double sub_24F33A0A0(uint64_t a1)
{
  v2 = type metadata accessor for NicknameSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F33AF90(a1, v5, type metadata accessor for NicknameSection);
  sub_24F92B7F8();
  v10 = sub_24F92B7E8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24F33AC48(v5, v12 + v11);
  sub_24EA998B8(0, 0, v8, &unk_24F9E6C10, v12);

  return result;
}

uint64_t sub_24F33A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = type metadata accessor for NicknameSection(0);
  v4[10] = swift_task_alloc();
  v5 = sub_24F92CA08();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_24F92B7F8();
  v4[14] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v4[15] = v7;
  v4[16] = v6;

  return MEMORY[0x2822009F8](sub_24F33A398, v7, v6);
}

uint64_t sub_24F33A398()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_24F33A47C;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24F33A47C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_24F33BA3C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_24F33A610;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24F33A610()
{
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  sub_24F927358();
  v0[19] = *(v0[5] + 40);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_24F33A6E8;

  return sub_24F553070();
}

uint64_t sub_24F33A6E8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24F33BA48;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_24F33A82C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F33A82C()
{
  v18 = v0;

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8F8);
  sub_24F33AF90(v2, v1, type metadata accessor for NicknameSection);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_24F927358();
    v9 = *(v0[6] + 40);

    swift_getKeyPath();
    v0[7] = v9;
    sub_24F33B9F4(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    sub_24F33B28C(v6, type metadata accessor for NicknameSection);
    v10 = (v9 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = sub_24E7620D4(v12, v11, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LocalPlayerProvider reloaded with a new nickname: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
    v14 = v0[10];

    sub_24F33B28C(v14, type metadata accessor for NicknameSection);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F33AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24F337180();
  sub_24F33AF90(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NicknameSection);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24F33AC48(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F778, &qword_24F9E6B80) + 36));
  sub_24F923AD8();
  result = sub_24F92B818();
  *v8 = &unk_24F9E6B78;
  v8[1] = v7;
  return result;
}

uint64_t sub_24F33AC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NicknameSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F33ACAC()
{
  v2 = *(type metadata accessor for NicknameSection(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E6541E4;

  return sub_24F337440(v0 + v3);
}

uint64_t objectdestroyTm_64()
{
  v1 = type metadata accessor for NicknameSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + v2));
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F33AF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F33AFF8()
{
  v1 = type metadata accessor for NicknameSection(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + v2));
    }
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F758, &unk_24F9EF1C0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F33B19C(uint64_t a1)
{
  v4 = *(type metadata accessor for NicknameSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F33A274(a1, v6, v7, v1 + v5);
}

uint64_t sub_24F33B28C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F33B2F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F33B32C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E6541E4;

  return sub_24F339F50(a1);
}

unint64_t sub_24F33B3E8()
{
  result = qword_27F23F7F8;
  if (!qword_27F23F7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7B0, &qword_24F9E6CA0);
    sub_24F33B4A0();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0, &qword_24F951970, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F7F8);
  }

  return result;
}

unint64_t sub_24F33B4A0()
{
  result = qword_27F23F800;
  if (!qword_27F23F800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7F0, &qword_24F9E6CD8);
    sub_24F33B558();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F800);
  }

  return result;
}

unint64_t sub_24F33B558()
{
  result = qword_27F23F808;
  if (!qword_27F23F808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7E8, &qword_24F9E6CD0);
    sub_24F33B5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F808);
  }

  return result;
}

unint64_t sub_24F33B5E4()
{
  result = qword_27F23F810;
  if (!qword_27F23F810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7E0, &qword_24F9E6CC8);
    sub_24F33B670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F810);
  }

  return result;
}

unint64_t sub_24F33B670()
{
  result = qword_27F23F818;
  if (!qword_27F23F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F7D8, &qword_24F9E6CC0);
    sub_24F33B6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F818);
  }

  return result;
}

unint64_t sub_24F33B6FC()
{
  result = qword_27F23F820;
  if (!qword_27F23F820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F828, &qword_24F9E6CE0);
    sub_24E602068(&qword_27F23F7D0, &qword_27F23F7C8, &qword_24F9E6CB8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F820);
  }

  return result;
}

unint64_t sub_24F33B7B4()
{
  result = qword_27F23F848;
  if (!qword_27F23F848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F840, &qword_24F9E6CF8);
    sub_24E6AF8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F848);
  }

  return result;
}

unint64_t sub_24F33B8A0()
{
  result = qword_27F23F870;
  if (!qword_27F23F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F778, &qword_24F9E6B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F780, &qword_24F9E6C50);
    sub_24E602068(&qword_27F23F790, &qword_27F23F780, &qword_24F9E6C50, MEMORY[0x277CE1198]);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    sub_24F33B9F4(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F870);
  }

  return result;
}

uint64_t sub_24F33B9F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OverlayNowPlayingPageIntent.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OverlayNowPlayingPageIntent.localizedGameName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OverlayNowPlayingPageIntent.gameIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OverlayNowPlayingPageIntent(0) + 24);
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OverlayNowPlayingPageIntent(uint64_t a1)
{
  result = qword_27F23F898;
  if (!qword_27F23F898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlayNowPlayingPageIntent.player.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OverlayNowPlayingPageIntent(0) + 28);

  return sub_24E6364A0(v3, a1);
}

uint64_t OverlayNowPlayingPageIntent.cachedNowPlayingData.getter()
{
  v1 = *(v0 + *(type metadata accessor for OverlayNowPlayingPageIntent(0) + 36));

  return v1;
}

uint64_t OverlayNowPlayingPageIntent.commonOnboardingStatus.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for OverlayNowPlayingPageIntent(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t OverlayNowPlayingPageIntent.init(_:localizedGameName:gameIcon:for:using:commonOnboardingStatus:isGamesAppInstalled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10, char a11)
{
  v14 = *a10;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v15 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  v16 = v15[6];
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a9[v16], a5, v17);
  sub_24E6364A0(a6, &a9[v15[7]]);
  v26 = &_s14descr2861AC041O5GamesON;
  v19 = sub_24EDA569C();
  v27 = v19;
  LOBYTE(v25[0]) = 0;
  v20 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v25);
  a9[v15[8]] = v20 & 1;
  v21 = &a9[v15[9]];
  *v21 = a7;
  *(v21 + 1) = a8;
  *&a9[v15[10]] = v14;
  a9[v15[11]] = a11;
  v26 = &_s14descr2861AC041O5GamesON;
  v27 = v19;
  LOBYTE(v25[0]) = 4;
  LOBYTE(v14) = sub_24F91FE68();
  sub_24E637048(a6);
  (*(v18 + 8))(a5, v17);
  result = __swift_destroy_boxed_opaque_existential_1(v25);
  a9[v15[12]] = v14 & 1;
  return result;
}

unint64_t OverlayNowPlayingPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F95AD70;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 72) = v5;
  v6 = MEMORY[0x277D22580];
  v7 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10);
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x800000024FA73CC0;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v6;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 0x6E6F6349656D6167;
  *(inited + 152) = 0xE800000000000000;
  v10 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  v11 = v10[6];
  v12 = sub_24F9289E8();
  *(inited + 184) = v12;
  *(inited + 192) = sub_24F33CE3C(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, &v1[v11], v12);
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v14 = v10[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 248) = sub_24E7EDBB4();
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E6364A0(&v1[v14], v15);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v16 = v1[v10[8]];
  v17 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v17;
  *(inited + 272) = v16;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x800000024FA73CE0;
  v18 = &v1[v10[9]];
  v19 = *v18;
  v20 = *(v18 + 1);
  *(inited + 352) = v5;
  *(inited + 360) = v7;
  *(inited + 328) = v19;
  *(inited + 336) = v20;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x800000024FA55B30;
  v21 = *&v1[v10[10]];
  *(inited + 408) = &type metadata for CommonOnboardingStatus;
  v22 = sub_24EBB9898();
  *(inited + 384) = v21;
  *(inited + 416) = v22;
  *(inited + 424) = 0xD000000000000013;
  *(inited + 432) = 0x800000024FA73D00;
  LOBYTE(v3) = v1[v10[11]];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  v23 = sub_24E7594F8(&qword_27F23F878, &qword_27F2383C8, &unk_24F9C4EF0);
  *(inited + 440) = v3;
  *(inited + 472) = v23;
  *(inited + 480) = 0xD00000000000001CLL;
  *(inited + 488) = 0x800000024FA73D20;
  v24 = v1[v10[12]];
  *(inited + 520) = MEMORY[0x277D839B0];
  *(inited + 528) = v17;
  *(inited + 496) = v24;

  v25 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v25;
  return result;
}

uint64_t sub_24F33C200(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4449656C646E7562;
    v5 = 0x6E6F6349656D6167;
    if (a1 != 2)
    {
      v5 = 0x726579616C70;
    }

    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000016;
    }

    v2 = 0xD000000000000010;
    if (a1 != 4)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F33C334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F33D3D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F33C35C(uint64_t a1)
{
  v2 = sub_24F33CDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33C398(uint64_t a1)
{
  v2 = sub_24F33CDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayNowPlayingPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F880, &qword_24F9E6D40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33CDE8();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CCA8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24F92CD08();
    v10 = type metadata accessor for OverlayNowPlayingPageIntent(0);
    LOBYTE(v12) = 2;
    sub_24F9289E8();
    sub_24F33CE3C(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    LOBYTE(v12) = 3;
    type metadata accessor for Player(0);
    sub_24F33CE3C(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    LOBYTE(v12) = 4;
    sub_24F92CD18();
    v13 = 5;
    sub_24F92CCA8();
    v12 = *(v3 + *(v10 + 40));
    v11[15] = 6;
    sub_24EBB9844();
    sub_24F92CD48();
    LOBYTE(v12) = 7;
    sub_24F92CCB8();
    LOBYTE(v12) = 8;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t OverlayNowPlayingPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_24F9289E8();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F890, &qword_24F9E6D48);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F33CDE8();
  v42 = v11;
  v16 = v44;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v17 = v8;
  v18 = v40;
  v19 = v41;
  LOBYTE(v47) = 0;
  *v14 = sub_24F92CBC8();
  v14[1] = v21;
  LOBYTE(v47) = 1;
  v14[2] = sub_24F92CC28();
  v14[3] = v22;
  LOBYTE(v47) = 2;
  sub_24F33CE3C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v37 = 0;
  sub_24F92CC68();
  v44 = 0;
  (*(v39 + 32))(v14 + v12[6], v17, v6);
  type metadata accessor for Player(0);
  LOBYTE(v47) = 3;
  sub_24F33CE3C(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v23 = v42;
  v24 = v44;
  sub_24F92CC18();
  v44 = v24;
  if (v24)
  {
    (*(v18 + 8))(v23, v19);
    v25 = 0;
LABEL_8:
    v28 = v37;
    __swift_destroy_boxed_opaque_existential_1(v43);

    if (!v28)
    {
    }

    v29 = 0;
    goto LABEL_11;
  }

  sub_24E6365D4(v5, v14 + v12[7]);
  LOBYTE(v47) = 4;
  v26 = v44;
  v27 = sub_24F92CC38();
  if (v26)
  {
    v44 = v26;
    (*(v18 + 8))(v23, v19);
    v25 = 1;
    goto LABEL_8;
  }

  *(v14 + v12[8]) = v27 & 1;
  LOBYTE(v47) = 5;
  v30 = sub_24F92CBC8();
  v29 = 1;
  v44 = 0;
  v31 = (v14 + v12[9]);
  *v31 = v30;
  v31[1] = v32;
  v46 = 6;
  sub_24EBB96D8();
  v33 = v44;
  sub_24F92CC68();
  if (!v33)
  {
    *(v14 + v12[10]) = v47;
    v45 = 7;
    *(v14 + v12[11]) = sub_24F92CBD8();
    v45 = 8;
    v34 = sub_24F92CC38();
    v44 = 0;
    v35 = v34;
    (*(v18 + 8))(v42, v41);
    *(v14 + v12[12]) = v35 & 1;
    sub_24F33CE84(v14, v38);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24F33CEE8(v14);
  }

  v44 = v33;
  (*(v18 + 8))(v23, v41);
  __swift_destroy_boxed_opaque_existential_1(v43);

  v25 = 1;
LABEL_11:
  result = (*(v39 + 8))(v14 + v12[6], v6);
  if (v25)
  {
    result = sub_24E637048(v14 + v12[7]);
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v29)
  {
    return result;
  }
}

unint64_t sub_24F33CDE8()
{
  result = qword_27F23F888;
  if (!qword_27F23F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F888);
  }

  return result;
}

uint64_t sub_24F33CE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F33CE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F33CEE8(uint64_t a1)
{
  v2 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F33CF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F33D09C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F33D1CC(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24F9289E8();
    if (v2 <= 0x3F)
    {
      sub_24E637694(319);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F33D2D4()
{
  result = qword_27F23F8A8;
  if (!qword_27F23F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8A8);
  }

  return result;
}

unint64_t sub_24F33D32C()
{
  result = qword_27F23F8B0;
  if (!qword_27F23F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8B0);
  }

  return result;
}

unint64_t sub_24F33D384()
{
  result = qword_27F23F8B8;
  if (!qword_27F23F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8B8);
  }

  return result;
}

uint64_t sub_24F33D3D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73CC0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA73CE0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA73D00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA73D20 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t TitleDisplayMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D0D8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5._countAndFlagsBits = sub_24F92CEB8();
    TitleDisplayMode.init(rawValue:)(v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

GameStoreKit::TitleDisplayMode __swiftcall TitleDisplayMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x6974616D6F747561 && rawValue._object == 0xE900000000000063;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x656772616CLL && object == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x614C656E696C6E69 && object == 0xEB00000000656772 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x656E696C6E69 && object == 0xE600000000000000)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TitleDisplayMode.navigationTitleDisplayMode.getter(uint64_t a1)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      return sub_24F9252F8();
    }

    else
    {
      return sub_24F925318();
    }
  }

  else if (*v1)
  {
    return sub_24F925308();
  }

  else
  {
    return sub_24F925328();
  }
}

uint64_t TitleDisplayMode.rawValue.getter()
{
  v1 = 0x6974616D6F747561;
  v2 = 0x614C656E696C6E69;
  if (*v0 != 2)
  {
    v2 = 0x656E696C6E69;
  }

  if (*v0)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F33D9AC()
{
  result = qword_27F23F8C0;
  if (!qword_27F23F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8C0);
  }

  return result;
}

uint64_t sub_24F33DA00()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F33DAC8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F33DB7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F33DC40@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = TitleDisplayMode.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

void sub_24F33DC80(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = 0xEB00000000656772;
  v5 = 0x614C656E696C6E69;
  if (*v1 != 2)
  {
    v5 = 0x656E696C6E69;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x656772616CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24F33DD7C()
{
  result = qword_27F23F8C8;
  if (!qword_27F23F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8C8);
  }

  return result;
}

uint64_t sub_24F33DDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F33DE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsOverlayAction(uint64_t a1)
{
  result = qword_27F23F8D0;
  if (!qword_27F23F8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F33DF20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F8E0, &qword_24F9E7158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GSKDebugMetricsOverlayAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33E380();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F33E3D4(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F33E18C(uint64_t a1)
{
  v2 = sub_24F33E380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33E1C8(uint64_t a1)
{
  v2 = sub_24F33E380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33E21C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F8F0, &qword_24F9E7160);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33E380();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F33E380()
{
  result = qword_27F23F8E8;
  if (!qword_27F23F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8E8);
  }

  return result;
}

uint64_t sub_24F33E3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsOverlayAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F33E44C()
{
  result = qword_27F23F8F8;
  if (!qword_27F23F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F8F8);
  }

  return result;
}

unint64_t sub_24F33E4A4()
{
  result = qword_27F23F900;
  if (!qword_27F23F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F900);
  }

  return result;
}

unint64_t sub_24F33E4FC()
{
  result = qword_27F23F908;
  if (!qword_27F23F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F908);
  }

  return result;
}

uint64_t sub_24F33E560(void *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F928, &qword_24F9E7370);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33EA9C();
  sub_24F92D128();
  v9[15] = 0;
  sub_24F33EB44();
  sub_24F92CD48();
  if (!v2)
  {
    v9[14] = 1;
    sub_24F92CD28();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F33E6F4()
{
  if (*v0)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_24F33E728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F33E804(uint64_t a1)
{
  v2 = sub_24F33EA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33E840(uint64_t a1)
{
  v2 = sub_24F33EA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24F33E89C(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_24F33E8E4(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

double sub_24F33E8E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F910, &qword_24F9E7368);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F33EA9C();
  sub_24F92D108();
  v11 = 0;
  sub_24F33EAF0();
  sub_24F92CC68();
  v10 = 1;
  sub_24F92CC48();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F33EA9C()
{
  result = qword_27F23F918;
  if (!qword_27F23F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F918);
  }

  return result;
}

unint64_t sub_24F33EAF0()
{
  result = qword_27F23F920;
  if (!qword_27F23F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F920);
  }

  return result;
}

unint64_t sub_24F33EB44()
{
  result = qword_27F23F930;
  if (!qword_27F23F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F930);
  }

  return result;
}

unint64_t sub_24F33EBAC()
{
  result = qword_27F23F938;
  if (!qword_27F23F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F938);
  }

  return result;
}

unint64_t sub_24F33EC04()
{
  result = qword_27F23F940;
  if (!qword_27F23F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F940);
  }

  return result;
}

unint64_t sub_24F33EC5C()
{
  result = qword_27F23F948;
  if (!qword_27F23F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F948);
  }

  return result;
}

double Page.shelves.getter()
{
  type metadata accessor for Page(0);

  return result;
}

double Page.topLeadingShelves.getter()
{
  type metadata accessor for Page(0);

  return result;
}

double Page.bottomLeadingShelves.getter()
{
  type metadata accessor for Page(0);

  return result;
}

double Page.topTrailingShelves.getter()
{
  type metadata accessor for Page(0);

  return result;
}

double Page.bottomTrailingShelves.getter()
{
  type metadata accessor for Page(0);

  return result;
}

uint64_t sub_24F33EDD4(void *a1, uint64_t a2, int a3)
{
  v35 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD08, &qword_24F9E8550);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD10, &qword_24F9E8558);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD18, &qword_24F9E8560);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD20, &qword_24F9E8568);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD28, &qword_24F9E8570);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34BA5C();
  sub_24F92D128();
  if (!v34)
  {
    v38 = 2;
    sub_24F34BB04();
    sub_24F92CC98();
    v21 = v30;
    sub_24F92CD28();
    (*(v29 + 8))(v8, v21);
    return (*(v16 + 8))(v18, v15);
  }

  if (v34 == 1)
  {
    v39 = 3;
    sub_24F34BAB0();
    v19 = v31;
    sub_24F92CC98();
    v20 = v33;
    sub_24F92CD28();
    (*(v32 + 8))(v19, v20);
    return (*(v16 + 8))(v18, v15);
  }

  v23 = (v16 + 8);
  if (v35)
  {
    v37 = 1;
    sub_24F34BB58();
    sub_24F92CC98();
    (*(v27 + 8))(v11, v28);
  }

  else
  {
    v36 = 0;
    sub_24F34BBAC();
    sub_24F92CC98();
    (*(v25 + 8))(v14, v26);
  }

  return (*v23)(v18, v15);
}

uint64_t sub_24F33F28C()
{
  v1 = 0x65526F546C6C7570;
  v2 = 0x7261657070416E6FLL;
  if (*v0 != 2)
  {
    v2 = 0x726765726F466E6FLL;
  }

  if (*v0)
  {
    v1 = 0x7266655264656566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F33F324@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F34ABE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F33F34C(uint64_t a1)
{
  v2 = sub_24F34BA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F388(uint64_t a1)
{
  v2 = sub_24F34BA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F3C4(uint64_t a1)
{
  v2 = sub_24F34BB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F400(uint64_t a1)
{
  v2 = sub_24F34BB58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F464(uint64_t a1)
{
  v2 = sub_24F34BB04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F4A0(uint64_t a1)
{
  v2 = sub_24F34BB04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4968736572666572 && a2 == 0xEF6C61767265746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F33F56C(uint64_t a1)
{
  v2 = sub_24F34BAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F5A8(uint64_t a1)
{
  v2 = sub_24F34BAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F5E4(uint64_t a1)
{
  v2 = sub_24F34BBAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F33F620(uint64_t a1)
{
  v2 = sub_24F34BBAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F33F65C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24F34A10C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

BOOL sub_24F33F6AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2 == 0.0)
  {
    if (v4 != 2 || *&v3 != 0)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 1)
  {
    return 0;
  }

  return 1;
}

uint64_t Page.Background.MaterialBackground.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24F33F784()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F33F7E8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F33F834@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

unint64_t Page.Background.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v127 = a2;
  v114 = a1;
  v3 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GSKVideo(0);
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v120 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v124 = &v112 - v15;
  v16 = sub_24F922348();
  v115 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v113 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v112 - v22;
  v23 = sub_24F9289E8();
  v125 = *(v23 - 8);
  *&v126 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v121 = &v112 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v112 - v29;
  v31 = type metadata accessor for Page.Background(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F340D54(v2, v33, type metadata accessor for Page.Background);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v45 = v123;
      sub_24F347CE4(v33, v123, type metadata accessor for JSColor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F950, &qword_24F9E7490);
      inited = swift_initStackObject();
      v126 = xmmword_24F93DE60;
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0x47646570756F7267;
      *(inited + 40) = 0xEF746E6569646172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F958, &unk_24F9E7498);
      v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132B0, &qword_24F93AA80) - 8);
      v73 = (*(*v72 + 80) + 32) & ~*(*v72 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = v126;
      v75 = (v74 + v73);
      v76 = v72[14];
      *v75 = 0x726F6C6F63;
      v75[1] = 0xE500000000000000;
      sub_24F340D54(v45, v75 + v76, type metadata accessor for JSColor);
      v77 = sub_24E61145C(v74);
      swift_setDeallocating();
      sub_24E601704(v75, &qword_27F2132B0, &qword_24F93AA80);
      swift_deallocClassInstance();
      *(inited + 48) = v77;
      v53 = sub_24E611644(inited);
      swift_setDeallocating();
      v54 = inited + 32;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
        v87 = v127;
        v127[3] = v86;
        result = sub_24F340CD8();
        v87[4] = result;
        *v87 = &unk_2861C2158;
        return result;
      }

      v45 = v123;
      sub_24F347CE4(v33, v123, type metadata accessor for JSColor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F950, &qword_24F9E7490);
      v46 = swift_initStackObject();
      v126 = xmmword_24F93DE60;
      *(v46 + 16) = xmmword_24F93DE60;
      *(v46 + 32) = 0xD000000000000016;
      *(v46 + 40) = 0x800000024FA48750;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F958, &unk_24F9E7498);
      v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132B0, &qword_24F93AA80) - 8);
      v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v126;
      v50 = (v49 + v48);
      v51 = v47[14];
      *v50 = 0x726F6C6F63;
      v50[1] = 0xE500000000000000;
      sub_24F340D54(v45, v50 + v51, type metadata accessor for JSColor);
      v52 = sub_24E61145C(v49);
      swift_setDeallocating();
      sub_24E601704(v50, &qword_27F2132B0, &qword_24F93AA80);
      swift_deallocClassInstance();
      *(v46 + 48) = v52;
      v53 = sub_24E611644(v46);
      swift_setDeallocating();
      v54 = v46 + 32;
    }

    sub_24E601704(v54, &qword_27F23F960, &qword_24F9E74A8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F968, &qword_24F9E74B0);
    v79 = v127;
    v127[3] = v78;
    v79[4] = sub_24F347C68(&qword_27F23F970, &qword_27F23F968, &qword_24F9E74B0, sub_24F347BB4);
    *v79 = v53;
    return sub_24F347D4C(v45, type metadata accessor for JSColor);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910);
      v36 = *(v35 + 48);
      LODWORD(v124) = v33[*(v35 + 64)];
      v37 = v125;
      v38 = v126;
      v39 = v121;
      (*(v125 + 32))(v121, v33, v126);
      v40 = v122;
      sub_24E6009C8(&v33[v36], v122, &qword_27F214148, &qword_24F93C520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_24F93A400;
      *(v41 + 32) = 0x6B726F77747261;
      *(v41 + 40) = 0xE700000000000000;
      *(v41 + 72) = v38;
      *(v41 + 80) = sub_24F347DAC(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 48));
      (*(v37 + 16))(boxed_opaque_existential_1, v39, v38);
      *(v41 + 88) = 0x4D746E65746E6F63;
      *(v41 + 96) = 0xEB0000000065646FLL;
      *(v41 + 128) = MEMORY[0x277CDF400];
      *(v41 + 136) = sub_24F347DF4();
      *(v41 + 104) = v124;
      v43 = sub_24E607E40(v41);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      sub_24E60169C(v40, v20, &qword_27F214148, &qword_24F93C520);
      v44 = v115;
      if ((*(v115 + 48))(v20, 1, v16) == 1)
      {
        sub_24E601704(v20, &qword_27F214148, &qword_24F93C520);
      }

      else
      {
        v88 = v113;
        (*(v44 + 32))(v113, v20, v16);
        *(&v133 + 1) = v16;
        v134 = sub_24F347DAC(&qword_27F23F9B8, MEMORY[0x277D22668], &protocol conformance descriptor for AspectRatio);
        v89 = __swift_allocate_boxed_opaque_existential_1(&v132);
        (*(v44 + 16))(v89, v88, v16);
        v129 = v132;
        v130 = v133;
        v131 = v134;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v43;
        sub_24E82115C(&v129, 0x6152746365707361, 0xEB000000006F6974, isUniquelyReferenced_nonNull_native);
        (*(v44 + 8))(v88, v16);
        v43 = v135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990, &unk_24FA0A580);
      v91 = swift_initStackObject();
      *(v91 + 16) = xmmword_24F93DE60;
      *(v91 + 32) = 0x6567616D69;
      v92 = v91 + 32;
      *(v91 + 40) = 0xE500000000000000;
      *(v91 + 48) = v43;
      v93 = sub_24E611448(v91);
      swift_setDeallocating();
      sub_24E601704(v92, &qword_27F23F998, &unk_24F9E74C0);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0, &qword_24FA0A590);
      v95 = v127;
      v127[3] = v94;
      v95[4] = sub_24F347C68(&qword_27F23F9A8, &qword_27F23F9A0, &qword_24FA0A590, sub_24E6060B8);
      *v95 = v93;
      sub_24E601704(v122, &qword_27F214148, &qword_24F93C520);
      return (*(v125 + 8))(v121, v38);
    }

    else
    {
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v81 = v124;
      sub_24E6009C8(v33, v124, &qword_27F213FB0, &qword_24F93E6B0);
      v82 = v118;
      sub_24E6009C8(&v33[v80], v118, &qword_27F213FB8, &unk_24F93C010);
      sub_24E60169C(v81, v13, &qword_27F213FB0, &qword_24F93E6B0);
      v84 = v125;
      v83 = v126;
      if ((*(v125 + 48))(v13, 1, v126) == 1)
      {
        sub_24E601704(v13, &qword_27F213FB0, &qword_24F93E6B0);
        v85 = MEMORY[0x277D84F98];
      }

      else
      {
        (*(v84 + 32))(v25, v13, v83);
        *(&v133 + 1) = v83;
        v134 = sub_24F347DAC(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
        v96 = __swift_allocate_boxed_opaque_existential_1(&v132);
        (*(v84 + 16))(v96, v25, v83);
        v129 = v132;
        v130 = v133;
        v131 = v134;
        v97 = MEMORY[0x277D84F98];
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v97;
        sub_24E82115C(&v129, 0x6B726F77747261, 0xE700000000000000, v98);
        (*(v84 + 8))(v25, v83);
        v85 = v135;
      }

      v99 = v128;
      v100 = v119;
      v101 = v120;
      sub_24E60169C(v82, v119, &qword_27F213FB8, &unk_24F93C010);
      if ((*(v116 + 48))(v100, 1, v117) == 1)
      {
        sub_24E601704(v100, &qword_27F213FB8, &unk_24F93C010);
      }

      else
      {
        sub_24F347CE4(v100, v101, type metadata accessor for GSKVideo);
        sub_24E810980(v114, &v132);
        if (v99)
        {
          sub_24F347D4C(v101, type metadata accessor for GSKVideo);
          sub_24E601704(v82, &qword_27F213FB8, &unk_24F93C010);
          sub_24E601704(v124, &qword_27F213FB0, &qword_24F93E6B0);
        }

        v102 = __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
        v103 = MEMORY[0x28223BE20](v102);
        (*(v105 + 16))(&v112 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0), v103);
        sub_24F92A138();
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v85;
        sub_24E82115C(&v129, 0x6F65646976, 0xE500000000000000, v106);
        sub_24F347D4C(v101, type metadata accessor for GSKVideo);
        v85 = v135;
        __swift_destroy_boxed_opaque_existential_1(&v132);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990, &unk_24FA0A580);
      v107 = swift_initStackObject();
      *(v107 + 16) = xmmword_24F93DE60;
      *(v107 + 32) = 0x746E657645707061;
      v108 = v107 + 32;
      *(v107 + 40) = 0xEE006C6961746544;
      *(v107 + 48) = v85;
      v109 = sub_24E611448(v107);
      swift_setDeallocating();
      sub_24E601704(v108, &qword_27F23F998, &unk_24F9E74C0);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0, &qword_24FA0A590);
      v111 = v127;
      v127[3] = v110;
      v111[4] = sub_24F347C68(&qword_27F23F9A8, &qword_27F23F9A0, &qword_24FA0A590, sub_24E6060B8);
      *v111 = v109;
      sub_24E601704(v82, &qword_27F213FB8, &unk_24F93C010);
      return sub_24E601704(v124, &qword_27F213FB0, &qword_24F93E6B0);
    }
  }

  else
  {
    v55 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C0, &qword_24F9E74D0) + 48)];
    v56 = *v55;
    v57 = v55[8];
    v59 = v125;
    v58 = v126;
    (*(v125 + 32))(v30, v33, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    v60 = swift_initStackObject();
    v124 = xmmword_24F93DE60;
    *(v60 + 16) = xmmword_24F93DE60;
    *(v60 + 32) = 0x6B726F77747261;
    *(v60 + 40) = 0xE700000000000000;
    *(v60 + 72) = v58;
    *(v60 + 80) = sub_24F347DAC(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
    v61 = __swift_allocate_boxed_opaque_existential_1((v60 + 48));
    (*(v59 + 16))(v61, v30, v58);
    v62 = sub_24E607E40(v60);
    swift_setDeallocating();
    sub_24E601704(v60 + 32, &qword_27F212FB0, &unk_24F93A440);
    if ((v57 & 1) == 0)
    {
      v63 = sub_24E65901C();
      *&v132 = v56;
      *(&v133 + 1) = MEMORY[0x277D83B88];
      v134 = v63;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v62;
      sub_24E82115C(&v132, 0x7974696C617571, 0xE700000000000000, v64);
      v62 = v129;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990, &unk_24FA0A580);
    v65 = swift_initStackObject();
    *(v65 + 16) = v124;
    *(v65 + 32) = 0x6E6172546D6F6F7ALL;
    v66 = v65 + 32;
    *(v65 + 40) = 0xEF6E6F6974616C73;
    *(v65 + 48) = v62;
    v67 = sub_24E611448(v65);
    swift_setDeallocating();
    sub_24E601704(v66, &qword_27F23F998, &unk_24F9E74C0);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0, &qword_24FA0A590);
    v69 = v127;
    v127[3] = v68;
    v69[4] = sub_24F347C68(&qword_27F23F9A8, &qword_27F23F9A0, &qword_24FA0A590, sub_24E6060B8);
    *v69 = v67;
    return (*(v59 + 8))(v30, v126);
  }
}

unint64_t sub_24F340CD8()
{
  result = qword_27F213798;
  if (!qword_27F213798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0, &qword_24F93B070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213798);
  }

  return result;
}

uint64_t sub_24F340D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F340DBC(uint64_t a1)
{
  v2 = sub_24F347F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F340DF8(uint64_t a1)
{
  v2 = sub_24F347F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F340E34(uint64_t a1)
{
  v2 = sub_24F347E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F340E70(uint64_t a1)
{
  v2 = sub_24F347E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F340EAC()
{
  v1 = *v0;
  v2 = 0x6E6172546D6F6F7ALL;
  v3 = 0x47646570756F7267;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x7261656C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6567616D69;
  if (v1 != 1)
  {
    v5 = 0x746E657645707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F340F88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F34AD54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F340FB0(uint64_t a1)
{
  v2 = sub_24F347E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F340FEC(uint64_t a1)
{
  v2 = sub_24F347E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F34102C(uint64_t a1)
{
  v2 = sub_24F347F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F341068(uint64_t a1)
{
  v2 = sub_24F347F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3410A4()
{
  v1 = 0x6152746365707361;
  if (*v0 != 1)
  {
    v1 = 0x4D746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24F341110@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F34AF68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F341138(uint64_t a1)
{
  v2 = sub_24F347FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F341174(uint64_t a1)
{
  v2 = sub_24F347FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3411B0(uint64_t a1)
{
  v2 = sub_24F347EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3411EC(uint64_t a1)
{
  v2 = sub_24F347EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F341228()
{
  if (*v0)
  {
    return 0x7974696C617571;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24F34125C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F341338(uint64_t a1)
{
  v2 = sub_24F348094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F341374(uint64_t a1)
{
  v2 = sub_24F348094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Page.Background.encode(to:)(void *a1)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C8, &qword_24F9E74D8);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v74 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9D0, &qword_24F9E74E0);
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v74 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9D8, &qword_24F9E74E8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v74 - v5;
  v96 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v96);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9E0, &qword_24F9E74F0);
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v74 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9E8, &qword_24F9E74F8);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9F0, &qword_24F9E7500);
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = sub_24F9289E8();
  v97 = *(v21 - 8);
  v98 = v21;
  MEMORY[0x28223BE20](v21);
  v94 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  v26 = type metadata accessor for Page.Background(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9F8, &qword_24F9E7508);
  v30 = *(v29 - 8);
  v100 = v29;
  v101 = v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v74 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F347E48();
  v99 = v32;
  sub_24F92D128();
  sub_24F340D54(v102, v28, type metadata accessor for Page.Background);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v44 = v76;
      sub_24F347CE4(v28, v76, type metadata accessor for JSColor);
      v115 = 3;
      sub_24F347F44();
      v45 = v77;
      v47 = v99;
      v46 = v100;
      sub_24F92CC98();
      sub_24F347DAC(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
      v48 = v83;
      sub_24F92CD48();
      v49 = v82;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v117 = 5;
        sub_24F347E9C();
        v64 = v81;
        v66 = v99;
        v65 = v100;
        sub_24F92CC98();
        (*(v86 + 8))(v64, v88);
        return (*(v101 + 8))(v66, v65);
      }

      v44 = v78;
      sub_24F347CE4(v28, v78, type metadata accessor for JSColor);
      v116 = 4;
      sub_24F347EF0();
      v45 = v89;
      v47 = v99;
      v46 = v100;
      sub_24F92CC98();
      sub_24F347DAC(&qword_27F21C778, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
      v48 = v93;
      sub_24F92CD48();
      v49 = v92;
    }

    (*(v49 + 8))(v45, v48);
    sub_24F347D4C(v44, type metadata accessor for JSColor);
    return (*(v101 + 8))(v47, v46);
  }

  if (EnumCaseMultiPayload)
  {
    v34 = v103;
    if (EnumCaseMultiPayload == 1)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910);
      v36 = *(v35 + 48);
      LODWORD(v102) = v28[*(v35 + 64)];
      v37 = v97;
      v38 = v98;
      (*(v97 + 32))(v94, v28, v98);
      sub_24E6009C8(&v28[v36], v95, &qword_27F214148, &qword_24F93C520);
      v111 = 1;
      sub_24F347FEC();
      v39 = v75;
      v40 = v99;
      v41 = v100;
      sub_24F92CC98();
      v110 = 0;
      sub_24F347DAC(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v42 = v80;
      sub_24F92CD48();
      if (v34)
      {
        (*(v79 + 8))(v39, v42);
        sub_24E601704(v95, &qword_27F214148, &qword_24F93C520);
        (*(v37 + 8))(v94, v38);
        return (*(v101 + 8))(v40, v41);
      }

      else
      {
        v67 = v41;
        v109[0] = 1;
        sub_24F922348();
        sub_24F347DAC(&qword_27F23FA30, MEMORY[0x277D22668], &protocol conformance descriptor for AspectRatio);
        v68 = v95;
        v69 = v42;
        v70 = v39;
        sub_24F92CCF8();
        v108 = v102;
        v107 = 2;
        sub_24F348040();
        sub_24F92CD48();
        v71 = v97;
        v72 = v98;
        v73 = v94;
        (*(v79 + 8))(v70, v69);
        sub_24E601704(v68, &qword_27F214148, &qword_24F93C520);
        (*(v71 + 8))(v73, v72);
        return (*(v101 + 8))(v40, v67);
      }
    }

    else
    {
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v57 = v87;
      sub_24E6009C8(v28, v87, &qword_27F213FB0, &qword_24F93E6B0);
      v58 = &v28[v56];
      v59 = v84;
      sub_24E6009C8(v58, v84, &qword_27F213FB8, &unk_24F93C010);
      v114 = 2;
      sub_24F347F98();
      v60 = v85;
      v62 = v99;
      v61 = v100;
      sub_24F92CC98();
      v113 = 0;
      sub_24F347DAC(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v63 = v91;
      sub_24F92CCF8();
      if (!v34)
      {
        v112 = 1;
        type metadata accessor for GSKVideo(0);
        sub_24F347DAC(&qword_27F214068, type metadata accessor for GSKVideo, &protocol conformance descriptor for GSKVideo);
        sub_24F92CCF8();
      }

      (*(v90 + 8))(v60, v63);
      sub_24E601704(v59, &qword_27F213FB8, &unk_24F93C010);
      sub_24E601704(v57, &qword_27F213FB0, &qword_24F93E6B0);
      return (*(v101 + 8))(v62, v61);
    }
  }

  else
  {
    v50 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C0, &qword_24F9E74D0) + 48)];
    v102 = *v50;
    LODWORD(v96) = v50[8];
    v52 = v97;
    v51 = v98;
    (*(v97 + 32))(v25, v28, v98);
    v106 = 0;
    sub_24F348094();
    v54 = v99;
    v53 = v100;
    sub_24F92CC98();
    v105 = 0;
    sub_24F347DAC(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    v55 = v103;
    sub_24F92CD48();
    if (v55)
    {
      (*(v74 + 8))(v20, v18);
      (*(v52 + 8))(v25, v51);
    }

    else
    {
      v104 = 1;
      sub_24F92CCE8();
      (*(v74 + 8))(v20, v18);
      (*(v97 + 8))(v25, v98);
    }

    return (*(v101 + 8))(v54, v53);
  }
}

uint64_t Page.Background.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA48, &qword_24F9E7510);
  v93 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v101 = &v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA50, &qword_24F9E7518);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA58, &qword_24F9E7520);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v106 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA60, &qword_24F9E7528);
  v9 = *(v8 - 8);
  v97 = v8;
  v98 = v9;
  MEMORY[0x28223BE20](v8);
  v105 = &v81 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA68, &qword_24F9E7530);
  v99 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v104 = &v81 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA70, &qword_24F9E7538);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v103 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA78, &unk_24F9E7540);
  v108 = *(v13 - 8);
  v109 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  v102 = type metadata accessor for Page.Background(0);
  MEMORY[0x28223BE20](v102);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  v32 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24F347E48();
  v33 = v110;
  sub_24F92D108();
  if (!v33)
  {
    v82 = v19;
    v84 = v28;
    v34 = v103;
    v83 = v22;
    v35 = v106;
    v85 = v25;
    v110 = 0;
    v36 = v104;
    v37 = v105;
    v86 = v31;
    v38 = v107;
    v39 = v109;
    v40 = sub_24F92CC78();
    v41 = (2 * *(v40 + 16)) | 1;
    v112 = v40;
    v113 = v40 + 32;
    v114 = 0;
    v115 = v41;
    v42 = sub_24E64343C();
    v43 = v15;
    if (v42 == 6 || v114 != v115 >> 1)
    {
      v45 = sub_24F92C918();
      swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v47 = v102;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
      (*(v108 + 8))(v43, v39);
    }

    else
    {
      if (v42 <= 2u)
      {
        if (v42)
        {
          v44 = v110;
          if (v42 == 1)
          {
            v116 = 1;
            sub_24F347FEC();
            sub_24F92CBA8();
            if (v44)
            {
              (*(v108 + 8))(v43, v39);
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v111);
            }

            v50 = v38;
            v110 = v43;
            sub_24F9289E8();
            v116 = 0;
            sub_24F347DAC(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
            v67 = v94;
            sub_24F92CC68();
            v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
            sub_24F922348();
            v116 = 1;
            sub_24F347DAC(&qword_27F23FA80, MEMORY[0x277D22668], &protocol conformance descriptor for AspectRatio);
            sub_24F92CC18();
            v106 = v74;
            v116 = 2;
            sub_24F3480E8();
            v80 = v85;
            sub_24F92CC68();
            (*(v99 + 8))(v36, v67);
            (*(v108 + 8))(v110, v109);
            swift_unknownObjectRelease();
            goto LABEL_29;
          }

          v116 = 2;
          sub_24F347F98();
          v61 = v37;
          sub_24F92CBA8();
          if (v44)
          {
            goto LABEL_21;
          }

          sub_24F9289E8();
          v116 = 0;
          sub_24F347DAC(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v69 = v83;
          v70 = v97;
          sub_24F92CC18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450);
          type metadata accessor for GSKVideo(0);
          v116 = 1;
          sub_24F347DAC(&qword_27F214020, type metadata accessor for GSKVideo, &protocol conformance descriptor for GSKVideo);
          sub_24F92CC18();
          (*(v98 + 8))(v61, v70);
          (*(v108 + 8))(v43, v39);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v79 = v86;
          sub_24F347CE4(v69, v86, type metadata accessor for Page.Background);
          v50 = v38;
        }

        else
        {
          v116 = 0;
          sub_24F348094();
          v53 = v34;
          v54 = v110;
          sub_24F92CBA8();
          if (v54)
          {
LABEL_21:
            (*(v108 + 8))(v43, v39);
            goto LABEL_10;
          }

          v55 = v15;
          v56 = v39;
          sub_24F9289E8();
          v116 = 0;
          sub_24F347DAC(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v57 = v90;
          sub_24F92CC68();
          v58 = v108;
          v116 = 1;
          v71 = sub_24F92CC08();
          LODWORD(v106) = v72;
          v110 = 0;
          v75 = v71;
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9C0, &qword_24F9E74D0);
          v77 = v84;
          v78 = &v84[*(v76 + 48)];
          (*(v89 + 8))(v53, v57);
          (*(v58 + 8))(v55, v56);
          swift_unknownObjectRelease();
          *v78 = v75;
          v78[8] = v106 & 1;
          swift_storeEnumTagMultiPayload();
          v79 = v86;
          sub_24F347CE4(v77, v86, type metadata accessor for Page.Background);
          v50 = v38;
        }

LABEL_31:
        sub_24F347CE4(v79, v50, type metadata accessor for Page.Background);
        return __swift_destroy_boxed_opaque_existential_1(v111);
      }

      if (v42 == 3)
      {
        v116 = 3;
        sub_24F347F44();
        v59 = v110;
        sub_24F92CBA8();
        v60 = v39;
        if (!v59)
        {
          v50 = v38;
          v64 = v60;
          type metadata accessor for JSColor(0);
          sub_24F347DAC(&qword_27F21C758, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
          v65 = v82;
          v66 = v92;
          sub_24F92CC68();
          (*(v91 + 8))(v35, v66);
          (*(v108 + 8))(v15, v64);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v73 = v65;
LABEL_30:
          v79 = v86;
          sub_24F347CE4(v73, v86, type metadata accessor for Page.Background);
          goto LABEL_31;
        }

        (*(v108 + 8))(v15, v39);
      }

      else
      {
        v49 = v39;
        v50 = v38;
        if (v42 != 4)
        {
          v116 = 5;
          sub_24F347E9C();
          v62 = v101;
          v63 = v110;
          sub_24F92CBA8();
          if (v63)
          {
            (*(v108 + 8))(v43, v49);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v111);
          }

          (*(v93 + 8))(v62, v88);
          (*(v108 + 8))(v43, v49);
          swift_unknownObjectRelease();
          v79 = v86;
          swift_storeEnumTagMultiPayload();
          goto LABEL_31;
        }

        v116 = 4;
        sub_24F347EF0();
        v51 = v100;
        v52 = v110;
        sub_24F92CBA8();
        if (!v52)
        {
          v110 = v15;
          type metadata accessor for JSColor(0);
          sub_24F347DAC(&qword_27F21C758, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
          v80 = v87;
          v68 = v95;
          sub_24F92CC68();
          (*(v96 + 8))(v51, v68);
          (*(v108 + 8))(v110, v49);
          swift_unknownObjectRelease();
LABEL_29:
          swift_storeEnumTagMultiPayload();
          v73 = v80;
          goto LABEL_30;
        }

        (*(v108 + 8))(v15, v49);
      }
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_24F3435F4(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FCE0, &qword_24F9E8540);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FCE8, &qword_24F9E8548);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34B960();
  sub_24F92D128();
  sub_24F34B9B4();
  sub_24F92CC98();
  v15 = v13;
  v16 = v14;
  sub_24F34BA08();
  sub_24F92CD48();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24F343874(uint64_t a1)
{
  v2 = sub_24F34B960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3438B0(uint64_t a1)
{
  v2 = sub_24F34B960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3438EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64654D646578696DLL && a2 == 0xEE006D6574496169)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F34397C(uint64_t a1)
{
  v2 = sub_24F34B9B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3439B8(uint64_t a1)
{
  v2 = sub_24F34B9B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24F3439F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F34A850(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

GameStoreKit::Page::Paddings::Configuration_optional __swiftcall Page.Paddings.Configuration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Page.Paddings.Configuration.rawValue.getter()
{
  v1 = 0x746361706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24F343AE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v4 = 0x656772616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746361706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F343BDC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F343C74(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F343CF8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F343D98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F343EB0()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_24F343EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F343FB8(uint64_t a1)
{
  v2 = sub_24F34813C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F343FF4(uint64_t a1)
{
  v2 = sub_24F34813C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Page.Paddings.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FA90, &qword_24F9E7550);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34813C();
  sub_24F92D128();
  v15 = v8;
  v14 = 0;
  sub_24F348190();
  sub_24F92CD48();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Page.Paddings.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAA8, &qword_24F9E7558);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34813C();
  sub_24F92D108();
  if (!v2)
  {
    v15 = 0;
    sub_24F3481E4();
    sub_24F92CC68();
    v9 = v16;
    v13 = 1;
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Page.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Page.id.setter(uint64_t a1)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Page.pageKind.getter()
{
  v1 = *(v0 + *(type metadata accessor for Page(0) + 20));

  return v1;
}

uint64_t Page.pageKind.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Page(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Page.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Page(0) + 24);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Page.pageMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 24);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Page.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for Page(0) + 28));

  return v1;
}

uint64_t Page.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Page(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Page.titleDisplayMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t Page.titleDisplayMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t Page.navigationBarVisibility.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

double Page.toolbarItemGroups.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Page(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;

  return result;
}

__n128 Page.toolbarItemGroups.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for Page(0) + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t Page.isScrollDisabled.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_24F344AD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 48);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.shelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

double Page.auxiliaryShelves.getter()
{
  type metadata accessor for Page(0);

  return result;
}

uint64_t sub_24F344BE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 52);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.auxiliaryShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Page.automaticallyUnifyStrandedColumn.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Page.automaticUnificationOverrideMargins.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t Page.automaticUnificationOverrideMargins.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t sub_24F344E00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 64);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.topLeadingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F344ED8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 68);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.topTrailingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F344FB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 72);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.bottomLeadingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F345088(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Page(0) + 76);

  *(a2 + v4) = v3;
  return result;
}

uint64_t Page.bottomTrailingShelves.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Page(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Page.margins.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t Page.margins.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t Page.paddings.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for Page(0);
  *a1 = *(v1 + *(result + 88));
  return result;
}

uint64_t Page.paddings.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 88)) = v2;
  return result;
}

uint64_t Page.dragIndicatorVisibility.setter(char a1)
{
  result = type metadata accessor for Page(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

unint64_t sub_24F345504(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x646E694B65676170;
      break;
    case 2:
      result = 0x7274654D65676170;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 21:
    case 28:
      result = 0xD000000000000017;
      break;
    case 6:
    case 12:
    case 22:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7365766C656873;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 13:
    case 16:
    case 24:
      result = 0xD000000000000012;
      break;
    case 14:
    case 27:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x736E696772616DLL;
      break;
    case 18:
      result = 0x73676E6964646170;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x756F72676B636162;
      break;
    case 23:
      result = 0x4168736572666572;
      break;
    case 25:
      result = 0x676553656C746974;
      break;
    case 26:
      result = 0x656C746974627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F345864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F34B088(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F345898(uint64_t a1)
{
  v2 = sub_24F348238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3458D4(uint64_t a1)
{
  v2 = sub_24F348238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Page.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAB8, &qword_24F9E7560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F348238();
  sub_24F92D128();
  LOBYTE(v19) = 0;
  sub_24F92A708();
  sub_24F347DAC(&qword_27F21F890, MEMORY[0x277D22408], MEMORY[0x277D22410]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for Page(0);
    LOBYTE(v19) = 1;
    sub_24F92CD08();
    LOBYTE(v19) = 2;
    sub_24F928818();
    sub_24F347DAC(&qword_27F21F898, MEMORY[0x277D21BF8], MEMORY[0x277D21C00]);
    sub_24F92CD48();
    LOBYTE(v19) = 3;
    sub_24F92CD08();
    LOBYTE(v19) = *(v3 + v9[8]);
    v23 = 4;
    sub_24F34828C();
    sub_24F92CD48();
    LOBYTE(v19) = *(v3 + v9[9]);
    v23 = 5;
    v10 = sub_24F3482E0();
    sub_24F92CD48();
    v17 = v10;
    v11 = (v3 + v9[10]);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v18 = v11[3];
    *&v19 = v12;
    LOBYTE(v11) = *(v11 + 32);
    *(&v19 + 1) = v13;
    v20 = v14;
    v21 = v18;
    v22 = v11;
    v23 = 6;
    sub_24F348334();

    sub_24F92CD48();

    LOBYTE(v19) = 7;
    sub_24F92CD18();
    *&v19 = *(v3 + v9[12]);
    v23 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAE0, &qword_24F9E7568);
    sub_24E602068(&qword_27F23FAE8, &qword_27F23FAE0, &qword_24F9E7568, MEMORY[0x277D21F28]);
    sub_24F92CD48();
    *&v19 = *(v3 + v9[13]);
    v23 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAF0, &qword_24F9E7570);
    sub_24F3485A4(&qword_27F23FAF8, &qword_27F23FB00, MEMORY[0x277D21F20], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v19) = 10;
    sub_24F92CCB8();
    LOBYTE(v19) = *(v3 + v9[15]);
    v23 = 11;
    v18 = sub_24E777488();
    sub_24F92CCF8();
    *&v19 = *(v3 + v9[16]);
    v23 = 12;
    sub_24F92CD48();
    *&v19 = *(v3 + v9[17]);
    v23 = 13;
    sub_24F92CD48();
    *&v19 = *(v3 + v9[18]);
    v23 = 14;
    sub_24F92CD48();
    *&v19 = *(v3 + v9[19]);
    v23 = 15;
    sub_24F92CD48();
    LOBYTE(v19) = 16;
    type metadata accessor for HeaderPresentation(0);
    sub_24F347DAC(&qword_27F21BE58, type metadata accessor for HeaderPresentation, &protocol conformance descriptor for HeaderPresentation);
    sub_24F92CCF8();
    LOBYTE(v19) = *(v3 + v9[21]);
    v23 = 17;
    sub_24F92CD48();
    LOWORD(v19) = *(v3 + v9[22]);
    v23 = 18;
    sub_24F348388();
    sub_24F92CCF8();
    v19 = *(v3 + v9[23]);
    v23 = 19;
    sub_24F3483DC();
    sub_24F92CCF8();
    LOBYTE(v19) = 20;
    type metadata accessor for Page.Background(0);
    sub_24F347DAC(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
    LOBYTE(v19) = *(v3 + v9[25]);
    v23 = 21;
    sub_24F92CCF8();
    *&v19 = *(v3 + v9[26]);
    v23 = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FB18, &qword_24F9E7578);
    sub_24F348430(&qword_27F23FB20, sub_24F3484A8, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v19) = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v19) = 24;
    sub_24F92CD48();
    LOBYTE(v19) = 25;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE0]);
    v18 = v15;
    sub_24F92CD48();
    LOBYTE(v19) = 26;
    sub_24F92CD48();
    LOBYTE(v19) = 27;
    sub_24F92CCB8();
    LOBYTE(v19) = 28;
    sub_24F92CCB8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Page.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v83 - v6;
  v92 = sub_24F928818();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v94 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_24F92A708();
  v93 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FB30, &unk_24F9E7580);
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v83 - v10;
  v12 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v15 + 60);
  v14[v90] = 7;
  v16 = *(v15 + 80);
  v17 = type metadata accessor for HeaderPresentation(0);
  v18 = *(*(v17 - 8) + 56);
  v107 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = v12[22];
  *&v14[v19] = 3;
  v20 = v12[24];
  v21 = type metadata accessor for Page.Background(0);
  v22 = *(*(v21 - 8) + 56);
  v106 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = &v14[v12[27]];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v105 = v23;
  sub_24E61DA68(&v109, v23, qword_27F21B590, &unk_24F93BE30);
  v24 = &v14[v12[28]];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v103 = v24;
  sub_24E61DA68(&v109, v24, qword_27F21B590, &unk_24F93BE30);
  v25 = &v14[v12[29]];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v102 = v25;
  sub_24E61DA68(&v109, v25, qword_27F21B590, &unk_24F93BE30);
  v26 = v12[30];
  v108 = v14;
  v27 = &v14[v26];
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v101 = &v14[v26];
  sub_24E61DA68(&v109, &v14[v26], qword_27F21B590, &unk_24F93BE30);
  v28 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24F348238();
  v99 = v11;
  v29 = v100;
  sub_24F92D108();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v104);
    v33 = 0;
    v34 = v108;
LABEL_4:
    sub_24E601704(&v34[v107], qword_27F220E38, &unk_24F965190);
    sub_24EA4FAF8(v33);
    sub_24E601704(&v34[v106], &qword_27F21D8F8, &qword_24F95ADB0);

    sub_24E601704(v105, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v103, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v102, &qword_27F213EA8, &unk_24F93D030);
    return sub_24E601704(v101, &qword_27F213EA8, &unk_24F93D030);
  }

  v30 = v94;
  v100 = v17;
  v85 = v19;
  v86 = v21;
  LOBYTE(v109) = 0;
  sub_24F347DAC(&qword_27F21F8C0, MEMORY[0x277D22408], MEMORY[0x277D22420]);
  v31 = v95;
  v32 = v98;
  sub_24F92CC68();
  v36 = v32;
  v37 = v108;
  (*(v93 + 32))(v108, v31, v36);
  LOBYTE(v109) = 1;
  v38 = sub_24F92CC28();
  v39 = &v37[v12[5]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v109) = 2;
  sub_24F347DAC(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
  v41 = v92;
  v84 = 0;
  sub_24F92CC68();
  (*(v91 + 32))(&v37[v12[6]], v30, v41);
  LOBYTE(v109) = 3;
  v42 = sub_24F92CC28();
  v43 = &v37[v12[7]];
  *v43 = v42;
  v43[1] = v44;
  v112 = 4;
  sub_24F3484FC();
  sub_24F92CC68();
  v37[v12[8]] = v109;
  v112 = 5;
  v45 = sub_24F348550();
  sub_24F92CC68();
  v37[v12[9]] = v109;
  v112 = 6;
  sub_24E933414();
  sub_24F92CC68();
  v47 = v111;
  v48 = &v37[v12[10]];
  v49 = v110;
  *v48 = v109;
  *(v48 + 1) = v49;
  v48[32] = v47;
  LOBYTE(v109) = 7;
  v50 = sub_24F92CC38();
  v83 = v45;
  v108[v12[11]] = v50 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAE0, &qword_24F9E7568);
  v112 = 8;
  sub_24E602068(&qword_27F23FB48, &qword_27F23FAE0, &qword_24F9E7568, MEMORY[0x277D21F30]);
  sub_24F92CC68();
  v95 = 0;
  *&v108[v12[12]] = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FAF0, &qword_24F9E7570);
  v112 = 9;
  sub_24F3485A4(&qword_27F23FB50, &qword_27F23FB58, MEMORY[0x277D21F18], MEMORY[0x277D21D38]);
  v51 = v95;
  sub_24F92CC68();
  v95 = v51;
  if (v51)
  {
    (*(v96 + 8))(v99, v97);
    v52 = 0;
    v53 = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
LABEL_26:
    v58 = v12;
    v46 = v84;
    __swift_destroy_boxed_opaque_existential_1(v104);
    v34 = v108;
    (*(v93 + 8))(v108, v98);
    if (!v46)
    {
    }

    (*(v91 + 8))(&v34[v58[6]], v92);

    if (v52)
    {

      if (v53)
      {
        goto LABEL_16;
      }
    }

    else if (v53)
    {
LABEL_16:

      if ((v96 & 1) == 0)
      {
LABEL_17:
        if (v97)
        {
LABEL_18:

          if ((v99 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_11:
        if (!v99)
        {
LABEL_13:
          v33 = v100;
          goto LABEL_4;
        }

LABEL_12:

        goto LABEL_13;
      }

LABEL_10:

      if (v97)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (!v96)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  *&v108[v12[13]] = v109;
  LOBYTE(v109) = 10;
  v54 = v95;
  v55 = sub_24F92CBD8();
  v95 = v54;
  if (v54 || (v108[v12[14]] = v55, v112 = 11, sub_24E777690(), v56 = v95, sub_24F92CC18(), (v95 = v56) != 0) || (v108[v90] = v109, v112 = 12, v57 = v95, sub_24F92CC68(), (v95 = v57) != 0))
  {
    (*(v96 + 8))(v99, v97);
    v53 = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    goto LABEL_26;
  }

  *&v108[v12[16]] = v109;
  v112 = 13;
  v59 = v95;
  sub_24F92CC68();
  v95 = v59;
  if (v59)
  {
    (*(v96 + 8))(v99, v97);
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    v53 = 1;
    goto LABEL_26;
  }

  *&v108[v12[17]] = v109;
  v112 = 14;
  v60 = v95;
  sub_24F92CC68();
  v95 = v60;
  if (v60)
  {
    (*(v96 + 8))(v99, v97);
    LODWORD(v97) = 0;
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    v53 = 1;
    LODWORD(v96) = 1;
    goto LABEL_26;
  }

  *&v108[v12[18]] = v109;
  v112 = 15;
  v61 = v95;
  sub_24F92CC68();
  v95 = v61;
  if (v61)
  {
    (*(v96 + 8))(v99, v97);
    LODWORD(v99) = 0;
    v100 = 0;
    v94 = 0;
    v90 = MEMORY[0x277D84F90];
    v52 = 1;
    v53 = 1;
    LODWORD(v96) = 1;
    LODWORD(v97) = 1;
    goto LABEL_26;
  }

  *&v108[v12[19]] = v109;
  LOBYTE(v109) = 16;
  sub_24F347DAC(&qword_27F21BEB8, type metadata accessor for HeaderPresentation, &protocol conformance descriptor for HeaderPresentation);
  v62 = v95;
  sub_24F92CC18();
  v95 = v62;
  if (v62 || (sub_24E61DA68(v87, &v108[v107], qword_27F220E38, &unk_24F965190), v112 = 17, v63 = v95, sub_24F92CC68(), (v95 = v63) != 0) || (v108[v12[21]] = v109, v112 = 18, sub_24F34863C(), v64 = v95, sub_24F92CC18(), (v95 = v64) != 0) || (*&v108[v85] = v109, v112 = 19, sub_24F348690(), v65 = v95, sub_24F92CC18(), (v95 = v65) != 0))
  {
    (*(v96 + 8))(v99, v97);
    v100 = 0;
    v94 = 0;
LABEL_38:
    v90 = MEMORY[0x277D84F90];
LABEL_39:
    v52 = 1;
    v53 = 1;
    LODWORD(v96) = 1;
    LODWORD(v97) = 1;
    LODWORD(v99) = 1;
    goto LABEL_26;
  }

  v66 = &v108[v12[23]];
  v67 = *(&v109 + 1);
  v100 = v109;
  *v66 = v109;
  *(v66 + 1) = v67;
  v94 = v67;
  LOBYTE(v109) = 20;
  sub_24F347DAC(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v68 = v95;
  sub_24F92CC18();
  v95 = v68;
  if (v68 || (sub_24E61DA68(v88, &v108[v106], &qword_27F21D8F8, &qword_24F95ADB0), v112 = 21, v69 = v95, sub_24F92CC18(), (v95 = v69) != 0) || (v108[v12[25]] = v109, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FB18, &qword_24F9E7578), v112 = 22, sub_24F348430(&qword_27F23FB70, sub_24F3486E4, MEMORY[0x277D83978]), v70 = v95, sub_24F92CC68(), (v95 = v70) != 0))
  {
    (*(v96 + 8))(v99, v97);
    goto LABEL_38;
  }

  v71 = v12[26];
  v90 = v109;
  *&v108[v71] = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  v112 = 23;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
  v72 = v95;
  sub_24F92CC68();
  v95 = v72;
  if (v72 || (sub_24E61DA68(&v109, v105, qword_27F24EC90, &unk_24F93C1D0), v112 = 24, v73 = v95, sub_24F92CC68(), (v95 = v73) != 0) || (sub_24E61DA68(&v109, v103, qword_27F24EC90, &unk_24F93C1D0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030), v112 = 25, sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]), v74 = v95, sub_24F92CC68(), (v95 = v74) != 0) || (sub_24E61DA68(&v109, v102, &qword_27F213EA8, &unk_24F93D030), v112 = 26, v75 = v95, sub_24F92CC68(), (v95 = v75) != 0) || (sub_24E61DA68(&v109, v101, &qword_27F213EA8, &unk_24F93D030), LOBYTE(v109) = 27, v76 = v95, v77 = sub_24F92CBD8(), (v95 = v76) != 0) || (v108[v12[31]] = v77, LOBYTE(v109) = 28, v78 = v95, v79 = sub_24F92CBD8(), (v95 = v78) != 0))
  {
    (*(v96 + 8))(v99, v97);
    goto LABEL_39;
  }

  v80 = v79;
  (*(v96 + 8))(v99, v97);
  v81 = v12[32];
  v82 = v108;
  v108[v81] = v80;
  sub_24F340D54(v82, v89, type metadata accessor for Page);
  __swift_destroy_boxed_opaque_existential_1(v104);
  return sub_24F347D4C(v82, type metadata accessor for Page);
}

double sub_24F347A3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;

  return result;
}

uint64_t sub_24F347AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24F347B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_24F347BB4()
{
  result = qword_27F23F978;
  if (!qword_27F23F978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F980, &qword_24F9E74B8);
    sub_24F347DAC(&qword_27F23F988, type metadata accessor for JSColor, &protocol conformance descriptor for JSColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F978);
  }

  return result;
}

uint64_t sub_24F347C68(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F347CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F347D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F347DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F347DF4()
{
  result = qword_27F23F9B0;
  if (!qword_27F23F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F9B0);
  }

  return result;
}

unint64_t sub_24F347E48()
{
  result = qword_27F23FA00;
  if (!qword_27F23FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA00);
  }

  return result;
}

unint64_t sub_24F347E9C()
{
  result = qword_27F23FA08;
  if (!qword_27F23FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA08);
  }

  return result;
}

unint64_t sub_24F347EF0()
{
  result = qword_27F23FA10;
  if (!qword_27F23FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA10);
  }

  return result;
}

unint64_t sub_24F347F44()
{
  result = qword_27F23FA18;
  if (!qword_27F23FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA18);
  }

  return result;
}

unint64_t sub_24F347F98()
{
  result = qword_27F23FA20;
  if (!qword_27F23FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA20);
  }

  return result;
}

unint64_t sub_24F347FEC()
{
  result = qword_27F23FA28;
  if (!qword_27F23FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA28);
  }

  return result;
}

unint64_t sub_24F348040()
{
  result = qword_27F23FA38;
  if (!qword_27F23FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA38);
  }

  return result;
}

unint64_t sub_24F348094()
{
  result = qword_27F23FA40;
  if (!qword_27F23FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA40);
  }

  return result;
}

unint64_t sub_24F3480E8()
{
  result = qword_27F23FA88;
  if (!qword_27F23FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA88);
  }

  return result;
}

unint64_t sub_24F34813C()
{
  result = qword_27F23FA98;
  if (!qword_27F23FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FA98);
  }

  return result;
}

unint64_t sub_24F348190()
{
  result = qword_27F23FAA0;
  if (!qword_27F23FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAA0);
  }

  return result;
}

unint64_t sub_24F3481E4()
{
  result = qword_27F23FAB0;
  if (!qword_27F23FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAB0);
  }

  return result;
}

unint64_t sub_24F348238()
{
  result = qword_27F23FAC0;
  if (!qword_27F23FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAC0);
  }

  return result;
}

unint64_t sub_24F34828C()
{
  result = qword_27F23FAC8;
  if (!qword_27F23FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAC8);
  }

  return result;
}

unint64_t sub_24F3482E0()
{
  result = qword_27F23FAD0;
  if (!qword_27F23FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAD0);
  }

  return result;
}

unint64_t sub_24F348334()
{
  result = qword_27F23FAD8;
  if (!qword_27F23FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FAD8);
  }

  return result;
}

unint64_t sub_24F348388()
{
  result = qword_27F23FB08;
  if (!qword_27F23FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB08);
  }

  return result;
}

unint64_t sub_24F3483DC()
{
  result = qword_27F23FB10;
  if (!qword_27F23FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB10);
  }

  return result;
}

uint64_t sub_24F348430(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23FB18, &qword_24F9E7578);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F3484A8()
{
  result = qword_27F23FB28;
  if (!qword_27F23FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB28);
  }

  return result;
}

unint64_t sub_24F3484FC()
{
  result = qword_27F23FB38;
  if (!qword_27F23FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB38);
  }

  return result;
}

unint64_t sub_24F348550()
{
  result = qword_27F23FB40;
  if (!qword_27F23FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB40);
  }

  return result;
}

uint64_t sub_24F3485A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23FAF0, &qword_24F9E7570);
    sub_24E602068(a2, &qword_27F23FAE0, &qword_24F9E7568, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F34863C()
{
  result = qword_27F23FB60;
  if (!qword_27F23FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB60);
  }

  return result;
}

unint64_t sub_24F348690()
{
  result = qword_27F23FB68;
  if (!qword_27F23FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB68);
  }

  return result;
}

unint64_t sub_24F3486E4()
{
  result = qword_27F23FB78;
  if (!qword_27F23FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB78);
  }

  return result;
}

unint64_t sub_24F34873C()
{
  result = qword_27F23FB80;
  if (!qword_27F23FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB80);
  }

  return result;
}

unint64_t sub_24F348794()
{
  result = qword_27F23FB88;
  if (!qword_27F23FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FB88);
  }

  return result;
}

double sub_24F348908@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 48));

  return result;
}

double sub_24F348954@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 52));

  return result;
}

double sub_24F3489A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 64));

  return result;
}

double sub_24F3489EC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 68));

  return result;
}

double sub_24F348A38@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 72));

  return result;
}

double sub_24F348A84@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Page(0) + 76));

  return result;
}

uint64_t sub_24F348AE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_24F928818();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[20];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[24];

  return v18(v19, a2, v17);
}

uint64_t sub_24F348CD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24F92A708();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_24F928818();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[20];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[24];

  return v18(v19, a2, a2, v17);
}

void sub_24F348EA8(uint64_t a1)
{
  sub_24F92A708();
  if (v1 <= 0x3F)
  {
    sub_24F928818();
    if (v2 <= 0x3F)
    {
      sub_24F3491F0(319);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F23FBC0, &qword_27F23FAE0, &qword_24F9E7568);
        if (v4 <= 0x3F)
        {
          sub_24F3492E8(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24F3492E8(319, &qword_27F220ED0, &type metadata for Margins, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24F349294(319, &qword_27F220EC8, type metadata accessor for HeaderPresentation);
              if (v7 <= 0x3F)
              {
                sub_24F3492E8(319, &qword_27F23FBC8, &type metadata for Page.Paddings, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_24F3492E8(319, &qword_27F23FBD0, &type metadata for Page.SingleColumnComponent, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_24F349294(319, &qword_27F21D948, type metadata accessor for Page.Background);
                    if (v10 <= 0x3F)
                    {
                      sub_24F3492E8(319, &qword_27F23FBD8, MEMORY[0x277CDF388], MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_24F3492E8(319, &qword_27F23FBE0, &type metadata for Page.RefreshCondition, MEMORY[0x277D83940]);
                        if (v12 <= 0x3F)
                        {
                          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
                          if (v13 <= 0x3F)
                          {
                            sub_24E7CA5E4(319);
                            if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_24F3491F0(uint64_t a1)
{
  if (!qword_27F23FBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225CB0, &qword_24F9E79F0);
    sub_24E602068(&qword_27F225CB8, &qword_27F225CB0, &qword_24F9E79F0, &protocol conformance descriptor for _IntentKindTable_ReturningAnyJSIntent<A, B>);
    v1 = sub_24F9294F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23FBB8);
    }
  }
}

void sub_24F349294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F3492E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24F349338(uint64_t a1)
{
  sub_24F3493D4(319);
  if (v1 <= 0x3F)
  {
    sub_24F349454(319);
    if (v2 <= 0x3F)
    {
      sub_24F3494DC(319);
      if (v3 <= 0x3F)
      {
        sub_24E869A90();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24F3493D4(uint64_t a1)
{
  if (!qword_27F23FBF8)
  {
    sub_24F9289E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390, &qword_24F93FC50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23FBF8);
    }
  }
}

void sub_24F349454(uint64_t a1)
{
  if (!qword_27F23FC00)
  {
    sub_24F9289E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214148, &qword_24F93C520);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F23FC00);
    }
  }
}

void sub_24F3494DC(uint64_t a1)
{
  if (!qword_27F23FC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0, &qword_24F93E6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB8, &unk_24F93C010);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23FC08);
    }
  }
}

uint64_t getEnumTagSinglePayload for Page.Paddings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

uint64_t getEnumTagSinglePayload for UpdateListener.RefreshDataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateListener.RefreshDataType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24F349820()
{
  result = qword_27F23FC10;
  if (!qword_27F23FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC10);
  }

  return result;
}

unint64_t sub_24F349878()
{
  result = qword_27F23FC18;
  if (!qword_27F23FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC18);
  }

  return result;
}

unint64_t sub_24F3498D0()
{
  result = qword_27F23FC20;
  if (!qword_27F23FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC20);
  }

  return result;
}

unint64_t sub_24F349928()
{
  result = qword_27F23FC28;
  if (!qword_27F23FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC28);
  }

  return result;
}

unint64_t sub_24F349980()
{
  result = qword_27F23FC30;
  if (!qword_27F23FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC30);
  }

  return result;
}

unint64_t sub_24F3499D8()
{
  result = qword_27F23FC38;
  if (!qword_27F23FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC38);
  }

  return result;
}

unint64_t sub_24F349A30()
{
  result = qword_27F23FC40;
  if (!qword_27F23FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC40);
  }

  return result;
}

unint64_t sub_24F349A88()
{
  result = qword_27F23FC48;
  if (!qword_27F23FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC48);
  }

  return result;
}

unint64_t sub_24F349AE0()
{
  result = qword_27F23FC50;
  if (!qword_27F23FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC50);
  }

  return result;
}

unint64_t sub_24F349B38()
{
  result = qword_27F23FC58;
  if (!qword_27F23FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC58);
  }

  return result;
}

unint64_t sub_24F349B90()
{
  result = qword_27F23FC60;
  if (!qword_27F23FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC60);
  }

  return result;
}

unint64_t sub_24F349BE8()
{
  result = qword_27F23FC68;
  if (!qword_27F23FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC68);
  }

  return result;
}

unint64_t sub_24F349C40()
{
  result = qword_27F23FC70;
  if (!qword_27F23FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC70);
  }

  return result;
}

unint64_t sub_24F349C98()
{
  result = qword_27F23FC78;
  if (!qword_27F23FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC78);
  }

  return result;
}

unint64_t sub_24F349CF0()
{
  result = qword_27F23FC80;
  if (!qword_27F23FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC80);
  }

  return result;
}

unint64_t sub_24F349D48()
{
  result = qword_27F23FC88;
  if (!qword_27F23FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC88);
  }

  return result;
}

unint64_t sub_24F349DA0()
{
  result = qword_27F23FC90;
  if (!qword_27F23FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC90);
  }

  return result;
}

unint64_t sub_24F349DF8()
{
  result = qword_27F23FC98;
  if (!qword_27F23FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FC98);
  }

  return result;
}

unint64_t sub_24F349E50()
{
  result = qword_27F23FCA0;
  if (!qword_27F23FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCA0);
  }

  return result;
}

unint64_t sub_24F349EA8()
{
  result = qword_27F23FCA8;
  if (!qword_27F23FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCA8);
  }

  return result;
}

unint64_t sub_24F349F00()
{
  result = qword_27F23FCB0;
  if (!qword_27F23FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCB0);
  }

  return result;
}

unint64_t sub_24F349F58()
{
  result = qword_27F23FCB8;
  if (!qword_27F23FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCB8);
  }

  return result;
}

unint64_t sub_24F349FB0()
{
  result = qword_27F23FCC0;
  if (!qword_27F23FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCC0);
  }

  return result;
}

unint64_t sub_24F34A008()
{
  result = qword_27F23FCC8;
  if (!qword_27F23FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCC8);
  }

  return result;
}

unint64_t sub_24F34A060()
{
  result = qword_27F23FCD0;
  if (!qword_27F23FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCD0);
  }

  return result;
}

unint64_t sub_24F34A0B8()
{
  result = qword_27F23FCD8;
  if (!qword_27F23FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCD8);
  }

  return result;
}

uint64_t sub_24F34A10C(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD68, &qword_24F9E8588);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v43 = &v33 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD70, &qword_24F9E8590);
  v40 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v42 = &v33 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD78, &qword_24F9E8598);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD80, &qword_24F9E85A0);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD88, &qword_24F9E85A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = a1[3];
  v45 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F34BA5C();
  v15 = v44;
  sub_24F92D108();
  if (!v15)
  {
    v16 = v8;
    v34 = v6;
    v17 = v5;
    v19 = v42;
    v18 = v43;
    v44 = v10;
    v20 = sub_24F92CC78();
    v21 = (2 * *(v20 + 16)) | 1;
    v47 = v20;
    v48 = v20 + 32;
    v49 = 0;
    v50 = v21;
    v22 = sub_24E643440();
    if (v22 == 4 || v49 != v50 >> 1)
    {
      v23 = sub_24F92C918();
      swift_allocError();
      v14 = v12;
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v25 = &type metadata for Page.RefreshCondition;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v44 + 8))(v14, v9);
      swift_unknownObjectRelease();
    }

    else if (v22 > 1u)
    {
      v27 = v44;
      if (v22 == 2)
      {
        v46 = 2;
        sub_24F34BB04();
        sub_24F92CBA8();
        v28 = v35;
        sub_24F92CC48();
        v31 = v30;
        (*(v40 + 8))(v19, v28);
      }

      else
      {
        v46 = 3;
        sub_24F34BAB0();
        sub_24F92CBA8();
        v29 = v38;
        sub_24F92CC48();
        v31 = v32;
        (*(v41 + 8))(v18, v29);
      }

      (*(v27 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = v31;
    }

    else if (v22)
    {
      v46 = 1;
      sub_24F34BB58();
      sub_24F92CBA8();
      (*(v37 + 8))(v17, v39);
      (*(v44 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 1;
    }

    else
    {
      v46 = 0;
      sub_24F34BBAC();
      sub_24F92CBA8();
      (*(v36 + 8))(v16, v34);
      (*(v44 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v14;
}

void *sub_24F34A850(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD58, &qword_24F9E8578);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FD60, &qword_24F9E8580);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F34B960();
  sub_24F92D108();
  if (v1)
  {
    goto LABEL_6;
  }

  v20 = a1;
  v10 = v27;
  v11 = v21;
  v12 = sub_24F92CC78();
  v13 = (2 * *(v12 + 16)) | 1;
  v23 = v12;
  v24 = v12 + 32;
  v25 = 0;
  v26 = v13;
  v14 = v8;
  if ((sub_24E643448() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v6;
    v16 = sub_24F92C918();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v18 = &type metadata for Page.SingleColumnComponent;
    v9 = v14;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v11 + 8))(v14, v15);
    swift_unknownObjectRelease();
    a1 = v20;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  sub_24F34B9B4();
  sub_24F92CBA8();
  sub_24E86A740();
  sub_24F92CC68();
  (*(v10 + 8))(v5, v3);
  (*(v11 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v9 = v22;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v9;
}

uint64_t sub_24F34ABE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65526F546C6C7570 && a2 == 0xED00006873657266;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7266655264656566 && a2 == 0xEB00000000687365 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261657070416E6FLL && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726765726F466E6FLL && a2 == 0xEC000000646E756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F34AD54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6172546D6F6F7ALL && a2 == 0xEF6E6F6974616C73;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657645707061 && a2 == 0xEE006C6961746544 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x47646570756F7267 && a2 == 0xEF746E6569646172 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA48750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F34AF68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEB0000000065646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F34B088(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E694B65676170 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA73D90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA73DB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA4A080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA73DD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7365766C656873 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA73DF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FA73E10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA73E40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73E70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA73E90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA73EB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA73ED0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x736E696772616DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x73676E6964646170 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA73EF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA73F10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73F30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x4168736572666572 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA73F50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x676553656C746974 && a2 == 0xEA00000000006575 || (sub_24F92CE08() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xED00006575676553 || (sub_24F92CE08() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA73F70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA73F90 == a2)
  {

    return 28;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 28;
    }

    else
    {
      return 29;
    }
  }
}

unint64_t sub_24F34B960()
{
  result = qword_27F23FCF0;
  if (!qword_27F23FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCF0);
  }

  return result;
}

unint64_t sub_24F34B9B4()
{
  result = qword_27F23FCF8;
  if (!qword_27F23FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FCF8);
  }

  return result;
}

unint64_t sub_24F34BA08()
{
  result = qword_27F23FD00;
  if (!qword_27F23FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD00);
  }

  return result;
}

unint64_t sub_24F34BA5C()
{
  result = qword_27F23FD30;
  if (!qword_27F23FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD30);
  }

  return result;
}

unint64_t sub_24F34BAB0()
{
  result = qword_27F23FD38;
  if (!qword_27F23FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD38);
  }

  return result;
}

unint64_t sub_24F34BB04()
{
  result = qword_27F23FD40;
  if (!qword_27F23FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD40);
  }

  return result;
}

unint64_t sub_24F34BB58()
{
  result = qword_27F23FD48;
  if (!qword_27F23FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD48);
  }

  return result;
}

unint64_t sub_24F34BBAC()
{
  result = qword_27F23FD50;
  if (!qword_27F23FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD50);
  }

  return result;
}

unint64_t sub_24F34BC00()
{
  result = qword_27F23FD90;
  if (!qword_27F23FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD90);
  }

  return result;
}

unint64_t sub_24F34BC54()
{
  result = qword_27F23FD98;
  if (!qword_27F23FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FD98);
  }

  return result;
}

unint64_t sub_24F34BD1C()
{
  result = qword_27F23FDA0;
  if (!qword_27F23FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDA0);
  }

  return result;
}

unint64_t sub_24F34BD74()
{
  result = qword_27F23FDA8;
  if (!qword_27F23FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDA8);
  }

  return result;
}

unint64_t sub_24F34BDCC()
{
  result = qword_27F23FDB0;
  if (!qword_27F23FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDB0);
  }

  return result;
}

unint64_t sub_24F34BE24()
{
  result = qword_27F23FDB8;
  if (!qword_27F23FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDB8);
  }

  return result;
}

unint64_t sub_24F34BE7C()
{
  result = qword_27F23FDC0;
  if (!qword_27F23FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDC0);
  }

  return result;
}

unint64_t sub_24F34BED4()
{
  result = qword_27F23FDC8;
  if (!qword_27F23FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDC8);
  }

  return result;
}

unint64_t sub_24F34BF2C()
{
  result = qword_27F23FDD0;
  if (!qword_27F23FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDD0);
  }

  return result;
}

unint64_t sub_24F34BF84()
{
  result = qword_27F23FDD8;
  if (!qword_27F23FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDD8);
  }

  return result;
}

unint64_t sub_24F34BFDC()
{
  result = qword_27F23FDE0;
  if (!qword_27F23FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDE0);
  }

  return result;
}

unint64_t sub_24F34C034()
{
  result = qword_27F23FDE8;
  if (!qword_27F23FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDE8);
  }

  return result;
}

unint64_t sub_24F34C08C()
{
  result = qword_27F23FDF0;
  if (!qword_27F23FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDF0);
  }

  return result;
}

unint64_t sub_24F34C0E4()
{
  result = qword_27F23FDF8;
  if (!qword_27F23FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FDF8);
  }

  return result;
}

unint64_t sub_24F34C13C()
{
  result = qword_27F23FE00;
  if (!qword_27F23FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE00);
  }

  return result;
}

unint64_t sub_24F34C194()
{
  result = qword_27F23FE08;
  if (!qword_27F23FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE08);
  }

  return result;
}

unint64_t sub_24F34C1EC()
{
  result = qword_27F23FE10;
  if (!qword_27F23FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE10);
  }

  return result;
}

unint64_t sub_24F34C244()
{
  result = qword_27F23FE18;
  if (!qword_27F23FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE18);
  }

  return result;
}

unint64_t sub_24F34C29C()
{
  result = qword_27F23FE20;
  if (!qword_27F23FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE20);
  }

  return result;
}

unint64_t sub_24F34C2F4()
{
  result = qword_27F23FE28;
  if (!qword_27F23FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE28);
  }

  return result;
}

unint64_t sub_24F34C34C()
{
  result = qword_27F23FE30;
  if (!qword_27F23FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FE30);
  }

  return result;
}

uint64_t GameActivityDraft.__allocating_init(gameInfo:primaryArtwork:leaderboard:definition:activityDefinition:activityInstance:durationRule:attemptLimit:rules:playersToInvite:playerGroupsToInvite:contactHandlesToInvite:previousChallengeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v76 = a6;
  v77 = a8;
  v73 = a5;
  v74 = a7;
  v72 = a4;
  v70 = a3;
  v83 = a2;
  v84 = a1;
  v81 = a14;
  v82 = a13;
  v78 = a9;
  v79 = a10;
  v80 = a12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v16 - 8);
  v71 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v18 - 8);
  v69 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v20 - 8);
  v68 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v24 - 8);
  v66 = &v64 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v64 - v27;

  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  v31 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork;
  v33 = sub_24F9289E8();
  (*(*(v33 - 8) + 56))(v29 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  v35 = type metadata accessor for Leaderboard(0);
  (*(*(v35 - 8) + 56))(v29 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  v37 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v37 - 8) + 56))(v29 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v64 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v39 = type metadata accessor for ActivityDefinitionDetail(0);
  (*(*(v39 - 8) + 56))(v29 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  v65 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  v41 = sub_24F920418();
  (*(*(v41 - 8) + 56))(v29 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = 0;
  v43 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  v44 = sub_24F920A88();
  (*(*(v44 - 8) + 56))(v29 + v43, 1, 1, v44);
  v45 = (v29 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  *v45 = 0;
  v45[1] = 0;
  sub_24F91FDB8();
  sub_24E60169C(v84, v28, &qword_27F212B28, &qword_24F939910);
  sub_24E601704(v29 + v30, &qword_27F212B28, &qword_24F939910);
  sub_24E6009C8(v28, v29 + v30, &qword_27F212B28, &qword_24F939910);
  v46 = v66;
  sub_24E60169C(v83, v66, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v29 + v32, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E6009C8(v46, v29 + v32, &qword_27F213FB0, &qword_24F93E6B0);
  v47 = v70;
  v48 = v67;
  sub_24E60169C(v70, v67, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v29 + v34, &qword_27F212890, &qword_24F939670);
  sub_24E6009C8(v48, v29 + v34, &qword_27F212890, &qword_24F939670);
  v49 = v72;
  v50 = v68;
  sub_24E60169C(v72, v68, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v29 + v36, &qword_27F212A08, &qword_24F9397D0);
  sub_24E6009C8(v50, v29 + v36, &qword_27F212A08, &qword_24F9397D0);

  *(v29 + v42) = v74;
  v51 = v73;
  v52 = v69;
  sub_24E60169C(v73, v69, &qword_27F2142A0, &unk_24F94CF90);
  v53 = v64;
  sub_24E601704(v29 + v64, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E6009C8(v52, v29 + v53, &qword_27F2142A0, &unk_24F94CF90);
  v54 = v76;
  v55 = v71;
  sub_24E60169C(v76, v71, &qword_27F2142B8, &unk_24F954820);
  v56 = v65;
  sub_24E601704(v29 + v65, &qword_27F2142B8, &unk_24F954820);
  sub_24E6009C8(v55, v29 + v56, &qword_27F2142B8, &unk_24F954820);
  v57 = v77;
  v58 = v75;
  sub_24E60169C(v77, v75, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E601704(v29 + v43, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E6009C8(v58, v29 + v43, &qword_27F2198F8, &unk_24F94CFA0);
  v59 = (v29 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  v60 = v78;
  v61 = v78[1];
  *v59 = *v78;
  v59[1] = v61;
  v59[2] = v60[2];
  *(v59 + 41) = *(v60 + 41);
  *(v29 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = sub_24E609EB8(MEMORY[0x277D84F90]);
  v62 = v80;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) = v79;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) = v62;
  sub_24F34EFA4(v82, v81);
  sub_24E601704(v57, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E601704(v54, &qword_27F2142B8, &unk_24F954820);
  sub_24E601704(v51, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E601704(v49, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v47, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v83, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v84, &qword_27F212B28, &qword_24F939910);
  return v29;
}

uint64_t GameActivityDraftGameInfo.init(game:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 1) = v4;
  v5 = *(a1 + 8);
  *(a2 + 2) = *a1;
  *(a2 + 3) = v5;
  if (*(a1 + 56))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  *(a2 + 4) = v6;
  *(a2 + 5) = v7;
  v8 = *(type metadata accessor for Game(0) + 72);
  v9 = type metadata accessor for GameActivityDraftGameInfo(0);
  v10 = *(v9 + 28);
  v11 = sub_24F9289E8();
  (*(*(v11 - 8) + 16))(&a2[v10], a1 + v8, v11);
  LOBYTE(v8) = *(a1 + 105);

  result = sub_24F3529A4(a1, type metadata accessor for Game);
  a2[*(v9 + 32)] = v8;
  return result;
}

uint64_t sub_24F34CCD4()
{
  v1 = *v0;
  v2 = 0x4449656C646E7562;
  v3 = 0x6F666E49656D6167;
  v4 = 0x6E6F697461727564;
  if (v1 != 4)
  {
    v4 = 0x4C74706D65747461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6974696E69666564;
  if (v1 != 1)
  {
    v5 = 0x5265726975716572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F34CDAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F354A74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F34CDD4(uint64_t a1)
{
  v2 = sub_24F352908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F34CE10(uint64_t a1)
{
  v2 = sub_24F352908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDefinitionDraftInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FEA8, &qword_24F9E8CB8);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F352908();
  v16 = v36;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v17 = v8;
  v19 = v34;
  v18 = v35;
  v36 = v5;
  v43 = 0;
  *v14 = sub_24F92CC28();
  *(v14 + 1) = v21;
  v42 = 1;
  *(v14 + 2) = sub_24F92CC28();
  *(v14 + 3) = v22;
  v41 = 2;
  v23 = sub_24F92CC38();
  v32 = 0;
  v14[32] = v23 & 1;
  type metadata accessor for GameActivityDraftGameInfo(0);
  v40 = 3;
  sub_24F35295C(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo, &protocol conformance descriptor for GameActivityDraftGameInfo);
  v24 = v32;
  sub_24F92CC18();
  v32 = v24;
  if (v24)
  {
    (*(v19 + 8))(v11, v18);
    v25 = 0;
  }

  else
  {
    sub_24E6009C8(v17, &v14[v12[7]], &qword_27F212B28, &qword_24F939910);
    v39 = 4;
    v26 = v32;
    v27 = sub_24F92CBE8();
    v32 = v26;
    if (!v26)
    {
      v29 = &v14[v12[8]];
      *v29 = v27;
      v29[8] = v28 & 1;
      sub_24F920A88();
      v38 = 5;
      sub_24F35295C(&qword_27F2325B8, MEMORY[0x277D0D0F8], MEMORY[0x277D0D110]);
      v30 = v36;
      v31 = v32;
      sub_24F92CC18();
      v32 = v31;
      if (!v31)
      {
        (*(v19 + 8))(v11, v18);
        sub_24E6009C8(v30, &v14[v12[9]], &qword_27F2198F8, &unk_24F94CFA0);
        sub_24F352B70(v14, v33, type metadata accessor for ChallengeDefinitionDraftInfo);
        __swift_destroy_boxed_opaque_existential_1(v37);
        return sub_24F3529A4(v14, type metadata accessor for ChallengeDefinitionDraftInfo);
      }
    }

    (*(v19 + 8))(v11, v18);
    v25 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);

  if (v25)
  {
    return sub_24E601704(&v14[v12[7]], &qword_27F212B28, &qword_24F939910);
  }

  return result;
}

unint64_t sub_24F34D378()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x646F437974726170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6974696E69666564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F34D404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F354C80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F34D42C(uint64_t a1)
{
  v2 = sub_24F352A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F34D468(uint64_t a1)
{
  v2 = sub_24F352A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiplayerActivityDefinitionDraftInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FEB8, &qword_24F9E8CC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F352A04();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_24F92CC28();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_24F92CC28();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_24F92CBC8();
  v25 = v13;
  v33 = 3;
  v14 = sub_24F92CBC8();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_24F352A58(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_24F352A90(v32);
}

double sub_24F34D7B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

double sub_24F34D7F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  swift_beginAccess();
  v14 = *(v1 + 16);
  if (v14)
  {
    sub_24E60169C(a1, v12, &qword_27F212A08, &qword_24F9397D0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v23 - 2) = v14;
    *(&v23 - 1) = v12;
    v26 = v14;
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

    sub_24F91FD78();

    sub_24E601704(v12, &qword_27F212A08, &qword_24F9397D0);
    if (*(v1 + 16))
    {
      sub_24E60169C(a1, v9, &qword_27F212A08, &qword_24F9397D0);
      v16 = type metadata accessor for ChallengeDefinitionDetail(0);
      v17 = *(*(v16 - 8) + 48);
      if (v17(v9, 1, v16) == 1)
      {

        sub_24E601704(v9, &qword_27F212A08, &qword_24F9397D0);
        v18 = 0;
      }

      else
      {
        v18 = *&v9[*(v16 + 60)];

        sub_24F3529A4(v9, type metadata accessor for ChallengeDefinitionDetail);
      }

      sub_24F34E590(v18);

      if (*(v1 + 16))
      {
        v19 = a1;
        v20 = v24;
        sub_24E60169C(v19, v24, &qword_27F212A08, &qword_24F9397D0);
        if (v17(v20, 1, v16) == 1)
        {

          sub_24E601704(v20, &qword_27F212A08, &qword_24F9397D0);
          v21 = sub_24F920A88();
          v22 = v25;
          (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
        }

        else
        {
          v22 = v25;
          sub_24E60169C(v20 + *(v16 + 64), v25, &qword_27F2198F8, &unk_24F94CFA0);

          sub_24F3529A4(v20, type metadata accessor for ChallengeDefinitionDetail);
        }

        sub_24F34E848(v22);
      }
    }
  }

  return result;
}

uint64_t GameActivityDraftBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F34DCA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F212B28, &qword_24F939910);
  v7 = sub_24F354470(v5, a1);
  sub_24E601704(v5, &qword_27F212B28, &qword_24F939910);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v5, &qword_27F212B28, &qword_24F939910);
    swift_beginAccess();
    sub_24E61DA68(v5, v1 + v6, &qword_27F212B28, &qword_24F939910);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F212B28, &qword_24F939910);
}

uint64_t sub_24F34DF04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_24E60169C(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_24E61DA68(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24F34E00C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F212A08, &qword_24F9397D0);
}

uint64_t sub_24F34E0E4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F212A08, &qword_24F9397D0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F212A08, &qword_24F9397D0);
}

uint64_t sub_24F34E2DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F2142B8, &unk_24F954820);
  v7 = sub_24F354754(v5, a1);
  sub_24E601704(v5, &qword_27F2142B8, &unk_24F954820);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v5, &qword_27F2142B8, &unk_24F954820);
    swift_beginAccess();
    sub_24E61DA68(v5, v1 + v6, &qword_27F2142B8, &unk_24F954820);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F2142B8, &unk_24F954820);
}

double sub_24F34E4E4()
{
  swift_getKeyPath();
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  return result;
}

uint64_t sub_24F34E590(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
  if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD78();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = sub_24EA17EA0(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_24F34E700(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = a2;
}

uint64_t sub_24F34E768@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v10 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v12 + v10, a5, a3, a4);
}

uint64_t sub_24F34E848(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F2198F8, &unk_24F94CFA0);
  v7 = sub_24F354150(v5, a1);
  sub_24E601704(v5, &qword_27F2198F8, &unk_24F94CFA0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD78();
  }

  else
  {
    sub_24E60169C(a1, v5, &qword_27F2198F8, &unk_24F94CFA0);
    swift_beginAccess();
    sub_24E61DA68(v5, v1 + v6, &qword_27F2198F8, &unk_24F94CFA0);
    swift_endAccess();
  }

  return sub_24E601704(a1, &qword_27F2198F8, &unk_24F94CFA0);
}

uint64_t sub_24F34EA50@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  v8[1] = v3;
  v9[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
  v4 = v9[0];
  *(v9 + 9) = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 41);
  v5 = *(v9 + 9);
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 41) = v5;
  return sub_24E6F261C(v8, &v7);
}

uint64_t sub_24F34EB2C(uint64_t a1, _OWORD *a2)
{
  v2 = a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules;
  v3 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 8);
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 16);
  v6 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 24);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 40);
  v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 48);
  v10 = a2[1];
  *v2 = *a2;
  *(v2 + 16) = v10;
  *(v2 + 32) = a2[2];
  v11 = *(v2 + 56);
  *(v2 + 41) = *(a2 + 41);
  sub_24E6F261C(a2, &v13);
  sub_24E6F246C(v3, v4, v5, v6);
  return sub_24E600C4C(v7, v8, v9, v11);
}

uint64_t sub_24F34EC00(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = a2;
}

double sub_24F34ECA8(uint64_t a1)
{
  swift_getKeyPath();
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  return result;
}

uint64_t sub_24F34ED88(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD78();
  }
}

uint64_t sub_24F34EEE8()
{
  swift_getKeyPath();
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);

  return v1;
}

uint64_t sub_24F34EFA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD78();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24F34F120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_24F34F168()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24F920A88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  swift_getKeyPath();
  v17 = v0;
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  sub_24E60169C(v1 + v12, v4, &qword_27F2198F8, &unk_24F94CFA0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24E601704(v4, &qword_27F2198F8, &unk_24F94CFA0);
    return 0;
  }

  v14 = *(v6 + 32);
  v14(v11, v4, v5);
  v14(v8, v11, v5);
  v15 = (*(v6 + 88))(v8, v5);
  if (v15 != *MEMORY[0x277D0D0E8])
  {
    if (v15 != *MEMORY[0x277D0D0F0])
    {
      (*(v6 + 8))(v8, v5);
    }

    return 0;
  }

  (*(v6 + 96))(v8, v5);
  return *v8;
}

char *sub_24F34F43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F68, &qword_24F93A2E0);
  MEMORY[0x28223BE20](v1 - 8);
  v88 = &v73 - v2;
  v87 = sub_24F91F1A8();
  v3 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Player(0);
  v76 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - v9;
  swift_getKeyPath();
  v105 = v0;
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v11 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v74 = (v13 + 63) >> 6;
  v93 = "dCAIDFriendRequests";
  v83 = v7 + 1;
  v85 = (v3 + 56);
  v16 = (v3 + 8);
  v17 = v15;
  v84 = v16;
  result = swift_bridgeObjectRetain_n();
  v82 = 0;
  v19 = MEMORY[0x277D84F90];
  v97 = v7;
  v98 = v5;
  v96 = v10;
  v75 = v11;
  v77 = v11 + 64;
  while (v17)
  {
    v21 = v82;
LABEL_12:
    v81 = v17;
    v82 = v21;
    v24 = *(v11 + 56) + 24 * (__clz(__rbit64(v17)) | (v21 << 6));
    v25 = *(v24 + 16);
    v26 = *(v25 + 16);
    if (v26)
    {
      v80 = v19;
      v27 = *(v24 + 8);
      v105 = MEMORY[0x277D84F90];
      v79 = v27;

      sub_24F457D54(0, v26, 0);
      v104 = v105;
      v95 = objc_opt_self();
      v28 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v78 = v25;
      v29 = v25 + v28;
      v94 = *(v76 + 72);
      do
      {
        v103 = v26;
        sub_24F352B70(v29, v10, type metadata accessor for Player);
        sub_24F352B70(v10, v7, type metadata accessor for Player);
        v30 = *v7;
        v101 = v7[1];
        v102 = v30;

        v31 = [v95 standardUserDefaults];
        v32 = sub_24F92B098();
        v33 = [v31 BOOLForKey_];

        if (v33)
        {
          v34 = (v7 + v5[9]);
          if (v34[1] == 1)
          {
            sub_24F3529A4(v10, type metadata accessor for Player);
            v35 = (v7 + v5[8]);
            if (!v35[1])
            {
              v35 = (v7 + v5[7]);
            }

            v100 = v35[1];
            v99 = *v35;
          }

          else
          {
            v38 = v34[10];
            v91 = v34[8];
            v92 = v38;
            v39 = v34[6];
            v99 = v34[4];
            v100 = v39;
            v40 = v34[2];
            v89 = *v34;
            v90 = v40;
            v41 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
            [v41 setStyle_];
            v42 = v87;
            (*v85)(v88, 1, 1, v87);

            v7 = v97;
            v43 = v86;
            sub_24F91F178();
            v44 = sub_24F91F188();
            v45 = v42;
            v5 = v98;
            (*v84)(v43, v45);
            v46 = [v41 stringFromPersonNameComponents_];

            v99 = sub_24F92B0D8();
            v100 = v47;

            sub_24F3529A4(v96, type metadata accessor for Player);
          }
        }

        else
        {
          sub_24F3529A4(v10, type metadata accessor for Player);
          v36 = (v7 + v5[7]);
          v37 = v36[1];
          v99 = *v36;
          v100 = v37;
        }

        v49 = v7[2];
        v48 = v7[3];
        v50 = v7;
        v51 = *(v7 + v5[11]);
        v52 = *(v50 + v5[12]);
        v53 = *(v50 + v5[20]);
        v54 = *(v50 + v5[21]);

        sub_24F3529A4(v50, type metadata accessor for Player);
        v55 = v104;
        v105 = v104;
        v57 = *(v104 + 16);
        v56 = *(v104 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_24F457D54((v56 > 1), v57 + 1, 1);
          v55 = v105;
        }

        *(v55 + 16) = v57 + 1;
        v104 = v55;
        v58 = v55 + 72 * v57;
        v59 = v101;
        *(v58 + 32) = v102;
        *(v58 + 40) = v59;
        v60 = v100;
        *(v58 + 48) = v99;
        *(v58 + 56) = v60;
        *(v58 + 64) = v49;
        *(v58 + 72) = v48;
        *(v58 + 80) = v51;
        *(v58 + 88) = v52;
        *(v58 + 96) = v53;
        *(v58 + 97) = v54;
        v29 += v94;
        v26 = v103 - 1;
        v7 = v97;
        v5 = v98;
        v10 = v96;
      }

      while (v103 != 1);

      v11 = v75;
      v19 = v80;
      v61 = v104;
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }

    v62 = *(v61 + 16);
    v63 = *(v19 + 2);
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      goto LABEL_41;
    }

    v65 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v65;
    if (!result || v64 > *(v65 + 3) >> 1)
    {
      if (v63 <= v64)
      {
        v67 = v63 + v62;
      }

      else
      {
        v67 = v63;
      }

      result = sub_24E615E80(result, v67, 1, v65);
      v66 = result;
    }

    v12 = v77;
    v17 = (v81 - 1) & v81;
    if (*(v61 + 16))
    {
      if ((*(v66 + 3) >> 1) - *(v66 + 2) < v62)
      {
        goto LABEL_43;
      }

      v68 = v66;
      swift_arrayInitWithCopy();

      v19 = v68;
      if (v62)
      {
        v69 = *(v68 + 2);
        v70 = __OFADD__(v69, v62);
        v71 = v69 + v62;
        if (v70)
        {
          goto LABEL_44;
        }

        *(v68 + 2) = v71;
      }
    }

    else
    {
      v20 = v66;

      v19 = v20;
      if (v62)
      {
        goto LABEL_42;
      }
    }
  }

  v22 = v82;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v74)
    {
      v72 = v19;

      return v72;
    }

    v17 = *(v12 + 8 * v23);
    ++v22;
    if (v17)
    {
      v21 = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_24F34FCE0()
{
  v1 = v0;
  v2 = type metadata accessor for Player(0);
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  v55 = v1;
  v45[0] = sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  v45[1] = v5;
  sub_24F91FD88();

  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite);
  v7 = *(v6 + 64);
  v48 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v46 = v1;
  v47 = (v8 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v49 = v6;
  while (v10)
  {
LABEL_10:
    v15 = *(v6 + 56) + 24 * (__clz(__rbit64(v10)) | (v12 << 6));
    v16 = *(v15 + 16);
    v17 = *(v16 + 16);
    if (v17)
    {
      v53 = v10;
      v54 = v13;
      v18 = *(v15 + 8);
      v55 = MEMORY[0x277D84F90];
      v52 = v18;

      sub_24F4578E0(0, v17, 0);
      v19 = v55;
      v20 = *(v50 + 80);
      v51 = v16;
      v21 = v16 + ((v20 + 32) & ~v20);
      v22 = *(v50 + 72);
      do
      {
        sub_24F352B70(v21, v4, type metadata accessor for Player);
        v24 = *v4;
        v23 = v4[1];

        sub_24F3529A4(v4, type metadata accessor for Player);
        v55 = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24F4578E0((v25 > 1), v26 + 1, 1);
          v19 = v55;
        }

        *(v19 + 16) = v26 + 1;
        v27 = v19 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        v21 += v22;
        --v17;
      }

      while (v17);

      v10 = v53;
      v13 = v54;
      v6 = v49;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v28 = *(v19 + 16);
    v29 = *(v13 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v30 > *(v13 + 3) >> 1)
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = sub_24E615CF4(result, v31, 1, v13);
      v13 = result;
    }

    v10 &= v10 - 1;
    if (*(v19 + 16))
    {
      if ((*(v13 + 3) >> 1) - *(v13 + 2) < v28)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v32 = *(v13 + 2);
        v33 = __OFADD__(v32, v28);
        v34 = v32 + v28;
        if (v33)
        {
          goto LABEL_40;
        }

        *(v13 + 2) = v34;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v14 >= v47)
    {
      break;
    }

    v10 = *(v48 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  v35 = v46;
  v55 = v46;
  sub_24F91FD88();

  v36 = *(v35 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v55 = MEMORY[0x277D84F90];

    sub_24F4578E0(0, v37, 0);
    v38 = v55;
    v39 = (v36 + 40);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;
      v55 = v38;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);

      if (v43 >= v42 >> 1)
      {
        sub_24F4578E0((v42 > 1), v43 + 1, 1);
        v38 = v55;
      }

      *(v38 + 16) = v43 + 1;
      v44 = v38 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v40;
      v39 += 9;
      --v37;
    }

    while (v37);
  }

  v55 = v13;
  sub_24EA0A4AC(v38);
  return v55;
}

BOOL sub_24F35018C()
{
  swift_getKeyPath();
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  if (*(*(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  if (*(*(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  return *(*(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) + 16) != 0;
}

uint64_t GameActivityDraft.init(gameInfo:primaryArtwork:leaderboard:definition:activityDefinition:activityInstance:durationRule:attemptLimit:rules:playersToInvite:playerGroupsToInvite:contactHandlesToInvite:previousChallengeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v76 = a6;
  v77 = a8;
  v73 = a5;
  v74 = a7;
  v72 = a4;
  v70 = a3;
  v83 = a2;
  v84 = a1;
  v81 = a14;
  v82 = a13;
  v78 = a9;
  v79 = a10;
  v80 = a12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v19 - 8);
  v69 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v21 - 8);
  v68 = &v64 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v23 - 8);
  v67 = &v64 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v25 - 8);
  v66 = &v64 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v64 - v28;

  v30 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  v31 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v31 - 8) + 56))(v14 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork;
  v33 = sub_24F9289E8();
  (*(*(v33 - 8) + 56))(v14 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  v35 = type metadata accessor for Leaderboard(0);
  (*(*(v35 - 8) + 56))(v14 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  v37 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v37 - 8) + 56))(v14 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v64 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  v39 = type metadata accessor for ActivityDefinitionDetail(0);
  (*(*(v39 - 8) + 56))(v14 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  v65 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  v41 = sub_24F920418();
  (*(*(v41 - 8) + 56))(v14 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = 0;
  v43 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  v44 = sub_24F920A88();
  (*(*(v44 - 8) + 56))(v14 + v43, 1, 1, v44);
  v45 = (v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  *v45 = 0;
  v45[1] = 0;
  sub_24F91FDB8();
  sub_24E60169C(v84, v29, &qword_27F212B28, &qword_24F939910);
  sub_24E601704(v14 + v30, &qword_27F212B28, &qword_24F939910);
  sub_24E6009C8(v29, v14 + v30, &qword_27F212B28, &qword_24F939910);
  v46 = v66;
  sub_24E60169C(v83, v66, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v14 + v32, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E6009C8(v46, v14 + v32, &qword_27F213FB0, &qword_24F93E6B0);
  v47 = v70;
  v48 = v67;
  sub_24E60169C(v70, v67, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v14 + v34, &qword_27F212890, &qword_24F939670);
  sub_24E6009C8(v48, v14 + v34, &qword_27F212890, &qword_24F939670);
  v49 = v72;
  v50 = v68;
  sub_24E60169C(v72, v68, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v14 + v36, &qword_27F212A08, &qword_24F9397D0);
  sub_24E6009C8(v50, v14 + v36, &qword_27F212A08, &qword_24F9397D0);

  *(v14 + v42) = v74;
  v51 = v73;
  v52 = v69;
  sub_24E60169C(v73, v69, &qword_27F2142A0, &unk_24F94CF90);
  v53 = v64;
  sub_24E601704(v14 + v64, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E6009C8(v52, v14 + v53, &qword_27F2142A0, &unk_24F94CF90);
  v54 = v76;
  v55 = v71;
  sub_24E60169C(v76, v71, &qword_27F2142B8, &unk_24F954820);
  v56 = v65;
  sub_24E601704(v14 + v65, &qword_27F2142B8, &unk_24F954820);
  sub_24E6009C8(v55, v14 + v56, &qword_27F2142B8, &unk_24F954820);
  v57 = v77;
  v58 = v75;
  sub_24E60169C(v77, v75, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E601704(v14 + v43, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E6009C8(v58, v14 + v43, &qword_27F2198F8, &unk_24F94CFA0);
  v59 = (v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  v60 = v78;
  v61 = v78[1];
  *v59 = *v78;
  v59[1] = v61;
  v59[2] = v60[2];
  *(v59 + 41) = *(v60 + 41);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = sub_24E609EB8(MEMORY[0x277D84F90]);
  v62 = v80;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) = v79;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) = v62;
  sub_24F34EFA4(v82, v81);
  sub_24E601704(v57, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E601704(v54, &qword_27F2142B8, &unk_24F954820);
  sub_24E601704(v51, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E601704(v49, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v47, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v83, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v84, &qword_27F212B28, &qword_24F939910);
  return v14;
}

uint64_t GameActivityDraft.deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo, &qword_27F212B28, &qword_24F939910);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard, &qword_27F212890, &qword_24F939670);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition, &qword_27F212A08, &qword_24F9397D0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition, &qword_27F2142A0, &unk_24F94CF90);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance, &qword_27F2142B8, &unk_24F954820);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit, &qword_27F2198F8, &unk_24F94CFA0);
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 40);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 48);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 56);
  sub_24E6F246C(*(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules), *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 24));
  sub_24E600C4C(v1, v2, v3, v4);

  v5 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  v6 = sub_24F91FDC8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t GameActivityDraft.__deallocating_deinit()
{
  GameActivityDraft.deinit();

  return swift_deallocClassInstance();
}

unint64_t GameActivityDraftGameInfo.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x44496D616461;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = *(v1 + 1);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v5 = sub_24E605DB4();
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v6 = MEMORY[0x277D837D0];
  v7 = MEMORY[0x277D22580];
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v7;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 1701667182;
  *(inited + 152) = 0xE400000000000000;
  v10 = *(v1 + 4);
  v11 = *(v1 + 5);
  *(inited + 184) = v6;
  *(inited + 192) = v7;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  *(inited + 200) = 0x6E6F6349656D6167;
  *(inited + 208) = 0xE800000000000000;
  v12 = type metadata accessor for GameActivityDraftGameInfo(0);
  v13 = *(v12 + 28);
  v14 = sub_24F9289E8();
  *(inited + 240) = v14;
  *(inited + 248) = sub_24F35295C(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, &v1[v13], v14);
  *(inited + 256) = 0x6564616372417369;
  *(inited + 264) = 0xE800000000000000;
  v16 = v1[*(v12 + 32)];
  v17 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v17;
  *(inited + 272) = v16;

  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F350FCC()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 1701667182;
  v4 = 0x6E6F6349656D6167;
  if (v1 != 3)
  {
    v4 = 0x6564616372417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F35105C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F355658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F351084(uint64_t a1)
{
  v2 = sub_24F352B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3510C0(uint64_t a1)
{
  v2 = sub_24F352B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameActivityDraftGameInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FEC8, &qword_24F9E8CF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F352B1C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    type metadata accessor for GameActivityDraftGameInfo(0);
    v8[12] = 3;
    sub_24F9289E8();
    sub_24F35295C(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    v8[11] = 4;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GameActivityDraftGameInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_24F9289E8();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FED8, &unk_24F9E8CF8);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v23 - v5;
  v7 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F352B1C();
  v10 = v30;
  sub_24F92D108();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v4;
  v11 = v27;
  v12 = v28;
  v30 = v7;
  v35 = 0;
  v13 = v9;
  *v9 = sub_24F92CBC8();
  v9[1] = v14;
  v23[2] = v14;
  v34 = 1;
  v9[2] = sub_24F92CC28();
  v9[3] = v15;
  v33 = 2;
  v16 = sub_24F92CC28();
  v17 = v12;
  v23[1] = 0;
  v9[4] = v16;
  v9[5] = v18;
  v32 = 3;
  sub_24F35295C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v19 = v24;
  v20 = v26;
  sub_24F92CC68();
  v21 = v30;
  (*(v17 + 32))(v13 + *(v30 + 28), v19, v20);
  v31 = 4;
  LOBYTE(v20) = sub_24F92CC38();
  (*(v11 + 8))(v6, v29);
  *(v13 + *(v21 + 32)) = v20 & 1;
  sub_24F352B70(v13, v25, type metadata accessor for GameActivityDraftGameInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F3529A4(v13, type metadata accessor for GameActivityDraftGameInfo);
}

unint64_t GameActivityDraftPlayerInfo.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v17 = v1[6];
  v18 = v1[7];
  v19 = *(v1 + 64);
  v20 = *(v1 + 65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9AF330;
  *(inited + 32) = 0x4449726579616C70;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v4;
  *(inited + 112) = v5;
  *(inited + 144) = 0x726174617661;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  *(inited + 160) = v6;
  *(inited + 168) = v7;
  *(inited + 200) = 0xD000000000000012;
  *(inited + 208) = 0x800000024FA73FB0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240, &qword_24F974E70);
  *(inited + 240) = v11;
  v12 = sub_24EA14A34();
  *(inited + 216) = v17;
  *(inited + 248) = v12;
  *(inited + 256) = 0xD000000000000013;
  *(inited + 296) = v11;
  *(inited + 304) = v12;
  *(inited + 264) = 0x800000024FA73FD0;
  *(inited + 272) = v18;
  *(inited + 312) = 0xD000000000000011;
  *(inited + 320) = 0x800000024FA73FF0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  *(inited + 352) = v13;
  v14 = sub_24F352BD8();
  *(inited + 328) = v19;
  *(inited + 360) = v14;
  *(inited + 368) = 0xD00000000000001CLL;
  *(inited + 376) = 0x800000024FA74010;
  *(inited + 408) = v13;
  *(inited + 416) = v14;
  *(inited + 384) = v20;

  v15 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v15;
  return result;
}

uint64_t sub_24F351AB8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 1701667182;
    if (v1 != 1)
    {
      v5 = 0x726174617661;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x4449726579616C70;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000011;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F351B88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F355804(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F351BB0(uint64_t a1)
{
  v2 = sub_24F352C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F351BEC(uint64_t a1)
{
  v2 = sub_24F352C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameActivityDraftPlayerInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FEE0, &qword_24F9E8D08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v7;
  v8 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = v8;
  v9 = *(v1 + 48);
  v16 = *(v1 + 56);
  v17 = v9;
  LODWORD(v9) = *(v1 + 64);
  v15[2] = *(v1 + 65);
  v15[3] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F352C54();
  v10 = v3;
  sub_24F92D128();
  LOBYTE(v24) = 0;
  v11 = v22;
  sub_24F92CD08();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v16;
  v13 = v17;
  LOBYTE(v24) = 1;
  sub_24F92CD08();
  LOBYTE(v24) = 2;
  sub_24F92CD08();
  v24 = v13;
  v23 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24F352CA8();
  sub_24F92CCF8();
  v24 = v14;
  v23 = 4;
  sub_24F92CCF8();
  LOBYTE(v24) = 5;
  sub_24F92CCB8();
  LOBYTE(v24) = 6;
  sub_24F92CCB8();
  return (*(v4 + 8))(v6, v10);
}

uint64_t GameActivityDraftPlayerInfo.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 65);
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();
  if (!v3)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_24F92D088();
    if (v4 == 2)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_24F92D088();
    goto LABEL_14;
  }

  sub_24F92D088();
  MEMORY[0x253052A00](*(v3 + 16));
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = v3 + 40;
    do
    {

      sub_24F92B218();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_24F92D088();
  MEMORY[0x253052A00](*(v2 + 16));
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = v2 + 40;
    do
    {

      sub_24F92B218();

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_24F92D088();
  if (v5 != 2)
  {
    sub_24F92D088();
  }

  return sub_24F92D088();
}

uint64_t GameActivityDraftPlayerInfo.hashValue.getter()
{
  sub_24F92D068();
  GameActivityDraftPlayerInfo.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t GameActivityDraftPlayerInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FEF0, &qword_24F9E8D10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F352C54();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_24F92CC28();
  v26 = v10;
  LOBYTE(v32[0]) = 1;
  *&v25 = sub_24F92CC28();
  *(&v25 + 1) = v11;
  LOBYTE(v32[0]) = 2;
  v22 = sub_24F92CC28();
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  LOBYTE(v27) = 3;
  v23 = sub_24E7C1498();
  sub_24F92CC18();
  v21 = v32[0];
  LOBYTE(v27) = 4;
  sub_24F92CC18();
  v23 = v32[0];
  LOBYTE(v32[0]) = 5;
  v35 = sub_24F92CBD8();
  v36 = 6;
  v13 = sub_24F92CBD8();
  (*(v6 + 8))(v8, v5);
  v15 = *(&v25 + 1);
  v14 = v26;
  *&v27 = v9;
  *(&v27 + 1) = v26;
  v28 = v25;
  v16 = v24;
  *&v29 = v22;
  *(&v29 + 1) = v24;
  v17 = v21;
  *&v30 = v21;
  *(&v30 + 1) = v23;
  LOBYTE(v31) = v35;
  HIBYTE(v31) = v13;
  v18 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v18;
  *(a2 + 64) = v31;
  v19 = v28;
  *a2 = v27;
  *(a2 + 16) = v19;
  sub_24E627A14(&v27, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v14;
  v32[2] = v25;
  v32[3] = v15;
  v32[4] = v22;
  v32[5] = v16;
  v32[6] = v17;
  v32[7] = v23;
  v33 = v35;
  v34 = v13;
  return sub_24E627A70(v32);
}

uint64_t sub_24F3525AC()
{
  sub_24F92D068();
  GameActivityDraftPlayerInfo.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F3525F0()
{
  sub_24F92D068();
  GameActivityDraftPlayerInfo.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit0A23ActivityDraftPlayerInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v14 = *(a1 + 65);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = a1[7];
  v15 = *(a2 + 64);
  v16 = *(a1 + 64);
  v13 = *(a2 + 65);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24F92CE08() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_24F92CE08() & 1) == 0 || (v3 != v9 || v6 != v10) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11 || (sub_24EA14BB8(v5, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (!v18)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v17 || (sub_24EA14BB8(v18, v17) & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  if (v16 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

LABEL_25:
    if (v14 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else if (v13 == 2 || ((v13 ^ v14) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v16) & 1) == 0)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t _s12GameStoreKit0a13ActivityDraftA4InfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v5)
  {
LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_24F92CE08() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = type metadata accessor for GameActivityDraftGameInfo(0);
  if ((MEMORY[0x25304E2E0](a1 + *(v8 + 28), a2 + *(v8 + 28)) & 1) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(a1 + *(v8 + 32)) ^ *(a2 + *(v8 + 32)) ^ 1;
  return v9 & 1;
}

unint64_t sub_24F352908()
{
  result = qword_27F23FEB0;
  if (!qword_27F23FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FEB0);
  }

  return result;
}

uint64_t sub_24F35295C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3529A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F352A04()
{
  result = qword_27F23FEC0;
  if (!qword_27F23FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FEC0);
  }

  return result;
}

unint64_t sub_24F352B1C()
{
  result = qword_27F23FED0;
  if (!qword_27F23FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FED0);
  }

  return result;
}

uint64_t sub_24F352B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F352BD8()
{
  result = qword_27F23F878;
  if (!qword_27F23F878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8, &unk_24F9C4EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F878);
  }

  return result;
}

unint64_t sub_24F352C54()
{
  result = qword_27F23FEE8;
  if (!qword_27F23FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FEE8);
  }

  return result;
}

unint64_t sub_24F352CA8()
{
  result = qword_27F2137A0;
  if (!qword_27F2137A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0, &qword_24F93B070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2137A0);
  }

  return result;
}

unint64_t sub_24F352D28()
{
  result = qword_27F23FEF8;
  if (!qword_27F23FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FEF8);
  }

  return result;
}

uint64_t sub_24F352D7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24F352DE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F352F30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F35306C(uint64_t a1)
{
  sub_24F353170(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F2191B8, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_24F353170(319, &qword_27F2349F0, MEMORY[0x277D0D0F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F353170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F3532A8(uint64_t a1)
{
  sub_24F353170(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo);
  if (v1 <= 0x3F)
  {
    sub_24F353170(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
    if (v2 <= 0x3F)
    {
      sub_24F353170(319, &qword_27F23FF20, type metadata accessor for Leaderboard);
      if (v3 <= 0x3F)
      {
        sub_24F353170(319, &qword_27F21B7B0, type metadata accessor for ChallengeDefinitionDetail);
        if (v4 <= 0x3F)
        {
          sub_24F353170(319, &qword_27F23C2A8, type metadata accessor for ActivityDefinitionDetail);
          if (v5 <= 0x3F)
          {
            sub_24F353170(319, &qword_27F23C2B0, MEMORY[0x277D0CB18]);
            if (v6 <= 0x3F)
            {
              sub_24F353170(319, &qword_27F2349F0, MEMORY[0x277D0D0F8]);
              if (v7 <= 0x3F)
              {
                sub_24F91FDC8();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F353628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F3536E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F9289E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F35378C(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24F9289E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}