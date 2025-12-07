uint64_t sub_2331AE4D0()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v10, v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v7 + 8))(v9, v6);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v5, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Attempting to update missing cloud audio files if neccessary", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331BAC9C;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331BE574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_336;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_2331AE8B8(void *a1, uint64_t a2)
{
  v240 = a2;
  v3 = sub_23328D6EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v224 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v217 = &v216 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = (&v216 - v9);
  MEMORY[0x28223BE20](v11);
  v229 = &v216 - v12;
  MEMORY[0x28223BE20](v13);
  v219 = &v216 - v14;
  MEMORY[0x28223BE20](v15);
  v227 = &v216 - v16;
  MEMORY[0x28223BE20](v17);
  v230 = &v216 - v18;
  MEMORY[0x28223BE20](v19);
  v223 = &v216 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v216 - v22;
  MEMORY[0x28223BE20](v24);
  v228 = &v216 - v25;
  v26 = type metadata accessor for TTSVBLocalVoiceMO();
  v27 = sub_2331F88A8(v26, &protocol witness table for TTSVBLocalVoiceMO);
  v251 = a1;
  v233 = v26;
  v29 = static DSO<>.fetch(in:config:)(a1, v27, v28, v26, &protocol witness table for TTSVBLocalVoiceMO);

  if (v29 >> 62)
  {
LABEL_118:
    v31 = sub_23328E19C();
    if (v31)
    {
      goto LABEL_3;
    }

LABEL_119:

LABEL_121:

    return;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_119;
  }

LABEL_3:
  v234 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
  v237 = v29 & 0xC000000000000001;
  v226 = v29 & 0xFFFFFFFFFFFFFF8;
  v225 = v29 + 32;
  v258 = (v4 + 8);
  v259 = (v4 + 16);
  v4 = 0;
  *&v30 = 136315138;
  v239 = v30;
  *&v30 = 134218242;
  v218 = v30;
  *&v30 = 134217984;
  v216 = v30;
  v242 = v23;
  v235 = v31;
  v260 = v3;
  v232 = v10;
  v236 = v29;
  while (1)
  {
    if (v237)
    {
      v32 = MEMORY[0x23839BFC0](v4, v29);
    }

    else
    {
      if (v4 >= *(v226 + 16))
      {
        goto LABEL_117;
      }

      v32 = *(v225 + 8 * v4);
    }

    v33 = v32;
    v34 = __OFADD__(v4++, 1);
    if (v34)
    {
      goto LABEL_116;
    }

    v246 = v4;
    v29 = v32;
    v4 = (*((*MEMORY[0x277D85000] & *v32) + 0x60))();
    v10 = *(v4 + 16);
    if (v10)
    {
      v257 = (v10 - 1);
      v35 = MEMORY[0x277D84F90];
      v36 = 0;
      while (v36 < *(v4 + 16))
      {
        v261 = *(v4 + 32 + 16 * v36);
        v3 = v36 + 1;
        v29 = v261;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        if (TTSVBCommonVoiceModelMO.status.getter(ObjectType, *(&v261 + 1)) == 7)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v262 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = &v262;
            sub_233154978(0, v35[2] + 1, 1);
            v35 = v262;
          }

          v39 = v261;
          v41 = v35[2];
          v40 = v35[3];
          if (v41 >= v40 >> 1)
          {
            v29 = &v262;
            sub_233154978((v40 > 1), v41 + 1, 1);
            v39 = v261;
            v35 = v262;
          }

          v35[2] = v41 + 1;
          *&v35[2 * v41 + 4] = v39;
          v23 = v242;
          if (v257 == v36)
          {
            goto LABEL_25;
          }

          ++v36;
        }

        else
        {
          swift_unknownObjectRelease();
          ++v36;
          if (v10 == v3)
          {
            goto LABEL_25;
          }
        }
      }

      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v35 = MEMORY[0x277D84F90];
LABEL_25:

    v42 = v35[2];

    v43 = sub_233225440();
    v44 = *v259;
    if (!v42)
    {
      v54 = v228;
      v3 = v260;
      v44(v228, v43, v260);
      v55 = v33;
      v56 = sub_23328D6CC();
      v57 = sub_23328DE4C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v262 = v10;
        *v58 = v239;
        v59 = TTSVBCommonVoiceMO.displayName.getter(v233, &protocol witness table for TTSVBLocalVoiceMO);
        v61 = sub_23311A8F4(v59, v60, &v262);

        *(v58 + 4) = v61;
        _os_log_impl(&dword_233109000, v56, v57, "Local voice didn't have any completed models. Skipping: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x23839CFD0](v10, -1, -1);
        MEMORY[0x23839CFD0](v58, -1, -1);
      }

      else
      {
      }

      (*v258)(v54, v3);
      goto LABEL_6;
    }

    v256 = v43;
    v257 = v44;
    v3 = v260;
    (v44)(v23);
    v10 = v33;
    v45 = sub_23328D6CC();
    v46 = sub_23328DE4C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v262 = v48;
      *v47 = v239;
      v49 = TTSVBCommonVoiceMO.displayName.getter(v233, &protocol witness table for TTSVBLocalVoiceMO);
      v51 = sub_23311A8F4(v49, v50, &v262);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_233109000, v45, v46, "Checking local voice: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23839CFD0](v48, -1, -1);
      MEMORY[0x23839CFD0](v47, -1, -1);

      v52 = *v258;
      v53 = v242;
    }

    else
    {

      v52 = *v258;
      v53 = v23;
    }

    v255 = v52;
    v52(v53, v3);
    v62 = [v10 voiceID];
    v63 = sub_23328CE8C();
    v64 = *(v63 - 8);
    MEMORY[0x28223BE20](v63);
    v250 = v65;
    v66 = &v216 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v62)
    {
      break;
    }

    v23 = type metadata accessor for TTSVBCloudVoiceMO();
    sub_23328CE6C();

    v67 = static TTSVBCloudVoiceMO.voiceExists(withID:moc:)(v66, v251);
    v248 = *(v64 + 8);
    v249 = v64 + 8;
    v248(v66, v63);
    if (!v67)
    {
      v78 = v224;
      v257(v224, v256, v3);
      v79 = v10;
      v80 = sub_23328D6CC();
      v81 = sub_23328DE4C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v262 = v10;
        *v82 = v239;
        v83 = TTSVBCommonVoiceMO.displayName.getter(v233, &protocol witness table for TTSVBLocalVoiceMO);
        v85 = sub_23311A8F4(v83, v84, &v262);

        *(v82 + 4) = v85;
        _os_log_impl(&dword_233109000, v80, v81, "Local voice doesn't have existing cloud voice yet. Skipping. %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x23839CFD0](v10, -1, -1);
        MEMORY[0x23839CFD0](v82, -1, -1);
      }

      else
      {
      }

      v255(v78, v3);
      v23 = v242;
      goto LABEL_6;
    }

    v68 = v223;
    v257(v223, v256, v3);
    v10 = v10;
    v69 = sub_23328D6CC();
    v70 = sub_23328DE4C();

    v71 = os_log_type_enabled(v69, v70);
    v244 = v63;
    *&v261 = v23;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v262 = v23;
      *v72 = v239;
      v73 = TTSVBCommonVoiceMO.displayName.getter(v233, &protocol witness table for TTSVBLocalVoiceMO);
      v75 = sub_23311A8F4(v73, v74, &v262);

      *(v72 + 4) = v75;
      _os_log_impl(&dword_233109000, v69, v70, "Cloud voice exists for local voice: %s. Checking if cloud voice is missing recordings...", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23839CFD0](v23, -1, -1);
      MEMORY[0x23839CFD0](v72, -1, -1);

      v76 = v68;
      v77 = v260;
    }

    else
    {

      v76 = v68;
      v77 = v3;
    }

    v86 = (v255)(v76, v77);
    MEMORY[0x28223BE20](v86);
    *(&v216 - 2) = v10;
    v87 = sub_233175210();
    if (v87)
    {
      MEMORY[0x28223BE20](v87);
      *(&v216 - 2) = sub_2331BACA4;
      *(&v216 - 1) = &v216 - 2;
      sub_23328D2BC();
    }

    v88 = *((*MEMORY[0x277D85000] & *v10) + 0x58);
    v29 = v10;
    v253 = (*MEMORY[0x277D85000] & *v10) + 88;
    v254 = v88;
    v89 = v88();
    v3 = 0;
    v90 = (v89 + 40);
    v4 = -*(v89 + 16);
    v91 = -1;
    while (v4 + v91 != -1)
    {
      if (++v91 >= *(v89 + 16))
      {
        goto LABEL_111;
      }

      v23 = (v90 + 2);
      v92 = *v90;
      v93 = swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(v93, v92);
      swift_unknownObjectRelease();
      v90 = v23;
      v34 = __OFADD__(v3, v29 & 1);
      v3 += v29 & 1;
      if (v34)
      {
        goto LABEL_112;
      }
    }

    v94 = v230;
    v95 = v260;
    v257(v230, v256, v260);
    v96 = v10;
    v97 = sub_23328D6CC();
    v98 = sub_23328DE4C();
    v99 = os_log_type_enabled(v97, v98);
    v243 = v96;
    if (v99)
    {
      LODWORD(v247) = v98;
      v252 = v97;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v245 = &v216;
      v262 = v101;
      *v100 = v218;
      *(v100 + 4) = v3;
      *(v100 + 12) = 2080;
      v102 = &v216 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
      v103 = [v96 voiceID];
      v10 = &v216;
      MEMORY[0x28223BE20](v103);

      if (!v103)
      {
        goto LABEL_125;
      }

      sub_23328CE6C();

      v104 = v244;
      (*(v64 + 32))(v102, v102, v244);
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
      v105 = sub_23328E51C();
      v107 = v106;
      v248(v102, v104);
      v108 = sub_23311A8F4(v105, v107, &v262);

      *(v100 + 14) = v108;
      v109 = v252;
      _os_log_impl(&dword_233109000, v252, v247, "Found %ld local samples with audio files. %s", v100, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x23839CFD0](v101, -1, -1);
      MEMORY[0x23839CFD0](v100, -1, -1);

      v110 = (v255)(v230, v260);
      v23 = v242;
      v96 = v243;
    }

    else
    {

      v110 = (v255)(v94, v95);
      v23 = v242;
    }

    v112 = MEMORY[0x28223BE20](v110);
    *(&v216 - 2) = v3;
    *(&v216 - 1) = v96;
    v113 = *(v240 + v234);
    v114 = &unk_2789C4000;
    if (v113)
    {
      MEMORY[0x28223BE20](v111);
      *(&v216 - 2) = sub_2331BAD64;
      *(&v216 - 1) = v115;

      sub_23328D2BC();
      sub_2331B9710(v113);
    }

    v116 = [v96 voiceID];
    MEMORY[0x28223BE20](v116);
    v118 = &v216 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v119)
    {
      goto LABEL_124;
    }

    sub_23328CE6C();

    v120 = static TTSVBCloudVoiceMO.findOrFetch(voiceID:moc:)(v118, v251);
    v121 = (v248)(v118, v244);
    if (!v120)
    {
      goto LABEL_5;
    }

    v122 = *((*MEMORY[0x277D85000] & *v120) + 0x58);
    v222 = v120;
    v123 = *(v122(v121) + 16);
    if (v123)
    {
      v262 = MEMORY[0x277D84F90];
      sub_23328E2DC();
      type metadata accessor for TTSVBCloudVoiceSampleMO();
      v124 = 32;
      do
      {
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
        }

        sub_23328E2BC();
        v10 = v262[2];
        sub_23328E2EC();
        sub_23328E2FC();
        sub_23328E2CC();
        v124 += 16;
        --v123;
      }

      while (v123);

      v4 = v262;
      v114 = &unk_2789C4000;
      v96 = v243;
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v125 = 0;
    v29 = 0;
    v126 = *(v4 + 16);
    while (v126 != v29)
    {
      if (v29 >= *(v4 + 16))
      {
        goto LABEL_113;
      }

      if ([*(v4 + 8 * v29 + 32) v114[391]])
      {
        swift_unknownObjectRelease();
        v127 = 1;
      }

      else
      {
        v127 = 0;
      }

      ++v29;
      v34 = __OFADD__(v125, v127);
      v125 += v127;
      if (v34)
      {
        goto LABEL_114;
      }
    }

    v257(v227, v256, v260);
    v128 = sub_23328D6CC();
    v129 = sub_23328DE4C();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = v216;
      *(v130 + 4) = v125;
      _os_log_impl(&dword_233109000, v128, v129, "Found %ld cloud samples with audio files.", v130, 0xCu);
      MEMORY[0x23839CFD0](v130, -1, -1);
    }

    v131 = (v255)(v227, v260);
    v133.n128_f64[0] = MEMORY[0x28223BE20](v131);
    *(&v216 - 2) = v125;
    v134 = *(v240 + v234);
    if (v134)
    {
      MEMORY[0x28223BE20](v132);
      *(&v216 - 2) = sub_2331BAD6C;
      *(&v216 - 1) = v135;

      sub_23328D2BC();
      sub_2331B9710(v134);
    }

    if (v125 >= v3)
    {

LABEL_5:
      goto LABEL_6;
    }

    v136 = v260;
    (v257)(v219, v256, v260, v133);
    v4 = sub_23328D6CC();
    v137 = sub_23328DE4C();
    if (os_log_type_enabled(v4, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_233109000, v4, v137, "Cloud voice count is less than local voice count. Checking diff.", v138, 2u);
      MEMORY[0x23839CFD0](v138, -1, -1);
    }

    v139 = (v255)(v219, v136);
    v140 = *(v240 + v234);
    if (v140)
    {

      sub_23328D2BC();
      v139 = sub_2331B9710(v140);
    }

    v29 = v96;
    v247 = (v254)(v139);
    v245 = *(v247 + 16);
    if (v245)
    {
      v23 = 0;
      v141 = (v247 + 40);
      while (v23 < *(v247 + 16))
      {
        v10 = *(v141 - 1);
        v142 = *v141;
        v143 = swift_getObjectType();
        v4 = v142 + 208;
        v144 = *(v142 + 208);
        swift_unknownObjectRetain();
        v29 = v10;
        v145 = v144(v143, v142);
        if (v146)
        {
          v147 = v145;
          v148 = v146;
          v253 = v23;
          v254 = v141;
          *&v261 = v10;
          v149 = [v96 voiceID];
          MEMORY[0x28223BE20](v149);
          v151 = &v216 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (!v152)
          {
            __break(1u);
            goto LABEL_123;
          }

          type metadata accessor for TTSVBCloudVoiceSampleMO();
          sub_23328CE6C();

          v252 = static TTSVBCloudVoiceSampleMO.findOrFetch(sampleID:voiceID:moc:)(v147, v148, v151, v251);

          v248(v151, v244);
          v3 = sub_23328CC9C();
          v153 = *(v3 - 8);
          v154 = *(v153 + 64);
          MEMORY[0x28223BE20](v3);
          v10 = (&v216 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
          v4 = &v216;
          MEMORY[0x28223BE20](v155 - 8);
          v157 = &v216 - v156;
          v158 = v142;
          v159 = v153;
          v29 = v261;
          TTSVBCommonVoiceSampleMO.url.getter(v143, v158, &v216 - v156);
          if ((*(v159 + 48))(v157, 1, v3) == 1)
          {
            swift_unknownObjectRelease();

            sub_233121E04(v157, &qword_27DDE19A0, &unk_233290360);
            v96 = v243;
            v23 = v253;
            v141 = v254;
          }

          else
          {
            v238 = &v216;
            v241 = v159;
            (*(v159 + 32))(&v216 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0), v157, v3);
            v262 = *sub_2331DEBE8();
            v160 = v262;
            v161 = _TTSVBFileManager.fileExists(_:)(&v216 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0));

            v162 = (v159 + 16);
            if (v161)
            {
              v163 = v229;
              v164 = v260;
              v165 = (v257)(v229, v256, v260);
              v166 = MEMORY[0x28223BE20](v165);
              v167 = &v216 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*v162)(v167, v10, v3, v166);
              v168 = sub_23328D6CC();
              v169 = sub_23328DE4C();
              v170 = os_log_type_enabled(v168, v169);
              v141 = v254;
              if (v170)
              {
                v171 = swift_slowAlloc();
                v221 = swift_slowAlloc();
                v262 = v221;
                *v171 = v239;
                sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
                v172 = sub_23328E51C();
                v173 = v10;
                v175 = v174;
                v231 = *(v241 + 8);
                (v231)(v167, v3);
                v176 = sub_23311A8F4(v172, v175, &v262);
                v10 = v173;

                *(v171 + 4) = v176;
                _os_log_impl(&dword_233109000, v168, v169, "Updating file backed future for audio recording: %s.", v171, 0xCu);
                v177 = v221;
                __swift_destroy_boxed_opaque_existential_0(v221);
                MEMORY[0x23839CFD0](v177, -1, -1);
                MEMORY[0x23839CFD0](v171, -1, -1);

                v178 = v229;
                v179 = v260;
              }

              else
              {

                v231 = *(v241 + 8);
                (v231)(v167, v3);
                v178 = v163;
                v179 = v164;
              }

              v197 = (v255)(v178, v179);
              v23 = v253;
              MEMORY[0x28223BE20](v197);
              *(&v216 - 2) = v10;
              v199 = *(v240 + v234);
              v96 = v243;
              v4 = v261;
              if (v199)
              {
                MEMORY[0x28223BE20](v198);
                *(&v216 - 2) = sub_2331BAEB8;
                *(&v216 - 1) = v200;

                sub_23328D2BC();
                sub_2331B9710(v199);
              }

              v29 = v252;
              if (v252)
              {
                v201 = objc_opt_self();
                v202 = v29;
                v29 = sub_23328CBCC();
                v203 = [v201 createFutureForFileAtURL_];

                [v202 setAudioFuture_];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              (v231)(v10, v3);
            }

            else
            {
              v180 = v260;
              v181 = (v257)(v232, v256, v260);
              v231 = &v216;
              v182 = MEMORY[0x28223BE20](v181);
              v183 = &v216 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*v162)(v183, v10, v3, v182);
              v184 = sub_23328D6CC();
              v185 = sub_23328DE3C();
              v186 = os_log_type_enabled(v184, v185);
              v141 = v254;
              if (v186)
              {
                v187 = swift_slowAlloc();
                v220 = swift_slowAlloc();
                v262 = v220;
                *v187 = v239;
                sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
                v188 = sub_23328E51C();
                v221 = v10;
                v190 = v189;
                v191 = v3;
                v192 = *(v241 + 8);
                v192(v183, v191);
                v193 = sub_23311A8F4(v188, v190, &v262);
                v10 = v221;

                *(v187 + 4) = v193;
                v29 = v192;
                v3 = v191;
                _os_log_impl(&dword_233109000, v184, v185, "Failed to update file backed future for audio recording. File doesn't exist. Skipping.: %s.", v187, 0xCu);
                v194 = v220;
                __swift_destroy_boxed_opaque_existential_0(v220);
                MEMORY[0x23839CFD0](v194, -1, -1);
                MEMORY[0x23839CFD0](v187, -1, -1);
                swift_unknownObjectRelease();

                v195 = v232;
                v196 = v260;
              }

              else
              {
                swift_unknownObjectRelease();

                v29 = *(v241 + 8);
                (v29)(v183, v3);
                v195 = v232;
                v196 = v180;
              }

              v255(v195, v196);
              v4 = v238;
              v23 = v253;
              (v29)(v10, v3);
              v96 = v243;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v23;
        v141 += 2;
        if (v245 == v23)
        {
          goto LABEL_104;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

LABEL_104:

    NSManagedObjectContext.saveOrRollback()();
    v204 = v217;
    v3 = v260;
    v257(v217, v256, v260);
    v205 = v96;
    v206 = sub_23328D6CC();
    v207 = sub_23328DE4C();

    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v262 = v10;
      *v208 = v239;
      v209 = TTSVBCommonVoiceMO.displayName.getter(v233, &protocol witness table for TTSVBLocalVoiceMO);
      v211 = sub_23311A8F4(v209, v210, &v262);

      *(v208 + 4) = v211;
      _os_log_impl(&dword_233109000, v206, v207, "Successfully updated audio files for %s.", v208, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23839CFD0](v10, -1, -1);
      MEMORY[0x23839CFD0](v208, -1, -1);
    }

    v212 = (v255)(v204, v3);
    MEMORY[0x28223BE20](v212);
    *(&v216 - 2) = v205;
    v214 = *(v240 + v234);
    v23 = v242;
    if (v214)
    {
      MEMORY[0x28223BE20](v213);
      *(&v216 - 2) = sub_2331BAE18;
      *(&v216 - 1) = v215;

      sub_23328D2BC();

      sub_2331B9710(v214);
    }

    else
    {
    }

LABEL_6:
    v29 = v236;
    v4 = v246;
    if (v246 == v235)
    {
      goto LABEL_121;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

void sub_2331B0848(uint64_t a1, void *a2)
{
  sub_23328E24C();

  v11[2] = 0x20646E756F46;
  v11[3] = 0xE600000000000000;
  v11[1] = a1;
  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A86A0);
  v5 = [a2 voiceID];
  v6 = sub_23328CE8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    sub_23328CE6C();

    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v10 = sub_23328E51C();
    MEMORY[0x23839B7E0](v10);

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2331B0A08(uint64_t (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v7 = sub_23328D7CC();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = a1(v15);
  v26[2] = v26;
  v26[1] = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v18, v18, v12, v17);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v27;
  *(v20 + 24) = v21;
  (*(v13 + 32))(v20 + v19, v18, v12);
  aBlock[4] = sub_2331BE01C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_602;
  v22 = _Block_copy(aBlock);

  sub_23328D7DC();
  v34 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v23 = v29;
  v24 = v33;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v23, v22);
  _Block_release(v22);
  (*(v32 + 8))(v23, v24);
  (*(v30 + 8))(v11, v31);
  (*(v13 + 8))(v18, v12);
}

uint64_t sub_2331B0FE0(void (*a1)(uint64_t *__return_ptr, double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23328D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D80C();
  v21 = *(v12 - 8);
  v22 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(&v25, v13);
  v16 = v25;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = v16;
  aBlock[4] = sub_2331BCAD4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_467;
  v18 = _Block_copy(aBlock);

  sub_23328D7DC();
  v23 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v11, v18);
  _Block_release(v18);
  (*(v9 + 8))(v11, v8);
  (*(v21 + 8))(v15, v22);
}

uint64_t sub_2331B1458(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  v15 = (a6)(0, v12);
  (*(*(v15 - 8) + 16))(v14, a3, v15);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_233121E04(v14, a4, a5);
}

uint64_t sub_2331B1564(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23328D7CC();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v11 = *(v19 - 8);
  v12 = MEMORY[0x28223BE20](v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v12);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  aBlock[4] = sub_2331BDE74;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_584;
  v16 = _Block_copy(aBlock);

  sub_23328D7DC();
  v21 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_2331B19D8(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_233121E04(v4, &unk_27DDE25D0, &unk_233290330);
}

void TTSVBVoiceBankingManager.xpcServiceConfig.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!TTSVBProcessIsVoicebankingd(a1, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_2331E7F08(a3);
}

void TTSVBVoiceBankingManager.getTrainingMetadataDownloadingIfNeeded(localeID:scriptType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23317503C();
  v10 = sub_23328D95C();
  v11 = *(v5 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v14[4] = sub_2331B9708;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_233189B88;
  v14[3] = &block_descriptor_192;
  v13 = _Block_copy(v14);

  [v9 fetchTrainingScriptsWithLocaleID:v10 scriptType:a3 replyOnQueue:v11 completion:v13];
  _Block_release(v13);
}

void sub_2331B1C38(uint64_t result, uint64_t a2, void *a3, void (*a4)(char *))
{
  if (a3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    MEMORY[0x28223BE20](v6);
    v8 = &v14 - v7;
    v9 = a3;
    sub_2331524CC(&v16);
    v14 = v16;
    v15 = v17;
    static TTSVBError.map(_:_:)(a3, &v14, v8);
    sub_2331220AC(v14, *(&v14 + 1), v15);
    swift_storeEnumTagMultiPayload();
    a4(v8);

    v10 = v8;
LABEL_5:
    sub_233121E04(v10, &qword_27DDE19A8, &qword_233299A30);
    return;
  }

  if (a2)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    MEMORY[0x28223BE20](v11);
    v13 = &v14 - v12;
    sub_23328CB7C();
    swift_storeEnumTagMultiPayload();
    a4(v13);
    v10 = v13;
    goto LABEL_5;
  }

  __break(1u);
}

void TTSVBVoiceBankingManager.getTrainingMetadataDownloadingIfNeeded(localeID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23317503C();
  v8 = sub_23328D95C();
  v9 = *(v4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_2331BE6D0;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_233189B88;
  v12[3] = &block_descriptor_199;
  v11 = _Block_copy(v12);

  [v7 fetchTrainingScriptsWithLocaleID:v8 scriptType:@"default" replyOnQueue:v9 completion:v11];
  _Block_release(v11);
}

uint64_t TTSVBVoiceBankingManager.discardLongTermLogs(olderThan:)(uint64_t a1)
{
  result = sub_233175210();
  if (result)
  {
    sub_23328D2AC();
  }

  return result;
}

id TTSVBVoiceBankingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331B2200(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x23839BAC0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2331B2254(uint64_t a1, uint64_t a2)
{
  v3 = sub_23328DD7C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2331B22AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23328DD8C();
  *a1 = result;
  return result;
}

uint64_t sub_2331B22D4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v37);
  v35 = v37;
  v36 = v38;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v4, v5, &v35);
  result = sub_2331220AC(v35, *(&v35 + 1), v36);
  if (v2)
  {
    return result;
  }

  v33 = v7;
  v9 = [v7 samples];
  if (!v9 || (v10 = v9, v11 = [v9 allObjects], v10, v12 = sub_23328DBFC(), v11, v13 = sub_233179498(v12), , !v13))
  {

    v13 = MEMORY[0x277D84F90];
    v34 = a1;
    if (!v6)
    {
      goto LABEL_25;
    }

LABEL_7:
    *&v37 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
    {
      v15 = v13 & 0xC000000000000001;
      v16 = v13 & 0xFFFFFFFFFFFFFF8;
      v17 = 4;
      v39 = v13;
      while (1)
      {
        v18 = v17 - 4;
        if (v15)
        {
          v19 = MEMORY[0x23839BFC0](v17 - 4, v13);
        }

        else
        {
          if (v18 >= *(v16 + 16))
          {
            goto LABEL_21;
          }

          v19 = *(v13 + 8 * v17);
        }

        v20 = v19;
        v21 = v17 - 3;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v22 = type metadata accessor for TTSVBLocalVoiceSampleMO();
        v23 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
        TTSVBCommonVoiceSampleMO.trainingValidity.getter(v22, v23, &v35);
        if (TTSVBVoiceSampleTrainingValidity.isValid.getter())
        {
          sub_23328E2BC();
          sub_23328E2EC();
          v13 = v39;
          sub_23328E2FC();
          sub_23328E2CC();
        }

        else
        {
        }

        ++v17;
        if (v21 == i)
        {
          v24 = v37;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_24:

    v13 = v24;
    goto LABEL_25;
  }

  v34 = a1;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (v13 >> 62)
  {
LABEL_42:
    v25 = sub_23328E19C();
  }

  else
  {
    v25 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v27 = 0;
  while (v25 != v26)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23839BFC0](v26, v13);
    }

    else
    {
      if (v26 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v28 = *(v13 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v30 = type metadata accessor for TTSVBLocalVoiceSampleMO();
    v31 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
    LOBYTE(v30) = TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(v30, v31);

    ++v26;
    v32 = __OFADD__(v27, v30 & 1);
    v27 += v30 & 1;
    if (v32)
    {
      goto LABEL_41;
    }
  }

  *v34 = v27;
  return result;
}

uint64_t sub_2331B268C@<X0>(double *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v39);
  v37 = v39;
  v38 = v40;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v4, v5, &v37);
  result = sub_2331220AC(v37, *(&v37 + 1), v38);
  if (v2)
  {
    return result;
  }

  v36 = v7;
  v9 = [v7 samples];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 allObjects];

    v12 = sub_23328DBFC();
    v13 = sub_233179498(v12);

    if (v13)
    {
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_7:
      *&v39 = MEMORY[0x277D84F90];
      if (v13 >> 62)
      {
        goto LABEL_22;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = a1; v14; i = a1)
      {
        a1 = (v13 & 0xC000000000000001);
        v15 = v13 & 0xFFFFFFFFFFFFFF8;
        v16 = 4;
        v41 = v13;
        while (1)
        {
          v17 = v16 - 4;
          if (a1)
          {
            v18 = MEMORY[0x23839BFC0](v16 - 4, v13);
          }

          else
          {
            if (v17 >= *(v15 + 16))
            {
              goto LABEL_21;
            }

            v18 = *(v13 + 8 * v16);
          }

          v19 = v18;
          v20 = v16 - 3;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v21 = type metadata accessor for TTSVBLocalVoiceSampleMO();
          v22 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
          TTSVBCommonVoiceSampleMO.trainingValidity.getter(v21, v22, &v37);
          if (TTSVBVoiceSampleTrainingValidity.isValid.getter())
          {
            sub_23328E2BC();
            sub_23328E2EC();
            v13 = v41;
            sub_23328E2FC();
            sub_23328E2CC();
          }

          else
          {
          }

          ++v16;
          if (v20 == v14)
          {
            v23 = v39;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v14 = sub_23328E19C();
      }

      v23 = MEMORY[0x277D84F90];
LABEL_24:

      v13 = v23;
      a1 = i;
      goto LABEL_25;
    }
  }

  v13 = MEMORY[0x277D84F90];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (v13 >> 62)
  {
    goto LABEL_37;
  }

  v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = a1; v24; j = a1)
  {
    a1 = (v13 & 0xC000000000000001);
    v26 = 0.0;
    v27 = 4;
    while (1)
    {
      v28 = v27 - 4;
      if (a1)
      {
        v29 = MEMORY[0x23839BFC0](v27 - 4, v13);
      }

      else
      {
        if (v28 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v29 = *(v13 + 8 * v27);
      }

      v30 = v29;
      v31 = __OFADD__(v28, 1);
      v32 = v27 - 3;
      if (v31)
      {
        break;
      }

      [v29 recordingDuration];
      v34 = v33;

      v26 = v26 + v34;
      ++v27;
      if (v32 == v24)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v24 = sub_23328E19C();
  }

  v26 = 0.0;
LABEL_39:

  *j = v26;
  return result;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2331B2AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2331B2C00(uint64_t a1)
{
  sub_2331B2AAC(&qword_27DDE2948, type metadata accessor for TTSVBSiriTrainingVersion, &unk_233299558);
  sub_2331B2AAC(&qword_27DDE2950, type metadata accessor for TTSVBSiriTrainingVersion, &unk_2332994F8);

  return sub_23328E36C();
}

uint64_t sub_2331B2CBC(uint64_t a1)
{
  sub_2331B2AAC(&qword_27DDE2938, type metadata accessor for TTSVBSiriTrainingAssetName, &unk_2332996B0);
  sub_2331B2AAC(&qword_27DDE2940, type metadata accessor for TTSVBSiriTrainingAssetName, &unk_233299650);

  return sub_23328E36C();
}

uint64_t sub_2331B2D78(uint64_t a1)
{
  sub_2331B2AAC(&qword_27DDE2928, type metadata accessor for TTSVBSiriTrainingAssetType, &unk_233299808);
  sub_2331B2AAC(&qword_27DDE2930, type metadata accessor for TTSVBSiriTrainingAssetType, &unk_2332997A8);
  return sub_23328E36C();
}

uint64_t sub_2331B2E34(uint64_t a1)
{
  sub_2331B2AAC(&qword_27DDE2918, type metadata accessor for TTSVBSiriTrainingScriptType, &unk_233299960);
  sub_2331B2AAC(&qword_27DDE2920, type metadata accessor for TTSVBSiriTrainingScriptType, &unk_233299900);

  return sub_23328E36C();
}

uint64_t sub_2331B2F40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2331B3038;

  return v6(a1);
}

uint64_t sub_2331B3038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2331B3130(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2331B330C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A00, &unk_233299B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2331B345C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000024, 0x80000002332A8ED0);
  v3 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0xD000000000000013, 0x80000002332A8F00);
  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v4, v5);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A8F20);
  v6 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v6);

  return 0;
}

void sub_2331B358C()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_23328CE8C() - 8);
  sub_233185384(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_2331B3694()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = sub_23317503C();
  v4 = [v3 getAllAvailableLocalesForTrainingVersion_];

  v5 = sub_23328DBFC();
  v1(v5);
}

