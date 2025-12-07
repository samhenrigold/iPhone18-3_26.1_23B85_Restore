uint64_t sub_252823DA0()
{
  v23 = sub_2528BFC70();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = sub_2528BF390();
  sub_2528BFF40();
  if (*(v13 + 16) && (v14 = sub_252785C40(v7), (v15 & 1) != 0))
  {
    (*(v0 + 16))(v2, *(v13 + 56) + *(v0 + 72) * v14, v23);
    v16 = v0;
    v17 = *(v4 + 8);
    v17(v7, v3);

    sub_2528BFC50();
    (*(v16 + 8))(v2, v23);
    (*(v4 + 32))(v12, v10, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = sub_2528BECB0();
    *(inited + 40) = v19;
    v20 = sub_252749DC8(inited);
    swift_setDeallocating();
    sub_252836884(inited + 32);
    v17(v12, v3);
    return v20;
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t DeviceEntity.init(staticEndpoint:staticMatterDevice:home:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v195 = a2;
  v183 = a4;
  v6 = sub_2528BFF00();
  v190 = *(v6 - 8);
  v191 = v6;
  MEMORY[0x28223BE20](v6);
  v173 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BF290();
  MEMORY[0x28223BE20](v8 - 8);
  v167 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_2528BFA70();
  v166 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v165 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC650, &qword_2528C4768);
  MEMORY[0x28223BE20](v11 - 8);
  v175 = &v163 - v12;
  v177 = sub_2528BFCF0();
  v176 = *(v177 - 1);
  v13 = MEMORY[0x28223BE20](v177);
  v170 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v174 = &v163 - v15;
  v182 = sub_2528BFB20();
  v16 = *(v182 - 8);
  v17 = MEMORY[0x28223BE20](v182);
  v172 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v163 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v194 = &v163 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v163 - v23;
  v192 = sub_2528BECF0();
  v25 = *(v192 - 8);
  v26 = MEMORY[0x28223BE20](v192);
  v178 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v163 - v28;
  v30 = sub_2528BEC40();
  MEMORY[0x28223BE20](v30 - 8);
  v189 = type metadata accessor for DeviceEntity(0);
  v181 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v32 = (&v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v188 = sub_2528BE730();
  *v32 = v188;
  sub_2528BEC20();
  v186 = sub_2528BE730();
  v32[1] = v186;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v185 = sub_2528BE700();
  v32[2] = v185;
  sub_2528BEC20();
  v187 = sub_2528BE730();
  v32[3] = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v179 = sub_2528BE730();
  v32[4] = v179;
  sub_2528BEC20();
  v180 = sub_2528BE730();
  v32[5] = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v184 = sub_2528BE730();
  v32[6] = v184;
  v193 = a3;
  v33 = sub_2528259AC();
  v196 = a1;
  sub_2528BFB00();
  if (!v33[2] || (v34 = sub_252785C40(v29), (v35 & 1) == 0))
  {

    v69 = (v25 + 8);
    v177 = *(v25 + 8);
    v177(v29, v192);
    if (qword_27F4FBB40 != -1)
    {
LABEL_58:
      swift_once();
    }

    v70 = sub_2528C08B0();
    __swift_project_value_buffer(v70, qword_27F5025C8);
    v71 = *(v16 + 16);
    v72 = v196;
    v73 = v16;
    v74 = v182;
    v71(v24, v196, v182);
    v75 = v194;
    v71(v194, v72, v74);
    v76 = sub_2528C0890();
    v77 = sub_2528C0CF0();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v169 = v69;
      v79 = v78;
      v176 = swift_slowAlloc();
      v197 = v176;
      *v79 = 136315394;
      sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30], MEMORY[0x277D15C50]);
      LODWORD(v175) = v77;
      v80 = sub_2528C1040();
      v81 = v192;
      v82 = v75;
      v84 = v83;
      v85 = *(v73 + 8);
      v85(v24, v74);
      v86 = sub_2527389AC(v80, v84, &v197);

      *(v79 + 4) = v86;
      *(v79 + 12) = 2080;
      v87 = v178;
      sub_2528BFB00();
      sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v88 = sub_2528C1040();
      v90 = v89;
      v177(v87, v81);
      v85(v82, v74);
      v91 = sub_2527389AC(v88, v90, &v197);

      *(v79 + 14) = v91;
      _os_log_impl(&dword_252711000, v76, v175, "Unable to create DeviceEntity for %s because can't find room with id %s", v79, 0x16u);
      v92 = v176;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v92, -1, -1);
      MEMORY[0x2530A8D80](v79, -1, -1);

      v85(v196, v74);
    }

    else
    {

      v93 = *(v73 + 8);
      v93(v72, v74);
      v93(v75, v74);
      v93(v24, v74);
    }

    v65 = v183;
    v67 = v190;
    v66 = v191;
    goto LABEL_15;
  }

  v164 = v16;
  v36 = v192;
  v37 = *(v25 + 8);
  v194 = *(v33[7] + 8 * v34);
  v38 = v29;
  v39 = v36;
  v169 = (v25 + 8);
  v37(v38, v36);

  v40 = [v193 accessories];
  sub_25272BFF4(0, &qword_27F4FF550, 0x277CD1650);
  v41 = sub_2528C0B30();

  MEMORY[0x28223BE20](v42);
  *(&v163 - 2) = v195;
  v16 = 0;
  v43 = sub_2527AAE00(sub_252839DB8, (&v163 - 4), v41);

  if (!v43)
  {
    v95 = v196;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v96 = sub_2528C08B0();
    __swift_project_value_buffer(v96, qword_27F5025C8);
    v97 = v164;
    v98 = v172;
    v99 = v182;
    (*(v164 + 16))(v172, v95, v182);
    v67 = v190;
    v100 = v173;
    v101 = v191;
    (*(v190 + 16))(v173, v195);
    v102 = sub_2528C0890();
    v103 = sub_2528C0CF0();
    if (!os_log_type_enabled(v102, v103))
    {
      (*(v67 + 8))(v100, v101);

      v118 = *(v97 + 8);
      v118(v95, v99);
      v118(v98, v99);
      v66 = v101;
      v68 = v181;
      v65 = v183;
      goto LABEL_16;
    }

    v104 = swift_slowAlloc();
    v105 = v100;
    v106 = swift_slowAlloc();
    v197 = v106;
    *v104 = 136315394;
    sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30], MEMORY[0x277D15C50]);
    v107 = sub_2528C1040();
    v109 = v108;
    v110 = *(v97 + 8);
    v110(v98, v99);
    v111 = sub_2527389AC(v107, v109, &v197);

    *(v104 + 4) = v111;
    *(v104 + 12) = 2048;
    v112 = sub_2528BFED0();
    (*(v190 + 8))(v105, v191);
    *(v104 + 14) = v112;
    _os_log_impl(&dword_252711000, v102, v103, "Unable to create DeviceEntity for %s because can't find the accessory for nodeID %llu", v104, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    v65 = v183;
    MEMORY[0x2530A8D80](v106, -1, -1);
    v113 = v191;
    MEMORY[0x2530A8D80](v104, -1, -1);

    v110(v196, v99);
    v67 = v190;
    v66 = v113;
LABEL_15:
    v68 = v181;
LABEL_16:
    (*(v67 + 8))(v195, v66);

    return (*(v68 + 56))(v65, 1, 1, v189);
  }

  v44 = v175;
  v45 = v196;
  sub_2528BFAD0();
  v46 = v176;
  v47 = v177;
  if ((*(v176 + 48))(v44, 1, v177) == 1)
  {
    sub_2527213D8(v44, &qword_27F4FC650, &qword_2528C4768);
LABEL_6:
    v48 = v182;
    v49 = v164;
    v50 = v171;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v51 = sub_2528C08B0();
    __swift_project_value_buffer(v51, qword_27F5025C8);
    (*(v49 + 16))(v50, v45, v48);
    v52 = sub_2528C0890();
    v53 = sub_2528C0CF0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v173 = v43;
      v56 = v55;
      v197 = v55;
      *v54 = 136315138;
      sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30], MEMORY[0x277D15C50]);
      v57 = sub_2528C1040();
      v59 = v58;
      v60 = v50;
      v61 = v48;
      v62 = *(v49 + 8);
      v62(v60, v61);
      v63 = sub_2527389AC(v57, v59, &v197);

      *(v54 + 4) = v63;
      _os_log_impl(&dword_252711000, v52, v53, "Unable to create DeviceEntity for %s because primaryDeviceType couldn't be determined ", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      v64 = v183;
      MEMORY[0x2530A8D80](v56, -1, -1);
      MEMORY[0x2530A8D80](v54, -1, -1);

      v62(v196, v61);
      v65 = v64;
      v67 = v190;
      v66 = v191;
      v68 = v181;
    }

    else
    {

      v119 = *(v49 + 8);
      v119(v45, v48);
      v119(v50, v48);
      v67 = v190;
      v66 = v191;
      v68 = v181;
      v65 = v183;
    }

    goto LABEL_16;
  }

  v173 = v43;
  v114 = v174;
  (*(v46 + 32))(v174, v44, v47);
  v115 = v170;
  (*(v46 + 16))(v170, v114, v47);
  v116 = (*(v46 + 88))(v115, v47);
  v117 = 15;
  if (v116 != *MEMORY[0x277D15ED0] && v116 != *MEMORY[0x277D15F00] && v116 != *MEMORY[0x277D15F28] && v116 != *MEMORY[0x277D15F18])
  {
    v117 = 26;
    if (v116 != *MEMORY[0x277D15F08] && v116 != *MEMORY[0x277D15F10])
    {
      v117 = 20;
      if (v116 != *MEMORY[0x277D15F38] && v116 != *MEMORY[0x277D15EF0])
      {
        v117 = 29;
        if (v116 != *MEMORY[0x277D15F20] && v116 != *MEMORY[0x277D15ED8])
        {
          if (v116 == *MEMORY[0x277D15F30])
          {
            v117 = 17;
          }

          else
          {
            if (v116 != *MEMORY[0x277D15EE0])
            {
              v155 = *(v46 + 8);
              v155(v174, v47);
              v155(v115, v47);
              v45 = v196;
              v43 = v173;
              goto LABEL_6;
            }

            v117 = 21;
          }
        }
      }
    }
  }

  LODWORD(v175) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2528C3910;
  *(inited + 32) = sub_2528BFEC0();
  *(inited + 40) = v121;
  v122 = sub_252749DC8(inited);
  swift_setDeallocating();
  sub_252836884(inited + 32);
  *(v32 + *(v189 + 52)) = v122;
  v32[7] = MEMORY[0x277D84FA0];
  v123 = v193;
  v124 = [v193 uniqueIdentifier];
  sub_2528BECD0();

  v125 = [v173 uniqueIdentifier];
  v24 = v178;
  sub_2528BECD0();

  v126 = sub_2528BECB0();
  v128 = v127;
  v69 = v39;
  v37(v24, v39);
  v197 = v126;
  v198 = v128;
  sub_2528BE6C0();
  sub_2528BFAB0();
  v129 = v165;
  sub_2528BFA50();
  sub_2528BFA60();
  (*(v166 + 8))(v129, v168);
  v130 = sub_2528BECB0();
  v132 = v131;
  v37(v24, v39);
  v197 = v130;
  v198 = v132;
  sub_2528BE6C0();
  LOWORD(v197) = v175;
  sub_2528BE6C0();
  v197 = sub_2528BFAE0();
  v198 = v133;
  sub_2528BE6C0();
  v134 = [v123 name];
  v135 = sub_2528C09F0();
  v137 = v136;

  v197 = v135;
  v198 = v137;
  sub_2528BE6C0();
  v138 = [v123 zones];
  sub_25272BFF4(0, &qword_27F4FF558, 0x277CD1F50);
  v139 = sub_2528C0B30();

  if (v139 >> 62)
  {
    v192 = v139 & 0xFFFFFFFFFFFFFF8;
    v140 = sub_2528C0EF0();
    if (v140)
    {
LABEL_39:
      v141 = 0;
      v188 = v139 & 0xC000000000000001;
      v187 = MEMORY[0x277D84F90];
      do
      {
        v142 = v141;
        while (1)
        {
          if (v188)
          {
            v143 = MEMORY[0x2530A84E0](v142, v139);
          }

          else
          {
            if (v142 >= *(v192 + 16))
            {
              goto LABEL_57;
            }

            v143 = *(v139 + 8 * v142 + 32);
          }

          v24 = v143;
          v141 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v144 = [v143 rooms];
          sub_25272BFF4(0, &qword_27F4FF560, 0x277CD1D88);
          v145 = sub_2528C0B30();

          v69 = &v163;
          v197 = v194;
          MEMORY[0x28223BE20](v146);
          *(&v163 - 2) = &v197;
          LOBYTE(v144) = sub_25281A580(sub_252839E14, (&v163 - 4), v145);

          if (v144)
          {
            break;
          }

          ++v142;
          if (v141 == v140)
          {
            goto LABEL_61;
          }
        }

        v147 = [v24 name];
        v148 = sub_2528C09F0();
        v150 = v149;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = sub_252737D40(0, *(v187 + 2) + 1, 1, v187);
        }

        v152 = *(v187 + 2);
        v151 = *(v187 + 3);
        v24 = (v152 + 1);
        if (v152 >= v151 >> 1)
        {
          v187 = sub_252737D40((v151 > 1), v152 + 1, 1, v187);
        }

        v153 = v187;
        *(v187 + 2) = v24;
        v154 = &v153[16 * v152];
        *(v154 + 4) = v148;
        *(v154 + 5) = v150;
      }

      while (v141 != v140);
      goto LABEL_61;
    }
  }

  else
  {
    v192 = v139 & 0xFFFFFFFFFFFFFF8;
    v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v140)
    {
      goto LABEL_39;
    }
  }

  v187 = MEMORY[0x277D84F90];
LABEL_61:

  v156 = sub_252743FCC(v187);

  v197 = v156;
  sub_2528BE6C0();
  v157 = v194;
  v158 = [v194 name];
  v159 = sub_2528C09F0();
  v161 = v160;

  v197 = v159;
  v198 = v161;
  sub_2528BE6C0();

  (*(v164 + 8))(v196, v182);
  (*(v176 + 8))(v174, v177);
  v162 = v183;
  sub_25283B8C4(v32, v183, type metadata accessor for DeviceEntity);
  (*(v181 + 56))(v162, 0, 1, v189);
  (*(v190 + 8))(v195, v191);
  return sub_25283B92C(v32, type metadata accessor for DeviceEntity);
}

