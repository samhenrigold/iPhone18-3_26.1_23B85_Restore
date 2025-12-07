uint64_t sub_22955F124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[30] = a3;

  return MEMORY[0x2822009F8](sub_22955F22C, 0, 0);
}

uint64_t sub_22955F22C()
{
  if (v0[30] == 1)
  {
    v2 = v0[13];
    v1 = v0[14];
    (*(v0[16] + 8))(v0[9], v0[15]);

    v3 = v0[1];

    return v3(0, 0);
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v0[31] = v5;
    v0[32] = v6;
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = sub_22955F3A8;
    v8 = v0[30];
    v9 = v0[13];
    v10 = v0[14];
    v12 = v0[9];
    v11 = v0[10];

    return sub_22955D004(v12, v11, v9, v10, v6, v5, v8);
  }
}

uint64_t sub_22955F3A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = a2;
  v5 = v3[32];
  v6 = v3[31];
  v7 = v3[30];
  v4[34] = a2;

  sub_229562EE0(v5, v6, v7);

  return MEMORY[0x2822009F8](sub_22955F520, 0, 0);
}

uint64_t sub_22955F520()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[9];

  (*(v3 + 8))(v6, v2);
  if (v1)
  {
    v7 = v0[34];
    v8 = v0[7];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = v0[1];

  return v9(v8, v7);
}

uint64_t sub_22955F624(unsigned int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D8, &qword_22A576EB0);
  v44 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = sub_22A4DB48C();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3E0, &qword_22A576EB8);
  v42 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3E8, &qword_22A576EC0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_22A4DB82C();
  MEMORY[0x28223BE20](v16 - 8);
  result = 0;
  v43 = a1;
  if ((a1 & 0x10000) == 0)
  {
    v35 = v5;
    v36 = v7;
    v37 = v2;
    sub_229562F68(0, &qword_27D87C3F0, 0x277CCAE48);
    sub_22A4DB80C();
    sub_22A4DB46C();
    v18 = sub_22A4DDD2C();
    v19 = objc_opt_self();
    v20 = [v19 fahrenheit];
    v21 = sub_22A4DDEDC();

    if ((v21 & 1) == 0)
    {
      v22 = [v19 celsius];
      sub_22A4DDEDC();
    }

    sub_22A4DB80C();
    sub_229562F14();
    sub_22A4DB42C();
    v23 = [v19 celsius];
    sub_22A4DDEDC();

    sub_22A4DB47C();
    v24 = v38;
    v25 = v39;
    MEMORY[0x22AACE610](v10, v39);
    (*(v40 + 8))(v10, v41);
    v42 = *(v42 + 8);
    (v42)(v13, v25);
    sub_22A4DE73C();
    v26 = [v19 celsius];
    v27 = v36;
    sub_22A4DB12C();
    v28 = v35;
    v29 = v37;
    sub_22A4DB14C();
    sub_22A4DB13C();
    v31 = v30;
    v32 = *(v44 + 8);
    v32(v28, v29);
    v45 = v31;
    v33 = sub_22A4DB41C();

    v32(v27, v29);
    (v42)(v24, v25);
    return v33;
  }

  return result;
}

