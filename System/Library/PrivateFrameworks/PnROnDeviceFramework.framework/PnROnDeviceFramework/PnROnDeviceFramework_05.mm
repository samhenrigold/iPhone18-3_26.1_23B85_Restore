id PnRSiriTurnGrainSummary.createSiriTurnGrainSummarySELFEvent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v293 = &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  *&v296 = &v259 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  *&v297 = &v259 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v259 - v8;
  v305 = sub_25E9D77F0();
  v10 = *(v305 - 8);
  v11 = MEMORY[0x28223BE20](v305);
  v298 = &v259 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v294 = &v259 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  *&v295 = &v259 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v299 = &v259 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v259 - v19;
  v21 = *v0;
  v22 = v0[1];
  v23 = v0[2];
  v24 = v0[3];
  v25 = v0[5];
  v303 = v0[4];
  v302 = v25;
  v26 = v0[6];
  v27 = *(v0 + 9);
  v323 = *(v0 + 7);
  v324 = v27;
  v28 = *(v0 + 13);
  v325 = *(v0 + 11);
  v326 = v28;
  v300 = v0[15];
  v322 = *(v0 + 8);
  v301 = v0[18];
  v29 = *(v0 + 19);
  v321 = v0[27];
  v30 = *(v0 + 25);
  v319 = *(v0 + 23);
  v320 = v30;
  v31 = *(v0 + 21);
  v317 = v29;
  v318 = v31;
  v32 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v32)
  {
LABEL_9:
    if (qword_280F6FE70 != -1)
    {
      goto LABEL_171;
    }

    goto LABEL_10;
  }

  v291 = v24;
  v304 = v32;
  v33 = [objc_allocWithZone(MEMORY[0x277D59ED0]) init];
  if (!v33)
  {

    goto LABEL_9;
  }

  v34 = v33;
  v268 = v23;
  v35 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v35)
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v42 = sub_25E9D7F10();
    __swift_project_value_buffer(v42, qword_280F6FE78);
    v43 = sub_25E9D7F00();
    v44 = sub_25E9D8120();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_25E971000, v43, v44, "PNRODSchemaPNRODClientEventMetadata init failed!", v45, 2u);
      MEMORY[0x25F8C51A0](v45, -1, -1);
    }

    goto LABEL_163;
  }

  v36 = v35;
  if (!v22)
  {
    goto LABEL_7;
  }

  sub_25E9D77B0();
  v37 = v305;
  if ((*(v10 + 48))(v9, 1, v305) == 1)
  {
    sub_25E9961C4(v9);
LABEL_7:
    [v34 setTurnid_];
    goto LABEL_19;
  }

  (*(v10 + 32))(v20, v9, v37);
  v46 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v47 = sub_25E9D77D0();
  v48 = [v46 initWithNSUUID_];

  [v34 setTurnid_];
  (*(v10 + 8))(v20, v305);
LABEL_19:
  v267 = v36;
  *&v308 = v268;
  *(&v308 + 1) = v291;
  *&v309 = v303;
  *(&v309 + 1) = v302;
  v49 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
  [v34 setSrt_];

  v316 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_25E9D8290())
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v255 = sub_25E9D7F10();
    __swift_project_value_buffer(v255, qword_280F6FE78);
    v256 = sub_25E9D7F00();
    v257 = sub_25E9D8120();
    if (os_log_type_enabled(v256, v257))
    {
      v258 = swift_slowAlloc();
      *v258 = 0;
      _os_log_impl(&dword_25E971000, v256, v257, "queryDecorationEvent-PNRODSchemaPNRODQueryDecoration init failed!", v258, 2u);
      MEMORY[0x25F8C51A0](v258, -1, -1);
    }

    goto LABEL_163;
  }

  if (!v26)
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v162 = sub_25E9D7F10();
    __swift_project_value_buffer(v162, qword_280F6FE78);
    v105 = sub_25E9D7F00();
    v106 = sub_25E9D8120();
    v163 = os_log_type_enabled(v105, v106);
    v108 = v267;
    if (!v163)
    {
      goto LABEL_162;
    }

    v109 = swift_slowAlloc();
    *v109 = 0;
    v110 = "Data for queryDecoration Mapping is Missing!";
    goto LABEL_161;
  }

  v261 = v21;
  v266 = v34;
  v50 = v26 + 64;
  v51 = 1 << *(v26 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v26 + 64);
  v54 = (v51 + 63) >> 6;
  v262 = (v10 + 48);
  v260 = (v10 + 32);
  v263 = (v10 + 8);
  v264 = v22;
  v292 = v26;

  v55 = 0;
  v56 = MEMORY[0x277D84F90];
LABEL_24:
  v265 = v56;
  v57 = v55;
  if (!v53)
  {
    goto LABEL_26;
  }

  do
  {
    v55 = v57;
LABEL_29:
    v58 = __clz(__rbit64(v53)) | (v55 << 6);
    v53 &= v53 - 1;
    v59 = (*(v292 + 56) + 360 * v58);
    v60 = *v59;
    v61 = *(v59 + 4);
    v62 = *(v59 + 6);
    v269 = *(v59 + 2);
    v270 = v62;
    v63 = *(v59 + 10);
    v271 = *(v59 + 14);
    v272 = v63;
    v64 = *(v59 + 18);
    v273 = *(v59 + 22);
    v274 = v64;
    v65 = *(v59 + 26);
    v275 = *(v59 + 30);
    v276 = v65;
    v66 = *(v59 + 34);
    v277 = *(v59 + 38);
    v278 = v66;
    v67 = *(v59 + 42);
    v279 = *(v59 + 46);
    v280 = v67;
    v68 = *(v59 + 50);
    v281 = *(v59 + 54);
    v282 = v68;
    v69 = *(v59 + 58);
    v283 = *(v59 + 62);
    v284 = v69;
    v70 = *(v59 + 66);
    v285 = *(v59 + 70);
    v286 = v70;
    v71 = *(v59 + 74);
    v287 = *(v59 + 78);
    v288 = v71;
    v59 += 82;
    v72 = *v59;
    v289 = *(v59 + 1);
    v290 = v72;
    v73 = objc_allocWithZone(MEMORY[0x277D59EB0]);

    v74 = [v73 init];
    if (v74)
    {
      v75 = v74;
      v76 = v297;
      sub_25E9D77B0();

      v77 = v305;
      if ((*v262)(v76, 1, v305) == 1)
      {
        sub_25E9961C4(v76);
        [v75 setQueryDecorationID_];
        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v78 = sub_25E9D7F10();
        __swift_project_value_buffer(v78, qword_280F6FE78);
        v79 = sub_25E9D7F00();
        v80 = sub_25E9D8120();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = v79;
          v83 = v81;
          *v81 = 0;
          v84 = v80;
          v85 = v82;
          _os_log_impl(&dword_25E971000, v82, v84, "Data for queryDecorationID Mapping is Missing!", v81, 2u);
          MEMORY[0x25F8C51A0](v83, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        (*v260)(v299, v76, v77);
        v86 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v87 = sub_25E9D77D0();
        v88 = [v86 initWithNSUUID_];

        [v75 setQueryDecorationID_];
        (*v263)(v299, v305);
      }

      if (v61)
      {
        [v75 setQueryDecorationSource_];
        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v89 = sub_25E9D7F10();
        __swift_project_value_buffer(v89, qword_280F6FE78);
        v90 = sub_25E9D7F00();
        v91 = sub_25E9D8120();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_25E971000, v90, v91, "Data for queryDecorationSource Mapping is Missing!", v92, 2u);
          MEMORY[0x25F8C51A0](v92, -1, -1);
        }
      }

      else
      {
        [v75 setQueryDecorationSource_];
      }

      v308 = v269;
      v309 = v270;
      v93 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationHandleTime_];

      v308 = v272;
      v309 = v271;
      v94 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationSpanRetrievalTime_];

      v308 = v274;
      v309 = v273;
      v95 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationContextRetrievalTime_];

      v308 = v276;
      v309 = v275;
      v96 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationToolRetrievalTime_];

      v308 = v278;
      v309 = v277;
      v97 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationRankingTime_];

      v308 = v280;
      v309 = v279;
      v98 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationOutputBuildingTime_];

      v308 = v282;
      v309 = v281;
      v99 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationTupleBuildingTime_];

      v308 = v284;
      v309 = v283;
      v100 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationTupleRankingTime_];

      v308 = v286;
      v309 = v285;
      v101 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationInputCollectionTime_];

      v308 = v288;
      v309 = v287;
      v102 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationToolRetrievalContextTime_];

      v308 = v290;
      v309 = v289;
      v103 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
      [v75 setQueryDecorationFetchDynamicEnumerationTime_];

      MEMORY[0x25F8C4950]();
      if (*((v316 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v316 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25E9D80A0();
      }

      sub_25E9D80C0();
      v56 = v316;
      goto LABEL_24;
    }

    v57 = v55;
  }

  while (v53);
  while (1)
  {
LABEL_26:
    v55 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_169;
    }

    if (v55 >= v54)
    {
      break;
    }

    v53 = *(v50 + 8 * v55);
    ++v57;
    if (v53)
    {
      goto LABEL_29;
    }
  }

  v315 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_25E9D8290())
  {

    if (qword_27FD0D5A8 != -1)
    {
      swift_once();
    }

    v104 = sub_25E9D7F10();
    __swift_project_value_buffer(v104, qword_27FD0DB30);
    v105 = sub_25E9D7F00();
    v106 = sub_25E9D8120();
    v107 = os_log_type_enabled(v105, v106);
    v34 = v266;
    v108 = v267;
    if (!v107)
    {
      goto LABEL_162;
    }

    v109 = swift_slowAlloc();
    *v109 = 0;
    v110 = "responseGeneration-PNRODSchemaPNRODResponseGeneration init failed!";
LABEL_161:
    _os_log_impl(&dword_25E971000, v105, v106, v110, v109, 2u);
    MEMORY[0x25F8C51A0](v109, -1, -1);
LABEL_162:

LABEL_163:
    return 0;
  }

  v111 = v300;
  if (!v300)
  {

    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v208 = sub_25E9D7F10();
    __swift_project_value_buffer(v208, qword_280F6FE78);
    v105 = sub_25E9D7F00();
    v106 = sub_25E9D8120();
    v209 = os_log_type_enabled(v105, v106);
    v34 = v266;
    v108 = v267;
    if (!v209)
    {
      goto LABEL_162;
    }

    v109 = swift_slowAlloc();
    *v109 = 0;
    v110 = "Data for responseGeneration Mapping is Missing!";
    goto LABEL_161;
  }

  v112 = v300 + 64;
  v113 = 1 << *(v300 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v300 + 64);
  v116 = (v113 + 63) >> 6;
  v117 = 0x800000025E9DECA0;
  *&v297 = 0x800000025E9DEC80;
  *&v290 = 0x800000025E9DEC60;
  *&v289 = 0x800000025E9DEC40;
  *&v288 = 0x800000025E9DEC10;
  *&v287 = 0x800000025E9DEBF0;
  *&v286 = 0x800000025E9DEBD0;
  *&v285 = 0x800000025E9DEBA0;

  v118 = 0;
  v119 = MEMORY[0x277D84F90];