void *sub_2528259AC()
{
  v1 = v0;
  v45 = sub_2528BECF0();
  v42 = *(v45 - 8);
  v2 = MEMORY[0x28223BE20](v45);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - v5;
  v7 = sub_252790CE0(MEMORY[0x277D84F90]);
  v8 = [v1 rooms];
  sub_25272BFF4(0, &qword_27F4FF560, 0x277CD1D88);
  v9 = sub_2528C0B30();

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2528C0EF0())
  {
    v38 = v1;
    v39 = v4;
    v11 = 0;
    v4 = (v9 & 0xC000000000000001);
    v40 = v9 & 0xFFFFFFFFFFFFFF8;
    v41 = v42 + 16;
    v43 = i;
    v44 = (v42 + 8);
    while (1)
    {
      if (v4)
      {
        v14 = MEMORY[0x2530A84E0](v11, v9);
      }

      else
      {
        if (v11 >= *(v40 + 16))
        {
          goto LABEL_25;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = [v14 uniqueIdentifier];
      sub_2528BECD0();

      v18 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v7;
      v20 = sub_252785C40(v6);
      v22 = v7[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_23;
      }

      v26 = v21;
      if (v7[3] < v25)
      {
        sub_2527DFB3C(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_252785C40(v6);
        if ((v26 & 1) != (v27 & 1))
        {
          result = sub_2528C10A0();
          __break(1u);
          return result;
        }

LABEL_16:
        v7 = v46;
        if (v26)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v32 = v20;
      sub_2527E24A4();
      v20 = v32;
      v7 = v46;
      if (v26)
      {
LABEL_4:
        v12 = v7[7];
        v13 = *(v12 + 8 * v20);
        *(v12 + 8 * v20) = v18;

        (*v44)(v6, v45);
        goto LABEL_5;
      }

LABEL_17:
      v1 = v4;
      v4 = v9;
      v7[(v20 >> 6) + 8] |= 1 << v20;
      v9 = v42;
      v28 = v20;
      v29 = v45;
      (*(v42 + 16))(v7[6] + *(v42 + 72) * v20, v6, v45);
      *(v7[7] + 8 * v28) = v18;

      (*(v9 + 8))(v6, v29);
      v30 = v7[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      v7[2] = v31;
      v9 = v4;
      v4 = v1;
LABEL_5:
      ++v11;
      if (v16 == v43)
      {

        v1 = v38;
        v4 = v39;
        goto LABEL_28;
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
    ;
  }

LABEL_28:
  v33 = [v1 roomForEntireHome];
  v34 = [v33 uniqueIdentifier];
  sub_2528BECD0();

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v46 = v7;
  sub_25278C184(v33, v4, v35);
  (*(v42 + 8))(v4, v45);
  return v46;
}

uint64_t DeviceEntity.init(staticCameraProfile:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a1;
  v5 = sub_2528BF030();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v70 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v68 - v10;
  v83 = sub_2528BECF0();
  v87 = *(v83 - 8);
  v11 = MEMORY[0x28223BE20](v83);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v15 = sub_2528BEE30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2528BEC40();
  MEMORY[0x28223BE20](v19 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v86 = sub_2528BE730();
  *a3 = v86;
  sub_2528BEC20();
  v77 = sub_2528BE730();
  a3[1] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v76 = sub_2528BE700();
  a3[2] = v76;
  sub_2528BEC20();
  v78 = sub_2528BE730();
  a3[3] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v80 = sub_2528BE730();
  a3[4] = v80;
  sub_2528BEC20();
  v82 = sub_2528BE730();
  a3[5] = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  a3[6] = sub_2528BE730();
  v20 = type metadata accessor for DeviceEntity(0);
  v21 = MEMORY[0x277D84FA0];
  *(a3 + *(v20 + 52)) = MEMORY[0x277D84FA0];
  a3[7] = v21;
  v84 = v18;
  sub_2528BF2F0();
  sub_2528BEE00();
  v22 = *(v16 + 8);
  v85 = v16 + 8;
  v75 = v22;
  v23 = v15;
  v22(v18, v15);
  v24 = v79;
  sub_2528C00E0();
  v25 = sub_2528BECB0();
  v27 = v26;
  v29 = v87 + 8;
  v28 = *(v87 + 8);
  v30 = v83;
  v28(v14, v83);
  v88 = v25;
  v89 = v27;
  sub_2528BE6C0();
  sub_2528C00F0();
  v31 = sub_2528BECB0();
  v33 = v32;
  v71 = v29;
  v28(v14, v30);
  v34 = v28;
  v88 = v31;
  v89 = v33;
  sub_2528BE6C0();
  LOWORD(v88) = 3;
  sub_2528BE6C0();
  v88 = sub_2528C0100();
  v89 = v35;
  sub_2528BE6C0();
  v36 = v84;
  v86 = a2;
  sub_2528BF2F0();
  v37 = sub_2528BEE20();
  v39 = v38;
  v40 = v36;
  v41 = v75;
  v77 = v23;
  v75(v40, v23);
  v42 = v87;
  v88 = v37;
  v89 = v39;
  sub_2528BE6C0();
  v43 = v24;
  v44 = sub_2528C0110();
  v45 = v81;
  sub_2527D3AB8(v44, v81);

  if ((*(v42 + 48))(v45, 1, v30) == 1)
  {
    sub_2527213D8(v45, &qword_27F4FC628, &qword_2528C4750);
  }

  else
  {
    v46 = v74;
    (*(v42 + 32))(v74, v45, v30);
    v47 = sub_2528BF320();
    if (*(v47 + 16) && (v48 = sub_252785C40(v46), (v49 & 1) != 0))
    {
      v51 = v72;
      v50 = v73;
      v52 = v69;
      (*(v72 + 16))(v69, *(v47 + 56) + *(v72 + 72) * v48, v73);

      v53 = sub_2528BEFD0();
      (*(v51 + 8))(v52, v50);
      if (v53)
      {
        v54 = sub_252819AD0(v53, MEMORY[0x277D154F8], MEMORY[0x277D154F0]);

        v55 = sub_252743FCC(v54);

        v88 = v55;
        sub_2528BE6C0();
        v34(v74, v83);
        goto LABEL_10;
      }

      v56 = v74;
      v57 = v83;
    }

    else
    {

      v56 = v46;
      v57 = v30;
    }

    v34(v56, v57);
  }

  v88 = MEMORY[0x277D84FA0];
  sub_2528BE6C0();
LABEL_10:
  v58 = sub_2528C0120();
  if (!v59)
  {
    v60 = v84;
    sub_2528BF2F0();
    v61 = v70;
    sub_2528BEDE0();
    v41(v60, v77);
    v62 = sub_2528BF020();
    v64 = v63;
    (*(v72 + 8))(v61, v73);
    v59 = v64;
    v58 = v62;
  }

  v88 = v58;
  v89 = v59;
  sub_2528BE6C0();
  v65 = sub_2528BF400();
  (*(*(v65 - 8) + 8))(v86, v65);
  v66 = sub_2528C0130();
  return (*(*(v66 - 8) + 8))(v43, v66);
}

uint64_t sub_252826664@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB8C0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27F4FF498;
  v2 = qword_27F4FF4A0;
  v3 = unk_27F4FF4A8;
  v4 = qword_27F4FF4B0;
  v5 = unk_27F4FF4B8;
  *a1 = qword_27F4FF490;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();

  return sub_2528BEA50();
}

void *sub_252826720@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25282675C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252826804(uint64_t a1)
{
  v2 = sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252826884(uint64_t a1)
{
  v2 = sub_25283C680(&qword_27F4FF5A8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void DeviceEntity.hash(into:)(__int128 *a1)
{
  sub_2528BE6B0();
  sub_2528C0A40();

  sub_2528BE6B0();
  sub_2528C0A40();

  sub_2528BE6B0();
  DeviceType.hash(into:)(a1);
  sub_2528BE6B0();
  sub_2528C0A40();

  sub_2528BE6B0();
  sub_2528C0A40();

  v3 = type metadata accessor for DeviceEntity(0);
  sub_252834B90(a1, *(v1 + *(v3 + 52)));
}

uint64_t DeviceEntity.hashValue.getter()
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v1);
  return sub_2528C1180();
}

uint64_t sub_252826A40()
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v1);
  return sub_2528C1180();
}

uint64_t sub_252826A84(uint64_t a1)
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v2);
  return sub_2528C1180();
}

uint64_t sub_252826AC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528BEC40();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a1 = sub_2528BE730();
  sub_2528BEC20();
  a1[1] = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  a1[2] = sub_2528BE700();
  sub_2528BEC20();
  a1[3] = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  a1[4] = sub_2528BE730();
  sub_2528BEC20();
  a1[5] = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  a1[6] = sub_2528BE730();
  v7 = type metadata accessor for DeviceEntity(0);
  v8 = MEMORY[0x277D84FA0];
  *(a1 + *(v7 + 52)) = MEMORY[0x277D84FA0];
  a1[7] = v8;
  sub_2528BE550();
  sub_2528BE550();
  v9 = sub_2528BECB0();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v13[0] = v9;
  v13[1] = v11;
  return sub_2528BE6C0();
}

uint64_t sub_252826DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF568, &qword_2528D36E8);
  __swift_allocate_value_buffer(v0, qword_27F4FF4C0);
  __swift_project_value_buffer(v0, qword_27F4FF4C0);
  type metadata accessor for DeviceEntity(0);
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  return sub_2528BE990();
}

uint64_t sub_252826E78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF918, &qword_2528D41E0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  sub_25272275C(&qword_27F4FC948, &qword_27F4FC458, &unk_2528C3F40, MEMORY[0x277CB9E70]);
  sub_2528BEAD0();
  type metadata accessor for DeviceEntity(0);
  sub_2528BEAF0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF920, &qword_2528D41E8);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_2528BEAE0();

  v7(v6, v0);
  return v10;
}

uint64_t static DeviceEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF568, &qword_2528D36E8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252827178()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF570, &qword_2528D36F0);
  __swift_allocate_value_buffer(v0, qword_27F4FF4D8);
  __swift_project_value_buffer(v0, qword_27F4FF4D8);
  type metadata accessor for DeviceEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  return sub_2528BE920();
}

uint64_t sub_252827258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6D0, &qword_2528D3E20);
  swift_getKeyPath();
  sub_2528BE870();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v0 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6D8, &qword_2528D3E50);
  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v2 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6E0, &qword_2528D3EA8);
  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v3 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v4 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v5 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528D3560;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  type metadata accessor for DeviceEntity(0);
  sub_2528BEA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  v7 = sub_2528BEA40();

  return v7;
}

uint64_t sub_2528275E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF858, &qword_2528D40F8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF860, &qword_2528D4100);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for DeviceEntity(0);
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF868, &qword_2528D4108);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_2527FE2E0();
  v6 = sub_2528BEAB0();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_2528278A4@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF870, &qword_2528D4110);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF878, &qword_2528D4118);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v20[-v13];
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v4 + 8))(v6, v3);
  swift_getKeyPath();
  v15 = MEMORY[0x277CC90C0];
  sub_25272275C(&qword_27F4FF880, &qword_27F4FF870, &qword_2528D4110, MEMORY[0x277CC90C0]);
  sub_2528BEB40();

  (*(v8 + 8))(v10, v7);
  v25 = v21;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF888, &qword_2528D4170);
  v17 = v22;
  v22[3] = v16;
  v17[4] = sub_25283C340();
  __swift_allocate_boxed_opaque_existential_0Tm(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF8B0, &qword_2528D4178);
  sub_25272275C(&qword_27F4FF8E8, &qword_27F4FF878, &qword_2528D4118, v15);
  sub_25272275C(&qword_27F4FF8F0, &qword_27F4FF8B0, &qword_2528D4178, MEMORY[0x277CC9070]);
  sub_25272275C(&qword_27F4FF8F8, &qword_27F4FF900, &qword_2528D4190, MEMORY[0x277D83B68]);
  v18 = v23;
  sub_2528BEB50();
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_252827CB0@<X0>(__int16 a2@<W1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF8D0, &qword_2528D4188);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF8C0, &qword_2528D4180);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  sub_25272275C(&qword_27F4FF908, &qword_27F4FF8C0, &qword_2528D4180, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  v14 = a2;
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF910, &qword_27F4FF8D0, &qword_2528D4188, MEMORY[0x277CC9080]);
  sub_252805B74();
  sub_2528BEB20();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_252827F04(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6E8, &qword_2528D3F30);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6F0, &qword_2528D3F38);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for DeviceEntity(0);
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6F8, &qword_2528D3F40);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528C3910;
  (*(v2 + 16))(v6 + v5, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_25274690C();
  v7 = sub_2528BEAB0();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_252828174()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF790, &qword_2528D3FF0);
  v9 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF798, &qword_2528D3FF8);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for DeviceEntity(0);
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7A0, &qword_2528D4000);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v5 + v4, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF610, &unk_2528D3BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_25283B704(&qword_27F4FF618, &qword_27F4FF610, &unk_2528D3BA0, MEMORY[0x277CBA560]);
  v6 = sub_2528BEAB0();

  (*(v1 + 8))(v3, v9);
  return v6;
}

uint64_t sub_252828488@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7A8, &qword_2528D4008);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7B0, &qword_2528D4010);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF700, &qword_2528D3F48);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7B8, &qword_2528D4018);
  v17 = *(v16 - 8);
  v35 = v16;
  v36 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7C0, &qword_2528D4020);
  v21 = *(v20 - 8);
  v37 = v20;
  v38 = v21;
  MEMORY[0x28223BE20](v20);
  v34 = &v34 - v22;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v9 + 8))(v11, v8);
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7C8, &qword_2528D4050);
  v23 = MEMORY[0x277CC90C0];
  sub_25272275C(&qword_27F4FF738, &qword_27F4FF700, &qword_2528D3F48, MEMORY[0x277CC90C0]);
  sub_25272275C(&qword_27F4FF7D0, &qword_27F4FF7C8, &qword_2528D4050, MEMORY[0x277CC8FA0]);
  sub_25272275C(&qword_27F4FF740, &qword_27F4FF610, &unk_2528D3BA0, MEMORY[0x277D83B68]);
  sub_2528BEB30();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  sub_25272275C(&qword_27F4FF7D8, &qword_27F4FF7B8, &qword_2528D4018, MEMORY[0x277CC9090]);
  v25 = v34;
  v24 = v35;
  sub_2528BEB40();

  (*(v36 + 8))(v19, v24);
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF610, &unk_2528D3BA0);
  v26 = v40;
  sub_2528BEB80();
  swift_getKeyPath();
  sub_25272275C(&qword_27F4FF7E0, &qword_27F4FF7A8, &qword_2528D4008, MEMORY[0x277CC9080]);
  v27 = v39;
  v28 = v41;
  sub_2528BEB40();

  (*(v42 + 8))(v26, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7E8, &qword_2528D40C0);
  v30 = v44;
  v44[3] = v29;
  v30[4] = sub_25283BF10();
  __swift_allocate_boxed_opaque_existential_0Tm(v30);
  sub_25272275C(&qword_27F4FF840, &qword_27F4FF7C0, &qword_2528D4020, v23);
  sub_25272275C(&qword_27F4FF848, &qword_27F4FF7B0, &qword_2528D4010, v23);
  v31 = v37;
  v32 = v43;
  sub_2528BEB20();
  (*(v45 + 8))(v27, v32);
  return (*(v38 + 8))(v25, v31);
}

uint64_t sub_252828B80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF830, &qword_2528D40C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7A8, &qword_2528D4008);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF610, &unk_2528D3BA0);
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF850, &qword_27F4FF830, &qword_2528D40C8, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  sub_25272275C(&qword_27F4FF7E0, &qword_27F4FF7A8, &qword_2528D4008, MEMORY[0x277CC9080]);
  sub_25272275C(&qword_27F4FF740, &qword_27F4FF610, &unk_2528D3BA0, MEMORY[0x277D83B68]);
  sub_2528BEB60();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_252828E30@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF718, &qword_2528D3F68);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v10 + 8))(v12, v9);
  v27 = v22;
  v28 = v23;
  sub_2528BEB80();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF720, &qword_2528D3F70);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_25283BCFC();
  __swift_allocate_boxed_opaque_existential_0Tm(v18);
  sub_25272275C(&qword_27F4FF730, &qword_27F4FF718, &qword_2528D3F68, MEMORY[0x277CC90C0]);
  sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00, MEMORY[0x277CC9080]);
  v19 = v25;
  sub_2528BEB20();
  (*(v26 + 8))(v8, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_252829224@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v53 = a5;
  v48 = a4;
  v59 = a3;
  v42 = a2;
  v46 = a1;
  v56 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF700, &qword_2528D3F48);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF708, &unk_2528D3F50);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  MEMORY[0x28223BE20](v10);
  v52 = v41 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v60 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF718, &qword_2528D3F68);
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF720, &qword_2528D3F70);
  v24 = *(v23 - 8);
  v50 = v23;
  v51 = v24;
  MEMORY[0x28223BE20](v23);
  v25 = *v46;
  v45 = v41 - v26;
  v46 = v25;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  v27 = *(v16 + 8);
  v41[1] = v16 + 8;
  v48 = v27;
  v27(v18, v15);
  v61 = a2;
  v62 = v59;
  sub_2528BEB80();
  v28 = MEMORY[0x277CC90C0];
  sub_25272275C(&qword_27F4FF730, &qword_27F4FF718, &qword_2528D3F68, MEMORY[0x277CC90C0]);
  v41[0] = sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00, MEMORY[0x277CC9080]);
  v29 = v43;
  v30 = v47;
  sub_2528BEB20();
  v31 = *(v60 + 8);
  v60 += 8;
  v31(v14, v30);
  (*(v44 + 8))(v22, v29);
  sub_2528BEB90();
  swift_getKeyPath();
  v32 = v49;
  sub_2528BEB40();

  v48(v18, v15);
  v61 = v42;
  v62 = v59;
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF738, &qword_27F4FF700, &qword_2528D3F48, v28);
  sub_25272275C(&qword_27F4FF740, &qword_27F4FF610, &unk_2528D3BA0, MEMORY[0x277D83B68]);
  v33 = v52;
  v34 = v54;
  sub_2528BEB60();
  v31(v14, v30);
  (*(v55 + 8))(v32, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF748, &qword_2528D3FC0);
  v36 = v56;
  v56[3] = v35;
  v36[4] = sub_25283BC70();
  __swift_allocate_boxed_opaque_existential_0Tm(v36);
  sub_25272275C(&qword_27F4FF780, &qword_27F4FF720, &qword_2528D3F70, MEMORY[0x277CC9070]);
  sub_25272275C(&qword_27F4FF788, &qword_27F4FF708, &unk_2528D3F50, MEMORY[0x277CC8FA0]);
  v37 = v45;
  v38 = v50;
  v39 = v57;
  sub_2528BEB70();
  (*(v58 + 8))(v33, v39);
  return (*(v51 + 8))(v37, v38);
}

