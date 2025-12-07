uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_266ABDAD4();
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_266A66D34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266A66DF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_266A68ADC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_266A66DF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266A69C0C(a5, a6);
    *a1 = v9;
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
    result = sub_266ABDF04();
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

void sub_266A66EF8(void *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v341 = *MEMORY[0x277D85DE8];
  sub_266ABD5C4();
  OUTLINED_FUNCTION_1_0();
  v318 = v10;
  v319 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v317 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2360, &qword_266AC3668);
  MEMORY[0x28223BE20](v13 - 8);
  v315 = &v278[-v14];
  OUTLINED_FUNCTION_11_5();
  v316 = sub_266ABD634();
  OUTLINED_FUNCTION_1_0();
  v314 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v313 = v18 - v17;
  OUTLINED_FUNCTION_11_5();
  v19 = sub_266ABD4B4();
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_2();
  v321 = v21 - v20;
  OUTLINED_FUNCTION_11_5();
  sub_266ABD7F4();
  OUTLINED_FUNCTION_1_0();
  v323 = v23;
  v324 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v322 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v26 - 8);
  v328 = &v278[-v27];
  v28 = OUTLINED_FUNCTION_11_5();
  v29 = type metadata accessor for ParticipantModel(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27();
  v325 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v278[-v32];
  v34 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v330 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_27();
  v311 = v37;
  v39 = MEMORY[0x28223BE20](v38);
  v327 = &v278[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v329 = &v278[-v42];
  v44 = [sub_266A9D630(v41 v43)];
  swift_unknownObjectRelease();
  if (!v44)
  {
    if (qword_280BB6C30 != -1)
    {
LABEL_117:
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v50 = sub_266ABD8D4();
    __swift_project_value_buffer(v50, qword_280BB7028);
    v333 = sub_266ABD8C4();
    v51 = sub_266ABDD64();
    if (os_log_type_enabled(v333, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_266A65000, v333, v51, "#feedback FeedbackService - Device unable to process received participation. Returning.", v52, 2u);
      OUTLINED_FUNCTION_8();
    }

    v53 = v333;

    return;
  }

  v312 = v33;
  v326 = v34;
  v331 = a1;
  v45 = [a1 device];
  v309 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals;
  v46 = [*&v5[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals] localDeviceAssistantIdentifier];
  if (v46)
  {
    v33 = v46;
    v47 = sub_266ABDA84();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v54.value._countAndFlagsBits = v47;
  v54.value._object = v49;
  SCDAFDevice.asDevice(assistantIdentifier:)(&v340, v54);

  v55 = v331;
  v56 = [v331 winnerAdvertisement];
  if (v56)
  {
    v57 = v56;
    sub_266A6ACDC(&v339);

    countAndFlagsBits = v339.idsId.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0x9000000000000;
  }

  v307 = countAndFlagsBits;
  v59 = [v55 advertisement];
  if (v59)
  {
    v60 = v59;
    sub_266A6ACDC(&v339);

    v61 = v339.idsId.value._countAndFlagsBits;
  }

  else
  {
    v61 = 0x9000000000000;
  }

  v308 = v61;
  v62 = [v55 seenAdvertisements];
  sub_266A6AE78(0, &qword_2800B2368, off_279BD98D8);
  OUTLINED_FUNCTION_12_5();
  v63 = sub_266ABDC24();

  v64 = sub_266A6AF84(v63);
  v320 = v29;
  v332 = v5;
  v305 = a2;
  v306 = a3;
  if (v64)
  {
    v65 = v64;
    v339.idsId.value._countAndFlagsBits = MEMORY[0x277D84F90];
    sub_266A6AFB0(0, v64 & ~(v64 >> 63), 0);
    if (v65 < 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    v333 = v65;
    v33 = 0;
    v66 = v339.idsId.value._countAndFlagsBits;
    v67 = v63 & 0xC000000000000001;
    v68 = v63;
    do
    {
      v69 = v66;
      if (v67)
      {
        v70 = MEMORY[0x26D5E8780](v33, v63);
      }

      else
      {
        v70 = *(v63 + 8 * v33 + 32);
      }

      v71 = v70;
      sub_266A6ACDC(&v338);

      v4.i32[0] = v338;
      v72 = WORD2(v338);
      v73 = BYTE6(v338);
      v74 = HIBYTE(v338);
      v66 = v69;
      v339.idsId.value._countAndFlagsBits = v69;
      v75 = *(v69 + 16);
      v76 = *(v66 + 24);
      if (v75 >= v76 >> 1)
      {
        v79 = OUTLINED_FUNCTION_14(v76);
        sub_266A6AFB0(v79, v75 + 1, 1);
        v66 = v339.idsId.value._countAndFlagsBits;
      }

      v77 = vmovl_u8(v4).u64[0];
      *(v66 + 16) = v75 + 1;
      v78 = v66 + 8 * v75;
      *(v78 + 32) = vuzp1_s8(v77, v77).u32[0];
      ++v33;
      *(v78 + 36) = v72;
      *(v78 + 38) = v73;
      *(v78 + 39) = v74;
      v63 = v68;
    }

    while (v333 != v33);
    v310 = v66;

    v55 = v331;
  }

  else
  {

    v310 = MEMORY[0x277D84F90];
  }

  v80 = [v55 nearbyDevices];
  sub_266A6AE78(0, &qword_2800B2370, off_279BD98E8);
  OUTLINED_FUNCTION_12_5();
  v81 = sub_266ABDC24();

  v82 = sub_266A6AF84(v81);
  if (!v82)
  {

    v333 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v33 = v82;
  v83 = OUTLINED_FUNCTION_7_7(MEMORY[0x277D84F90]);
  sub_266A6BD88(v83, v84, v85);
  if (v33 < 0)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v86 = 0;
  v333 = v338;
  v87 = v33 - 1;
  v88 = v309;
  if ((v81 & 0xC000000000000001) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  for (i = MEMORY[0x26D5E8780](v86, v81); ; i = *(v81 + 8 * v86 + 32))
  {
    v90 = i;
    v91 = [*(&v88->isa + v332) localDeviceAssistantIdentifier];
    if (v91)
    {
      v92 = v91;
      v93 = sub_266ABDA84();
      v95 = v94;
    }

    else
    {
      v93 = 0;
      v95 = 0;
    }

    v96.value._countAndFlagsBits = v93;
    v96.value._object = v95;
    SCDAFDevice.asDevice(assistantIdentifier:)(&v339, v96);

    v97 = v333;
    v338 = v333;
    isa = v333[2].isa;
    v98 = v333[3].isa;
    v33 = isa + 1;
    if (isa >= v98 >> 1)
    {
      v100 = OUTLINED_FUNCTION_14(v98);
      sub_266A6BD88(v100, isa + 1, 1);
      v97 = v338;
    }

    v97[2].isa = v33;
    v333 = v97;
    memcpy(&v97[21 * isa + 4], &v339, 0xA8uLL);
    if (v87 == v86)
    {
      break;
    }

    ++v86;
    if ((v81 & 0xC000000000000001) != 0)
    {
      goto LABEL_31;
    }

LABEL_32:
    ;
  }

LABEL_43:
  v101 = v331;
  v102 = [v331 boosts];
  sub_266A6AE78(0, &qword_2800B2378, off_279BD98E0);
  OUTLINED_FUNCTION_12_5();
  v103 = sub_266ABDC24();

  v104 = sub_266A6AF84(v103);
  if (!v104)
  {

    v309 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v105 = v104;
  OUTLINED_FUNCTION_7_7(MEMORY[0x277D84F90]);
  sub_266A98C68();
  if (v105 < 0)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v106 = 0;
  v107 = v338;
  do
  {
    if ((v103 & 0xC000000000000001) != 0)
    {
      v108 = MEMORY[0x26D5E8780](v106, v103);
    }

    else
    {
      v108 = *(v103 + 8 * v106 + 32);
    }

    v109 = v108;
    sub_266AA6FFC(&v339);

    v338 = v107;
    v111 = v107[2].isa;
    v110 = v107[3].isa;
    if (v111 >= v110 >> 1)
    {
      OUTLINED_FUNCTION_14(v110);
      sub_266A98C68();
    }

    ++v106;
    object = v339.build.value._object;
    v113 = v339.enclosureColor._countAndFlagsBits;
    v114 = __swift_mutable_project_boxed_opaque_existential_1(&v339, v339.build.value._object);
    MEMORY[0x28223BE20](v114);
    OUTLINED_FUNCTION_2();
    v117 = v116 - v115;
    (*(v118 + 16))(v116 - v115);
    sub_266A9E8BC(v111, v117, &v338, object, v113);
    __swift_destroy_boxed_opaque_existential_1Tm(&v339);
    v107 = v338;
  }

  while (v105 != v106);
  v309 = v338;

  v101 = v331;
LABEL_54:
  v119 = [v101 trumpReasons];
  sub_266A6AE78(0, &qword_2800B2380, 0x277CCABB0);
  v120 = sub_266ABDC24();

  v121 = sub_266A6AF84(v120);
  v122 = 0;
  v123 = MEMORY[0x277D84F90];
  while (v121 != v122)
  {
    if ((v120 & 0xC000000000000001) != 0)
    {
      v124 = MEMORY[0x26D5E8780](v122, v120);
    }

    else
    {
      if (v122 >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_116;
      }

      v124 = *(v120 + 8 * v122 + 32);
    }

    v125 = v124;
    if (__OFADD__(v122, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v126 = [v124 unsignedIntegerValue];

    if ((v126 - 1) >= 8)
    {
      LOBYTE(v126) = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_266A6D91C();
      v123 = v129;
    }

    v128 = *(v123 + 16);
    v127 = *(v123 + 24);
    if (v128 >= v127 >> 1)
    {
      OUTLINED_FUNCTION_14(v127);
      sub_266A6D91C();
      v123 = v130;
    }

    *(v123 + 16) = v128 + 1;
    *(v123 + v128 + 32) = v126;
    ++v122;
  }

  v33 = v331;
  v131 = [v331 requestStartDate];
  if (v131)
  {
    v132 = v131;
    v133 = v329;
    sub_266ABD774();

    v134 = v308;
    v135 = v308 & 0xFF000000000000;
    if ((v308 & 0xFF000000000000) == 0x9000000000000)
    {
      v136 = 0;
      v137 = 0;
      v308 = 0;
      v302 = 0;
      v303 = 0;
      v304 = 0;
      v138 = 0;
      v135 = 0;
      v301 = 0;
    }

    else
    {
      v301 = v308 & 0xFF00000000000000;
      v137 = sub_266A6D9F0();
      v138 = v134 & 0xFFFF00000000;
      v303 = v134 & 0xFF0000;
      v304 = v134 & 0xFF000000;
      v302 = v134 & 0xFF00;
      v308 = v134;
      v136 = &type metadata for AdvertisementModel;
    }

    v148 = v326;
    v339.build.value._object = &type metadata for DeviceModel;
    v339.enclosureColor._countAndFlagsBits = sub_266A6DA44();
    v339.idsId.value._countAndFlagsBits = swift_allocObject();
    memcpy((v339.idsId.value._countAndFlagsBits + 16), &v340, 0xA8uLL);
    v300 = sub_266A6DA98(v333);

    sub_266A6E0D4([v33 result], &v338);
    v149 = v338;
    [v33 rawGoodnessScore];
    v151 = v150;
    if ((*&v150 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v150 <= -1.0)
      {
        goto LABEL_122;
      }

      if (v150 < 256.0)
      {
        LODWORD(v333) = v149;
        (*(v330 + 16))(v327, v133, v148);
        v298 = sub_266A6E3AC(v310);

        v152 = [v33 userRequestText];
        v310 = sub_266ABDA84();
        v297 = v153;

        v154 = [v33 voiceTriggerDate];
        if (v154)
        {
          v155 = v154;
          v156 = v328;
          sub_266ABD774();

          v157 = 0;
        }

        else
        {
          v157 = 1;
          v156 = v328;
        }

        __swift_storeEnumTagSinglePayload(v156, v157, 1, v148);
        v158 = v307;
        v299 = v138;
        if ((v307 & 0xFF000000000000) == 0x9000000000000)
        {
          v289 = 0;
          v290 = 0;
          v295 = 0;
          v296 = 0;
          v307 = 0;
          v291 = 0;
          v292 = 0;
          v293 = 0;
          v294 = 0;
        }

        else
        {
          v294 = v307 & 0xFF00000000000000;
          v295 = v307 & 0xFF000000000000;
          v296 = sub_266A6D9F0();
          v292 = v158 & 0xFF000000;
          v293 = v158 & 0xFFFF00000000;
          v289 = v158 & 0xFF00;
          v290 = v158;
          v291 = v158 & 0xFF0000;
          v307 = &type metadata for AdvertisementModel;
        }

        v159 = [v33 requestId];
        v160 = sub_266ABDA84();
        v287 = v161;
        v288 = v160;

        v162 = [v33 cdaId];
        v163 = sub_266ABDA84();
        v285 = v164;
        v286 = v163;

        v165 = [v33 timerState];
        v166 = [v165 unsignedIntegerValue];

        sub_266A6E668(v166, &v337);
        v284 = v337;
        v167 = [v33 alarmState];
        v168 = [v167 unsignedIntegerValue];

        sub_266A6E668(v168, &v336);
        v283 = v336;
        v169 = [v33 mediaState];
        v170 = [v169 unsignedIntegerValue];

        sub_266A6E76C(v170, &v335);
        v282 = v335;
        v171 = [v33 triggerType];
        v172 = [v171 unsignedIntegerValue];

        sub_266A6E870(v172, &v334);
        v281 = v334;
        v173 = [v33 timeSinceLastWinInMilliseconds];
        v174 = v173;
        v175 = v137;
        if (v173)
        {
          v280 = [v173 integerValue];
        }

        else
        {
          v280 = 0;
        }

        v176 = [v33 timeSinceTriggerInMilliseconds];
        v177 = v176;
        v178 = v136;
        v179 = v301;
        if (v176)
        {
          v331 = [v176 integerValue];
        }

        else
        {
          v331 = 0;
        }

        LODWORD(v301) = v177 == 0;
        v279 = v174 == 0;
        v180 = v322;
        sub_266ABD7E4();
        v181 = sub_266ABD7C4();
        v183 = v182;
        (*(v323 + 8))(v180, v324);
        v33 = v312;
        *v312 = v302 | v308 | v303 | v304 | v299 | v135 | v179;
        *(v33 + 8) = 0;
        *(v33 + 16) = 0;
        *(v33 + 24) = v178;
        v184 = v309;
        *(v33 + 32) = v175;
        *(v33 + 40) = v184;
        sub_266A6DBC4(&v339.idsId.value._countAndFlagsBits, v33 + 48);
        *(v33 + 88) = xmmword_266AC35D0;
        *(v33 + 104) = v300;
        *(v33 + 112) = v333;
        *(v33 + 113) = v151;
        v185 = v320;
        (*(v330 + 32))(v33 + v320[11], v327, v326);
        *(v33 + v185[12]) = v298;
        *(v33 + v185[13]) = v123;
        v186 = (v33 + v185[14]);
        v187 = v297;
        *v186 = v310;
        v186[1] = v187;
        sub_266A6E974(v328, v33 + v185[15]);
        v188 = (v33 + v185[16]);
        *v188 = v289 | v290 | v291 | v292 | v293 | v295 | v294;
        v188[1] = 0;
        v189 = v307;
        v188[2] = 0;
        v188[3] = v189;
        v188[4] = v296;
        v190 = (v33 + v185[17]);
        v191 = v287;
        *v190 = v288;
        v190[1] = v191;
        v192 = (v33 + v185[18]);
        v193 = v285;
        *v192 = v286;
        v192[1] = v193;
        LOBYTE(v193) = v283;
        *(v33 + v185[19]) = v284;
        *(v33 + v185[20]) = v193;
        LOBYTE(v193) = v281;
        *(v33 + v185[21]) = v282;
        *(v33 + v185[22]) = v193;
        v194 = (v33 + v185[23]);
        *v194 = 0;
        v194[1] = 0;
        v195 = v33 + v185[24];
        *v195 = v280;
        *(v195 + 8) = v279;
        v196 = v33 + v185[25];
        *v196 = v331;
        *(v196 + 8) = v301;
        v197 = (v33 + v185[26]);
        *v197 = v181;
        v197[1] = v183;
        if (qword_280BB6C30 == -1)
        {
LABEL_93:
          v198 = sub_266ABD8D4();
          v199 = __swift_project_value_buffer(v198, qword_280BB7028);
          v200 = v325;
          sub_266A6E9E4(v33, v325);
          v201 = sub_266ABD8C4();
          v202 = sub_266ABDD44();
          if (os_log_type_enabled(v201, v202))
          {
            v203 = OUTLINED_FUNCTION_25();
            v204 = OUTLINED_FUNCTION_23();
            v339.idsId.value._countAndFlagsBits = v204;
            *v203 = 136315138;
            ParticipantModel.description.getter();
            v206 = v205;
            v208 = v207;
            sub_266A6A63C(v200);
            v209 = sub_266A66D34(v206, v208, &v339.idsId.value._countAndFlagsBits);

            *(v203 + 4) = v209;
            _os_log_impl(&dword_266A65000, v201, v202, "#feedback FeedbackService - converted into model: %s", v203, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v204);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_8();
          }

          else
          {

            sub_266A6A63C(v200);
          }

          v210 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
          v211 = [v210 UUIDString];

          v212 = sub_266ABDA84();
          v214 = v213;

          sub_266ABD4F4();
          swift_allocObject();
          sub_266ABD4E4();
          sub_266ABD4A4();
          sub_266ABD4C4();
          sub_266A7008C(&qword_2800B2158);
          v215 = sub_266ABD4D4();
          v327 = v212;
          v328 = v215;
          v331 = v216;
          v333 = v199;
          v325 = objc_opt_self();
          v217 = [v325 defaultManager];
          v218 = v316;
          __swift_storeEnumTagSinglePayload(v315, 1, 1, v316);
          (*(v318 + 104))(v317, *MEMORY[0x277CC91D8], v319);
          v219 = v306;

          v220 = v313;
          v221 = v305;
          sub_266ABD624();
          v222 = sub_266ABD5F4();
          (*(v314 + 8))(v220, v218);
          v339.idsId.value._countAndFlagsBits = 0;
          LODWORD(v218) = [v217 createDirectoryAtURL:v222 withIntermediateDirectories:1 attributes:0 error:&v339];

          v223 = v339.idsId.value._countAndFlagsBits;
          if (v218)
          {
            v339.idsId.value._countAndFlagsBits = v221;
            v339.idsId.value._object = v219;

            v224 = v223;
            MEMORY[0x26D5E83C0](v327, v214);

            MEMORY[0x26D5E83C0](0x6E6F736A2ELL, 0xE500000000000000);
            v226 = v339.idsId.value._countAndFlagsBits;
            v225 = v339.idsId.value._object;
            v227 = [v325 defaultManager];
            v228 = sub_266ABDA74();
            OUTLINED_FUNCTION_14_4();
            v229 = sub_266ABD6D4();
            v230 = [v227 createFileAtPath:v228 contents:v229 attributes:0];

            v231 = sub_266ABD8C4();
            v232 = sub_266ABDD44();

            if (os_log_type_enabled(v231, v232))
            {
              v233 = swift_slowAlloc();
              v234 = OUTLINED_FUNCTION_23();
              v339.idsId.value._countAndFlagsBits = v234;
              *v233 = 136315394;
              v235 = sub_266A66D34(v226, v225, &v339.idsId.value._countAndFlagsBits);

              *(v233 + 4) = v235;
              *(v233 + 12) = 1024;
              *(v233 + 14) = v230;
              _os_log_impl(&dword_266A65000, v231, v232, "#feedback FeedbackService - created file at: %s, saved:%{BOOL}d", v233, 0x12u);
              __swift_destroy_boxed_opaque_existential_1Tm(v234);
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_8();
            }

            else
            {
            }

            v253 = v332;
            v254 = sub_266ABD8C4();
            v255 = sub_266ABDD44();

            if (os_log_type_enabled(v254, v255))
            {
              v256 = OUTLINED_FUNCTION_25();
              v257 = OUTLINED_FUNCTION_23();
              v339.idsId.value._countAndFlagsBits = v257;
              *v256 = 136315138;
              sub_266A68D30();
              v258 = sub_266A68DB0();

              if (v258)
              {
                v259 = 1702195828;
              }

              else
              {
                v259 = 0x65736C6166;
              }

              if (v258)
              {
                v260 = 0xE400000000000000;
              }

              else
              {
                v260 = 0xE500000000000000;
              }

              v261 = sub_266A66D34(v259, v260, &v339.idsId.value._countAndFlagsBits);

              *(v256 + 4) = v261;
              _os_log_impl(&dword_266A65000, v254, v255, "#feedback FeedbackService - shouldPromptForFeedback: %s", v256, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v257);
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_8();
            }

            v262 = v320;
            sub_266A68D30();
            v263 = sub_266A68DB0();

            if (v263)
            {
              v264 = sub_266A9D49C();
              v266 = v265;
              ObjectType = swift_getObjectType();
              v339.build.value._object = v262;
              v339.enclosureColor._countAndFlagsBits = sub_266A7008C(&qword_2800B1DA0);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v339.idsId.value._countAndFlagsBits);
              v269 = v312;
              sub_266A6E9E4(v312, boxed_opaque_existential_1);
              (*(v266 + 32))(&v339, ObjectType, v266);

              __swift_destroy_boxed_opaque_existential_1Tm(&v339);

              v270 = v311;
              sub_266ABD784();
              sub_266A8EA2C(v270);
              v271 = OUTLINED_FUNCTION_14_4();
              sub_266A6A5B4(v271, v272);

              v273 = *(v330 + 8);
              v274 = v270;
              v275 = v326;
              v273(v274, v326);
              sub_266A6A63C(v269);
              v273(v329, v275);
              return;
            }

            v276 = OUTLINED_FUNCTION_14_4();
            sub_266A6A5B4(v276, v277);

            v252 = v312;
          }

          else
          {
            v236 = v339.idsId.value._countAndFlagsBits;

            v237 = sub_266ABD594();

            swift_willThrow();
            v238 = OUTLINED_FUNCTION_14_4();
            sub_266A6A5B4(v238, v239);
            v240 = v312;

            v241 = v237;
            v242 = sub_266ABD8C4();
            LOBYTE(v236) = sub_266ABDD64();

            if (os_log_type_enabled(v242, v236))
            {
              v243 = OUTLINED_FUNCTION_25();
              v244 = v240;
              v245 = OUTLINED_FUNCTION_23();
              v338 = v237;
              v339.idsId.value._countAndFlagsBits = v245;
              *v243 = 136315138;
              v246 = v237;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2108, &unk_266AC3670);
              v247 = sub_266ABDAE4();
              v249 = sub_266A66D34(v247, v248, &v339.idsId.value._countAndFlagsBits);

              *(v243 + 4) = v249;
              OUTLINED_FUNCTION_17_3(&dword_266A65000, v250, v251, "#feedback FeedbackService - Error saving FeedbackModel: %s");
              __swift_destroy_boxed_opaque_existential_1Tm(v245);
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_8();

              v252 = v244;
            }

            else
            {

              v252 = v240;
            }
          }

          sub_266A6A63C(v252);
          (*(v330 + 8))(v329, v326);
          return;
        }

LABEL_124:
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
        goto LABEL_93;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_266A72578(&v340);
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v139 = sub_266ABD8D4();
  __swift_project_value_buffer(v139, qword_280BB7028);
  v140 = v33;
  v141 = sub_266ABD8C4();
  v142 = sub_266ABDD64();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = OUTLINED_FUNCTION_25();
    v144 = swift_slowAlloc();
    *v143 = 138412290;
    *(v143 + 4) = v140;
    *v144 = v140;
    v145 = v140;
    OUTLINED_FUNCTION_15_4(&dword_266A65000, v146, v147, "#feedback Participant without request start date: %@. Returning.");
    sub_266A8CCF0(v144);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
  }
}

uint64_t sub_266A689D8()
{

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t sub_266A68ADC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x26D5E9280);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{

  return sub_266A6CBB4(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  *(v2 + 16) = v0;

  return sub_266A6DBC4((v3 - 232), v2 + 40 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1, uint64_t a2)
{

  return sub_266ABE0C4();
}

void *sub_266A68D30()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController;
  if (*(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController);
  }

  else
  {
    v3 = type metadata accessor for KeyValueStore();
    type metadata accessor for UserFeedbackController();
    v2 = swift_allocObject();
    v2[2] = v3;
    v2[3] = &protocol witness table for KeyValueStore;
    v2[4] = v3;
    v2[5] = &protocol witness table for KeyValueStore;
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_266A68DB0()
{
  v1 = v0;
  sub_266ABD854();
  OUTLINED_FUNCTION_1_0();
  v52 = v3;
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266ABD574();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v57 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v51 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v48 - v19;
  swift_beginAccess();
  v20 = *(v0 + 32);
  v59 = *(v0 + 16);
  v60 = v20;
  FeedbackPreferences.UserFeedback.promptFrequency.getter(&v58);
  v21 = v58;
  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v22 = sub_266ABD8D4();
  v50 = __swift_project_value_buffer(v22, qword_280BB7028);
  v23 = sub_266ABD8C4();
  v24 = sub_266ABDD54();
  if (os_log_type_enabled(v23, v24))
  {
    v55 = v14;
    v48 = v10;
    v49 = v7;
    v25 = v5;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v59 = v27;
    *v26 = 136315138;
    v28 = 0xE500000000000000;
    v29 = 0x726576654ELL;
    switch(v21)
    {
      case 1:
        v28 = 0xEC00000072756F48;
        v29 = 0x206E412065636E4FLL;
        break;
      case 2:
        v28 = 0xEA00000000007961;
        v29 = 0x4420412065636E4FLL;
        break;
      case 3:
        v28 = 0xED00007473657571;
        v29 = 0x6552207972657645;
        break;
      default:
        break;
    }

    v47 = sub_266A66D34(v29, v28, &v59);

    *(v26 + 4) = v47;
    _os_log_impl(&dword_266A65000, v23, v24, "#feedback UserFeedbackController - Log frequency set to: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x26D5E9280](v27, -1, -1);
    MEMORY[0x26D5E9280](v26, -1, -1);

    v5 = v25;
    v10 = v48;
    v7 = v49;
    v14 = v55;
    if (!v21)
    {
      return 0;
    }
  }

  else
  {

    if (!v21)
    {
      return 0;
    }
  }

  if (v21 == 3)
  {
    return 1;
  }

  v30 = *(v1 + 32);
  v59 = *(v1 + 16);
  v60 = v30;
  FeedbackPreferences.UserFeedback.lastPromptedDate.getter(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_266A8EB7C(v13);
    return 1;
  }

  v32 = v57;
  (*(v57 + 32))(v56, v13, v14);
  sub_266ABD834();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2188, &qword_266AC2C00);
  v33 = sub_266ABD844();
  OUTLINED_FUNCTION_1_0();
  v35 = v34;
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_266AC0EB0;
  (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC9980], v33);
  sub_266A6A254(v37);
  v38 = v51;
  sub_266ABD784();
  v39 = v54;
  sub_266ABD824();

  v40 = *(v32 + 8);
  v55 = v14;
  v57 = v32 + 8;
  v40(v38, v14);
  (*(v52 + 8))(v39, v53);
  v41 = sub_266ABD564();
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v44 = sub_266ABD8C4();
  v45 = sub_266ABDD54();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = v43;
    _os_log_impl(&dword_266A65000, v44, v45, "#feedback UserFeedbackController - Last prompted %ld hours ago.", v46, 0xCu);
    MEMORY[0x26D5E9280](v46, -1, -1);
  }

  (*(v7 + 8))(v10, v5);
  v40(v56, v55);
  return v43 >= qword_266AC2C20[v21];
}

void FeedbackPreferences.UserFeedback.promptFrequency.getter(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  [objc_opt_self() resetStandardUserDefaults];
  v5 = (*(v3 + 8))(v4, v3);
  v6 = sub_266ABDA74();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_266ABDA84();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    UserFeedbackPromptFrequency.init(rawValue:)(v11);
    LOBYTE(v7) = v37[0];
    if (v37[0] != 4)
    {
      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
      }

      v22 = sub_266ABD8D4();
      OUTLINED_FUNCTION_8_5(v22, qword_280BB7028);

      v23 = sub_266ABD8C4();
      v24 = sub_266ABDD54();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_25();
        v26 = swift_slowAlloc();
        *v37 = v26;
        *v25 = 136315138;
        v27 = sub_266A66D34(v8, v10, v37);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_266A65000, v23, v24, "#feedback Prompt Frequency set by user defaults (likely profile) overriding user configuration and using: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      goto LABEL_25;
    }
  }

  (*(v3 + 24))(v4, v3);
  v13 = v12;
  ObjectType = swift_getObjectType();
  (*(v13 + 56))(0x724674706D6F7270, 0xEF79636E65757165, ObjectType, v13);
  v16 = v15;
  swift_unknownObjectRelease();
  if (v16 >> 60 != 15)
  {
    v21 = sub_266ABD494();
    OUTLINED_FUNCTION_29_2(v21);
    sub_266ABD484();
    sub_266A934BC();
    sub_266ABD474();

    v7 = v37[0];
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280BB6C30);
    }

    v28 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v28, qword_280BB7028);
    v23 = sub_266ABD8C4();
    v29 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_14_0(v29))
    {
      v30 = OUTLINED_FUNCTION_25();
      v31 = swift_slowAlloc();
      *v37 = v31;
      *v30 = 136315138;
      v32 = 0xE500000000000000;
      v33 = 0x726576654ELL;
      switch(v7)
      {
        case 1uLL:
          v32 = 0xEC00000072756F48;
          v33 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x206E000000000000;
          break;
        case 2uLL:
          v32 = 0xEA00000000007961;
          v33 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x4420000000000000;
          break;
        case 3uLL:
          v32 = 0xED00007473657571;
          v33 = OUTLINED_FUNCTION_35_0();
          break;
        default:
          break;
      }

      v34 = sub_266A66D34(v33, v32, v37);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_266A65000, v23, v29, "#feedback Preferences -  Prompt Frequency in UserFeedback is: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_8();
    }

    v35 = OUTLINED_FUNCTION_24_2();
    sub_266A7BB30(v35, v36);
LABEL_25:

    goto LABEL_26;
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v17 = sub_266ABD8D4();
  OUTLINED_FUNCTION_8_5(v17, qword_280BB7028);
  v18 = sub_266ABD8C4();
  v19 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v19))
  {
    v20 = OUTLINED_FUNCTION_19();
    *v20 = 0;
    _os_log_impl(&dword_266A65000, v18, v19, "#feedback Preferences - Prompt Frequency not set using default: Once A Day", v20, 2u);
    OUTLINED_FUNCTION_8();
  }

  LOBYTE(v7) = 2;
LABEL_26:
  *a1 = v7;
}

id sub_266A699F8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_4_9(a1);
  v4 = *a2;

  return v4;
}

BOOL OUTLINED_FUNCTION_4_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_7()
{

  JUMPOUT(0x26D5E9280);
}

void OUTLINED_FUNCTION_4_6()
{

  JUMPOUT(0x26D5E8B00);
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2)
{

  return sub_266ABDFE4();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_266ABDB04();
}

uint64_t static KeyValueStore.cloud.getter(uint64_t a1)
{
  if (qword_2800B1AF8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_6(&qword_2800B1AF8);
  }

  OUTLINED_FUNCTION_4_9(a1);
  return swift_unknownObjectRetain();
}

uint64_t sub_266A69C0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_266A69C58(a1, a2);
  sub_266A69DE0(&unk_28783E608);
  return v3;
}

uint64_t sub_266A69C58(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266ABDB24())
  {
    result = sub_266A69D70(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266ABDE94();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266ABDF04();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_266A69D70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CA8, &qword_266AC0FB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_266A69DE0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_266A790B0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t FeedbackPreferences.UserFeedback.lastPromptedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_40_0();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_266ABDE14();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v7 = sub_266ABD7A4();
    v8 = swift_dynamicCast() ^ 1;
    v9 = a1;
    v10 = v7;
  }

  else
  {
    sub_266A6CBB4(v14, &qword_2800B1C50, &qword_266AC0EE0);
    v10 = sub_266ABD7A4();
    v9 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v8, 1, v10);
}

uint64_t sub_266A6A004(uint64_t a1, uint64_t a2)
{
  v3 = sub_266ABDA74();
  v4 = [v2 dataForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_266ABD6E4();

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL OUTLINED_FUNCTION_14_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_266ABE194();
}

void *OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_266ABD474();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_266ABDA74();
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_266A6A254(uint64_t a1)
{
  v2 = sub_266ABD844();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2190, &qword_266AC2C08);
  result = sub_266ABDE84();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_266A6A570(&qword_2800B2198, MEMORY[0x277CC99D8]);
    v14 = sub_266ABD9C4();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_266A6A570(&qword_2800B21A0, MEMORY[0x277CC99E0]);
      v21 = sub_266ABD9F4();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_266A6A570(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_266ABD844();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A6A5B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_266A6A63C(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ParticipantModel(uint64_t a1)
{
  result = qword_2800B2AD0;
  if (!qword_2800B2AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall SCDAFDevice.asDevice(assistantIdentifier:)(SiriCrossDeviceArbitrationFeedback::DeviceModel *__return_ptr retstr, Swift::String_optional assistantIdentifier)
{
  v77 = assistantIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = &v73 - v5;
  v7 = sub_266ABD864();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_1();
  v74 = v15;
  v91 = sub_266ABD8B4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v16);
  v17 = sub_266A8A870(v2, &selRef_idsIdentifier);
  v92 = v18;
  v93 = v17;
  v19 = sub_266A8A818(v2);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = &unk_28783EB10;
  }

  v21 = sub_266A8A870(v2, &selRef_enclosureColor);
  v23 = 0x30303030303023;
  if (v22)
  {
    v23 = v21;
  }

  v75 = v23;
  v24 = 0xE700000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v90 = v24;
  v89 = sub_266A8A870(v2, &selRef_name);
  v86 = v25;
  v26 = sub_266A8A870(v2, &selRef_build);
  v87 = v27;
  v88 = v26;
  v28 = sub_266A8A870(v2, &selRef_locale);
  v84 = v29;
  v85 = v28;
  v30 = sub_266A8A870(v2, &selRef_assistantId);
  v82 = v31;
  v83 = v30;
  v32 = sub_266A8A870(v2, &selRef_speechId);
  v80 = v33;
  v81 = v32;
  v34 = OUTLINED_FUNCTION_21_2();
  v36 = sub_266A8A870(v34, v35);
  v78 = v37;
  v79 = v36;
  v38 = OUTLINED_FUNCTION_21_2();
  v40 = sub_266A8A870(v38, v39);
  v42 = sub_266A6C244(v77.value._countAndFlagsBits, v77.value._object, v40, v41);
  v77.value._countAndFlagsBits = v43;
  v77.value._object = v42;

  if (v20[2])
  {

    v44._countAndFlagsBits = OUTLINED_FUNCTION_21_2();
    DeviceClass.init(model:)(v44);
    v94 = 0;
    v45 = DeviceClass.displayName(productType:)(&v94);
    countAndFlagsBits = v45._countAndFlagsBits;
    object = v45._object;
  }

  else
  {
    object = 0xEB00000000657365;
    countAndFlagsBits = 0x6874666F656E6F6ELL;
  }

  sub_266ABD884();
  sub_266ABD8A4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v47 = OUTLINED_FUNCTION_20_2();
    v48(v47);
    sub_266A6CBB4(v6, &qword_2800B1D88, &qword_266AC20D0);
  }

  else
  {
    v49 = v74;
    (*(v9 + 32))();
    (*(v9 + 16))(v13, v49, v7);
    v50 = OUTLINED_FUNCTION_29_1();
    if (v51(v50) == *MEMORY[0x277D85508])
    {
      v52 = OUTLINED_FUNCTION_29_1();
      v53(v52);
      v54 = sub_266AA6004(*v13, v13[1], v13[2]);
      v56 = v55;
      (*(v9 + 8))(v49, v7);
      v57 = OUTLINED_FUNCTION_20_2();
      v58(v57);

      goto LABEL_17;
    }

    v59 = *(v9 + 8);
    v59(v49, v7);
    v60 = OUTLINED_FUNCTION_20_2();
    v61(v60);
    v62 = OUTLINED_FUNCTION_29_1();
    (v59)(v62);
  }

  v56 = v90;
  v54 = v75;
LABEL_17:
  v63 = v86 == 0;
  v64 = 0xE700000000000000;
  if (v86)
  {
    v64 = v86;
  }

  v65 = v92;
  retstr->idsId.value._countAndFlagsBits = v93;
  retstr->idsId.value._object = v65;
  v66 = 0x6E776F6E6B6E55;
  if (!v63)
  {
    v66 = v89;
  }

  retstr->build.value._countAndFlagsBits = v88;
  retstr->build.value._object = v87;
  retstr->enclosureColor._countAndFlagsBits = v54;
  v67 = v84;
  v68 = v85;
  retstr->enclosureColor._object = v56;
  retstr->locale.value._countAndFlagsBits = v68;
  retstr->locale.value._object = v67;
  retstr->name.userProvided.value._countAndFlagsBits = v66;
  retstr->name.userProvided.value._object = v64;
  retstr->name.fallback._countAndFlagsBits = countAndFlagsBits;
  retstr->name.fallback._object = object;
  retstr->productTypes._rawValue = v20;
  v69 = v82;
  retstr->assistantId.value._countAndFlagsBits = v83;
  retstr->assistantId.value._object = v69;
  v70 = v80;
  retstr->speechId.value._countAndFlagsBits = v81;
  retstr->speechId.value._object = v70;
  v71 = v78;
  retstr->roomName.value._countAndFlagsBits = v79;
  retstr->roomName.value._object = v71;
  v72 = v77.value._countAndFlagsBits;
  retstr->roomNameHash.value._countAndFlagsBits = v77.value._object;
  retstr->roomNameHash.value._object = v72;
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1, uint64_t a2)
{

  return sub_266ABE084();
}

unint64_t sub_266A6ACDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = [v1 confidence];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  if (result > 0xFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  AdvertisementDeviceClass.init(rawValue:)([v2 deviceClass]);
  result = [v2 deviceGroup];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  if (result > 0xFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = [v2 goodnessScore];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  if (result > 0xFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = [v2 advertHash];
  v9 = [v8 unsignedShortValue];

  AdvertisementProductType.init(rawValue:)([v2 productType]);
  result = [v2 tieBreaker];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result > 0xFF)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *a1 = v5;
  if (v12 == 9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v12;
  }

  if (v13 == 11)
  {
    v11 = 0;
  }

  else
  {
    v11 = v13;
  }

  *(a1 + 1) = v11;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  *(a1 + 4) = v9;
  *(a1 + 6) = v10;
  *(a1 + 7) = result;
  return result;
}

SiriCrossDeviceArbitrationFeedback::AdvertisementDeviceClass_optional __swiftcall AdvertisementDeviceClass.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SiriCrossDeviceArbitrationFeedback::AdvertisementProductType_optional __swiftcall AdvertisementProductType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_266A6AE78(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_12_0(char a1)
{
  *(v1 - 112) = a1;

  return sub_266ABE194();
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_266ABDA74();
}

uint64_t sub_266A6AF8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

char *sub_266A6AFB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A6AFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A6AFD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22C0, &qword_266AC3548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_266A6B150(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_localDeviceAssistantIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *sub_266A6BD88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266A6BDA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A6BDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22D0, &qword_266AC3558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[168 * v8] <= v12)
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1, uint64_t a2)
{

  return sub_266ABE1C4();
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{

  return sub_266ABE124();
}

void OUTLINED_FUNCTION_7_5()
{

  JUMPOUT(0x26D5E9280);
}

void OUTLINED_FUNCTION_7_10()
{
  *(v0 - 224) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
}

void OUTLINED_FUNCTION_7_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double OUTLINED_FUNCTION_7_12()
{
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

uint64_t sub_266A6C04C()
{
  v1 = (v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_localDeviceAssistantIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void *OUTLINED_FUNCTION_5_1(void *a1)
{

  return memcpy(a1, &STACK[0x4A8], 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2)
{

  return sub_266ABE0C4();
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2)
{

  return sub_266ABE0C4();
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_5_8()
{

  JUMPOUT(0x26D5E92A0);
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2)
{

  return sub_266ABDFE4();
}

void *sub_266A6C244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266ABD964();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_266ABD954();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v19 = 0;
  if (!a4 || !a2)
  {
    return v19;
  }

  v46 = a1;
  v47 = a2;
  v43 = v18;
  v44 = v16;
  v20 = &v41 - v17;

  MEMORY[0x26D5E83C0](a3, a4);
  v21 = sub_266A6C69C(v46, v47);
  v23 = v22;
  sub_266A6CD34(&qword_2800B1D68, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_266ABD944();
  sub_266A6CCDC(v21, v23);
  sub_266A6CD7C(v21, v23, v11);
  sub_266A6A5B4(v21, v23);
  sub_266ABD934();
  (*(v9 + 8))(v11, v8);
  sub_266A6A5B4(v21, v23);
  v24 = *(v43 + 16);
  v42 = v20;
  v24(v15, v20, v44);
  sub_266A6CD34(&qword_2800B2020, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  result = sub_266ABDB84();
  v26 = *(v46 + 16);
  v27 = v26 - v47;
  v41 = v46;
  if (v26 == v47)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_5:

    v46 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    sub_266A6D26C();
    v19 = sub_266ABD9E4();
    (*(v43 + 8))(v42, v44);

    return v19;
  }

  if (v26 <= v47)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v47 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v26)
  {
    v29 = (v47 + v46 + 32);
    v28 = MEMORY[0x277D84F90];
    v45 = xmmword_266AC0EB0;
    v30 = MEMORY[0x277D84B78];
    v31 = MEMORY[0x277D84BC0];
    do
    {
      v32 = *v29++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
      v33 = swift_allocObject();
      *(v33 + 16) = v45;
      *(v33 + 56) = v30;
      *(v33 + 64) = v31;
      *(v33 + 32) = v32;
      v34 = sub_266ABDAA4();
      v36 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266A6CFCC();
        v28 = v39;
      }

      v37 = *(v28 + 16);
      if (v37 >= *(v28 + 24) >> 1)
      {
        sub_266A6CFCC();
        v28 = v40;
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      --v27;
    }

    while (v27);
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_266A6C69C(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20A0, &qword_266AC25F0);
  if (swift_dynamicCast())
  {
    sub_266A6DBC4(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_266ABD584();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_266A6CBB4(v40, &qword_2800B20A8, &qword_266AC25F8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_266ABDF04();
  }

  sub_266A6CC14(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x26D5E7F60](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v40[0]);
  v34[2] = v39;
  v11 = sub_266A8A27C(sub_266A8B0C8, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_266ABD6A4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_266A8B0E4(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_266ABDB24();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_266ABDB54();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_266ABDF04();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_266A8B0E4(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_266ABDB34();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_266ABD6C4();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_266ABD6C4();
    sub_266A7BB30(v35, v36);
    goto LABEL_58;
  }

  sub_266A7BB30(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_266A6CCDC(*&v40[0], *(&v40[0] + 1));

  sub_266A6A5B4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_266A6CBB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266A6CC14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_266ABD644();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_266ABD554();
      swift_allocObject();
      v8 = sub_266ABD514();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_266ABD694();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_266A6CCDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_266A6CD34(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A6CDD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), const char *a7)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v18 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v18;
LABEL_9:
      result = sub_266A6CEA4(a1, v16, v15, a3, a4, a5, a6, a7);
      if (v7)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v14 = *(a1 + 24);
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v16 = v14;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v13 = 0;
      goto LABEL_5;
    default:
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_266A7BEC8(a1, v13, a3, a4, a5, a6, a7);
      if (v7)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x266A6CE94);
      }

      return result;
  }
}

uint64_t sub_266A6CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), const char *a8)
{
  result = sub_266ABD524();
  if (!result || (result = sub_266ABD544(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_266ABD534();
      a5(0);
      sub_266A6CF84(a6, a7, a8);
      return sub_266ABD924();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266A6CF84(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_266A6CFCC()
{
  OUTLINED_FUNCTION_12_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2338, &unk_266AC35C0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_29_3((v8 - 32) / 16);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

BOOL OUTLINED_FUNCTION_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_266ABDA74();
}

void OUTLINED_FUNCTION_10_1()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2)
{

  return sub_266ABE0C4();
}

void OUTLINED_FUNCTION_10_7()
{
  *(v0 - 224) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_266ABE244();
}

unint64_t sub_266A6D26C()
{
  result = qword_2800B1D00;
  if (!qword_2800B1D00)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1CF8, &qword_266AC20F0);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_2800B1D00);
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::DeviceClass __swiftcall DeviceClass.init(model:)(Swift::String model)
{
  v2 = v1;
  sub_266ABDAF4();

  v3 = 0;
  while (2)
  {
    v4 = byte_28783E840[v3++ + 32];
    v5 = sub_266ABDB74();

    if ((v5 & 1) == 0)
    {
      switch(v4)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
          sub_266A6D62C();
          v6 = sub_266ABDE04();

          if (v6)
          {
            break;
          }

          if (v3 != 10)
          {
            continue;
          }

          LOBYTE(v4) = 8;
          break;
        default:
          JUMPOUT(0);
      }
    }

    break;
  }

  *v2 = v4;
  return result;
}

unint64_t sub_266A6D62C()
{
  result = qword_2800B2018;
  if (!qword_2800B2018)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_2800B2018);
  }

  return result;
}

Swift::String __swiftcall DeviceClass.displayName(productType:)(SiriCrossDeviceArbitrationFeedback::AdvertisementProductType_optional productType)
{
  v2 = *&productType;
  v3 = sub_266ABD814();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_266ABDA64();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = 0xE600000000000000;
  v6 = 0x656E6F685069;
  switch(*v1)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1684099177;
      break;
    case 2:
      v6 = 0x756F5420646F5069;
      v5 = 0xEA00000000006863;
      break;
    case 3:
      v5 = 0xEB00000000686374;
      v6 = 0x615720656C707041;
      break;
    case 4:
      v5 = 0xE800000000000000;
      v6 = 0x565420656C707041;
      break;
    case 5:
      v7 = *v2;
      v8 = 0xE700000000000000;
      v9 = 0x646F50656D6F48;
      if (v7 == 4)
      {
        v9 = 0xD000000000000015;
        v8 = 0x8000000266AC0590;
      }

      if (v7 == 3)
      {
        v6 = 0x20646F50656D6F48;
      }

      else
      {
        v6 = v9;
      }

      if (v7 == 3)
      {
        v5 = 0xEC000000696E696DLL;
      }

      else
      {
        v5 = v8;
      }

      break;
    case 6:
      v5 = 0xE300000000000000;
      v6 = 6512973;
      break;
    case 7:
      v5 = 0xEA00000000006F72;
      v6 = 0x50206E6F69736956;
      break;
    case 8:
    case 9:
      sub_266ABDA04();
      sub_266A85294();
      static NSBundle.feedback.getter();
      sub_266ABD804();
      v6 = sub_266ABDAD4();
      break;
    default:
      break;
  }

  result._object = v5;
  result._countAndFlagsBits = v6;
  return result;
}

void sub_266A6D91C()
{
  OUTLINED_FUNCTION_12_4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_6();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2310, &qword_266AC3598);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

unint64_t sub_266A6D9F0()
{
  result = qword_2800B1D90;
  if (!qword_2800B1D90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementModel, &type metadata for AdvertisementModel, v0, v1);
    atomic_store(result, &qword_2800B1D90);
  }

  return result;
}

unint64_t sub_266A6DA44()
{
  result = qword_2800B1D98;
  if (!qword_2800B1D98)
  {
    result = swift_getWitnessTable("xq", &type metadata for DeviceModel, v0, v1);
    atomic_store(result, &qword_2800B1D98);
  }

  return result;
}

uint64_t sub_266A6DA98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A6DD58();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_266A6E078(__dst, &v7);
      v11 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_266A6DD58();
        v2 = v11;
      }

      v8 = &type metadata for DeviceModel;
      v9 = sub_266A6DA44();
      *&v7 = swift_allocObject();
      memcpy((v7 + 16), __dst, 0xA8uLL);
      *(v2 + 16) = v5 + 1;
      sub_266A6DBC4(&v7, v2 + 40 * v5 + 32);
      v4 += 168;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266A6DBC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266A6DBDC()
{

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

void sub_266A6DC64()
{
  OUTLINED_FUNCTION_34_1();
  if (v7)
  {
    OUTLINED_FUNCTION_2_5();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_7_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v14 = OUTLINED_FUNCTION_40_1(v13);
    v15 = _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_31_2(v15);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v14 != v0 || &v0[40 * v11 + 32] <= v14 + 32)
    {
      v17 = OUTLINED_FUNCTION_11_4();
      memmove(v17, v18, v19);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  v1 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 264), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_266ABE054();
}

uint64_t OUTLINED_FUNCTION_3_6(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return sub_266A7250C(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1, uint64_t a2)
{

  return sub_266ABDFE4();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_266A6F968(v2 - 160, v2 - 208, v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return type metadata accessor for ParticipantModel(0);
}

void OUTLINED_FUNCTION_9_0()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_9_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266ABE1C4();
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return sub_266ABDF24();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_slowAlloc();
}

void sub_266A6E0D4(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 4)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Unknown participation state. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

uint64_t sub_266A6E2B4(void *a1)
{
  v2 = sub_266ABD634();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter();
  v9 = sub_266ABD604();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  sub_266A66EF8(a1, v9, v11);
}

uint64_t sub_266A6E3AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A6E1D8();
    v3 = v15;
    v5 = (a1 + 39);
    do
    {
      v1.i32[0] = *(v5 - 7);
      v6 = *(v5 - 3);
      v7 = *(v5 - 1);
      v8 = *v5;
      v15 = v3;
      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_33();
        sub_266A6E1D8();
        v3 = v15;
      }

      v11 = vmovl_u8(v1).u64[0];
      v13 = &type metadata for AdvertisementModel;
      v14 = sub_266A6D9F0();
      LODWORD(v12) = vuzp1_s8(v11, v11).u32[0];
      WORD2(v12) = v6;
      BYTE6(v12) = v7;
      BYTE7(v12) = v8;
      *(v3 + 16) = v9 + 1;
      sub_266A6DBC4(&v12, v3 + 40 * v9 + 32);
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_266ABDA74();
    v3 = [v1 stringByAppendingPathComponent_];

    sub_266ABDA84();
    sub_266ABD5D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_266ABDAD4();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_266ABE194();
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{

  return sub_266ABE154();
}

void sub_266A6E668(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 3)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Unknown timer state. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_266A6E76C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 6)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Unknown Media state. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_266A6E870(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 9)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Invalid Trigger Type received. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

uint64_t sub_266A6E974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A6E9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ParticipantModel.description.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_3();
  v6 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  strcpy(v41, "This Device:\n");
  v42 = -4864;
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  sub_266ABE1A4();
  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0x3A74736575716552, 0xE90000000000000ALL);
  sub_266ABDEA4();

  v10 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v11, v12, MEMORY[0x277CC95B8]);
  v13 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v13);

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0xD000000000000012, 0x8000000266AC0740);

  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  MEMORY[0x26D5E83C0](0x5472656767697274, 0xEC0000003D657079);
  LOBYTE(v37) = *(v0 + v10[22]);
  sub_266ABDF24();
  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0, 0xE000000000000000);

  sub_266A6F9C8(v0 + v10[15], v2, &qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_77(v2, 1, v6);
  if (v14)
  {
    sub_266A798F4(v2, &qword_2800B1DB8, "h9");
  }

  else
  {
    (*(v8 + 32))(v1, v2, v6);
    sub_266ABDEA4();

    *&v39 = 0xD000000000000012;
    *(&v39 + 1) = 0x8000000266AC0820;
    sub_266ABE194();
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();

    (*(v8 + 8))(v1, v6);
  }

  v15 = *(v0 + v10[14] + 8);
  if (v15)
  {
    OUTLINED_FUNCTION_48();
    sub_266ABDEA4();

    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();
  }

  v16 = (v0 + v10[17]);
  if (v16[1])
  {
    v17 = *v16;
    *&v39 = 0x4974736575716572;
    *(&v39 + 1) = 0xEA00000000003D64;
    MEMORY[0x26D5E83C0](v17);
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();
  }

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0x3A676E69726F6353, 0xE90000000000000ALL);
  if ((*(v0 + 114) & 1) == 0)
  {
    v18 = *(v0 + 113);
    OUTLINED_FUNCTION_48();
    sub_266ABDEA4();

    *&v39 = 0xD000000000000011;
    *(&v39 + 1) = 0x8000000266AC0800;
    LOBYTE(v37) = v18;
    sub_266ABE194();
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();
  }

  *&v39 = 0x3D74736F6F42;
  *(&v39 + 1) = 0xE600000000000000;
  v19 = *(v0 + 40);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E8, &unk_266AC5F40);
  MEMORY[0x26D5E84F0](v19, v20);
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_29_5();

  strcpy(&v39, "TrumpReason=");
  HIWORD(v39) = -5120;
  MEMORY[0x26D5E84F0](*(v3 + v10[13]), &type metadata for TrumpReason);
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_29_5();

  if (v15)
  {
    OUTLINED_FUNCTION_48();
    sub_266ABDEA4();

    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();
  }

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0xD000000000000011, 0x8000000266AC0760);
  v21 = (v3 + v10[18]);
  if (v21[1])
  {
    v22 = *v21;
    *&v39 = 0x3D6449616463;
    *(&v39 + 1) = 0xE600000000000000;
    MEMORY[0x26D5E83C0](v22);
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();
  }

  sub_266A6F9C8(v3, &v37, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v38)
  {
    sub_266A6DBC4(&v37, &v39);
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_266ABDEA4();
    MEMORY[0x26D5E83C0](0x7369747265766461, 0xEE003D746E656D65);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();

    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  }

  else
  {
    sub_266A798F4(&v37, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  sub_266A6F9C8(v3 + v10[16], &v37, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v38)
  {
    sub_266A6DBC4(&v37, &v39);
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_266ABDEA4();
    MEMORY[0x26D5E83C0](0xD000000000000014, 0x8000000266AC07C0);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();

    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
  }

  else
  {
    sub_266A798F4(&v37, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  MEMORY[0x26D5E83C0](0xD000000000000015, 0x8000000266AC0780);
  v23 = *(v3 + v10[12]);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v23 + 32;
    v27 = 0xE000000000000000;
    do
    {
      sub_266A6FFD8(v26, &v39);
      __swift_project_boxed_opaque_existential_1(&v39, v40);
      *&v37 = sub_266ABE194();
      *(&v37 + 1) = v28;
      OUTLINED_FUNCTION_38_2();
      v29 = v37;
      *&v37 = v25;
      *(&v37 + 1) = v27;

      MEMORY[0x26D5E83C0](v29, *(&v29 + 1));

      v27 = *(&v37 + 1);
      v25 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
      v26 += 40;
      --v24;
    }

    while (v24);
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  MEMORY[0x26D5E83C0](v25, v27);

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0xD000000000000010, 0x8000000266AC07A0);
  v30 = *(v3 + 104);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v30 + 32;
    v34 = 0xE000000000000000;
    do
    {
      sub_266A6FFD8(v33, &v39);
      __swift_project_boxed_opaque_existential_1(&v39, v40);
      *&v37 = sub_266ABE194();
      *(&v37 + 1) = v35;
      OUTLINED_FUNCTION_38_2();
      v36 = v37;
      *&v37 = v32;
      *(&v37 + 1) = v34;

      MEMORY[0x26D5E83C0](v36, *(&v36 + 1));

      v34 = *(&v37 + 1);
      v32 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
      v33 += 40;
      --v31;
    }

    while (v31);
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  MEMORY[0x26D5E83C0](v32, v34);

  OUTLINED_FUNCTION_30();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_266A6A5B4(v0, v1);
}

id OUTLINED_FUNCTION_21_1(unsigned __int8 a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_266ABDEE4();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266A6F430()
{
  v12 = 0x3D656D616ELL;
  v13 = 0xE500000000000000;
  if (v0[9])
  {
    v1 = v0[8];
    v2 = v0[9];
  }

  else
  {
    v1 = v0[10];
    v2 = v0[11];
  }

  MEMORY[0x26D5E83C0](v1, v2);

  if (v0[1])
  {
    strcpy(v11, " | ids=");
    v11[1] = 0xE700000000000000;
    MEMORY[0x26D5E83C0](*v0);
    MEMORY[0x26D5E83C0](v11[0], 0xE700000000000000);
  }

  v3 = v0[14];
  if (v3)
  {
    v4 = v0[13];
    sub_266ABDEA4();

    v11[0] = 0x7369737361207C20;
    v11[1] = 0xEF3D6449746E6174;
    MEMORY[0x26D5E83C0](v4, v3);
    MEMORY[0x26D5E83C0](0x7369737361207C20, 0xEF3D6449746E6174);
  }

  if (v0[16])
  {
    v5 = v0[15];
    strcpy(v11, " | speechId=");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    MEMORY[0x26D5E83C0](v5);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  if (v0[3])
  {
    v6 = v0[2];
    strcpy(v11, " | build=");
    WORD1(v11[1]) = 0;
    HIDWORD(v11[1]) = -385875968;
    MEMORY[0x26D5E83C0](v6);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  if (v0[18])
  {
    v7 = v0[17];
    strcpy(v11, " | roomName=");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    MEMORY[0x26D5E83C0](v7);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  if (v0[7])
  {
    v8 = v0[6];
    strcpy(v11, " | locale=");
    BYTE3(v11[1]) = 0;
    HIDWORD(v11[1]) = -369098752;
    MEMORY[0x26D5E83C0](v8);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  sub_266ABDEA4();

  v11[0] = 0xD000000000000010;
  v11[1] = 0x8000000266ABFE90;
  v9 = MEMORY[0x26D5E84F0](v0[12], MEMORY[0x277D837D0]);
  MEMORY[0x26D5E83C0](v9);

  MEMORY[0x26D5E83C0](0xD000000000000010, 0x8000000266ABFE90);

  strcpy(v11, " | enclosure=");
  HIWORD(v11[1]) = -4864;
  MEMORY[0x26D5E83C0](v0[4], v0[5]);
  MEMORY[0x26D5E83C0](v11[0], v11[1]);

  return v12;
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_38_0()
{
  *(v0 + 16) = v1;
  v6 = v0 + 16 * v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  return sub_266ABD4F4();
}

void OUTLINED_FUNCTION_38_2()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t sub_266A6F7D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_266A6F918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_266A6F968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266A6F9C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_9_2();
  v6(v5);
  return v4;
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return sub_266ABE1C4();
}

void OUTLINED_FUNCTION_30_2()
{

  sub_266A6CFCC();
}

void OUTLINED_FUNCTION_60()
{
  *(v2 - 136) = v1;
  *(v2 - 128) = (v0 - 32) | 0x8000000000000000;

  JUMPOUT(0x26D5E83C0);
}

uint64_t sub_266A6FBB0(unint64_t a1)
{
  v1 = a1 >> 8;
  v2 = HIWORD(a1);
  v24 = HIBYTE(a1);
  sub_266ABDEA4();
  OUTLINED_FUNCTION_17_0();
  v3 = sub_266ABE2F4();
  MEMORY[0x26D5E83C0](v3);

  OUTLINED_FUNCTION_9_0();
  v4 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v4);

  OUTLINED_FUNCTION_13_0();
  v5 = MEMORY[0x26D5E83C0](0x656369766564202CLL);
  OUTLINED_FUNCTION_19_0(v5, v6, &type metadata for AdvertisementDeviceClass, v7, v8, v9, v10, v11, v24, *v26, *&v26[4], v1);
  sub_266ABDF24();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x26D5E83C0](0x656369766564202CLL);
  v12 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v12);

  OUTLINED_FUNCTION_16_1();
  v13 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v13);

  OUTLINED_FUNCTION_15_0();
  v14 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v14);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19_0(v15, v16, &type metadata for AdvertisementProductType, v17, v18, v19, v20, v21, v25, v27, v28, v2);
  sub_266ABDF24();
  OUTLINED_FUNCTION_10_1();
  v22 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v22);

  MEMORY[0x26D5E83C0](62, 0xE100000000000000);
  return 0;
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1)
{

  return sub_266A798F4(a1, v1, v2);
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_266ABDA74();
}

void OUTLINED_FUNCTION_15_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_18_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_266A6FFD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_266A7008C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ParticipantModel(255);
    v3 = OUTLINED_FUNCTION_12_5();
    result = swift_getWitnessTable(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ParticipantModel.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A48, &qword_266AC5F78);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_32_3();
  v10 = sub_266A70978(*(v4 + 40));
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  sub_266A6FFD8(v4 + 48, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

LABEL_12:
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }

  memcpy(v30, v31, sizeof(v30));
  sub_266A70C04();
  if (!v12)
  {
LABEL_10:
    sub_266A72578(v30);
    goto LABEL_11;
  }

  v13 = v12;
  v26 = type metadata accessor for ParticipantModel(0);
  v14 = sub_266A70D6C(*(v4 + v26[12]));
  if (!v14)
  {

    goto LABEL_10;
  }

  v27 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A70EA8();
  sub_266ABE2C4();
  sub_266A6F9C8(v4, v29, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v29[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v29[0] = v28;
      sub_266A70EFC();
      OUTLINED_FUNCTION_18_6();
      sub_266ABE0F4();
      if (v2)
      {
        v15 = OUTLINED_FUNCTION_12_7();
        v16(v15);

        sub_266A72578(v30);
LABEL_16:
      }
    }
  }

  else
  {
    sub_266A798F4(v29, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  v29[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29D0, &qword_266AC5F58);
  v18 = sub_266AB08CC();
  OUTLINED_FUNCTION_11_6(v18);
  if (v2)
  {
    v19 = OUTLINED_FUNCTION_12_7();
    v20(v19);
    sub_266A72578(v30);

    goto LABEL_16;
  }

  memcpy(v29, v30, sizeof(v29));
  sub_266A71BAC();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE154();
  sub_266A72578(v30);
  LOBYTE(v29[0]) = 4;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0D4();
  v29[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29E0, &qword_266AC5F60);
  v21 = sub_266AB0950();
  OUTLINED_FUNCTION_11_6(v21);

  LOBYTE(v29[0]) = *(v4 + 112);
  sub_266A725CC();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  LOBYTE(v29[0]) = 7;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE104();
  LOBYTE(v29[0]) = 8;
  sub_266ABD7A4();
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v22, v23, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_18_6();
  sub_266ABE154();
  v29[0] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A00, &qword_266AC5F68);
  v24 = sub_266AB09D4();
  OUTLINED_FUNCTION_11_6(v24);

  v29[0] = *(v4 + v26[13]);
  LOBYTE(v28) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A10, &qword_266AC5F70);
  v25 = sub_266AB0A58();
  OUTLINED_FUNCTION_11_6(v25);
  OUTLINED_FUNCTION_53(v26[14]);
  OUTLINED_FUNCTION_4_10(11);
  sub_266ABE0D4();
  LOBYTE(v29[0]) = 12;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  sub_266A6F9C8(v4 + v26[16], v29, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v29[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v29[0] = v28;
      sub_266A70EFC();
      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_18_6();
      sub_266ABE0F4();
    }
  }

  else
  {
    sub_266A798F4(v29, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  OUTLINED_FUNCTION_53(v26[17]);
  OUTLINED_FUNCTION_4_10(14);
  sub_266ABE0D4();
  OUTLINED_FUNCTION_53(v26[18]);
  OUTLINED_FUNCTION_4_10(15);
  sub_266ABE0D4();
  OUTLINED_FUNCTION_68(v26[20]);
  sub_266A72868();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_68(v26[19]);
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_68(v26[21]);
  sub_266A72A18();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_68(v26[22]);
  sub_266A72BC8();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_53(v26[23]);
  OUTLINED_FUNCTION_4_10(20);
  sub_266ABE0D4();
  OUTLINED_FUNCTION_72(v4 + v26[24]);
  OUTLINED_FUNCTION_4_10(21);
  sub_266ABE0E4();
  OUTLINED_FUNCTION_72(v4 + v26[25]);
  OUTLINED_FUNCTION_4_10(22);
  sub_266ABE0E4();
  OUTLINED_FUNCTION_53(v26[26]);
  LOBYTE(v29[0]) = 23;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0D4();
  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_266A70978(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  v3 = OUTLINED_FUNCTION_3();
  sub_266A70BE4(v3, v4, v5);
  v6 = v22;
  v7 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_266A6FFD8(v7, v21);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E8, &unk_266AC5F40);
      if ((OUTLINED_FUNCTION_41_0(&v19, v21, v8) & 1) == 0)
      {
        break;
      }

      v9 = v19;
      v10 = v20;
      v22 = v6;
      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_30_3();
        v18 = v13;
        sub_266A70BE4(v14, v15, v16);
        v9 = v18;
        v6 = v22;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 24 * v11;
      *(v12 + 32) = v9;
      *(v12 + 48) = v10;
      v7 += 40;
      if (!--v2)
      {
        return v6;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_36_0()
{
}

char *sub_266A70AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22C8, &qword_266AC3550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_266A70BE4(char *a1, int64_t a2, char a3)
{
  result = sub_266A70AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266A70C04()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = *(v0 + 16);
  v19 = MEMORY[0x277D84F90];
  v3 = OUTLINED_FUNCTION_3();
  sub_266A6BD88(v3, v4, v5);
  v6 = v19;
  v7 = v1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_266A6FFD8(v7, v18);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
      if ((OUTLINED_FUNCTION_41_0(__src, v18, v8) & 1) == 0)
      {
        break;
      }

      nullsub_1();
      memcpy(__dst, __src, sizeof(__dst));
      v19 = v6;
      OUTLINED_FUNCTION_20_4();
      if (v9)
      {
        OUTLINED_FUNCTION_30_3();
        sub_266A6BD88(v12, v13, v14);
        v6 = v19;
      }

      memcpy(v15, __dst, sizeof(v15));
      v10 = OUTLINED_FUNCTION_36();
      memcpy(v10, v11, 0xA8uLL);
      v7 += 40;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    sub_266A83CC4(v15);
    memcpy(__src, v15, sizeof(__src));
    memcpy(__dst, v15, sizeof(__dst));
    sub_266A6CBB4(__dst, &qword_2800B1E98, &qword_266AC13B0);
  }

LABEL_8:
  OUTLINED_FUNCTION_30();
}

uint64_t sub_266A70D6C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_3();
  sub_266A6AFB0(v5, v6, v7);
  v8 = v19;
  v9 = a1 + 32;
  if (v4)
  {
    while (1)
    {
      sub_266A6FFD8(v9, v18);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
      if ((OUTLINED_FUNCTION_41_0(&v17, v18, v10) & 1) == 0)
      {
        break;
      }

      v11 = v17;
      v19 = v8;
      OUTLINED_FUNCTION_20_4();
      if (v12)
      {
        OUTLINED_FUNCTION_30_3();
        sub_266A6AFB0(v13, v14, v15);
        v8 = v19;
      }

      *(v8 + 16) = v1;
      *(v8 + 8 * v2 + 32) = v11;
      v9 += 40;
      if (!--v4)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

unint64_t sub_266A70EA8()
{
  result = qword_2800B29C0;
  if (!qword_2800B29C0)
  {
    result = swift_getWitnessTable(aAsw, &type metadata for ParticipantModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B29C0);
  }

  return result;
}

unint64_t sub_266A70EFC()
{
  result = qword_2800B2A78;
  if (!qword_2800B2A78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementModel, &type metadata for AdvertisementModel, v0, v1);
    atomic_store(result, &qword_2800B2A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvertisementModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 8))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 6);
      v4 = v3 >= 9;
      v2 = v3 - 9;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParticipantModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x266A71058);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantModel.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t AdvertisementModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D08, &qword_266AC1000);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v10;
  v11 = *(v1 + 3);
  v18 = *(v1 + 4);
  v19 = v11;
  v12 = *(v1 + 6);
  v16[1] = *(v1 + 7);
  v17 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A71374();
  v13 = v4;
  sub_266ABE2C4();
  v30 = 0;
  sub_266ABE164();
  if (!v2)
  {
    v14 = v17;
    v29 = v21;
    v28 = 1;
    sub_266A714D8();
    OUTLINED_FUNCTION_2_0();
    sub_266ABE154();
    v27 = 2;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE164();
    v26 = 3;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE164();
    v25 = 4;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE174();
    v24 = v14;
    v23 = 5;
    sub_266A7177C();
    OUTLINED_FUNCTION_2_0();
    sub_266ABE154();
    v22 = 6;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE164();
  }

  return (*(v6 + 8))(v9, v13);
}

unint64_t sub_266A71374()
{
  result = qword_2800B1D10;
  if (!qword_2800B1D10)
  {
    result = swift_getWitnessTable(byte_266AC1238, &type metadata for AdvertisementModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1D10);
  }

  return result;
}

uint64_t sub_266A713D0(char a1)
{
  result = 0x6E656469666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6C43656369766564;
      break;
    case 2:
      result = 0x7247656369766564;
      break;
    case 3:
      result = 0x7373656E646F6F67;
      break;
    case 4:
      result = 1752392040;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x6B61657242656974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A714D8()
{
  result = qword_2800B1D18;
  if (!qword_2800B1D18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementDeviceClass, &type metadata for AdvertisementDeviceClass, v0, v1);
    atomic_store(result, &qword_2800B1D18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdvertisementModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x266A715F8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvertisementModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_266A716F8()
{
  result = qword_2800B1B30;
  if (!qword_2800B1B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementDeviceClass, &type metadata for AdvertisementDeviceClass, v0, v1);
    atomic_store(result, &qword_2800B1B30);
  }

  return result;
}

uint64_t sub_266A7174C@<X0>(uint64_t *a1@<X8>)
{
  result = AdvertisementDeviceClass.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A7177C()
{
  result = qword_2800B1D20;
  if (!qword_2800B1D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementProductType, &type metadata for AdvertisementProductType, v0, v1);
    atomic_store(result, &qword_2800B1D20);
  }

  return result;
}

unint64_t sub_266A71820()
{
  result = qword_2800B2860;
  if (!qword_2800B2860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementProductType, &type metadata for AdvertisementProductType, v0, v1);
    atomic_store(result, &qword_2800B2860);
  }

  return result;
}

uint64_t sub_266A71874@<X0>(uint64_t *a1@<X8>)
{
  result = AdvertisementProductType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266A718B0(char a1)
{
  result = 0x7369747265766461;
  switch(a1)
  {
    case 1:
      return 0x7374736F6F62;
    case 2:
      return 0x656369766564;
    case 3:
      return 0x6C43656369766564;
    case 4:
      return 0x6953746E65746E69;
    case 5:
      return 0x654479627261656ELL;
    case 6:
      return 0x7069636974726170;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000012;
    case 10:
      return 0x616552706D757274;
    case 11:
      return 0xD000000000000011;
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0xD000000000000013;
    case 14:
      return 0x4974736575716572;
    case 15:
      return 0x6449616463;
    case 16:
      v3 = 0x5372656D6974;
      goto LABEL_19;
    case 17:
      v3 = 0x536D72616C61;
      goto LABEL_19;
    case 18:
      v3 = 0x53616964656DLL;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      break;
    case 19:
      result = 0x5472656767697274;
      break;
    case 20:
      result = 0x656D614E6D6F6F72;
      break;
    case 21:
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 23:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A71BAC()
{
  result = qword_2800B1E88;
  if (!qword_2800B1E88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceModel, &type metadata for DeviceModel, v0, v1);
    atomic_store(result, &qword_2800B1E88);
  }

  return result;
}

void DeviceModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_31_1();
  v58 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2048, &qword_266AC2100);
  OUTLINED_FUNCTION_1_0();
  v29 = v28;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v30);
  v32 = v46 - v31;
  v33 = v23[2];
  v56 = v23[3];
  v57 = v33;
  v34 = v23[4];
  v54 = v23[5];
  v55 = v34;
  v35 = v23[6];
  v52 = v23[7];
  v53 = v35;
  v36 = v23[8];
  v38 = v23[10];
  v37 = v23[11];
  v48 = v23[9];
  v49 = v38;
  v50 = v37;
  v51 = v36;
  v39 = v23[12];
  v40 = v23[13];
  v41 = v23[15];
  v46[8] = v23[14];
  v47 = v39;
  v46[5] = v41;
  v42 = v23[17];
  v46[6] = v23[16];
  v46[7] = v40;
  v46[3] = v42;
  v43 = v23[19];
  v46[4] = v23[18];
  v46[1] = v43;
  v46[2] = v23[20];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_266A71F88();
  sub_266ABE2C4();
  LOBYTE(v59) = 0;
  v44 = v58;
  sub_266ABE0D4();
  if (!v44)
  {
    v45 = v51;
    OUTLINED_FUNCTION_16_3(1);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(2);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE114();
    OUTLINED_FUNCTION_16_3(3);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    v59 = v45;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    sub_266A72130();

    sub_266ABE154();

    v59 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    sub_266A7250C(&qword_2800B2058, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_266ABE154();
    OUTLINED_FUNCTION_16_3(6);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(7);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(8);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(9);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_30_1();
}

unint64_t sub_266A71F88()
{
  result = qword_2800B2030;
  if (!qword_2800B2030)
  {
    result = swift_getWitnessTable(aW_1, &unk_28783DAF8, v0, v1);
    atomic_store(result, &qword_2800B2030);
  }

  return result;
}

uint64_t sub_266A71FF8(char a1)
{
  result = 0x6449736469;
  switch(a1)
  {
    case 1:
      result = 0x646C697562;
      break;
    case 2:
      result = 0x7275736F6C636E65;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x6E61747369737361;
      break;
    case 7:
      result = 0x6449686365657073;
      break;
    case 8:
    case 9:
      result = 0x656D614E6D6F6F72;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A72130()
{
  result = qword_2800B2050;
  if (!qword_2800B2050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceName, &type metadata for DeviceName, v0, v1);
    atomic_store(result, &qword_2800B2050);
  }

  return result;
}

_BYTE *sub_266A72184(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x266A72250);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void DeviceName.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_31_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1FF0, &qword_266AC20C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v26);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_266A72470();
  sub_266ABE2C4();
  sub_266ABE0D4();
  if (!v23)
  {
    sub_266ABE114();
  }

  v27 = OUTLINED_FUNCTION_5();
  v28(v27);
  OUTLINED_FUNCTION_30_1();
}

unint64_t sub_266A72470()
{
  result = qword_2800B1FF8;
  if (!qword_2800B1FF8)
  {
    result = swift_getWitnessTable(byte_266AC259C, &type metadata for DeviceName.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FF8);
  }

  return result;
}

uint64_t sub_266A724CC(char a1)
{
  if (a1)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x766F725072657375;
  }
}

uint64_t sub_266A7250C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1CF8, &qword_266AC20F0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266A725CC()
{
  result = qword_2800B2A60;
  if (!qword_2800B2A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Participation, &type metadata for Participation, v0, v1);
    atomic_store(result, &qword_2800B2A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_266A726F8()
{
  result = qword_2800B2220;
  if (!qword_2800B2220)
  {
    result = swift_getWitnessTable("Yqw\x1B@g", &type metadata for Participation, v0, v1);
    atomic_store(result, &qword_2800B2220);
  }

  return result;
}

uint64_t sub_266A7274C@<X0>(uint64_t *a1@<X8>)
{
  result = Participation.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A727CC()
{
  result = qword_2800B2810;
  if (!qword_2800B2810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TrumpReason, &type metadata for TrumpReason, v0, v1);
    atomic_store(result, &qword_2800B2810);
  }

  return result;
}

uint64_t sub_266A72820@<X0>(uint64_t *a1@<X8>)
{
  result = TrumpReason.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A72868()
{
  result = qword_2800B2A90;
  if (!qword_2800B2A90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlarmTimerState, &type metadata for AlarmTimerState, v0, v1);
    atomic_store(result, &qword_2800B2A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataCollectionGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266A72994@<X0>(uint64_t *a1@<X8>)
{
  result = AlarmTimerState.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A729BC()
{
  result = qword_2800B1EF8;
  if (!qword_2800B1EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlarmTimerState, &type metadata for AlarmTimerState, v0, v1);
    atomic_store(result, &qword_2800B1EF8);
  }

  return result;
}

unint64_t sub_266A72A18()
{
  result = qword_2800B2A98;
  if (!qword_2800B2A98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaState, &type metadata for MediaState, v0, v1);
    atomic_store(result, &qword_2800B2A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266A72B44@<X0>(uint64_t *a1@<X8>)
{
  result = MediaState.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A72B6C()
{
  result = qword_2800B1EE0;
  if (!qword_2800B1EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaState, &type metadata for MediaState, v0, v1);
    atomic_store(result, &qword_2800B1EE0);
  }

  return result;
}

unint64_t sub_266A72BC8()
{
  result = qword_2800B2AA0;
  if (!qword_2800B2AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggerType, &type metadata for TriggerType, v0, v1);
    atomic_store(result, &qword_2800B2AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266A72CF4@<X0>(uint64_t *a1@<X8>)
{
  result = TriggerType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A72D1C()
{
  result = qword_2800B1C08;
  if (!qword_2800B1C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggerType, &type metadata for TriggerType, v0, v1);
    atomic_store(result, &qword_2800B1C08);
  }

  return result;
}

double sub_266A72DD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_266A6FFD8(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_266A72E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A74A64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266A72E64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A74C40();
  *a1 = result;
  return result;
}

uint64_t sub_266A72E94()
{
  MEMORY[0x26D5E92F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266A72ECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266A72F04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266A730B8()
{

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_266A7315C()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  }

  v1 = *(v0 + 104);
  if (v1 != 255)
  {
    sub_266A8244C(*(v0 + 88), *(v0 + 96), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

uint64_t sub_266A731B0()
{

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_266A732B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A6C04C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266A733C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A733A0(a1, a2);
  *a3 = result & 1;
  return result;
}

void *sub_266A73528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A8B434();
  *a1 = result;
  return result;
}

uint64_t sub_266A73558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A8B56C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266A73588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266A735C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_266A73860(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[40 * a2] <= __dst)
  {
    return memmove(__dst, __src, 40 * a2);
  }

  return __src;
}

uint64_t sub_266A738EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266A7393C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A9D310();
  *a1 = result;
  return result;
}

uint64_t sub_266A73AD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266AA1BF0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_266A73EE4()
{

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_266A73F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266ABD7A4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_266A74044(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_266ABD7A4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_266A74180()
{

  OUTLINED_FUNCTION_14_7();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266A74204()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266A74250()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  }

  v1 = *(v0 + 104);
  if (v1 != 255)
  {
    sub_266A8244C(*(v0 + 88), *(v0 + 96), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

unint64_t sub_266A74394()
{
  result = qword_2800B1B18;
  if (!qword_2800B1B18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementDeviceClass, &type metadata for AdvertisementDeviceClass, v0, v1);
    atomic_store(result, &qword_2800B1B18);
  }

  return result;
}

unint64_t sub_266A7446C()
{
  result = qword_2800B1B20;
  if (!qword_2800B1B20)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1B28, &qword_266AC0C80);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_2800B1B20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvertisementDeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AdvertisementDeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::TriggerType_optional __swiftcall TriggerType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266A746A4()
{
  result = qword_2800B1C00;
  if (!qword_2800B1C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggerType, &type metadata for TriggerType, v0, v1);
    atomic_store(result, &qword_2800B1C00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266A74888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter;
  OUTLINED_FUNCTION_18(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter, v5);
  return sub_266A6F918(v1 + v3, a1, &qword_2800B1C18, &qword_266AC0EC0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_266A74930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter;
  OUTLINED_FUNCTION_17(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter, v5);
  sub_266A791A4(a1, v1 + v3, &qword_2800B1C18, &qword_266AC0EC0);
  return swift_endAccess();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_266A74A28(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_266A74AAC(v3, v2);
}

uint64_t sub_266A74AAC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  OUTLINED_FUNCTION_33_0(v4, v6);
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_9();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_266A74B0C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return sub_266A74B8C;
}

void sub_266A74B8C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_266A74C80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
  OUTLINED_FUNCTION_33_0(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals, v5);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *sub_266A74D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals] = 0;
  v9 = &v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 25) = 0u;
  *&v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for UserNotificationServiceImpl();
  v10 = objc_msgSendSuper2(&v21, sel_init);
  v11 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate];
  OUTLINED_FUNCTION_33_0(&v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate], v20);
  *(v11 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v12 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter];
  OUTLINED_FUNCTION_17(&v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter], v19);
  sub_266A795F4(a1, v12);
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = *(v12 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
    v15 = *(v14 + 24);
    v16 = v10;
    v15(v10, &protocol witness table for UserNotificationServiceImpl, v13, v14);
  }

  swift_endAccess();
  swift_unknownObjectRelease();
  sub_266A798F4(a1, &qword_2800B1C18, &qword_266AC0EC0);
  v17 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
  OUTLINED_FUNCTION_33_0(&v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals], v19);
  *&v10[v17] = a4;
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_266A74ECC(void *a1)
{
  v2 = v1;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_266ABD8D4();
  __swift_project_value_buffer(v4, qword_280BB7028);
  v5 = sub_266ABD8C4();
  v6 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_13(v6))
  {
    v7 = OUTLINED_FUNCTION_25();
    v8 = OUTLINED_FUNCTION_23();
    *&v65 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_266A66D34(0x293A5F28646461, 0xE700000000000000, &v65);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_7();
  }

  v14 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest;
  OUTLINED_FUNCTION_18(v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest, v64);
  sub_266A6F918(v2 + v14, &v65, &qword_2800B1C38, &qword_266AC0EC8);
  if (!v66)
  {
    sub_266A798F4(&v65, &qword_2800B1C38, &qword_266AC0EC8);
    sub_266A767EC(a1, &v65);
    if (!v66)
    {
      return sub_266A798F4(&v65, &qword_2800B1C40, &unk_266AC0ED0);
    }

    sub_266A6DBC4(&v65, v68);
    v26 = sub_266ABD8C4();
    v27 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_13(v27))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_7();
    }

    sub_266A76A2C(v68, a1);
    sub_266A76C60(a1, v68);
    sub_266A6FFD8(v68, &v65);
    v33 = OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_17(v33, v67);
    sub_266A791A4(&v65, v2 + v14, &qword_2800B1C38, &qword_266AC0EC8);
    swift_endAccess();
    v34 = sub_266ABD8C4();
    v35 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v35))
    {
      v36 = OUTLINED_FUNCTION_24();
      *v36 = 67109120;
      v36[1] = a1;
      OUTLINED_FUNCTION_3_0();
      v42 = 8;
LABEL_19:
      _os_log_impl(v37, v38, v39, v40, v41, v42);
      OUTLINED_FUNCTION_6();
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  sub_266A6FFD8(&v65, v67);
  sub_266A798F4(&v65, &qword_2800B1C38, &qword_266AC0EC8);
  sub_266A6DBC4(v67, v68);
  v15 = sub_266A75418(a1, v68);
  sub_266A72DD4(v15, &v65);
  if (!v66)
  {

    sub_266A798F4(&v65, &qword_2800B1C40, &unk_266AC0ED0);
    v34 = sub_266ABD8C4();
    v43 = sub_266ABDD64();
    if (OUTLINED_FUNCTION_4_0(v43))
    {
      v44 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_20(v44);
      OUTLINED_FUNCTION_3_0();
      v42 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  sub_266A6DBC4(&v65, v67);
  v16 = *(v15 + 16);

  if (!v16)
  {
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  if (v16 == 1)
  {
    sub_266A76C60(a1, v67);
    sub_266A6FFD8(v67, &v65);
    v17 = OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_17(v17, v63);
    sub_266A791A4(&v65, v2 + v14, &qword_2800B1C38, &qword_266AC0EC8);
    swift_endAccess();
    v18 = sub_266ABD8C4();
    v19 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v19))
    {
      v20 = OUTLINED_FUNCTION_24();
      *v20 = 67109120;
      v20[1] = a1;
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v21, v22, v23, v24, v25, 8u);
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_27;
  }

  sub_266A767EC(a1, &v65);
  if (v66)
  {
    sub_266A6DBC4(&v65, v63);
    v45 = sub_266ABD8C4();
    v46 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_13(v46))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_7();
    }

    sub_266A76A2C(v63, a1);
    sub_266A76C60(a1, v63);
    sub_266A6FFD8(v63, &v65);
    v52 = OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_17(v52, v62);
    sub_266A791A4(&v65, v2 + v14, &qword_2800B1C38, &qword_266AC0EC8);
    swift_endAccess();
    v53 = sub_266ABD8C4();
    v54 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v54))
    {
      v55 = OUTLINED_FUNCTION_24();
      *v55 = 67109120;
      v55[1] = a1;
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v56, v57, v58, v59, v60, 8u);
      OUTLINED_FUNCTION_6();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  return sub_266A798F4(&v65, &qword_2800B1C40, &unk_266AC0ED0);
}

uint64_t sub_266A75418(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v6 = OUTLINED_FUNCTION_21(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v66 - v7;
  v9 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = *(a2 + 32);
  v16 = OUTLINED_FUNCTION_9();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v18 = OUTLINED_FUNCTION_29();
  v20 = v19(v18, v15);
  v82 = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = OUTLINED_FUNCTION_29();
  v23(v22, v21);
  v72 = v14;
  if (v79 != 3 || (v24 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), v25 = OUTLINED_FUNCTION_29(), v27 = v26(v25, v24), (v27 & 0x100) != 0))
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC0EB0;
    sub_266A6FFD8(a1, inited + 32);
    sub_266A7F950(inited);
    v70 = v82;
    v51 = *(v82 + 16);
    if (v51)
    {
      v52 = v70 + 32;
      v53 = MEMORY[0x277D84F90];
      do
      {
        sub_266A6FFD8(v52, &v79);
        sub_266A6DBC4(&v79, &v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
        v54 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v8, v54 ^ 1u, 1, v9);
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {
          sub_266A798F4(v8, &qword_2800B1CB0, &qword_266AC0FB8);
        }

        else
        {
          sub_266A7977C(v8, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_266A98500();
            v53 = v59;
          }

          v55 = *(v53 + 16);
          if (v55 >= *(v53 + 24) >> 1)
          {
            sub_266A98500();
            v53 = v60;
          }

          *(v53 + 16) = v55 + 1;
          OUTLINED_FUNCTION_26_1();
          v58 = v53 + v56 + *(v57 + 72) * v55;
          v14 = v72;
          sub_266A7977C(v72, v58);
        }

        v52 += 40;
        --v51;
      }

      while (v51);
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    *&v79 = v53;
    sub_266AAA5AC();
    sub_266AAA8D0();
    v62 = v61;
    sub_266A94558();
    *&v77 = v63;
    sub_266A7F950(v62);
    sub_266AAAECC();

    OUTLINED_FUNCTION_9();
    sub_266AAB528();
    v65 = v64;

    return v65;
  }

  v66 = &v66;
  MEMORY[0x28223BE20](v27);
  *(&v66 - 2) = a1;
  result = sub_266A796B4(sub_266A797E0, (&v66 - 4), v20);
  if (v29)
  {
    v30 = *(v20 + 16);
    v31 = v30;
LABEL_34:
    sub_266A79800(v30, v31);
    goto LABEL_35;
  }

  v30 = result;
  v31 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_54;
  }

  v32 = 40 * result + 72;
  v68 = a1;
  while (1)
  {
    v33 = *(v20 + 16);
    if (v31 == v33)
    {
      break;
    }

    if (v31 >= v33)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_266A6FFD8(v20 + v32, &v79);
    v35 = v80;
    v34 = v81;
    __swift_project_boxed_opaque_existential_1(&v79, v80);
    (*(v34 + 16))(&v77, v35, v34);
    if (v78)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
      if (swift_dynamicCast())
      {
        v2.i32[0] = v73;
        v67 = v74;
        v69 = v75;
        LODWORD(v70) = v76;
        v36 = a1;
        v38 = a1[3];
        v37 = a1[4];
        __swift_project_boxed_opaque_existential_1(v36, v38);
        (*(v37 + 16))(&v77, v38, v37);
        if (!v78)
        {
          sub_266A798F4(&v77, &qword_2800B1CC8, &unk_266AC0FD0);
LABEL_21:
          a1 = v68;
          goto LABEL_22;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_21;
        }

        v39.i32[0] = v73;
        a1 = v68;
        if ((vminv_u16(vceq_s16((vmovl_u8(v2).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(v39).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && v69 == v75 && v70 == v76 && v67 == v74)
        {
          v40 = v81;
          __swift_project_boxed_opaque_existential_1(&v79, v80);
          v41 = OUTLINED_FUNCTION_22();
          a1 = v68;
          v43 = v42(v41, v40);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v79);
          if ((v43 & 0x100) != 0)
          {
            goto LABEL_32;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_266A798F4(&v77, &qword_2800B1CC8, &unk_266AC0FD0);
    }

LABEL_22:
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v79);
LABEL_23:
    if (v31 != v30)
    {
      if (v30 < 0)
      {
        goto LABEL_49;
      }

      v44 = *(v20 + 16);
      if (v30 >= v44)
      {
        goto LABEL_50;
      }

      result = sub_266A6FFD8(v20 + 32 + 40 * v30, &v79);
      if (v31 >= v44)
      {
        goto LABEL_51;
      }

      sub_266A6FFD8(v20 + v32, &v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266AB10A8(v20, v45, v46, v47);
        v20 = v49;
      }

      v48 = v20 + 40 * v30;
      __swift_destroy_boxed_opaque_existential_1Tm((v48 + 32));
      result = sub_266A6DBC4(&v77, v48 + 32);
      if (v31 >= *(v20 + 16))
      {
        goto LABEL_52;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v20 + v32));
      result = sub_266A6DBC4(&v79, v20 + v32);
      v82 = v20;
    }

    ++v30;
LABEL_32:
    ++v31;
    v32 += 40;
  }

  v14 = v72;
  if (v31 >= v30)
  {
    goto LABEL_34;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_266A75BA8()
{
  v1 = v0;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266ABD8D4();
  __swift_project_value_buffer(v2, qword_280BB7028);
  v3 = sub_266ABD8C4();
  v4 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v4))
  {
    v5 = OUTLINED_FUNCTION_25();
    v6 = OUTLINED_FUNCTION_23();
    *&v24[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_266A66D34(0xD00000000000001ALL, 0x8000000266ABFA80, v24);
    _os_log_impl(&dword_266A65000, v3, v4, "#feedback UserNotificationService - %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
  }

  v7 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest;
  OUTLINED_FUNCTION_18(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest, v23);
  sub_266A6F918(v1 + v7, v24, &qword_2800B1C38, &qword_266AC0EC8);
  if (*(&v24[1] + 1))
  {
    sub_266A6FFD8(v24, &v25);
    sub_266A798F4(v24, &qword_2800B1C38, &qword_266AC0EC8);
    sub_266A6DBC4(&v25, v27);
    sub_266A6F918(v1 + v7, v24, &qword_2800B1C38, &qword_266AC0EC8);
    if (*(&v24[1] + 1))
    {
      v8 = BYTE8(v24[2]);
      sub_266A798F4(v24, &qword_2800B1C38, &qword_266AC0EC8);
      v9 = v28;
      v10 = OUTLINED_FUNCTION_12(v27);
      v11 = Request.winningParticipants.getter(v10, v9);
      sub_266A72DD4(v11, &v25);

      if (v26)
      {
        sub_266A6DBC4(&v25, v24);
        if (!(v8 & 1 | ((sub_266A75F08(v24) & 1) == 0)))
        {
          v12 = v28;
          v13 = OUTLINED_FUNCTION_12(v27);
          if (!Request.isDirectTrigger.getter(v13, v12))
          {
            sub_266A6FFD8(v24, &v25);
            sub_266A760F0();
            v15 = v14;
            sub_266A798F4(&v25, &qword_2800B1C48, &unk_266AC1310);
            sub_266A76E54();
            v16 = sub_266ABD8C4();
            v17 = sub_266ABDD54();
            if (OUTLINED_FUNCTION_14_0(v17))
            {
              v18 = OUTLINED_FUNCTION_19();
              *v18 = 0;
              _os_log_impl(&dword_266A65000, v16, v17, "#feedback UserNotificationService - notification sent for local winner at assistant dismissal", v18, 2u);
              OUTLINED_FUNCTION_8();
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        goto LABEL_18;
      }

      v19 = &qword_2800B1C48;
      v20 = &unk_266AC1310;
      v21 = &v25;
    }

    else
    {
      v19 = &qword_2800B1C38;
      v20 = &qword_266AC0EC8;
      v21 = v24;
    }

    sub_266A798F4(v21, v19, v20);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    goto LABEL_19;
  }

  sub_266A798F4(v24, &qword_2800B1C38, &qword_266AC0EC8);
LABEL_19:
  memset(v24, 0, 41);
  OUTLINED_FUNCTION_17(v1 + v7, v27);
  sub_266A791A4(v24, v1 + v7, &qword_2800B1C38, &qword_266AC0EC8);
  return swift_endAccess();
}

uint64_t sub_266A75F08(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_10_0();
  v4(v5);
  v6 = v27;
  v7 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v7 + 168))(v6, v7);
  if (v8)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v9 = OUTLINED_FUNCTION_10_0();
    v4(v9);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v10 = OUTLINED_FUNCTION_10_0();
    v12 = v11(v10);
    v14 = v13;
    v15 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
    OUTLINED_FUNCTION_18(v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals, &v25);
    v16 = *(v2 + v15);
    if (v16 && (v17 = [v16 localDeviceAssistantIdentifier]) != 0)
    {
      v18 = v17;
      v19 = sub_266ABDA84();
      v21 = v20;

      if (!v14)
      {
LABEL_5:
        if (!v21)
        {
          v22 = 1;
          goto LABEL_18;
        }

        v22 = 0;
LABEL_17:

LABEL_18:
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        return v22 & 1;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    if (v21)
    {
      if (v12 == v19 && v14 == v21)
      {

        v22 = 1;
      }

      else
      {
        v22 = sub_266ABE1C4();
      }
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v22 = 0;
  return v22 & 1;
}

void sub_266A760F0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v41 = sub_266ABD7F4();
  OUTLINED_FUNCTION_1_0();
  v39 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v37 = v7 - v6;
  v40 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_266ABD814();
  v14 = OUTLINED_FUNCTION_21(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v15 = sub_266ABDA64();
  v16 = OUTLINED_FUNCTION_21(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v17 = sub_266ABDA44();
  v18 = OUTLINED_FUNCTION_21(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  sub_266A6F918(v1, v45, &qword_2800B1C48, &unk_266AC1310);
  if (v46)
  {
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v19 = OUTLINED_FUNCTION_28();
    v20(v19);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v21 = OUTLINED_FUNCTION_28();
    v22(v21);
    v23 = v43;
    if (!v43)
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    sub_266A798F4(v45, &qword_2800B1C48, &unk_266AC1310);
    v23 = 0xEF79627261656E20;
  }

  OUTLINED_FUNCTION_12(v3);
  Request.winningDeviceName.getter();
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  sub_266ABDA34();
  sub_266ABDA24();
  sub_266ABDA14();

  sub_266ABDA24();
  sub_266ABDA54();
  sub_266A6AE78(0, &qword_2800B1C90, 0x277CCA8D8);
  static NSBundle.feedback.getter();
  sub_266ABD804();
  OUTLINED_FUNCTION_11();
  sub_266ABDA74();
  OUTLINED_FUNCTION_34();
  [v26 setTitle_];

  v27 = sub_266ABDA74();
  [v26 setCategoryIdentifier_];

  [v26 setShouldBackgroundDefaultAction_];
  if (qword_280BB6C50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18(qword_280BB6C58 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds, v44);
  sub_266ABD744();
  v28 = sub_266ABD714();
  [v26 setExpirationDate_];

  sub_266ABDA04();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  OUTLINED_FUNCTION_11();
  v29 = sub_266ABDA74();

  [v26 setBody_];

  sub_266A6FFD8(v3, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CA0, &qword_266AC0FA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC0EB0;
    v45[0] = 0xD000000000000010;
    v45[1] = 0x8000000266ABFAF0;
    sub_266ABDE54();
    sub_266ABE244();
    if (sub_266A95214(v42))
    {
      sub_266A9C670();
    }

    v31 = sub_266ABE2A4();
    *(inited + 96) = MEMORY[0x277D83B88];

    *(inited + 72) = v31;
    sub_266ABD9B4();
    v32 = sub_266ABD994();

    [v26 setUserInfo_];
  }

  v33 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.5];
  sub_266A6AE78(0, &qword_2800B1C98, 0x277CE1FC0);
  sub_266ABD7E4();
  v34 = sub_266ABD7C4();
  v36 = v35;
  (*(v39 + 8))(v37, v41);
  sub_266A77FD8(v34, v36, v26, v33, 5);
  (*(v38 + 8))(v12, v40);
  OUTLINED_FUNCTION_30();
}

double sub_266A767EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v5 = OUTLINED_FUNCTION_21(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v25[-1] - v6;
  v8 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  sub_266A6FFD8(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v15 = OUTLINED_FUNCTION_9();
    sub_266A7977C(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD8, &unk_266AC0FE0);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_266AC0EB0;
    sub_266A6E9E4(v14, v18 + v17);
    v25[0] = v18;
    sub_266AAA5AC();
    sub_266AAA8D0();
    v20 = v19;
    sub_266A94558();
    v24 = v21;
    sub_266A7F950(v20);
    v22 = v24;
    sub_266AAAECC();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_28();
    sub_266AAB528();
    OUTLINED_FUNCTION_22();

    sub_266A72DD4(v22, a2);

    sub_266A6A63C(v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_266A798F4(v7, &qword_2800B1CB0, &qword_266AC0FB8);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_266A76A2C(uint64_t a1, void *a2)
{
  if (!sub_266A76AA0(a2))
  {
    v3 = *(a1 + 32);
    v4 = OUTLINED_FUNCTION_9();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v6 = OUTLINED_FUNCTION_29();
    if (!Request.isDirectTrigger.getter(v6, v3))
    {

      sub_266A77440();
    }
  }
}

BOOL sub_266A76AA0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = *(v2 + 128);
  v4 = OUTLINED_FUNCTION_10_0();
  v3(v4);
  v5 = v23;
  sub_266A798F4(v22, &qword_2800B1CC8, &unk_266AC0FD0);
  if (!v5)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_10_0();
  v3(v6);
  v7 = v23;
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v8 = OUTLINED_FUNCTION_10_0();
    v10 = v9(v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    sub_266A798F4(v22, &qword_2800B1CC8, &unk_266AC0FD0);
    v10 = 0;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_22();
  v14(v13, v12);
  v15 = v23;
  v11 = v23 == 0;
  if (v23)
  {
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = OUTLINED_FUNCTION_22();
    v19 = v18(v17, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (!v7)
    {
      return v11;
    }
  }

  else
  {
    sub_266A798F4(v22, &qword_2800B1CC8, &unk_266AC0FD0);
    v19 = 0;
    if (!v7)
    {
      return v11;
    }
  }

  return v15 && v10 == v19;
}

uint64_t sub_266A76C60(void *a1, void *a2)
{
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_266ABD8D4();
  __swift_project_value_buffer(v4, qword_280BB7028);
  v5 = sub_266ABD8C4();
  v6 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v6))
  {
    v7 = OUTLINED_FUNCTION_25();
    v8 = OUTLINED_FUNCTION_23();
    v22[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_266A66D34(0xD000000000000022, 0x8000000266ABFCA0, v22);
    _os_log_impl(&dword_266A65000, v5, v6, "#feedback UserNotificationService - %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  if (!sub_266A76AA0(a1))
  {
    return 0;
  }

  v9 = a2[4];
  v10 = OUTLINED_FUNCTION_12(a2);
  if (Request.isDirectTrigger.getter(v10, v9))
  {
    return 0;
  }

  sub_266A77B78();
  if (sub_266A75F08(a1))
  {
    v11 = sub_266ABD8C4();
    v12 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v12))
    {
      v13 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_20(v13);
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_6();
    }

    return 0;
  }

  sub_266A6FFD8(a1, v22);
  sub_266A760F0();
  v21 = v20;
  sub_266A798F4(v22, &qword_2800B1C48, &unk_266AC1310);
  sub_266A76E54();

  return 1;
}

void sub_266A76E54()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_266ABD8D4();
  v5 = __swift_project_value_buffer(v4, qword_280BB7028);
  v6 = sub_266ABD8C4();
  v7 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_13(v7))
  {
    v8 = OUTLINED_FUNCTION_25();
    v9 = OUTLINED_FUNCTION_23();
    v28[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_266A66D34(0xD000000000000022, 0x8000000266ABFBE0, v28);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_7();
  }

  v15 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter;
  OUTLINED_FUNCTION_18(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter, &v32);
  sub_266A6F918(v1 + v15, v28, &qword_2800B1C18, &qword_266AC0EC0);
  v16 = v29;
  if (v29)
  {
    v17 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v18 = *(v16 - 1);
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_2();
    v21 = v20 - v19;
    (*(v18 + 16))(v20 - v19);
    sub_266A798F4(v28, &qword_2800B1C18, &qword_266AC0EC0);
    v22 = OUTLINED_FUNCTION_28();
    v24 = v23(v22);
    (*(v18 + 8))(v21, v16);
    if (v24)
    {
      [v24 removeAllDeliveredNotifications];
      v30 = sub_266A77184;
      v31 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 1107296256;
      v28[2] = sub_266A773D4;
      v29 = &block_descriptor_24;
      v25 = _Block_copy(v28);
      [v24 addNotificationRequest:v3 withCompletionHandler:v25];
      _Block_release(v25);
      goto LABEL_11;
    }
  }

  else
  {
    sub_266A798F4(v28, &qword_2800B1C18, &qword_266AC0EC0);
  }

  v24 = sub_266ABD8C4();
  v26 = sub_266ABDD64();
  if (OUTLINED_FUNCTION_14_0(v26))
  {
    v27 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_20(v27);
    _os_log_impl(&dword_266A65000, v24, v26, "#feedback UserNotificationService - notificationCenter is nil. Returning", v5, 2u);
    OUTLINED_FUNCTION_6();
  }

LABEL_11:

  OUTLINED_FUNCTION_30();
}

void sub_266A77184(void *a1)
{
  if (a1)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v2 = sub_266ABD8D4();
    __swift_project_value_buffer(v2, qword_280BB7028);
    v3 = a1;
    oslog = sub_266ABD8C4();
    v4 = sub_266ABDD64();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2100, &qword_266AC0FA0);
      v8 = sub_266ABDAE4();
      v10 = sub_266A66D34(v8, v9, &v15);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_266A65000, oslog, v4, "#feedback UserNotificationService - notification added error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x26D5E9280](v6, -1, -1);
      MEMORY[0x26D5E9280](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v11 = sub_266ABD8D4();
    __swift_project_value_buffer(v11, qword_280BB7028);
    oslog = sub_266ABD8C4();
    v12 = sub_266ABDD54();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266A65000, oslog, v12, "#feedback UserNotificationService - notification added.", v13, 2u);
      MEMORY[0x26D5E9280](v13, -1, -1);
    }
  }
}

void sub_266A773D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_266A77440()
{
  OUTLINED_FUNCTION_31();
  ObjectType = swift_getObjectType();
  v1 = sub_266ABD8F4();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = sub_266ABD914();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  sub_266A77B78();
  sub_266A6AE78(0, &qword_280BB6C08, 0x277D85C78);
  v15 = sub_266ABDD94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = ObjectType;
  v19[4] = sub_266A79540;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_266A77B34;
  v19[3] = &block_descriptor;
  v18 = _Block_copy(v19);

  sub_266ABD904();
  v19[0] = MEMORY[0x277D84F90];
  sub_266A79734(&qword_2800B1C60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C68, &qword_266AC0F88);
  sub_266A79560();
  sub_266ABDE24();
  MEMORY[0x26D5E8650](0, v14, v7, v18);
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_30();
}

void sub_266A776F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = sub_266A795C4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266A77ACC;
    aBlock[3] = &block_descriptor_21;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:10.0];
    _Block_release(v5);
    v8 = *&v6[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer];
    *&v6[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer] = v7;
  }
}

uint64_t sub_266A77834(void *a1, uint64_t a2)
{
  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v4 = sub_266ABD8D4();
  __swift_project_value_buffer(v4, qword_280BB7028);
  v5 = sub_266ABD8C4();
  v6 = sub_266ABDD54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266A65000, v5, v6, "#feedback UserNotificationService - timer fired.", v7, 2u);
    MEMORY[0x26D5E9280](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest;
  swift_beginAccess();
  sub_266A6F918(a2 + v8, &v16, &qword_2800B1C38, &qword_266AC0EC8);
  if (!*(&v17 + 1))
  {
    return sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  }

  sub_266A6FFD8(&v16, v20);
  sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  sub_266A6DBC4(v20, v21);
  sub_266A6F918(a2 + v8, &v16, &qword_2800B1C38, &qword_266AC0EC8);
  if (!*(&v17 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    return sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  }

  v9 = v19;
  sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  if ((v9 & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_266A760F0();
    v11 = v10;
    sub_266A798F4(&v16, &qword_2800B1C48, &unk_266AC1310);
    sub_266A76E54();
    v12 = sub_266ABD8C4();
    v13 = sub_266ABDD54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266A65000, v12, v13, "#feedback UserNotificationService - notification sent after timeout waiting for winner participation", v14, 2u);
      MEMORY[0x26D5E9280](v14, -1, -1);
    }
  }

  [a1 invalidate];
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

void sub_266A77ACC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_266A77B34(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_266A77B78()
{
  v1 = v0;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266ABD8D4();
  __swift_project_value_buffer(v2, qword_280BB7028);
  v3 = sub_266ABD8C4();
  v4 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v4))
  {
    v5 = OUTLINED_FUNCTION_19();
    *v5 = 0;
    _os_log_impl(&dword_266A65000, v3, v4, "#feedback UserNotificationService - timer stopped.", v5, 2u);
    OUTLINED_FUNCTION_8();
  }

  v6 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer;
  [*(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

id UserNotificationServiceImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotificationServiceImpl.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserNotificationServiceImpl();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_266A77E14(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v16, v5, v6);
  if (!v17)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2.i32[0] = v15[0];
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 16))(v16, v7, v8);
  if (!v17)
  {
LABEL_7:
    sub_266A798F4(v16, &qword_2800B1CC8, &unk_266AC0FD0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v10 = vmovl_u8(v2).u64[0];
    v11 = vuzp1_s8(v10, v10);
    v16[0] = __PAIR64__(v15[1], v11.u32[0]);
    if (static AdvertisementModel.== infix(_:_:)(v16, v15, v11, v9))
    {
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v12);
      return ((*(v13 + 80))(v12, v13) >> 8) & 1;
    }
  }

  return 0;
}

id sub_266A77FD8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_266ABDA74();

  v9 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v8 content:a3 trigger:a4 destinations:a5];

  return v9;
}

void UserNotificationServiceImpl.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v9 = sub_266ABD8D4();
  __swift_project_value_buffer(v9, qword_280BB7028);
  v10 = a2;
  v11 = sub_266ABD8C4();
  v12 = sub_266ABDD54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_25();
    v55 = OUTLINED_FUNCTION_23();
    v56 = a4;
    v61[0] = v55;
    *v13 = 136315138;
    v14 = [v10 notification];
    v15 = v10;
    v16 = a3;
    v17 = v14;
    v54 = v12;
    v18 = [v14 description];
    v19 = sub_266ABDA84();
    v20 = v5;
    v22 = v21;

    a3 = v16;
    v10 = v15;

    v23 = sub_266A66D34(v19, v22, v61);
    v5 = v20;

    *(v13 + 4) = v23;
    _os_log_impl(&dword_266A65000, v11, v54, "#feedback UserNotificationService - handleNotificationResponse for notification: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    a4 = v56;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v24 = [v10 actionIdentifier];
  v25 = sub_266ABDA84();
  v27 = v26;

  if (v25 == sub_266ABDA84() && v27 == v28)
  {

LABEL_12:
    v31 = [v10 notification];
    v32 = [v31 request];

    v33 = [v32 content];
    v34 = [v33 userInfo];

    v35 = sub_266ABD9A4();
    v59 = 0xD000000000000010;
    v60 = 0x8000000266ABFAF0;
    sub_266ABDE54();
    sub_266A785A8(v35, &v57, v61);

    sub_266A79218(v61);
    if (v58)
    {
      if (swift_dynamicCast())
      {
        sub_266A7860C();
        if (v58)
        {
          sub_266A6DBC4(&v57, v61);
          v36 = type metadata accessor for KeyValueStore();
          type metadata accessor for FeedbackSELFInstrumentationService();
          inited = swift_initStackObject();
          inited[2] = v36;
          inited[3] = &protocol witness table for KeyValueStore;
          inited[4] = v36;
          inited[5] = &protocol witness table for KeyValueStore;
          v38 = sub_266A8FE1C(v61);
          v39 = sub_266ABD8C4();
          v40 = sub_266ABDD54();
          if (OUTLINED_FUNCTION_14_0(v40))
          {
            v41 = OUTLINED_FUNCTION_24();
            *v41 = 67109120;
            *(v41 + 4) = v38 & 1;
            _os_log_impl(&dword_266A65000, v39, v40, "#feedback UserNotificationService - Dismissal of notification tracked successfully: %{BOOL}d.", v41, 8u);
            OUTLINED_FUNCTION_8();
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          goto LABEL_18;
        }

        sub_266A798F4(&v57, &qword_2800B1C40, &unk_266AC0ED0);
        v45 = sub_266ABD8C4();
        v53 = sub_266ABDD54();
        if (OUTLINED_FUNCTION_4_0(v53))
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_266A798F4(&v57, &qword_2800B1C50, &qword_266AC0EE0);
    }

    v45 = sub_266ABD8C4();
    v46 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v46))
    {
LABEL_22:
      v47 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_20(v47);
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_6();
    }

LABEL_23:

    return;
  }

  v30 = sub_266ABE1C4();

  if (v30)
  {
    goto LABEL_12;
  }

LABEL_18:
  v42 = v5 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  OUTLINED_FUNCTION_18(v42, v61);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 8);
    ObjectType = swift_getObjectType();
    (*(v43 + 8))(v10, a3, a4, ObjectType, v43);
    swift_unknownObjectRelease();
  }
}

double sub_266A785A8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_266AB0D04(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_266A68ADC(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_266A7860C()
{
  OUTLINED_FUNCTION_31();
  v73 = v0;
  v62 = v1;
  v63 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v56[1] = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v57 = v4;
  MEMORY[0x28223BE20](v5);
  v64 = v56 - v6;
  v60 = sub_266ABD5B4();
  OUTLINED_FUNCTION_1_0();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v75 = v10 - v9;
  v11 = sub_266ABD634();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v72 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v56 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v56 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v56 - v23;
  type metadata accessor for FeedbackServiceImpl();
  static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter();
  v25 = sub_266ABD604();
  v27 = v26;
  v28 = *(v13 + 8);
  v71 = v13 + 8;
  v74 = v28;
  v28(v24, v11);
  v81 = MEMORY[0x277D84F90];
  v69 = v25;
  OUTLINED_FUNCTION_9();
  sub_266ABD5E4();
  v29 = [objc_opt_self() defaultManager];
  v61 = v22;
  sub_266ABD614();
  sub_266ABDA74();
  OUTLINED_FUNCTION_34();
  v30 = [v29 enumeratorAtPath_];

  v70 = v11;
  if (v30)
  {
    v58 = v30;
    sub_266ABDD34();
    v66 = v13 + 16;
    v56[0] = MEMORY[0x277D84F90];
    *&v31 = 138412546;
    v65 = v31;
    v67 = v27;
    while (1)
    {
      sub_266ABD5A4();
      if (!v77)
      {
        break;
      }

      if (swift_dynamicCast())
      {
        *&v79[0] = v69;
        *(&v79[0] + 1) = v27;

        v32 = OUTLINED_FUNCTION_10_0();
        MEMORY[0x26D5E83C0](v32);

        sub_266ABD5E4();

        v33 = sub_266ABD674();
        v35 = v34;
        sub_266ABD494();
        swift_allocObject();
        sub_266ABD484();
        sub_266A79734(&qword_2800B1C88, type metadata accessor for ParticipantModel, "5Bw\x1BpA");
        sub_266ABD474();

        sub_266A6E9E4(v64, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266A98500();
          v56[0] = v40;
        }

        v36 = *(v56[0] + 16);
        if (v36 >= *(v56[0] + 24) >> 1)
        {
          sub_266A98500();
          v56[0] = v41;
        }

        sub_266A6A5B4(v33, v35);
        sub_266A6A63C(v64);
        v74(v19, v11);
        v37 = v56[0];
        *(v56[0] + 16) = v36 + 1;
        OUTLINED_FUNCTION_26_1();
        sub_266A7977C(v57, v37 + v38 + *(v39 + 72) * v36);
        v81 = v37;
        v27 = v67;
      }
    }

    v68 = 0;
    (*(v59 + 8))(v75, v60);
  }

  else
  {
    v68 = 0;
  }

  sub_266AAA5AC();
  sub_266AAA8D0();
  v43 = v42;
  v44 = v81;
  sub_266A94558();
  *&v76 = v45;
  sub_266A7F950(v43);
  sub_266AAAECC();
  OUTLINED_FUNCTION_34();
  v75 = v44;
  sub_266AAB528();
  v47 = v46;

  v48 = 0;
  v49 = *(v47 + 16);
  v50 = MEMORY[0x277D84F90];
  for (i = v47 + 32; ; i += 40)
  {
    if (v49 == v48)
    {

      sub_266A72DD4(v50, v62);

      v74(v61, v70);
      OUTLINED_FUNCTION_30();
      return;
    }

    if (v48 >= *(v47 + 16))
    {
      break;
    }

    sub_266A6FFD8(i, v79);
    sub_266A6FFD8(v79, &v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
    if (!swift_dynamicCast())
    {
      goto LABEL_24;
    }

    v52 = v78;
    sub_266ABE244();
    if (sub_266A95214(v52))
    {
      sub_266A9C670();
    }

    v53 = sub_266ABE2A4();

    if (v53 == v73)
    {
      sub_266A6DBC4(v79, &v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266A98C28();
        v50 = v80;
      }

      v55 = *(v50 + 16);
      if (v55 >= *(v50 + 24) >> 1)
      {
        sub_266A98C28();
        v50 = v80;
      }

      *(v50 + 16) = v55 + 1;
      sub_266A6DBC4(&v76, v50 + 40 * v55 + 32);
    }

    else
    {
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    ++v48;
  }

  __break(1u);
}

char *sub_266A790B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CA8, &qword_266AC0FB0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_266A791A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266A79560()
{
  result = qword_2800B1C70;
  if (!qword_2800B1C70)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1C68, &qword_266AC0F88);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_2800B1C70);
  }

  return result;
}

uint64_t sub_266A795F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C18, &qword_266AC0EC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_266A796B4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_266A79734(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A7977C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A79800(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_266A98A38(result);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_266A9D164((v9 + 40 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_266A798F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D5E9280);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34()
{
}

uint64_t sub_266A799E0(uint64_t a1, char a2)
{
  sub_266ABDB04();
}

uint64_t sub_266A79A40(uint64_t a1, unsigned __int8 a2)
{
  sub_266ABDB04();
}

uint64_t sub_266A79AB8(uint64_t a1, char a2)
{
  sub_266ABDB04();
}

uint64_t sub_266A79BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_266ABDB04();
}

uint64_t sub_266A79C88(uint64_t a1, char a2)
{
  sub_266ABDB04();
}

uint64_t sub_266A79D08(uint64_t a1, char a2)
{
  sub_266ABDB04();
}

uint64_t sub_266A79E4C(uint64_t a1, char a2)
{
  sub_266ABDB04();
}

BOOL static AdvertisementModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  result = 0;
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 6) == *(a2 + 6) && *(a1 + 4) == *(a2 + 4))
  {
    return *(a1 + 7) == *(a2 + 7);
  }

  return result;
}

void *sub_266A7A008(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v46 = a1 >> 24;
  v47 = HIDWORD(a1);
  v48 = HIWORD(a1);
  *&v52 = HIBYTE(a1);
  v43 = sub_266ABD974();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266ABDAC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266ABD984();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v42 - v12;
  v54 = 0;
  v55 = 0xE000000000000000;
  LOBYTE(v53) = v1;
  v13 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v13);

  v53 = HIBYTE(v1);
  v14 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v14);

  LOBYTE(v53) = v2;
  v15 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v15);

  LOBYTE(v53) = v46;
  v16 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v16);

  LOWORD(v53) = v47;
  v17 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v17);

  LOBYTE(v53) = v48;
  sub_266ABDF24();
  LOBYTE(v53) = v52;
  v18 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v18);

  sub_266ABDAB4();
  v19 = sub_266ABDA94();
  v21 = v20;
  result = (*(v6 + 8))(v8, v5);
  if (v21 >> 60 == 15)
  {
    goto LABEL_18;
  }

  v23 = MEMORY[0x277CC5588];
  v24 = MEMORY[0x277CC5580];
  sub_266A6CF84(&qword_2800B1CE0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  v25 = v43;
  sub_266ABD944();
  sub_266A6CCDC(v19, v21);
  sub_266A6CDD8(v19, v21, v4, MEMORY[0x277CC5588], &qword_2800B1CE0, v23, v24);
  sub_266A7BB30(v19, v21);
  v26 = v49;
  sub_266ABD934();
  (*(v45 + 8))(v4, v25);
  sub_266A7BB30(v19, v21);
  (*(v50 + 16))(v44, v26, v51);
  sub_266A6CF84(&qword_2800B1CE8, MEMORY[0x277CC55B0], MEMORY[0x277CC55B8]);
  result = sub_266ABDB84();
  v48 = v54;
  v27 = *(v54 + 16);
  v28 = v27 - v55;
  if (v27 == v55)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_4:

    v54 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    sub_266A6D26C();
    v30 = sub_266ABD9E4();

    (*(v50 + 8))(v49, v51);
    return v30;
  }

  if (v27 <= v55)
  {
    __break(1u);
  }

  else if ((v55 & 0x8000000000000000) == 0)
  {
    if (v27)
    {
      v31 = (v55 + v48 + 32);
      v29 = MEMORY[0x277D84F90];
      v52 = xmmword_266AC0EB0;
      v32 = MEMORY[0x277D84BC0];
      do
      {
        v33 = *v31++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
        v34 = swift_allocObject();
        *(v34 + 16) = v52;
        *(v34 + 56) = MEMORY[0x277D84B78];
        *(v34 + 64) = v32;
        *(v34 + 32) = v33;
        v35 = sub_266ABDAA4();
        v37 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266A6CFCC();
          v29 = v40;
        }

        v38 = *(v29 + 16);
        if (v38 >= *(v29 + 24) >> 1)
        {
          sub_266A6CFCC();
          v29 = v41;
        }

        *(v29 + 16) = v38 + 1;
        v39 = v29 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = v37;
        --v28;
      }

      while (v28);
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void Advertisement.id.getter()
{
  v61 = sub_266ABD974();
  OUTLINED_FUNCTION_1_0();
  v66 = v0;
  MEMORY[0x28223BE20](v1);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_266ABDAC4();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266ABD984();
  OUTLINED_FUNCTION_1_0();
  v63 = v10;
  v64 = v9;
  v11 = MEMORY[0x28223BE20](v9);
  *&v65 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v61 - v13;
  v70 = 0;
  v71 = 0xE000000000000000;
  v14 = OUTLINED_FUNCTION_6_0();
  LOBYTE(v68) = v15(v14);
  sub_266ABE194();
  OUTLINED_FUNCTION_18_0();

  v16 = OUTLINED_FUNCTION_3_1();
  v17(v16);
  v68 = v69;
  sub_266ABE194();
  OUTLINED_FUNCTION_18_0();

  v18 = OUTLINED_FUNCTION_3_1();
  v20 = v19(v18);
  OUTLINED_FUNCTION_12_0(v20);
  OUTLINED_FUNCTION_18_0();

  v21 = OUTLINED_FUNCTION_3_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_12_0(v23);
  OUTLINED_FUNCTION_18_0();

  v24 = OUTLINED_FUNCTION_3_1();
  LOWORD(v68) = v25(v24);
  sub_266ABE194();
  OUTLINED_FUNCTION_18_0();

  v26 = OUTLINED_FUNCTION_3_1();
  v27(v26);
  sub_266ABDF24();
  v28 = OUTLINED_FUNCTION_6_0();
  v30 = v29(v28);
  v31 = OUTLINED_FUNCTION_12_0(v30);
  MEMORY[0x26D5E83C0](v31);

  sub_266ABDAB4();
  sub_266ABDA94();
  v33 = v32;
  (*(v5 + 8))(v8, v67);
  if (v33 >> 60 == 15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v34 = MEMORY[0x277CC5588];
  v35 = MEMORY[0x277CC5580];
  sub_266A6CF84(&qword_2800B1CE0, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  v36 = v61;
  sub_266ABD944();
  v37 = OUTLINED_FUNCTION_6_0();
  sub_266A6CCDC(v37, v38);
  v39 = OUTLINED_FUNCTION_6_0();
  sub_266A6CDD8(v39, v40, v3, v41, &qword_2800B1CE0, v34, v35);
  v42 = OUTLINED_FUNCTION_6_0();
  sub_266A7BB30(v42, v43);
  v44 = v62;
  sub_266ABD934();
  (*(v66 + 8))(v3, v36);
  v45 = OUTLINED_FUNCTION_6_0();
  sub_266A7BB30(v45, v46);
  v47 = v63;
  (*(v63 + 16))(v65, v44, v64);
  sub_266A6CF84(&qword_2800B1CE8, MEMORY[0x277CC55B0], MEMORY[0x277CC55B8]);
  sub_266ABDB84();
  v48 = v70;
  v49 = v71;
  v67 = *(v70 + 16);
  if (v71 != v67)
  {
    v66 = v70 + 32;
    v50 = MEMORY[0x277D84F90];
    v65 = xmmword_266AC0EB0;
    v51 = v71;
    while ((v49 & 0x8000000000000000) == 0)
    {
      if (v51 >= *(v48 + 16))
      {
        goto LABEL_15;
      }

      v52 = *(v66 + v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
      v53 = swift_allocObject();
      *(v53 + 16) = v65;
      *(v53 + 56) = MEMORY[0x277D84B78];
      *(v53 + 64) = MEMORY[0x277D84BC0];
      *(v53 + 32) = v52;
      v54 = sub_266ABDAA4();
      v56 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266A6CFCC();
        v50 = v59;
      }

      v57 = *(v50 + 16);
      if (v57 >= *(v50 + 24) >> 1)
      {
        sub_266A6CFCC();
        v50 = v60;
      }

      ++v51;
      *(v50 + 16) = v57 + 1;
      v58 = v50 + 16 * v57;
      *(v58 + 32) = v54;
      *(v58 + 40) = v56;
      if (v67 == v51)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_4:

  v70 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
  sub_266A6D26C();
  sub_266ABD9E4();

  (*(v47 + 8))(v44, v64);
}

uint64_t Advertisement.description.getter(uint64_t a1)
{
  sub_266ABDEA4();
  OUTLINED_FUNCTION_17_0();
  swift_getDynamicType();
  v1 = sub_266ABE2F4();
  MEMORY[0x26D5E83C0](v1);

  OUTLINED_FUNCTION_9_0();
  v2 = OUTLINED_FUNCTION_1();
  v41 = v3(v2);
  v4 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v4);

  OUTLINED_FUNCTION_13_0();
  MEMORY[0x26D5E83C0](0x656369766564202CLL);
  v5 = OUTLINED_FUNCTION_1();
  v7 = v6(v5);
  OUTLINED_FUNCTION_19_0(v7, v8, &type metadata for AdvertisementDeviceClass, v9, v10, v11, v12, v13, v36, *v38, *&v38[4], v41);
  sub_266ABDF24();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x26D5E83C0](0x656369766564202CLL);
  v14 = OUTLINED_FUNCTION_1();
  v15(v14);
  v16 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x26D5E83C0](v16);

  OUTLINED_FUNCTION_16_1();
  v17 = OUTLINED_FUNCTION_1();
  v18(v17);
  v19 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x26D5E83C0](v19);

  OUTLINED_FUNCTION_15_0();
  v20 = OUTLINED_FUNCTION_1();
  v42 = v21(v20);
  v22 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v22);

  OUTLINED_FUNCTION_8_0();
  v23 = OUTLINED_FUNCTION_1();
  v25 = v24(v23);
  OUTLINED_FUNCTION_19_0(v25, v26, &type metadata for AdvertisementProductType, v27, v28, v29, v30, v31, v37, v39, v40, v42);
  sub_266ABDF24();
  OUTLINED_FUNCTION_10_1();
  v32 = OUTLINED_FUNCTION_1();
  v33(v32);
  v34 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x26D5E83C0](v34);

  MEMORY[0x26D5E83C0](62, 0xE100000000000000);
  return 0;
}

id Advertisement.asCDAAdvertisement.getter()
{
  result = [objc_allocWithZone(MEMORY[0x277D56C98]) init];
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_5();
    v4 = v3(v2);
    OUTLINED_FUNCTION_21_1(v4, sel_setConfidenceScore_);
    v5 = OUTLINED_FUNCTION_5();
    v6(v5);
    [v1 setDeviceClass_];
    v7 = OUTLINED_FUNCTION_5();
    v9 = v8(v7);
    OUTLINED_FUNCTION_21_1(v9, sel_setDeviceGroup_);
    v10 = OUTLINED_FUNCTION_5();
    v12 = v11(v10);
    OUTLINED_FUNCTION_21_1(v12, sel_setGoodnessScore_);
    v13 = OUTLINED_FUNCTION_5();
    [v1 setAudioHash_];
    v15 = OUTLINED_FUNCTION_5();
    v16(v15);
    [v1 setProductType_];
    v17 = OUTLINED_FUNCTION_5();
    v19 = v18(v17);
    OUTLINED_FUNCTION_21_1(v19, sel_setTieBreaker_);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A7B2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7247656369766564 && a2 == 0xEB0000000070756FLL;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7373656E646F6F67 && a2 == 0xED000065726F6353;
        if (v8 || (sub_266ABE1C4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1752392040 && a2 == 0xE400000000000000;
          if (v9 || (sub_266ABE1C4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079;
            if (v10 || (sub_266ABE1C4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6B61657242656974 && a2 == 0xEA00000000007265)
            {

              return 6;
            }

            else
            {
              v12 = sub_266ABE1C4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266A7B500(unsigned __int8 a1)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a1);
  return sub_266ABE2A4();
}

uint64_t sub_266A7B55C(uint64_t a1)
{
  v2 = *v1;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](v2);
  return sub_266ABE2A4();
}

uint64_t sub_266A7B5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A7B2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A7B5E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A7B4F8();
  *a1 = result;
  return result;
}

uint64_t sub_266A7B610(uint64_t a1)
{
  v2 = sub_266A71374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A7B64C(uint64_t a1)
{
  v2 = sub_266A71374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdvertisementModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D28, &qword_266AC1008);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A71374();
  sub_266ABE2B4();
  if (!v2)
  {
    v24[2] = 0;
    OUTLINED_FUNCTION_4_1();
    v11 = sub_266ABE094();
    v24[0] = 1;
    sub_266A7BB44();
    OUTLINED_FUNCTION_20_0(&type metadata for AdvertisementDeviceClass, v24);
    v12 = v24[1];
    v23[4] = 2;
    OUTLINED_FUNCTION_4_1();
    v20 = sub_266ABE094();
    v21 = v12;
    v23[3] = 3;
    OUTLINED_FUNCTION_4_1();
    LOBYTE(v12) = sub_266ABE094();
    v23[2] = 4;
    OUTLINED_FUNCTION_4_1();
    v19 = sub_266ABE0A4();
    v23[0] = 5;
    sub_266A7BB98();
    OUTLINED_FUNCTION_20_0(&type metadata for AdvertisementProductType, v23);
    v18 = v23[1];
    v22 = 6;
    OUTLINED_FUNCTION_4_1();
    v14 = sub_266ABE094();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    v15 = v20;
    *(a2 + 1) = v21;
    *(a2 + 2) = v15;
    *(a2 + 3) = v12;
    v16 = v18;
    *(a2 + 4) = v19;
    *(a2 + 6) = v16;
    *(a2 + 7) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AdvertisementModel.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 6);
  OUTLINED_FUNCTION_7_0();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](v1);
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](v2);
  return sub_266ABE264();
}

uint64_t AdvertisementModel.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 6);
  OUTLINED_FUNCTION_7_0();
  sub_266ABE244();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](v1);
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](v2);
  sub_266ABE264();
  return sub_266ABE2A4();
}