LABEL_59:
  v299 = v119;
  v120 = v118;
  if (!v115)
  {
    goto LABEL_61;
  }

  do
  {
    v118 = v120;
LABEL_64:
    v121 = __clz(__rbit64(v115));
    v115 &= v115 - 1;
    v122 = (*(v111 + 56) + 240 * (v121 | (v118 << 6)));
    v124 = v122[1];
    v123 = v122[2];
    v308 = *v122;
    v309 = v124;
    v310 = v123;
    v125 = v122[6];
    v127 = v122[3];
    v126 = v122[4];
    v311[2] = v122[5];
    v311[3] = v125;
    v311[0] = v127;
    v311[1] = v126;
    v128 = v122[10];
    v130 = v122[7];
    v129 = v122[8];
    v313[0] = v122[9];
    v313[1] = v128;
    v311[4] = v130;
    v312 = v129;
    v131 = v122[13];
    v133 = v122[11];
    v132 = v122[12];
    v314 = v122[14];
    v313[3] = v132;
    v313[4] = v131;
    v313[2] = v133;
    v134 = objc_allocWithZone(MEMORY[0x277D59EB8]);

    sub_25E980FDC(&v308, &v306);
    v135 = [v134 init];
    if (v135)
    {
      v136 = v135;
      v299 = v117;
      v137 = v296;
      sub_25E9D77B0();

      v138 = v305;
      if ((*v262)(v137, 1, v305) == 1)
      {
        sub_25E9961C4(v137);
        [v136 setResponseGenerationID_];
        if (qword_27FD0D5A8 != -1)
        {
          swift_once();
        }

        v139 = sub_25E9D7F10();
        __swift_project_value_buffer(v139, qword_27FD0DB30);
        v140 = sub_25E9D7F00();
        v141 = sub_25E9D8120();
        v142 = os_log_type_enabled(v140, v141);
        v117 = v299;
        if (v142)
        {
          v143 = swift_slowAlloc();
          v144 = v140;
          v145 = v143;
          *v143 = 0;
          v146 = v141;
          v147 = v144;
          _os_log_impl(&dword_25E971000, v144, v146, "Data for responseGenerationID Mapping is Missing!", v143, 2u);
          MEMORY[0x25F8C51A0](v145, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        (*v260)(v295, v137, v138);
        v148 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v149 = sub_25E9D77D0();
        v150 = [v148 initWithNSUUID_];

        [v136 setResponseGenerationID_];
        (*v263)(v295, v305);
        v117 = v299;
      }

      v151 = *(&v308 + 1);
      if (*(&v308 + 1))
      {
        v152 = v308;
        if (__PAIR128__(v117, 0xD000000000000015) == v308 || (sub_25E9D8300() & 1) != 0)
        {
          v153 = 1;
LABEL_110:
          [v136 setResponseGenerationType_];
          v306 = v309;
          v307 = v310;
          v155 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          [v136 setResponseGenerationHandleTime_];

          v306 = v311[0];
          v307 = v311[1];
          v156 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          [v136 setResponseGenerationOverrideTime_];

          v306 = v311[2];
          v307 = v311[3];
          v157 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          [v136 setResponseGenerationValidationTime_];

          v306 = v311[4];
          v307 = v312;
          v158 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          [v136 setResponseGenerationCatalogTime_];

          v306 = v313[0];
          v307 = v313[1];
          v159 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          [v136 setResponseGenerationInferenceTime_];

          v306 = v313[2];
          v307 = v313[3];
          v160 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          [v136 setResponseGenerationHallucinationDetectionTime_];

          v306 = v313[4];
          v307 = v314;
          v161 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v306);
          sub_25E99FE4C(&v308);
          [v136 setResponseGenerationGMSCallTime_];

          MEMORY[0x25F8C4950]();
          if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25E9D80A0();
            v117 = v299;
          }

          sub_25E9D80C0();
          v119 = v315;
          goto LABEL_59;
        }

        if (v152 == 0xD000000000000019 && v297 == v151 || (sub_25E9D8300() & 1) != 0)
        {
          v153 = 2;
          goto LABEL_110;
        }

        if (v152 == 0xD000000000000019 && v290 == v151 || (sub_25E9D8300() & 1) != 0)
        {
          v153 = 3;
          goto LABEL_110;
        }

        if (v152 == 0xD00000000000001DLL && v289 == v151)
        {
          v153 = 4;
          goto LABEL_110;
        }

        if (sub_25E9D8300())
        {
          v153 = 4;
LABEL_95:
          v111 = v300;
          v117 = v299;
          goto LABEL_110;
        }

        if (v152 == 0xD000000000000021 && v288 == v151 || (sub_25E9D8300() & 1) != 0)
        {
          v153 = 5;
          goto LABEL_95;
        }

        if (v152 == 0xD00000000000001ALL && v287 == v151 || (sub_25E9D8300() & 1) != 0)
        {
          v153 = 6;
          goto LABEL_95;
        }

        if (v152 == 0xD000000000000017 && v286 == v151 || (sub_25E9D8300() & 1) != 0)
        {
          v153 = 7;
          goto LABEL_95;
        }

        if (v152 == 0xD000000000000023 && v285 == v151)
        {
          v153 = 8;
          goto LABEL_95;
        }

        v154 = sub_25E9D8300();
        v111 = v300;
        v117 = v299;
        if (v154)
        {
          v153 = 8;
          goto LABEL_110;
        }
      }

      v153 = 0;
      goto LABEL_110;
    }

    sub_25E99FE4C(&v308);
    v120 = v118;
  }

  while (v115);
LABEL_61:
  while (1)
  {
    v118 = v120 + 1;
    if (__OFADD__(v120, 1))
    {
      break;
    }

    if (v118 >= v116)
    {

      *&v306 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62 && sub_25E9D8290())
      {

        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v164 = sub_25E9D7F10();
        __swift_project_value_buffer(v164, qword_280F6FE78);
        v105 = sub_25E9D7F00();
        v106 = sub_25E9D8120();
        v165 = os_log_type_enabled(v105, v106);
        v34 = v266;
        v108 = v267;
        if (v165)
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          v110 = "executorEvent-PNRODSchemaPNRODExecutor init failed!";
          goto LABEL_161;
        }
      }

      else
      {
        v166 = v301;
        if (v301)
        {
          v167 = v301 + 64;
          v168 = 1 << *(v301 + 32);
          v169 = -1;
          if (v168 < 64)
          {
            v169 = ~(-1 << v168);
          }

          v170 = v169 & *(v301 + 64);
          v171 = (v168 + 63) >> 6;

          *&v279 = MEMORY[0x277D84F90];
          v172 = 0;
          if (v170)
          {
            while (1)
            {
              v173 = v172;
LABEL_131:
              v174 = __clz(__rbit64(v170));
              v170 &= v170 - 1;
              v175 = *(v166 + 56) + 232 * (v174 | (v173 << 6));
              v176 = *(v175 + 16);
              v280 = *v175;
              v281 = v176;
              v177 = *(v175 + 32);
              v178 = *(v175 + 36);
              v179 = *(v175 + 40);
              v282 = *(v175 + 56);
              v283 = v179;
              v180 = *(v175 + 72);
              v284 = *(v175 + 88);
              v285 = v180;
              v181 = *(v175 + 104);
              v286 = *(v175 + 120);
              v287 = v181;
              v182 = *(v175 + 136);
              v288 = *(v175 + 152);
              v289 = v182;
              v290 = *(v175 + 184);
              v183 = *(v175 + 216);
              v295 = *(v175 + 168);
              v296 = v183;
              v297 = *(v175 + 200);
              v184 = objc_allocWithZone(MEMORY[0x277D59E48]);

              v185 = [v184 init];
              if (v185)
              {
                v186 = v185;
                v187 = v293;
                sub_25E9D77B0();

                v188 = v305;
                if ((*v262)(v187, 1, v305) == 1)
                {
                  sub_25E9961C4(v187);
                  [v186 setExecutorId_];
                  if (qword_280F6FE70 != -1)
                  {
                    swift_once();
                  }

                  v189 = sub_25E9D7F10();
                  __swift_project_value_buffer(v189, qword_280F6FE78);
                  v190 = sub_25E9D7F00();
                  v191 = sub_25E9D8120();
                  if (os_log_type_enabled(v190, v191))
                  {
                    v192 = swift_slowAlloc();
                    v193 = v190;
                    v194 = v192;
                    *v192 = 0;
                    v195 = v191;
                    v196 = v193;
                    _os_log_impl(&dword_25E971000, v193, v195, "Data for executorId Mapping is Missing!", v192, 2u);
                    MEMORY[0x25F8C51A0](v194, -1, -1);
                  }

                  else
                  {
                  }
                }

                else
                {
                  (*v260)(v294, v187, v188);
                  v197 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v198 = sub_25E9D77D0();
                  v199 = [v197 initWithNSUUID_];

                  [v186 setExecutorId_];
                  (*v263)(v294, v305);
                }

                v308 = v280;
                v309 = v281;
                v200 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setExecutorAppIntentHandleTime_];

                if (v178)
                {
                  v201 = 0;
                }

                else
                {
                  v201 = v177;
                }

                [v186 setExecutorSearchToolQueryType_];
                v308 = v283;
                v309 = v282;
                v202 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setSearchToolQueryTime_];

                v308 = v285;
                v309 = v284;
                v203 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setPersonQueryTime_];

                v308 = v287;
                v309 = v286;
                v204 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setStringQueryLocationTime_];

                v308 = v289;
                v309 = v288;
                v205 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setStringQueryEntityMatcherTime_];

                v308 = v295;
                v309 = v290;
                v206 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setStringQueryEntityTime_];

                v308 = v297;
                v309 = v296;
                v207 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v308);
                [v186 setIdentifierQueryTime_];

                MEMORY[0x25F8C4950]();
                if (*((v306 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v306 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_25E9D80A0();
                }

                sub_25E9D80C0();
                *&v279 = v306;
                v166 = v301;
                v172 = v173;
                if (!v170)
                {
                  break;
                }
              }

              else
              {

                v172 = v173;
                v166 = v301;
                if (!v170)
                {
                  break;
                }
              }
            }
          }

          while (1)
          {
            v173 = v172 + 1;
            if (__OFADD__(v172, 1))
            {
              goto LABEL_170;
            }

            if (v173 >= v171)
            {

              v210 = v298;
              sub_25E9D77E0();
              v211 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v212 = sub_25E9D77D0();
              v213 = [v211 initWithNSUUID_];

              (*v263)(v210, v305);
              [v267 setPnrodId_];

              sub_25E98F558(0, &qword_27FD0DD88, 0x277D59EB0);
              v214 = sub_25E9D8070();

              v215 = v266;
              [v266 setQueryDecorations_];

              sub_25E98F558(0, &qword_27FD0DD90, 0x277D59EB8);
              v216 = sub_25E9D8070();

              [v215 setResponseGenerations_];

              sub_25E98F558(0, &qword_27FD0DD98, 0x277D59E48);
              v217 = sub_25E9D8070();

              [v215 setExecutors_];

              *(v311 + 8) = v323;
              *(&v311[1] + 8) = v324;
              *(&v311[2] + 8) = v325;
              *(&v311[3] + 8) = v326;
              v312 = v322;
              *(v313 + 8) = v317;
              *(&v313[3] + 8) = v320;
              *(&v313[2] + 8) = v319;
              v218 = v261;
              *&v308 = v261;
              *(&v308 + 1) = v264;
              v219 = v264;
              v220 = v166;
              v221 = v268;
              *&v309 = v268;
              *(&v309 + 1) = v291;
              *&v310 = v303;
              v222 = v303;
              *(&v310 + 1) = v302;
              *&v311[0] = v292;
              *(&v311[4] + 1) = v300;
              v223 = v300;
              *&v313[0] = v220;
              *(&v313[4] + 1) = v321;
              *(&v313[1] + 8) = v318;
              sub_25E9D0EDC();
              sub_25E98F558(0, &qword_27FD0DDA0, 0x277D59EA8);
              v224 = sub_25E9D8070();

              [v215 setPlanResolutions_];

              *(v311 + 8) = v323;
              *(&v311[1] + 8) = v324;
              *(&v311[2] + 8) = v325;
              *(&v311[3] + 8) = v326;
              v312 = v322;
              *(v313 + 8) = v317;
              *(&v313[3] + 8) = v320;
              *(&v313[2] + 8) = v319;
              *&v308 = v218;
              *(&v308 + 1) = v219;
              *&v309 = v221;
              v225 = v291;
              v226 = v292;
              *(&v309 + 1) = v291;
              *&v310 = v222;
              v227 = v302;
              *(&v310 + 1) = v302;
              *&v311[0] = v292;
              *(&v311[4] + 1) = v223;
              v228 = v301;
              *&v313[0] = v301;
              *(&v313[4] + 1) = v321;
              *(&v313[1] + 8) = v318;
              sub_25E9D185C();
              sub_25E98F558(0, &qword_27FD0DDA8, 0x277D59EA0);
              v229 = sub_25E9D8070();

              v230 = v266;
              [v266 setPlanGenerations_];

              *(v311 + 8) = v323;
              *(&v311[1] + 8) = v324;
              *(&v311[2] + 8) = v325;
              *(&v311[3] + 8) = v326;
              v312 = v322;
              *(v313 + 8) = v317;
              *(&v313[3] + 8) = v320;
              *(&v313[2] + 8) = v319;
              *&v308 = v218;
              *(&v308 + 1) = v264;
              *&v309 = v221;
              *(&v309 + 1) = v225;
              *&v310 = v303;
              *(&v310 + 1) = v227;
              *&v311[0] = v226;
              *(&v311[4] + 1) = v300;
              *&v313[0] = v228;
              *(&v313[4] + 1) = v321;
              *(&v313[1] + 8) = v318;
              v231 = v230;
              sub_25E9D2070();
              sub_25E98F558(0, &qword_27FD0DDB0, 0x277D59EC8);
              v232 = sub_25E9D8070();

              [v230 setSearchs_];

              v233 = v267;
              v234 = v304;
              [v304 setEventMetadata_];
              [v234 setPnrodSiriTurnGrainSummary_];
              if (qword_280F6FE70 != -1)
              {
                swift_once();
              }

              v235 = sub_25E9D7F10();
              __swift_project_value_buffer(v235, qword_280F6FE78);
              v236 = v304;
              v237 = sub_25E9D7F00();
              v238 = sub_25E9D8120();

              if (os_log_type_enabled(v237, v238))
              {
                v239 = swift_slowAlloc();
                v240 = swift_slowAlloc();
                *&v308 = v240;
                *v239 = 136315394;
                v241 = [v236 qualifiedMessageName];
                v242 = sub_25E9D7FB0();
                v244 = v243;

                v245 = sub_25E9887EC(v242, v244, &v308);

                *(v239 + 4) = v245;
                *(v239 + 12) = 2080;
                v246 = [v236 formattedJsonBody];
                if (v246)
                {
                  v247 = v246;
                  v248 = sub_25E9D7FB0();
                  v250 = v249;
                }

                else
                {
                  v250 = 0xE500000000000000;
                  v248 = 0x3E4C494E3CLL;
                }

                v254 = sub_25E9887EC(v248, v250, &v308);

                *(v239 + 14) = v254;
                _os_log_impl(&dword_25E971000, v237, v238, "Creating %s\n%s", v239, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x25F8C51A0](v240, -1, -1);
                MEMORY[0x25F8C51A0](v239, -1, -1);

                return v304;
              }

              else
              {

                return v304;
              }
            }

            v170 = *(v167 + 8 * v173);
            ++v172;
            if (v170)
            {
              goto LABEL_131;
            }
          }
        }

        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v251 = sub_25E9D7F10();
        __swift_project_value_buffer(v251, qword_280F6FE78);
        v105 = sub_25E9D7F00();
        v106 = sub_25E9D8120();
        v252 = os_log_type_enabled(v105, v106);
        v34 = v266;
        v108 = v267;
        if (v252)
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          v110 = "Data for executor Mapping is Missing!";
          goto LABEL_161;
        }
      }

      goto LABEL_162;
    }

    v115 = *(v112 + 8 * v118);
    ++v120;
    if (v115)
    {
      goto LABEL_64;
    }
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  swift_once();
LABEL_10:
  v38 = sub_25E9D7F10();
  __swift_project_value_buffer(v38, qword_280F6FE78);
  v39 = sub_25E9D7F00();
  v40 = sub_25E9D8120();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_25E971000, v39, v40, "PNROnDeviceProvisionalPnROnDeviceFrameworkWrapper init failed!", v41, 2u);
    MEMORY[0x25F8C51A0](v41, -1, -1);
  }

  return 0;
}

