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

uint64_t sub_267B969DC()
{
  sub_267EF78F8();

  return swift_deallocClassInstance();
}

void sub_267B96A1C(uint64_t a1)
{
  OUTLINED_FUNCTION_48_0();
  v4 = v1;
  v309 = v6;
  v310 = v5;
  v286 = sub_267EF68A8();
  OUTLINED_FUNCTION_58();
  v285 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_45_0();
  v284 = v10;
  OUTLINED_FUNCTION_26_2();
  v292 = sub_267EF7458();
  OUTLINED_FUNCTION_58();
  v289 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_45_0();
  v290 = v14;
  OUTLINED_FUNCTION_26_2();
  v295 = sub_267EF4498();
  OUTLINED_FUNCTION_58();
  v294 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_45_0();
  v297 = v19;
  OUTLINED_FUNCTION_26_2();
  v281 = sub_267EF4598();
  OUTLINED_FUNCTION_58();
  v280 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v279 = v23 - v22;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802293C8, &qword_267EFD168);
  OUTLINED_FUNCTION_58();
  v277 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_45_0();
  v276 = v27;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4C68();
  OUTLINED_FUNCTION_58();
  v301 = v29;
  v302 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v273 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_99_1();
  v300 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v299 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_45_0();
  v303 = v37;
  OUTLINED_FUNCTION_26_2();
  v38 = sub_267EF6718();
  OUTLINED_FUNCTION_58();
  v308 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6();
  v305 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v304 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_45_0();
  v307 = v45;
  OUTLINED_FUNCTION_26_2();
  v311 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_66_2();
  sub_267B9AB18(&v313);
  v51 = v315;
  __swift_project_boxed_opaque_existential_0(&v313, v314);
  v52 = OUTLINED_FUNCTION_54();
  v53(v52, v51);
  __swift_project_boxed_opaque_existential_0(v312, v312[3]);
  OUTLINED_FUNCTION_54();
  v54 = sub_267EF45A8();
  v56 = 0x280228000;
  v57 = &unk_267EFC000;
  v293 = v33;
  if (!v55)
  {
    v62 = v3;
    __swift_destroy_boxed_opaque_existential_0(v312);
    __swift_destroy_boxed_opaque_existential_0(&v313);
    goto LABEL_10;
  }

  v58 = v54;
  v59 = v55;
  __swift_destroy_boxed_opaque_existential_0(v312);
  __swift_destroy_boxed_opaque_existential_0(&v313);
  v60 = *(v4 + 352);
  if (v60)
  {
    v61 = v58 == *(v4 + 344) && v59 == v60;
    if (v61 || (sub_267EF9EA8() & 1) != 0)
    {
      v62 = v3;

LABEL_10:
      v63 = v311;
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_110_2();
  if (!v61)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v62 = v3;
  v64 = sub_267EF8A08();
  __swift_project_value_buffer(v64, qword_280240FB0);
  OUTLINED_FUNCTION_54();

  v65 = sub_267EF89F8();
  v66 = sub_267EF95C8();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = OUTLINED_FUNCTION_48();
    v306 = v4;
    v68 = v67;
    v69 = OUTLINED_FUNCTION_52();
    *&v313 = v69;
    *v68 = 136315138;
    v70 = sub_267BA33E8(v58, v59, &v313);

    *(v68 + 4) = v70;
    _os_log_impl(&dword_267B93000, v65, v66, "#MessagesFlowDelegatePlugin new request started, requestId: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    OUTLINED_FUNCTION_32_0();
    v4 = v306;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  *(v4 + 360) = 0;
  sub_267B9CA00();
  v63 = v311;
  v57 = &unk_267EFC000;
  v56 = 0x280228000uLL;
LABEL_17:
  v71 = *(v47 + 16);
  v71(v2, v310, v63);
  v72 = OUTLINED_FUNCTION_46_2();
  v74 = v73(v72);
  if (v74 == *MEMORY[0x277D5C128])
  {
    v75 = OUTLINED_FUNCTION_46_2();
    v76(v75);
    v77 = v308;
    v78 = v56;
    v79 = v307;
    (v308[4])(v307, v2, v38);
    if (*(v78 + 2072) != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v80 = sub_267EF8A08();
    v81 = __swift_project_value_buffer(v80, qword_280240FB0);
    v82 = v77[2];
    v83 = v304;
    v82(v304, v79, v38);
    v311 = v81;
    v84 = v81;
    v85 = sub_267EF89F8();
    v86 = sub_267EF95C8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = OUTLINED_FUNCTION_48();
      v88 = OUTLINED_FUNCTION_52();
      v306 = v4;
      v89 = v88;
      *&v313 = v88;
      *v87 = v57[9];
      sub_267BB4430(&qword_2802293D8, 255, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      v84 = sub_267EF9E58();
      v91 = v90;
      v92 = v83;
      v93 = v308[1];
      v93(v92, v38);
      sub_267BA33E8(v84, v91, &v313);
      OUTLINED_FUNCTION_25_0();

      *(v87 + 4) = v84;
      OUTLINED_FUNCTION_91_4(&dword_267B93000, v85, v86, "MessagesFlowDelegatePlugin received an NLv3 intent: %s", v273);
      __swift_destroy_boxed_opaque_existential_0(v89);
      v4 = v306;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v115 = v83;
      v93 = v77[1];
      v93(v115, v38);
    }

    v82(v305, v307, v38);
    type metadata accessor for SmsNLv3Intent(0);
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    v116 = OUTLINED_FUNCTION_53_0();
    v117 = sub_267EC41AC(v116);
    if (v117)
    {
      sub_267C2C16C(v117);
      OUTLINED_FUNCTION_53_0();

      v118 = OUTLINED_FUNCTION_100_1();
      (v93)(v118);
      if (!v84)
      {
        goto LABEL_41;
      }

      goto LABEL_93;
    }

    v140 = sub_267EF89F8();
    v141 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v141))
    {
      v142 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v142);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_90_0(v143, v144, v145, v146);
      OUTLINED_FUNCTION_40_0();
    }

    sub_267EF3768();
    v147 = OUTLINED_FUNCTION_100_1();
    (v93)(v147);
    goto LABEL_94;
  }

  if (v74 == *MEMORY[0x277D5C150])
  {
    v94 = OUTLINED_FUNCTION_46_2();
    v95(v94);
    v96 = v299;
    v97 = v303;
    v98 = v300;
    (*(v299 + 32))(v303, v2, v300);
    OUTLINED_FUNCTION_110_2();
    if (!v61)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v99 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v99, qword_280240FB0);
    v100 = v298;
    (*(v96 + 16))(v298, v97, v98);
    v101 = sub_267EF89F8();
    v102 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_85_0(v102))
    {
      v103 = OUTLINED_FUNCTION_48();
      v104 = v100;
      v105 = OUTLINED_FUNCTION_52();
      *&v313 = v105;
      *v103 = v57[9];
      v106 = sub_267EF4BC8();
      v306 = v4;
      v107 = v106;
      v109 = v108;
      v110 = *(v96 + 8);
      v111 = OUTLINED_FUNCTION_114_1();
      v110(v111);
      v112 = v107;
      v4 = v306;
      sub_267BA33E8(v112, v109, &v313);
      OUTLINED_FUNCTION_25_0();

      *(v103 + 4) = v104;
      OUTLINED_FUNCTION_121_0(&dword_267B93000, v113, v114, "MessagesFlowDelegatePlugin received a direct action request: %s");
      __swift_destroy_boxed_opaque_existential_0(v105);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v110 = *(v96 + 8);
      (v110)(v100, v98);
    }

    sub_267BA3ED0();
    v148 = OUTLINED_FUNCTION_54();
    (v110)(v148, v98);
    if (!v4)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

  v119 = *MEMORY[0x277D5C160];
  v306 = v4;
  if (v74 == v119)
  {
    v120 = v63;
    v121 = v301;
    (*(v47 + 96))(v2, v120);
    v122 = v62;
    v123 = v302;
    (*(v121 + 32))(v62, v2, v302);
    OUTLINED_FUNCTION_110_2();
    if (!v61)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v124 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v124, qword_280240FB0);
    v125 = v293;
    v308 = *(v121 + 16);
    (v308)(v293, v62, v123);
    v307 = v56;
    v126 = sub_267EF89F8();
    v127 = sub_267EF95D8();
    v128 = OUTLINED_FUNCTION_85_0(v127);
    v129 = v296;
    if (v128)
    {
      v130 = OUTLINED_FUNCTION_48();
      v131 = OUTLINED_FUNCTION_52();
      v132 = v57;
      v133 = v131;
      *&v313 = v131;
      *v130 = v132[9];
      (v308)(v129, v125, v123);
      sub_267EF9098();
      v134 = v122;
      v135 = *(v121 + 8);
      v135(v125, v302);
      v136 = OUTLINED_FUNCTION_50_3();
      v139 = sub_267BA33E8(v136, v137, v138);
      v123 = v302;

      *(v130 + 4) = v139;
      v122 = v134;
      v129 = v296;
      _os_log_impl(&dword_267B93000, v126, v2, "MessagesFlowDelegatePlugin received .uso parse %s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v133);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v135 = *(v121 + 8);
      v135(v125, v123);
    }

    (v308)(v129, v122, v123);
    type metadata accessor for SmsNLv4Intent(0);
    OUTLINED_FUNCTION_27_4();
    swift_allocObject();
    sub_267DD5530();
    if (!v170)
    {
      v196 = sub_267EF89F8();
      v197 = sub_267EF95E8();
      v198 = OUTLINED_FUNCTION_36(v197);
      v4 = v306;
      if (v198)
      {
        v199 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v199);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v200, v201, v202, v203, v204, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3768();
      v205 = OUTLINED_FUNCTION_50_3();
      (v135)(v205);
      goto LABEL_94;
    }

    v171 = v170;
    v172 = sub_267DD3068();
    v4 = v306;
    if (v172)
    {
      sub_267DD8B50();
      if (v173 != 37)
      {
        sub_267D6C0D4(v173);
        if (v175 == 6647407 && v174 == 0xE300000000000000)
        {
        }

        else
        {
          v177 = sub_267EF9EA8();

          if ((v177 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        sub_267C2B120();
        if (v233)
        {
          v234 = v135;
          v235 = sub_267EF89F8();
          v236 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_27(v236))
          {
LABEL_90:
            v258 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_61(v258);
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_90_0(v259, v260, v261, v262);
            OUTLINED_FUNCTION_40_0();
          }

LABEL_91:

          (*(*(v4 + 200) + 8))(v310);
LABEL_98:

          v271 = OUTLINED_FUNCTION_50_3();
          v234(v271);
          goto LABEL_94;
        }
      }
    }

LABEL_80:
    if (sub_267DD3068())
    {
      sub_267C29838();
      if (v237)
      {
        v310 = v135;
        v238 = sub_267EF89F8();
        v239 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_27(v239))
        {
          v240 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v240);
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_90_0(v241, v242, v243, v244);
          OUTLINED_FUNCTION_40_0();
        }

        v245 = v276;
        sub_267EF7058();
        v246 = v277;
        v247 = v278;
        (*(v277 + 16))(v275, v245, v278);
        v248 = v279;
        sub_267EF4588();
        sub_267EF3798();

        (*(v280 + 8))(v248, v281);
        (*(v246 + 8))(v245, v247);
        v249 = OUTLINED_FUNCTION_50_3();
        v310(v249, v250);
        goto LABEL_94;
      }
    }

    sub_267DD3FD0();
    if ((v251 & 1) == 0)
    {

      sub_267C2F218(v263);

      v264 = sub_267C2DD40(v171);

      v265 = OUTLINED_FUNCTION_50_3();
      (v135)(v265);
      if (!v264)
      {
LABEL_41:
        sub_267EF3768();
        goto LABEL_94;
      }

LABEL_93:

      sub_267EF3788();

      goto LABEL_94;
    }

    v234 = v135;
    v252 = sub_267EF89F8();
    v253 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v253))
    {
      v254 = OUTLINED_FUNCTION_32();
      *v254 = 0;
      _os_log_impl(&dword_267B93000, v252, v253, "MessagesFlowDelegatePlugin User asked a Mail request, checking feature flag...", v254, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v314 = &type metadata for Features;
    v315 = sub_267BAFCAC();
    LOBYTE(v313) = 6;
    v255 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(&v313);
    v235 = sub_267EF89F8();
    v256 = sub_267EF95C8();
    v257 = OUTLINED_FUNCTION_27(v256);
    if ((v255 & 1) == 0)
    {
      if (v257)
      {
        v266 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v266);
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_90_0(v267, v268, v269, v270);
        OUTLINED_FUNCTION_40_0();
      }

      sub_267EF3768();
      goto LABEL_98;
    }

    if (v257)
    {
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if (v74 == *MEMORY[0x277D5C138])
  {
    v149 = OUTLINED_FUNCTION_46_2();
    v150(v149);
    v151 = v294;
    v152 = v56;
    v153 = v297;
    v154 = v295;
    (*(v294 + 32))(v297, v2, v295);
    if (*(v152 + 2072) != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v155 = sub_267EF8A08();
    v156 = __swift_project_value_buffer(v155, qword_280240FB0);
    v157 = *(v151 + 16);
    v158 = v288;
    v157(v288, v153, v154);
    v310 = v156;
    v159 = sub_267EF89F8();
    v160 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v160))
    {
      v161 = OUTLINED_FUNCTION_48();
      v308 = OUTLINED_FUNCTION_52();
      *&v313 = v308;
      *v161 = v57[9];
      v162 = v157;
      v163 = v158;
      v162(v291, v158, v154);
      v164 = v57;
      v165 = sub_267EF9098();
      v167 = v166;
      v168 = v163;
      v157 = v162;
      v311 = *(v151 + 8);
      v311(v168, v295);
      v169 = sub_267BA33E8(v165, v167, &v313);
      v154 = v295;

      *(v161 + 4) = v169;
      v57 = v164;
      _os_log_impl(&dword_267B93000, v159, v160, "#MessagesFlowDelegatePlugin received a client action parse: %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v308);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v311 = *(v151 + 8);
      v311(v158, v154);
    }

    v206 = v290;
    sub_267EF4488();
    if (sub_267EF7448() == 0x73656D5F646E6573 && v207 == 0xEC00000065676173)
    {
    }

    else
    {
      v209 = sub_267EF9EA8();

      if ((v209 & 1) == 0)
      {
        v210 = v274;
        v211 = v292;
        (*(v289 + 16))(v274, v206, v292);
        v212 = sub_267EF89F8();
        v213 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_85_0(v213))
        {
          v214 = OUTLINED_FUNCTION_48();
          v215 = OUTLINED_FUNCTION_52();
          *&v313 = v215;
          *v214 = v57[9];
          v216 = sub_267EF7448();
          v218 = v217;
          v219 = OUTLINED_FUNCTION_96_0();
          v210(v219, v292);
          sub_267BA33E8(v216, v218, &v313);
          OUTLINED_FUNCTION_25_0();

          *(v214 + 4) = v216;
          OUTLINED_FUNCTION_121_0(&dword_267B93000, v220, v221, "#MessagesFlowDelegatePlugin unexpected client action toolId: %s");
          __swift_destroy_boxed_opaque_existential_0(v215);
          v206 = v290;
          OUTLINED_FUNCTION_32_0();
          v211 = v292;
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          v272 = OUTLINED_FUNCTION_96_0();
          v210(v272, v211);
        }

        v4 = v306;
        sub_267EF3768();
        v210(v206, v211);
        v311(v297, v295);
        goto LABEL_94;
      }
    }

    v224 = v291;
    v225 = v297;
    v157(v291, v297, v154);
    v4 = v306;
    sub_267B9AB18(&v313);
    v226 = v284;
    sub_267EF6898();
    v227 = type metadata accessor for SiriKitFlowFactoryImpl();
    v228 = OUTLINED_FUNCTION_49(v227);
    v229 = v285;
    v230 = v283;
    v231 = v286;
    (*(v285 + 16))(v283, v226, v286);
    v232 = sub_267C2F4F4(v224, &v313, v230, v228);
    (*(v229 + 8))(v226, v231);
    *&v313 = v232;
    type metadata accessor for SendMessageShimFlow(0);
    sub_267BB4430(&qword_2802293D0, 255, type metadata accessor for SendMessageShimFlow, &unk_267F084D8);
    sub_267EF36E8();

    (*(v289 + 8))(v206, v292);
    v311(v225, v154);
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_110_2();
  if (!v61)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v178 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v178, qword_280240FB0);
  v179 = v287;
  v71(v287, v310, v63);
  v180 = sub_267EF89F8();
  v181 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v181))
  {
    v182 = OUTLINED_FUNCTION_48();
    v183 = OUTLINED_FUNCTION_52();
    v184 = v57;
    v185 = v183;
    *&v313 = v183;
    *v182 = v184[9];
    v71(v282, v179, v311);
    sub_267EF9098();
    v186 = OUTLINED_FUNCTION_97_1();
    v179(v186, v311);
    v187 = OUTLINED_FUNCTION_50_3();
    v190 = sub_267BA33E8(v187, v188, v189);

    *(v182 + 4) = v190;
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v191, v192, v193, v194, v195, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v185);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v222 = OUTLINED_FUNCTION_97_1();
    v179(v222, v63);
  }

  sub_267EF3768();
  v223 = OUTLINED_FUNCTION_46_2();
  (v179)(v223);
  v4 = v306;
