uint64_t sub_21578F1B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v148 = a1;
  v155 = a2;
  v4 = sub_2157A8FB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v158 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2157A8F40();
  v7 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2157A8FA0();
  v164 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v154 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2157A8FE0();
  v159 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v153 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2157A9000();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SmallLockupLayout(0);
  v15 = v14[6];
  sub_215783024(v2 + v15, &v176, &qword_27CA71078, &unk_2157B2E80);
  LODWORD(v16) = v177;
  v163 = v5;
  v162 = v4;
  if (!v177)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v176, v177);
  v17 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(&v176);
  if ((v17 & 1) == 0)
  {
    sub_215783024(v2 + v15, &v176, &qword_27CA71078, &unk_2157B2E80);
    LODWORD(v16) = v177;
    if (v177)
    {
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      LODWORD(v16) = sub_2157A8A60();
      __swift_destroy_boxed_opaque_existential_1(&v176);
      goto LABEL_7;
    }

LABEL_6:
    sub_215783830(&v176, &qword_27CA71078, &unk_2157B2E80);
    goto LABEL_7;
  }

  LODWORD(v16) = 0;
LABEL_7:
  v152 = v14[9];
  sub_215783024(v2 + v152, &v176, &qword_27CA71078, &unk_2157B2E80);
  v160 = v10;
  v166 = v7;
  if (!v177)
  {
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(&v176, v177);
  v18 = sub_2157A8AA0();
  __swift_destroy_boxed_opaque_existential_1(&v176);
  if (v18)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  sub_215783024(v3 + v152, &v176, &qword_27CA71078, &unk_2157B2E80);
  if (!v177)
  {
LABEL_11:
    sub_215783830(&v176, &qword_27CA71078, &unk_2157B2E80);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(&v176, v177);
  v19 = sub_2157A8A60();
  __swift_destroy_boxed_opaque_existential_1(&v176);
LABEL_13:
  v20 = (v3 + v14[7]);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  if (sub_2157A8A60() & 1) == 0 || (__swift_project_boxed_opaque_existential_1((v3 + v14[8]), *(v3 + v14[8] + 24)), (sub_2157A8A60()))
  {
LABEL_20:
    if ((v16 | v19))
    {
      goto LABEL_21;
    }

LABEL_32:
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v87 = sub_2157A8A60();
    v88 = v164;
    if ((v87 & 1) != 0 || (v89 = (v3 + v14[8]), __swift_project_boxed_opaque_existential_1(v89, v89[3]), (sub_2157A8A60() & 1) == 0))
    {
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      if (sub_2157A8A60() & 1) == 0 || (__swift_project_boxed_opaque_existential_1((v3 + v14[8]), *(v3 + v14[8] + 24)), (sub_2157A8A60()))
      {
        v96 = [v148 traitCollection];
        v97 = [v96 preferredContentSizeCategory];

        LOBYTE(v96) = sub_2157A94D0();
        sub_21578326C(v20, &v176);
        sub_21578326C(v3 + v14[8], &v173);
        if (v96)
        {
          sub_21578326C(v3 + 296, &v170);
          v98 = sub_2157A9310();
          v99 = MEMORY[0x277D229F0];
          v100 = v155;
          v155[3] = v98;
          v100[4] = v99;
          __swift_allocate_boxed_opaque_existential_1(v100);
          return sub_2157A9300();
        }

        else
        {
          sub_21578326C(v3 + 96, &v170);
          sub_21578326C(v3 + 136, v168);
          sub_21578326C(v3 + 296, &v167);
          v101 = sub_2157A92F0();
          v102 = MEMORY[0x277D229C8];
          v103 = v155;
          v155[3] = v101;
          v103[4] = v102;
          __swift_allocate_boxed_opaque_existential_1(v103);
          return sub_2157A92E0();
        }
      }

      sub_215783024(v3 + v14[10], &v173, &qword_27CA71080, &unk_2157B3AF0);
      if (*(&v174 + 1))
      {
        sub_21571DF08(&v173, &v176);
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        if ((sub_2157A8AA0() & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v176, v177);
          if (sub_2157A8A60())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B0, &qword_2157B32A8);
            v157 = *(v159 + 72);
            v104 = (*(v159 + 80) + 32) & ~*(v159 + 80);
            v105 = swift_allocObject();
            v159 = v105;
            *(v105 + 16) = xmmword_2157B33C0;
            v160 = v105 + v104;
            v106 = v20[3];
            v107 = v20[4];
            v108 = __swift_project_boxed_opaque_existential_1(v20, v106);
            *(&v174 + 1) = v106;
            v175 = *(v107 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v173);
            (*(*(v106 - 8) + 16))(boxed_opaque_existential_1, v108, v106);
            v172 = 0;
            v170 = 0u;
            v171 = 0u;
            LODWORD(v149) = *MEMORY[0x277D227C8];
            v110 = *(v166 + 104);
            v152 = v166 + 104;
            v153 = v110;
            v111 = v156;
            (v110)(v156);
            LODWORD(v148) = *MEMORY[0x277D227F0];
            v112 = *(v163 + 104);
            v146 = v163 + 104;
            v147 = v112;
            v113 = v158;
            v112(v158);
            v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098, &qword_2157B30D0);
            v144 = *(v88 + 72);
            v139 = (*(v88 + 80) + 32) & ~*(v88 + 80);
            v114 = swift_allocObject();
            v143 = xmmword_2157B2B70;
            *(v114 + 16) = xmmword_2157B2B70;
            sub_2157A8F70();
            *&v168[0] = v114;
            v141 = sub_215791C98(&qword_280D2AF60, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
            v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0, &qword_2157B30D8);
            v142 = sub_215783784();
            v115 = v154;
            v116 = v150;
            sub_2157A9540();
            sub_2157A8FD0();
            v164 = *(v88 + 8);
            (v164)(v115, v116);
            v161 = v3;
            v117 = *(v163 + 8);
            v163 += 8;
            v138 = v117;
            v118 = v162;
            v117(v113, v162);
            v119 = *(v166 + 8);
            v166 += 8;
            v137 = v119;
            v120 = v165;
            v119(v111, v165);
            sub_215783830(&v170, &qword_27CA710A8, &unk_2157B30E0);
            __swift_destroy_boxed_opaque_existential_1(&v173);
            v175 = 0;
            v173 = 0u;
            v174 = 0u;
            (v153)(v111, v149, v120);
            v147(v113, v148, v118);
            v121 = swift_allocObject();
            *(v121 + 16) = v143;
            sub_2157A8F70();
            *&v170 = v121;
            sub_2157A9540();
            sub_2157A8FD0();
            (v164)(v115, v116);
            v138(v113, v118);
            v137(v111, v120);
            sub_215783830(&v173, &qword_27CA710A8, &unk_2157B30E0);
            v122 = MEMORY[0x277D22808];
            v123 = v155;
            v155[3] = v151;
            v123[4] = v122;
            __swift_allocate_boxed_opaque_existential_1(v123);
            sub_2157A8FC0();
            return __swift_destroy_boxed_opaque_existential_1(&v176);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v176);
      }

      else
      {
        sub_215783830(&v173, &qword_27CA71080, &unk_2157B3AF0);
      }

      v126 = v20[3];
      v127 = v20[4];
      v128 = __swift_project_boxed_opaque_existential_1(v20, v126);
      v129 = v155;
      v155[3] = &type metadata for CenteringLayout;
      v129[4] = sub_215791C44();
      v94 = swift_allocObject();
      *v129 = v94;
      v94[5] = v126;
      v94[6] = *(v127 + 8);
      v130 = __swift_allocate_boxed_opaque_existential_1(v94 + 2);
      result = (*(*(v126 - 8) + 16))(v130, v128, v126);
    }

    else
    {
      v90 = v89[3];
      v91 = v89[4];
      v92 = __swift_project_boxed_opaque_existential_1(v89, v90);
      v93 = v155;
      v155[3] = &type metadata for CenteringLayout;
      v93[4] = sub_215791C44();
      v94 = swift_allocObject();
      *v93 = v94;
      v94[5] = v90;
      v94[6] = *(v91 + 8);
      v95 = __swift_allocate_boxed_opaque_existential_1(v94 + 2);
      result = (*(*(v90 - 8) + 16))(v95, v92, v90);
    }

    v94[7] = 2;
    return result;
  }

  sub_215783024(v3 + v15, &v173, &qword_27CA71078, &unk_2157B2E80);
  if (!*(&v174 + 1))
  {
    sub_215783830(&v173, &qword_27CA71078, &unk_2157B2E80);
    goto LABEL_20;
  }

  sub_21571DF08(&v173, &v176);
  if ((v16 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v176);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(&v176);
LABEL_21:
    v134 = v14;
    sub_2157A8FC0();
    sub_215783024(v3 + v15, &v173, &qword_27CA71078, &unk_2157B2E80);
    v161 = v3;
    v157 = v13;
    if (*(&v174 + 1))
    {
      sub_21571DF08(&v173, &v176);
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      sub_2157A8D30();
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      sub_2157A8D10();
      v21 = v177;
      v22 = v178;
      v23 = __swift_project_boxed_opaque_existential_1(&v176, v177);
      *(&v174 + 1) = v21;
      v175 = *(v22 + 8);
      v24 = __swift_allocate_boxed_opaque_existential_1(&v173);
      (*(*(v21 - 8) + 16))(v24, v23, v21);
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098, &qword_2157B30D0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2157B33C0;
      sub_2157A8F90();
      sub_2157A8F80();
      *&v168[0] = v25;
      sub_215791C98(&qword_280D2AF60, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0, &qword_2157B30D8);
      sub_215783784();
      v26 = v154;
      v27 = v150;
      sub_2157A9540();
      v28 = v166;
      v29 = v156;
      v30 = v165;
      (*(v166 + 104))(v156, *MEMORY[0x277D227C8], v165);
      v31 = *MEMORY[0x277D227F0];
      v32 = v163;
      v33 = *(v163 + 104);
      v34 = v158;
      LODWORD(v148) = v16;
      v16 = v162;
      v33(v158, v31, v162);
      v35 = v153;
      sub_2157A8FD0();
      v36 = v16;
      LOBYTE(v16) = v148;
      (*(v32 + 8))(v34, v36);
      v37 = v29;
      (*(v28 + 8))(v29, v30);
      (*(v164 + 8))(v26, v27);
      sub_215783830(&v170, &qword_27CA710A8, &unk_2157B30E0);
      __swift_destroy_boxed_opaque_existential_1(&v173);
      sub_2157A8FF0();
      (*(v159 + 8))(v35, v160);
      __swift_destroy_boxed_opaque_existential_1(&v176);
    }

    else
    {
      sub_215783830(&v173, &qword_27CA71078, &unk_2157B2E80);
      v37 = v156;
      v27 = v150;
    }

    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_2157A8D10();
    v38 = 176;
    if (v16)
    {
      v38 = 216;
    }

    sub_21578326C(v161 + v38, &v176);
    v39 = v20[3];
    v40 = v20[4];
    v41 = __swift_project_boxed_opaque_existential_1(v20, v39);
    *(&v174 + 1) = v39;
    v175 = *(v40 + 8);
    v42 = __swift_allocate_boxed_opaque_existential_1(&v173);
    (*(*(v39 - 8) + 16))(v42, v41, v39);
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    LODWORD(v148) = *MEMORY[0x277D227C8];
    v43 = *(v166 + 104);
    v150 = v166 + 104;
    v147 = v43;
    v44 = v37;
    v43(v37);
    LODWORD(v145) = *MEMORY[0x277D227F0];
    v45 = v163;
    v46 = *(v163 + 104);
    v146 = v163 + 104;
    v144 = v46;
    v47 = v158;
    v48 = v162;
    v46(v158);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71098, &qword_2157B30D0);
    v49 = v164;
    *&v143 = *(v164 + 72);
    v50 = *(v164 + 80);
    v142 = (v50 + 8) & ~v50;
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2157B2B70;
    sub_2157A8F70();
    *&v168[0] = v51;
    v140 = sub_215791C98(&qword_280D2AF60, MEMORY[0x277D227D8], MEMORY[0x277D227E0]);
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710A0, &qword_2157B30D8);
    v137 = sub_215783784();
    v52 = v154;
    sub_2157A9540();
    v53 = v153;
    sub_2157A8FD0();
    v133 = *(v49 + 8);
    v133(v52, v27);
    v54 = *(v45 + 8);
    v163 = v45 + 8;
    v136 = v54;
    v54(v47, v48);
    v55 = *(v166 + 8);
    v166 += 8;
    v135 = v55;
    v55(v44, v165);
    sub_215783830(&v170, &qword_27CA710A8, &unk_2157B30E0);
    __swift_destroy_boxed_opaque_existential_1(&v173);
    sub_2157A8FF0();
    v56 = v159 + 8;
    v138 = *(v159 + 8);
    v138(v53, v160);
    v57 = (v161 + v134[8]);
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    sub_2157A8D10();
    v58 = v57[3];
    v59 = v57[4];
    v60 = __swift_project_boxed_opaque_existential_1(v57, v58);
    *(&v174 + 1) = v58;
    v175 = *(v59 + 8);
    v61 = __swift_allocate_boxed_opaque_existential_1(&v173);
    (*(*(v58 - 8) + 16))(v61, v60, v58);
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    v134 = v50;
    v132 = v142 + 2 * v143;
    v62 = swift_allocObject();
    v131 = xmmword_2157B33C0;
    *(v62 + 16) = xmmword_2157B33C0;
    sub_2157A8F90();
    v63 = v158;
    sub_2157A8F80();
    *&v168[0] = v62;
    sub_2157A9540();
    v64 = v156;
    v65 = v165;
    v147(v156, v148, v165);
    v66 = v162;
    v144(v63, v145, v162);
    v67 = v161;
    sub_2157A8FD0();
    v136(v63, v66);
    v68 = v64;
    v69 = v65;
    v70 = v160;
    v135(v64, v69);
    v164 = v49 + 8;
    v71 = v133;
    v133(v52, v27);
    v72 = v71;
    sub_215783830(&v170, &qword_27CA710A8, &unk_2157B30E0);
    __swift_destroy_boxed_opaque_existential_1(&v173);
    sub_2157A8FF0();
    v138(v53, v70);
    sub_215783024(v67 + v152, &v170, &qword_27CA71078, &unk_2157B2E80);
    if (*(&v171 + 1))
    {
      v73 = v68;
      sub_21571DF08(&v170, &v173);
      __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      v159 = v56;
      sub_2157A8D30();
      __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      sub_2157A8D10();
      v74 = *(&v174 + 1);
      v75 = v175;
      v76 = __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      *(&v171 + 1) = v74;
      v172 = *(v75 + 8);
      v77 = __swift_allocate_boxed_opaque_existential_1(&v170);
      (*(*(v74 - 8) + 16))(v77, v76, v74);
      v169 = 0;
      memset(v168, 0, sizeof(v168));
      v78 = swift_allocObject();
      *(v78 + 16) = v131;
      sub_2157A8F90();
      sub_2157A8F80();
      v167 = v78;
      sub_2157A9540();
      v79 = v165;
      v147(v73, v148, v165);
      v80 = v162;
      v144(v63, v145, v162);
      sub_2157A8FD0();
      v136(v63, v80);
      v135(v73, v79);
      v72(v52, v27);
      sub_215783830(v168, &qword_27CA710A8, &unk_2157B30E0);
      __swift_destroy_boxed_opaque_existential_1(&v170);
      v81 = v157;
      sub_2157A8FF0();
      v138(v53, v160);
      __swift_destroy_boxed_opaque_existential_1(&v173);
    }

    else
    {
      sub_215783830(&v170, &qword_27CA71078, &unk_2157B2E80);
      v81 = v157;
    }

    v82 = MEMORY[0x277D22808];
    v83 = v155;
    v84 = v151;
    v155[3] = v151;
    v83[4] = v82;
    v85 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(v149 + 32))(v85, v81, v84);
    return __swift_destroy_boxed_opaque_existential_1(&v176);
  }

  v124 = v155;
  v155[3] = &type metadata for CenteredThreeLineReverseTextLayout;
  v124[4] = sub_215791CE0();
  v125 = swift_allocObject();
  *v124 = v125;
  sub_21578326C(v20, v125 + 16);
  sub_21571DF08(&v176, v125 + 56);
  result = sub_21578326C(v3 + 216, v125 + 96);
  *(v125 + 136) = 2;
  return result;
}

uint64_t sub_215790D7C()
{
  v0 = sub_2157A9160();
  __swift_allocate_value_buffer(v0, qword_280D2B4F8);
  v1 = __swift_project_value_buffer(v0, qword_280D2B4F8);
  v2 = *MEMORY[0x277D228B8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_215790E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v46 = a2;
  v41 = sub_2157A9160();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - v11;
  v45 = sub_2157A9190();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2157A9130();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v38 = sub_2157A9150();
  v20 = *(v38 - 8);
  *&v21 = MEMORY[0x28223BE20](v38).n128_u64[0];
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = [a1 traitCollection];
  v26 = sub_2157A94B0();

  if (v26)
  {
    sub_21578F1B4(v24, v51);
    v27 = type metadata accessor for SmallLockupLayout(0);
    sub_21578326C(v7 + *(v27 + 20), v50);
    sub_21578326C(v7 + 16, v49);
    sub_21578326C(v7 + *(v27 + 44), v48);
    sub_21578326C(v7 + 416, v47);
    v28 = *MEMORY[0x277D22898];
    v29 = *(v14 + 104);
    v29(v19, v28, v13);
    v29(v16, v28, v13);
    sub_2157A9140();
    sub_2157A9120();
    return (*(v20 + 8))(v23, v38);
  }

  else
  {
    sub_21578F1B4(v24, v51);
    v31 = type metadata accessor for SmallLockupLayout(0);
    sub_21578326C(v7 + *(v31 + 20), v50);
    sub_21578326C(v7 + 16, v49);
    v32 = type metadata accessor for SmallLockupLayout.Metrics(0);
    v33 = *(v40 + 16);
    v34 = v41;
    v33(v39, v7 + *(v32 + 76), v41);
    sub_21578326C(v7 + *(v31 + 44), v48);
    sub_21578326C(v7 + 456, v47);
    if (qword_280D2B4F0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v34, qword_280D2B4F8);
    v33(v44, v35, v34);
    v36 = v42;
    sub_2157A9180();
    sub_2157A9170();
    return (*(v43 + 8))(v36, v45);
  }
}

double sub_21579136C(uint64_t a1, void *a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_2157913D8(a1, a2, a3, a4);
}

double sub_2157913D8(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_2157A8E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2157A8E80();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6, v12);
  sub_2157A8E60();
  v15 = [a2 traitCollection];
  LOBYTE(v9) = sub_2157A94B0();

  if (v9)
  {
    v16 = *(a1 + 8);
    v22[3] = MEMORY[0x277D85048];
    v22[4] = MEMORY[0x277D225F8];
    v22[0] = v16;
    v17 = sub_2157A91A0();
    v18 = MEMORY[0x277D228E0];
    v24 = v17;
    v25 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 16, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 56, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 216, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 296, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 336, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 456, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 496, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 416, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 536, v22);
  }

  else
  {
    sub_21578326C(a1 + 96, v22);
    v17 = sub_2157A91A0();
    v18 = MEMORY[0x277D228E0];
    v24 = v17;
    v25 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 296, v22);
    v24 = v17;
    v25 = v18;
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_21578326C(a1 + 416, v22);
  }

  v24 = v17;
  v25 = v18;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2157A91B0();
  sub_2157A8E70();
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_2157A8E40();
  v20 = v19;
  (*(v11 + 8))(v14, v10);
  return v20;
}