uint64_t sub_22955FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_22A4DD07C();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v8 = sub_22A4DC86C();
  v6[34] = v8;
  v6[35] = *(v8 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v9 = sub_22A4DC8EC();
  v6[38] = v9;
  v6[39] = *(v9 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v10 = sub_22A4DCA0C();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = type metadata accessor for ClimateBulletinBuilder.ValenciaContent.MatterEventDetails(0);
  v6[56] = swift_task_alloc();
  v11 = sub_22A4DC99C();
  v6[57] = v11;
  v6[58] = *(v11 - 8);
  v6[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22955FE8C, 0, 0);
}

uint64_t sub_22955FE8C()
{
  v228 = v0;
  v1 = v0;
  v4 = v0 + 58;
  v3 = v0[58];
  v2 = v4[1];
  v5 = v1[57];
  sub_22A4DC9AC();
  v6 = (*(v3 + 88))(v2, v5);
  if (v6 == *MEMORY[0x277D17330])
  {
    v7 = v1[45];
    v8 = v1[46];
    v9 = v1;
    v12 = v1 + 23;
    v11 = v1[23];
    v10 = v12[1];
    v13 = v9[21];
    v14 = v9[22];
    v15 = v9[19];
    v198 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22A576180;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_229562E8C();
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;

    v17 = sub_22A4DD5AC();
    v18 = HMDLocalizedStringForKey(v17);

    sub_22A4DD5EC();
    v19 = sub_22A4DD5BC();
    v217 = v20;
    v221 = v19;

    (*(v8 + 8))(v15, v7);
LABEL_67:
    v1 = v198;
    goto LABEL_68;
  }

  if (v6 != *MEMORY[0x277D17328])
  {
    v41 = v1[46];
    v40 = v1[47];
    v42 = v1[45];
    v43 = v1[19];

    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v41 + 16))(v40, v43, v42);
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCDC();
    v46 = os_log_type_enabled(v44, v45);
    v48 = v1[46];
    v47 = v1[47];
    v49 = v1[45];
    v51 = v1[26];
    v50 = v1[27];
    v52 = v1[24];
    v53 = v1[25];
    v218 = v1[23];
    v222 = v1[19];
    if (v46)
    {
      v199 = v1;
      v54 = swift_slowAlloc();
      v210 = v52;
      v55 = swift_slowAlloc();
      v227 = v55;
      *v54 = 136315138;
      v206 = v53;
      v209 = v50;
      v56 = sub_22A4DBA6C();
      v58 = v57;
      v59 = *(v48 + 8);
      v59(v47);
      v60 = sub_2295A3E30(v56, v58, &v227);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_229538000, v44, v45, "Ignoring event with unhandled activePresetChangedReason: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      v61 = v54;
      v1 = v199;
      MEMORY[0x22AAD4E50](v61, -1, -1);

      (v59)(v222, v49);
      (*(v51 + 8))(v209, v206);
    }

    else
    {

      v62 = *(v48 + 8);
      v62(v222, v49);
      v62(v47, v49);
      (*(v51 + 8))(v50, v53);
    }

    v64 = v1[58];
    v63 = v1[59];
    v65 = v1[57];
    goto LABEL_13;
  }

  v22 = v1[55];
  v21 = v1[56];
  v23 = v1[54];
  v24 = v1[45];
  v25 = v1[46];
  v26 = v1[19];
  v27 = v1[20];
  v28 = *(v25 + 16);
  v1[60] = v28;
  v1[61] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v23, v26, v24);
  v29 = sub_22A4DC9DC();
  v30 = sub_22A4DC9EC();
  *(v1 + 144) = *(v22 + 24);
  sub_22A4DC9BC();
  v31 = sub_22955F624(v29 & 0x1FFFF);
  v1[62] = v31;
  v1[63] = v32;
  *v21 = v31;
  v21[1] = v32;
  v33 = sub_22955F624(v30 & 0x1FFFF);
  v35 = v34;
  v1[64] = v33;
  v1[65] = v34;
  v36 = *(v25 + 8);
  v1[66] = v36;
  v1[67] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v23, v24);
  v21[2] = v33;
  v21[3] = v35;
  if (!v27)
  {
    (*(v1[39] + 56))(v1[44], 1, 1, v1[38]);
    v66 = 2;
    goto LABEL_30;
  }

  v37 = v1[20];
  if (*(v37 + 16))
  {

    v38 = sub_229543DBC(0xD000000000000017, 0x800000022A589450);
    if (v39)
    {
      sub_2295404B0(*(v37 + 56) + 32 * v38, (v1 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DC8CC();
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  (*(v1[39] + 56))(v1[44], 1, 1, v1[38]);
LABEL_17:
  if (!*(v37 + 16))
  {
    goto LABEL_25;
  }

  v67 = sub_229543DBC(0x6E69746165487369, 0xE900000000000067);
  if ((v68 & 1) == 0)
  {

LABEL_25:
    v66 = 2;
    if (*(v37 + 16))
    {
      goto LABEL_26;
    }

LABEL_30:
    v72 = 2;
    goto LABEL_31;
  }

  sub_2295404B0(*(v37 + 56) + 32 * v67, (v1 + 6));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if (swift_dynamicCast())
  {
    v66 = *(v1 + 595);
  }

  else
  {
    v66 = 2;
  }

  if (!*(v37 + 16))
  {
    goto LABEL_30;
  }

LABEL_26:

  v69 = sub_229543DBC(0x6E696C6F6F437369, 0xE900000000000067);
  if ((v70 & 1) == 0)
  {

    goto LABEL_30;
  }

  sub_2295404B0(*(v37 + 56) + 32 * v69, (v1 + 10));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v71 = swift_dynamicCast();
  v72 = *(v1 + 594);
  if (!v71)
  {
    v72 = 2;
  }

LABEL_31:
  *(v1 + 598) = v72;
  *(v1 + 597) = v66;
  v73 = v1[43];
  v74 = v1[38];
  v75 = v1[39];
  sub_229562DC0(v1[44], v73);
  v76 = (*(v75 + 48))(v73, 1, v74);
  v77 = v1[43];
  if (v76 == 1)
  {

    sub_22953EAE4(v77, &qword_27D881900, &unk_22A576E70);
LABEL_39:
    v92 = v1[35];
    v91 = v1[36];
    v93 = v1[34];
    (*(v92 + 16))(v91, v1[56] + *(v1 + 144), v93);
    v94 = (*(v92 + 88))(v91, v93);
    v198 = v1;
    if (v94 == *MEMORY[0x277D17278])
    {
      v95 = v1[21];
      v96 = v1[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_22A576180;
      *(v97 + 56) = MEMORY[0x277D837D0];
      *(v97 + 64) = sub_229562E8C();
      *(v97 + 32) = v95;
      *(v97 + 40) = v96;
LABEL_41:
      v98 = v1[66];
      v214 = v1[56];
      v99 = v1[45];
      v211 = v1[44];
      v100 = v1[23];
      v101 = v1[24];
      v102 = v1[19];

      v103 = sub_22A4DD5AC();
      v104 = HMDLocalizedStringForKey(v103);

      sub_22A4DD5EC();
      v105 = sub_22A4DD5BC();
      v217 = v106;
      v221 = v105;

      v98(v102, v99);
      sub_22953EAE4(v211, &qword_27D881900, &unk_22A576E70);
      sub_229562E30(v214);
      goto LABEL_67;
    }

    if (v94 == *MEMORY[0x277D17280])
    {
      v107 = v1[63];
      if (v107)
      {
        v108 = v1[65];
        if (v108)
        {
          v109 = v1[64];
          v224 = v1[62];
          v110 = v1[21];
          v111 = v1[22];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
          v112 = swift_allocObject();
          *(v112 + 16) = xmmword_22A5761B0;
          v113 = MEMORY[0x277D837D0];
          *(v112 + 56) = MEMORY[0x277D837D0];
          v114 = sub_229562E8C();
          *(v112 + 32) = v110;
          *(v112 + 40) = v111;
          *(v112 + 96) = v113;
          *(v112 + 104) = v114;
          *(v112 + 64) = v114;
          *(v112 + 72) = v109;
          *(v112 + 80) = v108;
          *(v112 + 136) = v113;
          *(v112 + 144) = v114;
          *(v112 + 112) = v224;
          *(v112 + 120) = v107;

          goto LABEL_41;
        }

        v166 = v1[60];
        v167 = v1[52];
        v168 = v1[45];
        v169 = v1[19];
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        v166(v167, v169, v168);
        v133 = sub_22A4DD05C();
        v170 = v1;
        v135 = sub_22A4DDCEC();
        v171 = os_log_type_enabled(v133, v135);
        v137 = v170[66];
        v138 = v170[56];
        v139 = v170[52];
        v140 = v170[44];
        v141 = v170[45];
        v172 = v170[32];
LABEL_62:
        v226 = v172;
        v177 = v170[26];
        v220 = v170[25];
        v213 = v170[23];
        v216 = v170[24];
        v178 = v170[19];
        if (v171)
        {
          v205 = v178;
          v179 = swift_slowAlloc();
          v208 = v138;
          v180 = swift_slowAlloc();
          v227 = v180;
          *v179 = 136315138;
          v201 = v141;
          v203 = v140;
          v191 = sub_22A4DBA6C();
          v192 = v141;
          v194 = v193;
          v137(v139, v192);
          v195 = sub_2295A3E30(v191, v194, &v227);

          *(v179 + 4) = v195;
          v186 = "Ignoring event missing heatingSetpoint: %s";
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      v129 = v1[60];
      v130 = v1[51];
      v131 = v1[45];
      v132 = v1[19];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v129(v130, v132, v131);
      v133 = sub_22A4DD05C();
      v134 = v1;
      v135 = sub_22A4DDCEC();
      v136 = os_log_type_enabled(v133, v135);
      v137 = v134[66];
      v138 = v134[56];
      v139 = v134[51];
      v140 = v134[44];
      v141 = v134[45];
      v142 = v134[31];
LABEL_57:
      v226 = v142;
      v177 = v134[26];
      v220 = v134[25];
      v213 = v134[23];
      v216 = v134[24];
      v178 = v134[19];
      if (v136)
      {
        v205 = v178;
        v179 = swift_slowAlloc();
        v208 = v138;
        v180 = swift_slowAlloc();
        v227 = v180;
        *v179 = 136315138;
        v201 = v141;
        v203 = v140;
        v181 = sub_22A4DBA6C();
        v182 = v141;
        v184 = v183;
        v137(v139, v182);
        v185 = sub_2295A3E30(v181, v184, &v227);

        *(v179 + 4) = v185;
        v186 = "Ignoring event missing coolingSetpoint: %s";
LABEL_64:
        _os_log_impl(&dword_229538000, v133, v135, v186, v179, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v180);
        MEMORY[0x22AAD4E50](v180, -1, -1);
        MEMORY[0x22AAD4E50](v179, -1, -1);

        v137(v205, v201);
        (*(v177 + 8))(v226, v220);
        sub_22953EAE4(v203, &qword_27D881900, &unk_22A576E70);
        v196 = v208;
LABEL_66:
        sub_229562E30(v196);
        v217 = 0;
        v221 = 0;
        goto LABEL_67;
      }

LABEL_65:

      v137(v178, v141);
      v137(v139, v141);
      (*(v177 + 8))(v226, v220);
      sub_22953EAE4(v140, &qword_27D881900, &unk_22A576E70);
      v196 = v138;
      goto LABEL_66;
    }

    if (v94 == *MEMORY[0x277D17288])
    {
      v115 = v1[63];
      if (v115)
      {
        v116 = v1[62];
        v117 = v1[21];
        v118 = v1[22];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_22A5761A0;
        v120 = MEMORY[0x277D837D0];
        *(v119 + 56) = MEMORY[0x277D837D0];
        v121 = sub_229562E8C();
        *(v119 + 32) = v117;
        *(v119 + 40) = v118;
        *(v119 + 96) = v120;
        *(v119 + 104) = v121;
        *(v119 + 64) = v121;
        *(v119 + 72) = v116;
        *(v119 + 80) = v115;

        goto LABEL_41;
      }

      v173 = v1[60];
      v174 = v1[50];
      v175 = v1[45];
      v176 = v1[19];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v173(v174, v176, v175);
      v133 = sub_22A4DD05C();
      v134 = v1;
      v135 = sub_22A4DDCEC();
      v136 = os_log_type_enabled(v133, v135);
      v137 = v134[66];
      v138 = v134[56];
      v139 = v134[50];
      v140 = v134[44];
      v141 = v134[45];
      v142 = v134[30];
      goto LABEL_57;
    }

    if (v94 == *MEMORY[0x277D17290])
    {
      v122 = v1[65];
      if (v122)
      {
        v123 = v1[64];
        v124 = v1[21];
        v125 = v1[22];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v126 = swift_allocObject();
        *(v126 + 16) = xmmword_22A5761A0;
        v127 = MEMORY[0x277D837D0];
        *(v126 + 56) = MEMORY[0x277D837D0];
        v128 = sub_229562E8C();
        *(v126 + 32) = v124;
        *(v126 + 40) = v125;
        *(v126 + 96) = v127;
        *(v126 + 104) = v128;
        *(v126 + 64) = v128;
        *(v126 + 72) = v123;
        *(v126 + 80) = v122;

        goto LABEL_41;
      }

      v187 = v1[60];
      v188 = v1[49];
      v189 = v1[45];
      v190 = v1[19];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v187(v188, v190, v189);
      v133 = sub_22A4DD05C();
      v170 = v1;
      v135 = sub_22A4DDCEC();
      v171 = os_log_type_enabled(v133, v135);
      v137 = v170[66];
      v138 = v170[56];
      v139 = v170[49];
      v140 = v170[44];
      v141 = v170[45];
      v172 = v170[29];
      goto LABEL_62;
    }

    v143 = v1[60];
    v144 = v1[48];
    v145 = v1[45];
    v146 = v1[19];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    v143(v144, v146, v145);
    v147 = sub_22A4DD05C();
    v148 = v1;
    v149 = sub_22A4DDCDC();
    v150 = os_log_type_enabled(v147, v149);
    v151 = v148[66];
    v152 = v148[56];
    v153 = v148[48];
    v154 = v148[44];
    v155 = v148[45];
    v156 = v148[26];
    v219 = v148[25];
    v225 = v148[28];
    v212 = v148[23];
    v215 = v148[24];
    v157 = v148[19];
    if (v150)
    {
      v204 = v157;
      v158 = swift_slowAlloc();
      v207 = v152;
      v159 = swift_slowAlloc();
      v227 = v159;
      *v158 = 136315138;
      v200 = v155;
      v202 = v154;
      v160 = sub_22A4DBA6C();
      v161 = v155;
      v163 = v162;
      v151(v153, v161);
      v164 = sub_2295A3E30(v160, v163, &v227);

      *(v158 + 4) = v164;
      _os_log_impl(&dword_229538000, v147, v149, "Ignoring event with unhandled systemMode: %s", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v159);
      MEMORY[0x22AAD4E50](v159, -1, -1);
      MEMORY[0x22AAD4E50](v158, -1, -1);

      v151(v204, v200);
      (*(v156 + 8))(v225, v219);
      sub_22953EAE4(v202, &qword_27D881900, &unk_22A576E70);
      v165 = v207;
    }

    else
    {

      v151(v157, v155);
      v151(v153, v155);
      (*(v156 + 8))(v225, v219);
      sub_22953EAE4(v154, &qword_27D881900, &unk_22A576E70);
      v165 = v152;
    }

    sub_229562E30(v165);
    v1 = v198;
    v64 = v198[35];
    v63 = v198[36];
    v65 = v198[34];
LABEL_13:
    (*(v64 + 8))(v63, v65);
    v217 = 0;
    v221 = 0;
LABEL_68:

    v197 = v1[1];

    return v197(v221, v217);
  }

  v78 = v1[41];
  v80 = v1[38];
  v79 = v1[39];
  (*(v79 + 32))(v1[42], v1[43], v80);
  v81 = *MEMORY[0x277D172E0];
  v223 = *(v79 + 104);
  v223(v78, v81, v80);
  sub_22955AFD0(&qword_27D87C398, MEMORY[0x277D172F0], MEMORY[0x277D172F8]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v82 = *(v79 + 8);
  v1[68] = v82;
  v1[69] = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82(v78, v80);
  if (*(v1 + 580) != *(v1 + 581) || (v84 = v1[40], v83 = v1[41], v85 = v1[38], sub_22A4DC9CC(), v223(v84, v81, v85), sub_22A4DD7DC(), sub_22A4DD7DC(), v82(v84, v85), v82(v83, v85), *(v1 + 582) != *(v1 + 583)))
  {
    v82(v1[42], v1[38]);

    goto LABEL_39;
  }

  v86 = swift_task_alloc();
  v1[70] = v86;
  *v86 = v1;
  v86[1] = sub_229561318;
  v87 = v1[23];
  v88 = v1[24];
  v89 = v1[22];

  return sub_229558F18(v86, v89, v87, v88);
}

uint64_t sub_229561318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[14] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[71] = a3;

  return MEMORY[0x2822009F8](sub_229561420, 0, 0);
}

uint64_t sub_229561420()
{
  v252 = v0;
  v1 = *(v0 + 568);
  if (v1 == 1)
  {
    v233 = *(v0 + 544);
    v2 = *(v0 + 528);
    v243 = *(v0 + 448);
    v3 = *(v0 + 360);
    v228 = *(v0 + 352);
    v4 = *(v0 + 336);
    v5 = *(v250 + 304);
    v6 = *(v250 + 192);
    v7 = *(v250 + 184);
    v8 = *(v250 + 152);

    v2(v8, v3);
    v9 = v5;
    v10 = v250;
    v233(v4, v9);
    sub_22953EAE4(v228, &qword_27D881900, &unk_22A576E70);
    v11 = v243;
LABEL_3:
    sub_229562E30(v11);
LABEL_4:
    v244 = 0;
    v238 = 0;
    goto LABEL_36;
  }

  v12 = *(v0 + 120);
  sub_229562EE0(v12, *(v0 + 128), v1);
  if (v12 == 1)
  {
    v13 = *(v0 + 520);
    if (v13)
    {
      v245 = *(v0 + 597);
      v14 = *(v0 + 296);
      v15 = *(v0 + 280);
      v16 = *(v250 + 272);
      v17 = *(v15 + 104);
      v17(v14, *MEMORY[0x277D17280], v16);
      sub_22955AFD0(&qword_27D87C3A0, MEMORY[0x277D17298], MEMORY[0x277D172A8]);

      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v18 = *(v15 + 8);
      v0 = v250;
      v18(v14, v16);
      if (*(v0 + 590) == *(v0 + 591) && v245 != 2 && (*(v250 + 597) & 1) != 0 || (v19 = *(v250 + 296), v20 = *(v250 + 272), v17(v19, *MEMORY[0x277D17290], v20), sub_22A4DD7DC(), sub_22A4DD7DC(), v21 = v19, v0 = v250, v18(v21, v20), *(v0 + 592) == *(v0 + 593)))
      {
        v224 = *(v0 + 528);
        v22 = *(v0 + 512);
        v23 = *(v0 + 448);
        v234 = *(v0 + 352);
        v239 = *(v0 + 544);
        v222 = *(v0 + 336);
        v215 = *(v0 + 360);
        v219 = *(v0 + 304);
        v24 = *(v0 + 184);
        v25 = *(v0 + 168);
        v26 = *(v0 + 176);
        v209 = *(v0 + 152);
        v210 = *(v0 + 192);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_22A5761A0;
        v28 = MEMORY[0x277D837D0];
        *(v27 + 56) = MEMORY[0x277D837D0];
        v29 = sub_229562E8C();
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        *(v27 + 96) = v28;
        *(v27 + 104) = v29;
        *(v27 + 64) = v29;
        *(v27 + 72) = v22;
        *(v27 + 80) = v13;

        v30 = v23;
        v31 = sub_22A4DD5AC();
        v32 = HMDLocalizedStringForKey(v31);

        sub_22A4DD5EC();
        v33 = sub_22A4DD5BC();
        v35 = v34;

        v36 = v209;
LABEL_34:
        v224(v36, v215);
        v52 = v219;
        v51 = v222;
        goto LABEL_35;
      }
    }

    v69 = *(v0 + 504);
    if (v69)
    {
      v246 = *(v0 + 598);
      v70 = *(v0 + 296);
      v71 = *(v0 + 280);
      v72 = *(v250 + 272);
      v73 = *(v71 + 104);
      v73(v70, *MEMORY[0x277D17280], v72);
      sub_22955AFD0(&qword_27D87C3A0, MEMORY[0x277D17298], MEMORY[0x277D172A8]);

      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v74 = *(v71 + 8);
      v75 = v72;
      v76 = v250;
      v74(v70, v75);
      if (*(v76 + 586) == *(v76 + 587) && v246 != 2 && (*(v250 + 598) & 1) != 0 || (v77 = *(v250 + 296), v78 = *(v250 + 272), v73(v77, *MEMORY[0x277D17288], v78), sub_22A4DD7DC(), sub_22A4DD7DC(), v79 = v78, v76 = v250, v74(v77, v79), *(v76 + 588) == *(v76 + 589)))
      {
        v224 = *(v76 + 528);
        v80 = *(v76 + 496);
        v81 = *(v76 + 448);
        v234 = *(v76 + 352);
        v239 = *(v76 + 544);
        v222 = *(v76 + 336);
        v215 = *(v76 + 360);
        v219 = *(v76 + 304);
        v82 = *(v76 + 184);
        v211 = *(v76 + 192);
        v83 = *(v76 + 168);
        v84 = *(v76 + 176);
        v85 = *(v76 + 152);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_22A5761A0;
        v87 = MEMORY[0x277D837D0];
        *(v86 + 56) = MEMORY[0x277D837D0];
        v88 = sub_229562E8C();
        *(v86 + 32) = v83;
        *(v86 + 40) = v84;
        *(v86 + 96) = v87;
        *(v86 + 104) = v88;
        *(v86 + 64) = v88;
        *(v86 + 72) = v80;
        *(v86 + 80) = v69;

        v30 = v81;
        v89 = sub_22A4DD5AC();
        v90 = HMDLocalizedStringForKey(v89);

        sub_22A4DD5EC();
        v33 = sub_22A4DD5BC();
        v35 = v91;

LABEL_33:
        v36 = v85;
        goto LABEL_34;
      }

      v92 = v250;
      v93 = *(v250 + 280);
    }

    else
    {
      v92 = v0;
      v93 = *(v0 + 280);
      v73 = *(v93 + 104);
    }

    v94 = *(v92 + 296);
    v95 = *(v92 + 272);
    v73(v94, *MEMORY[0x277D17278], v95);
    sub_22955AFD0(&qword_27D87C3A0, MEMORY[0x277D17298], MEMORY[0x277D172A8]);
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    (*(v93 + 8))(v94, v95);
    if (*(v92 + 584) != *(v92 + 585))
    {
      v106 = *(v250 + 480);
      v107 = *(v250 + 424);
      v108 = *(v250 + 360);
      v109 = *(v250 + 152);
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v106(v107, v109, v108);
      v10 = v250;

      v110 = sub_22A4DD05C();
      v111 = sub_22A4DDCEC();

      v112 = os_log_type_enabled(v110, v111);
      v247 = *(v250 + 544);
      v113 = *(v250 + 528);
      v114 = *(v250 + 448);
      v115 = *(v250 + 424);
      v116 = *(v250 + 360);
      v235 = *(v250 + 336);
      v240 = *(v250 + 352);
      v225 = *(v250 + 264);
      v230 = *(v250 + 304);
      v117 = *(v250 + 208);
      v223 = *(v250 + 200);
      v212 = *(v250 + 184);
      v216 = *(v250 + 192);
      if (v112)
      {
        v204 = *(v250 + 160);
        v207 = *(v250 + 152);
        v208 = *(v250 + 448);
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v251 = v119;
        *v118 = 136315394;
        v120 = sub_22A4DBA6C();
        v121 = v116;
        v206 = v116;
        v122 = v120;
        v205 = v111;
        v124 = v123;
        v113(v115, v121);
        v125 = sub_2295A3E30(v122, v124, &v251);

        *(v118 + 4) = v125;
        *(v118 + 12) = 2080;
        *(v250 + 144) = v204;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        v126 = sub_22A4DBA6C();
        v128 = v127;

        v129 = sub_2295A3E30(v126, v128, &v251);

        *(v118 + 14) = v129;
        _os_log_impl(&dword_229538000, v110, v205, "Ignoring event - expected Arrival Prediction but we received an unexpected event: %s, custom fields %s", v118, 0x16u);
        swift_arrayDestroy();
        v130 = v119;
        v10 = v250;
        MEMORY[0x22AAD4E50](v130, -1, -1);
        MEMORY[0x22AAD4E50](v118, -1, -1);

        v113(v207, v206);
        (*(v117 + 8))(v225, v223);
        v247(v235, v230);
        sub_22953EAE4(v240, &qword_27D881900, &unk_22A576E70);
        v11 = v208;
      }

      else
      {
        v151 = *(v250 + 152);

        v113(v151, v116);
        v113(v115, v116);
        (*(v117 + 8))(v225, v223);
        v247(v235, v230);
        sub_22953EAE4(v240, &qword_27D881900, &unk_22A576E70);
        v11 = v114;
      }

      goto LABEL_3;
    }

    v224 = *(v92 + 528);
    v30 = *(v92 + 448);
    v234 = *(v92 + 352);
    v239 = *(v92 + 544);
    v222 = *(v92 + 336);
    v215 = *(v92 + 360);
    v219 = *(v92 + 304);
    v97 = *(v92 + 184);
    v96 = *(v92 + 192);
    v98 = *(v92 + 168);
    v99 = *(v92 + 176);
    v85 = *(v92 + 152);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_22A576180;
    *(v100 + 56) = MEMORY[0x277D837D0];
    *(v100 + 64) = sub_229562E8C();
    *(v100 + 32) = v98;
    *(v100 + 40) = v99;

    v101 = sub_22A4DD5AC();
    v102 = HMDLocalizedStringForKey(v101);

    sub_22A4DD5EC();
    v33 = sub_22A4DD5BC();
    v35 = v103;

    goto LABEL_33;
  }

  (*(v0 + 544))(*(v0 + 336), *(v0 + 304));

  v37 = *(v0 + 280);
  v38 = *(v0 + 288);
  v39 = *(v0 + 272);
  (*(v37 + 16))(v38, *(v0 + 448) + *(v0 + 576), v39);
  v40 = (*(v37 + 88))(v38, v39);
  if (v40 != *MEMORY[0x277D17278])
  {
    if (v40 == *MEMORY[0x277D17280])
    {
      v53 = *(v0 + 504);
      if (v53)
      {
        v54 = *(v0 + 520);
        if (v54)
        {
          v55 = *(v0 + 512);
          v56 = *(v250 + 496);
          v57 = *(v250 + 176);
          v58 = *(v250 + 168);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_22A5761B0;
          v60 = MEMORY[0x277D837D0];
          *(v59 + 56) = MEMORY[0x277D837D0];
          v61 = sub_229562E8C();
          *(v59 + 32) = v58;
          *(v59 + 40) = v57;
          *(v59 + 96) = v60;
          *(v59 + 104) = v61;
          *(v59 + 64) = v61;
          *(v59 + 72) = v55;
          *(v59 + 80) = v54;
          *(v59 + 136) = v60;
          *(v59 + 144) = v61;
          *(v59 + 112) = v56;
          *(v59 + 120) = v53;
          v0 = v250;

          goto LABEL_14;
        }

        v174 = *(v250 + 480);
        v175 = *(v250 + 416);
        v176 = *(v250 + 360);
        v177 = *(v250 + 152);
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        v174(v175, v177, v176);
        v10 = v250;
        v142 = sub_22A4DD05C();
        v143 = sub_22A4DDCEC();
        v178 = os_log_type_enabled(v142, v143);
        v145 = *(v250 + 528);
        v146 = *(v250 + 448);
        v147 = *(v250 + 416);
        v148 = *(v250 + 352);
        v149 = *(v250 + 360);
        v179 = *(v250 + 256);
LABEL_55:
        v249 = v179;
        v184 = v10[26];
        v237 = v10[24];
        v242 = v10[25];
        v227 = v10[23];
        v232 = v10[19];
        if (v178)
        {
          v221 = v148;
          v185 = swift_slowAlloc();
          v218 = v146;
          v186 = swift_slowAlloc();
          v251 = v186;
          *v185 = 136315138;
          v198 = sub_22A4DBA6C();
          v199 = v149;
          v214 = v149;
          v200 = v198;
          v202 = v201;
          v145(v147, v199);
          v203 = sub_2295A3E30(v200, v202, &v251);
          v10 = v250;

          *(v185 + 4) = v203;
          v193 = "Ignoring event missing heatingSetpoint: %s";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      v138 = *(v250 + 480);
      v139 = *(v250 + 408);
      v140 = *(v250 + 360);
      v141 = *(v250 + 152);
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v138(v139, v141, v140);
      v10 = v250;
      v142 = sub_22A4DD05C();
      v143 = sub_22A4DDCEC();
      v144 = os_log_type_enabled(v142, v143);
      v145 = *(v250 + 528);
      v146 = *(v250 + 448);
      v147 = *(v250 + 408);
      v148 = *(v250 + 352);
      v149 = *(v250 + 360);
      v150 = *(v250 + 248);
    }

    else
    {
      if (v40 != *MEMORY[0x277D17288])
      {
        if (v40 != *MEMORY[0x277D17290])
        {
          v152 = *(v250 + 480);
          v153 = *(v250 + 384);
          v154 = *(v250 + 360);
          v155 = *(v250 + 152);
          sub_229562F68(0, &unk_27D87C380, off_278666068);
          sub_229557898();
          v152(v153, v155, v154);
          v10 = v250;
          v156 = sub_22A4DD05C();
          v157 = sub_22A4DDCDC();
          v158 = os_log_type_enabled(v156, v157);
          v159 = *(v250 + 528);
          v160 = *(v250 + 448);
          v161 = *(v250 + 384);
          v162 = *(v250 + 352);
          v163 = *(v250 + 360);
          v248 = *(v250 + 224);
          v164 = *(v250 + 208);
          v236 = *(v250 + 192);
          v241 = *(v250 + 200);
          v226 = *(v250 + 184);
          v231 = *(v250 + 152);
          if (v158)
          {
            v220 = *(v250 + 352);
            v165 = swift_slowAlloc();
            v217 = v160;
            v166 = swift_slowAlloc();
            v251 = v166;
            *v165 = 136315138;
            v167 = sub_22A4DBA6C();
            v168 = v163;
            v213 = v163;
            v169 = v167;
            v171 = v170;
            v159(v161, v168);
            v172 = sub_2295A3E30(v169, v171, &v251);
            v10 = v250;

            *(v165 + 4) = v172;
            _os_log_impl(&dword_229538000, v156, v157, "Ignoring event with unhandled systemMode: %s", v165, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v166);
            MEMORY[0x22AAD4E50](v166, -1, -1);
            MEMORY[0x22AAD4E50](v165, -1, -1);

            v159(v231, v213);
            (*(v164 + 8))(v248, v241);
            sub_22953EAE4(v220, &qword_27D881900, &unk_22A576E70);
            v173 = v217;
          }

          else
          {

            v159(v231, v163);
            v159(v161, v163);
            (*(v164 + 8))(v248, v241);
            sub_22953EAE4(v162, &qword_27D881900, &unk_22A576E70);
            v173 = v160;
          }

          sub_229562E30(v173);
          (*(v10[35] + 8))(v10[36], v10[34]);
          goto LABEL_4;
        }

        v131 = *(v0 + 520);
        if (v131)
        {
          v132 = *(v0 + 512);
          v133 = *(v0 + 168);
          v134 = *(v0 + 176);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
          v135 = swift_allocObject();
          *(v135 + 16) = xmmword_22A5761A0;
          v136 = MEMORY[0x277D837D0];
          *(v135 + 56) = MEMORY[0x277D837D0];
          v137 = sub_229562E8C();
          *(v135 + 32) = v133;
          *(v135 + 40) = v134;
          *(v135 + 96) = v136;
          *(v135 + 104) = v137;
          v0 = v250;
          *(v135 + 64) = v137;
          *(v135 + 72) = v132;
          *(v135 + 80) = v131;

          goto LABEL_14;
        }

        v194 = *(v250 + 480);
        v195 = *(v250 + 392);
        v196 = *(v250 + 360);
        v197 = *(v250 + 152);
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        v194(v195, v197, v196);
        v10 = v250;
        v142 = sub_22A4DD05C();
        v143 = sub_22A4DDCEC();
        v178 = os_log_type_enabled(v142, v143);
        v145 = *(v250 + 528);
        v146 = *(v250 + 448);
        v147 = *(v250 + 392);
        v148 = *(v250 + 352);
        v149 = *(v250 + 360);
        v179 = *(v250 + 232);
        goto LABEL_55;
      }

      v62 = *(v0 + 504);
      if (v62)
      {
        v63 = *(v0 + 496);
        v64 = *(v0 + 168);
        v65 = *(v0 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_22A5761A0;
        v67 = MEMORY[0x277D837D0];
        *(v66 + 56) = MEMORY[0x277D837D0];
        v68 = sub_229562E8C();
        *(v66 + 32) = v64;
        *(v66 + 40) = v65;
        *(v66 + 96) = v67;
        *(v66 + 104) = v68;
        v0 = v250;
        *(v66 + 64) = v68;
        *(v66 + 72) = v63;
        *(v66 + 80) = v62;

        goto LABEL_14;
      }

      v180 = *(v250 + 480);
      v181 = *(v250 + 400);
      v182 = *(v250 + 360);
      v183 = *(v250 + 152);
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v180(v181, v183, v182);
      v10 = v250;
      v142 = sub_22A4DD05C();
      v143 = sub_22A4DDCEC();
      v144 = os_log_type_enabled(v142, v143);
      v145 = *(v250 + 528);
      v146 = *(v250 + 448);
      v147 = *(v250 + 400);
      v148 = *(v250 + 352);
      v149 = *(v250 + 360);
      v150 = *(v250 + 240);
    }

    v249 = v150;
    v184 = v10[26];
    v237 = v10[24];
    v242 = v10[25];
    v227 = v10[23];
    v232 = v10[19];
    if (v144)
    {
      v221 = v148;
      v185 = swift_slowAlloc();
      v218 = v146;
      v186 = swift_slowAlloc();
      v251 = v186;
      *v185 = 136315138;
      v187 = sub_22A4DBA6C();
      v188 = v149;
      v214 = v149;
      v189 = v187;
      v191 = v190;
      v145(v147, v188);
      v192 = sub_2295A3E30(v189, v191, &v251);
      v10 = v250;

      *(v185 + 4) = v192;
      v193 = "Ignoring event missing coolingSetpoint: %s";
LABEL_57:
      _os_log_impl(&dword_229538000, v142, v143, v193, v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v186);
      MEMORY[0x22AAD4E50](v186, -1, -1);
      MEMORY[0x22AAD4E50](v185, -1, -1);

      v145(v232, v214);
      (*(v184 + 8))(v249, v242);
      sub_22953EAE4(v221, &qword_27D881900, &unk_22A576E70);
      v11 = v218;
      goto LABEL_3;
    }

LABEL_58:

    v145(v232, v149);
    v145(v147, v149);
    (*(v184 + 8))(v249, v242);
    sub_22953EAE4(v148, &qword_27D881900, &unk_22A576E70);
    v11 = v146;
    goto LABEL_3;
  }

  v42 = *(v0 + 168);
  v41 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_22A576180;
  *(v43 + 56) = MEMORY[0x277D837D0];
  *(v43 + 64) = sub_229562E8C();
  *(v43 + 32) = v42;
  *(v43 + 40) = v41;
LABEL_14:
  v44 = *(v0 + 448);
  v229 = *(v0 + 360);
  v234 = *(v0 + 352);
  v239 = *(v0 + 528);
  v46 = *(v0 + 184);
  v45 = *(v0 + 192);
  v47 = *(v0 + 152);

  v48 = sub_22A4DD5AC();
  v49 = HMDLocalizedStringForKey(v48);

  sub_22A4DD5EC();
  v33 = sub_22A4DD5BC();
  v35 = v50;

  v30 = v44;
  v51 = v47;
  v52 = v229;
LABEL_35:
  v239(v51, v52);
  v238 = v35;
  v244 = v33;
  sub_22953EAE4(v234, &qword_27D881900, &unk_22A576E70);
  sub_229562E30(v30);
  v10 = v250;
LABEL_36:

  v104 = v10[1];

  return v104(v244, v238);
}

uint64_t sub_229562C94(uint64_t a1)
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

unint64_t sub_229562CCC()
{
  result = qword_27D87C360;
  if (!qword_27D87C360)
  {
    sub_229562F68(255, &qword_27D87CEE0, 0x277CD1878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C360);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_229562DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229562E30(uint64_t a1)
{
  v2 = type metadata accessor for ClimateBulletinBuilder.ValenciaContent.MatterEventDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_229562E8C()
{
  result = qword_27D87C390;
  if (!qword_27D87C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C390);
  }

  return result;
}

uint64_t sub_229562EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_229562F14()
{
  result = qword_27D87C3F8;
  if (!qword_27D87C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C3F8);
  }

  return result;
}

uint64_t sub_229562F68(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_229562FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295632B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229563360(uint64_t a1)
{
  sub_2295638EC(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22A4DC86C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22A4DB57C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22A4DB57C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_229563590(uint64_t a1)
{
  result = sub_22A4DB57C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2295638EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_2295639D8@<X0>(char **a1@<X0>, char **a2@<X1>, unint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v75 - v11;
  v90 = _s21EventMetadataInternalV6DeviceVMa(0);
  v97 = *(v90 - 8);
  v12 = MEMORY[0x28223BE20](v90);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v75 - v17;
  v18 = sub_22A4DB7DC();
  v88 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v96 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v75 - v21);
  v23 = _s21EventMetadataInternalV4HomeVMa(0);
  MEMORY[0x28223BE20](v23);
  v93 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22A4DB74C();
  v25 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v95 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = _s21EventMetadataInternalVMa(0);
  MEMORY[0x28223BE20](v83);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s17HomeActivityStateO5EventVMa(0);
  v91 = *(v29 - 8);
  v92 = v29;
  MEMORY[0x28223BE20](v29);
  v81 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [a1 currentAccessory];
  if (v31)
  {
    v32 = v31;
    v80 = a2;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      a2 = v33;
      v76 = a3;
      sub_22A4DB71C();
      v34 = [a1 uuid];
      sub_22A4DB79C();

      v35 = [a1 users];
      v79 = a1;
      v78 = v25;
      if (!v35)
      {
        LODWORD(a3) = 1;
        goto LABEL_14;
      }

      v36 = v35;
      sub_229564C44();
      v37 = sub_22A4DD83C();

      if (v37 >> 62)
      {
        goto LABEL_33;
      }

      a3 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

      while (1)
      {
        a1 = v79;
        if (HIDWORD(a3))
        {
          __break(1u);
          goto LABEL_8;
        }

LABEL_14:
        v86 = v14;
        v41 = v88;
        v42 = v93;
        (*(v88 + 32))(v93, v22, v18);
        *(v42 + *(v23 + 20)) = a3;
        v43 = *(v97 + 56);
        v44 = v90;
        v97 += 56;
        v77 = v43;
        v43(v94, 1, 1, v90);
        v45 = v32;
        v46 = [a2 uuid];
        sub_22A4DB79C();

        v47 = [a2 room];
        v75 = v45;

        v48 = [v47 uuid];
        v49 = v89;
        sub_22A4DB79C();

        v50 = *(v41 + 56);
        v50(v49, 0, 1, v18);
        LOBYTE(v47) = [a1 isCurrentDevicePrimaryResident];
        v51 = v44[5];
        v50(&v86[v51], 1, 1, v18);
        v52 = &v86[v44[9]];
        *v52 = 0;
        v52[1] = 0;
        v53 = v41;
        v54 = v86;
        (*(v53 + 16))(v86, v96, v18);
        v55 = v85;
        sub_229564F88(v49, v85, &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v54 + v51, &qword_27D87CBF0, &qword_22A577898);
        sub_229564B0C(v55, v54 + v51);
        *(v54 + v44[6]) = 1;
        *(v54 + v44[7]) = 0;
        *(v54 + v44[8]) = v47;
        result = MobileGestalt_get_current_device();
        if (!result)
        {
LABEL_35:
          __break(1u);
          return result;
        }

        v56 = result;
        v57 = MobileGestalt_copy_deviceColor_obj();

        if (v57)
        {
          v58 = sub_22A4DD5EC();
          v60 = v59;
        }

        else
        {
          v58 = 0;
          v60 = 0;
        }

        sub_22953EAE4(v89, &unk_27D87D2A0, &unk_22A578BD0);
        (*(v88 + 8))(v96, v18);
        *v52 = v58;
        v52[1] = v60;
        v61 = v87;
        sub_229564F20(v54, v87, _s21EventMetadataInternalV6DeviceVMa);
        v62 = _s21EventMetadataInternalV4UserVMa(0);
        v63 = *(*(v62 - 8) + 56);
        v64 = v84;
        v63(v84, 1, 1, v62);
        *v28 = 1;
        v32 = v83;
        sub_22A4DB7CC();
        a2 = v32[9];
        v77(a2 + v28, 1, 1, v90);
        v14 = v32[11];
        v63(&v14[v28], 1, 1, v62);
        *(v28 + 8) = 0xD000000000000017;
        *(v28 + 16) = 0x800000022A589C60;
        v65 = v78;
        v18 = v82;
        (*(v78 + 16))(v28 + v32[7], v95, v82);
        sub_229564EB8(v93, v28 + v32[8], _s21EventMetadataInternalV4HomeVMa);
        sub_229564B7C(v94, a2 + v28, &qword_27D87CBE8, &qword_22A577890);
        sub_229564EB8(v61, v28 + v32[10], _s21EventMetadataInternalV6DeviceVMa);
        sub_229564B7C(v64, &v14[v28], &qword_27D87CBE0, &unk_22A577880);
        v22 = &selRef_identifyEndpoint_identifyTime_message_;
        v23 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v23 systemUptime];
        v67 = v66;

        v68 = v67 * 1000.0;
        if (COERCE__INT64(fabs(v67 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v68 <= -1.0)
        {
          goto LABEL_27;
        }

        if (v68 >= 1.84467441e19)
        {
          goto LABEL_28;
        }

        *(v28 + v32[12]) = v68;
        v23 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
        [v23 timeIntervalSince1970];
        v70 = v69;

        sub_22953EAE4(v64, &qword_27D87CBE0, &unk_22A577880);
        sub_229564BE4(v87, _s21EventMetadataInternalV6DeviceVMa);
        sub_22953EAE4(v94, &qword_27D87CBE8, &qword_22A577890);
        sub_229564BE4(v93, _s21EventMetadataInternalV4HomeVMa);
        (*(v65 + 8))(v95, v18);
        v71 = v70 * 1000.0;
        if (COERCE__INT64(fabs(v70 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_29;
        }

        if (v71 <= -1.0)
        {
          goto LABEL_30;
        }

        if (v71 < 1.84467441e19)
        {
          *(v28 + v32[13]) = v71;
          v72 = v28;
          v28 = v81;
          sub_229564F20(v72, v81, _s21EventMetadataInternalVMa);
          v22 = v80;
          v23 = [v80 state];

          if (!HIDWORD(v23))
          {
            v73 = v92;
            *(v28 + *(v92 + 20)) = v23;
            v74 = v76;
            sub_229564F20(v28, v76, _s17HomeActivityStateO5EventVMa);
            return (*(v91 + 56))(v74, 0, 1, v73);
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        a3 = sub_22A4DE0EC();

        if ((a3 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    a1 = v80;
  }

  else
  {
LABEL_8:
    v32 = a2;
  }

  v38 = v92;
  v39 = *(v91 + 56);

  return v39(a3, 1, 1, v38);
}

uint64_t sub_2295645D4()
{
  v5 = _s21EventMetadataInternalVMa(0);
  v6 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  sub_229564EB8(v0, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v4);
  sub_22953EAE4(v4, &qword_27D882000, &qword_22A578390);
  v2 = *(v0 + *(_s17HomeActivityStateO5EventVMa(0) + 20));
  v5 = MEMORY[0x277D84CC0];
  v6 = &off_283CDFC58;
  LODWORD(v4[0]) = v2;
  return sub_229890DC4(v4, 0xD000000000000011, 0x800000022A589C40);
}

uint64_t sub_2295646C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  sub_229564F88(a1 + *(v7 + 20), v6, &qword_27D87CC38, &unk_22A5784B0);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_229564F20(v6, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_229564870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564EB8(a1, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v8 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0) + 20);
  sub_22953EAE4(a2 + v8, &qword_27D87CC38, &unk_22A5784B0);
  sub_229564F20(v7, a2 + v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t _s17HomeActivityStateO5EventVMa(uint64_t a1)
{
  result = qword_27D87CBF8;
  if (!qword_27D87CBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295649F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  KeyPath = swift_getKeyPath();
  v13 = _s21EventMetadataInternalVMa(0);
  v14 = sub_229564E70(&qword_27D87CC28, _s21EventMetadataInternalVMa, &unk_22A57FD08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_229564EB8(v4, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679F28(KeyPath, v12);

  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v8 = *(v4 + *(a2 + 20));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC30, &unk_22A577960) + 36);
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  v11 = a1 + *(result + 24) + v9;
  *v11 = v8;
  *(v11 + 4) = 0;
  return result;
}

uint64_t sub_229564B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229564B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_229564BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_229564C44()
{
  result = qword_281401790;
  if (!qword_281401790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401790);
  }

  return result;
}

void sub_229564CC8(uint64_t a1)
{
  _s21EventMetadataInternalVMa(319);
  if (v1 <= 0x3F)
  {
    sub_229564D4C(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_229564D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27D87CC08)
  {
    v4 = _s7SecuredVMa(0, MEMORY[0x277D84CC0], &off_281893698, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27D87CC08);
    }
  }
}

uint64_t sub_229564DEC(uint64_t a1)
{
  *(a1 + 16) = sub_229564E70(&qword_27D87CC18, _s17HomeActivityStateO5EventVMa, &unk_22A5778B8);
  result = sub_229564E70(&qword_27D87CC20, _s17HomeActivityStateO5EventVMa, &unk_22A5778F0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229564E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229564EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_229564F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_229564F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_229565114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  result = [v1 durationMilliseconds];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    *(inited + 56) = 0x73736563637573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v4 = sub_22956AC48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
    swift_arrayDestroy();
    return v4;
  }

  __break(1u);
  return result;
}

id sub_2295653A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDHomeKeySetupWalletLogEventV2();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22956540C()
{
  result = qword_281401760;
  if (!qword_281401760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401760);
  }

  return result;
}

unint64_t sub_2295656D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5779B0;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x7475626972747461;
  *(inited + 112) = 0xEB00000000644965;
  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_attributeId);
  *(inited + 120) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v8;
}

id sub_229565950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_229565A48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  v29 = a6;
  v30 = sub_22A4DB7DC();
  v15 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003BLL;
  *(v18 + 1) = 0x800000022A58A010;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_nodeId] = a2;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_endpointId] = a3;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_clusterId] = a4;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_attributeId] = a5;
  v19 = v29;
  sub_2295404B0(v29, &v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a7;
  v20 = a7;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = [a1 uuid];
  sub_22A4DB79C();

  v25 = sub_22A4DB77C();
  (*(v15 + 8))(v17, v30);
  v26 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v31.receiver = v8;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, sel_initWithHomeUUID_, v25);

  __swift_destroy_boxed_opaque_existential_0(v19);
  return v27;
}

uint64_t sub_229565C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v32 = a1;
  v33 = a3;
  v34 = a5;
  v37 = sub_22A4DD26C();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD29C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229568DA8(v31, v20);
  (*(v14 + 16))(v16, v32, v13);
  v21 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v22 = (v19 + *(v14 + 80) + v21) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 2) = v33;
  *(v23 + 3) = a4;
  *(v23 + 4) = a2;
  *(v23 + 5) = v24;
  *(v23 + 6) = a6;
  sub_229568E0C(v20, &v23[v21]);
  (*(v14 + 32))(&v23[v22], v16, v13);
  aBlock[4] = sub_229568E70;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);

  a2;

  v26 = v35;
  sub_22A4DD28C();
  v41 = MEMORY[0x277D84F90];
  sub_22953E0B0(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v28 = v36;
  v27 = v37;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v26, v28, v25);
  _Block_release(v25);
  (*(v40 + 8))(v28, v27);
  (*(v38 + 8))(v26, v39);
}

void sub_22956609C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v77 = a7;
  v75 = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v78 = sub_22A4DD07C();
  v76 = *(v78 - 8);
  v12 = MEMORY[0x28223BE20](v78);
  v71 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v70 = &v69 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v74 = &v69 - v18;
  v19 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() sharedScheduler];
  v24 = sub_22A4DD5AC();
  v73 = a6;
  sub_229568DA8(a6, v22);
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  sub_229568E0C(v22, v26 + v25);
  aBlock[4] = sub_229568F54;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229566C20;
  aBlock[3] = &block_descriptor_8;
  v27 = _Block_copy(aBlock);

  [v23 registerForTaskWithIdentifier:v24 usingQueue:v75 launchHandler:v27];
  _Block_release(v27);

  v28 = sub_22A4DD5AC();
  v29 = [v23 taskRequestForIdentifier_];

  if (v29)
  {
    sub_22A4DD5EC();
    if (qword_27D87B890 != -1)
    {
      swift_once();
    }

    v30 = v74;
    sub_22A4DD06C();
    v31 = v29;
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDD0C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v23;
      v36 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v36 = v29;
      v37 = v31;
      _os_log_impl(&dword_229538000, v32, v33, "Task already scheduled: %@", v34, 0xCu);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      v38 = v36;
      v23 = v35;
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    (*(v76 + 8))(v30, v78);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8FC();

    return;
  }

  v39 = v72;
  v40 = sub_229568FD8(a1, a2, v73);
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v41 = v40;
  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCDC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&dword_229538000, v42, v43, "Scheduling new task: %@", v44, 0xCu);
    sub_22953EAE4(v45, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v45, -1, -1);
    MEMORY[0x22AAD4E50](v44, -1, -1);
  }

  v76 = *(v76 + 8);
  (v76)(v39, v78);
  aBlock[0] = 0;
  v47 = [v23 submitTaskRequest:v41 error:aBlock];
  v48 = aBlock[0];
  if (v47)
  {
    sub_22A4DD5EC();

    v49 = v48;
    v50 = v70;
    sub_22A4DD06C();
    v31 = v41;
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDD0C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v31;
      *v54 = v31;
      v55 = v31;
      _os_log_impl(&dword_229538000, v51, v52, "Scheduled new task: %@", v53, 0xCu);
      sub_22953EAE4(v54, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (v76)(v50, v78);
    goto LABEL_15;
  }

  v75 = v23;
  v56 = aBlock[0];
  v57 = sub_22A4DB3EC();

  swift_willThrow();
  sub_22A4DD5EC();

  v58 = v71;
  sub_22A4DD06C();
  v59 = v41;
  v60 = v57;
  v61 = sub_22A4DD05C();
  v62 = sub_22A4DDCEC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412546;
    *(v63 + 4) = v59;
    *v64 = v59;
    *(v63 + 12) = 2112;
    v65 = v59;
    v66 = v57;
    v67 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 14) = v67;
    v64[1] = v67;
    _os_log_impl(&dword_229538000, v61, v62, "Failed to schedule new task: %@, %@", v63, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v64, -1, -1);
    MEMORY[0x22AAD4E50](v63, -1, -1);
  }

  (v76)(v58, v78);
  aBlock[0] = v57;
  v68 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8EC();
}

uint64_t sub_2295669E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v11 = a1;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDD0C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_229538000, v12, v13, "Task started: %@", v14, 0xCu);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v17 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  return sub_2295695BC(v11, a2, v20, a4 + *(v17 + 28));
}

void sub_229566C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_229566C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x2822009F8](sub_229566CB4, 0, 0);
}

uint64_t sub_229566CB4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  *(v5 + 56) = v2;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_229566DC8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000002BLL, 0x800000022A58A050, sub_229568D98, v5, v8);
}