LABEL_94:
  sub_267BA800C(v4);
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30()
{
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_71(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_36(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_99()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_30_5()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v2);
}

void *OUTLINED_FUNCTION_30_6()
{
  v2 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_0((v0 - 128), v2);
}

uint64_t OUTLINED_FUNCTION_79()
{
}

uint64_t OUTLINED_FUNCTION_30_16()
{

  return sub_267EF9328();
}

uint64_t OUTLINED_FUNCTION_30_17@<X0>(uint64_t a1@<X8>)
{

  return sub_267C12290(v1 + v3, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_30_18@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 72);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_30_19()
{
}

uint64_t OUTLINED_FUNCTION_30_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + v13) = v11;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_26()
{
}

uint64_t OUTLINED_FUNCTION_30_28(uint64_t a1)
{
  *(v1 + 696) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_30()
{

  return sub_267EF3EE8();
}

uint64_t OUTLINED_FUNCTION_30_31()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_30_32()
{
}

uint64_t OUTLINED_FUNCTION_30_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return sub_267EF9FC8();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return __swift_storeEnumTagSinglePayload(v19, 0, 1, a19);
}

BOOL OUTLINED_FUNCTION_27(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_32_0()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_17_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_4()
{
}

uint64_t OUTLINED_FUNCTION_8_8()
{
}

void OUTLINED_FUNCTION_8_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2)
{

  return sub_267EF9D88();
}

uint64_t OUTLINED_FUNCTION_8_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_19()
{
  v3 = *(v1 - 336);

  return sub_267BBE0C8(v3, v0);
}

id OUTLINED_FUNCTION_8_21(float a1)
{
  *v3 = a1;
  *(v2 + 136) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_8_24@<X0>(uint64_t a1@<X8>)
{

  return sub_267CF5008(v1 + a1, type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult);
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_267EF4CC8();
}

void OUTLINED_FUNCTION_8_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_27()
{

  return sub_267EF99B8();
}

uint64_t OUTLINED_FUNCTION_8_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_29(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = v6;
  *(v7 + 16) = a5;
  *(v7 + 107) = a4;
  *(v7 + 106) = a3;
  *(v7 + 105) = a2;
  *(v7 + 104) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_30(uint64_t a1)
{
}

void OUTLINED_FUNCTION_8_33(uint64_t a1)
{
  v3 = *(v1 + 56) + 40 * a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  sub_267BB7AA0(v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_8_46()
{
  v3 = *(v1 - 200);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_8_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF89B8();
}

uint64_t OUTLINED_FUNCTION_8_53(uint64_t a1)
{

  return sub_267B9FF34(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_54()
{
}

unint64_t OUTLINED_FUNCTION_8_55()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_8_56()
{

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_8_57@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x7453656369766564;
  v2[11] = 0xEB00000000657461;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_60()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  v2 = *(v0 + 72) + 72;

  return sub_267B9AFEC(v2, v0 + 448);
}

void OUTLINED_FUNCTION_48_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_48_4@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267C2FB6C(v3 + a1, v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_48_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_267C12290(a1, v3);
}

uint64_t OUTLINED_FUNCTION_48_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267BB16A4(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_48_20(uint64_t a1, uint64_t a2)
{

  return sub_267EF8358();
}

uint64_t OUTLINED_FUNCTION_48_23(uint64_t a1)
{
  sub_267B9A5E8((v1 + 552), a1 + 16);
  sub_267B9A5E8(v1 + 32, a1 + 56);
  sub_267B9A5E8((v1 + 472), a1 + 96);

  return sub_267EF4C08();
}

uint64_t OUTLINED_FUNCTION_48_25()
{

  return type metadata accessor for RequestIntroductionActionGroup(0);
}

uint64_t OUTLINED_FUNCTION_48_27(uint64_t a1)
{
  *(v1 + 120) = a1;
  *(v1 + 128) = 0xD000000000000012;
}

BOOL OUTLINED_FUNCTION_5_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  sub_267C8EC00();
}

void OUTLINED_FUNCTION_26_4()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x26D60A7B0);
}

BOOL OUTLINED_FUNCTION_6_6(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

__n128 *OUTLINED_FUNCTION_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7368801;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

void OUTLINED_FUNCTION_6_9()
{

  JUMPOUT(0x26D608E60);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2)
{

  return sub_267CF2FFC();
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_22_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_16()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_6_20(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_267EF9C98();
}

void OUTLINED_FUNCTION_6_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = 0x6F746C69616DLL;
  v2[13] = 0xE600000000000000;

  return sub_267EF2E38();
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return sub_267EF5E08();
}

uint64_t OUTLINED_FUNCTION_6_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_37(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_6_42(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_6_54()
{
}

uint64_t OUTLINED_FUNCTION_6_55@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 104) = &a2 - a1;

  return sub_267EF2CC8();
}

uint64_t OUTLINED_FUNCTION_6_57()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_58()
{

  return sub_267C01144(0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_6_59()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

void *OUTLINED_FUNCTION_79_0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result[2] = a18;
  result[3] = v22;
  result[4] = v24;
  result[5] = v23;
  result[6] = v18;
  result[7] = v19;
  result[8] = v21;
  result[9] = v20;
  return result;
}

int8x16_t OUTLINED_FUNCTION_79_1(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int8x16_t a22)
{
  result = vextq_s8(a22, a22, 8uLL);
  a1[3] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_95()
{
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_79_4()
{

  return [v1 (v0 + 2078)];
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_79_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_79_8()
{
  v3 = *(v1 + 1272);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_79_11(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_79_12()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_79_13()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_79_14()
{
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_76_0()
{
  v2 = *(v0 + 912);
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void OUTLINED_FUNCTION_76_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_76_6()
{
  result = 0.0;
  *(v0 + 680) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_9(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a2;

  return sub_267BD997C();
}

void *OUTLINED_FUNCTION_76_10()
{
  v2 = *(v0 + 880);

  return __swift_project_boxed_opaque_existential_0((v0 + 856), v2);
}

uint64_t OUTLINED_FUNCTION_76_13(char a1)
{
  *(v1 + 892) = a1 & 1;
}

uint64_t OUTLINED_FUNCTION_76_14(uint64_t a1)
{

  return sub_267EF8F48();
}

uint64_t sub_267B9A598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_267B9A5E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void OUTLINED_FUNCTION_29_1()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_29_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_18_2()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_267B9F98C(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_29_7()
{
}

void OUTLINED_FUNCTION_29_8(int a1@<W8>)
{
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
}

id OUTLINED_FUNCTION_29_9(float a1)
{
  *v3 = a1;
  *(v2 + 112) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_29_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 23);
}

void *OUTLINED_FUNCTION_13_1()
{
  v2 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_0((v0 - 120), v2);
}

uint64_t OUTLINED_FUNCTION_29_11()
{
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_29_16()
{

  return sub_267EF8348();
}

unint64_t OUTLINED_FUNCTION_29_17()
{
  v1[7] = v3;
  v1[8] = v0;
  v1[9] = 0xD000000000000010;
  v1[10] = v2;

  return sub_267BB5034();
}

uint64_t OUTLINED_FUNCTION_29_18()
{
  v3 = v0[114];
  *(v1 - 168) = v0[117];
  *(v1 - 160) = v3;
  v4 = v0[108];
  *(v1 - 152) = v0[111];
  *(v1 - 144) = v4;
  v5 = v0[104];
  *(v1 - 136) = v0[105];
  *(v1 - 128) = v5;
  v6 = v0[99];
  *(v1 - 120) = v0[102];
  *(v1 - 112) = v6;
  *(v1 - 104) = v0[96];
}

void OUTLINED_FUNCTION_29_19(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_29_22(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_29_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2821C4F08](a1, a2, a3, a4, a5, 0, 0, 0);
}

void OUTLINED_FUNCTION_29_28()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

double OUTLINED_FUNCTION_29_29()
{
  v1 = *(v0 - 88);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_31()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_29_33(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return sub_267EF6798();
}

uint64_t sub_267B9AB18@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C2FB6C(v1 + 264, &v6, &qword_2802293E0, &qword_267EFD170);
  if (!v7)
  {
    sub_267B9F98C(&v6, &qword_2802293E0, &qword_267EFD170);
    sub_267C2FB6C(v1 + 224, &v4, &qword_2802293E0, &qword_267EFD170);
    if (v5)
    {
      sub_267B9A5E8(&v4, &v6);
    }

    else
    {
      v7 = &type metadata for SharedObjectProvider;
      v8 = &off_2878CEE88;
      *&v6 = swift_allocObject();
      sub_267EF4C38();
      sub_267EF3B38();
      sub_267EF3B28();
      sub_267EF4678();
      sub_267EF4688();
      if (v5)
      {
        sub_267B9F98C(&v4, &qword_2802293E0, &qword_267EFD170);
      }
    }

    sub_267B9AFEC(&v6, &v4);
    swift_beginAccess();
    sub_267C2FBCC(&v4, v1 + 264);
    swift_endAccess();
  }

  return sub_267B9A5E8(&v6, a1);
}

uint64_t sub_267B9AC80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

void OUTLINED_FUNCTION_37_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_267EF8348();
}

id OUTLINED_FUNCTION_37_8()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_11()
{
  v2 = *(v0 + 192);
  *(v0 + 360) = *(v0 + 176);
  *(v0 + 376) = v2;
  *(v0 + 129) = *(v0 + 208);
}

uint64_t OUTLINED_FUNCTION_37_12()
{
}

uint64_t OUTLINED_FUNCTION_37_14(uint64_t result)
{
  *(v3 - 112) = v1 & 0xC000000000000001;
  *(v3 - 104) = result;
  *(v3 - 120) = v1 & 0xFFFFFFFFFFFFFF8;
  *(v3 - 144) = v2;
  *(v3 - 136) = v2 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_15()
{
  __swift_project_boxed_opaque_existential_0((v0 - 128), *(v0 - 104));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_37_19()
{
}

uint64_t OUTLINED_FUNCTION_37_22()
{

  return sub_267EF70D8();
}

uint64_t OUTLINED_FUNCTION_37_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = v12;
  v10[1] = v11;
  v10[2] = a9;
  v10[3] = a10;

  return type metadata accessor for DirectInvocationUseCases(0);
}

uint64_t sub_267B9AFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267B9B050(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  (*v3)(a2);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267EF3B08();
}

uint64_t OUTLINED_FUNCTION_56_10()
{

  return sub_267EF78E8();
}

uint64_t OUTLINED_FUNCTION_56_11(__n128 a1)
{
  a1.n128_u64[0] = 5.0;
  v9 = *(v7 - 120);

  return MEMORY[0x2821BEEF8](v4, v6, v3, v9, v5, v1 & 1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_56_13()
{
}

uint64_t OUTLINED_FUNCTION_56_18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267BC9B04(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_267B9F98C(v1 + 240, v0, v2);
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_4()
{
}

void OUTLINED_FUNCTION_66_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return sub_267EF3D28();
}

uint64_t OUTLINED_FUNCTION_66_12()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_66_14()
{

  return sub_267EF4938();
}

void OUTLINED_FUNCTION_66_15()
{
}

void OUTLINED_FUNCTION_66_16(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_66_18()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_66_19()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return sub_267EF4748();
}

uint64_t OUTLINED_FUNCTION_120_0(uint64_t a1)
{

  return sub_267EF3848();
}

id OUTLINED_FUNCTION_120_1(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_120_3@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267BC9B04(v4 + a1, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_120_5()
{
}

void OUTLINED_FUNCTION_120_6()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_120_7()
{

  return sub_267EF3CA8();
}

uint64_t OUTLINED_FUNCTION_120_8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 320);
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;
}

uint64_t OUTLINED_FUNCTION_46_1@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_267BA33E8(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_36_1()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_46_14()
{
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return sub_267EF4158();
}

void OUTLINED_FUNCTION_46_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[24] = v13;
  v12[25] = v14;
  v12[26] = a12;
  v12[27] = v15;
}

void *sub_267B9B964()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9B9EC(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  OUTLINED_FUNCTION_67_11();
  return v0;
}

uint64_t sub_267B9B9B8()
{
  sub_267B9B964();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow020CarPlayClarificationC0C5StateO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
}

uint64_t OUTLINED_FUNCTION_70_1()
{
}

void OUTLINED_FUNCTION_70_3(void *a1@<X8>)
{
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1)
{
  *(v1 + 1312) = *(a1 + 128);
}

uint64_t OUTLINED_FUNCTION_70_7()
{
}

uint64_t OUTLINED_FUNCTION_70_9()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_70_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 8u);
}

uint64_t sub_267B9BC5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_112_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v7 = v6 + *(v5 + 20);

  return sub_267BD3DDC(v4, v7);
}

unint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_267BA33E8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_112_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_267BA33E8(v20, v19, va);
}

__n128 OUTLINED_FUNCTION_112_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  a1[2].n128_u64[0] = v14;
  a1[2].n128_u64[1] = v15;
  a1[3].n128_u64[0] = v13;
  a1[3].n128_u64[1] = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_112_7()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_267EF4198();
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 568) = a1;
  *(v1 + 544) = 1;
  return v1 + 544;
}

BOOL OUTLINED_FUNCTION_10_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_267EF89F8();
}

void OUTLINED_FUNCTION_13_13()
{
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_23_1@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

unint64_t OUTLINED_FUNCTION_13_14(float a1)
{
  *v2 = a1;

  return sub_267BA33E8(v3, v1, (v4 - 88));
}

BOOL OUTLINED_FUNCTION_13_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_13_18(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_267BA33E8(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_13_19@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
  v4 = v2 + *(v3 + 48);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

void OUTLINED_FUNCTION_13_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_22()
{
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return sub_267B9F98C(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_13_26(char a1, char a2, char a3, char a4)
{
  v4[107] = a4;
  v4[106] = a3;
  v4[105] = a2;
  v4[104] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_32()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

void *OUTLINED_FUNCTION_13_36(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v15 + 744) = result;
  result[2] = v18;
  result[3] = v17;
  result[4] = a12;
  result[5] = v12;
  result[6] = v20;
  result[7] = v14;
  result[8] = a10;
  result[9] = v16;
  result[10] = v19;
  result[11] = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_44(uint64_t a1)
{
  *(v1 - 128) = a1;
  *(v1 - 160) = 12;

  return sub_267EF5128();
}

uint64_t OUTLINED_FUNCTION_13_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_47()
{

  return sub_267EF4DC8();
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return sub_267DE77AC((v1 - 136), v0);
}

void OUTLINED_FUNCTION_13_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  sub_267E8AEDC(v37, a2, v40, v39, v36, v38, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

void OUTLINED_FUNCTION_65_1()
{
  v2 = *(v0 + 144);
}

void OUTLINED_FUNCTION_68_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_65_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_65_9()
{
}

uint64_t OUTLINED_FUNCTION_65_10(float a1)
{
  *v1 = a1;

  return sub_267EF4938();
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_65_12()
{
}

uint64_t OUTLINED_FUNCTION_65_13()
{

  return sub_267BC9B04(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_65_14()
{
}

uint64_t *OUTLINED_FUNCTION_65_15()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 48));
}

__n128 *OUTLINED_FUNCTION_52_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 48);
  result[2].n128_u64[0] = *(v2 + 64);
  result[2].n128_u64[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_52_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_267EF7988();
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;

  return sub_267EF7B88();
}

BOOL OUTLINED_FUNCTION_52_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_15()
{
  *(v2 + v0) = v1;
}

void OUTLINED_FUNCTION_52_18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_52_19()
{
}

uint64_t OUTLINED_FUNCTION_52_21@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_85_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 9, a4);

  return type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
}

void OUTLINED_FUNCTION_85_7()
{
  v5 = v0[160];
  *(v3 - 112) = v0[142];
  v6 = v0[106];
  *(v3 - 144) = v5;
  *(v3 - 136) = v6;
  *(v3 - 128) = v2;
  *(v3 - 152) = v0[87];
}

uint64_t OUTLINED_FUNCTION_85_12(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_85_13(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
}

uint64_t sub_267B9CA00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v2);
  sub_267EF93F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_94();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_267E8FA18();
}

uint64_t sub_267B9CAD4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_267EF3B18();
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x26D60A7B0);
}

void *OUTLINED_FUNCTION_88_5()
{
  v2 = *(v0 - 128);

  return __swift_project_boxed_opaque_existential_0((v0 - 152), v2);
}

uint64_t sub_267B9CC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v247 = a2;
  sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v235 = v5;
  v236 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v234 = v7 - v6;
  v8 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6();
  v233 = v12;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77_0();
  v232 = v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0();
  v231 = v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  v230 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0();
  v229 = v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  v228 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  v227 = v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  v226 = v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0();
  v225 = v28;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  v237 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v238 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  v239 = v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  v240 = v36;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  v241 = v38;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  v242 = v40;
  OUTLINED_FUNCTION_115();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v224 - v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v46);
  v48 = &v224 - v47;
  v246 = a1;
  v49 = sub_267EF4BC8();
  v51 = v50;
  v52 = *MEMORY[0x277D5D718];
  v53 = *(v10 + 104);
  v244 = v10 + 104;
  v245 = v53;
  v53(v48, v52, v8);
  v54 = sub_267EF8418();
  v56 = v55;
  v243 = *(v10 + 8);
  v243(v48, v8);
  if (v54 == v49 && v56 == v51)
  {

LABEL_8:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E71D90(v61, v62);
  }

  v58 = OUTLINED_FUNCTION_33_22();
  v60 = OUTLINED_FUNCTION_16_38(v58, v59);

  if (v60)
  {
    goto LABEL_8;
  }

  v245(v2, *MEMORY[0x277D5D6F8], v8);
  v64 = sub_267EF8418();
  v66 = v65;
  v67 = v2;
  v68 = v243;
  v243(v67, v8);
  if (v64 == v49 && v66 == v51)
  {

LABEL_17:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E723F0(v73, v74);
  }

  v70 = OUTLINED_FUNCTION_33_22();
  v72 = OUTLINED_FUNCTION_16_38(v70, v71);

  if (v72)
  {
    goto LABEL_17;
  }

  v75 = OUTLINED_FUNCTION_11_46();
  v76(v75);
  v77 = sub_267EF8418();
  v79 = v78;
  v80 = OUTLINED_FUNCTION_73_0();
  v68(v80);
  if (v77 == v49 && v79 == v51)
  {
    goto LABEL_24;
  }

  v82 = OUTLINED_FUNCTION_33_22();
  v84 = OUTLINED_FUNCTION_16_38(v82, v83);

  if (v84)
  {
    goto LABEL_25;
  }

  v245(v44, *MEMORY[0x277D5D728], v8);
  v87 = sub_267EF8418();
  v89 = v88;
  (v68)(v44, v8);
  if (v87 == v49 && v89 == v51)
  {

LABEL_34:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267BB5088(v92, v93);
  }

  v91 = OUTLINED_FUNCTION_16_38(v87, v89);

  if (v91)
  {
    goto LABEL_34;
  }

  v94 = v242;
  v95 = OUTLINED_FUNCTION_11_46();
  v96(v95);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  v97 = OUTLINED_FUNCTION_73_0();
  v68(v97);
  if (v94 == v49 && v91 == v51)
  {

LABEL_42:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E728AC(v101, v102);
  }

  v99 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_16_38(v99, v100);
  OUTLINED_FUNCTION_20_19();
  if (v94)
  {
    goto LABEL_42;
  }

  v103 = v241;
  v104 = OUTLINED_FUNCTION_11_46();
  v105(v104);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  v106 = OUTLINED_FUNCTION_73_0();
  v68(v106);
  if (v103 == v49 && v91 == v51)
  {
    goto LABEL_49;
  }

  v108 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_16_38(v108, v109);
  OUTLINED_FUNCTION_20_19();
  if (v103)
  {
    goto LABEL_50;
  }

  v111 = v240;
  v112 = OUTLINED_FUNCTION_11_46();
  v113(v112);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  v114 = OUTLINED_FUNCTION_73_0();
  v68(v114);
  if (v111 == v49 && v91 == v51)
  {
    goto LABEL_57;
  }

  v116 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_16_38(v116, v117);
  OUTLINED_FUNCTION_20_19();
  if (v111)
  {
    goto LABEL_58;
  }

  v118 = v239;
  v119 = OUTLINED_FUNCTION_11_46();
  v120(v119);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  (v68)(v118, v8);
  if (v118 == v49 && v91 == v51)
  {

LABEL_66:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E72B74(v122, v123);
  }

  OUTLINED_FUNCTION_66();
  sub_267EF9EA8();
  OUTLINED_FUNCTION_20_19();
  if (v118)
  {
    goto LABEL_66;
  }

  v124 = v238;
  v125 = OUTLINED_FUNCTION_3_77();
  v126(v125);
  sub_267EF8418();
  v127 = OUTLINED_FUNCTION_0_68();
  v128(v127);
  if (v124 == v49 && v91 == v51)
  {

LABEL_74:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E7306C(v130, v131);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v124)
  {
    goto LABEL_74;
  }

  v132 = v237;
  v133 = OUTLINED_FUNCTION_3_77();
  v134(v133);
  sub_267EF8418();
  v135 = OUTLINED_FUNCTION_0_68();
  v136(v135);
  if (v132 == v49 && v91 == v51)
  {
LABEL_49:

LABEL_50:

    v110 = sub_267EF4BD8();
    sub_267BB3D8C(v110);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v132)
  {
    goto LABEL_50;
  }

  v138 = sub_267EF9028();
  if (v138 == v49 && v139 == v51)
  {

LABEL_89:

    v141 = sub_267EF4BD8();
    v142 = MEMORY[0x277D5C2D8];
LABEL_90:
    sub_267E734E8(v141, v142);
  }

  OUTLINED_FUNCTION_5_64(v138);
  OUTLINED_FUNCTION_20_19();
  if (v132)
  {
    goto LABEL_89;
  }

  v143 = sub_267EF9028();
  v145 = v144;
  if (v143 == v49 && v144 == v51)
  {

LABEL_98:

    v141 = sub_267EF4BD8();
    v142 = MEMORY[0x277D5C2C8];
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_5_64(v143);
  OUTLINED_FUNCTION_20_19();
  if (v132)
  {
    goto LABEL_98;
  }

  v147 = v225;
  v148 = OUTLINED_FUNCTION_3_77();
  v149(v148);
  sub_267EF8418();
  v150 = OUTLINED_FUNCTION_0_68();
  v151(v150);
  if (v147 == v49 && v145 == v51)
  {
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v147)
  {
    goto LABEL_113;
  }

  v153 = v226;
  v154 = OUTLINED_FUNCTION_3_77();
  v155(v154);
  sub_267EF8418();
  v156 = OUTLINED_FUNCTION_0_68();
  v157(v156);
  if (v153 == v49 && v145 == v51)
  {
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v153)
  {
    goto LABEL_113;
  }

  v164 = v227;
  v165 = OUTLINED_FUNCTION_3_77();
  v166(v165);
  sub_267EF8418();
  v167 = OUTLINED_FUNCTION_0_68();
  v168(v167);
  if (v164 == v49 && v145 == v51)
  {

LABEL_122:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E736F8(v170, v171);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v164)
  {
    goto LABEL_122;
  }

  v172 = v228;
  v173 = OUTLINED_FUNCTION_3_77();
  v174(v173);
  sub_267EF8418();
  v175 = OUTLINED_FUNCTION_0_68();
  v176(v175);
  if (v172 == v49 && v145 == v51)
  {

LABEL_130:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E73F70(v178, v179);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v172)
  {
    goto LABEL_130;
  }

  v180 = v229;
  v181 = OUTLINED_FUNCTION_3_77();
  v182(v181);
  sub_267EF8418();
  v183 = OUTLINED_FUNCTION_0_68();
  v184(v183);
  if (v180 == v49 && v145 == v51)
  {

LABEL_138:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E7447C(v186, v187);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v180)
  {
    goto LABEL_138;
  }

  v188 = v230;
  v189 = OUTLINED_FUNCTION_3_77();
  v190(v189);
  sub_267EF8418();
  v191 = OUTLINED_FUNCTION_0_68();
  v192(v191);
  if (v188 == v49 && v145 == v51)
  {
LABEL_24:

LABEL_25:

    v85 = sub_267EF4BD8();
    v86 = v247;
LABEL_26:
    sub_267BB3824(v85, v86);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v188)
  {
    goto LABEL_25;
  }

  v194 = v231;
  v195 = OUTLINED_FUNCTION_3_77();
  v196(v195);
  sub_267EF8418();
  v197 = OUTLINED_FUNCTION_0_68();
  v198(v197);
  if (v194 == v49 && v145 == v51)
  {
LABEL_57:

LABEL_58:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_21_31();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v194)
  {
    goto LABEL_58;
  }

  v200 = v232;
  v201 = OUTLINED_FUNCTION_3_77();
  v202(v201);
  sub_267EF8418();
  v203 = OUTLINED_FUNCTION_0_68();
  v204(v203);
  if (v200 == v49 && v145 == v51)
  {
LABEL_112:

    goto LABEL_113;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if ((v200 & 1) == 0)
  {
    v206 = v233;
    v207 = OUTLINED_FUNCTION_3_77();
    v208(v207);
    sub_267EF8418();
    v209 = OUTLINED_FUNCTION_0_68();
    v210(v209);
    if (v206 == v49 && v145 == v51)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_65();
      OUTLINED_FUNCTION_20_19();

      if ((v206 & 1) == 0)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v212 = sub_267EF8A08();
        __swift_project_value_buffer(v212, qword_280240FB0);
        (*(v235 + 16))(v234, v246, v236);
        v213 = sub_267EF89F8();
        v214 = sub_267EF95E8();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = OUTLINED_FUNCTION_48();
          v216 = swift_slowAlloc();
          v248 = v216;
          *v215 = 136315138;
          v217 = v234;
          v218 = sub_267EF4BC8();
          v220 = v219;
          (*(v235 + 8))(v217, v236);
          v221 = sub_267BA33E8(v218, v220, &v248);

          *(v215 + 4) = v221;
          _os_log_impl(&dword_267B93000, v213, v214, "#DirectInvocationUseCases unsupported identifier: %s", v215, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v216);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          (*(v235 + 8))(v234, v236);
        }

        v163 = type metadata accessor for DirectInvocationUseCases(0);
        v161 = v247;
        v162 = 1;
        return __swift_storeEnumTagSinglePayload(v161, v162, 1, v163);
      }
    }

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E74914(v222, v223);
  }

LABEL_113:

  v159 = type metadata accessor for DirectInvocationUseCases(0);
  v160 = v247;
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  v161 = v160;
  v162 = 0;
  v163 = v159;
  return __swift_storeEnumTagSinglePayload(v161, v162, 1, v163);
}

uint64_t sub_267B9DC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B9DC74()
{
  sub_267B9DE38();

  return swift_deallocClassInstance();
}

char *sub_267B9DCC8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver));
  sub_267B9EF14(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider));
  return v0;
}

char *sub_267B9DE38()
{
  v0 = sub_267B9DCC8();
  sub_267B9EF80(&v0[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver]);

  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor]);
  return v0;
}

uint64_t sub_267B9DEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B9DEEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267B9DF34()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E01490();
}

uint64_t objectdestroy_23Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  OUTLINED_FUNCTION_70_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_267B9F98C(v1 + v0, v3, v2);
}

void *OUTLINED_FUNCTION_71_3(void *result)
{
  result[2] = 0xD000000000000011;
  result[3] = v1;
  result[4] = 0xD000000000000022;
  result[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_4()
{
}

uint64_t OUTLINED_FUNCTION_71_6()
{
  __swift_project_boxed_opaque_existential_0((v0 + 128), *(v0 + 152));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_71_8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v2 + 472) = v4;
  *(v4 + 42) = 2;
  *(*(*(v4 + 216) + 16) + 33) = 0;

  return sub_267E27360();
}

uint64_t OUTLINED_FUNCTION_71_9()
{
  v2 = *(v0 - 264);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 288, v2);
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_7()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_267B9EED4(a3);

  return sub_267C70584(a2, v5, a3);
}

void OUTLINED_FUNCTION_0_18()
{
  *(v0 - 272) = 1;
  *(v0 - 264) = 1;
  *(v0 - 256) = 1;
  *(v0 - 248) = 1;
  *(v0 - 240) = 1;
}

uint64_t OUTLINED_FUNCTION_1_4@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_267EF9E18();
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return sub_267CF5008(v0, type metadata accessor for TimedSentMessageContext);
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1, uint64_t a2)
{

  return sub_267EF9E18();
}