__n128 PnRLatencyContextMetrics.startEvent.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 PnRLatencyContextMetrics.endEvent.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

double PnRLatencyContextMetrics.metricsValue.getter()
{
  if (*v0 != 89 && *(v0 + 16) != 89)
  {
    return (*(v0 + 24) - *(v0 + 8)) / 1000000000.0;
  }

  return result;
}

double sub_25E9D052C()
{
  if (*v0 != 89 && *(v0 + 16) != 89)
  {
    return (*(v0 + 24) - *(v0 + 8)) / 1000000000.0;
  }

  return result;
}

uint64_t PnRSiriTurnGrainSummary.turnid.getter()
{
  v1 = *v0;

  return v1;
}

__n128 PnRSiriTurnGrainSummary.srt.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t PnRSiriTurnGrainSummary.error.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t PnRSiriTurnGrainSummary.requestType.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t PnRSiriTurnGrainSummary.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[6];
  v4 = v0[9];
  v40 = v0[12];
  v39 = v0[15];
  v38 = v0[18];
  v36 = v0[22];
  v37 = v0[23];
  v32 = v0[24];
  v33 = v0[25];
  v34 = v0[26];
  v35 = v0[27];

  sub_25E9D8240();
  MEMORY[0x25F8C4910](0x7574202020200A7BLL, 0xEE00203A64696E72);
  if (v2)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v5, v2);

  MEMORY[0x25F8C4910](0x7273202020200A2CLL, 0xEB00000000203A74);
  sub_25E9D80F0();
  result = MEMORY[0x25F8C4910](0xD000000000000016, 0x800000025E9DECC0);
  if (!v3)
  {
    __break(1u);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDB8, "td");
  sub_25E9D8310();

  v7 = sub_25E9D7F40();
  v9 = v8;

  MEMORY[0x25F8C4910](v7, v9);

  MEMORY[0x25F8C4910](0xD00000000000001FLL, 0x800000025E9DECE0);
  v10 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v10);

  result = MEMORY[0x25F8C4910](0xD000000000000015, 0x800000025E9DED00);
  if (!v4)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDC0, "xd");
  sub_25E9D8310();

  sub_25E9D77F0();
  type metadata accessor for PnRPlanResolutionRecord(0);
  sub_25E98F5E4();
  v11 = sub_25E9D7F40();
  v13 = v12;

  MEMORY[0x25F8C4910](v11, v13);

  MEMORY[0x25F8C4910](0xD00000000000001CLL, 0x800000025E9DED20);
  v14 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v14);

  result = MEMORY[0x25F8C4910](0xD000000000000015, 0x800000025E9DED40);
  if (!v40)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDC8, &qword_25E9DC190);
  sub_25E9D8310();

  v15 = sub_25E9D7F40();
  v17 = v16;

  MEMORY[0x25F8C4910](v15, v17);

  MEMORY[0x25F8C4910](0xD00000000000001CLL, 0x800000025E9DED60);
  v18 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v18);

  result = MEMORY[0x25F8C4910](0xD000000000000019, 0x800000025E9DED80);
  if (!v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDD0, &qword_25E9DC198);
  sub_25E9D8310();

  v19 = sub_25E9D7F40();
  v21 = v20;

  MEMORY[0x25F8C4910](v19, v21);

  MEMORY[0x25F8C4910](0xD00000000000001CLL, 0x800000025E9DEDA0);
  v22 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v22);

  result = MEMORY[0x25F8C4910](0x657865202020200ALL, 0xEF203A726F747563);
  if (!v38)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDD8, &qword_25E9DC1A0);
  sub_25E9D8310();

  v23 = sub_25E9D7F40();
  v25 = v24;

  MEMORY[0x25F8C4910](v23, v25);

  MEMORY[0x25F8C4910](0xD000000000000014, 0x800000025E9DEDC0);
  if (v33)
  {
    v26 = v32;
  }

  else
  {
    v26 = 0;
  }

  if (v33)
  {
    v27 = v33;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v26, v27);

  MEMORY[0x25F8C4910](0xD000000000000012, 0x800000025E9DEDE0);
  if (v35)
  {
    v28 = v34;
  }

  else
  {
    v28 = 0;
  }

  if (v35)
  {
    v29 = v35;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v28, v29);

  MEMORY[0x25F8C4910](0x727265202020200ALL, 0xEC000000203A726FLL);
  if (v37)
  {
    v30 = v36;
  }

  else
  {
    v30 = 0;
  }

  if (v37)
  {
    v31 = v37;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v30, v31);

  MEMORY[0x25F8C4910](32010, 0xE200000000000000);
  return 0;
}

id PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(void *a1)
{
  v1 = *a1;
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D59E90]) init];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = v1 - 89;
  v8 = 0.0;
  if (v2 != 89 && v7 >= 2)
  {
    v8 = (v4 - v3) / 1000000000.0;
  }

  result = [v5 setMetricValue_];
  if (v7 >= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    [v6 setStartTimestamp_];
    if (v7 >= 2)
    {
      v12 = qword_25E9DC450[v1];
    }

    else
    {
      v12 = 0;
    }

    [v6 setStartEventIndex_];
    v13 = 0;
    if (v1 != 90 && v2 != 89)
    {
      v13 = qword_25E9DC450[v2];
    }

    [v6 setEndEventIndex_];
    return v6;
  }

  __break(1u);
  return result;
}

void (*sub_25E9D0EDC())(char *, uint64_t, uint64_t)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v78 - v2;
  v91 = type metadata accessor for PnRPlanResolutionRecord(0);
  v86 = *(v91 - 8);
  v4 = MEMORY[0x28223BE20](v91);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v78 - v7;
  v8 = sub_25E9D77F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v84 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE08, &qword_25E9DC438);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  v22 = *(v0 + 72);
  v23 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = *(v22 + 64);
    v92 = v22 + 64;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v79 = (v25 + 63) >> 6;
    v81 = v9 + 16;
    v82 = v9;
    v98 = (v9 + 32);
    v87 = v22;
    v88 = (v9 + 48);
    v94 = (v9 + 8);

    v28 = 0;
    v29 = MEMORY[0x277D84F90];
    v99 = v14;
    v89 = v3;
    v90 = v8;
    v96 = v21;
    v97 = v19;
    v95 = v6;
    while (1)
    {
      v93 = v29;
      if (!v27)
      {
        if (v79 <= v28 + 1)
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = v79;
        }

        v32 = v31 - 1;
        v33 = &qword_27FD0DE10;
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v79)
          {
            v44 = v8;
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE10, &unk_25E9DC440);
            (*(*(v59 - 8) + 56))(v19, 1, 1, v59);
            v27 = 0;
            v28 = v32;
            goto LABEL_16;
          }

          v27 = *(v92 + 8 * v30);
          ++v28;
          if (v27)
          {
            v28 = v30;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v30 = v28;
LABEL_15:
      v34 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v35 = v34 | (v30 << 6);
      v36 = v87;
      v37 = v82;
      v38 = v84;
      (*(v82 + 16))(v84, *(v87 + 48) + *(v82 + 72) * v35, v8);
      v39 = v85;
      sub_25E9D3158(*(v36 + 56) + *(v86 + 72) * v35, v85);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE10, &unk_25E9DC440);
      v41 = *(v40 + 48);
      v42 = *(v37 + 32);
      v19 = v97;
      v43 = v38;
      v44 = v8;
      v42(v97, v43, v8);
      sub_25E9D31BC(v39, &v19[v41]);
      (*(*(v40 - 8) + 56))(v19, 0, 1, v40);
      v21 = v96;
LABEL_16:
      v8 = v99;
      sub_25E9D3220(v19, v21);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE10, &unk_25E9DC440);
      if ((*(*(v45 - 8) + 48))(v21, 1, v45) == 1)
      {

        return v93;
      }

      v46 = *(v45 + 48);
      v47 = *v98;
      (*v98)(v8, v21, v44);
      v6 = v95;
      sub_25E9D31BC(&v21[v46], v95);
      v48 = [objc_allocWithZone(MEMORY[0x277D59EA8]) init];
      if (!v48)
      {
        break;
      }

      v49 = v48;
      v93 = v47;
      v50 = *v6;
      v8 = *(v6 + 8);
      v51 = *(v6 + 16);
      v52 = *(v6 + 24);
      v53 = [objc_allocWithZone(MEMORY[0x277D59E90]) init];
      v54 = v53;
      if (v53)
      {
        v6 = v51;
        v33 = (v50 - 89);
        v55 = 0.0;
        v83 = v51;
        if (v51 != 89 && v33 >= 2)
        {
          v55 = (v52 - v8) / 1000000000.0;
        }

        [v53 setMetricValue_];
        if (v33 >= 2)
        {
          v56 = v8;
        }

        else
        {
          v56 = 0;
        }

        if (v56 < 0)
        {
          goto LABEL_54;
        }

        [v54 setStartTimestamp_];
        if (v33 >= 2)
        {
          v57 = qword_25E9DC450[v50];
        }

        else
        {
          v57 = 0;
        }

        [v54 setStartEventIndex_];
        v58 = 0;
        if (v50 == 90)
        {
          v6 = v95;
        }

        else
        {
          v6 = v95;
          if (v51 != 89)
          {
            v58 = qword_25E9DC450[v83];
          }
        }

        [v54 setEndEventIndex_];
      }

      [v49 setPrTotalHandleTime_];

      v60 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v61 = v99;
      v62 = sub_25E9D77D0();
      v63 = [v60 initWithNSUUID_];

      [v49 setPrId_];
      v64 = v89;
      sub_25E9D32EC(v6 + *(v91 + 28), v89);
      v8 = v90;
      if ((*v88)(v64, 1, v90) == 1)
      {
        sub_25E9961C4(v64);
        [v49 setPlanCycleId_];
      }

      else
      {
        v65 = v80;
        v93(v80, v64, v8);
        v66 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v67 = sub_25E9D77D0();
        v68 = [v66 initWithNSUUID_];

        [v49 setPlanCycleId_];
        v69 = v65;
        v61 = v99;
        (*v94)(v69, v8);
      }

      v19 = v97;
      if (*(v6 + 44))
      {
        v70 = 0;
      }

      else
      {
        v70 = *(v6 + 40);
      }

      [v49 setStatementId_];
      if (*(v6 + 36))
      {
        v71 = 0;
      }

      else
      {
        v71 = *(v6 + 32);
      }

      [v49 setActionStatementId_];
      v72 = v49;
      MEMORY[0x25F8C4950]();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25E9D80A0();
      }

      sub_25E9D80C0();

      sub_25E9D3290(v6);
      (*v94)(v61, v8);
      v29 = v100;
      v21 = v96;
    }

    v33 = v44;

    if (qword_280F6FE70 == -1)
    {
      goto LABEL_49;
    }