uint64_t sub_229566DC8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_229566EFC;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229566EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_229566F60(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v8 = a1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDD0C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_229538000, v9, v10, "Expiration handler was called for task: %@", v11, 0xCu);
    sub_22953EAE4(v12, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  os_unfair_lock_lock((a2 + 16));
  *(a2 + 24) = 1;
  if (*(a2 + 32))
  {
    sub_22A4DDA7C();
  }

  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_2295671B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_22A4DD90C();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229567344, 0, 0);
}

uint64_t sub_229567344()
{
  v0[19] = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = unk_27D8AB620;
  v0[20] = qword_27D8AB618;
  v0[21] = v2;

  sub_22A4DD06C();
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_229538000, v4, v5, "Running detached handler for task: %@", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v10 = v0[18];
  v11 = v0[10];
  v12 = v0[11];

  v13 = *(v12 + 8);
  v0[22] = v13;
  v0[23] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_22A4DDABC();
  v14 = v0[4];
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v15 = v14;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDD0C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[4];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v18;
    *v20 = v18;
    v21 = v18;
    _os_log_impl(&dword_229538000, v16, v17, "Running task handler for task: %@", v19, 0xCu);
    sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  v22 = v0[17];
  v23 = v0[10];
  v24 = v0[5];

  v13(v22, v23);
  v27 = (v24 + *v24);
  v25 = swift_task_alloc();
  v0[24] = v25;
  *v25 = v0;
  v25[1] = sub_229567EC8;

  return v27();
}

