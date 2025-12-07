id sub_23DEBBBE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = OUTLINED_FUNCTION_25(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_44_2(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C660, &qword_23E2246A0);
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59();
  v15 = (v13 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v178 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v178 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_68_0();
  v221 = v25;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_94_0();
  v223 = v29;
  v204 = sub_23E1FC08C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v31);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF60, &qword_23E2272A8);
  OUTLINED_FUNCTION_6_0();
  v217 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44_2(&v178 - v34);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF68, &qword_23E2272B0);
  OUTLINED_FUNCTION_6_0();
  v213 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_44_2(&v178 - v37);
  v216 = sub_23E1FC5FC();
  OUTLINED_FUNCTION_6_0();
  v203 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v40);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  OUTLINED_FUNCTION_6_0();
  v201 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_44_2(v44);
  v212 = sub_23E1FC5CC();
  OUTLINED_FUNCTION_6_0();
  v222 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9_3();
  v227 = v47;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CF78, &qword_23E2272B8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_68_0();
  v224 = v50;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_94_0();
  v226 = v52;
  v202 = sub_23E1FC61C();
  OUTLINED_FUNCTION_6_0();
  v200 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v57 = OUTLINED_FUNCTION_25(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_59();
  v219 = v58 - v59;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_68_0();
  v218 = v61;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v62);
  v64 = &v178 - v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF88, &qword_23E2272C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v220 = a1;
  sub_23DEBEC34(a1, v64, &qword_27E32C690, &unk_23E224330);
  v66 = sub_23E1FC5AC();
  v67 = 1;
  OUTLINED_FUNCTION_18_8();
  if (v68)
  {
    sub_23DE481FC(v64, &qword_27E32C690, &unk_23E224330);
    *(inited + 32) = 0;
    *(inited + 40) = 1;

    v69 = MEMORY[0x277D84F90];
  }

  else
  {
    v70 = sub_23E1FC59C();
    OUTLINED_FUNCTION_1_5();
    (*(v71 + 8))(v64, v66);
    *(inited + 32) = v70;
    *(inited + 40) = 0;

    sub_23DE4CE68(0, 1, 1, MEMORY[0x277D84F90]);
    v69 = v72;
    v67 = *(v72 + 16);
    v73 = *(v72 + 24);
    if (v67 >= v73 >> 1)
    {
      sub_23DE4CE68(v73 > 1, v67 + 1, 1, v72);
      v69 = v177;
    }

    *(v69 + 16) = v67 + 1;
    *(v69 + 8 * v67 + 32) = v70;
  }

  v74 = *(v69 + 16);
  v215 = v15;
  v214 = v19;
  v228 = v2;
  v210 = v22;
  v194 = MEMORY[0x277D84F90];
  if (v74)
  {
    v230 = MEMORY[0x277D84F90];
    sub_23E1FE63C();
    v19 = 32;
    v67 = &off_278C24000;
    do
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_23E1FE61C();
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
      v19 += 8;
      --v74;
    }

    while (v74);

    v75 = v230;
    OUTLINED_FUNCTION_24_3();
    v2 = v228;
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v76 = sub_23DE4D8B0();
  v77 = v221;
  v78 = v223;
  if (!v76)
  {

    v189 = 0;
    v80 = v220;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_23_3();
  sub_23DE59014();
  if (v67)
  {
    goto LABEL_70;
  }

  for (i = v75[4]; ; i = MEMORY[0x23EF04DD0](0, v75))
  {
    v189 = i;
    v80 = v220;

LABEL_17:
    v81 = v218;
    sub_23DEBEC34(v80, v218, &qword_27E32C690, &unk_23E224330);
    OUTLINED_FUNCTION_18_8();
    if (v68)
    {
      sub_23DE481FC(v81, &qword_27E32C690, &unk_23E224330);
      v188 = 0;
      v187 = 0;
    }

    else
    {
      v82 = v199;
      sub_23E1FC58C();
      OUTLINED_FUNCTION_1_5();
      (*(v83 + 8))(v81, v66);
      v188 = sub_23E1FC60C();
      v187 = v84;
      (*(v200 + 8))(v82, v202);
    }

    v75 = v219;
    sub_23DEBEC34(v80, v219, &qword_27E32C690, &unk_23E224330);
    OUTLINED_FUNCTION_18_8();
    if (v68)
    {
      break;
    }

    v179 = v8;
    v85 = sub_23E1FC57C();
    OUTLINED_FUNCTION_1_5();
    (*(v86 + 8))(v75, v66);
    v230 = MEMORY[0x277D84F90];
    v87 = (v85 + 64);
    v88 = 1 << *(v85 + 32);
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v77 = v89 & *(v85 + 64);
    v8 = ((v88 + 63) >> 6);
    v202 = v222 + 16;
    v200 = v222 + 32;
    v199 = v203 + 88;
    v198 = *MEMORY[0x277CE3778];
    v186 = *MEMORY[0x277CE3770];
    v197 = (v222 + 8);
    v182 = v203 + 8;
    v193 = v203 + 96;
    v181 = v213 + 32;
    v180 = v213 + 8;
    v185 = v217 + 32;
    v184 = v217 + 8;
    v192 = v201 + 2;
    v191 = v201 + 1;
    v213 = v85;
    sub_23E1FB7BC();
    v19 = 0;
    OUTLINED_FUNCTION_21_5();
    v66 = v212;
    v203 = v85 + 64;
    v201 = v8;
    while (v77)
    {
      v15 = v75;
LABEL_33:
      v91 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v92 = v91 | (v19 << 6);
      v93 = (*(v213 + 48) + 16 * v92);
      v95 = *v93;
      v94 = v93[1];
      v87 = v222;
      v96 = v225;
      v97 = v226;
      (*(v222 + 16))(&v226[*(v225 + 48)], *(v213 + 56) + *(v222 + 72) * v92, v66);
      *v97 = v95;
      v97[1] = v94;
      v98 = v97;
      v8 = v224;
      sub_23DEBEC34(v98, v224, &unk_27E32CF78, &qword_23E2272B8);
      sub_23E1FB7BC();

      (v87)[4](v227, v8 + *(v96 + 48), v66);
      sub_23E1FC5BC();
      v99 = OUTLINED_FUNCTION_4_10();
      v75 = v15;
      v101 = v100(v99, v15);
      if (v101 == v198 || v101 == v186)
      {
        v102 = OUTLINED_FUNCTION_4_10();
        v103(v102, v15);
        OUTLINED_FUNCTION_5_6();
        v104 = OUTLINED_FUNCTION_35_0();
        v105(v104);
        sub_23E1FBDCC();
        sub_23E1FBDAC();
        v106 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
        OUTLINED_FUNCTION_17_7(v106);
        OUTLINED_FUNCTION_5_6();
        v107 = OUTLINED_FUNCTION_35_0();
        v108(v107);
        v87 = v226;
        v109 = v224;
        sub_23DEBEC34(v226, v224, &unk_27E32CF78, &qword_23E2272B8);
        v110 = v109[1];
        v218 = *v109;
        v217 = v110;
        v111 = v225;
        v220 = *(v225 + 48);
        v8 = v195;
        sub_23DEBEC34(v87, v195, &unk_27E32CF78, &qword_23E2272B8);
        v112 = *v8;
        v113 = v8[1];
        v219 = *(v111 + 48);
        OUTLINED_FUNCTION_5_6();
        v114 = v196;
        v115 = v96;
        v116 = v229;
        v117(v196, v115, v229);
        v118 = objc_allocWithZone(WFWeatherAirQualityPollutant);
        v15 = sub_23DEBE878(v218, v217, v112, v113, v114);
        v119 = OUTLINED_FUNCTION_4_10();
        v120(v119, v116);
        v75 = *v197;
        v66 = v212;
        (*v197)(v227, v212);
        sub_23DE481FC(v87, &unk_27E32CF78, &qword_23E2272B8);
        (v75)(v8 + v219, v66);
        (v75)(v109 + v220, v66);
        v2 = v228;
        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_25_2();
        if (v15)
        {
          MEMORY[0x23EF045A0]();
          if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23E1FDE0C();
          }

          sub_23E1FDE3C();
          v194 = v230;
          v75 = v216;
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_6();
        v121(v227, v66);
        sub_23DE481FC(v226, &unk_27E32CF78, &qword_23E2272B8);
        v122 = OUTLINED_FUNCTION_4_10();
        v123(v122, v15);
        v2 = v228;
        OUTLINED_FUNCTION_25_2();
      }
    }

    v78 = v223;
    while (1)
    {
      v90 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v90 >= v8)
      {

        v8 = v179;
        OUTLINED_FUNCTION_24_3();
        v77 = v221;
        goto LABEL_41;
      }

      v77 = v87[v90];
      ++v19;
      if (v77)
      {
        v15 = v75;
        v19 = v90;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_70:
    ;
  }

  sub_23DE481FC(v75, &qword_27E32C690, &unk_23E224330);
  v194 = 0;
LABEL_41:
  v124 = [v2 date];
  sub_23E1FC05C();

  v226 = [v2 location];
  v125 = [v2 temperature];
  v126 = v207;
  if (v125)
  {
    v127 = v125;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v128 = 0;
  }

  else
  {
    v128 = 1;
  }

  v129 = v209;
  v130 = 1;
  OUTLINED_FUNCTION_15_8(v78, v128);
  v131 = [v2 highTemperature];
  if (v131)
  {
    v132 = v131;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    v133 = v206;
    sub_23E1FBD9C();

    v130 = 0;
  }

  else
  {
    v133 = v206;
  }

  v134 = 1;
  OUTLINED_FUNCTION_15_8(v133, v130);
  v135 = [v2 lowTemperature];
  if (v135)
  {
    v136 = v135;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v134 = 0;
  }

  v137 = 1;
  OUTLINED_FUNCTION_15_8(v126, v134);
  v138 = [v2 feelsLikeTemperature];
  if (v138)
  {
    v139 = v138;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v137 = 0;
  }

  v140 = 1;
  OUTLINED_FUNCTION_15_8(v77, v137);
  v227 = sub_23DEBE960(v2);
  v142 = v141;
  v143 = [v2 visibility];
  if (v143)
  {
    v144 = v143;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    v145 = v208;
    sub_23E1FBD9C();

    v140 = 0;
  }

  else
  {
    v145 = v208;
  }

  v146 = 1;
  OUTLINED_FUNCTION_15_8(v145, v140);
  v147 = [v2 dewpoint];
  if (v147)
  {
    v148 = v147;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v146 = 0;
  }

  v149 = v206;
  v150 = 1;
  OUTLINED_FUNCTION_15_8(v129, v146);
  v151 = [v2 humidity];
  v152 = [v2 pressure];
  if (v152)
  {
    v153 = v152;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    v154 = v210;
    sub_23E1FBD9C();

    v150 = 0;
  }

  else
  {
    v154 = v210;
  }

  v155 = 1;
  OUTLINED_FUNCTION_15_8(v154, v150);
  v156 = [v2 precipitationAmount];
  if (v156)
  {
    v157 = v156;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v155 = 0;
  }

  v158 = v209;
  v159 = 1;
  OUTLINED_FUNCTION_15_8(v19, v155);
  v160 = v228;
  v161 = [v228 precipitationChance];
  v162 = [v160 windSpeed];
  if (v162)
  {
    v163 = v162;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v159 = 0;
  }

  v164 = 1;
  OUTLINED_FUNCTION_15_8(v15, v159);
  v165 = v228;
  v166 = [v228 windDirection];
  v167 = [v165 uvIndex];
  v168 = [v165 sunriseTime];
  if (v168)
  {
    v169 = v168;
    v170 = v211;
    sub_23E1FC05C();

    v171 = v170;
    v164 = 0;
  }

  else
  {
    v171 = v211;
  }

  v172 = 1;
  __swift_storeEnumTagSinglePayload(v171, v164, 1, v204);
  v173 = [v228 sunsetTime];
  if (v173)
  {
    v174 = v173;
    sub_23E1FC05C();

    v172 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v172, 1, v204);
  v175 = objc_allocWithZone(WFWeatherData);
  return sub_23DE6B050(v205, v226, 0, 0, v223, v149, v207, v221, v227, v142, v208, v158, v151, v210, v214, v161, v215, v166, v167, v211, v8, v189, v188, v187, v194);
}

void sub_23DEBD16C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23DEBB4E4(v1);
}

uint64_t sub_23DEBD19C()
{
  OUTLINED_FUNCTION_23();
  v1[12] = v2;
  v1[13] = v0;
  sub_23E1FDECC();
  v1[14] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x2822009F8](sub_23DEBD230, v4, v3);
}

uint64_t sub_23DEBD230()
{
  sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
  v1 = sub_23E1FE3FC();
  v2 = v1;
  v0[17] = v1;
  if (v1)
  {
    v3 = [v1 items];
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    v4 = sub_23E1FDDEC();

    if (sub_23DE4D8B0())
    {
      OUTLINED_FUNCTION_23_3();
      sub_23DE59014();
      if (v2)
      {
        v5 = MEMORY[0x23EF04DD0](0, v4);
      }

      else
      {
        v5 = *(v4 + 32);
      }

      v0[18] = v5;

      v6 = swift_task_alloc();
      v0[19] = v6;
      *v6 = v0;
      v6[1] = sub_23DEBD57C;

      return sub_23DEBB734();
    }
  }

  v8 = sub_23E1FDC1C();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v12;
  sub_23E1FDCBC("The weather action needs a location to get weather for, but none was provided.", 78);
  if (qword_280DAE1D8 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
  }

  v13 = qword_280DAE278;
  v14 = sub_23E1FDBDC();
  v15 = sub_23E1FDBDC();

  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  v17 = sub_23E1FDC1C();
  v19 = v18;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  v20 = sub_23E1FDABC();
  v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_23DE56A08(v8, v10, 5, v20);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v22();
}

uint64_t sub_23DEBD57C()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  v9 = *(v2 + 128);
  v10 = *(v2 + 120);
  if (v0)
  {
    v11 = sub_23DEBDA80;
  }

  else
  {
    v11 = sub_23DEBD6B4;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_23DEBD6B4()
{
  v1 = [*(v0 + 160) placemark];
  v2 = [v1 location];
  *(v0 + 176) = v2;

  if (v2)
  {
    v3 = *(v0 + 104);
    v4 = [*(v0 + 144) attributionSet];
    v5 = [v4 derivedDisclosureLevel];

    v6 = *((*MEMORY[0x277D85000] & *v3) + 0x70);
    v14 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_23DEBD8C8;
    v8 = *(v0 + 96);

    return v14(v8, v2, v5);
  }

  else
  {
    v10 = *(v0 + 160);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);

    sub_23DEBB59C();
    swift_willThrow();

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_23DEBD8C8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_23DEBDAE8;
  }

  else
  {
    v7 = sub_23DEBD9FC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DEBD9FC()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DEBDA80()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEBDAE8()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DEBDBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEBDC8C, v5, v4);
}

uint64_t sub_23DEBDC8C()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DEBDD4C;

  return sub_23DEBD19C();
}

uint64_t sub_23DEBDD4C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  if (v2)
  {
    v10 = sub_23E1FBEBC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_23DEBDEE4()
{
  OUTLINED_FUNCTION_23();
  sub_23E1FDECC();
  sub_23E1FDEBC();
  v1 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEBDF70, v1, v0);
}

void sub_23DEBDFEC(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [a3 localizedName];
  if (!v10)
  {
    sub_23E1FDC1C();
    v10 = sub_23E1FDBDC();
  }

  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_23DEBEC9C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEBE4C4;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  WFGetMapItemFromContentCollection(a2, v10, v13);
  _Block_release(v13);
}

uint64_t sub_23DEBE1EC(void *a1, void *a2)
{
  v4 = sub_23E1FC26C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CFA0, &unk_23E2272D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  if (a1)
  {
    v11 = a1;
    v12 = [v11 placemark];
    v13 = [v12 location];

    if (v13)
    {

      v14 = [v11 timeZone];
      if (v14)
      {
        v15 = v14;
        sub_23E1FC25C();

        (*(v5 + 32))(v10, v7, v4);
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
        sub_23DE481FC(v10, &unk_27E32CFA0, &unk_23E2272D0);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v4);
        sub_23DE481FC(v10, &unk_27E32CFA0, &unk_23E2272D0);
        v19 = [objc_opt_self() localTimeZone];
        sub_23E1FC25C();

        v20 = sub_23E1FC24C();
        (*(v5 + 8))(v7, v4);
        [v11 setTimeZone_];
      }

      v22 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
      return sub_23E1FDE8C();
    }
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = sub_23DEBB59C();
  }

  v22 = v16;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  return sub_23E1FDE7C();
}

void sub_23DEBE4C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_23E1FB7CC();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id WeatherAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WeatherAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting] = 0;
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for WeatherAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id WeatherAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherAction.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

id WeatherAction.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23DEBE878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = sub_23E1FDBDC();

  v9 = sub_23E1FDBDC();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  v11 = sub_23E1FBD8C();
  v12 = [v6 initWithLocalizedName:v8 localizedDescription:v9 concentration:v11];

  (*(*(v10 - 8) + 8))(a5, v10);
  return v12;
}

uint64_t sub_23DEBE960(void *a1)
{
  v1 = [a1 localizedConditionString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DEBEA9C()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DEBEB4C;

  return sub_23DEBDBF0(v2, v3, v4);
}

uint64_t sub_23DEBEB4C()
{
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEBEC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23DEBEC9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  OUTLINED_FUNCTION_25(v0);
  v1 = OUTLINED_FUNCTION_35_0();

  return sub_23DEBE1EC(v1, v2);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 168);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1)
{

  return sub_23E1FBDBC();
}