unint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_267BA33E8(v18, v19, va);
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267EF9AE8();
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_0_43()
{
  v3 = v0[117];
  *(v1 - 176) = v0[118];
  *(v1 - 168) = v3;
  v4 = v0[111];
  *(v1 - 160) = v0[114];
  *(v1 - 152) = v4;
  v5 = v0[105];
  *(v1 - 144) = v0[108];
  *(v1 - 136) = v5;
  v6 = v0[102];
  *(v1 - 128) = v0[104];
  *(v1 - 120) = v6;
  v7 = v0[96];
  *(v1 - 112) = v0[99];
  *(v1 - 104) = v7;
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{
  *(a1 + 8) = sub_267DB24E4;
  v3 = *(v1 + 72);
  *(v2 + 32) = 0;
  *(v2 + 40) = v3;
  return 0x636972656E6567;
}

uint64_t OUTLINED_FUNCTION_0_48()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_50(unint64_t *a1)
{

  return sub_267DD28A0(a1, &unk_267F094EC);
}

unint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_267BA33E8(v1, v0, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_0_54()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_55()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_56(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 9, v1);
}

uint64_t OUTLINED_FUNCTION_0_66(uint64_t a1)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_0_69()
{
}

uint64_t OUTLINED_FUNCTION_0_72()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_76()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_77()
{
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + v2[5], 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + v2[6], 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + v2[7], 1, 1, a1);
  return __swift_storeEnumTagSinglePayload(v1 + v2[8], 1, 1, a1);
}