uint64_t sub_2331B3768()
{
  v1 = v0[2];
  v2 = v0[7];
  v3 = v0[8];
  v4 = sub_23317503C();
  v5 = sub_23328D95C();
  v6 = [v4 installedTrainingAssetsForLocaleID:v5 name:v2 type:v3];

  sub_233144EEC(0, &qword_27DDE2A28, off_2789C3138);
  v7 = sub_23328DBFC();

  if (v7 >> 62)
  {
    v8 = sub_23328E19C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1(v8 > 0);
}

void *sub_2331B38BC()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_23318A4A0(v0 + v2, v5, v6, v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2331B3A28@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(sub_23328CE8C() - 8);
  result = sub_23318AE30(v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void sub_2331B3AAC()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_23318B2C8(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

_DWORD *sub_2331B3B44()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_23318D418(v0 + v2, v6, v7, v8, v9, v10);
}

void sub_2331B3C18(uint64_t *a1@<X8>)
{
  v3 = *(sub_23328CC9C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_233190364(v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_2331B3D44()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_23328CE1C() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v10 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  return sub_2331930D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + v2), (v0 + v5), *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v10), *(v0 + v11), *(v0 + v12), *(v0 + ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL)), v0 + v9, *(v0 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_2331B4014(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2331B40E0(a1, a2, a3, *v3, &qword_27DDE2A88, qword_233299B90, type metadata accessor for TTSVBInstalledVoiceModel);
  *v3 = result;
  return result;
}

void *sub_2331B4058(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2331B40E0(a1, a2, a3, *v3, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
  *v3 = result;
  return result;
}

void *sub_2331B409C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2331B40E0(a1, a2, a3, *v3, &qword_27DDE2A18, &qword_233299B30, type metadata accessor for TTSVBVoiceSample);
  *v3 = result;
  return result;
}

void *sub_2331B40E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2331B42BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_23328E61C();
  sub_23328DA3C();
  v5 = sub_23328E66C();

  return a3(a1, a2, v5);
}

unint64_t sub_2331B4340(uint64_t a1)
{
  type metadata accessor for TTSVBVoice(0);
  sub_2331B2AAC(&qword_27DDE29A0, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  v2 = sub_23328D8BC();

  return sub_2331B43D8(a1, v2);
}

unint64_t sub_2331B43D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoice(0);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_2331BDBEC(*(v2 + 48) + v11 * v9, v7, type metadata accessor for TTSVBVoice);
      sub_2331B2AAC(&qword_280D3A0A0, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
      v12 = sub_23328D90C();
      sub_2331BDC54(v7, type metadata accessor for TTSVBVoice);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2331B458C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTSVBVoice(0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
  v44 = v4;
  result = sub_23328E34C();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_2331BDDC4(v25, v7, type metadata accessor for TTSVBVoice);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_2331BDBEC(v25, v7, type metadata accessor for TTSVBVoice);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_2331B2AAC(&qword_27DDE29A0, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
      v30 = v27;
      result = sub_23328D8BC();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2331BDDC4(v30, *(v11 + 48) + v24 * v19, type metadata accessor for TTSVBVoice);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_2331B4940(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_2331B5210(v7, v4, v2);
      MEMORY[0x23839CFD0](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_2331B4D1C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

uint64_t sub_2331B4AA4()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0x656C7069746C754DLL, 0xEA00000000002820);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0xD000000000000053, 0x80000002332A8520);
  return 0;
}

uint64_t sub_2331B4C30()
{
  v2[3] = sub_23328D12C();
  v2[4] = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(v2);

  sub_23328D13C();
  sub_23328D10C();
  __swift_destroy_boxed_opaque_existential_0(v2);
  sub_23328D10C();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

void sub_2331B4D1C(unint64_t *a1, uint64_t a2, void *a3)
{
  v41 = a2;
  v42 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2828, &qword_233299268);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v40 - v6;
  v7 = type metadata accessor for TTSVBVoice(0);
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v9 = 0;
  v48 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v50 = (v15 - 1) & v15;
LABEL_12:
    v20 = v17 | (v9 << 6);
    v21 = v48;
    v22 = v51;
    sub_2331BDBEC(v48[6] + *(v45 + 72) * v20, v51, type metadata accessor for TTSVBVoice);
    v23 = v21[7];
    v44 = v20;
    v24 = *(v23 + 8 * v20);
    v25 = v22;
    v26 = v54;
    sub_2331BDBEC(v25, v54, type metadata accessor for TTSVBVoice);
    v27 = v47;
    *(v26 + *(v47 + 48)) = v24;
    v28 = v26;
    v29 = v46;
    sub_233121D34(v28, v46, &qword_27DDE2828, &qword_233299268);
    v30 = *(v29 + *(v27 + 48));
    v49 = v24;
    swift_bridgeObjectRetain_n();
    sub_2331BDC54(v29, type metadata accessor for TTSVBVoice);
    v31 = sub_233167D94();
    v32 = v31[1];
    v52 = *v31;
    v53 = v32;
    MEMORY[0x28223BE20](v31);
    *(&v40 - 2) = &v52;

    LOBYTE(v29) = sub_2331ACE00(sub_2331BE538, (&v40 - 4), v30);

    if (v29 & 1) != 0 || (v33 = sub_233167DE4(), v34 = v33[1], v52 = *v33, v53 = v34, MEMORY[0x28223BE20](v33), *(&v40 - 2) = &v52, , v35 = sub_2331ACE00(sub_2331BE538, (&v40 - 4), v30), , (v35))
    {
      v36 = sub_233167B90();
      v37 = v36[1];
      v52 = *v36;
      v53 = v37;
      MEMORY[0x28223BE20](v36);
      *(&v40 - 2) = &v52;

      v38 = sub_2331ACE00(sub_2331BE538, (&v40 - 4), v30);

      sub_233121E04(v54, &qword_27DDE2828, &qword_233299268);

      sub_2331BDC54(v51, type metadata accessor for TTSVBVoice);
      v15 = v50;
      if ((v38 & 1) == 0)
      {
        *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
LABEL_18:
          sub_2331B5288(v42, v41, v43, v48);
          return;
        }
      }
    }

    else
    {
      sub_233121E04(v54, &qword_27DDE2828, &qword_233299268);

      sub_2331BDC54(v51, type metadata accessor for TTSVBVoice);
      v15 = v50;
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_18;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v50 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_2331B5210(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_2331B4D1C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_2331B5288(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTSVBVoice(0);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = &v33 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
  result = sub_23328E35C();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v37 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[6];
    v22 = v34;
    v39 = *(v35 + 72);
    sub_2331BDBEC(v21 + v39 * v20, v34, type metadata accessor for TTSVBVoice);
    v23 = *(a4[7] + 8 * v20);
    sub_2331BDDC4(v22, v40, type metadata accessor for TTSVBVoice);
    sub_2331B2AAC(&qword_27DDE29A0, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
    v38 = v23;

    result = sub_23328D8BC();
    v24 = -1 << *(v13 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_2331BDDC4(v40, *(v13 + 48) + v27 * v39, type metadata accessor for TTSVBVoice);
    *(*(v13 + 56) + 8 * v27) = v38;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    v14 = v37;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
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

void *sub_2331B55F8()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBVoice(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
  v5 = *v0;
  v6 = sub_23328E33C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_2331BDBEC(*(v5 + 48) + v21, v4, type metadata accessor for TTSVBVoice);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_2331BDDC4(v4, *(v7 + 48) + v21, type metadata accessor for TTSVBVoice);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_2331B5838(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
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

    v17 = sub_23328E1AC();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_23328E19C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2331B5A9C(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2331B5C94(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_2331B5EB4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_23328DFCC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_23328DFDC();

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
      v36 = *v11;
      v26 = a2;
      sub_2331B5F38(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2331B5A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_23328E21C();
    v21 = v8;
    sub_23328E18C();
    if (sub_23328E1BC())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_2331B5C94(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_23328DFCC();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_23328E1BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2331B5C94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23328E20C();
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
      result = sub_23328DFCC();
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

unint64_t sub_2331B5EB4(uint64_t a1, uint64_t a2)
{
  sub_23328DFCC();
  result = sub_23328E17C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2331B5F38(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2331B5C94(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2331B60BC(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2331B61FC(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_23328DFCC();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_23328DFDC();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23328E59C();
  __break(1u);
}

id sub_2331B60BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23328E1FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2331B61FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23328E20C();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_23328DFCC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_2331B6408(void (*a1)(char *), uint64_t a2, _BYTE *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE25E8, &unk_2332980F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  *(&v9 - v6) = *a3;
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_233121E04(v7, &qword_27DDE25E8, &unk_2332980F0);
}

uint64_t sub_2331B64D0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = type metadata accessor for TTSVBVoice(0);
  sub_2331BDBEC(v7 + *(*(v8 - 8) + 72) * a2, v6, type metadata accessor for TTSVBVoice);
}

void sub_2331B65FC(void *a1, __int128 *a2, void *a3)
{
  v6 = a2[5];
  v27[4] = a2[4];
  v28 = v6;
  v29 = a2[6];
  v30 = *(a2 + 14);
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v8 = a2[3];
  v27[2] = a2[2];
  v27[3] = v8;
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_233297B40;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2331527DC();
  *(v9 + 64) = v11;
  *(v9 + 32) = 0x4449656C706D6173;
  *(v9 + 40) = 0xE800000000000000;
  v31 = *a2;
  v12 = v31;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = 0x6563696F76;
  *(v9 + 120) = 0xE500000000000000;
  *(v9 + 176) = type metadata accessor for TTSVBLocalVoiceMO();
  *(v9 + 184) = sub_2331B2AAC(&qword_27DDE29F8, type metadata accessor for TTSVBLocalVoiceMO, MEMORY[0x277D85388]);
  *(v9 + 152) = a1;
  sub_2331B4BD4(&v31, v26);
  v13 = a1;
  v14 = sub_23328DDCC();
  v15 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v25[2] = v27;
  static DSO<>.findOrCreate(in:matching:config:)(a3, v14, sub_2331BC36C, v25, v15, &protocol witness table for TTSVBLocalVoiceSampleMO);
  v17 = v16;
  v18 = sub_23328D95C();
  [v17 setPhrase_];

  v19 = sub_23328D95C();
  [v17 setPhonemes_];

  v20 = sub_23328D95C();
  [v17 setTranscript_];

  v21 = sub_23328D95C();
  [v17 setBookTitle_];

  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v28 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v17 setParagraphIndex_];
  if (*(&v28 + 1) < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(&v28 + 1) > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v17 setSentenceIndex_];
  [v17 setEstimatedDuration_];
  v22 = sub_23328D95C();
  [v17 setLocale_];

  [v17 setVoice_];
  v23 = [v17 sampleID];
  if (v23)
  {
    v24 = v23;
    sub_23328D98C();

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_2331B695C(void *a1, void *a2, unsigned int *a3, void *a4, char *a5, void *a6, NSObject *a7)
{
  v237 = a1;
  v238 = a7;
  v243 = a6;
  v244 = a2;
  v233 = a5;
  v229 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v229);
  v228 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTSVBError(0);
  v222 = *(v11 - 8);
  v223 = v11;
  MEMORY[0x28223BE20](v11);
  *&v211 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v212);
  v220 = &v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v195 - v15;
  v17 = sub_23328D82C();
  v216 = *(v17 - 8);
  v217 = v17;
  MEMORY[0x28223BE20](v17);
  *&v214 = &v195 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v215 = &v195 - v20;
  v262 = sub_23328D6EC();
  v21 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v227 = &v195 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v226 = &v195 - v24;
  MEMORY[0x28223BE20](v25);
  v209 = &v195 - v26;
  MEMORY[0x28223BE20](v27);
  v218 = (&v195 - v28);
  MEMORY[0x28223BE20](v29);
  v213 = &v195 - v30;
  MEMORY[0x28223BE20](v31);
  v239 = &v195 - v32;
  v33 = sub_23328D83C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *a3;
  v39 = *a4;
  v230 = a4[1];
  v231 = v39;
  v40 = *v243;
  v219 = v7;
  v41 = *&v7[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v37 = v41;
  (*(v34 + 104))(v37, *MEMORY[0x277D85200], v33, v35);
  v42 = v41;
  LOBYTE(v41) = sub_23328D85C();
  (*(v34 + 8))(v37, v33);
  if ((v41 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  LODWORD(v232) = v40;
  v210 = v16;
  v43 = sub_23328D9DC();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v195 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D9CC();
  v242 = sub_23328D99C();
  v48 = v47;
  (*(v44 + 8))(v46, v43);
  v243 = v48;
  if (v48 >> 60 == 15)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_23328C8BC();
  swift_allocObject();
  v241 = sub_23328C8AC();
  LODWORD(v253) = *sub_233167A00();
  LODWORD(v245) = v38;
  sub_233156AF4();
  LODWORD(v224) = sub_23328E0EC();
  LODWORD(v253) = *sub_233167A18();
  LODWORD(v245) = v38;
  LODWORD(v225) = sub_23328E0EC();
  v49 = sub_233225514();
  v50 = v21 + 2;
  isa = v21[2].isa;
  v52 = v239;
  v235 = v49;
  v53 = v21;
  v54 = v262;
  v236 = v50;
  v234 = isa;
  (isa)(v239);
  v55 = sub_23328D6CC();
  v56 = sub_23328DE4C();
  v57 = os_log_type_enabled(v55, v56);
  v221 = v53;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v245 = v59;
    *v58 = 136315138;
    *&v253 = 0x206F74207075;
    *(&v253 + 1) = 0xE600000000000000;
    v261 = v238;
    v60 = sub_23328E51C();
    v61 = v52;
    MEMORY[0x23839B7E0](v60);

    v62 = sub_23311A8F4(v253, *(&v253 + 1), &v245);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_233109000, v55, v56, "Writing out metadata.json and %s audio files", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x23839CFD0](v59, -1, -1);
    MEMORY[0x23839CFD0](v58, -1, -1);

    v63 = v53[1].isa;
    v64 = v61;
    v65 = v262;
  }

  else
  {

    v63 = v53[1].isa;
    v64 = v52;
    v65 = v54;
  }

  v239 = v63;
  (v63)(v64, v65);
  v66 = sub_23328CC9C();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v195 - v69;
  *&v245 = *sub_2331DEBE8();
  v253 = 0uLL;
  LOBYTE(v254) = -1;
  v71 = v245;
  v72 = v240;
  _TTSVBFileManager.getOrCreateFile(in:named:problem:)(v244, 0xD000000000000012, 0x80000002332A8B70, &v253, &v195 - v69);
  if (v72)
  {
    v73 = v245;

    sub_23312185C(v242, v243);
    return v73;
  }

  v240 = &v195;

  v74 = sub_233144EEC(0, &qword_27DDE29D8, 0x277CCA9F8);
  v208 = &v195;
  v75 = MEMORY[0x28223BE20](v74);
  v76 = &v195 - v69;
  v207 = v68;
  v77 = *(v67 + 16);
  v77(v76, v70, v66, v75);
  v78 = sub_23318BF18(v76);
  v202 = v67 + 16;
  v203 = v77;
  v204 = v70;
  v205 = v67;
  v206 = v66;
  sub_23328DDFC();
  v80 = swift_allocObject();
  v81 = v80;
  *(v80 + 16) = 0;
  v201 = (v80 + 16);
  v208 = v78;
  if ((v232 & 1) == 0)
  {
    v83 = v78;
    MEMORY[0x28223BE20](v80);
    v84 = v238;
    v85 = v233;
    *(&v195 - 14) = v237;
    *(&v195 - 13) = v85;
    *(&v195 - 12) = &v84->isa;
    *(&v195 - 88) = 0;
    *(&v195 - 10) = v81;
    *(&v195 - 72) = 0;
    *(&v195 - 71) = v86 & 1;
    *(&v195 - 70) = v225 & 1;
    v87 = v242;
    *(&v195 - 8) = v241;
    *(&v195 - 7) = v87;
    v88 = v243;
    *(&v195 - 6) = v243;
    *(&v195 - 5) = v83;
    v89 = v230;
    *(&v195 - 4) = v231;
    *(&v195 - 3) = v89;
    *(&v195 - 2) = v244;
    sub_23328DF5C();
    v200 = v81;
LABEL_47:
    v192 = v204;
    v193 = v205;
    goto LABEL_48;
  }

  v82 = dispatch_semaphore_create(0);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v253);
  v245 = v253;
  LOBYTE(v246) = v254;
  v90 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v237, v233, &v245);
  v232 = v82;
  v200 = v81;
  sub_2331220AC(v245, *(&v245 + 1), v246);
  v91 = swift_allocObject();
  *(v91 + 16) = MEMORY[0x277D84F90];
  v198 = (v91 + 16);
  v212 = swift_allocBox();
  v92 = *(v222 + 56);
  v233 = v93;
  v196 = v92;
  v197 = v222 + 56;
  v92(v93, 1, 1, v223);
  v94 = v213;
  v95 = v262;
  v234(v213, v235, v262);
  v96 = v90;
  v97 = sub_23328D6CC();
  LODWORD(v225) = sub_23328DE1C();
  v98 = os_log_type_enabled(v97, v225);
  v99 = &unk_2789C4000;
  if (v98)
  {
    v224 = v97;
    v100 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    *&v253 = v195;
    v101 = v100;
    *v100 = 136315138;
    v102 = [v96 localeID];
    v199 = v96;

    if (!v102)
    {
LABEL_56:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v103 = sub_23328D98C();
    v105 = v104;

    v106 = sub_23311A8F4(v103, v105, &v253);

    *(v101 + 1) = v106;
    v107 = v224;
    _os_log_impl(&dword_233109000, v224, v225, "Will fetch training script items with localeID=%s scriptType=default (blocking call)", v101, 0xCu);
    v108 = v195;
    __swift_destroy_boxed_opaque_existential_0(v195);
    MEMORY[0x23839CFD0](v108, -1, -1);
    MEMORY[0x23839CFD0](v101, -1, -1);

    (v239)(v94, v262);
    v96 = v199;
    v99 = &unk_2789C4000;
  }

  else
  {

    (v239)(v94, v95);
  }

  v109 = [v96 v99[342]];
  if (!v109)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v110 = v109;
  v111 = v96;
  v112 = sub_23328D98C();
  v224 = v113;
  v225 = v112;

  v114 = swift_allocObject();
  v115 = v212;
  v114[2] = v91;
  v114[3] = v115;
  v116 = v232;
  v114[4] = v111;
  v114[5] = v116;
  v199 = v111;
  v213 = v91;

  v117 = v116;
  TTSVBVoiceBankingManager.queue_fetchTrainingScriptItems(localeID:scriptType:_:)(v225, v224, @"default", sub_2331BB914, v114);

  v118 = v214;
  sub_23328D81C();
  v119 = v215;
  sub_23328D84C();
  v120 = v217;
  v121 = *(v216 + 1);
  v121(v118, v217);
  sub_23328DF2C();
  v121(v119, v120);
  v122 = sub_23328D7BC();
  v123 = v223;
  v124 = v233;
  if (v122)
  {
    v234(v218, v235, v262);
    v125 = sub_23328D6CC();
    v126 = sub_23328DE3C();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_233109000, v125, v126, "Timeout occurred fetching training script items", v127, 2u);
      MEMORY[0x23839CFD0](v127, -1, -1);
    }

    (v239)(v218, v262);
    v128 = v210;
    TTSVBError.init(_:_:_:)(0xD00000000000002FLL, 0x80000002332A8BD0, 0, 0, 0, v210);
    v196(v128, 0, 1, v123);
    swift_beginAccess();
    sub_2331BD410(v128, v124, &qword_27DDE1B38, &unk_2332909A0);
  }

  swift_beginAccess();
  v129 = v220;
  sub_233121D34(v124, v220, &qword_27DDE1B38, &unk_2332909A0);
  if ((*(v222 + 48))(v129, 1, v123) != 1)
  {
    goto LABEL_41;
  }

  v210 = v117;
  sub_233121E04(v129, &qword_27DDE1B38, &unk_2332909A0);
  v130 = v198;
  swift_beginAccess();
  v233 = *v130;
  v129 = *(v233 + 2);
  if (!v129)
  {

LABEL_46:
    v87 = v242;
    v88 = v243;
    goto LABEL_47;
  }

  v131 = v233;

  swift_beginAccess();
  v133 = v262;
  if (!*(v131 + 2))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v185 = v129;
    v186 = v211;
    sub_2331BDDC4(v185, v211, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    sub_2331BDBEC(v186, v187, type metadata accessor for TTSVBError);
    swift_willThrow();

    sub_2331BDC54(v186, type metadata accessor for TTSVBError);

    v73 = v208;
    [v208 closeFile];

    sub_23312185C(v242, v243);

    (*(v205 + 8))(v204, v206);
    return v73;
  }

  v134 = 0;
  v135 = 0;
  v217 = (v205 + 8);
  v218 = v221 + 1;
  v216 = &v129[-1].isa + 7;
  v136 = 32;
  *&v132 = 134218240;
  v214 = v132;
  *&v132 = 136315394;
  v211 = v132;
  while (1)
  {
    v137 = *&v233[v136];
    v138 = *&v233[v136 + 16];
    v139 = *&v233[v136 + 48];
    v255 = *&v233[v136 + 32];
    v256 = v139;
    v253 = v137;
    v254 = v138;
    v140 = *&v233[v136 + 64];
    v141 = *&v233[v136 + 80];
    v142 = *&v233[v136 + 96];
    v260 = *&v233[v136 + 112];
    v258 = v141;
    v259 = v142;
    v257 = v140;
    if (v134 == v238)
    {
      break;
    }

    v222 = v136;
    v223 = v135;
    v232 = v134;
    v143 = v253;
    v144 = sub_2331B4B78(&v253, &v245);
    v145 = MEMORY[0x23839C610](v144);
    v224 = &v195;
    v225 = v145;
    v146 = v207;
    MEMORY[0x28223BE20](v145);
    v219 = ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
    v147 = (&v195 - v219);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
    v149 = v228;
    v150 = &v228[*(v148 + 48)];
    v151 = &v228[*(v148 + 64)];
    v152 = sub_23328CE8C();
    (*(*(v152 - 8) + 16))(v149, v237, v152);
    v220 = *(&v143 + 1);
    v221 = v143;
    *v150 = v143;

    v153 = sub_2331C464C();
    v154 = *(v153 + 1);
    *v151 = *v153;
    *(v151 + 1) = v154;
    swift_storeEnumTagMultiPayload();
    v155 = v154;
    TTSVBPath.url.getter(v147);
    sub_2331BDC54(v149, type metadata accessor for TTSVBPath);
    v156 = [objc_opt_self() defaultManager];
    sub_23328CC6C();
    v157 = sub_23328D95C();

    LODWORD(v154) = [v156 fileExistsAtPath_];

    if (v154)
    {
      v219 = v147;
      v117 = v225;
      v249 = v257;
      v250 = v258;
      v251 = v259;
      v252 = v260;
      v245 = v253;
      v246 = v254;
      v247 = v255;
      v248 = v256;
      sub_2331BB920();
      v158 = sub_23328C89C();
      v160 = v159;
      v161 = sub_23328CCBC();
      v162 = v208;
      [v208 writeData_];

      v163 = sub_23328CCBC();
      [v162 writeData_];

      sub_233121870(v158, v160);
      v133 = v262;
      v234(v226, v235, v262);

      v129 = sub_23328D6CC();
      v164 = sub_23328DE4C();
      v165 = os_log_type_enabled(v129, v164);
      v166 = v244;
      if (v165)
      {
        v167 = swift_slowAlloc();
        *v167 = v214;
        if (__OFADD__(v232, 1))
        {
          goto LABEL_53;
        }

        *(v167 + 4) = &v232->isa + 1;
        *(v167 + 12) = 2048;
        *(v167 + 14) = v238;
        v168 = v167;

        _os_log_impl(&dword_233109000, v129, v164, "Writing out audio sample %ld of %ld", v168, 0x16u);
        MEMORY[0x23839CFD0](v168, -1, -1);

        v133 = v262;
      }

      else
      {
      }

      (v239)(v226, v133);
      v184 = v219;
      sub_23318BAA4(v219, v221, v220, v231, v230, v166);
      sub_2331B4CC8(&v253);
      (*v217)(v184, v206);
      v134 = (&v232->isa + 1);
      if (__OFADD__(v232, 1))
      {
        goto LABEL_52;
      }

      *v201 = v134;
    }

    else
    {
      v169 = (v234)(v227, v235, v262);
      v215 = &v195;
      v170 = MEMORY[0x28223BE20](v169);
      v171 = &v195 - v219;
      v172 = v206;
      v203(&v195 - v219, v147, v206, v170);
      sub_2331B4B78(&v253, &v245);
      v173 = sub_23328D6CC();
      v174 = sub_23328DE3C();
      sub_2331B4CC8(&v253);
      if (!os_log_type_enabled(v173, v174))
      {

        sub_2331B4CC8(&v253);
        v129 = *v217;
        (*v217)(v171, v172);
        v182 = v262;
        (v239)(v227, v262);
        (v129)(v147, v172);
        v133 = v182;
        v134 = v232;
        v183 = v223;
        v117 = v225;
        goto LABEL_38;
      }

      v175 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *&v245 = v219;
      *v175 = v211;
      *(v175 + 4) = sub_23311A8F4(v221, v220, &v245);
      *(v175 + 12) = 2080;
      v221 = v173;
      LODWORD(v220) = v174;
      v176 = sub_23328CC6C();
      v178 = v177;
      v179 = *v217;
      (*v217)(v171, v206);
      v180 = sub_23311A8F4(v176, v178, &v245);

      *(v175 + 14) = v180;
      v181 = v221;
      _os_log_impl(&dword_233109000, v221, v220, "Skipping sample %s. No audio data at path: %s", v175, 0x16u);
      v129 = v219;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v129, -1, -1);
      MEMORY[0x23839CFD0](v175, -1, -1);

      sub_2331B4CC8(&v253);
      v133 = v262;
      (v239)(v227, v262);
      (v179)(v147, v206);
      v117 = v225;
      v134 = v232;
    }

    v183 = v223;
LABEL_38:
    objc_autoreleasePoolPop(v117);
    if (v216 == v183)
    {

      goto LABEL_46;
    }

    v135 = (v183 + 1);
    v136 = v222 + 120;
    if (v135 >= *(v233 + 2))
    {
      goto LABEL_40;
    }
  }

  v234(v209, v235, v133);
  v188 = sub_23328D6CC();
  v189 = sub_23328DE4C();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    *v190 = 134217984;
    *(v190 + 4) = v238;
    _os_log_impl(&dword_233109000, v188, v189, "Did write out required number of audio samples (%ld). Exiting write-out routine", v190, 0xCu);
    MEMORY[0x23839CFD0](v190, -1, -1);
    v191 = v199;
  }

  else
  {
    v191 = v188;
    v188 = v199;
  }

  v87 = v242;
  v88 = v243;
  v193 = v205;

  (v239)(v209, v262);

  v192 = v204;
LABEL_48:
  swift_beginAccess();
  v73 = v200[2];

  v194 = v208;
  [v208 closeFile];

  sub_23312185C(v87, v88);

  (*(v193 + 8))(v192, v206);
  return v73;
}

void sub_2331B8434(NSObject *a1, char *a2, double a3)
{
  v106 = a2;
  v103 = sub_23328D6EC();
  v5 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v89 - v8;
  v9 = sub_23328CC9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v11;
  v109 = (&v89 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v16 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
  v107 = a1;
  TTSVBCommonVoiceSampleMO.url.getter(v15, v16, &v89 - v14);
  v17 = v10;
  v18 = *(v10 + 48);
  if (v18(&v89 - v14, 1, v9) == 1)
  {
    sub_233121E04(&v89 - v14, &qword_27DDE19A0, &unk_233290360);
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000011, 0x80000002332A8CA0, 0, 0, 0, v19);
    swift_willThrow();
    return;
  }

  v100 = v5;
  v104 = v17;
  v20 = *(v17 + 32);
  v20(v109, &v89 - v14, v9);
  v21 = [v107 setRecordingDuration:a3];
  MEMORY[0x28223BE20](v21);
  v22 = &v89 - v12;
  v99 = &v89;
  MEMORY[0x28223BE20](v23);
  sub_233121D34(v106, &v89 - v14, &qword_27DDE19A0, &unk_233290360);
  if (v18(&v89 - v14, 1, v9) == 1)
  {
    v24 = v104;
    sub_233121E04(&v89 - v14, &qword_27DDE19A0, &unk_233290360);
    v113 = *sub_2331DEBE8();
    v110 = 0;
    v111 = 0;
    v112 = -1;
    v25 = v113;
    v26 = v109;
    _TTSVBFileManager.removeItem(_:problem:)(v109, &v110);

    (*(v24 + 8))(v26, v9);
    return;
  }

  v98 = &v89;
  v20(v22, &v89 - v14, v9);
  v27 = sub_233225314();
  v28 = *(v100 + 16);
  v30 = v102;
  v29 = v103;
  v95 = v27;
  v96 = v100 + 16;
  v94 = v28;
  v31 = (v28)(v102);
  v99 = &v89;
  v32 = v108;
  v33 = MEMORY[0x28223BE20](v31);
  v34 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v104 + 16;
  v36 = *(v104 + 16);
  v106 = v22;
  v37 = v36(v34, v22, v9, v33);
  v97 = &v89;
  v38 = MEMORY[0x28223BE20](v37);
  v39 = v109;
  v93 = v35;
  v92 = v36;
  v36(v34, v109, v9, v38);
  v40 = v107;
  v41 = sub_23328D6CC();
  v42 = sub_23328DE2C();
  v43 = os_log_type_enabled(v41, v42);
  v107 = v40;
  if (v43)
  {
    v90 = v42;
    v91 = v41;
    v44 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v110 = v89;
    *v44 = 136315650;
    v45 = [v40 sampleID];

    if (!v45)
    {
      __break(1u);
      goto LABEL_16;
    }

    v46 = sub_23328D98C();
    v48 = v47;

    v49 = sub_23311A8F4(v46, v48, &v110);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v50 = sub_23328CC6C();
    v52 = v51;
    v53 = *(v104 + 8);
    v53(v34, v9);
    v54 = sub_23311A8F4(v50, v52, &v110);

    *(v44 + 14) = v54;
    *(v44 + 22) = 2080;
    v55 = sub_23328CC6C();
    v57 = v56;
    v53(v34, v9);
    v58 = sub_23311A8F4(v55, v57, &v110);

    *(v44 + 24) = v58;
    v59 = v91;
    _os_log_impl(&dword_233109000, v91, v90, "Will copy audio file for sampleID=%s from=%s to=%s", v44, 0x20u);
    v60 = v89;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v60, -1, -1);
    MEMORY[0x23839CFD0](v44, -1, -1);

    v61 = *(v100 + 8);
    v62 = v103;
    v61(v102, v103);
    v39 = v109;
  }

  else
  {

    v63 = v30;
    v53 = *(v104 + 8);
    v53(v34, v9);
    v53(v34, v9);
    v61 = *(v100 + 8);
    v61(v63, v29);
    v62 = v29;
  }

  v113 = *sub_2331DEBE8();
  v110 = 0;
  v111 = 0;
  v112 = -1;
  v64 = v113;
  v66 = v105;
  v65 = v106;
  _TTSVBFileManager.copyItem(_:to:problem:)(v106, v39, &v110);
  v67 = v101;
  if (v66)
  {

    v53(v65, v9);
    v53(v39, v9);
    return;
  }

  v68 = v94(v67, v95, v62);
  v105 = &v89;
  v69 = MEMORY[0x28223BE20](v68);
  v71 = &v89 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92(v71, v39, v9, v69);
  v72 = v39;
  v73 = v9;
  v74 = v107;
  v75 = sub_23328D6CC();
  LODWORD(v108) = sub_23328DE2C();
  if (!os_log_type_enabled(v75, v108))
  {

    v53(v71, v73);
    v61(v67, v103);
    v53(v106, v73);
    v53(v72, v73);
    return;
  }

  v107 = v75;
  v76 = v73;
  v77 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  v110 = v102;
  *v77 = 136315394;
  v78 = [v74 sampleID];

  if (v78)
  {
    v79 = sub_23328D98C();
    v81 = v80;

    v82 = sub_23311A8F4(v79, v81, &v110);

    *(v77 + 4) = v82;
    *(v77 + 12) = 2080;
    v83 = sub_23328CC6C();
    v85 = v84;
    v53(v71, v76);
    v86 = sub_23311A8F4(v83, v85, &v110);

    *(v77 + 14) = v86;
    v87 = v107;
    _os_log_impl(&dword_233109000, v107, v108, "Will create audio future for sampleID=%s file=%s", v77, 0x16u);
    v88 = v102;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v88, -1, -1);
    MEMORY[0x23839CFD0](v77, -1, -1);

    v61(v101, v103);
    v53(v106, v76);
    v53(v109, v76);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_2331B8F28(uint64_t *a1, void (*a2)(char *), void (*a3)(char *), uint64_t a4)
{
  v34 = a4;
  v35 = a1;
  v37 = a2;
  v38 = a3;
  v33 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v31 - v9;
  v10 = sub_23328CC9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  sub_233121D34(v35, &v31 - v16, &qword_27DDE19A0, &unk_233290360);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_233121E04(v17, &qword_27DDE19A0, &unk_233290360);
    v39 = xmmword_233299210;
    v40 = 3;
    swift_storeEnumTagMultiPayload();
    TTSVBError.init(_:_:_:)(&v39, v5, 0, v7);
    swift_storeEnumTagMultiPayload();
    v37(v7);
    return sub_233121E04(v7, &unk_27DDE25D0, &unk_233290330);
  }

  else
  {
    v19 = *(v11 + 32);
    v19(&v31 - v13, v17, v10);
    v20 = sub_23328DCBC();
    v21 = (*(*(v20 - 8) + 56))(v36, 1, 1, v20);
    v35 = &v31;
    v22 = MEMORY[0x28223BE20](v21);
    v23 = &v31 - v13;
    (*(v11 + 16))(&v31 - v13, &v31 - v13, v10, v22);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v19((v26 + v24), v23, v10);
    v27 = (v26 + v25);
    v28 = v34;
    *v27 = sub_2331BBAB4;
    v27[1] = v28;
    v29 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
    v30 = v38;
    *v29 = v37;
    v29[1] = v30;

    sub_233193E34(0, 0, v36, &unk_233299AF0, v26);

    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_2331B9374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29B0, &qword_233299AC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
    v7 = sub_23328E35C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_233121D34(v9, v5, &qword_27DDE29B0, &qword_233299AC8);
      result = sub_2331B4340(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTSVBVoice(0);
      result = sub_2331BDDC4(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TTSVBVoice);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_2331B9558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_233121D34(v4, &v13, &qword_27DDE2290, &qword_233297600);
      v5 = v13;
      v6 = v14;
      result = sub_2331B42BC(v13, v14, sub_2331443DC);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_233145134(&v15, (v3[7] + 32 * result));
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

void sub_2331B969C()
{
  if ((static TTSVBPreferences.hasPerformVoiceDatastoreMigrationV1.getter() & 1) == 0)
  {
    sub_2331A531C();
    sub_2331A5704();
    static TTSVBPreferences.hasPerformVoiceDatastoreMigrationV1.setter(1);
  }
}

uint64_t sub_2331B9710(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_2331B9724()
{
  result = qword_27DDE2888;
  if (!qword_27DDE2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2888);
  }

  return result;
}

void sub_2331B9810(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2331B9BEC()
{
  sub_23328E24C();

  v0 = type metadata accessor for TTSVBCloudVoiceMO();
  v1 = TTSVBCommonVoiceMO.displayName.getter(v0, &protocol witness table for TTSVBCloudVoiceMO);
  MEMORY[0x23839B7E0](v1);

  return 0xD000000000000028;
}

uint64_t sub_2331B9C7C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  if ((*v1 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332A8340);
  return 0x20676E69646441;
}

uint64_t sub_2331B9D7C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  if ((*v1 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332A8320);
  return 0x20676E69646441;
}

uint64_t sub_2331B9E7C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233127268;

  return sub_2331ACEAC(v3, v4, v5, v2);
}

uint64_t sub_2331B9F10(uint64_t a1)
{
  v3 = *(sub_23328CE8C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2331AC634(a1, v4);
}

void sub_2331B9F80(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_23328E19C();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_23328E22C();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_23328E19C();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v41 = v4;
    while (1)
    {
      v14 = MEMORY[0x23839BFC0](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = sub_23328DFCC();
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(*(v6 + 48) + 8 * v19);
          v25 = sub_23328DFDC();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v12 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v13 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v20) = v22 | v21;
        *(*(v6 + 48) + 8 * v19) = v16;
        v26 = *(v6 + 16);
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v42)
    {
      v29 = *(v4 + 32 + 8 * v28);
      v30 = sub_23328DFCC();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v12 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        a4(0);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = sub_23328DFDC();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v12 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v15 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v28 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2331BA284()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332A81D0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  return 0;
}

uint64_t sub_2331BA35C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233127268;

  return sub_2331B2F40(a1, v4);
}

uint64_t sub_2331BA414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233126374;

  return sub_2331B2F40(a1, v4);
}

unint64_t sub_2331BA4D4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  MEMORY[0x23839B7E0](*v1, v1[1]);
  return 0xD000000000000023;
}

unint64_t sub_2331BA544()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  MEMORY[0x23839B7E0](*v1, v1[1]);
  return 0xD000000000000027;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2331BA638()
{
  v2 = *(sub_23328CE8C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 32);
  v6 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v0 + v4);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_233127268;

  return sub_2331A0B2C(v10, v11, v12, v5, v0 + v3, v9, v7, v8);
}

uint64_t objectdestroy_136Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 50) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 1) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_2331BA92C()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 50) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v5 = (v3 + *(v4 + 80) + 1) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23319624C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49), v0 + v2, *(v0 + v3), v0 + v5, *(v0 + v6), *(v0 + v6 + 8));
}

uint64_t objectdestroy_171Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

void sub_2331BAB74()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  sub_23319F77C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_2331BAC10()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_23319DCBC(v2, v3);
}

uint64_t sub_2331BACA4()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000024, 0x80000002332A86D0);
  v0 = type metadata accessor for TTSVBLocalVoiceMO();
  v1 = TTSVBCommonVoiceMO.displayName.getter(v0, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332A8700);
  return 0;
}

uint64_t sub_2331BAD6C()
{
  sub_23328E24C();

  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332A8670);
  return 0x20646E756F46;
}

unint64_t sub_2331BAE18()
{
  sub_23328E24C();

  v0 = type metadata accessor for TTSVBLocalVoiceMO();
  v1 = TTSVBCommonVoiceMO.displayName.getter(v0, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_2331BAEB8()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000031, 0x80000002332A85B0);
  sub_23328CC9C();
  sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_2331BAF84()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000037, 0x80000002332A87D0);
  type metadata accessor for TTSVBError(0);
  sub_2331B2AAC(&qword_27DDE29C0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_2331BB068()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();

  MEMORY[0x23839B7E0](v1, v2);
  return 0xD00000000000002BLL;
}

unsigned __int8 *sub_2331BB0E4(uint64_t a1)
{
  v3 = *(sub_23328CE8C() - 8);
  v4 = (*(v3 + 80) + 50) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2331964C8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 49), (v1 + v4), *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + v8 + 8));
}

unint64_t sub_2331BB220()
{
  result = qword_27DDE29D0;
  if (!qword_27DDE29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE29D0);
  }

  return result;
}

uint64_t sub_2331BB2A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x2821F96F8](a1);
  }

  return a1;
}