uint64_t static DeviceEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF570, &qword_2528D36F0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252829A08@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v51 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v51 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v51 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v51 - v15;
  v59 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v19 = v1[5];
  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v21 = type metadata accessor for HomeEntity(0);
    v22 = *(*(v21 - 8) + 56);
    v22(v16, 0, 1, v21);
    v23 = v16;
    v24 = v60;
    sub_25283BBDC(v23, v60, type metadata accessor for HomeEntity);
    return (v22)(v24, 0, 1, v21);
  }

  else
  {
    v54 = v8;
    v55 = v17;
    v52 = v5;
    v53 = v18;
    v51[1] = v19;
    v51[2] = v20;
    v26 = v60;
    v56 = v11;
    v58 = v14;
    v27 = type metadata accessor for HomeEntity(0);
    v28 = *(v27 - 8);
    v29 = v28;
    v30 = v16;
    v31 = *(v28 + 56);
    v32 = v28 + 56;
    v57 = v30;
    v31();
    if (sub_2528BE9A0())
    {
      swift_getKeyPath();
      sub_252744BB0();
      v33 = v58;
      sub_2528BE840();

      (v31)(v33, 0, 1, v27);
      sub_25283BBDC(v33, v26, type metadata accessor for HomeEntity);
      (v31)(v26, 0, 1, v27);
      v34 = v57;
      result = (*(v29 + 48))(v57, 1, v27);
    }

    else
    {
      v59 = v29;
      (v31)(v58, 1, 1, v27);
      v35 = v27;
      v36 = v26;
      if (sub_2528BE9A0())
      {
        swift_getKeyPath();
        sub_252744BB0();
        v37 = v56;
        sub_2528BE840();

        (v31)(v37, 0, 1, v27);
        sub_25283BBDC(v37, v26, type metadata accessor for HomeEntity);
        (v31)(v26, 0, 1, v27);
        v38 = v58;
        v39 = *(v59 + 48);
        v34 = v57;
        v40 = v39(v58, 1, v27);
      }

      else
      {
        v41 = v56;
        (v31)(v56, 1, 1, v35);
        if (sub_2528BE9A0())
        {
          swift_getKeyPath();
          sub_252744BB0();
          v42 = v54;
          sub_2528BE840();

          (v31)(v42, 0, 1, v35);
          sub_25283BBDC(v42, v26, type metadata accessor for HomeEntity);
          (v31)(v26, 0, 1, v35);
          v38 = v58;
          v39 = *(v59 + 48);
          v34 = v57;
          v43 = v39(v41, 1, v35);
        }

        else
        {
          v44 = v54;
          (v31)(v54, 1, 1, v35);
          v45 = sub_2528BE9A0();
          v38 = v58;
          if (v45)
          {
            swift_getKeyPath();
            sub_252744BB0();
            v46 = v52;
            sub_2528BE840();

            (v31)(v46, 0, 1, v35);
            sub_25283BBDC(v46, v36, type metadata accessor for HomeEntity);
            (v31)(v36, 0, 1, v35);
            v39 = *(v59 + 48);
            v34 = v57;
            v47 = v39(v44, 1, v35);
          }

          else
          {
            v48 = 1;
            v55 = v32;
            v49 = v31;
            (v31)(v52, 1, 1, v35);
            if (sub_2528BE9A0())
            {
              swift_getKeyPath();
              sub_252744BB0();
              sub_2528BE840();

              v48 = 0;
            }

            v34 = v57;
            (v49)(v36, v48, 1, v35);
            v39 = *(v59 + 48);
            v50 = v52;
            if (v39(v52, 1, v35) != 1)
            {
              sub_2527213D8(v50, &qword_27F4FC488, &unk_2528C3F80);
            }

            v47 = v39(v44, 1, v35);
          }

          if (v47 != 1)
          {
            sub_2527213D8(v44, &qword_27F4FC488, &unk_2528C3F80);
          }

          v43 = v39(v41, 1, v35);
        }

        if (v43 != 1)
        {
          sub_2527213D8(v41, &qword_27F4FC488, &unk_2528C3F80);
        }

        v40 = v39(v38, 1, v35);
      }

      if (v40 != 1)
      {
        sub_2527213D8(v38, &qword_27F4FC488, &unk_2528C3F80);
      }

      result = v39(v34, 1, v35);
    }

    if (result != 1)
    {
      return sub_2527213D8(v34, &qword_27F4FC488, &unk_2528C3F80);
    }
  }

  return result;
}

uint64_t sub_25282A164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_25272006C(a1, &v9 - v6, &qword_27F4FC488, &unk_2528C3F80);
  sub_25272006C(v7, v5, &qword_27F4FC488, &unk_2528C3F80);
  sub_2528BE7A0();
  return sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t DeviceEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v2 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v2 + 88) = swift_task_alloc();
  v3 = sub_2528BECF0();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v4 = sub_2528C05D0();
  *(v2 + 168) = v4;
  *(v2 + 176) = *(v4 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 208) = v5;
  v6 = *(v5 - 8);
  *(v2 + 216) = v6;
  *(v2 + 224) = *(v6 + 64);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v7 = v1[1];
  *(v2 + 256) = *v1;
  *(v2 + 272) = v7;
  *(v2 + 288) = v1[2];

  return MEMORY[0x2822009F8](sub_25282A558, 0, 0);
}

uint64_t sub_25282A558()
{
  v77 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 64);
  strcpy(v75, "identifiers: ");
  HIWORD(v75[0]) = -4864;
  v68 = *(v0 + 272);
  v71 = *(v0 + 256);
  v66 = *(v0 + 288);
  v3 = MEMORY[0x2530A81A0](v2, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v3);

  v4 = v75[0];
  v75[0] = v71;
  v75[1] = v68;
  v75[2] = v66;
  sub_252829A08(v1);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = sub_2528C08B0();
  __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_25272006C(v5, v6, &qword_27F4FC488, &unk_2528C3F80);

  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 240);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v76 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_2527389AC(v4, *(&v4 + 1), &v76);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2527389AC(0x7972657571, 0xE500000000000000, &v76);
    *(v12 + 22) = 2080;
    v14 = sub_2528C0DB0();
    v16 = v15;
    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v17 = sub_2527389AC(v14, v16, &v76);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_252711000, v8, v9, "Query: Performing device query {%s} for %s with homeEntity: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v13, -1, -1);
    MEMORY[0x2530A8D80](v12, -1, -1);
  }

  else
  {

    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 248);
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);
  v72 = *(v0 + 64);
  v22 = sub_2528C0820();
  __swift_project_value_buffer(v22, qword_27F5025E0);
  sub_25272006C(v18, v19, &qword_27F4FC488, &unk_2528C3F80);
  v23 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v24 = (v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0x7972657571;
  *(v25 + 24) = 0xE500000000000000;
  *(v25 + 32) = v4;
  sub_25274AA0C(v19, v25 + v23, &qword_27F4FC488, &unk_2528C3F80);
  *(v25 + v24) = 0;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;

  *(v0 + 304) = sub_2528B73C8(0, 0, sub_252839E7C, v25);

  sub_2527213D8(v18, &qword_27F4FC488, &unk_2528C3F80);
  v26 = *(v72 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = *(v0 + 128);
    v29 = *(v0 + 64);
    *&v75[0] = MEMORY[0x277D84F90];
    sub_25282F24C(0, v26, 0);
    v27 = *&v75[0];
    v30 = v29 + 40;
    do
    {

      sub_2528BECA0();

      *&v75[0] = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25282F24C((v31 > 1), v32 + 1, 1);
        v27 = *&v75[0];
      }

      v33 = *(v0 + 152);
      *(v27 + 16) = v32 + 1;
      sub_25274AA0C(v33, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v32, &qword_27F4FC628, &qword_2528C4750);
      v30 += 16;
      --v26;
    }

    while (v26);
  }

  v34 = *(v0 + 160);
  (*(*(v0 + 104) + 56))(v34, 1, 1, *(v0 + 96));
  v35 = sub_25277B41C(v34, v27);
  sub_2527213D8(v34, &qword_27F4FC628, &qword_2528C4750);
  if (v35)
  {

    sub_2528C05B0();
  }

  else
  {
    sub_2528C05B0();
    v36 = *(v27 + 16);
    if (v36)
    {
      v37 = *(v0 + 128);
      v38 = v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v73 = *(v37 + 72);
      v65 = *(v0 + 104);
      v69 = (v65 + 32);
      v39 = MEMORY[0x277D84F90];
      do
      {
        v41 = *(v0 + 136);
        v40 = *(v0 + 144);
        v42 = *(v0 + 96);
        sub_25272006C(v38, v40, &qword_27F4FC628, &qword_2528C4750);
        sub_25274AA0C(v40, v41, &qword_27F4FC628, &qword_2528C4750);
        if ((*(v65 + 48))(v41, 1, v42) == 1)
        {
          sub_2527213D8(*(v0 + 136), &qword_27F4FC628, &qword_2528C4750);
        }

        else
        {
          v43 = *v69;
          (*v69)(*(v0 + 112), *(v0 + 136), *(v0 + 96));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_252737E4C(0, *(v39 + 2) + 1, 1, v39);
          }

          v45 = *(v39 + 2);
          v44 = *(v39 + 3);
          if (v45 >= v44 >> 1)
          {
            v39 = sub_252737E4C((v44 > 1), v45 + 1, 1, v39);
          }

          v46 = *(v0 + 112);
          v47 = *(v0 + 96);
          *(v39 + 2) = v45 + 1;
          v43(&v39[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v45], v46, v47);
        }

        v38 += v73;
        --v36;
      }

      while (v36);
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
    }

    v48 = *(v0 + 184);
    v49 = *(v0 + 168);
    v50 = *(v0 + 176);
    v51 = *(v0 + 120);
    v52 = sub_252743D54(v39);

    *v51 = v52;
    v53 = *MEMORY[0x277D16518];
    v54 = sub_2528C00B0();
    v55 = *(v54 - 8);
    (*(v55 + 104))(v51, v53, v54);
    (*(v55 + 56))(v51, 0, 1, v54);
    sub_2528C05C0();
    sub_2527213D8(v51, &qword_27F4FC478, &unk_2528C3F70);
    (*(v50 + 8))(v48, v49);
  }

  v56 = *(v0 + 232);
  v57 = *(v0 + 200);
  v58 = *(v0 + 168);
  v59 = *(v0 + 176);
  v60 = *(v0 + 88);
  v70 = *(v0 + 272);
  v74 = *(v0 + 256);
  v67 = *(v0 + 288);
  (*(v59 + 32))(v57, *(v0 + 192), v58);
  *(v0 + 16) = v74;
  *(v0 + 32) = v70;
  *(v0 + 48) = v67;
  sub_252829A08(v56);
  (*(v59 + 16))(v60, v57, v58);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = swift_task_alloc();
  *(v0 + 312) = v61;
  *v61 = v0;
  v61[1] = sub_25282AE44;
  v62 = *(v0 + 232);
  v63 = *(v0 + 88);

  return sub_25277ECE4(v62, 0, 1, v63);
}

uint64_t sub_25282AE44(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 88);
  *(*v1 + 320) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25282AFA0, 0, 0);
}

void sub_25282AFA0(uint64_t a1, uint64_t a2)
{
  v3 = v2[40];
  v33 = v2[9];
  v34 = v2[13];
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v35 = v2[40];

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_10:
    v12 = v2[10];
    v13 = v2[8];
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    (*(v34 + 16))(v12, *(v35 + 48) + *(v34 + 72) * v14, v2[12]);
    v15 = *(v35 + 56);
    v16 = v15 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v14;
    v17 = *(v33 + 48);
    sub_25283B8C4(v16, v12 + v17, type metadata accessor for HomeEntity.SnapshotPair);
    v18 = sub_25282B340(v12, v12 + v17, v13);
    sub_2527213D8(v12, &qword_27F4FCDC0, &unk_2528C5CD0);
    v19 = *(v18 + 16);
    v20 = v10[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v21 > v10[3] >> 1)
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v10 = sub_252738010(isUniquelyReferenced_nonNull_native, v23, 1, v10);
    }

    v7 &= v7 - 1;
    if (*(v18 + 16))
    {
      v24 = (v10[3] >> 1) - v10[2];
      type metadata accessor for DeviceEntity(0);
      if (v24 < v19)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v25 = v10[2];
        v26 = __OFADD__(v25, v19);
        v27 = v25 + v19;
        if (v26)
        {
          goto LABEL_29;
        }

        v10[2] = v27;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v28 = v2[38];
  v29 = v2[25];
  v30 = v2[22];
  v31 = v2[21];

  sub_2528352F8(v28, v10);

  (*(v30 + 8))(v29, v31);

  v32 = v2[1];

  v32(v10);
}

uint64_t sub_25282B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v4 = type metadata accessor for DeviceEntity(0);
  v40 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_2528C00D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2528BF400();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a2, v15);
  v19 = *(type metadata accessor for HomeEntity.SnapshotPair(0) + 20);
  sub_25282D6B8(v18);
  v38 = v20;
  sub_25272006C(a2 + v19, v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2527213D8(v11, &qword_27F4FCDB8, &unk_2528C5CC0);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = v37;
    (*(v13 + 32))(v37, v11, v12);
    v23 = sub_2528C0070();
    v36 = &v36;
    MEMORY[0x28223BE20](v23);
    *(&v36 - 2) = 0;
    *(&v36 - 1) = v18;
    sub_252853528(sub_25283C724, (&v36 - 4), v23);
    v21 = v24;

    (*(v13 + 8))(v22, v12);
  }

  v42 = v38;
  sub_252735F6C(v21);
  result = (*(v16 + 8))(v18, v15);
  v26 = v42;
  v38 = *(v42 + 16);
  if (v38)
  {
    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v27 < *(v26 + 16))
    {
      v29 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v30 = *(v40 + 72);
      sub_25283B8C4(v26 + v29 + v30 * v27, v8, type metadata accessor for DeviceEntity);
      v31 = sub_2528BE6B0();
      MEMORY[0x28223BE20](v31);
      *(&v36 - 2) = &v42;
      v32 = sub_25281A4D4(sub_25283C6FC, (&v36 - 4), v41);

      if (v32)
      {
        sub_25283BBDC(v8, v39, type metadata accessor for DeviceEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25282F26C(0, *(v28 + 16) + 1, 1);
          v28 = v43;
        }

        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_25282F26C((v34 > 1), v35 + 1, 1);
          v28 = v43;
        }

        *(v28 + 16) = v35 + 1;
        result = sub_25283BBDC(v39, v28 + v29 + v35 * v30, type metadata accessor for DeviceEntity);
      }

      else
      {
        result = sub_25283B92C(v8, type metadata accessor for DeviceEntity);
      }

      if (v38 == ++v27)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_16:

    return v28;
  }

  return result;
}

