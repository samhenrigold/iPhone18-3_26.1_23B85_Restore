uint64_t sub_22BCB8600(uint64_t a1, _BYTE *a2)
{
  v3 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0) - 8;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  LOBYTE(a2) = *a2;
  sub_22BB307B0();
  sub_22BCBA9C0();
  v6[*(v3 + 56)] = a2;
  v10[15] = a2;
  sub_22BCB6C90();
  v8 = v7;
  sub_22BB58728(v6, &qword_27D8E3ED8, &qword_22BDCE7D0);
  return v8;
}

uint64_t sub_22BCB86E4(uint64_t a1, uint64_t a2)
{
  v177 = a1;
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  v165 = v2;
  v166 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v158 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v157 = &v153 - v6;
  v7 = sub_22BBE6DE0(&qword_27D8E3EE0, &qword_22BDC1490);
  MEMORY[0x28223BE20](v7 - 8);
  v163 = &v153 - v8;
  v156 = sub_22BBE6DE0(&qword_27D8E3EE8, &qword_22BDC1498);
  MEMORY[0x28223BE20](v156);
  v155 = &v153 - v9;
  v175 = sub_22BDBA594();
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v167 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22BBE6DE0(&qword_27D8E3EF0, &unk_22BDCD6E0);
  v169 = *(v178 - 8);
  v11 = MEMORY[0x28223BE20](v178);
  v160 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v176 = &v153 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v170 = &v153 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v153 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = (&v153 - v20);
  v168 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v171 = *(v168 - 8);
  v22 = MEMORY[0x28223BE20](v168);
  v162 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v164 = &v153 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v159 = &v153 - v27;
  MEMORY[0x28223BE20](v26);
  v172 = &v153 - v28;
  v174 = sub_22BBE6DE0(&qword_27D8E3ED8, &qword_22BDCE7D0);
  v29 = *(v174 - 8);
  v30 = MEMORY[0x28223BE20](v174);
  v32 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v153 = &v153 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v161 = &v153 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v153 - v37;
  v39 = _s20DisambiguationResultOMa(0);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v154 = &v153 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = (&v153 - v46);
  MEMORY[0x28223BE20](v45);
  v49 = (&v153 - v48);
  sub_22BCBA9C0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v173 + 8))(v49, v175);
    }

    else if (*v49 >= *(v177 + 16))
    {
      v51 = v158;
      sub_22BDB6404();
      v52 = v42;
      sub_22BCBA9C0();
      v53 = v177;

      v54 = sub_22BDB77C4();
      v55 = sub_22BDBB114();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = v166;
        v58 = v56;
        v59 = swift_slowAlloc();
        v179[0] = v59;
        *v58 = 136315394;
        v60 = MEMORY[0x2318A4D50](v53, v168);
        v62 = sub_22BB32EE0(v60, v61, v179);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        v63 = sub_22BCCD54C();
        v65 = v64;
        sub_22BCBAA18(v52, _s20DisambiguationResultOMa);
        v66 = sub_22BB32EE0(v63, v65, v179);

        *(v58 + 14) = v66;
        _os_log_impl(&dword_22BB2C000, v54, v55, "Cannot extract disambiguation outcomes, selected candidate is not within bounds; items=%s, result=%s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318A6080](v59, -1, -1);
        MEMORY[0x2318A6080](v58, -1, -1);

        (*(v57 + 8))(v51, v165);
      }

      else
      {

        sub_22BCBAA18(v42, _s20DisambiguationResultOMa);
        (*(v166 + 8))(v51, v165);
      }

      return 0;
    }
  }

  sub_22BCBA9C0();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v94 = v173;
      v95 = v167;
      v96 = v175;
      (*(v173 + 32))(v167, v47, v175);
      v97 = *(v94 + 16);
      v98 = v162;
      v97(v162, v95, v96);
      swift_storeEnumTagMultiPayload();
      v99 = v163;
      v100 = v177;
      sub_22BCB9AC4(v98, v177, v163);
      sub_22BCBAA18(v98, type metadata accessor for FeedbackLearning.CandidateDefinition);
      v101 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
      if (sub_22BB3AA28(v99, 1, v101) == 1)
      {
        sub_22BB58728(v99, &qword_27D8E3EE0, &qword_22BDC1490);
        v102 = v157;
        sub_22BDB6404();
        v103 = v154;
        sub_22BCBA9C0();

        v104 = sub_22BDB77C4();
        v105 = sub_22BDBB114();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = v166;
          v108 = v106;
          v109 = swift_slowAlloc();
          v179[0] = v109;
          *v108 = 136315394;
          v110 = MEMORY[0x2318A4D50](v100, v168);
          v112 = sub_22BB32EE0(v110, v111, v179);

          *(v108 + 4) = v112;
          *(v108 + 12) = 2080;
          v113 = sub_22BCCD54C();
          v115 = v114;
          sub_22BCBAA18(v103, _s20DisambiguationResultOMa);
          v116 = sub_22BB32EE0(v113, v115, v179);

          *(v108 + 14) = v116;
          _os_log_impl(&dword_22BB2C000, v104, v105, "Cannot extract disambiguation outcomes, selected value could not be extracted; items=%s, result=%s", v108, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318A6080](v109, -1, -1);
          MEMORY[0x2318A6080](v108, -1, -1);

          (*(v107 + 8))(v102, v165);
        }

        else
        {

          sub_22BCBAA18(v103, _s20DisambiguationResultOMa);
          (*(v166 + 8))(v102, v165);
        }

        (*(v173 + 8))(v95, v175);
        return 0;
      }

      v124 = *(v99 + *(v101 + 48));
      v125 = v156;
      v126 = *(v156 + 48);
      v127 = v155;
      sub_22BCBA968();
      *&v127[v126] = v124;
      v128 = *&v127[*(v125 + 48)];
      sub_22BCBA968();
      sub_22BBE6DE0(&qword_27D8E3F00, &unk_22BDCD700);
      v129 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_22BDBCBD0;
      v131 = *(v174 + 48);
      sub_22BCBA9C0();
      *(v130 + v129 + v131) = 64;
      v132 = *(v128 + 16);
      if (v132)
      {
        v177 = v130;
        v179[0] = MEMORY[0x277D84F90];
        sub_22BD27E90(0, v132, 0);
        v133 = v179[0];
        v134 = *(v171 + 80);
        v178 = v128;
        v135 = v128 + ((v134 + 32) & ~v134);
        v136 = *(v171 + 72);
        v137 = v174;
        v138 = v153;
        do
        {
          sub_22BCBA9C0();
          v138[*(v137 + 48)] = 65;
          v179[0] = v133;
          v140 = *(v133 + 16);
          v139 = *(v133 + 24);
          if (v140 >= v139 >> 1)
          {
            sub_22BD27E90(v139 > 1, v140 + 1, 1);
            v137 = v174;
            v133 = v179[0];
          }

          *(v133 + 16) = v140 + 1;
          sub_22BC8D26C();
          v135 += v136;
          --v132;
        }

        while (v132);

        v95 = v167;
        v130 = v177;
      }

      else
      {

        v133 = MEMORY[0x277D84F90];
      }

      v179[0] = v130;
      sub_22BD66B28(v133);
      sub_22BCBAA18(v164, type metadata accessor for FeedbackLearning.CandidateDefinition);
      (*(v173 + 8))(v95, v175);
      return v179[0];
    case 2:
      v79 = v177;
      v80 = *(v177 + 16);
      v81 = MEMORY[0x277D84F90];
      if (v80)
      {
        v179[0] = MEMORY[0x277D84F90];
        sub_22BD27E90(0, v80, 0);
        v81 = v179[0];
        v82 = v79 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
        v83 = *(v171 + 72);
        v84 = v174;
        do
        {
          sub_22BCBA9C0();
          v38[*(v84 + 48)] = 66;
          v179[0] = v81;
          v86 = *(v81 + 16);
          v85 = *(v81 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_22BD27E90(v85 > 1, v86 + 1, 1);
            v84 = v174;
            v81 = v179[0];
          }

          *(v81 + 16) = v86 + 1;
          sub_22BC8D26C();
          v82 += v83;
          --v80;
        }

        while (v80);
      }

      return v81;
    case 3:
      v87 = v177;
      v88 = *(v177 + 16);
      v81 = MEMORY[0x277D84F90];
      if (v88)
      {
        v179[0] = MEMORY[0x277D84F90];
        sub_22BD27E90(0, v88, 0);
        v81 = v179[0];
        v89 = v87 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
        v90 = *(v171 + 72);
        v91 = v174;
        do
        {
          sub_22BCBA9C0();
          v32[*(v91 + 48)] = 67;
          v179[0] = v81;
          v93 = *(v81 + 16);
          v92 = *(v81 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_22BD27E90(v92 > 1, v93 + 1, 1);
            v91 = v174;
            v81 = v179[0];
          }

          *(v81 + 16) = v93 + 1;
          sub_22BC8D26C();
          v89 += v90;
          --v88;
        }

        while (v88);
      }

      return v81;
    default:
      v68 = *v47;
      if ((*v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_65;
      }

      v69 = *(v177 + 16);
      if (v68 >= v69)
      {
LABEL_65:
        __break(1u);
        return result;
      }

      v175 = (*(v171 + 80) + 32) & ~*(v171 + 80);
      v70 = v177 + v175;
      v71 = *(v171 + 72);
      sub_22BCBA9C0();
      v72 = 0;
      v173 = MEMORY[0x277D84F90];
      v177 = v71;
LABEL_11:
      v73 = v70 + v71 * v72;
      while (v69 != v72)
      {
        *v19 = v72;
        sub_22BCBA9C0();
        sub_22BC8D26C();
        if (*v21 != v68)
        {
          sub_22BC8D26C();
          v74 = v173;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v179[0] = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22BD27E50(0, *(v74 + 16) + 1, 1);
            v74 = v179[0];
          }

          v77 = *(v74 + 16);
          v76 = *(v74 + 24);
          v78 = v77 + 1;
          if (v77 >= v76 >> 1)
          {
            v173 = v77 + 1;
            v171 = v77;
            sub_22BD27E50(v76 > 1, v77 + 1, 1);
            v78 = v173;
            v74 = v179[0];
          }

          ++v72;
          *(v74 + 16) = v78;
          v173 = v74;
          sub_22BC8D26C();
          v71 = v177;
          goto LABEL_11;
        }

        sub_22BB58728(v21, &qword_27D8E3EF0, &unk_22BDCD6E0);
        v73 += v177;
        ++v72;
      }

      v117 = *(v173 + 16);
      if (v117)
      {
        v171 = v29;
        v179[0] = MEMORY[0x277D84F90];
        v118 = v173;
        sub_22BD27DB8(0, v117, 0);
        v119 = v179[0];
        v120 = v118 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
        v121 = *(v169 + 72);
        do
        {
          sub_22BC5E5C4();
          sub_22BC8D26C();
          sub_22BCBA968();
          v179[0] = v119;
          v123 = *(v119 + 16);
          v122 = *(v119 + 24);
          if (v123 >= v122 >> 1)
          {
            sub_22BD27DB8(v122 > 1, v123 + 1, 1);
            v119 = v179[0];
          }

          *(v119 + 16) = v123 + 1;
          sub_22BCBA968();
          v120 += v121;
          --v117;
        }

        while (v117);

        v29 = v171;
      }

      else
      {

        v119 = MEMORY[0x277D84F90];
      }

      sub_22BBE6DE0(&qword_27D8E3F00, &unk_22BDCD700);
      v141 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v178 = *(v29 + 72);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_22BDBCBD0;
      v143 = *(v174 + 48);
      sub_22BCBA9C0();
      *(v142 + v141 + v143) = 64;
      v144 = *(v119 + 16);
      v145 = v161;
      v146 = v177;
      if (v144)
      {
        v176 = v142;
        v179[0] = MEMORY[0x277D84F90];
        sub_22BD27E90(0, v144, 0);
        v147 = v179[0];
        v148 = v174;
        v149 = v119 + v175;
        do
        {
          sub_22BCBA9C0();
          v145[*(v148 + 48)] = 65;
          v179[0] = v147;
          v150 = v145;
          v152 = *(v147 + 16);
          v151 = *(v147 + 24);
          if (v152 >= v151 >> 1)
          {
            sub_22BD27E90(v151 > 1, v152 + 1, 1);
            v148 = v174;
            v147 = v179[0];
          }

          *(v147 + 16) = v152 + 1;
          sub_22BC8D26C();
          v149 += v146;
          --v144;
          v145 = v150;
        }

        while (v144);

        v142 = v176;
      }

      else
      {

        v147 = MEMORY[0x277D84F90];
      }

      v179[0] = v142;
      sub_22BD66B28(v147);
      sub_22BCBAA18(v172, type metadata accessor for FeedbackLearning.CandidateDefinition);
      return v179[0];
  }
}

uint64_t sub_22BCB9AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v107 = sub_22BDB77D4();
  v106 = *(v107 - 8);
  v5 = MEMORY[0x28223BE20](v107);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v100 - v8;
  v119 = sub_22BDBA994();
  v112 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22BDBA594();
  v110 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22BDBA014();
  v108 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  v130 = *(v136 - 8);
  v12 = MEMORY[0x28223BE20](v136);
  v132 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v100 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v100 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v126 = &v100 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v100 - v20;
  v129 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v133 = *(v129 - 8);
  v22 = MEMORY[0x28223BE20](v129);
  v102 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v100 - v25;
  MEMORY[0x28223BE20](v24);
  v134 = &v100 - v27;
  v28 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v128 = &v100 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v100 - v34;
  v36 = sub_22BDB7B44();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v125 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v100 - v40;
  v105 = a1;
  sub_22BCE19F0();
  if (sub_22BB3AA28(v35, 1, v36) == 1)
  {
    sub_22BB58728(v35, &qword_27D8E3E60, &qword_22BDC23E0);
    sub_22BDB6404();
    v42 = sub_22BDB77C4();
    v43 = sub_22BDBB114();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v7;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22BB2C000, v42, v43, "Cannot extract selected value for a disambiguation, selected value is not candidateId extractable", v45, 2u);
      v46 = v45;
      v7 = v44;
      MEMORY[0x2318A6080](v46, -1, -1);
    }

    (*(v106 + 8))(v7, v107);
    v47 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
    return sub_22BB336D0(a3, 1, 1, v47);
  }

  v100 = a3;
  v104 = v37;
  v49 = *(v37 + 32);
  v103 = v41;
  v123 = v49;
  v124 = v37 + 32;
  v50 = (v49)(v41, v35, v36);
  v51 = *(v120 + 16);
  v52 = MEMORY[0x277D84F90];
  v135 = v36;
  if (!v51)
  {
LABEL_19:
    MEMORY[0x28223BE20](v50);
    v77 = v103;
    *(&v100 - 2) = v103;
    sub_22BDA25D0();
    v79 = v78;
    v80 = *(v78 + 16);
    if (v80)
    {
      v137 = MEMORY[0x277D84F90];
      sub_22BD27DB8(0, v80, 0);
      v81 = v137;
      v82 = *(v130 + 80);
      v134 = v79;
      v83 = v79 + ((v82 + 32) & ~v82);
      v84 = *(v130 + 72);
      v85 = (v104 + 8);
      do
      {
        sub_22BC5E5C4();
        v86 = v132;
        sub_22BC8D26C();
        v87 = *(v136 + 48);
        sub_22BCBA968();
        (*v85)(&v86[v87], v135);
        v137 = v81;
        v89 = *(v81 + 16);
        v88 = *(v81 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_22BD27DB8(v88 > 1, v89 + 1, 1);
          v81 = v137;
        }

        *(v81 + 16) = v89 + 1;
        sub_22BCBA968();
        v83 += v84;
        --v80;
      }

      while (v80);

      v90 = v104;
      v77 = v103;
    }

    else
    {

      v81 = MEMORY[0x277D84F90];
      v90 = v104;
    }

    v97 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
    v98 = *(v97 + 48);
    v99 = v100;
    sub_22BCBA9C0();
    *(v99 + v98) = v81;
    sub_22BB336D0(v99, 0, 1, v97);
    return (*(v90 + 8))(v77, v135);
  }

  v53 = v36;
  v122 = v31;
  v54 = v120 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
  v120 = *(v133 + 72);
  v113 = (v112 + 32);
  v112 += 8;
  v111 = (v110 + 4);
  ++v110;
  v109 = (v108 + 32);
  v108 += 8;
  v121 = v26;
  while (1)
  {
    sub_22BCBA9C0();
    sub_22BCBA9C0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v56 = v122;
      if (EnumCaseMultiPayload == 1)
      {
        v57 = v116;
        v58 = v117;
        (*v111)(v116, v26, v117);
        sub_22BCB4048();
        (*v110)(v57, v58);
        goto LABEL_13;
      }

      v59 = v118;
      v60 = v119;
      (*v113)(v118, v26, v119);
      sub_22BDBA964();
      v61 = &v139;
    }

    else
    {
      v59 = v114;
      v60 = v115;
      (*v109)(v114, v26, v115);
      v56 = v122;
      sub_22BDBA004();
      v61 = &v138;
    }

    (**(v61 - 32))(v59, v60);
    sub_22BB336D0(v56, 0, 1, v53);
LABEL_13:
    v62 = v128;
    sub_22BC8D26C();
    if (sub_22BB3AA28(v62, 1, v53) == 1)
    {
      break;
    }

    v63 = v51;
    v64 = v52;
    v65 = v125;
    v66 = v53;
    v67 = v53;
    v68 = v123;
    v123(v125, v62, v66);
    v69 = *(v136 + 48);
    v70 = v21;
    v71 = v126;
    sub_22BCBA968();
    v72 = v65;
    v52 = v64;
    v68(&v71[v69], v72, v67);
    v21 = v70;
    sub_22BC8D26C();
    sub_22BC5E5C4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD8FEA4();
      v52 = v75;
    }

    v73 = v63;
    v74 = *(v52 + 16);
    v26 = v121;
    if (v74 >= *(v52 + 24) >> 1)
    {
      sub_22BD8FEA4();
      v52 = v76;
    }

    sub_22BB58728(v21, &qword_27D8E3F08, &unk_22BDD0430);
    *(v52 + 16) = v74 + 1;
    v50 = sub_22BC8D26C();
    v54 += v120;
    v51 = v73 - 1;
    v53 = v135;
    if (!v51)
    {
      goto LABEL_19;
    }
  }

  v91 = v53;
  sub_22BCBAA18(v134, type metadata accessor for FeedbackLearning.CandidateDefinition);
  sub_22BB58728(v62, &qword_27D8E3E60, &qword_22BDC23E0);

  v92 = v101;
  sub_22BDB6404();
  v93 = sub_22BDB77C4();
  v94 = sub_22BDBB114();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_22BB2C000, v93, v94, "Cannot extract selected value for a disambiguation, not all items are candidateId extractable", v95, 2u);
    MEMORY[0x2318A6080](v95, -1, -1);
  }

  (*(v106 + 8))(v92, v107);
  v96 = sub_22BBE6DE0(&qword_27D8E3EF8, qword_22BDC14A0);
  sub_22BB336D0(v100, 1, 1, v96);
  return (*(v104 + 8))(v103, v91);
}

BOOL sub_22BCBA8E4(uint64_t a1, uint64_t a2)
{
  sub_22BBE6DE0(&qword_27D8E3F08, &unk_22BDD0430);
  sub_22BDB7B44();
  sub_22BCBAA90();
  return (sub_22BDBABD4() & 1) == 0;
}

uint64_t sub_22BCBA968()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BCBA9C0()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BCBAA18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22BCBAA90()
{
  result = qword_27D8E3078;
  if (!qword_27D8E3078)
  {
    sub_22BDB7B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3078);
  }

  return result;
}

uint64_t sub_22BCBAAE8(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      switch(*a1)
      {
        case 0x81:
          if (v3 != 129)
          {
            return 0;
          }

          goto LABEL_13;
        case 0x82:
          if (v3 != 130)
          {
            return 0;
          }

          goto LABEL_13;
        case 0x83:
          if (v3 != 131)
          {
            return 0;
          }

          goto LABEL_13;
        default:
          if (v3 != 128)
          {
            return 0;
          }

          goto LABEL_13;
      }
    }

    v4 = v3 & 0xC0;
    v5 = (v3 ^ v2) & 0x3F;
    if (v4 != 64 || v5 != 0)
    {
      return 0;
    }
  }

  else if (v3 > 0x3F || v2 != v3)
  {
    return 0;
  }

LABEL_13:
  _s15CandidateResultVMa(0);
  static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return sub_22BDB7B04();
}