uint64_t sub_2331BB2B0()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000025, 0x80000002332A8B40);
  type metadata accessor for TTSVBVoiceModel(0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8A60);
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  return 0;
}

uint64_t sub_2331BB3CC()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332A8B00);
  type metadata accessor for TTSVBVoiceModel(0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  return 0;
}

uint64_t sub_2331BB494(uint64_t a1, void *a2)
{
  v4 = *(type metadata accessor for TTSVBVoiceModel(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = (v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_23319A4B4(a2, (v2 + v5), v7, v9, v10);
}

uint64_t sub_2331BB540()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000049, 0x80000002332A8A10);
  type metadata accessor for TTSVBVoiceModel(0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8A60);
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](0xD000000000000018, 0x80000002332A8A80);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  return 0;
}

unint64_t sub_2331BB6B4()
{
  sub_23328E24C();

  type metadata accessor for TTSVBVoiceModel(0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  return 0xD000000000000026;
}

unint64_t sub_2331BB778()
{
  sub_23328E24C();

  type metadata accessor for TTSVBVoiceModel(0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](8238, 0xE200000000000000);
  type metadata accessor for TTSVBError(0);
  sub_2331B2AAC(&qword_27DDE29C0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  return 0xD000000000000029;
}

uint64_t sub_2331BB8B0()
{
  v1 = *(type metadata accessor for TTSVBError(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_23319B228(v2, v3, v4);
}

unint64_t sub_2331BB920()
{
  result = qword_27DDE29E0;
  if (!qword_27DDE29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE29E0);
  }

  return result;
}

void sub_2331BB9AC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_233297630;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2331527DC();
  *(v5 + 32) = 1701667182;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = v4;
  *(v5 + 80) = v3;

  v8 = sub_23328DDCC();
  [a1 setPredicate_];
}

uint64_t sub_2331BBACC()
{
  v2 = *(sub_23328CC9C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_233127268;

  return sub_233193A20(v11, v12, v13, v0 + v3, v7, v8, v9, v10);
}

uint64_t objectdestroy_410Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = (((((((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8);
  v11 = *(v10 + 80);
  v12 = (v11 + v9 + 16) & ~v11;
  v18 = *(v10 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v8, 1, v13))
  {
    (*(v14 + 8))(v0 + v8, v13);
  }

  v15 = sub_23328CE1C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v12, 1, v15))
  {
    (*(v16 + 8))(v0 + v12, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v18, v3 | v7 | v11 | 7);
}

void sub_2331BBF24(double a1)
{
  v3 = *(sub_23328CE8C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8);
  sub_233193638(v1[2], v1[3], v1[4], v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v11), *(v1 + v11 + 8), a1, *(v1 + v9), *(v1 + v9 + 4), *(v1 + v10), *(v1 + v10 + 4), v1 + ((*(v12 + 80) + v11 + 16) & ~*(v12 + 80)));
}

uint64_t objectdestroy_413Tm()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2331BC1CC()
{
  v2 = *(sub_23328CC9C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_233126374;

  return sub_233193A20(v11, v12, v13, v0 + v3, v7, v8, v9, v10);
}

uint64_t sub_2331BC314(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23328E54C() & 1;
  }
}

void sub_2331BC36C(void *a1)
{
  v2 = sub_23328D95C();
  [a1 setSampleID_];
}

void sub_2331BC3CC(void *a1@<X8>)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v15);
  v13 = v15;
  v14 = v16;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v5, v4, &v13);
  sub_2331220AC(v13, *(&v13 + 1), v14);
  if (!v2)
  {
    sub_2331B65FC(v7, v6, v4);
    v9 = v8;
    v11 = v10;
    NSManagedObjectContext.trySave()();
    if (v12)
    {
    }

    else
    {

      *a1 = v9;
      a1[1] = v11;
    }
  }
}

uint64_t sub_2331BC4B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002DLL, 0x80000002332A8D10);
  MEMORY[0x23839B7E0](v1, v2);
  MEMORY[0x23839B7E0](0x656C61636F6C2820, 0xEA0000000000203ALL);
  MEMORY[0x23839B7E0](v3, v4);
  MEMORY[0x23839B7E0](41, 0xE100000000000000);
  return 0;
}