uint64_t DeviceEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v3 + 96) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v3 + 104) = v4;
  v5 = *(v4 - 8);
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 + 64);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = v2[1];
  *(v3 + 152) = *v2;
  *(v3 + 168) = v6;
  *(v3 + 184) = v2[2];

  return MEMORY[0x2822009F8](sub_25282BA08, 0, 0);
}

uint64_t sub_25282BA08()
{
  v33 = v0;
  v1 = *(v0 + 144);
  MEMORY[0x2530A80B0](*(v0 + 64), *(v0 + 72));
  sub_252829A08(v1);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = sub_2528C08B0();
  __swift_project_value_buffer(v4, qword_27F5025C8);
  sub_25272006C(v2, v3, &qword_27F4FC488, &unk_2528C3F80);

  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 136);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_2527389AC(0x203A656D616ELL, 0xE600000000000000, &v32);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2527389AC(0x7972657571, 0xE500000000000000, &v32);
    *(v9 + 22) = 2080;
    v11 = sub_2528C0DB0();
    v13 = v12;
    sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);
    v14 = sub_2527389AC(v11, v13, &v32);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_252711000, v5, v6, "Query: Performing device query {%s} for %s with homeEntity: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {

    sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  v31 = *(v0 + 96);
  v19 = sub_2528C0820();
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v28 = *(v0 + 184);
  __swift_project_value_buffer(v19, qword_27F5025E0);
  sub_25272006C(v15, v17, &qword_27F4FC488, &unk_2528C3F80);
  v20 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0x7972657571;
  v22[3] = 0xE500000000000000;
  v22[4] = 0x203A656D616ELL;
  v22[5] = 0xE600000000000000;
  sub_25274AA0C(v17, v22 + v20, &qword_27F4FC488, &unk_2528C3F80);
  *(v22 + v21) = 0;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;

  *(v0 + 200) = sub_2528B73C8(0, 0, sub_25283C6C8, v22);

  sub_2527213D8(v15, &qword_27F4FC488, &unk_2528C3F80);
  *(v0 + 16) = v30;
  *(v0 + 32) = v29;
  *(v0 + 48) = v28;
  sub_252829A08(v17);
  v23 = sub_2528C05D0();
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  v24 = swift_task_alloc();
  *(v0 + 208) = v24;
  *v24 = v0;
  v24[1] = sub_25282BED0;
  v25 = *(v0 + 128);
  v26 = *(v0 + 96);

  return sub_25277ECE4(v25, 0, 1, v26);
}

uint64_t sub_25282BED0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 96);
  *(*v1 + 216) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25282C02C, 0, 0);
}

void sub_25282C02C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 216);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v37 = *(v2 + 216);
  v36 = *(v2 + 80);
  v7 = -1;
  v8 = -1 << *(v37 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
    v39 = v12;
LABEL_11:
    v14 = v38[11];
    v16 = v38[8];
    v15 = v38[9];
    v17 = __clz(__rbit64(v9)) | (v11 << 6);
    v18 = *(v37 + 48);
    v19 = sub_2528BECF0();
    (*(*(v19 - 8) + 16))(v14, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(v37 + 56);
    v21 = v20 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v17;
    v22 = *(v36 + 48);
    sub_25283B8C4(v21, v14 + v22, type metadata accessor for HomeEntity.SnapshotPair);
    v23 = sub_25282C370(v14, v14 + v22, v16, v15);
    sub_2527213D8(v14, &qword_27F4FCDC0, &unk_2528C5CD0);
    v24 = *(v23 + 16);
    v12 = v39;
    v25 = v39[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > v39[3] >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v12 = sub_252738010(isUniquelyReferenced_nonNull_native, v28, 1, v39);
    }

    v9 &= v9 - 1;
    if (*(v23 + 16))
    {
      v29 = v12;
      v30 = (v12[3] >> 1) - v12[2];
      type metadata accessor for DeviceEntity(0);
      if (v30 < v24)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      v12 = v29;
      if (v24)
      {
        v31 = v29[2];
        v32 = __OFADD__(v31, v24);
        v33 = v31 + v24;
        if (v32)
        {
          goto LABEL_30;
        }

        v29[2] = v33;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v11;
    if (v9)
    {
      v39 = v12;
      v11 = v13;
      goto LABEL_11;
    }
  }

  v34 = v38[25];

  sub_2528352F8(v34, v12);

  v35 = v38[1];

  v35(v12);
}

uint64_t sub_25282C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v50 = 0;
  v6 = type metadata accessor for DeviceEntity(0);
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_2528C00D0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2528BF400();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a2, v18);
  v22 = *(type metadata accessor for HomeEntity.SnapshotPair(0) + 20);
  sub_25282D6B8(v21);
  v53 = v23;
  sub_25272006C(a2 + v22, v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2527213D8(v13, &qword_27F4FCDB8, &unk_2528C5CC0);
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = v17;
    (*(v15 + 32))(v17, v13, v14);
    v26 = sub_2528C0070();
    v49 = &v49;
    MEMORY[0x28223BE20](v26);
    *(&v49 - 2) = 0;
    *(&v49 - 1) = v21;
    v27 = v50;
    sub_252853528(sub_25283C724, (&v49 - 4), v26);
    v24 = v28;
    v50 = v27;

    (*(v15 + 8))(v25, v14);
  }

  v57 = v53;
  sub_252735F6C(v24);
  (*(v19 + 8))(v21, v18);
  result = v57;
  v30 = v54;
  v53 = *(v57 + 16);
  if (v53)
  {
    v31 = 0;
    v32 = MEMORY[0x277D84F90];
    v33 = v52;
    while (1)
    {
      if (v31 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = *(v33 + 72);
      v36 = result;
      sub_25283B8C4(result + v34 + v35 * v31, v30, type metadata accessor for DeviceEntity);
      sub_2528BE6B0();
      if (v57 == a3 && v58 == v56)
      {
        break;
      }

      v38 = sub_2528C1060();

      if (v38)
      {
        goto LABEL_25;
      }

      v39 = *(v30 + *(v51 + 52));
      if (*(v39 + 16))
      {
        sub_2528C1130();
        sub_2528C0A40();
        v40 = sub_2528C1180();
        v41 = -1 << *(v39 + 32);
        v42 = v40 & ~v41;
        if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (1)
          {
            v44 = (*(v39 + 48) + 16 * v42);
            v45 = *v44 == a3 && v44[1] == v56;
            if (v45 || (sub_2528C1060() & 1) != 0)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v33 = v52;
          v30 = v54;
          goto LABEL_25;
        }
      }

LABEL_6:
      v30 = v54;
      sub_25283B92C(v54, type metadata accessor for DeviceEntity);
      v33 = v52;
LABEL_7:
      ++v31;
      result = v36;
      if (v31 == v53)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    sub_25283BBDC(v30, v55, type metadata accessor for DeviceEntity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25282F26C(0, *(v32 + 16) + 1, 1);
      v32 = v59;
    }

    v48 = *(v32 + 16);
    v47 = *(v32 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_25282F26C((v47 > 1), v48 + 1, 1);
      v32 = v59;
    }

    *(v32 + 16) = v48 + 1;
    sub_25283BBDC(v55, v32 + v34 + v48 * v35, type metadata accessor for DeviceEntity);
    v30 = v54;
    goto LABEL_7;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_32:

  return v32;
}

uint64_t DeviceEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25274BC70;

  return sub_252839E80(a1, a2 & 1);
}

uint64_t sub_25282CA34@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF570, &qword_2528D36F0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25282CAE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF568, &qword_2528D36E8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25282CB9C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_252839E80(a2, a3 & 1);
}

uint64_t sub_25282CC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return DeviceEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_25282CD04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return DeviceEntityQuery.entities(for:)(a1);
}

uint64_t sub_25282CD98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_25283B028();
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

void sub_25282CE4C(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_2528BE6B0();
  v2 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  inited = swift_initStackObject();
  if ((v14 & 0xC000) == 0x8000)
  {
    *(inited + 16) = xmmword_2528C17D0;
    *(inited + 32) = v2;
    *(inited + 34) = v2;
    *(inited + 36) = (v2 >> 8) & 0x3F;
  }

  else
  {
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = v2;
  }

  v4 = sub_25274A250(inited);
  swift_setDeallocating();
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_13:
    v11 = *(*(v4 + 48) + ((v10 << 7) | (2 * __clz(__rbit64(v7)))));
    v7 &= v7 - 1;
    v13 = v11;
    v12 = v1;
    if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v13, &v12))
    {
LABEL_14:

      return;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 56 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_25282CFEC(id *a1, uint64_t a2)
{
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_2528BECD0();

  v8 = sub_2528BECC0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_25282D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 7104878;
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x203A7265646E6573, 0xE800000000000000);
  MEMORY[0x2530A80B0](a1, a2);
  MEMORY[0x2530A80B0](10, 0xE100000000000000);
  MEMORY[0x2530A80B0](a3, a4);
  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v14 = sub_2528C0DB0();
  MEMORY[0x2530A80B0](v14);

  MEMORY[0x2530A80B0](0x746E45656E6F7A20, 0xEF203A7365697469);
  if (a6)
  {
    v15 = type metadata accessor for ZoneEntity(0);
    v16 = MEMORY[0x2530A81C0](a6, v15);
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x2530A80B0](v16, v18);

  MEMORY[0x2530A80B0](0x746E456D6F6F7220, 0xEF203A7365697469);
  if (a7)
  {
    v19 = type metadata accessor for RoomEntity(0);
    v13 = MEMORY[0x2530A81C0](a7, v19);
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v13, v21);

  return 0;
}

uint64_t sub_25282D2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BF030();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v14 = sub_2528BF320();
  if (*(v14 + 16) && (v15 = sub_252785C40(a1), (v16 & 1) != 0))
  {
    (*(v5 + 16))(v13, *(v14 + 56) + *(v5 + 72) * v15, v4);

    v17 = sub_2528BEFE0();
    v18 = sub_252831EE0(v17);
    v19 = (*(v5 + 8))(v13, v4);
  }

  else
  {

    v18 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v19);
  v39[-2] = a2;
  sub_2527A5B60(sub_25283B824, &v39[-4], v18);
  v21 = v20;

  v22 = sub_2528BF320();
  if (*(v22 + 16) && (v23 = sub_252785C40(a1), (v24 & 1) != 0))
  {
    (*(v5 + 16))(v11, *(v22 + 56) + *(v5 + 72) * v23, v4);

    v25 = sub_2528BEFF0();
    v26 = sub_2528320F4(v25);
    v27 = (*(v5 + 8))(v11, v4);
  }

  else
  {

    v26 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v27);
  v39[-2] = a2;
  sub_2527A52D0(sub_25283B850, &v39[-4], v26);
  v29 = v28;

  v30 = sub_2528BF320();
  if (*(v30 + 16) && (v31 = sub_252785C40(a1), (v32 & 1) != 0))
  {
    (*(v5 + 16))(v8, *(v30 + 56) + *(v5 + 72) * v31, v4);

    v33 = sub_2528BF010();
    v34 = sub_252832308(v33);
    v35 = (*(v5 + 8))(v8, v4);
  }

  else
  {

    v34 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v35);
  v39[-2] = a2;
  sub_2527A5718(sub_25283B86C, &v39[-4], v34);
  v37 = v36;

  v39[0] = v21;
  sub_252735F6C(v29);
  sub_252735F6C(v37);
  return v39[0];
}

void sub_25282D6B8(char *a1)
{
  v82 = sub_2528BF400();
  v94 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2528BF9D0();
  v93 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v80 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2528BECF0();
  v4 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v89 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2528BFC70();
  v6 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v96 = type metadata accessor for DeviceEntity(0);
  v16 = *(v96 - 8);
  v17 = MEMORY[0x28223BE20](v96);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v66 - v20;
  MEMORY[0x28223BE20](v19);
  v66 = &v66 - v21;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  MEMORY[0x28223BE20](v86);
  v99 = &v66 - v22;
  v23 = sub_2528BF370();
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v85 = v4 + 16;
  v95 = v93 + 16;
  v71 = v6 + 16;
  v90 = v4;
  v84 = (v4 + 8);
  v70 = v6 + 32;
  v74 = v6;
  v69 = v6 + 8;
  v29 = v15;
  v83 = (v16 + 56);
  v78 = (v94 + 2);
  v67 = v16;
  v94 = (v16 + 48);
  v92 = v23;

  v30 = 0;
  v76 = MEMORY[0x277D84F90];
  v91 = v28;
  v88 = a1;
  v79 = v13;
  v87 = v29;
  while (1)
  {
    v31 = v30;
    if (!v27)
    {
      break;
    }

LABEL_8:
    v32 = __clz(__rbit64(v27)) | (v30 << 6);
    v33 = v92;
    v34 = v99;
    (*(v90 + 16))(v99, *(v92 + 48) + *(v90 + 72) * v32, v98);
    v35 = *(v33 + 56) + *(v93 + 72) * v32;
    v36 = *(v86 + 48);
    v37 = *(v93 + 16);
    v37(v34 + v36, v35, v97);
    v38 = sub_2528BF390();
    v39 = v89;
    sub_2528BF4C0();
    if (!*(v38 + 16) || (v40 = sub_252785C40(v39), (v41 & 1) == 0))
    {

      (*v84)(v39, v98);
LABEL_13:
      v48 = v80;
      v37(v80, v99 + v36, v97);
      v49 = v81;
      a1 = v88;
      (*v78)(v81, v88, v82);
      v50 = v79;
      DeviceEntity.init(staticService:snapshot:)(v48, v49, v79);
      v51 = (*v94)(v50, 1, v96);
      v47 = v87;
      if (v51 == 1)
      {
        sub_2527213D8(v50, &qword_27F4FD668, &qword_2528C8900);
        v46 = 1;
      }

      else
      {
        v52 = v77;
        sub_25283BBDC(v50, v77, type metadata accessor for DeviceEntity);
        sub_2528BE6B0();
        v102[0] = v102[1];
        v101 = 3;
        if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v102, &v101))
        {
          sub_25283B92C(v52, type metadata accessor for DeviceEntity);
          v46 = 1;
        }

        else
        {
          sub_25283BBDC(v52, v47, type metadata accessor for DeviceEntity);
          v46 = 0;
        }
      }

      goto LABEL_18;
    }

    v42 = v74;
    v43 = v73;
    v44 = v75;
    (*(v74 + 16))(v73, *(v38 + 56) + *(v74 + 72) * v40, v75);
    (*v84)(v39, v98);

    v45 = v72;
    (*(v42 + 32))(v72, v43, v44);
    LOBYTE(v43) = sub_2528BFBD0();
    (*(v42 + 8))(v45, v44);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }

    v46 = 1;
    v47 = v87;
    a1 = v88;