uint64_t sub_229567EC8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_229568228;
  }

  else
  {
    v2 = sub_229568008;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229568008()
{
  v1 = v0[4];
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_229538000, v3, v4, "Marking completed for task: %@", v6, 0xCu);
    sub_22953EAE4(v7, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v9 = v0[22];
  v10 = v0[15];
  v11 = v0[10];
  v12 = v0[4];

  v9(v10, v11);
  [v12 setTaskCompleted];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229568228()
{
  v1 = *(v0 + 200);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 32);
  if (v3)
  {

    sub_22A4DD5EC();

    sub_22A4DD06C();
    v5 = v4;
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDD0C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&dword_229538000, v6, v7, "Task handler was canceled for task: %@", v9, 0xCu);
      sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v12 = *(v0 + 176);
    v13 = *(v0 + 112);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = v6;
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 32);

    v12(v13, v14);
    (*(v17 + 8))(v15, v18);

    *(v0 + 24) = 0;
    v20 = [v19 setTaskExpiredWithRetryAfter:v0 + 24 error:0.0];
    v21 = *(v0 + 24);
    v22 = *(v0 + 32);
    if (v20)
    {
      sub_22A4DD5EC();

      v23 = v21;
      sub_22A4DD06C();
      v24 = v22;
      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDD0C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v0 + 32);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v27;
        *v29 = v27;
        v30 = v27;
        _os_log_impl(&dword_229538000, v25, v26, "Successfully expired task: %@", v28, 0xCu);
        sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v29, -1, -1);
        MEMORY[0x22AAD4E50](v28, -1, -1);
      }

      v31 = *(v0 + 176);
      v32 = *(v0 + 128);
      v33 = *(v0 + 80);

      v31(v32, v33);
      goto LABEL_19;
    }

    v44 = v21;
    v45 = sub_22A4DB3EC();

    swift_willThrow();
    sub_22A4DD5EC();

    sub_22A4DD06C();
    v46 = v22;
    v47 = v45;
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 32);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412546;
      *(v51 + 4) = v50;
      *v52 = v50;
      *(v51 + 12) = 2112;
      v53 = v50;
      v54 = v45;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v55;
      v52[1] = v55;
      _os_log_impl(&dword_229538000, v48, v49, "Failed to expire task: %@, %@", v51, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v51, -1, -1);
    }

    else
    {
    }

    (*(v0 + 176))(*(v0 + 96), *(v0 + 80));
  }

  else
  {

    sub_22A4DD5EC();

    sub_22A4DD06C();
    v34 = v4;
    v35 = v1;
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412546;
      *(v39 + 4) = v38;
      *v40 = v38;
      *(v39 + 12) = 2112;
      v41 = v38;
      v42 = v1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v43;
      v40[1] = v43;
      _os_log_impl(&dword_229538000, v36, v37, "Task handler threw error for task: %@, %@", v39, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);
    }

    else
    {
    }

    (*(v0 + 176))(*(v0 + 104), *(v0 + 80));
  }

  v56 = *(v0 + 32);
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v57 = v56;
  v58 = sub_22A4DD05C();
  v59 = sub_22A4DDD0C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 32);
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    *(v61 + 4) = v60;
    *v62 = v60;
    v63 = v60;
    _os_log_impl(&dword_229538000, v58, v59, "Marking completed for task: %@", v61, 0xCu);
    sub_22953EAE4(v62, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v62, -1, -1);
    MEMORY[0x22AAD4E50](v61, -1, -1);
  }

  v64 = *(v0 + 176);
  v65 = *(v0 + 120);
  v66 = *(v0 + 80);
  v67 = *(v0 + 32);

  v64(v65, v66);
  [v67 setTaskCompleted];