void sub_2331BC5B0(void *a1)
{
  v2 = sub_23328D95C();
  [a1 setName_];

  v3 = sub_23328CE4C();
  [a1 setVoiceID_];

  v4 = sub_23328D95C();
  [a1 setLocaleID_];
}

uint64_t sub_2331BC714()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v13);
  v11 = v13;
  v12 = v14;
  v5 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v2, v4, &v11);
  result = sub_2331220AC(v11, *(&v11 + 1), v12);
  if (!v1)
  {
    v7 = [v5 name];

    if (v7)
    {
      v8 = sub_23328D98C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *v3 = v8;
    v3[1] = v10;
  }

  return result;
}

uint64_t sub_2331BC7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_126Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);

  a2(*(v2 + 32));
  (*(v5 + 8))(v2 + v7, v4);

  return MEMORY[0x2821FE8E8](v2, v7 + v8, v6 | 7);
}

uint64_t sub_2331BC928(uint64_t a1)
{
  v3 = *(sub_23328CC9C() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_23318F40C(a1, v4, v5, v6, v7);
}

uint64_t sub_2331BC9A0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_23328CC9C() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23318F8A4(v0 + v2, v5, v6, v7);
}

void sub_2331BCB00(void *a1)
{
  v3 = *(v1 + 16);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_233297630;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2331527DC();
  *(v4 + 32) = 0x6563696F76;
  *(v4 + 40) = 0xE500000000000000;
  *(v4 + 96) = type metadata accessor for TTSVBLocalVoiceMO();
  *(v4 + 104) = sub_2331B2AAC(&qword_27DDE29F8, type metadata accessor for TTSVBLocalVoiceMO, MEMORY[0x277D85388]);
  *(v4 + 72) = v3;
  v5 = v3;
  v6 = sub_23328DDCC();
  [a1 setPredicate_];
}