LABEL_18:
    v28 = v91;
    v27 &= v27 - 1;
    v53 = v96;
    (*v83)(v47, v46, 1, v96);
    sub_2527213D8(v99, &qword_27F4FD6C8, &unk_2528D3C60);
    if ((*v94)(v47, 1, v53) == 1)
    {
      sub_2527213D8(v47, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v54 = v66;
      sub_25283BBDC(v47, v66, type metadata accessor for DeviceEntity);
      sub_25283BBDC(v54, v68, type metadata accessor for DeviceEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_252738010(0, v76[2] + 1, 1, v76);
      }

      v56 = v76[2];
      v55 = v76[3];
      if (v56 >= v55 >> 1)
      {
        v76 = sub_252738010((v55 > 1), v56 + 1, 1, v76);
      }

      v57 = v76;
      v76[2] = v56 + 1;
      sub_25283BBDC(v68, v57 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56, type metadata accessor for DeviceEntity);
      v28 = v91;
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v58 = sub_2528BF3A0();
      v59 = sub_2528320F4(v58);
      MEMORY[0x28223BE20](v59);
      *(&v66 - 2) = a1;
      sub_2527A52D0(sub_25283C6CC, (&v66 - 4), v59);
      v61 = v60;

      v62 = sub_2528BF3D0();
      v63 = sub_252832308(v62);
      MEMORY[0x28223BE20](v63);
      *(&v66 - 2) = a1;
      sub_2527A5718(sub_25283C6E4, (&v66 - 4), v63);
      v65 = v64;

      v100 = v76;
      sub_252735F6C(v61);
      sub_252735F6C(v65);
      return;
    }

    v27 = *(v24 + 8 * v30);
    ++v31;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_25282E168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v3 = sub_2528BF400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2528BF9D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for DeviceEntity(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v22, v7);
  (*(v4 + 16))(v6, v23, v3);
  DeviceEntity.init(staticService:snapshot:)(v10, v6, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2527213D8(v13, &qword_27F4FD668, &qword_2528C8900);
  }

  else
  {
    sub_25283BBDC(v13, v17, type metadata accessor for DeviceEntity);
    sub_2528BE6B0();
    v26[0] = v26[1];
    v25 = 3;
    if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v26, &v25) & 1) == 0)
    {
      v20 = v24;
      sub_25283BBDC(v17, v24, type metadata accessor for DeviceEntity);
      v19 = v20;
      v18 = 0;
      return (*(v15 + 56))(v19, v18, 1, v14);
    }

    sub_25283B92C(v17, type metadata accessor for DeviceEntity);
  }

  v18 = 1;
  v19 = v24;
  return (*(v15 + 56))(v19, v18, 1, v14);
}

uint64_t sub_25282E4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528BFF90();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  return DeviceEntity.init(staticMediaProfile:snapshot:)(v12, v9, a3);
}

uint64_t sub_25282E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C0130();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  DeviceEntity.init(staticCameraProfile:snapshot:)(v12, v9, a3);
  v14 = type metadata accessor for DeviceEntity(0);
  return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
}

uint64_t sub_25282E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2528BFEF0();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = a3;
  sub_2527A33EC(sub_25283B888, v12, v8);
  v10 = v9;

  *a4 = v10;
  return result;
}

uint64_t sub_25282E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v7 = sub_2528BF400();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BFF00();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2528BFB20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2528BECF0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_2528BFB00(), v20 = sub_2528198B8(v19, a2), (*(v17 + 8))(v19, v16), (v20 & 1) == 0))
  {
    v23 = type metadata accessor for DeviceEntity(0);
    return (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  }

  else
  {
    (*(v13 + 16))(v15, a1, v12);
    (*(v24 + 16))(v11, v29, v25);
    v21 = v26;
    (*(v27 + 16))(v26, v30, v28);
    return DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)(v15, v11, v21, v31);
  }
}

uint64_t sub_25282EBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2528BFF00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2528BFB20();
  MEMORY[0x28223BE20](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v9 + 16))(v11, a2, v8);
  return DeviceEntity.init(staticEndpoint:staticMatterDevice:home:)(v14, v11, a3, a4);
}

uint64_t sub_25282ED34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2528BF070();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BF330();
  if (*(v8 + 16) && (v9 = sub_252785C40(a1), (v10 & 1) != 0))
  {
    (*(v5 + 16))(v7, *(v8 + 56) + *(v5 + 72) * v9, v4);

    v11 = sub_2528BF060();
    result = (*(v5 + 8))(v7, v4);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *a2 = v11;
  return result;
}

uint64_t sub_25282EE84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_25282EEB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

char *sub_25282EEDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25282EEFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FF680, &qword_2528D3C98, MEMORY[0x277D155B8]);
  *v3 = result;
  return result;
}

void *sub_25282EF40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FF678, &qword_2528D3C90, MEMORY[0x277D16AB0]);
  *v3 = result;
  return result;
}

char *sub_25282EF84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F690(a1, a2, a3, *v3, &qword_27F4FF6A0, &unk_2528D3CD8, &type metadata for SupportedAttributeInfo);
  *v3 = result;
  return result;
}

char *sub_25282EFBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25282EFDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_25282F020(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
  *v3 = result;
  return result;
}

char *sub_25282F064(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FEC8(a1, a2, a3, *v3, &qword_27F4FC780, &unk_2528D4C50);
  *v3 = result;
  return result;
}

char *sub_25282F094(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F690(a1, a2, a3, *v3, &qword_27F4FC758, &unk_2528C8020, &type metadata for DeviceResult);
  *v3 = result;
  return result;
}

void *sub_25282F0CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F55C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25282F0EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FA00(a1, a2, a3, *v3, &qword_27F4FC730, &unk_2528D3CC0);
  *v3 = result;
  return result;
}

char *sub_25282F11C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F690(a1, a2, a3, *v3, &qword_27F4FC760, &qword_2528C4830, &type metadata for AttributeResult);
  *v3 = result;
  return result;
}

char *sub_25282F154(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F79C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25282F174(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282F8B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25282F194(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC848, &unk_2528C4900, type metadata accessor for ZoneEntity);
  *v3 = result;
  return result;
}

void *sub_25282F1D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC6A0, &qword_2528D3C80, MEMORY[0x277D16EC8]);
  *v3 = result;
  return result;
}

char *sub_25282F21C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FA00(a1, a2, a3, *v3, &qword_27F4FF698, &unk_2528D3CB0);
  *v3 = result;
  return result;
}

void *sub_25282F24C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FAFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25282F26C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC830, &qword_2528C48E0, type metadata accessor for DeviceEntity);
  *v3 = result;
  return result;
}

void *sub_25282F2B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FCEC(a1, a2, a3, *v3, &qword_27F4FC7F8, &qword_2528C48B0, type metadata accessor for RoomEntity);
  *v3 = result;
  return result;
}

char *sub_25282F2F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25282FEC8(a1, a2, a3, *v3, &qword_27F4FF6B8, &unk_2528D3D10);
  *v3 = result;
  return result;
}

char *sub_25282F324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF670, &qword_2528D3C88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25282F450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25282F55C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6B0, &unk_2528D3D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25282F690(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25282F79C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3A8, &qword_2528D3CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25282F8B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF930, &qword_2528D41F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25282FA00(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_25282FAFC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C8, &qword_2528D3D28);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25282FCEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25282FEC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_25282FFB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_25283004C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2528BFDE0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
  result = sub_2528C0E50();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_25283C680(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
    result = sub_2528C0900();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252830374(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6F8, &unk_2528D3CA0);
  result = sub_2528C0E50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_2528C1130();
    sub_2528C0A40();

    result = sub_2528C1180();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2528306D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  result = sub_2528C0E50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2528C1130();

    sub_2528C0A40();
    result = sub_2528C1180();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2528308F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2528BECF0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
  result = sub_2528C0E50();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_25283C680(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_2528C0900();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_252830C1C(uint64_t a1, uint64_t a2)
{

  return sub_252830C8C(a1, a2, sub_252830E68, sub_252830E68);
}

void *sub_252830C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  sub_2528BEA50();
  isStackAllocationSafe = sub_2528BEA50();
  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();
    sub_2528BEA50();
    v13 = sub_25282FFB4(v15, v10, a2, a1, a4);

    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  return v13;
}

uint64_t sub_252830E68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v27 = 0;
    v28 = a3 + 56;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v52 = v30 & *(a3 + 56);
    v54 = 0;
    v31 = (v29 + 63) >> 6;
    v56 = a4 + 56;
LABEL_68:
    if (v52)
    {
      v32 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      goto LABEL_75;
    }

    v33 = v27;
    while (1)
    {
      v27 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_129;
      }

      if (v27 >= v31)
      {
        break;
      }

      v34 = *(v28 + 8 * v27);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v52 = (v34 - 1) & v34;
LABEL_75:
        v49 = v32 | (v27 << 6);
        v35 = *(*(v5 + 48) + v49);
        sub_2528C1130();
        sub_2528C0A40();

        result = sub_2528C1180();
        v36 = -1 << *(v4 + 32);
        v37 = result & ~v36;
        if (((*(v56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_68;
        }

        v38 = ~v36;
        v39 = v35;
        while (2)
        {
          v40 = 0xE600000000000000;
          v41 = 0x6D7575636176;
          switch(*(*(a4 + 48) + v37))
          {
            case 1:
              v40 = 0xE300000000000000;
              v41 = 7368557;
              break;
            case 2:
              v41 = 0x68546D7575636176;
              v40 = 0xED0000706F4D6E65;
              break;
            case 3:
              v41 = 0x61656C4370656564;
              v40 = 0xE90000000000006ELL;
              break;
            case 4:
              v40 = 0xE400000000000000;
              v41 = 1869903201;
              break;
            case 5:
              v40 = 0xE500000000000000;
              v41 = 0x7465697571;
              break;
            case 6:
              v40 = 0xE500000000000000;
              v41 = 0x6B63697571;
              break;
            case 7:
              v40 = 0xE800000000000000;
              v41 = 0x6573696F4E776F6CLL;
              break;
            case 8:
              v40 = 0xE900000000000079;
              v41 = 0x6772656E45776F6CLL;
              break;
            case 9:
              v40 = 0xE800000000000000;
              v41 = 0x6E6F697461636176;
              break;
            case 0xA:
              v40 = 0xE500000000000000;
              v41 = 0x746867696ELL;
              break;
            case 0xB:
              v40 = 0xE300000000000000;
              v41 = 7954788;
              break;
            case 0xC:
              v40 = 0xE300000000000000;
              v41 = 7235949;
              break;
            case 0xD:
              v40 = 0xE300000000000000;
              v41 = 7889261;
              break;
            default:
              break;
          }

          v42 = 0xE600000000000000;
          v43 = 0x6D7575636176;
          switch(v39)
          {
            case 1:
              v42 = 0xE300000000000000;
              if (v41 == 7368557)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            case 2:
              v42 = 0xED0000706F4D6E65;
              if (v41 != 0x68546D7575636176)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 3:
              v42 = 0xE90000000000006ELL;
              if (v41 != 0x61656C4370656564)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 4:
              v42 = 0xE400000000000000;
              if (v41 != 1869903201)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 5:
              v42 = 0xE500000000000000;
              if (v41 != 0x7465697571)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 6:
              v42 = 0xE500000000000000;
              if (v41 != 0x6B63697571)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 7:
              v42 = 0xE800000000000000;
              if (v41 != 0x6573696F4E776F6CLL)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 8:
              v42 = 0xE900000000000079;
              if (v41 != 0x6772656E45776F6CLL)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 9:
              v42 = 0xE800000000000000;
              if (v41 != 0x6E6F697461636176)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 10:
              v42 = 0xE500000000000000;
              v43 = 0x746867696ELL;
              goto LABEL_115;
            case 11:
              v42 = 0xE300000000000000;
              if (v41 != 7954788)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 12:
              v42 = 0xE300000000000000;
              if (v41 != 7235949)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 13:
              v42 = 0xE300000000000000;
              if (v41 != 7889261)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            default:
LABEL_115:
              if (v41 != v43)
              {
                goto LABEL_117;
              }

LABEL_116:
              if (v40 != v42)
              {
LABEL_117:
                v44 = sub_2528C1060();

                if (v44)
                {
                  goto LABEL_123;
                }

                v37 = (v37 + 1) & v38;
                if (((*(v56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
                {
                  v5 = a3;
                  v4 = a4;
                  goto LABEL_68;
                }

                continue;
              }

LABEL_123:
              *(v50 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
              v45 = __OFADD__(v54++, 1);
              v5 = a3;
              v4 = a4;
              if (!v45)
              {
                goto LABEL_68;
              }

              goto LABEL_131;
          }
        }
      }
    }

    v6 = v54;
LABEL_127:
    sub_2528BEA50();
    return sub_252830374(v50, a2, v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v48 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v51 = v9 & *(a4 + 56);
    v46 = (v8 + 63) >> 6;
    v55 = a3 + 56;
LABEL_6:
    if (v51)
    {
      v10 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v11 = v10 | (v7 << 6);
      v12 = a4;
      goto LABEL_13;
    }

    v13 = v7;
    v12 = a4;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v46)
      {
        goto LABEL_127;
      }

      v14 = *(v48 + 8 * v7);
      ++v13;
      if (v14)
      {
        v51 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v7 << 6);
LABEL_13:
        v15 = *(*(v12 + 48) + v11);
        sub_2528C1130();
        sub_2528C0A40();

        result = sub_2528C1180();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v55 + 8 * (v17 >> 6))) == 0)
        {
          goto LABEL_6;
        }

        v53 = v6;
        v20 = ~v16;
        v21 = v15;
        while (2)
        {
          v22 = 0xE600000000000000;
          v23 = 0x6D7575636176;
          switch(*(*(v5 + 48) + v17))
          {
            case 1:
              v22 = 0xE300000000000000;
              v23 = 7368557;
              break;
            case 2:
              v23 = 0x68546D7575636176;
              v22 = 0xED0000706F4D6E65;
              break;
            case 3:
              v23 = 0x61656C4370656564;
              v22 = 0xE90000000000006ELL;
              break;
            case 4:
              v22 = 0xE400000000000000;
              v23 = 1869903201;
              break;
            case 5:
              v22 = 0xE500000000000000;
              v23 = 0x7465697571;
              break;
            case 6:
              v22 = 0xE500000000000000;
              v23 = 0x6B63697571;
              break;
            case 7:
              v22 = 0xE800000000000000;
              v23 = 0x6573696F4E776F6CLL;
              break;
            case 8:
              v22 = 0xE900000000000079;
              v23 = 0x6772656E45776F6CLL;
              break;
            case 9:
              v22 = 0xE800000000000000;
              v23 = 0x6E6F697461636176;
              break;
            case 0xA:
              v22 = 0xE500000000000000;
              v23 = 0x746867696ELL;
              break;
            case 0xB:
              v22 = 0xE300000000000000;
              v23 = 7954788;
              break;
            case 0xC:
              v22 = 0xE300000000000000;
              v23 = 7235949;
              break;
            case 0xD:
              v22 = 0xE300000000000000;
              v23 = 7889261;
              break;
            default:
              break;
          }

          v24 = 0xE600000000000000;
          v25 = 0x6D7575636176;
          switch(v21)
          {
            case 1:
              v24 = 0xE300000000000000;
              if (v23 == 7368557)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            case 2:
              v24 = 0xED0000706F4D6E65;
              if (v23 != 0x68546D7575636176)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 3:
              v24 = 0xE90000000000006ELL;
              if (v23 != 0x61656C4370656564)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 4:
              v24 = 0xE400000000000000;
              if (v23 != 1869903201)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 5:
              v24 = 0xE500000000000000;
              if (v23 != 0x7465697571)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 6:
              v24 = 0xE500000000000000;
              if (v23 != 0x6B63697571)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 7:
              v24 = 0xE800000000000000;
              if (v23 != 0x6573696F4E776F6CLL)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 8:
              v24 = 0xE900000000000079;
              if (v23 != 0x6772656E45776F6CLL)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 9:
              v24 = 0xE800000000000000;
              if (v23 != 0x6E6F697461636176)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 10:
              v24 = 0xE500000000000000;
              v25 = 0x746867696ELL;
              goto LABEL_53;
            case 11:
              v24 = 0xE300000000000000;
              if (v23 != 7954788)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 12:
              v24 = 0xE300000000000000;
              if (v23 != 7235949)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            case 13:
              v24 = 0xE300000000000000;
              if (v23 != 7889261)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            default:
LABEL_53:
              if (v23 != v25)
              {
                goto LABEL_55;
              }

LABEL_54:
              if (v22 != v24)
              {
LABEL_55:
                v26 = sub_2528C1060();

                if (v26)
                {
                  goto LABEL_61;
                }

                v17 = (v17 + 1) & v20;
                v18 = v17 >> 6;
                v5 = a3;
                v19 = 1 << v17;
                if ((*(v55 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
                {
                  v6 = v53;
                  goto LABEL_6;
                }

                continue;
              }

LABEL_61:
              v50[v18] |= v19;
              v6 = v53 + 1;
              v5 = a3;
              if (!__OFADD__(v53, 1))
              {
                goto LABEL_6;
              }

              goto LABEL_130;
          }
        }
      }
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
  }

  return result;
}

unint64_t *sub_252831B04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_2528C1130();

      sub_2528C0A40();
      v26 = sub_2528C1180();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_2528C1060() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:
          sub_2528BEA50();
          return sub_2528306D0(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_2528C1130();

      sub_2528C0A40();
      v39 = sub_2528C1180();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_2528C1060() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252831EE0(uint64_t a1)
{
  v2 = sub_2528BF9D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_252833D44(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2528320F4(uint64_t a1)
{
  v2 = sub_2528BFF90();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448], MEMORY[0x277D16450]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_252833130(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252832308(uint64_t a1)
{
  v2 = sub_2528C0130();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_25283251C(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25283251C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C0130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548], MEMORY[0x277D16550]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25283C680(&qword_27F4FF660, MEMORY[0x277D16548], MEMORY[0x277D16558]);
      v21 = sub_2528C0930();
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
    sub_2528327FC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2528327FC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2528C0130();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_252832DD4(v12);
    }

    else
    {
      sub_252832AB8(v12);
    }

    v13 = *v3;
    sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548], MEMORY[0x277D16550]);
    v14 = sub_2528C0900();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25283C680(&qword_27F4FF660, MEMORY[0x277D16548], MEMORY[0x277D16558]);
        v22 = sub_2528C0930();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2528342E0(MEMORY[0x277D16548], &qword_27F4FF668, &unk_2528D3C50);
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_252832AB8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528C0130();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF668, &unk_2528D3C50);
  v7 = sub_2528C0E40();
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
      sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548], MEMORY[0x277D16550]);
      result = sub_2528C0900();
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

uint64_t sub_252832DD4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528C0130();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF668, &unk_2528D3C50);
  result = sub_2528C0E40();
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
      sub_25283C680(&qword_27F4FF658, MEMORY[0x277D16548], MEMORY[0x277D16550]);
      result = sub_2528C0900();
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

uint64_t sub_252833130(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BFF90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448], MEMORY[0x277D16450]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25283C680(&qword_27F4FF648, MEMORY[0x277D16448], MEMORY[0x277D16458]);
      v21 = sub_2528C0930();
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
    sub_252833410(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_252833410(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2528BFF90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_2528339E8(v12);
    }

    else
    {
      sub_2528336CC(v12);
    }

    v13 = *v3;
    sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448], MEMORY[0x277D16450]);
    v14 = sub_2528C0900();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25283C680(&qword_27F4FF648, MEMORY[0x277D16448], MEMORY[0x277D16458]);
        v22 = sub_2528C0930();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2528342E0(MEMORY[0x277D16448], &qword_27F4FF650, &qword_2528D3C48);
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_2528336CC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528BFF90();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF650, &qword_2528D3C48);
  v7 = sub_2528C0E40();
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
      sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448], MEMORY[0x277D16450]);
      result = sub_2528C0900();
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