void sub_21579197C(uint64_t a1)
{
  type metadata accessor for SmallLockupLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_215791AB0(319, &qword_280D2B5E8, MEMORY[0x277D22640]);
    if (v2 <= 0x3F)
    {
      sub_215791B0C(319, &qword_280D2B5C8, &qword_27CA711B0, &qword_2157B3A28);
      if (v3 <= 0x3F)
      {
        sub_215791AB0(319, &qword_280D2B5D0, MEMORY[0x277D226F8]);
        if (v4 <= 0x3F)
        {
          sub_215791B0C(319, &qword_280D2B5E0, &qword_27CA71100, &qword_2157B3A30);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_215791AB0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_215791B0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2157A9520();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_215791C44()
{
  result = qword_27CA711C0;
  if (!qword_27CA711C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA711C0);
  }

  return result;
}

uint64_t sub_215791C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_215791CE0()
{
  result = qword_27CA711C8;
  if (!qword_27CA711C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA711C8);
  }

  return result;
}

uint64_t sub_215791D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ASCLayoutProxy.traitEnvironment(with:)(void *a1)
{
  v2 = objc_allocWithZone(sub_2157A91D0());
  v3 = a1;
  return sub_2157A91C0();
}

uint64_t static ASCLayoutProxy.rectWithLayoutDirection(for:in:relativeTo:)(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  return sub_2157A94F0();
}

uint64_t ASCLayoutProxy.alignmentInsets(in:)(uint64_t a1)
{
  sub_21578B2C8(v1 + OBJC_IVAR_____ASCLayoutProxy_base, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711D8, &qword_2157B3B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711E0, &qword_2157B3B08);
  if (swift_dynamicCast())
  {
    sub_21571DF08(v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 16))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    return sub_21579227C(v6);
  }
}

uint64_t sub_21579227C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711E8, &unk_2157B3B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ASCLayoutProxy.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_2157A8A50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR_____ASCLayoutProxy_base), *(v5 + OBJC_IVAR_____ASCLayoutProxy_base + 24));
  sub_2157A9260();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2157925E0()
{
  v0 = sub_2157A8E00();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2157A8E20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_27CA73840);
  __swift_project_value_buffer(v4, qword_27CA73840);
  sub_2157A8E10();
  sub_2157A8DF0();
  sub_2157A8DE0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ASCLayoutProxy.description.getter()
{
  sub_2157A9550();
  MEMORY[0x216070240](0x756F79614C435341, 0xEF2879786F725074);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA711D8, &qword_2157B3B00);
  sub_2157A9590();
  MEMORY[0x216070240](41, 0xE100000000000000);
  return 0;
}

id ASCLayoutProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCLayoutProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_215792A48(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v9 = objc_allocWithZone(a2);
  sub_21578B2C8(v13, v9 + OBJC_IVAR_____ASCLayoutProxy_base);
  v12.receiver = v9;
  v12.super_class = a2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_215792B04()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = @"small";
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v107 = MEMORY[0x277D839F8];
  v108 = MEMORY[0x277D22A30];
  *&v106 = 0x4024000000000000;
  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v62 = *MEMORY[0x277D22620];
  v61 = v1[13];
  v61(v3);
  v57 = sub_2157A8E90();
  v104 = v57;
  v105 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v103);
  v101 = v0;
  v102 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
  v60 = v1[2];
  v60(boxed_opaque_existential_1, v3, v0);
  v10 = v1 + 2;
  v55 = v8;
  sub_2157A8EA0();
  v59 = v1[1];
  v59(v3, v0);
  v58 = v1 + 1;
  v11 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v12 = v62;
  v13 = v61;
  (v61)(v3, v62, v0);
  v56 = v1 + 13;
  v101 = v57;
  v102 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v100);
  v98 = v0;
  v99 = MEMORY[0x277D22628];
  v14 = __swift_allocate_boxed_opaque_existential_1(&v97);
  v60(v14, v3, v0);
  v15 = v11;
  sub_2157A8EA0();
  v59(v3, v0);
  *v3 = v15;
  v13(v3, v12, v0);
  v16 = v13;
  v17 = v57;
  v98 = v57;
  v99 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v97);
  v95 = v0;
  v96 = MEMORY[0x277D22628];
  v18 = __swift_allocate_boxed_opaque_existential_1(&v94);
  v19 = v60;
  v60(v18, v3, v0);
  v20 = v15;
  sub_2157A8EA0();
  v21 = v59;
  v59(v3, v0);
  *v3 = v20;
  v16(v3, v62, v0);
  v22 = v17;
  v95 = v17;
  v96 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v94);
  v92 = v0;
  v93 = MEMORY[0x277D22628];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v91);
  v19(v23, v3, v0);
  v24 = v20;
  sub_2157A8EA0();
  v21(v3, v0);
  v25 = v21;
  *v3 = v24;
  v26 = v62;
  (v61)(v3, v62, v0);
  v92 = v22;
  v93 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v91);
  v89 = v0;
  v90 = MEMORY[0x277D22628];
  v27 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v60(v27, v3, v0);
  v54 = v10;
  v28 = v24;
  sub_2157A8EA0();
  v25(v3, v0);
  v29 = v55;
  *v3 = v55;
  v30 = v26;
  v31 = v61;
  (v61)(v3, v26, v0);
  v89 = v57;
  v90 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v88);
  v86 = v0;
  v87 = MEMORY[0x277D22628];
  v32 = __swift_allocate_boxed_opaque_existential_1(&v85);
  v33 = v60;
  v60(v32, v3, v0);
  v34 = v29;
  sub_2157A8EA0();
  v35 = v59;
  v59(v3, v0);
  *v3 = v34;
  v31(v3, v30, v0);
  v36 = v57;
  v86 = v57;
  v87 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v85);
  v83 = v0;
  v84 = MEMORY[0x277D22628];
  v37 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v33(v37, v3, v0);
  v38 = v34;
  sub_2157A8EA0();
  v39 = v35;
  v35(v3, v0);
  *v3 = v38;
  v40 = v62;
  (v61)(v3, v62, v0);
  v83 = v36;
  v84 = MEMORY[0x277D22798];
  v55 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v80 = v0;
  v81 = MEMORY[0x277D22628];
  v41 = __swift_allocate_boxed_opaque_existential_1(&v79);
  v60(v41, v3, v0);
  v42 = v38;
  sub_2157A8EA0();
  v39(v3, v0);
  *v3 = v42;
  v43 = v61;
  (v61)(v3, v40, v0);
  v44 = v36;
  v80 = v36;
  v81 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v79);
  v77 = v0;
  v78 = MEMORY[0x277D22628];
  v45 = __swift_allocate_boxed_opaque_existential_1(&v76);
  v46 = v60;
  v60(v45, v3, v0);
  v47 = v42;
  sub_2157A8EA0();
  v59(v3, v0);
  *v3 = v47;
  (v43)(v3, v62, v0);
  v77 = v36;
  v78 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v76);
  v74 = v0;
  v75 = MEMORY[0x277D22628];
  v48 = __swift_allocate_boxed_opaque_existential_1(&v73);
  v46(v48, v3, v0);
  v49 = v47;
  sub_2157A8EA0();
  v50 = v59;
  v59(v3, v0);
  v75 = MEMORY[0x277D22A30];
  v74 = MEMORY[0x277D839F8];
  v72 = MEMORY[0x277D22A30];
  *&v73 = 0x4024000000000000;
  v71 = MEMORY[0x277D839F8];
  v69 = MEMORY[0x277D22A30];
  *&v70 = 0x4014000000000000;
  v68 = MEMORY[0x277D839F8];
  *&v67 = 0x401C000000000000;
  *v3 = v49;
  (v61)(v3, v62, v0);
  v65 = v44;
  v66 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v63[3] = v0;
  v63[4] = MEMORY[0x277D22628];
  v51 = __swift_allocate_boxed_opaque_existential_1(v63);
  v46(v51, v3, v0);
  v52 = v49;
  sub_2157A8EA0();
  v50(v3, v0);
  qword_27CA71480 = MEMORY[0x277D839F8];
  qword_27CA71488 = MEMORY[0x277D22A30];
  qword_27CA71468 = 0x4040000000000000;
  qword_27CA714A8 = MEMORY[0x277D839F8];
  qword_27CA714B0 = MEMORY[0x277D22A30];
  qword_27CA71490 = 0x4024000000000000;
  qword_27CA711F0 = *&IconSize;
  unk_27CA711F8 = v7;
  sub_21571DF08(&v106, &unk_27CA71200);
  sub_21571DF08(&v103, &unk_27CA71228);
  sub_21571DF08(&v100, &unk_27CA71250);
  sub_21571DF08(&v97, &unk_27CA71278);
  sub_21571DF08(&v94, &unk_27CA712A0);
  sub_21571DF08(&v91, &unk_27CA712C8);
  sub_21571DF08(&v88, &unk_27CA712F0);
  sub_21571DF08(&v85, &unk_27CA71318);
  sub_21571DF08(&v82, &unk_27CA71340);
  sub_21571DF08(&v79, &unk_27CA71368);
  sub_21571DF08(&v76, &unk_27CA71390);
  xmmword_27CA713B8 = xmmword_2157B3B50;
  sub_21571DF08(&v73, &unk_27CA713C8);
  sub_21571DF08(&v70, &unk_27CA713F0);
  sub_21571DF08(&v67, &unk_27CA71418);
  return sub_21571DF08(&v64, &unk_27CA71440);
}

uint64_t sub_215793468()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  if (qword_27CA70FA8 != -1)
  {
    swift_once();
  }

  v8 = sub_2157A8B70();
  v9 = __swift_project_value_buffer(v8, qword_27CA714E8);
  v10 = *(v8 - 8);
  v48 = *(v10 + 16);
  v44 = v10 + 16;
  v48(v3, v9, v8);
  v12 = v1 + 13;
  v11 = v1[13];
  v47 = *MEMORY[0x277D22618];
  v13 = v11;
  v11(v3);
  v51 = sub_2157A8E90();
  v72 = v51;
  v73 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v71);
  v69 = v0;
  v70 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
  v15 = v1 + 2;
  v50 = v1[2];
  v50(boxed_opaque_existential_1, v3, v0);
  sub_2157A8EA0();
  v16 = v1[1];
  v49 = v1 + 1;
  v45 = v16;
  v16(v3, v0);
  if (qword_27CA70F98 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v8, qword_27CA714B8);
  v48(v3, v43, v8);
  v46 = v13;
  v13(v3, v47, v0);
  v69 = v51;
  v70 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v68);
  v66 = v0;
  v67 = MEMORY[0x277D22628];
  v17 = __swift_allocate_boxed_opaque_existential_1(&v65);
  v18 = v50;
  v50(v17, v3, v0);
  sub_2157A8EA0();
  v19 = v45;
  v45(v3, v0);
  v41 = v8;
  v48(v3, v43, v8);
  v43 = v12;
  v20 = v46;
  v46(v3, v47, v0);
  v66 = v51;
  v21 = MEMORY[0x277D22798];
  v67 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v65);
  v63 = v0;
  v64 = MEMORY[0x277D22628];
  v22 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v42 = v15;
  v18(v22, v3, v0);
  sub_2157A8EA0();
  v19(v3, v0);
  if (qword_27CA70FA0 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v40 = __swift_project_value_buffer(v41, qword_27CA714D0);
  v24 = v48;
  v48(v3, v40, v23);
  v25 = v47;
  v20(v3, v47, v0);
  v63 = v51;
  v64 = v21;
  __swift_allocate_boxed_opaque_existential_1(&v62);
  v26 = v21;
  v60 = v0;
  v61 = MEMORY[0x277D22628];
  v27 = __swift_allocate_boxed_opaque_existential_1(&v59);
  v50(v27, v3, v0);
  sub_2157A8EA0();
  v28 = v45;
  v45(v3, v0);
  v24(v3, v40, v23);
  v29 = v46;
  v46(v3, v25, v0);
  v30 = v51;
  v60 = v51;
  v61 = v26;
  __swift_allocate_boxed_opaque_existential_1(&v59);
  v57 = v0;
  v58 = MEMORY[0x277D22628];
  v31 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v32 = v50;
  v50(v31, v3, v0);
  sub_2157A8EA0();
  v28(v3, v0);
  v33 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  LODWORD(v48) = *MEMORY[0x277D22620];
  v29(v3);
  v57 = v30;
  v58 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v56);
  v54 = v0;
  v55 = MEMORY[0x277D22628];
  v34 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v32(v34, v3, v0);
  v35 = v33;
  sub_2157A8EA0();
  v28(v3, v0);
  *v3 = v35;
  v46(v3, v48, v0);
  v54 = v51;
  v55 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v53);
  v52[3] = v0;
  v52[4] = MEMORY[0x277D22628];
  v36 = __swift_allocate_boxed_opaque_existential_1(v52);
  v50(v36, v3, v0);
  v37 = v35;
  sub_2157A8EA0();
  v28(v3, v0);
  qword_27CA73858 = *&IconSize;
  unk_27CA73860 = v7;
  sub_21571DF08(&v71, &unk_27CA73868);
  sub_21571DF08(&v68, &unk_27CA73890);
  sub_21571DF08(&v65, &unk_27CA738B8);
  sub_21571DF08(&v62, &unk_27CA738F0);
  sub_21571DF08(&v59, &unk_27CA73918);
  sub_21571DF08(&v56, &unk_27CA73940);
  result = sub_21571DF08(&v53, &unk_27CA73968);
  qword_27CA738E0 = 2;
  byte_27CA738E8 = 0;
  return result;
}

unint64_t sub_215793DD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v53 = a3;
  v51 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v51);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8B50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8, &qword_2157B32C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 > 1)
  {
    sub_2157A8B30();
  }

  else
  {
    sub_2157A8B60();
  }

  v25 = *(v9 + 56);
  v25(v22, 0, 1, v8);
  v26 = v55;
  v27 = a1;
  v28 = v53;
  sub_215787E04(a2, v53, v27, v55);
  sub_215798C18(v26, v54, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, v28, 0, 1);
  if (result >> 62)
  {
    v33 = result;
    v34 = sub_2157A95B0();
    result = v33;
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_11:

    v32 = v49;
    sub_2157A8B60();
    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x2160703B0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v30 = *(result + 32);
  }

  v31 = v30;

  [v31 width];
  [v31 height];
  v32 = v49;
  sub_2157A8B60();

LABEL_12:
  sub_215787230(v22, v20);
  v35 = v51;
  v36 = *(v51 + 24);
  v25(&v7[v36], 1, 1, v8);
  v37 = v35;
  v38 = v54;
  sub_215798C18(v54, v7, type metadata accessor for LockupMediaLayout.DisplayType);
  (*(v9 + 16))(&v7[*(v37 + 20)], v32, v8);
  sub_215798C80(v20, &v7[v36]);
  if ([objc_opt_self() isMainThread])
  {
    v39 = [objc_opt_self() mainScreen];
    [v39 bounds];
    v41 = v40;
    v43 = v42;

    sub_215798CF0(v20);
    (*(v9 + 8))(v32, v8);
    sub_215798BB8(v38, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v55, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v22);
    v44 = &v7[*(v37 + 28)];
    *v44 = v41;
    *(v44 + 1) = v43;
  }

  else
  {
    sub_215798CF0(v20);
    (*(v9 + 8))(v32, v8);
    sub_215798BB8(v38, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v55, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v22);
    v45 = &v7[*(v37 + 28)];
    *v45 = 0;
    *(v45 + 1) = 0;
  }

  v46 = v52;
  sub_215798D58(v7, v52, type metadata accessor for LockupMediaLayout.Metrics);
  v47 = v50;
  sub_215787C6C(v50);
  return sub_215798DC0(v47, v46);
}