uint64_t objectdestroy_307Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2331BCD48(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_2331BCE7C()
{
  sub_23328E24C();

  v0 = type metadata accessor for TTSVBLocalVoiceMO();
  v1 = TTSVBCommonVoiceMO.displayName.getter(v0, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v1);

  return 0xD000000000000028;
}

uint64_t sub_2331BCF0C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  if ((*v1 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332A8DF0);
  return 0x20676E69646441;
}

uint64_t sub_2331BD00C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  if ((*v1 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332A8DD0);
  return 0x20676E69646441;
}

unint64_t sub_2331BD10C()
{
  sub_23328E24C();

  sub_23328CC9C();
  sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0xD00000000000002FLL;
}

unint64_t sub_2331BD1D4()
{
  sub_23328E24C();

  v0 = type metadata accessor for TTSVBLocalVoiceMO();
  v1 = TTSVBCommonVoiceMO.displayName.getter(v0, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](0x697070696B53202ELL, 0xEB000000002E676ELL);
  return 0xD000000000000024;
}

void sub_2331BD288(void *a1)
{
  v2 = sub_23328CE4C();
  [a1 setVoiceID_];

  v3 = sub_23328D95C();
  [a1 setName_];
}

unint64_t sub_2331BD338()
{
  sub_23328E24C();

  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  return 0xD000000000000030;
}

uint64_t sub_2331BD410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2331BD498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();

  MEMORY[0x23839B7E0](v1, v2);
  return 0xD00000000000002ELL;
}