unint64_t sub_22BCBABF8()
{
  sub_22BDBB334();

  _s15CandidateResultVMa(0);
  sub_22BDB7B44();
  sub_22BCBAD4C();
  v0 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v0);

  MEMORY[0x2318A4C40](0x6D6F6374756F202CLL, 0xEB00000000203A65);
  v1 = FeedbackLearning.CandidateOutcome.description.getter();
  MEMORY[0x2318A4C40](v1);

  MEMORY[0x2318A4C40](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t _s15CandidateResultVMa(uint64_t a1)
{
  result = qword_27D8E3F10;
  if (!qword_27D8E3F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BCBAD4C()
{
  result = qword_27D8E3E70;
  if (!qword_27D8E3E70)
  {
    sub_22BDB7B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3E70);
  }

  return result;
}

uint64_t sub_22BCBADCC(uint64_t a1)
{
  result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
  if (v2 <= 0x3F)
  {
    result = sub_22BDB7B44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BCBAE60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB30444();
  v104 = v5;
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = _s19ValueStepEvaluationVMa(0);
  sub_22BB30444();
  v99 = v8;
  MEMORY[0x28223BE20](v9);
  v94 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB4C34();
  sub_22BB30444();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v95 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v85 - v17;
  v19 = sub_22BDB77D4();
  sub_22BB30444();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v85 - v26;
  v107 = a1;

  sub_22BDA280C(sub_22BCBB8F8, v106, a2);
  v29 = v28;
  sub_22BDB6404();
  v30 = *(v13 + 16);
  v86 = a1;
  v31 = a1;
  v32 = v29;
  v85[1] = v13 + 16;
  v85[0] = v30;
  v30(v18, v31, v11);

  v102 = v27;
  v33 = sub_22BDB77C4();
  LODWORD(v29) = sub_22BDBB0F4();

  LODWORD(v98) = v29;
  v101 = v33;
  v34 = os_log_type_enabled(v33, v29);
  v100 = v32;
  v89 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v108[0] = v97;
    *v35 = 136315394;
    sub_22BCBBA38();
    v36 = sub_22BDBB684();
    v38 = v37;
    v39 = sub_22BB33D28();
    v40(v39);
    v41 = sub_22BB32EE0(v36, v38, v108);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = MEMORY[0x2318A4D50](v100, v103);
    v44 = sub_22BB32EE0(v42, v43, v108);

    *(v35 + 14) = v44;
    v45 = v101;
    _os_log_impl(&dword_22BB2C000, v101, v98, "Matching step evaluations for statementId=%s: %s", v35, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    v32 = v100;
    sub_22BB30AF0();
  }

  else
  {

    v46 = sub_22BB33D28();
    v47(v46);
  }

  v88 = *(v21 + 8);
  v88(v102, v19);
  v49 = v94;
  v48 = v95;
  v98 = *(v32 + 16);
  if (v98)
  {
    v103 = &v94[v103[6]];
    v50 = _s25ValueDisambiguationResultVMa(0);
    v51 = 0;
    v52 = *(v50 + 20);
    v96 = v32 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v97 = v52;
    v53 = MEMORY[0x277D84F90];
    v92 = v21;
    v93 = v19;
    v90 = v11;
    v91 = v25;
    while (v51 < *(v32 + 16))
    {
      v101 = v51;
      v102 = v53;
      sub_22BCBB918(v96 + *(v99 + 72) * v51, v49, _s19ValueStepEvaluationVMa);
      v54 = *v103;
      v55 = *(*v103 + 16);
      if (v55)
      {
        v108[0] = MEMORY[0x277D84F90];
        sub_22BD27DB8(0, v55, 0);
        v56 = v108[0];
        v57 = sub_22BDBA594();
        v58 = *(v57 - 8);
        v59 = *(v58 + 16);
        v60 = v54 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v61 = *(v58 + 72);
        do
        {
          v59(v7, v60, v57);
          swift_storeEnumTagMultiPayload();
          v108[0] = v56;
          v63 = *(v56 + 16);
          v62 = *(v56 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_22BD27DB8(v62 > 1, v63 + 1, 1);
            v56 = v108[0];
          }

          *(v56 + 16) = v63 + 1;
          sub_22BCBB978(v7, v56 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v63);
          v60 += v61;
          --v55;
        }

        while (v55);
        v19 = v93;
        v11 = v90;
        v25 = v91;
        v49 = v94;
        v48 = v95;
      }

      sub_22BCB7C08();
      v65 = v64;

      sub_22BCBB9DC(v49);
      if (v65)
      {
        v66 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD8FD18();
          v66 = v69;
        }

        v67 = *(v66 + 2);
        v68 = v66;
        if (v67 >= *(v66 + 3) >> 1)
        {
          sub_22BD8FD18();
          v68 = v70;
        }

        *(v68 + 16) = v67 + 1;
        v53 = v68;
        *(v68 + 8 * v67 + 32) = v65;
      }

      else
      {
        v53 = v102;
      }

      v32 = v100;
      v51 = (&v101->isa + 1);
      if (&v101->isa + 1 == v98)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
LABEL_23:
    sub_22BDB6404();
    (v85[0])(v48, v86, v11);

    v71 = v53;
    v72 = sub_22BDB77C4();
    v73 = v11;
    v74 = sub_22BDBB0F4();

    if (os_log_type_enabled(v72, v74))
    {
      v75 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v108[0] = v105;
      *v75 = 136315394;
      sub_22BCBBA38();
      v76 = sub_22BDBB684();
      v77 = v48;
      v79 = v78;
      v87(v77, v73);
      v80 = sub_22BB32EE0(v76, v79, v108);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      v81 = sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
      v82 = MEMORY[0x2318A4D50](v71, v81);
      v84 = sub_22BB32EE0(v82, v83, v108);
      v53 = v71;

      *(v75 + 14) = v84;
      _os_log_impl(&dword_22BB2C000, v72, v74, "Generated candidate results for statementId=%s: %s", v75, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v87(v48, v73);
    }

    v88(v25, v19);
    sub_22BCDFC54(v53);
  }
}

uint64_t sub_22BCBB744@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB4C34();
  sub_22BB2F330();
  v8 = *(v7 + 16);
  v8(a3, a2, v6);
  v9 = _s16CandidateSummaryVMa(0);
  v8(a3 + v9[5], a2, v6);
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v10 = _s15CandidateResultVMa(0);
  sub_22BCBB918(&a1[*(v10 + 20)], a3 + v9[6], type metadata accessor for FeedbackLearning.CandidateDefinition);
  v11 = *(v10 + 24);
  v12 = v9[7];
  sub_22BDB7B44();
  sub_22BB2F330();
  (*(v13 + 16))(a3 + v12, &a1[v11]);
  *(a3 + v9[8]) = *a1;
  *(a3 + v9[9]) = 1;
  return sub_22BB336D0(a3, 0, 1, v9);
}

uint64_t sub_22BCBB918(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCBB978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBB9DC(uint64_t a1)
{
  v2 = _s19ValueStepEvaluationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BCBBA38()
{
  result = qword_27D8E2F68;
  if (!qword_27D8E2F68)
  {
    sub_22BDB4C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2F68);
  }

  return result;
}

uint64_t sub_22BCBBA90(uint64_t a1, uint64_t a2)
{
  v4 = _s12ValueFetcherV14ValueStatementVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBBAF4(uint64_t a1)
{
  v2 = _s12ValueFetcherV14ValueStatementVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCBBB60(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = sub_22BDBA594();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCBBBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = _s23StatementStepEvaluationOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v4);
  sub_22BB30560();
  v156 = v5;
  MEMORY[0x28223BE20](v6);
  v155 = &v135 - v7;
  sub_22BB2F120();
  v141 = sub_22BDB8B14();
  sub_22BB30444();
  v140 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v139 = v10;
  sub_22BB2F120();
  v146 = sub_22BDB8B84();
  sub_22BB30444();
  v145 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v144 = v13;
  v14 = sub_22BB2F120();
  v149 = _s26PromptStatementStepBuilderV10ResolutionOMa(v14);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v151 = v16;
  sub_22BB2F120();
  sub_22BDB4C34();
  sub_22BB30444();
  v152 = v18;
  v153 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v150 = v19;
  sub_22BB2F120();
  v20 = sub_22BDB8584();
  sub_22BB30444();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  v147 = v24;
  sub_22BB2F120();
  sub_22BDB80F4();
  sub_22BB30444();
  v157 = v25;
  v158 = v26;
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  v159 = v27;
  v28 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v29 = sub_22BB2F0C8(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  v154 = v30;
  MEMORY[0x28223BE20](v31);
  v160 = &v135 - v32;
  v33 = sub_22BBE6DE0(&qword_27D8E3F38, &unk_22BDC1590);
  v34 = sub_22BB2F0C8(v33);
  MEMORY[0x28223BE20](v34);
  v161 = &v135 - v35;
  sub_22BB2F120();
  v36 = sub_22BDB89F4();
  sub_22BB30444();
  v163 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v39);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v40);
  v162 = &v135 - v41;
  v42 = sub_22BB2F120();
  _s9PlanEventVMa(v42);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v43);
  v45 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB77D4();
  sub_22BB30444();
  v167 = v46;
  v168 = v47;
  MEMORY[0x28223BE20](v46);
  sub_22BB30560();
  v165 = v48;
  MEMORY[0x28223BE20](v49);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v50);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v51);
  v53 = &v135 - v52;
  sub_22BDB6404();
  sub_22BB30D0C();
  v169 = a1;
  sub_22BCBD384(a1, v45, v54);
  v55 = sub_22BDB77C4();
  v56 = sub_22BDBB104();
  v57 = os_log_type_enabled(v55, v56);
  v164 = v36;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v136 = v20;
    v59 = v58;
    v60 = swift_slowAlloc();
    sub_22BB2F4E0(v60);
    *v59 = 136315138;
    sub_22BDB9914();
    v61 = MEMORY[0x2318A4D50]();
    v135 = v22;
    v63 = v62;

    sub_22BB35B00();
    sub_22BCBD3E0(v45, v64);
    v65 = sub_22BB32EE0(v61, v63, &v170);
    v22 = v135;

    *(v59 + 4) = v65;
    _os_log_impl(&dword_22BB2C000, v55, v56, "Evaluating a plan for a dialog response, plan=%s", v59, 0xCu);
    sub_22BB32FA4(v3);
    v3 = v142;
    sub_22BB30AF0();
    v20 = v136;
    sub_22BB30AF0();
  }

  else
  {

    sub_22BB35B00();
    sub_22BCBD3E0(v45, v66);
  }

  v67 = v167;
  v68 = *(v168 + 8);
  v68(v53, v167);
  v69 = *(sub_22BDB9914() + 16);

  if (v69 != 1)
  {
LABEL_7:
    v73 = v165;
    sub_22BDB6404();
    v74 = sub_22BDB77C4();
    v75 = sub_22BDBB104();
    if (sub_22BB3805C(v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_22BB2C000, v74, v75, "The plan does not contain a dialog response command - expecting a single statement, skipping", v76, 2u);
      sub_22BB30AF0();
    }

    v68(v73, v67);
    return sub_22BB336D0(v166, 1, 1, v3);
  }

  v136 = v68;
  v70 = sub_22BDB9914();
  v71 = v161;
  sub_22BC7419C(v70, v161);

  v72 = v164;
  if (sub_22BB3AA28(v71, 1, v164) == 1)
  {
    sub_22BB58728(v71, &qword_27D8E3F38, &unk_22BDC1590);
    v68 = v136;
    goto LABEL_7;
  }

  (*(v163 + 32))(v162, v71, v72);
  v78 = v159;
  sub_22BDB89D4();
  v79 = v157;
  v80 = sub_22BB31F54();
  v82 = v81(v80);
  if (v82 == *MEMORY[0x277D1DA88])
  {
    v83 = sub_22BB31F54();
    v84(v83);
    v85 = v22;
    v86 = *(v22 + 32);
    v87 = v147;
    v86(v147, v78, v20);
    sub_22BB3A64C();
    MEMORY[0x2318A2530]();
    *v151 = sub_22BDB8574();
    sub_22BB356C8();
    swift_storeEnumTagMultiPayload();
    v88 = v160;
    sub_22BB310D4();
    sub_22BB322F8();
    v89 = sub_22BB36288();
    v90(v89);
    v72 = v164;
    (*(v85 + 8))(v87, v20);
LABEL_16:
    v104 = v163;
    v105 = v154;
    goto LABEL_17;
  }

  v88 = v160;
  if (v82 == *MEMORY[0x277D1DAD8])
  {
    v91 = v79;
    v92 = v159;
    (*(v158 + 96))(v159, v91);
    v93 = v145;
    v94 = v144;
    v95 = v146;
    (*(v145 + 32))(v144, v92, v146);
    sub_22BB3A64C();
    MEMORY[0x2318A2B40]();
    sub_22BB356C8();
    swift_storeEnumTagMultiPayload();
    sub_22BB310D4();
    sub_22BB322F8();
    v96 = sub_22BB36288();
    v97(v96);
    (*(v93 + 8))(v94, v95);
    goto LABEL_16;
  }

  if (v82 == *MEMORY[0x277D1DAC8])
  {
    v98 = v159;
    (*(v158 + 96))(v159, v157);
    v99 = v140;
    v100 = v139;
    v101 = v141;
    (*(v140 + 32))(v139, v98, v141);
    sub_22BB3A64C();
    MEMORY[0x2318A2AD0]();
    sub_22BB356C8();
    swift_storeEnumTagMultiPayload();
    sub_22BB310D4();
    sub_22BB322F8();
    v102 = sub_22BB36288();
    v103(v102);
    (*(v99 + 8))(v100, v101);
    goto LABEL_16;
  }

  v123 = v143;
  sub_22BDB6404();
  v104 = v163;
  v124 = *(v163 + 16);
  v125 = v138;
  v124(v138, v162, v72);
  v126 = sub_22BDB77C4();
  v127 = sub_22BDBB104();
  if (sub_22BB3805C(v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    sub_22BB2F4E0(v129);
    *v128 = 136315138;
    v124(v137, v125, v72);
    v130 = sub_22BDBAC14();
    v132 = v131;
    (*(v104 + 8))(v125, v72);
    v133 = sub_22BB32EE0(v130, v132, &v170);

    *(v128 + 4) = v133;
    _os_log_impl(&dword_22BB2C000, v126, v127, "%s is not a builtin command for a dialog response, skipping", v128, 0xCu);
    sub_22BB32FA4(v3);
    v3 = v142;
    sub_22BB30AF0();
    sub_22BB30AF0();

    sub_22BB38D80();
    v134 = v143;
  }

  else
  {

    (*(v104 + 8))(v125, v72);
    sub_22BB38D80();
    v134 = v123;
  }

  v67 = v167;
  v136(v134, v167);
  v105 = v154;
  v88 = v160;
  sub_22BB336D0(v160, 1, 1, v3);
  (*(v158 + 8))(v159, v157);
LABEL_17:
  v106 = sub_22BB31F54();
  sub_22BC7E3C4(v106, v107, v108, v109);
  if (sub_22BB3AA28(v105, 1, v3) == 1)
  {
    (*(v104 + 8))(v162, v72);
    sub_22BB58728(v105, &qword_27D8E3E10, &qword_22BDC1258);
  }

  else
  {
    v110 = v155;
    sub_22BCBD328(v105, v155, _s23StatementStepEvaluationOMa);
    v111 = v148;
    sub_22BDB6404();
    sub_22BCBD384(v110, v156, _s23StatementStepEvaluationOMa);
    v112 = sub_22BDB77C4();
    v113 = sub_22BDBB104();
    if (sub_22BB3805C(v113))
    {
      v114 = swift_slowAlloc();
      v115 = v156;
      v116 = v114;
      v117 = v67;
      v118 = swift_slowAlloc();
      v170 = v118;
      *v116 = 136315138;
      v119 = sub_22BCC87B8();
      v121 = v120;
      sub_22BCBD3E0(v115, _s23StatementStepEvaluationOMa);
      v122 = sub_22BB32EE0(v119, v121, &v170);

      *(v116 + 4) = v122;
      _os_log_impl(&dword_22BB2C000, v112, v113, "Generated a user dialog response from a plan: %s", v116, 0xCu);
      sub_22BB32FA4(v118);
      sub_22BB30AF0();
      sub_22BB30AF0();

      sub_22BB38D80();
      v136(v148, v117);
    }

    else
    {

      sub_22BCBD3E0(v156, _s23StatementStepEvaluationOMa);
      sub_22BB38D80();
      v136(v111, v67);
    }

    sub_22BCBD3E0(v155, _s23StatementStepEvaluationOMa);
    (*(v163 + 8))(v162, v72);
    v88 = v160;
  }

  return sub_22BCBD2B8(v88, v166);
}

uint64_t sub_22BCBCA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a3;
  v82 = a2;
  v84 = a4;
  v6 = _s9PlanEventVMa(0);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v78 = v8;
  sub_22BB2F120();
  sub_22BDB4C34();
  sub_22BB30444();
  v76 = v10;
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v83 = v11;
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v80 = v13;
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v79 = v14;
  sub_22BB2F120();
  sub_22BDB90B4();
  sub_22BB30444();
  v73 = v16;
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  v72 = v17;
  v18 = sub_22BB2F120();
  v71 = _s26PromptStatementStepBuilderVMa(v18);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s20StatementResultEventVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  v70 = v24;
  v25 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v26 = sub_22BB2F0C8(v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v69 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v69 - v33;
  v86[0] = *sub_22BB69FEC((v4 + 16), *(v4 + 40));
  v35 = a1;
  v85 = a1;

  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BCBD20C();
  sub_22BDB9074();

  sub_22BB35F74(v32);
  if (v36)
  {
    v37 = sub_22BB69FEC((v4 + 16), *(v4 + 40));
    v40 = v82;
    sub_22BCBE5EC(*v37, v34, v82, a1);
    sub_22BB35F74(v32);
    v39 = v34;
    if (!v36)
    {
      sub_22BB58728(v32, &qword_27D8E3DE8, &unk_22BDC1220);
    }
  }

  else
  {
    sub_22BB32780();
    sub_22BCBD328(v32, v34, v38);
    sub_22BB336D0(v34, 0, 1, v22);
    v39 = v34;
    v40 = v82;
  }

  sub_22BC7E3C4(v39, v29, &qword_27D8E3DE8, &unk_22BDC1220);
  sub_22BB35F74(v29);
  v41 = v83;
  if (v36)
  {
    sub_22BB58728(v29, &qword_27D8E3DE8, &unk_22BDC1220);
    v42 = v79;
    sub_22BDB6404();
    v43 = v76;
    v44 = v77;
    (*(v76 + 16))(v41, v35, v77);
    sub_22BB30D0C();
    v45 = v78;
    sub_22BCBD384(v40, v78, v46);
    v47 = sub_22BDB77C4();
    v48 = sub_22BDBB114();
    if (sub_22BB3805C(v48))
    {
      v49 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86[0] = v82;
      *v49 = 136315394;
      sub_22BCBD270(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v50 = sub_22BDBB684();
      v51 = v43;
      v53 = v52;
      (*(v51 + 8))(v41, v44);
      v54 = sub_22BB32EE0(v50, v53, v86);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      sub_22BDB43E4();
      sub_22BCBD270(&qword_28142DD38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = sub_22BDBB684();
      v57 = v56;
      sub_22BB35B00();
      sub_22BCBD3E0(v45, v58);
      v59 = sub_22BB32EE0(v55, v57, v86);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_22BB2C000, v47, v48, "Cannot retrieve statement result with id %s referenced in a plan with eventId=%s, skipping", v49, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      sub_22BB35B00();
      sub_22BCBD3E0(v45, v67);
      (*(v43 + 8))(v41, v44);
    }

    (*(v80 + 8))(v42, v81);
    sub_22BB58728(v39, &qword_27D8E3DE8, &unk_22BDC1220);
    v68 = _s23StatementStepEvaluationOMa(0);
    return sub_22BB336D0(v84, 1, 1, v68);
  }

  else
  {
    sub_22BB32780();
    v60 = v70;
    sub_22BCBD328(v29, v70, v61);
    sub_22BDB8784();
    v62 = v71;
    sub_22BDB8794();
    v63 = *(v62 + 24);
    sub_22BDB43E4();
    sub_22BB2F330();
    (*(v64 + 16))(&v21[v63], v60);
    v65 = v72;
    sub_22BDB87E4();
    sub_22BDB9094();
    (*(v73 + 8))(v65, v74);
    sub_22BCBD384(v75, &v21[*(v62 + 32)], _s26PromptStatementStepBuilderV10ResolutionOMa);
    sub_22BCBED20(v84);
    sub_22BCBD3E0(v21, _s26PromptStatementStepBuilderVMa);
    sub_22BCBD3E0(v60, _s20StatementResultEventVMa);
    return sub_22BB58728(v39, &qword_27D8E3DE8, &unk_22BDC1220);
  }
}

uint64_t sub_22BCBD1B8()
{
  sub_22BB32FA4((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_22BCBD20C()
{
  result = qword_27D8E2F90;
  if (!qword_27D8E2F90)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2F90);
  }

  return result;
}

uint64_t sub_22BCBD270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BCBD2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBD328(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BCBD384(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BCBD3E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCBD438@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (sub_22BD84660(), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = _s23StatementStepEvaluationOMa(0);
    sub_22BCBD4E8(v8 + *(*(v9 - 8) + 72) * v7, a2);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = _s23StatementStepEvaluationOMa(0);
    v10 = a2;
    v11 = 1;
  }

  return sub_22BB336D0(v10, v11, 1, v12);
}

uint64_t sub_22BCBD4E8(uint64_t a1, uint64_t a2)
{
  v4 = _s23StatementStepEvaluationOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBD54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_22BDB43E4();
  sub_22BB30444();
  v82 = v5;
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v77 = v6;
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v78 = v8;
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v80 = v9;
  sub_22BB2F120();
  sub_22BDB90B4();
  sub_22BB30444();
  v75 = v11;
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v73 = v12;
  v13 = sub_22BB2F120();
  v72 = _s26PromptStatementStepBuilderVMa(v13);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v14);
  sub_22BB305A8();
  v74 = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v17 = sub_22BB2F0C8(v16);
  MEMORY[0x28223BE20](v17);
  v19 = (&v70 - v18);
  v81 = _s20StatementResultEventVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  v70 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v71 = &v70 - v24;
  v25 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v26 = sub_22BB2F0C8(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BB30C74();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  v33 = _s23StatementStepEvaluationOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v34);
  sub_22BB30C74();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v70 - v39;
  v41 = a1;
  sub_22BCD0120(v32);
  if (sub_22BB3AA28(v32, 1, v33) != 1)
  {
    sub_22BB32320();
    sub_22BCBEAB4(v32, v40, v59);
    v60 = v84;
    sub_22BCBEAB4(v40, v84, v19);
    v61 = v60;
LABEL_8:
    v63 = 0;
    return sub_22BB336D0(v61, v63, 1, v33);
  }

  v42 = v84;
  sub_22BB58728(v32, &qword_27D8E3E10, &qword_22BDC1258);
  sub_22BCBD438(v29);
  if (sub_22BB3AA28(v29, 1, v33) != 1)
  {
    sub_22BB32320();
    sub_22BCBEAB4(v29, v37, v62);
    sub_22BCBEAB4(v37, v42, v19);
    v61 = v42;
    goto LABEL_8;
  }

  sub_22BB58728(v29, &qword_27D8E3E10, &qword_22BDC1258);
  v43 = sub_22BB69FEC((v2 + 16), *(v2 + 40));
  sub_22BCBDC1C(a1, *v43, v19);
  if (sub_22BB3AA28(v19, 1, v81) != 1)
  {
    v65 = v71;
    sub_22BCBEAB4(v19, v71, _s20StatementResultEventVMa);
    v66 = v70;
    sub_22BCBE9F8(v65, v70);
    v67 = v72;
    _s26PromptStatementStepBuilderV10ResolutionOMa(0);
    v68 = v74;
    swift_storeEnumTagMultiPayload();
    sub_22BDB8784();
    sub_22BDB8794();
    (*(v82 + 16))(v68 + *(v67 + 24), v66, v83);
    v69 = v73;
    sub_22BDB87E4();
    sub_22BDB9094();
    (*(v75 + 8))(v69, v76);
    sub_22BCBEA5C(v66, _s20StatementResultEventVMa);
    sub_22BCBED20(v42);
    sub_22BCBEA5C(v68, _s26PromptStatementStepBuilderVMa);
    return sub_22BCBEA5C(v65, _s20StatementResultEventVMa);
  }

  sub_22BB58728(v19, &qword_27D8E3DE8, &unk_22BDC1220);
  v44 = v80;
  sub_22BDB6404();
  v46 = v82;
  v45 = v83;
  v47 = v77;
  (*(v82 + 16))(v77, v41, v83);
  v48 = sub_22BDB77C4();
  v49 = sub_22BDBB114();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v85 = v51;
    *v50 = 136315138;
    sub_22BC728D4();
    v52 = sub_22BDBB684();
    v53 = v47;
    v55 = v54;
    (*(v46 + 8))(v53, v45);
    v56 = sub_22BB32EE0(v52, v55, &v85);

    *(v50 + 4) = v56;
    sub_22BB37744(&dword_22BB2C000, v57, v58, "Cannot find statement result event for statementEventId=%s to mark as abandoned");
    sub_22BB32FA4(v51);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v78 + 8))(v80, v79);
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    (*(v78 + 8))(v44, v79);
  }

  v61 = v42;
  v63 = 1;
  return sub_22BB336D0(v61, v63, 1, v33);
}

uint64_t sub_22BCBDC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  sub_22BDB43E4();
  sub_22BB30444();
  v75 = v6;
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v71 = v7;
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v73 = v9;
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v72 = v10;
  sub_22BB2F120();
  sub_22BDB87F4();
  sub_22BB30444();
  v68 = v12;
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v67 = v13;
  sub_22BB2F120();
  v70 = sub_22BDB9B14();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  v20 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v21 = sub_22BB2F0C8(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v25 = sub_22BB2F0C8(v24);
  MEMORY[0x28223BE20](v25);
  v27 = (&v66 - v26);
  v28 = sub_22BDB9B54();
  sub_22BB30444();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v34 = v33 - v32;
  v81 = a1;
  v82[0] = a2;
  v35 = sub_22BD76D2C(sub_22BCBEB14, v80, a2);
  v79 = v82;
  sub_22BD5DE2C(sub_22BCBEB34, v35, v36 & 1, v27, v78);
  if (sub_22BB3AA28(v27, 1, v28) == 1)
  {
    sub_22BB58728(v27, &unk_27D8E69E0, &qword_22BDC1660);
    v37 = v72;
    sub_22BDB6404();
    v38 = v75;
    v39 = v71;
    v40 = v76;
    (*(v75 + 16))(v71, a1, v76);
    v41 = sub_22BDB77C4();
    v42 = sub_22BDBB114();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v82[0] = v44;
      *v43 = 136315138;
      sub_22BC728D4();
      v45 = sub_22BDBB684();
      v47 = v46;
      (*(v38 + 8))(v39, v40);
      v48 = sub_22BB32EE0(v45, v47, v82);

      *(v43 + 4) = v48;
      sub_22BB37744(&dword_22BB2C000, v49, v50, "Cannot find statement result for eventId=%s");
      sub_22BB32FA4(v44);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      (*(v38 + 8))(v39, v40);
    }

    (*(v73 + 8))(v37, v74);
    _s20StatementResultEventVMa(0);
    sub_22BB30B28();
    return sub_22BB336D0(v57, v58, v59, v60);
  }

  else
  {
    v74 = a1;
    v51 = v76;
    (*(v30 + 32))(v34, v27, v28);
    sub_22BDB9B24();
    (*(v30 + 8))(v34, v28);
    v52 = v70;
    if ((*(v15 + 88))(v19, v70) == *MEMORY[0x277D1E798])
    {
      (*(v15 + 96))(v19, v52);
      v53 = v69;
      v54 = *(v68 + 32);
      v55 = v67;
      v54(v67, v19, v69);
      (*(v75 + 16))(v23, v74, v51);
      v56 = _s20StatementResultEventVMa(0);
      v54(&v23[*(v56 + 20)], v55, v53);
      sub_22BB336D0(v23, 0, 1, v56);
    }

    else
    {
      _s20StatementResultEventVMa(0);
      sub_22BB30B28();
      sub_22BB336D0(v62, v63, v64, v65);
      (*(v15 + 8))(v19, v52);
    }

    return sub_22BCBEB54(v23, v77);
  }
}