id static ASCLayoutProxy.lockupMediaSizingLayout(for:screenshots:trailers:containerView:mediaViews:)(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v11 = type metadata accessor for LockupMediaLayout(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24.receiver - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215793DD0(a1, a2, a3, v16);
  sub_215798C18(v16, v13 + *(v11 + 24), type metadata accessor for LockupMediaLayout.Metrics);
  v17 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  v18 = MEMORY[0x277D22A58];
  v13[3] = v17;
  v13[4] = v18;
  *v13 = a4;
  v19 = a4;
  v13[5] = sub_2157945B4(a5);
  v25[3] = v11;
  v25[4] = sub_215795CF8(&qword_27CA71518, &unk_2157B3388);
  v25[5] = sub_215795CF8(&qword_27CA71520, "aզl؋");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_215798C18(v13, boxed_opaque_existential_1, type metadata accessor for LockupMediaLayout);
  v21 = objc_allocWithZone(v5);
  sub_21578B2C8(v25, v21 + OBJC_IVAR_____ASCLayoutProxy_base);
  v24.receiver = v21;
  v24.super_class = v5;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  sub_215798BB8(v16, type metadata accessor for LockupMediaLayout.Metrics);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_215798BB8(v13, type metadata accessor for LockupMediaLayout);
  return v22;
}

void *sub_2157945B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2157A95B0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_2157955A4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D22A58];
      do
      {
        v7 = MEMORY[0x2160703B0](v5, a1);
        v19 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_2157955A4((v8 > 1), v9 + 1, 1);
          v3 = v19;
        }

        ++v5;
        v17 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
        v18 = v6;
        *&v16 = v7;
        *(v3 + 16) = v9 + 1;
        sub_21571DF08(&v16, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x277D22A58];
      do
      {
        v12 = *v10;
        v19 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        v15 = v12;
        if (v14 >= v13 >> 1)
        {
          sub_2157955A4((v13 > 1), v14 + 1, 1);
          v3 = v19;
        }

        v17 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
        v18 = v11;
        *&v16 = v15;
        *(v3 + 16) = v14 + 1;
        sub_21571DF08(&v16, v3 + 40 * v14 + 32);
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

double static ASCLayoutProxy.lockupMediaPreferredMediaSize(fitting:for:with:and:in:)(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v12 = type metadata accessor for LockupMediaLayout.Metrics(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215793DD0(a1, a2, a3, v14);
  v15 = sub_2157872A0(v14, a4, a5, a6);
  sub_215798BB8(v14, type metadata accessor for LockupMediaLayout.Metrics);
  return v15;
}

uint64_t sub_215794EB4()
{
  v0 = sub_2157A8B70();
  __swift_allocate_value_buffer(v0, qword_27CA714D0);
  v1 = __swift_project_value_buffer(v0, qword_27CA714D0);
  v2 = *MEMORY[0x277D74410];
  *v1 = 0xD000000000000010;
  v1[1] = 0x80000002157B7D60;
  v1[2] = j___s18AppStoreComponents14ASCLayoutProxyC31lockupSubtitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0;
  v1[3] = 0;
  v1[4] = v2;
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_215794FF8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2157A8B70();
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  v11 = *a3;
  *v10 = 0x70756B636F4C6461;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = 0;
  v10[4] = v11;
  v12 = *(*(v9 - 8) + 104);

  return v12();
}

uint64_t sub_2157950FC()
{
  v0 = sub_2157A8B70();
  __swift_allocate_value_buffer(v0, qword_27CA71500);
  v1 = __swift_project_value_buffer(v0, qword_27CA71500);
  v2 = *MEMORY[0x277D74418];
  *v1 = 0xD000000000000019;
  v1[1] = 0x80000002157B7D80;
  v1[2] = j___s18AppStoreComponents14ASCLayoutProxyC42adTransparencyButtonTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0;
  v1[3] = 0;
  v1[4] = v2;
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

double static ASCLayoutProxy.adTransparencyButtonScaledCapInset(_:in:)(uint64_t a1, double a2)
{
  v2 = sub_2157A89D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CA70FB0 != -1)
  {
    swift_once();
  }

  v6 = sub_2157A8B70();
  v7 = __swift_project_value_buffer(v6, qword_27CA71500);
  (*(*(v6 - 8) + 16))(v5, v7, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D22618], v2);
  v13[3] = v2;
  v13[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  sub_2157A89B0();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

void *sub_2157955A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2157955C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2157955C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71528, &unk_2157B3B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71100, &qword_2157B3A30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_21579570C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2160703B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21579578C;
  }

  __break(1u);
  return result;
}

id sub_215795794(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  if (qword_27CA70F88 != -1)
  {
    swift_once();
  }

  sub_215782FEC(&qword_27CA711F0, v71);
  v70 = a1;
  v18 = MEMORY[0x277D22A68];
  if (a2)
  {
    v58 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
    v57 = MEMORY[0x277D22A68];
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v19 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
  v20 = v19;
  v68 = v19;
  v69 = v18;
  v66 = v18;
  *&v67 = a3;
  if (a5)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (a5)
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v55 = v22;
  v56 = v21;
  v65 = v19;
  *&v64 = a4;
  v23 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  v62 = v23;
  v63 = MEMORY[0x277D22A58];
  *&v61 = a6;
  if (a7)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a7)
  {
    v25 = MEMORY[0x277D22A58];
  }

  else
  {
    v25 = 0;
  }

  v49 = v25;
  v50 = v24;
  if (a8)
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  if (a8)
  {
    v27 = v20;
  }

  else
  {
    v27 = 0;
  }

  if (a10)
  {
    v28 = MEMORY[0x277D22A58];
  }

  else
  {
    v28 = 0;
  }

  v53 = v26;
  v54 = v28;
  if (a10)
  {
    v29 = v23;
  }

  else
  {
    v29 = 0;
  }

  v102 = v20;
  if (a9)
  {
    v30 = MEMORY[0x277D22A58];
  }

  else
  {
    v30 = 0;
  }

  v51 = v30;
  v52 = v29;
  if (a9)
  {
    v31 = v23;
  }

  else
  {
    v31 = 0;
  }

  v47 = v31;
  v48 = v27;
  v103 = v18;
  v101 = a11;
  sub_215782FEC(v71, v72);
  v32 = a9;
  v33 = a11;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a10;
  sub_2157A8AB0();
  sub_215783140(v71);
  v73 = a2;
  v74 = 0u;
  v75 = v58;
  v76 = v57;
  sub_21571DF08(&v67, &v77);
  sub_21571DF08(&v64, v78);
  *&v78[40] = 0u;
  v79 = 0u;
  v80 = 0;
  v81 = a5;
  v82 = 0u;
  v83 = v56;
  v84 = v55;
  sub_21571DF08(&v61, v85);
  v85[5] = a7;
  v86 = 0u;
  v87 = v50;
  v88 = v49;
  v89 = a8;
  v90 = 0u;
  v91 = v48;
  v92 = v53;
  v93 = a10;
  v94 = 0u;
  v95 = v52;
  v96 = v54;
  v97 = a9;
  v98 = 0u;
  v99 = v47;
  v100 = v51;
  v71[3] = &type metadata for AdLockupLayout;
  v71[4] = sub_215798E24();
  v71[5] = sub_215798E78();
  v71[0] = swift_allocObject();
  sub_215798ECC(v72, v71[0] + 16);
  type metadata accessor for ASCLayoutProxy();
  v43 = v42;
  v44 = objc_allocWithZone(v42);
  sub_21578B2C8(v71, v44 + OBJC_IVAR_____ASCLayoutProxy_base);
  v60.receiver = v44;
  v60.super_class = v43;
  v45 = objc_msgSendSuper2(&v60, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_215798F28(v72);
  return v45;
}

uint64_t _s18AppStoreComponents14ASCLayoutProxyC32numberOfViewsInLockupMediaLayout3for4with3andSiSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_215787E04(a2, a3, a1, &v15 - v10);
  sub_215798D58(v11, v9, type metadata accessor for LockupMediaLayout.DisplayType);
  v12 = sub_2157A8B50();
  v13 = (*(*(v12 - 8) + 48))(v9, 10, v12);
  if (v13 <= 4)
  {
    if (v13 <= 1)
    {
      if (!v13)
      {
        sub_215798BB8(v9, type metadata accessor for LockupMediaLayout.DisplayType);
      }
    }

    else
    {
      if (v13 == 2)
      {
        return 2;
      }

      if (v13 == 3)
      {
        return 3;
      }
    }

    return 1;
  }

  if (v13 > 7)
  {
    if (v13 == 8)
    {
      return 5;
    }

    else if (v13 == 9)
    {
      return 7;
    }

    else
    {
      return 4;
    }
  }

  else if (v13 == 5)
  {
    return 0;
  }

  else if (v13 == 6)
  {
    return 9;
  }

  else
  {
    return 14;
  }
}

uint64_t sub_215795CF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _s18AppStoreComponents14ASCLayoutProxyC17lockupMediaLayout3for11screenshots8trailers13containerView10mediaViewsACSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgSo6UIViewCSayATGtFZ_0(char *a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v68 = a4;
  v69 = a5;
  v70 = a1;
  v67 = type metadata accessor for LockupMediaLayout(0);
  MEMORY[0x28223BE20](v67);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A8B50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8, &qword_2157B32C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  v63 = type metadata accessor for LockupMediaLayout.Metrics(0);
  v23 = MEMORY[0x28223BE20](v63);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v66 = &v61 - v26;
  v64 = v9;
  v27 = v22;
  v28 = v22;
  v29 = v8;
  v62 = *(v9 + 56);
  v62(v28, 1, 1, v8);
  sub_215787E04(a2, a3, v70, v16);
  v61 = v16;
  v70 = v14;
  sub_215798C18(v16, v14, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, a3, 0, 1);
  if (result >> 62)
  {
    v60 = result;
    v31 = sub_2157A95B0();
    result = v60;
  }

  else
  {
    v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v71;
  v33 = v8;
  v34 = v27;
  if (v31)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x2160703B0](0);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v35 = *(result + 32);
    }

    v36 = v35;

    [v36 width];
    [v36 height];
    sub_2157A8B60();
  }

  else
  {

    sub_2157A8B60();
  }

  sub_215787230(v27, v20);
  v37 = v63;
  v38 = *(v63 + 24);
  v62(&v25[v38], 1, 1, v29);
  v39 = v70;
  sub_215798C18(v70, v25, type metadata accessor for LockupMediaLayout.DisplayType);
  v40 = v64;
  (*(v64 + 16))(&v25[*(v37 + 20)], v32, v33);
  sub_215798C80(v20, &v25[v38]);
  if ([objc_opt_self() isMainThread])
  {
    v41 = [objc_opt_self() mainScreen];
    [v41 bounds];
    v43 = v42;
    v45 = v44;

    sub_215798CF0(v20);
    (*(v40 + 8))(v32, v33);
    sub_215798BB8(v39, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v34);
    v46 = &v25[*(v37 + 28)];
    *v46 = v43;
    *(v46 + 1) = v45;
  }

  else
  {
    sub_215798CF0(v20);
    (*(v40 + 8))(v32, v33);
    sub_215798BB8(v39, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798CF0(v34);
    v47 = &v25[*(v37 + 28)];
    *v47 = 0;
    *(v47 + 1) = 0;
  }

  v48 = v66;
  sub_215798D58(v25, v66, type metadata accessor for LockupMediaLayout.Metrics);
  v49 = v67;
  v50 = v65;
  sub_215798C18(v48, &v65[*(v67 + 24)], type metadata accessor for LockupMediaLayout.Metrics);
  v51 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  v52 = MEMORY[0x277D22A58];
  v50[3] = v51;
  v50[4] = v52;
  v53 = v68;
  *v50 = v68;
  v54 = v53;
  v50[5] = sub_2157945B4(v69);
  v73[3] = v49;
  v73[4] = sub_215795CF8(&qword_27CA71518, &unk_2157B3388);
  v73[5] = sub_215795CF8(&qword_27CA71520, "aզl؋");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_215798C18(v50, boxed_opaque_existential_1, type metadata accessor for LockupMediaLayout);
  type metadata accessor for ASCLayoutProxy();
  v57 = v56;
  v58 = objc_allocWithZone(v56);
  sub_21578B2C8(v73, v58 + OBJC_IVAR_____ASCLayoutProxy_base);
  v72.receiver = v58;
  v72.super_class = v57;
  v59 = objc_msgSendSuper2(&v72, sel_init);
  sub_215798BB8(v48, type metadata accessor for LockupMediaLayout.Metrics);
  __swift_destroy_boxed_opaque_existential_1(v73);
  sub_215798BB8(v50, type metadata accessor for LockupMediaLayout);
  return v59;
}