unint64_t sub_2331BD514()
{
  sub_23328E24C();

  v0 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0x61636F6C206F7420, 0xED00003D4C52556CLL);
  v1 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v1);

  return 0xD000000000000020;
}

uint64_t sub_2331BD5E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002DLL, 0x80000002332A9080);
  MEMORY[0x23839B7E0](v1, v2);
  MEMORY[0x23839B7E0](0x6E776F646E75202ELL, 0xEF3D646564616F6CLL);
  swift_beginAccess();
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0x3D64656E6F6C6320, 0xE800000000000000);
  swift_beginAccess();
  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0x6E69747369786520, 0xEF3D6C6175714567);
  swift_beginAccess();
  v5 = sub_23328E51C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A90B0);
  swift_beginAccess();
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  return 0;
}

uint64_t sub_2331BD804()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000004BLL, 0x80000002332A9030);
  v0 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0x61636F6C206F7420, 0xED00003D4C52556CLL);
  v1 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v1);

  return 0;
}

unint64_t sub_2331BD8F4()
{
  sub_23328E24C();

  v0 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v0);

  return 0xD00000000000002DLL;
}

uint64_t sub_2331BD974()
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332A91C0);
  v0 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v0);

  MEMORY[0x23839B7E0](0x6E776F646E75202ELL, 0xEF3D646564616F6CLL);
  swift_beginAccess();
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](0x3D64656E6F6C6320, 0xE800000000000000);
  swift_beginAccess();
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0x6E69747369786520, 0xEF3D6C6175714567);
  swift_beginAccess();
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A90B0);
  swift_beginAccess();
  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  return 0;
}

uint64_t sub_2331BDBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331BDC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331BDCD4(id *a1)
{
  v1 = [*a1 taskID];
  v2 = sub_23328D98C();
  v4 = v3;

  type metadata accessor for TTSVBVoiceModel(0);
  if (v2 == sub_23328CE3C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23328E54C();
  }

  return v7 & 1;
}

uint64_t sub_2331BDDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331BDE90(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_148Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t objectdestroy_436Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_269Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_610Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331220AC(*v5, *(v5 + 8), *(v5 + 16));
    v6 = type metadata accessor for TTSVBError(0);
    v7 = v5 + *(v6 + 20);
    type metadata accessor for TTSVBError.Reason(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 7u:
      case 0x18u:
      case 0x1Cu:
      case 0x1Eu:
      case 0x22u:
      case 0x23u:
        goto LABEL_5;
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x1Au:
        v8 = sub_23328CC9C();
        goto LABEL_4;
      case 0xCu:
        v12 = sub_23328CC9C();
        (*(*(v12 - 8) + 8))(v7, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
        goto LABEL_5;
      case 0xEu:
      case 0xFu:
        v9 = sub_23328CC9C();
        v10 = *(*(v9 - 8) + 8);
        v10(v7, v9);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
        v10(v7 + *(v11 + 48), v9);
        break;
      case 0x17u:
      case 0x19u:
      case 0x1Du:
      case 0x1Fu:
        v8 = sub_23328CE8C();
LABEL_4:
        (*(*(v8 - 8) + 8))(v7, v8);
        break;
      case 0x21u:

LABEL_5:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2331BE6E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08A28);
  __swift_project_value_buffer(v3, qword_27DE08A28);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_2331BE860()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 512);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2331BEFE4;

  return v6();
}

unint64_t sub_2331BE9E0()
{
  result = qword_27DDE2A90;
  if (!qword_27DDE2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2A90);
  }

  return result;
}

unint64_t sub_2331BEA38()
{
  result = qword_27DDE2A98;
  if (!qword_27DDE2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2A98);
  }

  return result;
}

uint64_t sub_2331BEAA8()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 512);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2331BEC24;

  return v6();
}

uint64_t sub_2331BEC24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2331BED3C()
{
  result = qword_27DDE2AA0;
  if (!qword_27DDE2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AA0);
  }

  return result;
}

uint64_t sub_2331BED90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_2331BE9E0();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_2331BEE40()
{
  result = qword_27DDE2AA8;
  if (!qword_27DDE2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AA8);
  }

  return result;
}

uint64_t sub_2331BEE94@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF56B0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A28);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_2331BEF58()
{
  result = qword_27DDE2AB0;
  if (!qword_27DDE2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AB0);
  }

  return result;
}

unint64_t sub_2331BEFE8()
{
  result = sub_2331C00A4(MEMORY[0x277D84F90]);
  qword_27DDF59C8 = result;
  return result;
}

uint64_t static TTSVBLocaleInfo.availableTrainingLocales.getter()
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTSVBLocaleInfo.availableTrainingLocales.setter(uint64_t a1)
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DDF59C8 = a1;
}

uint64_t (*static TTSVBLocaleInfo.availableTrainingLocales.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2331BF190@<X0>(void *a1@<X8>)
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27DDF59C8;
}

uint64_t sub_2331BF210(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27DDF59C0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DDF59C8 = v1;
}

void __swiftcall TTSVBLocaleInfo.init(siriTrainingLocaleID:asrLocaleID:ttsVoiceLocaleID:)(TextToSpeechVoiceBankingSupport::TTSVBLocaleInfo *__return_ptr retstr, Swift::String siriTrainingLocaleID, Swift::String_optional asrLocaleID, Swift::String_optional ttsVoiceLocaleID)
{
  retstr->siriTrainingLocaleID = siriTrainingLocaleID;
  retstr->_asrLocaleID = asrLocaleID;
  retstr->_ttsVoiceLocaleID = ttsVoiceLocaleID;
}

uint64_t TTSVBLocaleInfo.siriTrainingLocaleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTSVBLocaleInfo.asrLocaleID.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x4E432D687ALL;
    if ((sub_23328DABC() & 1) == 0 && (sub_23328DABC() & 1) == 0)
    {
      v1 = 0x53552D6E65;
    }
  }

  return v1;
}

uint64_t TTSVBLocaleInfo.ttsVoiceLocaleID.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0x4E432D6E6D63;
    if ((sub_23328DABC() & 1) == 0 && (sub_23328DABC() & 1) == 0)
    {
      v1 = 0x53552D6E65;
    }
  }

  return v1;
}

uint64_t TTSVBLocaleInfo.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1 == 0x4E432D6E6D63 && v2 == 0xE600000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {
    v4 = sub_23328D95C();
    v5 = TTSVBSupportLocString(v4);

    v6 = sub_23328D98C();
  }

  else
  {
    v7 = sub_23328CF0C();
    v8 = *(v7 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_23328CE9C();
    v6 = sub_23328CEBC();
    v12 = v11;
    (*(v8 + 8))(v10, v7);
    if (!v12)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t TTSVBLocaleInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

unint64_t sub_2331BF61C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61636F4C7273615FLL;
  }
}

uint64_t sub_2331BF684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2331C0584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2331BF6AC(uint64_t a1)
{
  v2 = sub_2331C02B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331BF6E8(uint64_t a1)
{
  v2 = sub_2331C02B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBLocaleInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AB8, &qword_233299D00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C02B0();
  sub_23328E69C();
  v14 = 0;
  v9 = v11[5];
  sub_23328E46C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_23328E46C();
  v12 = 2;
  sub_23328E48C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TTSVBLocaleInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_23328E63C();
    sub_23328DA3C();
    if (v2)
    {
LABEL_3:
      sub_23328E63C();
      sub_23328DA3C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_23328E63C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_23328E63C();
LABEL_6:

  return sub_23328DA3C();
}

uint64_t TTSVBLocaleInfo.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_23328E61C();
  if (!v1)
  {
    sub_23328E63C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23328E63C();
    goto LABEL_6;
  }

  sub_23328E63C();
  sub_23328DA3C();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23328E63C();
  sub_23328DA3C();
LABEL_6:
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t TTSVBLocaleInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AC0, &qword_233299D08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C02B0();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_23328E3AC();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_23328E3AC();
  v21 = v12;
  v23 = 2;
  v13 = sub_23328E3CC();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2331BFCEC(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_23328E63C();
    sub_23328DA3C();
    if (v2)
    {
LABEL_3:
      sub_23328E63C();
      sub_23328DA3C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_23328E63C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_23328E63C();
LABEL_6:

  return sub_23328DA3C();
}

uint64_t sub_2331BFDB0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_23328E61C();
  if (!v2)
  {
    sub_23328E63C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23328E63C();
    goto LABEL_6;
  }

  sub_23328E63C();
  sub_23328DA3C();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23328E63C();
  sub_23328DA3C();
LABEL_6:
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2331BFEA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

unint64_t sub_2331BFF0C(uint64_t a1)
{
  sub_23328D98C();
  sub_23328E61C();
  sub_23328DA3C();
  v2 = sub_23328E66C();

  return sub_2331BFFA0(a1, v2);
}

unint64_t sub_2331BFFA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23328D98C();
      v8 = v7;
      if (v6 == sub_23328D98C() && v8 == v9)
      {
        break;
      }

      v11 = sub_23328E54C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2331C00A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AD8, &qword_233299F68);
    v3 = sub_23328E35C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2331BFF0C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

uint64_t _s31TextToSpeechVoiceBankingSupport15TTSVBLocaleInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_23328E54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v4 == v9 && v6 == v11 || (sub_23328E54C() & 1) != 0))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_13:
  if (v5 == v10 && v7 == v12)
  {
    return 1;
  }

  return sub_23328E54C();
}

unint64_t sub_2331C02B0()
{
  result = qword_27DDF59D0[0];
  if (!qword_27DDF59D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF59D0);
  }

  return result;
}

unint64_t sub_2331C0308()
{
  result = qword_27DDE2AC8;
  if (!qword_27DDE2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AC8);
  }

  return result;
}

unint64_t sub_2331C0360()
{
  result = qword_27DDE2AD0;
  if (!qword_27DDE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AD0);
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

uint64_t sub_2331C03C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2331C0410(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_2331C0480()
{
  result = qword_27DDF5D60[0];
  if (!qword_27DDF5D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF5D60);
  }

  return result;
}

unint64_t sub_2331C04D8()
{
  result = qword_27DDF5E70;
  if (!qword_27DDF5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF5E70);
  }

  return result;
}

unint64_t sub_2331C0530()
{
  result = qword_27DDF5E78[0];
  if (!qword_27DDF5E78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF5E78);
  }

  return result;
}

uint64_t sub_2331C0584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F4C7273615FLL && a2 == 0xEC0000004449656CLL;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002332A92B0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002332A92D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

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

void static TTSVBAnalytics.didRequestVoiceTraining(scriptType:trainingLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23328D95C();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2331C07F0;
  *(v10 + 24) = v9;
  v12[4] = sub_2331C08FC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2331C0924;
  v12[3] = &block_descriptor_2;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

unint64_t sub_2331C07F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297630;
  *(inited + 32) = 0x7954747069726373;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_23328D95C();
  strcpy((inited + 56), "trainingLocale");
  *(inited + 71) = -18;
  *(inited + 72) = sub_23328D95C();
  v1 = sub_2331C13C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  swift_arrayDestroy();
  return v1;
}

id sub_2331C0924(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2331C1580();
    v4 = sub_23328D87C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static TTSVBAnalytics.trainingEventOccurred(eventName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328D95C();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2331C0AF0;
  *(v6 + 24) = v5;
  v8[4] = sub_2331C15EC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2331C0924;
  v8[3] = &block_descriptor_13_0;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

void static TTSVBAnalytics.modelTrained(version:duration:trainingLocaleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_23328D95C();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a5;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2331C0C68;
  *(v12 + 24) = v11;
  v14[4] = sub_2331C15EC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2331C0924;
  v14[3] = &block_descriptor_23;
  v13 = _Block_copy(v14);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

unint64_t sub_2331C0C68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233290950;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_23328D95C();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000002332A9440;
  *(inited + 72) = sub_23328DCCC();
  strcpy((inited + 80), "trainingLocale");
  *(inited + 95) = -18;
  *(inited + 96) = sub_23328D95C();
  v1 = sub_2331C13C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  swift_arrayDestroy();
  return v1;
}

void static TTSVBAnalytics.sampleCaptured(spl:splThreshold:snr:snrThreshold:userScore:userScoreThreshold:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (a1 < -32768)
  {
    __break(1u);
  }

  else if (a1 < 0x8000)
  {
    static TTSVBVoiceSampleTrainingValidity.evaluate(userScore:spl:splThreshold:snr:snrThreshold:)(a1, v17, a3, a4, a5, a6);
    v12 = v17[0];
    v13 = sub_23328D95C();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 20) = a4;
    *(v14 + 24) = a5;
    *(v14 + 28) = a6;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 48) = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2331C0F20;
    *(v15 + 24) = v14;
    v17[4] = sub_2331C15EC;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_2331C0924;
    v17[3] = &block_descriptor_33;
    v16 = _Block_copy(v17);

    AnalyticsSendEventLazy();
    _Block_release(v16);

    return;
  }

  __break(1u);
}