LABEL_19:

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_229568A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_229569C24(a3, v25 - v10);
  v12 = sub_22A4DD9DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22953EAE4(v11, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22A4DD8CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22A4DD67C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_229568CDC()
{
  type metadata accessor for HindsightDigestController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD18, &unk_22A577A50);
  result = sub_22A4DD64C();
  qword_27D8AB618 = result;
  unk_27D8AB620 = v1;
  return result;
}

uint64_t sub_229568D30()
{
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  v0 = qword_27D8AB618;

  return v0;
}

uint64_t sub_229568DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229568E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_229568E70()
{
  v1 = *(type metadata accessor for HindsightDigestController.TaskConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = *(v0 + 5);
  v9 = *(v0 + 6);
  v10 = &v0[(v3 + *(v4 + 80)) & ~*(v4 + 80)];

  sub_22956609C(v5, v6, v7, v8, v9, &v0[v2], v10);
}

uint64_t sub_229568F54(void *a1)
{
  v3 = *(type metadata accessor for HindsightDigestController.TaskConfiguration(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2295669E4(a1, v4, v5, v6);
}

id sub_229568FD8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_22A4DD9DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v12 = sub_22A4DD5AC();
  v13 = [v11 initWithIdentifier_];

  v14 = 24 * *a3;
  if ((*a3 * 24) >> 64 != v14 >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v14 * 60) >> 64 != (1440 * *a3) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((1440 * *a3 * 60) >> 64 != (86400 * *a3) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v13 setMinDurationBetweenInstances_];
  v15 = *(a3 + 1);
  v16 = 24 * v15;
  if ((v15 * 24) >> 64 != (24 * v15) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = 1440 * v15;
  if ((v16 * 60) >> 64 != v17 >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v17 * 60) >> 64 != (60 * v17) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v13 setInterval_];
  v18 = *(a3 + 2);
  v19 = 60 * v18;
  if ((v18 * 60) >> 64 != (60 * v18) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = 3600 * v18;
  if ((v19 * 60) >> 64 != v20 >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  v22 = v13;
  [v22 setRandomInitialDelay_];
  v23 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(v5 + 16))(v10, &a3[*(v23 + 28)], v4);
  sub_22A4DD97C();
  sub_22953E0B0(&qword_27D87CD20, MEMORY[0x277D85720], MEMORY[0x277D85728]);
  v24 = sub_22A4DD58C();
  v25 = *(v5 + 8);
  v25(v8, v4);
  if (v24 & 1) != 0 || (sub_22A4DD97C(), v26 = sub_22A4DD58C(), v25(v8, v4), (v26))
  {
    v27 = 3;
LABEL_12:
    v25(v10, v4);
    [v22 setPriority_];
    [v22 setRequiresNetworkConnectivity_];
    [v22 setRequiresUserInactivity_];
    [v22 setPowerNap_];
    [v22 setShouldWakeDevice_];
    [v22 setRequiresBuddyComplete_];
    [v22 setResources_];
    [v22 setNetworkDownloadSize_];
    [v22 setExpectedDuration_];

    return v22;
  }

  sub_22A4DD9BC();
  v29 = sub_22A4DD58C();
  v25(v8, v4);
  if (v29 & 1) != 0 || (sub_22A4DD98C(), v30 = sub_22A4DD58C(), v25(v8, v4), (v30))
  {
    v27 = 2;
    goto LABEL_12;
  }

  sub_22A4DD98C();
  v31 = sub_22A4DD58C();
  v25(v8, v4);
  if (v31 & 1) != 0 || (sub_22A4DD96C(), v32 = sub_22A4DD58C(), v25(v8, v4), (v32))
  {
    v27 = 1;
    goto LABEL_12;
  }

LABEL_27:
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_22A4DE1FC();

  v34 = 0xD000000000000014;
  v35 = 0x800000022A58A0E0;
  sub_22953E0B0(&qword_27D87CD28, MEMORY[0x277D85720], MEMORY[0x277D85730]);
  v33 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v33);

  result = sub_22A4DE39C();
  __break(1u);
  return result;
}

uint64_t sub_2295695BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v31 = sub_22A4DD07C();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = (v11 + 16);
  *(v11 + 24) = 0;
  v32 = (v11 + 24);
  *(v11 + 32) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v11;
  aBlock[4] = sub_229569A60;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 setExpirationHandler_];
  _Block_release(v14);
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v16 = v15;
  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCCC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_229538000, v17, v18, "Starting detached handler for task: %@", v19, 0xCu);
    sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  (*(v8 + 8))(v10, v31);
  v22 = sub_22A4DD9DC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v7, v33, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v25 = v34;
  v26 = v35;
  v24[4] = v16;
  v24[5] = v25;
  v24[6] = v26;
  v27 = v16;

  v28 = sub_229568A2C(0, 0, v7, &unk_22A577A78, v24);
  sub_22953EAE4(v7, &unk_27D87D8F0, &qword_22A578D70);
  os_unfair_lock_lock(v12);
  if (*v32 == 1)
  {
    sub_22A4DDA7C();
  }

  else
  {
    *(v11 + 32) = v28;
  }

  os_unfair_lock_unlock(v12);
}

