id AMDVectorDBManager.__deallocating_deinit()
{
  v4 = v0;

  sub_240DADA24();

  v3.receiver = v2;
  v3.super_class = type metadata accessor for AMDVectorDBManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_240D9FD48(uint64_t a1)
{
  v139 = a1;
  v120 = sub_240DAC250;
  v121 = sub_240DAC6A8;
  v122 = sub_240DAC258;
  v123 = sub_240DAC260;
  v124 = sub_240DAC6B4;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v140 = __b;
  v142 = 40;
  memset(__b, 0, sizeof(__b));
  v159 = 0;
  v158 = 0;
  v151 = 0;
  v152 = 0;
  v150 = 0;
  v145 = 0;
  v130 = 0;
  v125 = sub_240DADC54();
  v126 = *(v125 - 8);
  v127 = v125 - 8;
  v128 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v129 = &v41 - v128;
  v131 = sub_240DADAF4();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v135 = *(v132 + 64);
  v134 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v130);
  v136 = &v41 - v134;
  v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v138 = &v41 - v137;
  v167 = &v41 - v137;
  v166 = v3;
  v165 = v1;
  v164 = sub_240DAE1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C00, &qword_240DB2F60);
  v141 = &v168;
  sub_240DADC94();
  v4 = v143;
  memcpy(v140, v141, v142);
  for (i = v4; ; i = v115)
  {
    v115 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C08, &qword_240DB2F68);
    sub_240DADCB4();
    v116 = v160;
    v117 = v161;
    v118 = v162;
    if (!v161)
    {
      break;
    }

    v112 = v116;
    v113 = v117;
    v114 = v118;
    v109 = v118;
    v110 = v117;
    v111 = v116;
    v151 = v116;
    v152 = v117;
    v150 = v118;

    sub_240D9C130();
    sub_240DAE114();
    v146 = v148;
    v147 = v149 & 1;
    if (v149)
    {
      v108 = -1;
    }

    else
    {
      v108 = v146;
    }

    v105 = v108;
    v145 = v108;
    v106 = v110;
    v107 = v109;
    if (v108 == -1)
    {
      v101 = v107;
      v102 = v106;
      sub_240DAC110();
      v90 = 1;
      v99 = sub_240DADD64();
      v97 = v5;
      v98 = sub_240D9D87C(3);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
      v92 = sub_240DAE1D4();
      v91 = v6;
      v94 = *MEMORY[0x277CCA450];
      MEMORY[0x277D82BE0](v94);
      v7 = sub_240DADD04();
      v8 = v91;
      *v91 = v7;
      v8[1] = v9;
      v10 = sub_240DADD64();
      v11 = v91;
      v96 = MEMORY[0x277D837D0];
      v91[5] = MEMORY[0x277D837D0];
      v11[2] = v10;
      v11[3] = v12;
      sub_240D7F8DC();
      v95 = v13;
      MEMORY[0x277D82BD8](v94);
      v14 = sub_240DADCA4();
      v103 = sub_240D9FA30(v99, v97, v98, v14);
      swift_willThrow();

      sub_240DAC1A0(__b);
      sub_240DAC224(&v164);
      v104 = v103;
      return v100;
    }

    sub_240DADAE4();
    (*(v132 + 16))(v136, v138, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C10, &qword_240DB2F70);
    sub_240DADE94();
    (*(v132 + 8))(v138, v131);
  }

  sub_240DAC1A0(__b);
  v15 = v115;
  v85 = *(v119 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  v86 = v164;

  v16 = sub_240DAD9F4();
  v87 = v15;
  v88 = v16;
  v89 = v15;
  if (v15)
  {
    v43 = v89;

    sub_240DAC224(&v164);
    v104 = v43;
    return v100;
  }

  v81 = v88;

  v17 = v87;
  v159 = v81;
  v82 = *(v119 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  sub_240DADA14();
  v83 = v17;
  v84 = v17;
  if (v17)
  {
    v42 = v84;

    sub_240DAC224(&v164);
    v104 = v42;
    return v100;
  }

  v76 = *(v119 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  v18 = sub_240DA09C8();
  v19 = v83;
  v77 = v18;
  v20 = sub_240DAD9C4();
  v78 = v19;
  v79 = v20;
  v80 = v19;
  if (v19)
  {
    v41 = v80;

    sub_240DAC224(&v164);
    v104 = v41;
    return v100;
  }

  v21 = v129;
  v62 = v79;

  v158 = v62;
  v22 = sub_240D9C574();
  (*(v126 + 16))(v21, v22, v125);
  v65 = 7;
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  v74 = sub_240DADC24();
  v75 = sub_240DADF64();
  v63 = 17;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v64 = 32;
  v23 = swift_allocObject();
  v24 = v66;
  v67 = v23;
  *(v23 + 16) = v120;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v67;
  v71 = v25;
  *(v25 + 16) = v121;
  *(v25 + 24) = v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  v70 = sub_240DAE1D4();
  v72 = v27;

  v28 = v68;
  v29 = v72;
  *v72 = v122;
  v29[1] = v28;

  v30 = v69;
  v31 = v72;
  v72[2] = v123;
  v31[3] = v30;

  v32 = v71;
  v33 = v72;
  v72[4] = v124;
  v33[5] = v32;
  sub_240D7F8DC();

  if (os_log_type_enabled(v74, v75))
  {
    v55 = sub_240DADFD4();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v54 = 0;
    v56 = sub_240D98680(0, v53, v53);
    v57 = sub_240D98680(v54, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v58 = &v157;
    v157 = v55;
    v59 = &v156;
    v156 = v56;
    v60 = &v155;
    v155 = v57;
    sub_240D986D4(0, &v157);
    sub_240D986D4(1, v58);
    v34 = v78;
    v153 = v122;
    v154 = v68;
    sub_240D986E8(&v153, v58, v59, v60);
    v61 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v153 = v123;
      v154 = v69;
      sub_240D986E8(&v153, &v157, &v156, &v155);
      v51 = 0;
      v153 = v124;
      v154 = v71;
      sub_240D986E8(&v153, &v157, &v156, &v155);
      v50 = 0;
      _os_log_impl(&dword_240CB9000, v74, v75, "Post data insertion database has: %lld entries", v55, 0xCu);
      v49 = 0;
      sub_240D987EC(v56, 0, v53);
      sub_240D987EC(v57, v49, MEMORY[0x277D84F70] + 8);
      sub_240DADFB4();

      v52 = v50;
    }
  }

  else
  {

    v52 = v78;
  }

  v47 = v52;
  MEMORY[0x277D82BD8](v74);
  (*(v126 + 8))(v129, v125);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  v45 = sub_240DAE1D4();
  v44 = v35;
  v36 = sub_240DADD64();
  v37 = v44;
  v38 = v81;
  *v44 = v36;
  v37[1] = v39;
  v37[5] = MEMORY[0x277D83B88];
  v37[2] = v38;
  sub_240D7F8DC();
  v48 = sub_240DADCA4();
  sub_240DAC224(&v164);
  return v48;
}

uint64_t sub_240DA0BA0(uint64_t a1)
{
  v187 = a1;
  v184 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v209 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v201[1] = 0;
  v201[0] = 0;
  v170 = sub_240DADAB4();
  v171 = *(v170 - 8);
  v172 = v171;
  MEMORY[0x28223BE20](v170 - 8);
  v173 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v173;
  v174 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C18, &qword_240DB2F78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v184);
  v175 = &v37 - v174;
  v176 = sub_240DADC54();
  v177 = *(v176 - 8);
  v178 = v177;
  v180 = *(v177 + 64);
  v3 = MEMORY[0x28223BE20](v187);
  v182 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  v179 = &v37 - v182;
  v4 = MEMORY[0x28223BE20](v3);
  v181 = &v37 - v182;
  v5 = MEMORY[0x28223BE20](v4);
  v183 = &v37 - v182;
  v217 = v5;
  v216 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C20, &qword_240DB2F80);
  sub_240DAE1D4();
  v185 = MEMORY[0x277D837D0];
  v186 = MEMORY[0x277D837E0];
  v215 = sub_240DADCA4();
  v211[0] = sub_240DADD64();
  v211[1] = v6;
  v188 = v211;
  sub_240DADCC4();
  sub_240D7F920(v188);
  if (!v213)
  {
    sub_240DAE124();
    __break(1u);
  }

  v163 = v168;
  v158 = v214;
  sub_240D8634C(v212, v214);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C28, &qword_240DB2F88);
  v160 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v159 = v210;
  v209 = v210;
  v206[0] = sub_240DADD64();
  v206[1] = v7;
  v161 = v206;
  sub_240DADCC4();
  sub_240D7F920(v161);
  v162 = *(v169 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  v8 = sub_240DA09C8();
  v9 = v163;
  v164 = v8;
  v10 = sub_240DAD9C4();
  v165 = v9;
  v166 = v10;
  v167 = v9;
  if (v9)
  {
    v38 = v167;

    sub_240D86770(v207);

    sub_240DAC728(&v215);
    result = v38;
    v39 = v38;
  }

  else
  {
    v157 = v166;

    v205 = v157;
    v204 = 1;
    v156 = v208 != 0;
    if (v208)
    {
      sub_240D862BC(v207, v190);
      if (!v190[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v153 = v191;
      sub_240D8634C(v190, v191);
      swift_dynamicCast();
      v205 = v189;
      v204 = 0;
      v154 = 0;
      v155 = v189;
    }

    else
    {
      v154 = 1;
      v155 = v157;
    }

    v11 = v183;
    v143 = v155;
    v144 = v154;
    v12 = sub_240D9C574();
    v145 = *(v178 + 16);
    v146 = (v178 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v145(v11, v12, v176);
    v151 = sub_240DADC24();
    v147 = v151;
    v150 = sub_240DADF64();
    v148 = v150;
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
    v152 = sub_240DAE1D4();
    if (os_log_type_enabled(v151, v150))
    {
      v141 = v165;
      v133 = sub_240DADFD4();
      v129 = v133;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
      v131 = 0;
      v134 = sub_240D98680(0, v130, v130);
      v132 = v134;
      v135 = sub_240D98680(v131, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v192[0] = v133;
      v191[6] = v134;
      v191[5] = v135;
      v136 = 0;
      v137 = v192;
      sub_240D986D4(0, v192);
      sub_240D986D4(v136, v137);
      v191[4] = v152;
      v138 = &v37;
      MEMORY[0x28223BE20](&v37);
      v139 = &v37 - 6;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
      sub_240D98764();
      v13 = v141;
      sub_240DADDF4();
      v142 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_240CB9000, v147, v148, "Starting DB Search", v129, 2u);
        v127 = 0;
        sub_240D987EC(v132, 0, v130);
        sub_240D987EC(v135, v127, MEMORY[0x277D84F70] + 8);
        sub_240DADFB4();

        v128 = v142;
      }
    }

    else
    {

      v128 = v165;
    }

    v122 = v128;

    v108 = *(v178 + 8);
    v109 = (v178 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108(v183, v176);
    v110 = *(v169 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

    v123 = sub_240DADE64();
    v118 = v14;
    v111 = v123;
    v112 = v14;
    v116 = 0;
    v119 = sub_240DAE1D4();
    v113 = v119;
    v114 = sub_240DADA74();
    v120 = sub_240DAE1D4();
    v115 = v120;
    v117 = sub_240DA1EB8();
    v121 = sub_240DA1EC4();
    sub_240DA1ED0();
    v15 = v122;
    v16 = sub_240DADA04();
    v124 = v15;
    v125 = v16;
    v126 = v15;
    if (v15)
    {
      v37 = v126;

      sub_240D98B10(v111, v112);

      sub_240D86770(v207);

      sub_240DAC728(&v215);
      return v37;
    }

    else
    {
      v17 = v181;
      v102 = v125;

      sub_240D98B10(v111, v112);

      v203 = v102;
      v18 = sub_240D9C574();
      v145(v17, v18, v176);
      v106 = sub_240DADC24();
      v103 = v106;
      v105 = sub_240DADF64();
      v104 = v105;
      v107 = sub_240DAE1D4();
      if (os_log_type_enabled(v106, v105))
      {
        v100 = v124;
        v92 = sub_240DADFD4();
        v88 = v92;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v90 = 0;
        v93 = sub_240D98680(0, v89, v89);
        v91 = v93;
        v94 = sub_240D98680(v90, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v193 = v92;
        v192[3] = v93;
        v192[2] = v94;
        v95 = 0;
        v96 = &v193;
        sub_240D986D4(0, &v193);
        sub_240D986D4(v95, v96);
        v192[1] = v107;
        v97 = &v37;
        MEMORY[0x28223BE20](&v37);
        v98 = &v37 - 6;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
        sub_240D98764();
        v19 = v100;
        sub_240DADDF4();
        v101 = v19;
        if (v19)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_240CB9000, v103, v104, "Completed DB Search", v88, 2u);
          v86 = 0;
          sub_240D987EC(v91, 0, v89);
          sub_240D987EC(v94, v86, MEMORY[0x277D84F70] + 8);
          sub_240DADFB4();

          v87 = v101;
        }
      }

      else
      {

        v87 = v124;
      }

      v20 = v179;
      v67 = v87;

      v108(v181, v176);
      v68 = sub_240DADE84();
      v202 = v68;
      v21 = sub_240D9C574();
      v145(v20, v21, v176);
      v75 = 7;
      v76 = swift_allocObject();
      *(v76 + 16) = v68;
      v85 = sub_240DADC24();
      v69 = v85;
      v84 = sub_240DADF64();
      v70 = v84;
      v71 = 17;
      v79 = swift_allocObject();
      v72 = v79;
      *(v79 + 16) = 0;
      v80 = swift_allocObject();
      v73 = v80;
      *(v80 + 16) = 8;
      v74 = 32;
      v22 = swift_allocObject();
      v23 = v76;
      v77 = v22;
      *(v22 + 16) = sub_240DAC754;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v77;
      v83 = v24;
      v78 = v24;
      *(v24 + 16) = sub_240DAC7A8;
      *(v24 + 24) = v25;
      v81 = sub_240DAE1D4();
      v82 = v26;

      v27 = v79;
      v28 = v82;
      *v82 = sub_240DAC75C;
      v28[1] = v27;

      v29 = v80;
      v30 = v82;
      v82[2] = sub_240DAC764;
      v30[3] = v29;

      v31 = v82;
      v32 = v83;
      v82[4] = sub_240DAC7B4;
      v31[5] = v32;
      sub_240D7F8DC();

      if (os_log_type_enabled(v85, v84))
      {
        v64 = v67;
        v60 = sub_240DADFD4();
        v56 = v60;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v58 = 0;
        v61 = sub_240D98680(0, v57, v57);
        v59 = v61;
        v62 = sub_240D98680(v58, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v198[0] = v60;
        v197 = v61;
        v196 = v62;
        v63 = v198;
        sub_240D986D4(0, v198);
        sub_240D986D4(1, v63);
        v33 = v64;
        v194 = sub_240DAC75C;
        v195 = v72;
        sub_240D986E8(&v194, v63, &v197, &v196);
        v65 = v33;
        v66 = v33;
        if (v33)
        {
          v54 = 0;

          __break(1u);
        }

        else
        {
          v194 = sub_240DAC764;
          v195 = v73;
          sub_240D986E8(&v194, v198, &v197, &v196);
          v52 = 0;
          v53 = 0;
          v194 = sub_240DAC7B4;
          v195 = v78;
          sub_240D986E8(&v194, v198, &v197, &v196);
          v50 = 0;
          v51 = 0;
          _os_log_impl(&dword_240CB9000, v69, v70, "Search returned: %ld results", v56, 0xCu);
          v49 = 0;
          sub_240D987EC(v59, 0, v57);
          sub_240D987EC(v62, v49, MEMORY[0x277D84F70] + 8);
          sub_240DADFB4();

          v55 = v50;
        }
      }

      else
      {

        v55 = v67;
      }

      v47 = v55;

      v108(v179, v176);

      v200 = v102;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C38, &qword_240DB2F90);
      sub_240DAC8A0();
      sub_240DADF54();
      for (i = v47; ; i = v44)
      {
        v45 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C48, &qword_240DB2F98);
        sub_240DAE0E4();
        if ((*(v172 + 48))(v175, 1, v170) == 1)
        {
          break;
        }

        v44 = v45;
        (*(v172 + 32))(v173, v175, v170);
        v42 = sub_240DADA94();
        v43 = v34;
        sub_240DADAA4();
        v198[3] = v35;
        v199 = 0;
        v198[1] = v42;
        v198[2] = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C50, &unk_240DB2FA0);
        sub_240DADCD4();
        (*(v172 + 8))(v173, v170);
      }

      v40 = v45;
      sub_240DAC928(v201);
      v41 = v215;

      sub_240D86770(v207);

      sub_240DAC728(&v215);
      return v41;
    }
  }

  return result;
}

uint64_t sub_240DA2088(uint64_t a1)
{
  if (a1)
  {

    v8 = sub_240DAD9E4();
    if (!v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
      sub_240DAE1D4();
      v7 = v3;
      *v3 = sub_240DADD64();
      v7[1] = v4;
      v7[5] = MEMORY[0x277D83B88];
      v7[2] = v8;
      sub_240D7F8DC();
      return sub_240DADCA4();
    }
  }

  else
  {

    sub_240DA09C8();
    v11 = sub_240DAD9C4();
    if (!v12)
    {

      sub_240DADA34();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
      sub_240DAE1D4();
      v9 = v1;
      *v1 = sub_240DADD64();
      v9[1] = v2;
      v9[5] = MEMORY[0x277D84A28];
      v9[2] = v11;
      sub_240D7F8DC();
      return sub_240DADCA4();
    }
  }

  return v6;
}

uint64_t sub_240DA2664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v75 = a3;
  v103 = a1;
  v104 = a2;
  v123 = 0;
  v77 = sub_240DAC9B4;
  v78 = sub_240DACA28;
  v79 = sub_240DACB14;
  v80 = sub_240DACB04;
  v81 = sub_240DACB0C;
  v82 = sub_240DACB20;
  v143 = *MEMORY[0x277D85DE8];
  v139 = 0;
  v138 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v99 = 0;
  v83 = sub_240DADC54();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = &v38 - v86;
  v117 = sub_240DAD624();
  v114 = *(v117 - 8);
  v115 = v117 - 8;
  v88 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v99);
  v116 = &v38 - v88;
  v98 = sub_240DAD674();
  v90 = *(v98 - 8);
  v89 = v98 - 8;
  v91 = v90;
  v92 = *(v90 + 64);
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v103);
  v94 = &v38 - v93;
  v95 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v113 = &v38 - v95;
  v139 = &v38 - v95;
  v96 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v106 = &v38 - v96;
  v138 = &v38 - v96;
  v136 = v8;
  v137 = v9;
  v135 = v3;
  v119 = 0x277CCA000uLL;
  v10 = objc_opt_self();
  v120 = 0x1FB108000uLL;
  v97 = [v10 0x1FB10863BLL];
  v105 = 1;
  v101 = [v97 URLsForDirectory:14 inDomains:?];
  MEMORY[0x277D82BD8](v97);
  v100 = sub_240DADE54();
  sub_240DADEB4();

  MEMORY[0x277D82BD8](v101);
  v11 = sub_240DAE1C4();
  v108 = &v133;
  v133 = v11;
  v134 = v12;
  v122 = 1;
  v13 = sub_240DADD64();
  v102 = v14;
  MEMORY[0x245CD0520](v13);

  v132[2] = v103;
  v132[3] = v104;
  v111 = MEMORY[0x277D837D0];
  sub_240DAE1A4();
  v15 = sub_240DADD64();
  v107 = v16;
  MEMORY[0x245CD0520](v15);

  v110 = v133;
  v109 = v134;

  sub_240DAC174(v108);
  v17 = sub_240DADD54();
  v118 = v132;
  v132[0] = v17;
  v132[1] = v18;
  v112 = sub_240D9C1A8();
  sub_240DA35FC(v116);
  sub_240DAD664();
  (*(v114 + 8))(v116, v117);
  sub_240D7F920(v118);
  v142 = 0;
  v126 = [objc_opt_self() (v120 + 1595)];
  sub_240DAD654();
  v121 = v19;
  v125 = sub_240DADCF4();

  v131 = v142;
  v127 = [v126 createDirectoryAtPath:v125 withIntermediateDirectories:v122 & 1 attributes:v123 error:&v131];
  v124 = v131;
  MEMORY[0x277D82BE0](v131);
  v20 = v142;
  v142 = v124;
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);
  if (v127)
  {
    v21 = v87;
    v22 = sub_240D9C574();
    (*(v84 + 16))(v21, v22, v83);
    v59 = v91;
    v57 = *(v90 + 16);
    v58 = v90 + 16;
    v57(v94, v113, v98);
    v60 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v64 = 7;
    v61 = swift_allocObject();
    (*(v90 + 32))(v61 + v60, v94, v98);

    v63 = 32;
    v23 = swift_allocObject();
    v24 = v61;
    v65 = v23;
    *(v23 + 16) = v77;
    *(v23 + 24) = v24;

    v73 = sub_240DADC24();
    v74 = sub_240DADF64();
    v62 = 17;
    v67 = swift_allocObject();
    *(v67 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v25 = swift_allocObject();
    v26 = v65;
    v66 = v25;
    *(v25 + 16) = v78;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v66;
    v70 = v27;
    *(v27 + 16) = v79;
    *(v27 + 24) = v28;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
    v69 = sub_240DAE1D4();
    v71 = v29;

    v30 = v67;
    v31 = v71;
    *v71 = v80;
    v31[1] = v30;

    v32 = v68;
    v33 = v71;
    v71[2] = v81;
    v33[3] = v32;

    v34 = v70;
    v35 = v71;
    v71[4] = v82;
    v35[5] = v34;
    sub_240D7F8DC();

    if (os_log_type_enabled(v73, v74))
    {
      v50 = sub_240DADFD4();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
      v51 = sub_240D98680(0, v49, v49);
      v52 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v53 = &v130;
      v130 = v50;
      v54 = &v141;
      v141 = v51;
      v55 = &v140;
      v140 = v52;
      sub_240D986D4(2, &v130);
      sub_240D986D4(1, v53);
      v36 = v76;
      v128 = v80;
      v129 = v67;
      sub_240D986E8(&v128, v53, v54, v55);
      v56 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v128 = v81;
        v129 = v68;
        sub_240D986E8(&v128, &v130, &v141, &v140);
        v47 = 0;
        v128 = v82;
        v129 = v70;
        sub_240D986E8(&v128, &v130, &v141, &v140);
        v46 = 0;
        _os_log_impl(&dword_240CB9000, v73, v74, "Created Vector DB Directory: %s", v50, 0xCu);
        sub_240D987EC(v51, 0, v49);
        sub_240D987EC(v52, 1, MEMORY[0x277D84F70] + 8);
        sub_240DADFB4();

        v48 = v46;
      }
    }

    else
    {

      v48 = v76;
    }

    v43 = v48;
    MEMORY[0x277D82BD8](v73);
    (*(v84 + 8))(v87, v83);
    v57(v75, v113, v98);
    v45 = *(v90 + 8);
    v44 = v90 + 8;
    v45(v113, v98);
    return (v45)(v106, v98);
  }

  else
  {
    v39 = v142;
    v40 = sub_240DAD614();
    MEMORY[0x277D82BD8](v39);
    swift_willThrow();
    v42 = *(v90 + 8);
    v41 = v90 + 8;
    v42(v113, v98);
    return (v42)(v106, v98);
  }
}