uint64_t sub_22BCBE22C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BDB43E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB8F24();
  v6 = sub_22BDB43B4();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_22BCBE318@<X0>(uint64_t a2@<X8>)
{
  sub_22BDB4C34();
  sub_22BB30444();
  v29 = v3;
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v6 = v5 - v4;
  v7 = sub_22BDB9B14();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  v14 = sub_22BDB87F4();
  sub_22BB30444();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = v19 - v18;
  sub_22BDB9B24();
  if ((*(v9 + 88))(v13, v7) == *MEMORY[0x277D1E798])
  {
    (*(v9 + 96))(v13, v7);
    v21 = *(v16 + 32);
    v21(v20, v13, v14);
    sub_22BDB87A4();
    v22 = sub_22BDB4C04();
    (*(v29 + 8))(v6, v30);
    if (v22)
    {
      sub_22BDB8F24();
      v23 = _s20StatementResultEventVMa(0);
      v21(a2 + *(v23 + 20), v20, v14);
      return sub_22BB336D0(a2, 0, 1, v23);
    }

    (*(v16 + 8))(v20, v14);
  }

  else
  {
    (*(v9 + 8))(v13, v7);
  }

  _s20StatementResultEventVMa(0);
  sub_22BB30B28();
  return sub_22BB336D0(v25, v26, v27, v28);
}

uint64_t sub_22BCBE5EC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v14[6] = a4;
  v14[2] = a3;
  result = sub_22BD76D2C(sub_22BCBEBCC, v14, a1);
  if (v7)
  {
    _s20StatementResultEventVMa(0);
    sub_22BB30B28();
    return sub_22BB336D0(v8, v9, v10, v11);
  }

  else if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22BB8EC88(0, result, a1);
    sub_22BCA87D0();
    v13 = v12;
    swift_unknownObjectRelease();
    sub_22BC74170(v13, a2);
  }

  return result;
}

uint64_t sub_22BCBE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[2] = a2;
  v26 = a3;
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB87F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB9B14();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a1;
  sub_22BDB9B24();
  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x277D1E798])
  {
    (*(v13 + 96))(v15, v12);
    v16 = *(v9 + 32);
    v16(v11, v15, v8);
    sub_22BDB8794();
    v17 = sub_22BDB4C04();
    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      v18 = v26;
      sub_22BDB8F24();
      v19 = _s20StatementResultEventVMa(0);
      v16((v18 + *(v19 + 20)), v11, v8);
      v20 = v18;
      v21 = 0;
      v22 = v19;
    }

    else
    {
      (*(v9 + 8))(v11, v8);
      v22 = _s20StatementResultEventVMa(0);
      v20 = v26;
      v21 = 1;
    }

    return sub_22BB336D0(v20, v21, 1, v22);
  }

  else
  {
    v23 = _s20StatementResultEventVMa(0);
    sub_22BB336D0(v26, 1, 1, v23);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_22BCBE9F8(uint64_t a1, uint64_t a2)
{
  v4 = _s20StatementResultEventVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBEA5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCBEAB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB2F330();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCBEB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCBEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22BDB43E4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCBED20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v206 = a1;
  v207 = _s26PromptStatementStepBuilderV10ResolutionOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  v189 = v4;
  v5 = sub_22BB2F120();
  v6 = _s26PromptStatementStepBuilderVMa(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v198 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F384();
  v202 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v201 = v174 - v12;
  sub_22BB2F120();
  sub_22BDB77D4();
  sub_22BB30444();
  v196 = v14;
  v197 = v13;
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  v199 = v15;
  sub_22BB2F120();
  v176 = sub_22BDB56F4();
  sub_22BB30444();
  v174[1] = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  sub_22BB30B8C(v18);
  v179 = sub_22BDB5A44();
  sub_22BB30444();
  v178 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  sub_22BB30B8C(v21);
  v184 = sub_22BDB5924();
  sub_22BB30444();
  v183 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  v25 = sub_22BB30B8C(v24);
  v26 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa(v25);
  MEMORY[0x28223BE20](v26 - 8);
  sub_22BB305A8();
  sub_22BB30B8C(v27);
  v181 = sub_22BDBA594();
  sub_22BB30444();
  v180 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BB305A8();
  sub_22BB30B8C(v30);
  v190 = sub_22BDB55A4();
  sub_22BB30444();
  v187 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22BB305A8();
  v34 = sub_22BB30B8C(v33);
  v192 = _s20DisambiguationResultOMa(v34);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v35);
  sub_22BB305A8();
  v193 = v36;
  sub_22BB2F120();
  sub_22BDB5514();
  sub_22BB30444();
  v194 = v38;
  v195 = v37;
  MEMORY[0x28223BE20](v37);
  sub_22BB305A8();
  v191 = v39;
  sub_22BB2F120();
  v40 = sub_22BDB5404();
  sub_22BB30444();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_22BB30560();
  v188 = v44;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F384();
  v175 = v46;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v47);
  sub_22BB2F384();
  v177 = v48;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v49);
  sub_22BB2F384();
  v182 = v50;
  sub_22BB30B70();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = v174 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = (v174 - v55);
  v57 = _s24ActionConfirmationResultVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v58);
  sub_22BB30574();
  v61 = (v60 - v59);
  v62 = sub_22BBE6DE0(&qword_27D8E3F40, &unk_22BDC1710);
  v63 = MEMORY[0x28223BE20](v62 - 8);
  v65 = v174 - v64;
  v200 = v6;
  v66 = *(v6 + 28);
  v67 = *(v6 + 32);
  v68 = *(v63 + 56);
  v203 = *(v42 + 16);
  v204 = v42 + 16;
  v203(v65, v2 + v66, v40);
  sub_22BB342BC();
  v69 = v2;
  v70 = v68;
  v205 = v69;
  v71 = v69 + v67;
  v72 = v40;
  v73 = v42;
  sub_22BCC0B60(v71, &v65[v68]);
  v74 = (*(v42 + 88))(v65, v72);
  if (v74 != *MEMORY[0x277D1CBA8])
  {
    v78 = v207;
    if (v74 == *MEMORY[0x277D1CBB0])
    {
      sub_22BB37264();
      v79();
      sub_22BB3A21C();
      v80(v56, v72);
      v81 = sub_22BB39168();
      if (v81 == 4 || v81 == 3)
      {
        v115 = sub_22BB30D24();
        v116(v115);
        sub_22BB69A64();
      }

      else
      {
        if (v81 != 1)
        {
          (*(v194 + 8))(v56, v195);
          v68 = v201;
          v56 = v202;
          goto LABEL_48;
        }

        v82 = sub_22BB30D24();
        v83(v82);
        sub_22BB38AF4();
      }

      swift_storeEnumTagMultiPayload();
      v57 = v206;
      sub_22BCBFEA0(v54, v206);
      sub_22BB356D8();
      (*(v68 + 8))(v78, v68);
LABEL_56:
      v107 = _s23StatementStepEvaluationOMa(0);
      v106 = v57;
      goto LABEL_57;
    }

    if (v74 == *MEMORY[0x277D1CBB8])
    {
      sub_22BB37264();
      v84();
      sub_22BB3A21C();
      v85(v54, v72);
      v86 = sub_22BB39168();
      v68 = v201;
      v56 = v202;
      if (v86 != 4)
      {
        if (!v86)
        {
          v87 = v187;
          v88 = sub_22BB2F3F0();
          v89(v88);
          sub_22BB38074();
          v91 = *(v90 - 256);
          v92 = v181;
          v93(v91);
          v94 = v185;
          (*(v68 + 16))(v185, v91, v92);
          v95 = sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
          sub_22BB336D0(v94, 0, 1, v95);
          v57 = v206;
          sub_22BCC0034(v94, v206);
          sub_22BCC0C20(v94, _s25ParameterNeedsValueResultV16NeedsValueResultOMa);
          (*(v68 + 8))(v91, v92);
          (*(v87 + 8))(v186, v190);
          goto LABEL_56;
        }

        sub_22BB34EAC();
        v129 = v54;
        v130 = v190;
LABEL_47:
        v128(v129, v130);
        goto LABEL_48;
      }

      sub_22BB31CDC();
      v70 = v186;
      v68 = v190;
      v123(v186, v54, v190);
      v124 = sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
      v54 = v185;
      sub_22BB336D0(v185, 1, 1, v124);
      sub_22BB3A65C();
      sub_22BCC0034(v125, v126);
      v127 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa;
    }

    else
    {
      v56 = v202;
      if (v74 == *MEMORY[0x277D1CBD0])
      {
        v57 = v182;
        sub_22BB37264();
        v108();
        sub_22BB3A21C();
        v109(v57, v72);
        v110 = sub_22BB39168();
        switch(v110)
        {
          case 4:
            sub_22BB31CDC();
            v143 = sub_22BB3659C();
            v144(v143);
            sub_22BB58AB4();
            v114 = 2;
            break;
          case 3:
            sub_22BB31CDC();
            v141 = sub_22BB3659C();
            v142(v141);
            sub_22BB58AB4();
            v114 = 1;
            break;
          case 2:
            sub_22BB31CDC();
            v111 = sub_22BB3659C();
            v112(v111);
            sub_22BB58AB4();
            v114 = 0;
            break;
          default:
            sub_22BB34EAC();
            v145(v57, v184);
            v68 = v201;
            goto LABEL_48;
        }

        sub_22BCC0214(v114, v113);
        v56[1](v68, v54);
        goto LABEL_56;
      }

      if (v74 == *MEMORY[0x277D1CBD8])
      {
        v117 = v177;
        sub_22BB37264();
        v118();
        sub_22BB3A21C();
        v119(v117, v72);
        v120 = sub_22BB39168();
        v68 = v201;
        if (v120 == 4 || v120 == 3)
        {
          sub_22BB31CDC();
          v146 = sub_22BB37764();
          v147(v146);
          sub_22BB69A64();
        }

        else
        {
          if (v120 != 1)
          {
            sub_22BB34EAC();
            v129 = v117;
            v150 = &v209;
LABEL_46:
            v130 = *(v150 - 32);
            goto LABEL_47;
          }

          v57 = *&v65[v70];
          sub_22BB31CDC();
          v121 = sub_22BB37764();
          v122(v121);
          sub_22BB38AF4();
        }

        swift_storeEnumTagMultiPayload();
        sub_22BB3A65C();
        sub_22BCC03F8(v148, v149);
      }

      else
      {
        v68 = v201;
        if (v74 != *MEMORY[0x277D1CBC8])
        {
          goto LABEL_48;
        }

        v131 = v175;
        sub_22BB37264();
        v132();
        sub_22BB3A21C();
        v133(v131, v72);
        switch(sub_22BB39168())
        {
          case 1u:
            v57 = *&v65[v70];
            sub_22BB31CDC();
            v170 = sub_22BB32798();
            v171(v170);
            sub_22BB38AF4();
            break;
          case 2u:
            sub_22BB34EAC();
            v129 = v131;
            v150 = &v205;
            goto LABEL_46;
          case 3u:
          case 4u:
            sub_22BB31CDC();
            v151 = sub_22BB32798();
            v152(v151);
            sub_22BB69A64();
            break;
          default:
            sub_22BB31CDC();
            v134 = v174[0];
            v135(v174[0], v131, v176);
            sub_22BB38074();
            v137 = *(v136 - 256);
            v138 = v181;
            v139(v137);
            v140 = v193;
            (*(v68 + 16))(v193, v137, v138);
            swift_storeEnumTagMultiPayload();
            sub_22BCC05FC(v140, v206);
            sub_22BB356D8();
            (*(v68 + 8))(v137, v138);
            v56[1](v134, v176);
            v107 = _s23StatementStepEvaluationOMa(0);
            v106 = v206;
            goto LABEL_57;
        }

        swift_storeEnumTagMultiPayload();
        sub_22BB3A65C();
        sub_22BCC05FC(v172, v173);
      }

      v127 = _s20DisambiguationResultOMa;
    }

    sub_22BCC0C20(v54, v127);
    v56[1](v70, v68);
    goto LABEL_56;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_22BB37CE8();
    sub_22BB30ED8();
    v99 = sub_22BB36D44();
    v100(v99);
    v98 = 2;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22BB37CE8();
    sub_22BB30ED8();
    v96 = sub_22BB36D44();
    v97(v96);
    v98 = 1;
LABEL_17:
    *v61 = v98;
    goto LABEL_18;
  }

  v68 = v201;
  v56 = v202;
  if (EnumCaseMultiPayload == 2)
  {
    sub_22BB37CE8();
    sub_22BB30ED8();
    v76 = sub_22BB36D44();
    v77(v76);
    *v61 = 0;
LABEL_18:
    v101 = *(v56 + 5);
    sub_22BDB4C34();
    sub_22BB30ED8();
    v103 = v206;
    (*(v102 + 16))(v206, v68 + v101);
    v104 = _s20ActionStepEvaluationVMa(0);
    sub_22BCC0C78(v61, v103 + *(v104 + 20));
    v105 = _s23StatementStepEvaluationOMa(0);
    swift_storeEnumTagMultiPayload();
    v106 = v103;
    v107 = v105;
LABEL_57:
    sub_22BB336D0(v106, 0, 1, v107);
    return (*(v73 + 8))(v65, v72);
  }

LABEL_48:
  v153 = v199;
  sub_22BDB6404();
  v154 = v205;
  sub_22BCC0B60(v205, v68);
  sub_22BCC0B60(v154, v56);
  v155 = v198;
  sub_22BCC0B60(v154, v198);
  v156 = sub_22BDB77C4();
  v157 = sub_22BDBB114();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v205 = v65;
    v202 = v159;
    v208 = v159;
    *v158 = 136315650;
    v160 = v200;
    LODWORD(v201) = v157;
    sub_22BDB43E4();
    v161 = v56;
    sub_22BC728D4();
    sub_22BDBB684();
    sub_22BCC0C20(v68, _s26PromptStatementStepBuilderVMa);
    v162 = sub_22BB6BAA4();

    *(v158 + 4) = v162;
    *(v158 + 12) = 2080;
    v203(v188, v161 + *(v160 + 28), v72);
    sub_22BDBAC14();
    sub_22BCC0C20(v161, _s26PromptStatementStepBuilderVMa);
    v163 = sub_22BB6BAA4();

    *(v158 + 14) = v163;
    *(v158 + 22) = 2080;
    sub_22BB342BC();
    v164 = v198;
    sub_22BCC0B60(v198 + v165, v189);
    sub_22BDBAC14();
    sub_22BCC0C20(v164, _s26PromptStatementStepBuilderVMa);
    v166 = sub_22BB6BAA4();

    *(v158 + 24) = v166;
    _os_log_impl(&dword_22BB2C000, v156, v201, "Cannot make a statement step for statement result, eventId=%s, outcome=%s, resolution=%s", v158, 0x20u);
    v167 = v202;
    swift_arrayDestroy();
    v65 = v205;
    MEMORY[0x2318A6080](v167, -1, -1);
    MEMORY[0x2318A6080](v158, -1, -1);

    (*(v196 + 8))(v199, v197);
  }

  else
  {

    sub_22BCC0C20(v155, _s26PromptStatementStepBuilderVMa);
    sub_22BCC0C20(v56, _s26PromptStatementStepBuilderVMa);
    sub_22BCC0C20(v68, _s26PromptStatementStepBuilderVMa);
    (*(v196 + 8))(v153, v197);
  }

  v168 = _s23StatementStepEvaluationOMa(0);
  sub_22BB336D0(v206, 1, 1, v168);
  return sub_22BCC0BB8(v65);
}