uint64_t sub_267B9EEE0()
{
  sub_267EF79F8();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow0B12UserDefaults_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267B9EFD4()
{
  sub_267B9F008();

  return swift_deallocClassInstance();
}

void *sub_267B9F008()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_267B9F040()
{
  sub_267B9DCC8();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F094()
{
  v0 = sub_267B9DCC8();
  sub_267B9FF34(&v0[OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse], &qword_280229310, &unk_267EFCF70);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F118(uint64_t a1)
{
  v2 = type metadata accessor for SendMessageFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_8Tm_0()
{

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

char *sub_267B9F1EC()
{
  v0 = sub_267B9DCC8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_preferences]);
  return v0;
}

uint64_t sub_267B9F234()
{
  sub_267B9F1EC();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F288()
{
  sub_267B9F2BC();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F2BC()
{

  sub_267B9F440(v0 + 224);

  return v0;
}

uint64_t sub_267B9F364()
{

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F39C()
{
  sub_267B9F3D0();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F3F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295C8, &qword_267EFDD28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B9F4A8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9F118(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags));
  return v0;
}

uint64_t sub_267B9F528()
{
  sub_267B9F4A8();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F580()
{
  sub_267B9F5B4();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F5B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_29_10();
  return v0;
}

uint64_t sub_267B9F5E0()
{
  sub_267B9FFF8();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F658(uint64_t a1)
{
  v2 = type metadata accessor for SearchForMessagesFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B9F6B4()
{
  sub_267B9F6E8();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F6E8()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_267B9F710()
{
  sub_267BA0068();

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_58_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 608) = a1;
  *(v1 + 616) = v2;

  return sub_267BCE788(v3);
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return sub_267EF4838();
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

BOOL OUTLINED_FUNCTION_58_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_58_8()
{
  v5 = *(v1 + 8);
  v6 = *(v0 + 96);

  return sub_267C00940(v3, v6, v2, v5);
}

id OUTLINED_FUNCTION_58_12(float a1)
{
  *v3 = a1;
  *(v2 + 216) = v1;

  return v1;
}

void OUTLINED_FUNCTION_58_14()
{
  v2 = *(v0 + 872);
}

uint64_t OUTLINED_FUNCTION_58_19(unint64_t *a1)
{

  return sub_267C586C4(a1, v1, v2);
}

uint64_t sub_267B9F98C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_53_2@<X0>(uint64_t a1@<X8>)
{

  return sub_267C269D0(v1 + a1, type metadata accessor for TimedSentMessageContext);
}

id OUTLINED_FUNCTION_20_1(float a1)
{
  *v3 = a1;
  *(v2 + 368) = v1;

  return v1;
}

void OUTLINED_FUNCTION_38_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x4468736153707061;
  v2[11] = 0xEB00000000617461;
  return 0;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_20_5()
{
  result = v2;
  v4 = v1 + *(v0 + 28);
  *v4 = v2;
  *(v4 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{

  return sub_267BE855C(v1 + a1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_20_8()
{
}

void OUTLINED_FUNCTION_20_9()
{

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void OUTLINED_FUNCTION_20_11()
{

  JUMPOUT(0x26D6091A0);
}

char *OUTLINED_FUNCTION_20_15@<X0>(uint64_t a1@<X8>)
{

  return sub_267C74A34((v1 + 8 * v2 + 40), a1 - 1 - v2, (v1 + 8 * v2 + 32));
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1)
{
  *(v1 + 216) = *(v1 + 24);
  *(v1 + 232) = *(v1 + 40);
  *(v1 + 57) = *(v1 + 56);
}

__n128 OUTLINED_FUNCTION_20_18(__n128 *a1)
{
  result = *(v1 - 144);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_19()
{
}

double OUTLINED_FUNCTION_20_21()
{
  v3 = *(v0 + 24);

  return sub_267C8F7C0(v3, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_destroy_boxed_opaque_existential_0((v11 + 96));
}

void *OUTLINED_FUNCTION_20_26()
{

  return memcpy((v1 + 16), v0, 0x71uLL);
}

void OUTLINED_FUNCTION_20_32()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_20_33()
{
}

void OUTLINED_FUNCTION_20_35()
{

  sub_267C70CB0();
}

uint64_t sub_267B9FEA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B9FED8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267B9FF34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_267B9FF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B9FFF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9F658(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent, &unk_28022BBF0, &unk_267F01C60);

  return v0;
}

uint64_t sub_267BA0068()
{

  swift_unknownObjectRelease();
  sub_267B9FF34(v0 + OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition, &qword_280229110, &unk_267F08700);
  return v0;
}

uint64_t sub_267BA00B0()
{
  sub_267BA00E4();

  return swift_deallocClassInstance();
}

void *sub_267BA00E4()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  return v0;
}

uint64_t sub_267BA0114()
{
  sub_267BA0148();

  return swift_deallocClassInstance();
}

void *sub_267BA0148()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_267BA0178()
{
  swift_unknownObjectRelease();
  sub_267BA064C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition);

  return swift_deallocClassInstance();
}

uint64_t sub_267BA01E4()
{
  sub_267BA0218();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA0218()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_9();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_15();

  return MEMORY[0x2821FE8E8](v2, a1, 7);
}

uint64_t objectdestroyTm_4()
{
  sub_267EF2728();
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  }

  OUTLINED_FUNCTION_17_23();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_267EF89E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267BA064C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BA06B4()
{
  sub_267BA070C();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA070C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory));
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_22();
  (*(v4 + 8))(v0 + v3);

  sub_267BA1BFC(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished), *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished + 8));
  return v0;
}

uint64_t sub_267BA0810(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267BA0888()
{
  sub_267BA1AEC();

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2)
{

  return sub_267EF9128();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_3_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{
  *(v1 + 1168) = a1;
  v3 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_0((v2 + 16), v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_267EF4018();
}

id OUTLINED_FUNCTION_3_11()
{
  v3 = *(v1 + 232);
  *(v3 + 136) = v0;
  *(v3 + 144) = 1;

  return v0;
}

void OUTLINED_FUNCTION_2_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

BOOL OUTLINED_FUNCTION_7_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_3_13@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{
}

void OUTLINED_FUNCTION_3_20()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_3_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x4468736153707061;
  v2[11] = 0xEB00000000617461;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_34()
{
  v1 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_0((v0 + 56), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_3_38(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *v7 = a1;

  return sub_267BA33E8(0xD00000000000001ALL, v8 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_3_39()
{
  *(v2 - 72) = v1;

  return sub_267EF9DF8();
}

uint64_t OUTLINED_FUNCTION_3_41@<X0>(char a3@<W8>)
{
  *(v3 - 72) = a3;

  return sub_267EF9DD8();
}

uint64_t OUTLINED_FUNCTION_3_42()
{
  v1 = *(v0 + 432);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

id OUTLINED_FUNCTION_3_43(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_3_46()
{
  v2 = v0[152];
  *(v1 - 160) = v0[155];
  *(v1 - 152) = v2;
  v3 = v0[144];
  v4 = v0[119];
  *(v1 - 144) = v0[118];
  *(v1 - 136) = v4;
  result = v0[114];
  v6 = v0[111];
  *(v1 - 112) = v0[109];
  *(v1 - 104) = v3;
  v7 = v0[91];
  *(v1 - 128) = v6;
  *(v1 - 120) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_47()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_48()
{

  return sub_267EF5B28();
}

double OUTLINED_FUNCTION_3_51()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_53(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_54()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_57()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_267B9F98C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_66()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

__n128 *OUTLINED_FUNCTION_3_70(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7453656369766564;
  result[2].n128_u64[1] = 0xEB00000000657461;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_71@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 136) = *(a1 + 32);
  *(v2 + 144) = *(a1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
}

uint64_t OUTLINED_FUNCTION_3_72()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_3_73()
{

  return sub_267BA33E8(0xD000000000000014, v0 | 0x8000000000000000, (v1 - 96));
}

double OUTLINED_FUNCTION_3_78()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

double OUTLINED_FUNCTION_3_79()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_82(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF3F98();
}

id OUTLINED_FUNCTION_3_83()
{

  return [v0 dateSent];
}

uint64_t OUTLINED_FUNCTION_3_89(uint64_t a1)
{

  return sub_267EF9DF8();
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return __swift_storeEnumTagSinglePayload(v1 + v0, 0, 1, v2);
}

void OUTLINED_FUNCTION_18_13()
{

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_18_20()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_18_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;
  *v3 = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_29()
{
}

void OUTLINED_FUNCTION_18_30()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

void OUTLINED_FUNCTION_18_36(void *a1)
{

  _os_log_impl(a1, v1, v3, v2, v4, 0xCu);
}

void OUTLINED_FUNCTION_18_38()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

id OUTLINED_FUNCTION_18_41@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 81) = 257;
  v2 = *(*(a1 + 168) + 16);

  return v2;
}

uint64_t OUTLINED_FUNCTION_18_45(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_267BA1948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  sub_267BB16A4(a1, &v14 - v11, &qword_280229E20, &unk_267EFDCC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267B9FF34(a1, &qword_280229E20, &unk_267EFDCC0);
  return v12;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow16ProcessedContentO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_267BA1AEC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags));

  return v0;
}

uint64_t sub_267BA1B7C(uint64_t a1)
{
  v2 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BA1BFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_267BA1C0C()
{
  sub_267BA1C40();

  return swift_deallocClassInstance();
}

void *sub_267BA1C40()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t sub_267BA1C78()
{
  sub_267BA1CAC();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA1CAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 64);

  sub_267B9EF14(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9FF34(v0 + 344, &qword_280229128, &unk_267EFC860);

  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  return v0;
}

uint64_t sub_267BA1D84()
{
  sub_267BA1DB8();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA1DB8()
{

  sub_267B9FF34(v0 + 40, &qword_280229910, &unk_267EFEB70);

  return v0;
}

uint64_t sub_267BA1E38()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReadingOfferBehaviorFlowFrameResult(uint64_t a1)
{
  result = qword_28022C5C8;
  if (!qword_28022C5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13[29] = a1;
  v13[30] = a2;
  v13[31] = *(a13 + 96);

  return sub_267DB39C8();
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_267EF81C8();
}

void OUTLINED_FUNCTION_45_2()
{

  JUMPOUT(0x26D60A7B0);
}

id OUTLINED_FUNCTION_51_3()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  __swift_project_boxed_opaque_existential_0((v0 + 424), *(v0 + 448));

  return sub_267EF3C48();
}

id OUTLINED_FUNCTION_51_5(void *a1)
{
  *v2 = *(v3 - 128);
  *(v2 + 4) = v1;
  *a1 = v1;

  return v1;
}

__n128 *OUTLINED_FUNCTION_51_7(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7107189;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1)
{

  return sub_267B9FED8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_51_10()
{

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_51_11(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_267BA2E04(v4, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_51_14(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_51_16(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v2[29] = *(v3 + 96);

  return sub_267DB45A8();
}

uint64_t OUTLINED_FUNCTION_51_17()
{
}

void *OUTLINED_FUNCTION_51_18(uint64_t a1)
{
  *(v2 - 88) = v1;

  return sub_267BE8B74(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_51_19()
{
}

uint64_t OUTLINED_FUNCTION_51_21()
{

  return sub_267EF4138();
}

void OUTLINED_FUNCTION_11_3()
{

  JUMPOUT(0x26D609CA0);
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 112);
  v5 = *(v2 + 88);

  return __swift_storeEnumTagSinglePayload(v4, a2, 1, v5);
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_11_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_11_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_11_11()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_11_13()
{

  return [v1 (v0 + 1272)];
}

void OUTLINED_FUNCTION_11_16(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
}

uint64_t OUTLINED_FUNCTION_11_17()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

uint64_t OUTLINED_FUNCTION_11_24@<X0>(uint64_t a1@<X8>)
{

  return sub_267D2FEFC(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_11_28(uint64_t a1)
{

  return sub_267EF8FC8();
}

double OUTLINED_FUNCTION_11_29(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return v5;
}

void *OUTLINED_FUNCTION_11_31()
{
  v2 = *(v0 - 176);

  return __swift_project_boxed_opaque_existential_0((v0 - 200), v2);
}

unint64_t OUTLINED_FUNCTION_11_33()
{
  v3 = *(v2 - 128);
  *(v3 + 16) = v1;
  return v3 + ((*(*(v2 - 144) + 80) + 32) & ~*(*(v2 - 144) + 80)) + *(*(v2 - 144) + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_11_36@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 - 1;
  v4 = *(v1 - 112);
  v5 = v4 + 56 * a1;
  v6 = *(v5 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  *(v4 + 16) = v3;

  return sub_267DB37C4(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_11_38()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_40(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_11_42()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_11_49()
{
  result = v0;
  *(v2 - 96) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_51(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_267EF3F48();
}

void *OUTLINED_FUNCTION_11_55()
{

  return __swift_project_boxed_opaque_existential_0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_267EF8238();
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v7 = v4 + *(v6 + 20);

  return sub_267BD3DDC(v5, v7);
}

uint64_t OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_267EF3F98();
}

uint64_t OUTLINED_FUNCTION_28_8()
{
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_28_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_28_13(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v2[30] = *(v3 + 96);

  return sub_267DB3B04();
}

uint64_t OUTLINED_FUNCTION_28_15(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_28_19()
{
  v2 = *(v0 + 672);

  return memcpy((v0 + 136), v2, 0x71uLL);
}

uint64_t *OUTLINED_FUNCTION_25_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

uint64_t OUTLINED_FUNCTION_28_20()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_28_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  __swift_destroy_boxed_opaque_existential_0(a15);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_28_22()
{

  return sub_267EF7C18();
}

unint64_t OUTLINED_FUNCTION_28_23()
{
  v2 = *(v0 + 192);

  return sub_267DEED78(v2);
}

uint64_t OUTLINED_FUNCTION_28_24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + a1), *(v1 + a1 + 24));
  result = v3 + 24;
  *(v2 - 112) = v3 + 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_26(uint64_t a1)
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_28_28()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 39);
}

uint64_t *OUTLINED_FUNCTION_28_35@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

void OUTLINED_FUNCTION_28_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_28_37(uint64_t a1)
{
  *(v1 + 352) = a1;
  v3 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_0((v2 + 16), v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_28_38()
{

  return sub_267EF7AE8();
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_267EF83C8();
}

uint64_t OUTLINED_FUNCTION_124_0@<X0>(uint64_t a1@<X8>)
{

  return sub_267B9A5E8((v1 + 664), v2 + a1);
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_267BA2E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_267BA2E60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_267BC1EAC(a5, a6);
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
    result = sub_267EF9BC8();
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

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x26D60A7B0);
}

unint64_t OUTLINED_FUNCTION_27_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_267BA33E8(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_27_8()
{
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return sub_267EF4918();
}

void *OUTLINED_FUNCTION_27_14(void *result)
{
  result[2] = v2;
  result[3] = v5;
  result[4] = v4;
  result[5] = v1;
  *(v3 + 48) = sub_267D24438;
  *(v3 + 56) = result;
  return result;
}

void *OUTLINED_FUNCTION_27_15(char a1)
{
  *(v2 + 129) = a1 & 1;

  return memcpy((v2 + 256), v1, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_27_16(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_27_17()
{
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF89A8();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821BB780](a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t a1)
{

  return sub_267BE2930(v1, a1, type metadata accessor for ImageComponent);
}

id OUTLINED_FUNCTION_27_24()
{
  v3 = *(v1 - 88);

  return [v3 (v0 + 3515)];
}

uint64_t OUTLINED_FUNCTION_27_26()
{
}

void OUTLINED_FUNCTION_27_28()
{

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_27_29()
{
}

uint64_t OUTLINED_FUNCTION_27_34()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_27_35(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_27_36()
{

  sub_267DA4D44(v0, v1, v2);
}

void OUTLINED_FUNCTION_27_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t sub_267BA33E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_267BA2E60(v11, 0, 0, 1, a1, a2);
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
    sub_267BA2E04(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_69()
{
  *(v2 + v0) = v1;

  return sub_267EF7998();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  **(v0 + 16) = *(v0 + 24);
}

void OUTLINED_FUNCTION_69_2(uint64_t a2@<X8>)
{
  *(v2 + 536) = a2;

  sub_267BBB55C();
}

void OUTLINED_FUNCTION_69_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_69_7()
{
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  v2 = *(v0 + 400);

  return sub_267ED9A2C(v2);
}

uint64_t OUTLINED_FUNCTION_69_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 52);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ConversationEventStore.Event.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_32_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v12 - 80) = a1;
  *v11 = a11;

  return swift_beginAccess();
}

__n128 *OUTLINED_FUNCTION_4_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "valueToConfirm");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t result, char a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v9 + 101) = *(v10 + 32);
  *(v9 + 48) = v12;
  *(v9 + 56) = v8;
  *(v9 + 100) = v11;
  *(v9 + 99) = a7;
  *(v9 + 98) = a6;
  *(v9 + 97) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a8;
  *(v9 + 96) = a2;
  *(v9 + 16) = result;
  *(v9 + 24) = a3;
  return result;
}

void OUTLINED_FUNCTION_32_12()
{
  v3 = v1 + *(v0 + 36);
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_32_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  return sub_267EF8FF8();
}

uint64_t OUTLINED_FUNCTION_32_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_23()
{
}

uint64_t OUTLINED_FUNCTION_32_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_0(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return sub_267EF9328();
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_26_17@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 76);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_26_18(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_26_19()
{
}

uint64_t OUTLINED_FUNCTION_26_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v7 = v4 + *(v5 + 24);

  return sub_267BD3DDC(v6, v7);
}

void OUTLINED_FUNCTION_26_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_26_23()
{
  v1 = *(v0 + 744);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_26_24(uint64_t a1)
{

  return sub_267BE2930(v1, a1, type metadata accessor for TextComponent);
}

id OUTLINED_FUNCTION_26_26()
{
  v4 = *(v2 - 88);

  return [v4 (v1 + 3593)];
}

void OUTLINED_FUNCTION_26_29(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = *(v3 - 288);
  v1[2] = v2;
}

uint64_t OUTLINED_FUNCTION_26_31()
{
}

void OUTLINED_FUNCTION_26_33()
{
}

uint64_t OUTLINED_FUNCTION_26_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF3B08();
}

uint64_t OUTLINED_FUNCTION_26_37(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_39(uint64_t a1)
{

  return sub_267EF9EA8();
}

void sub_267BA3ED0()
{
  OUTLINED_FUNCTION_48_0();
  v475 = v0;
  v3 = v2;
  v474 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  sub_267EF8228();
  OUTLINED_FUNCTION_58();
  v467 = v11;
  v468 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0();
  v466 = v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_45_0();
  v469 = v18;
  OUTLINED_FUNCTION_26_2();
  sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v471 = v20;
  v472 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_60();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_45_0();
  v470 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  OUTLINED_FUNCTION_18(v26);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v27);
  v29 = &v466 - v28;
  v30 = sub_267EF7B88();
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v473 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v35 = OUTLINED_FUNCTION_18(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_60();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_66_2();
  sub_267B9CC04(v3, v1);
  v40 = type metadata accessor for DirectInvocationUseCases(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v40);
  v476 = v1;
  if (EnumTagSinglePayload != 1)
  {
    sub_267C2FB6C(v1, v38, &unk_28022BBE0, qword_267EFD030);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v52 = *v38;
        v473 = v38[1];
        v474 = v52;
        v54 = v38[4];
        v53 = v38[5];
        v56 = v38[6];
        v55 = v38[7];
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v57 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v57, qword_280240FB0);
        v58 = sub_267EF89F8();
        v59 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v59))
        {
          v60 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v60);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v61, v59, "MessagesFlowDelegatePlugin received a spoken message request");
          OUTLINED_FUNCTION_18_2();
        }

        sub_267EF7C38();
        OUTLINED_FUNCTION_16_1();
        v62 = sub_267EF7C08();
        OUTLINED_FUNCTION_82_0();
        sub_267B9AFEC(v58 + 16, v513);
        __swift_mutable_project_boxed_opaque_existential_1(v513, v514);
        *(&v511 + 1) = &type metadata for MessagesFeatureFlagsImpl;
        v512 = off_2878D1228;
        type metadata accessor for SpokenMessagesFlow();
        v63 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v510, &type metadata for MessagesFeatureFlagsImpl);
        v63[15] = &type metadata for MessagesFeatureFlagsImpl;
        v63[16] = off_2878D1228;
        v64 = v473;
        v63[7] = v474;
        v63[8] = v64;
        v63[9] = v62;
        v63[10] = v54;
        v63[11] = v53;
        v63[17] = v56;
        v63[18] = v55;
        sub_267B9A5E8(&v493, (v63 + 2));
        __swift_destroy_boxed_opaque_existential_0(&v510);
        __swift_destroy_boxed_opaque_existential_0(v513);
        *&v493 = v63;
        v65 = &unk_2802294A8;
        v66 = type metadata accessor for SpokenMessagesFlow;
        v67 = &unk_267F020A0;
        goto LABEL_122;
      case 1u:
        v250 = v467;
        v249 = v468;
        v251 = v469;
        (*(v467 + 32))(v469, v38, v468);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v252 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v252, qword_280240FB0);
        v253 = *(v250 + 16);
        v254 = v466;
        v253(v466, v251, v249);
        v255 = sub_267EF89F8();
        v256 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_27(v256))
        {
          v257 = OUTLINED_FUNCTION_48();
          v475 = OUTLINED_FUNCTION_52();
          *&v493 = v475;
          *v257 = 136315138;
          v253(v14, v254, v249);
          v258 = sub_267EF9098();
          v260 = v259;
          v261 = OUTLINED_FUNCTION_71_1();
          (v253)(v261);
          v262 = sub_267BA33E8(v258, v260, &v493);
          v263 = v249;
          v264 = v262;

          *(v257 + 4) = v264;
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_91_4(v265, v266, v267, v268);
          __swift_destroy_boxed_opaque_existential_0(v475);
          OUTLINED_FUNCTION_26();
          v251 = v469;
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          v387 = OUTLINED_FUNCTION_71_1();
          (v253)(v387);
          v263 = v249;
        }

        v388 = type metadata accessor for DoNothingFlow();
        *&v493 = OUTLINED_FUNCTION_49_2(v388);
        sub_267BB4430(&qword_280229490, 255, type metadata accessor for DoNothingFlow, &unk_267EFFD78);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        OUTLINED_FUNCTION_53_0();

        (v253)(v251, v263);
        goto LABEL_124;
      case 3u:
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v212 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v212, qword_280240FB0);
        v213 = sub_267EF89F8();
        v214 = sub_267EF95D8();
        v215 = OUTLINED_FUNCTION_5_2(v214);
        v216 = v475;
        if (v215)
        {
          v217 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v217);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v218, v214, "#MessagesFlowDelegatePlugin received a carplay gatekeeper request");
          OUTLINED_FUNCTION_18_2();
        }

        sub_267EF7C38();
        OUTLINED_FUNCTION_16_1();
        v470 = sub_267EF7C08();
        sub_267B9AB18(v513);
        v512 = 0;
        v510 = 0u;
        v511 = 0u;
        v509 = 0;
        memset(v508, 0, sizeof(v508));
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        sub_267B9AFEC(qword_2802405A0, v507);
        v494 = 0u;
        v495 = 0u;
        v493 = 0u;
        v496 = 5;
        v219 = sub_267EF6A68();
        OUTLINED_FUNCTION_27_4();
        v220 = swift_allocObject();
        v221 = sub_267EF6A58();
        v222 = type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_32_2(v222);
        OUTLINED_FUNCTION_101_1();
        v223 = type metadata accessor for CommonTemplateProvider();
        v224 = OUTLINED_FUNCTION_49(v223);
        sub_267EF3838();
        __swift_mutable_project_boxed_opaque_existential_1(v507, v507[3]);
        v504 = &type metadata for CATProvider;
        v505 = &off_2878CE7A0;
        v502 = &off_2878D54F8;
        v501 = v219;
        v500[0] = v221;
        v499 = &off_2878CFE90;
        v498 = v220;
        v497[0] = v214;
        v491 = v223;
        v492 = &off_2878D2530;
        v490[0] = v224;
        v488 = &type metadata for MessagesFeatureFlagsImpl;
        v489 = off_2878D1228;
        v475 = type metadata accessor for CarPlayClarificationFlow();
        v225 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v503, &type metadata for CATProvider);
        __swift_mutable_project_boxed_opaque_existential_1(v500, v219);
        OUTLINED_FUNCTION_28_7();
        v474 = v226;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v227);
        OUTLINED_FUNCTION_0_0();
        v230 = (v229 - v228);
        (*(v231 + 16))(v229 - v228);
        __swift_mutable_project_boxed_opaque_existential_1(v497, v498);
        OUTLINED_FUNCTION_28_7();
        v472 = v232;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v233);
        OUTLINED_FUNCTION_0_0();
        v235 = OUTLINED_FUNCTION_103_0(v234);
        v236(v235);
        __swift_mutable_project_boxed_opaque_existential_1(v490, v491);
        OUTLINED_FUNCTION_28_7();
        v471 = v237;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v238);
        v240 = OUTLINED_FUNCTION_5_9(v239, v466);
        v241(v240);
        __swift_mutable_project_boxed_opaque_existential_1(v487, v488);
        v242 = *v230;
        v243 = *v216;
        v486[3] = &type metadata for CATProvider;
        v486[4] = &off_2878CE7A0;
        v485[3] = v219;
        v485[4] = &off_2878D54F8;
        v485[0] = v242;
        v484[3] = v220;
        v484[4] = &off_2878CFE90;
        v484[0] = v243;
        v483[3] = v223;
        v483[4] = &off_2878D2530;
        v483[0] = type metadata for CATProvider.Kind;
        v482[3] = &type metadata for MessagesFeatureFlagsImpl;
        v482[4] = off_2878D1228;
        *(v225 + 112) = v470;
        __swift_project_boxed_opaque_existential_0(v486, &type metadata for CATProvider);

        *(v225 + 168) = sub_267BB4A3C();
        type metadata accessor for GatekeeperCATs(0);
        OUTLINED_FUNCTION_63_2();
        *(v225 + 176) = OUTLINED_FUNCTION_83_1();
        sub_267BB5E24(&v493, v225 + 56);
        v244 = OUTLINED_FUNCTION_60_3();
        __swift_project_boxed_opaque_existential_0(v244, v245);
        v246 = OUTLINED_FUNCTION_16_1();
        v247(v246);
        __swift_project_boxed_opaque_existential_0(&v479, v480);
        OUTLINED_FUNCTION_16_1();
        sub_267EF3BC8();
        sub_267EF3D68();
        OUTLINED_FUNCTION_27_4();
        swift_allocObject();
        v248 = sub_267EF3D58();
        __swift_destroy_boxed_opaque_existential_0(&v479);
        *(v225 + 184) = v248;
        sub_267B9AFEC(v485, v225 + 128);
        sub_267C2FB6C(&v510, &v477, &qword_280229450, &qword_267EFD2E8);
        if (v478)
        {
          sub_267B9A5E8(&v477, &v479);
        }

        else
        {
          v397 = OUTLINED_FUNCTION_60_3();
          __swift_project_boxed_opaque_existential_0(v397, v398);
          v399 = OUTLINED_FUNCTION_16_1();
          v400(v399);
          v248 = type metadata accessor for HandleIntentMessagesSearcher();
          v401 = swift_allocObject();
          sub_267B9A5E8(&v479, v401 + 16);
          v480 = v248;
          v481 = &off_2878D76E0;
          *&v479 = v401;
          if (v478)
          {
            sub_267B9F98C(&v477, &qword_280229450, &qword_267EFD2E8);
          }
        }

        sub_267B9A5E8(&v479, v225 + 192);
        sub_267C2FB6C(v508, &v477, &qword_280229458, &qword_267EFD2F0);
        v389 = v476;
        if (v478)
        {
          sub_267B9A5E8(&v477, &v479);
        }

        else
        {
          v402 = type metadata accessor for FlowLocatorPhoneFlowFinder();
          v403 = OUTLINED_FUNCTION_32_2(v402);
          v480 = v248;
          v481 = &off_2878D76D0;
          *&v479 = v403;
        }

        sub_267B9A5E8(&v479, v225 + 232);
        sub_267B9AFEC(v484, v225 + 272);
        sub_267B9AFEC(v483, v225 + 312);
        sub_267B9AFEC(v506, v225 + 352);
        v404 = type metadata accessor for GatekeeperCATPatternsExecutor(0);
        sub_267EF7B68();
        v405 = OUTLINED_FUNCTION_83_1();
        *(v225 + 416) = v404;
        *(v225 + 424) = &off_2878D8FE0;
        *(v225 + 392) = v405;
        sub_267B9AFEC(v482, v225 + 432);
        *(v225 + 120) = sub_267BB60E8();
        LOBYTE(v404) = sub_267BC2DD0();

        __swift_destroy_boxed_opaque_existential_0(v506);
        sub_267B9B9EC(&v493);
        sub_267B9F98C(v508, &qword_280229458, &qword_267EFD2F0);
        sub_267B9F98C(&v510, &qword_280229450, &qword_267EFD2E8);
        __swift_destroy_boxed_opaque_existential_0(v482);
        __swift_destroy_boxed_opaque_existential_0(v483);
        __swift_destroy_boxed_opaque_existential_0(v484);
        __swift_destroy_boxed_opaque_existential_0(v485);
        *(v225 + 121) = v404 & 1;
        sub_267B9AFEC(v513, v225 + 16);
        __swift_destroy_boxed_opaque_existential_0(v486);
        __swift_destroy_boxed_opaque_existential_0(v513);
        __swift_destroy_boxed_opaque_existential_0(v487);
        __swift_destroy_boxed_opaque_existential_0(v490);
        __swift_destroy_boxed_opaque_existential_0(v497);
        __swift_destroy_boxed_opaque_existential_0(v500);
        __swift_destroy_boxed_opaque_existential_0(v503);
        __swift_destroy_boxed_opaque_existential_0(v507);
        *&v493 = v225;
        sub_267BB4430(&qword_280229460, 255, type metadata accessor for CarPlayClarificationFlow, &unk_267F0B018);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        goto LABEL_142;
      case 4u:
        OUTLINED_FUNCTION_67_0();
        v187 = v38[2];
        v188 = v38[3];
        OUTLINED_FUNCTION_48_2();
        v189 = *(&v494 + 1);
        v190 = OUTLINED_FUNCTION_108_1(v495);
        v125 = __swift_project_boxed_opaque_existential_0(v190, v189);
        sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_267BB41B0(ObjCClassFromMetadata);
        if (!v192)
        {
          goto LABEL_153;
        }

        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_62_0();
        v193 = swift_allocObject();
        *(v193 + 16) = v187;
        *(v193 + 24) = v188;

        OUTLINED_FUNCTION_39_1();
        v197 = OUTLINED_FUNCTION_56_1(119, v194, v195, v196, sub_267BB3BD8);
        OUTLINED_FUNCTION_120_0(v197);

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_54_1();

        v133 = sub_267EF7C08();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
        v198 = swift_allocObject();
        OUTLINED_FUNCTION_52_1(v198, xmmword_267EFC020);
        v135 = sub_267DE86F4();
        goto LABEL_50;
      case 5u:
        OUTLINED_FUNCTION_67_0();
        v121 = v38[2];
        v122 = v38[3];
        OUTLINED_FUNCTION_48_2();
        v123 = *(&v494 + 1);
        v124 = OUTLINED_FUNCTION_108_1(v495);
        v125 = __swift_project_boxed_opaque_existential_0(v124, v123);
        sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
        v126 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v126);
        if (!v127)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          JUMPOUT(0x267BA6C14);
        }

        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_62_0();
        v128 = swift_allocObject();
        *(v128 + 16) = v121;
        *(v128 + 24) = v122;

        OUTLINED_FUNCTION_39_1();
        v132 = OUTLINED_FUNCTION_56_1(119, v129, v130, v131, sub_267BB3B08);
        OUTLINED_FUNCTION_120_0(v132);

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_54_1();

        v133 = sub_267EF7C08();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
        v134 = swift_allocObject();
        OUTLINED_FUNCTION_52_1(v134, xmmword_267EFC020);
        v135 = sub_267BBCF90();
LABEL_50:
        v199 = v135;
        OUTLINED_FUNCTION_82_0();
        v200 = type metadata accessor for SiriKitFlowFactoryImpl();
        v201 = OUTLINED_FUNCTION_49(v200);
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        type metadata accessor for SearchForMessagesCATs(0);
        sub_267EF7B68();
        v202 = sub_267EF78E8();
        v514 = v200;
        v515 = &off_2878CFE90;
        v513[0] = v201;
        type metadata accessor for SearchForMessagesFlow(0);
        OUTLINED_FUNCTION_27_4();
        v203 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v513, v200);
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v204);
        OUTLINED_FUNCTION_0_0();
        v206 = OUTLINED_FUNCTION_103_0(v205);
        v207(v206);
        v208 = *v125;
        v209 = (v203 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory);
        v209[3] = v200;
        v209[4] = &off_2878CFE90;
        *v209 = v208;
        v210 = v203 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
        *v210 = v133;
        *(v210 + 8) = v199;
        *(v210 + 40) = 1;
        type metadata accessor for SearchForMessagesFlow.State(0);
        swift_storeEnumTagMultiPayload();
        v211 = v203 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent;
        *v211 = 0u;
        *(v211 + 16) = 0u;
        *(v211 + 32) = 0;
        *(v203 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs) = v202;
        sub_267B9A5E8(&v493, v203 + 16);
        __swift_destroy_boxed_opaque_existential_0(v513);
        *&v493 = v203;
        sub_267BB4430(&qword_280229470, 255, type metadata accessor for SearchForMessagesFlow, &unk_267F0B7B0);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        OUTLINED_FUNCTION_25_0();
        goto LABEL_123;
      case 6u:
        v136 = *v38;
        v137 = v38[1];
        OUTLINED_FUNCTION_48_2();
        v474 = v495;
        __swift_project_boxed_opaque_existential_0(&v493, *(&v494 + 1));
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        v138 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v138);
        if (!v139)
        {
          goto LABEL_152;
        }

        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_62_0();
        v140 = swift_allocObject();
        *(v140 + 16) = v136;
        *(v140 + 24) = v137;

        OUTLINED_FUNCTION_39_1();
        OUTLINED_FUNCTION_56_1(118, v141, v142, v143, sub_267BB3BD8);
        sub_267EF3848();

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_16_1();
        v474 = sub_267EF7C08();
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_10_9();
        v152 = sub_267BB3BDC(v144, v145, v146, v147, v148, v149, v150, v151, 0, 0, 0);
        v153 = type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1(v153);
        sub_267BC963C(2);
        OUTLINED_FUNCTION_82_0();
        v154 = type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2(v154);
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        type metadata accessor for SendMessageCATs(0);
        OUTLINED_FUNCTION_63_2();
        v473 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v472 = sub_267BB4A3C();
        v155 = type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2(v155);
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v156, &off_2878D0D48);
        OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        OUTLINED_FUNCTION_27_4();
        v475 = v157;
        v158 = swift_allocObject();
        v159 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
        OUTLINED_FUNCTION_28_7();
        v471 = v161;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v162);
        v164 = OUTLINED_FUNCTION_5_9(v163, v466);
        v165(v164);
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_28_7();
        v470 = v166;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v167);
        OUTLINED_FUNCTION_0_0();
        v169 = OUTLINED_FUNCTION_19_4(v168);
        v170(v169);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v171);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        OUTLINED_FUNCTION_58_0(&type metadata for MessagesFeatureFlagsImpl);
        if (![v152 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v172 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v172, qword_280240FB0);
          v173 = sub_267EF89F8();
          v174 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v174))
          {
            v175 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v175);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v176, v177, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v500, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (!v108)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v178 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v178, qword_280240FB0);
          v179 = sub_267EF89F8();
          v180 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v180))
          {
            v181 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v181);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v182, v183, "#SendMessageFlow non-shim intent request, marking as app selected by user");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_69_1();
        }

        OUTLINED_FUNCTION_38_4();
        v184 = OUTLINED_FUNCTION_24_1();
        (v152)(v184);
        __swift_project_boxed_opaque_existential_0(v500, v501);
        OUTLINED_FUNCTION_17_2();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v497, v498);
        OUTLINED_FUNCTION_17_2();
        sub_267EF42B8();
        if (v185)
        {
          v186 = sub_267EF8FF8();
        }

        else
        {
          v186 = 0;
        }

        v389 = v476;
        v415 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v415, sel__setOriginatingDeviceIdsIdentifier_);

        v416 = (v158 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v416 = v474;
        v416[1] = v136;
        v417 = OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2(v417);
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        v418 = v472;
        *(v158 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v473;
        *(v158 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v418;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        OUTLINED_FUNCTION_84_1();
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v419, 255, v420, &unk_267F0A980);
        OUTLINED_FUNCTION_41_3();
        goto LABEL_141;
      case 7u:
        v270 = *v38;
        v269 = v38[1];
        v271 = v38[3];
        v469 = v38[2];
        v272 = v38[4];
        v472 = v38[5];
        v273 = v38[7];
        v466 = v38[6];
        v467 = v272;
        v473 = v273;
        v474 = v271;
        OUTLINED_FUNCTION_48_2();
        v274 = *(&v494 + 1);
        v275 = OUTLINED_FUNCTION_108_1(v495);
        __swift_project_boxed_opaque_existential_0(v275, v274);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        v276 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v276);
        if (!v277)
        {
          goto LABEL_154;
        }

        sub_267EF3B18();
        OUTLINED_FUNCTION_62_0();
        v278 = swift_allocObject();
        v468 = v270;
        *(v278 + 16) = v270;
        *(v278 + 24) = v269;
        v470 = v269;

        OUTLINED_FUNCTION_39_1();
        sub_267EF3B08();
        sub_267EF3848();

        __swift_destroy_boxed_opaque_existential_0(&v493);
        v279 = v472;
        if (v472)
        {

          v280 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          v281 = v467;
          v282 = v279;
          v283 = 2;
        }

        else
        {
          v421 = v473;
          if (!v473)
          {

            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_280228818);
            }

            v458 = sub_267EF8A08();
            OUTLINED_FUNCTION_30_1(v458, qword_280240FB0);
            v459 = sub_267EF89F8();
            v460 = sub_267EF95E8();
            if (OUTLINED_FUNCTION_27(v460))
            {
              v461 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_61(v461);
              OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_90_0(v462, v463, v464, v465);
              OUTLINED_FUNCTION_40_0();
            }

            goto LABEL_124;
          }

          v422 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          v281 = v466;
          v282 = v421;
          v283 = 1;
        }

        v423 = sub_267E7605C(v281, v282, v283);
        sub_267EF2A58();
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v424, v425, v426, v427);
        objc_allocWithZone(MEMORY[0x277CD3E90]);
        v428 = v423;
        OUTLINED_FUNCTION_10_9();
        v437 = sub_267C7BD3C(v429, v430, v431, v432, v433, v434, v435, v436, 0);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v438 = sub_267EF8A08();
        __swift_project_value_buffer(v438, qword_280240FB0);
        v439 = v437;
        v440 = sub_267EF89F8();
        v441 = sub_267EF95D8();

        if (os_log_type_enabled(v440, v441))
        {
          v442 = OUTLINED_FUNCTION_48();
          v443 = swift_slowAlloc();
          *v442 = 138412290;
          *(v442 + 4) = v439;
          *v443 = v439;
          v444 = v439;
          _os_log_impl(&dword_267B93000, v440, v441, "MessagesFlowDelegatePlugin Got recipient from newMessageToContact direct invocation: %@", v442, 0xCu);
          sub_267B9F98C(v443, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_40_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        OUTLINED_FUNCTION_94();
        v445 = swift_allocObject();
        *(v445 + 16) = xmmword_267EFCA40;
        *(v445 + 32) = v439;
        v446 = v439;
        sub_267C29C24();
        v448 = v447;

        swift_setDeallocating();
        sub_267DB6FD4();
        if (v448)
        {
          *&v493 = v448;
          type metadata accessor for SendMessageFlow(0);
          OUTLINED_FUNCTION_1_17();
          sub_267BB4430(v449, 255, v450, &unk_267F0A980);
          OUTLINED_FUNCTION_41_3();
          sub_267EF36E8();
          OUTLINED_FUNCTION_25_0();
        }

        goto LABEL_124;
      case 8u:
        v284 = *v38;
        v285 = v38[1];
        v88 = v38[2];
        v286 = sub_267BAF0DC(v88);
        if (!v286)
        {
          goto LABEL_120;
        }

        v287 = v286;
        v473 = v284;
        v474 = v285;
        *&v493 = MEMORY[0x277D84F90];
        sub_267EF9BF8();
        if ((v287 & 0x8000000000000000) == 0)
        {
          v288 = 0;
          do
          {
            if ((v88 & 0xC000000000000001) != 0)
            {
              MEMORY[0x26D609870](v288, v88);
            }

            else
            {
              v289 = *(v88 + 8 * v288 + 32);
            }

            ++v288;
            sub_267EF2A58();
            OUTLINED_FUNCTION_78();
            __swift_storeEnumTagSinglePayload(v290, v291, v292, v293);
            v294 = objc_allocWithZone(MEMORY[0x277CD3E90]);
            OUTLINED_FUNCTION_114_1();
            OUTLINED_FUNCTION_72();
            OUTLINED_FUNCTION_10_9();
            sub_267C7BD3C(v295, v296, v297, v298, v299, v300, v301, v302, 0);
            sub_267EF9BD8();
            sub_267EF9C08();
            sub_267EF9C18();
            sub_267EF9BE8();
          }

          while (v287 != v288);
LABEL_120:

          sub_267C29C24();
          v407 = v406;

          if (v407)
          {
            *&v493 = v407;
            type metadata accessor for SendMessageFlow(0);
            OUTLINED_FUNCTION_1_17();
            v67 = &unk_267F0A980;
LABEL_122:
            sub_267BB4430(v65, 255, v66, v67);
            OUTLINED_FUNCTION_41_3();
            sub_267EF36E8();
            OUTLINED_FUNCTION_53_0();
LABEL_123:
          }

          goto LABEL_124;
        }

        __break(1u);
LABEL_150:
        OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_24:
        v109 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v109, qword_280240FB0);
        v110 = sub_267EF89F8();
        v111 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v111))
        {
          v112 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v112);
          OUTLINED_FUNCTION_14_8(&dword_267B93000, v113, v114, "#SendMessageFlow non-shim intent request, marking as app selected by user");
          OUTLINED_FUNCTION_18_2();
        }

        v29[96] = 1;
LABEL_27:
        v115 = *(&v494 + 1);
        v116 = v495;
        v117 = __swift_project_boxed_opaque_existential_0(&v493, *(&v494 + 1));
        v118 = *(v116 + 24);
        v119 = v40;
        v118(v500, v115, v116);
        __swift_project_boxed_opaque_existential_0(v500, v501);
        OUTLINED_FUNCTION_25_0();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v497, v498);
        OUTLINED_FUNCTION_25_0();
        sub_267EF42B8();
        if (v120)
        {
          sub_267EF8FF8();
          OUTLINED_FUNCTION_25_0();
        }

        else
        {
          v117 = 0;
        }

        v389 = v476;
        v390 = v474;
        v391 = v469;
        v392 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v392, sel__setOriginatingDeviceIdsIdentifier_);

        v393 = (v88 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v393 = v391;
        v393[1] = v119;
        v394 = OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2(v394);
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        *(v88 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v473;
        *(v88 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v468;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        __swift_destroy_boxed_opaque_existential_0(v513);
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v395, 255, v396, &unk_267F0A980);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        OUTLINED_FUNCTION_54_1();

        (*(v471 + 8))(v470, v472);
        goto LABEL_125;
      case 9u:
        OUTLINED_FUNCTION_67_0();
        v340 = v38[2];
        v341 = v38[3];
        OUTLINED_FUNCTION_48_2();
        v342 = *(&v494 + 1);
        v343 = OUTLINED_FUNCTION_108_1(v495);
        __swift_project_boxed_opaque_existential_0(v343, v342);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        v344 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v344);
        if (!v345)
        {
          goto LABEL_155;
        }

        sub_267EF3B18();
        OUTLINED_FUNCTION_62_0();
        v346 = swift_allocObject();
        *(v346 + 16) = v340;
        *(v346 + 24) = v341;

        OUTLINED_FUNCTION_39_1();
        v347 = sub_267EF3B08();
        sub_267EF3848();

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_54_1();
        v471 = sub_267EF7C08();
        OUTLINED_FUNCTION_72();
        v352 = sub_267BB3BDC(v348, v349, v350, v351, 0, v474, v472, 0, 0, 0, 0);
        v353 = type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1(v353);
        sub_267BC963C(2);
        OUTLINED_FUNCTION_82_0();
        v354 = type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2(v354);
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        type metadata accessor for SendMessageCATs(0);
        OUTLINED_FUNCTION_63_2();
        v474 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v473 = sub_267BB4A3C();
        v355 = type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2(v355);
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v356, &off_2878D0D48);
        OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        OUTLINED_FUNCTION_27_4();
        v475 = v357;
        v358 = swift_allocObject();
        v359 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v359, v360);
        OUTLINED_FUNCTION_28_7();
        v472 = v361;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v362);
        v364 = OUTLINED_FUNCTION_5_9(v363, v466);
        v365(v364);
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_28_7();
        v470 = v366;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v367);
        OUTLINED_FUNCTION_0_0();
        v369 = OUTLINED_FUNCTION_19_4(v368);
        v370(v369);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v371);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        OUTLINED_FUNCTION_58_0(&type metadata for MessagesFeatureFlagsImpl);
        if (![v352 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v372 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v372, qword_280240FB0);
          v373 = sub_267EF89F8();
          v374 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v374))
          {
            v375 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v375);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v376, v377, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v500, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (!v108)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v378 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v378, qword_280240FB0);
          v379 = sub_267EF89F8();
          v380 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v380))
          {
            v381 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v381);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v382, v383, "#SendMessageFlow non-shim intent request, marking as app selected by user");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_69_1();
        }

        OUTLINED_FUNCTION_38_4();
        v384 = OUTLINED_FUNCTION_24_1();
        (v352)(v384);
        __swift_project_boxed_opaque_existential_0(v500, v501);
        OUTLINED_FUNCTION_17_2();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v497, v498);
        OUTLINED_FUNCTION_17_2();
        sub_267EF42B8();
        if (v385)
        {
          v386 = sub_267EF8FF8();
        }

        else
        {
          v386 = 0;
        }

        v389 = v476;
        v451 = v471;
        v452 = v474;
        v453 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v453, sel__setOriginatingDeviceIdsIdentifier_);

        v454 = (v358 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v454 = v451;
        v454[1] = v347;
        v455 = OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2(v455);
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        *(v358 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v452;
        *(v358 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v473;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        OUTLINED_FUNCTION_84_1();
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v456, 255, v457, &unk_267F0A980);
        OUTLINED_FUNCTION_41_3();
LABEL_141:
        sub_267EF36E8();
        OUTLINED_FUNCTION_54_1();
LABEL_142:

        goto LABEL_125;
      case 0xAu:
        v303 = v38[1];
        v304 = v38[2];
        sub_267EF7C38();
        OUTLINED_FUNCTION_108();
        v474 = sub_267EF7C08();
        v305 = type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1(v305);
        v306 = v304;
        sub_267BC963C(3);
        OUTLINED_FUNCTION_82_0();
        v307 = type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2(v307);
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        type metadata accessor for SendMessageCATs(0);
        sub_267EF7B68();
        v473 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v472 = sub_267BB4A3C();
        v308 = type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2(v308);
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v309, &off_2878D0D48);
        OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        OUTLINED_FUNCTION_27_4();
        v475 = v310;
        v311 = swift_allocObject();
        v312 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v312, v313);
        OUTLINED_FUNCTION_28_7();
        v471 = v314;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v315);
        v317 = OUTLINED_FUNCTION_5_9(v316, v466);
        v318(v317);
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_28_7();
        v470 = v319;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v320);
        OUTLINED_FUNCTION_0_0();
        v322 = OUTLINED_FUNCTION_19_4(v321);
        v323(v322);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v324);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        OUTLINED_FUNCTION_58_0(&type metadata for MessagesFeatureFlagsImpl);
        if (![v306 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v325 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v325, qword_280240FB0);
          v326 = sub_267EF89F8();
          v327 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v327))
          {
            v328 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v328);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v329, v330, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v500, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (!v108)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v331 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v331, qword_280240FB0);
          v332 = sub_267EF89F8();
          v333 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v333))
          {
            v334 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v334);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v335, v336, "#SendMessageFlow non-shim intent request, marking as app selected by user");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_69_1();
        }

        OUTLINED_FUNCTION_38_4();
        v337 = OUTLINED_FUNCTION_24_1();
        (v306)(v337);
        __swift_project_boxed_opaque_existential_0(v500, v501);
        OUTLINED_FUNCTION_17_2();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v497, v498);
        OUTLINED_FUNCTION_17_2();
        sub_267EF42B8();
        if (v338)
        {
          v339 = sub_267EF8FF8();
        }

        else
        {
          v339 = 0;
        }

        v389 = v476;
        v409 = v473;
        v408 = v474;
        v410 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v410, sel__setOriginatingDeviceIdsIdentifier_);

        v411 = (v311 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v411 = v408;
        v411[1] = v303;
        v412 = OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2(v412);
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        *(v311 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v409;
        *(v311 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v472;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        OUTLINED_FUNCTION_84_1();
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v413, 255, v414, &unk_267F0A9D8);
        OUTLINED_FUNCTION_41_3();
        sub_267EF31C8();
        OUTLINED_FUNCTION_54_1();

        goto LABEL_125;
      case 0xDu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229498, &qword_267EFD2F8);
        v69 = v470;
        v68 = v471;
        v70 = v472;
        (*(v471 + 32))(v470, v38, v472);
        sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
        (*(v68 + 16))(v23, v69, v70);
        v71 = sub_267E80978(v23);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        OUTLINED_FUNCTION_94();
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_267EFCA40;
        *(v72 + 32) = v71;
        v474 = v71;
        OUTLINED_FUNCTION_10_9();
        v81 = sub_267BB3BDC(v73, v74, v75, v76, v77, v78, v79, v80, 0, v72, 0);
        sub_267EF7C38();
        v469 = sub_267EF7C08();
        v82 = type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1(v82);
        v40 = v81;
        v83 = sub_267BC963C(4);
        OUTLINED_FUNCTION_82_0();
        v84 = type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2(v84);
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0(&qword_2802286F0);
        }

        type metadata accessor for SendMessageCATs(0);
        OUTLINED_FUNCTION_63_2();
        v473 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v468 = sub_267BB4A3C();
        v85 = type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2(v85);
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v86, &off_2878D0D48);
        OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        OUTLINED_FUNCTION_27_4();
        v475 = v87;
        v88 = swift_allocObject();
        v89 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
        OUTLINED_FUNCTION_28_7();
        v467 = v91;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v92);
        v94 = OUTLINED_FUNCTION_5_9(v93, v466);
        v95(v94);
        __swift_mutable_project_boxed_opaque_existential_1(&v510, *(&v511 + 1));
        OUTLINED_FUNCTION_28_7();
        v466 = v96;
        OUTLINED_FUNCTION_23();
        MEMORY[0x28223BE20](v97);
        OUTLINED_FUNCTION_0_0();
        v99 = OUTLINED_FUNCTION_19_4(v98);
        v100(v99);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v101);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        v504 = &type metadata for MessagesFeatureFlagsImpl;
        v505 = off_2878D1228;
        sub_267BCE788(v40);
        v29 = v83;
        if (![v40 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v102 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v102, qword_280240FB0);
          v103 = sub_267EF89F8();
          v104 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v104))
          {
            v105 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v105);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v106, v107, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v500, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (v108)
        {
          goto LABEL_27;
        }

        if (qword_280228818 == -1)
        {
          goto LABEL_24;
        }

        goto LABEL_150;
      default:
        sub_267BB3B80(v38, type metadata accessor for DirectInvocationUseCases);
        break;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v42 = sub_267EF8A08();
  __swift_project_value_buffer(v42, qword_280240FB0);
  v43 = v474;
  (*(v5 + 16))(v9, v3, v474);
  v44 = sub_267EF89F8();
  v45 = sub_267EF95E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_48();
    v47 = OUTLINED_FUNCTION_52();
    *&v493 = v47;
    *v46 = 136315138;
    Parse.DirectInvocation.description.getter();
    (*(v5 + 8))(v9, v43);
    v48 = OUTLINED_FUNCTION_114_1();
    v51 = sub_267BA33E8(v48, v49, v50);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_267B93000, v44, v45, "MessagesFlowDelegatePlugin received an unsupported directInvocation: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {

    (*(v5 + 8))(v9, v43);
  }