uint64_t sub_240DA35FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC91D8];
  v1 = sub_240DAD624();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_240DA38C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_240DADD64();
  v16 = MEMORY[0x245CD00E0](a1, a2, v3);

  if (v16)
  {
    v12 = *MEMORY[0x277D781F0];
    v4 = sub_240DADA84();
    return (*(*(v4 - 8) + 104))(a3, v12);
  }

  else
  {
    v6 = sub_240DADD64();
    v11 = MEMORY[0x245CD00E0](a1, a2, v6);

    if (v11)
    {
      v10 = *MEMORY[0x277D781F8];
      v7 = sub_240DADA84();
      return (*(*(v7 - 8) + 104))(a3, v10);
    }

    else
    {
      v9 = *MEMORY[0x277D781E8];
      v8 = sub_240DADA84();
      return (*(*(v8 - 8) + 104))(a3, v9);
    }
  }
}

uint64_t sub_240DA3A94@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D78218];
  v1 = sub_240DADAC4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_240DA3B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D78218];
  v1 = sub_240DADAC4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_240DA3B9C(uint64_t a1)
{
  v192 = a1;
  v193 = sub_240DACB2C;
  v196 = sub_240DACB34;
  v200 = sub_240DACC34;
  v202 = sub_240DACC24;
  v204 = sub_240DACC2C;
  v207 = sub_240DACC40;
  v166 = sub_240DACC4C;
  v167 = sub_240DACC54;
  v168 = sub_240DACD54;
  v169 = sub_240DACD44;
  v170 = sub_240DACD4C;
  v171 = sub_240DACD60;
  v172 = "Fatal error";
  v173 = "Unexpectedly found nil while unwrapping an Optional value";
  v174 = "AppleMediaDiscovery/AMDVectorDB.swift";
  v259 = *MEMORY[0x277D85DE8];
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v232 = 0;
  v233 = 0;
  v230 = 0;
  v224 = 0;
  v225 = 0;
  v222 = 0;
  v185 = 0;
  v175 = sub_240DAD674();
  v176 = *(v175 - 8);
  v177 = v175 - 8;
  v178 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v179 = &v60 - v178;
  v189 = sub_240DADC54();
  v187 = *(v189 - 8);
  v188 = v189 - 8;
  v181 = v187[8];
  v180 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v192);
  v182 = &v60 - v180;
  v183 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v3 = &v60 - v183;
  v184 = &v60 - v183;
  v239 = v2;
  v238 = v4;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v237 = sub_240DADCA4();
  v5 = sub_240D9C574();
  v190 = v187[2];
  v191 = v187 + 2;
  v190(v3, v5, v189);

  v198 = 7;
  v194 = swift_allocObject();
  *(v194 + 16) = v192;

  v197 = 32;
  v6 = swift_allocObject();
  v7 = v194;
  v199 = v6;
  *(v6 + 16) = v193;
  *(v6 + 24) = v7;

  v211 = sub_240DADC24();
  v212 = sub_240DADF64();
  v195 = 17;
  v203 = swift_allocObject();
  *(v203 + 16) = 32;
  v205 = swift_allocObject();
  *(v205 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v199;
  v201 = v8;
  *(v8 + 16) = v196;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v201;
  v208 = v10;
  *(v10 + 16) = v200;
  *(v10 + 24) = v11;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  v206 = sub_240DAE1D4();
  v209 = v12;

  v13 = v203;
  v14 = v209;
  *v209 = v202;
  v14[1] = v13;

  v15 = v205;
  v16 = v209;
  v209[2] = v204;
  v16[3] = v15;

  v17 = v208;
  v18 = v209;
  v209[4] = v207;
  v18[5] = v17;
  sub_240D7F8DC();

  if (os_log_type_enabled(v211, v212))
  {
    v158 = sub_240DADFD4();
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v159 = sub_240D98680(0, v157, v157);
    v160 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v161 = &v215;
    v215 = v158;
    v162 = &v241;
    v241 = v159;
    v163 = &v240;
    v240 = v160;
    sub_240D986D4(2, &v215);
    sub_240D986D4(1, v161);
    v19 = v165;
    v213 = v202;
    v214 = v203;
    sub_240D986E8(&v213, v161, v162, v163);
    v164 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v213 = v204;
      v214 = v205;
      sub_240D986E8(&v213, &v215, &v241, &v240);
      v154 = 0;
      v213 = v207;
      v214 = v208;
      sub_240D986E8(&v213, &v215, &v241, &v240);
      v153 = 0;
      _os_log_impl(&dword_240CB9000, v211, v212, "Deletion Payload: %s", v158, 0xCu);
      sub_240D987EC(v159, 0, v157);
      sub_240D987EC(v160, 1, MEMORY[0x277D84F70] + 8);
      sub_240DADFB4();

      v155 = v153;
    }
  }

  else
  {

    v155 = v165;
  }

  v149 = v155;
  MEMORY[0x277D82BD8](v211);
  v150 = v187[1];
  v151 = v187 + 1;
  v150(v184, v189);
  v20 = sub_240DADD64();
  v152 = v236;
  v236[0] = v20;
  v236[1] = v21;
  sub_240DADCC4();
  sub_240D7F920(v152);
  v148 = v258 == 0;
  if (v258)
  {
    sub_240D862BC(v257, v254);
    if (!v255)
    {
      sub_240DAE124();
      __break(1u);
    }

    v130 = v256;
    sub_240D8634C(v254, v256);
    swift_dynamicCast();
    v131 = v234;
    v132 = v235;
    v232 = v234;
    v233 = v235;
    v253 = 0;
    v133 = objc_opt_self();

    v135 = sub_240DADCF4();

    v231 = v253;
    v136 = [v133 fetchVectorDBConfigForDBName:v135 error:&v231];
    v134 = v231;
    MEMORY[0x277D82BE0](v231);
    v32 = v253;
    v253 = v134;
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v135);
    if (v136)
    {
      v129 = v136;
      v33 = v182;
      v114 = v136;
      v115 = sub_240DADC84();
      v230 = v115;
      MEMORY[0x277D82BD8](v114);
      v34 = sub_240D9C574();
      v190(v33, v34, v189);

      v119 = 7;
      v116 = swift_allocObject();
      *(v116 + 16) = v115;

      v118 = 32;
      v35 = swift_allocObject();
      v36 = v116;
      v120 = v35;
      *(v35 + 16) = v166;
      *(v35 + 24) = v36;

      v127 = sub_240DADC24();
      v128 = sub_240DADF64();
      v117 = 17;
      v122 = swift_allocObject();
      *(v122 + 16) = 32;
      v123 = swift_allocObject();
      *(v123 + 16) = 8;
      v37 = swift_allocObject();
      v38 = v120;
      v121 = v37;
      *(v37 + 16) = v167;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v121;
      v125 = v39;
      *(v39 + 16) = v168;
      *(v39 + 24) = v40;
      v124 = sub_240DAE1D4();
      v126 = v41;

      v42 = v122;
      v43 = v126;
      *v126 = v169;
      v43[1] = v42;

      v44 = v123;
      v45 = v126;
      v126[2] = v170;
      v45[3] = v44;

      v46 = v125;
      v47 = v126;
      v126[4] = v171;
      v47[5] = v46;
      sub_240D7F8DC();

      if (os_log_type_enabled(v127, v128))
      {
        v107 = sub_240DADFD4();
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v108 = sub_240D98680(0, v106, v106);
        v109 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v110 = &v218;
        v218 = v107;
        v111 = &v243;
        v243 = v108;
        v112 = &v242;
        v242 = v109;
        sub_240D986D4(2, &v218);
        sub_240D986D4(1, v110);
        v48 = v149;
        v216 = v169;
        v217 = v122;
        sub_240D986E8(&v216, v110, v111, v112);
        v113 = v48;
        if (v48)
        {

          __break(1u);
        }

        else
        {
          v216 = v170;
          v217 = v123;
          sub_240D986E8(&v216, &v218, &v243, &v242);
          v104 = 0;
          v216 = v171;
          v217 = v125;
          sub_240D986E8(&v216, &v218, &v243, &v242);
          v103 = 0;
          _os_log_impl(&dword_240CB9000, v127, v128, "Fetched the config: %s", v107, 0xCu);
          sub_240D987EC(v108, 0, v106);
          sub_240D987EC(v109, 1, MEMORY[0x277D84F70] + 8);
          sub_240DADFB4();

          v105 = v103;
        }
      }

      else
      {

        v105 = v149;
      }

      v101 = v105;
      MEMORY[0x277D82BD8](v127);
      v150(v182, v189);
      v229[0] = sub_240DADD64();
      v229[1] = v49;
      v102 = v252;
      sub_240DAE174();
      sub_240DADCC4();
      v100 = v251[3] == 0;
      v99 = v100;
      sub_240D86770(v251);
      sub_240D92370(v252);
      sub_240D7F920(v229);
      if (v99)
      {
        v91 = 1;
        v92 = sub_240DADD64();
        v93 = v50;
        v51 = sub_240DADD64();
        v95 = v244;
        v244[3] = MEMORY[0x277D837D0];
        v244[0] = v51;
        v244[1] = v52;
        v94 = v219;
        v219[0] = v92;
        v219[1] = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
        v96 = &v237;
        sub_240DADCD4();
        v97 = v237;

        sub_240D86770(v257);
        sub_240D9060C(v96);
        return v97;
      }

      else
      {
        v228[0] = sub_240DADD64();
        v228[1] = v53;
        v90 = v249;
        sub_240DAE174();
        sub_240DADCC4();
        if (!v248[3])
        {
          sub_240DAE124();
          __break(1u);
        }

        v83 = v250;
        sub_240D8634C(v248, v250);
        swift_dynamicCast();
        v84 = v226;
        v85 = v227;
        v224 = v226;
        v225 = v227;
        sub_240D92370(v249);
        sub_240D7F920(v228);
        v247 = 0;
        v86 = objc_opt_self();

        v88 = sub_240DADCF4();

        v223 = v247;
        v89 = [v86 deleteVectorDBEntryForDBName:v88 error:&v223];
        v87 = v223;
        MEMORY[0x277D82BE0](v223);
        v54 = v247;
        v247 = v87;
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v88);
        if (!v89)
        {
          v63 = v247;
          v64 = sub_240DAD614();
          MEMORY[0x277D82BD8](v63);
          swift_willThrow();

          sub_240D86770(v257);
          sub_240D9060C(&v237);
          v147 = v64;
          return v156;
        }

        v82 = v89;
        v71 = v89;
        v72 = sub_240DADC84();
        v222 = v72;
        MEMORY[0x277D82BD8](v71);
        v74 = sub_240DADD64();
        v73 = v55;

        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
        v76 = v246;
        v246[3] = v56;
        v246[0] = v72;
        v75 = v221;
        v221[0] = v74;
        v221[1] = v73;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
        sub_240DADCD4();
        v245 = 0;
        v80 = [objc_opt_self() defaultManager];
        sub_240DAD634();
        v79 = sub_240DAD644();
        (*(v176 + 8))(v179, v175);
        v220 = v245;
        v81 = [v80 removeItemAtURL:v79 error:&v220];
        v78 = v220;
        MEMORY[0x277D82BE0](v220);
        v57 = v245;
        v245 = v78;
        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v79);
        MEMORY[0x277D82BD8](v80);
        if ((v81 & 1) == 0)
        {
          v61 = v245;
          v62 = sub_240DAD614();
          MEMORY[0x277D82BD8](v61);
          swift_willThrow();

          sub_240D86770(v257);
          sub_240D9060C(&v237);
          v147 = v62;
          return v156;
        }

        v67 = sub_240DADD64();
        v68 = v58;

        v244[7] = MEMORY[0x277D837D0];
        v244[4] = v84;
        v244[5] = v85;
        v219[2] = v67;
        v219[3] = v68;
        v69 = &v237;
        sub_240DADCD4();
        v70 = v237;

        sub_240D86770(v257);
        sub_240D9060C(v69);
        return v70;
      }
    }

    v65 = v253;
    v66 = sub_240DAD614();
    MEMORY[0x277D82BD8](v65);
    swift_willThrow();

    sub_240D86770(v257);
    sub_240D9060C(&v237);
    v147 = v66;
  }

  else
  {
    sub_240DAC110();
    v137 = 1;
    v145 = sub_240DADD64();
    v143 = v22;
    v144 = sub_240D9D87C(0);
    v139 = sub_240DAE1D4();
    v138 = v23;
    v140 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](v140);
    v24 = sub_240DADD04();
    v25 = v138;
    *v138 = v24;
    v25[1] = v26;
    v27 = sub_240DADD64();
    v28 = v138;
    v142 = MEMORY[0x277D837D0];
    v138[5] = MEMORY[0x277D837D0];
    v28[2] = v27;
    v28[3] = v29;
    sub_240D7F8DC();
    v141 = v30;
    MEMORY[0x277D82BD8](v140);
    v31 = sub_240DADCA4();
    v146 = sub_240D9FA30(v145, v143, v144, v31);
    swift_willThrow();
    sub_240D86770(v257);
    sub_240D9060C(&v237);
    v147 = v146;
  }

  return v156;
}