uint64_t sub_2528339E8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528BFF90();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF650, &qword_2528D3C48);
  result = sub_2528C0E40();
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
      sub_25283C680(&qword_27F4FF640, MEMORY[0x277D16448], MEMORY[0x277D16450]);
      result = sub_2528C0900();
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

uint64_t sub_252833D44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BF9D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
  v33 = a2;
  v11 = sub_2528C0900();
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
      sub_25283C680(&qword_27F4FD238, MEMORY[0x277D15AC0], MEMORY[0x277D15AD0]);
      v21 = sub_2528C0930();
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
    sub_252834024(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_252834024(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2528BF9D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_252834834(v12);
    }

    else
    {
      sub_252834518(v12);
    }

    v13 = *v3;
    sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
    v14 = sub_2528C0900();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_25283C680(&qword_27F4FD238, MEMORY[0x277D15AC0], MEMORY[0x277D15AD0]);
        v22 = sub_2528C0930();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2528342E0(MEMORY[0x277D15AC0], &qword_27F4FF638, &qword_2528D3C40);
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_2528342E0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_2528C0E30();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_252834518(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528BF9D0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF638, &qword_2528D3C40);
  v7 = sub_2528C0E40();
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
      sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
      result = sub_2528C0900();
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

uint64_t sub_252834834(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528BF9D0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF638, &qword_2528D3C40);
  result = sub_2528C0E40();
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
      sub_25283C680(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
      result = sub_2528C0900();
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

void sub_252834B90(__int128 *a1, uint64_t a2)
{
  sub_2528C1180();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x2530A87A0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_2528C1130();

        sub_2528C0A40();
        v10 = sub_2528C1180();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2528BE6B0();
  sub_2528BE6B0();

  sub_2528BE6B0();
  sub_2528BE6B0();

  sub_2528BE6B0();
  v14 = v15;
  sub_2528BE6B0();
  v13[0] = v13[1];
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v14, v13) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2528BE6B0();
  v5 = v15;
  v4 = v16;
  sub_2528BE6B0();
  if (v5 == v15 && v4 == v16)
  {
  }

  else
  {
    v6 = sub_2528C1060();

    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_2528BE6B0();
  v8 = v15;
  v7 = v16;
  sub_2528BE6B0();
  if (v8 != v15 || v7 != v16)
  {
    v9 = sub_2528C1060();

    if (v9)
    {
      goto LABEL_10;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

LABEL_10:
  v10 = type metadata accessor for DeviceEntity(0);
  v11 = sub_25284E318(*(a1 + *(v10 + 52)), *(a2 + *(v10 + 52)));
  return v11 & 1;
}

void sub_252834F40(uint64_t a1, char *a2)
{
  v36 = a2;
  v35 = sub_2528BFF00();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_2528C00D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(a1, v7, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2527213D8(v7, &qword_27F4FCDB8, &unk_2528C5CC0);
  }

  else
  {
    v28 = v9;
    v29 = v8;
    (*(v9 + 32))(v11, v7, v8);
    v27 = v11;
    v12 = sub_2528C0070();
    v37 = MEMORY[0x277D84F90];
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v30 = v3 + 8;
    v31 = v3 + 16;
    v33 = v12;

    v18 = 0;
    v32 = v3;
    while (v16)
    {
      v19 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v34;
      v22 = v35;
      (*(v3 + 16))(v34, *(v33 + 56) + *(v3 + 72) * (v20 | (v19 << 6)), v35);
      v23 = sub_2528BFEF0();
      MEMORY[0x28223BE20](v23);
      v24 = v36;
      *(&v27 - 2) = v21;
      *(&v27 - 1) = v24;
      sub_2527A33EC(sub_25283B9AC, (&v27 - 4), v23);
      v26 = v25;

      v3 = v32;
      (*(v32 + 8))(v21, v22);
      sub_252735F6C(v26);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        (*(v28 + 8))(v27, v29);

        return;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2528352F8(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v4 = sub_2528C08B0();
  __swift_project_value_buffer(v4, qword_27F5025C8);

  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = type metadata accessor for DeviceEntity(0);
    v10 = MEMORY[0x2530A81A0](a2, v9);
    v12 = sub_2527389AC(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_252711000, v5, v6, "Query: Found deviceEntities: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v13 = sub_2528C0820();
  v14 = __swift_project_value_buffer(v13, qword_27F5025E0);

  sub_2528BA558(0, a1, v14, a2);
}

uint64_t sub_2528354DC(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v1[4] = swift_task_alloc();
  v2 = sub_2528C00D0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_2528BECF0();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6A8, &unk_2528D3CE8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v1[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1[16] = v4;
  v5 = *(v4 - 8);
  v1[17] = v5;
  v1[18] = *(v5 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252835740, 0, 0);
}

uint64_t sub_252835740()
{
  v29 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[3];
  v3 = sub_2528C08B0();
  __swift_project_value_buffer(v3, qword_27F5025C8);
  sub_25272006C(v2, v1, &qword_27F4FC488, &unk_2528C3F80);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_2527389AC(0x6E4572657474616DLL, 0xEE00736569746974, &v28);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, &v28);
    *(v8 + 22) = 2080;
    v10 = sub_2528C0DB0();
    v12 = v11;
    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
    v13 = sub_2527389AC(v10, v12, &v28);

    *(v8 + 24) = v13;
    _os_log_impl(&dword_252711000, v4, v5, "Query: Performing device query {%s} for %s with homeEntity: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v9, -1, -1);
    MEMORY[0x2530A8D80](v8, -1, -1);
  }

  else
  {

    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[17];
  v17 = v0[15];
  v18 = v0[3];
  v19 = sub_2528C0820();
  __swift_project_value_buffer(v19, qword_27F5025E0);
  sub_25272006C(v18, v14, &qword_27F4FC488, &unk_2528C3F80);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x7265766C6F736572;
  *(v22 + 24) = 0xE800000000000000;
  strcpy((v22 + 32), "matterEntities");
  *(v22 + 47) = -18;
  sub_25274AA0C(v14, v22 + v20, &qword_27F4FC488, &unk_2528C3F80);
  *(v22 + v21) = 0;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v0[21] = sub_2528B73C8(0, 0, sub_25283C6C8, v22);

  v23 = sub_2528C00B0();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = swift_task_alloc();
  v0[22] = v24;
  *v24 = v0;
  v24[1] = sub_252835B84;
  v25 = v0[15];
  v26 = v0[3];

  return sub_2527817B8(v26, v25);
}

uint64_t sub_252835B84(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 184) = a1;

  sub_2527213D8(v2, &qword_27F4FC478, &unk_2528C3F70);

  return MEMORY[0x2822009F8](sub_252835CB4, 0, 0);
}

uint64_t sub_252835CB4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v1 + 32);
  *(v0 + 248) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v1 + 64);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  *(v0 + 192) = 0;
  v8 = v5 & v7;
  if (v8)
  {
    v9 = 0;
LABEL_8:
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v34 = *(v0 + 40);
    v35 = (v8 - 1) & v8;
    v16 = __clz(__rbit64(v8)) | (v9 << 6);
    (*(v2 + 16))(v12, *(v1 + 48) + *(v2 + 72) * v16, v14);
    (*(v3 + 16))(v15, *(v1 + 56) + *(v3 + 72) * v16, v34);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
    v18 = *(v17 + 48);
    (*(v2 + 32))(v13, v12, v14);
    (*(v3 + 32))(v13 + v18, v15, v34);
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    v19 = v35;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    while (v11 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v1 + 72 + 8 * v10++);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v32 = *(v0 + 104);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    v19 = 0;
  }

  *(v0 + 200) = v19;
  *(v0 + 208) = v11;
  v20 = *(v0 + 112);
  sub_25274AA0C(*(v0 + 104), v20, &qword_27F4FF6A8, &unk_2528D3CE8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    v22 = *(v0 + 168);

    v23 = *(v0 + 16);
    sub_2528352F8(v22, v23);

    v24 = *(v0 + 8);

    return v24(v23);
  }

  else
  {
    v26 = *(v0 + 112);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);
    v30 = *(v21 + 48);
    (*(*(v0 + 80) + 32))(*(v0 + 88), v26, *(v0 + 72));
    (*(v28 + 32))(v27, v26 + v30, v29);
    sub_2528BEFC0();
    v31 = swift_task_alloc();
    *(v0 + 216) = v31;
    *v31 = v0;
    v31[1] = sub_252836110;

    return MEMORY[0x28216EA40]();
  }
}

uint64_t sub_252836110(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_252836210, 0, 0);
}

uint64_t sub_252836210()
{
  sub_2528C0C20();
  *(v0 + 232) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_2528362A4, v2, v1);
}

uint64_t sub_2528362A4()
{
  v1 = *(v0 + 224);

  *(v0 + 240) = [v1 sortedHomes];

  return MEMORY[0x2822009F8](sub_25283632C, 0, 0);
}

uint64_t sub_25283632C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  sub_25272BFF4(0, &qword_27F4FCE58, 0x277CD1A60);
  v4 = sub_2528C0B30();

  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = sub_2527AAE00(sub_25283B98C, v5, v4);

  if (v6)
  {
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    (*(v7 + 16))(v9, *(v0 + 56), v8);
    (*(v7 + 56))(v9, 0, 1, v8);
    sub_252834F40(v9, v6);
    v11 = v10;
    sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_252735F6C(v11);
  }

  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 72);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  (*(v13 + 8))(v12, v14);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  *(v0 + 192) = v2;
  if (!v15)
  {
    v18 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v18 <= (v16 + 1))
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v44 = *(v0 + 104);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
        (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
        v31 = 0;
        goto LABEL_14;
      }

      v17 = *(v0 + 184);
      v15 = *(v17 + 8 * v21 + 64);
      ++v16;
      if (v15)
      {
        v16 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
    return MEMORY[0x28216EA40]();
  }

  v17 = *(v0 + 184);
LABEL_13:
  v22 = *(v0 + 96);
  v23 = *(v0 + 104);
  v24 = *(v0 + 72);
  v25 = *(v0 + 80);
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  v46 = *(v0 + 40);
  v47 = (v15 - 1) & v15;
  v28 = __clz(__rbit64(v15)) | (v16 << 6);
  (*(v25 + 16))(v22, *(v17 + 48) + *(v25 + 72) * v28, v24);
  (*(v27 + 16))(v26, *(v17 + 56) + *(v27 + 72) * v28, v46);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  v30 = *(v29 + 48);
  (*(v25 + 32))(v23, v22, v24);
  (*(v27 + 32))(v23 + v30, v26, v46);
  (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  v31 = v47;
  v20 = v16;
LABEL_14:
  *(v0 + 200) = v31;
  *(v0 + 208) = v20;
  v32 = *(v0 + 112);
  sub_25274AA0C(*(v0 + 104), v32, &qword_27F4FF6A8, &unk_2528D3CE8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) != 1)
  {
    v38 = *(v0 + 112);
    v40 = *(v0 + 48);
    v39 = *(v0 + 56);
    v41 = *(v0 + 40);
    v42 = *(v33 + 48);
    (*(*(v0 + 80) + 32))(*(v0 + 88), v38, *(v0 + 72));
    (*(v40 + 32))(v39, v38 + v42, v41);
    sub_2528BEFC0();
    v43 = swift_task_alloc();
    *(v0 + 216) = v43;
    *v43 = v0;
    v43[1] = sub_252836110;

    return MEMORY[0x28216EA40]();
  }

  v34 = *(v0 + 168);

  v35 = *(v0 + 16);
  sub_2528352F8(v34, v35);

  v36 = *(v0 + 8);

  return v36(v35);
}

uint64_t sub_2528368D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoomEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2528BECF0();
  v10 = *(v28 - 8);
  v11 = MEMORY[0x28223BE20](v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    v15 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v26 = a3;
    v27 = a2;
    v31 = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v14, 0);
    v15 = v31;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    v29 = v10 + 32;
    v30 = v17;
    v18 = v28;
    do
    {
      sub_25283B8C4(v16, v9, type metadata accessor for RoomEntity);
      (*(v10 + 16))(v13, v9, v18);
      sub_25283B92C(v9, type metadata accessor for RoomEntity);
      v31 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25282EFDC((v19 > 1), v20 + 1, 1);
        v18 = v28;
        v15 = v31;
      }

      *(v15 + 16) = v20 + 1;
      v11 = (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, v13, v18);
      v16 += v30;
      --v14;
    }

    while (v14);
    a3 = v26;
    a2 = v27;
  }

  if (a2)
  {
LABEL_12:
    MEMORY[0x28223BE20](v11);
    *(&v25 - 2) = a3;
    v22 = sub_252853E34(sub_25283B8A8, (&v25 - 4), a2);
    v21 = sub_252743D54(v22);

    goto LABEL_13;
  }

  v21 = MEMORY[0x277D84FA0];
LABEL_13:
  v31 = v15;
  sub_252737064(v21);
  v23 = sub_252743D54(v31);

  return v23;
}