uint64_t sub_266A7BA80()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 6);
  OUTLINED_FUNCTION_7_0();
  sub_266ABE244();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](v1);
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](v2);
  sub_266ABE264();
  return sub_266ABE2A4();
}

uint64_t sub_266A7BB30(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266A6A5B4(result, a2);
  }

  return result;
}

unint64_t sub_266A7BB44()
{
  result = qword_2800B1D30;
  if (!qword_2800B1D30)
  {
    result = swift_getWitnessTable("ٕw\x1Bā", &type metadata for AdvertisementDeviceClass, v0, v1);
    atomic_store(result, &qword_2800B1D30);
  }

  return result;
}

unint64_t sub_266A7BB98()
{
  result = qword_2800B1D38;
  if (!qword_2800B1D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementProductType, &type metadata for AdvertisementProductType, v0, v1);
    atomic_store(result, &qword_2800B1D38);
  }

  return result;
}

unint64_t sub_266A7BBEC(uint64_t a1)
{
  result = sub_266A7BC14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266A7BC14()
{
  result = qword_2800B1D40;
  if (!qword_2800B1D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementModel, &type metadata for AdvertisementModel, v0, v1);
    atomic_store(result, &qword_2800B1D40);
  }

  return result;
}

unint64_t sub_266A7BC6C()
{
  result = qword_2800B1D48;
  if (!qword_2800B1D48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementModel, &type metadata for AdvertisementModel, v0, v1);
    atomic_store(result, &qword_2800B1D48);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AdvertisementModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 6) = a2 + 8;
    }
  }

  return result;
}