uint64_t sub_23DEBEE14()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for PodcastItem(0);
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_88_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_87_1(v4);

  return SuggestedPodcastsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEBEEE0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v3);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBEFD8()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEBF0F0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBF1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v16 = v14[38];
  if (v12)
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_56_3();
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_83_2(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_31_3([v13 standardClient]);
      v21 = OUTLINED_FUNCTION_51_1(v20);
      v22 = OUTLINED_FUNCTION_77_1(v21);
      OUTLINED_FUNCTION_27_4(v22);
      v14[10] = v14;
      v14[11] = sub_23DEBF334;
      OUTLINED_FUNCTION_67_1();
      v14[33] = v15;
      OUTLINED_FUNCTION_0_16();
      v14[27] = 1107296256;
      v24 = OUTLINED_FUNCTION_4_11(v23, block_descriptor_110);
      OUTLINED_FUNCTION_21_6(v24, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v16);
  }

  else
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }
}

uint64_t sub_23DEBF334()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEBF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_49_3();
  sub_23DEC5818(v19, v20);

  OUTLINED_FUNCTION_10_7();
  if (v21)
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_73_2();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      OUTLINED_FUNCTION_8_4(v33, v34);
      OUTLINED_FUNCTION_48_3();
      sub_23DEC57BC(v35, v17, v36);
      v37 = OUTLINED_FUNCTION_31_3([v14 standardClient]);
      v38 = OUTLINED_FUNCTION_51_1(v37);
      v39 = OUTLINED_FUNCTION_77_1(v38);
      OUTLINED_FUNCTION_27_4(v39);
      v15[10] = v15;
      v15[11] = sub_23DEBF334;
      OUTLINED_FUNCTION_67_1();
      v15[33] = v18;
      OUTLINED_FUNCTION_0_16();
      v15[27] = 1107296256;
      v41 = OUTLINED_FUNCTION_4_11(v40, block_descriptor_110);
      OUTLINED_FUNCTION_21_6(v41, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    return MEMORY[0x282200938](v32);
  }
}

uint64_t sub_23DEBF590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3(v15);

  OUTLINED_FUNCTION_49_3();
  sub_23DEC5818(v10, v16);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_23DEBF614()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for ShortcutsContact(0);
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_88_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_87_1(v4);

  return FavoritesOptionsProvider.fetchResults()();
}

uint64_t sub_23DEBF6E0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v3);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBF7D8()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEBF8F0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBF9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v17 = v16[38];
  if (v14)
  {
    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_6_8();
      OUTLINED_FUNCTION_83_2(v18, v19, v20);
      OUTLINED_FUNCTION_22_4([v15 standardClient]);
      v21 = sub_23E1FBFCC();
      v22 = OUTLINED_FUNCTION_51_1(v21);
      OUTLINED_FUNCTION_55_3(v22);
      v23 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v23);
      OUTLINED_FUNCTION_54_2();
      v16[10] = v16;
      v16[11] = sub_23DEBFB58;
      OUTLINED_FUNCTION_67_1();
      v16[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v16[27] = 1107296256;
      v25 = OUTLINED_FUNCTION_1_15(v24, block_descriptor_102);
      OUTLINED_FUNCTION_40_3(v25, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v17);
  }

  else
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEBFB58()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEBFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_13_4();
  sub_23DEC5818(v19, v20);

  OUTLINED_FUNCTION_10_7();
  if (v21)
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_73_2();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_8_4(v33, v34);
      OUTLINED_FUNCTION_6_8();
      sub_23DEC57BC(v35, v18, v36);
      OUTLINED_FUNCTION_22_4([v16 standardClient]);
      v37 = sub_23E1FBFCC();
      v38 = OUTLINED_FUNCTION_78_2(v37);
      OUTLINED_FUNCTION_55_3(v38);
      v39 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v39);
      OUTLINED_FUNCTION_54_2();
      v17[10] = v17;
      v17[11] = sub_23DEBFB58;
      OUTLINED_FUNCTION_67_1();
      v17[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v17[27] = 1107296256;
      v41 = OUTLINED_FUNCTION_1_15(v40, block_descriptor_102);
      OUTLINED_FUNCTION_41_3(v41, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    return MEMORY[0x282200938](v32);
  }
}

uint64_t sub_23DEBFDD8()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for ShortcutsContact(0);
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_88_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_87_1(v4);

  return RecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEBFEA4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v3);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBFF9C()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEC009C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v17 = v16[38];
  if (v14)
  {
    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_6_8();
      OUTLINED_FUNCTION_83_2(v18, v19, v20);
      OUTLINED_FUNCTION_22_4([v15 standardClient]);
      v21 = sub_23E1FBFCC();
      v16[49] = OUTLINED_FUNCTION_51_1(v21);
      v22 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_25_3(v22);
      OUTLINED_FUNCTION_54_2();
      v16[10] = v16;
      v16[11] = sub_23DEC02F4;
      OUTLINED_FUNCTION_67_1();
      v16[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v16[27] = 1107296256;
      v24 = OUTLINED_FUNCTION_1_15(v23, block_descriptor_94);
      OUTLINED_FUNCTION_40_3(v24, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v17);
  }

  else
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEC02F4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEC03F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_13_4();
  sub_23DEC5818(v19, v20);

  OUTLINED_FUNCTION_10_7();
  if (v21)
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_73_2();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_8_4(v33, v34);
      OUTLINED_FUNCTION_6_8();
      sub_23DEC57BC(v35, v18, v36);
      OUTLINED_FUNCTION_22_4([v16 standardClient]);
      v37 = sub_23E1FBFCC();
      v17[49] = OUTLINED_FUNCTION_78_2(v37);
      v38 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_25_3(v38);
      OUTLINED_FUNCTION_54_2();
      v17[10] = v17;
      v17[11] = sub_23DEC02F4;
      OUTLINED_FUNCTION_67_1();
      v17[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v17[27] = 1107296256;
      v40 = OUTLINED_FUNCTION_1_15(v39, block_descriptor_94);
      OUTLINED_FUNCTION_41_3(v40, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    return MEMORY[0x282200938](v32);
  }
}

uint64_t sub_23DEC0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3(v15);

  OUTLINED_FUNCTION_13_4();
  sub_23DEC5818(v10, v16);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_23DEC05E8()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for MusicItem(0);
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_88_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_87_1(v4);

  return SuggestedMusicOptionsProvider.fetchResults()();
}

uint64_t sub_23DEC06B4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v3);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC07AC()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEC08AC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC09A8()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DEC0A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v16 = v14[38];
  if (v12)
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_56_3();
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_83_2(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_31_3([v13 standardClient]);
      v14[49] = OUTLINED_FUNCTION_51_1(v20);
      v21 = OUTLINED_FUNCTION_23_4();
      OUTLINED_FUNCTION_27_4(v21);
      v14[10] = v14;
      v14[11] = sub_23DEC0BD4;
      OUTLINED_FUNCTION_67_1();
      v14[33] = v15;
      OUTLINED_FUNCTION_0_16();
      v14[27] = 1107296256;
      v23 = OUTLINED_FUNCTION_4_11(v22, block_descriptor_86);
      OUTLINED_FUNCTION_21_6(v23, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v16);
  }

  else
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }
}

uint64_t sub_23DEC0B48()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEC0BD4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEC0CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_46_2();
  sub_23DEC5818(v19, v20);

  OUTLINED_FUNCTION_10_7();
  if (v21)
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_73_2();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      OUTLINED_FUNCTION_8_4(v33, v34);
      OUTLINED_FUNCTION_45_2();
      sub_23DEC57BC(v35, v17, v36);
      v37 = OUTLINED_FUNCTION_31_3([v14 standardClient]);
      v15[49] = OUTLINED_FUNCTION_51_1(v37);
      v38 = OUTLINED_FUNCTION_23_4();
      OUTLINED_FUNCTION_27_4(v38);
      v15[10] = v15;
      v15[11] = sub_23DEC0BD4;
      OUTLINED_FUNCTION_67_1();
      v15[33] = v18;
      OUTLINED_FUNCTION_0_16();
      v15[27] = 1107296256;
      v40 = OUTLINED_FUNCTION_4_11(v39, block_descriptor_86);
      OUTLINED_FUNCTION_21_6(v40, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    return MEMORY[0x282200938](v32);
  }
}

uint64_t sub_23DEC0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3(v15);

  OUTLINED_FUNCTION_46_2();
  sub_23DEC5818(v10, v16);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_23DEC0EB0()
{
  v1 = type metadata accessor for ShortcutsFaceTimeContact(0);
  v0[34] = v1;
  v0[35] = *(v1 - 8);
  v0[36] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_23DEC0F98;

  return FaceTimeRecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEC0F98()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v3);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC1090()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEC11A8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC12A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v17 = v16[38];
  if (v14)
  {
    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_38_4();
      OUTLINED_FUNCTION_11_5();
      OUTLINED_FUNCTION_83_2(v18, v19, v20);
      OUTLINED_FUNCTION_22_4([v15 standardClient]);
      v21 = sub_23E1FBFCC();
      v22 = OUTLINED_FUNCTION_51_1(v21);
      OUTLINED_FUNCTION_55_3(v22);
      v23 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v23);
      OUTLINED_FUNCTION_54_2();
      v16[10] = v16;
      v16[11] = sub_23DEC1410;
      OUTLINED_FUNCTION_67_1();
      v16[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v16[27] = 1107296256;
      v25 = OUTLINED_FUNCTION_1_15(v24, block_descriptor_60);
      OUTLINED_FUNCTION_40_3(v25, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v17);
  }

  else
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEC1410()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEC1510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_44_3();
  sub_23DEC5818(v19, v20);

  OUTLINED_FUNCTION_10_7();
  if (v21)
  {

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_73_2();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_8_4(v33, v34);
      OUTLINED_FUNCTION_11_5();
      sub_23DEC57BC(v35, v18, v36);
      OUTLINED_FUNCTION_22_4([v16 standardClient]);
      v37 = sub_23E1FBFCC();
      v38 = OUTLINED_FUNCTION_78_2(v37);
      OUTLINED_FUNCTION_55_3(v38);
      v39 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v39);
      OUTLINED_FUNCTION_54_2();
      v17[10] = v17;
      v17[11] = sub_23DEC1410;
      OUTLINED_FUNCTION_67_1();
      v17[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v17[27] = 1107296256;
      v41 = OUTLINED_FUNCTION_1_15(v40, block_descriptor_60);
      OUTLINED_FUNCTION_41_3(v41, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    return MEMORY[0x282200938](v32);
  }
}

uint64_t sub_23DEC1690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3(v15);

  OUTLINED_FUNCTION_44_3();
  sub_23DEC5818(v10, v16);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_23DEC173C()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32CFB0);
  __swift_project_value_buffer(v0, qword_27E32CFB0);
  return sub_23E1FB8DC();
}

uint64_t static ShortcutsFaceTimeContact.typeDisplayRepresentation.modify()
{
  if (qword_27E32B928 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  v1 = __swift_project_value_buffer(v0, qword_27E32CFB0);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEC1894@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DEC3AF0(&qword_27E32B928, MEMORY[0x277CBA3A0], qword_27E32CFB0, sub_23DEC173C);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEC1944(uint64_t a1)
{
  v2 = sub_23DEC3AF0(&qword_27E32B928, MEMORY[0x277CBA3A0], qword_27E32CFB0, sub_23DEC173C);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t type metadata accessor for ShortcutsFaceTimeContact(uint64_t a1)
{
  result = qword_280DAF480;
  if (!qword_280DAF480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutsFaceTimeContact.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBAC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v11 = type metadata accessor for ShortcutsFaceTimeContact(0);
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  sub_23DE491B4(v0 + *(v11 + 20), v4);
  return sub_23E1FB76C();
}

uint64_t ShortcutsFaceTimeContact.encodedParameters.getter()
{
  type metadata accessor for ShortcutsFaceTimeContact(0);
  v0 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v0, v1);
  return OUTLINED_FUNCTION_49();
}

void sub_23DEC1C94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v58[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D0, &unk_23E225500);
  v6 = OUTLINED_FUNCTION_25(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = sub_23E1FB70C();
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v14);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = a1;
  v19 = [v18 uniqueIdentifier];
  v20 = sub_23E1FDC1C();
  v22 = v21;

  *a3 = v20;
  a3[1] = v22;
  v54 = v22;
  v23 = [v18 person];
  v24 = [v23 image];

  if (v24)
  {
    v25 = v24;
    sub_23E1FB6FC();
    sub_23E1FB6EC();

    v26 = sub_23E1FB75C();
    v27 = 0;
  }

  else
  {
    v26 = sub_23E1FB75C();
    v27 = 1;
  }

  v28 = 1;
  __swift_storeEnumTagSinglePayload(v17, v27, 1, v26);
  v29 = type metadata accessor for ShortcutsFaceTimeContact(0);
  v53 = v29[5];
  sub_23DE900C0(v17, a3 + v53, &qword_27E32C208, &unk_23E2239B0);
  v30 = [v18 person];
  v31 = [v30 nameComponents];

  if (v31)
  {
    sub_23E1FBE9C();

    v28 = 0;
  }

  v32 = sub_23E1FBEAC();
  __swift_storeEnumTagSinglePayload(v9, v28, 1, v32);
  sub_23DE900C0(v9, v11, &qword_27E32C8D0, &unk_23E225500);
  if (__swift_getEnumTagSinglePayload(v11, 1, v32))
  {
    sub_23DE481FC(v11, &qword_27E32C8D0, &unk_23E225500);
LABEL_8:
    v33 = [v18 person];
    v34 = [v33 displayName];

    v35 = sub_23E1FDC1C();
    v37 = v36;

    goto LABEL_9;
  }

  v35 = sub_23E1FBE8C();
  v37 = v49;
  sub_23DE481FC(v11, &qword_27E32C8D0, &unk_23E225500);
  if (!v37)
  {
    goto LABEL_8;
  }

  v50 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v50 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    goto LABEL_8;
  }

LABEL_9:
  v38 = (a3 + v29[6]);
  *v38 = v35;
  v38[1] = v37;
  *(a3 + v29[7]) = v55;
  v58[0] = sub_23E1FDABC();
  v39 = sub_23DEC5988(v18);
  if (v39)
  {
    v40 = v56;
    sub_23DE8D35C(v39, v58);
    v56 = v40;
  }

  v41 = objc_opt_self();
  v42 = sub_23E1FDA9C();
  v57 = 0;
  v43 = [v41 archivedDataWithRootObject:v42 requiringSecureCoding:1 error:&v57];

  v44 = v57;
  if (v43)
  {
    v45 = sub_23E1FBFDC();
    v47 = v46;

    v48 = (a3 + v29[8]);
    *v48 = v45;
    v48[1] = v47;
  }

  else
  {
    v51 = v44;
    sub_23E1FBECC();

    swift_willThrow();

    sub_23DE481FC(a3 + v53, &qword_27E32C208, &unk_23E2239B0);
  }
}

uint64_t sub_23DEC21BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DEC2280;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DEC2280()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEC2368@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsFaceTimeContact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEC2390(uint64_t a1)
{
  v2 = sub_23DEC558C(&qword_280DAEEF8, type metadata accessor for ShortcutsFaceTimeContact, &protocol conformance descriptor for ShortcutsFaceTimeContact);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DEC240C(uint64_t a1)
{
  v2 = sub_23DEC558C(&qword_280DAE468, type metadata accessor for ShortcutsFaceTimeContact, &protocol conformance descriptor for ShortcutsFaceTimeContact);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DEC24A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DEC5B04;

  return EmptyFaceTimeContactQuery.entities(for:)();
}

uint64_t sub_23DEC2534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DEC5A8C;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_23DEC25E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DEC26A8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_23DEC26A8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_23DEC279C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23DEC4DCC();
  *v5 = v2;
  v5[1] = sub_23DEC5A8C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23DEC2850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DEC5A8C;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DEC2904()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E32CFC8);
  __swift_project_value_buffer(v6, qword_27E32CFC8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t static StartFaceTimeCallTopHitAction.title.modify()
{
  if (qword_27E32B930 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  v1 = __swift_project_value_buffer(v0, qword_27E32CFC8);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

void (*StartFaceTimeCallTopHitAction.faceTimeContact.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(v0 + 32) = OUTLINED_FUNCTION_79_1(v1);
  return sub_23DEC2CC8;
}

uint64_t sub_23DEC2D0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEC2280;

  return StartFaceTimeCallTopHitAction.perform()(a1);
}

uint64_t sub_23DEC2DA4(uint64_t a1)
{
  v2 = sub_23DEC50FC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DEC2DE0()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E32CFF0);
  __swift_project_value_buffer(v6, qword_27E32CFF0);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t static StartFaceTimeVideoCallTopHitAction.title.modify()
{
  if (qword_27E32B938 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  v1 = __swift_project_value_buffer(v0, qword_27E32CFF0);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEC30C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_7();
  v9 = sub_23DEC3AF0(v5, v6, v7, v8);
  OUTLINED_FUNCTION_66_2(v9, v10);
  sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  v11 = OUTLINED_FUNCTION_49();
  return v12(v11);
}

uint64_t sub_23DEC3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_5_7();
  v11 = sub_23DEC3AF0(v10, v7, v8, v9);
  OUTLINED_FUNCTION_91_2(v11, v12);
  sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  v13 = OUTLINED_FUNCTION_54();
  v14(v13);
  return swift_endAccess();
}

uint64_t _s9ActionKit023StartFaceTimeCallTopHitA0V17shortcutsMetadata08WorkflowB0018AppIntentShortcutsJ0CvgZ_0()
{
  v0 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  sub_23E1FC81C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v14 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v14;
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x800000023E254600;
  type metadata accessor for Key(0);
  sub_23DEC558C(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v15 = v14;
  sub_23E1FDABC();
  (*(v2 + 104))(v6, *MEMORY[0x277D7BF40], v0);
  v16 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t _s9ActionKit023StartFaceTimeCallTopHitA0V04faceE7ContactAA09ShortcutsdeJ0Vvs_0(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutsFaceTimeContact(0);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  sub_23DEC57BC(a1, v5 - v4, type metadata accessor for ShortcutsFaceTimeContact);
  sub_23E1FB5EC();
  return sub_23DEC5818(a1, type metadata accessor for ShortcutsFaceTimeContact);
}

void (*StartFaceTimeVideoCallTopHitAction.faceTimeContact.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(v0 + 32) = OUTLINED_FUNCTION_79_1(v1);
  return sub_23DEC5AD8;
}

uint64_t _s9ActionKit023StartFaceTimeCallTopHitA0VACycfC_0@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v9 = OUTLINED_FUNCTION_25(v8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D040, &qword_23E2272F0);
  OUTLINED_FUNCTION_25(v11);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D048, &qword_23E2272F8);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  type metadata accessor for ShortcutsFaceTimeContact(0);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  (*(v3 + 104))(v7, *MEMORY[0x277CBA308], v1);
  OUTLINED_FUNCTION_12_8();
  sub_23DEC558C(v30, v31, &protocol conformance descriptor for ShortcutsFaceTimeContact);
  result = sub_23E1FB61C();
  *v34 = result;
  return result;
}

uint64_t sub_23DEC3830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEC5A8C;

  return StartFaceTimeVideoCallTopHitAction.perform()(a1);
}

uint64_t sub_23DEC38C8(uint64_t a1)
{
  v2 = sub_23DEC5238();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DEC3904()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v6, qword_27E32D018);
  __swift_project_value_buffer(v6, qword_27E32D018);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DEC3AF0(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t sub_23DEC3B84(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);
  v7 = __swift_project_value_buffer(v6, a3);
  OUTLINED_FUNCTION_66_2(v7, v8);
  v9 = OUTLINED_FUNCTION_49();
  return v10(v9);
}

uint64_t sub_23DEC3C58(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = a3(0);
  v9 = __swift_project_value_buffer(v8, a4);
  OUTLINED_FUNCTION_91_2(v9, v10);
  v11 = *(v8 - 8);
  v12 = OUTLINED_FUNCTION_54();
  v13(v12);
  swift_endAccess();
  return (*(v11 + 8))(a1, v8);
}

uint64_t static StartFaceTimeAudioCallTopHitAction.title.modify()
{
  if (qword_27E32B940 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  v1 = __swift_project_value_buffer(v0, qword_27E32D018);
  OUTLINED_FUNCTION_17_0(v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEC3DBC(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_66_2(a1, a2);
  sub_23E1FB7BC();
  return OUTLINED_FUNCTION_54();
}

uint64_t sub_23DEC3E08(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_23DEC3EB0@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
  return sub_23E1FB7BC();
}

uint64_t sub_23DEC3F0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
  sub_23E1FB7BC();
}

uint64_t sub_23DEC3F7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = type metadata accessor for ShortcutsFaceTimeContact(0);
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_11_5();
  sub_23DEC57BC(a1, v11, v12);
  sub_23E1FB7CC();
  a5(v11);
}

void (*StartFaceTimeAudioCallTopHitAction.faceTimeContact.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(v0 + 32) = OUTLINED_FUNCTION_79_1(v1);
  return sub_23DEC5AD8;
}

uint64_t sub_23DEC4090(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEC5A8C;

  return StartFaceTimeAudioCallTopHitAction.perform()(a1);
}

uint64_t sub_23DEC4128(uint64_t a1)
{
  v2 = sub_23DEC5374();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t FaceTimeRecentsOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D040, &qword_23E2272F0);
  OUTLINED_FUNCTION_25(v1);
  v0[20] = OUTLINED_FUNCTION_42();
  v2 = type metadata accessor for ShortcutsFaceTimeContact(0);
  v0[21] = v2;
  v0[22] = *(v2 - 8);
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEC4270()
{
  OUTLINED_FUNCTION_33_0();
  v1 = [objc_allocWithZone(WFCallUtilities) init];
  v0[25] = v1;
  sub_23E1FDF0C();
  v0[26] = 0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DEC4418;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C890, &qword_23E224DF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE8EBB4;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 getRecentsCallWithTelephony:0 limit:10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEC4418()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC4934(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEC5ABC;

  return FaceTimeRecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEC49C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEC4A68;

  return sub_23DEC0EB0();
}

uint64_t sub_23DEC4A68(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

id sub_23DEC4B6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = [v5 initWithPerson:a1 type:a2 callTypeSerializedRepresentation:a3 personSerializedRepresentation:a4 namedQueryInfo:a5];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_23DEC4BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsFaceTimeContact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEC4C50(uint64_t a1)
{
  result = sub_23DEC558C(&qword_280DAE468, type metadata accessor for ShortcutsFaceTimeContact, &protocol conformance descriptor for ShortcutsFaceTimeContact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEC4DCC()
{
  result = qword_280DAE460;
  if (!qword_280DAE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE460);
  }

  return result;
}

unint64_t sub_23DEC4EF8()
{
  result = qword_280DAEEA0;
  if (!qword_280DAEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEEA0);
  }

  return result;
}

unint64_t sub_23DEC4F50()
{
  result = qword_280DAEE98;
  if (!qword_280DAEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEE98);
  }

  return result;
}

unint64_t sub_23DEC4FF0()
{
  result = qword_280DAEEA8[0];
  if (!qword_280DAEEA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAEEA8);
  }

  return result;
}

unint64_t sub_23DEC5044()
{
  result = qword_280DAE3F0;
  if (!qword_280DAE3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D060, qword_23E2275D0);
    sub_23DEC558C(&qword_280DAEF18, type metadata accessor for ShortcutsFaceTimeContact, &protocol conformance descriptor for ShortcutsFaceTimeContact);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE3F0);
  }

  return result;
}

unint64_t sub_23DEC50FC()
{
  result = qword_280DAF150;
  if (!qword_280DAF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF150);
  }

  return result;
}