uint64_t sub_240DA52CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_240DA5300@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_240DA54D4(uint64_t a1)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v54[1] = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v54[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v54[0] = sub_240DADCA4();
  v53[0] = sub_240DADD64();
  v53[1] = v1;
  sub_240DADCC4();
  sub_240D7F920(v53);
  if (v68[3])
  {
    sub_240D862BC(v68, v65);
    if (!v66)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v65, v67);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
    swift_dynamicCast();
    v51 = v52;
    type metadata accessor for AMDVectorDBManager();

    v36 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v52);
    if (v43)
    {

      sub_240D86770(v68);
      sub_240D9060C(v54);
    }

    else
    {
      v50 = v36;
      v49[0] = sub_240DADD64();
      v49[1] = v8;
      sub_240DADCC4();
      sub_240D7F920(v49);
      if (v64[3])
      {
        sub_240D862BC(v64, v61);
        if (!v62)
        {
          sub_240DAE124();
          __break(1u);
        }

        sub_240D8634C(v61, v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C68, &qword_240DB2FB0);
        swift_dynamicCast();
        v29 = (*((*v36 & *MEMORY[0x277D85000]) + 0x60))(v48, v15, v16);

        v47 = v29;
        v26 = sub_240DADD64();
        v27 = v17;

        v60 = v35;
        v59 = v29;
        v46[2] = v26;
        v46[3] = v27;
        sub_240DADCD4();
        v58 = 0;
        v28 = objc_opt_self();
        v46[0] = sub_240DADD64();
        v46[1] = v18;
        sub_240DADCC4();
        sub_240D7F920(v46);
        if (!v56)
        {
          sub_240DAE124();
          __break(1u);
        }

        sub_240D8634C(v55, v57);
        swift_dynamicCast();
        v24 = sub_240DADCF4();

        v45 = v58;
        v25 = [v28 updateLastVectorDBRefreshTimestamp:v24 error:&v45];
        v23 = v45;
        MEMORY[0x277D82BE0](v45);
        v19 = v58;
        v58 = v23;
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v24);
        if (v25)
        {
          v44 = sub_240DADC84();
          MEMORY[0x277D82BD8](v25);
          sub_240DADD64();

          v54[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
          v54[3] = v44;
          sub_240DADCD4();
          v22 = v54[0];

          sub_240D86770(v64);
          MEMORY[0x277D82BD8](v36);

          sub_240D86770(v68);
          sub_240D9060C(v54);
          return v22;
        }

        v21 = v58;
        sub_240DAD614();
        MEMORY[0x277D82BD8](v21);
        swift_willThrow();

        sub_240D86770(v64);
        MEMORY[0x277D82BD8](v36);

        sub_240D86770(v68);
        sub_240D9060C(v54);
      }

      else
      {
        sub_240DAC110();
        v34 = sub_240DADD64();
        v32 = v9;
        v33 = sub_240D9D87C(3);
        sub_240DAE1D4();
        v30 = v10;
        v31 = *MEMORY[0x277CCA450];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
        *v30 = sub_240DADD04();
        v30[1] = v11;
        v12 = sub_240DADD64();
        v30[5] = MEMORY[0x277D837D0];
        v30[2] = v12;
        v30[3] = v13;
        sub_240D7F8DC();
        MEMORY[0x277D82BD8](v31);
        v14 = sub_240DADCA4();
        sub_240D9FA30(v34, v32, v33, v14);
        swift_willThrow();
        sub_240D86770(v64);
        MEMORY[0x277D82BD8](v36);

        sub_240D86770(v68);
        sub_240D9060C(v54);
      }
    }
  }

  else
  {
    sub_240DAC110();
    v41 = sub_240DADD64();
    v39 = v2;
    v40 = sub_240D9D87C(2);
    sub_240DAE1D4();
    v37 = v3;
    v38 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v37 = sub_240DADD04();
    v37[1] = v4;
    v5 = sub_240DADD64();
    v37[5] = MEMORY[0x277D837D0];
    v37[2] = v5;
    v37[3] = v6;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v38);
    v7 = sub_240DADCA4();
    sub_240D9FA30(v41, v39, v40, v7);
    swift_willThrow();
    sub_240D86770(v68);
    sub_240D9060C(v54);
  }

  return v42;
}