uint64_t sub_229569A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2295671B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229569B30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_229569C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229569C94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229569B30;

  return sub_22953E774(a1, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_229569D58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_229569DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_229569E40()
{
  v1 = *v0;
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](v1);
  return sub_22A4DE7BC();
}

uint64_t sub_229569E88(uint64_t a1)
{
  v2 = *v1;
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](v2);
  return sub_22A4DE7BC();
}

id RestrictedGuestInfoLogEvent.init(home:)(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName];
  *v8 = 0xD000000000000025;
  v8[1] = 0x800000022A589230;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions] = 2;
  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_hasHomeKey] = 0;
  v9 = [a1 currentUser];
  if (v9 && (v10 = v9, v11 = [v9 accessCode], v10, v11))
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_hasPinCode] = v12;
  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_isChildWatch] = isTinkerWatch();
  v13 = [a1 currentUser];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v13 restrictedGuestAccessSettings];

  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = [v15 schedule];

  if (v16)
  {
    v17 = [v16 weekDayRules];

    sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
    v18 = sub_22A4DD83C();

    if (v18 >> 62)
    {
      v15 = sub_22A4DE0EC();
    }

    else
    {
      v15 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

LABEL_12:
  v19 = [a1 currentUser];
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 restrictedGuestAccessSettings];

  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = [v21 schedule];

  if (v22)
  {
    v23 = [v22 yearDayRules];

    sub_229562F68(0, &qword_27D87CD78, 0x277CD1F48);
    v24 = sub_22A4DD83C();

    if (v24 >> 62)
    {
      v21 = sub_22A4DE0EC();
    }

    else
    {
      v21 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = &v21[v15]; __OFADD__(v15, v21); i = &v21[v15])
    {
      __break(1u);
LABEL_20:
      v21 = 0;
LABEL_21:
      ;
    }
  }

  else
  {
    v21 = 0;
    i = v15;
  }

  *&v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_numberOfSchedules] = i;
  v26 = v15 != 0;
  if (v15)
  {
    v27 = 3;
  }

  else
  {
    v27 = 2;
  }

  if (v21)
  {
    v26 = v27;
  }

  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_scheduleType] = v26;
  v28 = [a1 uuid];
  sub_22A4DB79C();

  v29 = sub_22A4DB77C();
  (*(v5 + 8))(v7, v4);
  v30 = type metadata accessor for RestrictedGuestInfoLogEvent();
  v33.receiver = v2;
  v33.super_class = v30;
  v31 = objc_msgSendSuper2(&v33, sel_initWithHomeUUID_, v29);

  return v31;
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

unint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A577B20;
  *(inited + 32) = 0x4B656D6F48736168;
  *(inited + 40) = 0xEA00000000007965;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x6F436E6950736168;
  *(inited + 64) = 0xEA00000000006564;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "isChildWatch");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000022A58A100;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 128), "scheduleType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = sub_22956B300(inited, &unk_27D87CE60, &qword_22A577CD8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v2;
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventOptions.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RestrictedGuestInfoLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22A4DB77C();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_22A4DB7DC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id RestrictedGuestInfoLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id RestrictedGuestInfoLogEvent.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RestrictedGuestInfoLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_22956AC5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, &v13, &unk_27D87DE50, &qword_22A577CD0);
      v5 = v13;
      v6 = v14;
      result = sub_229543DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_229543C5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_22956AD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, &v13, &qword_27D87CDA0, &unk_22A57A930);
      v5 = v13;
      v6 = v14;
      result = sub_229543DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_229543C5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_22956AF0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_229543DBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_22956B000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE30, &qword_22A577CB0);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_2296DBDF0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22956B0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDF8, &qword_22A577C78);
    v3 = sub_22A4DE40C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_2296DBE78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22956B1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDF0, &qword_22A577C70);
  v3 = sub_22A4DE40C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_2296DBE78(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_22956C148(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_2296DBE78(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22956B300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_229543DBC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_22956B3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE00, &unk_22A577C80);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, v13, &qword_27D87CE08, &qword_22A57BC60);
      result = sub_2295402E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_229543C5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_22956B538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882070, &qword_22A586C60);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_229543DBC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_22956B634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D882120, &unk_22A577CE0);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, &v13, &unk_27D87CE70, &qword_22A583FC0);
      v5 = v13;
      v6 = v14;
      result = sub_229543DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_229557188(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_22956B768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CDE0, &unk_22A577C60);
    v7 = sub_22A4DE40C();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_229564F88(v9, v5, &qword_27D87CDD8, &qword_22A577C58);
      result = sub_2296DBEC0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22A4DB7DC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22956B974(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_229543DBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_22956BA84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_229543DBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_22956BB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDB0, &qword_22A577C28);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_229543DBC(v5, v6);
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

unint64_t sub_22956BC7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDB8, &qword_22A577C30);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_229543DBC(v5, v6);
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

unint64_t sub_22956BD80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC0, &qword_22A577C38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC8, &unk_22A577C40);
    v7 = sub_22A4DE40C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_229564F88(v9, v5, &qword_27D87CDC0, &qword_22A577C38);
      v11 = *v5;
      v12 = v5[1];
      result = sub_229543DBC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22A4DC09C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22956BF94()
{
  result = qword_27D87CD98;
  if (!qword_27D87CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87CD98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictedGuestInfoLogEvent.ScheduleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictedGuestInfoLogEvent.ScheduleType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22956C148(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22956C1A0()
{
  v7 = sub_22A4DDD7C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22A4DDD5C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22A4DD29C();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_229562F68(0, &qword_281401980, 0x277D85C78);
  v8 = type metadata accessor for DemoAccessoryServerBrowser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEC8, &qword_22A577D38);
  v6[0] = sub_22A4DD64C();
  sub_22A4DD28C();
  v8 = MEMORY[0x277D84F90];
  sub_22953E0F8(&qword_281401990, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_229579858(&qword_281401CA0, &unk_27D87BAF0, &unk_22A5761E0);
  sub_22A4DE03C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_22A4DDDCC();
  qword_27D8AB628 = result;
  return result;
}

void sub_22956C41C()
{
  if (qword_27D87B898 != -1)
  {
    swift_once();
  }

  v0 = qword_27D8AB628;
  v1 = objc_allocWithZone(type metadata accessor for DemoAccessoryServerBrowser());
  v2 = v0;
  v3 = [v1 initWithQueue_];

  if (v3)
  {
    qword_27D8AB630 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22956C548()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD26C();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD29C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 workQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = ObjectType;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_22957A430;
    *(v11 + 24) = v10;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_83;
    v20 = _Block_copy(aBlock);
    v21 = v6;
    v12 = v0;
    v13 = v9;

    sub_22A4DD28C();
    v23 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v14 = v22;
    v19 = v5;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v15 = v20;
    MEMORY[0x22AAD0F80](0, v8, v4, v20);
    _Block_release(v15);

    (*(v14 + 8))(v4, v2);
    (*(v21 + 8))(v8, v19);
  }

  else
  {
    v17 = v0;
  }
}

void *sub_22956C8B4(void *a1, uint64_t a2)
{
  v66 = sub_22A4DD26C();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22A4DD29C();
  v6 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(a2, &off_283CDC748);
  v12 = a1;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  v15 = os_log_type_enabled(v13, v14);
  v70 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v71 = v4;
    v69 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v76[0] = v18;
    *v17 = 136315138;
    aBlock = 91;
    v74 = 0xE100000000000000;
    v19 = [v12 shortDescription];
    v68 = v8;
    v20 = v19;
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);
    v12 = v70;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(aBlock, v74, v76);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_229538000, v13, v14, "%s Start discovering accessory servers", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    v25 = v17;
    v6 = v69;
    v4 = v71;
    MEMORY[0x22AAD4E50](v25, -1, -1);

    (*(v9 + 8))(v11, v68);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v12[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_browsing] = 1;
  v26 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v58 = *&v12[v26];
  if ((v58 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer(0);
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer, MEMORY[0x277D85378]);
    result = sub_22A4DDBAC();
    v28 = v76[1];
    v71 = v76[0];
    v30 = v76[2];
    v29 = v76[3];
    v31 = v76[4];
  }

  else
  {
    v32 = -1 << *(v58 + 32);
    v28 = v58 + 56;
    v30 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v58 + 56);
    v35 = v58;
    result = swift_bridgeObjectRetain_n();
    v29 = 0;
    v71 = v35;
  }

  v57[1] = v30;
  v36 = (v30 + 64) >> 6;
  v61 = v75;
  v60 = (v4 + 8);
  v59 = v6 + 1;
  v62 = v36;
  if ((v71 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v53 = sub_22A4DE12C();
  v50 = v70;
  if (v53 && (v72 = v53, type metadata accessor for DemoAccessoryServer(0), swift_dynamicCast(), v52 = aBlock, v49 = v29, v51 = v31, aBlock))
  {
    while (1)
    {
      v54 = *&v50[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
      v55 = swift_allocObject();
      *(v55 + 16) = v50;
      *(v55 + 24) = v52;
      if (v54)
      {
        v37 = swift_allocObject();
        *(v37 + 16) = sub_22957A438;
        *(v37 + 24) = v55;
        v75[2] = sub_22957A47C;
        v75[3] = v37;
        aBlock = MEMORY[0x277D85DD0];
        v74 = 1107296256;
        v75[0] = sub_22953E640;
        v75[1] = &block_descriptor_93;
        v69 = _Block_copy(&aBlock);
        v38 = v54;
        v39 = v50;
        v40 = v38;
        v67 = v52;

        v41 = v63;
        sub_22A4DD28C();
        v72 = MEMORY[0x277D84F90];
        sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v68 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
        sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
        v42 = v65;
        v43 = v28;
        v44 = v66;
        sub_22A4DE03C();
        v45 = v69;
        MEMORY[0x22AAD0F80](0, v41, v42, v69);
        _Block_release(v45);

        v46 = v44;
        v28 = v43;
        v36 = v62;
        (*v60)(v42, v46);
        (*v59)(v41, v64);

        v29 = v49;
        v31 = v68;
        if (v71 < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v56 = v50;

        v29 = v49;
        v31 = v51;
        if (v71 < 0)
        {
          goto LABEL_19;
        }
      }

LABEL_13:
      v47 = v29;
      v48 = v31;
      v49 = v29;
      v50 = v70;
      if (!v31)
      {
        break;
      }

LABEL_17:
      v51 = (v48 - 1) & v48;
      v52 = *(*(v71 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));
      if (!v52)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v36)
      {
        goto LABEL_24;
      }

      v48 = *(v28 + 8 * v49);
      ++v47;
      if (v48)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22953EE84(v71);
  }

  return result;
}

uint64_t sub_22956D0FC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD26C();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD29C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 workQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = ObjectType;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_22957A428;
    *(v11 + 24) = v10;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_73;
    v20 = _Block_copy(aBlock);
    v21 = v6;
    v12 = v0;
    v13 = v9;

    sub_22A4DD28C();
    v23 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v14 = v22;
    v19 = v5;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v15 = v20;
    MEMORY[0x22AAD0F80](0, v8, v4, v20);
    _Block_release(v15);

    (*(v14 + 8))(v4, v2);
    (*(v21 + 8))(v8, v19);
  }

  else
  {
    v17 = v0;
  }
}

uint64_t sub_22956D468(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(a2, &off_283CDC748);
  v8 = a1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v21 = 91;
    v22 = 0xE100000000000000;
    v23 = v13;
    v14 = [v8 shortDescription];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(v21, v22, &v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_229538000, v9, v10, "%s Stop discovering accessory servers", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    result = (*(v5 + 8))(v7, v20);
  }

  else
  {

    result = (*(v5 + 8))(v7, v4);
  }

  *(v8 + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_browsing) = 0;
  return result;
}

uint64_t sub_22956D6F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22A4DD26C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD29C();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_22957A3FC;
    *(v14 + 24) = v13;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_63;
    v20 = _Block_copy(aBlock);
    v21 = v9;
    v15 = v12;
    v16 = v2;

    sub_22A4DD28C();
    v23 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v17 = v20;
    MEMORY[0x22AAD0F80](0, v11, v8, v20);
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v22 + 8))(v11, v21);
  }

  else
  {
    v19 = v2;
  }
}