unint64_t _s18AppStoreComponents14ASCLayoutProxyC25estimatedMediaContentSize3for11screenshots8trailers7fitting2inSo6CGSizeVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgAKSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v66 = a4;
  v11 = sub_2157A8B50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for LockupMediaLayout.Metrics(0);
  v14 = MEMORY[0x28223BE20](v71);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8, &qword_2157B32C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v69 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v22 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v60 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v60 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v60 - v32;
  sub_215787E04(a2, a3, a1, v31);
  sub_215787C6C(v33);
  sub_215798BB8(v31, type metadata accessor for LockupMediaLayout.DisplayType);
  v64 = v12;
  v34 = *(v12 + 56);
  v67 = v21;
  v35 = v21;
  v36 = v11;
  v37 = v11;
  v38 = v34;
  v34(v35, 1, 1, v37);
  v63 = v33;
  sub_215787C6C(v28);
  v61 = v28;
  v62 = v25;
  sub_215798C18(v28, v25, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, a3, 0, 1);
  if (result >> 62)
  {
    v59 = result;
    v40 = sub_2157A95B0();
    result = v59;
  }

  else
  {
    v40 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v71;
  v42 = v36;
  v43 = v69;
  if (v40)
  {
    v44 = v67;
    if ((result & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x2160703B0](0);
      v45 = v70;
      v46 = v68;
    }

    else
    {
      v45 = v70;
      v46 = v68;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v47 = *(result + 32);
    }

    [v47 width];
    [v47 height];
    sub_2157A8B60();
  }

  else
  {

    v45 = v70;
    sub_2157A8B60();
    v44 = v67;
    v46 = v68;
  }

  sub_215787230(v44, v43);
  v48 = v41[6];
  v38(v46 + v48, 1, 1, v42);
  v49 = v62;
  sub_215798C18(v62, v46, type metadata accessor for LockupMediaLayout.DisplayType);
  v50 = v64;
  (*(v64 + 16))(v46 + v41[5], v45, v42);
  sub_215798C80(v43, v46 + v48);
  if ([objc_opt_self() isMainThread])
  {
    v51 = [objc_opt_self() mainScreen];
    [v51 bounds];
    v53 = v52;
    v55 = v54;

    sub_215798CF0(v43);
    (*(v50 + 8))(v45, v42);
    sub_215798BB8(v49, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    v56 = (v46 + v41[7]);
    *v56 = v53;
    v56[1] = v55;
  }

  else
  {
    sub_215798CF0(v43);
    (*(v50 + 8))(v45, v42);
    sub_215798BB8(v49, type metadata accessor for LockupMediaLayout.DisplayType);
    sub_215798BB8(v61, type metadata accessor for LockupMediaLayout.DisplayType);
    v57 = (v46 + v41[7]);
    *v57 = 0;
    v57[1] = 0;
  }

  v58 = v65;
  sub_215798D58(v46, v65, type metadata accessor for LockupMediaLayout.Metrics);
  sub_215785944(v58, v66, a5, a6);
  sub_215798BB8(v58, type metadata accessor for LockupMediaLayout.Metrics);
  sub_215798CF0(v44);
  return sub_215798BB8(v63, type metadata accessor for LockupMediaLayout.DisplayType);
}

unint64_t _s18AppStoreComponents14ASCLayoutProxyC26containerViewRotationAngle3for11screenshots8trailers12CoreGraphics7CGFloatVSo16ASCLockupContextaSg_So14ASCScreenshotsCSgSo11ASCTrailersCSgtFZ_0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_215787E04(a2, a3, a1, v12);
  sub_215787C6C(v14);
  sub_215798BB8(v12, type metadata accessor for LockupMediaLayout.DisplayType);
  result = sub_215788950(a2, a3, 0, 1);
  if (result >> 62)
  {
    v18 = result;
    v19 = sub_2157A95B0();
    result = v18;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2160703B0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(result + 32);
  }

  v17 = v16;

  [v17 isPortrait];

LABEL_9:
  sub_215798D58(v14, v9, type metadata accessor for LockupMediaLayout.DisplayType);
  v20 = sub_2157A8B50();
  result = (*(*(v20 - 8) + 48))(v9, 10, v20);
  if (result != 7 && result != 6)
  {
    return sub_215798BB8(v9, type metadata accessor for LockupMediaLayout.DisplayType);
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC13layoutMargins3for014existingLayoutG0So12UIEdgeInsetsVSo16ASCLockupContextaSg_AHtFZ_0(void *a1, double a2)
{
  if (!a1)
  {
    return a2;
  }

  v4 = sub_2157A93E0();
  v6 = v5;
  if (v4 == sub_2157A93E0() && v6 == v7)
  {
    v21 = a1;
    goto LABEL_16;
  }

  v9 = sub_2157A95F0();
  v10 = a1;

  if (v9)
  {
LABEL_17:
    a2 = *MEMORY[0x277D768C8];

    return a2;
  }

  v11 = sub_2157A93E0();
  v13 = v12;
  if (v11 == sub_2157A93E0() && v13 == v14)
  {
LABEL_16:

    goto LABEL_17;
  }

  v16 = sub_2157A95F0();

  if (v16)
  {
    goto LABEL_17;
  }

  v17 = sub_2157A93E0();
  v19 = v18;
  if (v17 == sub_2157A93E0() && v19 == v20)
  {
  }

  else
  {
    v23 = sub_2157A95F0();

    if ((v23 & 1) == 0)
    {

      return a2;
    }
  }

  v24 = [objc_opt_self() currentDevice];
  [v24 userInterfaceIdiom];

  return a2;
}

double _s18AppStoreComponents14ASCLayoutProxyC28lockupTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0(uint64_t a1)
{
  v1 = sub_2157A93E0();
  v3 = v2;
  if (v1 == sub_2157A93E0() && v3 == v4)
  {

    return 19.0;
  }

  else
  {
    v6 = sub_2157A95F0();

    result = 19.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_2157A93E0();
      v10 = v9;
      if (v8 == sub_2157A93E0() && v10 == v11)
      {

        return 20.0;
      }

      v13 = sub_2157A95F0();

      result = 20.0;
      if ((v13 & 1) == 0)
      {
        v14 = sub_2157A93E0();
        v16 = v15;
        if (v14 == sub_2157A93E0() && v16 == v17)
        {

          return 21.0;
        }

        v18 = sub_2157A95F0();

        result = 21.0;
        if ((v18 & 1) == 0)
        {
          v19 = sub_2157A93E0();
          v21 = v20;
          if (v19 == sub_2157A93E0() && v21 == v22)
          {

            return 22.0;
          }

          v23 = sub_2157A95F0();

          result = 22.0;
          if ((v23 & 1) == 0)
          {
            v24 = sub_2157A93E0();
            v26 = v25;
            if (v24 == sub_2157A93E0() && v26 == v27)
            {

              return 24.0;
            }

            v28 = sub_2157A95F0();

            result = 24.0;
            if ((v28 & 1) == 0)
            {
              v29 = sub_2157A93E0();
              v31 = v30;
              if (v29 == sub_2157A93E0() && v31 == v32)
              {

                return 26.0;
              }

              v33 = sub_2157A95F0();

              result = 26.0;
              if ((v33 & 1) == 0)
              {
                v34 = sub_2157A93E0();
                v36 = v35;
                if (v34 == sub_2157A93E0() && v36 == v37)
                {

                  return 28.0;
                }

                v38 = sub_2157A95F0();

                result = 28.0;
                if ((v38 & 1) == 0)
                {
                  v39 = sub_2157A93E0();
                  v41 = v40;
                  if (v39 == sub_2157A93E0() && v41 == v42)
                  {

                    return 34.0;
                  }

                  v43 = sub_2157A95F0();

                  if (v43)
                  {
                    return 34.0;
                  }

                  v44 = sub_2157A93E0();
                  v46 = v45;
                  if (v44 == sub_2157A93E0() && v46 == v47)
                  {
                    goto LABEL_52;
                  }

                  v48 = sub_2157A95F0();

                  if (v48)
                  {
                    return 36.0;
                  }

                  v49 = sub_2157A93E0();
                  v51 = v50;
                  if (v49 == sub_2157A93E0() && v51 == v52)
                  {
                    goto LABEL_52;
                  }

                  v53 = sub_2157A95F0();

                  if (v53)
                  {
                    return 36.0;
                  }

                  v54 = sub_2157A93E0();
                  v56 = v55;
                  if (v54 == sub_2157A93E0() && v56 == v57)
                  {
                    goto LABEL_52;
                  }

                  v58 = sub_2157A95F0();

                  if (v58)
                  {
                    return 36.0;
                  }

                  v59 = sub_2157A93E0();
                  v61 = v60;
                  if (v59 == sub_2157A93E0() && v61 == v62)
                  {
LABEL_52:

                    return 36.0;
                  }

                  v63 = sub_2157A95F0();

                  result = 36.0;
                  if ((v63 & 1) == 0)
                  {
                    return 22.0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC31lockupSubtitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0(uint64_t a1)
{
  v1 = sub_2157A93E0();
  v3 = v2;
  if (v1 == sub_2157A93E0() && v3 == v4)
  {

    return 13.0;
  }

  v6 = sub_2157A95F0();

  result = 13.0;
  if ((v6 & 1) == 0)
  {
    v8 = sub_2157A93E0();
    v10 = v9;
    if (v8 == sub_2157A93E0() && v10 == v11)
    {

      return 14.0;
    }

    v13 = sub_2157A95F0();

    result = 14.0;
    if ((v13 & 1) == 0)
    {
      v14 = sub_2157A93E0();
      v16 = v15;
      if (v14 == sub_2157A93E0() && v16 == v17)
      {

        return 15.0;
      }

      v18 = sub_2157A95F0();

      result = 15.0;
      if ((v18 & 1) == 0)
      {
        v19 = sub_2157A93E0();
        v21 = v20;
        if (v19 == sub_2157A93E0() && v21 == v22)
        {

          return 16.0;
        }

        v23 = sub_2157A95F0();

        result = 16.0;
        if ((v23 & 1) == 0)
        {
          v24 = sub_2157A93E0();
          v26 = v25;
          if (v24 == sub_2157A93E0() && v26 == v27)
          {

            return 18.0;
          }

          v28 = sub_2157A95F0();

          result = 18.0;
          if ((v28 & 1) == 0)
          {
            v29 = sub_2157A93E0();
            v31 = v30;
            if (v29 == sub_2157A93E0() && v31 == v32)
            {

              return 20.0;
            }

            v33 = sub_2157A95F0();

            result = 20.0;
            if ((v33 & 1) == 0)
            {
              v34 = sub_2157A93E0();
              v36 = v35;
              if (v34 == sub_2157A93E0() && v36 == v37)
              {

                return 22.0;
              }

              v38 = sub_2157A95F0();

              result = 22.0;
              if ((v38 & 1) == 0)
              {
                v39 = sub_2157A93E0();
                v41 = v40;
                if (v39 == sub_2157A93E0() && v41 == v42)
                {
                  goto LABEL_36;
                }

                v43 = sub_2157A95F0();

                if (v43)
                {
                  return 24.0;
                }

                v44 = sub_2157A93E0();
                v46 = v45;
                if (v44 != sub_2157A93E0() || v46 != v47)
                {
                  v48 = sub_2157A95F0();

                  if (v48)
                  {
                    return 24.0;
                  }

                  v49 = sub_2157A93E0();
                  v51 = v50;
                  if (v49 == sub_2157A93E0() && v51 == v52)
                  {
                    goto LABEL_36;
                  }

                  v53 = sub_2157A95F0();

                  if (v53)
                  {
                    return 24.0;
                  }

                  v54 = sub_2157A93E0();
                  v56 = v55;
                  if (v54 == sub_2157A93E0() && v56 == v57)
                  {
                    goto LABEL_36;
                  }

                  v58 = sub_2157A95F0();

                  if (v58)
                  {
                    return 24.0;
                  }

                  v59 = sub_2157A93E0();
                  v61 = v60;
                  if (v59 != sub_2157A93E0() || v61 != v62)
                  {
                    v63 = sub_2157A95F0();

                    result = 16.0;
                    if (v63)
                    {
                      return 24.0;
                    }

                    return result;
                  }
                }

LABEL_36:

                return 24.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC30lockupHeadingPointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentI8CategoryaFZ_0(uint64_t a1)
{
  v1 = sub_2157A93E0();
  v3 = v2;
  if (v1 == sub_2157A93E0() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_2157A95F0();

  result = 12.0;
  if (v6)
  {
    return result;
  }

  v8 = sub_2157A93E0();
  v10 = v9;
  if (v8 == sub_2157A93E0() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_2157A95F0();

  if (v13)
  {
    return 12.0;
  }

  v14 = sub_2157A93E0();
  v16 = v15;
  if (v14 == sub_2157A93E0() && v16 == v17)
  {
LABEL_13:

    return 12.0;
  }

  v18 = sub_2157A95F0();

  result = 12.0;
  if ((v18 & 1) == 0)
  {
    v19 = sub_2157A93E0();
    v21 = v20;
    if (v19 == sub_2157A93E0() && v21 == v22)
    {

      return 13.0;
    }

    v23 = sub_2157A95F0();

    result = 13.0;
    if ((v23 & 1) == 0)
    {
      v24 = sub_2157A93E0();
      v26 = v25;
      if (v24 == sub_2157A93E0() && v26 == v27)
      {

        return 15.0;
      }

      v28 = sub_2157A95F0();

      result = 15.0;
      if ((v28 & 1) == 0)
      {
        v29 = sub_2157A93E0();
        v31 = v30;
        if (v29 == sub_2157A93E0() && v31 == v32)
        {

          return 17.0;
        }

        v33 = sub_2157A95F0();

        result = 17.0;
        if ((v33 & 1) == 0)
        {
          v34 = sub_2157A93E0();
          v36 = v35;
          if (v34 == sub_2157A93E0() && v36 == v37)
          {

            return 19.0;
          }

          v38 = sub_2157A95F0();

          result = 19.0;
          if ((v38 & 1) == 0)
          {
            v39 = sub_2157A93E0();
            v41 = v40;
            if (v39 == sub_2157A93E0() && v41 == v42)
            {
              goto LABEL_35;
            }

            v43 = sub_2157A95F0();

            if (v43)
            {
              return 22.0;
            }

            v44 = sub_2157A93E0();
            v46 = v45;
            if (v44 == sub_2157A93E0() && v46 == v47)
            {
              goto LABEL_35;
            }

            v48 = sub_2157A95F0();

            if (v48)
            {
              return 22.0;
            }

            v49 = sub_2157A93E0();
            v51 = v50;
            if (v49 == sub_2157A93E0() && v51 == v52)
            {
              goto LABEL_35;
            }

            v53 = sub_2157A95F0();

            if (v53)
            {
              return 22.0;
            }

            v54 = sub_2157A93E0();
            v56 = v55;
            if (v54 == sub_2157A93E0() && v56 == v57)
            {
              goto LABEL_35;
            }

            v58 = sub_2157A95F0();

            if (v58)
            {
              return 22.0;
            }

            v59 = sub_2157A93E0();
            v61 = v60;
            if (v59 == sub_2157A93E0() && v61 == v62)
            {
LABEL_35:

              return 22.0;
            }

            v63 = sub_2157A95F0();

            result = 13.0;
            if (v63)
            {
              return 22.0;
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC42adTransparencyButtonTitlePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0(uint64_t a1)
{
  v1 = sub_2157A93E0();
  v3 = v2;
  if (v1 == sub_2157A93E0() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_2157A95F0();

  result = 11.0;
  if (v6)
  {
    return result;
  }

  v8 = sub_2157A93E0();
  v10 = v9;
  if (v8 == sub_2157A93E0() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_2157A95F0();

  if (v13)
  {
    return 11.0;
  }

  v14 = sub_2157A93E0();
  v16 = v15;
  if (v14 == sub_2157A93E0() && v16 == v17)
  {
    goto LABEL_13;
  }

  v18 = sub_2157A95F0();

  if (v18)
  {
    return 11.0;
  }

  v19 = sub_2157A93E0();
  v21 = v20;
  if (v19 == sub_2157A93E0() && v21 == v22)
  {
LABEL_13:

    return 11.0;
  }

  v23 = sub_2157A95F0();

  result = 11.0;
  if ((v23 & 1) == 0)
  {
    v24 = sub_2157A93E0();
    v26 = v25;
    if (v24 == sub_2157A93E0() && v26 == v27)
    {

      return 13.0;
    }

    v28 = sub_2157A95F0();

    result = 13.0;
    if ((v28 & 1) == 0)
    {
      v29 = sub_2157A93E0();
      v31 = v30;
      if (v29 == sub_2157A93E0() && v31 == v32)
      {

        return 15.0;
      }

      v33 = sub_2157A95F0();

      result = 15.0;
      if ((v33 & 1) == 0)
      {
        v34 = sub_2157A93E0();
        v36 = v35;
        if (v34 == sub_2157A93E0() && v36 == v37)
        {

          return 17.0;
        }

        v38 = sub_2157A95F0();

        result = 17.0;
        if ((v38 & 1) == 0)
        {
          v39 = sub_2157A93E0();
          v41 = v40;
          if (v39 == sub_2157A93E0() && v41 == v42)
          {

            return 20.0;
          }

          v43 = sub_2157A95F0();

          result = 20.0;
          if ((v43 & 1) == 0)
          {
            v44 = sub_2157A93E0();
            v46 = v45;
            if (v44 == sub_2157A93E0() && v46 == v47)
            {

              return 24.0;
            }

            v48 = sub_2157A95F0();

            result = 24.0;
            if ((v48 & 1) == 0)
            {
              v49 = sub_2157A93E0();
              v51 = v50;
              if (v49 == sub_2157A93E0() && v51 == v52)
              {
                goto LABEL_42;
              }

              v53 = sub_2157A95F0();

              if (v53)
              {
                return 27.0;
              }

              v54 = sub_2157A93E0();
              v56 = v55;
              if (v54 == sub_2157A93E0() && v56 == v57)
              {
                goto LABEL_42;
              }

              v58 = sub_2157A95F0();

              if (v58)
              {
                return 27.0;
              }

              v59 = sub_2157A93E0();
              v61 = v60;
              if (v59 == sub_2157A93E0() && v61 == v62)
              {
LABEL_42:

                return 27.0;
              }

              v63 = sub_2157A95F0();

              result = 11.0;
              if (v63)
              {
                return 27.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double _s18AppStoreComponents14ASCLayoutProxyC44adTransparencyDeveloperNamePointSizeProvidery12CoreGraphics7CGFloatVSo09UIContentK8CategoryaFZ_0(uint64_t a1)
{
  v1 = sub_2157A93E0();
  v3 = v2;
  if (v1 == sub_2157A93E0() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_2157A95F0();

  result = 11.0;
  if (v6)
  {
    return result;
  }

  v8 = sub_2157A93E0();
  v10 = v9;
  if (v8 == sub_2157A93E0() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_2157A95F0();

  if (v13)
  {
    return 11.0;
  }

  v14 = sub_2157A93E0();
  v16 = v15;
  if (v14 == sub_2157A93E0() && v16 == v17)
  {
LABEL_13:

    return 11.0;
  }

  v18 = sub_2157A95F0();

  result = 11.0;
  if ((v18 & 1) == 0)
  {
    v19 = sub_2157A93E0();
    v21 = v20;
    if (v19 == sub_2157A93E0() && v21 == v22)
    {

      return 12.0;
    }

    v23 = sub_2157A95F0();

    result = 12.0;
    if ((v23 & 1) == 0)
    {
      v24 = sub_2157A93E0();
      v26 = v25;
      if (v24 == sub_2157A93E0() && v26 == v27)
      {

        return 14.0;
      }

      v28 = sub_2157A95F0();

      result = 14.0;
      if ((v28 & 1) == 0)
      {
        v29 = sub_2157A93E0();
        v31 = v30;
        if (v29 == sub_2157A93E0() && v31 == v32)
        {

          return 16.0;
        }

        v33 = sub_2157A95F0();

        result = 16.0;
        if ((v33 & 1) == 0)
        {
          v34 = sub_2157A93E0();
          v36 = v35;
          if (v34 == sub_2157A93E0() && v36 == v37)
          {

            return 18.0;
          }

          v38 = sub_2157A95F0();

          result = 18.0;
          if ((v38 & 1) == 0)
          {
            v39 = sub_2157A93E0();
            v41 = v40;
            if (v39 == sub_2157A93E0() && v41 == v42)
            {

              return 22.0;
            }

            v43 = sub_2157A95F0();

            result = 22.0;
            if ((v43 & 1) == 0)
            {
              v44 = sub_2157A93E0();
              v46 = v45;
              if (v44 == sub_2157A93E0() && v46 == v47)
              {
                goto LABEL_39;
              }

              v48 = sub_2157A95F0();

              if (v48)
              {
                return 24.0;
              }

              v49 = sub_2157A93E0();
              v51 = v50;
              if (v49 == sub_2157A93E0() && v51 == v52)
              {
                goto LABEL_39;
              }

              v53 = sub_2157A95F0();

              if (v53)
              {
                return 24.0;
              }

              v54 = sub_2157A93E0();
              v56 = v55;
              if (v54 == sub_2157A93E0() && v56 == v57)
              {
                goto LABEL_39;
              }

              v58 = sub_2157A95F0();

              if (v58)
              {
                return 24.0;
              }

              v59 = sub_2157A93E0();
              v61 = v60;
              if (v59 == sub_2157A93E0() && v61 == v62)
              {
LABEL_39:

                return 24.0;
              }

              v63 = sub_2157A95F0();

              result = 12.0;
              if (v63)
              {
                return 24.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_215798BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_215798C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215798C80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8, &qword_2157B32C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_215798CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA710B8, &qword_2157B32C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215798D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_215798DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_215798E24()
{
  result = qword_27CA71530;
  if (!qword_27CA71530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71530);
  }

  return result;
}

unint64_t sub_215798E78()
{
  result = qword_27CA71538;
  if (!qword_27CA71538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71538);
  }

  return result;
}

uint64_t sub_215798FB8(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for ASCLayoutProxy();
  v4 = sub_2157A93E0();
  sub_2157A04EC(v4, v5, v8);

  v6 = v8[9];
  result = sub_21579ECCC(v8);
  *a3 = v6;
  return result;
}

void sub_21579904C(uint64_t a1, void *a2, double *a3)
{
  type metadata accessor for ASCLayoutProxy();
  v4 = sub_2157A93E0();
  v6 = static ASCLayoutProxy.axOfferButtonHeightForSize(_:)(v4, v5);

  *a3 = v6;
}

uint64_t sub_2157990D8(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_2157A9110();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26[-1] - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26[-1] - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26[-1] - v17;
  __swift_allocate_value_buffer(v16, a2);
  __swift_project_value_buffer(v5, a2);
  sub_2157A9100();
  v19 = sub_2157A89D0();
  v26[3] = v19;
  v26[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  v21 = *a3;
  *boxed_opaque_existential_1 = v21;
  (*(*(v19 - 8) + 104))();
  v22 = v21;
  sub_2157A90C0();
  v23 = *(v6 + 8);
  v23(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_2157A90D0();
  v23(v12, v5);
  sub_2157A90E0();
  v23(v15, v5);
  sub_2157A90F0();
  return (v23)(v18, v5);
}

uint64_t sub_215799330()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v23[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v31 = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D22A30];
  *&v30 = 0x4024000000000000;
  v8 = *MEMORY[0x277D769D0];
  v9 = *MEMORY[0x277D74410];
  *v3 = *MEMORY[0x277D769D0];
  v3[1] = v9;
  v10 = *MEMORY[0x277D22688];
  v11 = sub_2157A8B70();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  v12 = v1[13];
  v12(v3, *MEMORY[0x277D22618], v0);
  v13 = sub_2157A8E90();
  v28 = v13;
  v29 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v27);
  v25 = v0;
  v26 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  v15 = v1[2];
  v15(boxed_opaque_existential_1, v3, v0);
  v16 = v8;
  sub_2157A8EA0();
  v17 = v1[1];
  v17(v3, v0);
  v18 = *MEMORY[0x277D76938];
  *v3 = *MEMORY[0x277D76938];
  v12(v3, *MEMORY[0x277D22620], v0);
  v25 = v13;
  v26 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v24);
  v23[3] = v0;
  v23[4] = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(v23);
  v15(v19, v3, v0);
  v20 = v18;
  sub_2157A8EA0();
  v17(v3, v0);
  qword_280D2B438 = MEMORY[0x277D839F8];
  qword_280D2B440 = MEMORY[0x277D22A30];
  qword_280D2B420 = 0x4030000000000000;
  qword_280D2B398 = *&IconSize;
  unk_280D2B3A0 = v7;
  sub_21571DF08(&v30, &unk_280D2B3A8);
  sub_21571DF08(&v27, &unk_280D2B3D0);
  return sub_21571DF08(&v24, &unk_280D2B3F8);
}

uint64_t sub_215799638()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v35 = MEMORY[0x277D839F8];
  v36 = MEMORY[0x277D22A30];
  *&v34 = 0x4024000000000000;
  v8 = *MEMORY[0x277D76938];
  v9 = *MEMORY[0x277D74410];
  *v3 = *MEMORY[0x277D76938];
  v3[1] = v9;
  v25 = *MEMORY[0x277D22688];
  v10 = v25;
  v11 = sub_2157A8B70();
  v12 = *(v11 - 8);
  v24 = *(v12 + 104);
  v26 = v12 + 104;
  v24(v3, v10, v11);
  v23 = *MEMORY[0x277D22618];
  v22 = v1[13];
  v22(v3);
  v13 = sub_2157A8E90();
  v32 = v13;
  v33 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v31);
  v29 = v0;
  v30 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  v15 = v1[2];
  v15(boxed_opaque_existential_1, v3, v0);
  v16 = v8;
  sub_2157A8EA0();
  v17 = v1[1];
  v17(v3, v0);
  v18 = *MEMORY[0x277D769D0];
  *v3 = *MEMORY[0x277D769D0];
  v3[1] = v9;
  v24(v3, v25, v11);
  (v22)(v3, v23, v0);
  v29 = v13;
  v30 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v28);
  v27[3] = v0;
  v27[4] = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(v27);
  v15(v19, v3, v0);
  v20 = v18;
  sub_2157A8EA0();
  v17(v3, v0);
  qword_27CA71670 = MEMORY[0x277D839F8];
  qword_27CA71678 = MEMORY[0x277D22A30];
  qword_27CA71658 = 0x4030000000000000;
  qword_27CA715D0 = *&IconSize;
  unk_27CA715D8 = v7;
  sub_21571DF08(&v34, &unk_27CA715E0);
  sub_21571DF08(&v31, &unk_27CA71608);
  return sub_21571DF08(&v28, &unk_27CA71630);
}

void sub_2157999A8()
{
  if (qword_280D2B390 != -1)
  {
    swift_once();
  }

  v0 = *&qword_280D2B398;
  v1 = unk_280D2B3A0;
  v2 = [objc_opt_self() clearColor];
  v4.width = v0;
  v4.height = v1;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  [v2 set];
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = v0;
  v5.size.height = v1;
  UIRectFill(v5);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  qword_27CA71680 = v3;
}

uint64_t sub_215799A9C(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (qword_280D2B380 != -1)
  {
    v10 = a2;
    v11 = a4;
    v12 = a3;
    swift_once();
    a2 = v10;
    a3 = v12;
    a4 = v11;
  }

  v6 = MEMORY[0x277D85048];
  v7 = MEMORY[0x277D225F8];
  v17 = MEMORY[0x277D85048];
  v18 = MEMORY[0x277D225F8];
  *&v16 = qword_280D2B388;
  if (qword_280D2B648 != -1)
  {
    v13 = a2;
    v14 = a4;
    v15 = a3;
    swift_once();
    a2 = v13;
    a3 = v15;
    a4 = v14;
  }

  v8 = qword_280D2B650;
  *a2 = v6;
  *a3 = v7;
  *a4 = v8;
  return sub_21571DF08(&v16, a5);
}

uint64_t sub_215799BA4()
{
  if (qword_27CA70FB8 != -1)
  {
    swift_once();
  }

  v0 = MEMORY[0x277D85048];
  v1 = MEMORY[0x277D225F8];
  v4 = MEMORY[0x277D85048];
  v5 = MEMORY[0x277D225F8];
  *&v3 = qword_27CA71540;
  if (qword_27CA70FC0 != -1)
  {
    swift_once();
  }

  qword_27CA716C8 = v0;
  unk_27CA716D0 = v1;
  qword_27CA716B0 = qword_27CA71548;
  return sub_21571DF08(&v3, &unk_27CA71688);
}

uint64_t sub_215799C68()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallLockupLayout.Metrics(0);
  __swift_allocate_value_buffer(v4, qword_280D2B590);
  v57 = v4;
  v56 = __swift_project_value_buffer(v4, qword_280D2B590);
  v5 = @"small";
  IconSize = ASCLockupViewSizeGetIconSize(v5, 1);
  v8 = v7;

  v106 = MEMORY[0x277D839F8];
  v107 = MEMORY[0x277D22A30];
  *&v105 = 0x4024000000000000;
  v9 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v63 = *MEMORY[0x277D22620];
  v10 = v1[13];
  v64 = v1 + 13;
  v65 = v10;
  v10(v3);
  v103 = sub_2157A8E90();
  v104 = MEMORY[0x277D22798];
  v11 = v103;
  v58 = v103;
  __swift_allocate_boxed_opaque_existential_1(&v102);
  v100 = v0;
  v101 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
  v60 = v1[2];
  v60(boxed_opaque_existential_1, v3, v0);
  v55 = v9;
  sub_2157A8EA0();
  v13 = v1[1];
  v13(v3, v0);
  v62 = v1 + 1;
  v14 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v15 = v63;
  v65(v3, v63, v0);
  v100 = v11;
  v101 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v99);
  v97 = v0;
  v98 = MEMORY[0x277D22628];
  v16 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v17 = v60;
  v60(v16, v3, v0);
  v18 = v14;
  sub_2157A8EA0();
  v61 = v13;
  v13(v3, v0);
  *v3 = v18;
  v19 = v15;
  v20 = v65;
  v65(v3, v19, v0);
  v21 = v58;
  v97 = v58;
  v98 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v96);
  v94 = v0;
  v95 = MEMORY[0x277D22628];
  v22 = __swift_allocate_boxed_opaque_existential_1(&v93);
  v17(v22, v3, v0);
  v59 = v1 + 2;
  v23 = v18;
  sub_2157A8EA0();
  v13(v3, v0);
  *v3 = v23;
  v24 = v63;
  v20(v3, v63, v0);
  v94 = v21;
  v95 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v93);
  v91 = v0;
  v92 = MEMORY[0x277D22628];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v90);
  v17(v25, v3, v0);
  v26 = v23;
  sub_2157A8EA0();
  v27 = v61;
  v61(v3, v0);
  *v3 = v26;
  v20(v3, v24, v0);
  v28 = v58;
  v91 = v58;
  v92 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v90);
  v88 = v0;
  v89 = MEMORY[0x277D22628];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v87);
  v30 = v60;
  v60(v29, v3, v0);
  v31 = v26;
  sub_2157A8EA0();
  v27(v3, v0);
  v32 = v55;
  *v3 = v55;
  v33 = v65;
  v65(v3, v63, v0);
  v34 = v28;
  v88 = v28;
  v89 = MEMORY[0x277D22798];
  v54[1] = __swift_allocate_boxed_opaque_existential_1(&v87);
  v85 = v0;
  v86 = MEMORY[0x277D22628];
  v35 = __swift_allocate_boxed_opaque_existential_1(&v84);
  v30(v35, v3, v0);
  v36 = v32;
  sub_2157A8EA0();
  v61(v3, v0);
  *v3 = v36;
  v37 = v63;
  v33(v3, v63, v0);
  v85 = v28;
  v86 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v84);
  v82 = v0;
  v83 = MEMORY[0x277D22628];
  v38 = __swift_allocate_boxed_opaque_existential_1(&v81);
  v39 = v60;
  v60(v38, v3, v0);
  v40 = v36;
  sub_2157A8EA0();
  v41 = v61;
  v61(v3, v0);
  *v3 = v40;
  v65(v3, v37, v0);
  v42 = MEMORY[0x277D839F8];
  v82 = v34;
  v83 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v81);
  v79 = v0;
  v80 = MEMORY[0x277D22628];
  v43 = __swift_allocate_boxed_opaque_existential_1(&v78);
  v39(v43, v3, v0);
  v44 = v40;
  sub_2157A8EA0();
  v45 = v0;
  v46 = MEMORY[0x277D22A30];
  v41(v3, v45);
  v79 = v42;
  v80 = v46;
  *&v78 = 0x4024000000000000;
  if (qword_280D2B648 != -1)
  {
    swift_once();
  }

  v76 = MEMORY[0x277D85048];
  v77 = MEMORY[0x277D225F8];
  *&v75 = qword_280D2B650;
  v73 = v42;
  v74 = v46;
  *&v72 = 0;
  v47 = sub_2157A8CF0();
  v48 = MEMORY[0x277D226F0];
  v70 = v47;
  v71 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v69);
  sub_2157A8CE0();
  v67 = v47;
  v68 = v48;
  __swift_allocate_boxed_opaque_existential_1(&v66);
  sub_2157A8CE0();
  v49 = *(v57 + 76);
  v50 = *MEMORY[0x277D228C8];
  v51 = sub_2157A9160();
  v52 = v56;
  (*(*(v51 - 8) + 104))(v56 + v49, v50, v51);
  *v52 = IconSize;
  *(v52 + 1) = v8;
  sub_21571DF08(&v105, (v52 + 2));
  sub_21571DF08(&v102, (v52 + 7));
  sub_21571DF08(&v99, (v52 + 12));
  sub_21571DF08(&v96, (v52 + 17));
  sub_21571DF08(&v93, (v52 + 22));
  sub_21571DF08(&v90, (v52 + 27));
  sub_21571DF08(&v69, (v52 + 32));
  sub_21571DF08(&v87, (v52 + 37));
  sub_21571DF08(&v84, (v52 + 42));
  sub_21571DF08(&v66, (v52 + 47));
  sub_21571DF08(&v81, (v52 + 52));
  sub_21571DF08(&v78, (v52 + 57));
  sub_21571DF08(&v75, (v52 + 62));
  return sub_21571DF08(&v72, (v52 + 67));
}

uint64_t sub_21579A480()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = @"medium";
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v42 = *MEMORY[0x277D22620];
  v44 = v1[13];
  v44(v3);
  v9 = v1 + 13;
  v68 = sub_2157A8E90();
  v69 = MEMORY[0x277D22798];
  v10 = v68;
  v40 = v68;
  __swift_allocate_boxed_opaque_existential_1(&v67);
  v65 = v0;
  v66 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
  v41 = v1[2];
  v41(boxed_opaque_existential_1, v3, v0);
  v43 = v1 + 2;
  v39 = v8;
  sub_2157A8EA0();
  v46 = v1[1];
  v47 = v1 + 1;
  v46(v3, v0);
  v12 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v13 = v42;
  v14 = v44;
  (v44)(v3, v42, v0);
  v45 = v9;
  v65 = v10;
  v66 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v62 = v0;
  v63 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(&v61);
  v16 = v41;
  v41(v15, v3, v0);
  v17 = v12;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v17;
  v14(v3, v13, v0);
  v18 = v40;
  v62 = v40;
  v63 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v61);
  v59 = v0;
  v60 = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(&v58);
  v16(v19, v3, v0);
  v20 = v16;
  v21 = v17;
  sub_2157A8EA0();
  v22 = v46;
  v46(v3, v0);
  v23 = v39;
  *v3 = v39;
  v24 = v42;
  (v44)(v3, v42, v0);
  v59 = v18;
  v60 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v58);
  v56 = v0;
  v57 = MEMORY[0x277D22628];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v55);
  v20(v25, v3, v0);
  v26 = v23;
  sub_2157A8EA0();
  v22(v3, v0);
  *v3 = v26;
  v27 = v44;
  (v44)(v3, v24, v0);
  v28 = v40;
  v56 = v40;
  v57 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v55);
  v53 = v0;
  v54 = MEMORY[0x277D22628];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v52);
  v30 = v41;
  v41(v29, v3, v0);
  v31 = v26;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v31;
  v32 = v42;
  v27(v3, v42, v0);
  v53 = v28;
  v54 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v52);
  v50 = v0;
  v51 = MEMORY[0x277D22628];
  v33 = __swift_allocate_boxed_opaque_existential_1(&v49);
  v30(v33, v3, v0);
  v34 = v31;
  sub_2157A8EA0();
  v35 = v46;
  v46(v3, v0);
  *v3 = v34;
  v27(v3, v32, v0);
  v50 = v28;
  v51 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v49);
  v48[3] = v0;
  v48[4] = MEMORY[0x277D22628];
  v36 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41(v36, v3, v0);
  v37 = v34;
  sub_2157A8EA0();
  v35(v3, v0);
  if (qword_280D2B380 != -1)
  {
    swift_once();
  }

  qword_27CA71820 = MEMORY[0x277D85048];
  unk_27CA71828 = MEMORY[0x277D225F8];
  qword_27CA71808 = qword_280D2B388;
  qword_27CA716D8 = *&IconSize;
  unk_27CA716E0 = v7;
  qword_27CA716E8 = 0x402C000000000000;
  sub_21571DF08(&v67, &unk_27CA716F0);
  sub_21571DF08(&v64, &unk_27CA71718);
  sub_21571DF08(&v61, &unk_27CA71740);
  sub_21571DF08(&v58, &unk_27CA71768);
  sub_21571DF08(&v55, &unk_27CA71790);
  sub_21571DF08(&v52, &unk_27CA717B8);
  return sub_21571DF08(&v49, &unk_27CA717E0);
}

uint64_t sub_21579AABC()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = @"medium";
  IconSize = ASCLockupViewSizeGetIconSize(v4, 2);
  v7 = v6;

  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v42 = *MEMORY[0x277D22620];
  v44 = v1[13];
  v44(v3);
  v9 = v1 + 13;
  v68 = sub_2157A8E90();
  v69 = MEMORY[0x277D22798];
  v10 = v68;
  v40 = v68;
  __swift_allocate_boxed_opaque_existential_1(&v67);
  v65 = v0;
  v66 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
  v41 = v1[2];
  v41(boxed_opaque_existential_1, v3, v0);
  v43 = v1 + 2;
  v39 = v8;
  sub_2157A8EA0();
  v46 = v1[1];
  v47 = v1 + 1;
  v46(v3, v0);
  v12 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  v13 = v42;
  v14 = v44;
  (v44)(v3, v42, v0);
  v45 = v9;
  v65 = v10;
  v66 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  v62 = v0;
  v63 = MEMORY[0x277D22628];
  v15 = __swift_allocate_boxed_opaque_existential_1(&v61);
  v16 = v41;
  v41(v15, v3, v0);
  v17 = v12;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v17;
  v14(v3, v13, v0);
  v18 = v40;
  v62 = v40;
  v63 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v61);
  v59 = v0;
  v60 = MEMORY[0x277D22628];
  v19 = __swift_allocate_boxed_opaque_existential_1(&v58);
  v16(v19, v3, v0);
  v20 = v16;
  v21 = v17;
  sub_2157A8EA0();
  v22 = v46;
  v46(v3, v0);
  v23 = v39;
  *v3 = v39;
  v24 = v42;
  (v44)(v3, v42, v0);
  v59 = v18;
  v60 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v58);
  v56 = v0;
  v57 = MEMORY[0x277D22628];
  v25 = __swift_allocate_boxed_opaque_existential_1(&v55);
  v20(v25, v3, v0);
  v26 = v23;
  sub_2157A8EA0();
  v22(v3, v0);
  *v3 = v26;
  v27 = v44;
  (v44)(v3, v24, v0);
  v28 = v40;
  v56 = v40;
  v57 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v55);
  v53 = v0;
  v54 = MEMORY[0x277D22628];
  v29 = __swift_allocate_boxed_opaque_existential_1(&v52);
  v30 = v41;
  v41(v29, v3, v0);
  v31 = v26;
  sub_2157A8EA0();
  v46(v3, v0);
  *v3 = v31;
  v32 = v42;
  v27(v3, v42, v0);
  v53 = v28;
  v54 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v52);
  v50 = v0;
  v51 = MEMORY[0x277D22628];
  v33 = __swift_allocate_boxed_opaque_existential_1(&v49);
  v30(v33, v3, v0);
  v34 = v31;
  sub_2157A8EA0();
  v35 = v46;
  v46(v3, v0);
  *v3 = v34;
  v27(v3, v32, v0);
  v50 = v28;
  v51 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v49);
  v48[3] = v0;
  v48[4] = MEMORY[0x277D22628];
  v36 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41(v36, v3, v0);
  v37 = v34;
  sub_2157A8EA0();
  v35(v3, v0);
  if (qword_280D2B380 != -1)
  {
    swift_once();
  }

  qword_27CA71978 = MEMORY[0x277D85048];
  unk_27CA71980 = MEMORY[0x277D225F8];
  qword_27CA71960 = qword_280D2B388;
  qword_27CA71830 = *&IconSize;
  *algn_27CA71838 = v7;
  qword_27CA71840 = 0x402E000000000000;
  sub_21571DF08(&v67, &unk_27CA71848);
  sub_21571DF08(&v64, &unk_27CA71870);
  sub_21571DF08(&v61, &unk_27CA71898);
  sub_21571DF08(&v58, &unk_27CA718C0);
  sub_21571DF08(&v55, &unk_27CA718E8);
  sub_21571DF08(&v52, &unk_27CA71910);
  return sub_21571DF08(&v49, &unk_27CA71938);
}

uint64_t sub_21579B0F8()
{
  v0 = sub_2157A89D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2157A93B0();
  IconSize = ASCLockupViewSizeGetIconSize(v4, 1);
  v7 = v6;

  v8 = *MEMORY[0x277D76968];
  *v3 = *MEMORY[0x277D76968];
  v9 = *MEMORY[0x277D22620];
  v40 = v1[13];
  v40(v3, v9, v0);
  v66 = sub_2157A8E90();
  v67 = MEMORY[0x277D22798];
  v10 = v66;
  __swift_allocate_boxed_opaque_existential_1(&v65);
  v63 = v0;
  v64 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v45 = v1[2];
  v42 = v1 + 2;
  v45(boxed_opaque_existential_1, v3, v0);
  v38[0] = v8;
  sub_2157A8EA0();
  v39 = v1[1];
  v39(v3, v0);
  v12 = *MEMORY[0x277D76A20];
  *v3 = *MEMORY[0x277D76A20];
  v43 = v9;
  v13 = v40;
  v38[1] = v1 + 13;
  v40(v3, v9, v0);
  v63 = v10;
  v44 = v10;
  v64 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v62);
  v60 = v0;
  v61 = MEMORY[0x277D22628];
  v14 = __swift_allocate_boxed_opaque_existential_1(&v59);
  v45(v14, v3, v0);
  v15 = v12;
  sub_2157A8EA0();
  v16 = v39;
  v39(v3, v0);
  *v3 = v15;
  v13(v3, v9, v0);
  v17 = v13;
  v60 = v10;
  v61 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v59);
  v57 = v0;
  v58 = MEMORY[0x277D22628];
  v18 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v19 = v45;
  v45(v18, v3, v0);
  v20 = v15;
  sub_2157A8EA0();
  v16(v3, v0);
  v41 = v1 + 1;
  v21 = *MEMORY[0x277D769D0];
  *v3 = *MEMORY[0x277D769D0];
  v22 = v43;
  v17(v3, v43, v0);
  v57 = v44;
  v58 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v56);
  v54 = v0;
  v55 = MEMORY[0x277D22628];
  v23 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v19(v23, v3, v0);
  v24 = v21;
  sub_2157A8EA0();
  v25 = v39;
  v39(v3, v0);
  *v3 = v24;
  v26 = v40;
  v40(v3, v22, v0);
  v27 = v44;
  v54 = v44;
  v55 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v53);
  v51 = v0;
  v52 = MEMORY[0x277D22628];
  v28 = __swift_allocate_boxed_opaque_existential_1(&v50);
  v45(v28, v3, v0);
  v29 = v24;
  sub_2157A8EA0();
  v25(v3, v0);
  v30 = v25;
  v31 = v38[0];
  *v3 = v38[0];
  v26(v3, v43, v0);
  v51 = v27;
  v52 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v50);
  v48 = v0;
  v49 = MEMORY[0x277D22628];
  v32 = __swift_allocate_boxed_opaque_existential_1(&v47);
  v33 = v45;
  v45(v32, v3, v0);
  v34 = v31;
  sub_2157A8EA0();
  v30(v3, v0);
  *v3 = v34;
  v26(v3, v43, v0);
  v48 = v44;
  v49 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v47);
  v46[3] = v0;
  v46[4] = MEMORY[0x277D22628];
  v35 = __swift_allocate_boxed_opaque_existential_1(v46);
  v33(v35, v3, v0);
  v36 = v34;
  sub_2157A8EA0();
  v30(v3, v0);
  qword_27CA71988 = *&IconSize;
  unk_27CA71990 = v7;
  sub_21571DF08(&v65, &unk_27CA71998);
  sub_21571DF08(&v62, &unk_27CA719C0);
  sub_21571DF08(&v59, &unk_27CA719E8);
  sub_21571DF08(&v56, &unk_27CA71A20);
  sub_21571DF08(&v53, &unk_27CA71A48);
  sub_21571DF08(&v50, &unk_27CA71A70);
  result = sub_21571DF08(&v47, &unk_27CA71A98);
  qword_27CA71A10 = 0;
  byte_27CA71A18 = 1;
  return result;
}

double static ASCLayoutProxy.smallLockupEstimatedSize(fitting:compatibleWith:)(void *a1, double a2, double a3)
{
  if (qword_280D2B588 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SmallLockupLayout.Metrics(0);
  v7 = __swift_project_value_buffer(v6, qword_280D2B590);
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138, &qword_2157B3BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_2157A91E0();
  v11 = sub_21579BB5C(v7, v10, a2, a3);

  return v11;
}

double sub_21579BB5C(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_2157A8E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2157A8E80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6);
  sub_2157A8E60();
  v14 = [a2 traitCollection];
  LOBYTE(v9) = sub_2157A94B0();

  if (v9)
  {
    v15 = *(a1 + 8);
    v21[3] = MEMORY[0x277D85048];
    v21[4] = MEMORY[0x277D225F8];
    v21[0] = v15;
    v16 = sub_2157A91A0();
    v17 = MEMORY[0x277D228E0];
    v23 = v16;
    v24 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 16, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 56, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 216, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 296, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 336, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 456, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 496, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 416, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 536, v21);
  }

  else
  {
    sub_21578326C(a1 + 96, v21);
    v16 = sub_2157A91A0();
    v17 = MEMORY[0x277D228E0];
    v23 = v16;
    v24 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 296, v21);
    v23 = v16;
    v24 = v17;
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_2157A91B0();
    sub_2157A8E70();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_21578326C(a1 + 416, v21);
  }

  v23 = v16;
  v24 = v17;
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_2157A91B0();
  sub_2157A8E70();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_2157A8E40();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  return v19;
}

double _s18AppStoreComponents14ASCLayoutProxyC23miniLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(uint64_t a1, double a2, double a3)
{
  v29 = a1;
  v30 = sub_2157A92C0();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2157A8D70();
  MEMORY[0x28223BE20](v6 - 8);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2157A9110();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2157A8E20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D2B390 != -1)
  {
    swift_once();
  }

  sub_21578CA80(&qword_280D2B398, v42);
  if (qword_27CA70FE8 != -1)
  {
    swift_once();
  }

  v16 = qword_27CA70F80;
  v17 = qword_27CA71680;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27CA73840);
  (*(v13 + 16))(v15, v18, v12);
  v41[3] = sub_2157A8EB0();
  v41[4] = MEMORY[0x277D227A8];
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_2157A8EC0();
  if (qword_27CA70FC8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_27CA71550);
  v20 = *(v9 + 16);
  v20(v11, v19, v8);
  sub_2157A8ED0();
  v21 = sub_2157A8EE0();
  v22 = MEMORY[0x277D227B8];
  v40[3] = v21;
  v40[4] = MEMORY[0x277D227B8];
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_2157A8F00();
  if (qword_27CA70FD0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_27CA71568);
  v20(v11, v23, v8);
  sub_2157A8ED0();
  v38 = v21;
  v39 = v22;
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_2157A8F00();
  if (qword_27CA70FD8 != -1)
  {
    swift_once();
  }

  v35 = &type metadata for OfferButtonPlaceholder;
  v36 = sub_21579ED20();
  *&v34 = swift_allocObject();
  sub_21579ED74(&unk_27CA71580, v34 + 16);
  sub_21578CA80(v42, v33);
  sub_21578326C(v41, &v33[176]);
  sub_21578326C(v40, &v33[216]);
  sub_21579EA48(v37, &v31);
  if (v32)
  {
    sub_21579EAB8(v42);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_21571DF08(&v31, v43);
  }

  else
  {
    sub_2157A8D60();
    sub_2157A8ED0();
    *(&v43[1] + 1) = v21;
    *&v43[2] = v22;
    __swift_allocate_boxed_opaque_existential_1(v43);
    sub_2157A8EF0();
    sub_21579EAB8(v42);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (v32)
    {
      sub_21579EB0C(&v31);
    }
  }

  sub_21571DF08(v43, &v33[256]);
  v24 = v38 == 0;
  sub_21579EB0C(v37);
  v33[336] = v24;
  sub_21571DF08(&v34, &v33[296]);
  memcpy(v43, v33, 0x151uLL);
  sub_21578B4C4(v5);
  v25 = v30;
  sub_2157A9370();
  (*(v28 + 8))(v5, v25);
  sub_21579EDD0(v43);
  return a2;
}

double _s18AppStoreComponents14ASCLayoutProxyC35smallOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(void *a1, double a2)
{
  v4 = sub_2157A95E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D2B328 != -1)
  {
    swift_once();
  }

  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138, &qword_2157B3BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_2157A91E0();
  v11 = [v10 traitCollection];
  v12 = sub_2157A94B0();

  if (v12)
  {
    v13 = qword_280D2B358;
  }

  else
  {
    v13 = &unk_280D2B330;
  }

  v14 = &qword_280D2B370;
  if ((v12 & 1) == 0)
  {
    v14 = &unk_280D2B348;
  }

  v15 = *v14;
  v16 = &unk_280D2B350;
  if (v12)
  {
    v16 = &qword_280D2B378;
  }

  v17 = *v16;
  __swift_project_boxed_opaque_existential_1(v13, v15);
  sub_21579F1CC(v15, v17);
  sub_2157A8BB0();

  (*(v5 + 8))(v7, v4);
  return a2;
}

double _s18AppStoreComponents14ASCLayoutProxyC36mediumOfferButtonLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(void *a1, double a2)
{
  v4 = sub_2157A95E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CA70FF0 != -1)
  {
    swift_once();
  }

  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138, &qword_2157B3BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_2157A91E0();
  v11 = [v10 traitCollection];
  v12 = sub_2157A94B0();

  if (v12)
  {
    v13 = &qword_27CA716B0;
  }

  else
  {
    v13 = &unk_27CA71688;
  }

  v14 = &qword_27CA716C8;
  if ((v12 & 1) == 0)
  {
    v14 = &unk_27CA716A0;
  }

  v15 = *v14;
  v16 = &unk_27CA716A8;
  if (v12)
  {
    v16 = &unk_27CA716D0;
  }

  v17 = *v16;
  __swift_project_boxed_opaque_existential_1(v13, v15);
  sub_21579F1CC(v15, v17);
  sub_2157A8BB0();

  (*(v5 + 8))(v7, v4);
  return a2;
}

double sub_21579CAC4(void *a1, void *a2, double a3)
{
  v6 = sub_2157A95E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 traitCollection];
  v11 = a1[11];
  v12 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v11);
  sub_21579F1CC(v11, v12);
  sub_2157A8BB0();
  v13 = *(v7 + 8);
  v13(v9, v6);
  if (sub_2157A9490())
  {
    v14 = a1[21];
    v15 = a1[22];
    __swift_project_boxed_opaque_existential_1(a1 + 18, v14);
    sub_21579F1CC(v14, v15);
    sub_2157A8BB0();
    v13(v9, v6);
  }

  else
  {
    if (sub_2157A94B0())
    {
      v16 = a1[21];
      v17 = a1[22];
      __swift_project_boxed_opaque_existential_1(a1 + 18, v16);
    }

    else
    {
      v16 = a1[26];
      v17 = a1[27];
      __swift_project_boxed_opaque_existential_1(a1 + 23, v16);
    }

    sub_21579F1CC(v16, v17);
    sub_2157A8BB0();
    v13(v9, v6);
    v18 = a1[31];
    v19 = a1[32];
    __swift_project_boxed_opaque_existential_1(a1 + 28, v18);
    sub_21579F1CC(v18, v19);
    sub_2157A8BB0();
    v13(v9, v6);
  }

  v20 = a1[36];
  v21 = a1[37];
  __swift_project_boxed_opaque_existential_1(a1 + 33, v20);
  sub_21579F1CC(v20, v21);
  sub_2157A8BB0();
  v13(v9, v6);
  v22 = a1[41];
  v23 = a1[42];
  __swift_project_boxed_opaque_existential_1(a1 + 38, v22);
  sub_21579F1CC(v22, v23);
  sub_2157A8BB0();
  v13(v9, v6);
  sub_2157A94B0();

  return a3;
}

double _s18AppStoreComponents14ASCLayoutProxyC25mediumLockupEstimatedSize7fitting14compatibleWithSo6CGSizeVAH_So17UITraitCollectionCtFZ_0(void *a1, double a2)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    if (qword_27CA70FF8 != -1)
    {
      swift_once();
    }

    v4 = &qword_27CA716D8;
  }

  else
  {
    if (qword_27CA71000 != -1)
    {
      swift_once();
    }

    v4 = &qword_27CA71830;
  }

  sub_21578B48C(v4, v10);
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138, &qword_2157B3BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2157B3B70;
  *(v5 + 32) = a1;
  v6 = a1;
  v7 = sub_2157A91E0();
  v8 = sub_21579CAC4(v10, v7, a2);

  sub_21579E6DC(v10);
  return v8;
}

id _s18AppStoreComponents14ASCLayoutProxyC12lockupLayout6ofSize15traitCollection11artworkView11headingText05titleO008subtitleO005offerO00R6Button5badgeACSo09ASCLockupmI0a_So07UITraitK0CSo6UIViewCSo7UILabelCSgA2uv2SSgtFZ_0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v175 = a3;
  v176 = a8;
  v171 = a7;
  v172 = a6;
  v173 = a4;
  v174 = a5;
  v169 = a2;
  v9 = type metadata accessor for SmallLockupLayout.Metrics(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmallLockupLayout(0);
  MEMORY[0x28223BE20](v12);
  v170 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2157A8D70();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2157A93B0();
  v16 = sub_2157A93E0();
  v18 = v17;
  if (v16 == sub_2157A93E0() && v18 == v19)
  {

    goto LABEL_5;
  }

  v20 = sub_2157A95F0();

  if (v20)
  {
LABEL_5:
    v21 = v175;
    if (v173)
    {
      v22 = v173;
      if (([v22 isHidden] & 1) == 0 && objc_msgSend(v22, sel_hasContent))
      {
        v23 = qword_27CA70FE0;
        v24 = v22;
        v25 = v174;
        if (v23 != -1)
        {
          swift_once();
        }

        sub_21578CA80(&qword_27CA715D0, v218);
LABEL_15:
        sub_21578CA80(v218, v193);
        v185[6] = v21;
        sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
        sub_2157A8AE0();
        v185[5] = v24;
        sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
        sub_2157A8AE0();

        *v194 = v25;
        sub_2157A8AE0();
        v184 = v176;
        sub_2157A8AE0();
        v225 = &type metadata for MiniLockupLayout;
        v226 = sub_21578C9B8();
        v28 = swift_allocObject();
        *&v224 = v28;
        sub_21578CA80(v193, v194);
        sub_21578326C(&v221, &v194[176]);
        sub_21578326C(&v190, &v194[216]);
        sub_21579EA48(v185, &v178);
        if (v179)
        {
          __swift_destroy_boxed_opaque_existential_1(&v190);
          __swift_destroy_boxed_opaque_existential_1(&v221);
          sub_21579EAB8(v193);
          sub_21571DF08(&v178, &v180);
        }

        else
        {
          sub_2157A8D60();
          sub_2157A8ED0();
          v181 = sub_2157A8EE0();
          v182 = MEMORY[0x277D227B8];
          __swift_allocate_boxed_opaque_existential_1(&v180);
          sub_2157A8EF0();
          __swift_destroy_boxed_opaque_existential_1(&v190);
          __swift_destroy_boxed_opaque_existential_1(&v221);
          sub_21579EAB8(v193);
          if (v179)
          {
            sub_21579EB0C(&v178);
          }
        }

        sub_21571DF08(&v180, &v194[256]);
        v29 = v185[3] == 0;
        sub_21579EB0C(v185);
        v194[336] = v29;
        sub_21571DF08(&v183, &v194[296]);
        memcpy((v28 + 16), v194, 0x151uLL);
        sub_21571DF08(&v224, v193);
        *&v194[24] = &type metadata for PlaceableLayoutProxy;
        *&v194[32] = sub_21579EB74();
        *&v194[40] = sub_21579EBC8();
        *v194 = swift_allocObject();
        sub_21579EC1C(v193, *v194 + 16);
        type metadata accessor for ASCLayoutProxy();
        v31 = v30;
        v32 = objc_allocWithZone(v30);
        sub_21578B2C8(v194, v32 + OBJC_IVAR_____ASCLayoutProxy_base);
        v177.receiver = v32;
        v177.super_class = v31;
        v33 = objc_msgSendSuper2(&v177, sel_init);

        sub_21579EC78(v193);
        sub_21579EAB8(v218);
        __swift_destroy_boxed_opaque_existential_1(v194);
        return v33;
      }
    }

    v26 = qword_280D2B390;
    v27 = v174;
    v25 = v172;
    if (v26 != -1)
    {
      swift_once();
    }

    sub_21578CA80(&qword_280D2B398, v218);
    v24 = v27;
    goto LABEL_15;
  }

  v34 = sub_2157A93B0();
  v35 = sub_2157A93E0();
  v37 = v36;
  if (v35 == sub_2157A93E0() && v37 == v38)
  {

LABEL_24:
    if (qword_280D2B328 != -1)
    {
      swift_once();
    }

    sub_21578E75C(&unk_280D2B330, v194);
    v40 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    *&v194[112] = MEMORY[0x277D22A58];
    *&v194[104] = v40;
    v41 = v176;
    *&v194[80] = v176;
    *(&v218[1] + 1) = &type metadata for OfferButtonLockupLayout;
    *&v218[2] = sub_21579E8F0();
    *(&v218[2] + 1) = sub_21579E944();
    *&v218[0] = swift_allocObject();
    sub_21579E998(v194, *&v218[0] + 16);
    type metadata accessor for ASCLayoutProxy();
    v43 = v42;
    v44 = objc_allocWithZone(v42);
    sub_21578B2C8(v218, v44 + OBJC_IVAR_____ASCLayoutProxy_base);
    v186.receiver = v44;
    v186.super_class = v43;
    v45 = v41;
    v46 = objc_msgSendSuper2(&v186, sel_init);
LABEL_27:
    v33 = v46;
    __swift_destroy_boxed_opaque_existential_1(v218);
    sub_21579E9F4(v194);
    return v33;
  }

  v39 = sub_2157A95F0();

  if (v39)
  {
    goto LABEL_24;
  }

  v48 = sub_2157A93B0();
  v49 = sub_2157A93E0();
  v51 = v50;
  if (v49 == sub_2157A93E0() && v51 == v52)
  {

LABEL_33:
    if (qword_27CA70FF0 != -1)
    {
      swift_once();
    }

    sub_21578E75C(&unk_27CA71688, v194);
    v54 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    *&v194[112] = MEMORY[0x277D22A58];
    *&v194[104] = v54;
    v55 = v176;
    *&v194[80] = v176;
    *(&v218[1] + 1) = &type metadata for OfferButtonLockupLayout;
    *&v218[2] = sub_21579E8F0();
    *(&v218[2] + 1) = sub_21579E944();
    *&v218[0] = swift_allocObject();
    sub_21579E998(v194, *&v218[0] + 16);
    type metadata accessor for ASCLayoutProxy();
    v57 = v56;
    v58 = objc_allocWithZone(v56);
    sub_21578B2C8(v218, v58 + OBJC_IVAR_____ASCLayoutProxy_base);
    v187.receiver = v58;
    v187.super_class = v57;
    v59 = v55;
    v46 = objc_msgSendSuper2(&v187, sel_init);
    goto LABEL_27;
  }

  v53 = sub_2157A95F0();

  if (v53)
  {
    goto LABEL_33;
  }

  v60 = sub_2157A93E0();
  v62 = v61;
  if (v60 == sub_2157A93E0() && v62 == v63)
  {

LABEL_40:
    if (qword_280D2B588 != -1)
    {
      swift_once();
    }

    v65 = __swift_project_value_buffer(v9, qword_280D2B590);
    sub_21579E82C(v65, v11, type metadata accessor for SmallLockupLayout.Metrics);
    v66 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    *&v194[32] = MEMORY[0x277D22A58];
    *&v194[24] = v66;
    *v194 = v175;
    if (v173)
    {
      v67 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
      v68 = MEMORY[0x277D22A68];
    }

    else
    {
      v68 = 0;
      v67 = 0;
    }

    v69 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
    *&v218[2] = MEMORY[0x277D22A68];
    *(&v218[1] + 1) = v69;
    *&v218[0] = v174;
    *&v193[24] = v69;
    *&v193[32] = MEMORY[0x277D22A68];
    v70 = v171;
    *v193 = v172;
    if (v171)
    {
      v71 = MEMORY[0x277D22A68];
    }

    else
    {
      v71 = 0;
    }

    if (v171)
    {
      v72 = v69;
    }

    else
    {
      v72 = 0;
    }

    v73 = v170;
    v74 = &v170[v12[10]];
    *(v74 + 4) = 0;
    *v74 = 0u;
    *(v74 + 1) = 0u;
    v75 = (v73 + v12[11]);
    v75[3] = v66;
    v75[4] = MEMORY[0x277D22A58];
    *v75 = v176;
    sub_21579E784(v11, v73);
    sub_21571DF08(v194, v73 + v12[5]);
    v76 = (v73 + v12[6]);
    v77 = v173;
    *v76 = v173;
    v76[1] = 0;
    v76[2] = 0;
    v76[3] = v67;
    v76[4] = v68;
    sub_21571DF08(v218, v73 + v12[7]);
    sub_21571DF08(v193, v73 + v12[8]);
    v78 = (v73 + v12[9]);
    *v78 = v70;
    v78[1] = 0;
    v78[2] = 0;
    v78[3] = v72;
    v78[4] = v71;
    *&v194[24] = v12;
    *&v194[32] = sub_21579E7E8(&qword_280D2B4E8, &unk_2157B3AC0);
    *&v194[40] = sub_21579E7E8(&qword_280D2B4E0, &unk_2157B3A98);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v194);
    sub_21579E82C(v73, boxed_opaque_existential_1, type metadata accessor for SmallLockupLayout);
    type metadata accessor for ASCLayoutProxy();
    v81 = v80;
    v82 = objc_allocWithZone(v80);
    sub_21578B2C8(v194, v82 + OBJC_IVAR_____ASCLayoutProxy_base);
    v188.receiver = v82;
    v188.super_class = v81;
    v83 = v77;
    v84 = v174;
    v85 = v172;
    v86 = v176;
    v87 = v175;
    v88 = v70;
    v33 = objc_msgSendSuper2(&v188, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v194);
    sub_21579E894(v73);
    return v33;
  }

  v64 = sub_2157A95F0();

  if (v64)
  {
    goto LABEL_40;
  }

  v89 = sub_2157A93E0();
  v91 = v90;
  if (v89 == sub_2157A93E0() && v91 == v92)
  {

LABEL_56:
    if ([v169 horizontalSizeClass] == 1)
    {
      v94 = v175;
      if (qword_27CA70FF8 != -1)
      {
        swift_once();
      }

      v95 = &qword_27CA716D8;
    }

    else
    {
      v94 = v175;
      if (qword_27CA71000 != -1)
      {
        swift_once();
      }

      v95 = &qword_27CA71830;
    }

    sub_21578B48C(v95, v218);
    sub_21578B48C(v218, v193);
    v96 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v97 = MEMORY[0x277D22A58];
    v225 = v96;
    v226 = MEMORY[0x277D22A58];
    *&v224 = v94;
    if (v173)
    {
      v98 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
      v99 = MEMORY[0x277D22A68];
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v100 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
    v222 = v100;
    v223 = MEMORY[0x277D22A68];
    *&v221 = v174;
    v191 = v100;
    v192 = MEMORY[0x277D22A68];
    v102 = v171;
    v101 = v172;
    *&v190 = v172;
    if (v171)
    {
      v103 = v100;
    }

    else
    {
      v103 = 0;
    }

    if (v171)
    {
      v104 = MEMORY[0x277D22A68];
    }

    else
    {
      v104 = 0;
    }

    v216 = v96;
    v217 = v97;
    v105 = v176;
    v215 = v176;
    memcpy(v194, v193, sizeof(v194));
    sub_21571DF08(&v224, &v195);
    v201 = 0u;
    v106 = v173;
    v200 = v173;
    v202 = v98;
    v203 = v99;
    sub_21571DF08(&v221, &v204);
    sub_21571DF08(&v190, &v206);
    v211 = v102;
    v212 = 0u;
    v213 = v103;
    v214 = v104;
    *&v193[24] = &type metadata for MediumLockupLayout;
    *&v193[32] = sub_21579E5D8();
    *&v193[40] = sub_21579E62C();
    *v193 = swift_allocObject();
    sub_21579E680(v194, *v193 + 16);
    type metadata accessor for ASCLayoutProxy();
    v108 = v107;
    v109 = objc_allocWithZone(v107);
    sub_21578B2C8(v193, v109 + OBJC_IVAR_____ASCLayoutProxy_base);
    v189.receiver = v109;
    v189.super_class = v108;
    v110 = v106;
    v111 = v174;
    v112 = v101;
    v113 = v105;
    v114 = v175;
    v115 = v102;
    v33 = objc_msgSendSuper2(&v189, sel_init);
    sub_21579E6DC(v218);
    __swift_destroy_boxed_opaque_existential_1(v193);
    sub_21579E730(v194);
    return v33;
  }

  v93 = sub_2157A95F0();

  if (v93)
  {
    goto LABEL_56;
  }

  v116 = sub_2157A93B0();
  v117 = sub_2157A93E0();
  v119 = v118;
  if (v117 == sub_2157A93E0() && v119 == v120)
  {

LABEL_77:
    if (qword_27CA71008 != -1)
    {
      swift_once();
    }

    sub_215785534(&qword_27CA71988, v218);
    v122 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v123 = MEMORY[0x277D22A58];
    *&v193[24] = v122;
    *&v193[32] = MEMORY[0x277D22A58];
    *v193 = v175;
    if (v173)
    {
      v124 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
      v125 = MEMORY[0x277D22A58];
    }

    else
    {
      v124 = 0;
      v125 = 0;
    }

    v126 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
    v225 = v126;
    v226 = MEMORY[0x277D22A68];
    v223 = MEMORY[0x277D22A68];
    *&v224 = v174;
    v222 = v126;
    v128 = v171;
    v127 = v172;
    *&v221 = v172;
    if (v171)
    {
      v129 = v126;
    }

    else
    {
      v129 = 0;
    }

    if (v171)
    {
      v130 = MEMORY[0x277D22A68];
    }

    else
    {
      v130 = 0;
    }

    v214 = v122;
    v215 = v123;
    v131 = v176;
    *&v212 = v176;
    memcpy(v194, v218, 0x138uLL);
    sub_21571DF08(v193, &v194[312]);
    v132 = v173;
    v196 = v173;
    v197 = 0;
    v198 = 0;
    v199 = v124;
    v200 = v125;
    sub_21571DF08(&v224, &v201);
    sub_21571DF08(&v221, v205);
    v207 = v128;
    v208 = 0;
    v209 = 0;
    v210 = v129;
    v211 = v130;
    *(&v218[1] + 1) = &type metadata for AppShowcaseLockupLayout;
    *&v218[2] = sub_21579E480();
    *(&v218[2] + 1) = sub_21579E4D4();
    *&v218[0] = swift_allocObject();
    sub_21579E528(v194, *&v218[0] + 16);
    type metadata accessor for ASCLayoutProxy();
    v134 = v133;
    v135 = objc_allocWithZone(v133);
    sub_21578B2C8(v218, v135 + OBJC_IVAR_____ASCLayoutProxy_base);
    v219.receiver = v135;
    v219.super_class = v134;
    v136 = v132;
    v137 = v174;
    v138 = v127;
    v139 = v131;
    v140 = v175;
    v141 = v128;
    v142 = objc_msgSendSuper2(&v219, sel_init);
LABEL_105:
    v33 = v142;
    __swift_destroy_boxed_opaque_existential_1(v218);
    sub_21579E584(v194);
    return v33;
  }

  v121 = sub_2157A95F0();

  if (v121)
  {
    goto LABEL_77;
  }

  v143 = sub_2157A93B0();
  v144 = sub_2157A93E0();
  v146 = v145;
  if (v144 == sub_2157A93E0() && v146 == v147)
  {

LABEL_93:
    if (qword_27CA70F90 != -1)
    {
      swift_once();
    }

    sub_215785534(&qword_27CA73858, v218);
    v149 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v150 = MEMORY[0x277D22A58];
    *&v193[24] = v149;
    *&v193[32] = MEMORY[0x277D22A58];
    *v193 = v175;
    if (v173)
    {
      v151 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
      v152 = MEMORY[0x277D22A58];
    }

    else
    {
      v151 = 0;
      v152 = 0;
    }

    v153 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
    v225 = v153;
    v226 = MEMORY[0x277D22A68];
    v223 = MEMORY[0x277D22A68];
    *&v224 = v174;
    v222 = v153;
    v155 = v171;
    v154 = v172;
    *&v221 = v172;
    if (v171)
    {
      v156 = v153;
    }

    else
    {
      v156 = 0;
    }

    if (v171)
    {
      v157 = MEMORY[0x277D22A68];
    }

    else
    {
      v157 = 0;
    }

    v214 = v149;
    v215 = v150;
    v158 = v176;
    *&v212 = v176;
    memcpy(v194, v218, 0x138uLL);
    sub_21571DF08(v193, &v194[312]);
    v159 = v173;
    v196 = v173;
    v197 = 0;
    v198 = 0;
    v199 = v151;
    v200 = v152;
    sub_21571DF08(&v224, &v201);
    sub_21571DF08(&v221, v205);
    v207 = v155;
    v208 = 0;
    v209 = 0;
    v210 = v156;
    v211 = v157;
    *(&v218[1] + 1) = &type metadata for AppShowcaseLockupLayout;
    *&v218[2] = sub_21579E480();
    *(&v218[2] + 1) = sub_21579E4D4();
    *&v218[0] = swift_allocObject();
    sub_21579E528(v194, *&v218[0] + 16);
    type metadata accessor for ASCLayoutProxy();
    v161 = v160;
    v162 = objc_allocWithZone(v160);
    sub_21578B2C8(v218, v162 + OBJC_IVAR_____ASCLayoutProxy_base);
    v220.receiver = v162;
    v220.super_class = v161;
    v163 = v159;
    v164 = v174;
    v165 = v154;
    v166 = v158;
    v167 = v175;
    v168 = v155;
    v142 = objc_msgSendSuper2(&v220, sel_init);
    goto LABEL_105;
  }

  v148 = sub_2157A95F0();

  if (v148)
  {
    goto LABEL_93;
  }

  *v194 = 0;
  *&v194[8] = 0xE000000000000000;
  sub_2157A9550();
  MEMORY[0x216070240](0xD000000000000019, 0x80000002157B7E90);
  *&v218[0] = a1;
  type metadata accessor for Size(0);
  sub_2157A9590();
  result = sub_2157A95A0();
  __break(1u);
  return result;
}

unint64_t sub_21579E480()
{
  result = qword_27CA71AC0;
  if (!qword_27CA71AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AC0);
  }

  return result;
}

unint64_t sub_21579E4D4()
{
  result = qword_27CA71AC8;
  if (!qword_27CA71AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AC8);
  }

  return result;
}