uint64_t sub_240DA61AC(uint64_t a1)
{
  v35[4] = 0;
  v29 = 0;
  v35[5] = a1;
  v34[0] = sub_240DADD64();
  v34[1] = v1;
  sub_240DADCC4();
  sub_240D7F920(v34);
  if (!v35[3])
  {
    sub_240DAC110();
    v22 = sub_240DADD64();
    v20 = v2;
    v21 = sub_240D9D87C(2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v18 = v3;
    v19 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v18 = sub_240DADD04();
    v18[1] = v4;
    v5 = sub_240DADD64();
    v18[5] = MEMORY[0x277D837D0];
    v18[2] = v5;
    v18[3] = v6;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v19);
    v7 = sub_240DADCA4();
    sub_240D9FA30(v22, v20, v21, v7);
    swift_willThrow();
    sub_240D86770(v35);
    return v23;
  }

  type metadata accessor for AMDVectorDBManager();
  sub_240D862BC(v35, v31);
  if (!v32)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D8634C(v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  swift_dynamicCast();
  v17 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v30);
  if (v24)
  {
    sub_240D86770(v35);
    return v23;
  }

  v29 = v17;
  v27[0] = sub_240DADD64();
  v27[1] = v8;
  sub_240DADCC4();
  sub_240D7F920(v27);
  if (v28[3])
  {
    sub_240D862BC(v28, v26);
    if (v26[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C70, &qword_240DB2FB8);
      if (swift_dynamicCast())
      {
        v14 = v25;
      }

      else
      {
        v14 = 0;
      }

      v13 = v14;
    }

    else
    {
      sub_240D86770(v26);
      v13 = 0;
    }

    v12 = (*((*v17 & *MEMORY[0x277D85000]) + 0x70))(v13, v9, v10);

    sub_240D86770(v28);
    MEMORY[0x277D82BD8](v17);
    sub_240D86770(v35);
    return v12;
  }

  else
  {
    v16 = (*((*v17 & *MEMORY[0x277D85000]) + 0x70))(0);
    sub_240D86770(v28);
    MEMORY[0x277D82BD8](v17);
    sub_240D86770(v35);
    return v16;
  }
}