void sub_22956DA58(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 workQueue];
  if (v4)
  {
    v5 = v4;
    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EB0, &qword_22A577DE0);
    sub_22A4DDD9C();

    v6 = v11;
    if (v11)
    {
      v7 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate];
      if (v7)
      {
        swift_unknownObjectRetain();
        v6 = v11;
        [v6 stateNumber];
        v8 = sub_22A4DDBDC();
        [v7 accessoryServerBrowser:a1 didFindAccessoryServer:v6 stateChanged:0 stateNumber:v8];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate];
      if (v9)
      {
        swift_unknownObjectRetain();
        v10 = sub_22A4DD5AC();
        [v9 accessoryServerBrowser:a1 didFailToDiscoverAccessoryServerWithIdentifier:v10];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22956DD10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v34 = a4;
  if ((v9 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer(0);
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer, MEMORY[0x277D85378]);
    sub_22A4DDBAC();
    v10 = v37;
    v11 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);
    v10 = v9;
    swift_bridgeObjectRetain_n();
    v13 = 0;
  }

  v18 = (v12 + 64) >> 6;
  v35 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_22A4DE12C() && (type metadata accessor for DemoAccessoryServer(0), swift_dynamicCast(), v19 = v42, v20 = v13, v21 = v14, v42))
  {
    while (1)
    {
      v24 = v11;
      v36 = v19;
      v25 = a2;
      v26 = a3;
      v27 = [v19 identifier];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      a3 = v26;
      if (v28 == v25 && v30 == v26)
      {

LABEL_25:
        v10 = v35;
        v33 = v36;
        goto LABEL_26;
      }

      a2 = v25;
      v32 = sub_22A4DE60C();

      v11 = v24;
      if (v32)
      {
        goto LABEL_25;
      }

      v13 = v20;
      v14 = v21;
      v10 = v35;
      if (v35 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v22 = v13;
      v23 = v14;
      v20 = v13;
      if (!v14)
      {
        break;
      }

LABEL_15:
      v21 = (v23 - 1) & v23;
      v19 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v19)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        goto LABEL_23;
      }

      v23 = *(v11 + 8 * v20);
      ++v22;
      if (v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v33 = 0;
LABEL_26:
    sub_22953EE84(v10);

    *v34 = v33;
  }
}

uint64_t sub_22956DFF4(void *a1)
{
  v3 = sub_22A4DD26C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_22957A480;
    *(v13 + 24) = v12;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_53;
    v14 = _Block_copy(aBlock);
    v26 = v6;
    v27 = v14;
    v15 = v11;
    v28 = v7;
    v16 = v4;
    v17 = v15;
    v18 = v1;
    v19 = a1;

    sub_22A4DD28C();
    v29 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    v21 = v26;
    sub_22A4DE03C();
    v22 = v27;
    MEMORY[0x22AAD0F80](0, v20, v21, v27);
    _Block_release(v22);

    (*(v16 + 8))(v21, v3);
    (*(v8 + 8))(v20, v28);
  }

  else
  {
    v24 = v1;
    v25 = a1;
  }
}

uint64_t sub_22956E358(void *a1)
{
  v25 = sub_22A4DD26C();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD29C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 workQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  if (v10)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2295798AC;
    *(v12 + 24) = v11;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_33;
    v23 = _Block_copy(aBlock);
    v24 = v7;
    v13 = a1;
    v14 = v1;
    v15 = v10;

    sub_22A4DD28C();
    v26 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v16 = v25;
    v22 = v6;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v17 = v23;
    MEMORY[0x22AAD0F80](0, v9, v5, v23);
    _Block_release(v17);

    (*(v3 + 8))(v5, v16);
    (*(v24 + 8))(v9, v22);
  }

  else
  {
    v19 = a1;
    v20 = v1;
  }
}

uint64_t sub_22956E6C4(char *a1, char *a2)
{
  v4 = sub_22A4DD26C();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setReachable_];
  v10 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser];
  *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser] = a2;

  v11 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v12 = *&a2[v11];
  v13 = a2;

  v14 = sub_22956EABC(a1, v12);

  if ((v14 & 1) == 0)
  {
    swift_beginAccess();
    sub_22957053C(&v33, a1);
    swift_endAccess();
  }

  v15 = *&v13[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = a1;
  if (v15)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2295798B4;
    *(v17 + 24) = v16;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_43;
    v29 = _Block_copy(aBlock);
    v18 = v15;
    v19 = v13;
    v20 = a1;
    v21 = v18;

    v22 = v9;
    sub_22A4DD28C();
    v33 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v23 = v30;
    v28 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v24 = v29;
    MEMORY[0x22AAD0F80](0, v22, v6, v29);
    _Block_release(v24);

    (*(v23 + 8))(v6, v4);
    (*(v31 + 8))(v22, v28);
  }

  else
  {
    v25 = v13;
    v26 = a1;
  }
}