unint64_t sub_21579E5D8()
{
  result = qword_27CA71AD0;
  if (!qword_27CA71AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AD0);
  }

  return result;
}

unint64_t sub_21579E62C()
{
  result = qword_27CA71AD8;
  if (!qword_27CA71AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AD8);
  }

  return result;
}

uint64_t sub_21579E784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21579E7E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmallLockupLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21579E82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21579E894(uint64_t a1)
{
  v2 = type metadata accessor for SmallLockupLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21579E8F0()
{
  result = qword_280D2AF78;
  if (!qword_280D2AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF78);
  }

  return result;
}

unint64_t sub_21579E944()
{
  result = qword_280D2AF70;
  if (!qword_280D2AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF70);
  }

  return result;
}

uint64_t sub_21579EA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71AE0, &unk_2157B3B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21579EB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71AE0, &unk_2157B3B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21579EB74()
{
  result = qword_280D2AF88[0];
  if (!qword_280D2AF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2AF88);
  }

  return result;
}

unint64_t sub_21579EBC8()
{
  result = qword_280D2AF80;
  if (!qword_280D2AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2AF80);
  }

  return result;
}

unint64_t sub_21579ED20()
{
  result = qword_27CA71AE8;
  if (!qword_27CA71AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AE8);
  }

  return result;
}