unint64_t sub_23DEC5154()
{
  result = qword_280DAF148;
  if (!qword_280DAF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF148);
  }

  return result;
}

unint64_t sub_23DEC51AC()
{
  result = qword_280DAF158;
  if (!qword_280DAF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF158);
  }

  return result;
}

unint64_t sub_23DEC5238()
{
  result = qword_280DAF108;
  if (!qword_280DAF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF108);
  }

  return result;
}

unint64_t sub_23DEC5290()
{
  result = qword_280DAF100;
  if (!qword_280DAF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF100);
  }

  return result;
}

unint64_t sub_23DEC52E8()
{
  result = qword_280DAF110;
  if (!qword_280DAF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF110);
  }

  return result;
}

unint64_t sub_23DEC5374()
{
  result = qword_280DAF120;
  if (!qword_280DAF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF120);
  }

  return result;
}

unint64_t sub_23DEC53CC()
{
  result = qword_280DAF118;
  if (!qword_280DAF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF118);
  }

  return result;
}

unint64_t sub_23DEC5424()
{
  result = qword_280DAF128;
  if (!qword_280DAF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF128);
  }

  return result;
}

uint64_t sub_23DEC558C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DEC55D4(uint64_t a1)
{
  result = sub_23DEC55FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEC55FC()
{
  result = qword_27E32D078;
  if (!qword_27E32D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D078);
  }

  return result;
}

unint64_t sub_23DEC5654()
{
  result = qword_280DAE450;
  if (!qword_280DAE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE450);
  }

  return result;
}

_BYTE *sub_23DEC5710(_BYTE *result, int a2, int a3)
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

uint64_t sub_23DEC57BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_49();
  v5(v4);
  return a2;
}

uint64_t sub_23DEC5818(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23DEC5870(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_53_1(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  sub_23E1FD3AC();
  OUTLINED_FUNCTION_12();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a4);
  v12 = *(a5 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }

  return result;
}

unint64_t sub_23DEC58F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_23DEC5940(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_53_1(a1, a2, a3, a4, a5);
  result = sub_23DE36CA4(v8, (*(v7 + 56) + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_23DEC5988(void *a1)
{
  v2 = [a1 parameters];

  if (!v2)
  {
    return 0;
  }

  sub_23DEC59F0();
  v3 = sub_23E1FDDEC();

  return v3;
}

unint64_t sub_23DEC59F0()
{
  result = qword_280DAE300;
  if (!qword_280DAE300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE300);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[28] = sub_23DEDB89C;
  v2[29] = a2;
  v2[30] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t result)
{
  v1[43] = result;
  v1[25] = result;
  v1[18] = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_3_7()
{
  v1[20] = sub_23DEDB89C;
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_4_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[28] = sub_23DEDB89C;
  v2[29] = a2;
  v2[30] = result;
  return result;
}

id OUTLINED_FUNCTION_21_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{
  *(v1 + 376) = a1;

  return sub_23E1FBFCC();
}

id OUTLINED_FUNCTION_40_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_41_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{
  *(v1 + 384) = a1;

  return sub_23E1FDBDC();
}

unint64_t OUTLINED_FUNCTION_53_1(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  *(v1 + 360) = *(v0 + 16);
  *(v1 + 368) = 0;

  return sub_23E1FB7BC();
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_66_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{
  *(v1 + 392) = a1;

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1)
{
  *(v1 + 384) = a1;

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1)
{
  *v1 = a1;

  return sub_23E1FB5CC();
}

void OUTLINED_FUNCTION_80_1()
{
  v2 = *(v0 + 328);
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{
  *(v1 + 304) = a1;
  *(v1 + 312) = v2;
}

uint64_t OUTLINED_FUNCTION_83_2@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1 + a3;

  return sub_23DEC57BC(v5, v3, a2);
}

uint64_t OUTLINED_FUNCTION_91_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_93_2()
{
}

uint64_t sub_23DEC6194(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_23DEC61B8, 0, 0);
}

uint64_t sub_23DEC61B8()
{
  OUTLINED_FUNCTION_4();
  v1 = [*(v0 + 24) CGImage];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D088, &qword_23E227D18);
    *v4 = v0;
    v4[1] = sub_23DEC6314;
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822008A0](v5);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_23DEC6314()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEC6418()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DEC647C()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v1();
}

void sub_23DEC64E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23DEC806C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEBE4C4;
  aBlock[3] = &block_descriptor_11;
  v10 = _Block_copy(aBlock);

  vk_cgImageRemoveBackgroundWithDownsizing();
  _Block_release(v10);
}

void sub_23DEC6694(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
    sub_23E1FDE7C();
  }

  else if (a1)
  {
    v4 = objc_opt_self();
    v5 = a1;
    [v4 imageWithCGImage_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
    sub_23E1FDE8C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
    sub_23E1FDE8C();
  }
}

uint64_t sub_23DEC67A4()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D098, &qword_23E227D28);
  *v3 = v0;
  v3[1] = sub_23DEC68A4;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_23DEC68A4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23DEC69C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23DEC819C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEC6DB0;
  aBlock[3] = &block_descriptor_18;
  v10 = _Block_copy(aBlock);

  sub_23DE38DA8(0, &qword_27E32C2B0, 0x277D79FC8);
  [a2 getObjectRepresentations:v10 forClass:swift_getObjCClassFromMetadata()];
  _Block_release(v10);
}

void sub_23DEC6B94(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);
    sub_23E1FDE7C();
    return;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v5 = sub_23DE4BC20(a1);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  if (!a2 || (v7 = sub_23DE4BB0C(a2)) == 0)
  {

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);
    sub_23E1FDE8C();
    return;
  }

  v8 = v7;
  v9 = 0;
  v22 = sub_23DE4D8B0();
  v10 = (v8 + 40);
  v11 = MEMORY[0x277D84F90];
  for (i = v8; ; v8 = i)
  {
    if (v22 == v9)
    {

      goto LABEL_21;
    }

    if ((v6 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = MEMORY[0x23EF04DD0](v9, v6);
LABEL_12:
    v13 = v12;
    v14 = *(v8 + 16);
    if (v9 == v14)
    {

      goto LABEL_21;
    }

    if (v9 >= v14)
    {
      goto LABEL_25;
    }

    v15 = *(v10 - 1);
    v16 = *v10;
    sub_23E1FB7BC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4D1EC();
      v11 = v19;
    }

    v17 = *(v11 + 16);
    if (v17 >= *(v11 + 24) >> 1)
    {
      sub_23DE4D1EC();
      v11 = v20;
    }

    *(v11 + 16) = v17 + 1;
    v18 = (v11 + 24 * v17);
    v18[4] = v13;
    v18[5] = v15;
    v18[6] = v16;
    v10 += 2;
    ++v9;
  }

  if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v6 + 8 * v9 + 32);
    goto LABEL_12;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_23DEC6DB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_23E1FDDEC();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_23E1FDDEC();
  }

LABEL_4:
  sub_23E1FB7CC();
  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_23DEC6E74(uint64_t a1, uint64_t a2)
{
  sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
  v2 = sub_23E1FE3FC();
  result = 2;
  if (v2)
  {
    v4 = 2;
    MEMORY[0x23EF04640](v2, &v4);

    return v4;
  }

  return result;
}

uint64_t sub_23DEC6F48()
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](0);
  return sub_23E1FE87C();
}

uint64_t sub_23DEC6F98(uint64_t a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](0);
  return sub_23E1FE87C();
}

uint64_t sub_23DEC7044()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ImageRemoveBackgroundAction();
  v1 = objc_msgSendSuper2(&v7, sel_disabledOnPlatforms);
  type metadata accessor for WFExecutionPlatform(0);
  v2 = sub_23E1FDDEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v4 = *MEMORY[0x277D7CC80];
  *(inited + 32) = *MEMORY[0x277D7CC80];
  v5 = v4;
  sub_23DE571A8(inited);
  return v2;
}

id sub_23DEC7100(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13[3] = &type metadata for VisualIntelligenceFeatureFlags;
  v13[4] = sub_23DEC8230();
  v7 = sub_23E1FCA4C();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v7)
  {
    v8 = sub_23E1FDBDC();

    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
      v9 = sub_23E1FDA9C();
    }

    else
    {
      v9 = 0;
    }

    v12.receiver = v4;
    v12.super_class = type metadata accessor for ImageRemoveBackgroundAction();
    v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

    if (v10)
    {
    }
  }

  else
  {

    type metadata accessor for ImageRemoveBackgroundAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

uint64_t sub_23DEC72EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23E1FDECC();
  v2[4] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_23DEC7384, v4, v3);
}

uint64_t sub_23DEC7384()
{
  OUTLINED_FUNCTION_23();
  result = sub_23DEC6E74(0x6F54706F72434657, 0xEE0073646E756F42);
  *(v0 + 144) = result;
  if (result == 2)
  {
    __break(1u);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_23DEC744C;

    return sub_23DEC6784();
  }

  return result;
}

uint64_t sub_23DEC744C()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v0;

  v9 = *(v2 + 48);
  v10 = *(v2 + 40);
  if (v0)
  {
    v11 = sub_23DEC7A40;
  }

  else
  {
    v11 = sub_23DEC7584;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

void *sub_23DEC7584()
{
  OUTLINED_FUNCTION_4();
  result = v0[8];
  v2 = result[2];
  v0[10] = v2;
  v0[11] = 0;
  if (v2)
  {
    if (result[2])
    {
      v3 = result[4];
      v0[12] = v3;
      v0[13] = result[5];
      v0[14] = result[6];
      v4 = v3;
      sub_23E1FB7BC();
      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_0_17(v5);

      return sub_23DEC6194(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_19();

    return v7();
  }

  return result;
}

uint64_t sub_23DEC768C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  *v4 = *v1;
  v3[16] = v5;
  v3[17] = v0;

  if (v0)
  {

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_23DEC7A9C;
  }

  else
  {
    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_23DEC779C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

char *sub_23DEC779C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = sub_23E1FDBDC();
    sub_23E1FDCBC("%@ Background Removed", 21);
    if (qword_280DAE1D8 != -1)
    {
      swift_once();
    }

    v3 = qword_280DAE278;
    v4 = sub_23E1FDBDC();
    v5 = sub_23E1FDBDC();

    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    if (!v6)
    {
      sub_23E1FDC1C();
      v6 = sub_23E1FDBDC();
    }

    v7 = *(v0 + 24);
    v8 = [v2 wf:v6 filenameTruncatedToMaximumLengthWithFormat:?];

    v9 = sub_23E1FDC1C();
    v11 = v10;

    result = [v7 output];
    if (!result)
    {
      goto LABEL_17;
    }

    v13 = result;
    v14 = v1;
    sub_23DEC7FE4(v14, v9, v11, v13);
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 88) + 1;
  *(v0 + 88) = v16;
  result = *(v0 + 64);
  if (v16 == v15)
  {

    OUTLINED_FUNCTION_19();

    return v17();
  }

  if (v16 >= *(result + 2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v18 = &result[24 * v16];
  v19 = *(v18 + 4);
  *(v0 + 96) = v19;
  *(v0 + 104) = *(v18 + 5);
  *(v0 + 112) = *(v18 + 6);
  v20 = v19;
  sub_23E1FB7BC();
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v22 = OUTLINED_FUNCTION_0_17(v21);

  return sub_23DEC6194(v22);
}

uint64_t sub_23DEC7A40()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DEC7A9C()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DEC7BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEC7C60, v5, v4);
}

uint64_t sub_23DEC7C60()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DEC7D20;
  v7 = v0[2];

  return sub_23DEC72EC(v7);
}

uint64_t sub_23DEC7D20()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  if (v2)
  {
    v10 = sub_23E1FBEBC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v11 = v8[1];

  return v11();
}

id sub_23DEC7ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageRemoveBackgroundAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DEC7F34()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;

  return sub_23DEC7BC4(v2, v3, v4);
}

void sub_23DEC7FE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23E1FDBDC();

  [a4 addObject:a1 named:v6];
}

void sub_23DEC806C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);

  sub_23DEC6694(a1, a2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t objectdestroy_9Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_23DEC819C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);

  sub_23DEC6B94(a1, a2, a3);
}

