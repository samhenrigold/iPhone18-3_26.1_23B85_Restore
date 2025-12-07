uint64_t sub_225EEDEC8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_22609A448();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_225EEE090()
{
  v274 = v0;
  v251 = v0[58];
  v253 = v0[56];
  v0[37] = v0;
  v250 = (v251 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  *v250 = 0;
  swift_endAccess();
  v252 = (v251 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  *v252 = 0;
  swift_endAccess();
  sub_225F27078();
  v254 = [v253 task];
  if (v254)
  {
    v245 = sub_226099A08();
    v246 = v1;
    MEMORY[0x277D82BD8](v254);
    v247 = v245;
    v248 = v246;
  }

  else
  {
    v247 = 0;
    v248 = 0;
  }

  if (!v248)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1700, 0);
  }

  v243 = *(v249 + 448);
  v242 = sub_225F2B070(v247, v248);
  *(v249 + 641) = v242;

  *(v249 + 640) = v242;
  v244 = [v243 task];
  if (v244)
  {
    v238 = sub_226099A08();
    v239 = v3;
    MEMORY[0x277D82BD8](v244);
    v240 = v238;
    v241 = v239;
  }

  else
  {
    v240 = 0;
    v241 = 0;
  }

  if (!v241)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1701, 0);
  }

  v237 = *(v249 + 544);
  v235 = *(v249 + 496);
  v234 = *(v249 + 504);
  v233 = sub_225F2B178(v240, v241);

  *(v249 + 648) = v233;
  v4 = sub_225F7E9BC();
  v236 = *(v234 + 16);
  *(v249 + 576) = v236;
  *(v249 + 584) = (v234 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v236(v237, v4, v235);
  sub_226098C18();
  sub_226098C08();
  if (v242)
  {
    v231 = sub_226098C28();
    v232 = sub_22609A0B8();
    if (sub_22609A158())
    {
      sub_22601D504("CESA: Responsiveness Workflow Trigger on UUFR", &v273);
      v224 = v273;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v229 = sub_22609A4F8();
      MEMORY[0x277D82BE0](v231);
      v226 = sub_22609A188();
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v227 = sub_225EF5468(0, v225, v225);
      v228 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v249 + 416) = v226;
      *(v249 + 424) = v227;
      *(v249 + 432) = v228;
      sub_225EF54BC(0, (v249 + 416));
      sub_225EF54BC(0, (v249 + 416));
      *(v249 + 440) = v229;
      v230 = swift_task_alloc();
      v230[2] = v249 + 416;
      v230[3] = v249 + 424;
      v230[4] = v249 + 432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v223 = *(v249 + 488);

      sub_22601D650(v226, 2u, v231, v232, v223, v224, "");
      sub_225EF7AF4(v227, 0, v225);
      sub_225EF7AF4(v228, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
      MEMORY[0x277D82BD8](v231);
    }

    MEMORY[0x277D82BD8](v231);
  }

  else if (v233)
  {
    v221 = sub_226098C28();
    v222 = sub_22609A0B8();
    if (sub_22609A158())
    {
      sub_22601D504("CESA: Responsiveness Workflow Trigger on EagerCPL", &v272);
      v214 = v272;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v219 = sub_22609A4F8();
      MEMORY[0x277D82BE0](v221);
      v216 = sub_22609A188();
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v217 = sub_225EF5468(0, v215, v215);
      v218 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v249 + 384) = v216;
      *(v249 + 392) = v217;
      *(v249 + 400) = v218;
      sub_225EF54BC(0, (v249 + 384));
      sub_225EF54BC(0, (v249 + 384));
      *(v249 + 408) = v219;
      v220 = swift_task_alloc();
      v220[2] = v249 + 384;
      v220[3] = v249 + 392;
      v220[4] = v249 + 400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v213 = *(v249 + 488);

      sub_22601D650(v216, 2u, v221, v222, v213, v214, "");
      sub_225EF7AF4(v217, 0, v215);
      sub_225EF7AF4(v218, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
      MEMORY[0x277D82BD8](v221);
    }

    MEMORY[0x277D82BD8](v221);
  }

  v211 = *(v249 + 448);
  v210 = (*(v249 + 464) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  *v210 = 0;

  swift_endAccess();
  v212 = [v211 dictationUIInteractionIdentifier];
  if (v212)
  {
    v206 = sub_226099A08();
    v207 = v5;
    MEMORY[0x277D82BD8](v212);
    v208 = v206;
    v209 = v207;
  }

  else
  {
    v208 = 0;
    v209 = 0;
  }

  *(v249 + 216) = v208;
  *(v249 + 224) = v209;
  if (*(v249 + 224))
  {
    v255 = *(v249 + 216);
    v256 = *(v249 + 224);
  }

  else
  {
    sub_225F4C57C();
    v204 = sub_225F26174();
    v205 = [v204 UUIDString];
    v255 = sub_226099A08();
    v256 = v6;
    MEMORY[0x277D82BD8](v204);
    MEMORY[0x277D82BD8](v205);
    if (*(v249 + 224))
    {
      sub_225EFE6BC(v249 + 216);
    }
  }

  *(v249 + 592) = v255;
  *(v249 + 600) = v256;
  *(v249 + 232) = v255;
  *(v249 + 240) = v256;
  *(v249 + 328) = 0;
  if (*sub_225F7E704())
  {
    v7 = *(v249 + 536);
    v178 = *(v249 + 496);
    v180 = *(v249 + 448);
    v179 = AFOfflineDictationCapable();
    *(v249 + 672) = v179 & 1;
    v177 = AFDeviceHighestLanguageModelCapabilityIdentifier();
    *(v249 + 376) = v177;
    sub_225EF81A8();
    v181 = v177 >= v8;
    *(v249 + 680) = v177 >= v8;
    v9 = sub_225F7EB70();
    v236(v7, v9, v178);
    v182 = swift_allocObject();
    *(v182 + 16) = v179;
    MEMORY[0x277D82BE0](v180);
    v186 = swift_allocObject();
    *(v186 + 16) = v180;
    v188 = swift_allocObject();
    *(v188 + 16) = v181;
    oslog = sub_226098C48();
    v203 = sub_22609A088();
    v192 = swift_allocObject();
    *(v192 + 16) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = 4;
    v183 = swift_allocObject();
    *(v183 + 16) = sub_225EF3E24;
    *(v183 + 24) = v182;
    v184 = swift_allocObject();
    *(v184 + 16) = sub_225EF70FC;
    *(v184 + 24) = v183;
    v185 = swift_allocObject();
    *(v185 + 16) = sub_225EF7108;
    *(v185 + 24) = v184;
    v194 = swift_allocObject();
    *(v194 + 16) = sub_225EF7150;
    *(v194 + 24) = v185;
    v195 = swift_allocObject();
    *(v195 + 16) = 32;
    v196 = swift_allocObject();
    *(v196 + 16) = 8;
    v187 = swift_allocObject();
    *(v187 + 16) = sub_22601FAE4;
    *(v187 + 24) = v186;
    v197 = swift_allocObject();
    *(v197 + 16) = sub_225EF7B84;
    *(v197 + 24) = v187;
    v198 = swift_allocObject();
    *(v198 + 16) = 0;
    v199 = swift_allocObject();
    *(v199 + 16) = 4;
    v189 = swift_allocObject();
    *(v189 + 16) = sub_225EF3E24;
    *(v189 + 24) = v188;
    v190 = swift_allocObject();
    *(v190 + 16) = sub_225EF70FC;
    *(v190 + 24) = v189;
    v191 = swift_allocObject();
    *(v191 + 16) = sub_225EF7108;
    *(v191 + 24) = v190;
    v200 = swift_allocObject();
    *(v200 + 16) = sub_225EF7150;
    *(v200 + 24) = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v201 = v10;

    *v201 = sub_225EF7434;
    v201[1] = v192;

    v201[2] = sub_225EF7434;
    v201[3] = v193;

    v201[4] = sub_225EF715C;
    v201[5] = v194;

    v201[6] = sub_225EF7434;
    v201[7] = v195;

    v201[8] = sub_225EF7434;
    v201[9] = v196;

    v201[10] = sub_225EF7B90;
    v201[11] = v197;

    v201[12] = sub_225EF7434;
    v201[13] = v198;

    v201[14] = sub_225EF7434;
    v201[15] = v199;

    v201[16] = sub_225EF715C;
    v201[17] = v200;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v203))
    {
      buf = sub_22609A188();
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v175 = sub_225EF5468(0, v173, v173);
      v176 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v267 = buf;
      v268 = v175;
      v269 = v176;
      sub_225EF54BC(2, &v267);
      sub_225EF54BC(3, &v267);
      v270 = sub_225EF7434;
      v271 = v192;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF7434;
      v271 = v193;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF715C;
      v271 = v194;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF7434;
      v271 = v195;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF7434;
      v271 = v196;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF7B90;
      v271 = v197;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF7434;
      v271 = v198;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF7434;
      v271 = v199;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      v270 = sub_225EF715C;
      v271 = v200;
      sub_225EF73E8(&v270, &v267, &v268, &v269);
      _os_log_impl(&dword_225EEB000, oslog, v203, "dictationCapable=%{BOOL}d task=%s aneCapable=%{BOOL}d", buf, 0x18u);
      sub_225EF7AF4(v175, 0, v173);
      sub_225EF7AF4(v176, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v167 = *(v249 + 536);
    v168 = *(v249 + 496);
    v170 = *(v249 + 448);
    v166 = *(v249 + 504);
    MEMORY[0x277D82BD8](oslog);
    v169 = *(v166 + 8);
    v169(v167, v168);
    v171 = objc_opt_self();
    v172 = [v170 task];
    if (v172)
    {
      sub_226099A08();
      v164 = v11;
      MEMORY[0x277D82BD8](v172);
      v165 = v164;
    }

    else
    {
      v165 = 0;
    }

    if (v165)
    {
      v162 = sub_2260999F8();

      v163 = v162;
    }

    else
    {
      v163 = 0;
    }

    v161 = [v171 isTaskDictationSpecific_];
    MEMORY[0x277D82BD8](v163);
    *(v249 + 688) = v161 & 1;
    v160 = (v179 & 1) != 0 && (v161 & 1) != 0 && v181;
    *(v249 + 696) = v160;
    if (v160)
    {
      MEMORY[0x277D82BE0](*(v249 + 448));
      v159 = (v161 & 1) != 0 && [*(v249 + 448) isSpeechAPIRequest] == 0;
      v158 = *(v249 + 448);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BE0](v158);
      if (v159)
      {
        v157 = [objc_opt_self() sharedManager];
        if (!v157)
        {
          return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1741, 0);
        }

        v156 = [*(v249 + 448) language];
        if (v156)
        {
          sub_226099A08();
          v154 = v12;
          MEMORY[0x277D82BD8](v156);
          v155 = v154;
        }

        else
        {
          v155 = 0;
        }

        if (v155)
        {
          v152 = sub_2260999F8();

          v153 = v152;
        }

        else
        {
          v153 = 0;
        }

        v150 = [v157 isRequestSelectedForSamplingFromConfigForLanguage_];
        MEMORY[0x277D82BD8](v153);
        MEMORY[0x277D82BD8](v157);
        v151 = v150;
      }

      else
      {
        v151 = 0;
      }

      MEMORY[0x277D82BD8](*(v249 + 448));
      *(v249 + 704) = v151 & 1;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      if (sub_225F7E648())
      {
        v149 = v151;
      }

      else
      {
        v149 = 0;
      }

      if (v149)
      {
        v13 = *(v249 + 528);
        v139 = *(v249 + 496);
        v140 = *(v249 + 448);
        v14 = sub_225F7EB70();
        v236(v13, v14, v139);
        MEMORY[0x277D82BE0](v140);
        v141 = swift_allocObject();
        *(v141 + 16) = v140;
        log = sub_226098C48();
        v148 = sub_22609A078();
        v143 = swift_allocObject();
        *(v143 + 16) = 32;
        v144 = swift_allocObject();
        *(v144 + 16) = 8;
        v142 = swift_allocObject();
        *(v142 + 16) = sub_22601FADC;
        *(v142 + 24) = v141;
        v145 = swift_allocObject();
        *(v145 + 16) = sub_225EF7B84;
        *(v145 + 24) = v142;
        sub_22609A4F8();
        v146 = v15;

        *v146 = sub_225EF7434;
        v146[1] = v143;

        v146[2] = sub_225EF7434;
        v146[3] = v144;

        v146[4] = sub_225EF7B90;
        v146[5] = v145;
        sub_225EF5418();

        if (os_log_type_enabled(log, v148))
        {
          v136 = sub_22609A188();
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v137 = sub_225EF5468(0, v135, v135);
          v138 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v262 = v136;
          v263 = v137;
          v264 = v138;
          sub_225EF54BC(2, &v262);
          sub_225EF54BC(1, &v262);
          v265 = sub_225EF7434;
          v266 = v143;
          sub_225EF73E8(&v265, &v262, &v263, &v264);
          v265 = sub_225EF7434;
          v266 = v144;
          sub_225EF73E8(&v265, &v262, &v263, &v264);
          v265 = sub_225EF7B90;
          v266 = v145;
          sub_225EF73E8(&v265, &v262, &v263, &v264);
          _os_log_impl(&dword_225EEB000, log, v148, "Create DES record for Dictation with interactionId=%s", v136, 0xCu);
          sub_225EF7AF4(v137, 0, v135);
          sub_225EF7AF4(v138, 1, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        else
        {
        }

        v131 = *(v249 + 528);
        v132 = *(v249 + 496);
        v134 = *(v249 + 456);
        v133 = *(v249 + 448);
        MEMORY[0x277D82BD8](log);
        v169(v131, v132);
        v16 = sub_225FFDC20(v133, v134);
        v17 = *(v249 + 328);
        *(v249 + 328) = v16;
        MEMORY[0x277D82BD8](v17);
      }
    }
  }

  *(v249 + 336) = 0;
  if (*sub_225EF72E8())
  {
    if (!v242)
    {
      MEMORY[0x277D82BE0](*(v249 + 464));
LABEL_75:
      MEMORY[0x277D82BD8](*(v249 + 464));
      goto LABEL_81;
    }

    v130 = AFDeviceSupportsSiriUOD();
    MEMORY[0x277D82BE0](*(v249 + 464));
    if ((v130 & 1) == 0)
    {
      goto LABEL_75;
    }

    v129 = sub_225FFE2AC();
    MEMORY[0x277D82BD8](*(v249 + 464));
    if ((v129 & 1) == 0)
    {
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      if (sub_225F7E648())
      {
        v107 = *(v249 + 520);
        v108 = *(v249 + 496);
        v109 = *(v249 + 456);
        v115 = *(v249 + 448);
        *(v249 + 336) = sub_225FFE31C(v115);

        v18 = sub_225F7E9BC();
        v236(v107, v18, v108);
        v112 = sub_226098A78();
        v111 = *(v112 - 8);
        v113 = swift_task_alloc();
        (*(v111 + 16))(v113, v109, v112);
        v110 = (*(v111 + 80) + 16) & ~*(v111 + 80);
        v114 = swift_allocObject();
        (*(v111 + 32))(v114 + v110, v113, v112);

        v116 = swift_allocObject();
        *(v116 + 16) = sub_225F7CD90;
        *(v116 + 24) = v114;

        MEMORY[0x277D82BE0](v115);
        v118 = swift_allocObject();
        *(v118 + 16) = v115;
        v127 = sub_226098C48();
        v128 = sub_22609A088();
        v120 = swift_allocObject();
        *(v120 + 16) = 32;
        v121 = swift_allocObject();
        *(v121 + 16) = 8;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_225F7CE04;
        *(v117 + 24) = v116;
        v122 = swift_allocObject();
        *(v122 + 16) = sub_225EF7B84;
        *(v122 + 24) = v117;
        v123 = swift_allocObject();
        *(v123 + 16) = 32;
        v124 = swift_allocObject();
        *(v124 + 16) = 8;
        v119 = swift_allocObject();
        *(v119 + 16) = sub_22601FADC;
        *(v119 + 24) = v118;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_225EF7B84;
        *(v125 + 24) = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        sub_22609A4F8();
        v126 = v19;

        *v126 = sub_225EF7434;
        v126[1] = v120;

        v126[2] = sub_225EF7434;
        v126[3] = v121;

        v126[4] = sub_225EF7B90;
        v126[5] = v122;

        v126[6] = sub_225EF7434;
        v126[7] = v123;

        v126[8] = sub_225EF7434;
        v126[9] = v124;

        v126[10] = sub_225EF7B90;
        v126[11] = v125;
        sub_225EF5418();

        if (os_log_type_enabled(v127, v128))
        {
          v104 = sub_22609A188();
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v105 = sub_225EF5468(0, v103, v103);
          v106 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v257 = v104;
          v258 = v105;
          v259 = v106;
          sub_225EF54BC(2, &v257);
          sub_225EF54BC(2, &v257);
          v260 = sub_225EF7434;
          v261 = v120;
          sub_225EF73E8(&v260, &v257, &v258, &v259);
          v260 = sub_225EF7434;
          v261 = v121;
          sub_225EF73E8(&v260, &v257, &v258, &v259);
          v260 = sub_225EF7B90;
          v261 = v122;
          sub_225EF73E8(&v260, &v257, &v258, &v259);
          v260 = sub_225EF7434;
          v261 = v123;
          sub_225EF73E8(&v260, &v257, &v258, &v259);
          v260 = sub_225EF7434;
          v261 = v124;
          sub_225EF73E8(&v260, &v257, &v258, &v259);
          v260 = sub_225EF7B90;
          v261 = v125;
          sub_225EF73E8(&v260, &v257, &v258, &v259);
          _os_log_impl(&dword_225EEB000, v127, v128, "Created edited record, asrId: %s, interactionId: %s", v104, 0x16u);
          sub_225EF7AF4(v105, 0, v103);
          sub_225EF7AF4(v106, 2, MEMORY[0x277D84F70] + 8);
          sub_22609A168();
        }

        else
        {
        }

        v101 = *(v249 + 520);
        v102 = *(v249 + 496);
        v100 = *(v249 + 504);
        MEMORY[0x277D82BD8](v127);
        (*(v100 + 8))(v101, v102);
      }
    }
  }

LABEL_81:
  *(v249 + 608) = 0;
  v99 = [objc_opt_self() sharedManager];
  if (!v99)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1765, 0);
  }

  v98 = [*(v249 + 448) language];
  if (v98)
  {
    sub_226099A08();
    v96 = v20;
    MEMORY[0x277D82BD8](v98);
    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  if (v97)
  {
    v94 = sub_2260999F8();

    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  v92 = *(v249 + 448);
  v91 = [v99 isRequestSelectedForSamplingFromConfigForLanguage_];
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v99);
  *(v249 + 656) = v91 & 1;
  v93 = [v92 messagesContext];
  if (v93)
  {
    sub_22601FA78();
    v89 = sub_226099C88();
    MEMORY[0x277D82BD8](v93);
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  *(v249 + 344) = v90;
  if (*(v249 + 344))
  {
    sub_225EFE6E8((v249 + 344));
    v88 = [*(v249 + 448) messagesContext];
    if (v88)
    {
      sub_22601FA78();
      v85 = sub_226099C88();
      MEMORY[0x277D82BD8](v88);
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    if (!v86)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1767, 0);
    }

    *(v249 + 368) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
    sub_22601F9F0();
    v84 = sub_22609A008();

    v87 = v84 ^ 1;
  }

  else
  {
    sub_225EFE6E8((v249 + 344));
    v87 = 0;
  }

  v80 = *(v249 + 448);
  *(v249 + 664) = v87 & 1;
  type metadata accessor for CESABiomeContextualReplayRecord();
  v81 = sub_226098A28();
  v82 = v21;
  v83 = [v80 requestIdentifier];
  if (v83)
  {
    v76 = sub_226099A08();
    v77 = v22;
    MEMORY[0x277D82BD8](v83);
    v78 = v76;
    v79 = v77;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v75 = [*(v249 + 448) dictationUIInteractionIdentifier];
  if (v75)
  {
    v71 = sub_226099A08();
    v72 = v23;
    MEMORY[0x277D82BD8](v75);
    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v70 = [*(v249 + 448) language];
  if (v70)
  {
    v66 = sub_226099A08();
    v67 = v24;
    MEMORY[0x277D82BD8](v70);
    v68 = v66;
    v69 = v67;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if (!v69)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1769, 0);
  }

  v65 = [*(v249 + 448) task];
  if (v65)
  {
    v61 = sub_226099A08();
    v62 = v25;
    MEMORY[0x277D82BD8](v65);
    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (!v64)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1769, 0);
  }

  if ([*(v249 + 448) narrowband])
  {
    v60 = 8000;
  }

  else
  {
    v60 = 16000;
  }

  v57 = *(v249 + 464);
  LOBYTE(v30) = v91;
  HIBYTE(v30) = v87 & 1;
  v54 = sub_226030810(v81, v82, v78, v79, v73, v74, v68, v69, v63, v64, v60, v30);
  *(v249 + 616) = v54;
  *(v249 + 352) = v54;
  type metadata accessor for CESAEvaluationRecord();
  sub_2260998E8();
  v52 = *(v249 + 328);
  MEMORY[0x277D82BE0](v52);
  v53 = *(v249 + 336);

  v56 = sub_225F31E18(v255, v256, v52, v53, v54);
  v55 = (v57 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  *v55 = v56;

  swift_endAccess();
  v58 = (v57 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v59 = *v58;
  *(v249 + 624) = *v58;

  swift_endAccess();
  if (v59)
  {
    *(v249 + 360) = v59;
    v26 = sub_225FFDA78();
    v51 = *v26;
    *(v249 + 632) = *v26;

    return MEMORY[0x2822009F8](sub_225FBF408, v51, 0);
  }

  v49 = *(v249 + 448);
  v48 = (*(v249 + 464) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  *v48 = 0;

  swift_endAccess();
  v50 = [v49 applicationName];
  if (v50)
  {
    v44 = sub_226099A08();
    v45 = v27;
    MEMORY[0x277D82BD8](v50);
    v46 = v44;
    v47 = v45;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  sub_2260998E8();
  v28 = sub_225F7F250();
  v42 = *v28;
  v43 = v28[1];
  sub_2260998E8();
  sub_2260998E8();
  *(v249 + 16) = v46;
  *(v249 + 24) = v47;
  *(v249 + 32) = v42;
  *(v249 + 40) = v43;
  if (*(v249 + 24))
  {
    sub_225F4C5E0((v249 + 16), (v249 + 248));
    if (*(v249 + 40))
    {
      *(v249 + 264) = *(v249 + 248);
      *(v249 + 280) = *(v249 + 32);
      v40 = MEMORY[0x22AA72BD0](*(v249 + 264), *(v249 + 272), *(v249 + 280), *(v249 + 288));
      sub_225EFE6BC(v249 + 280);
      sub_225EFE6BC(v249 + 264);
      sub_225EFE6BC(v249 + 16);
      v41 = v40;
      goto LABEL_132;
    }

    sub_225EFE6BC(v249 + 248);
    goto LABEL_134;
  }

  if (*(v249 + 40))
  {
LABEL_134:
    sub_225F4C1C0(v249 + 16);
    v41 = 0;
    goto LABEL_132;
  }

  sub_225EFE6BC(v249 + 16);
  v41 = 1;
LABEL_132:

  if (v41 & 1) != 0 && (*(v249 + 641))
  {
    v37 = *(v249 + 464);
    v39 = sub_225FFE720(*(v249 + 448));
    v38 = (v37 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
    swift_beginAccess();
    *v38 = v39;

    swift_endAccess();
  }

  v35 = *(v249 + 568);
  v34 = *(v249 + 552);
  v36 = *(v249 + 488);
  v32 = *(v249 + 472);
  v33 = *(v249 + 560);
  v31 = *(v249 + 480);

  sub_225EF5A0C((v249 + 336));
  sub_225EFE834((v249 + 328));

  (*(v31 + 8))(v36, v32);
  (*(v33 + 8))(v35, v34);

  v29 = *(*(v249 + 296) + 8);

  return v29();
}

uint64_t sub_225EF3394()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225EF3BE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_22609A398() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_22609A448();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v10;
    sub_225EEDEC8(v11, sub_225EF3DF4, &v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_225EF3E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_225EF3E94()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x2822009F8](sub_22601D9DC, 0, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_225EF4064()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_225EF41F0()
{
  v6 = *v1;
  v6[14] = *v1;
  v6[31] = v0;

  if (v0)
  {
    v2 = v6[19];
    v3 = sub_225F3A8E0;
  }

  else
  {
    v5 = v6[19];
    (*(v6[28] + 8))(v6[29], v6[27]);
    v2 = v5;
    v3 = sub_225EF4394;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_225EF4394()
{
  v64 = v0;
  v0[14] = v0;
  v52 = v0[31];
  v1 = v0[21];
  v0[12] = v0[20];
  v0[13] = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862E8, &qword_2260A0338);
  sub_226099888();
  swift_endAccess();
  v53 = v0[17];
  if (v53)
  {
    v2 = v51[25];
    v40 = v51[23];
    v42 = v51[21];
    v41 = v51[20];
    v39 = v51[24];
    v51[18] = v53;
    v3 = sub_225EF5354();
    (*(v39 + 16))(v2, v3, v40);
    sub_2260998E8();
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    oslog = sub_226098C48();
    v50 = sub_22609A088();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_225EF7450;
    *(v44 + 24) = v43;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_225EF7B84;
    *(v47 + 24) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v48 = v4;

    *v48 = sub_225EF7434;
    v48[1] = v45;

    v48[2] = sub_225EF7434;
    v48[3] = v46;

    v48[4] = sub_225EF7B90;
    v48[5] = v47;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v50))
    {
      buf = sub_22609A188();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v25 = sub_225EF5468(0, v23, v23);
      v26 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v59 = buf;
      v60 = v25;
      v61 = v26;
      sub_225EF54BC(2, &v59);
      sub_225EF54BC(1, &v59);
      v62 = sub_225EF7434;
      v63 = v45;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      if (v52)
      {
      }

      v62 = sub_225EF7434;
      v63 = v46;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      v62 = sub_225EF7B90;
      v63 = v47;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      _os_log_impl(&dword_225EEB000, oslog, v50, "Writing record with interactionId: %s", buf, 0xCu);
      sub_225EF7AF4(v25, 0, v23);
      sub_225EF7AF4(v26, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v20 = v51[25];
    v21 = v51[23];
    v22 = v51[22];
    v19 = v51[24];
    MEMORY[0x277D82BD8](oslog);
    (*(v19 + 8))(v20, v21);
    v9 = sub_226099DA8();
    (*(*(v9 - 8) + 56))(v22, 1);

    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v53;
    sub_225F3B658(0, 0, v22, &unk_2260A0460, v10, MEMORY[0x277D84F78] + 8);
    sub_225EF7CF8(v22);
  }

  else
  {
    v5 = v51[26];
    v28 = v51[23];
    v30 = v51[21];
    v29 = v51[20];
    v27 = v51[24];
    v6 = sub_225EF5354();
    (*(v27 + 16))(v5, v6, v28);
    sub_2260998E8();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    log = sub_226098C48();
    v38 = sub_22609A098();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_225EF7450;
    *(v32 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_225EF7B84;
    *(v35 + 24) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v36 = v7;

    *v36 = sub_225EF7434;
    v36[1] = v33;

    v36[2] = sub_225EF7434;
    v36[3] = v34;

    v36[4] = sub_225EF7B90;
    v36[5] = v35;
    sub_225EF5418();

    if (os_log_type_enabled(log, v38))
    {
      v16 = sub_22609A188();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v17 = sub_225EF5468(0, v15, v15);
      v18 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v54 = v16;
      v55 = v17;
      v56 = v18;
      sub_225EF54BC(2, &v54);
      sub_225EF54BC(1, &v54);
      v57 = sub_225EF7434;
      v58 = v33;
      sub_225EF73E8(&v57, &v54, &v55, &v56);
      if (v52)
      {
      }

      v57 = sub_225EF7434;
      v58 = v34;
      sub_225EF73E8(&v57, &v54, &v55, &v56);
      v57 = sub_225EF7B90;
      v58 = v35;
      sub_225EF73E8(&v57, &v54, &v55, &v56);
      _os_log_impl(&dword_225EEB000, log, v38, "Record for interactionId %s does not exist or was already removed!", v16, 0xCu);
      sub_225EF7AF4(v17, 0, v15);
      sub_225EF7AF4(v18, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v13 = v51[26];
    v14 = v51[23];
    v12 = v51[24];
    MEMORY[0x277D82BD8](log);
    (*(v12 + 8))(v13, v14);
  }

  v11 = *(v51[14] + 8);

  return v11();
}

uint64_t sub_225EF530C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_225EF5354()
{
  if (qword_280D76808 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76810);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_225EF5468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_22609A188();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225EF54BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:packetRecordedTime:packetReadyUpstreamTime:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = &unk_2260A0BB0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v18 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v28 = &v17 - v18;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v19 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v32 = &v17 - v19;
  v39 = v5;
  v40 = v6;
  v38 = v7;
  v37 = v8;
  v36 = v4;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v20);
  sub_225EF5A38(v25, v21);
  MEMORY[0x277D82BE0](v22);
  MEMORY[0x277D82BE0](v23);
  v9 = swift_allocObject();
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = v9;
  v15 = v25;
  v14[2] = v20;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  v34 = v13;
  v35 = v14;
  sub_226099DD8();
  (*(v26 + 8))(v28, v29);
  return (*(v30 + 8))(v32, v33);
}

uint64_t sub_225EF582C()
{
  MEMORY[0x277D82BD8](v0[2]);
  sub_225EF5990(v0[3], v0[4]);
  MEMORY[0x277D82BD8](v0[5]);
  MEMORY[0x277D82BD8](v0[6]);
  return swift_deallocObject();
}

uint64_t sub_225EF58A0()
{
  v4 = 0;
  sub_225EF3E30(v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__operationEnqueuer, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  return swift_dynamicCast();
}

unint64_t sub_225EF5918()
{
  v2 = qword_280D76310;
  if (!qword_280D76310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF5990(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_225EF5A38(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_225EF5AB4()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x2822009F8](sub_225EF5BCC, 0, 0);
}

uint64_t sub_225EF5BCC()
{
  v0[6] = v0;
  v9 = v0[2];
  v10 = v0[3];
  if (v9)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v9;
    *(v1 + 24) = v10;
    v6 = &unk_2260A0FA0;
    v7 = v1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8[13] = v7;
  if (v6)
  {
    v8[4] = v6;
    v8[5] = v7;

    v5 = (v6 + *v6);
    v2 = swift_task_alloc();
    v3 = v5;
    v8[14] = v2;
    *v2 = v8[6];
    v2[1] = sub_225EF9FB4;
  }

  else
  {
    (*(v8[10] + 8))();

    v3 = *(v8[6] + 8);
  }

  return v3();
}

uint64_t sub_225EF5E84()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_225EF5F64(v5);
}

uint64_t sub_225EF5F64(int *a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return v5();
}

uint64_t sub_225EF6074(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EF6164(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_225EF6164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a6;
  v6[29] = a5;
  v6[28] = a4;
  v6[27] = a3;
  v6[26] = a2;
  v6[21] = v6;
  v6[22] = 0;
  v6[17] = 0;
  v6[18] = 0;
  v6[23] = 0;
  v6[24] = 0;
  v6[19] = 0;
  v6[20] = 0;
  v6[22] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v6[23] = a5;
  v6[24] = a6;
  return MEMORY[0x2822009F8](sub_225EF61E4, 0, 0);
}

uint64_t sub_225EF61E4()
{
  v1 = v0[26];
  v0[21] = v0;
  v35 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v36 = *v35;

  swift_endAccess();
  v0[25] = v36;
  if (v0[25])
  {
    sub_225EF5A0C((v34 + 200));
    v2 = sub_225EF6A9C(*(v34 + 216), *(v34 + 224));
    v32 = v2;
    v33 = v3;
    *(v34 + 248) = v2;
    *(v34 + 256) = v3;
    if ((v3 & 0xF000000000000000) != 0xF000000000000000)
    {
      v30 = *(v34 + 232);
      *(v34 + 152) = v2;
      *(v34 + 160) = v3;
      MEMORY[0x277D82BE0](v30);
      if (v30)
      {
        v26 = *(v34 + 232);
        v27 = [v26 unsignedLongLongValue];
        MEMORY[0x277D82BD8](v26);
        v28 = v27;
        v29 = 0;
      }

      else
      {
        v28 = 0;
        v29 = 1;
      }

      v25 = *(v34 + 240);
      MEMORY[0x277D82BE0](v25);
      if (v25)
      {
        v21 = *(v34 + 240);
        v22 = [v21 unsignedLongLongValue];
        MEMORY[0x277D82BD8](v21);
        v23 = v22;
        v24 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 1;
      }

      v4 = swift_task_alloc();
      *(v34 + 264) = v4;
      *v4 = *(v34 + 168);
      v4[1] = sub_225EF9D04;

      return sub_225EF6EC8(v32, v33, v28, v29 & 1, v23, v24 & 1);
    }
  }

  else
  {
    sub_225EF5A0C((v34 + 200));
    v31 = *(v34 + 232);
    sub_225EF5A38(*(v34 + 216), *(v34 + 224));
    MEMORY[0x277D82BE0](v31);
    if (v31)
    {
      v17 = *(v34 + 232);
      v18 = [v17 unsignedLongLongValue];
      MEMORY[0x277D82BD8](v17);
      v19 = v18;
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }

    v16 = *(v34 + 240);
    MEMORY[0x277D82BE0](v16);
    if (v16)
    {
      v12 = *(v34 + 240);
      v13 = [v12 unsignedLongLongValue];
      MEMORY[0x277D82BD8](v12);
      v14 = v13;
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    v10 = *(v34 + 224);
    v9 = *(v34 + 216);
    *(v34 + 16) = v9;
    *(v34 + 24) = v10;
    *(v34 + 32) = v19;
    *(v34 + 40) = v20 & 1;
    *(v34 + 48) = v14;
    *(v34 + 56) = v15 & 1;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A80, &qword_2260A0AB0);
    sub_226099CE8();
    swift_endAccess();
    v11 = MEMORY[0x22AA71AA0](v9, v10);
    if (v11 < 0)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
    }

    v8 = (*(v34 + 208) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
    result = swift_beginAccess();
    if (__CFADD__(*v8, v11))
    {
      __break(1u);
      return result;
    }

    *v8 += v11;
    swift_endAccess();
  }

  v7 = *(*(v34 + 168) + 8);

  return v7();
}

uint64_t sub_225EF6A9C(uint64_t a1, unint64_t a2)
{
  v30 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
  swift_beginAccess();
  v31 = *v30;
  swift_endAccess();
  if (v31 <= 0.0)
  {
    sub_225EF5A38(a1, a2);
    return a1;
  }

  else
  {
    v18 = objc_opt_self();
    sub_225EF5A38(a1, a2);
    v20 = sub_226098968();
    sub_225EF5990(a1, a2);
    v17 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
    swift_beginAccess();
    v19 = *v17;
    swift_endAccess();
    [v18 audioDurationInMs:v20 samplingRate:v19];
    v22 = v3;
    MEMORY[0x277D82BD8](v20);
    v21 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    v23 = *v21;
    swift_endAccess();
    v24 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    *v24 = v23 - v22;
    swift_endAccess();
    v25 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    v26 = *v25;
    swift_endAccess();
    if (v26 >= 0.0)
    {
      return 0;
    }

    else
    {
      v11 = objc_opt_self();
      v8 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
      swift_beginAccess();
      __x = *v8;
      swift_endAccess();
      v12 = fabs(__x);
      v10 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
      swift_beginAccess();
      v13 = *v10;
      swift_endAccess();
      v32 = [v11 audioLengthInBytes:v13 samplingRate:v12];
      v14 = objc_opt_self();
      sub_225EF5A38(a1, a2);
      v15 = sub_226098968();
      sub_225EF5990(a1, a2);
      v16 = [v14 audioData:v15 withBytesFromEnd:v32];
      MEMORY[0x277D82BD8](v15);
      if (!v16)
      {
        return 0;
      }

      v6 = sub_226098978();
      MEMORY[0x277D82BD8](v16);
      return v6;
    }
  }
}

uint64_t sub_225EF6EC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 136) = v6;
  *(v7 + 66) = a6;
  *(v7 + 128) = a5;
  *(v7 + 65) = a4;
  *(v7 + 120) = a3;
  *(v7 + 112) = a2;
  *(v7 + 104) = a1;
  *(v7 + 88) = v7;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 96) = 0;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4 & 1;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6 & 1;
  *(v7 + 96) = v6;
  return MEMORY[0x2822009F8](sub_225EF7DB4, 0, 0);
}

uint64_t sub_225EF6F6C(void *a1)
{
  v8 = [a1 task];
  if (v8)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1726, 0);
  __break(1u);
  return v3;
}

uint64_t sub_225EF7114@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_225EF715C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_225EF7370();
  v5 = MEMORY[0x277D849A8];

  return sub_225EF3BE0(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_225EF71D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_225EF9438();
  v5 = MEMORY[0x277D83B88];

  return sub_225EF3BE0(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_225EF7244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_225EF5918();
  v5 = MEMORY[0x277D84CC0];

  return sub_225EF3BE0(a1, a2, a3, v9, v10, v5, v4);
}

char *sub_225EF72E8()
{
  if (qword_280D76D78 != -1)
  {
    swift_once();
  }

  return &byte_280D77721;
}

unint64_t sub_225EF7370()
{
  v2 = qword_280D76330;
  if (!qword_280D76330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76330);
    return WitnessTable;
  }

  return v2;
}

_BYTE **sub_225EF743C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_225EF745C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_225EF7598(v4, v5, a3);
  v8 = *a1;

  sub_22609A1B8();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_225EF7598(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2260998E8();
  v14 = sub_225EF773C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_225EF3E30(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_225EF3E30(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *sub_225EF773C(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 159, 0);
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_225F3016C(v22, v17, v16);
        sub_22609A1C8();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_225F302E8(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_22609A2C8();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StringTesting.swift", 25, 2, 173, 0);
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_225EF7AF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_22609A178();
    return sub_22609A168();
  }

  return result;
}

void *sub_225EF7BD0(const void *a1, void *a2)
{
  v6 = sub_226099DA8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225EF7CF8(uint64_t a1)
{
  v3 = sub_226099DA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225EF7DB4()
{
  v13 = *(v0 + 136);
  v1 = *(v0 + 66);
  v2 = *(v0 + 128);
  v3 = *(v0 + 65);
  v4 = *(v0 + 120);
  v5 = *(v0 + 112);
  v12 = v5;
  v6 = *(v0 + 104);
  v11 = v6;
  *(v0 + 88) = v0;
  sub_225EF8260(v6, v5, v4, v3 & 1, v2, v1 & 1);
  sub_225EF9914(v11, v12);
  v14 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord;
  v15 = (v13 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  if (*v15)
  {
    v9 = *(v13 + v14);
    *(v10 + 144) = v9;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_225EF9BD0, v9, 0);
  }

  else
  {
    swift_endAccess();
    v7 = *(*(v10 + 88) + 8);

    return v7();
  }
}

unint64_t type metadata accessor for AVAudioCommonFormat(uint64_t a1)
{
  v5 = qword_280D764A8;
  if (!qword_280D764A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D764A8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_225EF7FF8()
{
  v2 = qword_280D764B8;
  if (!qword_280D764B8)
  {
    type metadata accessor for AVAudioCommonFormat(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D764B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF8078(uint64_t a1, uint64_t (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

unint64_t sub_225EF81C4()
{
  v2 = qword_280D766E8;
  if (!qword_280D766E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF8260(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v116 = a6;
  v115 = a5;
  v114 = a4;
  v113 = a3;
  v112 = a2;
  v118 = a1;
  v117 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v147 = 0;
  v92 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v93 = a4;
  v94 = a6;
  v95 = sub_226098C58();
  v96 = *(v95 - 8);
  v97 = v96;
  v100 = *(v96 + 64);
  MEMORY[0x28223BE20](0);
  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = &v44 - v102;
  MEMORY[0x28223BE20](v7);
  v99 = &v44 - v102;
  MEMORY[0x28223BE20](v8);
  v101 = &v44 - v102;
  MEMORY[0x28223BE20](v9);
  v103 = &v44 - v102;
  v10 = sub_2260990A8();
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105 - 8);
  v109 = &v44 - v108;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v110 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - 8);
  v111 = &v44 - v110;
  v119 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B70, &qword_2260A0C18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118);
  v120 = &v44 - v119;
  v154 = v13;
  v155 = v14;
  v152 = v15;
  v153 = v16 & 1;
  v150 = v17;
  v151 = v18 & 1;
  v149 = v6;
  v121 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  v123 = &v148;
  swift_beginAccess();
  v124 = *v121;
  v122 = v124;
  v19 = v124;
  swift_endAccess();
  if (!v124)
  {
    goto LABEL_34;
  }

  v91 = v122;
  v89 = v122;
  v147 = v122;
  v146[2] = [v122 commonFormat];
  v146[1] = 3;
  v90 = type metadata accessor for AVAudioCommonFormat(0);
  sub_225EF7FF8();
  v20 = sub_22609A508();
  if ((v20 & 1) == 0)
  {

LABEL_34:
    v41 = v98;
    v42 = sub_225F7E9BC();
    (*(v97 + 16))(v41, v42, v95);
    sub_225F7EBDC(sub_225FF58F8, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 1496);
    __break(1u);
    return v66;
  }

  if (MEMORY[0x22AA71AA0](v118, v112) < 1)
  {
    goto LABEL_27;
  }

  v21 = v92;
  v22 = [v89 streamDescription];
  v23 = *v22;
  v24 = v22[1];
  v142 = *(v22 + 4);
  v141 = v24;
  v140 = v23;
  v138 = v142;
  v137[1] = v24;
  v137[0] = v23;
  v87 = 0;
  v25 = type metadata accessor for AudioStreamBasicDescription(0);
  sub_225EF8078(v137, sub_225EF823C, v87, v25, MEMORY[0x277D84A98], MEMORY[0x277D84CC0], MEMORY[0x277D84AC0], v26);
  v88 = v21;
  if (!v21)
  {
    v85 = v139;
    v136 = v139;
    v86 = MEMORY[0x22AA71AA0](v118, v112);
    if (v86 < 0)
    {
      sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
      __break(1u);
    }

    if (v86 <= 0xFFFFFFFFLL)
    {
      v84 = v86;
      if (v85)
      {
LABEL_13:
        v83 = v84 / v85;
        v135 = v84 / v85;
        sub_225EF9338();
        v27 = v89;
        v82 = sub_225EF939C(v89, v83);
        if (v82)
        {
          v81 = v82;
          v74 = v82;
          v134 = v82;
          v78 = [v82 int16ChannelData];
          v28 = v74;
          v75 = [v74 format];

          v76 = [v75 channelCount];
          v77 = v76;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B78, &qword_2260A0C20);
          v132 = sub_2260999E8();
          v133 = v29;
          v130 = v132;
          v131 = v29;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786B80, &qword_2260A0C28);
          sub_225EF9528();
          sub_226099FE8();
          v80 = v129;
          if (v129)
          {
            v73 = v80;
            v70 = v80;
            v128 = v80;
            [v74 frameCapacity];
            v71 = MEMORY[0x277D84958];
            v126 = sub_22609A1A8();
            v127 = v30;
            v72 = sub_2260989A8();
            v125 = v72;
            if (v72 < 0)
            {
              sub_22609A3B8("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
              __break(1u);
            }

            if (v72 <= 0xFFFFFFFFLL)
            {
              v69 = v72;
              if (v85)
              {
LABEL_21:
                [v74 setFrameLength_];
                sub_225EF95B0(v111);
                if ((*(v107 + 48))(v111, 1, v105) == 0)
                {
                  (*(v107 + 16))(v109, v111, v105);
                  sub_225EF97AC(v111);
                  v31 = v74;
                  v67 = 1;
                  sub_226099088();
                  sub_226099DD8();
                  (*(v107 + 8))(v109, v105);
                  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
                  (*(*(v32 - 8) + 56))(v120, 0, v67);
                }

                else
                {
                  sub_225EF97AC(v111);
                  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
                  (*(*(v33 - 8) + 56))(v120, 1);
                }

                sub_225EF9860(v120);

                return v88;
              }
            }

            else
            {
              sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
              __break(1u);
            }

            sub_22609A3B8("Fatal error", 11, 2, "Division by zero", 16, 2, "Swift/IntegerTypes.swift", 24, 2, 4201, 0);
            __break(1u);
            goto LABEL_21;
          }

          v34 = v103;
          v35 = sub_225F7E9BC();
          (*(v97 + 16))(v34, v35, v95);
          sub_225F7EBDC(sub_225FF5928, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 1511);
          __break(1u);
        }

        v36 = v101;
        v37 = sub_225F7E9BC();
        (*(v97 + 16))(v36, v37, v95);
        sub_225F7EBDC(sub_225FCAE78, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 1507);
        __break(1u);
LABEL_27:
        v38 = v99;
        v39 = sub_225F7E9BC();
        (*(v97 + 16))(v38, v39, v95);
        v64 = sub_226098C48();
        v61 = v64;
        v63 = sub_22609A088();
        v62 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v65 = sub_22609A4F8();
        if (os_log_type_enabled(v64, v63))
        {
          v40 = v92;
          v52 = sub_22609A188();
          v48 = v52;
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v50 = 0;
          v53 = sub_225EF5468(0, v49, v49);
          v51 = v53;
          v54 = sub_225EF5468(v50, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v146[0] = v52;
          v145 = v53;
          v144 = v54;
          v55 = 0;
          v56 = v146;
          sub_225EF54BC(0, v146);
          sub_225EF54BC(v55, v56);
          v143 = v65;
          v57 = &v44;
          MEMORY[0x28223BE20](&v44);
          v58 = &v44 - 6;
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v60 = v40;
          if (v40)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v61, v62, "No audio data", v48, 2u);
            v46 = 0;
            sub_225EF7AF4(v51, 0, v49);
            sub_225EF7AF4(v54, v46, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v47 = v60;
          }
        }

        else
        {

          v47 = v92;
        }

        v45 = v47;

        (*(v97 + 8))(v99, v95);
        return v45;
      }
    }

    else
    {
      sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
      __break(1u);
    }

    sub_22609A3B8("Fatal error", 11, 2, "Division by zero", 16, 2, "Swift/IntegerTypes.swift", 24, 2, 4201, 0);
    __break(1u);
    goto LABEL_13;
  }

  result = 0;
  __break(1u);
  return result;
}

unint64_t type metadata accessor for AudioStreamBasicDescription(uint64_t a1)
{
  v5 = qword_280D76410;
  if (!qword_280D76410)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76410);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_225EF92C0()
{
  v2 = qword_280D76320;
  if (!qword_280D76320)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225EF9338()
{
  v2 = qword_280D764F0;
  if (!qword_280D764F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764F0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_225EF93E4(uint64_t a1)
{
  v4 = [v1 initWithPCMFormat_frameCapacity_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

unint64_t sub_225EF9438()
{
  v2 = qword_280D766E0;
  if (!qword_280D766E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225EF94B0()
{
  v2 = qword_280D766F8;
  if (!qword_280D766F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225EF9528()
{
  v2 = qword_280D76688;
  if (!qword_280D76688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786B80, &qword_2260A0C28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF95B0@<X0>(uint64_t a1@<X8>)
{
  v9 = 0;
  v6 = v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  swift_beginAccess();
  sub_225EF9700(v6, v7);
  swift_endAccess();
  if (v7[3])
  {
    sub_225EF9790(v7, v8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
    swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    sub_225F186BC(v7);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
    return (*(*(v3 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_225EF9700(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

__n128 sub_225EF9790(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_225EF97AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225EF9860(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225EF9914(uint64_t a1, unint64_t a2)
{
  v8 = objc_opt_self();
  sub_225EF5A38(a1, a2);
  v10 = sub_226098968();
  sub_225EF5990(a1, a2);
  v7 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  v9 = *v7;
  swift_endAccess();
  [v8 audioDurationInMs:v10 samplingRate:v9];
  v12 = v3;
  MEMORY[0x277D82BD8](v10);
  v11 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  v13 = *v11;
  swift_endAccess();
  v14 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  *v14 = v13 + v12;
  return swift_endAccess();
}

uint64_t sub_225EF9A9C(uint64_t a1, unint64_t a2)
{
  v9 = *(v2 + 128);
  MEMORY[0x277D82BE0](v9);
  if (v9)
  {
    sub_225EF5A38(a1, a2);
    v5 = sub_226098968();
    sub_225EF5990(a1, a2);
    [v9 addAudioPacket_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v9);
  }

  v4 = *(v8 + 152);

  if (v4)
  {
    sub_225EF9C8C(a1, a2);
  }

  return result;
}

uint64_t sub_225EF9BD0()
{
  v1 = v0[14];
  v2 = v0[13];
  v0[11] = v0;
  sub_225EF9A9C(v2, v1);

  v3 = *(v0[11] + 8);

  return v3();
}

uint64_t sub_225EF9C8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_226098998();
  return swift_endAccess();
}

uint64_t sub_225EF9D04()
{
  *(*v0 + 168) = *v0;

  return MEMORY[0x2822009F8](sub_225EF9E1C, 0, 0);
}

uint64_t sub_225EF9E1C()
{
  v1 = v0[32];
  v2 = v0[31];
  v0[21] = v0;
  sub_225EF5990(v2, v1);
  v3 = *(v0[21] + 8);

  return v3();
}

uint64_t sub_225EF9EDC()
{
  *(v0 + 48) = v0;

  v1 = swift_task_alloc();
  v4[12] = v1;
  *v1 = v4[6];
  v1[1] = sub_225EF5AB4;
  v2 = v4[9];

  return MEMORY[0x2822003E8](v4 + 2, 0, 0, v2);
}

uint64_t sub_225EF9FB4()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x2822009F8](sub_225EF9EDC, 0, 0);
}

uint64_t sub_225EFA0DC(const void *a1, char a2, char a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2 & 1;
  v10 = a3 & 1;
  v9[4] = a4 + 16;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x277D82BE0](v9[0]);
    sub_225EFE834(v9);
    swift_endAccess();
    sub_225EFA1E8(a1, a2 & 1, a3 & 1);
    return MEMORY[0x277D82BD8](v5);
  }

  else
  {
    sub_225EFE834(v9);
    return swift_endAccess();
  }
}

uint64_t sub_225EFA1E8(const void *a1, int a2, int a3)
{
  v16 = a1;
  v15 = a2;
  v17 = a3;
  v19 = &unk_2260A0A88;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v23 = &v13 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v27 = &v13 - v14;
  v34 = v4;
  v33 = v5 & 1;
  v32 = v6 & 1;
  v31 = v3;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v18);
  v7 = swift_allocObject();
  v8 = v16;
  v20 = v7;
  *(v7 + 16) = v15;
  memcpy((v7 + 20), v8, 0x30uLL);
  v9 = v18;
  v10 = v19;
  v11 = v20;
  *(v20 + 68) = v17;
  *(v11 + 72) = v9;
  v29 = v10;
  v30 = v11;
  sub_226099DD8();
  (*(v21 + 8))(v23, v24);
  return (*(v25 + 8))(v27, v28);
}

uint64_t sub_225EFA484(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 68);
  v8 = *(v1 + 72);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFA568(a1, v6 & 1, v1 + 20, v7 & 1, v8);
}

uint64_t sub_225EFA568(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a5;
  *(v5 + 130) = a4 & 1;
  *(v5 + 88) = a3;
  *(v5 + 129) = a2 & 1;
  *(v5 + 64) = v5;
  *(v5 + 128) = 0;
  *(v5 + 72) = 0;
  *(v5 + 136) = 0;
  *(v5 + 80) = 0;
  v6 = sub_226098C58();
  *(v5 + 104) = v6;
  *(v5 + 112) = *(v6 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = a2 & 1;
  *(v5 + 72) = a3;
  *(v5 + 136) = a4 & 1;
  *(v5 + 80) = a5;

  return MEMORY[0x2822009F8](sub_225EFA6EC, 0, 0);
}

uint64_t sub_225EFA6EC(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 129);
  *(v1 + 64) = v1;
  if (v2)
  {
    v3 = *(v34 + 120);
    v24 = *(v34 + 104);
    __src = *(v34 + 88);
    v23 = *(v34 + 112);
    v4 = sub_225F7E9BC();
    (*(v23 + 16))(v3, v4, v24);
    v26 = swift_allocObject();
    memcpy((v26 + 16), __src, 0x30uLL);
    v32 = sub_226098C48();
    v33 = sub_22609A078();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_226024740;
    *(v27 + 24) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_226021B74;
    *(v30 + 24) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v31 = v5;

    *v31 = sub_225EF7434;
    v31[1] = v28;

    v31[2] = sub_225EF7434;
    v31[3] = v29;

    v31[4] = sub_226021BEC;
    v31[5] = v30;
    sub_225EF5418();

    if (os_log_type_enabled(v32, v33))
    {
      buf = sub_22609A188();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v21 = sub_225EF5468(0, v19, v19);
      v22 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v35 = buf;
      v36 = v21;
      v37 = v22;
      sub_225EF54BC(0, &v35);
      sub_225EF54BC(1, &v35);
      v38 = sub_225EF7434;
      v39 = v28;
      sub_225EF73E8(&v38, &v35, &v36, &v37);
      v38 = sub_225EF7434;
      v39 = v29;
      sub_225EF73E8(&v38, &v35, &v36, &v37);
      v38 = sub_226021BEC;
      v39 = v30;
      sub_225EF73E8(&v38, &v35, &v36, &v37);
      _os_log_impl(&dword_225EEB000, v32, v33, "Volatile range changed, finalized through %f", buf, 0xCu);
      sub_225EF7AF4(v21, 0, v19);
      sub_225EF7AF4(v22, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v17 = *(v34 + 120);
    v18 = *(v34 + 104);
    v16 = *(v34 + 112);
    MEMORY[0x277D82BD8](v32);
    (*(v16 + 8))(v17, v18);
  }

  if (*(v34 + 130))
  {
    v14 = *(v34 + 96);
    sub_22609A068();
    sub_22609A0F8();
    v13 = v6;
    v12 = &v14[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration];
    swift_beginAccess();
    *v12 = v13;
    swift_endAccess();
    v15 = [v14 delegate];
    if (v15)
    {
      v11 = *(v34 + 96);
      swift_getObjectType();
      MEMORY[0x277D82BE0](v11);
      v9 = (v11 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
      swift_beginAccess();
      v10 = *v9;
      swift_endAccess();
      [v15 localSpeechRecognizer:v11 didProcessAudioDuration:v10];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  v7 = *(*(v34 + 64) + 8);

  return v7();
}

uint64_t sub_225EFB0DC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_225EFB208(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFB2FC(a1, v6);
}

uint64_t sub_225EFB2FC(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225EFB0DC;

  return v6(a1);
}

uint64_t sub_225EFB410(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFB4E8(a1, v6, v7, v8);
}

uint64_t sub_225EFB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  return MEMORY[0x2822009F8](sub_225EFB520, a4, 0);
}

uint64_t sub_225EFB520()
{
  *(v0 + 16) = v0;
  sub_225EFB5AC();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_225EFB5AC()
{
  v118 = sub_225EF7450;
  v119 = sub_225EF7B84;
  v120 = sub_225F3E198;
  v121 = sub_225F3E1C8;
  v122 = sub_225EF7434;
  v123 = sub_225EF7434;
  v124 = sub_225EF7B90;
  v125 = sub_225EF7434;
  v126 = sub_225EF7434;
  v127 = sub_225F3E358;
  v128 = sub_225EF7450;
  v129 = sub_225EF7B84;
  v130 = sub_225EF7434;
  v131 = sub_225EF7434;
  v132 = sub_225EF7B90;
  v159 = 0;
  v157 = 0;
  v158 = 0;
  v156 = 0;
  v155 = 0;
  v133 = 0;
  v149 = 0;
  v134 = sub_226098C58();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134);
  v138 = v49 - v137;
  v139 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49 - v137);
  v140 = v49 - v139;
  v159 = v0;
  v141 = v0[14];
  v142 = v0[15];
  sub_2260998E8();
  v157 = v141;
  v158 = v142;
  v143 = v0[16];
  MEMORY[0x277D82BE0](v143);
  if (v143)
  {
    v116 = v143;
    v2 = v140;
    v95 = v143;
    v149 = v143;
    v3 = sub_225F31B9C();
    (*(v135 + 16))(v2, v3, v134);
    sub_2260998E8();
    v100 = 32;
    v101 = 7;
    v4 = swift_allocObject();
    v5 = v142;
    v6 = v4;
    v7 = v95;
    v96 = v6;
    *(v6 + 16) = v141;
    *(v6 + 24) = v5;
    MEMORY[0x277D82BE0](v7);
    v102 = swift_allocObject();
    *(v102 + 16) = v95;
    v113 = sub_226098C48();
    v114 = sub_22609A078();
    v98 = 17;
    v104 = swift_allocObject();
    *(v104 + 16) = 32;
    v105 = swift_allocObject();
    v99 = 8;
    *(v105 + 16) = 8;
    v8 = swift_allocObject();
    v9 = v96;
    v97 = v8;
    *(v8 + 16) = v118;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v97;
    v106 = v10;
    *(v10 + 16) = v119;
    *(v10 + 24) = v11;
    v107 = swift_allocObject();
    *(v107 + 16) = 64;
    v108 = swift_allocObject();
    *(v108 + 16) = v99;
    v12 = swift_allocObject();
    v13 = v102;
    v103 = v12;
    *(v12 + 16) = v120;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v103;
    v110 = v14;
    *(v14 + 16) = v121;
    *(v14 + 24) = v15;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v109 = sub_22609A4F8();
    v111 = v16;

    v17 = v104;
    v18 = v111;
    *v111 = v122;
    v18[1] = v17;

    v19 = v105;
    v20 = v111;
    v111[2] = v123;
    v20[3] = v19;

    v21 = v106;
    v22 = v111;
    v111[4] = v124;
    v22[5] = v21;

    v23 = v107;
    v24 = v111;
    v111[6] = v125;
    v24[7] = v23;

    v25 = v108;
    v26 = v111;
    v111[8] = v126;
    v26[9] = v25;

    v27 = v110;
    v28 = v111;
    v111[10] = v127;
    v28[11] = v27;
    sub_225EF5418();

    if (os_log_type_enabled(v113, v114))
    {
      v29 = v133;
      v87 = sub_22609A188();
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v86 = 1;
      v88 = sub_225EF5468(1, v85, v85);
      v89 = sub_225EF5468(v86, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v91 = &v148;
      v148 = v87;
      v92 = &v147;
      v147 = v88;
      v93 = &v146;
      v146 = v89;
      v90 = 2;
      sub_225EF54BC(2, &v148);
      sub_225EF54BC(v90, v91);
      v144 = v122;
      v145 = v104;
      sub_225EF73E8(&v144, v91, v92, v93);
      v94 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v144 = v123;
        v145 = v105;
        sub_225EF73E8(&v144, &v148, &v147, &v146);
        v83 = 0;
        v144 = v124;
        v145 = v106;
        sub_225EF73E8(&v144, &v148, &v147, &v146);
        v82 = 0;
        v144 = v125;
        v145 = v107;
        sub_225EF73E8(&v144, &v148, &v147, &v146);
        v81 = 0;
        v144 = v126;
        v145 = v108;
        sub_225EF73E8(&v144, &v148, &v147, &v146);
        v80 = 0;
        v144 = v127;
        v145 = v110;
        sub_225EF73E8(&v144, &v148, &v147, &v146);
        v79 = 0;
        _os_log_impl(&dword_225EEB000, v113, v114, "Writing DES record after 30 seconds delay: interactionId=%s,\nrecord=%@", v87, 0x16u);
        v78 = 1;
        sub_225EF7AF4(v88, 1, v85);
        sub_225EF7AF4(v89, v78, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v84 = v79;
      }
    }

    else
    {
      v30 = v133;

      v84 = v30;
    }

    v77 = v84;
    MEMORY[0x277D82BD8](v113);
    (*(v135 + 8))(v140, v134);
    type metadata accessor for CoreEmbeddedSpeechAnalyzer();
    v31 = sub_225F7E648();
    sub_225F341D0(v95, v31 & 1);
    MEMORY[0x277D82BD8](v95);
    v115 = v77;
  }

  else
  {
    v115 = v133;
  }

  v75 = v115;
  v76 = *(v117 + 136);

  if (v76)
  {
    v74 = v76;
    v32 = v138;
    v60 = v76;
    v155 = v76;
    v33 = sub_225EF5354();
    (*(v135 + 16))(v32, v33, v134);
    sub_2260998E8();
    v62 = 32;
    v63 = 7;
    v34 = swift_allocObject();
    v35 = v142;
    v64 = v34;
    *(v34 + 16) = v141;
    *(v34 + 24) = v35;
    v72 = sub_226098C48();
    v73 = sub_22609A088();
    v61 = 17;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v36 = swift_allocObject();
    v37 = v64;
    v65 = v36;
    *(v36 + 16) = v128;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v65;
    v69 = v38;
    *(v38 + 16) = v129;
    *(v38 + 24) = v39;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v68 = sub_22609A4F8();
    v70 = v40;

    v41 = v66;
    v42 = v70;
    *v70 = v130;
    v42[1] = v41;

    v43 = v67;
    v44 = v70;
    v70[2] = v131;
    v44[3] = v43;

    v45 = v69;
    v46 = v70;
    v70[4] = v132;
    v46[5] = v45;
    sub_225EF5418();

    if (os_log_type_enabled(v72, v73))
    {
      v47 = v75;
      v53 = sub_22609A188();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v54 = sub_225EF5468(0, v52, v52);
      v55 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v56 = &v154;
      v154 = v53;
      v57 = &v153;
      v153 = v54;
      v58 = &v152;
      v152 = v55;
      sub_225EF54BC(2, &v154);
      sub_225EF54BC(1, v56);
      v150 = v130;
      v151 = v66;
      sub_225EF73E8(&v150, v56, v57, v58);
      v59 = v47;
      if (v47)
      {

        __break(1u);
      }

      else
      {
        v150 = v131;
        v151 = v67;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        v51 = 0;
        v150 = v132;
        v151 = v69;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        _os_log_impl(&dword_225EEB000, v72, v73, "Send edit event to Biome after 30 seconds delay, interactionId=%s", v53, 0xCu);
        sub_225EF7AF4(v54, 0, v52);
        sub_225EF7AF4(v55, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v72);
    (*(v135 + 8))(v138, v134);
    sub_2260327EC();
  }

  v50 = *(v117 + 152);

  if (v50)
  {
    v49[2] = v50;
    v49[1] = v50;
    v156 = v50;
    sub_225EFCB94();
  }
}

uint64_t sub_225EFCB94()
{
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v89 = 0;
  v80 = 0;
  v81 = sub_226098C58();
  v82 = *(v81 - 8);
  v83 = v82;
  MEMORY[0x28223BE20](v81 - 8);
  v84 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v0;
  if ((sub_225EFD714() & 1) == 0)
  {
    return v80;
  }

  v34 = BiomeLibrary();
  swift_getObjectType();
  v33 = [v34 Siri];
  swift_getObjectType();
  v31 = [v33 ASR];
  swift_getObjectType();
  v32 = [v31 ContextualReplayRecord];
  v98 = v32;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v75 = 0;
  sub_226039384();
  v35 = v79[4];
  v36 = v79[5];
  sub_2260998E8();
  v37 = v79[2];
  v38 = v79[3];
  sub_2260998E8();
  v39 = v79[6];
  v40 = v79[7];
  sub_2260998E8();
  v49 = sub_226037D2C(v35, v36, v37, v38, v39, v40);
  v41 = v49;
  v97 = v49;
  v42 = sub_2260393E8();
  v50 = v79[10];
  v44 = v79[11];
  sub_2260998E8();
  v45 = v79[8];
  v46 = v79[9];
  sub_2260998E8();
  sub_225F27014();
  v47 = sub_225F27F74(v79[12]);
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v51 = &v11;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v11);
  v48 = &v11 - v43;
  sub_2260989E8();
  v3 = sub_226098A08();
  (*(*(v3 - 8) + 56))(v48, 0, 1);
  v4 = v49;
  v64 = sub_226037D94(v50, v44, v45, v46, v47, v48, v49);
  v52 = v64;
  v96 = v64;
  sub_22603944C();
  v5 = v64;
  v58 = 32;
  v53 = &v95;
  swift_beginAccess();
  v65 = v79[13];
  v66 = v79[14];
  sub_225EF5A38(v65, v66);
  swift_endAccess();
  v54 = &v94;
  swift_beginAccess();
  v67 = v79[17];
  v68 = v79[18];
  sub_2260998E8();
  swift_endAccess();
  v55 = &v93;
  swift_beginAccess();
  v69 = v79[19];
  v70 = v79[20];
  sub_2260998E8();
  swift_endAccess();
  v56 = &v92;
  swift_beginAccess();
  v71 = v79[15];
  v63 = v79[16];
  sub_225EF5A38(v71, v63);
  swift_endAccess();
  v57 = &v91;
  swift_beginAccess();
  v62 = v79[21];
  sub_2260998E8();
  swift_endAccess();
  v59 = &v90;
  swift_beginAccess();
  v61 = v79[22];
  v60 = v79[23];
  sub_2260998E8();
  swift_endAccess();
  v6 = sub_226037E04(v64, v65, v66, v67, v68, v69, v70, v71, v63, v62, v61, v60);
  v7 = v84;
  v72 = v6;
  v89 = v6;
  v8 = sub_225EFE52C();
  (*(v83 + 16))(v7, v8, v81);
  v77 = sub_226098C48();
  v73 = v77;
  v76 = sub_22609A088();
  v74 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v78 = sub_22609A4F8();
  if (os_log_type_enabled(v77, v76))
  {
    v9 = v80;
    v22 = sub_22609A188();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v20 = 0;
    v23 = sub_225EF5468(0, v19, v19);
    v21 = v23;
    v24 = sub_225EF5468(v20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v88 = v22;
    v87 = v23;
    v86 = v24;
    v25 = 0;
    v26 = &v88;
    sub_225EF54BC(0, &v88);
    sub_225EF54BC(v25, v26);
    v85 = v78;
    v27 = &v11;
    MEMORY[0x28223BE20](&v11);
    v28 = &v11 - 6;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v30 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v73, v74, "Writing CESABiomeContextualReplayRecord as BMASRContextualReplayRecord", v18, 2u);
      v16 = 0;
      sub_225EF7AF4(v21, 0, v19);
      sub_225EF7AF4(v24, v16, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v17 = v30;
    }
  }

  else
  {

    v17 = v80;
  }

  v14 = v17;

  (*(v83 + 8))(v84, v81);
  v11 = [v32 source];
  [v11 sendEvent_];

  type metadata accessor for CESASelfHelper();
  v12 = v79[2];
  v13 = v79[3];
  sub_2260998E8();
  sub_226040104(v12, v13);

  return v14;
}

uint64_t sub_225EFD714()
{
  v111 = 0;
  v110 = 0;
  v92 = 0;
  v93 = sub_226098C58();
  v94 = *(v93 - 8);
  v95 = v94;
  v96 = *(v94 + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v24 - v98;
  MEMORY[0x28223BE20](&v24 - v98);
  v99 = &v24 - v98;
  v111 = v0;
  v1 = AFIsInternalInstall();
  v110 = v1;
  if (v1)
  {
    v101 = _AFPreferencesSiriDataSharingOptInStatus();
    v100 = 1;
    v89 = type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_225EFE4AC();
    v90 = sub_22609A508();
  }

  else
  {
    v90 = 0;
  }

  if (v90)
  {
    v85 = sub_225F27078();
    v86 = *(v91 + 80);
    v87 = *(v91 + 88);
    sub_2260998E8();
    v88 = sub_225F2B070(v86, v87);

    if (v88)
    {
      v83 = sub_226036A50();
      v84 = v92;
    }

    else
    {
      v80 = *(v91 + 80);
      v81 = *(v91 + 88);
      sub_2260998E8();
      v82 = sub_225F2B178(v80, v81);

      if (v82)
      {
        v83 = sub_226037644();
        v84 = v92;
      }

      else
      {
        v2 = v99;
        v3 = sub_225EFE52C();
        (*(v95 + 16))(v2, v3, v93);

        v79 = sub_226098C48();
        v62 = v79;
        v78 = sub_22609A088();
        v63 = v78;
        v64 = 17;
        v69 = 7;
        v72 = swift_allocObject();
        v65 = v72;
        v66 = 32;
        *(v72 + 16) = 32;
        v4 = swift_allocObject();
        v5 = v66;
        v73 = v4;
        v67 = v4;
        *(v4 + 16) = 8;
        v68 = v5;
        v6 = swift_allocObject();
        v7 = v91;
        v70 = v6;
        *(v6 + 16) = sub_22603937C;
        *(v6 + 24) = v7;
        v8 = swift_allocObject();
        v9 = v70;
        v76 = v8;
        v71 = v8;
        *(v8 + 16) = sub_225EF7B84;
        *(v8 + 24) = v9;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v74 = sub_22609A4F8();
        v75 = v10;

        v11 = v72;
        v12 = v75;
        *v75 = sub_225EF7434;
        v12[1] = v11;

        v13 = v73;
        v14 = v75;
        v75[2] = sub_225EF7434;
        v14[3] = v13;

        v15 = v75;
        v16 = v76;
        v75[4] = sub_225EF7B90;
        v15[5] = v16;
        sub_225EF5418();

        if (os_log_type_enabled(v79, v78))
        {
          v17 = v92;
          v55 = sub_22609A188();
          v52 = v55;
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v56 = sub_225EF5468(0, v53, v53);
          v54 = v56;
          v58 = 1;
          v57 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v106[0] = v55;
          v105 = v56;
          v104 = v57;
          v59 = v106;
          sub_225EF54BC(2, v106);
          sub_225EF54BC(v58, v59);
          v102 = sub_225EF7434;
          v103 = v65;
          sub_225EF73E8(&v102, v59, &v105, &v104);
          v60 = v17;
          v61 = v17;
          if (v17)
          {
            v50 = 0;

            __break(1u);
          }

          else
          {
            v102 = sub_225EF7434;
            v103 = v67;
            sub_225EF73E8(&v102, v106, &v105, &v104);
            v48 = 0;
            v49 = 0;
            v102 = sub_225EF7B90;
            v103 = v71;
            sub_225EF73E8(&v102, v106, &v105, &v104);
            v46 = 0;
            v47 = 0;
            _os_log_impl(&dword_225EEB000, v62, v63, "CESABiomeContextualReplayRecord does not meet criteria for submitting to Biome task %s, skipping this record", v52, 0xCu);
            sub_225EF7AF4(v54, 0, v53);
            sub_225EF7AF4(v57, 1, MEMORY[0x277D84F70] + 8);
            sub_22609A168();

            v51 = v46;
          }
        }

        else
        {
          v18 = v92;

          v51 = v18;
        }

        v45 = v51;

        (*(v95 + 8))(v99, v93);
        v83 = 0;
        v84 = v45;
      }
    }
  }

  else
  {
    v19 = v97;
    v20 = sub_225EFE52C();
    (*(v95 + 16))(v19, v20, v93);
    v43 = sub_226098C48();
    v40 = v43;
    v42 = sub_22609A088();
    v41 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v44 = sub_22609A4F8();
    if (os_log_type_enabled(v43, v42))
    {
      v21 = v92;
      v31 = sub_22609A188();
      v27 = v31;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v29 = 0;
      v32 = sub_225EF5468(0, v28, v28);
      v30 = v32;
      v33 = sub_225EF5468(v29, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v109 = v31;
      v108 = v32;
      v107 = v33;
      v34 = 0;
      v35 = &v109;
      sub_225EF54BC(0, &v109);
      sub_225EF54BC(v34, v35);
      v106[2] = v44;
      v36 = &v24;
      MEMORY[0x28223BE20](&v24);
      v37 = &v24 - 6;
      *(&v24 - 4) = v22;
      *(&v24 - 3) = &v108;
      *(&v24 - 2) = &v107;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v39 = v21;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v40, v41, "CESABiomeContextualReplayRecord does not meet criteria for submitting to Biome, skipping this record", v27, 2u);
        v25 = 0;
        sub_225EF7AF4(v30, 0, v28);
        sub_225EF7AF4(v33, v25, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v26 = v39;
      }
    }

    else
    {

      v26 = v92;
    }

    v24 = v26;

    (*(v95 + 8))(v97, v93);
    v83 = 0;
    v84 = v24;
  }

  return v83 & 1;
}

unint64_t type metadata accessor for AFSiriDataSharingOptInStatus(uint64_t a1)
{
  v5 = qword_280D763F8;
  if (!qword_280D763F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D763F8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_225EFE4AC()
{
  v2 = qword_280D76400;
  if (!qword_280D76400)
  {
    type metadata accessor for AFSiriDataSharingOptInStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EFE52C()
{
  if (qword_280D76830 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76838);
}

unint64_t sub_225EFE598()
{
  v2 = qword_280D765A0;
  if (!qword_280D765A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7863E0, &qword_2260A0550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EFE620()
{
  sub_225EFE6BC((v0 + 14));
  sub_225EFE834(v0 + 16);
  sub_225EF5A0C(v0 + 17);
  sub_225EFE6E8(v0 + 18);
  sub_225EF5A0C(v0 + 19);
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_225EFE714()
{
  sub_225EFE6BC(v0 + 16);
  sub_225EFE6BC(v0 + 32);
  sub_225EFE6BC(v0 + 48);
  sub_225EFE6BC(v0 + 64);
  sub_225EFE6BC(v0 + 80);
  sub_225EFE800(v0 + 104);
  sub_225EFE800(v0 + 120);
  sub_225EFE6BC(v0 + 136);
  sub_225EFE6BC(v0 + 152);
  sub_225EFE6E8((v0 + 168));
  sub_225EFE6BC(v0 + 176);
  return v2;
}

uint64_t CoreEmbeddedSpeechAnalyzer.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_225EFE8D0()
{

  return swift_deallocObject();
}

uint64_t sub_225EFEAB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785FF0, &qword_2260A0080);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_225EFEAFC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785FF8, &qword_2260A0088);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_225EFF654(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_226098FA8();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_225EFF7B4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_226098FA8();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_225F00678()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_225F006D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_225F00958()
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_225F027AC()
{

  return swift_deallocObject();
}

uint64_t sub_225F027F4()
{

  return swift_deallocObject();
}

uint64_t sub_225F0283C()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F02A20()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F040B8()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F0429C()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_225F04764()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 80);
  v4 = (v1 + 48) & ~v1;
  MEMORY[0x277D82BD8](*(v0 + 16));

  MEMORY[0x277D82BD8](*(v0 + 40));
  v5 = sub_226098948();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_225F048DC()
{
  v15 = sub_226099808();
  v13 = *(v15 - 8);
  v14 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v3 = v14 + *(v13 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v16 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = ((((v16 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & 0xFFFFFFFFFFFFFFF8) + 16;
  v6 = sub_226098DD8();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = sub_226099DA8();
  v11 = *(v10 - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  (*(v13 + 8))(v0 + v14, v15);
  v17 = sub_226098948();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v16, 1))
  {
    (*(v18 + 8))(v2 + v16, v17);
  }

  (*(v7 + 8))(v2 + v8, v6);
  (*(v11 + 8))(v2 + v12, v10);

  return swift_deallocObject();
}

uint64_t sub_225F04D40()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_225F054D0()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_225F05E78()
{
  v2 = *(sub_226098948() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F062D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225F06660()
{
  v4 = sub_226098A78();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  MEMORY[0x277D82BD8](*(v0 + v5));
  return swift_deallocObject();
}

uint64_t sub_225F0678C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_225F06AA4()
{
  v5 = *(v0 + 32);
  v1 = *(*(sub_22609A198() - 8) + 80);
  v6 = (v1 + 136) & ~v1;
  swift_unknownObjectRelease();
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 6);
  }

  MEMORY[0x277D82BD8](*(v4 + 11));
  if (*(v4 + 15))
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 12);
  }

  v3 = *(v5 - 8);
  if (!(*(v3 + 48))())
  {
    (*(v3 + 8))(&v4[v6], v5);
  }

  return swift_deallocObject();
}

uint64_t sub_225F07220()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_225F07550()
{
  MEMORY[0x277D82BD8](v0[2]);

  MEMORY[0x277D82BD8](v0[9]);
  MEMORY[0x277D82BD8](v0[10]);
  MEMORY[0x277D82BD8](v0[11]);
  MEMORY[0x277D82BD8](v0[12]);
  MEMORY[0x277D82BD8](v0[13]);
  return swift_deallocObject();
}

uint64_t sub_225F08520()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_225F08A84()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F08D80()
{
  v4 = sub_226098A78();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  MEMORY[0x277D82BD8](*(v0 + 32));
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_225F09148()
{
  v8 = type metadata accessor for CombinedTranscriberOutput(0);
  v1 = *(*(v8 - 1) + 80);
  v5 = (v1 + 24) & ~v1;
  MEMORY[0x277D82BD8](*(v0 + 16));
  v6 = sub_226098FA8();
  v7 = *(*(v6 - 8) + 8);
  v7();
  v9 = v8[5];
  v10 = sub_226099458();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!(v12)(v0 + v5 + v9, 1))
  {
    (*(v11 + 8))(v4 + v5 + v9, v10);
  }

  (v7)(v4 + v5 + v8[6], v6);
  v3 = v4 + v5 + v8[7];
  if (!v12())
  {
    (*(v11 + 8))(v3, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_225F09670()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_225F096C8()
{
  v4 = sub_226099328();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  MEMORY[0x277D82BD8](*(v0 + 16));
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_225F09A88()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_225F0A5D8()
{

  return swift_deallocObject();
}

uint64_t sub_225F0B208()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_225F0C720()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_225F0E4D0()
{
  v5 = *(v0 + 32);
  v2 = *(v5 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v5);
  MEMORY[0x277D82BD8](*(v0 + v4));
  return swift_deallocObject();
}

uint64_t sub_225F0E5E8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 72));
  return swift_deallocObject();
}

uint64_t sub_225F0E640()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 72));
  return swift_deallocObject();
}

uint64_t sub_225F0E9B0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_225F0FE60()
{
  v5 = sub_2260997E8();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v2 = v4 + *(v3 + 64);
  v8 = sub_226098A78();
  v6 = *(v8 - 8);
  v7 = (v2 + *(v6 + 80)) & ~*(v6 + 80);
  MEMORY[0x277D82BD8](*(v0 + 16));
  (*(v3 + 8))(v0 + v4, v5);
  (*(v6 + 8))(v0 + v7, v8);
  return swift_deallocObject();
}

uint64_t sub_225F1001C()
{
  v4 = sub_2260997E8();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_225F10264()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F13548()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_225F135A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_225F135F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_225F138DC()
{
  v2 = *(sub_226098A78() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_225F13BA0()
{
  v4 = sub_226098A78();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (v3 + *(v2 + 64) + 8) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  MEMORY[0x277D82BD8](*(v0 + v5));
  return swift_deallocObject();
}

uint64_t sub_225F13E40()
{
  v4 = sub_226099698();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

unint64_t sub_225F14030()
{
  v2 = qword_27D785DF0;
  if (!qword_27D785DF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785DF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F14140()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D767E8);
  __swift_project_value_buffer(v1, qword_280D767E8);
  return sub_225F1418C();
}

uint64_t sub_225F1418C()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAContextualEntityRetriever.swift", 65, 2, 41, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F14288()
{
  if (qword_280D767E0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D767E8);
}

uint64_t sub_225F14384()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F143C4()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F14404()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F144A4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask);
  swift_beginAccess();
  sub_225F14508(v3, a1);
  return swift_endAccess();
}

void *sub_225F14508(const void *a1, void *a2)
{
  v6 = sub_226099808();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_225F1469C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_225F14508(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask);
  v7 = &v9;
  swift_beginAccess();
  sub_225F14780(v5, v6);
  swift_endAccess();
  return sub_225F149A8(v8);
}

void *sub_225F14780(const void *a1, void *a2)
{
  v7 = sub_226099808();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_225F149A8(uint64_t a1)
{
  v3 = sub_226099808();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *RequestContextRetrievalParameters.init(maxNumEnrolled:retrievalTimeout:maxEntityChars:maxEntityWords:rejectedContextTypes:rejectedBundleTypes:enabledTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v117 = a1;
  v118 = a7;
  v119 = a2;
  v120 = a3;
  v124 = a4;
  v101 = a5;
  v102 = a6;
  v87 = 0;
  v86 = sub_225F158F8;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0.0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v125 = v148;
  v148[0] = 0;
  v148[1] = 0;
  v145[0] = 0;
  __len = 40;
  __c = 0;
  memset(v144, 0, sizeof(v144));
  v128 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  memset(v136, 0, sizeof(v136));
  v132 = 0;
  v133 = 0;
  v130 = 0;
  v131 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
  v90 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v91 = &v42 - v90;
  v121 = 0;
  v92 = sub_226099828();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92);
  v96 = &v42 - v95;
  v97 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v98 = &v42 - v97;
  v99 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E38, &unk_22609F960) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v100 = &v42 - v99;
  v122 = sub_226098BA8();
  v103 = *(v122 - 8);
  v104 = v122 - 8;
  v108 = *(v103 + 64);
  v105 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v106 = &v42 - v105;
  v107 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v109 = &v42 - v107;
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v12);
  v111 = &v42 - v110;
  v158 = &v42 - v110;
  v156 = v14;
  v155 = v13;
  v154 = v15;
  v153 = v16;
  v152 = v17;
  v151 = v18;
  v150 = v19;
  v157 = v7;
  v113 = v7;
  v112 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask;
  v114 = sub_226099808();
  v20 = *(v114 - 8);
  v115 = *(v20 + 56);
  v116 = v20 + 56;
  v115(&v113[v112], 1);
  v21 = v118;
  v22 = v119;
  v23 = v120;
  *&v157[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxNumEnrolled] = v117;
  *&v157[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_retrievalTimeout] = v21;
  *&v157[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityChars] = v22;
  *&v157[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityWords] = v23;
  v123 = sub_22609A4F8();
  sub_225F15678();
  v149 = sub_226099F08();
  sub_2260998E8();
  v147 = v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v127 = sub_225F156F8();
  sub_22609A028();
  for (i = v128; ; i = v83)
  {
    v83 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
    sub_22609A388();
    v84 = v145[1];
    v85 = v146;
    if (!v146)
    {
      break;
    }

    v81 = v84;
    v82 = v85;
    v75 = v85;
    v74 = v84;
    v130 = v84;
    v131 = v85;
    sub_2260998E8();
    sub_226098B98();
    if ((*(v103 + 48))(v100, 1, v122) == 1)
    {
      sub_225F162C8(v100);
    }

    else
    {
      (*(v103 + 32))(v111, v100, v122);
      (*(v103 + 16))(v106, v111, v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E78, &qword_22609F998);
      sub_226099F48();
      v73 = *(v103 + 8);
      v72 = v103 + 8;
      v73(v109, v122);
      v73(v111, v122);
    }
  }

  sub_225EFE6E8(v148);
  v76 = v157;
  v77 = v149;
  sub_2260998E8();
  *&v76[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes] = v77;
  v78 = sub_22609A4F8();
  sub_225F157F4();
  v145[0] = sub_226099F08();
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  v79 = &v159;
  sub_226099898();
  memcpy(v144, v79, sizeof(v144));
  for (j = v83; ; j = v52)
  {
    v68 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E60, &qword_22609F980);
    sub_226099908();
    v69 = v141[4];
    v70 = v142;
    v71 = v143;
    if (!v142)
    {
      break;
    }

    v65 = v69;
    v66 = v70;
    v67 = v71;
    v57 = v71;
    v55 = v70;
    v56 = v69;
    v138 = v69;
    v139 = v70;
    v137 = v71;
    sub_2260998E8();
    v58 = &v160;
    sub_226099F18();
    memcpy(v136, v58, sizeof(v136));
    for (k = v68; ; k = v52)
    {
      v52 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E68, &qword_22609F988);
      sub_226099F68();
      v53 = v134;
      v54 = v135;
      if (!v135)
      {
        break;
      }

      v50 = v53;
      v51 = v54;
      v49 = v54;
      v47 = v53;
      v132 = v53;
      v133 = v54;
      v48 = swift_allocObject();
      sub_2260998E8();
      v32 = v55;
      v33 = v48;
      *(v48 + 16) = v56;
      *(v33 + 24) = v32;
      sub_2260998E8();
      v34 = v96;
      v35 = v48;
      v36 = v93;
      v37 = v49;
      *(v48 + 32) = v47;
      *(v35 + 40) = v37;
      *v34 = v35;
      (*(v36 + 104))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E70, &qword_22609F990);
      sub_226099F48();
      (*(v93 + 8))(v98, v92);
    }

    sub_225F15874(v136);
  }

  v24 = v68;
  sub_225F15874(v144);
  v60 = v157;
  v61 = v145[0];
  sub_2260998E8();
  v25 = v86;
  v26 = v102;
  v27 = v126;
  v28 = v114;
  v29 = v127;
  v30 = v62;
  *&v60[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes] = v61;
  v63 = v157;
  v141[3] = v26;
  result = sub_225F15970(v25, 0, v27, v28, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
  v64 = result;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v38 = v91;
    v39 = v115;
    v40 = v114;
    *&v63[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks] = v64;
    v42 = v157;
    v39(v38, 1, 1, v40);
    v43 = &v42[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask];
    v44 = v141;
    swift_beginAccess();
    sub_225F14780(v91, v43);
    swift_endAccess();
    sub_225EFE6E8(v145);
    sub_225EFE6E8(&v149);
    v45 = v157;
    v41 = type metadata accessor for RequestContextRetrievalParameters(0);
    v140.receiver = v45;
    v140.super_class = v41;
    v46 = objc_msgSendSuper2(&v140, sel_init);
    MEMORY[0x277D82BE0](v46);
    v157 = v46;

    MEMORY[0x277D82BD8](v157);
    return v46;
  }

  return result;
}

unint64_t sub_225F15678()
{
  v2 = qword_280D76F20;
  if (!qword_280D76F20)
  {
    sub_226098BA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F156F8()
{
  v2 = qword_280D76600;
  if (!qword_280D76600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76600);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_225F157F4()
{
  v2 = qword_280D76710;
  if (!qword_280D76710)
  {
    sub_226099828();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76710);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F158F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  type metadata accessor for CoreEmbeddedSpeechAnalyzer();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  return static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)(v6, v5, has_malloc_size & 1, a2);
}

uint64_t sub_225F15970(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v69[3] = a3;
  v69[2] = a4;
  v69[1] = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v66 = &v15 - v65;
  v67 = sub_226099FB8();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_22609A308();
  v33 = sub_22609A318();
  sub_22609A2E8();
  result = sub_226099FA8();
  if (v67 < 0)
  {
    sub_22609A3B8(v39, 11, 2, v40, 39, 2, v41, 17, 2, 760, 0);
    __break(1u);
LABEL_24:
    v17 = sub_226099CA8();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_226099FC8();
    swift_getAssociatedConformanceWitness();
    v22 = sub_2260999D8();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_22609A448();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69[0];

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_22609A3B8(v39, 11, 2, v40, 39, 2, v41, 17, 2, 760, 0);
      __break(1u);
LABEL_18:
      sub_22609A448();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_22609A038();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_225EF5A0C(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_22609A2F8();
    sub_226099FD8();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RequestContextRetrievalParameters(uint64_t a1)
{
  v2 = qword_280D769D0;
  if (!qword_280D769D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_225F162C8(uint64_t a1)
{
  v3 = sub_226098BA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *RequestContextRetrievalParameters.__allocating_init(retrievalParameters:)(void *a1)
{
  v15 = [a1 maxNumEnrolled];
  [a1 retrievalTimeout];
  v16 = v1;
  v17 = [a1 maxEntityChars];
  v19 = [a1 maxEntityWords];
  v20 = [a1 rejectedContextTypes];
  if (v20)
  {
    v13 = sub_226099C88();
    MEMORY[0x277D82BD8](v20);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v12 = v14;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAContextualEntityRetriever.swift", 65, 2, 182, 0);
    __break(1u);
  }

  v11 = [a1 rejectedBundleTypes];
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
    v9 = sub_226099878();
    MEMORY[0x277D82BD8](v11);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v8 = v10;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAContextualEntityRetriever.swift", 65, 2, 182, 0);
    __break(1u);
  }

  v7 = [a1 enabledTasks];
  if (v7)
  {
    v5 = sub_226099C88();
    MEMORY[0x277D82BD8](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESAContextualEntityRetriever.swift", 65, 2, 182, 0);
    __break(1u);
  }

  v3 = RequestContextRetrievalParameters.__allocating_init(maxNumEnrolled:retrievalTimeout:maxEntityChars:maxEntityWords:rejectedContextTypes:rejectedBundleTypes:enabledTasks:)(v15, v17, v19, v12, v8, v4, v16);
  MEMORY[0x277D82BE0](v3);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t RequestContextRetrievalParameters.setRequestTask(requestTask:)(uint64_t a1)
{
  v5 = a1;
  v9 = 0;
  v8 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v7 = &v4 - v6;
  v9 = v2;
  v8 = v1;
  sub_225F14508(v2, &v4 - v6);
  return sub_225F1469C(v7);
}

uint64_t RequestContextRetrievalParameters.description.getter()
{
  v52 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
  v24[0] = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v38 = v24 - v24[0];
  v52 = v0;
  v1 = sub_22609A4E8();
  v43 = &v50;
  v50 = v1;
  v51 = v2;
  v41 = 1;
  v3 = sub_226099AA8();
  v24[1] = v4;
  MEMORY[0x22AA735F0](v3);

  v49[4] = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxNumEnrolled);
  v24[6] = MEMORY[0x277D83B88];
  v24[7] = MEMORY[0x277D83BF8];
  sub_22609A4B8();
  v5 = sub_226099AA8();
  v24[2] = v6;
  MEMORY[0x22AA735F0](v5);

  v49[3] = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_retrievalTimeout);
  sub_22609A4C8();
  v24[4] = 18;
  v7 = sub_226099AA8();
  v24[3] = v8;
  MEMORY[0x22AA735F0](v7);

  v49[2] = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityChars);
  sub_22609A4B8();
  v9 = sub_226099AA8();
  v24[5] = v10;
  MEMORY[0x22AA735F0](v9);

  v49[1] = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityWords);
  sub_22609A4B8();
  v11 = sub_226099AA8();
  v24[8] = v12;
  MEMORY[0x22AA735F0](v11);

  v25 = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes);
  sub_2260998E8();
  v27 = v49;
  v49[0] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E78, &qword_22609F998);
  sub_225F16DB0();
  sub_22609A4B8();
  sub_225EFE6E8(v27);
  v13 = sub_226099AA8();
  v28 = v14;
  MEMORY[0x22AA735F0](v13);

  v29 = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes);
  sub_2260998E8();
  v31 = &v48;
  v48 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E70, &qword_22609F990);
  sub_225F16E38();
  sub_22609A4B8();
  sub_225EFE6E8(v31);
  v15 = sub_226099AA8();
  v32 = v16;
  MEMORY[0x22AA735F0](v15);

  v33 = *(v36 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks);
  sub_2260998E8();
  v35 = &v47;
  v47 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E80, &unk_22609F9A0);
  sub_225F16EC0();
  sub_22609A4B8();
  sub_225EFE6E8(v35);
  v17 = sub_226099AA8();
  v37 = v18;
  MEMORY[0x22AA735F0](v17);

  sub_225F144A4(v38);
  v19 = sub_226099A18();
  v40 = v46;
  v46[0] = v19;
  v46[1] = v20;
  sub_22609A4C8();
  sub_225EFE6BC(v40);
  v21 = sub_226099AA8();
  v42 = v22;
  MEMORY[0x22AA735F0](v21);

  v45 = v50;
  v44 = v51;
  sub_2260998E8();
  sub_225EFE6BC(v43);
  return sub_226099A88();
}

unint64_t sub_225F16DB0()
{
  v2 = qword_280D76590;
  if (!qword_280D76590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E78, &qword_22609F998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F16E38()
{
  v2 = qword_280D76588;
  if (!qword_280D76588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E70, &qword_22609F990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F16EC0()
{
  v2 = qword_280D76618;
  if (!qword_280D76618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D785E80, &unk_22609F9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76618);
    return WitnessTable;
  }

  return v2;
}

id RequestContextRetrievalParameters.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextRetrievalParameters(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void variable initialization expression of CoreEmbeddedSpeechAnalyzer._audioEnqueuer(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t variable initialization expression of CESRAsrReplayWorkerConfig.replayId()
{
  v7 = sub_226098A78();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  sub_226098A68();
  v8 = sub_226098A28();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

void sub_225F1759C(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 4) = 0;
}

void sub_225F1760C(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

void sub_225F1767C(uint64_t a2@<X8>)
{
  sub_225F176B8();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t sub_225F1781C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_225F17848(a2);
  *a1 = result;
  return result;
}

uint64_t sub_225F17848(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t sub_225F178A0()
{
  v1 = *MEMORY[0x277CEF588];
  MEMORY[0x277D82BE0](*MEMORY[0x277CEF588]);
  v2 = sub_226099A08();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_225F17964(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  sub_225F1A478();
  return sub_226098858();
}

uint64_t sub_225F179E0()
{
  v1 = sub_226098838();
  v2 = sub_22609A128();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_225F17B38(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
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
  sub_226099F98();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_22609A448();
  __break(1u);
LABEL_12:
  result = sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
  __break(1u);
  return result;
}

uint64_t sub_225F17E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
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
        v15 = sub_225F1AB20;
        v16 = &v37;
        sub_225F17B38(sub_225F1AB3C, &v13, v11);
        return v10;
      }

      sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StaticString.swift", 24, 2, 148, 0);
      __break(1u);
    }

    sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
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
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 268, 0);
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
            sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 269, 0);
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

                    sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                    __break(1u);
                  }

                  sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                  __break(1u);
                }

                sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
                __break(1u);
              }

              sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
              __break(1u);
            }

            sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
            __break(1u);
          }

          sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_22609A448();
    __break(1u);
  }

  result = sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/StaticString.swift", 24, 2, 136, 0);
  __break(1u);
  return result;
}

void *sub_225F186BC(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

void *sub_225F186F8(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_225F18740(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_225F18890(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_225F18A90(uint64_t a1)
{
  updated = sub_225F18BAC(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_225F18BAC(uint64_t a1)
{
  v5 = qword_280D76720;
  if (!qword_280D76720)
  {
    sub_226099808();
    v4 = sub_22609A198();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280D76720);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_225F18C54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F18D5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t type metadata accessor for mach_timebase_info(uint64_t a1)
{
  v5 = qword_27D785EF8;
  if (!qword_27D785EF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785EF8);
      return v2;
    }
  }

  return v5;
}

uint64_t initializeBufferWithCopyOfBuffer for CESRAsrReplayWorkerConfig(void *a1, void *a2)
{
  v4 = *a2;

  *a1 = v4;
  return *a1 + 16;
}

uint64_t sub_225F19004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F190E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_225F192AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F1938C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CMTime(uint64_t a1)
{
  v5 = qword_280D763C0;
  if (!qword_280D763C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D763C0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_225F19600(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F196E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3)
    {
      *(result + 48) = 1;
    }
  }

  else if (a3)
  {
    *(result + 48) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CMTimeRange(uint64_t a1)
{
  v5 = qword_27D785F08;
  if (!qword_27D785F08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AFError(uint64_t a1)
{
  v5 = qword_280D76690;
  if (!qword_280D76690)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76690);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for qos_class_t(uint64_t a1)
{
  v5 = qword_280D76548;
  if (!qword_280D76548)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76548);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CheckingType(uint64_t a1)
{
  v5 = qword_27D785F10;
  if (!qword_27D785F10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F10);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MCRestrictedBoolType(uint64_t a1)
{
  v5 = qword_27D785F18;
  if (!qword_27D785F18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F18);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_225F19B9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F19CA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t type metadata accessor for _NSRange(uint64_t a1)
{
  v5 = qword_27D785F20;
  if (!qword_27D785F20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F20);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_225F19F08()
{
  v2 = qword_280D766A0;
  if (!qword_280D766A0)
  {
    type metadata accessor for AFError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F19FA0()
{
  v2 = qword_280D76698;
  if (!qword_280D76698)
  {
    type metadata accessor for AFError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A038()
{
  v2 = qword_280D766D0;
  if (!qword_280D766D0)
  {
    type metadata accessor for AFError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A0D0()
{
  v2 = qword_280D766B8;
  if (!qword_280D766B8)
  {
    type metadata accessor for AFError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A168()
{
  v2 = qword_280D766B0;
  if (!qword_280D766B0)
  {
    type metadata accessor for AFError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A200()
{
  v2 = qword_27D785F28;
  if (!qword_27D785F28)
  {
    type metadata accessor for Code(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for Code(uint64_t a1)
{
  v5 = qword_280D76568;
  if (!qword_280D76568)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76568);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_225F1A330()
{
  v2 = qword_280D76570;
  if (!qword_280D76570)
  {
    type metadata accessor for Code(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A3E0()
{
  v2 = qword_27D785F30;
  if (!qword_27D785F30)
  {
    type metadata accessor for Code(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A478()
{
  v2 = qword_280D766C0;
  if (!qword_280D766C0)
  {
    type metadata accessor for AFError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A510()
{
  v2 = qword_27D785F40;
  if (!qword_27D785F40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A58C()
{
  v2 = qword_280D76558;
  if (!qword_280D76558)
  {
    type metadata accessor for qos_class_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F1A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 268, 0);
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 269, 0);
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "Swift/AssertCommon.swift", 24, 2, 270, 0);
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

                sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
                __break(1u);
              }

              sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3053, 0);
              __break(1u);
            }

            sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
            __break(1u);
          }

          sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
          __break(1u);
        }

        sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
        __break(1u);
      }

      sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
    __break(1u);
  }

  result = sub_22609A3B8("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

unint64_t type metadata accessor for BPSCompletionState(uint64_t a1)
{
  v5 = qword_27D785F50;
  if (!qword_27D785F50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CompareOptions(uint64_t a1)
{
  v5 = qword_27D785F58;
  if (!qword_27D785F58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F58);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_225F1AD40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F1AE48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t type metadata accessor for os_unfair_lock_s(uint64_t a1)
{
  v5 = qword_280D764E0;
  if (!qword_280D764E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D764E0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CMTimeFlags(uint64_t a1)
{
  v5 = qword_27D785F60;
  if (!qword_27D785F60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F60);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_225F1B114()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D785FD0);
  __swift_project_value_buffer(v1, qword_27D785FD0);
  return sub_225F1B160();
}

uint64_t sub_225F1B160()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRSpeechVisualContextConfig.swift", 65, 2, 16, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F1B25C()
{
  if (qword_27D785D50 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D785FD0);
}

uint64_t sub_225F1B2C8()
{
  type metadata accessor for CESRSpeechVisualContextConfig();
  result = sub_225F1B324();
  qword_27D7883F8 = result;
  return result;
}

uint64_t *sub_225F1B360()
{
  if (qword_27D785D58 != -1)
  {
    swift_once();
  }

  return &qword_27D7883F8;
}

uint64_t sub_225F1B3C0()
{
  v1 = *sub_225F1B360();

  return v1;
}

uint64_t sub_225F1B3F0()
{
  v2 = *(v0 + 16);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F1B428()
{
  v3 = v0;
  os_unfair_lock_lock((v0 + 32));
  sub_225F1B4EC((v0 + 36), &v2);
  sub_225F1CB98((v0 + 32));
  return v2 & 1;
}

void sub_225F1B510(char a1)
{
  os_unfair_lock_lock((v1 + 32));
  sub_225F1B5F4((v1 + 36), a1 & 1);
  sub_225F1CB98(v2 + 8);
}

void (*sub_225F1B620(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_225F1B428() & 1;
  return sub_225F1B678;
}

uint64_t sub_225F1B6D8()
{
  v3 = v0;
  os_unfair_lock_lock((v0 + 40));
  sub_225F1B7A0((v0 + 48), &v2);
  sub_225F1CBC4();
  sub_225F1CB98((v0 + 40));
  return v2;
}

uint64_t sub_225F1B7A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = MEMORY[0x277D82BE0](*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_225F1B7F4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  os_unfair_lock_lock((v1 + 40));
  sub_225F1B914((v1 + 48), a1);
  sub_225F1CBC4();
  sub_225F1CB98(v3 + 10);
  MEMORY[0x277D82BD8](a1);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_225F1B914(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a2);
  v2 = *a1;
  *a1 = a2;
  return MEMORY[0x277D82BD8](v2);
}

uint64_t (*sub_225F1B984(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_225F1B6D8();
  return sub_225F1B9D4;
}

uint64_t sub_225F1B9D4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_225F1B7F4(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_225F1B7F4(v3);
  return MEMORY[0x277D82BD8](*a1);
}

uint64_t sub_225F1BA54()
{
  v18 = v0;
  *(v0 + 16) = sub_226099AA8();
  *(v0 + 24) = v1;
  v17 = 1;
  *(v0 + 32) = 0;
  *(v0 + 32) = 0;
  *(v0 + 36) = 0;
  sub_225F1CB40(&v17, v0 + 36, MEMORY[0x277D839B0]);
  v16 = [objc_opt_self() client];
  *(v0 + 40) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v2 = sub_225F1CBC4();
  sub_225F1CB40(&v16, v0 + 48, v2);
  sub_225F1C1A8();
  v7 = sub_225F1B6D8();
  sub_2260466E0();
  v6 = sub_2260999F8();

  v4 = swift_allocObject();

  swift_weakInit();

  v14 = sub_225F1CC28;
  v15 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_225F1C140;
  v13 = &block_descriptor;
  v5 = _Block_copy(&aBlock);

  [v7 addUpdateHandlerForNamespaceName:v6 usingBlock:v5];
  _Block_release(v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_225F1BC90(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = a1;
  v36 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v35 = 0;
  v39 = sub_226098C58();
  v40 = *(v39 - 8);
  v41 = v40;
  MEMORY[0x28223BE20](v37);
  v42 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  v43 = v4 + 16;
  v53 = v4 + 16;
  v44 = &v52;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v45 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v35;
  }

  v34 = v45;
  v5 = v42;
  v27 = v45;
  v51 = v45;
  v6 = sub_225F1B25C();
  (*(v41 + 16))(v5, v6, v39);
  v31 = sub_226098C48();
  v28 = v31;
  v30 = sub_22609A0A8();
  v29 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v32 = sub_22609A4F8();
  if (os_log_type_enabled(v31, v30))
  {
    v8 = v35;
    v18 = sub_22609A188();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v16 = 0;
    v19 = sub_225EF5468(0, v15, v15);
    v17 = v19;
    v20 = sub_225EF5468(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v50 = v18;
    v49 = v19;
    v48 = v20;
    v21 = 0;
    v22 = &v50;
    sub_225EF54BC(0, &v50);
    sub_225EF54BC(v21, v22);
    v47 = v32;
    v23 = &v11;
    MEMORY[0x28223BE20](&v11);
    v24 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v49;
    *(&v11 - 2) = &v48;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v26 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v28, v29, "Updating visual context config", v14, 2u);
      v12 = 0;
      sub_225EF7AF4(v17, 0, v15);
      sub_225EF7AF4(v20, v12, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v13 = v26;
    }
  }

  else
  {

    v13 = v35;
  }

  v11 = v13;

  (*(v41 + 8))(v42, v39);
  sub_225F1C1A8();

  return v11;
}

uint64_t sub_225F1C140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

uint64_t sub_225F1C1A8()
{
  v52 = sub_225F1CC94;
  v53 = sub_225EF70FC;
  v54 = sub_225EF7108;
  v55 = sub_225EF7150;
  v56 = sub_225EF7434;
  v57 = sub_225EF7434;
  v58 = sub_225EF715C;
  v81 = 0;
  v80 = 0;
  v59 = 0;
  v60 = sub_226098C58();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = &v21 - v63;
  v81 = v0;
  v65 = sub_225F1B6D8();
  [v65 refresh];
  MEMORY[0x277D82BD8](v65);
  v72 = sub_225F1B6D8();
  v67 = *(v66 + 16);
  v68 = *(v66 + 24);
  sub_2260998E8();
  v71 = sub_2260999F8();

  sub_2260466E0();
  v69 = v1;
  v70 = sub_2260999F8();

  v73 = [v72 levelForFactor:v71 withNamespaceName:v70];
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  v80 = v73;
  MEMORY[0x277D82BE0](v73);
  if (v73)
  {
    v51 = v73;
    v48 = v73;
    v49 = [v73 BOOLeanValue];
    MEMORY[0x277D82BD8](v48);
    v50 = v49;
  }

  else
  {
    v50 = 2;
  }

  v79 = v50;
  if (v50 == 2)
  {
    v47 = 1;
  }

  else
  {
    v47 = v79;
  }

  sub_225F1B510(v47 & 1);
  v2 = v64;
  v3 = sub_225F1B25C();
  (*(v61 + 16))(v2, v3, v60);

  v45 = sub_226098C48();
  v46 = sub_22609A088();
  v33 = 17;
  v36 = 7;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 4;
  v35 = 32;
  v4 = swift_allocObject();
  v5 = v66;
  v34 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v34;
  v37 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v37;
  v38 = v8;
  *(v8 + 16) = v54;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v38;
  v42 = v10;
  *(v10 + 16) = v55;
  *(v10 + 24) = v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v41 = sub_22609A4F8();
  v43 = v12;

  v13 = v39;
  v14 = v43;
  *v43 = v56;
  v14[1] = v13;

  v15 = v40;
  v16 = v43;
  v43[2] = v57;
  v16[3] = v15;

  v17 = v42;
  v18 = v43;
  v43[4] = v58;
  v18[5] = v17;
  sub_225EF5418();

  if (os_log_type_enabled(v45, v46))
  {
    v19 = v59;
    v26 = sub_22609A188();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v25 = 0;
    v27 = sub_225EF5468(0, v24, v24);
    v28 = sub_225EF5468(v25, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = &v78;
    v78 = v26;
    v30 = &v77;
    v77 = v27;
    v31 = &v76;
    v76 = v28;
    sub_225EF54BC(0, &v78);
    sub_225EF54BC(1, v29);
    v74 = v56;
    v75 = v39;
    sub_225EF73E8(&v74, v29, v30, v31);
    v32 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v74 = v57;
      v75 = v40;
      sub_225EF73E8(&v74, &v78, &v77, &v76);
      v23 = 0;
      v74 = v58;
      v75 = v42;
      sub_225EF73E8(&v74, &v78, &v77, &v76);
      _os_log_impl(&dword_225EEB000, v45, v46, "Loaded visual context config: %{BOOL}d", v26, 8u);
      v22 = 0;
      sub_225EF7AF4(v27, 0, v24);
      sub_225EF7AF4(v28, v22, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v45);
  (*(v61 + 8))(v64, v60);
  return MEMORY[0x277D82BD8](v73);
}

uint64_t sub_225F1CAB4()
{
  sub_225EFE6BC(v0 + 16);
  sub_225F1CC9C(v0 + 32);
  sub_225F1CD4C(v0 + 40);
  return v2;
}

unint64_t sub_225F1CBC4()
{
  v2 = qword_27D785FE8;
  if (!qword_27D785FE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D785FE8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_225F1CC9C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786000, &qword_2260A0090);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786008, &qword_2260A0098);
  (*(*(v2 - 8) + 8))(a1 + 4);
  return a1;
}

uint64_t sub_225F1CD4C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786000, &qword_2260A0090);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786010, &unk_2260A00A0);
  (*(*(v2 - 8) + 8))(a1 + 8);
  return a1;
}

uint64_t sub_225F1CE2C()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D767C8);
  __swift_project_value_buffer(v1, qword_280D767C8);
  return sub_225F1CE78();
}

uint64_t sub_225F1CE78()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 17, 0);
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F1CF74()
{
  if (qword_280D767C0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D767C8);
}

uint64_t type metadata accessor for CombinedTranscriberOutput(uint64_t a1)
{
  v2 = qword_280D76D58;
  if (!qword_280D76D58)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_225F1D0EC(const void *a1, void *a2)
{
  v6 = sub_226099458();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F1D214@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for CombinedTranscriberOutput(0) + 24);
  v2 = sub_226098FA8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_225F1D2C4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_226098FA8();
  v10 = *(*(v9 - 8) + 32);
  v10(a5, a1);
  v11 = type metadata accessor for CombinedTranscriberOutput(0);
  sub_225F2DAF4(a2, (a5 + v11[5]));
  (v10)(a5 + v11[6], a3, v9);
  return sub_225F2DAF4(a4, (a5 + v11[7]));
}

uint64_t sub_225F1D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v19 = a1;
  v26 = a5;
  v6 = v5;
  v7 = v19;
  v27 = v6;
  v45 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v32 = v37;
  v37[0] = 0;
  v37[1] = 0;
  v35 = 0;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v25 = a2;
  v28 = a3;
  v29 = a4;
  v31 = 0;
  v20 = sub_2260995E8();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = &v14 - v23;
  v45 = &v14 - v23;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786020, &qword_2260A00C8);
  MEMORY[0x28223BE20](v8);
  v30 = &v14 - v9;
  v44 = v7;
  v41 = v10;
  v42 = v28;
  v43 = v29;
  v40 = v11 & 1;
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
  v38 = sub_22609A4F8();
  v36 = sub_226098F98();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786030, &qword_2260A00D8);
  sub_225F1D798();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786038, &unk_2260A00E0);
    sub_22609A388();
    if ((*(v21 + 48))(v30, 1, v20) == 1)
    {
      break;
    }

    (*(v21 + 32))(v24, v30, v20);
    v16 = sub_2260995D8();
    v18 = sub_225F1D820(v16, v26 & 1);

    v35 = v18;
    sub_2260998E8();
    v17 = &v34;
    v34 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
    sub_226099CE8();

    (*(v21 + 8))(v24, v20);
  }

  sub_225EFE6E8(v37);
  v14 = &v38;
  v15 = v38;
  sub_2260998E8();
  sub_225EFE6E8(v14);
  return v15;
}

unint64_t sub_225F1D798()
{
  v2 = qword_280D76628;
  if (!qword_280D76628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786030, &qword_2260A00D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F1D820(uint64_t a1, int a2)
{
  v51 = a1;
  v54 = a2;
  v37 = "Fatal error";
  v38 = "Double value cannot be converted to Int because it is either infinite or NaN";
  v39 = "Swift/IntegerTypes.swift";
  v40 = "Double value cannot be converted to Int because the result would be less than Int.min";
  v41 = "Double value cannot be converted to Int because the result would be greater than Int.max";
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v52 = v74;
  v74[0] = 0;
  v74[1] = 0;
  v72 = 0;
  v47 = 0;
  v42 = sub_226099598();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v46 = &v19 - v45;
  v80 = &v19 - v45;
  v48 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786040, &qword_2260A00F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v49 = &v19 - v48;
  v79 = v3;
  v78 = v4 & 1;
  v77 = v2;
  v50 = sub_225F1E118();
  v76 = sub_226099848();
  v75 = v54;
  sub_2260998E8();
  v73 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786048, &qword_2260A00F8);
  sub_225F1E17C();
  sub_22609A028();
  for (i = v54; ; i = v34)
  {
    v36 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786050, &unk_2260A0100);
    sub_22609A388();
    if ((*(v43 + 48))(v49, 1, v42) == 1)
    {
      break;
    }

    (*(v43 + 32))(v46, v49, v42);
    v32 = sub_225F26174();
    v72 = v32;
    sub_226099588();
    v28 = v5;
    v29 = sub_2260999F8();

    [v32 setText_];
    MEMORY[0x277D82BD8](v29);
    sub_226099538();
    v30 = v6;
    v31 = sub_2260999F8();

    [v32 setPhoneSequence_];
    MEMORY[0x277D82BD8](v31);
    v69 = sub_226099568();
    v70 = v7;
    v71 = v8;
    v66 = v69;
    v67 = v7;
    v68 = v8;
    sub_22609A0F8();
    [v32 setStartTime_];
    v63 = sub_226099518();
    v64 = v9;
    v65 = v10;
    v60 = v63;
    v61 = v9;
    v62 = v10;
    sub_22609A0F8();
    [v32 setSilenceStartTime_];
    v57 = sub_226099558();
    v58 = v11;
    v59 = v12;
    v56[1] = v57;
    v56[2] = v11;
    v56[3] = v12;
    sub_22609A0F8();
    [v32 setEndTime_];
    v33 = 1;
    [v32 setRemoveSpaceBefore_];
    v13 = sub_226099528();
    v34 = v13 ^ 1;
    v75 = (v13 ^ 1) & v33;
    sub_2260994F8();
    v35 = v14;
    if (((*&v14 >> 52) & 0x7FFLL) == 0x7FF)
    {
      sub_22609A3B8(v37, 11, 2, v38, 76, 2, v39, 24, 2, 8835, 0);
      __break(1u);
    }

    if (v35 <= -9.22337204e18)
    {
      sub_22609A3B8(v37, 11, 2, v40, 85, 2, v39, 24, 2, 8838, 0);
      __break(1u);
    }

    if (v35 >= 9.22337204e18)
    {
      sub_22609A3B8(v37, 11, 2, v41, 88, 2, v39, 24, 2, 8841, 0);
      __break(1u);
    }

    [v32 setConfidenceScore_];
    sub_226099548();
    v22 = v15;
    v23 = sub_2260999F8();

    [v32 setIpaPhoneSequence_];
    MEMORY[0x277D82BD8](v23);
    v25 = sub_225F27014();
    sub_226099578();
    v24 = sub_225F26494(v16);
    [v32 setGraphCost_];
    MEMORY[0x277D82BD8](v24);
    sub_226099508();
    v26 = sub_225F26494(v17);
    [v32 setAcousticCost_];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BE0](v32);
    v27 = v56;
    v56[0] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v32);
    (*(v43 + 8))(v46, v42);
  }

  sub_225EFE6E8(v74);
  v20 = &v76;
  v21 = v76;
  sub_2260998E8();
  sub_225EFE6E8(v20);
  return v21;
}

unint64_t sub_225F1E118()
{
  v2 = qword_280D76530;
  if (!qword_280D76530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76530);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F1E17C()
{
  v2 = qword_280D76638;
  if (!qword_280D76638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786048, &qword_2260A00F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76638);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F1E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v376 = a1;
  v375 = a2;
  v374 = a9;
  v362 = a6;
  v363 = a7;
  v364 = a8;
  v365 = a10;
  v366 = a11;
  v367 = a12;
  v368 = a13;
  v382 = 0;
  v383 = sub_225F25A4C;
  v318 = "Fatal error";
  v319 = "Unexpectedly found nil while unwrapping an Optional value";
  v320 = "CoreEmbeddedSpeechRecognition/CESRUtilities.swift";
  v321 = sub_225F26438;
  v322 = sub_225EF7450;
  v323 = sub_225EF7B84;
  v324 = sub_225EF7434;
  v325 = sub_225EF7434;
  v326 = sub_225EF7B90;
  v327 = sub_225F26438;
  v328 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v479 = 0;
  v478 = 0;
  v477 = 0;
  v476 = 0;
  v475 = 0;
  v474 = 0;
  v473 = 0;
  v472 = 0;
  v469 = 0;
  v470 = 0;
  v471 = 0;
  v468 = 0.0;
  v467 = 0;
  v465 = 0;
  v466 = 0;
  v463 = 0;
  v464 = 0;
  v462 = 0;
  v461 = 0;
  v460 = 0;
  v456 = 0;
  v455 = 0;
  v451 = 0;
  v447 = 0;
  v446 = 0;
  v445 = 0;
  v442 = 0;
  v441 = 0;
  v399 = 0;
  v400 = 0;
  v486 = a3;
  v487 = a4;
  v488 = a5;
  v371 = a3;
  v372 = a4;
  v373 = a5;
  v379 = 0;
  v329 = sub_226098C58();
  v330 = *(v329 - 8);
  v331 = v329 - 8;
  v332 = (*(v330 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v333 = &v150 - v332;
  v334 = sub_226098FA8();
  v335 = *(v334 - 8);
  v336 = v334 - 8;
  v337 = (v335[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v334);
  v338 = &v150 - v337;
  v479 = &v150 - v337;
  v339 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v340 = &v150 - v339;
  v478 = &v150 - v339;
  v341 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v342 = &v150 - v341;
  v477 = &v150 - v341;
  v343 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v344 = &v150 - v343;
  v476 = &v150 - v343;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00);
  v345 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v346 = &v150 - v345;
  v347 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v150 - v345);
  v348 = &v150 - v347;
  v349 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v150 - v347);
  v350 = &v150 - v349;
  v475 = &v150 - v349;
  v351 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v352 = &v150 - v351;
  v474 = &v150 - v351;
  v353 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786060, &qword_2260A0110) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v379);
  v354 = &v150 - v353;
  v355 = sub_2260990C8();
  v356 = *(v355 - 8);
  v357 = v355 - 8;
  v358 = (v356[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v355);
  v359 = &v150 - v358;
  v360 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v150 - v358);
  v361 = &v150 - v360;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786068, &qword_2260A0118);
  v26 = MEMORY[0x28223BE20](v379);
  v378 = &v150 - v27;
  v473 = v376;
  v472 = v28;
  v469 = v29;
  v470 = __PAIR64__(v30, v31);
  v471 = v373;
  v468 = v26;
  v467 = v32 & 1;
  v465 = v33;
  v466 = v34;
  v463 = v35;
  v464 = v366;
  v462 = v367 & 1;
  v461 = v36;
  v460 = v13;
  v369 = sub_225F27078();
  v457 = v371;
  v458 = v372;
  v459 = v373;
  v370 = sub_225F205E0(v376);
  v456 = v370;
  MEMORY[0x277D82BE0](v370);
  v455 = v370;
  v452 = v371;
  v453 = v372;
  v454 = v373;
  v377 = sub_225F205E0(v375);
  v451 = v377;
  sub_226098F18();
  v384 = sub_225F270DC();
  sub_225F25E38(v383, v382, v380, MEMORY[0x277D84A98], v384, v381, &v449);
  v385 = 0;
  sub_225F27140(v378);
  v448 = v449;
  if (v449)
  {
    v450 = v448;
  }

  else
  {
    v450 = sub_225F26174();
    if (v448)
    {
      sub_225EFE834(&v448);
    }
  }

  v310 = v450;
  v447 = v450;
  sub_226098EE8();
  v37 = *MEMORY[0x277CDCBA0];
  v312 = v356[13];
  v311 = v356 + 13;
  v312(v359, v37, v355);
  v317 = sub_2260990B8();
  v314 = v356[1];
  v313 = v356 + 1;
  v314(v359, v355);
  v314(v361, v355);
  v316 = 1;
  v446 = v317 & 1;
  sub_226098EE8();
  v312(v359, *MEMORY[0x277CDCBA8], v355);
  v315 = sub_2260990B8();
  v314(v359, v355);
  v314(v361, v355);
  v445 = v315 & 1 & v316;
  if (v317)
  {
    v309 = 1;
  }

  else
  {
    v443 = sub_226098F38();
    v444 = v38 & 1;
    v308 = (v38 & 1) != 0;
    v309 = v308;
  }

  if (v309)
  {
    v307 = -1;
  }

  else
  {
    v306 = sub_226098F38();
    if (v39)
    {
      sub_22609A3B8(v318, 11, 2, v319, 57, 2, v320, 49, 2, 68, 0);
      __break(1u);
    }

    else
    {
      v305 = v306;
    }

    v307 = v305;
  }

  v303 = v307;
  v442 = v307;
  sub_226098ED8();
  v304 = sub_225F261A4(v354);
  sub_225F271E8(v354, v40);
  v441 = v304;
  v440 = 0;
  v439 = 0;
  if (v367)
  {
    sub_226098F88();
    sub_226098F88();
    sub_225F2C4E8(v352, v348);
    v301 = v335[6];
    v302 = v335 + 6;
    if (v301(v348, 1, v334) == 1)
    {
      sub_225F2C610(v348);
    }

    else
    {
      v299 = v335[4];
      v300 = v335 + 4;
      v299(v340, v348, v334);
      sub_225F2C4E8(v350, v346);
      if (v301(v346, 1, v334) != 1)
      {
        v299(v338, v346, v334);
        v386 = v371;
        v387 = v372;
        v388 = v373;
        v41 = sub_225F1E204(v340, v338, v371, v372, v373, v362 & 1, v363, v364, v374, v365, v366, 0, 0);
        v42 = v440;
        v440 = v41;
        MEMORY[0x277D82BD8](v42);
        v298 = v335[1];
        v297 = v335 + 1;
        v298(v338, v334);
        v298(v340, v334);
LABEL_22:
        v389 = v371;
        v390 = v372;
        v391 = v373;
        v44 = sub_225F1E204(v344, v342, v371, v372, v373, v362 & 1, v363, v364, v374, v365, v366, 0, 0);
        v45 = v439;
        v439 = v44;
        MEMORY[0x277D82BD8](v45);
        v296 = v335[1];
        v295 = v335 + 1;
        v296(v342, v334);
        sub_225F2C610(v350);
        v296(v344, v334);
        sub_225F2C610(v352);
        goto LABEL_23;
      }

      sub_225F2C610(v346);
      (v335[1])(v340, v334);
    }

    v43 = v440;
    v440 = 0;
    MEMORY[0x277D82BD8](v43);
    goto LABEL_22;
  }

LABEL_23:
  v46 = sub_22609A4E8();
  v290 = &v437;
  v437 = v46;
  v438 = v47;
  v292 = 1;
  v48 = sub_226099AA8();
  v279 = v49;
  MEMORY[0x22AA735F0](v48);

  MEMORY[0x277D82BE0](v370);
  v280 = &v436;
  v436 = v370;
  v285 = sub_225F27290();
  v286 = sub_225F272F4();
  v50 = sub_226099A28();
  v281 = v435;
  v435[0] = v50;
  v435[1] = v51;
  v289 = MEMORY[0x277D837D0];
  v287 = MEMORY[0x277D83838];
  v288 = MEMORY[0x277D83830];
  sub_22609A4C8();
  sub_225EFE6BC(v281);
  v52 = sub_226099AA8();
  v282 = v53;
  MEMORY[0x22AA735F0](v52);

  MEMORY[0x277D82BE0](v370);
  v434[2] = v370;
  v54 = sub_226099A28();
  v283 = v434;
  v434[0] = v54;
  v434[1] = v55;
  sub_22609A4C8();
  sub_225EFE6BC(v283);
  v56 = sub_226099AA8();
  v284 = v57;
  MEMORY[0x22AA735F0](v56);

  MEMORY[0x277D82BE0](v377);
  v433[2] = v377;
  v58 = sub_226099A28();
  v291 = v433;
  v433[0] = v58;
  v433[1] = v59;
  sub_22609A4C8();
  sub_225EFE6BC(v291);
  v60 = sub_226099AA8();
  v293 = v61;
  MEMORY[0x22AA735F0](v60);

  v294 = [v310 speechRecognitionFeatures];
  if (v294)
  {
    v278 = v294;
    v275 = v294;
    sub_225F27014();
    v276 = sub_226099878();
    MEMORY[0x277D82BD8](v275);
    v277 = v276;
  }

  else
  {
    v277 = 0;
  }

  v270 = &v432;
  v432 = v277;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786070, &qword_2260A0120);
  v62 = sub_226099A18();
  v272 = v431;
  v431[0] = v62;
  v431[1] = v63;
  v271 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v272);
  v64 = sub_226099AA8();
  v273 = v65;
  MEMORY[0x22AA735F0](v64);

  v274 = [v310 acousticFeatures];
  if (v274)
  {
    v269 = v274;
    v266 = v274;
    sub_225F2C484();
    v267 = sub_226099878();
    MEMORY[0x277D82BD8](v266);
    v268 = v267;
  }

  else
  {
    v268 = 0;
  }

  v251 = &v430;
  v430 = v268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786078, &qword_2260A0128);
  v66 = sub_226099A18();
  v252 = v429;
  v429[0] = v66;
  v429[1] = v67;
  v256 = MEMORY[0x277D837D0];
  v254 = MEMORY[0x277D83838];
  v255 = MEMORY[0x277D83830];
  v263 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v252);
  v264 = 1;
  v68 = sub_226099AA8();
  v253 = v69;
  MEMORY[0x22AA735F0](v68);

  [v310 snr];
  v428[2] = v70;
  v260 = MEMORY[0x277D839F8];
  v261 = MEMORY[0x277D83A60];
  v262 = MEMORY[0x277D83A58];
  v71 = sub_226099A38();
  v257 = v428;
  v428[0] = v71;
  v428[1] = v72;
  sub_22609A4C8();
  sub_225EFE6BC(v257);
  v73 = sub_226099AA8();
  v258 = v74;
  MEMORY[0x22AA735F0](v73);

  v427 = v317 & v264;
  sub_22609A4B8();
  v75 = sub_226099AA8();
  v259 = v76;
  MEMORY[0x22AA735F0](v75);

  sub_226098F58();
  v424 = v480;
  v425 = v481;
  v426 = v482;
  sub_22609A0F8();
  v423 = v77;
  sub_22609A4C8();
  v78 = sub_226099AA8();
  v265 = v79;
  MEMORY[0x22AA735F0](v78);

  MEMORY[0x277D82BE0](v304);
  if (v304)
  {
    v250 = v304;
    v246 = v304;
    [v304 score];
    v247 = v80;
    MEMORY[0x277D82BD8](v246);
    v248 = v247;
    v249 = 0;
  }

  else
  {
    v248 = 0;
    v249 = 1;
  }

  v240 = &v421;
  v421 = v248;
  v244 = 1;
  v422 = v249 & 1;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786080, &qword_2260A0130);
  v81 = sub_226099A18();
  v243 = v420;
  v420[0] = v81;
  v420[1] = v82;
  v242 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v243);
  v83 = sub_226099AA8();
  v245 = v84;
  MEMORY[0x22AA735F0](v83);

  MEMORY[0x277D82BE0](v304);
  if (v304)
  {
    v239 = v304;
    v235 = v304;
    [v304 threshold];
    v236 = v85;
    MEMORY[0x277D82BD8](v235);
    v237 = v236;
    v238 = 0;
  }

  else
  {
    v237 = 0;
    v238 = 1;
  }

  v418 = v237;
  v233 = 1;
  v419 = v238 & 1;
  v86 = sub_226099A18();
  v232 = v417;
  v417[0] = v86;
  v417[1] = v87;
  v231 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v232);
  v88 = sub_226099AA8();
  v234 = v89;
  MEMORY[0x22AA735F0](v88);

  MEMORY[0x277D82BE0](v304);
  if (v304)
  {
    v230 = v304;
    v226 = v304;
    [v304 calibrationScale];
    v227 = v90;
    MEMORY[0x277D82BD8](v226);
    v228 = v227;
    v229 = 0;
  }

  else
  {
    v228 = 0;
    v229 = 1;
  }

  v415 = v228;
  v224 = 1;
  v416 = v229 & 1;
  v91 = sub_226099A18();
  v223 = v414;
  v414[0] = v91;
  v414[1] = v92;
  v222 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v223);
  v93 = sub_226099AA8();
  v225 = v94;
  MEMORY[0x22AA735F0](v93);

  MEMORY[0x277D82BE0](v304);
  if (v304)
  {
    v221 = v304;
    v217 = v304;
    [v304 calibrationOffset];
    v218 = v95;
    MEMORY[0x277D82BD8](v217);
    v219 = v218;
    v220 = 0;
  }

  else
  {
    v219 = 0;
    v220 = 1;
  }

  v96 = v385;
  v412 = v219;
  v213 = 1;
  v413 = v220 & 1;
  v97 = sub_226099A18();
  v204 = v411;
  v411[0] = v97;
  v411[1] = v98;
  v211 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v204);
  v99 = sub_226099AA8();
  v205 = v100;
  MEMORY[0x22AA735F0](v99);

  v410 = v315 & v213;
  v207 = MEMORY[0x277D839B0];
  v208 = MEMORY[0x277D839D8];
  sub_22609A4B8();
  v209 = 21;
  v101 = sub_226099AA8();
  v206 = v102;
  MEMORY[0x22AA735F0](v101);

  v409 = v362;
  sub_22609A4B8();
  v103 = sub_226099AA8();
  v210 = v104;
  MEMORY[0x22AA735F0](v103);

  v408[1] = v303;
  sub_22609A4B8();
  v105 = sub_226099AA8();
  v212 = v106;
  MEMORY[0x22AA735F0](v105);

  v406[1] = sub_226098F08();
  v407 = v107 & 1 & v213;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786088, &qword_2260A0138);
  v215 = sub_225F27014();
  result = sub_225F25E38(v321, 0, v214, MEMORY[0x277D84A98], v215, v381, v408);
  v216 = v96;
  if (v96)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v168 = v406;
  v406[0] = v408[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786090, &qword_2260A0140);
  v109 = sub_226099A18();
  v169 = v405;
  v405[0] = v109;
  v405[1] = v110;
  v181 = MEMORY[0x277D837D0];
  v179 = MEMORY[0x277D83838];
  v180 = MEMORY[0x277D83830];
  v186 = &v437;
  sub_22609A4C8();
  sub_225EFE6BC(v169);
  v184 = 1;
  v111 = sub_226099AA8();
  v170 = v112;
  MEMORY[0x22AA735F0](v111);

  v404[3] = v363;
  v404[4] = v364;
  sub_22609A4C8();
  v113 = sub_226099AA8();
  v171 = v114;
  MEMORY[0x22AA735F0](v113);

  v404[1] = v365;
  v404[2] = v366;
  sub_22609A4C8();
  v115 = sub_226099AA8();
  v172 = v116;
  MEMORY[0x22AA735F0](v115);

  v173 = v440;
  MEMORY[0x277D82BE0](v440);
  MEMORY[0x277D82BE0](v173);
  v174 = v404;
  v404[0] = v173;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786098, &qword_2260A0148);
  v117 = sub_226099A18();
  v175 = v403;
  v403[0] = v117;
  v403[1] = v118;
  sub_22609A4C8();
  sub_225EFE6BC(v175);
  v119 = sub_226099AA8();
  v176 = v120;
  MEMORY[0x22AA735F0](v119);

  v177 = v439;
  MEMORY[0x277D82BE0](v439);
  MEMORY[0x277D82BE0](v177);
  v402[2] = v177;
  v121 = sub_226099A18();
  v182 = v402;
  v402[0] = v121;
  v402[1] = v122;
  sub_22609A4C8();
  sub_225EFE6BC(v182);
  v123 = sub_226099AA8();
  v183 = v124;
  MEMORY[0x22AA735F0](v123);

  v401 = sub_226098F68();
  sub_22609A4B8();
  v125 = sub_226099AA8();
  v185 = v126;
  MEMORY[0x22AA735F0](v125);
  v127 = v333;

  v188 = v437;
  v187 = v438;
  sub_2260998E8();
  sub_225EFE6BC(v186);
  v189 = sub_226099A88();
  v190 = v128;
  v399 = v189;
  v400 = v128;
  v129 = sub_225F1CF74();
  (*(v330 + 16))(v127, v129, v329);
  sub_2260998E8();
  v192 = 32;
  v193 = 7;
  v130 = swift_allocObject();
  v131 = v190;
  v194 = v130;
  *(v130 + 16) = v189;
  *(v130 + 24) = v131;
  v202 = sub_226098C48();
  v203 = sub_22609A088();
  v191 = 17;
  v196 = swift_allocObject();
  *(v196 + 16) = 32;
  v197 = swift_allocObject();
  *(v197 + 16) = 8;
  v132 = swift_allocObject();
  v133 = v194;
  v195 = v132;
  *(v132 + 16) = v322;
  *(v132 + 24) = v133;
  v134 = swift_allocObject();
  v135 = v195;
  v199 = v134;
  *(v134 + 16) = v323;
  *(v134 + 24) = v135;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v198 = sub_22609A4F8();
  v200 = v136;

  v137 = v196;
  v138 = v200;
  *v200 = v324;
  v138[1] = v137;

  v139 = v197;
  v140 = v200;
  v200[2] = v325;
  v140[3] = v139;

  v141 = v199;
  v142 = v200;
  v200[4] = v326;
  v142[5] = v141;
  sub_225EF5418();

  if (os_log_type_enabled(v202, v203))
  {
    v143 = v216;
    v161 = sub_22609A188();
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v162 = sub_225EF5468(0, v160, v160);
    v163 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v164 = v396;
    v396[0] = v161;
    v165 = &v395;
    v395 = v162;
    v166 = &v394;
    v394 = v163;
    sub_225EF54BC(2, v396);
    sub_225EF54BC(1, v164);
    v392 = v324;
    v393 = v196;
    sub_225EF73E8(&v392, v164, v165, v166);
    v167 = v143;
    if (v143)
    {

      __break(1u);
    }

    else
    {
      v392 = v325;
      v393 = v197;
      sub_225EF73E8(&v392, v396, &v395, &v394);
      v158 = 0;
      v392 = v326;
      v393 = v199;
      sub_225EF73E8(&v392, v396, &v395, &v394);
      v157 = 0;
      _os_log_impl(&dword_225EEB000, v202, v203, "Creating AFSpeechPackage with the following contents: %s", v161, 0xCu);
      sub_225EF7AF4(v162, 0, v160);
      sub_225EF7AF4(v163, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v159 = v157;
    }
  }

  else
  {
    v144 = v216;

    v159 = v144;
  }

  v145 = v159;
  MEMORY[0x277D82BD8](v202);
  (*(v330 + 8))(v333, v329);
  v155 = sub_225F2C420();
  MEMORY[0x277D82BE0](v370);
  MEMORY[0x277D82BE0](v370);
  MEMORY[0x277D82BE0](v377);
  MEMORY[0x277D82BE0](v310);
  sub_226098F58();
  v398[1] = v483;
  v398[2] = v484;
  v398[3] = v485;
  sub_22609A0F8();
  v156 = v146;
  MEMORY[0x277D82BE0](v304);
  v396[1] = sub_226098F08();
  v397 = v147 & 1;
  result = sub_225F25E38(v327, 0, v214, MEMORY[0x277D84A98], v215, v381, v398);
  if (v145)
  {
    goto LABEL_53;
  }

  v152 = v398[0];
  sub_2260998E8();
  sub_2260998E8();
  v148 = sub_226098F68();
  v153 = &v149;
  v154 = sub_225F264D4(v370, v370, v377, v310, v317 & 1, v304, v315 & 1, v362 & 1, v156, v303, v152, v363, v364, v365, v366, v173, v177, v148);
  if (v154)
  {
    v151 = v154;
  }

  else
  {
    sub_22609A3B8(v318, 11, 2, v328, 68, 2, v320, 49, 2, 122, 0);
    __break(1u);
  }

  v150 = v151;

  sub_225EFE834(&v439);
  sub_225EFE834(&v440);
  MEMORY[0x277D82BD8](v304);
  MEMORY[0x277D82BD8](v310);
  MEMORY[0x277D82BD8](v377);
  MEMORY[0x277D82BD8](v370);
  MEMORY[0x277D82BD8](v370);
  return v150;
}

char *sub_225F205E0(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v879 = v1;
  v878 = v3;
  v877 = v2;
  v5 = v4;
  v890 = v4;
  v891 = 0;
  v1019 = 0;
  v1018 = 0;
  v1017 = 0;
  v1016 = 0;
  v1015 = 0;
  v1014 = 0.0;
  v1013 = 0;
  v1012 = 0;
  v1011 = 0;
  v1010 = 0;
  v1009 = 0;
  v863 = 0;
  v1006 = 0;
  v1005 = 0;
  v1004 = 0;
  memset(v1003, 0, sizeof(v1003));
  v999 = 0;
  v998 = 0;
  v997 = 0;
  memset(v996, 0, sizeof(v996));
  v990 = 0;
  v987 = 0;
  v986 = 0;
  v977 = 0;
  v976 = 0;
  v974 = 0;
  v970 = 0;
  v969 = 0;
  v968 = 0;
  v967 = 0;
  v966 = 0;
  v964 = 0;
  v962 = 0;
  v961 = 0;
  v952 = 0;
  v951[1] = 0;
  v951[0] = 0;
  v943 = 0;
  v942 = 0;
  v924 = 0;
  v923 = 0;
  v922 = 0;
  v921 = 0;
  v916 = 0;
  v915 = 0;
  v914[1] = 0;
  v914[0] = 0;
  v911 = 0;
  v1020 = v6;
  v1021 = v7;
  v1022 = v8;
  v876 = v6;
  v887 = v7;
  v888 = v8;
  v864 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786040, &qword_2260A00F0) - 8) + 64);
  MEMORY[0x28223BE20](0);
  v866 = (v864 + 15) & 0xFFFFFFFFFFFFFFF0;
  v865 = &v195 - v866;
  MEMORY[0x28223BE20](v9);
  v867 = &v195 - v866;
  v868 = sub_2260995E8();
  v869 = *(v868 - 8);
  v870 = v869;
  MEMORY[0x28223BE20](v868 - 8);
  v871 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1019 = v871;
  v872 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860A0, &qword_2260A0150) - 8) + 64);
  MEMORY[0x28223BE20](v891);
  v874 = (v872 + 15) & 0xFFFFFFFFFFFFFFF0;
  v873 = (&v195 - v874);
  MEMORY[0x28223BE20](v11);
  v875 = (&v195 - v874);
  v880 = sub_226098C58();
  v881 = *(v880 - 8);
  v882 = v881;
  v885 = *(v881 + 64);
  MEMORY[0x28223BE20](v880 - 8);
  v883 = &v195 - ((v885 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v883);
  v884 = &v195 - v12;
  MEMORY[0x28223BE20](&v195 - v12);
  v886 = &v195 - v13;
  v14 = MEMORY[0x28223BE20](&v195 - v13);
  v889 = &v195 - v15;
  v1018 = v5;
  v1015 = v16;
  v1016 = v887;
  v1017 = v888;
  v1014 = v14;
  v1013 = v17;
  v1012 = v18;
  v893 = sub_226098EF8();
  v892 = v893;
  v1011 = v893;
  v894 = sub_226098B08();
  v900 = sub_226099CD8();
  v895 = v900;
  v1010 = v900;
  v897 = sub_226098F48();
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786048, &qword_2260A00F8);
  v899 = sub_226099CD8();
  v898 = v899;
  v1009 = v899;

  if (v900 >= v899)
  {
    if (v898 < v895)
    {
      v44 = v886;
      v45 = sub_225F1CF74();
      (*(v882 + 16))(v44, v45, v880);
      v780 = 24;
      v794 = 7;
      v785 = swift_allocObject();
      *(v785 + 16) = v898;
      v795 = swift_allocObject();
      *(v795 + 16) = v895;
      v808 = sub_226098C48();
      v781 = v808;
      v807 = sub_22609A0A8();
      v782 = v807;
      v789 = 17;
      v798 = swift_allocObject();
      v783 = v798;
      v788 = 0;
      *(v798 + 16) = 0;
      v799 = swift_allocObject();
      v784 = v799;
      v791 = 8;
      *(v799 + 16) = 8;
      v793 = 32;
      v46 = swift_allocObject();
      v47 = v785;
      v786 = v46;
      *(v46 + 16) = sub_225F2D734;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v786;
      v800 = v48;
      v787 = v48;
      *(v48 + 16) = sub_225F2D374;
      *(v48 + 24) = v49;
      v801 = swift_allocObject();
      v790 = v801;
      *(v801 + 16) = v788;
      v802 = swift_allocObject();
      v792 = v802;
      *(v802 + 16) = v791;
      v50 = swift_allocObject();
      v51 = v795;
      v796 = v50;
      *(v50 + 16) = sub_225F2D734;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v796;
      v805 = v52;
      v797 = v52;
      *(v52 + 16) = sub_225F2D374;
      *(v52 + 24) = v53;
      v806 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v803 = sub_22609A4F8();
      v804 = v54;

      v55 = v798;
      v56 = v804;
      *v804 = sub_225EF7434;
      v56[1] = v55;

      v57 = v799;
      v58 = v804;
      v804[2] = sub_225EF7434;
      v58[3] = v57;

      v59 = v800;
      v60 = v804;
      v804[4] = sub_225EF71D0;
      v60[5] = v59;

      v61 = v801;
      v62 = v804;
      v804[6] = sub_225EF7434;
      v62[7] = v61;

      v63 = v802;
      v64 = v804;
      v804[8] = sub_225EF7434;
      v64[9] = v63;

      v65 = v804;
      v66 = v805;
      v804[10] = sub_225EF71D0;
      v65[11] = v66;
      sub_225EF5418();

      if (os_log_type_enabled(v808, v807))
      {
        v67 = v863;
        v774 = sub_22609A188();
        v770 = v774;
        v771 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v772 = 0;
        v775 = sub_225EF5468(0, v771, v771);
        v773 = v775;
        v776 = sub_225EF5468(v772, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v910[0] = v774;
        v909 = v775;
        v908 = v776;
        v777 = v910;
        sub_225EF54BC(0, v910);
        sub_225EF54BC(2, v777);
        v906 = sub_225EF7434;
        v907 = v783;
        sub_225EF73E8(&v906, v777, &v909, &v908);
        v778 = v67;
        v779 = v67;
        if (v67)
        {
          v768 = 0;

          __break(1u);
        }

        else
        {
          v906 = sub_225EF7434;
          v907 = v784;
          sub_225EF73E8(&v906, v910, &v909, &v908);
          v766 = 0;
          v767 = 0;
          v906 = sub_225EF71D0;
          v907 = v787;
          sub_225EF73E8(&v906, v910, &v909, &v908);
          v764 = 0;
          v765 = 0;
          v906 = sub_225EF7434;
          v907 = v790;
          sub_225EF73E8(&v906, v910, &v909, &v908);
          v762 = 0;
          v763 = 0;
          v906 = sub_225EF7434;
          v907 = v792;
          sub_225EF73E8(&v906, v910, &v909, &v908);
          v760 = 0;
          v761 = 0;
          v906 = sub_225EF71D0;
          v907 = v797;
          sub_225EF73E8(&v906, v910, &v909, &v908);
          v758 = 0;
          v759 = 0;
          _os_log_impl(&dword_225EEB000, v781, v782, "Size of lossless n-best %ld is less than size of sausage-based n-best %ld; this is unexpected.", v770, 0x16u);
          v757 = 0;
          sub_225EF7AF4(v773, 0, v771);
          sub_225EF7AF4(v776, v757, MEMORY[0x277D84F70] + 8);
          sub_22609A168();

          v769 = v758;
        }
      }

      else
      {
        v68 = v863;

        v769 = v68;
      }

      v755 = v769;

      (*(v882 + 8))(v886, v880);
      v756 = v755;
    }

    else
    {
      v756 = v863;
    }

    v810 = v756;
  }

  else
  {
    v19 = v889;
    v20 = sub_225F1CF74();
    (*(v882 + 16))(v19, v20, v880);
    v834 = 24;
    v848 = 7;
    v839 = swift_allocObject();
    *(v839 + 16) = v898;
    v849 = swift_allocObject();
    *(v849 + 16) = v895;
    v862 = sub_226098C48();
    v835 = v862;
    v861 = sub_22609A0A8();
    v836 = v861;
    v843 = 17;
    v852 = swift_allocObject();
    v837 = v852;
    v842 = 0;
    *(v852 + 16) = 0;
    v853 = swift_allocObject();
    v838 = v853;
    v845 = 8;
    *(v853 + 16) = 8;
    v847 = 32;
    v21 = swift_allocObject();
    v22 = v839;
    v840 = v21;
    *(v21 + 16) = sub_225F2D734;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v840;
    v854 = v23;
    v841 = v23;
    *(v23 + 16) = sub_225F2D374;
    *(v23 + 24) = v24;
    v855 = swift_allocObject();
    v844 = v855;
    *(v855 + 16) = v842;
    v856 = swift_allocObject();
    v846 = v856;
    *(v856 + 16) = v845;
    v25 = swift_allocObject();
    v26 = v849;
    v850 = v25;
    *(v25 + 16) = sub_225F2D734;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v850;
    v859 = v27;
    v851 = v27;
    *(v27 + 16) = sub_225F2D374;
    *(v27 + 24) = v28;
    v860 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v857 = sub_22609A4F8();
    v858 = v29;

    v30 = v852;
    v31 = v858;
    *v858 = sub_225EF7434;
    v31[1] = v30;

    v32 = v853;
    v33 = v858;
    v858[2] = sub_225EF7434;
    v33[3] = v32;

    v34 = v854;
    v35 = v858;
    v858[4] = sub_225EF71D0;
    v35[5] = v34;

    v36 = v855;
    v37 = v858;
    v858[6] = sub_225EF7434;
    v37[7] = v36;

    v38 = v856;
    v39 = v858;
    v858[8] = sub_225EF7434;
    v39[9] = v38;

    v40 = v858;
    v41 = v859;
    v858[10] = sub_225EF71D0;
    v40[11] = v41;
    sub_225EF5418();

    if (os_log_type_enabled(v862, v861))
    {
      v42 = v863;
      v828 = sub_22609A188();
      v824 = v828;
      v825 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v826 = 0;
      v829 = sub_225EF5468(0, v825, v825);
      v827 = v829;
      v830 = sub_225EF5468(v826, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v905 = v828;
      v904 = v829;
      v903 = v830;
      v831 = &v905;
      sub_225EF54BC(0, &v905);
      sub_225EF54BC(2, v831);
      v901 = sub_225EF7434;
      v902 = v837;
      sub_225EF73E8(&v901, v831, &v904, &v903);
      v832 = v42;
      v833 = v42;
      if (v42)
      {
        v822 = 0;

        __break(1u);
      }

      else
      {
        v901 = sub_225EF7434;
        v902 = v838;
        sub_225EF73E8(&v901, &v905, &v904, &v903);
        v820 = 0;
        v821 = 0;
        v901 = sub_225EF71D0;
        v902 = v841;
        sub_225EF73E8(&v901, &v905, &v904, &v903);
        v818 = 0;
        v819 = 0;
        v901 = sub_225EF7434;
        v902 = v844;
        sub_225EF73E8(&v901, &v905, &v904, &v903);
        v816 = 0;
        v817 = 0;
        v901 = sub_225EF7434;
        v902 = v846;
        sub_225EF73E8(&v901, &v905, &v904, &v903);
        v814 = 0;
        v815 = 0;
        v901 = sub_225EF71D0;
        v902 = v851;
        sub_225EF73E8(&v901, &v905, &v904, &v903);
        v812 = 0;
        v813 = 0;
        _os_log_impl(&dword_225EEB000, v835, v836, "Size of lossless n-best %ld exceeds size of sausage-based n-best %ld; this leads to information loss in the lossless n-best.", v824, 0x16u);
        v811 = 0;
        sub_225EF7AF4(v827, 0, v825);
        sub_225EF7AF4(v830, v811, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v823 = v812;
      }
    }

    else
    {
      v43 = v863;

      v823 = v43;
    }

    v809 = v823;

    (*(v882 + 8))(v889, v880);
    v810 = v809;
  }

  v69 = v810;
  v1007[1] = v892;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860A8, &qword_2260A0158);
  v70 = sub_225F2C6B8();
  MEMORY[0x22AA72D20](&v1008, v747, v70);
  v1007[0] = v1008;
  v748 = &v195;
  MEMORY[0x28223BE20](&v195);
  v192[0] = v71;
  v192[1] = v879;
  v749 = &v195;
  MEMORY[0x28223BE20](&v195);
  v750 = v192;
  v193 = sub_225F2C740;
  v194 = v72;
  v751 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860B0, &qword_2260A0160);
  v752 = sub_225F2C780();
  v73 = sub_225F2C7E4();
  v75 = sub_225F15970(sub_225F2C750, v750, v751, v752, MEMORY[0x277D84A98], v73, MEMORY[0x277D84AC0], v74);
  v753 = v69;
  v754 = v75;
  if (v69)
  {
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v738 = v754;
  sub_225EFE6E8(v1007);
  v1006 = v738;
  v739 = 0;
  v740 = sub_225F2C904();
  v741 = v740;
  v1005 = sub_22609A4F8();
  v744 = 0;
  v1004 = 0;
  v1001 = sub_226098F98();
  v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786030, &qword_2260A00D8);
  v76 = sub_225F2C968();
  v743 = &v1001;
  MEMORY[0x22AA72D20](&v1002, v742, v76);
  sub_225EFE6E8(v743);
  v1000 = v1002;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860B8, &unk_2260A0168);
  sub_22609A3F8();
  v745 = v744;
  for (i = v753; ; i = v202)
  {
    v735 = i;
    v736 = v745;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860C0, &unk_2260A0170);
    sub_22609A408();
    sub_225F2C9F0(v873, v875);
    v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860C8, &qword_2260A0178);
    if ((*(*(v737 - 8) + 48))(v875, 1) == 1)
    {
      sub_225EFE6E8(v1003);
      sub_225F27290();
      v200 = v1005;
      sub_2260998E8();
      sub_2260998E8();
      v201 = sub_225F29170(v200, v738, v877);
      if (v201)
      {
        v199 = v201;
      }

      else
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 312, 0);
        __break(1u);
      }

      v198 = v199;
      sub_225EFE6E8(&v1005);

      return v198;
    }

    v722 = *v875;
    v77 = v875 + *(v737 + 48);
    v999 = v722;
    (*(v870 + 32))(v871, v77, v868);
    v724 = sub_22609A4F8();
    v723 = v78;
    *v78 = sub_2260995D8();
    sub_225EF5418();
    v727 = v79;
    v725 = sub_2260995C8();
    v731 = sub_226099C98();
    v726 = v731;

    v998 = v731;
    v728 = 0;
    v729 = sub_225F2CB58();
    v730 = v729;
    v997 = sub_22609A4F8();
    v994 = v731;
    v733 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860D0, &qword_2260A0180);
    v732 = v733;
    v80 = sub_225F2CBBC();
    MEMORY[0x22AA72D20](&v995, v733, v80);
    v993 = v995;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860D8, &unk_2260A0188);
    sub_22609A3F8();
    for (j = v735; ; j = v683)
    {
      v719 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860E0, &unk_2260A0190);
      sub_22609A408();
      v720 = v991;
      v721 = v992;
      if (!v992)
      {
        break;
      }

      v717 = v720;
      v718 = v721;
      v81 = v719;
      v706 = v721;
      v707 = v720;
      v924 = v720;
      v923 = v721;
      v713 = sub_225F1D820(v721, v736 & 1);
      v708 = v713;
      v922 = v713;
      v712 = sub_225F26174();
      v709 = v712;
      v921 = v712;
      sub_2260998E8();
      v714 = 0;
      v710 = sub_225F1E118();
      v711 = sub_226099C78();

      [v712 setTokens_];

      v82 = v712;
      v920 = v712;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860F0, &qword_2260A01A0);
      sub_226099CE8();
      v918 = v713;
      v917 = v714;
      v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
      sub_225F2D5C0();
      sub_226099C18();
      v716 = v81;
      if (v81)
      {
        goto LABEL_189;
      }

      v701 = v919;
      v916 = v919;
      v702 = sub_225F27014();
      v703 = sub_225F27F74(v707);
      v915 = v703;
      sub_2260998E8();
      v913 = v738;
      v704 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786160, &qword_2260A01D8);
      sub_225F2D648();
      sub_22609A028();
      for (k = v716; ; k = v699)
      {
        v699 = k;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786168, &unk_2260A01E0);
        sub_22609A388();
        v700 = v912;
        if (!v912)
        {
          break;
        }

        v698 = v700;
        v694 = v700;
        v911 = v700;
        v695 = sub_225F2D6D0();
        v696 = v695;
        v697 = [v694 interpretationIndices];
        if (v697)
        {
          v693 = v697;
          v690 = v697;
          v691 = sub_226099C88();

          v692 = v691;
        }

        else
        {
          v692 = 0;
        }

        v689 = v692;
        if (v692)
        {
          v688 = v689;
        }

        else
        {
          sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 228, 0);
          __break(1u);
        }

        v686 = v688;
        sub_226099D38();
        v685 = v910[1];
        v687 = sub_22609A118();

        if (v687)
        {
          v83 = [v694 confidenceScore];
          v84 = __OFADD__(v83, v701);
          result = &v83[v701];
          v86 = v84;
          v684 = result;
          if (v86)
          {
            goto LABEL_197;
          }

          [v694 setConfidenceScore_];
        }

        else
        {
        }
      }

      v683 = v699;
      sub_225EFE6E8(v914);
    }

    sub_225EFE6E8(v996);
    v681 = v997;
    v680 = v997;
    sub_2260998E8();
    v682 = sub_226099CD8();
    sub_2260998E8();
    v679 = v682 >= 1 && sub_226099CD8() > 0;
    v678 = v679;

    sub_2260998E8();
    if (v678)
    {
      v927 = v726;
      sub_225F2D408();
      sub_226099FE8();
      v677 = v926;
      if (v926)
      {
        v676 = v677;
        v675 = v677;
        v925 = v677;
        sub_225F2D490();
        sub_226099998();
      }

      else
      {
        v87 = sub_226099598();
        (*(*(v87 - 8) + 56))(v867, 1);
      }

      v88 = sub_226099598();
      v674 = (*(*(v88 - 8) + 48))(v867, 1) != 1;
      v672 = v674;
      sub_225F2D518(v867);
      v673 = v672;
    }

    else
    {
      v673 = 0;
    }

    v671 = v673;

    if (!v671)
    {
      v662 = v736;
      goto LABEL_62;
    }

    v931 = v726;
    sub_225F2D408();
    sub_226099FE8();
    v670 = v930;
    if (!v930)
    {
      goto LABEL_60;
    }

    v669 = v670;
    v666 = v670;
    v928 = v670;
    sub_225F2D490();
    sub_226099998();

    v667 = sub_226099598();
    v668 = *(v667 - 8);
    v89 = (*(v668 + 48))(v865, 1);
    if (v89 == 1)
    {
      sub_225F2D518(v865);
LABEL_60:
      v665 = 2;
      goto LABEL_56;
    }

    v664 = sub_226099528();
    (*(v668 + 8))(v865, v667);
    v665 = v664 & 1;
LABEL_56:
    v929 = v665;
    v663 = v665 == 2 ? 1 : v929;
    v1004 = (v663 ^ 1) & 1;
    v662 = v663 ^ 1;
LABEL_62:
    v657 = v662;
    v661 = sub_225F26174();
    v658 = v661;
    v990 = v661;
    v659 = sub_226099C78();
    [v661 setInterpretations_];

    v660 = sub_226099CD8();

    [v661 setIsLowConfidence_];
    if ([v661 isLowConfidence])
    {
      break;
    }

    v203 = v719;
LABEL_183:
    v202 = v203;
    v191 = v658;
    v989 = v658;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860E8, &qword_2260A02F0);
    sub_226099CE8();

    sub_225EFE6E8(&v997);

    (*(v870 + 8))(v871, v868);
    v745 = v657;
  }

  v988 = v878;
  v656 = v878 != 0;
  if (v878)
  {
    v655 = [objc_opt_self() isDictationWithCombinedEuclidAndASRAlternativesEnabled];
  }

  else
  {
    v655 = 0;
  }

  if ((v655 & 1) == 0)
  {
    v205 = v719;
    goto LABEL_181;
  }

  v652 = v997;
  sub_2260998E8();
  v653 = sub_226099CD8();

  result = v653;
  v90 = __OFSUB__(v653, 1);
  v654 = v653 - 1;
  if (v90)
  {
    goto LABEL_194;
  }

  v987 = v654;
  v648 = swift_allocObject();
  v649 = (v648 + 16);
  v986 = v648 + 16;
  *(v648 + 16) = 0;
  v650 = objc_opt_self();
  v651 = [v658 interpretations];
  if (v651)
  {
    v647 = v651;
    v644 = v651;
    v645 = sub_226099C88();

    v646 = v645;
  }

  else
  {
    v646 = 0;
  }

  v643 = v646;
  if (v646)
  {
    v642 = v643;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 252, 0);
    __break(1u);
  }

  v639 = v642;
  v982 = v642;
  v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860F0, &qword_2260A01A0);
  v636 = v637;
  v638 = sub_225F2CC44();
  sub_226099FE8();
  v641 = v981;
  v640 = v981;

  if (v641)
  {
    v635 = v640;
    v633 = v640;
    v634 = [v640 tokens];
    if (v634)
    {
      v632 = v634;
      v629 = v634;
      v628 = sub_225F1E118();
      v630 = sub_226099C88();

      v631 = v630;
    }

    else
    {
      v631 = 0;
    }

    v626 = v631;

    v627 = v626;
  }

  else
  {
    v627 = 0;
  }

  v980 = v627;
  if (v627)
  {
    v983 = v980;
  }

  else
  {
    v624 = 0;
    v625 = sub_225F1E118();
    v983 = sub_22609A4F8();
    if (v980)
    {
      sub_225EFE6E8(&v980);
    }
  }

  v620 = v983;
  v618 = sub_225F1E118();
  v619 = v618;
  v621 = sub_226099C78();

  v623 = [v650 transcriptFromTokens_];
  v622 = v623;

  if (v623)
  {
    v617 = v622;
    v612 = v622;
    v613 = sub_226099A08();
    v614 = v91;

    v615 = v613;
    v616 = v614;
  }

  else
  {
    v615 = 0;
    v616 = 0;
  }

  v978 = v615;
  v979 = v616;
  if (v616)
  {
    v984 = v978;
    v985 = v979;
  }

  else
  {
    v984 = sub_226099AA8();
    v985 = v92;
    if (v979)
    {
      sub_225EFE6BC(&v978);
    }
  }

  v609 = v984;
  v610 = v985;
  v976 = v984;
  v977 = v985;
  v611 = [v658 interpretations];
  if (v611)
  {
    v608 = v611;
    v605 = v611;
    v606 = sub_226099C88();

    v607 = v606;
  }

  else
  {
    v607 = 0;
  }

  v604 = v607;
  if (v607)
  {
    v603 = v604;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 253, 0);
    __break(1u);
  }

  v975[4] = v603;
  v602 = [v658 interpretations];
  if (v602)
  {
    v601 = v602;
    v598 = v602;
    v599 = sub_226099C88();

    v600 = v599;
  }

  else
  {
    v600 = 0;
  }

  v597 = v600;
  if (v600)
  {
    v596 = v597;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 253, 0);
    __break(1u);
  }

  v593 = v596;
  v594 = sub_226099CD8();

  result = (v594 - 1);
  v93 = __OFSUB__(v594, 1);
  v595 = v594 - 1;
  if (v93)
  {
    goto LABEL_195;
  }

  v94 = v719;
  sub_225F2CCCC();
  sub_2260999A8();
  v975[0] = v975[5];
  v975[1] = v975[6];
  v975[2] = v975[7];
  v975[3] = v975[8];
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786108, &qword_2260A01A8);
  v589 = v590;
  v95 = sub_225F2CD54();
  v97 = sub_225F15970(sub_225F280FC, 0, v590, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v95, MEMORY[0x277D84AC0], v96);
  v591 = v94;
  v592 = v97;
  if (v94)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v98 = v884;
  v558 = v592;
  sub_225F2CDDC(v975);
  v974 = v558;
  v99 = sub_225F1CF74();
  v556 = *(v882 + 16);
  v557 = (v882 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v556(v98, v99, v880);
  sub_2260998E8();
  v567 = 32;
  v572 = 32;
  v573 = 7;
  v100 = swift_allocObject();
  v101 = v610;
  v564 = v100;
  *(v100 + 16) = v609;
  *(v100 + 24) = v101;
  sub_2260998E8();
  v559 = swift_allocObject();
  *(v559 + 16) = v558;

  v102 = swift_allocObject();
  v103 = v559;
  v574 = v102;
  *(v102 + 16) = sub_225F2CE08;
  *(v102 + 24) = v103;

  v588 = sub_226098C48();
  v560 = v588;
  v587 = sub_22609A088();
  v561 = v587;
  v568 = 17;
  v578 = swift_allocObject();
  v562 = v578;
  *(v578 + 16) = v567;
  v579 = swift_allocObject();
  v563 = v579;
  v570 = 8;
  *(v579 + 16) = 8;
  v104 = swift_allocObject();
  v105 = v564;
  v565 = v104;
  *(v104 + 16) = sub_225EF7450;
  *(v104 + 24) = v105;
  v106 = swift_allocObject();
  v107 = v565;
  v580 = v106;
  v566 = v106;
  *(v106 + 16) = sub_225EF7B84;
  *(v106 + 24) = v107;
  v581 = swift_allocObject();
  v569 = v581;
  *(v581 + 16) = v567;
  v582 = swift_allocObject();
  v571 = v582;
  *(v582 + 16) = v570;
  v108 = swift_allocObject();
  v109 = v574;
  v575 = v108;
  *(v108 + 16) = sub_225F2CE10;
  *(v108 + 24) = v109;
  v110 = swift_allocObject();
  v111 = v575;
  v585 = v110;
  v576 = v110;
  *(v110 + 16) = sub_225EF7B84;
  *(v110 + 24) = v111;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v577 = v586;
  v583 = sub_22609A4F8();
  v584 = v112;

  v113 = v578;
  v114 = v584;
  *v584 = sub_225EF7434;
  v114[1] = v113;

  v115 = v579;
  v116 = v584;
  v584[2] = sub_225EF7434;
  v116[3] = v115;

  v117 = v580;
  v118 = v584;
  v584[4] = sub_225EF7B90;
  v118[5] = v117;

  v119 = v581;
  v120 = v584;
  v584[6] = sub_225EF7434;
  v120[7] = v119;

  v121 = v582;
  v122 = v584;
  v584[8] = sub_225EF7434;
  v122[9] = v121;

  v123 = v584;
  v124 = v585;
  v584[10] = sub_225EF7B90;
  v123[11] = v124;
  sub_225EF5418();

  if (os_log_type_enabled(v588, v587))
  {
    v125 = v591;
    v543 = sub_22609A188();
    v540 = v543;
    v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v544 = sub_225EF5468(0, v541, v541);
    v542 = v544;
    v546 = 2;
    v545 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v936[0] = v543;
    v935 = v544;
    v934 = v545;
    v547 = v936;
    sub_225EF54BC(v546, v936);
    sub_225EF54BC(v546, v547);
    v932 = sub_225EF7434;
    v933 = v562;
    sub_225EF73E8(&v932, v547, &v935, &v934);
    v548 = v125;
    v549 = v562;
    v550 = v563;
    v551 = v566;
    v552 = v569;
    v553 = v571;
    v554 = v576;
    v555 = v125;
    if (v125)
    {
      v532 = v549;
      v533 = v550;
      v534 = v551;
      v535 = v552;
      v536 = v553;
      v537 = v554;
      v538 = 0;
      v491 = v554;
      v490 = v553;
      v489 = v552;
      v488 = v551;
      v487 = v550;

      __break(1u);
    }

    else
    {
      v932 = sub_225EF7434;
      v933 = v563;
      sub_225EF73E8(&v932, v936, &v935, &v934);
      v524 = 0;
      v525 = v562;
      v526 = v563;
      v527 = v566;
      v528 = v569;
      v529 = v571;
      v530 = v576;
      v531 = 0;
      v932 = sub_225EF7B90;
      v933 = v566;
      sub_225EF73E8(&v932, v936, &v935, &v934);
      v516 = 0;
      v517 = v562;
      v518 = v563;
      v519 = v566;
      v520 = v569;
      v521 = v571;
      v522 = v576;
      v523 = 0;
      v932 = sub_225EF7434;
      v933 = v569;
      sub_225EF73E8(&v932, v936, &v935, &v934);
      v508 = 0;
      v509 = v562;
      v510 = v563;
      v511 = v566;
      v512 = v569;
      v513 = v571;
      v514 = v576;
      v515 = 0;
      v932 = sub_225EF7434;
      v933 = v571;
      sub_225EF73E8(&v932, v936, &v935, &v934);
      v500 = 0;
      v501 = v562;
      v502 = v563;
      v503 = v566;
      v504 = v569;
      v505 = v571;
      v506 = v576;
      v507 = 0;
      v932 = sub_225EF7B90;
      v933 = v576;
      sub_225EF73E8(&v932, v936, &v935, &v934);
      v492 = 0;
      v493 = v562;
      v494 = v563;
      v495 = v566;
      v496 = v569;
      v497 = v571;
      v498 = v576;
      v499 = 0;
      _os_log_impl(&dword_225EEB000, v560, v561, "AFSpeechPhrase has multiple interpretations. 1 Best: %s, ASR Alternatives: %s", v540, 0x16u);
      sub_225EF7AF4(v542, 0, v541);
      sub_225EF7AF4(v545, 2, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v539 = v492;
    }
  }

  else
  {
    v126 = v591;

    v539 = v126;
  }

  v484 = v539;

  v485 = *(v882 + 8);
  v486 = (v882 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v485(v884, v880);
  if (v654 < 4)
  {
    if (v654 <= 2)
    {
      v127 = __OFSUB__(3, v654);
      v474 = 3 - v654;
      if (v127)
      {
        goto LABEL_196;
      }

      v473 = &v937;
      swift_beginAccess();
      *v649 = v474;
      swift_endAccess();
    }
  }

  else
  {
    v483 = [v658 interpretations];
    if (v483)
    {
      v482 = v483;
      v479 = v483;
      v480 = sub_226099C88();

      v481 = v480;
    }

    else
    {
      v481 = 0;
    }

    v478 = v481;
    if (v481)
    {
      v477 = v478;
    }

    else
    {
      sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 259, 0);
      __break(1u);
    }

    v936[5] = v477;
    sub_226099FF8();
    v936[1] = v936[6];
    v936[2] = v936[7];
    v936[3] = v936[8];
    v936[4] = v936[9];
    sub_225F2D380();
    v475 = sub_226099D18();
    v476 = sub_226099C78();

    [v658 setInterpretations_];
  }

  v471 = &v973;
  swift_beginAccess();
  v472 = *v649;
  swift_endAccess();
  if (v472 < 1)
  {
    v207 = v484;
    goto LABEL_178;
  }

  v971 = v609;
  v972 = v610;
  v463 = sub_2260987C8();
  v460 = *(v463 - 8);
  v461 = v460;
  v466 = &v195;
  MEMORY[0x28223BE20](&v195);
  v462 = &v195 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2260987B8();
  sub_225F2CF00();
  v467 = sub_22609A1F8();
  v468 = v129;
  v464 = v467;
  v465 = v129;
  (*(v461 + 8))(v462, v463);
  v969 = v467;
  v970 = v468;
  v469 = sub_225F28384(v609, v610);
  v470 = v130;
  v967 = v469;
  v968 = v130;

  if (v878)
  {
    v459 = v878;
    v131 = v484;
    v455 = v878;
    v132 = sub_2260993C8();
    v456 = v131;
    v457 = v132;
    v458 = v131;
    if (!v131)
    {
      v452 = v457;

      v453 = v452;
      v454 = v456;
      goto LABEL_135;
    }

LABEL_191:
    v195 = v458;
    v196 = 0;
    v197 = 0;

    v450 = v196;
    v451 = v197;
  }

  else
  {
    v453 = 0;
    v454 = v484;
LABEL_135:
    v450 = v453;
    v451 = v454;
  }

  v448 = v451;
  v449 = v450;
  if (!v450)
  {
    v446 = v448;
    goto LABEL_176;
  }

  v447 = v449;
  v133 = v448;
  v442 = v449;
  v966 = v449;
  v443 = v997;
  sub_2260998E8();
  v965 = v443;
  v135 = sub_225F15970(sub_225F28614, 0, v636, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v638, MEMORY[0x277D84AC0], v134);
  v444 = v133;
  v445 = v135;
  if (!v133)
  {
    v438 = v445;
    sub_225EFE6E8(&v965);
    v964 = v438;
    v963 = v442;
    v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786120, &qword_2260A01B8);
    v136 = sub_225F2CF78();
    v138 = sub_225F15970(sub_225F28A40, 0, v439, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v136, MEMORY[0x277D84AC0], v137);
    v440 = 0;
    v441 = v138;
    v429 = v138;
    v962 = v138;
    sub_2260998E8();
    v960[4] = v429;
    sub_2260998E8();
    v433 = &v195;
    MEMORY[0x28223BE20](&v195);
    v431 = v192;
    v193 = v139;
    v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    v430 = v432;
    sub_225F2D02C();
    v140 = sub_22609A2D8();
    v434 = 0;
    v435 = v140;
    v436 = v433;
    v437 = v438;
    v416 = v140;

    v960[3] = v416;
    v422 = 32;
    v417 = v960;
    swift_beginAccess();
    v418 = *v649;
    swift_endAccess();
    v424 = sub_225F156F8();
    v419 = v424;
    sub_226099FF8();
    v959[1] = v960[5];
    v959[2] = v960[6];
    v959[3] = v960[7];
    v959[4] = v960[8];
    v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7864A0, &qword_2260A01C0);
    sub_225F2D0B4();
    v423 = MEMORY[0x277D837D0];
    v421 = sub_226099D18();
    sub_2260998E8();
    v961 = v421;
    v959[0] = v421;
    sub_2260998E8();
    v425 = &v195;
    MEMORY[0x28223BE20](&v195);
    v193 = v469;
    v194 = v141;
    v146 = sub_225F15970(sub_225F2D13C, v192, v142, v143, MEMORY[0x277D84A98], v144, MEMORY[0x277D84AC0], v145);
    v426 = 0;
    v427 = v146;
    v428 = v470;
    v413 = v146;

    sub_225EFE6E8(v959);
    v961 = v413;

    v957 = v609;
    v958 = v610;
    sub_225F2D16C();
    sub_226099FE8();
    v414 = v955;
    v415 = v956;
    if (v956)
    {
      v411 = v414;
      v412 = v415;
      v408 = v415;
      v409 = sub_226099978();

      v410 = v409 & 1;
    }

    else
    {
      v410 = 2;
    }

    v406 = v410;
    v407 = &v954;
    v953 = v410;
    v954 = 1;
    if (v410 == 2)
    {
      if (*v407 != 2)
      {
        goto LABEL_150;
      }

      v405 = 1;
    }

    else
    {
      v938 = v406;
      if (*v407 != 2)
      {
        v405 = v938 ^ *v407 ^ 1;
        goto LABEL_148;
      }

LABEL_150:
      v405 = 0;
    }

LABEL_148:
    if ((v405 & 1) != 0 && v722 == 0)
    {
      v147 = v426;
      v401 = v961;
      sub_2260998E8();
      v939 = v401;
      v149 = sub_225F15970(sub_225F28BA4, 0, v430, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v419, MEMORY[0x277D84AC0], v148);
      v402 = v147;
      v403 = v149;
      if (v147)
      {
        goto LABEL_193;
      }

      v399 = v403;
      sub_225EFE6E8(&v939);
      v961 = v399;

      v400 = v402;
    }

    else
    {
      v400 = v426;
    }

    v397 = v400;
    v393 = v961;
    sub_2260998E8();
    v395 = sub_225F28D58(v393);
    v394 = v395;

    v952 = v395;
    sub_2260998E8();
    v950 = v395;
    v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    sub_225F2D1E4();
    sub_22609A028();
    for (m = v397; ; m = v372)
    {
      v391 = m;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786140, &qword_2260A01C8);
      sub_22609A388();
      v392 = v949;
      if (!v949)
      {
        break;
      }

      v390 = v392;
      v384 = v392;
      v943 = v392;
      v388 = sub_225F26174();
      v382 = v388;
      v942 = v388;
      v385 = sub_22609A4F8();
      v383 = v150;
      v151 = v384;
      *v383 = v384;
      sub_225EF5418();
      v386 = v152;
      v387 = sub_226099C78();

      [v388 setTokens_];

      v153 = v388;
      v941 = v388;
      v389 = [v658 interpretations];
      if (v389)
      {
        v381 = v389;
        v378 = v389;
        v379 = sub_226099C88();

        v380 = v379;
      }

      else
      {
        v380 = 0;
      }

      v940 = v380;
      if (!v380)
      {
        sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CESRUtilities.swift", 49, 2, 300, 0);
        __break(1u);
      }

      sub_226099CE8();
      v377 = v940;
      if (v940)
      {
        v376 = v377;
        v373 = v377;
        v374 = sub_226099C78();

        v375 = v374;
      }

      else
      {
        v375 = 0;
      }

      v371 = v375;
      v372 = v391;
      [v658 setInterpretations_];
    }

    v154 = v883;
    sub_225EFE6E8(v951);
    v155 = sub_225F1CF74();
    v556(v154, v155, v880);
    sub_2260998E8();
    v334 = 24;
    v354 = 7;
    v340 = swift_allocObject();
    *(v340 + 16) = v394;

    sub_2260998E8();
    v335 = swift_allocObject();
    *(v335 + 16) = v394;

    v348 = 32;
    v353 = 32;
    v156 = swift_allocObject();
    v157 = v335;
    v355 = v156;
    *(v156 + 16) = sub_225F2D27C;
    *(v156 + 24) = v157;

    v370 = sub_226098C48();
    v336 = v370;
    v369 = sub_22609A088();
    v337 = v369;
    v349 = 17;
    v358 = swift_allocObject();
    v338 = v358;
    v343 = 0;
    *(v358 + 16) = 0;
    v359 = swift_allocObject();
    v339 = v359;
    v351 = 8;
    *(v359 + 16) = 8;
    v158 = swift_allocObject();
    v159 = v340;
    v341 = v158;
    *(v158 + 16) = sub_225F2D26C;
    *(v158 + 24) = v159;
    v160 = swift_allocObject();
    v161 = v341;
    v360 = v160;
    v342 = v160;
    *(v160 + 16) = sub_225F2D374;
    *(v160 + 24) = v161;
    v361 = swift_allocObject();
    v344 = v361;
    *(v361 + 16) = v343;
    v362 = swift_allocObject();
    v345 = v362;
    *(v362 + 16) = v351;
    v162 = swift_allocObject();
    v163 = v648;
    v346 = v162;
    *(v162 + 16) = sub_225F2D274;
    *(v162 + 24) = v163;
    v164 = swift_allocObject();
    v165 = v346;
    v363 = v164;
    v347 = v164;
    *(v164 + 16) = sub_225F2D374;
    *(v164 + 24) = v165;
    v364 = swift_allocObject();
    v350 = v364;
    *(v364 + 16) = v348;
    v365 = swift_allocObject();
    v352 = v365;
    *(v365 + 16) = v351;
    v166 = swift_allocObject();
    v167 = v355;
    v356 = v166;
    *(v166 + 16) = sub_225F2D284;
    *(v166 + 24) = v167;
    v168 = swift_allocObject();
    v169 = v356;
    v368 = v168;
    v357 = v168;
    *(v168 + 16) = sub_225EF7B84;
    *(v168 + 24) = v169;
    v366 = sub_22609A4F8();
    v367 = v170;

    v171 = v358;
    v172 = v367;
    *v367 = sub_225EF7434;
    v172[1] = v171;

    v173 = v359;
    v174 = v367;
    v367[2] = sub_225EF7434;
    v174[3] = v173;

    v175 = v360;
    v176 = v367;
    v367[4] = sub_225EF71D0;
    v176[5] = v175;

    v177 = v361;
    v178 = v367;
    v367[6] = sub_225EF7434;
    v178[7] = v177;

    v179 = v362;
    v180 = v367;
    v367[8] = sub_225EF7434;
    v180[9] = v179;

    v181 = v363;
    v182 = v367;
    v367[10] = sub_225EF71D0;
    v182[11] = v181;

    v183 = v364;
    v184 = v367;
    v367[12] = sub_225EF7434;
    v184[13] = v183;

    v185 = v365;
    v186 = v367;
    v367[14] = sub_225EF7434;
    v186[15] = v185;

    v187 = v367;
    v188 = v368;
    v367[16] = sub_225EF7B90;
    v187[17] = v188;
    sub_225EF5418();

    if (os_log_type_enabled(v370, v369))
    {
      v189 = v391;
      v319 = sub_22609A188();
      v316 = v319;
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v320 = sub_225EF5468(0, v317, v317);
      v318 = v320;
      v321 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v948 = v319;
      v947 = v320;
      v946 = v321;
      v322 = &v948;
      sub_225EF54BC(2, &v948);
      sub_225EF54BC(3, v322);
      v944 = sub_225EF7434;
      v945 = v338;
      sub_225EF73E8(&v944, v322, &v947, &v946);
      v323 = v189;
      v324 = v338;
      v325 = v339;
      v326 = v342;
      v327 = v344;
      v328 = v345;
      v329 = v347;
      v330 = v350;
      v331 = v352;
      v332 = v357;
      v333 = v189;
      if (v189)
      {
        v305 = v324;
        v306 = v325;
        v307 = v326;
        v308 = v327;
        v309 = v328;
        v310 = v329;
        v311 = v330;
        v312 = v331;
        v313 = v332;
        v314 = 0;
        v216 = v332;
        v215 = v331;
        v214 = v330;
        v213 = v329;
        v212 = v328;
        v211 = v327;
        v210 = v326;
        v209 = v325;

        __break(1u);
      }

      else
      {
        v944 = sub_225EF7434;
        v945 = v339;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v294 = 0;
        v295 = v338;
        v296 = v339;
        v297 = v342;
        v298 = v344;
        v299 = v345;
        v300 = v347;
        v301 = v350;
        v302 = v352;
        v303 = v357;
        v304 = 0;
        v944 = sub_225EF71D0;
        v945 = v342;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v283 = 0;
        v284 = v338;
        v285 = v339;
        v286 = v342;
        v287 = v344;
        v288 = v345;
        v289 = v347;
        v290 = v350;
        v291 = v352;
        v292 = v357;
        v293 = 0;
        v944 = sub_225EF7434;
        v945 = v344;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v272 = 0;
        v273 = v338;
        v274 = v339;
        v275 = v342;
        v276 = v344;
        v277 = v345;
        v278 = v347;
        v279 = v350;
        v280 = v352;
        v281 = v357;
        v282 = 0;
        v944 = sub_225EF7434;
        v945 = v345;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v261 = 0;
        v262 = v338;
        v263 = v339;
        v264 = v342;
        v265 = v344;
        v266 = v345;
        v267 = v347;
        v268 = v350;
        v269 = v352;
        v270 = v357;
        v271 = 0;
        v944 = sub_225EF71D0;
        v945 = v347;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v250 = 0;
        v251 = v338;
        v252 = v339;
        v253 = v342;
        v254 = v344;
        v255 = v345;
        v256 = v347;
        v257 = v350;
        v258 = v352;
        v259 = v357;
        v260 = 0;
        v944 = sub_225EF7434;
        v945 = v350;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v239 = 0;
        v240 = v338;
        v241 = v339;
        v242 = v342;
        v243 = v344;
        v244 = v345;
        v245 = v347;
        v246 = v350;
        v247 = v352;
        v248 = v357;
        v249 = 0;
        v944 = sub_225EF7434;
        v945 = v352;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v228 = 0;
        v229 = v338;
        v230 = v339;
        v231 = v342;
        v232 = v344;
        v233 = v345;
        v234 = v347;
        v235 = v350;
        v236 = v352;
        v237 = v357;
        v238 = 0;
        v944 = sub_225EF7B90;
        v945 = v357;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v217 = 0;
        v218 = v338;
        v219 = v339;
        v220 = v342;
        v221 = v344;
        v222 = v345;
        v223 = v347;
        v224 = v350;
        v225 = v352;
        v226 = v357;
        v227 = 0;
        _os_log_impl(&dword_225EEB000, v336, v337, "Presenting %ld Euclid alternatives of desired %ld: %s", v316, 0x20u);
        sub_225EF7AF4(v318, 0, v317);
        sub_225EF7AF4(v321, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v315 = v217;
      }
    }

    else
    {
      v190 = v391;

      v315 = v190;
    }

    v208 = v315;

    v485(v883, v880);

    sub_225EFE6E8(&v961);

    v446 = v208;
LABEL_176:
    v206 = v446;

    v207 = v206;
LABEL_178:
    v204 = v207;

    v205 = v204;
LABEL_181:
    v203 = v205;
    goto LABEL_183;
  }

  __break(1u);
  __break(1u);

  __break(1u);

  __break(1u);
LABEL_193:
  result = 0;
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
  return result;
}