id sub_21579EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  sub_2157A8AE0();
  sub_2157A8AE0();
  v17[8] = a3;
  sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
  sub_2157A8AE0();
  v17[7] = a4;
  sub_2157A8AE0();
  v17[6] = a5;
  sub_2157A8AE0();
  v17[5] = a6;
  sub_2157A8AE0();
  v18[0] = vdupq_n_s64(0x404B800000000000uLL);
  v18[1] = vdupq_n_s64(0x4054C00000000000uLL);
  v18[2] = xmmword_2157B3B90;
  v18[3] = xmmword_2157B3BA0;
  v18[4] = xmmword_2157B3BB0;
  v17[3] = &type metadata for MiniProductPageLayout;
  v17[4] = sub_21578DE84();
  v17[0] = swift_allocObject();
  sub_21578DF4C(v18, v17[0] + 16);
  v16[3] = &type metadata for PlaceableLayoutProxy;
  v16[4] = sub_21579EB74();
  v16[5] = sub_21579EBC8();
  v16[0] = swift_allocObject();
  sub_21579EC1C(v17, v16[0] + 16);
  type metadata accessor for ASCLayoutProxy();
  v11 = v10;
  v12 = objc_allocWithZone(v10);
  sub_21578B2C8(v16, v12 + OBJC_IVAR_____ASCLayoutProxy_base);
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_21579F178(v18);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_21579EC78(v17);
  return v13;
}