LABEL_55:
    swift_once();
LABEL_49:
    v73 = sub_25E9D7F10();
    __swift_project_value_buffer(v73, qword_280F6FE78);
    v74 = sub_25E9D7F00();
    v75 = sub_25E9D8120();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_25E971000, v74, v75, "PNRODSchemaPNRODPlanResolution init failed!", v76, 2u);
      MEMORY[0x25F8C51A0](v76, -1, -1);
    }

    sub_25E9D3290(v6);
    (*v94)(v8, v33);
    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t sub_25E9D185C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v56 - v2;
  v3 = sub_25E9D77F0();
  MEMORY[0x28223BE20](v3);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 96);
  v7 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v59 = (v4 + 48);
  v57 = (v4 + 32);
  v56 = (v4 + 8);

  v14 = 0;
  v61 = v8;
  v60 = v12;
  v62 = v13;
  if (v11)
  {
    while (1)
    {
      v15 = v3;
LABEL_10:
      v17 = *(v13 + 56) + 288 * (__clz(__rbit64(v11)) | (v14 << 6));
      v18 = *(v17 + 16);
      v78 = *(v17 + 20);
      v79 = v18;
      v19 = *(v17 + 40);
      v80 = *(v17 + 24);
      v81 = v19;
      v82 = *(v17 + 56);
      v20 = *(v17 + 64);
      v65 = *(v17 + 80);
      v64 = v20;
      v21 = *(v17 + 96);
      v66 = *(v17 + 112);
      v67 = v21;
      v22 = *(v17 + 128);
      v68 = *(v17 + 144);
      v69 = v22;
      v23 = *(v17 + 160);
      v70 = *(v17 + 176);
      v71 = v23;
      v24 = *(v17 + 192);
      v72 = *(v17 + 208);
      v73 = v24;
      v25 = *(v17 + 224);
      v74 = *(v17 + 240);
      v75 = v25;
      v26 = *(v17 + 256);
      v76 = *(v17 + 272);
      v77 = v26;
      v27 = objc_allocWithZone(MEMORY[0x277D59EA0]);

      v28 = [v27 init];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = v63;
      sub_25E9D77B0();

      v3 = v15;
      if ((*v59)(v30, 1, v15) == 1)
      {
        sub_25E9961C4(v30);
        [v29 setPlanCycleId_];
        if (qword_27FD0D5C0 != -1)
        {
          swift_once();
        }

        v31 = sub_25E9D7F10();
        __swift_project_value_buffer(v31, qword_27FD0DB78);
        v32 = sub_25E9D7F00();
        v33 = sub_25E9D8120();
        v34 = os_log_type_enabled(v32, v33);
        v8 = v61;
        if (v34)
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_25E971000, v32, v33, "PG event planCycleID mapping failed!", v35, 2u);
          MEMORY[0x25F8C51A0](v35, -1, -1);
        }
      }

      else
      {
        v36 = v58;
        (*v57)(v58, v30, v3);
        v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v38 = sub_25E9D77D0();
        v39 = [v37 initWithNSUUID_];

        [v29 setPlanCycleId_];
        (*v56)(v36, v3);
        v8 = v61;
      }

      v83 = v64;
      v84 = v65;
      v40 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgPlanGenTotalTime_];

      v83 = v67;
      v84 = v66;
      v41 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgFullPlannerHandleTime_];

      v83 = v69;
      v84 = v68;
      v42 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgModelInferenceTime_];

      v83 = v71;
      v84 = v70;
      v43 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgOverridesTime_];

      v83 = v73;
      v84 = v72;
      v44 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgPrescribedPlanTime_];

      v83 = v75;
      v84 = v74;
      v45 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgFullPlannerPreInferenceTime_];

      v83 = v77;
      v84 = v76;
      v46 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v83);
      [v29 setPgFullPlannerPostInferenceTime_];

      if (v78)
      {
        v47 = 0;
      }

      else
      {
        v47 = v79;
      }

      [v29 setPgModelInterface_];
      v48 = sub_25E9D7FA0();

      [v29 setPgModelIdentifier_];

      v49 = sub_25E9D7FA0();

      [v29 setPgOverridesAssetVersion_];

      [v29 setPgOverridesMatched_];
      v50 = v29;
      MEMORY[0x25F8C4950]();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25E9D80A0();
      }

      v11 &= v11 - 1;
      sub_25E9D80C0();

      v7 = v85;
      v13 = v62;
      v12 = v60;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    if (qword_280F6FE70 == -1)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v12)
      {

        return v7;
      }

      v11 = *(v8 + 8 * v16);
      ++v14;
      if (v11)
      {
        v15 = v3;
        v14 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_28:
  v52 = sub_25E9D7F10();
  __swift_project_value_buffer(v52, qword_280F6FE78);
  v53 = sub_25E9D7F00();
  v54 = sub_25E9D8120();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_25E971000, v53, v54, "PNRODSchemaPNRODPlanGeneration init failed!", v55, 2u);
    MEMORY[0x25F8C51A0](v55, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25E9D2070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v55 - v2;
  v4 = sub_25E9D77F0();
  MEMORY[0x28223BE20](v4);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 152);
  v8 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v59 = (v5 + 48);
  v56 = (v5 + 32);
  v55 = (v5 + 8);

  v14 = 0;
  v60 = v4;
  v57 = v13;
  if (v12)
  {
LABEL_9:
    while (1)
    {
      v16 = (*(v7 + 56) + 304 * (__clz(__rbit64(v12)) | (v14 << 6)));
      v17 = v16[1];
      v62 = v16[2];
      v61 = v17;
      v18 = v16[3];
      v63 = v16[4];
      v64 = v18;
      v19 = v16[5];
      v65 = v16[6];
      v66 = v19;
      v20 = v16[7];
      v67 = v16[8];
      v68 = v20;
      v21 = v16[9];
      v69 = v16[10];
      v70 = v21;
      v22 = v16[11];
      v71 = v16[12];
      v72 = v22;
      v23 = v16[13];
      v73 = v16[14];
      v74 = v23;
      v24 = v16[15];
      v75 = v16[16];
      v76 = v24;
      v25 = v16[17];
      v77 = v16[18];
      v78 = v25;
      v26 = objc_allocWithZone(MEMORY[0x277D59EC8]);

      v27 = [v26 init];
      if (!v27)
      {
        break;
      }

      v28 = v27;
      sub_25E9D77B0();

      v29 = v60;
      if ((*v59)(v3, 1, v60) == 1)
      {
        sub_25E9961C4(v3);
        [v28 setSearchToolId_];
        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v30 = sub_25E9D7F10();
        __swift_project_value_buffer(v30, qword_280F6FE78);
        v31 = sub_25E9D7F00();
        v32 = sub_25E9D8120();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_25E971000, v31, v32, "ST event searchToolId mapping failed!", v33, 2u);
          MEMORY[0x25F8C51A0](v33, -1, -1);
        }
      }

      else
      {
        v34 = v7;
        v35 = v58;
        (*v56)(v58, v3, v29);
        v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v37 = sub_25E9D77D0();
        v38 = [v36 initWithNSUUID_];

        [v28 setSearchToolId_];
        v39 = v35;
        v7 = v34;
        v13 = v57;
        (*v55)(v39, v29);
      }

      v79 = v61;
      v80 = v62;
      v40 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setSearchTotalHandleTime_];

      v79 = v64;
      v80 = v63;
      v41 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setAnswerSynthesisTime_];

      v79 = v66;
      v80 = v65;
      v42 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setSpotlightTotalTime_];

      v79 = v68;
      v80 = v67;
      v43 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setSearchGlobalSearchTime_];

      v79 = v70;
      v80 = v69;
      v44 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setSearchHallucinationTime_];

      v79 = v72;
      v80 = v71;
      v45 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setSearchStartToSpotlightEnd_];

      v79 = v74;
      v80 = v73;
      v46 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setSearchStartToGlobalSearchEnd_];

      v79 = v76;
      v80 = v75;
      v47 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setPreSearchTime_];

      v79 = v78;
      v80 = v77;
      v48 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v79);
      [v28 setPostSearchTime_];

      v49 = v28;
      MEMORY[0x25F8C4950]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25E9D80A0();
      }

      v12 &= v12 - 1;
      sub_25E9D80C0();

      v8 = v81;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    if (qword_280F6FE70 == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return v8;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_24:
  v51 = sub_25E9D7F10();
  __swift_project_value_buffer(v51, qword_280F6FE78);
  v52 = sub_25E9D7F00();
  v53 = sub_25E9D8120();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_25E971000, v52, v53, "PNRODSchemaPNRODSearch init failed!", v54, 2u);
    MEMORY[0x25F8C51A0](v54, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for PnRPlanResolutionRecord(uint64_t a1)
{
  result = qword_27FD0DDE0;
  if (!qword_27FD0DDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E9D2840(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA7 && a1[32])
  {
    return (*a1 + 167);
  }

  v3 = *a1;
  if (v3 <= 0x59)
  {
    v4 = 89;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 90;
  if (v3 < 0x59)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25E9D2894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 167;
    *(result + 8) = 0;
    if (a3 >= 0xA7)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA7)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 89;
    }
  }

  return result;
}

uint64_t sub_25E9D2900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA6 && *(a1 + 360))
  {
    return (*a1 + 166);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0x5A)
  {
    v4 = 90;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 91;
  if (v3 < 0x59)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25E9D2954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA5)
  {
    *(result + 248) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 166;
    if (a3 >= 0xA6)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA6)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 90;
    }
  }

  return result;
}

uint64_t sub_25E9D2A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 288))
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

uint64_t sub_25E9D2A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_25E9D2B40(uint64_t a1)
{
  sub_25E9D2BFC(319, &qword_27FD0DDF0, &type metadata for PnRLatencyContextMetrics);
  if (v1 <= 0x3F)
  {
    sub_25E9D2BFC(319, &qword_27FD0DDF8, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      sub_25E9D2C48(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E9D2BFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25E9D81C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25E9D2C48(uint64_t a1)
{
  if (!qword_27FD0DE00)
  {
    sub_25E9D77F0();
    v1 = sub_25E9D81C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD0DE00);
    }
  }
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

uint64_t sub_25E9D2CE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
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

uint64_t sub_25E9D2D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
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
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_25E9D2E2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA6 && a1[232])
  {
    return (*a1 + 166);
  }

  v3 = *a1;
  if (v3 <= 0x5A)
  {
    v4 = 90;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 91;
  if (v3 < 0x59)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25E9D2E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA5)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 166;
    if (a3 >= 0xA6)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA6)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *result = a2 + 90;
    }
  }

  return result;
}

uint64_t sub_25E9D2F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
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

uint64_t sub_25E9D2F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_25E9D3060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
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