unint64_t sub_23DEC8230()
{
  result = qword_280DAEE90;
  if (!qword_280DAEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEE90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualIntelligenceFeatureFlags(_BYTE *result, int a2, int a3)
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

uint64_t sub_23DEC8340(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DEC83B8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_23DEC84F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_23DEC86E0()
{
  result = qword_27E32D130;
  if (!qword_27E32D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D130);
  }

  return result;
}

id sub_23DEC87CC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v118 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v125 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000023;
  *(inited + 48) = 0x800000023E24EBD0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("current|temperature|visibility|humidity|pressure|wind|sunrise|sunset", 68);
  v12 = v11;
  sub_23E1FDCBC("current|temperature|visibility|humidity|pressure|wind|sunrise|sunset", 68);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v129 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  v128 = v2;
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v127 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *&v124 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  v126 = xmmword_23E222370;
  *(v23 + 16) = xmmword_23E222370;
  v24 = *MEMORY[0x277D7CC10];
  *(v23 + 32) = *MEMORY[0x277D7CC10];
  v25 = v22;
  v26 = v24;
  v27 = sub_23E1FDCBC("Get Current Weather - Attribution", 33);
  v123 = v28;
  sub_23E1FDCBC("Weather information provided by [Weather data sources](https://weather-data.apple.com/legal-attribution.html).", 110);
  sub_23E1FC14C();
  v29 = v129;
  v30 = [v129 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v27, v123);
  *(v23 + 40) = v32;
  v33 = *MEMORY[0x277D7CC30];
  v34 = v127;
  *(v23 + 64) = v127;
  *(v23 + 72) = v33;
  v35 = v33;
  v36 = sub_23E1FDCBC("Gets the current weather conditions at the specified location.", 62);
  v123 = v37;
  sub_23E1FDCBC("Gets the current weather conditions at the specified location.", 62);
  sub_23E1FC14C();
  v38 = [v29 bundleURL];
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v36, v123);
  *(v23 + 104) = v34;
  *(v23 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v41 = sub_23E1FDABC();
  v42 = v124;
  v43 = sub_23DF3BE54(v41);
  v44 = MEMORY[0x277D7CCC8];
  *(inited + 160) = v43;
  v45 = *v44;
  *(inited + 184) = v42;
  *(inited + 192) = v45;
  v46 = MEMORY[0x277D839B0];
  *(inited + 200) = 0;
  v47 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v46;
  *(inited + 232) = v47;
  v48 = v45;
  v49 = v47;
  v50 = sub_23E1FDCBC("Get Current Weather (Action Name)", 33);
  v52 = v51;
  sub_23E1FDCBC("Get Current Weather", 19);
  sub_23E1FC14C();
  v53 = v129;
  v54 = [v129 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v50, v52);
  *(inited + 240) = v56;
  v57 = *MEMORY[0x277D7CDD0];
  v58 = v127;
  *(inited + 264) = v127;
  *(inited + 272) = v57;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v59 = swift_initStackObject();
  v124 = xmmword_23E222380;
  *(v59 + 16) = xmmword_23E222380;
  *(v59 + 32) = 0x656C7069746C754DLL;
  *(v59 + 40) = 0xE800000000000000;
  *(v59 + 48) = 0;
  *(v59 + 72) = MEMORY[0x277D839B0];
  *(v59 + 80) = 0x614E74757074754FLL;
  *(v59 + 88) = 0xEA0000000000656DLL;
  v60 = v57;
  v123 = sub_23E1FDCBC("Weather Conditions (Default Output Name)", 40);
  v62 = v61;
  sub_23E1FDCBC("Weather Conditions", 18);
  sub_23E1FC14C();
  v63 = [v53 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v123, v62);
  *(v59 + 96) = v65;
  *(v59 + 120) = v58;
  *(v59 + 128) = 0x7365707954;
  *(v59 + 136) = 0xE500000000000000;
  *(v59 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v59 + 144) = &unk_2850245E0;
  v66 = MEMORY[0x277D837D0];
  v67 = sub_23E1FDABC();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v123 = v68;
  *(inited + 280) = v67;
  v69 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v68;
  *(inited + 312) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_23E2235B0;
  v118 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_23E224710;
  v71 = *MEMORY[0x277D7CDF8];
  *(v70 + 64) = v66;
  *(v70 + 32) = v71;
  *(v70 + 40) = 0xD000000000000013;
  *(v70 + 48) = 0x800000023E254230;
  v72 = v69;
  v73 = v71;
  v74 = sub_23E1FDBDC();
  *(v70 + 104) = v66;
  *(v70 + 72) = v74;
  strcpy((v70 + 80), "HundredMeters");
  *(v70 + 94) = -4864;
  v121 = 0xD000000000000018;
  *(v70 + 112) = sub_23E1FDBDC();
  *(v70 + 120) = 1;
  v75 = *MEMORY[0x277D7CE70];
  *(v70 + 144) = MEMORY[0x277D839B0];
  *(v70 + 152) = v75;
  v120 = 0x800000023E254290;
  *(v70 + 160) = 0xD000000000000017;
  *(v70 + 168) = 0x800000023E254290;
  v76 = *MEMORY[0x277D7CE80];
  *(v70 + 184) = v66;
  *(v70 + 192) = v76;
  v77 = v75;
  v78 = v76;
  v79 = sub_23E1FDCBC("Location (WFWeatherCustomLocation)", 34);
  v81 = v80;
  sub_23E1FDCBC("Location", 8);
  sub_23E1FC14C();
  v82 = [v129 bundleURL];
  sub_23E1FBF9C();

  v83 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v79, v81);
  *(v70 + 224) = v127;
  *(v70 + 200) = v84;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v85 = sub_23E1FDABC();
  v86 = sub_23DF3BE9C(v85);
  v87 = v119;
  *(v119 + 32) = v86;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v87;
  v89 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v88;
  *(inited + 352) = v89;
  v90 = v89;
  v91 = sub_23E1FDCBC("Get weather at ${WFWeatherCustomLocation} (Parameter Summary)", 61);
  v93 = v92;
  sub_23E1FDCBC("Get weather at ${WFWeatherCustomLocation}", 41);
  sub_23E1FC14C();
  v94 = [v129 bundleURL];
  sub_23E1FBF9C();

  v95 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v91, v93);
  v97 = v96;
  v98 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v99 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 360) = v98;
  v100 = *MEMORY[0x277D7CF20];
  *(inited + 384) = v99;
  *(inited + 392) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v101 = swift_allocObject();
  *(v101 + 16) = v126;
  v102 = swift_allocObject();
  *(v102 + 16) = v126;
  *(v102 + 32) = 0xD000000000000011;
  *(v102 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_23E222340;
  v104 = swift_allocObject();
  *(v104 + 16) = v124;
  strcpy((v104 + 32), "WFParameterKey");
  *(v104 + 47) = -18;
  v105 = v120;
  *(v104 + 48) = 0xD000000000000017;
  *(v104 + 56) = v105;
  v106 = MEMORY[0x277D837D0];
  *(v104 + 72) = MEMORY[0x277D837D0];
  *(v104 + 80) = 0xD000000000000010;
  *(v104 + 88) = 0x800000023E24D710;
  v107 = v100;
  v108 = sub_23E1FDABC();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF48, &qword_23E227258);
  *(v104 + 96) = v108;
  *(v104 + 120) = v109;
  *(v104 + 128) = 0x72756F7365524657;
  *(v104 + 168) = v106;
  *(v104 + 136) = 0xEF7373616C436563;
  *(v104 + 144) = 0xD00000000000001BLL;
  *(v104 + 152) = 0x800000023E24D730;
  *(v103 + 32) = sub_23E1FDABC();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v102 + 48) = v103;
  *(v102 + 72) = v110;
  *(v102 + 80) = 0x72756F7365524657;
  *(v102 + 120) = v106;
  v111 = v121;
  *(v102 + 88) = 0xEF7373616C436563;
  *(v102 + 96) = v111;
  *(v102 + 104) = 0x800000023E254420;
  *(v101 + 32) = sub_23E1FDABC();
  *(v101 + 88) = v106;
  *(v101 + 56) = v123;
  *(v101 + 64) = 0xD00000000000001CLL;
  *(v101 + 72) = 0x800000023E24D7B0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v113 = MEMORY[0x277D7CB78];
  *(inited + 400) = v101;
  v114 = *v113;
  *(inited + 424) = v112;
  *(inited + 432) = v114;
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v115 = v114;
  v116 = sub_23E1FDABC();
  return sub_23DF3BF9C(v116);
}