uint64_t sub_240DA6998(uint64_t a1)
{
  v44[4] = 0;
  v38 = 0;
  v44[5] = a1;
  v43[0] = sub_240DADD64();
  v43[1] = v1;
  sub_240DADCC4();
  sub_240D7F920(v43);
  if (!v44[3])
  {
    sub_240DAC110();
    v29 = sub_240DADD64();
    v27 = v2;
    v28 = sub_240D9D87C(2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v25 = v3;
    v26 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v25 = sub_240DADD04();
    v25[1] = v4;
    v5 = sub_240DADD64();
    v25[5] = MEMORY[0x277D837D0];
    v25[2] = v5;
    v25[3] = v6;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v26);
    v7 = sub_240DADCA4();
    sub_240D9FA30(v29, v27, v28, v7);
    swift_willThrow();
    sub_240D86770(v44);
    return v30;
  }

  type metadata accessor for AMDVectorDBManager();
  sub_240D862BC(v44, v40);
  if (!v41)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D8634C(v40, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  swift_dynamicCast();
  v24 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v39);
  if (v31)
  {
    sub_240D86770(v44);
    return v30;
  }

  v38 = v24;
  v36[0] = sub_240DADD64();
  v36[1] = v8;
  sub_240DADCC4();
  sub_240D7F920(v36);
  if (!v37[3])
  {
    sub_240DAC110();
    v23 = sub_240DADD64();
    v21 = v9;
    v22 = sub_240D9D87C(3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v19 = v10;
    v20 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v19 = sub_240DADD04();
    v19[1] = v11;
    v12 = sub_240DADD64();
    v19[5] = MEMORY[0x277D837D0];
    v19[2] = v12;
    v19[3] = v13;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v20);
    v14 = sub_240DADCA4();
    sub_240D9FA30(v23, v21, v22, v14);
    swift_willThrow();
    sub_240D86770(v37);
    MEMORY[0x277D82BD8](v24);
    sub_240D86770(v44);
    return v30;
  }

  sub_240D862BC(v37, v33);
  if (!v34)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D8634C(v33, v35);
  swift_dynamicCast();
  v18 = (*((*v24 & *MEMORY[0x277D85000]) + 0x68))(v32, v15, v16);

  sub_240D86770(v37);
  MEMORY[0x277D82BD8](v24);
  sub_240D86770(v44);
  return v18;
}