uint64_t sub_25E9D30BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25E9D3158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PnRPlanResolutionRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9D31BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PnRPlanResolutionRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9D3220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE08, &qword_25E9DC438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9D3290(uint64_t a1)
{
  v2 = type metadata accessor for PnRPlanResolutionRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E9D32EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25E9D3374(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_12;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7ED0();

  if (!v3)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE18, &qword_25E9DC718);
  sub_25E9D3534();
  sub_25E9D3580();
  v4 = sub_25E9D8040();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!sub_25E9D8290())
  {
LABEL_11:

LABEL_12:
    v9 = 0;
    v10 = 89;
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C4B40](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_25E9D7850();
  if (v7)
  {
    v8 = v7;
    v9 = sub_25E9D7870();

    v10 = 12;
LABEL_13:
    *a1 = v10;
    a1[1] = v9;
    return;
  }

LABEL_16:
  __break(1u);
}

unint64_t sub_25E9D3534()
{
  result = qword_27FD0DE20;
  if (!qword_27FD0DE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DE20);
  }

  return result;
}

unint64_t sub_25E9D3580()
{
  result = qword_27FD0DE28;
  if (!qword_27FD0DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0DE18, &qword_25E9DC718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DE28);
  }

  return result;
}

uint64_t SELFComponent.Executor.__allocating_init()()
{
  v0 = swift_allocObject();
  SELFComponent.Executor.init()();
  return v0;
}

void *SELFComponent.Executor.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = sub_25E97FF64(v1);
  v0[4] = sub_25E97F328(v1);
  v0[5] = sub_25E97F328(v1);
  v0[6] = sub_25E97F328(v1);
  v0[7] = sub_25E97F328(v1);
  v0[8] = sub_25E97F328(v1);
  v0[9] = sub_25E97F328(v1);
  v0[10] = sub_25E97F328(v1);
  v0[11] = sub_25E97F328(v1);
  v0[12] = sub_25E97F328(v1);
  v0[13] = sub_25E97F328(v1);
  v0[14] = sub_25E97F328(v1);
  v0[15] = sub_25E97F328(v1);
  v0[16] = sub_25E97F328(v1);
  v0[17] = sub_25E97F328(v1);
  return v0;
}

void sub_25E9D3770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v323 = &v322 - v3;
  swift_beginAccess();
  v4 = qword_27FD0DD78;
  v333 = v0;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5B0 != -1)
    {
      swift_once();
    }

    v16 = sub_25E9D7F10();
    __swift_project_value_buffer(v16, qword_27FD0DB48);
    v17 = sub_25E9D7F00();
    v18 = sub_25E9D8120();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25E971000, v17, v18, "ExecutorSiriSchemaExecutorClientEvent: Failed to init", v19, 2u);
      MEMORY[0x25F8C51A0](v19, -1, -1);
    }

LABEL_149:
    v219 = MEMORY[0x277D84F90];
LABEL_150:
    v1[2] = v219;
    v325 = v219;

    if (qword_27FD0D5B0 != -1)
    {
      swift_once();
    }

    v220 = sub_25E9D7F10();
    v337 = __swift_project_value_buffer(v220, qword_27FD0DB48);
    v221 = sub_25E9D7F00();
    v222 = sub_25E9D8120();
    if (os_log_type_enabled(v221, v222))
    {
      v223 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v339[0] = v224;
      *v223 = 136315138;

      v226 = MEMORY[0x25F8C4980](v225, MEMORY[0x277D837D0]);
      v228 = v227;

      v229 = sub_25E9887EC(v226, v228, v339);

      *(v223 + 4) = v229;
      _os_log_impl(&dword_25E971000, v221, v222, "executorIds: %s", v223, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v224);
      MEMORY[0x25F8C51A0](v224, -1, -1);
      MEMORY[0x25F8C51A0](v223, -1, -1);
    }

    v230 = sub_25E9D7F00();
    v231 = sub_25E9D8120();

    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v339[0] = v233;
      *v232 = 136315394;
      swift_beginAccess();

      v234 = sub_25E9D7F40();
      v236 = v235;

      v237 = sub_25E9887EC(v234, v236, v339);

      *(v232 + 4) = v237;
      *(v232 + 12) = 2080;
      swift_beginAccess();

      v238 = sub_25E9D7F40();
      v240 = v239;

      v241 = sub_25E9887EC(v238, v240, v339);

      *(v232 + 14) = v241;
      _os_log_impl(&dword_25E971000, v230, v231, "executorAppIntentCallContext Start Event Dict: %s, End Event Dict: %s", v232, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v233, -1, -1);
      MEMORY[0x25F8C51A0](v232, -1, -1);
    }

    v242 = sub_25E9D7F00();
    v243 = sub_25E9D8120();

    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v339[0] = v245;
      *v244 = 136315138;
      swift_beginAccess();
      type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(0);

      v246 = sub_25E9D7F40();
      v248 = v247;

      v249 = sub_25E9887EC(v246, v248, v339);

      *(v244 + 4) = v249;
      _os_log_impl(&dword_25E971000, v242, v243, "executorSearchToolQueryType Dict: %s", v244, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v245);
      MEMORY[0x25F8C51A0](v245, -1, -1);
      MEMORY[0x25F8C51A0](v244, -1, -1);
    }

    v250 = sub_25E9D7F00();
    v251 = sub_25E9D8120();

    if (os_log_type_enabled(v250, v251))
    {
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v339[0] = v253;
      *v252 = 136315394;
      swift_beginAccess();

      v254 = sub_25E9D7F40();
      v256 = v255;

      v257 = sub_25E9887EC(v254, v256, v339);

      *(v252 + 4) = v257;
      *(v252 + 12) = 2080;
      swift_beginAccess();

      v258 = sub_25E9D7F40();
      v260 = v259;

      v261 = sub_25E9887EC(v258, v260, v339);

      *(v252 + 14) = v261;
      _os_log_impl(&dword_25E971000, v250, v251, "executorSearchToolQueryCallContext Start Event Dict: %s, End Event Dict: %s", v252, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v253, -1, -1);
      MEMORY[0x25F8C51A0](v252, -1, -1);
    }

    v262 = sub_25E9D7F00();
    v263 = sub_25E9D8120();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v339[0] = v265;
      *v264 = 136315394;
      swift_beginAccess();

      v266 = sub_25E9D7F40();
      v268 = v267;

      v269 = sub_25E9887EC(v266, v268, v339);

      *(v264 + 4) = v269;
      *(v264 + 12) = 2080;
      swift_beginAccess();

      v270 = sub_25E9D7F40();
      v272 = v271;

      v273 = sub_25E9887EC(v270, v272, v339);

      *(v264 + 14) = v273;
      _os_log_impl(&dword_25E971000, v262, v263, "executorSearchToolQueryCallContext Start Event Dict: %s, End Event Dict: %s", v264, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v265, -1, -1);
      MEMORY[0x25F8C51A0](v264, -1, -1);
    }

    v274 = sub_25E9D7F00();
    v275 = sub_25E9D8120();

    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v339[0] = v277;
      *v276 = 136315394;
      swift_beginAccess();

      v278 = sub_25E9D7F40();
      v280 = v279;

      v281 = sub_25E9887EC(v278, v280, v339);

      *(v276 + 4) = v281;
      *(v276 + 12) = 2080;
      swift_beginAccess();

      v282 = sub_25E9D7F40();
      v284 = v283;

      v285 = sub_25E9887EC(v282, v284, v339);

      *(v276 + 14) = v285;
      _os_log_impl(&dword_25E971000, v274, v275, "executorPersonQueryCallContextStart Event Dict: %s, End Event Dict: %s", v276, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v277, -1, -1);
      MEMORY[0x25F8C51A0](v276, -1, -1);
    }

    v286 = sub_25E9D7F00();
    v287 = sub_25E9D8120();

    if (os_log_type_enabled(v286, v287))
    {
      v288 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v339[0] = v289;
      *v288 = 136315394;
      swift_beginAccess();

      v290 = sub_25E9D7F40();
      v292 = v291;

      v293 = sub_25E9887EC(v290, v292, v339);

      *(v288 + 4) = v293;
      *(v288 + 12) = 2080;
      swift_beginAccess();

      v294 = sub_25E9D7F40();
      v296 = v295;

      v297 = sub_25E9887EC(v294, v296, v339);

      *(v288 + 14) = v297;
      _os_log_impl(&dword_25E971000, v286, v287, "executorStringQueryEntityMatcherCallContext Start Event Dict: %s, End Event Dict: %s", v288, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v289, -1, -1);
      MEMORY[0x25F8C51A0](v288, -1, -1);
    }

    v298 = sub_25E9D7F00();
    v299 = sub_25E9D8120();

    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      v339[0] = v301;
      *v300 = 136315394;
      swift_beginAccess();

      v302 = sub_25E9D7F40();
      v304 = v303;

      v305 = sub_25E9887EC(v302, v304, v339);

      *(v300 + 4) = v305;
      *(v300 + 12) = 2080;
      swift_beginAccess();

      v306 = sub_25E9D7F40();
      v308 = v307;

      v309 = sub_25E9887EC(v306, v308, v339);

      *(v300 + 14) = v309;
      _os_log_impl(&dword_25E971000, v298, v299, "executorStringQueryEntityCallContext Start Event Dict: %s, End Event Dict: %s", v300, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v301, -1, -1);
      MEMORY[0x25F8C51A0](v300, -1, -1);
    }

    v310 = sub_25E9D7F00();
    v311 = sub_25E9D8120();

    if (os_log_type_enabled(v310, v311))
    {
      v312 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      v340 = v313;
      *v312 = 136315394;
      swift_beginAccess();

      v314 = sub_25E9D7F40();
      v316 = v315;

      v317 = sub_25E9887EC(v314, v316, &v340);

      *(v312 + 4) = v317;
      *(v312 + 12) = 2080;
      swift_beginAccess();

      v318 = sub_25E9D7F40();
      v320 = v319;

      v321 = sub_25E9887EC(v318, v320, &v340);

      *(v312 + 14) = v321;
      _os_log_impl(&dword_25E971000, v310, v311, "executorIdentifierQueryCallContext Start Event Dict: %s, End Event Dict: %s", v312, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v313, -1, -1);
      MEMORY[0x25F8C51A0](v312, -1, -1);
    }

    return;
  }

  sub_25E9D75F4();
  v5 = v4;
  v6 = sub_25E9D7E70();

  if (qword_27FD0D5B0 != -1)
  {
LABEL_146:
    swift_once();
  }

  v7 = sub_25E9D7F10();
  v8 = __swift_project_value_buffer(v7, qword_27FD0DB48);

  v9 = sub_25E9D7F00();
  v10 = sub_25E9D8120();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v6 >> 62;
  v332 = v8;
  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (v12)
    {
      v14 = sub_25E9D8290();
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v14;

    _os_log_impl(&dword_25E971000, v9, v10, "executorClientEvent length %ld", v13, 0xCu);
    MEMORY[0x25F8C51A0](v13, -1, -1);
  }

  else
  {
  }

  if (v12)
  {
    v21 = sub_25E9D8290();
    v20 = v6;
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_148;
  }

  v20 = v6;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_148:

    goto LABEL_149;
  }