uint64_t sub_252836BF8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v27[1] = 0;
  v28 = sub_2528C00D0();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v12 = sub_2528BF400();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v17 = sub_25272006C(a1 + *(v16 + 20), v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (v29)
  {
    MEMORY[0x28223BE20](v17);
    v27[-2] = v15;
    sub_252853B20(sub_25283B7F0, &v27[-4], v18);
  }

  else
  {
    sub_25282D6B8(v15);
  }

  v27[0] = v19;
  sub_25272006C(v11, v9, &qword_27F4FCDB8, &unk_2528C5CC0);
  v20 = v28;
  if ((*(v3 + 48))(v9, 1, v28) == 1)
  {
    sub_2527213D8(v9, &qword_27F4FCDB8, &unk_2528C5CC0);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v3 + 32))(v5, v9, v20);
    v22 = sub_2528C0070();
    MEMORY[0x28223BE20](v22);
    v27[-2] = v29;
    v27[-1] = v15;
    sub_252853528(sub_25283B7D4, &v27[-4], v22);
    v24 = v23;

    (*(v3 + 8))(v5, v20);
    v21 = v24;
  }

  v30 = v27[0];
  sub_252735F6C(v21);
  sub_2527213D8(v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  v25 = v30;
  (*(v13 + 8))(v15, v12);
  return v25;
}

uint64_t sub_252836FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DeviceEntity(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v4[13] = swift_task_alloc();
  v6 = sub_2528C05D0();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4[18] = v7;
  v8 = *(v7 - 8);
  v4[19] = v8;
  v4[20] = *(v8 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252837208, 0, 0);
}

uint64_t sub_252837208()
{
  v58 = v0;
  v1 = v0[2];
  strcpy(v55, "deviceTypes: ");
  HIWORD(v55[1]) = -4864;
  v2 = MEMORY[0x2530A81A0](v1, &type metadata for DeviceType);
  MEMORY[0x2530A80B0](v2);

  v4 = v55[0];
  v3 = v55[1];
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v5 = v0[22];
  v6 = v0[3];
  v7 = sub_2528C08B0();
  __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_25272006C(v6, v5, &qword_27F4FC488, &unk_2528C3F80);

  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v53 = v55[0];
  v54 = v55[1];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_2527389AC(v4, v3, v55);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, v55);
    *(v12 + 22) = 2080;
    v14 = sub_2528C0DB0();
    v16 = v15;
    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v17 = sub_2527389AC(v14, v16, v55);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_252711000, v8, v9, "Query: Performing device query {%s} for %s with homeEntity: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v13, -1, -1);
    MEMORY[0x2530A8D80](v12, -1, -1);
  }

  else
  {

    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v18 = v0[20];
  v19 = v0[21];
  v20 = v0[19];
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[3];
  v52 = v0[2];
  v24 = sub_2528C0820();
  __swift_project_value_buffer(v24, qword_27F5025E0);
  sub_25272006C(v23, v19, &qword_27F4FC488, &unk_2528C3F80);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v27[2] = 0x7265766C6F736572;
  v27[3] = 0xE800000000000000;
  v27[4] = v53;
  v27[5] = v54;
  sub_25274AA0C(v19, v27 + v25, &qword_27F4FC488, &unk_2528C3F80);
  *(v27 + v26) = v21;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  v0[23] = sub_2528B73C8(0, 0, sub_25283C6C8, v27);

  v28 = MEMORY[0x277D84F90];
  v55[0] = MEMORY[0x277D84F90];
  v29 = *(v52 + 16);
  v0[24] = v29;
  if (v29)
  {
    v30 = (v0[2] + 32);
    do
    {
      v33 = *v30++;
      v32 = v33;
      if (v33 >> 14)
      {
        v34 = (v32 >> 8) & 0x3F;
        v56 = v32;
        v35 = sub_252802EDC();
        v57 = v34;
        v36 = sub_252802EDC();
        v31 = sub_25281A2B8(v36, v35);
      }

      else
      {
        v57 = v32;
        v31 = sub_252802EDC();
      }

      sub_2527368C0(v31);
      --v29;
    }

    while (v29);
    v28 = v55[0];
  }

  v37 = v0[16];
  v38 = v0[17];
  v39 = v0[14];
  v40 = v0[15];
  v41 = v0[12];
  v42 = v0[13];
  v43 = sub_2527443D4(v28);

  sub_2528C05B0();
  *v42 = v43;
  v44 = *MEMORY[0x277D16510];
  v45 = sub_2528C00B0();
  v46 = *(v45 - 8);
  (*(v46 + 104))(v42, v44, v45);
  (*(v46 + 56))(v42, 0, 1, v45);
  sub_2528C05C0();
  sub_2527213D8(v42, &qword_27F4FC478, &unk_2528C3F70);
  v47 = *(v40 + 8);
  v0[25] = v47;
  v0[26] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v37, v39);
  (*(v40 + 16))(v41, v38, v39);
  (*(v40 + 56))(v41, 0, 1, v39);
  v48 = swift_task_alloc();
  v0[27] = v48;
  *v48 = v0;
  v48[1] = sub_252837814;
  v49 = v0[12];
  v50 = v0[3];

  return sub_25277ECE4(v50, 0, 0, v49);
}

uint64_t sub_252837814(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 224) = a1;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_252837944, 0, 0);
}

void sub_252837944(uint64_t a1, uint64_t a2)
{
  v59 = v2;
  v3 = v2[7];
  v4 = v2[28];
  v5 = *(v4 + 64);
  v50 = v4 + 64;
  v51 = v2[10];
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v49 = (63 - v7) >> 6;
  v9 = v2[2] + 32;
  v52 = v2[28];

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v56 = v3;
  while (v8)
  {
    v55 = v11;
LABEL_11:
    v13 = v2[11];
    v15 = v2[4];
    v14 = v2[5];
    v53 = v10;
    v54 = v8;
    v16 = __clz(__rbit64(v8)) | (v10 << 6);
    v17 = *(v52 + 48);
    v18 = sub_2528BECF0();
    (*(*(v18 - 8) + 16))(v13, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v52 + 56);
    v20 = v19 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v16;
    v21 = *(v51 + 48);
    sub_25283B8C4(v20, v13 + v21, type metadata accessor for HomeEntity.SnapshotPair);
    v22 = sub_2528368D8(v14, v15, v13 + v21);
    v23 = sub_252836BF8(v13 + v21, v22);

    v57 = *(v23 + 16);
    if (v57)
    {
      v24 = 0;
      v25 = MEMORY[0x277D84F90];
      while (v24 < *(v23 + 16))
      {
        v26 = v2[24];
        v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v28 = *(v3 + 72);
        sub_25283B8C4(v23 + v27 + v28 * v24, v2[9], type metadata accessor for DeviceEntity);
        if (v26)
        {
          v29 = 0;
          while (1)
          {
            v58[0] = *(v9 + 2 * v29);
            sub_25282CE4C(v58);
            if (v30)
            {
              break;
            }

            if (++v29 == v2[24])
            {
              goto LABEL_13;
            }
          }

          sub_25283BBDC(v2[9], v2[8], type metadata accessor for DeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25282F26C(0, *(v25 + 16) + 1, 1);
          }

          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_25282F26C((v31 > 1), v32 + 1, 1);
          }

          v33 = v2[8];
          *(v25 + 16) = v32 + 1;
          sub_25283BBDC(v33, v25 + v27 + v32 * v28, type metadata accessor for DeviceEntity);
          v3 = v56;
        }

        else
        {
LABEL_13:
          sub_25283B92C(v2[9], type metadata accessor for DeviceEntity);
        }

        if (++v24 == v57)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_27:
    v34 = v2[11];

    sub_2527213D8(v34, &qword_27F4FCDC0, &unk_2528C5CD0);
    v35 = *(v25 + 16);
    v11 = v55;
    v36 = v55[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v37 > v55[3] >> 1)
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      v11 = sub_252738010(isUniquelyReferenced_nonNull_native, v39, 1, v55);
    }

    v8 = (v54 - 1) & v54;
    if (*(v25 + 16))
    {
      if ((v11[3] >> 1) - v11[2] < v35)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      v10 = v53;
      if (v35)
      {
        v40 = v11[2];
        v41 = __OFADD__(v40, v35);
        v42 = v40 + v35;
        if (v41)
        {
          goto LABEL_47;
        }

        v11[2] = v42;
      }
    }

    else
    {

      v10 = v53;
      if (v35)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v49)
    {
      v43 = v2[25];
      v44 = v2[23];
      v45 = v2[17];
      v46 = v11;
      v47 = v2[14];

      sub_2528352F8(v44, v46);

      v43(v45, v47);

      v48 = v2[1];

      v48(v46);
      return;
    }

    v8 = *(v50 + 8 * v12);
    ++v10;
    if (v8)
    {
      v55 = v11;
      v10 = v12;
      goto LABEL_11;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_252837E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for DeviceEntity(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252838018, 0, 0);
}

uint64_t sub_252838018()
{
  v33 = v0;
  v1 = v0[6];
  v32[0] = 0x203A736469;
  v32[1] = 0xE500000000000000;
  v2 = MEMORY[0x2530A81A0](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v2);

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = v0[7];
  v5 = sub_2528C08B0();
  __swift_project_value_buffer(v5, qword_27F5025C8);
  sub_25272006C(v4, v3, &qword_27F4FC488, &unk_2528C3F80);

  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_2527389AC(0x203A736469, 0xE500000000000000, v32);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, v32);
    *(v10 + 22) = 2080;
    v12 = sub_2528C0DB0();
    v14 = v13;
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v15 = sub_2527389AC(v12, v14, v32);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_252711000, v6, v7, "Query: Performing device query {%s} for %s with homeEntity: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

  else
  {

    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v31 = v0[16];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[7];
  v22 = sub_2528C0820();
  __swift_project_value_buffer(v22, qword_27F5025E0);
  sub_25272006C(v21, v16, &qword_27F4FC488, &unk_2528C3F80);
  v23 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = 0x7265766C6F736572;
  v25[3] = 0xE800000000000000;
  v25[4] = 0x203A736469;
  v25[5] = 0xE500000000000000;
  sub_25274AA0C(v16, v25 + v23, &qword_27F4FC488, &unk_2528C3F80);
  *(v25 + v24) = v19;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v0[22] = sub_2528B73C8(0, 0, sub_25283C6C8, v25);

  v26 = sub_2528C05D0();
  (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  v27 = swift_task_alloc();
  v0[23] = v27;
  *v27 = v0;
  v27[1] = sub_2528384A0;
  v28 = v0[16];
  v29 = v0[7];

  return sub_25277ECE4(v29, 0, 0, v28);
}

uint64_t sub_2528384A0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 192) = a1;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2528385D0, 0, 0);
}