uint64_t sub_240DA722C(uint64_t a1)
{
  v641 = v2;
  v660 = MEMORY[0x28223BE20](a1);
  v745[4] = *MEMORY[0x277D85DE8];
  v655 = 0;
  v716 = 0;
  v715 = 0;
  v714 = 0;
  v713 = 0;
  v709 = 0;
  v708[1] = 0;
  v708[0] = 0;
  v706 = 0;
  v701 = 0;
  v700 = 0;
  v695 = 0;
  v694 = 0;
  v688 = 0;
  v687 = 0;
  v682 = 0;
  v680 = 0;
  v677 = 0;
  v676 = 0;
  v675 = 0;
  v673 = 0;
  v668 = 0;
  v642 = sub_240DAD674();
  v643 = *(v642 - 8);
  v644 = v643;
  MEMORY[0x28223BE20](0);
  v645 = v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v716 = v645;
  v646 = sub_240DADC54();
  v647 = *(v646 - 8);
  v648 = v647;
  v651 = *(v647 + 64);
  v4 = MEMORY[0x28223BE20](v660);
  v653 = (v651 + 15) & 0xFFFFFFFFFFFFFFF0;
  v649 = v179 - v653;
  v5 = MEMORY[0x28223BE20](v4);
  v650 = v179 - v653;
  v6 = MEMORY[0x28223BE20](v5);
  v652 = v179 - v653;
  v7 = MEMORY[0x28223BE20](v6);
  v654 = v179 - v653;
  v715 = v7;
  v714 = v1;
  v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v658 = MEMORY[0x277D84F70] + 8;
  v657 = MEMORY[0x277D837D0];
  v659 = MEMORY[0x277D837E0];
  v713 = sub_240DADCA4();
  v712[0] = sub_240DADD64();
  v712[1] = v8;
  v661 = v712;
  sub_240DADCC4();
  sub_240D7F920(v661);
  v640 = v745[3] == 0;
  v639 = v640;
  sub_240D86770(v745);
  if (!v639)
  {
    v711[0] = sub_240DADD64();
    v711[1] = v20;
    v626 = v711;
    sub_240DADCC4();
    sub_240D7F920(v626);
    if (!v743)
    {
      sub_240DAE124();
      __break(1u);
    }

    v621 = v744;
    sub_240D8634C(v742, v744);
    v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
    swift_dynamicCast();
    v623 = v710;
    v622 = v710;
    v709 = v710;

    v707 = v623;
    sub_240DACD6C();
    sub_240DADF54();
    for (i = v641; ; i = v407)
    {
      v619 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C78, &qword_240DB2FC8);
      sub_240DAE0E4();
      v620 = v741;
      if (!v741)
      {
        v303 = v619;
        sub_240DACDF4(v708);
        v302 = v713;

        sub_240D9060C(&v713);
        v304 = v303;
        return v302;
      }

      v618 = v620;
      v616 = v620;
      v706 = v620;
      v705[0] = sub_240DADD64();
      v705[1] = v21;
      v617 = v705;
      sub_240DADCC4();
      sub_240D7F920(v617);
      v615 = v740[3] == 0;
      v613 = v615;
      sub_240D86770(v740);
      v614 = v616;
      if (v613)
      {
        v611 = v614;
        v610 = 0;
        sub_240DAC110();
        v601 = 1;
        v609 = sub_240DADD64();
        v607 = v22;
        v608 = sub_240D9D87C(3);
        v603 = sub_240DAE1D4();
        v602 = v23;
        v604 = *MEMORY[0x277CCA450];
        v24 = v604;
        v25 = sub_240DADD04();
        v26 = v602;
        *v602 = v25;
        v26[1] = v27;
        v28 = sub_240DADD64();
        v29 = v602;
        v606 = MEMORY[0x277D837D0];
        v602[5] = MEMORY[0x277D837D0];
        v29[2] = v28;
        v29[3] = v30;
        sub_240D7F8DC();
        v605 = v31;

        v32 = sub_240DADCA4();
        v612 = sub_240D9FA30(v609, v607, v608, v32);
        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v612;
        return v179[0];
      }

      v704[0] = sub_240DADD64();
      v704[1] = v33;
      v600 = v704;
      sub_240DADCC4();
      sub_240D7F920(v600);
      if (!v738)
      {
        sub_240DAE124();
        __break(1u);
      }

      v594 = v739;
      sub_240D8634C(v737, v739);
      v598 = MEMORY[0x277D84F70] + 8;
      v597 = MEMORY[0x277D837D0];
      swift_dynamicCast();
      v595 = v702;
      v596 = v703;
      v700 = v702;
      v701 = v703;
      v699[0] = sub_240DADD64();
      v699[1] = v34;
      v599 = v699;
      sub_240DADCC4();
      sub_240D7F920(v599);
      v593 = v736[3] == 0;
      v590 = v593;
      sub_240D86770(v736);
      v591 = v596;
      v592 = v616;
      if (v590)
      {
        v588 = v592;
        v587 = v591;
        v586 = 0;
        sub_240DAC110();
        v577 = 1;
        v585 = sub_240DADD64();
        v583 = v35;
        v584 = sub_240D9D87C(3);
        v579 = sub_240DAE1D4();
        v578 = v36;
        v580 = *MEMORY[0x277CCA450];
        v37 = v580;
        v38 = sub_240DADD04();
        v39 = v578;
        *v578 = v38;
        v39[1] = v40;
        v41 = sub_240DADD64();
        v42 = v578;
        v582 = MEMORY[0x277D837D0];
        v578[5] = MEMORY[0x277D837D0];
        v42[2] = v41;
        v42[3] = v43;
        sub_240D7F8DC();
        v581 = v44;

        v45 = sub_240DADCA4();
        v589 = sub_240D9FA30(v585, v583, v584, v45);
        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v589;
        return v179[0];
      }

      v698[0] = sub_240DADD64();
      v698[1] = v46;
      v576 = v698;
      sub_240DADCC4();
      sub_240D7F920(v576);
      if (!v734[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v562 = v735;
      sub_240D8634C(v734, v735);
      swift_dynamicCast();
      v565 = v696;
      v563 = v696;
      v566 = v697;
      v571 = v697;
      v694 = v696;
      v695 = v697;
      v564 = *sub_240D9D670();

      v693 = v564;
      v692[2] = v565;
      v692[3] = v566;
      v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
      v567 = v568;
      v569 = sub_240D87BE4();
      v570 = &v693;
      v572 = sub_240DADE04();
      sub_240D86744(v570);
      v573 = v571;
      v574 = v596;
      v575 = v616;
      if ((v572 & 1) == 0)
      {
        v560 = v575;
        v559 = v574;
        v558 = v573;
        v557 = 0;
        sub_240DAC110();
        v548 = 1;
        v556 = sub_240DADD64();
        v554 = v47;
        v555 = sub_240D9D87C(3);
        v550 = sub_240DAE1D4();
        v549 = v48;
        v551 = *MEMORY[0x277CCA450];
        v49 = v551;
        v50 = sub_240DADD04();
        v51 = v549;
        *v549 = v50;
        v51[1] = v52;
        v53 = sub_240DADD64();
        v54 = v549;
        v553 = MEMORY[0x277D837D0];
        v549[5] = MEMORY[0x277D837D0];
        v54[2] = v53;
        v54[3] = v55;
        sub_240D7F8DC();
        v552 = v56;

        v57 = sub_240DADCA4();
        v561 = sub_240D9FA30(v556, v554, v555, v57);
        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v561;
        return v179[0];
      }

      v692[0] = sub_240DADD64();
      v692[1] = v58;
      v547 = v692;
      sub_240DADCC4();
      sub_240D7F920(v547);
      v546 = v733[3] == 0;
      v542 = v546;
      sub_240D86770(v733);
      v543 = v571;
      v544 = v596;
      v545 = v616;
      if (v542)
      {
        v540 = v545;
        v539 = v544;
        v538 = v543;
        v537 = 0;
        sub_240DAC110();
        v528 = 1;
        v536 = sub_240DADD64();
        v534 = v59;
        v535 = sub_240D9D87C(3);
        v530 = sub_240DAE1D4();
        v529 = v60;
        v531 = *MEMORY[0x277CCA450];
        v61 = v531;
        v62 = sub_240DADD04();
        v63 = v529;
        *v529 = v62;
        v63[1] = v64;
        v65 = sub_240DADD64();
        v66 = v529;
        v533 = MEMORY[0x277D837D0];
        v529[5] = MEMORY[0x277D837D0];
        v66[2] = v65;
        v66[3] = v67;
        sub_240D7F8DC();
        v532 = v68;

        v69 = sub_240DADCA4();
        v541 = sub_240D9FA30(v536, v534, v535, v69);
        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v541;
        return v179[0];
      }

      v691[0] = sub_240DADD64();
      v691[1] = v70;
      v527 = v691;
      sub_240DADCC4();
      sub_240D7F920(v527);
      if (!v731[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v517 = v732;
      sub_240D8634C(v731, v732);
      swift_dynamicCast();
      v518 = v689;
      v521 = v690;
      v687 = v689;
      v688 = v690;
      v519 = *sub_240D9D670();

      v686 = v519;
      v685[2] = v563;
      v685[3] = v571;
      v520 = &v686;
      v522 = sub_240DADE04();
      sub_240D86744(v520);
      v523 = v521;
      v524 = v571;
      v525 = v596;
      v526 = v616;
      if ((v522 & 1) == 0)
      {
        v515 = v526;
        v514 = v525;
        v513 = v524;
        v512 = v523;
        v511 = 0;
        sub_240DAC110();
        v502 = 1;
        v510 = sub_240DADD64();
        v508 = v71;
        v509 = sub_240D9D87C(3);
        v504 = sub_240DAE1D4();
        v503 = v72;
        v505 = *MEMORY[0x277CCA450];
        v73 = v505;
        v74 = sub_240DADD04();
        v75 = v503;
        *v503 = v74;
        v75[1] = v76;
        v77 = sub_240DADD64();
        v78 = v503;
        v507 = MEMORY[0x277D837D0];
        v503[5] = MEMORY[0x277D837D0];
        v78[2] = v77;
        v78[3] = v79;
        sub_240D7F8DC();
        v506 = v80;

        v81 = sub_240DADCA4();
        v516 = sub_240D9FA30(v510, v508, v509, v81);
        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v516;
        return v179[0];
      }

      v685[0] = sub_240DADD64();
      v685[1] = v82;
      v501 = v685;
      sub_240DADCC4();
      sub_240D7F920(v501);
      v500 = v730[3] == 0;
      v495 = v500;
      sub_240D86770(v730);
      v496 = v521;
      v497 = v571;
      v498 = v596;
      v499 = v616;
      if (v495)
      {
        v493 = v499;
        v492 = v498;
        v491 = v497;
        v490 = v496;
        v489 = 0;
        sub_240DAC110();
        v480 = 1;
        v488 = sub_240DADD64();
        v486 = v83;
        v487 = sub_240D9D87C(3);
        v482 = sub_240DAE1D4();
        v481 = v84;
        v483 = *MEMORY[0x277CCA450];
        v85 = v483;
        v86 = sub_240DADD04();
        v87 = v481;
        *v481 = v86;
        v87[1] = v88;
        v89 = sub_240DADD64();
        v90 = v481;
        v485 = MEMORY[0x277D837D0];
        v481[5] = MEMORY[0x277D837D0];
        v90[2] = v89;
        v90[3] = v91;
        sub_240D7F8DC();
        v484 = v92;

        v93 = sub_240DADCA4();
        v494 = sub_240D9FA30(v488, v486, v487, v93);
        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v494;
        return v179[0];
      }

      v684[0] = sub_240DADD64();
      v684[1] = v94;
      v479 = v684;
      sub_240DADCC4();
      sub_240D7F920(v479);
      if (!v728[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v468 = v729;
      sub_240D8634C(v728, v729);
      swift_dynamicCast();
      v469 = v683;
      v682 = v683;
      v727 = 0;
      v470 = objc_opt_self();

      v473 = sub_240DADCF4();

      v681 = v727;
      v474 = [v470 fetchVectorDBConfigForDBName:v473 error:&v681];
      v471 = v474;
      v472 = v681;
      v95 = v681;
      v96 = v727;
      v727 = v472;

      v475 = v521;
      v476 = v571;
      v477 = v596;
      v478 = v616;
      if (!v474)
      {
        v300 = v478;
        v299 = v477;
        v298 = v476;
        v297 = v475;
        v295 = v727;
        v296 = sub_240DAD614();
        v301 = v296;

        swift_willThrow();

        sub_240DACDF4(v708);

        sub_240D9060C(&v713);
        v638 = v301;
        return v179[0];
      }

      v467 = v471;
      v460 = v471;
      v465 = MEMORY[0x277D84F70] + 8;
      v464 = MEMORY[0x277D84030];
      v466 = MEMORY[0x277D84038];
      v463 = sub_240DADC84();
      v461 = v463;
      v680 = v463;

      v679[0] = sub_240DADD64();
      v679[1] = v97;
      v462 = v726;
      sub_240DAE174();
      sub_240DADCC4();
      v459 = v725[3] != 0;
      v458 = v459;
      sub_240D86770(v725);
      sub_240D92370(v726);
      sub_240D7F920(v679);
      if (v458)
      {
        v98 = v654;
        v99 = sub_240D9C574();
        (*(v648 + 16))(v98, v99, v646);

        v441 = 32;
        v445 = 32;
        v446 = 7;
        v100 = swift_allocObject();
        v101 = v596;
        v447 = v100;
        *(v100 + 16) = v595;
        *(v100 + 24) = v101;
        v457 = sub_240DADC24();
        v439 = v457;
        v456 = sub_240DADF64();
        v440 = v456;
        v442 = 17;
        v450 = swift_allocObject();
        v443 = v450;
        *(v450 + 16) = v441;
        v451 = swift_allocObject();
        v444 = v451;
        *(v451 + 16) = 8;
        v102 = swift_allocObject();
        v103 = v447;
        v448 = v102;
        *(v102 + 16) = sub_240DACEB8;
        *(v102 + 24) = v103;
        v104 = swift_allocObject();
        v105 = v448;
        v454 = v104;
        v449 = v104;
        *(v104 + 16) = sub_240DACED4;
        *(v104 + 24) = v105;
        v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
        v452 = sub_240DAE1D4();
        v453 = v106;

        v107 = v450;
        v108 = v453;
        *v453 = sub_240DACEC4;
        v108[1] = v107;

        v109 = v451;
        v110 = v453;
        v453[2] = sub_240DACECC;
        v110[3] = v109;

        v111 = v453;
        v112 = v454;
        v453[4] = sub_240DACEE0;
        v111[5] = v112;
        sub_240D7F8DC();

        if (os_log_type_enabled(v457, v456))
        {
          v433 = v619;
          v428 = sub_240DADFD4();
          v425 = v428;
          v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
          v429 = sub_240D98680(0, v426, v426);
          v427 = v429;
          v431 = 1;
          v430 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v664[0] = v428;
          v718[0] = v429;
          v717 = v430;
          v432 = v664;
          sub_240D986D4(2, v664);
          sub_240D986D4(v431, v432);
          v113 = v433;
          v662 = sub_240DACEC4;
          v663 = v443;
          sub_240D986E8(&v662, v432, v718, &v717);
          v434 = v113;
          v435 = v443;
          v436 = v444;
          v437 = v449;
          v438 = v113;
          if (v113)
          {
            v420 = v435;
            v421 = v436;
            v422 = v437;
            v423 = 0;
            v409 = v437;
            v408 = v436;

            __break(1u);
          }

          else
          {
            v662 = sub_240DACECC;
            v663 = v444;
            sub_240D986E8(&v662, v664, v718, &v717);
            v415 = 0;
            v416 = v443;
            v417 = v444;
            v418 = v449;
            v419 = 0;
            v662 = sub_240DACEE0;
            v663 = v449;
            sub_240D986E8(&v662, v664, v718, &v717);
            v410 = 0;
            v411 = v443;
            v412 = v444;
            v413 = v449;
            v414 = 0;
            _os_log_impl(&dword_240CB9000, v439, v440, "DB exists with name:%s", v425, 0xCu);
            sub_240D987EC(v427, 0, v426);
            sub_240D987EC(v430, 1, MEMORY[0x277D84F70] + 8);
            sub_240DADFB4();

            v424 = v410;
          }
        }

        else
        {

          v424 = v619;
        }

        v406 = v424;

        (*(v648 + 8))(v654, v646);

        v718[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
        v718[1] = v461;
        v664[1] = v595;
        v664[2] = v596;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
        sub_240DADCD4();

        v407 = v406;
      }

      else
      {
        v114 = v652;
        v115 = sub_240D9C574();
        v384 = *(v648 + 16);
        v385 = (v648 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v384(v114, v115, v646);

        v388 = 32;
        v392 = 32;
        v393 = 7;
        v116 = swift_allocObject();
        v117 = v596;
        v394 = v116;
        *(v116 + 16) = v595;
        *(v116 + 24) = v117;
        v405 = sub_240DADC24();
        v386 = v405;
        v404 = sub_240DADF64();
        v387 = v404;
        v389 = 17;
        v398 = swift_allocObject();
        v390 = v398;
        *(v398 + 16) = v388;
        v399 = swift_allocObject();
        v391 = v399;
        *(v399 + 16) = 8;
        v118 = swift_allocObject();
        v119 = v394;
        v395 = v118;
        *(v118 + 16) = sub_240DACE20;
        *(v118 + 24) = v119;
        v120 = swift_allocObject();
        v121 = v395;
        v402 = v120;
        v396 = v120;
        *(v120 + 16) = sub_240DACE3C;
        *(v120 + 24) = v121;
        v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
        v397 = v403;
        v400 = sub_240DAE1D4();
        v401 = v122;

        v123 = v398;
        v124 = v401;
        *v401 = sub_240DACE2C;
        v124[1] = v123;

        v125 = v399;
        v126 = v401;
        v401[2] = sub_240DACE34;
        v126[3] = v125;

        v127 = v401;
        v128 = v402;
        v401[4] = sub_240DACE48;
        v127[5] = v128;
        sub_240D7F8DC();

        if (os_log_type_enabled(v405, v404))
        {
          v378 = v619;
          v373 = sub_240DADFD4();
          v370 = v373;
          v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
          v374 = sub_240D98680(0, v371, v371);
          v372 = v374;
          v376 = 1;
          v375 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v667[0] = v373;
          v720[0] = v374;
          v719 = v375;
          v377 = v667;
          sub_240D986D4(2, v667);
          sub_240D986D4(v376, v377);
          v129 = v378;
          v665 = sub_240DACE2C;
          v666 = v390;
          sub_240D986E8(&v665, v377, v720, &v719);
          v379 = v129;
          v380 = v390;
          v381 = v391;
          v382 = v396;
          v383 = v129;
          if (v129)
          {
            v365 = v380;
            v366 = v381;
            v367 = v382;
            v368 = 0;
            v354 = v382;
            v353 = v381;

            __break(1u);
          }

          else
          {
            v665 = sub_240DACE34;
            v666 = v391;
            sub_240D986E8(&v665, v667, v720, &v719);
            v360 = 0;
            v361 = v390;
            v362 = v391;
            v363 = v396;
            v364 = 0;
            v665 = sub_240DACE48;
            v666 = v396;
            sub_240D986E8(&v665, v667, v720, &v719);
            v355 = 0;
            v356 = v390;
            v357 = v391;
            v358 = v396;
            v359 = 0;
            _os_log_impl(&dword_240CB9000, v386, v387, "New vector DB name: %s. Instantiating new vectorDB", v370, 0xCu);
            sub_240D987EC(v372, 0, v371);
            sub_240D987EC(v375, 1, MEMORY[0x277D84F70] + 8);
            sub_240DADFB4();

            v369 = v355;
          }
        }

        else
        {

          v369 = v619;
        }

        v344 = v369;

        v342 = *(v648 + 8);
        v343 = (v648 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v342(v652, v646);
        v130 = type metadata accessor for AMDVectorDBManager();
        v131 = v344;
        v345 = v130;
        sub_240DA2664(v595, v596, v645);
        v346 = v131;
        v347 = v461;
        v348 = v521;
        v349 = v571;
        v350 = v596;
        v351 = v616;
        v352 = v131;
        if (v131)
        {
          v294 = v352;
          v293 = v351;
          v292 = v350;
          v291 = v349;
          v290 = v348;

          sub_240DACDF4(v708);

          sub_240D9060C(&v713);
          v638 = v294;
          return v179[0];
        }

        v724 = 0;
        v338 = objc_opt_self();
        sub_240DAD654();
        v339 = v132;
        v340 = sub_240DADCF4();

        v341 = sub_240DADCF4();

        if (v469 <= 0xFFFFFFFF7FFFFFFFLL)
        {
          sub_240DAE124();
          __break(1u);
        }

        if (v469 >= 0x80000000)
        {
          sub_240DAE124();
          __break(1u);
        }

        v327 = v469;

        v331 = sub_240DADCF4();

        v330 = sub_240DADCF4();

        v678 = v724;
        v332 = [v338 persistVectorDBPath:v340 forDBName:v341 withVectorDimension:v327 andDataType:v331 withDistanceMetric:v330 error:&v678];
        v328 = v332;
        v329 = v678;
        v133 = v678;
        v134 = v724;
        v724 = v329;

        v333 = v461;
        v334 = v521;
        v335 = v571;
        v336 = v596;
        v337 = v616;
        if (!v332)
        {
          v288 = v337;
          v287 = v336;
          v286 = v335;
          v285 = v334;
          v284 = v333;
          v282 = v724;
          v283 = sub_240DAD614();
          v289 = v283;

          swift_willThrow();
          (*(v644 + 8))(v645, v642, 0);

          sub_240DACDF4(v708);

          sub_240D9060C(&v713);
          v638 = v289;
          return v179[0];
        }

        v326 = v328;
        v311 = v328;
        v322 = v346;
        v320 = MEMORY[0x277D84F70] + 8;
        v312 = sub_240DADC84();
        v677 = v312;

        v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A68, &qword_240DB29A0);
        v313 = 1;
        v314 = sub_240DAE1D4();
        v315 = v135;
        v136 = sub_240DADD64();
        v137 = v315;
        *v315 = v136;
        v137[1] = v138;

        v139 = v315;
        v140 = v596;
        v315[2] = v595;
        v139[3] = v140;
        sub_240D7F8DC();
        v319 = MEMORY[0x277D837D0];
        v321 = MEMORY[0x277D837E0];
        v318 = sub_240DADCA4();
        v317 = v318;
        v676 = v318;

        v141 = sub_240DAE144();
        v142 = v322;
        v143 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v141);
        v323 = v142;
        v324 = v143;
        v325 = v142;
        if (v142)
        {
          v158 = v650;
          v263 = v325;
          v262 = 0;

          MEMORY[0x245CD0E40](v263);
          v675 = v263;
          v159 = sub_240D9C574();
          v384(v158, v159, v646);

          v266 = 32;
          v270 = 32;
          v271 = 7;
          v160 = swift_allocObject();
          v161 = v596;
          v272 = v160;
          *(v160 + 16) = v595;
          *(v160 + 24) = v161;
          v281 = sub_240DADC24();
          v264 = v281;
          v280 = sub_240DADF64();
          v265 = v280;
          v267 = 17;
          v275 = swift_allocObject();
          v268 = v275;
          *(v275 + 16) = v266;
          v276 = swift_allocObject();
          v269 = v276;
          *(v276 + 16) = 8;
          v162 = swift_allocObject();
          v163 = v272;
          v273 = v162;
          *(v162 + 16) = sub_240DACE54;
          *(v162 + 24) = v163;
          v164 = swift_allocObject();
          v165 = v273;
          v279 = v164;
          v274 = v164;
          *(v164 + 16) = sub_240DACE70;
          *(v164 + 24) = v165;
          v277 = sub_240DAE1D4();
          v278 = v166;

          v167 = v275;
          v168 = v278;
          *v278 = sub_240DACE60;
          v168[1] = v167;

          v169 = v276;
          v170 = v278;
          v278[2] = sub_240DACE68;
          v170[3] = v169;

          v171 = v278;
          v172 = v279;
          v278[4] = sub_240DACE7C;
          v171[5] = v172;
          sub_240D7F8DC();

          if (os_log_type_enabled(v281, v280))
          {
            v256 = v262;
            v251 = sub_240DADFD4();
            v248 = v251;
            v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
            v252 = sub_240D98680(0, v249, v249);
            v250 = v252;
            v254 = 1;
            v253 = sub_240D98680(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v671[0] = v251;
            v722[0] = v252;
            v721 = v253;
            v255 = v671;
            sub_240D986D4(2, v671);
            sub_240D986D4(v254, v255);
            v173 = v256;
            v669 = sub_240DACE60;
            v670 = v268;
            sub_240D986E8(&v669, v255, v722, &v721);
            v257 = v173;
            v258 = v268;
            v259 = v269;
            v260 = v274;
            v261 = v173;
            if (v173)
            {
              v243 = v258;
              v244 = v259;
              v245 = v260;
              v246 = 0;
              v232 = v260;
              v231 = v259;

              __break(1u);
            }

            else
            {
              v669 = sub_240DACE68;
              v670 = v269;
              sub_240D986E8(&v669, v671, v722, &v721);
              v238 = 0;
              v239 = v268;
              v240 = v269;
              v241 = v274;
              v242 = 0;
              v669 = sub_240DACE7C;
              v670 = v274;
              sub_240D986E8(&v669, v671, v722, &v721);
              v233 = 0;
              v234 = v268;
              v235 = v269;
              v236 = v274;
              v237 = 0;
              _os_log_impl(&dword_240CB9000, v264, v265, "VectorDB instantiation failed for dbName: %s", v248, 0xCu);
              sub_240D987EC(v250, 0, v249);
              sub_240D987EC(v253, 1, MEMORY[0x277D84F70] + 8);
              sub_240DADFB4();

              v247 = v233;
            }
          }

          else
          {

            v247 = v262;
          }

          v174 = v649;
          v225 = v247;

          v342(v650, v646);
          v175 = sub_240D9C574();
          v384(v174, v175, v646);
          v229 = sub_240DADC24();
          v226 = v229;
          v228 = sub_240DADF64();
          v227 = v228;
          v230 = sub_240DAE1D4();
          if (os_log_type_enabled(v229, v228))
          {
            v221 = v225;
            v214 = sub_240DADFD4();
            v210 = v214;
            v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
            v212 = 0;
            v215 = sub_240D98680(0, v211, v211);
            v213 = v215;
            v216 = sub_240D98680(v212, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v672[0] = v214;
            v722[2] = v215;
            v722[1] = v216;
            v217 = 0;
            v218 = v672;
            sub_240D986D4(0, v672);
            sub_240D986D4(v217, v218);
            v671[1] = v230;
            v222 = v179;
            MEMORY[0x28223BE20](v179);
            v219 = &v179[-6];
            v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
            sub_240D98764();
            v176 = v221;
            sub_240DADDF4();
            v223 = v176;
            v224 = v222;
            if (v176)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_240CB9000, v226, v227, "Performing cleanup of SQL table", v210, 2u);
              v208 = 0;
              sub_240D987EC(v213, 0, v211);
              sub_240D987EC(v216, v208, MEMORY[0x277D84F70] + 8);
              sub_240DADFB4();

              v209 = v223;
            }
          }

          else
          {

            v209 = v225;
          }

          v194 = v209;

          v342(v649, v646);
          v723 = 0;
          v195 = objc_opt_self();

          v198 = sub_240DADCF4();

          v674 = v723;
          v199 = [v195 deleteVectorDBEntryForDBName:v198 error:&v674];
          v196 = v199;
          v197 = v674;
          v177 = v674;
          v178 = v723;
          v723 = v197;

          v200 = v461;
          v201 = v521;
          v202 = v571;
          v203 = v596;
          v204 = v616;
          v205 = v263;
          v206 = v312;
          v207 = v317;
          if (!v199)
          {
            v183 = v207;
            v184 = v206;
            v182 = v205;
            v189 = v204;
            v188 = v203;
            v187 = v202;
            v186 = v201;
            v185 = v200;
            v180 = v723;
            v181 = sub_240DAD614();
            v190 = v181;

            swift_willThrow();

            (*(v644 + 8))(v645, v642);

            sub_240DACDF4(v708);

            sub_240D9060C(&v713);
            v638 = v190;
            return v179[0];
          }

          v193 = v196;
          v191 = v196;
          v192 = sub_240DADC84();
          v673 = v192;

          v722[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
          v722[3] = v192;
          v672[1] = v595;
          v672[2] = v596;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
          sub_240DADCD4();

          (*(v644 + 8))(v645, v642);

          v407 = v194;
        }

        else
        {
          v305 = v324;

          v668 = v305;

          v308 = sub_240DAE1D4();
          v307 = v144;
          v306 = 1;
          v145 = sub_240DADD64();
          v146 = v307;
          *v307 = v145;
          v146[1] = v147;
          v148 = sub_240DAD654();
          v149 = v307;
          v309 = MEMORY[0x277D837D0];
          v307[5] = MEMORY[0x277D837D0];
          v149[2] = v148;
          v149[3] = v150;
          v151 = sub_240DADD64();
          v152 = v307;
          v307[6] = v151;
          v152[7] = v153;

          v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
          v155 = v307;
          v156 = v312;
          v307[11] = v154;
          v155[8] = v156;
          sub_240D7F8DC();
          v310 = sub_240DADCA4();
          v720[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
          v720[1] = v310;
          v667[1] = v595;
          v667[2] = v596;
          sub_240DADCD4();

          (*(v644 + 8))(v645, v642);

          v407 = v323;
        }
      }
    }
  }

  v636 = 0;
  sub_240DAC110();
  v627 = 1;
  v635 = sub_240DADD64();
  v633 = v9;
  v634 = sub_240D9D87C(3);
  v629 = sub_240DAE1D4();
  v628 = v10;
  v630 = *MEMORY[0x277CCA450];
  v11 = v630;
  v12 = sub_240DADD04();
  v13 = v628;
  *v628 = v12;
  v13[1] = v14;
  v15 = sub_240DADD64();
  v16 = v628;
  v632 = MEMORY[0x277D837D0];
  v628[5] = MEMORY[0x277D837D0];
  v16[2] = v15;
  v16[3] = v17;
  sub_240D7F8DC();
  v631 = v18;

  v19 = sub_240DADCA4();
  v637 = sub_240D9FA30(v635, v633, v634, v19);
  swift_willThrow();
  sub_240D9060C(&v713);
  v638 = v637;
  return v179[0];
}

id sub_240DAAE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = sub_240DADCF4();
  if (a4)
  {
    v6 = sub_240DADC74();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v9 initWithDomain:v11 code:a3 userInfo:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v11);

  return v5;
}

uint64_t sub_240DAAF2C(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_240DADF44();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_240DAE154();
  __break(1u);
LABEL_12:
  result = sub_240DAE124();
  __break(1u);
  return result;
}

uint64_t sub_240DAB258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_240DAD50C;
        v16 = &v37;
        sub_240DAAF2C(sub_240DAD528, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_240DAE124();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_240DAE124();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_240DAE124();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_240DAE124();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_240DAE124();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_240DAE124();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_240DAE124();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_240DAE124();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_240DAE124();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_240DAE124();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_240DAE124();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_240DAE124();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_240DAE154();
    __break(1u);
  }

  result = sub_240DAE124();
  __break(1u);
  return result;
}

uint64_t sub_240DABA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_240DAE124();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_240DAE124();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_240DAE124();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_240DAE124();
                __break(1u);
              }

              sub_240DAE124();
              __break(1u);
            }

            sub_240DAE124();
            __break(1u);
          }

          sub_240DAE124();
          __break(1u);
        }

        sub_240DAE124();
        __break(1u);
      }

      sub_240DAE124();
      __break(1u);
    }

    sub_240DAE124();
    __break(1u);
  }

  result = sub_240DAE124();
  __break(1u);
  return result;
}