id sub_23DEC9670()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v311 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v321 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E254970;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("create|add|contact", 18);
  v12 = v11;
  sub_23E1FDCBC("create|add|contact", 18);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v339 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v338 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v320 = v21;
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v336 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  v328 = xmmword_23E222370;
  *(v23 + 16) = xmmword_23E222370;
  v24 = *MEMORY[0x277D7CC28];
  *(v23 + 32) = *MEMORY[0x277D7CC28];
  v25 = v22;
  v26 = v24;
  v27 = sub_23E1FDCBC("The new contact", 15);
  v29 = v28;
  sub_23E1FDCBC("The new contact", 15);
  v331 = inited;
  sub_23E1FC14C();
  v30 = v339;
  v31 = [v339 bundleURL];
  v337 = v2;
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v27, v29);
  *(v23 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v338;
  *(v23 + 64) = v338;
  *(v23 + 72) = v34;
  v36 = v34;
  v37 = sub_23E1FDCBC("Creates a new contact.", 22);
  v39 = v38;
  sub_23E1FDCBC("Creates a new contact.", 22);
  sub_23E1FC14C();
  v40 = [v30 bundleURL];
  sub_23E1FBF9C();

  v41 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v37, v39);
  *(v23 + 104) = v35;
  *(v23 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v43 = sub_23E1FDABC();
  v44 = v336;
  v45 = sub_23DF3BE54(v43);
  v46 = MEMORY[0x277D7CCC8];
  v47 = v331;
  v331[20] = v45;
  v48 = *v46;
  v47[23] = v44;
  v47[24] = v48;
  v49 = MEMORY[0x277D839B0];
  *(v47 + 200) = 0;
  v50 = *MEMORY[0x277D7CB90];
  v47[28] = v49;
  v47[29] = v50;
  v51 = v47;
  v52 = v48;
  v53 = v50;
  v54 = sub_23E1FDCBC("New Contact (Action Name)", 25);
  v56 = v55;
  sub_23E1FDCBC("New Contact", 11);
  sub_23E1FC14C();
  v57 = [v339 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v54, v56);
  v51[30] = v59;
  v60 = *MEMORY[0x277D7CDD0];
  v51[33] = v35;
  v51[34] = v60;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v61 = swift_initStackObject();
  v319 = xmmword_23E222380;
  *(v61 + 16) = xmmword_23E222380;
  *(v61 + 32) = 0x656C7069746C754DLL;
  *(v61 + 40) = 0xE800000000000000;
  *(v61 + 48) = 0;
  *(v61 + 72) = MEMORY[0x277D839B0];
  *(v61 + 80) = 0x614E74757074754FLL;
  *(v61 + 88) = 0xEA0000000000656DLL;
  v62 = v60;
  v63 = sub_23E1FDCBC("New Contact (Default Output Name)", 33);
  v65 = v64;
  sub_23E1FDCBC("New Contact", 11);
  sub_23E1FC14C();
  v66 = [v339 bundleURL];
  sub_23E1FBF9C();

  v67 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v63, v65);
  *(v61 + 96) = v68;
  *(v61 + 120) = v35;
  *(v61 + 128) = 0x7365707954;
  *(v61 + 136) = 0xE500000000000000;
  *(v61 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v61 + 144) = &unk_285024688;
  v69 = MEMORY[0x277D837D0];
  v70 = sub_23E1FDABC();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v317 = v71;
  v72 = v331;
  v331[35] = v70;
  v73 = *MEMORY[0x277D7CBA0];
  v72[38] = v71;
  v72[39] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v335 = swift_allocObject();
  *(v335 + 16) = xmmword_23E224C50;
  v336 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v74 = swift_allocObject();
  v330 = xmmword_23E224C10;
  *(v74 + 16) = xmmword_23E224C10;
  v75 = *MEMORY[0x277D7CDF8];
  v329 = 0x800000023E24EAF0;
  *(v74 + 32) = v75;
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x800000023E24EAF0;
  v76 = *MEMORY[0x277D7CE08];
  *(v74 + 64) = v69;
  *(v74 + 72) = v76;
  v77 = v75;
  v78 = v76;
  v79 = v77;
  v80 = v78;
  v326 = v79;
  v327 = v80;
  v81 = v73;
  v82 = sub_23E1FDCBC("The first name of the contact. (WFContactFirstName)", 51);
  v84 = v83;
  sub_23E1FDCBC("The first name of the contact.", 30);
  sub_23E1FC14C();
  v85 = v339;
  v86 = [v339 bundleURL];
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v82, v84);
  *(v74 + 80) = v88;
  v89 = *MEMORY[0x277D7CE70];
  *(v74 + 104) = v338;
  *(v74 + 112) = v89;
  *(v74 + 120) = 0xD000000000000012;
  *(v74 + 128) = 0x800000023E254AA0;
  v90 = *MEMORY[0x277D7CE80];
  *(v74 + 144) = MEMORY[0x277D837D0];
  *(v74 + 152) = v90;
  v91 = v89;
  v92 = v90;
  v93 = v91;
  v94 = v92;
  v323 = v93;
  *&v324 = v94;
  v95 = sub_23E1FDCBC("First name (WFContactFirstName)", 31);
  v97 = v96;
  sub_23E1FDCBC("First name", 10);
  sub_23E1FC14C();
  v98 = [v85 bundleURL];
  sub_23E1FBF9C();

  v99 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v95, v97);
  *(v74 + 160) = v100;
  v101 = *MEMORY[0x277D7CEA8];
  v102 = v338;
  *(v74 + 184) = v338;
  *(v74 + 192) = v101;
  v322 = v101;
  v103 = sub_23E1FDCBC("First Name (WFContactFirstName)", 31);
  v105 = v104;
  sub_23E1FDCBC("First Name", 10);
  sub_23E1FC14C();
  v106 = [v339 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v103, v105);
  *(v74 + 200) = v108;
  v109 = *MEMORY[0x277D7CF10];
  *(v74 + 224) = v102;
  *(v74 + 232) = v109;
  v110 = MEMORY[0x277D837D0];
  *(v74 + 264) = MEMORY[0x277D837D0];
  *(v74 + 240) = 0x7468676952;
  *(v74 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v332 = v111;
  v333 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v325 = v109;
  v112 = sub_23E1FDABC();
  v113 = sub_23DF3BE9C(v112);
  *(v335 + 32) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = v330;
  v115 = v326;
  v116 = v327;
  *(v114 + 32) = v326;
  *(v114 + 40) = 0xD000000000000014;
  *(v114 + 48) = v329;
  *(v114 + 64) = v110;
  *(v114 + 72) = v116;
  v316 = v115;
  v326 = v116;
  v117 = sub_23E1FDCBC("The last name of the contact. (WFContactLastName)", 49);
  v119 = v118;
  sub_23E1FDCBC("The last name of the contact.", 29);
  sub_23E1FC14C();
  v120 = v339;
  v121 = [v339 bundleURL];
  sub_23E1FBF9C();

  v122 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v117, v119);
  *(v114 + 80) = v123;
  v124 = v323;
  v125 = v324;
  *(v114 + 104) = v338;
  *(v114 + 112) = v124;
  v327 = 0xD000000000000011;
  *(v114 + 120) = 0xD000000000000011;
  *(v114 + 128) = 0x800000023E254B80;
  *(v114 + 144) = MEMORY[0x277D837D0];
  *(v114 + 152) = v125;
  v314 = v124;
  v315 = v125;
  v126 = sub_23E1FDCBC("Last name (WFContactLastName)", 29);
  v128 = v127;
  sub_23E1FDCBC("Last name", 9);
  sub_23E1FC14C();
  v129 = [v120 bundleURL];
  sub_23E1FBF9C();

  v130 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v126, v128);
  *(v114 + 160) = v131;
  v132 = v338;
  v133 = v322;
  *(v114 + 184) = v338;
  *(v114 + 192) = v133;
  *&v324 = v133;
  v134 = sub_23E1FDCBC("Last Name (WFContactLastName)", 29);
  v136 = v135;
  sub_23E1FDCBC("Last Name", 9);
  sub_23E1FC14C();
  v137 = [v120 bundleURL];
  sub_23E1FBF9C();

  v138 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v134, v136);
  *(v114 + 200) = v139;
  v140 = v325;
  *(v114 + 224) = v132;
  *(v114 + 232) = v140;
  v141 = MEMORY[0x277D837D0];
  *(v114 + 264) = MEMORY[0x277D837D0];
  *(v114 + 240) = 0x7468676952;
  *(v114 + 248) = 0xE500000000000000;
  v142 = sub_23E1FDABC();
  v143 = sub_23DF3BE9C(v142);
  *(v335 + 40) = v143;
  v144 = swift_allocObject();
  *(v144 + 16) = v330;
  v145 = v316;
  *(v144 + 32) = v316;
  *(v144 + 40) = 0xD000000000000014;
  *(v144 + 48) = v329;
  v146 = v326;
  *(v144 + 64) = v141;
  *(v144 + 72) = v146;
  v323 = v145;
  v147 = sub_23E1FDCBC("The company of the contact. (WFContactCompany)", 46);
  v149 = v148;
  sub_23E1FDCBC("The company of the contact.", 27);
  sub_23E1FC14C();
  v150 = [v339 bundleURL];
  sub_23E1FBF9C();

  v151 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v147, v149);
  *(v144 + 80) = v152;
  v153 = v314;
  v154 = v315;
  *(v144 + 104) = v132;
  *(v144 + 112) = v153;
  v316 = 0xD000000000000010;
  *(v144 + 120) = 0xD000000000000010;
  *(v144 + 128) = 0x800000023E254C50;
  *(v144 + 144) = MEMORY[0x277D837D0];
  *(v144 + 152) = v154;
  v313 = v153;
  v314 = v154;
  v322 = sub_23E1FDCBC("Company (WFContactCompany)", 26);
  v156 = v155;
  sub_23E1FDCBC("Company", 7);
  sub_23E1FC14C();
  v157 = v339;
  v158 = [v339 bundleURL];
  sub_23E1FBF9C();

  v159 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v322, v156);
  *(v144 + 160) = v160;
  v161 = v324;
  *(v144 + 184) = v132;
  *(v144 + 192) = v161;
  v322 = v161;
  v162 = sub_23E1FDCBC("optional (WFContactCompany)", 27);
  *&v324 = v163;
  sub_23E1FDCBC("optional", 8);
  sub_23E1FC14C();
  v164 = [v157 bundleURL];
  sub_23E1FBF9C();

  v165 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v162, v324);
  *(v144 + 200) = v166;
  v167 = v325;
  *(v144 + 224) = v338;
  *(v144 + 232) = v167;
  v168 = MEMORY[0x277D837D0];
  *(v144 + 264) = MEMORY[0x277D837D0];
  *(v144 + 240) = 0x7468676952;
  *(v144 + 248) = 0xE500000000000000;
  v169 = sub_23E1FDABC();
  v170 = sub_23DF3BE9C(v169);
  *(v335 + 48) = v170;
  v171 = swift_initStackObject();
  v324 = xmmword_23E224710;
  *(v171 + 16) = xmmword_23E224710;
  v172 = *MEMORY[0x277D7CDE0];
  *(v171 + 32) = *MEMORY[0x277D7CDE0];
  *(v171 + 40) = 0;
  v173 = v323;
  *(v171 + 64) = MEMORY[0x277D839B0];
  *(v171 + 72) = v173;
  v315 = 0xD000000000000019;
  *(v171 + 80) = 0xD000000000000019;
  *(v171 + 88) = 0x800000023E24F180;
  v174 = v168;
  *(v171 + 104) = v168;
  v175 = v313;
  v176 = v314;
  *(v171 + 112) = v313;
  strcpy((v171 + 120), "WFContactPhoto");
  *(v171 + 135) = -18;
  *(v171 + 144) = v174;
  *(v171 + 152) = v176;
  v177 = v172;
  v311 = v173;
  v312 = v175;
  v313 = v176;
  v323 = v177;
  v178 = sub_23E1FDCBC("Photo (WFContactPhoto)", 22);
  v180 = v179;
  sub_23E1FDCBC("Photo", 5);
  sub_23E1FC14C();
  v181 = v339;
  v182 = [v339 bundleURL];
  sub_23E1FBF9C();

  v183 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v178, v180);
  *(v171 + 160) = v184;
  v185 = v338;
  v186 = v322;
  *(v171 + 184) = v338;
  *(v171 + 192) = v186;
  v325 = v186;
  v187 = sub_23E1FDCBC("Choose (WFContactPhoto)", 23);
  v189 = v188;
  sub_23E1FDCBC("Choose", 6);
  sub_23E1FC14C();
  v190 = [v181 bundleURL];
  sub_23E1FBF9C();

  v191 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v187, v189);
  *(v171 + 224) = v185;
  *(v171 + 200) = v192;
  v193 = sub_23E1FDABC();
  v194 = sub_23DF3BE9C(v193);
  *(v335 + 56) = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = v324;
  *(v195 + 32) = v323;
  *(v195 + 40) = 1;
  v196 = v311;
  v197 = v312;
  *(v195 + 64) = MEMORY[0x277D839B0];
  *(v195 + 72) = v196;
  v314 = 0xD00000000000001BLL;
  *(v195 + 80) = 0xD00000000000001BLL;
  *(v195 + 88) = 0x800000023E254D00;
  v198 = MEMORY[0x277D837D0];
  *(v195 + 104) = MEMORY[0x277D837D0];
  *(v195 + 112) = v197;
  *(v195 + 120) = 0xD000000000000015;
  *(v195 + 128) = 0x800000023E254D20;
  v199 = v313;
  *(v195 + 144) = v198;
  *(v195 + 152) = v199;
  v322 = v196;
  v312 = v197;
  v313 = v199;
  v200 = sub_23E1FDCBC("Phone Number (WFContactPhoneNumbers)", 36);
  v202 = v201;
  sub_23E1FDCBC("Phone Number", 12);
  sub_23E1FC14C();
  v203 = v339;
  v204 = [v339 bundleURL];
  sub_23E1FBF9C();

  v205 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v200, v202);
  *(v195 + 160) = v206;
  v207 = v338;
  v208 = v325;
  *(v195 + 184) = v338;
  *(v195 + 192) = v208;
  v325 = v208;
  v209 = sub_23E1FDCBC("optional (WFContactPhoneNumbers)", 32);
  v211 = v210;
  sub_23E1FDCBC("optional", 8);
  sub_23E1FC14C();
  v212 = [v203 bundleURL];
  sub_23E1FBF9C();

  v213 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v209, v211);
  *(v195 + 224) = v207;
  *(v195 + 200) = v214;
  v215 = sub_23E1FDABC();
  v216 = sub_23DF3BE9C(v215);
  *(v335 + 64) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v324;
  v218 = v322;
  *(v217 + 32) = v323;
  *(v217 + 40) = 1;
  *(v217 + 64) = MEMORY[0x277D839B0];
  *(v217 + 72) = v218;
  *(v217 + 80) = 0xD00000000000001CLL;
  *(v217 + 88) = 0x800000023E254DB0;
  v219 = MEMORY[0x277D837D0];
  v220 = v312;
  v221 = v313;
  *(v217 + 104) = MEMORY[0x277D837D0];
  *(v217 + 112) = v220;
  *(v217 + 120) = 0x6361746E6F434657;
  *(v217 + 128) = 0xEF736C69616D4574;
  *(v217 + 144) = v219;
  *(v217 + 152) = v221;
  v322 = v218;
  v323 = v220;
  *&v324 = v221;
  v222 = sub_23E1FDCBC("Email Address (WFContactEmails)", 31);
  v224 = v223;
  sub_23E1FDCBC("Email Address", 13);
  sub_23E1FC14C();
  v225 = v339;
  v226 = [v339 bundleURL];
  sub_23E1FBF9C();

  v227 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v222, v224);
  *(v217 + 160) = v228;
  v229 = v338;
  v230 = v325;
  *(v217 + 184) = v338;
  *(v217 + 192) = v230;
  v231 = sub_23E1FDCBC("optional (WFContactEmails)", 26);
  v313 = v232;
  sub_23E1FDCBC("optional", 8);
  sub_23E1FC14C();
  v233 = [v225 bundleURL];
  sub_23E1FBF9C();

  v234 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v231, v313);
  *(v217 + 224) = v229;
  *(v217 + 200) = v235;
  v236 = sub_23E1FDABC();
  v237 = sub_23DF3BE9C(v236);
  *(v335 + 72) = v237;
  v238 = swift_allocObject();
  *(v238 + 16) = v330;
  *(v238 + 32) = v322;
  *(v238 + 40) = 0xD000000000000014;
  *(v238 + 48) = v329;
  v239 = v326;
  *(v238 + 64) = MEMORY[0x277D837D0];
  *(v238 + 72) = v239;
  v240 = sub_23E1FDCBC("Optionally, notes for this contact. (WFContactNotes)", 52);
  v242 = v241;
  sub_23E1FDCBC("Optionally, notes for this contact.", 35);
  sub_23E1FC14C();
  v243 = [v339 bundleURL];
  sub_23E1FBF9C();

  v244 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v240, v242);
  *(v238 + 80) = v245;
  v246 = v338;
  v247 = v323;
  *(v238 + 104) = v338;
  *(v238 + 112) = v247;
  strcpy((v238 + 120), "WFContactNotes");
  *(v238 + 135) = -18;
  v248 = v324;
  *(v238 + 144) = MEMORY[0x277D837D0];
  *(v238 + 152) = v248;
  v249 = sub_23E1FDCBC("Notes (WFContactNotes)", 22);
  *&v330 = v250;
  sub_23E1FDCBC("Notes", 5);
  sub_23E1FC14C();
  v251 = v339;
  v252 = [v339 bundleURL];
  sub_23E1FBF9C();

  v253 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v249, v330);
  *(v238 + 160) = v254;
  v255 = *MEMORY[0x277D7CE98];
  *(v238 + 184) = v246;
  *(v238 + 192) = v255;
  *(v238 + 200) = 1;
  v256 = v325;
  *(v238 + 224) = MEMORY[0x277D839B0];
  *(v238 + 232) = v256;
  v257 = v255;
  v258 = sub_23E1FDCBC("Notes (WFContactNotes)", 22);
  v260 = v259;
  sub_23E1FDCBC("Notes", 5);
  sub_23E1FC14C();
  v261 = [v251 bundleURL];
  sub_23E1FBF9C();

  v262 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v258, v260);
  *(v238 + 264) = v246;
  *(v238 + 240) = v263;
  v264 = sub_23E1FDABC();
  v265 = sub_23DF3BE9C(v264);
  v266 = v335;
  *(v335 + 80) = v265;
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_23E222350;
  v268 = v327;
  *(v267 + 32) = v322;
  *(v267 + 40) = v268;
  *(v267 + 48) = 0x800000023E250E40;
  v269 = *MEMORY[0x277D7CE00];
  v270 = MEMORY[0x277D837D0];
  *(v267 + 64) = MEMORY[0x277D837D0];
  *(v267 + 72) = v269;
  *(v267 + 80) = 1;
  v271 = v323;
  *(v267 + 104) = MEMORY[0x277D839B0];
  *(v267 + 112) = v271;
  *(v267 + 120) = 0x6E656857776F6853;
  *(v267 + 128) = 0xEB000000006E7552;
  *(v267 + 144) = v270;
  *(v267 + 152) = v324;
  v272 = v269;
  v273 = sub_23E1FDCBC("Show Compose Sheet (ShowWhenRun)", 32);
  v275 = v274;
  sub_23E1FDCBC("Show Compose Sheet", 18);
  sub_23E1FC14C();
  v276 = [v339 bundleURL];
  sub_23E1FBF9C();

  v277 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v273, v275);
  *(v267 + 184) = v338;
  *(v267 + 160) = v278;
  v279 = sub_23E1FDABC();
  *(v266 + 88) = sub_23DF3BE9C(v279);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v281 = v331;
  v331[40] = v266;
  v282 = *MEMORY[0x277D7CB98];
  v281[43] = v280;
  v281[44] = v282;
  v283 = v282;
  v284 = sub_23E1FDCBC("Add ${WFContactFirstName}${WFContactLastName} to Contacts (Parameter Summary)", 77);
  v286 = v285;
  sub_23E1FDCBC("Add ${WFContactFirstName}${WFContactLastName} to Contacts", 57);
  sub_23E1FC14C();
  v287 = [v339 bundleURL];
  sub_23E1FBF9C();

  v288 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v284, v286);
  v290 = v289;
  v291 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v292 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v281[45] = v291;
  v293 = *MEMORY[0x277D7CF20];
  v281[48] = v292;
  v281[49] = v293;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v294 = swift_allocObject();
  *(v294 + 16) = v328;
  v295 = MEMORY[0x277D837D0];
  *(v294 + 56) = MEMORY[0x277D837D0];
  *(v294 + 32) = 0xD000000000000017;
  *(v294 + 40) = 0x800000023E24DBE0;
  v296 = swift_allocObject();
  *(v296 + 16) = v328;
  *(v296 + 32) = v327;
  *(v296 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_23E222340;
  v298 = swift_allocObject();
  *(v298 + 16) = v319;
  strcpy((v298 + 32), "WFParameterKey");
  *(v298 + 47) = -18;
  *(v298 + 48) = 0x6E656857776F6853;
  *(v298 + 56) = 0xEB000000006E7552;
  v299 = v316;
  *(v298 + 72) = v295;
  *(v298 + 80) = v299;
  *(v298 + 88) = 0x800000023E24D710;
  *(v298 + 96) = 1;
  *(v298 + 120) = MEMORY[0x277D839B0];
  *(v298 + 128) = 0x72756F7365524657;
  *(v298 + 168) = v295;
  v300 = v314;
  *(v298 + 136) = 0xEF7373616C436563;
  *(v298 + 144) = v300;
  *(v298 + 152) = 0x800000023E24D730;
  v301 = v293;
  *(v297 + 32) = sub_23E1FDABC();
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v296 + 48) = v297;
  *(v296 + 72) = v302;
  *(v296 + 80) = 0x72756F7365524657;
  *(v296 + 120) = v295;
  v303 = v315;
  *(v296 + 88) = 0xEF7373616C436563;
  *(v296 + 96) = v303;
  *(v296 + 104) = 0x800000023E24D560;
  v304 = sub_23E1FDABC();
  *(v294 + 88) = v317;
  *(v294 + 64) = v304;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v281[50] = v294;
  v306 = *MEMORY[0x277D7D028];
  v281[53] = v305;
  v281[54] = v306;
  v307 = v306;
  v308 = sub_23E1FDABC();
  v281[58] = v320;
  v281[55] = v308;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v309 = sub_23E1FDABC();
  return sub_23DF3BF9C(v309);
}

uint64_t sub_23DECB778(char a1)
{
  switch(a1)
  {
    case 1:
      sub_23E1FDCBC("Please provide a password to the Set Hotspot Password action containing 8 to 64 characters.", 91);
      break;
    case 2:
      sub_23E1FDCBC("You can only use ASCII characters in the Personal Hotspot password.", 67);
      break;
    case 3:
      sub_23E1FDCBC("An internal error occurred while setting the Personal Hotspot password.", 71);
      break;
    default:
      sub_23E1FDCBC("Please provide a password to the Set Hotspot Password action.", 61);
      break;
  }

  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DAE278;
  v2 = sub_23E1FDBDC();
  v3 = sub_23E1FDBDC();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_23E1FDC1C();
  return v5;
}

uint64_t sub_23DECB8B0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222370;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v3;
  v4 = sub_23DECB778(a1);
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 80) = sub_23E1FDC1C();
  *(inited + 88) = v7;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      sub_23E1FDCBC("Could Not Set Hotspot Password", 30);
    }

    else
    {
      sub_23E1FDCBC("No Password Was Provided", 24);
    }
  }

  else
  {
    sub_23E1FDCBC("Invalid Password", 16);
  }

  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v8 = qword_280DAE278;
  v9 = sub_23E1FDBDC();
  v10 = sub_23E1FDBDC();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_23E1FDC1C();
  v14 = v13;

  *(inited + 120) = v5;
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  return sub_23E1FDABC();
}

uint64_t sub_23DECBA68(uint64_t a1)
{
  v2 = sub_23DECD230();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DECBAA4(uint64_t a1)
{
  v2 = sub_23DECD230();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23DECBB04()
{
  v1[8] = v0;
  v2 = sub_23E1FD03C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_23E1FDECC();
  v1[12] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DECBBF8, v4, v3);
}

uint64_t sub_23DECBBF8()
{

  if (!WiFiManagerClientCreate())
  {
    sub_23E1FCB9C();
    v8 = sub_23E1FD02C();
    v9 = sub_23E1FE1CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23DE30000, v8, v9, "Cannot create WiFiManager", v10, 2u);
      MEMORY[0x23EF074C0](v10, -1, -1);
    }

    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);

    (*(v12 + 8))(v11, v13);
LABEL_11:

    v14 = *(v0 + 8);
    goto LABEL_17;
  }

  v1 = [*(v0 + 64) input];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [v1 items];

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v4 = sub_23E1FDDEC();

  if (!sub_23DE4D8B0())
  {

LABEL_13:
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_14:
    sub_23DECD040(v0 + 16);
    goto LABEL_15;
  }

  sub_23DE59014();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EF04DD0](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v7 = [v6 objectForClass_];

  if (v7)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  *(v0 + 16) = v30;
  *(v0 + 32) = v31;
  if (!*(v0 + 40))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v18 = *(v0 + 56);
    if ((v18 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v19 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (sub_23E1FDCDC() >= 8 && sub_23E1FDCDC() < 65)
      {
        sub_23E1FB7BC();
        while (1)
        {
          v20 = sub_23E1FDD1C();
          if (!v21)
          {
            break;
          }

          v22 = v20;
          v23 = v21;
          if (sub_23E1FDAFC())
          {
            goto LABEL_55;
          }

          v24 = v22 == 2573 && v23 == 0xE200000000000000;
          if (v24 || (result = sub_23E1FE75C(), (result & 1) != 0))
          {
          }

          else
          {
            if ((v23 & 0x2000000000000000) != 0)
            {
              v25 = HIBYTE(v23) & 0xF;
            }

            else
            {
              v25 = v22 & 0xFFFFFFFFFFFFLL;
            }

            if (!v25)
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              return result;
            }

            if ((v23 & 0x1000000000000000) != 0)
            {
              v26 = sub_23E1FDCAC();
            }

            else
            {
              v26 = sub_23E1FE5AC() << 16;
            }

            if (v26 >> 14 != 4 * v25)
            {
              goto LABEL_55;
            }

            result = sub_23DECCC04(v22, v23);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_59;
            }

            if ((result & 0xFFFFFF80) != 0)
            {
LABEL_55:

              v15 = 2;
              goto LABEL_16;
            }

            result = sub_23DECCC04(v22, v23);
            if ((result & 0x100000000) != 0)
            {
              goto LABEL_60;
            }

            v27 = result;

            if ((v27 & 0xFFFFFF00) != 0)
            {
              goto LABEL_58;
            }
          }
        }

        v28 = sub_23E1FDBDC();

        v29 = WiFiManagerClientSetMisPassword();

        if (v29)
        {
          goto LABEL_11;
        }

        v15 = 3;
      }

      else
      {

        v15 = 1;
      }

      goto LABEL_16;
    }
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  sub_23DECD0A8();
  swift_allocError();
  *v16 = v15;
  swift_willThrow();

  v14 = *(v0 + 8);
LABEL_17:

  return v14();
}

uint64_t sub_23DECC14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DECC1E8, v5, v4);
}

uint64_t sub_23DECC1E8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DE7F680;

  return sub_23DECBB04();
}