void sub_2528385D0(uint64_t a1, uint64_t a2)
{
  v45 = v2[14];
  v46 = v2[24];
  v52 = v2[13];
  v50 = v2[11];
  v3 = -1;
  v4 = -1 << *(v46 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v46 + 64);
  v44 = (63 - v4) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5)
  {
    v49 = v7;
LABEL_11:
    v9 = v2[15];
    v11 = v2[8];
    v10 = v2[9];
    v47 = v6;
    v48 = v5;
    v12 = __clz(__rbit64(v5)) | (v6 << 6);
    v13 = *(v46 + 48);
    v14 = sub_2528BECF0();
    (*(*(v14 - 8) + 16))(v9, v13 + *(*(v14 - 8) + 72) * v12, v14);
    v15 = *(v46 + 56);
    v16 = v15 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v12;
    v17 = *(v45 + 48);
    sub_25283B8C4(v16, v9 + v17, type metadata accessor for HomeEntity.SnapshotPair);
    v18 = sub_2528368D8(v10, v11, v9 + v17);
    v19 = sub_252836BF8(v9 + v17, v18);

    v51 = *(v19 + 16);
    if (v51)
    {
      v20 = 0;
      v21 = MEMORY[0x277D84F90];
      while (v20 < *(v19 + 16))
      {
        v22 = v2[6];
        v23 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v24 = *(v50 + 72);
        sub_25283B8C4(v19 + v23 + v24 * v20, v2[13], type metadata accessor for DeviceEntity);
        sub_2528BE6B0();
        v25 = v2[3];
        v2[4] = v2[2];
        v2[5] = v25;
        v26 = swift_task_alloc();
        *(v26 + 16) = v2 + 4;
        LOBYTE(v22) = sub_25281A4D4(sub_2527B14B4, v26, v22);

        if ((v22 & 1) != 0 || (v27 = , v28 = sub_252743FCC(v27), , v29 = *(sub_252830C8C(*(v52 + 56), v28, sub_252831B04, sub_252831B04) + 2), , v29))
        {
          sub_25283BBDC(v2[13], v2[12], type metadata accessor for DeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25282F26C(0, *(v21 + 16) + 1, 1);
          }

          v31 = *(v21 + 16);
          v30 = *(v21 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_25282F26C((v30 > 1), v31 + 1, 1);
          }

          v32 = v2[12];
          *(v21 + 16) = v31 + 1;
          sub_25283BBDC(v32, v21 + v23 + v31 * v24, type metadata accessor for DeviceEntity);
        }

        else
        {
          sub_25283B92C(v2[13], type metadata accessor for DeviceEntity);
        }

        if (v51 == ++v20)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_24:
    v33 = v2[15];

    sub_2527213D8(v33, &qword_27F4FCDC0, &unk_2528C5CD0);
    v34 = *(v21 + 16);
    v7 = v49;
    v35 = v49[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v36 > v49[3] >> 1)
    {
      if (v35 <= v36)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = v35;
      }

      v7 = sub_252738010(isUniquelyReferenced_nonNull_native, v38, 1, v49);
    }

    v5 = (v48 - 1) & v48;
    if (*(v21 + 16))
    {
      if ((v7[3] >> 1) - v7[2] < v34)
      {
        goto LABEL_43;
      }

      swift_arrayInitWithCopy();

      v6 = v47;
      if (v34)
      {
        v39 = v7[2];
        v40 = __OFADD__(v39, v34);
        v41 = v39 + v34;
        if (v40)
        {
          goto LABEL_44;
        }

        v7[2] = v41;
      }
    }

    else
    {

      v6 = v47;
      if (v34)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v44)
    {
      v42 = v2[22];

      sub_2528352F8(v42, v7);

      v43 = v2[1];

      v43(v7);
      return;
    }

    v5 = *(v46 + 64 + 8 * v8);
    ++v6;
    if (v5)
    {
      v49 = v7;
      v6 = v8;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_252838B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for DeviceEntity(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252838CEC, 0, 0);
}

uint64_t sub_252838CEC()
{
  v33 = v0;
  v1 = v0[6];
  v32[0] = 0x203A73656D616ELL;
  v32[1] = 0xE700000000000000;
  v2 = MEMORY[0x2530A81A0](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v2);

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = v0[7];
  v5 = sub_2528C08B0();
  __swift_project_value_buffer(v5, qword_27F5025C8);
  sub_25272006C(v4, v3, &qword_27F4FC488, &unk_2528C3F80);

  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_2527389AC(0x203A73656D616ELL, 0xE700000000000000, v32);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2527389AC(0x7265766C6F736572, 0xE800000000000000, v32);
    *(v10 + 22) = 2080;
    v12 = sub_2528C0DB0();
    v14 = v13;
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v15 = sub_2527389AC(v12, v14, v32);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_252711000, v6, v7, "Query: Performing device query {%s} for %s with homeEntity: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

  else
  {

    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v31 = v0[16];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[7];
  v22 = sub_2528C0820();
  __swift_project_value_buffer(v22, qword_27F5025E0);
  sub_25272006C(v21, v16, &qword_27F4FC488, &unk_2528C3F80);
  v23 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = 0x7265766C6F736572;
  v25[3] = 0xE800000000000000;
  v25[4] = 0x203A73656D616ELL;
  v25[5] = 0xE700000000000000;
  sub_25274AA0C(v16, v25 + v23, &qword_27F4FC488, &unk_2528C3F80);
  *(v25 + v24) = v19;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;

  v0[22] = sub_2528B73C8(0, 0, sub_25283C6C8, v25);

  v26 = sub_2528C05D0();
  (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  v27 = swift_task_alloc();
  v0[23] = v27;
  *v27 = v0;
  v27[1] = sub_252839178;
  v28 = v0[16];
  v29 = v0[7];

  return sub_25277ECE4(v29, 0, 0, v28);
}

uint64_t sub_252839178(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 192) = a1;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2528392A8, 0, 0);
}

void sub_2528392A8(uint64_t a1, uint64_t a2)
{
  v3 = v2[24];
  v4 = *(v3 + 64);
  v48 = v3 + 64;
  v49 = v2[14];
  v55 = v2[11];
  v54 = v2[10];
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v47 = (63 - v6) >> 6;
  v50 = v2[24];

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v7)
  {
    v53 = v9;
LABEL_11:
    v11 = v2[15];
    v13 = v2[8];
    v12 = v2[9];
    v51 = v8;
    v52 = v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    v15 = *(v50 + 48);
    v16 = sub_2528BECF0();
    (*(*(v16 - 8) + 16))(v11, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(v50 + 56);
    v18 = v17 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v14;
    v19 = *(v49 + 48);
    sub_25283B8C4(v18, v11 + v19, type metadata accessor for HomeEntity.SnapshotPair);
    v20 = sub_2528368D8(v12, v13, v11 + v19);
    v21 = sub_252836BF8(v11 + v19, v20);

    v56 = *(v21 + 16);
    if (v56)
    {
      v22 = 0;
      v23 = MEMORY[0x277D84F90];
      while (v22 < *(v21 + 16))
      {
        v24 = v2[6];
        v25 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v26 = *(v55 + 72);
        sub_25283B8C4(v21 + v25 + v26 * v22, v2[13], type metadata accessor for DeviceEntity);
        sub_2528BE6B0();
        v27 = v2[3];
        v2[4] = v2[2];
        v2[5] = v27;
        v28 = swift_task_alloc();
        *(v28 + 16) = v2 + 4;
        LOBYTE(v24) = sub_25281A4D4(sub_25283C6FC, v28, v24);

        if ((v24 & 1) != 0 || (v29 = v2[13], v30 = , v31 = sub_252743FCC(v30), , v32 = *(sub_252830C8C(*(v29 + *(v54 + 52)), v31, sub_252831B04, sub_252831B04) + 2), , v32))
        {
          sub_25283BBDC(v2[13], v2[12], type metadata accessor for DeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25282F26C(0, *(v23 + 16) + 1, 1);
          }

          v34 = *(v23 + 16);
          v33 = *(v23 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_25282F26C((v33 > 1), v34 + 1, 1);
          }

          v35 = v2[12];
          *(v23 + 16) = v34 + 1;
          sub_25283BBDC(v35, v23 + v25 + v34 * v26, type metadata accessor for DeviceEntity);
        }

        else
        {
          sub_25283B92C(v2[13], type metadata accessor for DeviceEntity);
        }

        if (v56 == ++v22)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_24:
    v36 = v2[15];

    sub_2527213D8(v36, &qword_27F4FCDC0, &unk_2528C5CD0);
    v37 = *(v23 + 16);
    v9 = v53;
    v38 = v53[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v39 > v53[3] >> 1)
    {
      if (v38 <= v39)
      {
        v41 = v38 + v37;
      }

      else
      {
        v41 = v38;
      }

      v9 = sub_252738010(isUniquelyReferenced_nonNull_native, v41, 1, v53);
    }

    v7 = (v52 - 1) & v52;
    if (*(v23 + 16))
    {
      if ((v9[3] >> 1) - v9[2] < v37)
      {
        goto LABEL_43;
      }

      swift_arrayInitWithCopy();

      v8 = v51;
      if (v37)
      {
        v42 = v9[2];
        v43 = __OFADD__(v42, v37);
        v44 = v42 + v37;
        if (v43)
        {
          goto LABEL_44;
        }

        v9[2] = v44;
      }
    }

    else
    {

      v8 = v51;
      if (v37)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v47)
    {
      v45 = v2[22];

      sub_2528352F8(v45, v9);

      v46 = v2[1];

      v46(v9);
      return;
    }

    v7 = *(v48 + 8 * v10);
    ++v8;
    if (v7)
    {
      v53 = v9;
      v8 = v10;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_25283980C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = sub_2528C0030();
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v7 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 80) = *a2;
  v8 = swift_task_alloc();
  *(v3 + 64) = v8;
  *v8 = v3;
  v8[1] = sub_25283992C;

  return sub_25286A4D0(a1, a3);
}

uint64_t sub_25283992C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_252839A2C, 0, 0);
}

uint64_t sub_252839A2C()
{
  v26 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = sub_252819AD0(*(v0 + 72), MEMORY[0x277CC95F0], MEMORY[0x277CC95D0]);

  *(v0 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEA98, qword_2528CEC40);
  sub_25272275C(&qword_27F4FF928, &qword_27F4FEA98, qword_2528CEC40, MEMORY[0x277D83958]);
  v6 = sub_2528C0920();
  v8 = v7;

  v22 = v6;
  v23 = v8;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x2530A80B0](47, 0xE100000000000000);
  (*(v3 + 104))(v2, *MEMORY[0x277D164E0], v4);
  sub_2528C0ED0();
  (*(v3 + 8))(v2, v4);
  MEMORY[0x2530A80B0](*(v0 + 16), *(v0 + 24));

  if (v1 != 2)
  {
    v9 = *(v0 + 80);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v10 = sub_2528C08B0();
    __swift_project_value_buffer(v10, qword_27F5025C8);
    v11 = sub_2528C0890();
    v12 = sub_2528C0D10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v15 = (v9 & 1) == 0;
      if (v9)
      {
        v16 = 0xD000000000000010;
      }

      else
      {
        v16 = 6449010;
      }

      if (v15)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0x80000002528E51C0;
      }

      v18 = sub_2527389AC(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_252711000, v11, v12, "Found secondaryAccessoryControlDestination: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x2530A8D80](v14, -1, -1);
      MEMORY[0x2530A8D80](v13, -1, -1);
    }

    else
    {

      v19 = (v9 & 1) == 0;
      if (v9)
      {
        v16 = 0xD000000000000010;
      }

      else
      {
        v16 = 6449010;
      }

      if (v19)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0x80000002528E51C0;
      }
    }

    v24 = 47;
    v25 = 0xE100000000000000;
    MEMORY[0x2530A80B0](v16, v17);

    MEMORY[0x2530A80B0](v24, v25);
  }

  v20 = *(v0 + 8);

  return v20(v22, v23);
}

uint64_t sub_252839E80(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  *(v3 + 40) = swift_task_alloc();
  v4 = sub_2528C00D0();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_2528BF400();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v3 + 112) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v3 + 120) = v6;
  v7 = *(v6 - 8);
  *(v3 + 128) = v7;
  *(v3 + 136) = *(v7 + 64);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v8 = v2[1];
  *(v3 + 168) = *v2;
  *(v3 + 184) = v8;
  *(v3 + 200) = v2[2];

  return MEMORY[0x2822009F8](sub_25283A0E8, 0, 0);
}

uint64_t sub_25283A0E8()
{
  v37 = v0;
  strcpy((v0 + 16), "comparators: ");
  v1 = *(v0 + 160);
  v2 = *(v0 + 32);
  *(v0 + 30) = -4864;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  v4 = MEMORY[0x2530A81A0](v2, v3);
  MEMORY[0x2530A80B0](v4);

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_252829A08(v1);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = sub_2528C08B0();
  __swift_project_value_buffer(v9, qword_27F5025C8);
  sub_25272006C(v7, v8, &qword_27F4FC488, &unk_2528C3F80);

  v10 = sub_2528C0890();
  v11 = sub_2528C0D10();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 152);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_2527389AC(v6, v5, &v36);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2527389AC(0x7972657571, 0xE500000000000000, &v36);
    *(v14 + 22) = 2080;
    v16 = sub_2528C0DB0();
    v18 = v17;
    sub_2527213D8(v13, &qword_27F4FC488, &unk_2528C3F80);
    v19 = sub_2527389AC(v16, v18, &v36);

    *(v14 + 24) = v19;
    _os_log_impl(&dword_252711000, v10, v11, "Query: Performing device query {%s} for %s with homeEntity: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v15, -1, -1);
    MEMORY[0x2530A8D80](v14, -1, -1);
  }

  else
  {

    sub_2527213D8(v13, &qword_27F4FC488, &unk_2528C3F80);
  }

  v20 = v6;
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v35 = *(v0 + 112);
  v25 = sub_2528C0820();
  __swift_project_value_buffer(v25, qword_27F5025E0);
  sub_25272006C(v21, v23, &qword_27F4FC488, &unk_2528C3F80);
  v26 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v28[2] = 0x7972657571;
  v28[3] = 0xE500000000000000;
  v28[4] = v20;
  v28[5] = v5;
  sub_25274AA0C(v23, v28 + v26, &qword_27F4FC488, &unk_2528C3F80);
  *(v28 + v27) = 0;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;

  *(v0 + 216) = sub_2528B73C8(0, 0, sub_25283C6C8, v28);

  sub_2527213D8(v21, &qword_27F4FC488, &unk_2528C3F80);
  v29 = type metadata accessor for HomeEntity(0);
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
  v30 = sub_2528C05D0();
  (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
  v31 = swift_task_alloc();
  *(v0 + 224) = v31;
  *v31 = v0;
  v31[1] = sub_25283A600;
  v32 = *(v0 + 144);
  v33 = *(v0 + 112);

  return sub_25277ECE4(v32, 0, 1, v33);
}

uint64_t sub_25283A600(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 112);
  *(*v1 + 232) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25283A75C, 0, 0);
}

void sub_25283A75C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v55 = *(v2 + 96);
  v49 = v3 + 64;
  v4 = *(v2 + 80);
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  v7 = *(v2 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = v5 & *(v3 + 64);
  v48 = (63 - v6) >> 6;
  v53 = (v7 + 48);
  v54 = (v4 + 16);
  v50 = (v7 + 8);
  v51 = (v7 + 32);
  v52 = (v4 + 8);
  v56 = *(v2 + 232);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v2 + 240) = v10;
    if (!v8)
    {
      break;
    }

    v58 = v10;
LABEL_11:
    v12 = *(v2 + 104);
    v13 = *(v2 + 88);
    v14 = *(v2 + 72);
    v15 = *(v2 + 40);
    v57 = *(v2 + 48);
    v16 = __clz(__rbit64(v8)) | (v9 << 6);
    v17 = *(v56 + 48);
    v18 = sub_2528BECF0();
    (*(*(v18 - 8) + 16))(v12, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v56 + 56);
    v20 = (type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
    v21 = v12 + *(v55 + 48);
    sub_25283B8C4(v19 + *(*v20 + 72) * v16, v21, type metadata accessor for HomeEntity.SnapshotPair);
    (*v54)(v13, v21, v14);
    v22 = v20[7];
    sub_25282D6B8(v13);
    v24 = v23;
    sub_25272006C(v21 + v22, v15, &qword_27F4FCDB8, &unk_2528C5CC0);
    if ((*v53)(v15, 1, v57) == 1)
    {
      sub_2527213D8(*(v2 + 40), &qword_27F4FCDB8, &unk_2528C5CC0);
      v25 = MEMORY[0x277D84F90];
    }

    else
    {
      v26 = *(v2 + 88);
      v27 = *(v2 + 64);
      v28 = *(v2 + 48);
      (*v51)(v27, *(v2 + 40), v28);
      v29 = sub_2528C0070();
      v30 = swift_task_alloc();
      *(v30 + 16) = 0;
      *(v30 + 24) = v26;
      sub_252853528(sub_25283C724, v30, v29);
      v32 = v31;

      (*v50)(v27, v28);
      v25 = v32;
    }

    v10 = v58;
    v33 = *(v2 + 104);
    v34 = *(v2 + 88);
    v35 = *(v2 + 72);
    sub_252735F6C(v25);
    (*v52)(v34, v35);
    sub_2527213D8(v33, &qword_27F4FCDC0, &unk_2528C5CD0);
    v36 = *(v24 + 16);
    v37 = v58[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v38 > v58[3] >> 1)
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v10 = sub_252738010(isUniquelyReferenced_nonNull_native, v40, 1, v58);
    }

    v8 &= v8 - 1;
    if (*(v24 + 16))
    {
      v41 = (v10[3] >> 1) - v10[2];
      type metadata accessor for DeviceEntity(0);
      if (v41 < v36)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v36)
      {
        v42 = v10[2];
        v43 = __OFADD__(v42, v36);
        v44 = v42 + v36;
        if (v43)
        {
          goto LABEL_33;
        }

        v10[2] = v44;
      }
    }

    else
    {

      if (v36)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v11 >= v48)
    {
      break;
    }

    v8 = *(v49 + 8 * v11);
    ++v9;
    if (v8)
    {
      v58 = v10;
      v9 = v11;
      goto LABEL_11;
    }
  }

  v45 = *(v2 + 272);

  v46 = swift_task_alloc();
  *(v2 + 248) = v46;
  *v46 = v2;
  v46[1] = sub_25283AC40;
  v47 = *(v2 + 32);

  sub_2528AE974(v47, v45 & 1, v10);
}

uint64_t sub_25283AC40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_25283AE7C;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_25283AD8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25283AD8C()
{
  sub_2528352F8(v0[27], v0[33]);

  v1 = v0[1];
  v2 = v0[33];

  return v1(v2);
}

uint64_t sub_25283AE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25283B028()
{
  result = qword_27F4FF590;
  if (!qword_27F4FF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF590);
  }

  return result;
}

unint64_t sub_25283B1FC()
{
  result = qword_27F4FF5D0;
  if (!qword_27F4FF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5D0);
  }

  return result;
}

unint64_t sub_25283B254()
{
  result = qword_27F4FF5D8;
  if (!qword_27F4FF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5D8);
  }

  return result;
}

unint64_t sub_25283B2F4()
{
  result = qword_27F4FF5E0;
  if (!qword_27F4FF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5E0);
  }

  return result;
}

unint64_t sub_25283B34C()
{
  result = qword_27F4FF5E8;
  if (!qword_27F4FF5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD08, &unk_2528C5B90);
    sub_25283C680(&qword_27F4FCD28, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF5E8);
  }

  return result;
}

void sub_25283B428(uint64_t a1)
{
  sub_25283B55C(319, &qword_28151F358, sub_25274690C, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25283B55C(319, &qword_27F4FF600, sub_2527FE2E0, &type metadata for DeviceType);
    if (v2 <= 0x3F)
    {
      sub_25283B5BC(319);
      if (v3 <= 0x3F)
      {
        sub_25283B660(319);
        if (v4 <= 0x3F)
        {
          sub_25283B76C();
          if (v5 <= 0x3F)
          {
            sub_2528BECF0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25283B55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_2528BE770();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25283B5BC(uint64_t a1)
{
  if (!qword_27F4FF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF610, &unk_2528D3BA0);
    sub_25283B704(&qword_27F4FF618, &qword_27F4FF610, &unk_2528D3BA0, MEMORY[0x277CBA560]);
    v1 = sub_2528BE770();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FF608);
    }
  }
}

void sub_25283B660(uint64_t a1)
{
  if (!qword_27F4FF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD5E8, &qword_2528C8700);
    sub_25283B704(&qword_27F4FF628, &qword_27F4FD5E8, &qword_2528C8700, MEMORY[0x277CBA590]);
    v1 = sub_2528BE770();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FF620);
    }
  }
}

uint64_t sub_25283B704(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_25274690C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25283B76C()
{
  if (!qword_27F4FF630)
  {
    v0 = sub_2528C0CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FF630);
    }
  }
}

uint64_t sub_25283B7F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25282D2EC(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_25283B8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25283B92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_2528BECF0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25283BB30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_25282D0F8(v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_25283BBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25283BC70()
{
  result = qword_27F4FF750;
  if (!qword_27F4FF750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF748, &qword_2528D3FC0);
    sub_25283BCFC();
    sub_25283BE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF750);
  }

  return result;
}

unint64_t sub_25283BCFC()
{
  result = qword_27F4FF758;
  if (!qword_27F4FF758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FF720, &qword_2528D3F70);
    sub_25283BDA0(&qword_27F4FF760, &qword_27F4FF718, &qword_2528D3F68);
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF758);
  }

  return result;
}

uint64_t sub_25283BDA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_25272275C(&qword_27F4FF768, &qword_27F4FF710, &qword_2528D3F60, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}