uint64_t sub_240DABF9C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_240DADA74();
      v1 = sub_240DADE74();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_240DADA74();
    return v2;
  }

  return result;
}

unint64_t sub_240DAC110()
{
  v2 = qword_2810BCF50;
  if (!qword_2810BCF50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2810BCF50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_240DAC268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x28223BE20](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_240DAE0F4() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_240DAE154();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x28223BE20](v22);
    v15 = v28;
    v16 = v10;
    sub_240DAC4A4(v9, sub_240DAD554, &v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84F78]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_240DAC4A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_240DAE154();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_240DAC66C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240DAC6B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_240D9C130();
  v5 = MEMORY[0x277D84A28];

  return sub_240DAC268(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_240DAC76C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240DAC7B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_240DAC828();
  v5 = MEMORY[0x277D83B88];

  return sub_240DAC268(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_240DAC828()
{
  v2 = qword_27E519C30;
  if (!qword_27E519C30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240DAC8A0()
{
  v2 = qword_27E519C40;
  if (!qword_27E519C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519C38, &qword_240DB2F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DAC9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240DAD674();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_240DA366C(v3, a1);
}

uint64_t sub_240DACA28()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_240DAD674();
  v1 = sub_240DACA84();

  return sub_240D98B98(v5, v3, v4, v1);
}

unint64_t sub_240DACA84()
{
  v2 = qword_2810BCFA8;
  if (!qword_2810BCFA8)
  {
    sub_240DAD674();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DACB34()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  v1 = sub_240DACB9C();

  return sub_240D98B98(v5, v3, v4, v1);
}

unint64_t sub_240DACB9C()
{
  v2 = qword_27E519C58;
  if (!qword_27E519C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5199C8, &qword_240DB2890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DACC54()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
  v1 = sub_240DACCBC();

  return sub_240D98B98(v5, v3, v4, v1);
}

unint64_t sub_240DACCBC()
{
  v2 = qword_27E519C60;
  if (!qword_27E519C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519B20, &qword_240DB2AB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240DACD6C()
{
  v2 = qword_2810BCF70;
  if (!qword_2810BCF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519AB0, &qword_240DB2FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240DACF04()
{
  v2 = qword_27E519C80;
  if (!qword_27E519C80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DACF80(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_240DAD0E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}