LABEL_15:
  v337 = 0;
  v329 = v20 & 0xC000000000000001;
  v324 = v20 & 0xFFFFFFFFFFFFFF8;
  v325 = MEMORY[0x277D84F90];
  *&v15 = 136315138;
  v331 = v15;
  v327 = v21;
  v328 = v20;
  while (1)
  {
    if (v329)
    {
      v22 = MEMORY[0x25F8C4B40](v337);
    }

    else
    {
      if (v337 >= *(v324 + 16))
      {
        goto LABEL_145;
      }

      v22 = *(v20 + 8 * v337 + 32);
    }

    v23 = v337 + 1;
    if (__OFADD__(v337, 1))
    {
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v24 = v22;
    v25 = sub_25E9D7F00();
    v6 = sub_25E9D8120();

    v26 = os_log_type_enabled(v25, v6);
    v334 = v23;
    v335 = v24;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v339[0] = v28;
      *v27 = v331;
      v29 = [v24 debugDescription];
      v30 = sub_25E9D7FB0();
      v32 = v31;

      v33 = sub_25E9887EC(v30, v32, v339);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_25E971000, v25, v6, "pnrOrderedEvent value %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25F8C51A0](v28, -1, -1);
      MEMORY[0x25F8C51A0](v27, -1, -1);
    }

    v34 = sub_25E9D7840();
    if (v34)
    {
      v35 = v34;
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (!v36)
      {
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = sub_25E9D7F00();
    v39 = sub_25E9D8120();
    v336 = v37;

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v339[0] = v41;
      *v40 = v331;
      v338 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE38, &qword_25E9DC750);
      v42 = sub_25E9D81B0();
      v6 = sub_25E9887EC(v42, v43, v339);

      *(v40 + 4) = v6;
      _os_log_impl(&dword_25E971000, v38, v39, "executor Client Event value %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25F8C51A0](v41, -1, -1);
      MEMORY[0x25F8C51A0](v40, -1, -1);
    }

    v1 = v333;
    if (!v36)
    {
      goto LABEL_36;
    }

    v44 = [v336 eventMetadata];
    if (!v44)
    {
      goto LABEL_36;
    }

    v45 = v44;
    v46 = [v44 executorId];

    if (!v46)
    {
      goto LABEL_36;
    }

    v47 = v323;
    sub_25E9D8100();

    v48 = v47;
    v49 = sub_25E9D77F0();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) == 1)
    {
      sub_25E9961C4(v48);
LABEL_36:
      v51 = sub_25E9D7F00();
      v52 = sub_25E9D8120();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_25E971000, v51, v52, "Empty executorId", v53, 2u);
        MEMORY[0x25F8C51A0](v53, -1, -1);
      }

      goto LABEL_17;
    }

    v54 = v1;
    v55 = sub_25E9D77C0();
    v57 = v56;
    (*(v50 + 8))(v48, v49);

    v58 = sub_25E9D7F00();
    v59 = sub_25E9D8120();
    v330 = v57;

    v60 = os_log_type_enabled(v58, v59);
    v326 = v55;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v339[0] = v62;
      *v61 = v331;
      v63 = sub_25E9D8000();
      v65 = sub_25E9887EC(v63, v64, v339);

      *(v61 + 4) = v65;
      v1 = v333;
      _os_log_impl(&dword_25E971000, v58, v59, "executorId value %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x25F8C51A0](v62, -1, -1);
      MEMORY[0x25F8C51A0](v61, -1, -1);

      v6 = v335;
    }

    else
    {

      v6 = v335;
      v1 = v54;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v66 = v325;
    }

    else
    {
      v66 = sub_25E983A64(0, *(v325 + 2) + 1, 1, v325);
    }

    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    v69 = v326;
    if (v68 >= v67 >> 1)
    {
      v66 = sub_25E983A64((v67 > 1), v68 + 1, 1, v66);
      v69 = v326;
    }

    *(v66 + 2) = v68 + 1;
    v325 = v66;
    v70 = &v66[16 * v68];
    *(v70 + 4) = v69;
    *(v70 + 5) = v330;
    v71 = [v336 executorAppIntentCallContext];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 startedOrChanged];

      if (v73)
      {
        break;
      }
    }

    v81 = [v336 executorAppIntentCallContext];
    if (v81)
    {
      v82 = v81;
      v83 = [v81 ended];

      if (v83)
      {

        v84 = sub_25E9D7F00();
        v85 = sub_25E9D8120();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_25E971000, v84, v85, "executorAppIntentCallContext: ended", v86, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v86, -1, -1);
        }

        v87 = sub_25E9D7850();
        if (!v87)
        {
          goto LABEL_179;
        }

        v88 = v87;
        v89 = sub_25E9D7870();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[5];
        v1[5] = 0x8000000000000000;
        sub_25E993FE0(64, v89, v326, v330, isUniquelyReferenced_nonNull_native);
        v1[5] = v338;
        goto LABEL_57;
      }
    }

LABEL_58:
    v91 = [v336 executorSearchToolQueryCallContext];
    if (v91)
    {
      v92 = v91;
      v93 = [v91 startedOrChanged];

      if (v93)
      {

        v94 = sub_25E9D7F00();
        v95 = sub_25E9D8120();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_25E971000, v94, v95, "executorSearchToolQueryCallContext: startedOrChanged", v96, 2u);
          MEMORY[0x25F8C51A0](v96, -1, -1);
        }

        v97 = [v336 executorSearchToolQueryCallContext];
        if (v97)
        {
          v98 = v97;
          v99 = [v97 startedOrChanged];

          if (v99)
          {
            v100 = [v99 executorSearchToolQueryType];

            v101 = 0;
            v99 = v100;
LABEL_73:
            swift_beginAccess();
            v112 = v330;

            LOBYTE(v338) = v101;
            v113 = v99 | (v101 << 32);
            v114 = v326;
            sub_25E98FA04(v113, v326, v112);
            swift_endAccess();
            v6 = v335;
            v115 = sub_25E9D7850();
            if (!v115)
            {
              goto LABEL_173;
            }

            v116 = v115;
            v117 = sub_25E9D7870();

            swift_beginAccess();
            v118 = swift_isUniquelyReferenced_nonNull_native();
            v338 = v1[6];
            v1[6] = 0x8000000000000000;
            sub_25E993FE0(65, v117, v114, v330, v118);
            v1[6] = v338;
            goto LABEL_75;
          }
        }

        else
        {
          v99 = 0;
        }

        v101 = 1;
        goto LABEL_73;
      }
    }

    v102 = [v336 executorSearchToolQueryCallContext];
    if (v102)
    {
      v103 = v102;
      v104 = [v102 ended];

      if (v104)
      {

        v105 = sub_25E9D7F00();
        v106 = sub_25E9D8120();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_25E971000, v105, v106, "executorSearchToolQueryCallContext: ended", v107, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v107, -1, -1);
        }

        v108 = sub_25E9D7850();
        if (!v108)
        {
          goto LABEL_180;
        }

        v109 = v108;
        v110 = sub_25E9D7870();

        swift_beginAccess();
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[7];
        v1[7] = 0x8000000000000000;
        sub_25E993FE0(66, v110, v326, v330, v111);
        v1[7] = v338;
LABEL_75:
        swift_endAccess();
      }
    }

    v119 = [v336 executorPersonQueryCallContext];
    if (v119)
    {
      v120 = v119;
      v121 = [v119 startedOrChanged];

      if (v121)
      {

        v122 = sub_25E9D7F00();
        v123 = sub_25E9D8120();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_25E971000, v122, v123, "executorPersonQueryCallContext: startedOrChanged", v124, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v124, -1, -1);
        }

        v125 = sub_25E9D7850();
        if (!v125)
        {
          goto LABEL_174;
        }

        v126 = v125;
        v127 = sub_25E9D7870();

        swift_beginAccess();
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[8];
        v1[8] = 0x8000000000000000;
        sub_25E993FE0(67, v127, v326, v330, v128);
        v1[8] = v338;
        goto LABEL_88;
      }
    }

    v129 = [v336 executorPersonQueryCallContext];
    if (v129)
    {
      v130 = v129;
      v131 = [v129 ended];

      if (v131)
      {

        v132 = sub_25E9D7F00();
        v133 = sub_25E9D8120();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&dword_25E971000, v132, v133, "executorPersonQueryCallContext: ended", v134, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v134, -1, -1);
        }

        v135 = sub_25E9D7850();
        if (!v135)
        {
          goto LABEL_181;
        }

        v136 = v135;
        v137 = sub_25E9D7870();

        swift_beginAccess();
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[9];
        v1[9] = 0x8000000000000000;
        sub_25E993FE0(68, v137, v326, v330, v138);
        v1[9] = v338;
LABEL_88:
        swift_endAccess();
      }
    }

    v139 = [v336 executorStringQueryLocationCallContext];
    if (v139)
    {
      v140 = v139;
      v141 = [v139 startedOrChanged];

      if (v141)
      {

        v142 = sub_25E9D7F00();
        v143 = sub_25E9D8120();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&dword_25E971000, v142, v143, "executorStringQueryLocationCallContext: startedOrChanged", v144, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v144, -1, -1);
        }

        v145 = sub_25E9D7850();
        if (!v145)
        {
          goto LABEL_175;
        }

        v146 = v145;
        v147 = sub_25E9D7870();

        swift_beginAccess();
        v148 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[10];
        v1[10] = 0x8000000000000000;
        sub_25E993FE0(69, v147, v326, v330, v148);
        v1[10] = v338;
        goto LABEL_101;
      }
    }

    v149 = [v336 executorStringQueryLocationCallContext];
    if (v149)
    {
      v150 = v149;
      v151 = [v149 ended];

      if (v151)
      {

        v152 = sub_25E9D7F00();
        v153 = sub_25E9D8120();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&dword_25E971000, v152, v153, "executorStringQueryLocationCallContext: ended", v154, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v154, -1, -1);
        }

        v155 = sub_25E9D7850();
        if (!v155)
        {
          goto LABEL_182;
        }

        v156 = v155;
        v157 = sub_25E9D7870();

        swift_beginAccess();
        v158 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[11];
        v1[11] = 0x8000000000000000;
        sub_25E993FE0(70, v157, v326, v330, v158);
        v1[11] = v338;
LABEL_101:
        swift_endAccess();
      }
    }

    v159 = [v336 executorStringQueryEntityMatcherCallContext];
    if (v159)
    {
      v160 = v159;
      v161 = [v159 startedOrChanged];

      if (v161)
      {

        v162 = sub_25E9D7F00();
        v163 = sub_25E9D8120();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 0;
          _os_log_impl(&dword_25E971000, v162, v163, "executorStringQueryEntityMatcherCallContext: startedOrChanged", v164, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v164, -1, -1);
        }

        v165 = sub_25E9D7850();
        if (!v165)
        {
          goto LABEL_176;
        }

        v166 = v165;
        v167 = sub_25E9D7870();

        swift_beginAccess();
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[12];
        v1[12] = 0x8000000000000000;
        sub_25E993FE0(71, v167, v326, v330, v168);
        v1[12] = v338;
        goto LABEL_114;
      }
    }

    v169 = [v336 executorStringQueryEntityMatcherCallContext];
    if (v169)
    {
      v170 = v169;
      v171 = [v169 ended];

      if (v171)
      {

        v172 = sub_25E9D7F00();
        v173 = sub_25E9D8120();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          *v174 = 0;
          _os_log_impl(&dword_25E971000, v172, v173, "executorStringQueryEntityMatcherCallContext: ended", v174, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v174, -1, -1);
        }

        v175 = sub_25E9D7850();
        if (!v175)
        {
          goto LABEL_183;
        }

        v176 = v175;
        v177 = sub_25E9D7870();

        swift_beginAccess();
        v178 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[13];
        v1[13] = 0x8000000000000000;
        sub_25E993FE0(72, v177, v326, v330, v178);
        v1[13] = v338;
LABEL_114:
        swift_endAccess();
      }
    }

    v179 = [v336 executorStringQueryEntityCallContext];
    if (v179)
    {
      v180 = v179;
      v181 = [v179 startedOrChanged];

      if (v181)
      {

        v182 = sub_25E9D7F00();
        v183 = sub_25E9D8120();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          *v184 = 0;
          _os_log_impl(&dword_25E971000, v182, v183, "executorStringQueryEntityCallContext: startedOrChanged", v184, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v184, -1, -1);
        }

        v185 = sub_25E9D7850();
        if (!v185)
        {
          goto LABEL_177;
        }

        v186 = v185;
        v187 = sub_25E9D7870();

        swift_beginAccess();
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[14];
        v1[14] = 0x8000000000000000;
        sub_25E993FE0(73, v187, v326, v330, v188);
        v1[14] = v338;
        goto LABEL_127;
      }
    }

    v189 = [v336 executorStringQueryEntityCallContext];
    if (v189)
    {
      v190 = v189;
      v191 = [v189 ended];

      if (v191)
      {

        v192 = sub_25E9D7F00();
        v193 = sub_25E9D8120();
        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          *v194 = 0;
          _os_log_impl(&dword_25E971000, v192, v193, "executorStringQueryEntityCallContext: ended", v194, 2u);
          v6 = v335;
          MEMORY[0x25F8C51A0](v194, -1, -1);
        }

        v195 = sub_25E9D7850();
        if (!v195)
        {
          goto LABEL_184;
        }

        v196 = v195;
        v197 = sub_25E9D7870();

        swift_beginAccess();
        v198 = swift_isUniquelyReferenced_nonNull_native();
        v338 = v1[15];
        v1[15] = 0x8000000000000000;
        sub_25E993FE0(74, v197, v326, v330, v198);
        v1[15] = v338;
LABEL_127:
        swift_endAccess();
      }
    }

    v199 = [v336 executorIdentifierQueryCallContext];
    if (v199 && (v200 = v199, v201 = [v199 startedOrChanged], v200, v201))
    {

      v202 = sub_25E9D7F00();
      v203 = sub_25E9D8120();
      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        *v204 = 0;
        _os_log_impl(&dword_25E971000, v202, v203, "executorIdentifierQueryCallContext: startedOrChanged", v204, 2u);
        v6 = v335;
        MEMORY[0x25F8C51A0](v204, -1, -1);
      }

      v205 = sub_25E9D7850();
      if (!v205)
      {
        goto LABEL_178;
      }

      v206 = v205;
      v207 = sub_25E9D7870();

      swift_beginAccess();
      v208 = swift_isUniquelyReferenced_nonNull_native();
      v338 = v1[16];
      v1[16] = 0x8000000000000000;
      sub_25E993FE0(75, v207, v326, v330, v208);

      v1[16] = v338;
    }

    else
    {
      v209 = [v336 executorIdentifierQueryCallContext];
      if (!v209 || (v210 = v209, v211 = [v209 ended], v210, !v211))
      {

        goto LABEL_17;
      }

      v212 = sub_25E9D7F00();
      v213 = sub_25E9D8120();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        *v214 = 0;
        _os_log_impl(&dword_25E971000, v212, v213, "executorIdentifierQueryCallContext: ended", v214, 2u);
        v6 = v335;
        MEMORY[0x25F8C51A0](v214, -1, -1);
      }

      v215 = sub_25E9D7850();
      if (!v215)
      {
        goto LABEL_185;
      }

      v216 = v215;
      v217 = sub_25E9D7870();

      swift_beginAccess();
      v218 = swift_isUniquelyReferenced_nonNull_native();
      v338 = v1[17];
      v1[17] = 0x8000000000000000;
      sub_25E993FE0(76, v217, v326, v330, v218);

      v1[17] = v338;
    }

    swift_endAccess();