uint64_t sub_23DECC2AC(void *a1)
{
  v2 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 hasCapability_];

  if (v5)
  {
    v6 = sub_23E1FDCBC("Other users will join your shared WLAN network using this password. The password must contain at least 8 characters. Changing the password while the Personal Hotspot is active will disconnect any currently connected users.", 222);
    v8 = v7;
    sub_23E1FDCBC("Other users will join your shared WLAN network using this password. The password must contain at least 8 characters. Changing the password while the Personal Hotspot is active will disconnect any currently connected users.", 222);
    sub_23E1FC14C();
    if (qword_280DAE1D8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v6 = sub_23E1FDCBC("Other users will join your shared Wi-Fi network using this password. The password must contain at least 8 characters. Changing the password while the Personal Hotspot is active will disconnect any currently connected users.", 223);
  v8 = v9;
  sub_23E1FDCBC("Other users will join your shared Wi-Fi network using this password. The password must contain at least 8 characters. Changing the password while the Personal Hotspot is active will disconnect any currently connected users.", 223);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v10 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v11 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v6, v8);
  v13 = v12;
  v14 = [a1 localize_];

  v15 = sub_23E1FDC1C();
  return v15;
}

uint64_t sub_23DECC6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23E1FDCBC("Allow “%1$@” to change the Personal Hotspot password?", 57, a3, a4);
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v8 = qword_280DAE278;
  v9 = sub_23E1FDBDC();
  v10 = sub_23E1FDBDC();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_23E1FDC1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D140, &qword_23E227E40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23E222340;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_23DEADED0();
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  sub_23E1FB7BC();
  v13 = sub_23E1FDBEC();

  return v13;
}

id sub_23DECC91C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for SetHotspotPasswordAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DECCA98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DECCAF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DECCB50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE662F0;

  return sub_23DECC14C(v2, v3, v4);
}

unint64_t sub_23DECCC04(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_23DECCD98(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_23E1FE5BC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_23E1FE60C();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_23DECCD98(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23DECCE38(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23DECCEA8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23DECCE38(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_23DECCFC4(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23DECCEA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_23E1FE60C();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_23DECCFC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23E1FDD4C();
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
    v5 = MEMORY[0x23EF04520](15, a1 >> 16);
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

uint64_t sub_23DECD040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C320, &unk_23E224B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DECD0A8()
{
  result = qword_27E32D148;
  if (!qword_27E32D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D148);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetHotspotPasswordAction.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DECD1DC()
{
  result = qword_27E32D150;
  if (!qword_27E32D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D150);
  }

  return result;
}

unint64_t sub_23DECD230()
{
  result = qword_27E32D158;
  if (!qword_27E32D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D158);
  }

  return result;
}

uint64_t sub_23DECD288(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  return swift_continuation_resume();
}

uint64_t sub_23DECD2D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_23DEEC878();
  }

  else
  {
    v8 = *v5;

    return sub_23DEE4C08(v8, v4);
  }
}

uint64_t sub_23DECD354()
{
  OUTLINED_FUNCTION_23();
  v1[23] = v0;
  sub_23E1FDECC();
  v1[24] = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();
  v1[25] = v3;
  v1[26] = v2;

  return MEMORY[0x2822009F8](sub_23DECD3E8, v3, v2);
}

uint64_t sub_23DECD3E8()
{
  sub_23DE38DA8(0, &qword_27E32D1B8, 0x277CD3A58);
  OUTLINED_FUNCTION_32_2();
  v3 = sub_23E1FE3FC();
  *(v0 + 176) = v3;
  if (v3)
  {
    sub_23DED1DF8((v0 + 176));
    if (v4)
    {
      v1 = "Toggle (WFLockAppOperation)";
      v5 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
      v6 = OUTLINED_FUNCTION_25_4(v5);
      if (v6)
      {
        v7 = v6;
        sub_23E1FDC0C();
      }

      sub_23E1FDC1C();
      OUTLINED_FUNCTION_174();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E222340;
      *(inited + 32) = sub_23E1FDC1C();
      *(inited + 40) = v9;
      sub_23E1FDCBC("Lock App received an invalid operation.", 39);
      OUTLINED_FUNCTION_157();
      if (qword_280DAE1D8 == -1)
      {
LABEL_11:
        OUTLINED_FUNCTION_18_9();
        OUTLINED_FUNCTION_13_5();
        v15 = OUTLINED_FUNCTION_22_5();
        v16 = OUTLINED_FUNCTION_185_0(v15, sel_localizedStringForKey_value_table_);

        sub_23E1FDC1C();
        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_24_5(v17, MEMORY[0x277D837D0]);
        v18 = OUTLINED_FUNCTION_29_1();
        v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v20 = OUTLINED_FUNCTION_6_9();
        v22 = sub_23DE56A08(v20, v21, 5, v18);
        OUTLINED_FUNCTION_28_4(v22);

        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_162();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {

      sub_23E1FDC1C();
      OUTLINED_FUNCTION_174();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_23E222340;
      *(v13 + 32) = sub_23E1FDC1C();
      *(v13 + 40) = v14;
      sub_23E1FDCBC("Lock App failed because it couldn’t find that app.", 52);
      OUTLINED_FUNCTION_157();
      if (qword_280DAE1D8 == -1)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    goto LABEL_11;
  }

  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_23DECD8C4;
  OUTLINED_FUNCTION_162();

  return sub_23DECE520();
}

uint64_t sub_23DECD8C4()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v5[28] = v0;

  if (v0)
  {
    v9 = v5[25];
    v10 = v5[26];
    v11 = sub_23DECE32C;
  }

  else
  {
    v5[29] = v3;
    v9 = v5[25];
    v10 = v5[26];
    v11 = sub_23DECD9D4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

void sub_23DECD9D4()
{
  v3 = *(v0 + 232);
  *(v0 + 176) = v3;
  if (v3 && (sub_23DED1DF8((v0 + 176)), v4))
  {
    v1 = "Toggle (WFLockAppOperation)";
    v5 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
    v6 = OUTLINED_FUNCTION_25_4(v5);
    if (v6)
    {
      v7 = v6;
      sub_23E1FDC0C();
    }

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v9;
    sub_23E1FDCBC("Lock App received an invalid operation.", 39);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_18_9();
      OUTLINED_FUNCTION_13_5();
      v12 = OUTLINED_FUNCTION_22_5();
      v13 = OUTLINED_FUNCTION_185_0(v12, sel_localizedStringForKey_value_table_);

      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_24_5(v14, MEMORY[0x277D837D0]);
      v15 = OUTLINED_FUNCTION_29_1();
      v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v17 = OUTLINED_FUNCTION_6_9();
      v19 = sub_23DE56A08(v17, v18, 5, v15);
      OUTLINED_FUNCTION_28_4(v19);

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_162();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_23E222340;
    *(v10 + 32) = sub_23E1FDC1C();
    *(v10 + 40) = v11;
    sub_23E1FDCBC("Lock App failed because it couldn’t find that app.", 52);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 == -1)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
  goto LABEL_8;
}

uint64_t sub_23DECDE1C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 208);
  v7 = *(v1 + 200);
  if (v0)
  {
    v8 = sub_23DECE390;
  }

  else
  {
    v8 = sub_23DED1F48;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DECDF44()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 272) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 208);
  v7 = *(v1 + 200);
  if (v0)
  {
    v8 = sub_23DECE3F4;
  }

  else
  {
    v8 = sub_23DED1F48;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DECE06C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 288) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 208);
  v7 = *(v1 + 200);
  if (v0)
  {
    v8 = sub_23DECE458;
  }

  else
  {
    v8 = sub_23DED1F48;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DECE194()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 208);
  v7 = *(v1 + 200);
  if (v0)
  {
    v8 = sub_23DECE4BC;
  }

  else
  {
    v8 = sub_23DECE2BC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DECE2BC()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DECE32C()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DECE390()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECE3F4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECE458()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECE4BC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_5();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECE520()
{
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v1[5] = sub_23E1FDECC();
  v1[6] = sub_23E1FDEBC();
  v3 = sub_23E1FDE6C();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23DECE5C8, v3, v2);
}

uint64_t sub_23DECE5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  v11 = *(v10 + 24);
  OUTLINED_FUNCTION_32_2();
  v12 = sub_23E1FDBDC();
  v13 = [v11 parameterForKey_];
  *(v10 + 72) = v13;

  if (v13)
  {
    v14 = [*(v10 + 24) workQueue];
    *(v10 + 80) = v14;
    if (v14)
    {
      v15 = v14;
      v16 = *(v10 + 32);
      v17 = *(v10 + 24);
      *(v10 + 88) = sub_23E1FDEBC();
      v18 = swift_task_alloc();
      *(v10 + 96) = v18;
      v18[2] = v17;
      v18[3] = v13;
      v18[4] = v15;
      v18[5] = v16;
      v19 = swift_task_alloc();
      *(v10 + 104) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D0, &qword_23E227FF8);
      *v19 = v10;
      v19[1] = sub_23DECE794;
      OUTLINED_FUNCTION_90_2();

      return MEMORY[0x2822008A0](v20);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_90_2();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_23DECE794()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_23DECE910;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_23DECE8A0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23DECE8A0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_12_1();

  return v2();
}

uint64_t sub_23DECE910()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_19();

  return v3();
}

unint64_t sub_23DECE994(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E1FE6EC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23DECE9E0(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_23E1FDECC();
  v2[40] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v2[41] = v4;
  v2[42] = v3;

  return MEMORY[0x2822009F8](sub_23DECEA78, v4, v3);
}

uint64_t sub_23DECEA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  v13 = v10[38];
  v14 = objc_opt_self();
  v10[43] = v14;
  v15 = [v14 sharedManager];
  LODWORD(v13) = [v15 canChangeLockedStatusOfSubject_];

  if (!v13)
  {

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v17;
    sub_23E1FDCBC("The app can’t be locked.", 26);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    }

    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_13_5();
    v18 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_185_0(v18, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_24_5(v19, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_29_1();
    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = OUTLINED_FUNCTION_6_9();
    v23 = OUTLINED_FUNCTION_26_2(v21, v22);
    OUTLINED_FUNCTION_28_4(v23);
    OUTLINED_FUNCTION_19();
    goto LABEL_7;
  }

  if ([v10[38] isLocked])
  {

    OUTLINED_FUNCTION_19();
LABEL_7:
    OUTLINED_FUNCTION_90_2();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  v33 = swift_task_alloc();
  v10[44] = v33;
  *v33 = v10;
  v33[1] = sub_23DECECB8;
  OUTLINED_FUNCTION_90_2();

  return sub_23DED01E4();
}

uint64_t sub_23DECECB8()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 360) = v0;

  if (v0)
  {
    v9 = *(v5 + 328);
    v10 = *(v5 + 336);
    v11 = sub_23DECF1D4;
  }

  else
  {
    *(v5 + 385) = v3 & 1;
    v9 = *(v5 + 328);
    v10 = *(v5 + 336);
    v11 = sub_23DECEDCC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23DECEDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  if (*(v10 + 385) == 1)
  {
    v13 = *(v10 + 304);
    v14 = [*(v10 + 344) sharedManager];
    *(v10 + 368) = v14;
    *(v10 + 16) = v10;
    *(v10 + 56) = v10 + 384;
    *(v10 + 24) = sub_23DECF050;
    v15 = swift_continuation_init();
    *(v10 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
    *(v10 + 240) = MEMORY[0x277D85DD0];
    *(v10 + 248) = 1107296256;
    *(v10 + 256) = sub_23DECD2D0;
    *(v10 + 264) = &block_descriptor_21;
    *(v10 + 272) = v15;
    [v14 setSubject:v13 isLocked:1 completion:v10 + 240];
    OUTLINED_FUNCTION_90_2();

    return MEMORY[0x282200938](v16);
  }

  else
  {

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v19;
    sub_23E1FDCBC("Lock App failed to authenticate.", 32);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    }

    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_13_5();
    v20 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_185_0(v20, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_24_5(v21, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_29_1();
    v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v23 = OUTLINED_FUNCTION_6_9();
    v25 = OUTLINED_FUNCTION_26_2(v23, v24);
    OUTLINED_FUNCTION_28_4(v25);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_90_2();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_23DECF050()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 376) = v4;
  v5 = v3[42];
  v6 = v3[41];
  if (v4)
  {
    v7 = sub_23DECF230;
  }

  else
  {
    v7 = sub_23DECF170;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DECF170()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 368);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECF1D4()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DECF230()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 368);

  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECF2A0(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  sub_23E1FDECC();
  v2[30] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v2[31] = v4;
  v2[32] = v3;

  return MEMORY[0x2822009F8](sub_23DECF338, v4, v3);
}

uint64_t sub_23DECF338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23();
  if ([*(v10 + 224) isLocked])
  {
    v11 = swift_task_alloc();
    *(v10 + 264) = v11;
    *v11 = v10;
    v11[1] = sub_23DECF410;

    return sub_23DED01E4();
  }

  else
  {

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_23DECF410()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_58();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (v0)
  {
    v9 = *(v5 + 248);
    v10 = *(v5 + 256);
    v11 = sub_23DECF934;
  }

  else
  {
    *(v5 + 297) = v3 & 1;
    v9 = *(v5 + 248);
    v10 = *(v5 + 256);
    v11 = sub_23DECF524;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23DECF524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  if (*(v10 + 297) == 1)
  {
    v13 = *(v10 + 224);
    v14 = [objc_opt_self() sharedManager];
    *(v10 + 280) = v14;
    *(v10 + 16) = v10;
    *(v10 + 56) = v10 + 296;
    *(v10 + 24) = sub_23DECF7B0;
    v15 = swift_continuation_init();
    *(v10 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
    *(v10 + 160) = MEMORY[0x277D85DD0];
    *(v10 + 168) = 1107296256;
    *(v10 + 176) = sub_23DECD2D0;
    *(v10 + 184) = &block_descriptor_12;
    *(v10 + 192) = v15;
    [v14 setSubject:v13 isLocked:0 completion:v10 + 160];
    OUTLINED_FUNCTION_90_2();

    return MEMORY[0x282200938](v16);
  }

  else
  {

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_174();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = sub_23E1FDC1C();
    *(inited + 40) = v19;
    sub_23E1FDCBC("Lock App couldn't authenticate the user.", 40);
    OUTLINED_FUNCTION_157();
    if (qword_280DAE1D8 != -1)
    {
      OUTLINED_FUNCTION_0_13(&qword_280DAE1D8);
    }

    OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_13_5();
    v20 = OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_185_0(v20, sel_localizedStringForKey_value_table_);

    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_24_5(v21, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_29_1();
    v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v23 = OUTLINED_FUNCTION_6_9();
    v25 = OUTLINED_FUNCTION_26_2(v23, v24);
    OUTLINED_FUNCTION_28_4(v25);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_90_2();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_23DECF7B0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 288) = v4;
  v5 = v3[32];
  v6 = v3[31];
  if (v4)
  {
    v7 = sub_23DECF990;
  }

  else
  {
    v7 = sub_23DECF8D0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DECF8D0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 280);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECF934()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DECF990()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 280);

  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DECFA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DECFB24, v5, v4);
}

uint64_t sub_23DECFB24()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DEC7D20;

  return sub_23DECD354();
}

void sub_23DECFBDC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = a2;
  v24 = a4;
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v26 = sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  aBlock[0] = a3;
  v10 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v11 = a3;
  v12 = sub_23DED1CDC(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C430, &qword_23E223978);
  sub_23E1FDABC();
  v13 = sub_23E1FDA9C();

  sub_23DE38DA8(0, &qword_27E32D1E0, 0x277D7C6E8);
  sub_23E1FDABC();
  v14 = sub_23E1FDA9C();

  v15 = v20;
  (*(v6 + 16))(v9, v21, v20);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v9, v15);
  *(v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v27 = sub_23DED1E48;
  v28 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DED0100;
  v26 = &block_descriptor_31;
  v18 = _Block_copy(aBlock);

  [v23 askForValuesOfParameters:v12 withDefaultStates:v13 prompts:v14 input:0 workQueue:v24 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_23DECFEC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23E1FD03C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_23DE4682C(a1, &v17, 0x7070414657, 0xE500000000000000);
    if (v18)
    {
      sub_23DE38DA8(0, &qword_27E32D1B8, 0x277CD3A58);
      v9 = swift_dynamicCast();
      v10 = v16[1];
      if (!v9)
      {
        v10 = 0;
      }
    }

    else
    {
      sub_23DECD040(&v17);
      v10 = 0;
    }

    *&v17 = v10;
  }

  else
  {
    if (a3)
    {
      *&v17 = a3;
      v11 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
      return sub_23E1FDE7C();
    }

    sub_23E1FCB9C();
    v13 = sub_23E1FD02C();
    v14 = sub_23E1FE1BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23DE30000, v13, v14, "askForValues failed with no error", v15, 2u);
      MEMORY[0x23EF074C0](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    *&v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
  return sub_23E1FDE8C();
}

uint64_t sub_23DED0100(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = sub_23E1FDAAC();
  }

  else
  {
    v9 = 0;
  }

  sub_23E1FB7CC();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v8(v9, a3, a4, a5);
}

uint64_t sub_23DED01E4()
{
  sub_23E1FDECC();
  v0[26] = sub_23E1FDEBC();
  v2 = sub_23E1FDE6C();
  v0[27] = v2;
  v0[28] = v1;

  return MEMORY[0x2822009F8](sub_23DED0278, v2, v1);
}

uint64_t sub_23DED0278()
{
  OUTLINED_FUNCTION_4();
  v1 = v0 + 32;
  if ([objc_opt_self() isDeviceLocked])
  {
    v2 = v0 + 10;
    v3 = [objc_allocWithZone(MEMORY[0x277D7C278]) init];
    v0[29] = v3;
    v0[10] = v0;
    v0[15] = v1;
    v0[11] = sub_23DED0468;
    v4 = swift_continuation_init();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C8, &qword_23E227FF0);
    OUTLINED_FUNCTION_8_5(v5);
    v0[19] = 1107296256;
    v0[20] = sub_23DED08BC;
    v0[21] = &block_descriptor_17_0;
    v0[22] = v4;
    [v3 requestUnlockIfNeeded_];
  }

  else
  {
    v2 = v0 + 2;
    v6 = [objc_opt_self() sharedGuard];
    v0[30] = v6;
    v0[2] = v0;
    v0[7] = v1;
    v0[3] = sub_23DED05CC;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
    OUTLINED_FUNCTION_8_5(v8);
    v0[19] = 1107296256;
    v0[20] = sub_23DECD2D0;
    v0[21] = &block_descriptor_13;
    v0[22] = v7;
    [v6 authenticateUnconditionallyWithCompletion_];
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23DED0468()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_58();
  *v1 = v0;
  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return MEMORY[0x2822009F8](sub_23DED0560, v4, v3);
}

uint64_t sub_23DED0560()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_12_1();

  return v1();
}

uint64_t sub_23DED05CC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 248) = v4;
  v5 = v3[28];
  v6 = v3[27];
  if (v4)
  {
    v7 = sub_23DED0758;
  }

  else
  {
    v7 = sub_23DED06EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DED06EC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 240);

  v2 = *(v0 + 256);

  OUTLINED_FUNCTION_12_1();

  return v3(v2);
}

uint64_t sub_23DED0758()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 240);

  swift_willThrow();

  OUTLINED_FUNCTION_12_1();

  return v2(0);
}