double static ASCLayoutProxy.offerButtonHeightForSize(_:)(uint64_t a1, uint64_t a2)
{
  sub_2157A04EC(a1, a2, v4);
  v2 = *&v4[9];
  sub_21579ECCC(v4);
  return v2;
}

double static ASCLayoutProxy.axOfferButtonHeightForSize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2157A95E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2157A91D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71138, &qword_2157B3BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2157B3B70;
  sub_215788D28(0, &qword_280D2B5C0, 0x277D75C80);
  *(v8 + 32) = sub_2157A94C0();
  v9 = sub_2157A91E0();
  sub_2157A04EC(a1, a2, v20);
  v10 = v20[9];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v11 = v9;
  sub_2157A89C0();
  sub_2157A8BB0();
  v13 = v12;

  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = v10 + v13;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v16 = v11;
  sub_2157A89C0();
  sub_2157A8BB0();
  v18 = v17;

  v14(v7, v4);
  sub_21579ECCC(v20);
  return v15 + v18;
}

double static ASCLayoutProxy.offerProgressDiameterForSize(_:)(uint64_t a1, uint64_t a2)
{
  sub_2157A074C(a1, a2, v4);
  v2 = v5;
  sub_21579F4FC(v4);
  return v2;
}

double static ASCLayoutProxy.offerButtonRegularWidthForSize(_:)(uint64_t a1, uint64_t a2)
{
  sub_2157A09AC(a1, a2, v4);
  v2 = *v4;
  sub_21579F4FC(v4);
  return v2;
}

double sub_21579F690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2157A93E0();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static ASCLayoutProxy.axOfferButtonHeightForSize(_:)(v3, v5);

  return v6;
}

id static ASCLayoutProxy.offerIconLayoutForSize(_:imageView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldTrailingAlign:)(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, char a7, char a8, char a9)
{
  if (a7)
  {
    sub_2157A074C(a2, a3, v40);
  }

  else
  {
    sub_2157A09AC(a2, a3, v40);
  }

  sub_2157A01E0(v40, v39);
  if (a5)
  {
    v15 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v16 = MEMORY[0x277D22A58];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = MEMORY[0x277D22A58];
  if (a6)
  {
    v18 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v19 = MEMORY[0x277D22A58];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v37 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  v38 = v17;
  *&v36 = a4;
  sub_2157A01E0(v39, &v33);
  v31 = MEMORY[0x277D85048];
  v32 = MEMORY[0x277D225F8];
  *&v30 = a1;
  v20 = a6;
  v21 = a4;
  v22 = a5;
  sub_21579F4FC(v39);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_21571DF08(&v30, v34);
  type metadata accessor for OfferIconLayout.Storage();
  v23 = swift_allocObject();
  v24 = v34[0];
  *(v23 + 16) = v33;
  *(v23 + 32) = v24;
  *(v23 + 48) = v34[1];
  *(v23 + 64) = v35;
  sub_21571DF08(&v36, v23 + 72);
  *(v23 + 112) = a5;
  *(v23 + 120) = 0;
  *(v23 + 128) = 0;
  *(v23 + 136) = v15;
  *(v23 + 144) = v16;
  *(v23 + 152) = a6;
  *(v23 + 160) = 0;
  *(v23 + 168) = 0;
  *(v23 + 176) = v18;
  *(v23 + 184) = v19;
  *(v23 + 192) = a8 & 1;
  *(v23 + 193) = a9 & 1;
  v39[3] = &type metadata for OfferIconLayout;
  v39[4] = sub_2157A023C();
  v39[5] = sub_2157A0290();
  v39[0] = v23;
  v25 = objc_allocWithZone(v9);
  sub_21578B2C8(v39, v25 + OBJC_IVAR_____ASCLayoutProxy_base);
  v29.receiver = v25;
  v29.super_class = v9;
  v26 = objc_msgSendSuper2(&v29, sel_init);
  sub_21579F4FC(v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v26;
}

id static ASCLayoutProxy.offerTextLayoutForSize(_:titleBackgroundView:titleView:subtitleView:hasTrailingSubtitle:shouldTopAlign:topPadding:shouldExpandBackground:)(uint64_t a1, double a2, uint64_t a3, void *a4, void *a5, void *a6, char a7, char a8, char a9)
{
  sub_2157A04EC(a1, a3, v49);
  v16 = MEMORY[0x277D22A68];
  if (a6)
  {
    v17 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
    v18 = MEMORY[0x277D22A68];
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v47 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  v48 = MEMORY[0x277D22A58];
  *&v46 = a4;
  v44 = sub_215788D28(0, &qword_280D2B5A8, 0x277D756B8);
  v45 = v16;
  *&v43 = a5;
  sub_2157A02E4(v49, v41);
  v39 = MEMORY[0x277D85048];
  v40 = MEMORY[0x277D225F8];
  *&v38 = a2;
  v19 = a6;
  v20 = a4;
  v21 = a5;
  sub_21579ECCC(v49);
  __swift_destroy_boxed_opaque_existential_1(v42 + 1);
  sub_21571DF08(&v38, v42 + 8);
  type metadata accessor for OfferTextLayout.Storage();
  v22 = swift_allocObject();
  v23 = v41[11];
  v24 = v42[1];
  v25 = v42[2];
  *(v22 + 208) = v42[0];
  *(v22 + 224) = v24;
  *(v22 + 240) = v25;
  v26 = v41[7];
  v27 = v41[9];
  v28 = v41[10];
  *(v22 + 144) = v41[8];
  *(v22 + 160) = v27;
  *(v22 + 176) = v28;
  *(v22 + 192) = v23;
  v29 = v41[5];
  v30 = v41[6];
  *(v22 + 80) = v41[4];
  *(v22 + 96) = v29;
  *(v22 + 112) = v30;
  *(v22 + 128) = v26;
  v31 = v41[1];
  *(v22 + 16) = v41[0];
  *(v22 + 32) = v31;
  v32 = v41[3];
  *(v22 + 48) = v41[2];
  *(v22 + 64) = v32;
  sub_21571DF08(&v46, v22 + 256);
  sub_21571DF08(&v43, v22 + 296);
  *(v22 + 336) = a6;
  *(v22 + 344) = 0;
  *(v22 + 352) = 0;
  *(v22 + 360) = v17;
  *(v22 + 368) = v18;
  *(v22 + 376) = a7 & 1;
  *(v22 + 377) = a8 & 1;
  *(v22 + 378) = a9 & 1;
  v49[3] = &type metadata for OfferTextLayout;
  v49[4] = sub_2157A0340();
  v49[5] = sub_2157A0394();
  v49[0] = v22;
  v33 = objc_allocWithZone(v9);
  sub_21578B2C8(v49, v33 + OBJC_IVAR_____ASCLayoutProxy_base);
  v37.receiver = v33;
  v37.super_class = v9;
  v34 = objc_msgSendSuper2(&v37, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v34;
}

id static ASCLayoutProxy.offerDisclosureLayout(disclosureIndicator:)()
{
  v1 = v0;
  v7[3] = &type metadata for OfferDisclosureLayout;
  v7[4] = sub_2157A03E8();
  v7[0] = swift_allocObject();
  sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  sub_2157A8AE0();
  v6[3] = &type metadata for PlaceableLayoutProxy;
  v6[4] = sub_21579EB74();
  v6[5] = sub_21579EBC8();
  v6[0] = swift_allocObject();
  sub_21579EC1C(v7, v6[0] + 16);
  v2 = objc_allocWithZone(v0);
  sub_21578B2C8(v6, v2 + OBJC_IVAR_____ASCLayoutProxy_base);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_21579EC78(v7);
  return v3;
}

id _s18AppStoreComponents14ASCLayoutProxyC16offerEmptyLayout9imageView05titleJ008subtitleJ0ACSo6UIViewC_AISgAJtFZ_0(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v7 = MEMORY[0x277D22A58];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = MEMORY[0x277D22A58];
  if (a3)
  {
    v9 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
    v10 = MEMORY[0x277D22A58];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v22 = sub_215788D28(0, &qword_280D2B5B0, 0x277D75D18);
  v23 = v8;
  *&v21 = a1;
  type metadata accessor for OfferEmptyLayout.Storage();
  v11 = swift_allocObject();
  sub_21571DF08(&v21, (v11 + 2));
  v11[7] = a2;
  v11[8] = 0;
  v11[9] = 0;
  v11[10] = v6;
  v11[11] = v7;
  v11[12] = a3;
  v11[13] = 0;
  v11[14] = 0;
  v11[15] = v9;
  v11[16] = v10;
  v22 = &type metadata for OfferEmptyLayout;
  v23 = sub_2157A043C();
  v24 = sub_2157A0490();
  *&v21 = v11;
  type metadata accessor for ASCLayoutProxy();
  v13 = v12;
  v14 = objc_allocWithZone(v12);
  sub_21578B2C8(&v21, v14 + OBJC_IVAR_____ASCLayoutProxy_base);
  v20.receiver = v14;
  v20.super_class = v13;
  v15 = a2;
  v16 = a3;
  v17 = a1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  return v18;
}

unint64_t sub_2157A023C()
{
  result = qword_280D2B540;
  if (!qword_280D2B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B540);
  }

  return result;
}

unint64_t sub_2157A0290()
{
  result = qword_280D2B538;
  if (!qword_280D2B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B538);
  }

  return result;
}

unint64_t sub_2157A0340()
{
  result = qword_280D2B618;
  if (!qword_280D2B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B618);
  }

  return result;
}

unint64_t sub_2157A0394()
{
  result = qword_280D2B610;
  if (!qword_280D2B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B610);
  }

  return result;
}

unint64_t sub_2157A03E8()
{
  result = qword_27CA71AF0;
  if (!qword_27CA71AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71AF0);
  }

  return result;
}

unint64_t sub_2157A043C()
{
  result = qword_280D2B138[0];
  if (!qword_280D2B138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D2B138);
  }

  return result;
}

unint64_t sub_2157A0490()
{
  result = qword_280D2B130;
  if (!qword_280D2B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2B130);
  }

  return result;
}

uint64_t sub_2157A04EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2157A93B0();
  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_2157A95F0();
  v13 = v6;

  if (v12)
  {

LABEL_8:
    if (qword_27CA71018 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_27CA71B30;
    goto LABEL_19;
  }

  v15 = sub_2157A93E0();
  v17 = v16;
  if (v15 == sub_2157A93E0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_2157A95F0();

    if ((v19 & 1) == 0)
    {
      sub_2157A9550();

      MEMORY[0x216070240](a1, a2);
      result = sub_2157A95A0();
      __break(1u);
      return result;
    }
  }

  if (qword_280D2B658 != -1)
  {
    swift_once();
  }

  v14 = &xmmword_280D2B660;
LABEL_19:

  return sub_2157A02E4(v14, a3);
}

uint64_t sub_2157A074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2157A93B0();
  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_2157A95F0();
  v13 = v6;

  if (v12)
  {

LABEL_8:
    if (qword_27CA71028 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_27CA71C58;
    goto LABEL_19;
  }

  v15 = sub_2157A93E0();
  v17 = v16;
  if (v15 == sub_2157A93E0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_2157A95F0();

    if ((v19 & 1) == 0)
    {
      sub_2157A9550();

      MEMORY[0x216070240](a1, a2);
      result = sub_2157A95A0();
      __break(1u);
      return result;
    }
  }

  if (qword_27CA71010 != -1)
  {
    swift_once();
  }

  v14 = &xmmword_27CA71AF8;
LABEL_19:

  return sub_2157A01E0(v14, a3);
}