LABEL_17:
    v20 = v328;
    ++v337;
    if (v334 == v327)
    {

      v219 = v325;
      goto LABEL_150;
    }
  }

  v74 = sub_25E9D7F00();
  v75 = sub_25E9D8120();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_25E971000, v74, v75, "executorAppIntentCallContext: startedOrChanged", v76, 2u);
    v6 = v335;
    MEMORY[0x25F8C51A0](v76, -1, -1);
  }

  v77 = sub_25E9D7850();
  if (v77)
  {
    v78 = v77;
    v79 = sub_25E9D7870();

    swift_beginAccess();
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v338 = v1[4];
    v1[4] = 0x8000000000000000;
    sub_25E993FE0(63, v79, v326, v330, v80);
    v1[4] = v338;
LABEL_57:
    swift_endAccess();
    goto LABEL_58;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
}

void sub_25E9D6004(void *a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_27FD0D5B0 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v143 = sub_25E9D7F10();
    __swift_project_value_buffer(v143, qword_27FD0DB48);
    v6 = sub_25E9D7F00();
    v7 = sub_25E9D8120();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25E971000, v6, v7, "Enter computeExecutorMetrics", v8, 2u);
      MEMORY[0x25F8C51A0](v8, -1, -1);
    }

    sub_25E9D3770();
    if (v3)
    {
      break;
    }

    v3 = v4[2];
    v137 = *(v3 + 16);
    if (!v137)
    {
LABEL_118:

      return;
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    if (!*(v3 + 16))
    {
      goto LABEL_122;
    }

    v9 = 0;
    v136 = v3 + 32;
    v134 = v4;
    v135 = a1;
    v133 = v3;
    while (2)
    {
      v10 = (v136 + 16 * v9);
      v144 = v10[1];
      v145 = *v10;
      v138 = v9 + 1;

      v139 = sub_25E98006C(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE40, &qword_25E9DC758);
      v11 = swift_allocObject();
      v12 = v4[5];
      v11[4] = v4[4];
      v11[5] = v12;
      v11[6] = 0xD00000000000001BLL;
      v14 = v4[6];
      v13 = v4[7];
      v11[7] = 0x800000025E9DEE30;
      v11[8] = v14;
      v11[9] = v13;
      v11[10] = 0xD000000000000013;
      v16 = v4[8];
      v15 = v4[9];
      v11[11] = 0x800000025E9DEE50;
      v11[12] = v16;
      v11[13] = v15;
      v11[14] = 0x75516E6F73726570;
      v17 = v4;
      v18 = v4[10];
      v19 = v17[11];
      v20 = v17[12];
      v11[15] = 0xEF656D6954797265;
      v11[16] = v18;
      v11[17] = v19;
      v11[18] = 0xD000000000000017;
      v22 = v17[13];
      v21 = v17[14];
      v11[19] = 0x800000025E9DEE70;
      v11[20] = v20;
      v11[21] = v22;
      v11[22] = 0xD00000000000001CLL;
      v24 = v17[15];
      v23 = v17[16];
      v11[23] = 0x800000025E9DEE90;
      v11[24] = v21;
      v11[25] = v24;
      v11[26] = 0xD000000000000015;
      v25 = v17[17];
      v11[27] = 0x800000025E9DEEB0;
      v11[28] = v23;
      v11[29] = v25;
      v11[30] = 0xD000000000000013;
      v224 = v11;
      v11[31] = 0x800000025E9DEED0;

      v26 = v144;

      v27 = v145;

      for (i = 0; i != 28; i += 4)
      {
        v3 = v224[i + 4];
        v29 = v224[i + 5];
        v31 = v224[i + 6];
        v30 = v224[i + 7];
        v32 = *(v3 + 16);

        if (v32)
        {
          sub_25E978F5C(v27, v26);
          if (v33)
          {
            if (*(v29 + 16))
            {
              sub_25E978F5C(v27, v26);
              if (v34)
              {
                if (*(v3 + 16) && (v35 = sub_25E978F5C(v27, v26), (v36 & 1) != 0))
                {
                  v37 = (*(v3 + 56) + 16 * v35);
                  v141 = *v37;
                  v38 = *(v37 + 1);

                  if (!*(v29 + 16))
                  {
                    goto LABEL_18;
                  }

LABEL_33:
                  v39 = v31;
                  v62 = sub_25E978F5C(v145, v26);
                  v4 = v38;
                  if (v63)
                  {
                    v64 = (*(v29 + 56) + 16 * v62);
                    v65 = *v64;
                    a1 = *(v64 + 1);

                    goto LABEL_36;
                  }
                }

                else
                {

                  v38 = 0;
                  v141 = 89;
                  if (*(v29 + 16))
                  {
                    goto LABEL_33;
                  }

LABEL_18:
                  v4 = v38;
                  v39 = v31;
                }

                a1 = 0;
                v65 = 89;
LABEL_36:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&__dst = v139;
                v67 = sub_25E978F5C(v39, v30);
                v69 = *(v139 + 16);
                v70 = (v68 & 1) == 0;
                v71 = __OFADD__(v69, v70);
                v72 = v69 + v70;
                if (v71)
                {
                  __break(1u);
LABEL_121:
                  __break(1u);
                  goto LABEL_122;
                }

                v3 = v68;
                if (*(v139 + 24) < v72)
                {
                  sub_25E97BFCC(v72, isUniquelyReferenced_nonNull_native);
                  v67 = sub_25E978F5C(v39, v30);
                  if ((v3 & 1) != (v73 & 1))
                  {
                    sub_25E9D8330();
                    __break(1u);
                    return;
                  }

                  goto LABEL_41;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_41:
                  v74 = v141;
                  if ((v3 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v77 = v67;
                  sub_25E97EF0C();
                  v67 = v77;
                  v74 = v141;
                  if ((v3 & 1) == 0)
                  {
LABEL_44:
                    v78 = __dst;
                    *(__dst + 8 * (v67 >> 6) + 64) |= 1 << v67;
                    v79 = (v78[6] + 16 * v67);
                    *v79 = v39;
                    v79[1] = v30;
                    v80 = (v78[7] + 32 * v67);
                    *v80 = v74;
                    v80[1] = v4;
                    v80[2] = v65;
                    v80[3] = a1;
                    v81 = v78[2];
                    v71 = __OFADD__(v81, 1);
                    v82 = v81 + 1;
                    if (v71)
                    {
                      goto LABEL_121;
                    }

                    v139 = v78;
                    v78[2] = v82;
                    goto LABEL_31;
                  }
                }

                v75 = v67;

                v139 = __dst;
                v76 = (*(__dst + 56) + 32 * v75);
                *v76 = v74;
                v76[1] = v4;
                v76[2] = v65;
                v76[3] = a1;
                goto LABEL_31;
              }
            }
          }
        }

        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v143, qword_280F6FE78);

        v40 = sub_25E9D7F00();
        v41 = sub_25E9D8120();

        if (!os_log_type_enabled(v40, v41))
        {

          continue;
        }

        v142 = v41;
        v42 = v31;
        v43 = v27;
        v44 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v204 = v140;
        *v44 = 136315906;
        v45 = sub_25E9887EC(v42, v30, &v204);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_25E9887EC(v43, v26, &v204);
        *(v44 + 22) = 2080;
        if (*(v3 + 16) && (v46 = sub_25E978F5C(v43, v26), (v47 & 1) != 0))
        {
          v48 = (*(v3 + 56) + 16 * v46);
          v49 = *v48;
          v50 = *(v48 + 1);
        }

        else
        {

          v50 = 0;
          v49 = 89;
        }

        *&__dst = v49;
        *(&__dst + 1) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD80, "|d");
        v51 = sub_25E9D7FF0();
        v53 = sub_25E9887EC(v51, v52, &v204);

        *(v44 + 24) = v53;
        *(v44 + 32) = 2080;
        if (*(v29 + 16) && (v54 = sub_25E978F5C(v145, v144), (v55 & 1) != 0))
        {
          v56 = (*(v29 + 56) + 16 * v54);
          v57 = *v56;
          v58 = *(v56 + 1);
        }

        else
        {

          v58 = 0;
          v57 = 89;
        }

        *&__dst = v57;
        *(&__dst + 1) = v58;
        v59 = sub_25E9D7FF0();
        v61 = sub_25E9887EC(v59, v60, &v204);

        *(v44 + 34) = v61;
        _os_log_impl(&dword_25E971000, v40, v142, "%s: Start and/or End event missing for executorId %s. Start: %s, End: %s", v44, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v140, -1, -1);
        MEMORY[0x25F8C51A0](v44, -1, -1);

LABEL_31:
        v26 = v144;
        v27 = v145;
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE48, &qword_25E9DC760);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1 = v135;
      v83 = *v135;
      if (*(*v135 + 16))
      {
        v84 = sub_25E978F5C(v27, v26);
        v4 = v134;
        v85 = v139;
        if (v86)
        {
          memmove(&__dst, (*(v83 + 56) + 232 * v84), 0xE8uLL);
          nullsub_1();
        }

        else
        {
          sub_25E98B498(&v204);
          *&v221[144] = v215;
          *&v221[160] = v216;
          *&v221[176] = v217;
          *&v221[192] = v218;
          *&v221[80] = v211;
          *&v221[96] = v212;
          *&v221[112] = v213;
          *&v221[128] = v214;
          *&v221[16] = v207;
          *&v221[32] = v208;
          *&v221[48] = v209;
          *&v221[64] = v210;
          __dst = v204;
          v220 = v205;
          *v221 = v206;
        }
      }

      else
      {
        sub_25E98B498(&v204);
        *&v221[144] = v215;
        *&v221[160] = v216;
        *&v221[176] = v217;
        *&v221[192] = v218;
        *&v221[80] = v211;
        *&v221[96] = v212;
        *&v221[112] = v213;
        *&v221[128] = v214;
        *&v221[16] = v207;
        *&v221[32] = v208;
        *&v221[48] = v209;
        *&v221[64] = v210;
        __dst = v204;
        v220 = v205;
        *v221 = v206;
        v4 = v134;
        v85 = v139;
      }

      v215 = *&v221[144];
      v216 = *&v221[160];
      v217 = *&v221[176];
      v218 = *&v221[192];
      v211 = *&v221[80];
      v212 = *&v221[96];
      v213 = *&v221[112];
      v214 = *&v221[128];
      v207 = *&v221[16];
      v208 = *&v221[32];
      v209 = *&v221[48];
      v210 = *&v221[64];
      v204 = __dst;
      v205 = v220;
      v206 = *v221;
      if (sub_25E9D7640(&v204) == 1)
      {
        LOBYTE(v187[0]) = 1;
        v189 = 0x5AuLL;
        v190 = 0uLL;
        LODWORD(v191) = 0;
        BYTE4(v191) = 1;
        *&v193 = 0;
        v192 = 0uLL;
        *(&v191 + 1) = 90;
        *(&v193 + 1) = 90;
        *&v195 = 0;
        v194 = 0uLL;
        v196 = 0uLL;
        *&v197 = 0;
        *(&v195 + 1) = 90;
        *(&v197 + 1) = 90;
        *&v199 = 0;
        v198 = 0uLL;
        *&v201 = 0;
        v200 = 0uLL;
        *(&v199 + 1) = 90;
        *(&v201 + 1) = 90;
        v203 = 0;
        v202 = 0uLL;
        nullsub_1();
        *&v221[144] = v200;
        *&v221[160] = v201;
        *&v221[176] = v202;
        *&v221[192] = v203;
        *&v221[80] = v196;
        *&v221[96] = v197;
        *&v221[112] = v198;
        *&v221[128] = v199;
        *&v221[16] = v192;
        *&v221[32] = v193;
        *&v221[48] = v194;
        *&v221[64] = v195;
        __dst = v189;
        v220 = v190;
        *v221 = v191;
      }

      v200 = *&v221[144];
      v201 = *&v221[160];
      v202 = *&v221[176];
      v203 = *&v221[192];
      v196 = *&v221[80];
      v197 = *&v221[96];
      v198 = *&v221[112];
      v199 = *&v221[128];
      v192 = *&v221[16];
      v193 = *&v221[32];
      v194 = *&v221[48];
      v195 = *&v221[64];
      v189 = __dst;
      v190 = v220;
      v191 = *v221;
      if (sub_25E9D7640(&v189) != 1)
      {
        v87 = 0uLL;
        if (*(v85 + 16))
        {
          v88 = sub_25E978F5C(0xD00000000000001BLL, 0x800000025E9DEE30);
          v87 = 0uLL;
          v89 = xmmword_25E9DC740;
          if (v90)
          {
            v91 = (*(v85 + 56) + 32 * v88);
            v89 = *v91;
            v87 = v91[1];
          }
        }

        else
        {
          v89 = xmmword_25E9DC740;
        }

        __dst = v89;
        v220 = v87;
      }

      v187[11] = *&v221[144];
      v187[12] = *&v221[160];
      v187[13] = *&v221[176];
      v188 = *&v221[192];
      v187[7] = *&v221[80];
      v187[8] = *&v221[96];
      v187[9] = *&v221[112];
      v187[10] = *&v221[128];
      v187[3] = *&v221[16];
      v187[4] = *&v221[32];
      v187[5] = *&v221[48];
      v187[6] = *&v221[64];
      v187[0] = __dst;
      v187[1] = v220;
      v187[2] = *v221;
      if (sub_25E9D7640(v187) != 1)
      {
        v92 = 0uLL;
        if (*(v85 + 16))
        {
          v93 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DEE50);
          v92 = 0uLL;
          v94 = xmmword_25E9DC740;
          if (v95)
          {
            v96 = (*(v85 + 56) + 32 * v93);
            v94 = *v96;
            v92 = v96[1];
          }
        }

        else
        {
          v94 = xmmword_25E9DC740;
        }

        *&v221[8] = v94;
        *&v221[24] = v92;
      }

      v185[11] = *&v221[144];
      v185[12] = *&v221[160];
      v185[13] = *&v221[176];
      v185[7] = *&v221[80];
      v185[8] = *&v221[96];
      v185[9] = *&v221[112];
      v185[10] = *&v221[128];
      v185[3] = *&v221[16];
      v185[4] = *&v221[32];
      v185[5] = *&v221[48];
      v185[6] = *&v221[64];
      v185[0] = __dst;
      v185[1] = v220;
      v186 = *&v221[192];
      v185[2] = *v221;
      if (sub_25E9D7640(v185) != 1)
      {
        v97 = 0uLL;
        if (*(v85 + 16))
        {
          v98 = sub_25E978F5C(0x75516E6F73726570, 0xEF656D6954797265);
          v97 = 0uLL;
          v99 = xmmword_25E9DC740;
          if (v100)
          {
            v101 = (*(v85 + 56) + 32 * v98);
            v99 = *v101;
            v97 = v101[1];
          }
        }

        else
        {
          v99 = xmmword_25E9DC740;
        }

        *&v221[40] = v99;
        *&v221[56] = v97;
      }

      v183[11] = *&v221[144];
      v183[12] = *&v221[160];
      v183[13] = *&v221[176];
      v183[7] = *&v221[80];
      v183[8] = *&v221[96];
      v183[9] = *&v221[112];
      v183[10] = *&v221[128];
      v183[3] = *&v221[16];
      v183[4] = *&v221[32];
      v183[5] = *&v221[48];
      v183[6] = *&v221[64];
      v183[0] = __dst;
      v183[1] = v220;
      v184 = *&v221[192];
      v183[2] = *v221;
      if (sub_25E9D7640(v183) != 1)
      {
        v102 = 0uLL;
        if (*(v85 + 16))
        {
          v103 = sub_25E978F5C(0xD000000000000017, 0x800000025E9DEE70);
          v102 = 0uLL;
          v104 = xmmword_25E9DC740;
          if (v105)
          {
            v106 = (*(v85 + 56) + 32 * v103);
            v104 = *v106;
            v102 = v106[1];
          }
        }

        else
        {
          v104 = xmmword_25E9DC740;
        }

        *&v221[72] = v104;
        *&v221[88] = v102;
      }

      v181[11] = *&v221[144];
      v181[12] = *&v221[160];
      v181[13] = *&v221[176];
      v181[7] = *&v221[80];
      v181[8] = *&v221[96];
      v181[9] = *&v221[112];
      v181[10] = *&v221[128];
      v182 = *&v221[192];
      v181[5] = *&v221[48];
      v181[6] = *&v221[64];
      v181[0] = __dst;
      v181[1] = v220;
      v181[3] = *&v221[16];
      v181[4] = *&v221[32];
      v181[2] = *v221;
      if (sub_25E9D7640(v181) != 1)
      {
        v107 = 0uLL;
        if (*(v85 + 16))
        {
          v108 = sub_25E978F5C(0xD00000000000001CLL, 0x800000025E9DEE90);
          v107 = 0uLL;
          v109 = xmmword_25E9DC740;
          if (v110)
          {
            v111 = (*(v85 + 56) + 32 * v108);
            v109 = *v111;
            v107 = v111[1];
          }
        }

        else
        {
          v109 = xmmword_25E9DC740;
        }

        *&v221[104] = v109;
        *&v221[120] = v107;
      }

      v179[12] = *&v221[160];
      v179[13] = *&v221[176];
      v180 = *&v221[192];
      v179[8] = *&v221[96];
      v179[9] = *&v221[112];
      v179[10] = *&v221[128];
      v179[11] = *&v221[144];
      v179[4] = *&v221[32];
      v179[5] = *&v221[48];
      v179[6] = *&v221[64];
      v179[7] = *&v221[80];
      v179[0] = __dst;
      v179[1] = v220;
      v179[2] = *v221;
      v179[3] = *&v221[16];
      if (sub_25E9D7640(v179) != 1)
      {
        v112 = 0uLL;
        if (*(v85 + 16))
        {
          v113 = sub_25E978F5C(0xD000000000000015, 0x800000025E9DEEB0);
          v112 = 0uLL;
          v114 = xmmword_25E9DC740;
          if (v115)
          {
            v116 = (*(v85 + 56) + 32 * v113);
            v114 = *v116;
            v112 = v116[1];
          }
        }

        else
        {
          v114 = xmmword_25E9DC740;
        }

        *&v221[136] = v114;
        *&v221[152] = v112;
      }

      v177[12] = *&v221[160];
      v177[13] = *&v221[176];
      v178 = *&v221[192];
      v177[8] = *&v221[96];
      v177[9] = *&v221[112];
      v177[10] = *&v221[128];
      v177[11] = *&v221[144];
      v177[4] = *&v221[32];
      v177[5] = *&v221[48];
      v177[6] = *&v221[64];
      v177[7] = *&v221[80];
      v177[0] = __dst;
      v177[1] = v220;
      v177[2] = *v221;
      v177[3] = *&v221[16];
      if (sub_25E9D7640(v177) != 1)
      {
        v117 = 0uLL;
        if (*(v85 + 16))
        {
          v118 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DEED0);
          v117 = 0uLL;
          v119 = xmmword_25E9DC740;
          if (v120)
          {
            v121 = (*(v85 + 56) + 32 * v118);
            v119 = *v121;
            v117 = v121[1];
          }
        }

        else
        {
          v119 = xmmword_25E9DC740;
        }

        *&v221[168] = v119;
        *&v221[184] = v117;
      }

      if (*(v4[3] + 16))
      {

        sub_25E978F5C(v145, v144);
        if (v122)
        {

          v174 = *&v221[160];
          v175 = *&v221[176];
          v176 = *&v221[192];
          v170 = *&v221[96];
          v171 = *&v221[112];
          v172 = *&v221[128];
          v173 = *&v221[144];
          v166 = *&v221[32];
          v167 = *&v221[48];
          v168 = *&v221[64];
          v169 = *&v221[80];
          v162 = __dst;
          v163 = v220;
          v164 = *v221;
          v165 = *&v221[16];
          if (sub_25E9D7640(&v162) != 1)
          {
            v123 = v4[3];
            if (*(v123 + 16))
            {

              v124 = sub_25E978F5C(v145, v144);
              if (v125)
              {
                v126 = *(*(v123 + 56) + 4 * v124);
              }

              else
              {
                v126 = 0;
              }

              v132 = v125 ^ 1;
            }

            else
            {
              v126 = 0;
              v132 = 1;
            }

            *v221 = v126;
            v221[4] = v132 & 1;
          }

          goto LABEL_107;
        }
      }

      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v143, qword_280F6FE78);

      v127 = sub_25E9D7F00();
      v128 = sub_25E9D8120();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v162 = v130;
        *v129 = 136315138;
        *(v129 + 4) = sub_25E9887EC(v145, v144, &v162);
        _os_log_impl(&dword_25E971000, v127, v128, "executorSearchToolQueryType not found for executorId %s", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v130);
        MEMORY[0x25F8C51A0](v130, -1, -1);
        MEMORY[0x25F8C51A0](v129, -1, -1);
      }