id sub_23DED07CC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    sub_23E1FDA9C();
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    a2 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_definition_serializedParameters_, v10, a3, a2);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_23DED08BC(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return sub_23DECD2AC(v3, a2);
}

id sub_23DED0998()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DED09F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DED0A88()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v196 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v196 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0x70416B636F4C4657;
  *(inited + 48) = 0xEF6E6F6974634170;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("lock|protect|authentication|private", 35);
  v14 = v13;
  sub_23E1FDCBC("lock|protect|authentication|private", 35);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v15 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v207 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  v210 = sub_23E1FDCBC("Changes whether the selected application is locked. Locked apps require authentication to access.", 97);
  v27 = v26;
  sub_23E1FDCBC("Changes whether the selected application is locked. Locked apps require authentication to access.", 97);
  sub_23E1FC14C();
  v211 = v15;
  v28 = [v15 bundleURL];
  sub_23E1FBF9C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v208 = v5;
  v209 = v2;
  sub_23DE477A0(v210, v27);
  v210 = v20;
  *(v22 + 64) = v20;
  *(v22 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v31 = sub_23E1FDABC();
  v32 = v207;
  *(inited + 120) = sub_23DF3BE54(v31);
  v33 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v32;
  *(inited + 152) = v33;
  v212 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_23E222380;
  v35 = *MEMORY[0x277D7CC70];
  v36 = *MEMORY[0x277D7CC78];
  v37 = MEMORY[0x277D7CC80];
  *(v34 + 32) = *MEMORY[0x277D7CC70];
  *(v34 + 40) = v36;
  v38 = *v37;
  *(v34 + 48) = *v37;
  v213 = MEMORY[0x277D84F90];
  v39 = v33;
  v40 = v35;
  v41 = v36;
  v42 = v38;
  sub_23DE63E2C(0, 3, 0);
  v43 = v213;
  v44 = sub_23E1FDC1C();
  v46 = v45;
  v48 = *(v43 + 16);
  v47 = *(v43 + 24);
  if (v48 >= v47 >> 1)
  {
    sub_23DE63E2C(v47 > 1, v48 + 1, 1);
    v43 = v213;
  }

  *(v43 + 16) = v48 + 1;
  v49 = v43 + 16 * v48;
  *(v49 + 32) = v44;
  *(v49 + 40) = v46;
  v50 = sub_23E1FDC1C();
  v52 = v51;
  v54 = *(v43 + 16);
  v53 = *(v43 + 24);
  if (v54 >= v53 >> 1)
  {
    sub_23DE63E2C(v53 > 1, v54 + 1, 1);
    v43 = v213;
  }

  *(v43 + 16) = v54 + 1;
  v55 = v43 + 16 * v54;
  *(v55 + 32) = v50;
  *(v55 + 40) = v52;
  v56 = sub_23E1FDC1C();
  v58 = v57;
  v60 = *(v43 + 16);
  v59 = *(v43 + 24);
  if (v60 >= v59 >> 1)
  {
    sub_23DE63E2C(v59 > 1, v60 + 1, 1);
  }

  v61 = v213;
  *(v213 + 16) = v60 + 1;
  v62 = v61 + 16 * v60;
  *(v62 + 32) = v56;
  *(v62 + 40) = v58;
  swift_setDeallocating();
  sub_23DF032E0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v64 = v212;
  v212[20] = v61;
  v65 = *MEMORY[0x277D7CB70];
  v66 = MEMORY[0x277D839B0];
  v205 = v63;
  v64[23] = v63;
  v64[24] = v65;
  *(v64 + 200) = 0;
  v67 = *MEMORY[0x277D7CB48];
  v64[28] = v66;
  v64[29] = v67;
  v68 = MEMORY[0x277D7CB60];
  v64[30] = 1702194242;
  v64[31] = 0xE400000000000000;
  v69 = *v68;
  v70 = MEMORY[0x277D837D0];
  v64[33] = MEMORY[0x277D837D0];
  v64[34] = v69;
  v64[35] = 1801678700;
  v64[36] = 0xE400000000000000;
  v71 = *MEMORY[0x277D7CB90];
  v64[38] = v70;
  v64[39] = v71;
  v72 = v65;
  v73 = v67;
  v74 = v69;
  v75 = v71;
  v76 = sub_23E1FDCBC("Lock App (Action Name)", 22);
  v78 = v77;
  sub_23E1FDCBC("Lock App", 8);
  sub_23E1FC14C();
  v79 = [v211 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v76, v78);
  v64[40] = v81;
  v82 = *MEMORY[0x277D7CBA0];
  v64[43] = v210;
  v64[44] = v82;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_23E2246F0;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_23E224C10;
  v84 = *MEMORY[0x277D7CDF8];
  *(v83 + 32) = *MEMORY[0x277D7CDF8];
  *(v83 + 40) = 0xD000000000000016;
  v85 = MEMORY[0x277D7CE00];
  *(v83 + 48) = 0x800000023E24FDA0;
  v86 = *v85;
  *(v83 + 64) = v70;
  *(v83 + 72) = v86;
  *(v83 + 80) = 1801678668;
  *(v83 + 88) = 0xE400000000000000;
  v87 = *MEMORY[0x277D7CE38];
  *(v83 + 104) = v70;
  *(v83 + 112) = v87;
  v206 = v83;
  v213 = MEMORY[0x277D84F90];
  v201 = v84;
  v88 = v82;
  v89 = v86;
  v90 = v87;
  sub_23DE63E2C(0, 3, 0);
  v91 = 0;
  v92 = v213;
  do
  {
    if (byte_285024780[v91 + 32] == 1)
    {
      v93 = 0x6B636F6C6E55;
    }

    else
    {
      v93 = 0x656C67676F54;
    }

    if (byte_285024780[v91 + 32])
    {
      v94 = v93;
    }

    else
    {
      v94 = 1801678668;
    }

    if (byte_285024780[v91 + 32])
    {
      v95 = 0xE600000000000000;
    }

    else
    {
      v95 = 0xE400000000000000;
    }

    v213 = v92;
    v97 = *(v92 + 16);
    v96 = *(v92 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_23DE63E2C(v96 > 1, v97 + 1, 1);
      v92 = v213;
    }

    ++v91;
    *(v92 + 16) = v97 + 1;
    v98 = v92 + 16 * v97;
    *(v98 + 32) = v94;
    *(v98 + 40) = v95;
  }

  while (v91 != 3);
  v100 = v205;
  v99 = v206;
  *(v206 + 120) = v92;
  v101 = *MEMORY[0x277D7CE30];
  *(v99 + 144) = v100;
  *(v99 + 152) = v101;
  v213 = MEMORY[0x277D84F90];
  v102 = v101;
  sub_23E1FE63C();
  v103 = 0;
  v104 = v211;
  do
  {
    if (byte_285024780[v103 + 32])
    {
      if (byte_285024780[v103 + 32] == 1)
      {
        v105 = sub_23E1FDCBC("Unlock (WFLockAppOperation)", 27);
        v107 = v106;
        sub_23E1FDCBC("Unlock", 6);
      }

      else
      {
        v105 = sub_23E1FDCBC("Toggle (WFLockAppOperation)", 27);
        v107 = v114;
        sub_23E1FDCBC("Toggle", 6);
      }

      sub_23E1FC14C();
      v115 = [v104 bundleURL];
      sub_23E1FBF9C();

      objc_allocWithZone(MEMORY[0x277CCAEB8]);
      v112 = v105;
      v113 = v107;
    }

    else
    {
      v108 = sub_23E1FDCBC("Lock (WFLockAppOperation)", 25);
      v110 = v109;
      sub_23E1FDCBC("Lock", 4);
      sub_23E1FC14C();
      v111 = [v104 bundleURL];
      sub_23E1FBF9C();

      objc_allocWithZone(MEMORY[0x277CCAEB8]);
      v112 = v108;
      v113 = v110;
    }

    sub_23DE477A0(v112, v113);
    ++v103;
    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
  }

  while (v103 != 3);
  v203 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  v205 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v116 = v213;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v118 = v206;
  *(v206 + 160) = v116;
  v119 = *MEMORY[0x277D7CE70];
  v118[23] = v117;
  v118[24] = v119;
  v118[25] = 0xD000000000000012;
  v118[26] = 0x800000023E255490;
  v120 = *MEMORY[0x277D7CE80];
  v118[28] = MEMORY[0x277D837D0];
  v118[29] = v120;
  v121 = v119;
  v122 = v120;
  v197 = v121;
  v198 = v122;
  v123 = sub_23E1FDCBC("Operation (WFLockAppOperation)", 30);
  v125 = v124;
  sub_23E1FDCBC("Operation", 9);
  sub_23E1FC14C();
  v126 = [v104 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v123, v125);
  v118[33] = v210;
  v118[30] = v128;
  _s3__C3KeyVMa_0(0);
  v200 = v129;
  v199 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v130 = sub_23E1FDABC();
  v131 = sub_23DF3BE9C(v130);
  *(v207 + 32) = v131;
  v132 = swift_allocObject();
  v133 = MEMORY[0x277D7CDE8];
  *(v132 + 16) = xmmword_23E224710;
  v134 = *v133;
  *(v132 + 32) = v134;
  *(v132 + 40) = 0x7070416E65704FLL;
  *(v132 + 48) = 0xE700000000000000;
  v135 = MEMORY[0x277D837D0];
  v136 = v201;
  *(v132 + 64) = MEMORY[0x277D837D0];
  *(v132 + 72) = v136;
  *(v132 + 80) = 0xD000000000000014;
  *(v132 + 88) = 0x800000023E2554E0;
  v137 = v197;
  *(v132 + 104) = v135;
  *(v132 + 112) = v137;
  *(v132 + 120) = 0x7070414657;
  *(v132 + 128) = 0xE500000000000000;
  v138 = v198;
  *(v132 + 144) = v135;
  *(v132 + 152) = v138;
  v139 = v134;
  v140 = sub_23E1FDCBC("App (WFApp)", 11);
  v142 = v141;
  sub_23E1FDCBC("App", 3);
  sub_23E1FC14C();
  v143 = [v104 bundleURL];
  sub_23E1FBF9C();

  v144 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v140, v142);
  *(v132 + 160) = v145;
  v146 = *MEMORY[0x277D7CEA8];
  v147 = v210;
  *(v132 + 184) = v210;
  *(v132 + 192) = v146;
  v148 = v146;
  v149 = sub_23E1FDCBC("App (WFApp)", 11);
  v206 = v150;
  sub_23E1FDCBC("App", 3);
  sub_23E1FC14C();
  v151 = [v104 bundleURL];
  sub_23E1FBF9C();

  v152 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v149, v206);
  *(v132 + 224) = v147;
  *(v132 + 200) = v153;
  v154 = sub_23E1FDABC();
  v155 = sub_23DF3BE9C(v154);
  v156 = v207;
  *(v207 + 40) = v155;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v158 = v212;
  v212[45] = v156;
  v159 = *MEMORY[0x277D7CB98];
  v158[48] = v157;
  v158[49] = v159;
  v207 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_23E224C00;
  v160 = v159;
  v161 = sub_23E1FDCBC("${WFLockAppOperation} lock for ${WFApp}", 39);
  v163 = v162;
  sub_23E1FDCBC("${WFLockAppOperation} lock for ${WFApp}", 39);
  sub_23E1FC14C();
  v164 = [v104 bundleURL];
  sub_23E1FBF9C();

  v165 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v161, v163);
  v167 = v166;
  v168 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v169 = sub_23DF34C40(0xD00000000000001DLL, 0x800000023E255510, v167);
  v170 = v210;
  *(v210 + 32) = v169;
  v206 = "tion} lock for ${WFApp}";
  v171 = sub_23E1FDCBC("${WFLockAppOperation} ${WFApp}", 30);
  v173 = v172;
  sub_23E1FDCBC("${WFLockAppOperation} ${WFApp}", 30);
  sub_23E1FC14C();
  v174 = [v104 bundleURL];
  sub_23E1FBF9C();

  v175 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v171, v173);
  v177 = v176;
  v178 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v170 + 40) = sub_23DF34C40(0xD00000000000001BLL, v206 | 0x8000000000000000, v177);
  v179 = sub_23E1FDCBC("${WFLockAppOperation} ${WFApp}", 30);
  v181 = v180;
  sub_23E1FDCBC("${WFLockAppOperation} ${WFApp}", 30);
  sub_23E1FC14C();
  v182 = [v211 bundleURL];
  sub_23E1FBF9C();

  v183 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v179, v181);
  v185 = v184;
  v186 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v187 = sub_23DF34C40(0xD00000000000001DLL, 0x800000023E2555A0, v185);
  v188 = v210;
  *(v210 + 48) = v187;
  v189 = v207;
  v190 = sub_23DF333E0(v188);
  v191 = v212;
  v212[50] = v190;
  v192 = *MEMORY[0x277D7CF20];
  v191[53] = v189;
  v191[54] = v192;
  v191[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v191[55] = MEMORY[0x277D84F90];
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v193 = v192;
  v194 = sub_23E1FDABC();
  return sub_23DF3BF9C(v194);
}

id sub_23DED1CDC(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_23DED1D48()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;

  return sub_23DECFA88(v2, v3, v4);
}

uint64_t sub_23DED1DF8(id *a1)
{
  v1 = *a1;

  return sub_23DF05DD4(v1);
}

uint64_t sub_23DED1E48(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);

  return sub_23DECFEC4(a1, a2, a3);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_22_5()
{
}

void OUTLINED_FUNCTION_24_5(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[6] = v3;
  v2[7] = v4;
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1)
{

  return sub_23E1FE3FC();
}

id OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2)
{

  return sub_23DE56A08(a1, a2, 6, v2);
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_23E1FDABC();
}

uint64_t OUTLINED_FUNCTION_35_5()
{
}

_OWORD *sub_23DED20F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D218, &qword_23E228038);
    v1 = sub_23E1FE6CC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_23E1FB7CC();
  result = sub_23E1FB7BC();
  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    sub_23DE48110(*(a1 + 56) + 32 * v10, v29 + 8);
    *&v29[0] = v11;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v28 = v30;
    v12 = v11;
    sub_23DE36CA4((v27 + 8), &v25);
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D220, &qword_23E228040);
    swift_dynamicCast();
    sub_23DE36CA4((v26 + 8), v24);
    sub_23DE36CA4(v24, v26);
    sub_23E1FDC1C();
    sub_23E1FE84C();
    sub_23E1FDCCC();
    v14 = sub_23E1FE87C();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v18) = v12;
    result = sub_23DE36CA4(v26, (*(v1 + 56) + 32 * v18));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

_OWORD *sub_23DED23C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D210, &qword_23E228030);
    v1 = sub_23E1FE6CC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_23E1FB7CC();
  result = sub_23E1FB7BC();
  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v24 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_23DE36CA4((v25 + 8), v23);
    sub_23DE36CA4(v23, v25);
    sub_23E1FDC1C();
    sub_23E1FE84C();
    sub_23E1FDCCC();
    v13 = sub_23E1FE87C();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v17) = v12;
    result = sub_23DE36CA4(v25, (*(v1 + 56) + 32 * v17));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23DED2670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_23DED2680(uint64_t a1, uint64_t a2, char a3)
{
  sub_23E1FB7BC();
  if (a3)
  {
    sub_23E1FDCBC("Cannot reduce file size of %@", 29);
  }

  else
  {
    sub_23E1FDCBC("Cannot read input file %@", 25);
  }

  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v6 = qword_280DAE278;
  v7 = sub_23E1FDBDC();
  v8 = sub_23E1FDBDC();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  sub_23E1FDC1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D140, &qword_23E227E40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23E222340;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_23DEADED0();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v12 = sub_23E1FDC4C();
  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v16;
  *(inited + 72) = v11;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  return sub_23E1FDABC();
}