unint64_t sub_2331C0F20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233299F70;
  *(inited + 32) = 7106675;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_23328DCEC();
  strcpy((inited + 56), "splThreshold");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_23328DCEC();
  *(inited + 80) = 7499379;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = sub_23328DCEC();
  strcpy((inited + 104), "snrThreshold");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = sub_23328DCEC();
  *(inited + 128) = 0x726F635372657375;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_23328DD5C();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x80000002332A9420;
  *(inited + 168) = sub_23328DD5C();
  *(inited + 176) = 0x64696C61567369;
  *(inited + 184) = 0xE700000000000000;
  TTSVBVoiceSampleTrainingValidity.isValid.getter();
  *(inited + 192) = sub_23328DC6C();
  *(inited + 200) = 0x6C61766E49726E73;
  *(inited + 208) = 0xEA00000000006469;
  sub_233202124();
  sub_2331C152C();
  sub_23328E0EC();
  *(inited + 216) = sub_23328DC6C();
  *(inited + 224) = 0x6C61766E496C7073;
  *(inited + 232) = 0xEA00000000006469;
  sub_23320213C();
  sub_23328E0EC();
  *(inited + 240) = sub_23328DC6C();
  *(inited + 248) = 0x6C61766E49727361;
  *(inited + 256) = 0xEA00000000006469;
  sub_23320210C();
  sub_23328E0EC();
  *(inited + 264) = sub_23328DC6C();
  v1 = sub_2331C13C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  swift_arrayDestroy();
  return v1;
}

void static TTSVBAnalytics.beganRecording(inputSourceName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328D95C();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2331C12E8;
  *(v6 + 24) = v5;
  v8[4] = sub_2331C15EC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2331C0924;
  v8[3] = &block_descriptor_43;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

unint64_t sub_2331C1308(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = sub_23328D95C();
  v5 = sub_2331C13C0(inited);
  swift_setDeallocating();
  sub_2331C14C4(inited + 32);
  return v5;
}

unint64_t sub_2331C13C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AF0, &unk_233299FA0);
    v3 = sub_23328E35C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_233144260(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_2331C14C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2331C152C()
{
  result = qword_27DDE2AF8;
  if (!qword_27DDE2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AF8);
  }

  return result;
}

unint64_t sub_2331C1580()
{
  result = qword_27DDE2B00;
  if (!qword_27DDE2B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDE2B00);
  }

  return result;
}

id sub_2331C15F0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id static TTSVBLocalVoiceMO.allVoicesRequest.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297620;
  sub_233144EEC(0, &qword_27DDE2328, 0x277CCAC98);
  swift_getKeyPath();
  *(v3 + 32) = sub_23328DE5C();
  v4 = sub_23328DBDC();

  [v2 setSortDescriptors_];

  return v2;
}

uint64_t static TTSVBLocalVoiceMO.findOrFetch(voiceID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496563696F76;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBLocalVoiceMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBLocalVoiceMO);
  v8 = v7;

  return v8;
}

BOOL static TTSVBLocalVoiceMO.voiceExists(withID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496563696F76;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBLocalVoiceMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBLocalVoiceMO);
  v8 = v7;

  if (v8)
  {
  }

  return v8 != 0;
}

id static TTSVBLocalVoiceMO.batchDeleteRequest(forVoiceID:)()
{
  type metadata accessor for TTSVBLocalVoiceMO();
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_23328D98C();
    v0 = sub_23328D95C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233297630;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2331527DC();
  *(v2 + 32) = 0x44496563696F76;
  *(v2 + 40) = 0xE700000000000000;
  v3 = sub_23328CE4C();
  *(v2 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v2 + 104) = sub_233152824();
  *(v2 + 72) = v3;
  v4 = sub_23328DDCC();
  [v1 setPredicate_];

  v5 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v5 setResultType_];

  return v5;
}

uint64_t static TTSVBLocalVoiceMO.voiceForNamePredicate(_:)(uint64_t a1, uint64_t a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_233297630;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2331527DC();
  *(v4 + 32) = 1701667182;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_23328DDCC();
}

uint64_t static TTSVBLocalVoiceMO.voiceForIDPredicate(_:)()
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_233297630;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2331527DC();
  *(v0 + 32) = 0x44496563696F76;
  *(v0 + 40) = 0xE700000000000000;
  v1 = sub_23328CE4C();
  *(v0 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v0 + 104) = sub_233152824();
  *(v0 + 72) = v1;
  return sub_23328DDCC();
}

void sub_2331C1D78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_233121D34(a1, &v11 - v5, &qword_27DDE19B0, &qword_233290370);
  v7 = *a2;
  v8 = sub_23328CE8C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_23328CE4C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setVoiceID_];
}

uint64_t sub_2331C1EB4()
{
  v1 = [v0 samples];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceSampleMO), , !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_2331C20C4(v5, sub_233154938, &qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);

  return v6;
}

uint64_t sub_2331C1FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v8 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  sub_23328E2DC();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v7);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2331C20C4(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v10 = sub_23328E19C();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v26 = MEMORY[0x277D84F90];
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x23839BFC0](v13, a1);
        v16 = *(v26 + 16);
        v15 = *(v26 + 24);
        if (v16 >= v15 >> 1)
        {
          v25(v15 > 1, v16 + 1, 1);
        }

        ++v13;
        v17 = sub_2331C39E0(a3, a4, a5);
        *(v26 + 16) = v16 + 1;
        v18 = v26 + 16 * v16;
        *(v18 + 32) = v14;
        *(v18 + 40) = v17;
      }

      while (v10 != v13);
    }

    else
    {
      v19 = (a1 + 32);
      do
      {
        v21 = *(v26 + 16);
        v20 = *(v26 + 24);
        v22 = *v19;
        if (v21 >= v20 >> 1)
        {
          v25(v20 > 1, v21 + 1, 1);
        }

        v23 = sub_2331C39E0(a3, a4, a5);
        *(v26 + 16) = v21 + 1;
        v24 = v26 + 16 * v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
        ++v19;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_2331C227C()
{
  v1 = [v0 models];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceModelMO), , !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_2331C20C4(v5, sub_233154978, &qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);

  return v6;
}

uint64_t sub_2331C2390()
{
  v1 = [v0 samples];
  if (v1 && (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceSampleMO), , v5))
  {
    v19 = v5;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B08, qword_23329A008);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  swift_getKeyPath();
  v10 = sub_23328D94C();
  v18[1] = v18;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = sub_23328D93C();
  v15 = MEMORY[0x28223BE20](v14);
  (*(v11 + 16))(v18 - v13, v18 - v13, v10, v15);
  sub_23328C96C();
  (*(v11 + 8))(v18 - v13, v10);
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B10, &qword_23329A048);
  sub_2331216CC(&qword_27DDE2B18, &qword_27DDE2B10, &qword_23329A048);
  sub_2331C35F4(&qword_27DDE2B20, &qword_27DDE2B08, qword_23329A008);
  v16 = sub_23328DB1C();
  (*(v7 + 8))(v9, v6);

  return v16;
}

uint64_t sub_2331C26BC()
{
  v1 = [v0 models];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceModelMO), , !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B28, qword_23329A050);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  KeyPath = swift_getKeyPath();
  MEMORY[0x23839A6D0](KeyPath, 1);
  v13[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B30, &unk_23329A090);
  sub_2331216CC(&qword_27DDE2B38, &qword_27DDE2B30, &unk_23329A090);
  sub_2331C35F4(&qword_27DDE2B40, &qword_27DDE2B28, qword_23329A050);
  v11 = sub_23328DB1C();
  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_2331C28E4@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_2331C299C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_233121D34(a1, &v11 - v5, &qword_27DDE1A18, &unk_233297730);
  v7 = *a2;
  v8 = sub_23328CE1C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_23328CD9C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setCreationDate_];
}

uint64_t static TTSVBLocalVoiceMO.modelVersions(forVoiceWithID:moc:problemForThrownError:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2688, &qword_233298470);
  result = sub_23328DF5C();
  if (!v3)
  {
    return v5;
  }

  return result;
}

id TTSVBLocalVoiceMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBLocalVoiceMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBLocalVoiceMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBLocalVoiceMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBLocalVoiceMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331C2CA8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSVBLocalVoiceMO();
  result = sub_23328E25C();
  *a2 = result;
  return result;
}

uint64_t (*sub_2331C2CE8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233153B40(v2);
  return sub_233153B3C;
}

uint64_t (*sub_2331C2D58(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233153D34(v2);
  return sub_233154AEC;
}

uint64_t (*sub_2331C2DC8(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C2E38(v2);
  return sub_233154AEC;
}

void (*sub_2331C2E38(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 voiceID];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CE6C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE8C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233154860(v10, v7);
  return sub_2331C2F88;
}

void sub_2331C2F88(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v3, v5, &qword_27DDE19B0, &qword_233290370);
    v6 = sub_23328CE8C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CE4C();
      (*(v7 + 8))(v5, v6);
      v3 = *(a1 + 16);
    }

    v9 = *(a1 + 24);
    [*a1 setVoiceID_];

    free(v9);
    sub_2331548D0(v3);
    free(v3);
  }

  else
  {
    v10 = sub_23328CE8C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_23328CE4C();
      (*(v11 + 8))(v3, v10);
      v3 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    [*a1 setVoiceID_];

    free(v13);

    free(v3);
  }
}

char *sub_2331C3234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2668, &qword_233298138);
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

uint64_t sub_2331C3340(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  v25 = *(a3 + 8);
  HIDWORD(v22) = *(a3 + 16);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_233297630;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2331527DC();
  *(v10 + 32) = 0x44496563696F76;
  *(v10 + 40) = 0xE700000000000000;
  v11 = sub_23328CE4C();
  *(v10 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v10 + 104) = sub_233152824();
  *(v10 + 72) = v11;
  v12 = sub_23328DDCC();
  v13 = type metadata accessor for TTSVBLocalVoiceMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v12, v13, &protocol witness table for TTSVBLocalVoiceMO);
  v15 = v14;

  if (!v15)
  {
    v16 = v9;
    v17 = v25;
    v23[0] = v9;
    v23[1] = v25;
    v18 = BYTE4(v22);
    v24 = BYTE4(v22);
    v19 = sub_23328CE8C();
    (*(*(v19 - 8) + 16))(v8, a1, v19);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331C39E0(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    v15 = v20;
    sub_233144054(v16, v17, v18);
    TTSVBError.init(_:_:_:)(v23, v8, 0, v15);
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_2331C35F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2331C363C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v38 = *(v1 + 32);
  v39 = v6;
  result = sub_2331C3340(v4, v5, &v38);
  if (!v2)
  {
    v37 = a1;
    v36 = result;
    result = (*((*MEMORY[0x277D85000] & *result) + 0x60))();
    v8 = result;
    v9 = 0;
    v10 = *(result + 16);
    v11 = result + 40;
    v40 = MEMORY[0x277D84F90];
    v35 = result + 40;
LABEL_3:
    v12 = (v11 + 16 * v9);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 + 2;
      ++v9;
      v14 = *v12;
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 352);
      swift_unknownObjectRetain();
      v17 = v16(ObjectType, v14);
      v19 = v18;
      result = swift_unknownObjectRelease();
      v12 = v13;
      if (v19)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_233143EE0(0, *(v40 + 2) + 1, 1, v40);
          v40 = result;
        }

        v21 = *(v40 + 2);
        v20 = *(v40 + 3);
        if (v21 >= v20 >> 1)
        {
          result = sub_233143EE0((v20 > 1), v21 + 1, 1, v40);
          v40 = result;
        }

        v22 = v40;
        *(v40 + 2) = v21 + 1;
        v23 = &v22[16 * v21];
        *(v23 + 4) = v17;
        *(v23 + 5) = v19;
        v11 = v35;
        goto LABEL_3;
      }
    }

    v24 = v40;
    v25 = *(v40 + 2);
    if (v25)
    {
      v26 = 0;
      v27 = (v40 + 40);
      v28 = MEMORY[0x277D84F90];
      while (v26 < *(v24 + 2))
      {
        v30 = *(v27 - 1);
        v29 = *v27;

        v31._countAndFlagsBits = v30;
        v31._object = v29;
        TTSVBVoiceModelVersion.init(rawValue:)(v31);
        v32 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2331C3234(0, *(v28 + 16) + 1, 1, v28);
          v28 = result;
        }

        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          result = sub_2331C3234((v33 > 1), v34 + 1, 1, v28);
          v28 = result;
        }

        ++v26;
        *(v28 + 16) = v34 + 1;
        *(v28 + 16 * v34 + 32) = v32;
        v27 += 2;
        v24 = v40;
        if (v25 == v26)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_25;
    }

    v28 = MEMORY[0x277D84F90];
LABEL_22:

    *v37 = v28;
  }

  return result;
}

uint64_t sub_2331C39E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TTSVBAudioDescriptor.FileType.fileExtension.getter()
{
  if (*v0)
  {
    return 7758199;
  }

  else
  {
    return 6709603;
  }
}

uint64_t TTSVBAudioDescriptor.FileType.fileTypeID.getter()
{
  if (*v0)
  {
    return 1463899717;
  }

  else
  {
    return 1667327590;
  }
}

TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor::FileType_optional __swiftcall TTSVBAudioDescriptor.FileType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2331C3AD0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7758199;
  }

  else
  {
    v2 = 6709603;
  }

  if (*a2)
  {
    v3 = 7758199;
  }

  else
  {
    v3 = 6709603;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23328E54C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2331C3B48()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331C3BB0(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_2331C3BFC(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331C3C60@<X0>(char *a2@<X8>)
{
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2331C3CC0(uint64_t *a1@<X8>)
{
  v2 = 6709603;
  if (*v1)
  {
    v2 = 7758199;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor::Compression_optional __swiftcall TTSVBAudioDescriptor.Compression.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSVBAudioDescriptor.Compression.rawValue.getter()
{
  v1 = 0x736F4C656C707061;
  if (*v0 != 1)
  {
    v1 = 6512993;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572706D6F636E75;
  }
}

uint64_t sub_2331C3DC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736F4C656C707061;
  v4 = 0xED00007373656C73;
  if (v2 != 1)
  {
    v3 = 6512993;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6572706D6F636E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000064657373;
  }

  v7 = 0x736F4C656C707061;
  v8 = 0xED00007373656C73;
  if (*a2 != 1)
  {
    v7 = 6512993;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6572706D6F636E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000064657373;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_2331C3ED0()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331C3F80(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_2331C401C(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

void sub_2331C40D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657373;
  v4 = 0xED00007373656C73;
  v5 = 0x736F4C656C707061;
  if (v2 != 1)
  {
    v5 = 6512993;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6572706D6F636E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *TTSVBAudioDescriptor.format.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void __swiftcall TTSVBAudioDescriptor.init(fileType:compression:format:)(TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor *__return_ptr retstr, TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor::FileType_optional fileType, TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor::Compression_optional compression, AVAudioFormat_optional *format)
{
  v4 = *compression.value;
  retstr->fileType.value = *fileType.value;
  retstr->compression.value = v4;
  *(&retstr->format.value.super.isa + 6) = format;
}

uint64_t TTSVBAudioDescriptor.fileExtension.getter()
{
  if (*v0)
  {
    return 7758199;
  }

  else
  {
    return 6709603;
  }
}

uint64_t TTSVBAudioDescriptor.audioFileSettings(withFormat:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [a1 settings];
  v5 = sub_23328D89C();

  v6 = MEMORY[0x277D84CC0];
  if (v3 != 3)
  {
    v7 = sub_23328D98C();
    v9 = v8;
    v10 = *&aMcplcalaCaa[4 * v3];
    v20 = v6;
    LODWORD(v19) = v10;
    sub_233145134(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23314474C(v18, v7, v9, isUniquelyReferenced_nonNull_native);
  }

  if (v2 != 2)
  {
    v12 = sub_23328D98C();
    v14 = v13;
    if (v2)
    {
      v15 = 1463899717;
    }

    else
    {
      v15 = 1667327590;
    }

    v20 = v6;
    LODWORD(v19) = v15;
    sub_233145134(&v19, v18);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_23314474C(v18, v12, v14, v16);
  }

  return v5;
}

unint64_t TTSVBAudioDescriptor.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_23328E24C();

  v5 = 6709603;
  if (v2)
  {
    v5 = 7758199;
  }

  if (v2 == 2)
  {
    v6 = 7104878;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x23839B7E0](v6, 0xE300000000000000);

  MEMORY[0x23839B7E0](0x736572706D6F4320, 0xED00003D6E6F6973);
  v7 = 0xEC00000064657373;
  v8 = 0x6572706D6F636E75;
  v9 = 6512993;
  if (v3 != 2)
  {
    v9 = 7104878;
  }

  if (v3)
  {
    v8 = 0x736F4C656C707061;
    v7 = 0xED00007373656C73;
  }

  if (v3 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v3 <= 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x23839B7E0](v10, v11);

  MEMORY[0x23839B7E0](0x3D74616D726F4620, 0xE800000000000000);
  if (v4)
  {
    v12 = [v4 description];
    v1 = sub_23328D98C();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x23839B7E0](v1, v14);

  return 0xD000000000000015;
}

id sub_2331C4508()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:24000.0];
  word_27DDF5FA8 = 1;
  qword_27DDF5FB0 = result;
  return result;
}

__int16 *sub_2331C4568()
{
  if (qword_27DDF5FA0 != -1)
  {
    swift_once();
  }

  return &word_27DDF5FA8;
}

id static TTSVBAudioDescriptor.trainingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF5FA0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DDF5FB0;
  *a1 = word_27DDF5FA8;
  *(a1 + 8) = v2;

  return v2;
}

__int16 *sub_2331C464C()
{
  if (qword_27DDF5FB8 != -1)
  {
    swift_once();
  }

  return &word_27DDF5FC0;
}

id static TTSVBAudioDescriptor.defaultRecordingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF5FB8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DDF5FC8;
  *a1 = word_27DDF5FC0;
  *(a1 + 8) = v2;

  return v2;
}

unint64_t sub_2331C4720()
{
  result = qword_27DDE2B48;
  if (!qword_27DDE2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2B48);
  }

  return result;
}

unint64_t sub_2331C4778()
{
  result = qword_27DDE2B50;
  if (!qword_27DDE2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2B50);
  }

  return result;
}

uint64_t sub_2331C47CC(uint64_t a1, unsigned int a2)
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

uint64_t sub_2331C4828(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_2331C48AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t static TTSVBLocalVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = _s31TextToSpeechVoiceBankingSupport010TTSVBLocalD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(a1, a2, a3, a4);
  if (!result)
  {
    v15[0] = 0;
    v15[1] = 0;
    v16 = 3;
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331C6A8C(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    v13 = v12;

    TTSVBError.init(_:_:_:)(v15, v10, 0, v13);
    return swift_willThrow();
  }

  return result;
}

id sub_2331C4A90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDuration];
  *a2 = v4;
  return result;
}

id sub_2331C4AF0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 paragraphIndex];
  *a2 = result;
  return result;
}

id sub_2331C4B68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recordingDuration];
  *a2 = v4;
  return result;
}

id sub_2331C4BB0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sentenceIndex];
  *a2 = result;
  return result;
}

uint64_t sub_2331C4C28@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recordingDate];
  if (v3)
  {
    v4 = v3;
    sub_23328CDDC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_23328CE1C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2331C4CCC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_23312712C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_23328CE1C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_23328CD9C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setRecordingDate_];
}

id sub_2331C4DF8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 userScore];
  *a2 = result;
  return result;
}

id sub_2331C4E40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 voice];
  *a2 = result;
  return result;
}

id sub_2331C4E90@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 spl];
  *a2 = v4;
  return result;
}

id sub_2331C4ED8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 snr];
  *a2 = v4;
  return result;
}

id sub_2331C4F20@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 splThreshold];
  *a2 = v4;
  return result;
}

id sub_2331C4F68@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 snrThreshold];
  *a2 = v4;
  return result;
}

id sub_2331C4FB0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 flags_];
  *a2 = result;
  return result;
}

uint64_t sub_2331C4FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = [v2 voice];
  if (!v12)
  {
    v19 = sub_233225440();
    (*(v5 + 16))(v7, v19, v4);
    v20 = sub_23328D6CC();
    v21 = sub_23328DE3C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      v24 = sub_23328E70C();
      v26 = sub_23311A8F4(v24, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_233109000, v20, v21, "'voice' property on %s was unexpectedly nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23839CFD0](v23, -1, -1);
      MEMORY[0x23839CFD0](v22, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 voiceID];
  if (!v14)
  {
    v27 = sub_233225440();
    (*(v5 + 16))(v11, v27, v4);
    v28 = sub_23328D6CC();
    v29 = sub_23328DE3C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v30 = 136315138;
      v31 = sub_23328E70C();
      v33 = a1;
      v34 = sub_23311A8F4(v31, v32, &v38);

      *(v30 + 4) = v34;
      a1 = v33;
      _os_log_impl(&dword_233109000, v28, v29, "'voiceID' on voice for on %s was unexpectedly nil", v30, 0xCu);
      v35 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23839CFD0](v35, -1, -1);
      MEMORY[0x23839CFD0](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
LABEL_12:
    v36 = sub_23328CE8C();
    return (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  }

  v15 = v14;
  sub_23328CE6C();

  v16 = sub_23328CE8C();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 0, 1, v16);
}

id TTSVBLocalVoiceSampleMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBLocalVoiceSampleMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBLocalVoiceSampleMO.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTSVBLocalVoiceSampleMO();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2331C5534@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for TTSVBLocalVoiceSampleMO();
  result = sub_23328E25C();
  *a3 = result;
  return result;
}

uint64_t (*sub_2331C558C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C55FC(v2);
  return sub_233154AEC;
}

void (*sub_2331C55FC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 bookTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C5684;
}

id (*sub_2331C56B0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 estimatedDuration];
  *a1 = v3;
  return sub_2331C5704;
}

uint64_t (*sub_2331C5734(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C57A4(v2);
  return sub_233154AEC;
}

void (*sub_2331C57A4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 locale];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C582C;
}

id (*sub_2331C585C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 paragraphIndex];
  return sub_2331C58B0;
}

uint64_t (*sub_2331C58E0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5950(v2);
  return sub_233154AEC;
}

void (*sub_2331C5950(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 phonemes];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C59D8;
}

uint64_t (*sub_2331C59FC(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5A6C(v2);
  return sub_233154AEC;
}

void (*sub_2331C5A6C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 phrase];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C5AF4;
}

id (*sub_2331C5B20(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 recordingDuration];
  *a1 = v3;
  return sub_2331C5B74;
}

uint64_t (*sub_2331C5BA4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5C14(v2);
  return sub_233154AEC;
}

void (*sub_2331C5C14(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 sampleID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C5C9C;
}

id (*sub_2331C5CCC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 sentenceIndex];
  return sub_2331C5D20;
}

uint64_t (*sub_2331C5D50(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5DC0(v2);
  return sub_233153B3C;
}

void (*sub_2331C5DC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 transcript];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C5E48;
}

uint64_t (*sub_2331C5E6C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5EDC(v2);
  return sub_233154AEC;
}

void (*sub_2331C5EDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 userPhrase];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2331C5F64;
}

uint64_t sub_2331C5F70@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recordingDate];
  if (v3)
  {
    v4 = v3;
    sub_23328CDDC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_23328CE1C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_2331C6014(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23328CE1C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_23328CD9C();
    (*(v5 + 8))(a1, v4);
    v7 = v8;
  }

  v9 = v7;
  [v2 setRecordingDate_];
}

uint64_t (*sub_2331C610C(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C617C(v2);
  return sub_233154AEC;
}

void (*sub_2331C617C(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 recordingDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_23315CA28(v10, v7);
  return sub_2331C62CC;
}

void sub_2331C62CC(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23312712C(v3, v5);
    v6 = sub_23328CE1C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CD9C();
      (*(v7 + 8))(v5, v6);
      v3 = *(a1 + 16);
    }

    v9 = *(a1 + 24);
    [*a1 setRecordingDate_];

    free(v9);
    sub_233126838(v3);
    free(v3);
  }

  else
  {
    v10 = sub_23328CE1C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_23328CD9C();
      (*(v11 + 8))(v3, v10);
      v3 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    [*a1 setRecordingDate_];

    free(v13);

    free(v3);
  }
}

id (*sub_2331C6538(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 userScore];
  return sub_2331C658C;
}

id (*sub_2331C65C4(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 spl];
  *(a1 + 8) = v3;
  return sub_2331C6618;
}

id (*sub_2331C6650(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 snr];
  *(a1 + 8) = v3;
  return sub_2331C66A4;
}

id (*sub_2331C66DC(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 splThreshold];
  *(a1 + 8) = v3;
  return sub_2331C6730;
}

id (*sub_2331C6768(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 snrThreshold];
  *(a1 + 8) = v3;
  return sub_2331C67BC;
}

id (*sub_2331C67F8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 flags_];
  return sub_2331C684C;
}

uint64_t _s31TextToSpeechVoiceBankingSupport010TTSVBLocalD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_233297B40;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2331527DC();
  *(v7 + 32) = 0x4449656C706D6173;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  strcpy((v7 + 112), "voice.voiceID");
  *(v7 + 126) = -4864;

  v10 = sub_23328CE4C();
  *(v7 + 176) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v7 + 184) = sub_233152824();
  *(v7 + 152) = v10;
  v11 = sub_23328DDCC();
  v12 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  static DSO<>.findOrFetch(in:matching:)(a4, v11, v12, &protocol witness table for TTSVBLocalVoiceSampleMO);
  v14 = v13;

  return v14;
}

uint64_t sub_2331C6A34(uint64_t a1, uint64_t a2)
{
  result = sub_2331C6A8C(&qword_27DDE2968, a2, type metadata accessor for TTSVBLocalVoiceSampleMO, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2331C6A8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTSVBInstalledVoiceModel.calculateOnDiskFileSize()()
{
  v0 = *sub_2331DEBE8();
  v18 = v0;
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = v0;
  TTSVBVoiceModel.url.getter(v7);
  v17[0] = 0x7461447465737341;
  v17[1] = 0xE900000000000061;
  v9 = sub_23328CB3C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC91E0], v9, v11);
  sub_23311A294();
  sub_23328CC8C();
  (*(v10 + 8))(v13, v9);
  v14 = *(v2 + 8);
  v14(v7, v1);
  v15 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v4);
  v14(v4, v1);

  return v15;
}

uint64_t TTSVBInstalledVoiceModel.assetDataURL.getter()
{
  v0 = sub_23328CC9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBVoiceModel.url.getter(v3);
  v10[0] = 0x7461447465737341;
  v10[1] = 0xE900000000000061;
  v4 = sub_23328CB3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91E0], v4, v6);
  sub_23311A294();
  sub_23328CC8C();
  (*(v5 + 8))(v8, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t TTSVBInstalledVoiceModel.convertToData()()
{
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBInstalledVoiceModel(0);
  sub_2331C7D7C(&qword_280D3A0C0, type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
  v0 = sub_23328C89C();

  return v0;
}

uint64_t type metadata accessor for TTSVBInstalledVoiceModel(uint64_t a1)
{
  result = qword_280D3AD00;
  if (!qword_280D3AD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBInstalledVoiceModel.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_23328C85C();
  swift_allocObject();
  sub_23328C84C();
  type metadata accessor for TTSVBInstalledVoiceModel(0);
  sub_2331C7D7C(&qword_280D3A0B8, type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
  sub_23328C83C();

  return sub_233121870(a1, a2);
}

uint64_t sub_2331C7364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2331C73E8(uint64_t a1)
{
  v2 = sub_2331C75D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331C7424(uint64_t a1)
{
  v2 = sub_2331C75D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBInstalledVoiceModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B58, &qword_23329A3C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C75D8();
  sub_23328E69C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328E4DC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2331C75D8()
{
  result = qword_27DDF6450[0];
  if (!qword_27DDF6450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6450);
  }

  return result;
}

uint64_t TTSVBInstalledVoiceModel.hash(into:)(uint64_t a1)
{
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);

  return sub_23328D8CC();
}

uint64_t TTSVBInstalledVoiceModel.hashValue.getter()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t TTSVBInstalledVoiceModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B68, &qword_23329A3C8);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C75D8();
  sub_23328E68C();
  if (!v2)
  {
    v12 = v15;
    sub_2331C7D7C(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
    v13 = v17;
    sub_23328E41C();
    (*(v16 + 8))(v8, v6);
    sub_2331C7CCC(v13, v11, type metadata accessor for TTSVBVoiceModel);
    sub_2331C7CCC(v11, v12, type metadata accessor for TTSVBInstalledVoiceModel);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2331C79C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B58, &qword_23329A3C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C75D8();
  sub_23328E69C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328E4DC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2331C7B3C()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331C7BC4(uint64_t a1)
{
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);

  return sub_23328D8CC();
}

uint64_t sub_2331C7C48(uint64_t a1)
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel(0);
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331C7CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331C7D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2331C7DC8()
{
  result = qword_27DDE1F98;
  if (!qword_27DDE1F98)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1F98);
  }

  return result;
}

uint64_t sub_2331C7EA4(uint64_t a1)
{
  result = type metadata accessor for TTSVBVoiceModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2331C7F24()
{
  result = qword_27DDF67E0[0];
  if (!qword_27DDF67E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF67E0);
  }

  return result;
}

unint64_t sub_2331C7F7C()
{
  result = qword_27DDF68F0;
  if (!qword_27DDF68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF68F0);
  }

  return result;
}

unint64_t sub_2331C7FD4()
{
  result = qword_27DDF68F8[0];
  if (!qword_27DDF68F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF68F8);
  }

  return result;
}

uint64_t TTSVBResultOK.hashValue.getter()
{
  sub_23328E61C();
  MEMORY[0x23839C380](0);
  return sub_23328E66C();
}

unint64_t sub_2331C80A4()
{
  result = qword_27DDE2B78;
  if (!qword_27DDE2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2B78);
  }

  return result;
}

uint64_t sub_2331C8108@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2331C816C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x118);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2331C8238(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2331C82A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2331C8344;
}

void sub_2331C8344(uint64_t a1, char a2)
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