LABEL_107:
      v159 = *&v221[160];
      v160 = *&v221[176];
      v155 = *&v221[96];
      v156 = *&v221[112];
      v157 = *&v221[128];
      v158 = *&v221[144];
      v151 = *&v221[32];
      v152 = *&v221[48];
      v153 = *&v221[64];
      v154 = *&v221[80];
      v147 = __dst;
      v148 = v220;
      v149 = *v221;
      v150 = *&v221[16];
      v174 = *&v221[160];
      v175 = *&v221[176];
      v170 = *&v221[96];
      v171 = *&v221[112];
      v172 = *&v221[128];
      v173 = *&v221[144];
      v166 = *&v221[32];
      v167 = *&v221[48];
      v168 = *&v221[64];
      v169 = *&v221[80];
      v162 = __dst;
      v163 = v220;
      v161 = *&v221[192];
      v176 = *&v221[192];
      v164 = *v221;
      v165 = *&v221[16];
      if (sub_25E9D7640(&v162) == 1)
      {
        sub_25E9890C8(v145, v144, v146);
      }

      else
      {
        v222[12] = v159;
        v222[13] = v160;
        v223 = v161;
        v222[8] = v155;
        v222[9] = v156;
        v222[10] = v157;
        v222[11] = v158;
        v222[4] = v151;
        v222[5] = v152;
        v222[6] = v153;
        v222[7] = v154;
        v222[0] = v147;
        v222[1] = v148;
        v222[2] = v149;
        v222[3] = v150;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        *&v146[0] = *v135;
        sub_25E994A5C(v222, v145, v144, v131);

        *v135 = *&v146[0];
      }

      v9 = v138;
      v3 = v133;
      if (v138 == v137)
      {

        goto LABEL_118;
      }

      if (v138 < *(v133 + 16))
      {
        continue;
      }

      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }
}

void *SELFComponent.Executor.deinit()
{

  return v0;
}

uint64_t SELFComponent.Executor.__deallocating_deinit()
{
  SELFComponent.Executor.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_25E9D75F4()
{
  result = qword_27FD0DE30;
  if (!qword_27FD0DE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DE30);
  }

  return result;
}

uint64_t sub_25E9D7640(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5A)
  {
    v2 = 90;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 90;
  if (v1 >= 0x59)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}