uint64_t sub_22956EABC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22A4DE13C();
  }

  else if (*(a2 + 16) && (type metadata accessor for DemoAccessoryServer(0), v5 = sub_22A4DDECC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_22A4DDEDC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_22956EBD8(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_22A4DE13C();
  }

  else if (*(a2 + 16) && (sub_229562F68(0, a3, a4), v7 = sub_22A4DDECC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      v6 = sub_22A4DDEDC();

      if (v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22956ECE8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22A4DE13C();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0), v5 = sub_22A4DD4EC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      do
      {
        v9 = sub_22A4DD58C();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_22956EE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22A4DE77C();
  sub_22A4DD6BC();
  v6 = sub_22A4DE7BC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22A4DE60C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22956EF18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16))
  {
    sub_22A4DE77C();
    sub_22A4DB63C();
    v6 = sub_22A4DE7BC();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
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
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_22956C148(v17, v16);
              sub_229838464(v44, a1, a2, &v43);
              sub_2295798D4(v17, v16);
              if (v43)
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_22956C148(v17, v16);
            v31 = sub_22A4DB24C();
            if (v31)
            {
              v33 = sub_22A4DB27C();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            sub_22A4DB26C();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_229838464(v34, v36, v37, v44);
            sub_2295798D4(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_22956C148(v17, v16);
            v31 = sub_22A4DB24C();
            if (v31)
            {
              v32 = sub_22A4DB27C();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_22956C148(v17, v16);
          sub_229838464(v44, a1, a2, &v43);
          sub_2295798D4(v17, v16);
          if (v43)
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_22956F33C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_22A4DD4EC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_22A4DD58C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_22956F568(uint64_t result, void *a2, char a3)
{
  v3 = *(result + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
  if (v3)
  {
    v6 = result;
    swift_unknownObjectRetain();
    [a2 stateNumber];
    v7 = sub_22A4DDBDC();
    [v3 accessoryServerBrowser:v6 didFindAccessoryServer:a2 stateChanged:a3 & 1 stateNumber:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22956F61C(char *a1, char *a2)
{
  v4 = sub_22A4DD26C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser];
  *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser] = 0;

  v12 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v13 = *&a2[v12];

  v14 = sub_22956EABC(a1, v13);

  if (v14)
  {
    v28 = v8;
    swift_beginAccess();
    v16 = sub_229578A9C(a1);
    swift_endAccess();

    v17 = *&a2[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a1;
    if (v17)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = sub_229578C34;
      *(v19 + 24) = v18;
      aBlock[4] = sub_22957A47C;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22953E640;
      aBlock[3] = &block_descriptor_23;
      v27 = _Block_copy(aBlock);
      v20 = v17;
      v21 = a2;
      v22 = a1;

      sub_22A4DD28C();
      v30 = MEMORY[0x277D84F90];
      sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
      sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
      sub_22A4DE03C();
      v23 = v27;
      MEMORY[0x22AAD0F80](0, v10, v7, v27);
      _Block_release(v23);

      (*(v5 + 8))(v7, v4);
      (*(v29 + 8))(v10, v28);
    }

    else
    {
      v24 = a2;
      v25 = a1;
    }
  }

  return result;
}

uint64_t sub_22956F9DC()
{
  v1 = sub_22A4DD26C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DD29C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 workQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_2295704E0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_2295704E8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_0;
    v18 = _Block_copy(aBlock);
    v19 = v6;
    v12 = v0;
    v13 = v9;

    sub_22A4DD28C();
    v20 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v17 = v5;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v14 = v18;
    MEMORY[0x22AAD0F80](0, v8, v4, v18);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    (*(v19 + 8))(v8, v17);
  }

  else
  {
    v16 = v0;
  }
}

void *sub_22956FD3C(char *a1)
{
  v44 = sub_22A4DD26C();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22A4DD29C();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v36 = v6;
  v35 = *&a1[v6];
  if ((v35 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer(0);
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer, MEMORY[0x277D85378]);
    result = sub_22A4DDBAC();
    v8 = v52;
    v48 = v53;
    v10 = v54;
    v9 = v55;
    v11 = v56;
  }

  else
  {
    v12 = -1 << *(v35 + 32);
    v13 = *(v35 + 56);
    v48 = v35 + 56;
    v10 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & v13;
    v8 = v35;
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v34[1] = v10;
  v16 = (v10 + 64) >> 6;
  v39 = v51;
  v38 = (v2 + 8);
  v37 = (v4 + 8);
  v40 = v16;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v30 = sub_22A4DE12C();
  if (v30 && (v49 = v30, type metadata accessor for DemoAccessoryServer(0), swift_dynamicCast(), v29 = aBlock[0], v27 = v9, v28 = v11, aBlock[0]))
  {
    while (1)
    {
      v31 = [a1 workQueue];
      v32 = swift_allocObject();
      *(v32 + 16) = v29;
      *(v32 + 24) = a1;
      if (v31)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = sub_229570510;
        *(v17 + 24) = v32;
        v51[2] = sub_22957A47C;
        v51[3] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v51[0] = sub_22953E640;
        v51[1] = &block_descriptor_13;
        v45 = _Block_copy(aBlock);
        v47 = v29;
        v18 = a1;
        v19 = v31;

        v20 = v41;
        sub_22A4DD28C();
        v49 = MEMORY[0x277D84F90];
        sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v46 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
        sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
        v21 = v43;
        v22 = v44;
        sub_22A4DE03C();
        v23 = v45;
        MEMORY[0x22AAD0F80](0, v20, v21, v45);
        _Block_release(v23);

        (*v38)(v21, v22);
        v24 = v20;
        v16 = v40;
        (*v37)(v24, v42);

        v9 = v27;
        v11 = v46;
        if (v8 < 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v33 = a1;

        v9 = v27;
        v11 = v28;
        if (v8 < 0)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v25 = v9;
      v26 = v11;
      v27 = v9;
      if (!v11)
      {
        break;
      }

LABEL_14:
      v28 = (v26 - 1) & v26;
      v29 = *(*(v8 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v29)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v16)
      {
        goto LABEL_21;
      }

      v26 = *(v48 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22953EE84(v8);

    *&a1[v36] = MEMORY[0x277D84FA0];
  }

  return result;
}

id sub_22957033C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue] = 0;
  v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_browsing] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers] = MEMORY[0x277D84FA0];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithQueue_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_229570410()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22957053C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22A4DE0FC();

    if (v9)
    {

      type metadata accessor for DemoAccessoryServer(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22A4DE0EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_229572298(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_229574598(v20 + 1, &unk_27D87CEB8, &qword_22A577D30);
    }

    v18 = v8;
    sub_229574968(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for DemoAccessoryServer(0);
  v11 = sub_22A4DDECC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2295749EC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22A4DDEDC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_229570788(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22A4DE77C();
  sub_22A4DD6BC();
  v8 = sub_22A4DE7BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22A4DE60C() & 1) != 0)
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

    sub_229574D0C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2295708D8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for HomeDeviceEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  v9 = sub_22A4DE7BC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_229579FEC(*(v8 + 48) + v13 * v11, v7, type metadata accessor for HomeDeviceEntity);
      v14 = sub_22A4DB78C();
      sub_22957A054(v7, type metadata accessor for HomeDeviceEntity);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22957A054(a2, type metadata accessor for HomeDeviceEntity);
    sub_229579FEC(*(v8 + 48) + v13 * v11, v21, type metadata accessor for HomeDeviceEntity);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_229579FEC(a2, v7, type metadata accessor for HomeDeviceEntity);
    v22 = *v15;
    sub_229574E8C(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_22957A0B4(a2, v17, type metadata accessor for HomeDeviceEntity);
    return 1;
  }
}

uint64_t sub_229570B40(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for HomeGroupEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_22A4DE77C();
  v22 = v4;
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v23 = a2;
  sub_22A4DD4FC();
  v9 = sub_22A4DE7BC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_229579FEC(*(v8 + 48) + v13 * v11, v7, type metadata accessor for HomeGroupEntity);
      v14 = sub_22A4DB78C();
      sub_22957A054(v7, type metadata accessor for HomeGroupEntity);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22957A054(v23, type metadata accessor for HomeGroupEntity);
    sub_229579FEC(*(v8 + 48) + v13 * v11, v21, type metadata accessor for HomeGroupEntity);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v23;
    sub_229579FEC(v23, v7, type metadata accessor for HomeGroupEntity);
    v24 = *v15;
    sub_22957513C(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v24;
    sub_22957A0B4(v17, v21, type metadata accessor for HomeGroupEntity);
    return 1;
  }
}

uint64_t sub_229570E2C(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = v4;
  v8 = *v4;
  sub_22A4DE77C();
  a3(a2);
  sub_22A4DD6BC();

  v9 = sub_22A4DE7BC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = a3(*(*(v8 + 48) + v11));
      v15 = v14;
      if (v13 == a3(a2) && v15 == v16)
      {
        break;
      }

      v18 = sub_22A4DE60C();

      if (v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v8 + 48) + v11);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    a4(a2, v11, isUniquelyReferenced_nonNull_native);
    *v6 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_229570FD0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22A4DE0FC();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_22A4DE0EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_2295726BC(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_229573748(v17 + 1);
    }

    sub_2295747B8(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  v10 = sub_22A4DD4EC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_229575848(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_22A4DD58C() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_229571224(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_22A4DE77C();
  sub_22A4DB63C();
  v7 = sub_22A4DE7BC();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_22956C148(a2, a3);
    sub_2295759EC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_22956C148(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_22956C148(v18, v17);
      v32 = sub_22A4DB24C();
      if (v32)
      {
        v34 = sub_22A4DB27C();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_22956C148(v18, v17);
    v32 = sub_22A4DB24C();
    if (v32)
    {
      v33 = sub_22A4DB27C();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_22A4DB26C();
    a3 = v44;
    sub_229838464(v32, a2, v44, v50);
    sub_2295798D4(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_22956C148(v18, v17);
LABEL_60:
  sub_229838464(v50, a2, a3, &v49);
  sub_2295798D4(v18, v17);
  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_2295798D4(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_22956C148(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_2295716AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DCCAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0], MEMORY[0x277D173F8]);
  v33 = a2;
  v11 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_27D87CF20, MEMORY[0x277D173F0], MEMORY[0x277D17400]);
      v21 = sub_22A4DD58C();
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
    sub_229575E64(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22957198C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_22A4DD4EC();
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
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22A4DD58C();
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
    sub_22957612C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_229571C90(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22A4DE0FC();

    if (v8)
    {

      type metadata accessor for AssertionHandle.Assertion(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_22A4DE0EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2295728C8(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2295742DC(v18 + 1);
        }

        sub_229574870(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_22A4DE77C();
    sub_22A4DB7DC();
    sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22A4DD4FC();
    v10 = sub_22A4DE7BC();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_22A4DB78C();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_2295763F4(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_229572024(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22A4DE0FC();

    if (v17)
    {

      sub_229562F68(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22A4DE0EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2295724BC(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_229574598(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_229574968(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_229562F68(0, a3, a4);
    v19 = sub_22A4DDECC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22A4DDEDC();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_229574B7C(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_229572298(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEB8, &qword_22A577D30);
    v2 = sub_22A4DE1BC();
    v15 = v2;
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      type metadata accessor for DemoAccessoryServer(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_229574598(v9 + 1, &unk_27D87CEB8, &qword_22A577D30);
        }

        v2 = v15;
        result = sub_22A4DDECC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_22A4DE12C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2295724BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22A4DE1BC();
    v23 = v10;
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      sub_229562F68(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_229574598(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_22A4DDECC();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22A4DE12C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2295726BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA0, &qword_22A577DB8);
    v2 = sub_22A4DE1BC();
    v15 = v2;
    sub_22A4DE09C();
    for (; sub_22A4DE12C(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_229573748(v9 + 1);
        v2 = v15;
      }

      result = sub_22A4DD4EC();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2295728C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF10, &qword_22A577D58);
    v2 = sub_22A4DE1BC();
    v15 = v2;
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      type metadata accessor for AssertionHandle.Assertion(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2295742DC(v9 + 1);
        }

        v2 = v15;
        sub_22A4DE77C();
        sub_22A4DB7DC();
        sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_22A4DD4FC();
        result = sub_22A4DE7BC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_22A4DE12C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_229572BC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  result = sub_22A4DE1AC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_229572E24(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeDeviceEntity(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA8, &qword_22A577DC0);
  result = sub_22A4DE1AC();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
      v21 = *(v32 + 72);
      sub_22957A0B4(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeDeviceEntity);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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
      result = sub_22957A0B4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeDeviceEntity);
      ++*(v8 + 16);
      v6 = v31;
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

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_229573178(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeGroupEntity(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFB8, &qword_22A577DD0);
  result = sub_22A4DE1AC();
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
      sub_22957A0B4(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeGroupEntity);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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
      result = sub_22957A0B4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeGroupEntity);
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

uint64_t sub_2295734D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      sub_22A4DE77C();
      a4(v20);
      sub_22A4DD6BC();

      result = sub_22A4DE7BC();
      v21 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
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

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_229573748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA0, &qword_22A577DB8);
  result = sub_22A4DE1AC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      result = sub_22A4DD4EC();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2295739B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  result = sub_22A4DE1AC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22A4DE77C();
      sub_22A4DB63C();
      result = sub_22A4DE7BC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_229573C10(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22A4DCCAC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CF28, &qword_22A577D60);
  result = sub_22A4DE1AC();
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
      sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0], MEMORY[0x277D173F8]);
      result = sub_22A4DD4EC();
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

uint64_t sub_229573F6C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22A4DB7DC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF40, &qword_22A577D70);
  result = sub_22A4DE1AC();
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
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
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

uint64_t sub_2295742DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF10, &qword_22A577D58);
  result = sub_22A4DE1AC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_229574598(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22A4DDECC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_2295747B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  sub_22A4DD4EC();
  result = sub_22A4DE07C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_229574870(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  sub_22A4DE7BC();
  result = sub_22A4DE07C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_229574968(uint64_t a1, uint64_t a2)
{
  sub_22A4DDECC();
  result = sub_22A4DE07C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2295749EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229574598(v6 + 1, &unk_27D87CEB8, &qword_22A577D30);
  }

  else
  {
    if (v7 > v6)
    {
      sub_229576F48(&unk_27D87CEB8, &qword_22A577D30);
      goto LABEL_12;
    }

    sub_229578890(v6 + 1, &unk_27D87CEB8, &qword_22A577D30);
  }

  v8 = *v3;
  v9 = sub_22A4DDECC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for DemoAccessoryServer(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_22A4DDEDC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22A4DE66C();
  __break(1u);
}

void sub_229574B7C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_229574598(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_229576F48(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_229578890(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22A4DDECC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_229562F68(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22A4DDEDC();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22A4DE66C();
  __break(1u);
}

uint64_t sub_229574D0C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_229572BC4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2295765E0();
      goto LABEL_16;
    }

    sub_229577088(v8 + 1);
  }

  v10 = *v4;
  sub_22A4DE77C();
  sub_22A4DD6BC();
  result = sub_22A4DE7BC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22A4DE60C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_229574E8C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for HomeDeviceEntity(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
LABEL_13:
    v14 = v8;
    goto LABEL_14;
  }

  if (a3)
  {
    v27 = v9;
    sub_229572E24(v12 + 1);
    goto LABEL_8;
  }

  if (v13 <= v12)
  {
    v27 = v9;
    sub_2295772C0(v12 + 1);
LABEL_8:
    v15 = *v3;
    sub_22A4DE77C();
    sub_22A4DB7DC();
    sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22A4DD4FC();
    v16 = sub_22A4DE7BC();
    v17 = -1 << *(v15 + 32);
    a2 = v16 & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v14 = v8;
      v19 = *(v8 + 72);
      while (1)
      {
        sub_229579FEC(*(v15 + 48) + v19 * a2, v11, type metadata accessor for HomeDeviceEntity);
        v20 = sub_22A4DB78C();
        sub_22957A054(v11, type metadata accessor for HomeDeviceEntity);
        if (v20)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v18;
        if (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v14 = v8;
  sub_22957673C(type metadata accessor for HomeDeviceEntity, &qword_27D87CFA8, &qword_22A577DC0, type metadata accessor for HomeDeviceEntity);
LABEL_14:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22957A0B4(a1, *(v21 + 48) + *(v14 + 72) * a2, type metadata accessor for HomeDeviceEntity);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_22957513C(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = type metadata accessor for HomeGroupEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229573178(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22957673C(type metadata accessor for HomeGroupEntity, &qword_27D87CFB8, &qword_22A577DD0, type metadata accessor for HomeGroupEntity);
      goto LABEL_12;
    }

    sub_2295775E4(v10 + 1);
  }

  v12 = *v3;
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  v13 = sub_22A4DE7BC();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_229579FEC(*(v12 + 48) + v16 * a2, v9, type metadata accessor for HomeGroupEntity);
      v17 = sub_22A4DB78C();
      sub_22957A054(v9, type metadata accessor for HomeGroupEntity);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v26;
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22957A0B4(v18, *(v19 + 48) + *(v24 + 72) * a2, type metadata accessor for HomeGroupEntity);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_2295753E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2295734D8(v7 + 1, &unk_27D87CFC0, &qword_22A577DD8, sub_2295C50B0);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229576944(&unk_27D87CFC0, &qword_22A577DD8);
      goto LABEL_16;
    }

    sub_229577914(v7 + 1, &unk_27D87CFC0, &qword_22A577DD8, sub_2295C50B0);
  }

  v9 = *v3;
  sub_22A4DE77C();
  sub_2295C50B0(v6);
  sub_22A4DD6BC();

  result = sub_22A4DE7BC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_2295C50B0(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == sub_2295C50B0(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_22A4DE60C();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_229575618(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2295734D8(v7 + 1, &qword_27D87CFB0, &qword_22A577DC8, sub_2295C6134);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229576944(&qword_27D87CFB0, &qword_22A577DC8);
      goto LABEL_16;
    }

    sub_229577914(v7 + 1, &qword_27D87CFB0, &qword_22A577DC8, sub_2295C6134);
  }

  v9 = *v3;
  sub_22A4DE77C();
  sub_2295C6134(v6);
  sub_22A4DD6BC();

  result = sub_22A4DE7BC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_2295C6134(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == sub_2295C6134(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_22A4DE60C();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_229575848(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229573748(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_229576E08(&qword_27D87CFA0, &qword_22A577DB8);
      goto LABEL_12;
    }

    sub_229577B54(v6 + 1);
  }

  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  result = sub_22A4DD4EC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = sub_22A4DD58C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = sub_22A4DE66C();
  __break(1u);
  return result;
}

uint64_t sub_2295759EC(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v51 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2295739B0(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_229576A74();
        goto LABEL_68;
      }

      sub_229577D94(v8 + 1);
    }

    v10 = *v4;
    sub_22A4DE77C();
    sub_22A4DB63C();
    result = sub_22A4DE7BC();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_22956C148(v20, v19);
              v34 = sub_22A4DB24C();
              if (v34)
              {
                v35 = sub_22A4DB27C();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_22956C148(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_22956C148(v20, v19);
              v34 = sub_22A4DB24C();
              if (v34)
              {
                v36 = sub_22A4DB27C();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              sub_22A4DB26C();
              v7 = v41;
              a2 = v42;
              sub_229838464(v34, v41, v42, v50);
              result = sub_2295798D4(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_22956C148(v20, v19);
            v13 = v46;
          }

          sub_229838464(v50, v7, a2, &v49);
          result = sub_2295798D4(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = sub_22A4DE66C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
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
  }

  *(v37 + 16) = v40;
  return result;
}