uint64_t sub_2157A09AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2157A93B0();
  v7 = sub_2157A93E0();
  v9 = v8;
  if (v7 == sub_2157A93E0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_2157A95F0();
  v13 = v6;

  if (v12)
  {

LABEL_8:
    if (qword_27CA71020 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_27CA71C20;
    goto LABEL_19;
  }

  v15 = sub_2157A93E0();
  v17 = v16;
  if (v15 == sub_2157A93E0() && v17 == v18)
  {
  }

  else
  {
    v19 = sub_2157A95F0();

    if ((v19 & 1) == 0)
    {
      sub_2157A9550();

      MEMORY[0x216070240](a1, a2);
      result = sub_2157A95A0();
      __break(1u);
      return result;
    }
  }

  if (qword_280D2B548 != -1)
  {
    swift_once();
  }

  v14 = &xmmword_280D2B550;
LABEL_19:

  return sub_2157A01E0(v14, a3);
}

double sub_2157A0C0C()
{
  qword_280D2B6C8 = MEMORY[0x277D839F8];
  unk_280D2B6D0 = MEMORY[0x277D22A30];
  qword_280D2B6B0 = 0x4028000000000000;
  qword_280D2B6F0 = MEMORY[0x277D839F8];
  unk_280D2B6F8 = MEMORY[0x277D22A30];
  qword_280D2B6D8 = 0x4008000000000000;
  qword_280D2B718 = MEMORY[0x277D839F8];
  unk_280D2B720 = MEMORY[0x277D22A30];
  qword_280D2B700 = 0x4050000000000000;
  qword_280D2B740 = MEMORY[0x277D839F8];
  unk_280D2B748 = MEMORY[0x277D22A30];
  qword_280D2B728 = 0;
  xmmword_280D2B660 = xmmword_2157B3C10;
  *algn_280D2B670 = xmmword_2157B3C10;
  xmmword_280D2B680 = xmmword_2157B3C10;
  unk_280D2B690 = xmmword_2157B3C10;
  result = 74.0;
  xmmword_280D2B6A0 = xmmword_2157B3B50;
  return result;
}

double sub_2157A0C70()
{
  qword_280D2B578 = MEMORY[0x277D839F8];
  unk_280D2B580 = MEMORY[0x277D22A30];
  qword_280D2B560 = 0;
  result = 74.0;
  xmmword_280D2B550 = xmmword_2157B3C20;
  return result;
}

__n128 sub_2157A0CA0()
{
  qword_27CA71B20 = MEMORY[0x277D839F8];
  unk_27CA71B28 = MEMORY[0x277D22A30];
  qword_27CA71B08 = 0;
  __asm { FMOV            V0.2D, #28.0 }

  xmmword_27CA71AF8 = result;
  return result;
}

double sub_2157A0CCC()
{
  qword_27CA71B98 = MEMORY[0x277D839F8];
  unk_27CA71BA0 = MEMORY[0x277D22A30];
  qword_27CA71B80 = 0x4028000000000000;
  qword_27CA71BC0 = MEMORY[0x277D839F8];
  unk_27CA71BC8 = MEMORY[0x277D22A30];
  qword_27CA71BA8 = 0x4008000000000000;
  qword_27CA71BE8 = MEMORY[0x277D839F8];
  unk_27CA71BF0 = MEMORY[0x277D22A30];
  qword_27CA71BD0 = 0x4050000000000000;
  qword_27CA71C10 = MEMORY[0x277D839F8];
  unk_27CA71C18 = MEMORY[0x277D22A30];
  qword_27CA71BF8 = 0;
  xmmword_27CA71B30 = xmmword_2157B3C10;
  unk_27CA71B40 = xmmword_2157B3C10;
  xmmword_27CA71B50 = xmmword_2157B3C10;
  unk_27CA71B60 = xmmword_2157B3C10;
  result = 74.0;
  xmmword_27CA71B70 = xmmword_2157B3C30;
  return result;
}

double sub_2157A0D30()
{
  qword_27CA71C48 = MEMORY[0x277D839F8];
  unk_27CA71C50 = MEMORY[0x277D22A30];
  qword_27CA71C30 = 0;
  result = 74.0;
  xmmword_27CA71C20 = xmmword_2157B3C30;
  return result;
}

double sub_2157A0D60()
{
  qword_27CA71C80 = MEMORY[0x277D839F8];
  unk_27CA71C88 = MEMORY[0x277D22A30];
  qword_27CA71C68 = 0;
  result = 28.0;
  xmmword_27CA71C58 = xmmword_2157B3C40;
  return result;
}

double sub_2157A0D90()
{
  qword_27CA71CC8 = MEMORY[0x277D839F8];
  unk_27CA71CD0 = MEMORY[0x277D22A30];
  qword_27CA71CB0 = 0x4042800000000000;
  result = 0.0;
  xmmword_27CA71C90 = xmmword_2157B3C50;
  unk_27CA71CA0 = xmmword_2157B3C50;
  return result;
}

id _s18AppStoreComponents14ASCLayoutProxyC17tvTextPillOverlay14backgroundView04textK0ACSo6UIViewC_AHtFZ_0(void *a1, void *a2)
{
  type metadata accessor for ASCLayoutProxy();
  v5 = v4;
  if (qword_27CA71030 != -1)
  {
    swift_once();
  }

  sub_2157A1048(&xmmword_27CA71C90, v19);
  v21 = sub_2157A10A4();
  v22 = MEMORY[0x277D22A58];
  v20 = a1;
  v24 = v21;
  v25 = MEMORY[0x277D22A58];
  v23 = a2;
  v18[3] = sub_2157A8F20();
  v18[4] = MEMORY[0x277D227C0];
  __swift_allocate_boxed_opaque_existential_1(v18);
  v6 = a1;
  v7 = a2;
  sub_2157A8F30();
  sub_2157A10F0();
  sub_2157A9270();
  sub_2157A1144(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = __swift_mutable_project_boxed_opaque_existential_2(v26, v27);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_215792A48(v14, v5, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v16;
}

unint64_t sub_2157A10A4()
{
  result = qword_280D2B5B0;
  if (!qword_280D2B5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D2B5B0);
  }

  return result;
}

unint64_t sub_2157A10F0()
{
  result = qword_27CA71CD8;
  if (!qword_27CA71CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CD8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

double sub_2157A1208(uint64_t a1, double a2)
{
  v4 = sub_2157A94B0();
  v5 = 40;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  sub_21578326C(v2 + v5, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2157A8BC0();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return a2;
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

uint64_t sub_2157A12D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A1318(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2157A1370()
{
  v0 = sub_2157A8DD0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2157A8DB0();
  sub_2157A8DC0();
  return (*(v1 + 8))(v3, v0);
}

double sub_2157A146C(uint64_t a1, double a2, double a3)
{
  v3 = sub_2157A8DD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_2157A8DB0();
  sub_2157A8DC0();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_2157A9370();
  v12 = v11;
  v10(v9, v3);
  return v12;
}

uint64_t sub_2157A15FC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_2157A8DD0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_2157A8DB0();
  sub_2157A8DC0();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_2157A9360();
  return (v12)(v11, v5);
}

uint64_t sub_2157A177C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2157A1848();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_2157A17D8()
{
  result = qword_27CA71CE0;
  if (!qword_27CA71CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CE0);
  }

  return result;
}

unint64_t sub_2157A1848()
{
  result = qword_27CA71CE8;
  if (!qword_27CA71CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CE8);
  }

  return result;
}

uint64_t sub_2157A189C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2157A1908(v0 + 56);
  sub_2157A1908(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_2157A1908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71080, &unk_2157B3AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2157A1980(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_2157A94E0();
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2157A8A90();
  sub_2157A1AF4((a2 + 7), v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2157A1908(v8);
  }

  sub_2157A1AF4((a2 + 12), v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2157A1908(v8);
  }

  return sub_2157A8A10();
}

uint64_t sub_2157A1AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71080, &unk_2157B3AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2157A1B64()
{
  sub_21579F4FC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  sub_2157A1908(v0 + 112);
  sub_2157A1908(v0 + 152);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2157A1C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A1C4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2157A1CA8(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = sub_2157A95E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2157A01E0((a2 + 2), v12);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_21579F1CC(v9, v10);
  sub_2157A8BB0();
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_project_boxed_opaque_existential_1(a2 + 9, a2[12]);
  sub_2157A8AC0();
}

uint64_t sub_2157A1E48(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = sub_2157A95E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  sub_2157A8AC0();
  v16 = v15;
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  if (v16 < CGRectGetHeight(v30) && *(a2 + 192) == 1)
  {
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    CGRectGetMinY(v31);
    sub_2157A01E0(a2 + 16, v25);
    v17 = v28;
    v18 = v29;
    __swift_project_boxed_opaque_existential_1(&v26, v28);
    sub_21579F1CC(v17, v18);
    sub_2157A8BB0();
    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    CGRectGetMidY(v32);
  }

  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  if (*(a2 + 193) == 1)
  {
    CGRectGetMaxX(*&v19);
  }

  else
  {
    CGRectGetMidX(*&v19);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  sub_2157A94E0();
  sub_2157A8A90();
  sub_2157A94E0();
  sub_2157A1AF4(a2 + 112, v25);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v25, v27);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2157A1908(v25);
  }

  sub_2157A1AF4(a2 + 152, v25);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v25, v27);
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2157A1908(v25);
  }

  return sub_2157A89E0();
}

uint64_t sub_2157A2224()
{
  v1 = *v0;
  sub_2157A9610();
  MEMORY[0x216070460](v1);
  return sub_2157A9630();
}

uint64_t sub_2157A2298(uint64_t a1)
{
  v2 = *v1;
  sub_2157A9610();
  MEMORY[0x216070460](v2);
  return sub_2157A9630();
}

uint64_t sub_2157A22DC()
{
  sub_21579ECCC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  sub_2157A3484(v0 + 336);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for OfferTextLayout.BackgroundContentMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OfferTextLayout.BackgroundContentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_2157A2514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A255C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
      *(result + 240) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2157A25E8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_2157A95E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 240);
  v10 = *(a2 + 248);
  __swift_project_boxed_opaque_existential_1((a2 + 216), v9);
  sub_21579F1CC(v9, v10);
  sub_2157A8BB0();
  v19[1] = v11;
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_project_boxed_opaque_existential_1((a2 + 296), *(a2 + 320));
  sub_2157A8AC0();
  sub_21578B32C(a2 + 336, &v20);
  if (!v21)
  {
    return sub_2157A3484(&v20);
  }

  sub_215783890(&v20, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  if ((sub_2157A8A60() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (*(a2 + 376) == 1)
  {
    v13 = *(a2 + 200);
    v14 = *(a2 + 208);
    __swift_project_boxed_opaque_existential_1((a2 + 176), v13);
    sub_21579F1CC(v13, v14);
    sub_2157A8BB0();
    v12(v8, v5);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_2157A8AC0();
    __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    sub_2157A8BD0();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __swift_project_boxed_opaque_existential_1(v22, v23);
  if (sub_2157A8D20() != 1)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_2157A8AC0();
    __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    sub_2157A8BD0();
    __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
    sub_2157A8B80();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_21578326C(a2 + 96, &v20);
  __swift_project_boxed_opaque_existential_1(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  result = sub_2157A8D40();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = result;
  sub_2157A8B90();

  __swift_destroy_boxed_opaque_existential_1(&v20);
  sub_21578326C(a2 + 136, &v20);
  __swift_project_boxed_opaque_existential_1(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  result = sub_2157A8D40();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  sub_2157A8BA0();

  __swift_destroy_boxed_opaque_existential_1(&v20);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  result = sub_2157A8D40();
  if (result)
  {
    v18 = result;
    [result lineHeight];

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2157A2B00(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, double *a10)
{
  sub_2157A9510();
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetWidth(v14);
}

uint64_t sub_2157A2BC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v79 = a3;
  v13 = sub_2157A95E0();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 traitCollection];
  v78 = [v18 layoutDirection];

  sub_2157A9500();
  __swift_project_boxed_opaque_existential_1((a2 + 296), *(a2 + 320));
  sub_2157A8AC0();
  v19 = *(a2 + 378);
  v76 = v20;
  v77 = v21;
  sub_2157A2B00(v20, v21, v22, v23, a4, a5, a6, a7, v19, a2);
  width = v24;
  v81.size.height = v26;
  sub_21578B32C(a2 + 336, &v82);
  v81.size.width = width;
  if (v83)
  {
    sub_215783890(&v82, v84);
    __swift_project_boxed_opaque_existential_1(v84, v85);
    if (sub_2157A8A60())
    {
      if (*(a2 + 376) == 1)
      {
        v27 = *(a2 + 200);
        v28 = *(a2 + 208);
        __swift_project_boxed_opaque_existential_1((a2 + 176), v27);
        sub_21579F1CC(v27, v28);
        sub_2157A8BB0();
        (*(v14 + 8))(v17, v13);
        v86.origin.x = a4;
        v86.origin.y = a5;
        v86.size.width = a6;
        v86.size.height = a7;
        CGRectGetHeight(v86);
      }

      __swift_project_boxed_opaque_existential_1(v84, v85);
      sub_2157A8AC0();
      v30 = v29;
      v32 = v31;
      __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
      sub_2157A8BD0();
      v70 = v33;
      __swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
      v75 = v30;
      v74 = v32;
      sub_2157A8B80();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(v84);
      width = v81.size.width;
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1(v84);
  }

  else
  {
    sub_2157A3484(&v82);
  }

  v36 = *(MEMORY[0x277D22A78] + 8);
  v75 = *MEMORY[0x277D22A78];
  v74 = v36;
  v35 = 0.0;
  v70 = 0.0;
LABEL_9:
  v37 = *(a2 + 376);
  v38 = a6;
  if (v37 & 1) != 0 || (*(a2 + 377))
  {
    goto LABEL_14;
  }

  v39 = v74;
  v40 = v35 + v74 + v81.size.height + v70;
  v87.origin.x = a4;
  v87.origin.y = a5;
  v87.size.width = a6;
  v87.size.height = a7;
  if (v40 < CGRectGetHeight(v87))
  {
    v41 = 1;
    goto LABEL_15;
  }

  if ((*&v39 & 0x7FF0000000000000) != 0)
  {
LABEL_14:
    v41 = 0;
  }

  else
  {
    v41 = (*&v39 & 0xFFFFFFFFFFFFFLL) == 0;
  }

LABEL_15:
  v42 = *(a2 + 240);
  v43 = *(a2 + 248);
  __swift_project_boxed_opaque_existential_1((a2 + 216), v42);
  sub_21579F1CC(v42, v43);
  sub_2157A8BB0();
  v45 = v44;
  (*(v14 + 8))(v17, v13);
  v46 = a4;
  v47 = a5;
  if ((v37 & 1) == 0)
  {
    v48 = a4;
    v49 = a5;
    v50 = v38;
    v51 = a7;
    if (v41)
    {
      v47 = floor(CGRectGetMidY(*&v48) + v81.size.height * -0.5);
    }

    else
    {
      v47 = v45 + CGRectGetMinY(*&v48);
    }

    v88.origin.x = a4;
    v88.origin.y = a5;
    v88.size.width = v38;
    v88.size.height = a7;
    v46 = floor(CGRectGetMidX(v88) + width * -0.5);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 256), *(a2 + 280));
  v80 = a5;
  height = v81.size.height;
  sub_2157A94F0();
  sub_2157A8A90();
  v89.origin.x = v46;
  v89.origin.y = v47;
  v89.size.width = width;
  v89.size.height = height;
  CGRectGetMidX(v89);
  v90.size.width = width;
  v90.origin.y = v47;
  v81.origin.x = v46;
  v90.origin.x = v46;
  v81.origin.y = v47;
  v90.size.height = height;
  v53 = v80;
  CGRectGetMidY(v90);
  __swift_project_boxed_opaque_existential_1((a2 + 296), *(a2 + 320));
  v72 = v38;
  v73 = a7;
  sub_2157A94F0();
  sub_2157A8A90();
  v54 = v75;
  v55 = 0.0;
  v71 = a4;
  if (fabs(v75) < COERCE_DOUBLE(1))
  {
    v57 = a4;
    v58 = v53;
    v59 = 0.0;
  }

  else
  {
    v56 = v74;
    v57 = a4;
    v58 = v53;
    v59 = 0.0;
    if (fabs(v74) >= COERCE_DOUBLE(1))
    {
      if (v37)
      {
        x = v81.origin.x;
        y = v81.origin.y;
        v61 = v81.size.width;
        v63 = v74;
        v64 = v81.size.height;
        v57 = v70 + CGRectGetMaxX(v81);
        v91.origin.x = x;
        v91.origin.y = y;
        v91.size.width = v61;
        v91.size.height = v64;
        v58 = floor(CGRectGetMidY(v91) + v63 * -0.5);
        v55 = v54;
        v59 = v63;
      }

      else
      {
        v65 = v81.origin.x;
        v67 = v81.origin.y;
        v66 = v81.size.width;
        v68 = v81.size.height;
        if (CGRectGetWidth(v81) >= v54)
        {
          v93.origin.x = v65;
          v93.origin.y = v67;
          v93.size.width = v66;
          v93.size.height = v68;
          v57 = floor(CGRectGetMidX(v93) + v54 * -0.5);
        }

        else
        {
          v92.origin.x = v71;
          v92.origin.y = v53;
          v92.size.width = v72;
          v92.size.height = v73;
          v57 = CGRectGetMaxX(v92) - v54;
        }

        v94.origin.x = v65;
        v94.origin.y = v67;
        v94.size.width = v66;
        v94.size.height = v68;
        v58 = v70 + CGRectGetMaxY(v94);
        v55 = v54;
        v59 = v56;
      }
    }
  }

  sub_21578B32C(a2 + 336, v84);
  if (v85)
  {
    __swift_project_boxed_opaque_existential_1(v84, v85);
    sub_2157A94F0();
    sub_2157A8A90();
    __swift_destroy_boxed_opaque_existential_1(v84);
  }

  else
  {
    sub_2157A3484(v84);
  }

  v95.origin.x = v57;
  v95.origin.y = v58;
  v95.size.width = v55;
  v95.size.height = v59;
  CGRectUnion(v81, v95);
  return sub_2157A89E0();
}

unint64_t sub_2157A3404(uint64_t a1)
{
  result = sub_2157A0394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2157A3430()
{
  result = qword_27CA71CF0;
  if (!qword_27CA71CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CF0);
  }

  return result;
}

uint64_t sub_2157A3484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA71078, &unk_2157B2E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2157A34EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 37, a1[40]);
  v1 = sub_2157A8D40();
  if (v1)
  {
    v2 = v1;
    [v1 lineHeight];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CenteredThreeLineReverseTextLayout.init(primaryText:secondaryText:primarySpace:numberOfLines:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21571DF08(a1, a5);
  sub_21571DF08(a2, a5 + 40);
  result = sub_21571DF08(a3, a5 + 80);
  *(a5 + 120) = a4;
  return result;
}

uint64_t CenteredThreeLineReverseTextLayout.primaryText.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_21571DF08(a1, v1);
}

uint64_t CenteredThreeLineReverseTextLayout.secondaryText.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_21571DF08(a1, v1 + 40);
}

uint64_t CenteredThreeLineReverseTextLayout.primarySpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_21571DF08(a1, v1 + 80);
}

uint64_t CenteredThreeLineReverseTextLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  if (sub_2157A8D00() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]), (sub_2157A8D00()))
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2157A8AC0();
    v11 = v10;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2157A8D30();
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2157A8AC0();
    v11 = v12;
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2157A8D50();
    sub_21578326C((v5 + 5), v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_2157A8D30();
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_2157A8AC0();
  v14 = v13;
  v16 = v15;
  v24 = v11;
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  sub_2157A8BD0();
  v27 = v17;
  v18 = v11 + v14 - v16 + v17;
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  v19 = (CGRectGetHeight(v30) - v18) * 0.5;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v23 = CGRectGetMinY(v31) + v19;
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  Width = CGRectGetWidth(v33);
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_2157A8A90();
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  v26 = CGRectGetMinX(v34);
  v35.origin.x = MinX;
  v35.origin.y = v23;
  v35.size.width = Width;
  v35.size.height = v14;
  v25 = v27 + CGRectGetMaxY(v35) - v16;
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v28 = CGRectGetWidth(v36);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2157A8A90();
  v37.origin.x = MinX;
  v37.origin.y = v23;
  v37.size.width = Width;
  v37.size.height = v14;
  CGRectGetMinY(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMinX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMinY(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetWidth(v41);
  v42.origin.y = v25;
  v42.origin.x = v26;
  v42.size.width = v28;
  v42.size.height = v24;
  CGRectGetMaxY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectGetMinY(v43);
  return sub_2157A89F0();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2157A3C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A3CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2157A3D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A3DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2157A3E50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2157A3E80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2157A3EAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2157A3F84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_2157A3FB4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2157A42EC(a1);

  *a2 = v3;
}

uint64_t sub_2157A3FF4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2157A8AC0();
  v11 = v5[5];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v11)
  {
    CGRectGetMidX(*&v12);
  }

  else
  {
    CGRectGetMinX(*&v12);
  }

  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  if ((v11 & 2) != 0)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2157A94E0();
  sub_2157A8A90();

  return sub_2157A89E0();
}

unint64_t sub_2157A4190()
{
  result = qword_27CA71CF8;
  if (!qword_27CA71CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71CF8);
  }

  return result;
}

unint64_t sub_2157A41E8()
{
  result = qword_27CA71D00;
  if (!qword_27CA71D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71D00);
  }

  return result;
}

unint64_t sub_2157A4240()
{
  result = qword_27CA71D08;
  if (!qword_27CA71D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71D08);
  }

  return result;
}

unint64_t sub_2157A4298()
{
  result = qword_27CA71D10;
  if (!qword_27CA71D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA71D10);
  }

  return result;
}

uint64_t sub_2157A42EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2157A436C(void *a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = [a1 traitCollection];
  sub_2157A9360();

  return sub_2157A89E0();
}

double sub_2157A4434(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = [a1 traitCollection];
  sub_2157A9370();
  v7 = v6;

  return v7;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2157A4510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A4558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2157A45F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157A4638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157A4698(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v33 = a2;
  v34 = a3;
  v9 = sub_2157A95E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  sub_2157A8AC0();
  v14 = v13;
  *&v32[2] = v13;
  v16 = v15;
  v17 = *(v5 + 8);
  v18 = *(v5 + 24);
  sub_2157A1048(v5, v35);
  v19 = v37;
  v20 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_21579F1CC(v19, v20);
  sub_2157A8BB0();
  v22 = v21;
  (*(v10 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v36);
  *&v32[3] = v16;
  if (v16 > v22)
  {
    v23 = v16;
  }

  else
  {
    v23 = v22;
  }

  v24 = v14 + v17 + v18;
  v26 = v33;
  v25 = v34;
  v39.origin.x = v33;
  v39.origin.y = v34;
  v27 = a4;
  v39.size.width = a4;
  v28 = a5;
  v39.size.height = a5;
  v29 = CGRectGetMaxX(v39) - v24;
  v40.origin.x = v26;
  v40.origin.y = v25;
  v40.size.width = v27;
  *v32 = v27;
  v40.size.height = v28;
  *&v32[1] = v28;
  v30 = CGRectGetMaxY(v40) - v23;
  __swift_project_boxed_opaque_existential_1(v6 + 9, v6[12]);
  sub_2157A94E0();
  sub_2157A8A90();
  v41.origin.x = v29;
  v41.origin.y = v30;
  v41.size.width = v24;
  v41.size.height = v23;
  CGRectGetMidX(v41);
  v42.origin.x = v29;
  v42.origin.y = v30;
  v42.size.width = v24;
  v42.size.height = v23;
  CGRectGetMidY(v42);
  __swift_project_boxed_opaque_existential_1(v6 + 14, v6[17]);
  sub_2157A94E0();
  sub_2157A8A90();
  return sub_2157A89E0();
}

void ASCLockupImageStringForName_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find image %@ for lockup text", &v1, 0xCu);
}

void __ASCSignpostTagCreateForProcess_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = 136446466;
  v3 = "ASCSignpostTag ASCSignpostTagCreateForProcess(uint64_t, pid_t)_block_invoke";
  v4 = 2050;
  v5 = v1;
  _os_log_fault_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "*** %{public}s: Value %{public}llul exceeds 47 bits, break on _ASCSignpostTag_valueTooLarge to debug", &v2, 0x16u);
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}