uint64_t sub_22BCBFEA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s24ToolDisambiguationResultVMa(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x23189F4D0](v8);
  sub_22BCC0B60(a1, v10 + *(v7 + 28));
  v12 = _s26PromptStatementStepBuilderVMa(0);
  v13 = *(v12 + 24);
  v14 = *(v7 + 32);
  v15 = sub_22BDB43E4();
  (*(*(v15 - 8) + 16))(v10 + v14, v3 + v13, v15);
  *v10 = v11;
  v16 = *(v12 + 20);
  v17 = sub_22BDB4C34();
  (*(*(v17 - 8) + 16))(a2, v3 + v16, v17);
  v18 = _s18ToolStepEvaluationVMa(0);
  sub_22BCC0C78(v10, a2 + *(v18 + 20));
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC0034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = _s25ParameterNeedsValueResultVMa(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BCC0B60(a1, v8);
  v9 = _s26PromptStatementStepBuilderVMa(0);
  v10 = *(v9 + 24);
  v11 = *(v6 + 28);
  v12 = sub_22BDB43E4();
  (*(*(v12 - 8) + 16))(&v8[v11], v2 + v10, v12);
  v13 = sub_22BDB4C34();
  v14 = *(*(v13 - 8) + 16);
  v14(a2, v2, v13);
  v15 = *(v9 + 20);
  v16 = _s23ParameterStepEvaluationVMa(0);
  v14(a2 + *(v16 + 20), v2 + v15, v13);
  sub_22BDB4D04();
  sub_22BDB8364();
  sub_22BCC0C78(v8, a2 + *(v16 + 28));
  _s19ParameterStepResultOMa(0);
  swift_storeEnumTagMultiPayload();
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC0214@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v5 = _s27ParameterConfirmationResultVMa(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB5914();
  v9 = _s26PromptStatementStepBuilderVMa(0);
  v10 = *(v9 + 24);
  v11 = *(v6 + 32);
  v12 = sub_22BDB43E4();
  (*(*(v12 - 8) + 16))(&v8[v11], v2 + v10, v12);
  v8[*(v6 + 28)] = a1;
  v13 = sub_22BDB4C34();
  v14 = *(*(v13 - 8) + 16);
  v14(a2, v2, v13);
  v15 = *(v9 + 20);
  v16 = _s23ParameterStepEvaluationVMa(0);
  v14(a2 + *(v16 + 20), v2 + v15, v13);
  sub_22BDB4D04();
  MEMORY[0x23189F8D0]();
  sub_22BDB8364();
  sub_22BCC0C78(v8, a2 + *(v16 + 28));
  _s19ParameterStepResultOMa(0);
  swift_storeEnumTagMultiPayload();
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC03F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = _s29ParameterDisambiguationResultVMa(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22BDB5A34();
  sub_22BCC0B60(a1, v8 + *(v6 + 28));
  v10 = _s26PromptStatementStepBuilderVMa(0);
  v11 = *(v10 + 24);
  v12 = *(v6 + 32);
  v13 = sub_22BDB43E4();
  (*(*(v13 - 8) + 16))(v8 + v12, v2 + v11, v13);
  *v8 = v9;
  v14 = sub_22BDB4C34();
  v15 = *(*(v14 - 8) + 16);
  v15(a2, v2, v14);
  v16 = *(v10 + 20);
  v17 = _s23ParameterStepEvaluationVMa(0);
  v15(a2 + *(v17 + 20), v2 + v16, v14);
  sub_22BDB5A14();
  MEMORY[0x23189F9F0]();
  sub_22BDB8364();
  sub_22BCC0C78(v8, a2 + *(v17 + 28));
  _s19ParameterStepResultOMa(0);
  swift_storeEnumTagMultiPayload();
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC05FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s25ValueDisambiguationResultVMa(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22BDB56E4();
  sub_22BCC0B60(a1, v9 + *(v7 + 28));
  v11 = _s26PromptStatementStepBuilderVMa(0);
  v12 = *(v11 + 24);
  v13 = *(v7 + 32);
  v14 = sub_22BDB43E4();
  (*(*(v14 - 8) + 16))(v9 + v13, v3 + v12, v14);
  *v9 = v10;
  v15 = sub_22BDB4C34();
  v16 = *(*(v15 - 8) + 16);
  v16(a2, v3, v15);
  v17 = *(v11 + 20);
  v18 = _s19ValueStepEvaluationVMa(0);
  v16(a2 + *(v18 + 20), v3 + v17, v15);
  sub_22BCC0C78(v9, a2 + *(v18 + 24));
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCC07B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22BDB85D4();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BDB85E4();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v17 = (v16 - v15);
  (*(v13 + 16))(v16 - v15, a1, v11);
  v18 = sub_22BB2F3F0();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D1DD98])
  {
    goto LABEL_2;
  }

  if (v20 == *MEMORY[0x277D1DDB0])
  {
    v25 = sub_22BB38D8C();
    v26(v25);
    v27 = sub_22BB2F3F0();
    v28(v27);
    sub_22BDBA594();
    sub_22BB30ED8();
    (*(v29 + 32))(a2, v17);
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v20 == *MEMORY[0x277D1DDA0])
  {
LABEL_2:
    v21 = sub_22BB38D8C();
    v22(v21);
    v23 = sub_22BB2F3F0();
    v24(v23);
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v20 == *MEMORY[0x277D1DDB8])
  {
    v30 = sub_22BB38D8C();
    v31(v30);
    v32 = sub_22BB2F3F0();
    v33(v32);
    *a2 = *v17;
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v20 == *MEMORY[0x277D1DDA8])
  {
    v34 = sub_22BB2F3F0();
    v35(v34);
    (*(v6 + 32))(v10, v17, v4);
    sub_22BDB85C4();
    (*(v13 + 8))(a1, v11);
    (*(v6 + 8))(v10, v4);
    sub_22BB5421C();
    return swift_storeEnumTagMultiPayload();
  }

  if (v20 == *MEMORY[0x277D1DD90])
  {
    v37 = *(v13 + 8);
    v37(a1, v11);
    sub_22BB5421C();
    swift_storeEnumTagMultiPayload();
    v38 = sub_22BB2F3F0();
    return (v37)(v38);
  }

  else
  {
    result = sub_22BDBB6C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22BCC0B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5(v4);
  sub_22BB30ED8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22BCC0BB8(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3F40, &unk_22BDC1710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCC0C20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCC0C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5(v4);
  sub_22BB30ED8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22BCC0CD0(uint64_t a1)
{
  result = sub_22BDBA594();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCC0D60(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v3 <= 0x3F)
    {
      result = sub_22BDB5404();
      if (v4 <= 0x3F)
      {
        result = _s26PromptStatementStepBuilderV10ResolutionOMa(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_22BCC0E14(uint64_t a1, uint64_t a2)
{
  v4 = _s27StatementParameterCandidateVMa(0);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = sub_22BDB9CB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v49 - v14;
  v60 = sub_22BBE6DE0(&qword_27D8E4028, qword_22BDC1830);
  v15 = MEMORY[0x28223BE20](v60);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v51 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v50 = &v49 - v20;
  v64 = a2;
  v65 = a1;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (v22 >= v21)
  {
    v23 = *(a1 + 16);
  }

  else
  {
    v23 = v22;
  }

  v68 = MEMORY[0x277D84F90];
  sub_22BD28068(0, v23, 0);
  v24 = v23;
  v66 = v10;
  v67 = v68;
  v61 = v11;
  v58 = v22;
  v59 = v21;
  if (v23)
  {
    v25 = 0;
    v54 = v9;
    v55 = (v11 + 16);
    v52 = (v11 + 32);
    v53 = v24;
    while (v21 != v25)
    {
      v26 = v56;
      (*(v11 + 16))(v56, v65 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v10);
      if (v22 == v25)
      {
        goto LABEL_23;
      }

      v27 = sub_22BDB7B44();
      v28 = *(v27 - 8);
      v29 = v64 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25;
      v30 = v26;
      v31 = *(v60 + 48);
      (*v52)(v17, v30, v10);
      v32 = *(v28 + 16);
      v32(&v17[v31], v29, v27);
      sub_22BDB8FF4();
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v32(&v7[*(v63 + 20)], &v17[v31], v27);
      sub_22BB58728(v17, &qword_27D8E4028, qword_22BDC1830);
      v33 = v67;
      v68 = v67;
      v35 = *(v67 + 16);
      v34 = *(v67 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22BD28068(v34 > 1, v35 + 1, 1);
        v33 = v68;
      }

      ++v25;
      *(v33 + 16) = v35 + 1;
      v67 = v33;
      sub_22BCC7414();
      v24 = v53;
      v9 = v54;
      v10 = v66;
      v11 = v61;
      v22 = v58;
      v21 = v59;
      if (v53 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_11:
    v55 = (v11 + 32);
    v56 = (v11 + 16);
    while (v21 != v24)
    {
      if (v24 >= v21)
      {
        goto LABEL_24;
      }

      (*(v11 + 16))(v57, v65 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v66);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_25;
      }

      if (v22 == v24)
      {
        (*(v11 + 8))(v57, v66);
        return;
      }

      if (v24 >= v22)
      {
        goto LABEL_26;
      }

      v36 = sub_22BDB7B44();
      v37 = *(v36 - 8);
      v38 = v24;
      v39 = v64 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v24;
      v40 = v60;
      v41 = *(v60 + 48);
      v42 = v51;
      (*v55)(v51, v57, v66);
      v43 = *(v37 + 16);
      v43(v42 + v41, v39, v36);
      v44 = v50;
      sub_22BB6BEE0(v42, v50, &qword_27D8E4028, qword_22BDC1830);
      v45 = *(v40 + 48);
      sub_22BDB8FF4();
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v43(&v9[*(v63 + 20)], v44 + v45, v36);
      sub_22BB58728(v44, &qword_27D8E4028, qword_22BDC1830);
      v46 = v67;
      v68 = v67;
      v48 = *(v67 + 16);
      v47 = *(v67 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_22BD28068(v47 > 1, v48 + 1, 1);
        v46 = v68;
      }

      *(v46 + 16) = v48 + 1;
      v67 = v46;
      sub_22BCC7414();
      v24 = v38 + 1;
      v11 = v61;
      v22 = v58;
      v21 = v59;
    }
  }
}

uint64_t sub_22BCC14D4(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v86 = a1;
  v111 = _s23ParameterCandidateValueVMa(0);
  v76 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s27StatementParameterCandidateVMa(0);
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22BDBA594();
  v7 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB80F4();
  v107 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v74 - v16;
  v106 = sub_22BDB4C34();
  v17 = *(v106 - 8);
  v18 = MEMORY[0x28223BE20](v106);
  v87 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = &v74 - v20;
  v21 = sub_22BDB89F4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v113 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22BDB9914();
  v104 = *(v24 + 16);
  if (!v104)
  {
  }

  v25 = v17;
  v26 = 0;
  v103 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v101 = (v107 + 11);
  v102 = v22 + 16;
  v100 = (v107 + 1);
  v99 = *MEMORY[0x277D1DAD0];
  v90 = (v25 + 32);
  v83 = v7 + 16;
  v98 = *MEMORY[0x277D1DA48];
  v107 = (v7 + 32);
  v85 = (v25 + 16);
  v97 = *MEMORY[0x277D1DAE8];
  v75 = v25;
  v88 = (v25 + 8);
  v79 = (v7 + 8);
  v93 = (v22 + 8);
  v82 = xmmword_22BDBCBD0;
  v81 = v7;
  v80 = v9;
  v112 = v10;
  v95 = v12;
  v27 = v84;
  v96 = v22;
  v78 = v6;
  v89 = v21;
  v94 = v24;
  while (v26 < *(v24 + 16))
  {
    (*(v22 + 16))(v113, v103 + *(v22 + 72) * v26, v21);
    sub_22BDB89D4();
    v28 = (*v101)(v12, v112);
    if (v28 == v99 || v28 == v98 || v28 == v97)
    {
      sub_22BDB8174();
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v105;
    v33 = v106;
    sub_22BB336D0(v27, v31, 1, v106);
    (*v100)(v12, v112);
    sub_22BB6BEE0(v27, v32, &qword_27D8E27C0, &qword_22BDBCDF0);
    if (sub_22BB3AA28(v32, 1, v33) == 1)
    {
      (*v93)(v113, v21);
      sub_22BB58728(v32, &qword_27D8E27C0, &qword_22BDBCDF0);
LABEL_25:
      v22 = v96;
      goto LABEL_26;
    }

    v34 = v91;
    (*v90)(v91, v32, v33);
    if (!*(v92 + 16) || (sub_22BBDAE68(), (v36 & 1) == 0))
    {
      (*v88)(v34, v106);
      v21 = v89;
      (*v93)(v113, v89);
      goto LABEL_25;
    }

    (*(v7 + 16))(v9, *(v92 + 56) + *(v7 + 72) * v35, v114);
    sub_22BCB3AC0();
    if (v37)
    {
      v38 = v37;
      v39 = *(v37 + 16);
      v40 = v78;
      if (v39)
      {
        v115 = MEMORY[0x277D84F90];
        sub_22BD28068(0, v39, 0);
        v41 = v115;
        v42 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v77 = v38;
        v43 = v38 + v42;
        v44 = *(v76 + 72);
        do
        {
          v45 = v110;
          sub_22BCC74B0();
          (*v107)(v40, v45, v114);
          type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          swift_storeEnumTagMultiPayload();
          v46 = *(v111 + 20);
          v47 = *(v109 + 20);
          v48 = sub_22BDB7B44();
          (*(*(v48 - 8) + 32))(&v40[v47], &v45[v46], v48);
          v115 = v41;
          v50 = v41[2];
          v49 = v41[3];
          if (v50 >= v49 >> 1)
          {
            sub_22BD28068(v49 > 1, v50 + 1, 1);
            v41 = v115;
          }

          v41[2] = v50 + 1;
          sub_22BCC7414();
          v43 += v44;
          --v39;
        }

        while (v39);
      }

      else
      {

        v41 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v41 = 0;
    }

    v51 = v91;
    sub_22BDB8174();
    sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
    v52 = (sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) - 8);
    v53 = (*(*v52 + 80) + 32) & ~*(*v52 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v82;
    v55 = v54 + v53;
    v56 = v52[14];
    v57 = *v85;
    (*v85)(v55, v51, v106);
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    swift_storeEnumTagMultiPayload();
    *(v55 + v56) = v41;
    sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
    sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    v58 = sub_22BDBAB14();
    v59 = v86;
    swift_isUniquelyReferenced_nonNull_native();
    v60 = *v59;
    v115 = v60;
    sub_22BBDAE68();
    if (__OFADD__(v60[2], (v62 & 1) == 0))
    {
      goto LABEL_42;
    }

    v63 = v61;
    v64 = v62;
    sub_22BBE6DE0(&qword_27D8E3FA0, &qword_22BDC17A8);
    if (sub_22BDBB4A4())
    {
      sub_22BBDAE68();
      v22 = v96;
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_44;
      }

      v63 = v65;
    }

    else
    {
      v22 = v96;
    }

    v67 = v115;
    if (v64)
    {
      *(v115[7] + 8 * v63) = v58;

      v68 = v106;
    }

    else
    {
      v115[(v63 >> 6) + 8] |= 1 << v63;
      v68 = v106;
      v57(v67[6] + *(v75 + 72) * v63, v87, v106);
      *(v67[7] + 8 * v63) = v58;
      v69 = v67[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_43;
      }

      v67[2] = v71;
    }

    v72 = *v88;
    (*v88)(v87, v68);
    v9 = v80;
    (*v79)(v80, v114);
    v72(v91, v68);
    v21 = v89;
    (*v93)(v113, v89);
    *v86 = v67;
    v7 = v81;
    v27 = v84;
LABEL_26:
    ++v26;
    v24 = v94;
    v12 = v95;
    if (v26 == v104)
    {
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC20E8()
{
  v0 = _s23ParameterCandidateValueVMa(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s27StatementParameterCandidateVMa(0);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v72 = *(v78 - 8);
  v6 = MEMORY[0x28223BE20](v78);
  v74 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = (v65 - v8);
  v9 = sub_22BDB8E14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BD1D4C0();
  v13 = sub_22BDB8E04();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  if (v13 == 0xD000000000000033 && 0x800000022BDD1CD0 == v15)
  {

LABEL_37:
    sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
    sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    return sub_22BDBAB14();
  }

  v17 = sub_22BDBB6D4();

  if (v17)
  {
    goto LABEL_37;
  }

  v70 = v3;
  v71 = v0;
  v68 = v1;
  v18 = sub_22BCB1C94();
  v19 = v18;
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v26 = MEMORY[0x277D84F98];
  while (2)
  {
    while (2)
    {
      v27 = v74;
LABEL_10:
      v28 = v25;
      if (!v23)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v25 = v28;
LABEL_15:
        v29 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v30 = v29 | (v25 << 6);
        v31 = (*(v19 + 48) + 16 * v30);
        v32 = *v31;
        v33 = v31[1];
        v34 = *(*(v19 + 56) + 8 * v30);
        if (v34)
        {
          break;
        }

        *v27 = v32;
        v27[1] = v33;
        swift_storeEnumTagMultiPayload();
        swift_bridgeObjectRetain_n();
        v35 = sub_22BD84634(v27);
        if (v36)
        {
          v37 = v35;
          swift_isUniquelyReferenced_nonNull_native();
          v79 = v26;
          v67 = v19;
          sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
          v27 = v74;
          v19 = v67;
          sub_22BDBB4A4();
          v26 = v79;
          sub_22BCC73B8(*(v79 + 48) + *(v72 + 72) * v37);

          sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
          sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
          sub_22BDBB4C4();

          sub_22BCC73B8(v27);
          goto LABEL_10;
        }

        sub_22BCC73B8(v27);
        v28 = v25;
        if (!v23)
        {
LABEL_12:
          while (1)
          {
            v25 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v25 >= v24)
            {

              return v26;
            }

            v23 = *(v20 + 8 * v25);
            ++v28;
            if (v23)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_41;
        }
      }

      v67 = v19;
      v38 = v73;
      *v73 = v32;
      v38[1] = v33;
      swift_storeEnumTagMultiPayload();
      v39 = *(v34 + 16);
      if (v39)
      {
        v65[0] = v24;
        v66 = v26;
        v79 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();

        sub_22BD28068(0, v39, 0);
        v40 = v79;
        v41 = *(v68 + 80);
        v65[1] = v34;
        v42 = v34 + ((v41 + 32) & ~v41);
        v69 = *(v68 + 72);
        v43 = v77;
        do
        {
          v44 = v70;
          sub_22BCC74B0();
          v45 = sub_22BDBA594();
          (*(*(v45 - 8) + 32))(v43, v44, v45);
          type metadata accessor for FeedbackLearning.CandidateDefinition(0);
          swift_storeEnumTagMultiPayload();
          v46 = *(v71 + 20);
          v47 = *(v76 + 20);
          v48 = sub_22BDB7B44();
          v49 = &v77[v47];
          v43 = v77;
          (*(*(v48 - 8) + 32))(v49, &v44[v46], v48);
          v79 = v40;
          v51 = *(v40 + 16);
          v50 = *(v40 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_22BD28068(v50 > 1, v51 + 1, 1);
            v43 = v77;
            v40 = v79;
          }

          *(v40 + 16) = v51 + 1;
          sub_22BCC7414();
          v42 += v69;
          --v39;
        }

        while (v39);
        v69 = v40;
        v26 = v66;
        v24 = v65[0];
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v69 = MEMORY[0x277D84F90];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v79 = v26;
      v52 = sub_22BD84634(v73);
      v53 = *(v26 + 16);
      LODWORD(v66) = v54;
      if (__OFADD__(v53, (v54 & 1) == 0))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v55 = v52;
      sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
      if (sub_22BDBB4A4())
      {
        v56 = sub_22BD84634(v73);
        v58 = v66;
        v19 = v67;
        if ((v66 & 1) != (v57 & 1))
        {
          goto LABEL_43;
        }

        v55 = v56;
      }

      else
      {
        v19 = v67;
        v58 = v66;
      }

      v26 = v79;
      if (v58)
      {
        v59 = v79;
        *(*(v79 + 56) + 8 * v55) = v69;

        v26 = v59;

        sub_22BCC73B8(v73);
        continue;
      }

      break;
    }

    *(v79 + 8 * (v55 >> 6) + 64) |= 1 << v55;
    v60 = v73;
    sub_22BCC74B0();
    *(*(v26 + 56) + 8 * v55) = v69;

    sub_22BCC73B8(v60);
    v61 = *(v26 + 16);
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (!v62)
    {
      *(v26 + 16) = v63;
      continue;
    }

    break;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC29AC(uint64_t a1)
{
  v163 = sub_22BDB9CB4();
  v150 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v159 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22BDBA594();
  v160 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v4 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB4C34();
  v135 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E3FE8, &qword_22BDC17F0);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = (&v129 - v9);
  v142 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
  v131 = *(v142 - 8);
  v10 = MEMORY[0x28223BE20](v142);
  v132 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = &v129 - v12;
  v145 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v155 = (&v129 - v13);
  v157 = sub_22BBE6DE0(&qword_27D8E4010, &unk_22BDC2CD0);
  v14 = MEMORY[0x28223BE20](v157);
  v154 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v129 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v152 = &v129 - v19;
  MEMORY[0x28223BE20](v18);
  v151 = &v129 - v20;
  v21 = sub_22BDB8E14();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB8EF4();
  v25 = sub_22BDB8E04();
  v27 = v26;
  (*(v22 + 8))(v24, v21);
  if (v25 == 0xD000000000000033 && 0x800000022BDD1CD0 == v27)
  {

    goto LABEL_29;
  }

  v29 = sub_22BDBB6D4();

  if (v29)
  {
LABEL_29:
    type metadata accessor for FeedbackLearning.CandidateParameter(0);
    sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
    sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
    return sub_22BDBAB14();
  }

  v133 = v7;
  v134 = v5;
  v140 = a1;
  v30 = sub_22BDB8ED4();
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v162 = v150 + 16;
  v139 = v150 + 32;
  v161 = (v150 + 8);
  v141 = v30;

  v36 = 0;
  v37 = MEMORY[0x277D84F98];
  v137 = v31;
  v136 = v35;
  v138 = v4;
  while (1)
  {
    v156 = v37;
    if (!v34)
    {
      break;
    }

LABEL_14:
    v39 = __clz(__rbit64(v34)) | (v36 << 6);
    v40 = v141;
    v41 = *(v141 + 48);
    v42 = sub_22BDB8384();
    v43 = *(v42 - 8);
    v44 = v151;
    (*(v43 + 16))(v151, v41 + *(v43 + 72) * v39, v42);
    v45 = v150;
    (*(v150 + 16))(v44 + *(v157 + 48), *(v40 + 56) + *(v150 + 72) * v39, v163);
    v46 = v152;
    sub_22BB3CD70(v44, v152, &qword_27D8E4010, &unk_22BDC2CD0);
    v47 = sub_22BDB8374();
    v148 = v48;
    v149 = v47;
    v49 = *(v43 + 8);
    v49(v46, v42);
    v50 = v153;
    sub_22BB3CD70(v44, v153, &qword_27D8E4010, &unk_22BDC2CD0);
    v51 = sub_22BDB8344();
    LOBYTE(v40) = v52;
    v146 = v49;
    v147 = v42;
    v49(v50, v42);
    v53 = v148;
    v54 = v154;
    sub_22BB3CD70(v44, v154, &qword_27D8E4010, &unk_22BDC2CD0);
    v55 = *(v157 + 48);
    v56 = *(v145 + 48);
    v57 = v155;
    *v155 = v51;
    *(v57 + 8) = v40 & 1;
    (*(v45 + 32))(v57 + v56, v54 + v55, v163);
    v58 = v156;
    swift_isUniquelyReferenced_nonNull_native();
    v164 = v58;
    v59 = v149;
    v60 = sub_22BD8446C(v149, v53);
    if (__OFADD__(v58[2], (v61 & 1) == 0))
    {
      goto LABEL_61;
    }

    v62 = v60;
    v63 = v61;
    sub_22BBE6DE0(&qword_27D8E4018, &qword_22BDC1820);
    if (sub_22BDBB4A4())
    {
      v64 = sub_22BD8446C(v59, v53);
      v4 = v138;
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_63;
      }

      v62 = v64;
    }

    else
    {
      v4 = v138;
    }

    v66 = v164;
    if (v63)
    {
    }

    else
    {
      v164[(v62 >> 6) + 8] |= 1 << v62;
      v67 = (v66[6] + 16 * v62);
      *v67 = v59;
      v67[1] = v53;
      *(v66[7] + 8 * v62) = MEMORY[0x277D84F90];
      v68 = v66[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_62;
      }

      v66[2] = v70;
    }

    v71 = v66[7];
    v72 = *(v71 + 8 * v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 8 * v62) = v72;
    v74 = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BD90814();
      v72 = v80;
      *(v71 + 8 * v62) = v80;
    }

    v75 = *(v72 + 16);
    if (v75 >= *(v72 + 24) >> 1)
    {
      sub_22BD90814();
      *(v71 + 8 * v62) = v81;
    }

    v34 &= v34 - 1;
    v76 = *(v157 + 48);
    sub_22BB58728(v151, &qword_27D8E4010, &unk_22BDC2CD0);
    v77 = *(v71 + 8 * v62);
    *(v77 + 16) = v75 + 1;
    sub_22BB6BEE0(v155, v77 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v75, &qword_27D8E4008, &unk_22BDC1810);
    v146(v154, v147);
    v78 = *v161;
    v79 = v163;
    (*v161)(v153 + v76, v163);
    v78(v152 + v76, v79);
    v31 = v137;
    v35 = v136;
    v37 = v74;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_14;
    }
  }

  v83 = (v37 + 8);
  v84 = 1 << *(v37 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & v37[8];
  v87 = (v84 + 63) >> 6;
  v148 = (v135 + 8);
  v157 = v160 + 32;

  v88 = 0;
  v152 = 0;
  v145 = MEMORY[0x277D84F90];
  v89 = v134;
  v90 = v133;
  v146 = (v37 + 8);
  v147 = v87;
  while (v86)
  {
    v91 = v88;
LABEL_38:
    v155 = v91;
    v92 = __clz(__rbit64(v86)) | (v91 << 6);
    v93 = (v156[6] + 16 * v92);
    v95 = *v93;
    v94 = v93[1];
    v96 = *(v156[7] + 8 * v92);

    sub_22BDB8174();
    v154 = v96;
    v97 = sub_22BCC479C(v95, v94, v90, v96);
    (*v148)(v90, v89);
    if (v97)
    {
      v149 = v95;
      v151 = v94;
      v153 = v86;
      v98 = *(v97 + 16);
      if (v98)
      {
        v164 = MEMORY[0x277D84F90];
        sub_22BD27A40(0, v98, 0);
        v99 = v164;
        v100 = v97;
        v101 = v97 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
        v102 = *(v150 + 72);
        v103 = *(v150 + 16);
        do
        {
          v104 = v159;
          v105 = v163;
          v103(v159, v101, v163);
          sub_22BDB8FF4();
          (*v161)(v104, v105);
          v164 = v99;
          v107 = v99[2];
          v106 = v99[3];
          if (v107 >= v106 >> 1)
          {
            sub_22BD27A40(v106 > 1, v107 + 1, 1);
            v99 = v164;
          }

          v99[2] = v107 + 1;
          (*(v160 + 32))(v99 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v107, v4, v158);
          v101 += v102;
          --v98;
        }

        while (v98);
      }

      else
      {
        v100 = v97;
      }

      sub_22BCB4498();
      v114 = v113;

      v89 = v134;
      v90 = v133;
      v111 = v143;
      v112 = v142;
      v83 = v146;
      if (v114)
      {
        v115 = v100;
        v116 = v152;
        sub_22BCC0E14(v115, v114);
        v118 = v117;
        v152 = v116;

        v119 = *(v112 + 48);
        v120 = v151;
        *v111 = v149;
        v111[1] = v120;
        type metadata accessor for FeedbackLearning.CandidateParameter(0);
        swift_storeEnumTagMultiPayload();
        *(v111 + v119) = v118;
      }

      else
      {

        v121 = *(v112 + 48);
        v122 = v151;
        *v111 = v149;
        v111[1] = v122;
        type metadata accessor for FeedbackLearning.CandidateParameter(0);
        swift_storeEnumTagMultiPayload();
        *(v111 + v121) = 0;
      }

      v87 = v147;
      v86 = v153;
    }

    else
    {
      v108 = v142;
      v109 = *(v142 + 48);
      v110 = v143;
      *v143 = v95;
      v110[1] = v94;
      v111 = v110;
      v112 = v108;
      type metadata accessor for FeedbackLearning.CandidateParameter(0);
      swift_storeEnumTagMultiPayload();
      *(v111 + v109) = 0;
    }

    v86 &= v86 - 1;
    sub_22BB336D0(v111, 0, 1, v112);

    if (sub_22BB3AA28(v111, 1, v112) == 1)
    {
      sub_22BB58728(v111, &qword_27D8E3FE8, &qword_22BDC17F0);
      v88 = v155;
    }

    else
    {
      v123 = v130;
      sub_22BB6BEE0(v111, v130, &qword_27D8E3F90, &unk_22BDC1798);
      sub_22BB6BEE0(v123, v132, &qword_27D8E3F90, &unk_22BDC1798);
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v86;
      if ((v124 & 1) == 0)
      {
        sub_22BD90748();
        v145 = v127;
      }

      v125 = *(v145 + 16);
      if (v125 >= *(v145 + 24) >> 1)
      {
        sub_22BD90748();
        v145 = v128;
      }

      v126 = v145;
      *(v145 + 16) = v125 + 1;
      sub_22BB6BEE0(v132, v126 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v125, &qword_27D8E3F90, &unk_22BDC1798);
      v88 = v155;
      v86 = v153;
    }
  }

  while (1)
  {
    v91 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v91 >= v87)
    {

      return sub_22BCC4FAC(v145);
    }

    v86 = *(v83 + v91);
    v88 = (v88 + 1);
    if (v86)
    {
      goto LABEL_38;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC3914(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v58 = a3;
  v62 = a1;
  v61 = sub_22BDB7B44();
  v53 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDBA014();
  v57 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = sub_22BDB8E14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v28 = *a2;
  v59 = OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action;
  v60 = v28;
  sub_22BD1D4C0();
  sub_22BCB51B4();
  v29 = v15;
  v30 = v14;
  (*(v16 + 8))(v18, v29);
  v31 = v57;
  sub_22BB3CD70(v27, v25, &qword_27D8E2FC0, &qword_22BDBFB90);
  v32 = 1;
  if (sub_22BB3AA28(v25, 1, v5) != 1)
  {
    (*(v31 + 32))(v9, v25, v5);
    sub_22BDBA004();
    (*(v31 + 8))(v9, v5);
    v32 = 0;
  }

  v33 = v61;
  sub_22BB336D0(v14, v32, 1, v61);
  sub_22BB3CD70(v27, v22, &qword_27D8E2FC0, &qword_22BDBFB90);
  v34 = &loc_22BDBC000;
  if (sub_22BB3AA28(v22, 1, v5) == 1)
  {
    v35 = &qword_27D8E2FC0;
    v36 = &qword_22BDBFB90;
    v37 = v22;
  }

  else
  {
    v38 = v56;
    (*(v31 + 32))(v56, v22, v5);
    v39 = v54;
    sub_22BB3CD70(v30, v54, &qword_27D8E3E60, &qword_22BDC23E0);
    if (sub_22BB3AA28(v39, 1, v33) != 1)
    {
      v58 = *(v53 + 32);
      v58(v55, v39, v33);
      sub_22BBE6DE0(&qword_27D8E3FA8, &qword_22BDC17B0);
      v41 = (_s27StatementParameterCandidateVMa(0) - 8);
      v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22BDBCBD0;
      v43 = v40 + v42;
      v44 = v40 + v42;
      v45 = v56;
      (*(v31 + 16))(v44, v56, v5);
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v58((v43 + v41[7]), v55, v33);
      v34 = &loc_22BDBC000;
      (*(v31 + 8))(v45, v5);
      goto LABEL_9;
    }

    (*(v31 + 8))(v38, v5);
    v35 = &qword_27D8E3E60;
    v36 = &qword_22BDC23E0;
    v37 = v39;
  }

  sub_22BB58728(v37, v35, v36);
  v40 = 0;
LABEL_9:
  sub_22BD1D6A4();
  sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
  v46 = (sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) - 8);
  v47 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v34[189];
  v49 = v48 + v47;
  v50 = v46[14];
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  *(v49 + v50) = v40;
  sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
  sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
  v51 = sub_22BDBAB14();
  sub_22BB58728(v30, &qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB58728(v27, &qword_27D8E2FC0, &qword_22BDBFB90);
  return v51;
}

uint64_t sub_22BCC4060(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v61 = a3;
  v63 = a1;
  v62 = sub_22BDB7B44();
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDBA014();
  v60 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  v10 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = sub_22BDB8E14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v64 = a2;
  sub_22BDB8EF4();
  sub_22BCB51B4();
  v28 = v15;
  v29 = v14;
  v30 = v5;
  (*(v16 + 8))(v18, v28);
  v31 = v60;
  sub_22BB3CD70(v27, v25, &qword_27D8E2FC0, &qword_22BDBFB90);
  v32 = 1;
  if (sub_22BB3AA28(v25, 1, v5) != 1)
  {
    (*(v31 + 32))(v9, v25, v5);
    sub_22BDBA004();
    (*(v31 + 8))(v9, v5);
    v32 = 0;
  }

  v33 = v62;
  sub_22BB336D0(v29, v32, 1, v62);
  sub_22BB3CD70(v27, v22, &qword_27D8E2FC0, &qword_22BDBFB90);
  v34 = &loc_22BDBC000;
  if (sub_22BB3AA28(v22, 1, v30) == 1)
  {
    v35 = &qword_27D8E2FC0;
    v36 = &qword_22BDBFB90;
    v37 = v22;
  }

  else
  {
    v38 = v58;
    (*(v31 + 32))(v58, v22, v30);
    v39 = v57;
    sub_22BB3CD70(v29, v57, &qword_27D8E3E60, &qword_22BDC23E0);
    if (sub_22BB3AA28(v39, 1, v33) != 1)
    {
      v61 = *(v56 + 32);
      v61(v59, v39, v33);
      sub_22BBE6DE0(&qword_27D8E3FA8, &qword_22BDC17B0);
      v57 = v30;
      v41 = v38;
      v42 = (_s27StatementParameterCandidateVMa(0) - 8);
      v43 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22BDBCBD0;
      v44 = v40 + v43;
      v45 = v40 + v43;
      v46 = v57;
      (*(v31 + 16))(v45, v41, v57);
      type metadata accessor for FeedbackLearning.CandidateDefinition(0);
      swift_storeEnumTagMultiPayload();
      v61((v44 + v42[7]), v59, v33);
      v47 = v41;
      v34 = &loc_22BDBC000;
      (*(v31 + 8))(v47, v46);
      goto LABEL_9;
    }

    (*(v31 + 8))(v38, v30);
    v35 = &qword_27D8E3E60;
    v36 = &qword_22BDC23E0;
    v37 = v39;
  }

  sub_22BB58728(v37, v35, v36);
  v40 = 0;
LABEL_9:
  sub_22BDB8174();
  sub_22BBE6DE0(&qword_27D8E3F88, &qword_22BDC1790);
  v48 = (sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) - 8);
  v49 = (*(*v48 + 80) + 32) & ~*(*v48 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v34[189];
  v51 = v50 + v49;
  v52 = v48[14];
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  *(v51 + v52) = v40;
  sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
  sub_22BCC7468(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter, &protocol conformance descriptor for FeedbackLearning.CandidateParameter);
  v53 = sub_22BDBAB14();
  sub_22BB58728(v29, &qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB58728(v27, &qword_27D8E2FC0, &qword_22BDBFB90);
  return v53;
}

uint64_t sub_22BCC479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v72 = a2;
  v70 = a1;
  v5 = sub_22BDB4C34();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB77D4();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22BDB9CB4();
  v86 = *(v82 - 8);
  v9 = MEMORY[0x28223BE20](v82);
  v79 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v69 - v11;
  v85 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v12 = *(v85 - 8);
  v13 = MEMORY[0x28223BE20](v85);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v69 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = 0;
  v87 = a4;
  v22 = *(a4 + 16);
  do
  {
    if (v22 == v21)
    {
      v45 = MEMORY[0x277D84F90];
      if (v22)
      {
        v88[0] = MEMORY[0x277D84F90];
        sub_22BD280C0(0, v22, 0);
        v45 = v88[0];
        v46 = v87 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v87 = *(v12 + 72);
        v47 = (v86 + 32);
        v48 = v82;
        v49 = v80;
        do
        {
          v50 = v83;
          sub_22BB3CD70(v46, v83, &qword_27D8E4008, &unk_22BDC1810);
          v51 = v50;
          v52 = v84;
          sub_22BB6BEE0(v51, v84, &qword_27D8E4008, &unk_22BDC1810);
          v53 = *v47;
          (*v47)(v49, v52 + *(v85 + 48), v48);
          v88[0] = v45;
          v55 = *(v45 + 16);
          v54 = *(v45 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_22BD280C0(v54 > 1, v55 + 1, 1);
            v45 = v88[0];
          }

          *(v45 + 16) = v55 + 1;
          v53((v45 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v55), v49, v48);
          v46 += v87;
          --v22;
        }

        while (v22);
      }

      return v45;
    }

    v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24 = v87 + v23;
    v25 = *(v12 + 72);
    sub_22BB3CD70(v87 + v23 + v25 * v21++, v20, &qword_27D8E4008, &unk_22BDC1810);
    v26 = v20[8];
    sub_22BB58728(v20, &qword_27D8E4008, &unk_22BDC1810);
  }

  while ((v26 & 1) != 0);
  v27 = v22 + 1;
  v28 = v81;
  while (--v27)
  {
    sub_22BB3CD70(v24, v28, &qword_27D8E4008, &unk_22BDC1810);
    v29 = *(v28 + 8);
    sub_22BB58728(v28, &qword_27D8E4008, &unk_22BDC1810);
    v24 += v25;
    if (v29)
    {
      v30 = v76;
      sub_22BDB6404();
      v31 = v73;
      v32 = v74;
      v33 = v75;
      (*(v74 + 16))(v73, v71, v75);
      v34 = v72;

      v35 = sub_22BDB77C4();
      v36 = sub_22BDBB114();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v34;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v88[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_22BB32EE0(v70, v37, v88);
        *(v38 + 12) = 2080;
        sub_22BCC7468(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
        v40 = sub_22BDBB684();
        v41 = v31;
        v43 = v42;
        (*(v32 + 8))(v41, v33);
        v44 = sub_22BB32EE0(v40, v43, v88);

        *(v38 + 14) = v44;
        _os_log_impl(&dword_22BB2C000, v35, v36, "Cannot coalesce parameter paths for %s in resolver request with id %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318A6080](v39, -1, -1);
        MEMORY[0x2318A6080](v38, -1, -1);
      }

      else
      {

        (*(v32 + 8))(v31, v33);
      }

      (*(v77 + 8))(v30, v78);
      return 0;
    }
  }

  v88[0] = v87;

  sub_22BCC5044(v88);
  v56 = v88[0];
  v57 = *(v88[0] + 16);
  v58 = v82;
  v59 = v79;
  if (v57)
  {
    v88[0] = MEMORY[0x277D84F90];
    sub_22BD280C0(0, v57, 0);
    v45 = v88[0];
    v87 = v56;
    v60 = v56 + v23;
    v61 = (v86 + 32);
    do
    {
      v62 = v83;
      sub_22BB3CD70(v60, v83, &qword_27D8E4008, &unk_22BDC1810);
      v63 = v62;
      v64 = v84;
      sub_22BB6BEE0(v63, v84, &qword_27D8E4008, &unk_22BDC1810);
      v65 = *v61;
      (*v61)(v59, v64 + *(v85 + 48), v58);
      v88[0] = v45;
      v67 = *(v45 + 16);
      v66 = *(v45 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_22BD280C0(v66 > 1, v67 + 1, 1);
        v45 = v88[0];
      }

      *(v45 + 16) = v67 + 1;
      v65((v45 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v67), v59, v58);
      v60 += v25;
      --v57;
    }

    while (v57);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v45;
}

uint64_t sub_22BCC4FAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E4020, &qword_22BDC1828);
    v3 = sub_22BDBB524();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22BCC6D50(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_22BCC5044(uint64_t *a1)
{
  v2 = *(sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB166C(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v10[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v8;
  result = sub_22BCC50F8(v10);
  *a1 = v3;
  return result;
}

uint64_t sub_22BCC50F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
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
        sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BCC55E8(v8, v9, a1, v4);
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
    return sub_22BCC5240(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BCC5240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v8 = MEMORY[0x28223BE20](v61);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v44 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v44 - v19;
  v46 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v51 = -v22;
    v52 = v21;
    v24 = a1 - a3;
    v45 = v22;
    v25 = v21 + v22 * a3;
    v26 = &qword_27D8E4008;
    v55 = &v44 - v19;
    v56 = v16;
    while (2)
    {
      v49 = v23;
      v50 = a3;
      v47 = v25;
      v48 = v24;
      v27 = v24;
      while (1)
      {
        v59 = v27;
        v60 = v25;
        sub_22BB3CD70(v25, v20, v26, &unk_22BDC1810);
        sub_22BB3CD70(v23, v16, v26, &unk_22BDC1810);
        v28 = v57;
        sub_22BB3CD70(v20, v57, v26, &unk_22BDC1810);
        v58 = *v28;
        v29 = *(v28 + 8);
        v30 = *(v61 + 48);
        v31 = v26;
        v32 = sub_22BDB9CB4();
        v33 = *(*(v32 - 8) + 8);
        v34 = v28 + v30;
        v16 = v56;
        v35 = v61;
        v33(v34, v32);
        if (v29)
        {
          break;
        }

        v36 = v54;
        sub_22BB3CD70(v16, v54, v31, &unk_22BDC1810);
        v37 = *(v35 + 48);
        if (*(v36 + 8))
        {
          v33(v36 + v37, v32);
          break;
        }

        v38 = v36;
        v39 = *v36;
        v33(v38 + v37, v32);
        sub_22BB58728(v16, v31, &unk_22BDC1810);
        v20 = v55;
        result = sub_22BB58728(v55, v31, &unk_22BDC1810);
        v26 = v31;
        v41 = v59;
        v40 = v60;
        if (v58 < v39)
        {
          if (!v52)
          {
            __break(1u);
            return result;
          }

          v42 = v53;
          sub_22BB6BEE0(v60, v53, v26, &unk_22BDC1810);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22BB6BEE0(v42, v23, v26, &unk_22BDC1810);
          v23 += v51;
          v25 = v40 + v51;
          v43 = __CFADD__(v41, 1);
          v27 = v41 + 1;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      sub_22BB58728(v16, v31, &unk_22BDC1810);
      v20 = v55;
      result = sub_22BB58728(v55, v31, &unk_22BDC1810);
      v26 = v31;
LABEL_13:
      a3 = v50 + 1;
      v23 = v49 + v45;
      v24 = v48 - 1;
      v25 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BCC55E8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v155 = a1;
  v182 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v167 = *(v182 - 8);
  v6 = MEMORY[0x28223BE20](v182);
  v160 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v173 = &v147 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v175 = &v147 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v147 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v181 = &v147 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v162 = &v147 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v165 = &v147 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v148 = &v147 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v150 = &v147 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v149 = &v147 - v29;
  MEMORY[0x28223BE20](v28);
  v152 = &v147 - v36;
  v168 = a3;
  v37 = *(a3 + 8);
  if (v37 < 1)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v155;
    if (!*v155)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v140 = (v39 + 16);
      for (i = *(v39 + 2); i >= 2; *v140 = i)
      {
        if (!*v168)
        {
          goto LABEL_149;
        }

        v142 = &v39[16 * i];
        v143 = *v142;
        v144 = &v140[2 * i];
        v145 = *(v144 + 1);
        v146 = v170;
        sub_22BCC637C(*v168 + *(v167 + 72) * *v142, (*v168 + *(v167 + 72) * *v144), *v168 + *(v167 + 72) * v145, a3);
        v170 = v146;
        if (v146)
        {
          break;
        }

        if (v145 < v143)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v140)
        {
          goto LABEL_138;
        }

        *v142 = v143;
        *(v142 + 1) = v145;
        v30 = *v140 - i;
        if (*v140 < i)
        {
          goto LABEL_139;
        }

        i = *v140 - 1;
        sub_22BDB12C0(v144 + 16, v30, v144);
      }

LABEL_110:

      return;
    }

LABEL_146:
    v39 = sub_22BDB12A8(v39, v30, v31, v32);
    goto LABEL_114;
  }

  v164 = v35;
  v159 = v34;
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v154 = a4;
  v174 = v33;
  v153 = v15;
  while (2)
  {
    v40 = v38 + 1;
    v156 = v38;
    if (v38 + 1 >= v37)
    {
      goto LABEL_36;
    }

    v41 = v38;
    v163 = v37;
    v42 = *v168;
    v43 = *(v167 + 72);
    v169 = v38 + 1;
    v44 = v152;
    sub_22BB3CD70(v42 + v43 * v40, v152, &qword_27D8E4008, &unk_22BDC1810);
    v178 = v43;
    v45 = v149;
    sub_22BB3CD70(v42 + v43 * v41, v149, &qword_27D8E4008, &unk_22BDC1810);
    v46 = v150;
    sub_22BB3CD70(v44, v150, &qword_27D8E4008, &unk_22BDC1810);
    v47 = *v46;
    LOBYTE(v44) = *(v46 + 8);
    v48 = *(v182 + 48);
    v49 = sub_22BDB9CB4();
    v50 = *(v49 - 8);
    v176 = *(v50 + 8);
    v177 = v49;
    v172 = v50 + 8;
    v176(v46 + v48);
    v151 = v39;
    if ((v44 & 1) == 0)
    {
      v51 = v148;
      sub_22BB3CD70(v45, v148, &qword_27D8E4008, &unk_22BDC1810);
      v52 = *(v182 + 48);
      if ((*(v51 + 8) & 1) == 0)
      {
        v53 = *v51;
        (v176)(v51 + v52, v177);
        LODWORD(v166) = v47 < v53;
        goto LABEL_9;
      }

      (v176)(v51 + v52, v177);
    }

    LODWORD(v166) = 0;
LABEL_9:
    sub_22BB58728(v45, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB58728(v152, &qword_27D8E4008, &unk_22BDC1810);
    v54 = v156 + 2;
    v55 = v178 * (v156 + 2);
    v56 = v42 + v55;
    v57 = v169;
    v58 = v178 * v169;
    a3 = v42 + v178 * v169;
    v60 = v164;
    v59 = v165;
    do
    {
      v61 = v54;
      v62 = v57;
      v63 = v58;
      v64 = v55;
      if (v54 >= v163)
      {
        break;
      }

      v179 = v57;
      v180 = v54;
      sub_22BB3CD70(v56, v60, &qword_27D8E4008, &unk_22BDC1810);
      sub_22BB3CD70(a3, v59, &qword_27D8E4008, &unk_22BDC1810);
      v65 = v162;
      sub_22BB3CD70(v60, v162, &qword_27D8E4008, &unk_22BDC1810);
      v171 = *v65;
      v66 = *(v65 + 8);
      (v176)(v65 + *(v182 + 48), v177);
      if ((v66 & 1) == 0)
      {
        v67 = v159;
        sub_22BB3CD70(v59, v159, &qword_27D8E4008, &unk_22BDC1810);
        v68 = *(v182 + 48);
        if ((*(v67 + 8) & 1) == 0)
        {
          v70 = *v67;
          (v176)(v67 + v68, v177);
          v69 = v171 < v70;
          goto LABEL_16;
        }

        (v176)(v67 + v68, v177);
      }

      v69 = 0;
LABEL_16:
      v59 = v165;
      sub_22BB58728(v165, &qword_27D8E4008, &unk_22BDC1810);
      v60 = v164;
      sub_22BB58728(v164, &qword_27D8E4008, &unk_22BDC1810);
      v62 = v179;
      v61 = v180;
      v54 = v180 + 1;
      v56 += v178;
      a3 += v178;
      v57 = v179 + 1;
      v58 = v63 + v178;
      v55 = v64 + v178;
    }

    while (v166 == v69);
    v39 = v151;
    if (!v166)
    {
      goto LABEL_34;
    }

    if (v61 < v156)
    {
      goto LABEL_143;
    }

    if (v156 < v61)
    {
      v71 = v156 * v178;
      v72 = v156;
      do
      {
        if (v72 != v62)
        {
          a3 = *v168;
          if (!*v168)
          {
            goto LABEL_150;
          }

          sub_22BB6BEE0(a3 + v71, v160, &qword_27D8E4008, &unk_22BDC1810);
          v73 = v71 < v63 || a3 + v71 >= a3 + v64;
          if (v73)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22BB6BEE0(v160, a3 + v63, &qword_27D8E4008, &unk_22BDC1810);
        }

        ++v72;
        v63 -= v178;
        v64 -= v178;
        v71 += v178;
      }

      while (v72 < v62--);
      v40 = v61;
      a4 = v154;
      v39 = v151;
    }

    else
    {
LABEL_34:
      v40 = v61;
      a4 = v154;
    }

    v15 = v153;
LABEL_36:
    v75 = v168[1];
    if (v40 >= v75)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v40, v156))
    {
      goto LABEL_142;
    }

    if (v40 - v156 >= a4)
    {
LABEL_57:
      v77 = v156;
      goto LABEL_58;
    }

    v76 = v156 + a4;
    if (__OFADD__(v156, a4))
    {
      goto LABEL_144;
    }

    v77 = v156;
    if (v76 >= v75)
    {
      v76 = v168[1];
    }

    if (v76 < v156)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v40 == v76)
    {
LABEL_58:
      if (v40 < v77)
      {
        goto LABEL_141;
      }

      v169 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8F3C8();
        v39 = v138;
      }

      v97 = *(v39 + 2);
      a3 = v97 + 1;
      v38 = v169;
      if (v97 >= *(v39 + 3) >> 1)
      {
        sub_22BD8F3C8();
        v38 = v169;
        v39 = v139;
      }

      *(v39 + 2) = a3;
      v98 = v39 + 32;
      v99 = &v39[16 * v97 + 32];
      *v99 = v77;
      *(v99 + 1) = v38;
      if (!*v155)
      {
        goto LABEL_151;
      }

      if (!v97)
      {
LABEL_108:
        v37 = v168[1];
        a4 = v154;
        v15 = v153;
        if (v38 >= v37)
        {
          goto LABEL_112;
        }

        continue;
      }

      v100 = *v155;
      while (1)
      {
        v101 = a3 - 1;
        v102 = &v98[16 * a3 - 16];
        v103 = &v39[16 * a3];
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v104 = *(v39 + 4);
          v105 = *(v39 + 5);
          v114 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          v107 = v114;
LABEL_79:
          if (v107)
          {
            goto LABEL_128;
          }

          v119 = *v103;
          v118 = *(v103 + 1);
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_131;
          }

          v123 = *(v102 + 1);
          v124 = v123 - *v102;
          if (__OFSUB__(v123, *v102))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v121, v124))
          {
            goto LABEL_136;
          }

          if (v121 + v124 >= v106)
          {
            if (v106 < v124)
            {
              v101 = a3 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (a3 < 2)
        {
          goto LABEL_130;
        }

        v126 = *v103;
        v125 = *(v103 + 1);
        v114 = __OFSUB__(v125, v126);
        v121 = v125 - v126;
        v122 = v114;
LABEL_94:
        if (v122)
        {
          goto LABEL_133;
        }

        v128 = *v102;
        v127 = *(v102 + 1);
        v114 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v114)
        {
          goto LABEL_135;
        }

        if (v129 < v121)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v101 - 1 >= a3)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v168)
        {
          goto LABEL_148;
        }

        v133 = v39;
        a3 = &v98[16 * v101 - 16];
        v134 = *a3;
        v39 = &v98[16 * v101];
        v135 = *(v39 + 1);
        v136 = v170;
        sub_22BCC637C(*v168 + *(v167 + 72) * *a3, (*v168 + *(v167 + 72) * *v39), *v168 + *(v167 + 72) * v135, v100);
        v170 = v136;
        if (v136)
        {
          goto LABEL_110;
        }

        if (v135 < v134)
        {
          goto LABEL_123;
        }

        v137 = *(v133 + 2);
        if (v101 > v137)
        {
          goto LABEL_124;
        }

        *a3 = v134;
        *(a3 + 8) = v135;
        if (v101 >= v137)
        {
          goto LABEL_125;
        }

        a3 = v137 - 1;
        sub_22BDB12C0(v39 + 16, v137 - 1 - v101, &v98[16 * v101]);
        v39 = v133;
        *(v133 + 2) = v137 - 1;
        v38 = v169;
        if (v137 <= 2)
        {
          goto LABEL_108;
        }
      }

      v108 = &v98[16 * a3];
      v109 = *(v108 - 8);
      v110 = *(v108 - 7);
      v114 = __OFSUB__(v110, v109);
      v111 = v110 - v109;
      if (v114)
      {
        goto LABEL_126;
      }

      v113 = *(v108 - 6);
      v112 = *(v108 - 5);
      v114 = __OFSUB__(v112, v113);
      v106 = v112 - v113;
      v107 = v114;
      if (v114)
      {
        goto LABEL_127;
      }

      v115 = *(v103 + 1);
      v116 = v115 - *v103;
      if (__OFSUB__(v115, *v103))
      {
        goto LABEL_129;
      }

      v114 = __OFADD__(v106, v116);
      v117 = v106 + v116;
      if (v114)
      {
        goto LABEL_132;
      }

      if (v117 >= v111)
      {
        v131 = *v102;
        v130 = *(v102 + 1);
        v114 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v114)
        {
          goto LABEL_140;
        }

        if (v106 < v132)
        {
          v101 = a3 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

    break;
  }

  v151 = v39;
  v78 = *v168;
  v79 = *(v167 + 72);
  v80 = *v168 + v79 * (v40 - 1);
  v171 = -v79;
  v172 = v78;
  v81 = v156 - v40;
  v157 = v79;
  a3 = v78 + v40 * v79;
  v158 = v76;
LABEL_45:
  v169 = v40;
  v161 = a3;
  v163 = v81;
  v82 = v81;
  v166 = v80;
  while (1)
  {
    v176 = a3;
    v177 = v82;
    v83 = v181;
    sub_22BB3CD70(a3, v181, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB3CD70(v80, v15, &qword_27D8E4008, &unk_22BDC1810);
    v84 = v175;
    sub_22BB3CD70(v83, v175, &qword_27D8E4008, &unk_22BDC1810);
    v85 = *v84;
    v86 = v182;
    LODWORD(v180) = *(v84 + 8);
    v87 = *(v182 + 48);
    v178 = v85;
    v179 = v87;
    v88 = sub_22BDB9CB4();
    v89 = v15;
    v90 = *(*(v88 - 8) + 8);
    v90(v84 + v179, v88);
    if (v180)
    {
      goto LABEL_54;
    }

    v91 = v174;
    sub_22BB3CD70(v89, v174, &qword_27D8E4008, &unk_22BDC1810);
    v92 = *(v86 + 48);
    if (*(v91 + 8))
    {
      v90(v91 + v92, v88);
LABEL_54:
      sub_22BB58728(v89, &qword_27D8E4008, &unk_22BDC1810);
      sub_22BB58728(v181, &qword_27D8E4008, &unk_22BDC1810);
      v15 = v89;
LABEL_55:
      v40 = v169 + 1;
      v80 = v166 + v157;
      v81 = v163 - 1;
      a3 = v161 + v157;
      if (v169 + 1 == v158)
      {
        v40 = v158;
        v39 = v151;
        goto LABEL_57;
      }

      goto LABEL_45;
    }

    v93 = *v91;
    v90(v91 + v92, v88);
    sub_22BB58728(v89, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB58728(v181, &qword_27D8E4008, &unk_22BDC1810);
    v15 = v89;
    if (v178 >= v93)
    {
      goto LABEL_55;
    }

    v94 = v177;
    if (!v172)
    {
      break;
    }

    v95 = v176;
    v96 = v173;
    sub_22BB6BEE0(v176, v173, &qword_27D8E4008, &unk_22BDC1810);
    swift_arrayInitWithTakeFrontToBack();
    sub_22BB6BEE0(v96, v80, &qword_27D8E4008, &unk_22BDC1810);
    v80 += v171;
    a3 = v95 + v171;
    v73 = __CFADD__(v94, 1);
    v82 = v94 + 1;
    if (v73)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_22BCC637C(unint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v9 = MEMORY[0x28223BE20](v8);
  v83 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v81 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v81 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v87 = &v81 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v81 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v97 = &v81 - v23;
  result = MEMORY[0x28223BE20](v22);
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v28 = &a2[-a1];
  v29 = &a2[-a1] == 0x8000000000000000 && v27 == -1;
  if (v29)
  {
    goto LABEL_70;
  }

  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_71;
  }

  v94 = result;
  v32 = v28 / v27;
  v100 = a1;
  v99 = a4;
  v33 = v30 / v27;
  if (v28 / v27 < v30 / v27)
  {
    v93 = &v81 - v25;
    sub_22BD2774C(a1, v28 / v27, a4);
    v89 = a3;
    v90 = a4 + v32 * v27;
    v98 = v90;
    v34 = v97;
    v35 = v94;
    v88 = v27;
    while (1)
    {
      if (a4 >= v90 || a2 >= a3)
      {
        goto LABEL_68;
      }

      v96 = a1;
      v97 = a2;
      v37 = v35;
      v38 = v93;
      sub_22BB3CD70(a2, v93, &qword_27D8E4008, &unk_22BDC1810);
      v95 = a4;
      sub_22BB3CD70(a4, v34, &qword_27D8E4008, &unk_22BDC1810);
      v39 = v91;
      sub_22BB3CD70(v38, v91, &qword_27D8E4008, &unk_22BDC1810);
      v92 = *v39;
      v40 = *(v39 + 8);
      v41 = *(v37 + 48);
      v42 = sub_22BDB9CB4();
      v43 = *(*(v42 - 8) + 8);
      v43(v39 + v41, v42);
      if (v40)
      {
        goto LABEL_19;
      }

      v44 = v87;
      sub_22BB3CD70(v34, v87, &qword_27D8E4008, &unk_22BDC1810);
      v45 = *(v94 + 48);
      if (*(v44 + 8))
      {
        break;
      }

      v49 = v44;
      v50 = *v44;
      v43(v49 + v45, v42);
      sub_22BB58728(v34, &qword_27D8E4008, &unk_22BDC1810);
      sub_22BB58728(v93, &qword_27D8E4008, &unk_22BDC1810);
      if (v92 >= v50)
      {
        goto LABEL_20;
      }

      v46 = v96;
      v47 = v88;
      a2 = &v97[v88];
      v51 = v96 < v97 || v96 >= a2;
      v35 = v94;
      a4 = v95;
      if (v51)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v89;
      }

      else
      {
        a3 = v89;
        if (v96 != v97)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

LABEL_29:
      a1 = v46 + v47;
      v100 = a1;
    }

    v43(v44 + v45, v42);
    v38 = v93;
LABEL_19:
    sub_22BB58728(v34, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB58728(v38, &qword_27D8E4008, &unk_22BDC1810);
LABEL_20:
    v46 = v96;
    v47 = v88;
    a4 = v95 + v88;
    v48 = v96 < v95 || v96 >= a4;
    v35 = v94;
    a2 = v97;
    if (v48)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v89;
    }

    else
    {
      a3 = v89;
      if (v96 != v95)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v99 = a4;
    goto LABEL_29;
  }

  sub_22BD2774C(a2, v30 / v27, a4);
  v52 = a4 + v33 * v27;
  v53 = -v27;
  v54 = v52;
  v95 = a4;
  v96 = a1;
  v85 = v17;
  v93 = -v27;
LABEL_40:
  v97 = a2;
  v87 = &a2[v53];
  v55 = a3;
  v56 = v54;
  v57 = v82;
  v89 = v54;
  while (1)
  {
    if (v52 <= a4)
    {
      v100 = v97;
      v98 = v56;
      goto LABEL_68;
    }

    if (v97 <= a1)
    {
      break;
    }

    v91 = v55;
    v92 = v52;
    v84 = v56;
    v90 = v52 + v53;
    sub_22BB3CD70(v52 + v53, v17, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB3CD70(v87, v57, &qword_27D8E4008, &unk_22BDC1810);
    v58 = v17;
    v59 = v57;
    v60 = v86;
    sub_22BB3CD70(v58, v86, &qword_27D8E4008, &unk_22BDC1810);
    v88 = *v60;
    v61 = *(v60 + 8);
    v62 = v94;
    v63 = *(v94 + 48);
    v64 = sub_22BDB9CB4();
    v65 = *(*(v64 - 8) + 8);
    v65(v60 + v63, v64);
    if (v61)
    {
      v66 = 0;
      a1 = v96;
      v67 = v59;
    }

    else
    {
      v68 = v83;
      sub_22BB3CD70(v59, v83, &qword_27D8E4008, &unk_22BDC1810);
      v69 = *(v62 + 48);
      v67 = v59;
      if (*(v68 + 8))
      {
        v65(v68 + v69, v64);
        v66 = 0;
      }

      else
      {
        v70 = *v68;
        v65(v68 + v69, v64);
        v66 = v88 < v70;
      }

      a1 = v96;
    }

    v71 = v85;
    v72 = v91;
    v73 = v91 + v93;
    v57 = v67;
    sub_22BB58728(v67, &qword_27D8E4008, &unk_22BDC1810);
    v74 = v71;
    sub_22BB58728(v71, &qword_27D8E4008, &unk_22BDC1810);
    a4 = v95;
    if (v66)
    {
      v80 = v72 < v97 || v73 >= v97;
      a3 = v73;
      if (v80)
      {
        a2 = v87;
        swift_arrayInitWithTakeFrontToBack();
        v54 = v84;
        v52 = v92;
        v53 = v93;
        v17 = v74;
      }

      else
      {
        v54 = v84;
        v29 = v72 == v97;
        a2 = v87;
        v52 = v92;
        v53 = v93;
        v17 = v74;
        if (!v29)
        {
          a2 = v87;
          swift_arrayInitWithTakeBackToFront();
          v52 = v92;
          v54 = v84;
        }
      }

      goto LABEL_40;
    }

    v75 = v72 < v92 || v73 >= v92;
    v76 = v73;
    if (v75)
    {
      v77 = v90;
      swift_arrayInitWithTakeFrontToBack();
      v55 = v73;
      v52 = v77;
      v56 = v77;
      v54 = v89;
      v17 = v71;
      v53 = v93;
    }

    else
    {
      v54 = v89;
      v78 = v90;
      v56 = v90;
      v29 = v92 == v72;
      v55 = v73;
      v52 = v90;
      v17 = v74;
      v53 = v93;
      if (!v29)
      {
        v79 = v76;
        swift_arrayInitWithTakeBackToFront();
        v54 = v89;
        v55 = v79;
        v52 = v78;
        v56 = v78;
      }
    }
  }

  v100 = v97;
  v98 = v54;
LABEL_68:
  sub_22BCD3BCC(&v100, &v99, &v98);
  return 1;
}

uint64_t sub_22BCC6B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BDBA594();
  sub_22BB2F330();
  (*(v7 + 16))(a1, a4);

  return a2;
}

uint64_t sub_22BCC6B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB4C34();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
}

uint64_t sub_22BCC6C18(uint64_t a1, uint64_t a2)
{
  sub_22BCC74B0();
}

uint64_t sub_22BCC6C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22BBE6DE0(&qword_27D8E3FC8, &qword_22BDC17D0);
  v4 = *(sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8) + 48);
  result = sub_22BCC6B98(a2, a1);
  *(a2 + v4) = result;
  return result;
}

uint64_t sub_22BCC6CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22BBE6DE0(&qword_27D8E3FD8, &qword_22BDC17E0);
  v4 = *(sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) + 48);
  result = sub_22BCC6C18(a2, a1);
  *(a2 + v4) = result;
  return result;
}

uint64_t sub_22BCC6D50(uint64_t a1, char a2, uint64_t *a3)
{
  v46 = a3;
  v5 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v37 - v11;
  v43 = *(a1 + 16);
  if (!v43)
  {
  }

  v38 = v5;
  v12 = 0;
  v13 = *(v9 + 48);
  v41 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v42 = v13;
  while (v12 < *(a1 + 16))
  {
    v14 = v10;
    v15 = v44;
    sub_22BB3CD70(v41 + *(v10 + 72) * v12, v44, &qword_27D8E3F90, &unk_22BDC1798);
    sub_22BCC7414();
    v16 = *(v15 + v42);
    v17 = *v46;
    v25 = sub_22BD84634(v7);
    v26 = *(v17 + 16);
    v27 = (v18 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_18;
    }

    v29 = v18;
    if (*(v17 + 24) >= v28)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5C114(v28, a2 & 1, v19, v20, v21, v22, v23, v24, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      v30 = sub_22BD84634(v7);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_20;
      }

      v25 = v30;
    }

    v32 = *v46;
    if (v29)
    {
      sub_22BCC73B8(v7);
      *(*(v32 + 56) + 8 * v25) = v16;
    }

    else
    {
      *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      sub_22BCC7414();
      *(*(v32 + 56) + 8 * v25) = v16;
      v33 = *(v32 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_19;
      }

      *(v32 + 16) = v35;
    }

    ++v12;
    a2 = 1;
    v10 = v14;
    if (v43 == v12)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC708C@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v6 = sub_22BDBA594();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB30560();
  v46 = v15;
  sub_22BB30B70();
  result = MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = *v1;
  v21 = v1[1];
  v22 = v1[2];
  v23 = v1[3];
  v24 = v1[4];
  v41 = v5;
  v45 = v22;
  if (v24)
  {
    v43 = a1;
    v25 = v23;
LABEL_7:
    v42 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v25 << 6);
    v27 = (*(v20 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    (*(v8 + 16))(v12, *(v20 + 56) + *(v8 + 72) * v26, v6);
    v30 = v44;
    v31 = *(v44 + 48);
    *v19 = v28;
    *(v19 + 1) = v29;
    v32 = v12;
    v33 = v30;
    (*(v8 + 32))(&v19[v31], v32, v6);
    sub_22BB336D0(v19, 0, 1, v33);

    v34 = v42;
    a1 = v43;
LABEL_8:
    *v1 = v20;
    v1[1] = v21;
    v35 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v34;
    v36 = v1[5];
    sub_22BB6BEE0(v19, v35, &qword_27D8E27D8, &qword_22BDC0640);
    v37 = 1;
    if (sub_22BB3AA28(v35, 1, v33) != 1)
    {
      v38 = v35;
      v39 = v41;
      sub_22BB6BEE0(v38, v41, &qword_27D8E27E8, &qword_22BDBF4C0);
      v36(v39);
      sub_22BB58728(v39, &qword_27D8E27E8, &qword_22BDBF4C0);
      v37 = 0;
    }

    v40 = sub_22BBE6DE0(&qword_27D8E2B58, &unk_22BDBD260);
    return sub_22BB336D0(a1, v37, 1, v40);
  }

  else
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= ((v22 + 64) >> 6))
      {
        v33 = v44;
        sub_22BB336D0(&v41 - v18, 1, 1, v44);
        v34 = 0;
        goto LABEL_8;
      }

      v24 = *(v21 + 8 * v25);
      ++v23;
      if (v24)
      {
        v43 = a1;
        v23 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BCC73B8(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCC7414()
{
  v1 = sub_22BB2F474();
  v2(v1);
  sub_22BB2F330();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BCC7468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BCC74B0()
{
  v1 = sub_22BB2F474();
  v2(v1);
  sub_22BB2F330();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BCC7514(uint64_t a1)
{
  result = _s18ToolStepEvaluationVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s23ParameterStepEvaluationVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s20ActionStepEvaluationVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s19ValueStepEvaluationVMa(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BCC75F8(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = _s25ValueDisambiguationResultVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BCC76C4(uint64_t a1)
{
  sub_22BCC7738();
  if (v1 <= 0x3F)
  {
    sub_22BCC7760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22BCC7738()
{
  result = qword_2814287B0;
  if (!qword_2814287B0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_2814287B0);
  }

  return result;
}

void sub_22BCC7760()
{
  if (!qword_281428900)
  {
    v0 = sub_22BDBA594();
    if (!v1)
    {
      atomic_store(v0, &qword_281428900);
    }
  }
}

uint64_t sub_22BCC7824(uint64_t a1)
{
  result = sub_22BDB43E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCC78D8(uint64_t a1)
{
  result = sub_22BDB4C34();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB8384();
    if (v3 <= 0x3F)
    {
      result = _s19ParameterStepResultOMa(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCC7974(uint64_t a1)
{
  result = _s25ParameterNeedsValueResultVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s25ParameterNotAllowedResultVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s33ParameterCandidatesNotFoundResultVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s27ParameterConfirmationResultVMa(319);
        if (v5 <= 0x3F)
        {
          result = _s29ParameterDisambiguationResultVMa(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BCC7A38(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s20DisambiguationResultOMa(0);
    sub_22BB314BC();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_22BDB43E4();
      v11 = *(a3 + 24);
    }

    return sub_22BB3AA28(a1 + v11, a2, v10);
  }
}

void *sub_22BCC7B14(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_22BB6BE74();
    _s20DisambiguationResultOMa(0);
    sub_22BB314BC();
    if (*(v4 + 84) != v3)
    {
      sub_22BDB43E4();
    }

    sub_22BB313F4();

    return sub_22BB336D0(v5, v6, v7, v8);
  }

  return result;
}

void sub_22BCC7BD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22BCC80CC(319, a4, a5);
  if (v5 <= 0x3F)
  {
    _s20DisambiguationResultOMa(319);
    if (v6 <= 0x3F)
    {
      sub_22BDB43E4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22BCC7C9C(uint64_t a1)
{
  result = sub_22BDBA594();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCC7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_22BB2F474();
  v8(v7);
  sub_22BB314BC();
  if (*(v9 + 84) == v5)
  {
    v10 = sub_22BB69A84();
  }

  else
  {
    a5(0);
    v10 = sub_22BB35180();
  }

  return sub_22BB3AA28(v10, v5, v11);
}

uint64_t sub_22BCC7DE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_22BB2F474();
  v9(v8);
  sub_22BB314BC();
  if (*(v10 + 84) == a3)
  {
    sub_22BB33224();
  }

  else
  {
    a6(0);
    sub_22BB35180();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v11, v12, v13, v14);
}

uint64_t sub_22BCC7E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCC7FD8(uint64_t a1)
{
  sub_22BCC7760();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22BCC80CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBAE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BCC8120(uint64_t a1, uint64_t a2)
{
  v4 = _s24ToolDisambiguationResultVMa(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BBE1C90);
}

uint64_t sub_22BCC8178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s24ToolDisambiguationResultVMa(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BBE1C80);
}

uint64_t sub_22BCC81E0(uint64_t a1)
{
  v2 = _s24ToolDisambiguationResultVMa(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_22BCC8288()
{
  sub_22BB30F94();
  v55 = v3;
  v56 = v4;
  v52 = _s19ValueStepEvaluationVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v54 = v7 - v6;
  v8 = sub_22BB2F120();
  v51 = _s20ActionStepEvaluationVMa(v8);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v53 = v11 - v10;
  v12 = sub_22BB2F120();
  v13 = _s23ParameterStepEvaluationVMa(v12);
  v14 = sub_22BB2F0C8(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v17 = v16 - v15;
  v50 = _s18ToolStepEvaluationVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BB310F8();
  _s23StatementStepEvaluationOMa(v19);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  MEMORY[0x28223BE20](v25);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v28);
  v30 = &v49 - v29;
  v31 = sub_22BBE6DE0(&qword_27D8E4128, &qword_22BDC2320);
  sub_22BB2F0C8(v31);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB395E0();
  v34 = *(v33 + 56);
  sub_22BCCD9D4(v55, v0);
  sub_22BCCD9D4(v56, v0 + v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB37784();
      sub_22BCCD9D4(v0, v2);
      if (sub_22BB977AC() != 1)
      {
        sub_22BB39778();
        v36 = v2;
        goto LABEL_21;
      }

      sub_22BB6BD00();
      sub_22BCCD920(v0 + v34, v17);
      sub_22BCC8EA8();
      sub_22BCCD97C(v17, _s23ParameterStepEvaluationVMa);
      sub_22BCCD97C(v2, _s23ParameterStepEvaluationVMa);
      sub_22BB3809C();
      goto LABEL_28;
    case 2u:
      sub_22BB37784();
      sub_22BCCD9D4(v0, v27);
      if (sub_22BB977AC() != 2)
      {
        sub_22BB31D04();
        v36 = v27;
        goto LABEL_21;
      }

      sub_22BB6926C();
      v37 = v53;
      sub_22BCCD920(v0 + v34, v53);
      if ((sub_22BDB4C04() & 1) != 0 && v27[*(v51 + 20)] == *(v37 + *(v51 + 20)))
      {
        _s24ActionConfirmationResultVMa(0);
        sub_22BDB43B4();
        sub_22BB31D04();
        sub_22BCCD97C(v37, v38);
      }

      else
      {
        sub_22BB31D04();
        sub_22BCCD97C(v37, v47);
      }

      sub_22BB31D04();
      v40 = v27;
      goto LABEL_27;
    case 3u:
      sub_22BB37784();
      v41 = sub_22BB33728();
      sub_22BCCD9D4(v41, v42);
      if (sub_22BB977AC() != 3)
      {
        sub_22BB3A95C();
        v36 = v23;
        goto LABEL_21;
      }

      sub_22BB374F4();
      v43 = v54;
      sub_22BCCD920(v0 + v34, v54);
      if (sub_22BDB4C04() & 1) != 0 && (sub_22BDB4C04())
      {
        sub_22BCEFBF4(*(v23 + *(v52 + 24)), *(v43 + *(v52 + 24)));
        if (v44)
        {
          _s25ValueDisambiguationResultVMa(0);
          sub_22BCCBDC4();
          if (v45)
          {
            sub_22BDB43B4();
          }
        }
      }

      sub_22BB354B8();
      sub_22BCCD97C(v43, v46);
      v40 = sub_22BB95B5C();
      goto LABEL_27;
    default:
      sub_22BB37784();
      sub_22BCCD9D4(v0, v30);
      if (sub_22BB977AC())
      {
        sub_22BB33D58();
        v36 = v30;
LABEL_21:
        sub_22BCCD97C(v36, v35);
        sub_22BB58728(v0, &qword_27D8E4128, &qword_22BDC2320);
      }

      else
      {
        sub_22BB340A8();
        sub_22BCCD920(v0 + v34, v1);
        if (sub_22BDB4C04())
        {
          sub_22BCC9310(&v30[*(v50 + 20)], v1 + *(v50 + 20));
        }

        sub_22BB33D58();
        sub_22BCCD97C(v1, v48);
        sub_22BB33D58();
        v40 = v30;
LABEL_27:
        sub_22BCCD97C(v40, v39);
        sub_22BB3809C();
      }

LABEL_28:
      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BCC87B8()
{
  v6 = _s19ValueStepEvaluationVMa(0);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v8 = sub_22BB51880();
  v9 = _s20ActionStepEvaluationVMa(v8);
  v10 = sub_22BB2F0C8(v9);
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB310F8();
  v12 = _s23ParameterStepEvaluationVMa(v11);
  v13 = sub_22BB2F0C8(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v14 = sub_22BB319F8();
  v15 = _s18ToolStepEvaluationVMa(v14);
  v16 = sub_22BB2F0C8(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB31580();
  _s23StatementStepEvaluationOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB37784();
  sub_22BCCD9D4(v1, v5);
  sub_22BB32E04();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB6BD00();
      sub_22BCCD920(v5, v3);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v30 = v25 + 5;
      sub_22BCC8F30();
      sub_22BB92270();

      sub_22BB36A44();
      v19 = v30;
      sub_22BB39778();
      v21 = v3;
      break;
    case 2u:
      sub_22BB6926C();
      sub_22BCCD920(v5, v2);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v28 = v22 | 2;
      sub_22BCC8B28();
      sub_22BB92270();

      sub_22BB36A44();
      v19 = v28;
      sub_22BB31D04();
      v21 = v2;
      break;
    case 3u:
      sub_22BB374F4();
      sub_22BCCD920(v5, v0);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v29 = v23 + 1;
      v24 = sub_22BCC9124();
      MEMORY[0x2318A4C40](v24);

      sub_22BB36A44();
      v19 = v29;
      sub_22BB3A95C();
      v21 = v0;
      break;
    default:
      sub_22BB340A8();
      sub_22BCCD920(v5, v4);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v27 = v18;
      sub_22BCC8DD0();
      sub_22BB92270();

      sub_22BB36A44();
      v19 = v27;
      sub_22BB33D58();
      v21 = v4;
      break;
  }

  sub_22BCCD97C(v21, v20);
  return v19;
}

BOOL sub_22BCC8AB4()
{
  sub_22BB35F54();
  result = 0;
  if (sub_22BDB4C04())
  {
    v2 = _s20ActionStepEvaluationVMa(0);
    if (*(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20)))
    {
      v3 = _s24ActionConfirmationResultVMa(0);
      sub_22BB36D64(v3);
      if (sub_22BDB43B4())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22BCC8B28()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD00000000000002ELL);
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v0, v1, MEMORY[0x277D1C368]);
  v2 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v2);

  sub_22BB53D24();
  _s20ActionStepEvaluationVMa(0);
  sub_22BCC8C58();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCC8BFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = sub_22BB30F68();
  v4 = _s24ActionConfirmationResultVMa(v3);
  sub_22BB36D64(v4);

  return sub_22BDB43B4();
}

uint64_t sub_22BCC8C58()
{
  sub_22BB3377C();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v2 = 0xE900000000000064;
  v3 = 0x657463656A65722ELL;
  if (*v0 != 1)
  {
    v3 = 0x6E6F646E6162612ELL;
    v2 = v1;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6D7269666E6F632ELL;
  }

  if (*v0)
  {
    v1 = v2;
  }

  MEMORY[0x2318A4C40](v4, v1);

  sub_22BB38DCC();
  sub_22BBC7868();
  _s24ActionConfirmationResultVMa(0);
  sub_22BB394F8();
  sub_22BDB43E4();
  sub_22BB35B18();
  v7 = sub_22BCC988C(v5, v6, MEMORY[0x277CC9628]);
  sub_22BB37014(v7);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v9;
}

BOOL sub_22BCC8D78()
{
  sub_22BB35F54();
  if ((sub_22BDB4C04() & 1) == 0)
  {
    return 0;
  }

  v0 = _s18ToolStepEvaluationVMa(0);
  v1 = sub_22BB36D64(v0);

  return sub_22BCC9310(v1, v2);
}

uint64_t sub_22BCC8DD0()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD00000000000002CLL);
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v0, v1, MEMORY[0x277D1C368]);
  v2 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v2);

  sub_22BB53D24();
  _s18ToolStepEvaluationVMa(0);
  sub_22BCC9484();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

void sub_22BCC8EA8()
{
  sub_22BB35F54();
  if (sub_22BDB4C04())
  {
    v0 = _s23ParameterStepEvaluationVMa(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB94E2C(*(v0 + 24));
      if (sub_22BDB8354())
      {
        sub_22BB94E2C(*(v0 + 28));

        sub_22BCCA5F8();
      }
    }
  }
}

uint64_t sub_22BCC8F30()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  _s23ParameterStepEvaluationVMa(0);
  sub_22BB394F8();
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v0, v1, MEMORY[0x277D1C368]);
  sub_22BB3B69C();
  v2 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v2);

  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD000000000000018);
  sub_22BB3B69C();
  sub_22BDBB684();
  sub_22BB379F0();

  MEMORY[0x2318A4C40](0x656D61726170202CLL, 0xEC0000003D726574);
  sub_22BB5133C();
  sub_22BDB8384();
  sub_22BDBB474();
  sub_22BB53D24();
  sub_22BCCAC74();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCC9094()
{
  sub_22BB35F54();
  if (sub_22BDB4C04() & 1) != 0 && (v0 = _s19ValueStepEvaluationVMa(0), sub_22BB36D64(v0), (sub_22BDB4C04()))
  {
    v1 = sub_22BB94E2C(*(v0 + 24));
    v5 = sub_22BCCA280(v1, v2, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22BCC9124()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  _s19ValueStepEvaluationVMa(0);
  sub_22BB394F8();
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v0, v1, MEMORY[0x277D1C368]);
  sub_22BB3B69C();
  v2 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v2);

  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD000000000000018);
  sub_22BB3B69C();
  sub_22BDBB684();
  sub_22BB379F0();

  sub_22BB53D24();
  sub_22BCCA52C();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCC9244()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  _s24ToolDisambiguationResultVMa(0);
  sub_22BB3B7D8();
  sub_22BCCD54C();
  sub_22BB379F0();

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BB5133C();
  sub_22BDB43E4();
  sub_22BB35B18();
  v2 = sub_22BCC988C(v0, v1, MEMORY[0x277CC9628]);
  sub_22BB37014(v2);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

BOOL sub_22BCC9310(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BBE6DE0(&qword_27D8E4130, &qword_22BDC2328);
  sub_22BB2F0C8(v5);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB395E0();
  v8 = (v2 + *(v7 + 56));
  sub_22BCCD9D4(a1, v2);
  sub_22BCCD9D4(a2, v8);
  sub_22BCEFC3C(*v2, *v8);
  v11 = 0;
  if (v9)
  {
    _s24ToolDisambiguationResultVMa(0);
    sub_22BB3B7D8();
    sub_22BCCBDC4();
    if (v10 & 1) != 0 && (sub_22BDB43B4())
    {
      v11 = 1;
    }
  }

  sub_22BCCD97C(v8, _s24ToolDisambiguationResultVMa);
  sub_22BCCD97C(v2, _s24ToolDisambiguationResultVMa);
  return v11;
}

unint64_t sub_22BCC9484()
{
  v1 = _s24ToolDisambiguationResultVMa(0);
  v2 = sub_22BB2F0C8(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v3 = sub_22BB51880();
  v4 = _s14ToolStepResultOMa(v3);
  v5 = sub_22BB2F0C8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BCCD9D4(v0, v7 - v6);
  v8 = sub_22BB3182C();
  sub_22BCCD920(v8, v9);
  sub_22BDBB334();

  v10 = sub_22BCC9244();
  MEMORY[0x2318A4C40](v10);

  sub_22BB36A44();
  v11 = sub_22BB92848();
  sub_22BCCD97C(v11, v12);
  return 0xD00000000000001ELL;
}

void sub_22BCC95D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_22BDBA594();
  sub_22BB30444();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BB310F8();
  v32 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa(v31);
  v33 = sub_22BB2F0C8(v32);
  MEMORY[0x28223BE20](v33);
  sub_22BB30574();
  v36 = v35 - v34;
  v37 = sub_22BBE6DE0(&qword_27D8E4140, &qword_22BDC2338);
  sub_22BB2F0C8(v37);
  sub_22BB30B9C();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &a9 - v40;
  v42 = *(v39 + 56);
  sub_22BCCD9D4(v26, &a9 - v40);
  sub_22BCCD9D4(v24, &v41[v42]);
  sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  sub_22BBC7F7C(v41);
  if (!v43)
  {
    sub_22BB35FAC();
    sub_22BCCD9D4(v41, v36);
    sub_22BBC7F7C(&v41[v42]);
    if (!v43)
    {
      (*(v29 + 32))(v20, &v41[v42], v27);
      sub_22BDBA574();
      v44 = *(v29 + 8);
      v45 = sub_22BB3182C();
      v44(v45);
      (v44)(v36, v27);
      sub_22BB3E1C4();
      goto LABEL_10;
    }

    (*(v29 + 8))(v36, v27);
LABEL_9:
    sub_22BB58728(v41, &qword_27D8E4140, &qword_22BDC2338);
    goto LABEL_10;
  }

  sub_22BBC7F7C(&v41[v42]);
  if (!v43)
  {
    goto LABEL_9;
  }

  sub_22BB3E1C4();
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BCC9808(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4030, _s14ToolStepResultOMa, &unk_22BDC1B20);
  result = sub_22BCC988C(&qword_27D8E4038, _s14ToolStepResultOMa, &qword_22BDC1AF8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC988C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BCC98D4(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4040, _s24ToolDisambiguationResultVMa, &unk_22BDC1B8C);
  result = sub_22BCC988C(&qword_27D8E4048, _s24ToolDisambiguationResultVMa, &qword_22BDC1B60 + 4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC9958(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4050, _s18ToolStepEvaluationVMa, &qword_22BDC1BF8);
  result = sub_22BCC988C(&qword_27D8E4058, _s18ToolStepEvaluationVMa, &unk_22BDC1BD0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC99E0()
{
  sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F330();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB319F8();
  v4 = sub_22BDBA594();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BB310F8();
  v9 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa(v8);
  v10 = sub_22BB2F0C8(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB35FAC();
  sub_22BCCD9D4(v0, v2);
  v11 = sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  if (sub_22BB3AA28(v2, 1, v11) == 1)
  {
    sub_22BB3932C();
  }

  else
  {
    (*(v6 + 32))(v1, v2, v4);
    sub_22BCB4048();
    sub_22BB3627C();
    v12 = sub_22BDBAC14();
    MEMORY[0x2318A4C40](v12);

    sub_22BB36A44();
    v13 = sub_22BB3182C();
    v14(v13);
  }

  return sub_22BB3627C();
}

unint64_t sub_22BCC9BBC()
{
  sub_22BB36298();
  sub_22BDBB334();

  _s25ParameterNeedsValueResultVMa(0);
  sub_22BB394F8();
  sub_22BDB43E4();
  sub_22BB35B18();
  v2 = sub_22BCC988C(v0, v1, MEMORY[0x277CC9628]);
  sub_22BB37014(v2);
  sub_22BB3AAE4();

  sub_22BB39180();
  return 0xD00000000000002BLL;
}

uint64_t sub_22BCC9C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BB35F54();
  if ((v5() & 1) == 0)
  {
    return 0;
  }

  v6 = a4(0);
  sub_22BB36D64(v6);

  return sub_22BDB43B4();
}

uint64_t sub_22BCC9D18(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4060, _s25ParameterNeedsValueResultVMa, &unk_22BDC1CB4);
  result = sub_22BCC988C(&qword_27D8E4068, _s25ParameterNeedsValueResultVMa, &unk_22BDC1C8C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC9DA0()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  sub_22BDBA594();
  sub_22BDBB474();
  sub_22BB38DCC();
  sub_22BBC7868();
  _s25ParameterNotAllowedResultVMa(0);
  sub_22BB394F8();
  sub_22BDB43E4();
  sub_22BB35B18();
  v2 = sub_22BCC988C(v0, v1, MEMORY[0x277CC9628]);
  sub_22BB37014(v2);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCC9EC0(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4070, _s25ParameterNotAllowedResultVMa, &unk_22BDC1D20);
  result = sub_22BCC988C(&qword_27D8E4078, _s25ParameterNotAllowedResultVMa, "уGV");
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC9F48()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  sub_22BDBA594();
  sub_22BDBB474();
  sub_22BB38DCC();
  sub_22BBC7868();
  _s33ParameterCandidatesNotFoundResultVMa(0);
  sub_22BB394F8();
  sub_22BDB43E4();
  sub_22BB35B18();
  v2 = sub_22BCC988C(v0, v1, MEMORY[0x277CC9628]);
  sub_22BB37014(v2);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCCA024()
{
  sub_22BB35F54();
  if ((sub_22BDBA574() & 1) == 0)
  {
    return 0;
  }

  v2 = _s27ParameterConfirmationResultVMa(0);
  if (*(v1 + *(v2 + 20)) != *(v0 + *(v2 + 20)))
  {
    return 0;
  }

  sub_22BB94E2C(*(v2 + 24));

  return sub_22BDB43B4();
}

uint64_t sub_22BCCA0D4(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4080, _s33ParameterCandidatesNotFoundResultVMa, &unk_22BDC1D8C);
  result = sub_22BCC988C(&qword_27D8E4088, _s33ParameterCandidatesNotFoundResultVMa, &unk_22BDC1D64);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCA15C()
{
  sub_22BB3377C();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v2 = _s27ParameterConfirmationResultVMa(0);
  if (*(v0 + *(v2 + 20)))
  {
    if (*(v0 + *(v2 + 20)) == 1)
    {
      v1 = 0xE900000000000064;
      v3 = 0x657463656A65722ELL;
    }

    else
    {
      v3 = 0x6E6F646E6162612ELL;
    }
  }

  else
  {
    v3 = 0x6D7269666E6F632ELL;
  }

  MEMORY[0x2318A4C40](v3, v1);

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BDB43E4();
  sub_22BB35B18();
  v6 = sub_22BCC988C(v4, v5, MEMORY[0x277CC9628]);
  sub_22BB37014(v6);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v8;
}

uint64_t sub_22BCCA280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BB35F54();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  sub_22BB36D64(v8);
  sub_22BCCBDC4();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_22BB94E2C(*(v8 + 24));

  return sub_22BDB43B4();
}

uint64_t sub_22BCCA30C(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4090, _s27ParameterConfirmationResultVMa, &qword_22BDC1DF8);
  result = sub_22BCC988C(&qword_27D8E4098, _s27ParameterConfirmationResultVMa, &qword_22BDC1DD0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCA394()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  _s29ParameterDisambiguationResultVMa(0);
  sub_22BB3B7D8();
  sub_22BCCD54C();
  sub_22BB379F0();

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BB5133C();
  sub_22BDB43E4();
  sub_22BB35B18();
  v2 = sub_22BCC988C(v0, v1, MEMORY[0x277CC9628]);
  sub_22BB37014(v2);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCCA4A4(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40A0, _s29ParameterDisambiguationResultVMa, &qword_22BDC1E60 + 4);
  result = sub_22BCC988C(&qword_27D8E40A8, _s29ParameterDisambiguationResultVMa, &qword_22BDC1E38 + 4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCA52C()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  _s25ValueDisambiguationResultVMa(0);
  sub_22BB3B7D8();
  sub_22BCCD54C();
  sub_22BB379F0();

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BB5133C();
  sub_22BDB43E4();
  sub_22BB35B18();
  v2 = sub_22BCC988C(v0, v1, MEMORY[0x277CC9628]);
  sub_22BB37014(v2);
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

void sub_22BCCA5F8()
{
  sub_22BB30F94();
  v80 = v1;
  v81 = v2;
  v75 = _s29ParameterDisambiguationResultVMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v79 = (v5 - v4);
  v6 = sub_22BB2F120();
  v74 = _s27ParameterConfirmationResultVMa(v6);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v78 = v9 - v8;
  v10 = sub_22BB2F120();
  found = _s33ParameterCandidatesNotFoundResultVMa(v10);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v77 = v13 - v12;
  v14 = sub_22BB2F120();
  v72 = _s25ParameterNotAllowedResultVMa(v14);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v76 = v17 - v16;
  v18 = sub_22BB2F120();
  v71 = _s25ParameterNeedsValueResultVMa(v18);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  _s19ParameterStepResultOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v23);
  sub_22BB30C74();
  v26 = (v24 - v25);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v70 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v70 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v70 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v70 - v37;
  v39 = sub_22BBE6DE0(&qword_27D8E4138, &qword_22BDC2330);
  sub_22BB2F0C8(v39);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  sub_22BB395E0();
  v42 = *(v41 + 56);
  sub_22BCCD9D4(v80, v0);
  sub_22BCCD9D4(v81, v0 + v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v36);
      if (sub_22BB3E39C() != 1)
      {
        sub_22BB365BC();
        v44 = v36;
        goto LABEL_26;
      }

      sub_22BB3AF60();
      v57 = v76;
      sub_22BCCD920(v0 + v42, v76);
      if (sub_22BDBA574())
      {
        sub_22BDB43B4();
      }

      sub_22BB365BC();
      sub_22BCCD97C(v57, v58);
      sub_22BB365BC();
      v51 = v36;
      goto LABEL_34;
    case 2u:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v33);
      if (sub_22BB3E39C() != 2)
      {
        sub_22BB307C8();
        v44 = v33;
        goto LABEL_26;
      }

      sub_22BB334D4();
      v53 = v77;
      sub_22BCCD920(v0 + v42, v77);
      if (sub_22BDBA574())
      {
        sub_22BDB43B4();
      }

      sub_22BB307C8();
      sub_22BCCD97C(v53, v54);
      sub_22BB307C8();
      v51 = v33;
      goto LABEL_34;
    case 3u:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v30);
      if (sub_22BB3E39C() != 3)
      {
        sub_22BB327B8();
        v44 = v30;
        goto LABEL_26;
      }

      sub_22BB3AD48();
      v55 = v78;
      sub_22BCCD920(v0 + v42, v78);
      if ((sub_22BDBA574() & 1) != 0 && v30[*(v74 + 20)] == *(v55 + *(v74 + 20)))
      {
        sub_22BDB43B4();
        sub_22BB327B8();
        sub_22BCCD97C(v55, v56);
      }

      else
      {
        sub_22BB327B8();
        sub_22BCCD97C(v55, v59);
      }

      sub_22BB327B8();
      v51 = v30;
      goto LABEL_34;
    case 4u:
      sub_22BB32350();
      v45 = sub_22BB33728();
      sub_22BCCD9D4(v45, v46);
      if (sub_22BB3E39C() != 4)
      {
        sub_22BBDB8DC();
        v44 = v26;
        goto LABEL_26;
      }

      sub_22BB2F218();
      v47 = v79;
      sub_22BCCD920(v0 + v42, v79);
      sub_22BCEFBF4(*v26, *v47);
      if (v48)
      {
        sub_22BCCBDC4();
        if (v49)
        {
          sub_22BDB43B4();
        }
      }

      sub_22BB58850();
      sub_22BCCD97C(v47, v50);
      v51 = sub_22BB95B5C();
      goto LABEL_34;
    default:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v38);
      if (sub_22BB3E39C())
      {
        sub_22BB32C10();
        v44 = v38;
LABEL_26:
        sub_22BCCD97C(v44, v43);
        sub_22BB58728(v0, &qword_27D8E4138, &qword_22BDC2330);
      }

      else
      {
        sub_22BB5297C();
        sub_22BCCD920(v0 + v42, v22);
        sub_22BCC95D0(v38, v22, v60, v61, v62, v63, v64, v65, v70, v71, v72, found, v74, v75, v76, v77, v78, v79, v80, v81);
        if (v66)
        {
          sub_22BDB43B4();
        }

        sub_22BB32C10();
        sub_22BCCD97C(v22, v67);
        sub_22BB32C10();
        v51 = v38;
LABEL_34:
        sub_22BCCD97C(v51, v52);
        v68 = sub_22BB92848();
        sub_22BCCD97C(v68, v69);
      }

      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BCCAC74()
{
  v6 = _s29ParameterDisambiguationResultVMa(0);
  v7 = sub_22BB2F0C8(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v8 = sub_22BB51880();
  v9 = _s27ParameterConfirmationResultVMa(v8);
  v10 = sub_22BB2F0C8(v9);
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB310F8();
  found = _s33ParameterCandidatesNotFoundResultVMa(v11);
  v13 = sub_22BB2F0C8(found);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v14 = sub_22BB319F8();
  v15 = _s25ParameterNotAllowedResultVMa(v14);
  v16 = sub_22BB2F0C8(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB31580();
  v17 = _s25ParameterNeedsValueResultVMa(0);
  v18 = sub_22BB2F0C8(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  sub_22BB345CC();
  _s19ParameterStepResultOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  sub_22BB32350();
  sub_22BCCD9D4(v1, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB3AF60();
      sub_22BCCD920(v22, v4);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v37 = v31;
      sub_22BCC9DA0();
      sub_22BB92270();

      sub_22BB36A44();
      v24 = v37;
      sub_22BB365BC();
      v26 = v4;
      break;
    case 2u:
      sub_22BB334D4();
      sub_22BCCD920(v22, v3);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v35 = v29 + 8;
      sub_22BCC9F48();
      sub_22BB92270();

      sub_22BB36A44();
      v24 = v35;
      sub_22BB307C8();
      v26 = v3;
      break;
    case 3u:
      sub_22BB3AD48();
      sub_22BCCD920(v22, v2);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v36 = v30 + 2;
      sub_22BCCA15C();
      sub_22BB92270();

      sub_22BB36A44();
      v24 = v36;
      sub_22BB327B8();
      v26 = v2;
      break;
    case 4u:
      sub_22BB2F218();
      sub_22BCCD920(v22, v0);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v34 = v27 + 4;
      v28 = sub_22BCCA394();
      MEMORY[0x2318A4C40](v28);

      sub_22BB36A44();
      v24 = v34;
      sub_22BBDB8DC();
      v26 = v0;
      break;
    default:
      sub_22BB5297C();
      sub_22BCCD920(v22, v5);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v33 = v23;
      sub_22BCC9BBC();
      sub_22BB92270();

      sub_22BB36A44();
      v24 = v33;
      sub_22BB32C10();
      v26 = v5;
      break;
  }

  sub_22BCCD97C(v26, v25);
  return v24;
}

uint64_t sub_22BCCB014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BCCB134(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656E6F646E616261;
}

void sub_22BCCB18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22BB31014();
  a24 = v25;
  a25 = v26;
  a10 = v27;
  v29 = v28;
  sub_22BBE6DE0(&qword_27D8E4208, &qword_22BDC23C0);
  sub_22BB30444();
  v57 = v31;
  v58 = v30;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB30BA8();
  v56 = v33;
  sub_22BBE6DE0(&qword_27D8E4210, &qword_22BDC23C8);
  sub_22BB30444();
  v54 = v35;
  v55 = v34;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  v38 = &v52 - v37;
  v39 = sub_22BBE6DE0(&qword_27D8E4218, &qword_22BDC23D0);
  sub_22BB30444();
  v53 = v40;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v41);
  v43 = &v52 - v42;
  v44 = sub_22BBE6DE0(&qword_27D8E4220, &qword_22BDC23D8);
  sub_22BB30444();
  v46 = v45;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v47);
  v49 = &v52 - v48;
  sub_22BB69FEC(v29, v29[3]);
  sub_22BCCDBD4();
  sub_22BDBB8A4();
  v50 = (v46 + 8);
  if (a10)
  {
    if (a10 == 1)
    {
      a14 = 1;
      sub_22BCCDC7C();
      sub_22BB3DFA4(&_s18ConfirmationResultO18RejectedCodingKeysON, &a14);
      (*(v54 + 8))(v38, v55);
    }

    else
    {
      a15 = 2;
      sub_22BCCDC28();
      v51 = v56;
      sub_22BB3DFA4(&_s18ConfirmationResultO19AbandonedCodingKeysON, &a15);
      (*(v57 + 8))(v51, v58);
    }
  }

  else
  {
    a13 = 0;
    sub_22BCCDCD0();
    sub_22BB3DFA4(&_s18ConfirmationResultO19ConfirmedCodingKeysON, &a13);
    (*(v53 + 8))(v43, v39);
  }

  (*v50)(v49, v44);
  sub_22BB376A8();
}

void sub_22BCCB494()
{
  sub_22BB31014();
  v69 = v0;
  v4 = v3;
  v68 = sub_22BBE6DE0(&qword_27D8E41C8, &qword_22BDC23A0);
  sub_22BB30444();
  v66 = v5;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v64 = v7;
  v65 = sub_22BBE6DE0(&qword_27D8E41D0, &qword_22BDC23A8);
  sub_22BB30444();
  v63 = v8;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB345CC();
  v10 = sub_22BBE6DE0(&qword_27D8E41D8, &qword_22BDC23B0);
  sub_22BB30444();
  v62 = v11;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = sub_22BBE6DE0(&qword_27D8E41E0, &qword_22BDC23B8);
  sub_22BB30444();
  v67 = v16;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB31580();
  sub_22BB69FEC(v4, v4[3]);
  sub_22BCCDBD4();
  v18 = v69;
  sub_22BDBB894();
  if (v18)
  {
    goto LABEL_13;
  }

  v58 = v10;
  v59 = v14;
  v60 = v2;
  v61 = 0;
  v19 = v68;
  v69 = v4;
  sub_22BDBB5E4();
  v20 = sub_22BD006D0();
  v22 = v15;
  if (v23 != v21 >> 1)
  {
    sub_22BB2F4F4();
    if (v27 == v28)
    {
      __break(1u);
      return;
    }

    v29 = v15;
    v30 = *(v26 + v25);
    v31 = sub_22BD006A8(v25 + 1, v24, v20, v26);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    v36 = v66;
    if (v33 == v35 >> 1)
    {
      if (v30)
      {
        v62 = v31;
        v37 = v61;
        if (v30 == 1)
        {
          sub_22BCCDC7C();
          sub_22BB2F230();
          sub_22BDBB554();
          if (!v37)
          {
            swift_unknownObjectRelease();
            v38 = sub_22BB33728();
            v39(v38);
            v40 = sub_22BB32E04();
            v41(v40);
LABEL_22:
            sub_22BB32FA4(v69);
            goto LABEL_14;
          }
        }

        else
        {
          LODWORD(v65) = v30;
          sub_22BCCDC28();
          v51 = v64;
          sub_22BB2F230();
          sub_22BDBB554();
          if (!v37)
          {
            swift_unknownObjectRelease();
            (*(v36 + 8))(v51, v19);
            v56 = sub_22BB32E04();
            v57(v56);
            goto LABEL_22;
          }
        }

        v52 = sub_22BB32E04();
        v53(v52);
      }

      else
      {
        sub_22BCCDCD0();
        v47 = v59;
        sub_22BB2F230();
        v48 = v61;
        sub_22BDBB554();
        if (!v48)
        {
          swift_unknownObjectRelease();
          (*(v62 + 8))(v47, v58);
          sub_22BB3158C();
          v54 = sub_22BB32E04();
          v55(v54);
          goto LABEL_22;
        }

        sub_22BB3158C();
        v49 = sub_22BB32E04();
        v50(v49);
      }

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v22 = v29;
  }

  v42 = sub_22BDBB3A4();
  swift_allocError();
  v44 = v43;
  sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
  *v44 = &_s18ConfirmationResultON;
  v45 = sub_22BDBB564();
  sub_22BB36D74(v45);
  (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_22BB3158C();
  v46(v1, v22);
LABEL_12:
  v4 = v69;
LABEL_13:
  sub_22BB32FA4(v4);
LABEL_14:
  sub_22BB376A8();
}

uint64_t sub_22BCCB9FC(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40B0, _s19ParameterStepResultOMa, &unk_22BDC1ED0);
  result = sub_22BCC988C(&qword_27D8E40B8, _s19ParameterStepResultOMa, &unk_22BDC1EA8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCBA80(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40C0, _s23ParameterStepEvaluationVMa, &unk_22BDC1F3C);
  result = sub_22BCC988C(&qword_27D8E40C8, _s23ParameterStepEvaluationVMa, &qword_22BDC1F10 + 4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCBB08(uint64_t a1)
{
  v2 = sub_22BCCDC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBB44(uint64_t a1)
{
  v2 = sub_22BCCDC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCBB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCB014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCCBBB0(uint64_t a1)
{
  v2 = sub_22BCCDBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBBEC(uint64_t a1)
{
  v2 = sub_22BCCDBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCBC28(uint64_t a1)
{
  v2 = sub_22BCCDCD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBC64(uint64_t a1)
{
  v2 = sub_22BCCDCD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCBCA0(uint64_t a1)
{
  v2 = sub_22BCCDC7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBCDC(uint64_t a1)
{
  v2 = sub_22BCCDC7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BCCBD18(_BYTE *a1@<X8>)
{
  sub_22BCCB494();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_22BCCBD68(char a1)
{
  if (!a1)
  {
    return 0x6D7269666E6F632ELL;
  }

  if (a1 == 1)
  {
    return 0x657463656A65722ELL;
  }

  return 0x6E6F646E6162612ELL;
}

void sub_22BCCBDC4()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDBA594();
  sub_22BB30444();
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB310F8();
  _s20DisambiguationResultOMa(v9);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E4148, &qword_22BDC2340);
  sub_22BB2F0C8(v17);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB395E0();
  v20 = *(v19 + 56);
  sub_22BCCD9D4(v5, v0);
  sub_22BCCD9D4(v3, v0 + v20);
  sub_22BB33728();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB37274();
      sub_22BCCD9D4(v0, v13);
      if (sub_22BB8DCB4() == 1)
      {
        v23 = v29;
        (*(v29 + 32))(v1, v0 + v20, v6);
        sub_22BDBA574();
        v24 = *(v23 + 8);
        v24(v1, v6);
        v25 = sub_22BB3627C();
        (v24)(v25);
        goto LABEL_7;
      }

      v26 = sub_22BB3627C();
      v27(v26);
      goto LABEL_11;
    case 2u:
      if (sub_22BB8DCB4() != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 3u:
      if (sub_22BB8DCB4() == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    default:
      sub_22BB37274();
      sub_22BCCD9D4(v0, v16);
      if (sub_22BB8DCB4())
      {
LABEL_11:
        sub_22BB58728(v0, &qword_27D8E4148, &qword_22BDC2340);
      }

      else
      {
LABEL_7:
        v21 = sub_22BB92848();
        sub_22BCCD97C(v21, v22);
      }

      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BCCC088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C65536D657469 && a2 == 0xEC00000064657463;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C655365756C6176 && a2 == 0xED00006465746365;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BCCC1F4(char a1)
{
  result = 0x656E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0x656C65536D657469;
      break;
    case 2:
      result = 0x6C655365756C6176;
      break;
    case 3:
      result = 0x64657463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCCC290(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BCCC318(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_22BCCC3A0()
{
  sub_22BB31014();
  v60 = v1;
  v57 = v0;
  v5 = v4;
  v53 = sub_22BBE6DE0(&qword_27D8E41A0, &qword_22BDC2378);
  sub_22BB30444();
  v50 = v6;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30BA8();
  v49 = v8;
  sub_22BBE6DE0(&qword_27D8E41A8, &qword_22BDC2380);
  sub_22BB30444();
  v55 = v10;
  v56 = v9;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB30BA8();
  v51 = v12;
  sub_22BB2F120();
  v54 = sub_22BDBA594();
  sub_22BB30444();
  v52 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v48 = v16 - v15;
  sub_22BBE6DE0(&qword_27D8E41B0, &qword_22BDC2388);
  sub_22BB30444();
  v46 = v18;
  v47 = v17;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB31580();
  v20 = sub_22BBE6DE0(&qword_27D8E41B8, &qword_22BDC2390);
  sub_22BB30444();
  v45 = v21;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB345CC();
  _s20DisambiguationResultOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v26 = v25 - v24;
  sub_22BBE6DE0(&qword_27D8E41C0, &qword_22BDC2398);
  sub_22BB30444();
  v58 = v28;
  v59 = v27;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v31 = &v45 - v30;
  sub_22BB69FEC(v5, v5[3]);
  sub_22BCCDA30();
  sub_22BDBB8A4();
  sub_22BB37274();
  sub_22BCCD9D4(v57, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = v52;
      v38 = v48;
      v39 = v54;
      (*(v52 + 32))(v48, v26, v54);
      sub_22BCCDAD8();
      v40 = v51;
      v32 = v59;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      sub_22BB6B68C();
      sub_22BCC988C(v41, v42, MEMORY[0x277D72A80]);
      v43 = v56;
      sub_22BDBB664();
      (*(v55 + 8))(v40, v43);
      (*(v37 + 8))(v38, v39);
      goto LABEL_7;
    case 2u:
      sub_22BCCDB80();
      v34 = v59;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      (*(v45 + 8))(v3, v20);
      goto LABEL_5;
    case 3u:
      sub_22BCCDA84();
      v35 = v49;
      v34 = v59;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      (*(v50 + 8))(v35, v53);
LABEL_5:
      sub_22BB3158C();
      v36(v31, v34);
      break;
    default:
      sub_22BCCDB2C();
      v32 = v59;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      v33 = v47;
      sub_22BDBB644();
      (*(v46 + 8))(v2, v33);
LABEL_7:
      sub_22BB3158C();
      v44(v31, v32);
      break;
  }

  sub_22BB376A8();
}

void sub_22BCCC92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB31014();
  a23 = v26;
  a24 = v27;
  v126 = v24;
  v29 = v28;
  v122 = v30;
  v121 = sub_22BBE6DE0(&qword_27D8E4150, &qword_22BDC2348);
  sub_22BB30444();
  v115 = v31;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB30BA8();
  v120 = v33;
  sub_22BBE6DE0(&qword_27D8E4158, &qword_22BDC2350);
  sub_22BB30444();
  v116 = v34;
  v117 = v35;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB30BA8();
  v124 = v37;
  sub_22BBE6DE0(&qword_27D8E4160, &qword_22BDC2358);
  sub_22BB30444();
  v113 = v39;
  v114 = v38;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  sub_22BB30BA8();
  v119 = v41;
  sub_22BBE6DE0(&qword_27D8E4168, &qword_22BDC2360);
  sub_22BB30444();
  v111 = v43;
  v112 = v42;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v44);
  sub_22BB30BA8();
  v118 = v45;
  v46 = sub_22BBE6DE0(&qword_27D8E4170, &qword_22BDC2368);
  sub_22BB30444();
  v123 = v47;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v48);
  v50 = &v107 - v49;
  v51 = _s20DisambiguationResultOMa(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v52);
  sub_22BB30C74();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v57);
  v59 = &v107 - v58;
  v60 = v29[3];
  v125 = v29;
  sub_22BB69FEC(v29, v60);
  sub_22BCCDA30();
  v61 = v126;
  sub_22BDBB894();
  if (!v61)
  {
    v108 = v25;
    v109 = v55;
    v110 = v59;
    v126 = v51;
    sub_22BDBB5E4();
    v62 = sub_22BD006D0();
    if (v64 != v63 >> 1)
    {
      sub_22BB2F4F4();
      if (v68 == v69)
      {
        __break(1u);
        return;
      }

      v70 = *(v67 + v66);
      sub_22BD006A8(v66 + 1, v65, v62, v67);
      v72 = v71;
      v74 = v73;
      swift_unknownObjectRelease();
      if (v72 == v74 >> 1)
      {
        v75 = v70;
        v76 = v122;
        switch(v75)
        {
          case 1:
            a12 = 1;
            sub_22BCCDB2C();
            sub_22BB8985C(&_s20DisambiguationResultO22ItemSelectedCodingKeysON, &a12);
            v100 = sub_22BDBB5B4();
            swift_unknownObjectRelease();
            v101 = sub_22BB3CAE4();
            v102(v101);
            v103 = sub_22BB69A70();
            v104(v103);
            v105 = v108;
            *v108 = v100;
            swift_storeEnumTagMultiPayload();
            sub_22BB38B08();
            v106 = v105;
            v80 = v110;
            sub_22BCCD920(v106, v110);
            goto LABEL_14;
          case 2:
            a13 = 2;
            sub_22BCCDAD8();
            sub_22BB8985C(&_s20DisambiguationResultO23ValueSelectedCodingKeysON, &a13);
            sub_22BDBA594();
            sub_22BB6B68C();
            sub_22BCC988C(v89, v90, MEMORY[0x277D72A98]);
            v91 = v109;
            sub_22BDBB5D4();
            v92 = v123;
            swift_unknownObjectRelease();
            v97 = sub_22BB3B69C();
            v98(v97);
            (*(v92 + 8))(v50, v46);
            swift_storeEnumTagMultiPayload();
            sub_22BB38B08();
            v80 = v110;
            sub_22BCCD920(v91, v110);
            v99 = v125;
            v76 = v122;
            goto LABEL_15;
          case 3:
            a14 = 3;
            sub_22BCCDA84();
            sub_22BB8985C(&_s20DisambiguationResultO18RejectedCodingKeysON, &a14);
            swift_unknownObjectRelease();
            v93 = sub_22BB3CAE4();
            v94(v93);
            v95 = sub_22BB69A70();
            v96(v95);
            v80 = v110;
            goto LABEL_13;
          default:
            a11 = 0;
            sub_22BCCDB80();
            v77 = v118;
            sub_22BB8985C(&_s20DisambiguationResultO19AbandonedCodingKeysON, &a11);
            swift_unknownObjectRelease();
            (*(v111 + 8))(v77, v112);
            v78 = sub_22BB69A70();
            v79(v78);
            v80 = v110;
LABEL_13:
            swift_storeEnumTagMultiPayload();
LABEL_14:
            v99 = v125;
LABEL_15:
            sub_22BB38B08();
            sub_22BCCD920(v80, v76);
            v88 = v99;
            break;
        }

        goto LABEL_10;
      }
    }

    v81 = v126;
    v82 = sub_22BDBB3A4();
    swift_allocError();
    v84 = v83;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v84 = v81;
    v85 = sub_22BDBB564();
    sub_22BB36D74(v85);
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    v86 = sub_22BB69A70();
    v87(v86);
  }

  v88 = v125;
LABEL_10:
  sub_22BB32FA4(v88);
  sub_22BB376A8();
}

unint64_t sub_22BCCD0D4()
{
  result = qword_27D8E40D0;
  if (!qword_27D8E40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E40D0);
  }

  return result;
}

uint64_t sub_22BCCD128(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40D8, _s24ActionConfirmationResultVMa, &qword_22BDC2088);
  result = sub_22BCC988C(&qword_27D8E40E0, _s24ActionConfirmationResultVMa, &unk_22BDC2060);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD1AC(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40E8, _s20ActionStepEvaluationVMa, &unk_22BDC20F4);
  result = sub_22BCC988C(&qword_27D8E40F0, _s20ActionStepEvaluationVMa, &qword_22BDC20C8 + 4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD230(uint64_t a1)
{
  v2 = sub_22BCCDB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD26C(uint64_t a1)
{
  v2 = sub_22BCCDB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCC088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCCD2D8(uint64_t a1)
{
  v2 = sub_22BCCDA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD314(uint64_t a1)
{
  v2 = sub_22BCCDA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCC290(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCCD380(uint64_t a1)
{
  v2 = sub_22BCCDB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD3BC(uint64_t a1)
{
  v2 = sub_22BCCDB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD3F8(uint64_t a1)
{
  v2 = sub_22BCCDA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD434(uint64_t a1)
{
  v2 = sub_22BCCDA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCC318(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCCD4A0(uint64_t a1)
{
  v2 = sub_22BCCDAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD4DC(uint64_t a1)
{
  v2 = sub_22BCCDAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD54C()
{
  v3 = sub_22BDBA594();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB310F8();
  _s20DisambiguationResultOMa(v7);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB31580();
  sub_22BB37274();
  sub_22BCCD9D4(v0, v2);
  swift_getEnumCaseMultiPayload();
  sub_22BB3932C();
  switch(v9)
  {
    case 1:
      (*(v5 + 32))(v1, v2, v3);
      sub_22BDBB334();
      MEMORY[0x2318A4C40](0x655365756C61762ELL, 0xEF2864657463656CLL);
      sub_22BDBB474();
      sub_22BB36A44();
      v11 = sub_22BB3182C();
      v12(v11);
      break;
    case 2:
    case 3:
      return sub_22BB3627C();
    default:
      sub_22BDBB334();

      v10 = sub_22BDBB684();
      MEMORY[0x2318A4C40](v10);

      sub_22BB36A44();
      break;
  }

  return sub_22BB3627C();
}

uint64_t sub_22BCCD794(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40F8, _s25ValueDisambiguationResultVMa, &unk_22BDC2200);
  result = sub_22BCC988C(&qword_27D8E4100, _s25ValueDisambiguationResultVMa, &unk_22BDC21D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD818(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4108, _s19ValueStepEvaluationVMa, &unk_22BDC226C);
  result = sub_22BCC988C(&qword_27D8E4110, _s19ValueStepEvaluationVMa, &unk_22BDC2244);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD89C(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4118, _s23StatementStepEvaluationOMa, &qword_22BDC22D8);
  result = sub_22BCC988C(&qword_27D8E4120, _s23StatementStepEvaluationOMa, &unk_22BDC22B0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD920(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5(v4);
  sub_22BB2F330();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22BCCD97C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BCCD9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v5(v4);
  sub_22BB2F330();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_22BCCDA30()
{
  result = qword_27D8E4178;
  if (!qword_27D8E4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4178);
  }

  return result;
}

unint64_t sub_22BCCDA84()
{
  result = qword_27D8E4180;
  if (!qword_27D8E4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4180);
  }

  return result;
}

unint64_t sub_22BCCDAD8()
{
  result = qword_27D8E4188;
  if (!qword_27D8E4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4188);
  }

  return result;
}

unint64_t sub_22BCCDB2C()
{
  result = qword_27D8E4190;
  if (!qword_27D8E4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4190);
  }

  return result;
}

unint64_t sub_22BCCDB80()
{
  result = qword_27D8E4198;
  if (!qword_27D8E4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4198);
  }

  return result;
}

unint64_t sub_22BCCDBD4()
{
  result = qword_27D8E41E8;
  if (!qword_27D8E41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E41E8);
  }

  return result;
}

unint64_t sub_22BCCDC28()
{
  result = qword_27D8E41F0;
  if (!qword_27D8E41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E41F0);
  }

  return result;
}

unint64_t sub_22BCCDC7C()
{
  result = qword_27D8E41F8;
  if (!qword_27D8E41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E41F8);
  }

  return result;
}

unint64_t sub_22BCCDCD0()
{
  result = qword_27D8E4200;
  if (!qword_27D8E4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4200);
  }

  return result;
}

_BYTE *sub_22BCCDD24(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20DisambiguationResultO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BCCDF2C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BCCDFEC()
{
  result = qword_27D8E4228;
  if (!qword_27D8E4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4228);
  }

  return result;
}

unint64_t sub_22BCCE044()
{
  result = qword_27D8E4230;
  if (!qword_27D8E4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4230);
  }

  return result;
}

unint64_t sub_22BCCE09C()
{
  result = qword_27D8E4238;
  if (!qword_27D8E4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4238);
  }

  return result;
}

unint64_t sub_22BCCE0F4()
{
  result = qword_27D8E4240;
  if (!qword_27D8E4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4240);
  }

  return result;
}

unint64_t sub_22BCCE14C()
{
  result = qword_27D8E4248;
  if (!qword_27D8E4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4248);
  }

  return result;
}

unint64_t sub_22BCCE1A4()
{
  result = qword_27D8E4250;
  if (!qword_27D8E4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4250);
  }

  return result;
}

unint64_t sub_22BCCE1FC()
{
  result = qword_27D8E4258;
  if (!qword_27D8E4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4258);
  }

  return result;
}

unint64_t sub_22BCCE254()
{
  result = qword_27D8E4260;
  if (!qword_27D8E4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4260);
  }

  return result;
}

unint64_t sub_22BCCE2AC()
{
  result = qword_27D8E4268;
  if (!qword_27D8E4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4268);
  }

  return result;
}

unint64_t sub_22BCCE304()
{
  result = qword_27D8E4270;
  if (!qword_27D8E4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4270);
  }

  return result;
}

unint64_t sub_22BCCE35C()
{
  result = qword_27D8E4278;
  if (!qword_27D8E4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4278);
  }

  return result;
}

unint64_t sub_22BCCE3B4()
{
  result = qword_27D8E4280;
  if (!qword_27D8E4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4280);
  }

  return result;
}

unint64_t sub_22BCCE40C()
{
  result = qword_27D8E4288;
  if (!qword_27D8E4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4288);
  }

  return result;
}

unint64_t sub_22BCCE464()
{
  result = qword_27D8E4290;
  if (!qword_27D8E4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4290);
  }

  return result;
}

unint64_t sub_22BCCE4BC()
{
  result = qword_27D8E4298;
  if (!qword_27D8E4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4298);
  }

  return result;
}

unint64_t sub_22BCCE514()
{
  result = qword_27D8E42A0;
  if (!qword_27D8E42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42A0);
  }

  return result;
}

unint64_t sub_22BCCE56C()
{
  result = qword_27D8E42A8;
  if (!qword_27D8E42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42A8);
  }

  return result;
}

unint64_t sub_22BCCE5C4()
{
  result = qword_27D8E42B0;
  if (!qword_27D8E42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42B0);
  }

  return result;
}

unint64_t sub_22BCCE61C()
{
  result = qword_27D8E42B8;
  if (!qword_27D8E42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42B8);
  }

  return result;
}

unint64_t sub_22BCCE674()
{
  result = qword_27D8E42C0;
  if (!qword_27D8E42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42C0);
  }

  return result;
}

unint64_t sub_22BCCE6CC()
{
  result = qword_27D8E42C8;
  if (!qword_27D8E42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42C8);
  }

  return result;
}

unint64_t sub_22BCCE724()
{
  result = qword_27D8E42D0;
  if (!qword_27D8E42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42D0);
  }

  return result;
}

uint64_t sub_22BCCE794@<X0>(void (*a1)(uint64_t, uint64_t, void (*)(uint64_t))@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v179 = a2;
  v189 = a3;
  v181 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v4);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v5);
  sub_22BB2F39C();
  sub_22BB30B8C(v6);
  v174 = sub_22BDB5E44();
  sub_22BB30444();
  v172 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB30B8C(v10 - v9);
  v184 = sub_22BDB4C34();
  sub_22BB30444();
  v183 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F39C();
  sub_22BB30B8C(v14);
  v177 = sub_22BDB55D4();
  sub_22BB30444();
  v176 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB30B8C(v18 - v17);
  v187 = sub_22BDB90B4();
  sub_22BB30444();
  v186 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BB30B8C(v22 - v21);
  v207 = sub_22BDB5404();
  sub_22BB30444();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v27);
  sub_22BB2F384();
  v192 = v28;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v29);
  sub_22BB2F384();
  v197 = v30;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v31);
  sub_22BB2F39C();
  v200 = v32;
  v33 = sub_22BDB43E4();
  sub_22BB30444();
  v201 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22BB30574();
  v204 = v37 - v36;
  v202 = sub_22BDB87F4();
  sub_22BB30444();
  v205 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v40);
  sub_22BB2F384();
  v209 = v41;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v42);
  sub_22BB2F39C();
  v198 = v43;
  v194 = _s20StatementResultEventVMa(0);
  sub_22BB2F330();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v168 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v168 - v48;
  v50 = sub_22BDB77D4();
  sub_22BB30444();
  v206 = v51;
  MEMORY[0x28223BE20](v52);
  sub_22BB30560();
  v199 = v53;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v54);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v55);
  sub_22BB2F384();
  v193 = v56;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v57);
  sub_22BDB6404();
  sub_22BCBE9F8(a1, v49);
  v188 = a1;
  sub_22BCBE9F8(a1, v47);
  v58 = sub_22BDB77C4();
  v59 = sub_22BDBB104();
  v60 = os_log_type_enabled(v58, v59);
  v203 = v24;
  v195 = v50;
  v196 = v33;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v208 = v169;
    *v61 = 136315395;
    sub_22BB32368();
    sub_22BBB8F84(v62, v63, MEMORY[0x277CC9628]);
    sub_22BDBB684();
    v65 = v64;
    sub_22BCD0054(v49);
    v66 = sub_22BB38B20();
    v68 = sub_22BB32EE0(v66, v65, v67);

    *(v61 + 4) = v68;
    *(v61 + 12) = 2085;
    sub_22BB38DDC();
    v69(v198);
    sub_22BDBAC14();
    v71 = v70;
    sub_22BCD0054(v47);
    v72 = sub_22BB38B20();
    v74 = sub_22BB32EE0(v72, v71, v73);
    v33 = v196;

    *(v61 + 14) = v74;
    _os_log_impl(&dword_22BB2C000, v58, v59, "Evaluating statement result with id=%s, result=%{sensitive}s", v61, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v24 = v203;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BCD0054(v47);
    sub_22BCD0054(v49);
  }

  v75 = sub_22BB362AC();
  v198 = v76;
  (v76)(v75);
  (*(v201 + 16))(v204, v188, v33);
  sub_22BB38DDC();
  v194 = v77;
  v188 = v78;
  (v78)(v209);
  v79 = v185;
  sub_22BDB87E4();
  v80 = v200;
  sub_22BDB9094();
  (*(v186 + 8))(v79, v187);
  v82 = v24 + 16;
  v81 = *(v24 + 16);
  v83 = v197;
  v84 = v207;
  (v81)(v197, v80, v207);
  v85 = (*(v24 + 88))(v83, v84);
  v87 = v85 == *MEMORY[0x277D1CBF0] || v85 == *MEMORY[0x277D1CB98] || v85 == *MEMORY[0x277D1CBA8];
  v88 = v192;
  if (!v87)
  {
    if (v85 == *MEMORY[0x277D1CBB0])
    {
LABEL_15:
      v102 = sub_22BB36D94();
      sub_22BB69088(v80 + *(v102 + 24), &v208);
      sub_22BB3779C();
      sub_22BCCFC24(v204, v103, v104);
      sub_22BB32FA4(&v208);
      v24 = v203;
      (*(v203 + 8))(v197, v207);
      sub_22BB31114();
      v105 = v202;
      v100 = v209;
      goto LABEL_24;
    }

    v109 = v81;
    v110 = v197;
    v33 = v191;
    v105 = v202;
    v24 = v203;
    v100 = v209;
    if (v85 == *MEMORY[0x277D1CBB8] || v85 == *MEMORY[0x277D1CBD0] || v85 == *MEMORY[0x277D1CBD8])
    {
      v111 = sub_22BB36D94();
      sub_22BB69088(v80 + *(v111 + 24), &v208);
      sub_22BB3779C();
      sub_22BCCFC24(v204, v112, v113);
      sub_22BB32FA4(&v208);
      (*(v24 + 8))(v110, v207);
LABEL_22:
      v88 = v195;
LABEL_23:
      v80 = v190;
      goto LABEL_24;
    }

    if (v85 == *MEMORY[0x277D1CBC0])
    {
      v135 = sub_22BB380C4();
      v136(v135);
      (*(v176 + 32))(v175, v110, v177);
      sub_22BB69A90();
      sub_22BDB8794();
      sub_22BB3779C();
      v137 = sub_22BB362AC();
      sub_22BCCF9DC(v137, v138, v204, v139);
      v140 = sub_22BB36898();
      v141 = v184;
      v110(v140, v184);
      v142 = v141;
      v100 = v209;
      v110(v88, v142);
      (*(v176 + 8))(v175, v177);
      v143 = _s23StatementStepEvaluationOMa(0);
      sub_22BB53D50(v143);
      goto LABEL_22;
    }

    if (v85 == *MEMORY[0x277D1CBE0])
    {
      v144 = sub_22BB380C4();
      v145(v144);
      v146 = v172;
      v80 = v173;
      (*(v172 + 32))(v173, v110, v174);
      sub_22BB69A90();
      sub_22BDB8794();
      sub_22BB3779C();
      v147 = sub_22BB362AC();
      sub_22BCCFA20(v147, v148, v204, v149);
      v150 = sub_22BB36898();
      v151 = v184;
      v110(v150, v184);
      v152 = v151;
      v100 = v209;
      v110(v88, v152);
      v153 = *(v146 + 8);
      v33 = v146 + 8;
      v153(v173, v174);
      v154 = _s23StatementStepEvaluationOMa(0);
      sub_22BB53D50(v154);
      sub_22BB31114();
      goto LABEL_24;
    }

    v83 = v197;
    v81 = v109;
    if (v85 != *MEMORY[0x277D1CBA0])
    {
      if (v85 == *MEMORY[0x277D1CBC8])
      {
        goto LABEL_15;
      }

      v83 = v197;
      v81 = v109;
      v24 = v203;
      if (v85 != *MEMORY[0x277D1CBE8])
      {
        v88 = v171;
        sub_22BDB6404();
        v155 = v170;
        v156 = v207;
        (v81)(v170, v80, v207);
        v157 = sub_22BDB77C4();
        v158 = v156;
        v159 = sub_22BDBB114();
        if (os_log_type_enabled(v157, v159))
        {
          v160 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v208 = v193;
          *v160 = 136642819;
          v105 = v81;
          (v81)(v178, v155, v158);
          v161 = sub_22BDBAC14();
          v88 = v162;
          v163 = sub_22BB3728C();
          v81(v163);
          v82 = sub_22BB32EE0(v161, v88, &v208);

          *(v160 + 4) = v82;
          _os_log_impl(&dword_22BB2C000, v157, v159, "Found an unhandled statement outcome, outcome=%{sensitive}s", v160, 0xCu);
          sub_22BB32FA4(v193);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        else
        {

          v164 = sub_22BB3728C();
          v105(v164);
        }

        sub_22BB37D28();
        sub_22BB35710();
        v165();
        v166 = v197;
        v33 = v191;
        v167 = _s23StatementStepEvaluationOMa(0);
        sub_22BB3A68C(v167);
        (v105)(v166, v207);
        v105 = v202;
        v24 = v203;
        v100 = v209;
        goto LABEL_23;
      }
    }
  }

  v89 = *(v24 + 8);
  v90 = v83;
  v91 = v207;
  (v89)(v90, v207);
  sub_22BDB6404();
  (v81)(v88, v80, v91);
  v92 = sub_22BDB77C4();
  v93 = sub_22BDBB104();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v187 = v94;
    v197 = swift_slowAlloc();
    v208 = v197;
    *v94 = 136642819;
    v95 = v93;
    v96 = v192;
    (v81)(v178, v192, v91);
    sub_22BB362AC();
    v97 = sub_22BDBAC14();
    v88 = v98;
    (v89)(v96, v91);
    v82 = sub_22BB32EE0(v97, v88, &v208);

    v99 = v187;
    *(v187 + 4) = v82;
    _os_log_impl(&dword_22BB2C000, v92, v95, "Skipping statement outcome not related to plan resolution, outcome=%{sensitive}s", v99, 0xCu);
    sub_22BB32FA4(v197);
    v100 = v209;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    sub_22BB37D28();
    sub_22BB35710();
    v101();
  }

  else
  {

    v106 = sub_22BB362AC();
    v89(v106);
    sub_22BB37D28();
    sub_22BB35710();
    v107();
    v100 = v209;
  }

  v108 = _s23StatementStepEvaluationOMa(0);
  sub_22BB3A68C(v108);
  v80 = v190;
  v105 = v202;
  v24 = v203;
  v33 = v191;
LABEL_24:
  sub_22BDB6404();
  v188(v33, v100, v105);
  sub_22BCD00B0(v82, v80);
  v114 = v80;
  v115 = sub_22BDB77C4();
  v116 = sub_22BDBB0F4();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v208 = v197;
    *v117 = 136315394;
    v118 = v33;
    v119 = v182;
    LODWORD(v194) = v116;
    sub_22BDB8794();
    sub_22BBB8F84(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
    v120 = v105;
    v121 = v184;
    sub_22BDBB684();
    v123 = v122;
    (*(v183 + 8))(v119, v121);
    v124 = *(v205 + 8);
    v124(v118, v120);
    v125 = sub_22BB38B20();
    v127 = sub_22BB32EE0(v125, v123, v126);

    *(v117 + 4) = v127;
    *(v117 + 12) = 2080;
    sub_22BCD00B0(v114, v180);
    sub_22BDBAC14();
    v129 = v128;
    sub_22BCCFF8C(v114);
    v130 = sub_22BB38B20();
    v132 = sub_22BB32EE0(v130, v129, v131);

    *(v117 + 14) = v132;
    _os_log_impl(&dword_22BB2C000, v115, v194, "Generated a statement step result for statement %s: %s", v117, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v198(v199, v195);
    (*(v203 + 8))(v200, v207);
    v124(v209, v120);
  }

  else
  {

    sub_22BCCFF8C(v114);
    v133 = *(v205 + 8);
    v133(v33, v105);
    v198(v199, v88);
    (*(v24 + 8))(v200, v207);
    v133(v209, v105);
  }

  return (*(v201 + 8))(v204, v196);
}