LABEL_124:
  v389 = v476;
LABEL_125:
  sub_267B9F98C(v389, &unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BA6C4C()
{

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void OUTLINED_FUNCTION_78_4()
{

  JUMPOUT(0x26D608E60);
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1)
{

  return sub_267EF9C68();
}

BOOL OUTLINED_FUNCTION_78_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_78_9()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return v1;
}

uint64_t OUTLINED_FUNCTION_78_10(uint64_t a1)
{
  *(v1 + 536) = a1;
  v3 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_0((v2 + 16), v3);
  return v3;
}

void OUTLINED_FUNCTION_78_12()
{
  v0[11] = v2;
  v0[12] = v1;
  v0[2] = v3;
}

uint64_t OUTLINED_FUNCTION_78_13()
{
  *v0 = 2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_78_14()
{
}

uint64_t OUTLINED_FUNCTION_78_15()
{

  return sub_267EF7B68();
}

uint64_t OUTLINED_FUNCTION_78_16()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_267B9F98C(v1 + v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  *(v0 + 16) = v1;
  *(v0 + 40) = 1;

  return type metadata accessor for SendMessageFlow.State(0);
}

uint64_t OUTLINED_FUNCTION_35_6@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267C2FB6C(v4 + a1, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1)
{

  return swift_once();
}

char *OUTLINED_FUNCTION_35_12(uint64_t a1)
{

  return sub_267BC7934(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_35_15()
{
  v2 = v0[152];
  *(v1 - 152) = v0[155];
  *(v1 - 144) = v2;
  v3 = v0[144];
  v4 = v0[119];
  *(v1 - 136) = v0[118];
  *(v1 - 128) = v4;
  result = v0[114];
  v6 = v0[111];
  *(v1 - 104) = v0[109];
  *(v1 - 96) = v3;
  v7 = v0[91];
  *(v1 - 120) = v6;
  *(v1 - 112) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_19()
{
}

uint64_t OUTLINED_FUNCTION_35_20()
{

  return sub_267B9FF34(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_21()
{
}

uint64_t OUTLINED_FUNCTION_35_22()
{

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_35_27()
{

  return sub_267C269D0(v0, type metadata accessor for DirectInvocationUseCases);
}

uint64_t OUTLINED_FUNCTION_35_28()
{

  return sub_267EF41C8();
}

void *OUTLINED_FUNCTION_23_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v12 + 944) = result;
  result[2] = v16;
  result[3] = v14;
  result[4] = v13;
  result[5] = v10;
  result[6] = a9;
  result[7] = v17;
  result[8] = a10;
  result[9] = v15;
  result[10] = v11;
  return result;
}

void OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_23_4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a16, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 a17, char a18)
{
  a17 = a1;
  a18 = 0;

  return sub_267C5C400(&a17, v18);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_267C58880(v0, type metadata accessor for SmsContactIntentNode);
}

void OUTLINED_FUNCTION_23_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_23_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t *OUTLINED_FUNCTION_23_14()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_23_15@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = 0xD000000000000014;
  *(a1 + 40) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_23_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v13 + 208);
  v15 = *(v13 + 80);
  __swift_storeEnumTagSinglePayload(v14, a2, 1, a12);
  v16 = v15 + *(v12 + 20);

  return sub_267BD3DDC(v14, v16);
}

uint64_t OUTLINED_FUNCTION_23_19(uint64_t a1, uint64_t a2)
{

  return sub_267EF9978();
}

uint64_t OUTLINED_FUNCTION_23_24()
{
}

uint64_t OUTLINED_FUNCTION_23_28(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_23_29()
{

  JUMPOUT(0x26D608E60);
}

uint64_t OUTLINED_FUNCTION_23_30()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_23_31(uint64_t a1)
{
  *(a1 + 48) = v3;
  *(a1 + 72) = v1;
  *(a1 + 80) = 0x656E696C66666FLL;
  *(a1 + 88) = 0xE700000000000000;
  *(a1 + 96) = v2;
  *(a1 + 120) = v1;
  *(a1 + 128) = 7368801;
  *(a1 + 136) = 0xE300000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_33(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);

  return sub_267E583B0(v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_37()
{
}

__n128 OUTLINED_FUNCTION_42_1(float a1)
{
  *v1 = a1;
  v3 = *(v2 + 256);
  *(v2 + 368) = *(v2 + 240);
  *(v2 + 384) = v3;
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v2 + 400) = result;
  *(v2 + 416) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_42_3(uint64_t a1@<X8>)
{
  v2[82] = a1;
  v2[81] = v3;
  v2[78] = v1;
}

void OUTLINED_FUNCTION_42_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_8()
{
}

uint64_t OUTLINED_FUNCTION_42_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[6] = a2;
  v3[9] = a1;
  v3[10] = v4;
  v3[11] = (v2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_42_11(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_15@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_42_17(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_18()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_42_20()
{

  return sub_267BC20F4(v2, 0, 0, v1, v0);
}

__n128 *OUTLINED_FUNCTION_42_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x796C7065527369;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t *OUTLINED_FUNCTION_42_23@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  return a9;
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_16_3()
{
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_267EF2CC8();
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ConversationEventStore.Event.rawValue.getter();
}

BOOL OUTLINED_FUNCTION_16_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_15()
{
}

id OUTLINED_FUNCTION_16_17()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return v1;
}

void OUTLINED_FUNCTION_16_23()
{
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = 4024639;
  v1[14] = 0xE300000000000000;
}

void *OUTLINED_FUNCTION_16_25@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 - 224);
  result[8] = a2;
  result[9] = v4;
  result[10] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return sub_267EF9A68();
}

uint64_t OUTLINED_FUNCTION_16_32()
{

  return sub_267EF3CD8();
}

uint64_t OUTLINED_FUNCTION_16_34(uint64_t a1)
{
  *(v1 + 96) = a1;
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));

  return sub_267EF3C28();
}

uint64_t OUTLINED_FUNCTION_16_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF89B8();
}

uint64_t OUTLINED_FUNCTION_16_38(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_16_41()
{

  return sub_267EF8238();
}

void OUTLINED_FUNCTION_16_42()
{
  v2 = *(v0 + 160);
}

void *sub_267BA7E0C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF8, &qword_267EFF0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_267BA7F4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267BA7F9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF8, &qword_267EFF0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BA800C(uint64_t a1)
{
  sub_267B9AB18(v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  (*(v3 + 24))(v6, v2, v3);
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  *(a1 + 344) = sub_267EF45A8();
  *(a1 + 352) = v4;

  __swift_destroy_boxed_opaque_existential_0(v6);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_267BA80BC(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_267EF9F28();
      __break(1u);
      goto LABEL_22;
    }

    sub_267BA7F9C(i, &v29);
    v8 = v29;
    v7 = v30;
    v27 = v29;
    v28 = v30;
    sub_267BA7F4C(&v31, v26);
    v9 = *a3;
    v11 = sub_267BA9948();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
      sub_267EF9C78();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    sub_267BA7F4C(v26, (v17[7] + 32 * v11));
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v21;
    a2 = 1;
    if (v24 == v5)
    {

      return;
    }
  }

  sub_267CFA060();
  v15 = sub_267BA9948();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v32 = v22;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v26);

    return;
  }

LABEL_22:
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F167A0);
  sub_267EF9C58();
  MEMORY[0x26D608E60](39, 0xE100000000000000);
  sub_267EF9C98();
  __break(1u);
}

uint64_t sub_267BA83C4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t Parse.DirectInvocation.description.getter()
{
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD000000000000030, 0x8000000267F1D360);
  v0 = sub_267EF4BC8();
  MEMORY[0x26D608E60](v0);

  v1 = MEMORY[0x26D608E60](0x4472657375202C22, 0xED0000203A617461);
  sub_267BA85B8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C668, &unk_267F0B0F0);
  v2 = sub_267EF9098();
  MEMORY[0x26D608E60](v2);

  MEMORY[0x26D608E60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267BA85B8(uint64_t a1)
{
  result = sub_267EF4BD8();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {

    v4 = MEMORY[0x277D84F90];
    return sub_267BA89C8(v4);
  }

  v45 = MEMORY[0x277D84F90];
  sub_267BA8920(0, v3, 0);
  v4 = v45;
  result = sub_267BA7F44();
  v6 = result;
  v8 = v7;
  v9 = 0;
  v10 = v2 + 64;
  v33 = v7;
  v34 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_34;
    }

    if (*(v2 + 36) != v8)
    {
      goto LABEL_35;
    }

    v35 = v5;
    v36 = v4;
    v12 = (*(v2 + 48) + 16 * v6);
    v14 = *v12;
    v13 = v12[1];
    sub_267BA2E04(*(v2 + 56) + 32 * v6, v42);
    v40[0] = v14;
    v40[1] = v13;
    sub_267BA7F4C(v42, v41);
    sub_267BA2E04(v41, v39);
    if (v14 == sub_267EF9028() && v13 == v15)
    {

LABEL_15:
      v18 = sub_267EBFB68();
      v19 = sub_267EF9838();
      v38 = v18;
      *&v37 = v19;
      __swift_destroy_boxed_opaque_existential_0(v39);
      sub_267BA7F4C(&v37, v39);
      goto LABEL_16;
    }

    v17 = sub_267EF9EA8();

    if (v17)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_267BA7F4C(v39, v44);
    *&v43 = v14;
    *(&v43 + 1) = v13;

    result = sub_267B9F98C(v40, &qword_28022C060, &qword_267F09478);
    v4 = v36;
    v45 = v36;
    v21 = *(v36 + 16);
    v20 = *(v36 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_267BA8920((v20 > 1), v21 + 1, 1);
      v4 = v45;
    }

    *(v4 + 16) = v21 + 1;
    v22 = (v4 + 48 * v21);
    v23 = v43;
    v24 = v44[1];
    v22[3] = v44[0];
    v22[4] = v24;
    v22[2] = v23;
    v25 = 1 << *(v2 + 32);
    if (v6 >= v25)
    {
      goto LABEL_36;
    }

    v10 = v2 + 64;
    v26 = *(v2 + 64 + 8 * v11);
    if ((v26 & (1 << v6)) == 0)
    {
      goto LABEL_37;
    }

    if (*(v2 + 36) != v8)
    {
      goto LABEL_38;
    }

    v27 = v26 & (-2 << (v6 & 0x3F));
    if (v27)
    {
      v25 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v11 << 6;
      v29 = v11 + 1;
      v30 = (v2 + 72 + 8 * v11);
      while (v29 < (v25 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_267C96654(v6, v8, v35 & 1);
          v25 = __clz(__rbit64(v31)) + v28;
          goto LABEL_28;
        }
      }

      result = sub_267C96654(v6, v8, v35 & 1);
    }

LABEL_28:
    v5 = 0;
    ++v9;
    v6 = v25;
    v8 = v33;
    if (v9 == v34)
    {

      return sub_267BA89C8(v4);
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_267BA8920(void *a1, int64_t a2, char a3)
{
  result = sub_267BA7E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_267BA8944(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &qword_28022D2F8, 0x277D58238);
  v3 = sub_267EF92D8();

  [a2 setInferenceCommsAppSelectionTrainingAppDependentSignals_];
}

uint64_t sub_267BA89F0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_267EF9CF8();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_50_4@<X0>(uint64_t a1@<X8>)
{

  return sub_267C26980(v2, v1 + a1, v4, v3);
}

uint64_t OUTLINED_FUNCTION_50_5@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267C2FB6C(v3 + a1, v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_50_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_50_8()
{
}

uint64_t OUTLINED_FUNCTION_50_9()
{
  v3 = *(v0 + 8);
  *(v2 - 120) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v2 - 112) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t result)
{
  v3[6] = v2;
  v3[9] = result;
  v3[10] = v4;
  v3[11] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_11()
{
  v2 = *(*(v0 + 752) + 48);
  *(v0 + 776) = v2;

  return sub_267BEB520(v2 + 152, v0 + 256);
}

uint64_t OUTLINED_FUNCTION_361()
{
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

unint64_t OUTLINED_FUNCTION_50_14()
{

  return sub_267BA33E8(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_50_15()
{

  return sub_267EF4328();
}

void OUTLINED_FUNCTION_50_16()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_50_17()
{
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_267EF8F28();
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_3()
{
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_28@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

void OUTLINED_FUNCTION_1_29()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 272) = 1;
  *(v0 - 264) = 1;
  *(v0 - 256) = 1;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_1_30()
{
}

__n128 *OUTLINED_FUNCTION_1_31(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "resolutionType");
  result[2].n128_u8[15] = -18;
  return result;
}

__n128 OUTLINED_FUNCTION_1_32(uint64_t a1)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_38(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_1_41(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267BE24FC(&a9, a2, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return sub_267BBD0EC(0, v1 == 0, v0);
}

uint64_t OUTLINED_FUNCTION_1_48()
{
  v1 = *(v0 + 352);
  *(v0 + 584) = *(v0 + 336);
  result = *(v0 + 520);
  v3 = *(v0 + 496);
  *(v0 + 600) = v1;
  *(v0 + 329) = *(v0 + 368);
  *(v0 + 616) = *(v3 + 8);
  *(v0 + 624) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_49(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_1_55()
{
  v2 = v0[117];
  *(v1 - 176) = v0[118];
  *(v1 - 168) = v2;
  v3 = v0[111];
  *(v1 - 160) = v0[114];
  *(v1 - 152) = v3;
  v4 = v0[105];
  *(v1 - 144) = v0[108];
  *(v1 - 136) = v4;
  v5 = v0[102];
  *(v1 - 128) = v0[104];
  *(v1 - 120) = v5;
  v6 = v0[96];
  *(v1 - 112) = v0[99];
  *(v1 - 104) = v6;
}

__n128 OUTLINED_FUNCTION_1_56(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = *(v1 - 192);
  v3 = *(v1 - 176);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1)
{
  *(a1 + 8) = sub_267DB184C;
  v3 = *(v1 + 72);
  *(v2 + 32) = 0;
  *(v2 + 40) = v3;
  return 0x696A6F6D6E6567;
}

__n128 *OUTLINED_FUNCTION_2_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6D614E70756F7267;
  result[2].n128_u64[1] = 0xE900000000000065;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_62()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_64()
{

  return sub_267EF47A8();
}

unint64_t OUTLINED_FUNCTION_1_68(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_267BA33E8(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_1_69()
{
}

uint64_t OUTLINED_FUNCTION_1_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_73()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
}

uint64_t OUTLINED_FUNCTION_1_74(uint64_t a1)
{
  *(v1 + 128) = v2;
  *(v1 + 57) = *(v1 + 16);
  *(v1 + 136) = *(v1 + 24);
  *(v1 + 152) = *(v1 + 40);
  *(v1 + 58) = *(v1 + 56);
}

unint64_t OUTLINED_FUNCTION_1_75(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_267BA33E8(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_1_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_267EF89B8();
}

uint64_t OUTLINED_FUNCTION_1_79@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_267EF9DA8();
}

unint64_t OUTLINED_FUNCTION_1_82(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_1_83(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_1_86(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);

  return sub_267C1D46C(v3);
}

uint64_t OUTLINED_FUNCTION_1_87()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

unint64_t sub_267BA9948()
{
  OUTLINED_FUNCTION_16_9();
  sub_267EF9FC8();
  sub_267EF9128();
  sub_267EFA018();
  v0 = OUTLINED_FUNCTION_46_2();

  return sub_267BAB9D4(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_24_5@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_24_6@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v2, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_61_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_24_8@<X0>(uint64_t a1@<X8>)
{
  sub_267B9A5E8((v2 - 208), v1 + a1);
  sub_267B9A5E8((v2 - 128), v1 + 16);
}

uint64_t OUTLINED_FUNCTION_24_12@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  *(v1 + 536) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_18()
{
  v4 = *(v1 + 200);

  return __swift_storeEnumTagSinglePayload(v4, v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_24_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_267EF9C98();
}

void OUTLINED_FUNCTION_24_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_24_25()
{

  return sub_267EF2D18();
}

uint64_t OUTLINED_FUNCTION_24_26()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_24_27()
{
  v1 = __swift_project_boxed_opaque_existential_0(*(v0 + 568), *(*(v0 + 568) + 24));

  return sub_267BB8364(v1);
}

uint64_t OUTLINED_FUNCTION_24_29()
{
  v3 = *(v1 + 56);

  return sub_267BBD0EC(v0, (v3 & 0xC000000000000001) == 0, v3);
}

uint64_t OUTLINED_FUNCTION_24_31(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_32()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_24_34(void *result)
{
  *(v3 + 488) = result;
  result[2] = v2;
  result[3] = v5;
  result[4] = v6;
  result[5] = v7;
  result[6] = v4;
  result[7] = v1;
  result[8] = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_36()
{
}

uint64_t OUTLINED_FUNCTION_24_41()
{

  return sub_267C2FB6C(v2, v1 + v4, v0, v3);
}

uint64_t OUTLINED_FUNCTION_24_42()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_267EF4CC8();
}

uint64_t OUTLINED_FUNCTION_24_45(uint64_t a1)
{

  return sub_267EF9EA8();
}

uint64_t sub_267BA9F38(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_267EF9128();
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_19(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

void OUTLINED_FUNCTION_4_20()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

__n128 OUTLINED_FUNCTION_4_21(__n128 *a1)
{
  *(v1 + 40) = a1;
  result = *(v1 + 24);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[6], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[7], 1, 1, v1);
  v4 = v2 + v3[8];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_28(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_267EF4CC8();
}

uint64_t OUTLINED_FUNCTION_4_34(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_36()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_4_37@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_267EF9DA8();
}

uint64_t OUTLINED_FUNCTION_4_41()
{
}

uint64_t OUTLINED_FUNCTION_4_44@<X0>(uint64_t a1@<X8>)
{

  return sub_267D75EC4(v1 + a1, type metadata accessor for TimedSentMessageContext);
}

uint64_t OUTLINED_FUNCTION_4_45(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
  v4 = *(v3 + 40);
  __swift_project_boxed_opaque_existential_0((v3 + 16), v4);
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_49()
{
}

uint64_t OUTLINED_FUNCTION_4_50()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_4_51()
{
}

id OUTLINED_FUNCTION_4_52(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_4_55()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_56()
{
}

uint64_t OUTLINED_FUNCTION_4_58(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_59@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x6E65697069636572;
  v2[11] = 0xE900000000000074;
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_60(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

unint64_t OUTLINED_FUNCTION_4_65()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_4_66(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

double OUTLINED_FUNCTION_4_68()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_70(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_74()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_76()
{
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_267C37B28(v0 + 16, v0 + 72);
}

unint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_267BA33E8(0x614C664F65746144, 0xEE00746E69487473, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t a1, uint64_t a2)
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_21_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_21_13(uint64_t a1, uint64_t a2)
{
  v3[54] = a1;
  v3[55] = a2;
  v3[56] = *(v4 + 96);

  return memcpy(v3 + 2, v2, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_21_15@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 56);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

id OUTLINED_FUNCTION_21_16()
{

  return sub_267BC20F4(v1, 0, 0, 0, v0);
}

void OUTLINED_FUNCTION_21_17()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = v2;
}

void OUTLINED_FUNCTION_21_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_24(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_26()
{
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return type metadata accessor for MessagesApp(0);
}

uint64_t OUTLINED_FUNCTION_21_30()
{
}

uint64_t OUTLINED_FUNCTION_21_33()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_21_37()
{

  return sub_267C2FB6C(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_9()
{
}

void OUTLINED_FUNCTION_59_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_7_16()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 424));
}

_OWORD *OUTLINED_FUNCTION_7_29()
{
  *v0 = 0u;
  v0[1] = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_7_31()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_33(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D5BC48];

  return sub_267BC1E20(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_7_39(uint64_t a1, uint64_t a2)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_7_41()
{
}

void *OUTLINED_FUNCTION_7_43()
{
  v2 = *(v0 + 88);

  return __swift_project_boxed_opaque_existential_0((v0 + 64), v2);
}

id OUTLINED_FUNCTION_7_45()
{

  return sub_267BEA714(v1, (v0 + 112));
}

unint64_t OUTLINED_FUNCTION_7_50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(*(a5 + 56) + 8 * result) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_54()
{
}

uint64_t OUTLINED_FUNCTION_7_55()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  v1 = __swift_project_boxed_opaque_existential_0(*(v0 + 760), *(*(v0 + 760) + 24));

  return sub_267BB8364(v1);
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_267C37B60(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_267EF7C18();
}

void OUTLINED_FUNCTION_25_11()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

void OUTLINED_FUNCTION_25_13(uint64_t a1@<X8>)
{
  v5 = *(v3 + 98);
  *(v4 + 144) = v1;
  *(v4 + 168) = a1;
  *(v4 + 176) = 0x7473614C7369;
  *(v4 + 184) = 0xE600000000000000;
  *(v4 + 192) = v5;
  *(v4 + 216) = v2;
  *(v4 + 224) = 0x74737269467369;
  *(v4 + 232) = 0xE700000000000000;
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267EF2B48();
}

id OUTLINED_FUNCTION_25_15()
{

  return sub_267BC20F4(v0, 0, 0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_21()
{
}

uint64_t OUTLINED_FUNCTION_25_22()
{
  v2 = *v0;
  *(v1 + 1336) = 0;
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, *(v1 + 1272));
}

uint64_t OUTLINED_FUNCTION_25_29()
{
}

uint64_t OUTLINED_FUNCTION_25_31()
{
}

void OUTLINED_FUNCTION_25_32()
{

  sub_267C9DA84(v0, v1);
}

uint64_t OUTLINED_FUNCTION_25_33()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_25_34()
{
}

uint64_t OUTLINED_FUNCTION_25_35(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + 152);
  v6 = *(v3 + 56);
  __swift_storeEnumTagSinglePayload(v5, a2, 1, v4);
  v7 = v6 + *(v2 + 28);

  return sub_267BD3DDC(v5, v7);
}

void OUTLINED_FUNCTION_25_37()
{

  sub_267C7103C();
}

__n128 *OUTLINED_FUNCTION_25_41(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "screenshotHint");
  result[2].n128_u8[15] = -18;
  return result;
}

void OUTLINED_FUNCTION_25_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  __swift_destroy_boxed_opaque_existential_0(a14);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_25_44()
{

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_25_45()
{

  return MEMORY[0x2821BB218](v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_46(uint64_t a1)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_47_9()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 48));
}

void OUTLINED_FUNCTION_47_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_13()
{
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_0((v0 + 96), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_47_18@<X0>(int *a1@<X8>)
{
  *(v1 - 96) = a1 + *a1;

  return swift_task_alloc();
}

unint64_t sub_267BAB9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_267EF9EA8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_12_6()
{
}

uint64_t OUTLINED_FUNCTION_12_7@<X0>(uint64_t a1@<X8>)
{
  sub_267B9A5E8((v1 + 624), v2 + a1);
  sub_267B9A5E8((v1 + 448), v2 + 16);
  __swift_destroy_boxed_opaque_existential_0((v3 - 224));

  return __swift_destroy_boxed_opaque_existential_0((v3 - 176));
}

void OUTLINED_FUNCTION_12_10(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
}

void OUTLINED_FUNCTION_12_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_13@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[14], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[15], 1, 1, v1);
  v4 = v2 + v3[16];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

void OUTLINED_FUNCTION_12_14()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void *OUTLINED_FUNCTION_12_15()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  return v0;
}

void OUTLINED_FUNCTION_12_16(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  *a1 = a17;
  *(a1 + 8) = *(v18 - 104);
  *(a1 + 16) = v17;
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_267EF8F28();
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t a1, uint64_t a2)
{

  return sub_267EF9978();
}

uint64_t OUTLINED_FUNCTION_12_26()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return sub_267B9F98C(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_35(uint64_t a1)
{

  return sub_267EF3FC8();
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_267EF9A68();
}

uint64_t OUTLINED_FUNCTION_12_39()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 248));
  __swift_destroy_boxed_opaque_existential_0((v0 - 208));

  return __swift_destroy_boxed_opaque_existential_0((v0 - 168));
}

void *OUTLINED_FUNCTION_12_40(uint64_t a1, const void *a2)
{
  *(v2 + 168) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;

  return memcpy((v2 + 16), a2, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_12_44()
{
  v2 = *(v0 - 224);

  return sub_267E6362C(v2);
}

unint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_12_50(uint64_t a1)
{

  return sub_267EF8FE8();
}

uint64_t OUTLINED_FUNCTION_12_53()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_267EF5E08();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return __swift_storeEnumTagSinglePayload(v1 + v0, 0, 1, v2);
}

void OUTLINED_FUNCTION_14_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_14_9()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  sub_267C16E28(v1, v2);

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t a1, uint64_t a2)
{

  return sub_267EF9D88();
}

unint64_t OUTLINED_FUNCTION_14_16(uint64_t a1, unint64_t a2)
{

  return sub_267BA33E8(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_14_25@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 68);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_14_31()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

unint64_t OUTLINED_FUNCTION_14_34()
{
  v4 = *(v2 + 96);
  *(v3 + 16) = v1;
  return v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v0;
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_14_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_14_48()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2)
{

  return sub_267EF9DF8();
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_5_17()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_5_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_5_21()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

void OUTLINED_FUNCTION_5_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[6], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[7], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[8], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[9], 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + v3[10], 1, 1, v1);
  v4 = v2 + v3[11];

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return sub_267CDAEC8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_5_30()
{
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 208);
  *(v1 + 48) = *(v1 + 200);
  *(v1 + 56) = v6;
  *(v1 + 16) = *(v1 + 232);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 64) = v0;
  *(v1 + 72) = v2;

  return sub_267EF9938();
}

void OUTLINED_FUNCTION_5_32()
{

  objc_setAssociatedObject(v1, v2, v0, 1);
}

uint64_t OUTLINED_FUNCTION_5_36()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
  v3 = v0 + *(v2 + 20);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_37()
{
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  return sub_267EF3BC8();
}

uint64_t OUTLINED_FUNCTION_5_40(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_267D6360C(v2, va);
}

uint64_t OUTLINED_FUNCTION_5_43(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_45()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_46(uint64_t a1)
{
  v4 = *(v1 - 232);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_5_47()
{
  result = *(v0 + 136);
  v3 = *(v0 + 112);
  *(v1 + 32) = *(v1 + 20) & 1;
  *(v1 + 24) = v3;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_49()
{
}

uint64_t OUTLINED_FUNCTION_5_51()
{
}

void OUTLINED_FUNCTION_5_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

double OUTLINED_FUNCTION_5_57()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_60()
{
}

uint64_t OUTLINED_FUNCTION_5_62(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  return sub_267EF8478();
}

void OUTLINED_FUNCTION_5_63()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_5_64(uint64_t a1)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_5_68(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

double OUTLINED_FUNCTION_148()
{
  result = 0.0;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  return result;
}

void OUTLINED_FUNCTION_148_1()
{
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_40_9()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_40_10()
{
}

uint64_t OUTLINED_FUNCTION_40_12()
{
}

uint64_t OUTLINED_FUNCTION_40_13(__n128 a1)
{

  return sub_267EF8478();
}

uint64_t OUTLINED_FUNCTION_40_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(a15 + 16) = a18;
  v22 = a15 + 16 * v21;
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  return v20;
}

uint64_t OUTLINED_FUNCTION_40_15()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_40_17()
{
  v3 = v1 + *(v0 + 28);
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_40_19()
{
}

uint64_t OUTLINED_FUNCTION_40_20(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_21()
{

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_40_23()
{
}

uint64_t OUTLINED_FUNCTION_40_25()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_27()
{

  return sub_267EF79B8();
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

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_3@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_267C2FB6C(v3 + a1, v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_49_6()
{
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_13()
{
  v3 = v1[160];
  *(v2 - 112) = v1[143];
  v4 = v1[106];
  *(v2 - 128) = v3;
  *(v2 - 120) = v4;
  return v0;
}

void OUTLINED_FUNCTION_460(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_49_17(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49_19()
{
}

uint64_t OUTLINED_FUNCTION_49_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_267DEC2BC(v10, v9, v8, 1, v7, 0, a7);
}

uint64_t OUTLINED_FUNCTION_49_22(uint64_t a1)
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_49_23(uint64_t a1)
{

  return sub_267EF8FE8();
}

void *OUTLINED_FUNCTION_49_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[17] = a1;
  v3[18] = a2;
  v3[20] = a3;
  return v3 + 17;
}

void OUTLINED_FUNCTION_17_7(uint64_t a1@<X8>, void (*a2)(void)@<X3>)
{

  sub_267BCD994(v2 + a1, v4, v3 + a1, a2);
}

void OUTLINED_FUNCTION_17_9(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return sub_267EF3CB8();
}

void OUTLINED_FUNCTION_17_11(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, uint64_t a12)
{
  a11 = a1;
  LOBYTE(a12) = 4;

  sub_267C5E230(&a11, a3, a4, a5, a6, a7, a8, a9, a11.n128_i64[0], a11.n128_i64[1], a12);
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  __swift_project_boxed_opaque_existential_0((v0 + 536), *(v0 + 560));

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_17_17@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 60);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_17_20(uint64_t a1, uint64_t a2)
{

  return sub_267EF4708();
}

uint64_t OUTLINED_FUNCTION_17_22(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_24()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void *OUTLINED_FUNCTION_17_25()
{
  v2 = *(v0 + 120);

  return __swift_project_boxed_opaque_existential_0((v0 + 96), v2);
}

void OUTLINED_FUNCTION_17_32(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t OUTLINED_FUNCTION_17_33()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17_34(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_17_35()
{

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{
  *(v1 + 1160) = a1;

  return sub_267C253C4();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ConversationEventStore.Event.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_31_7()
{
}