uint64_t sub_23DED2880(uint64_t a1)
{
  v2 = sub_23DED396C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DED28BC(uint64_t a1)
{
  v2 = sub_23DED396C();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_23DED28F8(void *a1)
{
  v2 = v1;
  v4 = sub_23E1FCC8C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
  sub_23E1FCC1C();
  v7 = sub_23DE8928C(v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  aBlock[4] = sub_23DED3750;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DED30E0;
  aBlock[3] = &block_descriptor_13;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  [a1 getFileRepresentations:v9 forType:v7];
  _Block_release(v9);
}

void sub_23DED2A5C(uint64_t a1, uint64_t a2, id a3)
{
  v6 = sub_23E1FBFBC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v65 = &v56 - v13;
  if (a1)
  {
    v64 = sub_23DE4D8B0();
    v14 = 0;
    v62 = a1 & 0xC000000000000001;
    v60 = (v7 + 32);
    v59 = *MEMORY[0x277CBF5D0];
    v56 = (v7 + 8);
    v58 = xmmword_23E222340;
    v57 = v6;
    v61 = a3;
    while (1)
    {
      if (v64 == v14)
      {
        [a3 finishRunningWithError_];
        return;
      }

      v15 = v62;
      sub_23DE59014();
      v16 = v15 ? MEMORY[0x23EF04DD0](v14, a1) : *(a1 + 8 * v14 + 32);
      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v66 = v14;
      sub_23DED31EC(v16);
      sub_23DE38DA8(0, &qword_27E32D1F0, 0x277CD93D0);
      v18 = [v17 fileURL];
      v19 = v65;
      sub_23E1FBF9C();

      v20 = sub_23DED3044(v19);
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20;
      v22 = objc_opt_self();
      v23 = sub_23E1FDBDC();
      v24 = [v22 proposedSharedTemporaryFileURLForFilename_];

      if (!v24)
      {

LABEL_23:

        v48 = [v17 filename];
        v49 = sub_23E1FDC1C();
        v51 = v50;

        sub_23DED3770();
        v52 = swift_allocError();
        *v53 = v49;
        *(v53 + 8) = v51;
        *(v53 + 16) = 0;
        v54 = sub_23E1FBEBC();
        v55 = sub_23E1FBEBC();

        [a3 finishRunningWithError_];
        return;
      }

      v25 = v63;
      sub_23E1FBF9C();

      (*v60)(v12, v25, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D200, "l~\a");
      inited = swift_initStackObject();
      *(inited + 16) = v58;
      v27 = v59;
      *(inited + 32) = v59;
      *(inited + 40) = 1;
      type metadata accessor for PDFDocumentWriteOption(0);
      sub_23DED37C4();
      v28 = v27;
      v29 = sub_23E1FDABC();
      v30 = sub_23E1FBF6C();
      v31 = sub_23DED23C0(v29);
      v32 = sub_23DED381C(v30, v31, v21);

      if ((v32 & 1) == 0 || (v33 = objc_opt_self(), v34 = sub_23E1FBF6C(), v35 = [v33 fileWithURL:v34 options:1], v34, !v35))
      {

        v39 = [v17 filename];
        v40 = sub_23E1FDC1C();
        v42 = v41;

        sub_23DED3770();
        v43 = swift_allocError();
        *v44 = v40;
        *(v44 + 8) = v42;
        *(v44 + 16) = 1;
        v45 = sub_23E1FBEBC();
        v46 = sub_23E1FBEBC();

        [v61 finishRunningWithError_];
        (*v56)(v12, v57);
        return;
      }

      a3 = v61;
      v36 = [v61 output];
      if (!v36)
      {
        goto LABEL_26;
      }

      v37 = v36;

      [v37 addFile_];

      v6 = v57;
      (*v56)(v12, v57);
      v14 = v66 + 1;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v38 = sub_23E1FBEBC();
    }

    else
    {
      v38 = 0;
    }

    v66 = v38;
    [a3 finishRunningWithError_];
    v47 = v66;
  }
}

id sub_23DED3044(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FBF6C();
  v4 = [v2 initWithURL_];

  v5 = sub_23E1FBFBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_23DED30E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_23DE38DA8(0, &qword_27E32D1E8, 0x277CFC3C8);
    v4 = sub_23E1FDDEC();
  }

  sub_23E1FB7CC();
  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_23DED31EC(void *a1)
{
  v2 = sub_23E1FBFBC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v24 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = [a1 filename];
  sub_23E1FDC1C();

  sub_23E1FBF4C();

  sub_23E1FBF7C();
  sub_23E1FBF5C();
  v13 = *(v3 + 8);
  v25 = v2;
  v13(v9, v2);
  v24[1] = sub_23E1FBF2C();
  v24[2] = v14;
  v15 = sub_23E1FDBDC();

  sub_23E1FDCBC("%@ Compressed", 13);
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v16 = qword_280DAE278;
  v17 = sub_23E1FDBDC();
  v18 = sub_23E1FDBDC();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  if (!v19)
  {
    sub_23E1FDC1C();
    v19 = sub_23E1FDBDC();
  }

  v20 = [v15 wf:v19 filenameTruncatedToMaximumLengthWithFormat:?];

  sub_23E1FDC1C();
  sub_23E1FBF4C();

  sub_23E1FBF8C();

  v21 = v25;
  v13(v6, v25);
  v22 = sub_23E1FBF5C();
  v13(v9, v21);
  v13(v11, v21);
  return v22;
}

id sub_23DED351C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for CompressPDFAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DED3698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompressPDFAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DED36F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompressPDFAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

unint64_t sub_23DED3770()
{
  result = qword_27E32D1F8;
  if (!qword_27E32D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D1F8);
  }

  return result;
}

unint64_t sub_23DED37C4()
{
  result = qword_27E32BD80;
  if (!qword_27E32BD80)
  {
    type metadata accessor for PDFDocumentWriteOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32BD80);
  }

  return result;
}

id sub_23DED381C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PDFDocumentWriteOption(0);
  sub_23DED37C4();
  v5 = sub_23E1FDA9C();

  v6 = [a3 writeToURL:a1 withOptions:v5];

  return v6;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DED38C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DED3908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_23DED396C()
{
  result = qword_27E32D228;
  if (!qword_27E32D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D228);
  }

  return result;
}

id sub_23DED39FC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  v39 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E2235A0;
  v4 = *v3;
  v5 = MEMORY[0x277D837D0];
  *(inited + 32) = v4;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v6 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v4;
  v8 = v6;
  v9 = sub_23E1FDCBC("uppercase|lowercase|title|transform|text|capitalize", 51, v39);
  v11 = v10;
  sub_23E1FDCBC("uppercase|lowercase|title|transform|text|capitalize", 51);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v9, v11);
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB48];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  *(inited + 120) = 0xD000000000000014;
  *(inited + 128) = 0x800000023E2558B0;
  v18 = *MEMORY[0x277D7CB60];
  *(inited + 144) = v5;
  *(inited + 152) = v18;
  *(inited + 184) = v5;
  *(inited + 160) = 0x6D726F6674786574;
  *(inited + 168) = 0xEA00000000007461;
  v19 = v17;
  v20 = v18;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 224) = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  *(inited + 232) = sub_23E1FDBDC();
  *(inited + 240) = 0xD000000000000050;
  *(inited + 248) = 0x800000023E2558D0;
  v21 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v5;
  *(inited + 272) = v21;
  v22 = v21;
  v23 = sub_23E1FDABC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 304) = v24;
  *(inited + 280) = v23;
  *(inited + 312) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222340;
  *(v25 + 32) = 1701869940;
  *(v25 + 40) = 0xE400000000000000;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_23E222370;
  v27 = *MEMORY[0x277D7CE58];
  *(v26 + 32) = *MEMORY[0x277D7CE58];
  v28 = v27;
  *(v26 + 40) = sub_23E1FDABC();
  v29 = *MEMORY[0x277D7CE70];
  *(v26 + 64) = v24;
  *(v26 + 72) = v29;
  *(v26 + 104) = v5;
  *(v26 + 80) = 0x7954657361434657;
  *(v26 + 88) = 0xEA00000000006570;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v30 = v29;
  v31 = sub_23E1FDABC();
  *(v25 + 48) = sub_23DF3BE9C(v31);
  v32 = sub_23E1FDABC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v34 = MEMORY[0x277D7CB78];
  *(inited + 320) = v32;
  v35 = *v34;
  *(inited + 344) = v33;
  *(inited + 352) = v35;
  *(inited + 384) = MEMORY[0x277D839B0];
  *(inited + 360) = 1;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v36 = v35;
  v37 = sub_23E1FDABC();
  return sub_23DF3BF9C(v37);
}

uint64_t WFAction.toolkitUnitType.getter()
{
  v1 = [v0 outputMeasurementUnitType];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = sub_23E1FE2BC();

  return v3;
}

id sub_23DED4074()
{
  v84 = sub_23E1FD89C();
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v80 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  v82 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v4 = *MEMORY[0x277D7CB18];
  v5 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E255980;
  v6 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v4;
  v8 = v6;
  v9 = sub_23E1FDCBC("keychain", 8);
  v11 = v10;
  sub_23E1FDCBC("keychain", 8);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v86 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v9, v11);
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v85 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v17;
  v19 = sub_23E1FDABC();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v80 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  v26 = sub_23E1FDCBC("Returns the password of your Personal Hotspot.", 46);
  v28 = v27;
  sub_23E1FDCBC("Returns the password of your Personal Hotspot.", 46);
  sub_23E1FC14C();
  v29 = [v86 bundleURL];
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v26, v28);
  *(v22 + 64) = v85;
  *(v22 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v32 = sub_23E1FDABC();
  v33 = v80;
  *(inited + 160) = sub_23DF3BE54(v32);
  v34 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v33;
  *(inited + 192) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v80 = v35;
  *(inited + 200) = &unk_285024908;
  v36 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v35;
  *(inited + 232) = v36;
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v37 = *MEMORY[0x277D7CB60];
  v38 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v37;
  *(inited + 280) = 0x6C616E6F73726570;
  *(inited + 288) = 0xEF746F7073746F68;
  v39 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v38;
  *(inited + 312) = v39;
  v40 = v34;
  v41 = v36;
  v42 = v37;
  v43 = v39;
  v44 = sub_23E1FDCBC("Get Hotspot Password (Action Name)", 34);
  v46 = v45;
  sub_23E1FDCBC("Get Hotspot Password", 20);
  sub_23E1FC14C();
  v47 = v86;
  v48 = [v86 bundleURL];
  sub_23E1FBF9C();

  v49 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v44, v46);
  *(inited + 320) = v50;
  v51 = *MEMORY[0x277D7CDD0];
  *(inited + 344) = v85;
  *(inited + 352) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_23E222350;
  *(v52 + 32) = 0x75736F6C63736944;
  *(v52 + 40) = 0xEF6C6576654C6572;
  *(v52 + 48) = 0x65746176697250;
  *(v52 + 56) = 0xE700000000000000;
  *(v52 + 72) = MEMORY[0x277D837D0];
  *(v52 + 80) = 0x656C7069746C754DLL;
  *(v52 + 88) = 0xE800000000000000;
  v53 = MEMORY[0x277D839B0];
  *(v52 + 96) = 0;
  *(v52 + 120) = v53;
  *(v52 + 128) = 0x614E74757074754FLL;
  *(v52 + 136) = 0xEA0000000000656DLL;
  v54 = v51;
  v55 = sub_23E1FDCBC("Personal Hotspot Password (Default Output Name)", 47);
  v57 = v56;
  sub_23E1FDCBC("Personal Hotspot Password", 25);
  sub_23E1FC14C();
  v58 = [v47 bundleURL];
  sub_23E1FBF9C();

  v59 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v55, v57);
  *(v52 + 144) = v60;
  *(v52 + 168) = v85;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 216) = v80;
  *(v52 + 184) = 0xE500000000000000;
  *(v52 + 192) = &unk_285024948;
  v61 = sub_23E1FDABC();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 360) = v61;
  v63 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v62;
  *(inited + 392) = v63;
  v64 = v63;
  v65 = sub_23E1FDCBC("Get Personal Hotspot password (Parameter Summary)", 49);
  v67 = v66;
  sub_23E1FDCBC("Get Personal Hotspot password", 29);
  sub_23E1FC14C();
  v68 = [v86 bundleURL];
  sub_23E1FBF9C();

  v69 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v65, v67);
  v71 = v70;
  v72 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v73 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v72;
  v74 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v73;
  *(inited + 432) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_23E2235B0;
  (*(v81 + 104))(v83, *MEMORY[0x277D732F0], v84);
  v76 = objc_allocWithZone(sub_23E1FC85C());
  v77 = v74;
  *(v75 + 32) = sub_23E1FC84C();
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C480, &qword_23E224258);
  *(inited + 440) = v75;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v78 = sub_23E1FDABC();
  return sub_23DF3BF9C(v78);
}

unint64_t sub_23DED4A7C()
{
  result = qword_280DAEF60;
  if (!qword_280DAEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF60);
  }

  return result;
}

unint64_t sub_23DED4AD4()
{
  result = qword_280DAEF50;
  if (!qword_280DAEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF50);
  }

  return result;
}

unint64_t sub_23DED4B2C()
{
  result = qword_280DAEF28;
  if (!qword_280DAEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF28);
  }

  return result;
}

unint64_t sub_23DED4B80()
{
  result = qword_280DAE4B0;
  if (!qword_280DAE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4B0);
  }

  return result;
}

void sub_23DED4C08(void *a1)
{
  v2 = [objc_allocWithZone(WFCellularPlansManager) init];
  v3 = [v2 allPlans];

  sub_23DED9464();
  v4 = sub_23E1FDDEC();

  v5 = sub_23DE4D8B0();
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {
      for (i = 0; v5 != i; ++i)
      {
        if (v7)
        {
          v17 = MEMORY[0x23EF04DD0](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v17 = *(v4 + 8 * i + 32);
        }

        v18 = v17;
        if (__OFADD__(i, 1))
        {
          goto LABEL_34;
        }

        v19 = [v17 label];
        v20 = sub_23E1FDC1C();
        v22 = v21;

        sub_23E1FB55C();
        if (v20 == v25 && v22 == v26)
        {

          goto LABEL_31;
        }

        v24 = sub_23E1FE75C();

        if (v24)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_31;
    }

    if (v7)
    {
      v8 = MEMORY[0x23EF04DD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v10 = [v8 iccid];
    v11 = sub_23E1FDC1C();
    v13 = v12;

    if (v11 == *a1 && v13 == a1[1])
    {

LABEL_31:

      return;
    }

    v15 = sub_23E1FE75C();

    if (v15)
    {
      goto LABEL_31;
    }

    ++v6;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_23DED4E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_3();
  v2 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  *v8 = sub_23E1FDC1C();
  v8[1] = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D7BF38], v2);
  OUTLINED_FUNCTION_27_5();
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v15 = *MEMORY[0x277D7CB10];
  *(inited + 32) = *MEMORY[0x277D7CB10];
  v16 = v15;
  v17 = sub_23E1FDABC();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 40) = v17;
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v18 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DED50AC()
{
  v1 = *v0;
  sub_23E1FB7BC();
  return v1;
}

void sub_23DED52DC()
{
  OUTLINED_FUNCTION_90();
  v35 = v0;
  v33 = sub_23E1FDB4C();
  OUTLINED_FUNCTION_3_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v31 = v5 - v4;
  OUTLINED_FUNCTION_15_6();
  v6 = sub_23E1FDBAC();
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v9);
  v34 = &v29 - v10;
  OUTLINED_FUNCTION_15_6();
  v11 = sub_23E1FBEEC();
  v30 = v11;
  OUTLINED_FUNCTION_3_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_23E1FC1DC();
  v19 = OUTLINED_FUNCTION_25(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v20 = sub_23E1FDBCC();
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v32 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v22 = *MEMORY[0x277CC9110];
  v23 = *(v13 + 104);
  v29 = v13 + 104;
  v23(v17, v22, v11);
  OUTLINED_FUNCTION_2_5();
  sub_23E1FBF1C();
  sub_23E1FDB9C();
  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  v24 = v31;
  v25 = v33;
  (*(v2 + 104))(v31, *MEMORY[0x277CC9BD8], v33);
  sub_23E1FDB6C();
  (*(v2 + 8))(v24, v25);
  sub_23E1FDB8C();
  sub_23E1FDBBC();
  sub_23E1FC19C();
  v23(v17, v22, v30);
  OUTLINED_FUNCTION_0_18();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v32);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DED56A8()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - v9;
  OUTLINED_FUNCTION_15_6();
  v42 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15();
  v43 = v11 - v10;
  OUTLINED_FUNCTION_15_6();
  v12 = sub_23E1FDBAC();
  v13 = OUTLINED_FUNCTION_25(v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D338, &qword_23E2288B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222370;
  sub_23E1FB55C();
  *(inited + 32) = v46;
  sub_23E1FB55C();
  v18 = 0;
  v19 = *(&v46 + 1);
  *(inited + 48) = v46;
  *(inited + 56) = v19;
  v20 = MEMORY[0x277D84F90];
LABEL_2:
  v21 = (inited + 40 + 16 * v18);
  while (++v18 != 3)
  {
    v22 = v21 + 2;
    v23 = *v21;
    v21 += 2;
    if (v23)
    {
      v40 = v16;
      v41 = v3;
      v24 = *(v22 - 3);
      sub_23E1FB7BC();
      v25 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4CB98();
        v20 = v28;
      }

      v26 = *(v20 + 16);
      if (v26 >= *(v20 + 24) >> 1)
      {
        sub_23DE4CB98();
        v20 = v29;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v16 = v40;
      v1 = v25;
      v3 = v41;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_23DF0332C();
  *&v46 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  sub_23DE66434(&qword_27E32C420, &unk_27E32BA60, &unk_23E222770, MEMORY[0x277D83958]);
  sub_23E1FDB0C();

  sub_23E1FDB9C();
  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FB55C();
  sub_23E1FDB7C();

  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  sub_23E1FDB9C();
  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FDB7C();

  OUTLINED_FUNCTION_16_8();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v42);
  sub_23E1FB55C();
  sub_23DED5AF8(1, v46, *(&v46 + 1));
  v33 = sub_23E1FE43C();
  v35 = v34;

  *&v46 = v33;
  *(&v46 + 1) = v35;
  MEMORY[0x23EF044F0](0x2E6572617571732ELL, 0xEC0000006C6C6966);
  sub_23E1FB71C();
  sub_23E1FB75C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_23E1FB76C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DED5AF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23E1FDCEC();
    v3 = sub_23E1FDD8C();

    return v3;
  }

  return result;
}

uint64_t sub_23DED5BB8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_23DE5CAB8(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_23DE58DB0(0);

      return v5;
    }
  }

  __break(1u);
  return result;
}