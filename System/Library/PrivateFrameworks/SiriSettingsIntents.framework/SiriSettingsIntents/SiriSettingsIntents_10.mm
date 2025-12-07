id sub_268E1E080(uint64_t a1)
{
  v265 = a1;
  v255 = sub_268E30BB4;
  v256 = sub_268E2BED8;
  v257 = sub_268E2BED8;
  v258 = sub_268E2BED8;
  v259 = sub_268E2BED8;
  v260 = sub_268E30BB4;
  v325 = 0;
  v318 = 0;
  v317 = 0;
  v304 = 0;
  v305 = 0;
  v294 = 0;
  v287 = 0;
  v288 = 0;
  v285 = 0;
  v268 = 0;
  v261 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v265, v1, v2, v3);
  v262 = v60 - v261;
  v263 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v60 - v261, v6, v7);
  v264 = v60 - v263;
  v325 = v8;

  sub_268F9A204();

  if (v324[3])
  {
    sub_268F9A354();
    if (swift_dynamicCast())
    {
      v253 = v266;
    }

    else
    {
      v253 = 0;
    }

    v252 = v253;
  }

  else
  {
    sub_268D28414(v324);
    v252 = 0;
  }

  v251 = v252;
  if (!v252)
  {

    sub_268F9A204();

    if (v323[3])
    {
      sub_268F9A524();
      if (swift_dynamicCast())
      {
        v156 = v295;
      }

      else
      {
        v156 = 0;
      }

      v155 = v156;
    }

    else
    {
      sub_268D28414(v323);
      v155 = 0;
    }

    v154 = v155;
    if (!v155)
    {
      v60[1] = 0;
      v67 = sub_268F9A7E4();
      sub_268D91304();
      v62 = 1;
      v69 = swift_allocError();
      v68 = v46;
      v47 = sub_268F9B724();
      v64 = &v321;
      v321 = v47;
      v322 = v48;
      v49 = sub_268F9AEF4();
      v60[0] = v50;
      MEMORY[0x26D62E360](v49);

      v60[2] = &v320;
      v320 = v265;
      sub_268F9A6E4();
      v51 = sub_268F9AE64();
      v61 = v319;
      v319[0] = v51;
      v319[1] = v52;
      sub_268F9B704();
      sub_268CD9D30(v61);
      v53 = sub_268F9AEF4();
      v63 = v54;
      MEMORY[0x26D62E360](v53);

      v66 = v321;
      v65 = v322;

      sub_268CD9D30(v64);
      v55 = sub_268F9AED4();
      v56 = v67;
      v57 = v55;
      v58 = v68;
      *v68 = v57;
      v58[1] = v59;
      (*(*(v56 - 8) + 104))();
      swift_willThrow();
      return v209;
    }

    v153 = v154;
    v151 = v154;
    v318 = v154;

    sub_268F9A324();
    v152 = v316[1];

    if (v152 && (v150 = v152, v148 = v152, v30 = sub_268DDA5D0(), v146 = *v30, v147 = v30[1], , v149 = sub_268F9A0A4(), , , v149))
    {
      v145 = v149;
      v296 = v149;
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v31 = sub_268E30B2C();
      v32 = v254;
      result = sub_268DE25C8(v258, 0, v142, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v209);
      v143 = v32;
      v144 = result;
      if (v32)
      {
        goto LABEL_135;
      }

      v139 = v144;
      sub_268CD7930(&v296);
      v140 = v139;
      v141 = v143;
    }

    else
    {
      v140 = 0;
      v141 = v254;
    }

    v138 = v141;
    v316[0] = v140;
    if (v140)
    {
      v317 = v316[0];
    }

    else
    {
      v317 = sub_268F9B734();
      if (v316[0])
      {
        sub_268CD7930(v316);
      }
    }

    sub_268F9A324();
    v137 = v314[1];

    if (v137 && (v136 = v137, v134 = v137, v135 = sub_268F9A1C4(), , v135 && (v133 = v135, v131 = v135, v33 = sub_268DDA5D0(), v129 = *v33, v130 = v33[1], , v132 = sub_268F9A0A4(), , , v132)))
    {
      v128 = v132;
      v297 = v132;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v34 = sub_268E30B2C();
      v35 = v138;
      result = sub_268DE25C8(v259, 0, v125, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v209);
      v126 = v35;
      v127 = result;
      if (v35)
      {
        goto LABEL_136;
      }

      v122 = v127;
      sub_268CD7930(&v297);
      v123 = v122;
      v124 = v126;
    }

    else
    {
      v123 = 0;
      v124 = v138;
    }

    v121 = v124;
    v314[0] = v123;
    if (v123)
    {
      v315 = v314[0];
    }

    else
    {
      v315 = sub_268F9B734();
      if (v314[0])
      {
        sub_268CD7930(v314);
      }
    }

    v114 = &v313;
    v313 = v315;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    v116 = sub_268DA6BFC();
    sub_268F9B054();
    v115 = v317;

    v119 = &v312;
    v312 = v115;
    v36 = sub_268E42E48(0);
    v118 = v311;
    v311[0] = v36;
    v311[1] = v37;
    v120 = sub_268F9AFC4();
    sub_268CD9D30(v118);
    sub_268CD7930(v119);
    if (v120)
    {
      v109 = v317;

      v111 = &v299;
      v299 = v109;
      v38 = sub_268E42E48(2);
      v110 = v298;
      v298[0] = v38;
      v298[1] = v39;
      v112 = sub_268F9AFC4();
      sub_268CD9D30(v110);
      sub_268CD7930(v111);
      v113 = v112;
    }

    else
    {
      v113 = 0;
    }

    if (v113)
    {
      v107 = 0;
      v103 = sub_268DA96FC();
      v301 = 35;
      v40 = BinarySettingIdentifier.rawValue.getter();
      v105 = v41;
      v104 = v300;
      memset(v300, 0, sizeof(v300));
      v106 = sub_268F284EC(v40, v41, v300, v107, v107);
      sub_268D28414(v104);

      v108 = sub_268E1B6E0(v106, v107);
      sub_268CD7930(&v317);

      v224 = v108;
      v225 = v121;
      return v224;
    }

    sub_268F9A324();
    v102 = v308;

    if (v102)
    {
      v101 = v102;
      v98 = v102;
      v42 = sub_268DDA5D0();
      v96 = *v42;
      v97 = v42[1];

      v99 = sub_268F9A0A4();

      if (v99)
      {
        v95 = v99;
        v302[0] = v99;
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        v43 = v121;
        result = sub_268F9AF94();
        v94 = v43;
        if (v43)
        {
          goto LABEL_137;
        }

        sub_268CD7930(v302);
        v90 = sub_268F99F64();
        v91 = *(v90 - 8);
        v92 = v90 - 8;
        if ((*(v91 + 48))(v262, 1) != 1)
        {
          v85 = sub_268F99F44();
          v86 = v44;
          (*(v91 + 8))(v262, v90);
          v87 = v85;
          v88 = v86;
          v89 = v94;
LABEL_117:
          v84 = v89;
          v306 = v87;
          v307 = v88;
          if (v88)
          {
            v309 = v306;
            v310 = v307;
          }

          else
          {
            v309 = sub_268EC63FC(3);
            v310 = v45;
            if (v307)
            {
              sub_268CD9D30(&v306);
            }
          }

          v80 = v309;
          v81 = v310;
          v304 = v309;
          v305 = v310;
          v82 = sub_268DA96FC();

          memset(v303, 0, sizeof(v303));

          sub_268F9A324();
          v83 = v302[1];

          if (v83)
          {
            v79 = v83;
            v76 = v83;
            v77 = sub_268F9A084();

            v78 = v77;
          }

          else
          {
            v78 = 0;
          }

          v70 = v78;
          v71 = sub_268E2C7C8(v78);

          v72 = v303;
          v74 = 0;
          v73 = sub_268F284EC(v80, v81, v303, v71, 0);
          MEMORY[0x277D82BD8](v71);
          sub_268D28414(v72);

          v75 = sub_268E1B6E0(v73, v74);

          sub_268CD7930(&v317);

          v224 = v75;
          v225 = v84;
          return v224;
        }

        sub_268D9C0BC(v262);
        v100 = v94;
      }

      else
      {
        v100 = v121;
      }
    }

    else
    {
      v100 = v121;
    }

    v87 = 0;
    v88 = 0;
    v89 = v100;
    goto LABEL_117;
  }

  v250 = v251;
  v248 = v251;
  v294 = v251;

  sub_268F9A324();
  v249 = v291;

  if (v249)
  {
    v247 = v249;
    v244 = v249;
    v9 = sub_268DDA5D0();
    v242 = *v9;
    v243 = v9[1];

    v245 = sub_268F9A0A4();

    if (v245)
    {
      v241 = v245;
      v267 = v245;
      v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v10 = v254;
      result = sub_268F9AF94();
      v240 = v10;
      if (v10)
      {
        __break(1u);
        goto LABEL_133;
      }

      sub_268CD7930(&v267);
      v236 = sub_268F99F64();
      v237 = *(v236 - 8);
      v238 = v236 - 8;
      if ((*(v237 + 48))(v264, 1) != 1)
      {
        v231 = sub_268F99F44();
        v232 = v12;
        (*(v237 + 8))(v264, v236);
        v233 = v231;
        v234 = v232;
        v235 = v240;
        goto LABEL_17;
      }

      sub_268D9C0BC(v264);
      v246 = v240;
    }

    else
    {
      v246 = v254;
    }
  }

  else
  {
    v246 = v254;
  }

  v233 = 0;
  v234 = 0;
  v235 = v246;
LABEL_17:
  v230 = v235;
  v289 = v233;
  v290 = v234;
  if (v234)
  {
    v292 = v289;
    v293 = v290;
  }

  else
  {
    v292 = sub_268EC63FC(3);
    v293 = v13;
    if (v290)
    {
      sub_268CD9D30(&v289);
    }
  }

  v226 = v292;
  v227 = v293;
  v287 = v292;
  v288 = v293;
  v286 = 23;
  v14 = BinarySettingIdentifier.rawValue.getter();
  v228 = v15;
  v229 = MEMORY[0x26D62DB50](v226, v227, v14);

  if (v229)
  {
    v270 = 23;
    v16 = BinarySettingIdentifier.rawValue.getter();
    v220 = v17;
    v219 = v269;
    v221 = 0;
    memset(v269, 0, sizeof(v269));
    v222 = sub_268F284EC(v16, v17, v269, 0, 0);
    sub_268D28414(v219);

    v268 = v222;
    sub_268CD7620();
    v223 = sub_268DA95CC(v222, 1, v221);

    v224 = v223;
    v225 = v230;
    return v224;
  }

  sub_268F9A324();
  v218 = v284[1];

  if (!v218 || (v217 = v218, v215 = v218, v18 = sub_268DDA5D0(), v213 = *v18, v214 = v18[1], , v216 = sub_268F9A0A4(), , , !v216))
  {
    v206 = 0;
    v207 = v230;
    goto LABEL_33;
  }

  v212 = v216;
  v271 = v216;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  v19 = sub_268E30B2C();
  v20 = v230;
  result = sub_268DE25C8(v256, 0, v208, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v209);
  v210 = v20;
  v211 = result;
  if (!v20)
  {
    v205 = v211;
    sub_268CD7930(&v271);
    v206 = v205;
    v207 = v210;
LABEL_33:
    v204 = v207;
    v284[0] = v206;
    if (v206)
    {
      v285 = v284[0];
    }

    else
    {
      v285 = sub_268F9B734();
      if (v284[0])
      {
        sub_268CD7930(v284);
      }
    }

    sub_268F9A324();
    v203 = v282[1];

    if (!v203 || (v202 = v203, v200 = v203, v201 = sub_268F9A1C4(), , !v201 || (v199 = v201, v197 = v201, v21 = sub_268DDA5D0(), v195 = *v21, v196 = v21[1], , v198 = sub_268F9A0A4(), , , !v198)))
    {
      v189 = 0;
      v190 = v204;
      goto LABEL_49;
    }

    v194 = v198;
    v272 = v198;
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    v22 = sub_268E30B2C();
    v23 = v204;
    result = sub_268DE25C8(v257, 0, v191, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v209);
    v192 = v23;
    v193 = result;
    if (!v23)
    {
      v188 = v193;
      sub_268CD7930(&v272);
      v189 = v188;
      v190 = v192;
LABEL_49:
      v187 = v190;
      v282[0] = v189;
      if (v189)
      {
        v283 = v282[0];
      }

      else
      {
        v283 = sub_268F9B734();
        if (v282[0])
        {
          sub_268CD7930(v282);
        }
      }

      v180 = &v281;
      v281 = v283;
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
      v182 = sub_268DA6BFC();
      sub_268F9B054();
      v181 = v285;

      v185 = &v280;
      v280 = v181;
      v24 = sub_268E42E48(0);
      v184 = v279;
      v279[0] = v24;
      v279[1] = v25;
      v186 = sub_268F9AFC4();
      sub_268CD9D30(v184);
      sub_268CD7930(v185);
      if (v186)
      {
        v175 = v285;

        v177 = &v274;
        v274 = v175;
        v26 = sub_268E42E48(2);
        v176 = v273;
        v273[0] = v26;
        v273[1] = v27;
        v178 = sub_268F9AFC4();
        sub_268CD9D30(v176);
        sub_268CD7930(v177);
        v179 = v178;
      }

      else
      {
        v179 = 0;
      }

      if (v179)
      {
        v173 = 0;
        v169 = sub_268DA96FC();
        v276 = 35;
        v28 = BinarySettingIdentifier.rawValue.getter();
        v171 = v29;
        v170 = v275;
        memset(v275, 0, sizeof(v275));
        v172 = sub_268F284EC(v28, v29, v275, v173, v173);
        sub_268D28414(v170);

        v174 = sub_268E1B6E0(v172, v173);
        sub_268CD7930(&v285);

        v224 = v174;
        v225 = v187;
      }

      else
      {
        v167 = sub_268DA96FC();

        memset(v278, 0, sizeof(v278));

        sub_268F9A324();
        v168 = v277;

        if (v168)
        {
          v166 = v168;
          v163 = v168;
          v164 = sub_268F9A084();

          v165 = v164;
        }

        else
        {
          v165 = 0;
        }

        v157 = v165;
        v158 = sub_268E2C7C8(v165);

        v159 = v278;
        v161 = 0;
        v160 = sub_268F284EC(v226, v227, v278, v158, 0);
        MEMORY[0x277D82BD8](v158);
        sub_268D28414(v159);

        v162 = sub_268E1B6E0(v160, v161);
        sub_268CD7930(&v285);

        v224 = v162;
        v225 = v187;
      }

      return v224;
    }

    goto LABEL_134;
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

id sub_268E1F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v676 = v774;
  v729 = v5;
  v715 = v6;
  v716 = v7;
  v677 = v4;
  v678 = sub_268E30BB4;
  v679 = sub_268E2BED8;
  v680 = sub_268E2BED8;
  v681 = sub_268E30BB4;
  v682 = sub_268E30BE4;
  v683 = sub_268CD7608;
  v684 = sub_268CD7600;
  v685 = sub_268CD7600;
  v686 = sub_268CD7614;
  v687 = "Checking for join wifi case.";
  v688 = sub_268D9D86C;
  v689 = sub_268E30BE4;
  v690 = sub_268CD7608;
  v691 = sub_268CD7600;
  v692 = sub_268CD7600;
  v693 = sub_268CD7614;
  v694 = "Checking for wifi.";
  v695 = sub_268E30BEC;
  v696 = sub_268CD7608;
  v697 = sub_268CD7600;
  v698 = sub_268CD7600;
  v699 = sub_268CD7614;
  v700 = sub_268E2BED8;
  v701 = sub_268E2BED8;
  v702 = sub_268E30BB4;
  v703 = sub_268E30BB4;
  v860 = 0;
  v859 = 0;
  v858 = 0;
  v857 = 0;
  v856 = 0;
  v847 = 0;
  v837 = 0uLL;
  v833 = 0;
  v823 = 0uLL;
  v817 = 0;
  v816 = 0;
  v806 = 0;
  v796 = 0;
  v789 = 0;
  v782 = 0;
  v783 = 0;
  v780 = 0;
  v754 = 0;
  v749[0] = 0;
  v742 = 0;
  v740 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v704 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v705 = v179 - v704;
  v706 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v179 - v704, v13, v14, v15);
  v707 = v179 - v706;
  v708 = sub_268F9ACE4();
  v709 = *(v708 - 8);
  v710 = v708 - 8;
  v711 = (*(v709 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v708, v16, v17, v18);
  v712 = v179 - v711;
  v860 = v179 - v711;
  v713 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21, v22, v23);
  v714 = v179 - v713;
  v859 = v179 - v713;
  v717 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v729, v715, v716, v24);
  v718 = v179 - v717;
  v719 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, v27, v28, v179 - v717);
  v720 = v179 - v719;
  v721 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v31, v32, v179 - v719);
  v722 = v179 - v721;
  v723 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v35, v36, v179 - v721);
  v724 = v179 - v723;
  v725 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38, v39, v40, v179 - v723);
  v726 = v179 - v725;
  v727 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v43, v44, v179 - v725);
  v728 = v179 - v727;
  v858 = v45;
  v857 = v46;
  v856 = v47;

  sub_268F9A204();

  if (v855[3])
  {
    sub_268F9A444();
    if (swift_dynamicCast())
    {
      v675 = v730;
    }

    else
    {
      v675 = 0;
    }

    v674 = v675;
  }

  else
  {
    sub_268D28414(v855);
    v674 = 0;
  }

  v673 = v674;
  if (!v674)
  {

    sub_268F9A204();

    if (v854[3])
    {
      sub_268F9A394();
      if (swift_dynamicCast())
      {
        v562 = v755;
      }

      else
      {
        v562 = 0;
      }

      v561 = v562;
    }

    else
    {
      sub_268D28414(v854);
      v561 = 0;
    }

    v560 = v561;
    if (v561)
    {
      v559 = v560;
      v557 = v560;
      v817 = v560;
      v555 = swift_allocObject();
      v556 = v555 + 16;
      v816 = v555 + 16;

      sub_268F9A5C4();
      v558 = v815[1];

      if (v558)
      {
        v554 = v558;
        v551 = v558;
        v71 = sub_268DDA5D0();
        v549 = *v71;
        v550 = v71[1];

        v552 = sub_268F9A0A4();

        if (v552)
        {
          v548 = v552;
          v756 = v552;
          v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v72 = v677;
          sub_268F9AF94();
          v547 = v72;
          if (v72)
          {
            goto LABEL_288;
          }

          sub_268CD7930(&v756);
          v543 = sub_268F99F64();
          v544 = *(v543 - 8);
          v545 = v543 - 8;
          if ((*(v544 + 48))(v726, 1) != 1)
          {
            v540 = sub_268F99F44();
            v541 = v73;
            (*(v544 + 8))(v726, v543);
            v74 = v555;
            v75 = v541;
            v76 = v547;
            *(v555 + 16) = v540;
            *(v74 + 24) = v75;
            v542 = v76;
            goto LABEL_87;
          }

          sub_268D9C0BC(v726);
          v553 = v547;
        }

        else
        {
          v553 = v677;
        }
      }

      else
      {
        v553 = v677;
      }

      v150 = v555;
      v151 = v553;
      *(v555 + 16) = 0;
      *(v150 + 24) = 0;
      v542 = v151;
LABEL_87:
      v527 = v542;
      v539 = sub_268F9B284();
      v538 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v538);

      v528 = 17;
      v530 = 7;
      v532 = swift_allocObject();
      *(v532 + 16) = 32;
      v533 = swift_allocObject();
      *(v533 + 16) = 8;
      v529 = 32;
      v77 = swift_allocObject();
      v78 = v555;
      v531 = v77;
      *(v77 + 16) = v682;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v531;
      v535 = v79;
      *(v79 + 16) = v683;
      *(v79 + 24) = v80;
      v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v534 = sub_268F9B734();
      v536 = v81;

      v82 = v532;
      v83 = v536;
      *v536 = v684;
      v83[1] = v82;

      v84 = v533;
      v85 = v536;
      v536[2] = v685;
      v85[3] = v84;

      v86 = v535;
      v87 = v536;
      v536[4] = v686;
      v87[5] = v86;
      sub_268CD0F7C();

      if (os_log_type_enabled(v538, v539))
      {
        v520 = sub_268F9B3A4();
        v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v521 = sub_268CD5448(0, v519, v519);
        v522 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v523 = &v761;
        v761 = v520;
        v524 = &v760;
        v760 = v521;
        v525 = &v759;
        v759 = v522;
        sub_268CD549C(2, &v761);
        sub_268CD549C(1, v523);
        v88 = v527;
        v757 = v684;
        v758 = v532;
        sub_268CD54B0(&v757, v523, v524, v525);
        v526 = v88;
        if (v88)
        {

          __break(1u);
        }

        else
        {
          v757 = v685;
          v758 = v533;
          sub_268CD54B0(&v757, &v761, &v760, &v759);
          v517 = 0;
          v757 = v686;
          v758 = v535;
          sub_268CD54B0(&v757, &v761, &v760, &v759);
          v516 = 0;
          _os_log_impl(&dword_268CBE000, v538, v539, "Attribute name: %s.", v520, 0xCu);
          sub_268CD54FC(v521, 0, v519);
          sub_268CD54FC(v522, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();

          v518 = v516;
        }
      }

      else
      {

        v518 = v527;
      }

      v514 = v518;
      MEMORY[0x277D82BD8](v538);

      sub_268F9A5C4();
      v515 = v814[3];

      if (v515)
      {
        v513 = v515;
        v510 = v515;
        v511 = sub_268F9A084();

        v512 = v511;
      }

      else
      {
        v512 = 0;
      }

      v505 = v512;
      v506 = sub_268E2C7C8(v512);

      v815[0] = v506;
      v507 = v814;
      swift_beginAccess();
      v508 = *(v555 + 16);
      v509 = *(v555 + 24);

      swift_endAccess();
      v813[0] = v508;
      v813[1] = v509;
      v504 = v509 == 0;
      v503 = v504;
      sub_268CD9D30(v813);
      if (!v503)
      {
        v455 = v514;
        goto LABEL_113;
      }

      v499 = sub_268F9B284();
      v501 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v501);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v500 = sub_268F9B734();
      sub_268F9AC14(v499, &dword_268CBE000, v501, v687, 28, 2);

      MEMORY[0x277D82BD8](v501);

      sub_268F9A5C4();
      v502 = v768[3];

      if (v502)
      {
        v498 = v502;
        v495 = v502;
        v89 = sub_268D8E220();
        v493 = *v89;
        v494 = v89[1];

        v496 = sub_268F9A0A4();

        if (v496)
        {
          v492 = v496;
          v762 = v496;
          v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v90 = v514;
          sub_268F9AF94();
          v491 = v90;
          if (v90)
          {
            goto LABEL_289;
          }

          sub_268CD7930(&v762);
          v487 = sub_268F99F64();
          v488 = *(v487 - 8);
          v489 = v487 - 8;
          if ((*(v488 + 48))(v724, 1) != 1)
          {
            v482 = sub_268F99F44();
            v483 = v91;
            (*(v488 + 8))(v724, v487);
            v484 = v482;
            v485 = v483;
            v486 = v491;
LABEL_105:
            v467 = v486;
            v469 = v485;
            v468 = v484;
            v470 = v768;
            swift_beginAccess();
            v92 = v469;
            v93 = v555;
            *(v555 + 16) = v468;
            *(v93 + 24) = v92;

            swift_endAccess();
            v481 = sub_268F9B284();
            v480 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v480);

            v471 = 17;
            v473 = 7;
            v475 = swift_allocObject();
            *(v475 + 16) = 32;
            v476 = swift_allocObject();
            *(v476 + 16) = 8;
            v472 = 32;
            v94 = swift_allocObject();
            v95 = v555;
            v474 = v94;
            *(v94 + 16) = v689;
            *(v94 + 24) = v95;
            v96 = swift_allocObject();
            v97 = v474;
            v478 = v96;
            *(v96 + 16) = v690;
            *(v96 + 24) = v97;
            v477 = sub_268F9B734();
            v479 = v98;

            v99 = v475;
            v100 = v479;
            *v479 = v691;
            v100[1] = v99;

            v101 = v476;
            v102 = v479;
            v479[2] = v692;
            v102[3] = v101;

            v103 = v478;
            v104 = v479;
            v479[4] = v693;
            v104[5] = v103;
            sub_268CD0F7C();

            if (os_log_type_enabled(v480, v481))
            {
              v460 = sub_268F9B3A4();
              v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v461 = sub_268CD5448(0, v459, v459);
              v462 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v463 = &v767;
              v767 = v460;
              v464 = &v766;
              v766 = v461;
              v465 = &v765;
              v765 = v462;
              sub_268CD549C(2, &v767);
              sub_268CD549C(1, v463);
              v105 = v467;
              v763 = v691;
              v764 = v475;
              sub_268CD54B0(&v763, v463, v464, v465);
              v466 = v105;
              if (v105)
              {

                __break(1u);
              }

              else
              {
                v763 = v692;
                v764 = v476;
                sub_268CD54B0(&v763, &v767, &v766, &v765);
                v457 = 0;
                v763 = v693;
                v764 = v478;
                sub_268CD54B0(&v763, &v767, &v766, &v765);
                v456 = 0;
                _os_log_impl(&dword_268CBE000, v480, v481, "Attribute name after check for join: %s.", v460, 0xCu);
                sub_268CD54FC(v461, 0, v459);
                sub_268CD54FC(v462, 1, MEMORY[0x277D84F70] + 8);
                sub_268F9B384();

                v458 = v456;
              }
            }

            else
            {

              v458 = v467;
            }

            v454 = v458;
            MEMORY[0x277D82BD8](v480);
            v455 = v454;
LABEL_113:
            v448 = v455;
            v449 = &v812;
            swift_beginAccess();
            v451 = *(v555 + 16);
            v452 = *(v555 + 24);

            swift_endAccess();

            v450 = sub_268E42F14(4);
            v453 = v106;

            v810[0] = v451;
            v810[1] = v452;
            v810[2] = v450;
            v811 = v453;
            if (v452)
            {
              sub_268D28874(v810, &v771);
              if (v811)
              {
                v445 = &v770;
                v770 = v771;
                v107 = v676[31];
                v444 = &v769;
                v769 = v107;
                v446 = MEMORY[0x26D62DB50](v771, *(&v771 + 1), v107, *(&v107 + 1));
                sub_268CD9D30(v444);
                sub_268CD9D30(v445);
                sub_268CD9D30(v810);
                v447 = v446;
                goto LABEL_119;
              }

              sub_268CD9D30(&v771);
            }

            else if (!v811)
            {
              sub_268CD9D30(v810);
              v447 = 1;
LABEL_119:
              v443 = v447;

              if (v443)
              {
                v442 = 1;
                goto LABEL_133;
              }

              v437 = &v809;
              swift_beginAccess();
              v439 = *(v555 + 16);
              v440 = *(v555 + 24);

              swift_endAccess();

              v438 = sub_268E42F14(5);
              v441 = v108;

              v807[0] = v439;
              v807[1] = v440;
              *&v808 = v438;
              *(&v808 + 1) = v441;
              if (v440)
              {
                sub_268D28874(v807, v774);
                if (*(&v808 + 1))
                {
                  v109 = *v676;
                  v434 = &v773;
                  v773 = v109;
                  v433 = &v772;
                  v772 = v808;
                  v435 = MEMORY[0x26D62DB50](v109, *(&v109 + 1), v808, *(&v808 + 1));
                  sub_268CD9D30(v433);
                  sub_268CD9D30(v434);
                  sub_268CD9D30(v807);
                  v436 = v435;
LABEL_130:
                  v432 = v436;

                  v442 = v432;
LABEL_133:
                  if ((v442 & 1) == 0)
                  {
                    goto LABEL_158;
                  }

                  v428 = sub_268F9B284();
                  v430 = *sub_268DC7EA8();
                  MEMORY[0x277D82BE0](v430);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                  v429 = sub_268F9B734();
                  sub_268F9AC14(v428, &dword_268CBE000, v430, v694, 18, 2);

                  MEMORY[0x277D82BD8](v430);

                  sub_268F9A5C4();
                  v431 = v784;

                  if (v431)
                  {
                    v427 = v431;
                    v425 = v431;
                    v426 = sub_268F9A1C4();

                    if (v426)
                    {
                      v424 = v426;
                      v422 = v426;
                      v110 = sub_268DDA5D0();
                      v420 = *v110;
                      v421 = v110[1];

                      v423 = sub_268F9A0A4();

                      if (v423)
                      {
                        v419 = v423;
                        v415 = v423;
                        v774[2] = v423;
                        v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
                        sub_268E30B2C();
                        sub_268F9B234();

                        v416 = sub_268F99F64();
                        v417 = *(v416 - 8);
                        v418 = v416 - 8;
                        v111 = (*(v417 + 48))(v722, 1);
                        if (v111 != 1)
                        {
                          v410 = sub_268F99F44();
                          v411 = v112;
                          (*(v417 + 8))(v722, v416);
                          v412 = v410;
                          v413 = v411;
                          goto LABEL_146;
                        }

                        sub_268D9C0BC(v722);
                      }
                    }
                  }

                  v412 = 0;
                  v413 = 0;
LABEL_146:
                  v408 = v413;
                  v409 = v412;
                  if (v413)
                  {
                    v406 = v409;
                    v407 = v408;
                    v403 = v408;
                    v402 = v409;
                    v782 = v409;
                    v783 = v408;
                    v781 = 51;
                    v113 = BinarySettingIdentifier.rawValue.getter();
                    v404 = v114;
                    v405 = MEMORY[0x26D62DB50](v402, v403, v113);

                    if (v405)
                    {
                      v401 = sub_268F9B284();
                      v400 = *sub_268DC7EA8();
                      MEMORY[0x277D82BE0](v400);

                      v391 = 32;
                      v392 = 7;
                      v115 = swift_allocObject();
                      v116 = v403;
                      v393 = v115;
                      *(v115 + 16) = v402;
                      *(v115 + 24) = v116;
                      v390 = 17;
                      v395 = swift_allocObject();
                      *(v395 + 16) = 32;
                      v396 = swift_allocObject();
                      *(v396 + 16) = 8;
                      v117 = swift_allocObject();
                      v118 = v393;
                      v394 = v117;
                      *(v117 + 16) = v695;
                      *(v117 + 24) = v118;
                      v119 = swift_allocObject();
                      v120 = v394;
                      v398 = v119;
                      *(v119 + 16) = v696;
                      *(v119 + 24) = v120;
                      v397 = sub_268F9B734();
                      v399 = v121;

                      v122 = v395;
                      v123 = v399;
                      *v399 = v697;
                      v123[1] = v122;

                      v124 = v396;
                      v125 = v399;
                      v399[2] = v698;
                      v125[3] = v124;

                      v126 = v398;
                      v127 = v399;
                      v399[4] = v699;
                      v127[5] = v126;
                      sub_268CD0F7C();

                      if (os_log_type_enabled(v400, v401))
                      {
                        v383 = sub_268F9B3A4();
                        v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                        v384 = sub_268CD5448(0, v382, v382);
                        v385 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                        v386 = &v779;
                        v779 = v383;
                        v387 = &v778;
                        v778 = v384;
                        v388 = &v777;
                        v777 = v385;
                        sub_268CD549C(2, &v779);
                        sub_268CD549C(1, v386);
                        v128 = v448;
                        v775 = v697;
                        v776 = v395;
                        sub_268CD54B0(&v775, v386, v387, v388);
                        v389 = v128;
                        if (v128)
                        {

                          __break(1u);
                        }

                        else
                        {
                          v775 = v698;
                          v776 = v396;
                          sub_268CD54B0(&v775, &v779, &v778, &v777);
                          v380 = 0;
                          v775 = v699;
                          v776 = v398;
                          sub_268CD54B0(&v775, &v779, &v778, &v777);
                          v379 = 0;
                          _os_log_impl(&dword_268CBE000, v400, v401, "setting name: %s.", v383, 0xCu);
                          sub_268CD54FC(v384, 0, v382);
                          sub_268CD54FC(v385, 1, MEMORY[0x277D84F70] + 8);
                          sub_268F9B384();

                          v381 = v379;
                        }
                      }

                      else
                      {

                        v381 = v448;
                      }

                      v378 = v381;
                      MEMORY[0x277D82BD8](v400);

                      v376 = v815;
                      v373 = v815[0];
                      MEMORY[0x277D82BE0](v815[0]);
                      v374 = 0;
                      v375 = sub_268F284EC(v402, v403, v715, v373, 0);
                      MEMORY[0x277D82BD8](v373);

                      v780 = v375;
                      sub_268CD7620();
                      v377 = sub_268DA95CC(v375, v374, v374);

                      sub_268D35038(v376);

                      v581 = v377;
                      v582 = v378;
                      return v581;
                    }
                  }

LABEL_158:

                  sub_268F9A5C4();
                  v372 = v805[1];

                  if (v372 && (v371 = v372, v369 = v372, v129 = sub_268DDA5D0(), v367 = *v129, v368 = v129[1], , v370 = sub_268F9A0A4(), , , v370))
                  {
                    v366 = v370;
                    v785 = v370;
                    v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
                    v130 = sub_268E30B2C();
                    v131 = v448;
                    v132 = sub_268DE25C8(v700, 0, v363, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v130, MEMORY[0x277D84AC0], v633);
                    v364 = v131;
                    v365 = v132;
                    if (v131)
                    {
                      goto LABEL_290;
                    }

                    v360 = v365;
                    sub_268CD7930(&v785);
                    v361 = v360;
                    v362 = v364;
                  }

                  else
                  {
                    v361 = 0;
                    v362 = v448;
                  }

                  v359 = v362;
                  v805[0] = v361;
                  if (v361)
                  {
                    v806 = v805[0];
                  }

                  else
                  {
                    v806 = sub_268F9B734();
                    if (v805[0])
                    {
                      sub_268CD7930(v805);
                    }
                  }

                  sub_268F9A5C4();
                  v358 = v803[1];

                  if (v358 && (v357 = v358, v355 = v358, v356 = sub_268F9A1C4(), , v356 && (v354 = v356, v352 = v356, v133 = sub_268DDA5D0(), v350 = *v133, v351 = v133[1], , v353 = sub_268F9A0A4(), , , v353)))
                  {
                    v349 = v353;
                    v786 = v353;
                    v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
                    v134 = sub_268E30B2C();
                    v135 = v359;
                    v136 = sub_268DE25C8(v701, 0, v346, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v134, MEMORY[0x277D84AC0], v633);
                    v347 = v135;
                    v348 = v136;
                    if (v135)
                    {
                      goto LABEL_291;
                    }

                    v343 = v348;
                    sub_268CD7930(&v786);
                    v344 = v343;
                    v345 = v347;
                  }

                  else
                  {
                    v344 = 0;
                    v345 = v359;
                  }

                  v342 = v345;
                  v803[0] = v344;
                  if (v344)
                  {
                    v804 = v803[0];
                  }

                  else
                  {
                    v804 = sub_268F9B734();
                    if (v803[0])
                    {
                      sub_268CD7930(v803);
                    }
                  }

                  v335 = &v802;
                  v802 = v804;
                  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
                  v337 = sub_268DA6BFC();
                  sub_268F9B054();
                  v336 = v806;

                  v340 = &v801;
                  v801 = v336;
                  v137 = sub_268E42E48(0);
                  v339 = v800;
                  v800[0] = v137;
                  v800[1] = v138;
                  v341 = sub_268F9AFC4();
                  sub_268CD9D30(v339);
                  sub_268CD7930(v340);
                  if (v341)
                  {
                    v330 = v806;

                    v332 = &v788;
                    v788 = v330;
                    v139 = sub_268E42E48(1);
                    v331 = v787;
                    v787[0] = v139;
                    v787[1] = v140;
                    v333 = sub_268F9AFC4();
                    sub_268CD9D30(v331);
                    sub_268CD7930(v332);
                    v334 = v333;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  if (v334)
                  {
                    v790 = 36;
                    v323 = BinarySettingIdentifier.rawValue.getter();
                    v325 = v141;
                    v328 = v815;
                    v324 = v815[0];
                    MEMORY[0x277D82BE0](v815[0]);
                    v326 = 0;
                    v327 = sub_268F284EC(v323, v325, v715, v324, 0);
                    MEMORY[0x277D82BD8](v324);

                    v789 = v327;
                    sub_268CD7620();
                    v329 = sub_268DA95CC(v327, 1, v326);
                    sub_268CD7930(&v806);
                    sub_268D35038(v328);

                    v581 = v329;
                    v582 = v342;
                    return v581;
                  }

                  v320 = &v799;
                  swift_beginAccess();
                  v321 = *(v555 + 16);
                  v322 = *(v555 + 24);

                  swift_endAccess();
                  v798[0] = v321;
                  v798[1] = v322;
                  v319 = v322 == 0;
                  v318 = v319;
                  sub_268CD9D30(v798);
                  if (v318)
                  {
                    sub_268D35D60(v716, v792);
                    if (!v792[3])
                    {
                      sub_268D28414(v792);
LABEL_201:
                      v148 = sub_268DDA790();
                      v301 = *v148;
                      v302 = v148[1];

                      v300 = sub_268F9A7E4();
                      sub_268D91304();
                      v303 = swift_allocError();
                      sub_268E2AB74(v729, v301, v302, v149);

                      swift_willThrow();
                      sub_268CD7930(&v806);
                      sub_268D35038(v815);

                      v638 = v303;
                      return v633;
                    }

                    v313 = v793;
                    sub_268CDF978(v792, v793);
                    v314 = v794;
                    v315 = v795;
                    v316 = __swift_project_boxed_opaque_existential_1(v313, v794);

                    sub_268F9A5C4();
                    v317 = v791[3];

                    if (v317)
                    {
                      v312 = v317;
                      v309 = v317;
                      v310 = sub_268F99F04();

                      v311 = v310;
                    }

                    else
                    {
                      v311 = 0;
                    }

                    v308 = v311;
                    (*(v315 + 16))();

                    if ((*(v709 + 48))(v705, 1, v708) == 1)
                    {
                      sub_268D59D2C(v705);
                      __swift_destroy_boxed_opaque_existential_0(v793);
                      goto LABEL_201;
                    }

                    (*(v709 + 32))(v712, v705, v708);
                    v304 = sub_268F9ACC4();
                    v305 = v142;
                    v306 = v791;
                    swift_beginAccess();
                    v143 = v555;
                    v144 = v305;
                    *(v555 + 16) = v304;
                    *(v143 + 24) = v144;

                    swift_endAccess();
                    v307 = 0;
                    sub_268DA9760();
                    v145 = sub_268DA9564(v307, v307, v307, v307, v307, v307);
                    v146 = v815[0];
                    v815[0] = v145;
                    v147 = MEMORY[0x277D82BD8](v146);
                    (*(v709 + 8))(v712, v708, v147);
                    __swift_destroy_boxed_opaque_existential_0(v793);
                  }

                  v292 = &v797;
                  swift_beginAccess();
                  v293 = *(v555 + 16);
                  v295 = *(v555 + 24);

                  swift_endAccess();
                  v298 = v815;
                  v294 = v815[0];
                  MEMORY[0x277D82BE0](v815[0]);
                  v296 = 0;
                  v297 = sub_268F284EC(v293, v295, v715, v294, 0);
                  MEMORY[0x277D82BD8](v294);

                  v796 = v297;
                  sub_268CD7620();
                  v299 = sub_268DA95CC(v297, 1, v296);
                  sub_268CD7930(&v806);
                  sub_268D35038(v298);

                  v581 = v299;
                  v582 = v342;
                  return v581;
                }

                sub_268CD9D30(v774);
              }

              else if (!*(&v808 + 1))
              {
                sub_268CD9D30(v807);
                v436 = 1;
                goto LABEL_130;
              }

              sub_268D28550(v807);
              v436 = 0;
              goto LABEL_130;
            }

            sub_268D28550(v810);
            v447 = 0;
            goto LABEL_119;
          }

          sub_268D9C0BC(v724);
          v497 = v491;
        }

        else
        {
          v497 = v514;
        }
      }

      else
      {
        v497 = v514;
      }

      v484 = 0;
      v485 = 0;
      v486 = v497;
      goto LABEL_105;
    }

    sub_268F9A204();

    if (v853[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v291 = v818;
      }

      else
      {
        v291 = 0;
      }

      v290 = v291;
    }

    else
    {
      sub_268D28414(v853);
      v290 = 0;
    }

    v289 = v290;
    if (v290)
    {
      v288 = v289;
      v286 = v289;
      v833 = v289;

      sub_268F9A5C4();
      v287 = v831;

      if (v287)
      {
        v285 = v287;
        v282 = v287;
        v152 = sub_268DDA5D0();
        v280 = *v152;
        v281 = v152[1];

        v283 = sub_268F9A0A4();

        if (v283)
        {
          v279 = v283;
          v819[0] = v283;
          v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v153 = v677;
          sub_268F9AF94();
          v278 = v153;
          if (v153)
          {
            goto LABEL_292;
          }

          sub_268CD7930(v819);
          v274 = sub_268F99F64();
          v275 = *(v274 - 8);
          v276 = v274 - 8;
          if ((*(v275 + 48))(v720, 1) != 1)
          {
            *&v272 = sub_268F99F44();
            *(&v272 + 1) = v154;
            (*(v275 + 8))(v720, v274);
            v832 = v272;
            v273 = v278;
            goto LABEL_224;
          }

          sub_268D9C0BC(v720);
          v284 = v278;
        }

        else
        {
          v284 = v677;
        }
      }

      else
      {
        v284 = v677;
      }

      v832 = 0uLL;
      v273 = v284;
LABEL_224:
      v271 = v273;
      sub_268D35D60(v716, v827);
      if (v827[3])
      {
        sub_268CDF978(v827, v828);
        v270 = v832;

        v825 = v270;

        if (*(&v825 + 1))
        {
          v826 = v825;
        }

        else
        {
          v266 = v829;
          v267 = v830;
          v268 = __swift_project_boxed_opaque_existential_1(v828, v829);

          sub_268F9A5C4();
          v269 = v824;

          if (v269)
          {
            v265 = v269;
            v262 = v269;
            v263 = sub_268F99F04();

            v264 = v263;
          }

          else
          {
            v264 = 0;
          }

          v260 = v264;
          *&v261 = (*(v267 + 8))();
          *(&v261 + 1) = v155;

          v826 = v261;
          if (*(&v825 + 1))
          {
            sub_268CD9D30(&v825);
          }
        }

        v259 = v826;
        if (*(&v826 + 1))
        {
          v258 = v259;
          v253 = v259;
          v823 = v259;
          v822 = 3;
          v252 = *sub_268DDB4E8();

          v256 = &v821;
          v821 = v252;
          v255 = &v820;
          v820 = v253;
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
          sub_268DA6BFC();
          v257 = sub_268F9AFC4();
          sub_268CD7930(v256);
          if (v257)
          {
            v822 = 1;
            v251 = 1;
          }

          else
          {
            v251 = 3;
          }

          v249 = v251;

          sub_268F9A5C4();
          v250 = v819[1];

          if (v250)
          {
            v248 = v250;
            v245 = v250;
            v246 = sub_268F9A084();

            v247 = v246;
          }

          else
          {
            v247 = 0;
          }

          v243 = v247;

          v242 = sub_268F9A5B4();

          v244 = sub_268E30624(v243, v242, v253, *(&v253 + 1), v249, v715);

          __swift_destroy_boxed_opaque_existential_0(v828);
          sub_268CD9D30(&v832);

          v581 = v244;
          v582 = v271;
          return v581;
        }

        __swift_destroy_boxed_opaque_existential_0(v828);
      }

      else
      {
        sub_268D28414(v827);
      }

      v156 = sub_268DDA790();
      v239 = *v156;
      v240 = v156[1];

      v238 = sub_268F9A7E4();
      sub_268D91304();
      v241 = swift_allocError();
      sub_268E2AB74(v729, v239, v240, v157);

      swift_willThrow();
      sub_268CD9D30(&v832);

      v638 = v241;
      return v633;
    }

    sub_268F9A204();

    if (v852[3])
    {
      sub_268F9A3B4();
      if (swift_dynamicCast())
      {
        v237 = v834;
      }

      else
      {
        v237 = 0;
      }

      v236 = v237;
    }

    else
    {
      sub_268D28414(v852);
      v236 = 0;
    }

    v235 = v236;
    if (!v236)
    {
      v179[1] = 0;
      v186 = sub_268F9A7E4();
      sub_268D91304();
      v181 = 1;
      v188 = swift_allocError();
      v187 = v164;
      v165 = sub_268F9B724();
      v183 = &v850;
      v850 = v165;
      v851 = v166;
      v167 = sub_268F9AEF4();
      v179[0] = v168;
      MEMORY[0x26D62E360](v167);

      v179[2] = &v849;
      v849 = v729;
      sub_268F9A6E4();
      v169 = sub_268F9AE64();
      v180 = v848;
      v848[0] = v169;
      v848[1] = v170;
      sub_268F9B704();
      sub_268CD9D30(v180);
      v171 = sub_268F9AEF4();
      v182 = v172;
      MEMORY[0x26D62E360](v171);

      v185 = v850;
      v184 = v851;

      sub_268CD9D30(v183);
      v173 = sub_268F9AED4();
      v174 = v186;
      v175 = v173;
      v176 = v187;
      *v187 = v175;
      v176[1] = v177;
      (*(*(v174 - 8) + 104))();
      swift_willThrow();
      v638 = v188;
      return v633;
    }

    v234 = v235;
    v232 = v235;
    v847 = v235;

    sub_268F9A5C4();
    v233 = v845;

    if (v233)
    {
      v231 = v233;
      v228 = v233;
      v158 = sub_268DDA5D0();
      v226 = *v158;
      v227 = v158[1];

      v229 = sub_268F9A0A4();

      if (v229)
      {
        v225 = v229;
        v835 = v229;
        v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        v159 = v677;
        sub_268F9AF94();
        v224 = v159;
        if (v159)
        {
          goto LABEL_293;
        }

        sub_268CD7930(&v835);
        v220 = sub_268F99F64();
        v221 = *(v220 - 8);
        v222 = v220 - 8;
        if ((*(v221 + 48))(v718, 1) != 1)
        {
          *&v218 = sub_268F99F44();
          *(&v218 + 1) = v160;
          (*(v221 + 8))(v718, v220);
          v846 = v218;
          v219 = v224;
          goto LABEL_263;
        }

        sub_268D9C0BC(v718);
        v230 = v224;
      }

      else
      {
        v230 = v677;
      }
    }

    else
    {
      v230 = v677;
    }

    v846 = 0uLL;
    v219 = v230;
LABEL_263:
    v217 = v219;
    sub_268D35D60(v716, v841);
    if (v841[3])
    {
      sub_268CDF978(v841, v842);
      v216 = v846;

      v839 = v216;

      if (*(&v839 + 1))
      {
        v840 = v839;
      }

      else
      {
        v212 = v843;
        v213 = v844;
        v214 = __swift_project_boxed_opaque_existential_1(v842, v843);

        sub_268F9A5C4();
        v215 = v838;

        if (v215)
        {
          v211 = v215;
          v208 = v215;
          v209 = sub_268F99F04();

          v210 = v209;
        }

        else
        {
          v210 = 0;
        }

        v206 = v210;
        *&v207 = (*(v213 + 8))();
        *(&v207 + 1) = v161;

        v840 = v207;
        if (*(&v839 + 1))
        {
          sub_268CD9D30(&v839);
        }
      }

      v205 = v840;
      if (*(&v840 + 1))
      {
        v204 = v205;
        v201 = *(&v205 + 1);
        v202 = v205;
        v837 = v205;

        sub_268F9A5C4();
        v203 = v836[5];

        if (v203)
        {
          v200 = v203;
          v197 = v203;
          v198 = sub_268F9A084();

          v199 = v198;
        }

        else
        {
          v199 = 0;
        }

        v195 = v199;

        v194 = sub_268F9A5B4();

        v193 = v836;
        memset(v836, 0, 40);
        v196 = sub_268E30624(v195, v194, v202, v201, 3, v836);
        sub_268D28414(v193);

        __swift_destroy_boxed_opaque_existential_0(v842);
        sub_268CD9D30(&v846);

        v581 = v196;
        v582 = v217;
        return v581;
      }

      __swift_destroy_boxed_opaque_existential_0(v842);
    }

    else
    {
      sub_268D28414(v841);
    }

    v162 = sub_268DDA790();
    v190 = *v162;
    v191 = v162[1];

    v189 = sub_268F9A7E4();
    sub_268D91304();
    v192 = swift_allocError();
    sub_268E2AB74(v729, v190, v191, v163);

    swift_willThrow();
    sub_268CD9D30(&v846);

    v638 = v192;
    return v633;
  }

  v672 = v673;
  v670 = v673;
  v754 = v673;

  sub_268F9A5C4();
  v671 = v751[1];

  if (v671)
  {
    v669 = v671;
    v666 = v671;
    v48 = sub_268DDA5D0();
    v664 = *v48;
    v665 = v48[1];

    v667 = sub_268F9A0A4();

    if (v667)
    {
      v663 = v667;
      v731[0] = v667;
      v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      sub_268DA5FC0();
      v49 = v677;
      sub_268F9AF94();
      v662 = v49;
      if (v49)
      {
        __break(1u);
        goto LABEL_286;
      }

      sub_268CD7930(v731);
      v658 = sub_268F99F64();
      v659 = *(v658 - 8);
      v660 = v658 - 8;
      if ((*(v659 + 48))(v728, 1) != 1)
      {
        v655 = sub_268F99F44();
        v656 = v50;
        (*(v659 + 8))(v728, v658);
        v752 = v655;
        v753 = v656;
        v657 = v662;
        goto LABEL_17;
      }

      sub_268D9C0BC(v728);
      v668 = v662;
    }

    else
    {
      v668 = v677;
    }
  }

  else
  {
    v668 = v677;
  }

  v752 = 0;
  v753 = 0;
  v657 = v668;
LABEL_17:
  v652 = v657;
  v751[0] = 0;
  v653 = v752;
  v654 = v753;

  v750[0] = v653;
  v750[1] = v654;
  v651 = v654 == 0;
  v650 = v651;
  sub_268CD9D30(v750);
  if (!v650)
  {

    sub_268F9A5C4();
    v632 = v749[1];

    if (v632)
    {
      v631 = v632;
      v628 = v632;
      v629 = sub_268F9A084();

      v630 = v629;
    }

    else
    {
      v630 = 0;
    }

    v626 = v630;
    v627 = sub_268E2C7C8(v630);

    v57 = v751[0];
    v751[0] = v627;
    MEMORY[0x277D82BD8](v57);
LABEL_31:

    sub_268F9A5C4();
    v625 = v748[1];

    if (!v625 || (v624 = v625, v622 = v625, v58 = sub_268DDA5D0(), v620 = *v58, v621 = v58[1], , v623 = sub_268F9A0A4(), , , !v623))
    {
      v614 = 0;
      v615 = v652;
      goto LABEL_39;
    }

    v619 = v623;
    v736 = v623;
    v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    v59 = sub_268E30B2C();
    v60 = v652;
    v61 = sub_268DE25C8(v679, 0, v616, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v59, MEMORY[0x277D84AC0], v633);
    v617 = v60;
    v618 = v61;
    if (!v60)
    {
      v613 = v618;
      sub_268CD7930(&v736);
      v614 = v613;
      v615 = v617;
LABEL_39:
      v612 = v615;
      v748[0] = v614;
      if (v614)
      {
        v749[0] = v748[0];
      }

      else
      {
        v749[0] = sub_268F9B734();
        if (v748[0])
        {
          sub_268CD7930(v748);
        }
      }

      sub_268F9A5C4();
      v611 = v746[1];

      if (!v611 || (v610 = v611, v608 = v611, v609 = sub_268F9A1C4(), , !v609 || (v607 = v609, v605 = v609, v62 = sub_268DDA5D0(), v603 = *v62, v604 = v62[1], , v606 = sub_268F9A0A4(), , , !v606)))
      {
        v597 = 0;
        v598 = v612;
        goto LABEL_55;
      }

      v602 = v606;
      v737 = v606;
      v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v63 = sub_268E30B2C();
      v64 = v612;
      v65 = sub_268DE25C8(v680, 0, v599, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v63, MEMORY[0x277D84AC0], v633);
      v600 = v64;
      v601 = v65;
      if (!v64)
      {
        v596 = v601;
        sub_268CD7930(&v737);
        v597 = v596;
        v598 = v600;
LABEL_55:
        v595 = v598;
        v746[0] = v597;
        if (v597)
        {
          v747 = v746[0];
        }

        else
        {
          v747 = sub_268F9B734();
          if (v746[0])
          {
            sub_268CD7930(v746);
          }
        }

        v588 = &v745;
        v745 = v747;
        v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v590 = sub_268DA6BFC();
        sub_268F9B054();
        v589 = v749[0];

        v593 = &v744;
        v744 = v589;
        v66 = sub_268E42E48(0);
        v592 = v743;
        v743[0] = v66;
        v743[1] = v67;
        v594 = sub_268F9AFC4();
        sub_268CD9D30(v592);
        sub_268CD7930(v593);
        if (v594)
        {
          v583 = v749[0];

          v585 = &v739;
          v739 = v583;
          v68 = sub_268E42E48(1);
          v584 = v738;
          v738[0] = v68;
          v738[1] = v69;
          v586 = sub_268F9AFC4();
          sub_268CD9D30(v584);
          sub_268CD7930(v585);
          v587 = v586;
        }

        else
        {
          v587 = 0;
        }

        if (v587)
        {
          v741 = 36;
          v574 = BinarySettingIdentifier.rawValue.getter();
          v576 = v70;
          v579 = v751;
          v575 = v751[0];
          MEMORY[0x277D82BE0](v751[0]);
          v577 = 0;
          v578 = sub_268F284EC(v574, v576, v715, v575, 0);
          MEMORY[0x277D82BD8](v575);

          v740 = v578;
          sub_268CD7620();
          v580 = sub_268DA95CC(v578, 2, v577);
          sub_268CD7930(v749);
          sub_268D35038(v579);
          sub_268CD9D30(&v752);

          v581 = v580;
        }

        else
        {
          v572 = &v752;
          v563 = v752;
          v565 = v753;

          v571 = v751;
          v564 = v751[0];
          MEMORY[0x277D82BE0](v751[0]);
          v566 = 0;
          v569 = sub_268F284EC(v563, v565, v715, v564, 0);
          MEMORY[0x277D82BD8](v564);

          v742 = v569;
          v567 = sub_268CD7620();

          v568 = sub_268F9A5B4();

          v570 = sub_268E2A500(v568);

          v573 = sub_268DA95CC(v569, 2, v570);
          sub_268CD7930(v749);
          sub_268D35038(v571);
          sub_268CD9D30(v572);

          v581 = v573;
        }

        v582 = v595;
        return v581;
      }

      goto LABEL_287;
    }

LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
    return v633;
  }

  sub_268D35D60(v716, v732);
  if (v732[3])
  {
    v645 = v733;
    sub_268CDF978(v732, v733);
    v646 = v734;
    v647 = v735;
    v648 = __swift_project_boxed_opaque_existential_1(v645, v734);

    sub_268F9A5C4();
    v649 = v731[1];

    if (v649)
    {
      v644 = v649;
      v641 = v649;
      v642 = sub_268F99F04();

      v643 = v642;
    }

    else
    {
      v643 = 0;
    }

    v640 = v643;
    (*(v647 + 16))();

    if ((*(v709 + 48))(v707, 1, v708) == 1)
    {
      sub_268D59D2C(v707);
      __swift_destroy_boxed_opaque_existential_0(v733);
      goto LABEL_26;
    }

    (*(v709 + 32))(v714, v707, v708);
    v752 = sub_268F9ACC4();
    v753 = v51;

    v639 = 0;
    sub_268DA9760();
    v52 = sub_268DA9564(v639, v639, v639, v639, v639, v639);
    v53 = v751[0];
    v751[0] = v52;
    v54 = MEMORY[0x277D82BD8](v53);
    (*(v709 + 8))(v714, v708, v54);
    __swift_destroy_boxed_opaque_existential_0(v733);
    goto LABEL_31;
  }

  sub_268D28414(v732);
LABEL_26:
  v55 = sub_268DDA790();
  v635 = *v55;
  v636 = v55[1];

  v634 = sub_268F9A7E4();
  sub_268D91304();
  v637 = swift_allocError();
  sub_268E2AB74(v729, v635, v636, v56);

  swift_willThrow();
  sub_268D35038(v751);
  sub_268CD9D30(&v752);

  v638 = v637;
  return v633;
}

id sub_268E23F1C(uint64_t a1, void *a2)
{
  v342 = a1;
  v335 = a2;
  v322 = sub_268E30BB4;
  v323 = sub_268E2BED8;
  v324 = sub_268E2BED8;
  v325 = sub_268E30BB4;
  v326 = sub_268E30BB4;
  v388 = 0;
  v387 = 0;
  v379 = 0;
  v376 = 0;
  v377 = 0;
  v373 = 0;
  v370 = 0;
  v371 = 0;
  v362 = 0;
  v359 = 0;
  v360 = 0;
  v358 = 0;
  v349 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0B8, &qword_268FA3298);
  v327 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3, v4, v5);
  v328 = v81 - v327;
  v329 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81 - v327, v7, v8, v9);
  v330 = v81 - v329;
  v331 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81 - v329, v11, v12, v13);
  v332 = v81 - v331;
  v333 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81 - v331, v15, v16, v17);
  v334 = v81 - v333;
  v336 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v342, v335, v18, v19);
  v337 = v81 - v336;
  v338 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v81 - v336, v23);
  v339 = v81 - v338;
  v340 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v26, v81 - v338, v27);
  v341 = v81 - v340;
  v388 = v28;
  v387 = v29;

  sub_268F9A204();

  if (v386[3])
  {
    sub_268F9A624();
    if (swift_dynamicCast())
    {
      v320 = v343;
    }

    else
    {
      v320 = 0;
    }

    v319 = v320;
  }

  else
  {
    sub_268D28414(v386);
    v319 = 0;
  }

  v318 = v319;
  if (!v319)
  {

    sub_268F9A204();

    if (v385[3])
    {
      sub_268F9A524();
      if (swift_dynamicCast())
      {
        v210 = v363;
      }

      else
      {
        v210 = 0;
      }

      v209 = v210;
    }

    else
    {
      sub_268D28414(v385);
      v209 = 0;
    }

    v208 = v209;
    if (v209)
    {
      v207 = v208;
      v205 = v208;
      v373 = v208;

      sub_268F9A324();
      v206 = v372;

      if (v206)
      {
        v204 = v206;
        v201 = v206;
        v51 = sub_268DDA5D0();
        v199 = *v51;
        v200 = v51[1];

        v202 = sub_268F9A0A4();

        if (v202)
        {
          v198 = v202;
          v364[0] = v202;
          v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v52 = v321;
          sub_268F9AF94();
          v197 = v52;
          if (v52)
          {
            goto LABEL_165;
          }

          sub_268CD7930(v364);
          v193 = sub_268F99F64();
          v194 = *(v193 - 8);
          v195 = v193 - 8;
          if ((*(v194 + 48))(v339, 1) != 1)
          {
            v188 = sub_268F99F44();
            v189 = v53;
            (*(v194 + 8))(v339, v193);
            v190 = v188;
            v191 = v189;
            v192 = v197;
LABEL_94:
            v185 = v192;
            v186 = v191;
            v187 = v190;
            if (v191)
            {
              v183 = v187;
              v184 = v186;
              v180 = v186;
              v179 = v187;
              v370 = v187;
              v371 = v186;
              v369 = 0;
              v368 = 0;
              v54 = NumericSettingIdentifier.rawValue.getter();
              v181 = v55;
              v182 = MEMORY[0x26D62DB50](v54);

              if (v182)
              {

                sub_268F9A324();
                v178 = v365[1];

                if (v178 && (v177 = v178, v175 = v178, v176 = sub_268F9A1F4(), , v176))
                {
                  v174 = v176;
                  v171 = v176;
                  v172 = sub_268F9A124();

                  v173 = v172;
                }

                else
                {
                  v173 = 0;
                }

                v169 = v173;
                v170 = sub_268F29294(v173);

                v365[0] = v170;

                if (v365[0])
                {
                  v366 = v365[0];
                }

                else
                {

                  v168 = sub_268F9A314();

                  if (v168 && (v167 = v168, v165 = v168, v364[3] = v168, v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570), sub_268DA6E24(), sub_268F9B234(), v166 = v364[2], , v166))
                  {
                    v163 = v166;
                    v160 = v166;
                    sub_268F9A064();
                    v161 = v364[1];

                    v162 = v161;
                  }

                  else
                  {
                    v162 = 0;
                  }

                  v158 = v162;
                  v159 = sub_268F28D48(v162);

                  v366 = v159;
                  if (v365[0])
                  {
                    sub_268D35038(v365);
                  }
                }

                v56 = v369;
                v369 = v366;
                MEMORY[0x277D82BD8](v56);
              }

              v154 = 0;
              v153 = sub_268D2E630();

              v155 = v369;
              MEMORY[0x277D82BE0](v369);
              v156 = sub_268F284EC(v179, v180, v335, v154, v155);
              MEMORY[0x277D82BD8](v155);

              sub_268F9A324();
              v157 = v367;

              if (v157 && (v152 = v157, v150 = v157, v151 = sub_268F9A1E4(), , v151 && (v149 = v151, v147 = v151, v148 = sub_268F9A384(), , v148)))
              {
                v146 = v148;
                v145 = v148;
                sub_268F9A4C4();
              }

              else
              {
                v57 = sub_268F9A4D4();
                (*(*(v57 - 8) + 56))(v330, 1);
              }

              v143 = sub_268E2BF28(v330);
              sub_268E30BF8(v330);
              v144 = sub_268E1B5D8(v156, v143);
              sub_268D35038(&v369);

              v232 = v144;
              v233 = v185;
              return v232;
            }

            v58 = sub_268DDAA30();
            v140 = *v58;
            v141 = v58[1];

            v139 = sub_268F9A7E4();
            sub_268D91304();
            v142 = swift_allocError();
            sub_268E2AB74(v342, v140, v141, v59);

            swift_willThrow();

            v215 = v142;
            return v281;
          }

          sub_268D9C0BC(v339);
          v203 = v197;
        }

        else
        {
          v203 = v321;
        }
      }

      else
      {
        v203 = v321;
      }

      v190 = 0;
      v191 = 0;
      v192 = v203;
      goto LABEL_94;
    }

    sub_268F9A204();

    if (v384[3])
    {
      sub_268F9A454();
      if (swift_dynamicCast())
      {
        v138 = v374;
      }

      else
      {
        v138 = 0;
      }

      v137 = v138;
    }

    else
    {
      sub_268D28414(v384);
      v137 = 0;
    }

    v136 = v137;
    if (!v137)
    {
      v81[2] = 0;
      v88 = sub_268F9A7E4();
      sub_268D91304();
      v83 = 1;
      v90 = swift_allocError();
      v89 = v66;
      v67 = sub_268F9B724();
      v85 = &v382;
      v382 = v67;
      v383 = v68;
      v69 = sub_268F9AEF4();
      v81[1] = v70;
      MEMORY[0x26D62E360](v69);

      v81[3] = &v381;
      v381 = v342;
      sub_268F9A6E4();
      v71 = sub_268F9AE64();
      v82 = v380;
      v380[0] = v71;
      v380[1] = v72;
      sub_268F9B704();
      sub_268CD9D30(v82);
      v73 = sub_268F9AEF4();
      v84 = v74;
      MEMORY[0x26D62E360](v73);

      v87 = v382;
      v86 = v383;

      sub_268CD9D30(v85);
      v75 = sub_268F9AED4();
      v76 = v88;
      v77 = v75;
      v78 = v89;
      *v89 = v77;
      v78[1] = v79;
      (*(*(v76 - 8) + 104))();
      swift_willThrow();
      v215 = v90;
      return v281;
    }

    v135 = v136;
    v133 = v136;
    v379 = v136;

    sub_268F9A544();
    v134 = v378;

    if (v134)
    {
      v132 = v134;
      v129 = v134;
      v60 = sub_268DDA5D0();
      v127 = *v60;
      v128 = v60[1];

      v130 = sub_268F9A0A4();

      if (v130)
      {
        v126 = v130;
        v375[0] = v130;
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        v61 = v321;
        sub_268F9AF94();
        v125 = v61;
        if (v61)
        {
          goto LABEL_166;
        }

        sub_268CD7930(v375);
        v121 = sub_268F99F64();
        v122 = *(v121 - 8);
        v123 = v121 - 8;
        if ((*(v122 + 48))(v337, 1) != 1)
        {
          v116 = sub_268F99F44();
          v117 = v62;
          (*(v122 + 8))(v337, v121);
          v118 = v116;
          v119 = v117;
          v120 = v125;
LABEL_145:
          v113 = v120;
          v114 = v119;
          v115 = v118;
          if (v119)
          {
            v111 = v115;
            v112 = v114;
            v108 = v114;
            v106 = v115;
            v376 = v115;
            v377 = v114;
            v107 = 0;
            v105 = sub_268D2E630();

            v109 = sub_268F284EC(v106, v108, v335, v107, v107);

            sub_268F9A544();
            v110 = v375[1];

            if (v110 && (v104 = v110, v102 = v110, v103 = sub_268F9A1E4(), , v103 && (v101 = v103, v99 = v103, v100 = sub_268F9A384(), , v100)))
            {
              v98 = v100;
              v97 = v100;
              sub_268F9A4C4();
            }

            else
            {
              v63 = sub_268F9A4D4();
              (*(*(v63 - 8) + 56))(v328, 1);
            }

            v95 = sub_268E2BF28(v328);
            sub_268E30BF8(v328);
            v96 = sub_268E1B5D8(v109, v95);

            v232 = v96;
            v233 = v113;
            return v232;
          }

          v64 = sub_268DDAA30();
          v92 = *v64;
          v93 = v64[1];

          v91 = sub_268F9A7E4();
          sub_268D91304();
          v94 = swift_allocError();
          sub_268E2AB74(v342, v92, v93, v65);

          swift_willThrow();

          v215 = v94;
          return v281;
        }

        sub_268D9C0BC(v337);
        v131 = v125;
      }

      else
      {
        v131 = v321;
      }
    }

    else
    {
      v131 = v321;
    }

    v118 = 0;
    v119 = 0;
    v120 = v131;
    goto LABEL_145;
  }

  v317 = v318;
  v315 = v318;
  v362 = v318;

  sub_268F9A324();
  v316 = v361;

  if (!v316)
  {
    v313 = v321;
LABEL_75:
    v300 = 0;
    v301 = 0;
    v302 = v313;
    goto LABEL_17;
  }

  v314 = v316;
  v311 = v316;
  v30 = sub_268DDA5D0();
  v309 = *v30;
  v310 = v30[1];

  v312 = sub_268F9A0A4();

  if (!v312)
  {
    v313 = v321;
    goto LABEL_75;
  }

  v308 = v312;
  v344 = v312;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  v31 = v321;
  sub_268F9AF94();
  v307 = v31;
  if (v31)
  {
    __break(1u);
    goto LABEL_163;
  }

  sub_268CD7930(&v344);
  v303 = sub_268F99F64();
  v304 = *(v303 - 8);
  v305 = v303 - 8;
  if ((*(v304 + 48))(v341, 1) == 1)
  {
    sub_268D9C0BC(v341);
    v313 = v307;
    goto LABEL_75;
  }

  v298 = sub_268F99F44();
  v299 = v32;
  (*(v304 + 8))(v341, v303);
  v300 = v298;
  v301 = v299;
  v302 = v307;
LABEL_17:
  v295 = v302;
  v296 = v301;
  v297 = v300;
  if (v301)
  {
    v293 = v297;
    v294 = v296;
    v290 = v296;
    v291 = v297;
    v359 = v297;
    v360 = v296;

    sub_268F9A324();
    v292 = v357[1];

    if (!v292 || (v289 = v292, v287 = v292, v33 = sub_268DDA5D0(), v285 = *v33, v286 = v33[1], , v288 = sub_268F9A0A4(), , , !v288))
    {
      v278 = 0;
      v279 = v295;
      goto LABEL_26;
    }

    v284 = v288;
    v345 = v288;
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    v34 = sub_268E30B2C();
    v35 = v295;
    v36 = sub_268DE25C8(v323, 0, v280, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v281);
    v282 = v35;
    v283 = v36;
    if (!v35)
    {
      v277 = v283;
      sub_268CD7930(&v345);
      v278 = v277;
      v279 = v282;
LABEL_26:
      v276 = v279;
      v357[0] = v278;
      if (v278)
      {
        v358 = v357[0];
      }

      else
      {
        v358 = sub_268F9B734();
        if (v357[0])
        {
          sub_268CD7930(v357);
        }
      }

      sub_268F9A324();
      v275 = v355[1];

      if (!v275 || (v274 = v275, v272 = v275, v273 = sub_268F9A1C4(), , !v273 || (v271 = v273, v269 = v273, v37 = sub_268DDA5D0(), v267 = *v37, v268 = v37[1], , v270 = sub_268F9A0A4(), , , !v270)))
      {
        v261 = 0;
        v262 = v276;
        goto LABEL_42;
      }

      v266 = v270;
      v346 = v270;
      v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v38 = sub_268E30B2C();
      v39 = v276;
      v40 = sub_268DE25C8(v324, 0, v263, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v38, MEMORY[0x277D84AC0], v281);
      v264 = v39;
      v265 = v40;
      if (!v39)
      {
        v260 = v265;
        sub_268CD7930(&v346);
        v261 = v260;
        v262 = v264;
LABEL_42:
        v259 = v262;
        v355[0] = v261;
        if (v261)
        {
          v356 = v355[0];
        }

        else
        {
          v356 = sub_268F9B734();
          if (v355[0])
          {
            sub_268CD7930(v355);
          }
        }

        v252 = &v354;
        v354 = v356;
        v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
        v254 = sub_268DA6BFC();
        sub_268F9B054();
        v253 = v358;

        v257 = &v353;
        v353 = v253;
        v41 = sub_268E42E48(0);
        v256 = v352;
        v352[0] = v41;
        v352[1] = v42;
        v258 = sub_268F9AFC4();
        sub_268CD9D30(v256);
        sub_268CD7930(v257);
        if (v258)
        {
          v247 = v358;

          v249 = v348;
          v348[0] = v247;
          v43 = sub_268E42E48(1);
          v248 = v347;
          v347[0] = v43;
          v347[1] = v44;
          v250 = sub_268F9AFC4();
          sub_268CD9D30(v248);
          sub_268CD7930(v249);
          v251 = v250;
        }

        else
        {
          v251 = 0;
        }

        if (v251)
        {
          v350 = 36;
          v45 = BinarySettingIdentifier.rawValue.getter();
          v242 = v46;
          v244 = 0;
          v243 = sub_268F284EC(v45, v46, v335, 0, 0);

          v349 = v243;
          v245 = sub_268D2E630();

          sub_268F9A324();
          v246 = v348[1];

          if (v246 && (v241 = v246, v239 = v246, v240 = sub_268F9A1E4(), , v240 && (v238 = v240, v236 = v240, v237 = sub_268F9A384(), , v237)))
          {
            v235 = v237;
            v234 = v237;
            sub_268F9A4C4();
          }

          else
          {
            v47 = sub_268F9A4D4();
            (*(*(v47 - 8) + 56))(v334, 1);
          }

          v230 = sub_268E2BF28(v334);
          sub_268E30BF8(v334);
          v231 = sub_268E1B5D8(v243, v230);
          sub_268CD7930(&v358);

          v232 = v231;
          v233 = v259;
        }

        else
        {
          v227 = 0;
          v226 = sub_268D2E630();

          v228 = sub_268F284EC(v291, v290, v335, v227, v227);

          sub_268F9A324();
          v229 = v351;

          if (v229 && (v225 = v229, v223 = v229, v224 = sub_268F9A1E4(), , v224 && (v222 = v224, v220 = v224, v221 = sub_268F9A384(), , v221)))
          {
            v219 = v221;
            v218 = v221;
            sub_268F9A4C4();
          }

          else
          {
            v48 = sub_268F9A4D4();
            (*(*(v48 - 8) + 56))(v332, 1);
          }

          v216 = sub_268E2BF28(v332);
          sub_268E30BF8(v332);
          v217 = sub_268E1B5D8(v228, v216);
          sub_268CD7930(&v358);

          v232 = v217;
          v233 = v259;
        }

        return v232;
      }

      goto LABEL_164;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    return v281;
  }

  v49 = sub_268DDAA30();
  v212 = *v49;
  v213 = v49[1];

  v211 = sub_268F9A7E4();
  sub_268D91304();
  v214 = swift_allocError();
  sub_268E2AB74(v342, v212, v213, v50);

  swift_willThrow();

  v215 = v214;
  return v281;
}

id sub_268E25C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v476 = &v539;
  v514 = v5;
  v501 = v6;
  v477 = v4;
  v478 = sub_268E30BB4;
  v479 = sub_268E30BB4;
  v480 = sub_268E30BB4;
  v481 = sub_268E30BB4;
  v482 = sub_268E30BB4;
  v483 = sub_268E30BB4;
  v643 = 0;
  v642 = 0;
  v641 = 0;
  v640 = 0;
  v639 = 0;
  v628 = 0;
  v625 = 0;
  v626 = 0;
  v614 = 0;
  v615 = 0;
  v606 = 0;
  v603 = 0;
  v604 = 0;
  v592 = 0;
  v593 = 0;
  v589 = 0;
  v586 = 0;
  v587 = 0;
  v575 = 0;
  v576 = 0;
  v567 = 0;
  v564 = 0;
  v565 = 0;
  v553 = 0;
  v554 = 0;
  v550 = 0;
  v547 = 0;
  v548 = 0;
  v536 = 0;
  v537 = 0;
  v533 = 0;
  v530 = 0;
  v531 = 0;
  v522 = 0uLL;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0C0, &qword_268FA32A0);
  v484 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v485 = v114 - v484;
  v486 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v484, v12, v13, v14);
  v487 = v114 - v486;
  v488 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v486, v16, v17, v18);
  v489 = v114 - v488;
  v490 = sub_268F9A144();
  v491 = *(v490 - 8);
  v492 = v490 - 8;
  v493 = (*(v491 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v490, v19, v20, v21);
  v494 = v114 - v493;
  v643 = v114 - v493;
  v495 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24, v25, v26);
  v496 = v114 - v495;
  v642 = v114 - v495;
  v497 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v29, v30, v31);
  v498 = v114 - v497;
  v499 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - v497, v33, v34, v35);
  v500 = v114 - v499;
  v641 = v114 - v499;
  v502 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v514, v501, v36, v37);
  v503 = v114 - v502;
  v504 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v40, v114 - v502, v41);
  v505 = v114 - v504;
  v506 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v44, v114 - v504, v45);
  v507 = v114 - v506;
  v508 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47, v48, v114 - v506, v49);
  v509 = v114 - v508;
  v510 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v52, v114 - v508, v53);
  v511 = v114 - v510;
  v512 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v56, v114 - v510, v57);
  v513 = v114 - v512;
  v640 = v58;
  v639 = v59;

  sub_268F9A204();

  if (v638[3])
  {
    sub_268F9A514();
    if (swift_dynamicCast())
    {
      v475 = v515;
    }

    else
    {
      v475 = 0;
    }

    v474 = v475;
  }

  else
  {
    sub_268D28414(v638);
    v474 = 0;
  }

  v473 = v474;
  if (!v474)
  {

    sub_268F9A204();

    if (v637[3])
    {
      sub_268F9A304();
      if (swift_dynamicCast())
      {
        v407 = v534;
      }

      else
      {
        v407 = 0;
      }

      v406 = v407;
    }

    else
    {
      sub_268D28414(v637);
      v406 = 0;
    }

    v405 = v406;
    if (v406)
    {
      v404 = v405;
      v402 = v405;
      v550 = v405;

      sub_268F9A5C4();
      v403 = v549;

      if (v403)
      {
        v401 = v403;
        v398 = v403;
        v66 = sub_268DDA5D0();
        v396 = *v66;
        v397 = v66[1];

        v399 = sub_268F9A0A4();

        if (v399)
        {
          v395 = v399;
          v535 = v399;
          v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v67 = v477;
          sub_268F9AF94();
          v394 = v67;
          if (v67)
          {
            goto LABEL_226;
          }

          sub_268CD7930(&v535);
          v390 = sub_268F99F64();
          v391 = *(v390 - 8);
          v392 = v390 - 8;
          if ((*(v391 + 48))(v511, 1) != 1)
          {
            v385 = sub_268F99F44();
            v386 = v68;
            (*(v391 + 8))(v511, v390);
            v387 = v385;
            v388 = v386;
            v389 = v394;
            goto LABEL_59;
          }

          sub_268D9C0BC(v511);
          v400 = v394;
        }

        else
        {
          v400 = v477;
        }
      }

      else
      {
        v400 = v477;
      }

      v387 = 0;
      v388 = 0;
      v389 = v400;
LABEL_59:
      v382 = v389;
      v383 = v388;
      v384 = v387;
      v547 = v387;
      v548 = v388;
      sub_268D35D60(v501, v543);
      if (v543[3])
      {
        sub_268CDF978(v543, v544);

        v539 = v384;
        v540 = v383;

        if (v540)
        {
          *(v476 + 1) = *v476;
        }

        else
        {
          v378 = v545;
          v379 = v546;
          v380 = __swift_project_boxed_opaque_existential_1(v544, v545);

          sub_268F9A5C4();
          v381 = v538;

          if (v381)
          {
            v377 = v381;
            v374 = v381;
            v375 = sub_268F99F04();

            v376 = v375;
          }

          else
          {
            v376 = 0;
          }

          v371 = v376;
          v372 = (*(v379 + 8))();
          v373 = v69;

          v541 = v372;
          v542 = v373;
          if (v540)
          {
            sub_268CD9D30(&v539);
          }
        }

        v369 = v541;
        v370 = v542;
        if (v542)
        {
          v367 = v369;
          v368 = v370;
          v362 = v370;
          v363 = v369;
          v536 = v369;
          v537 = v370;
          v365 = 0;
          v364 = sub_268D588E0();
          sub_268D291D4();
          v70 = sub_268F2B620(v363, v362, v365, v365);
          v366 = sub_268DA961C(v70, v365, v365, 1, v365);
          __swift_destroy_boxed_opaque_existential_0(v544);

          v415 = v366;
          v416 = v382;
          return v415;
        }

        __swift_destroy_boxed_opaque_existential_0(v544);
      }

      else
      {
        sub_268D28414(v543);
      }

      v71 = sub_268DDA790();
      v359 = *v71;
      v360 = v71[1];

      v358 = sub_268F9A7E4();
      sub_268D91304();
      v361 = swift_allocError();
      sub_268E2AB74(v514, v359, v360, v72);

      swift_willThrow();

      v413 = v361;
      return v408;
    }

    sub_268F9A204();

    if (v636[3])
    {
      sub_268F9A684();
      if (swift_dynamicCast())
      {
        v357 = v551;
      }

      else
      {
        v357 = 0;
      }

      v356 = v357;
    }

    else
    {
      sub_268D28414(v636);
      v356 = 0;
    }

    v355 = v356;
    if (v356)
    {
      v354 = v355;
      v352 = v355;
      v567 = v355;

      sub_268F9A6A4();
      v353 = v566;

      if (v353)
      {
        v351 = v353;
        v348 = v353;
        v73 = sub_268DDA5D0();
        v346 = *v73;
        v347 = v73[1];

        v349 = sub_268F9A0A4();

        if (v349)
        {
          v345 = v349;
          v552 = v349;
          v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v74 = v477;
          sub_268F9AF94();
          v344 = v74;
          if (v74)
          {
            goto LABEL_227;
          }

          sub_268CD7930(&v552);
          v340 = sub_268F99F64();
          v341 = *(v340 - 8);
          v342 = v340 - 8;
          if ((*(v341 + 48))(v509, 1) != 1)
          {
            v335 = sub_268F99F44();
            v336 = v75;
            (*(v341 + 8))(v509, v340);
            v337 = v335;
            v338 = v336;
            v339 = v344;
            goto LABEL_91;
          }

          sub_268D9C0BC(v509);
          v350 = v344;
        }

        else
        {
          v350 = v477;
        }
      }

      else
      {
        v350 = v477;
      }

      v337 = 0;
      v338 = 0;
      v339 = v350;
LABEL_91:
      v332 = v339;
      v333 = v338;
      v334 = v337;
      v564 = v337;
      v565 = v338;
      sub_268D35D60(v501, v560);
      if (v560[3])
      {
        sub_268CDF978(v560, v561);

        v556 = v334;
        v557 = v333;

        if (v557)
        {
          *(v476 + 13) = *(v476 + 12);
        }

        else
        {
          v328 = v562;
          v329 = v563;
          v330 = __swift_project_boxed_opaque_existential_1(v561, v562);

          sub_268F9A6A4();
          v331 = v555;

          if (v331)
          {
            v327 = v331;
            v324 = v331;
            v325 = sub_268F99F04();

            v326 = v325;
          }

          else
          {
            v326 = 0;
          }

          v321 = v326;
          v322 = (*(v329 + 8))();
          v323 = v76;

          v558 = v322;
          v559 = v323;
          if (v557)
          {
            sub_268CD9D30(&v556);
          }
        }

        v319 = v558;
        v320 = v559;
        if (v559)
        {
          v317 = v319;
          v318 = v320;
          v312 = v320;
          v313 = v319;
          v553 = v319;
          v554 = v320;
          v315 = 0;
          v314 = sub_268D588E0();
          sub_268D291D4();
          v77 = sub_268F2B620(v313, v312, v315, v315);
          v316 = sub_268DA961C(v77, v315, v315, 2, v315);
          __swift_destroy_boxed_opaque_existential_0(v561);

          v415 = v316;
          v416 = v332;
          return v415;
        }

        __swift_destroy_boxed_opaque_existential_0(v561);
      }

      else
      {
        sub_268D28414(v560);
      }

      v78 = sub_268DDA790();
      v309 = *v78;
      v310 = v78[1];

      v308 = sub_268F9A7E4();
      sub_268D91304();
      v311 = swift_allocError();
      sub_268E2AB74(v514, v309, v310, v79);

      swift_willThrow();

      v413 = v311;
      return v408;
    }

    sub_268F9A204();

    if (v635[3])
    {
      sub_268F9A594();
      if (swift_dynamicCast())
      {
        v307 = v568;
      }

      else
      {
        v307 = 0;
      }

      v306 = v307;
    }

    else
    {
      sub_268D28414(v635);
      v306 = 0;
    }

    v305 = v306;
    if (v306)
    {
      v304 = v305;
      v302 = v305;
      v589 = v305;

      sub_268F9A664();
      v303 = v588;

      if (v303)
      {
        v301 = v303;
        v298 = v303;
        v80 = sub_268DDA5D0();
        v296 = *v80;
        v297 = v80[1];

        v299 = sub_268F9A0A4();

        if (v299)
        {
          v295 = v299;
          v569[0] = v299;
          v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v81 = v477;
          sub_268F9AF94();
          v294 = v81;
          if (v81)
          {
            goto LABEL_228;
          }

          sub_268CD7930(v569);
          v290 = sub_268F99F64();
          v291 = *(v290 - 8);
          v292 = v290 - 8;
          if ((*(v291 + 48))(v507, 1) != 1)
          {
            v285 = sub_268F99F44();
            v286 = v82;
            (*(v291 + 8))(v507, v290);
            v287 = v285;
            v288 = v286;
            v289 = v294;
            goto LABEL_123;
          }

          sub_268D9C0BC(v507);
          v300 = v294;
        }

        else
        {
          v300 = v477;
        }
      }

      else
      {
        v300 = v477;
      }

      v287 = 0;
      v288 = 0;
      v289 = v300;
LABEL_123:
      v282 = v289;
      v283 = v288;
      v284 = v287;
      v586 = v287;
      v587 = v288;
      sub_268D35D60(v501, v582);
      if (v582[3])
      {
        sub_268CDF978(v582, v583);

        v578 = v284;
        v579 = v283;

        if (v579)
        {
          *(v476 + 28) = *(v476 + 27);
        }

        else
        {
          v278 = v584;
          v279 = v585;
          v280 = __swift_project_boxed_opaque_existential_1(v583, v584);

          sub_268F9A664();
          v281 = v577;

          if (v281)
          {
            v277 = v281;
            v274 = v281;
            v275 = sub_268F99F04();

            v276 = v275;
          }

          else
          {
            v276 = 0;
          }

          v271 = v276;
          v272 = (*(v279 + 8))();
          v273 = v83;

          v580 = v272;
          v581 = v273;
          if (v579)
          {
            sub_268CD9D30(&v578);
          }
        }

        v269 = v580;
        v270 = v581;
        if (v581)
        {
          v267 = v269;
          v268 = v270;
          v264 = v270;
          v265 = v269;
          v575 = v269;
          v576 = v270;
          v573 = 0;
          v574 = 1;

          v266 = sub_268F9A654();

          if (v266)
          {
            v263 = v266;
            v262 = v266;
            sub_268F9A134();
          }

          else
          {
            (*(v491 + 56))(v487, 1, 1, v490);
          }

          if ((*(v491 + 48))(v487, 1, v490) == 1)
          {
            sub_268E30CA0(v487);
            v260 = 0;
            v261 = 1;
          }

          else
          {
            (*(v491 + 32))(v496, v487, v490);
            v255 = *sub_268DDAE04();

            (*(v491 + 16))(v498, v496, v490);
            v254 = type metadata accessor for INBoundedSettingValue(0);
            sub_268DDAD84();
            sub_268F9ADC4();
            v259 = v569[1];
            v258 = v570;

            v573 = v259;
            v574 = v258 & 1;
            v257 = *(v491 + 8);
            v256 = v491 + 8;
            v257(v498, v490);
            v257(v496, v490);
            v260 = v259;
            v261 = v258;
          }

          v253 = v261;
          v252 = v260;
          v248 = 0;
          v247 = sub_268D588E0();
          sub_268D291D4();

          v249 = sub_268F2B620(v265, v264, v248, v248);

          v250 = sub_268F9A654();

          v251 = sub_268E2B494(v250);

          v571 = v252;
          v572 = v253 & 1;
          if (v253)
          {
            v246 = 0;
          }

          else
          {
            v246 = v571;
          }

          v245 = sub_268DA961C(v249, v251, v246, 2, 0);

          __swift_destroy_boxed_opaque_existential_0(v583);

          v415 = v245;
          v416 = v282;
          return v415;
        }

        __swift_destroy_boxed_opaque_existential_0(v583);
      }

      else
      {
        sub_268D28414(v582);
      }

      v84 = sub_268DDA790();
      v242 = *v84;
      v243 = v84[1];

      v241 = sub_268F9A7E4();
      sub_268D91304();
      v244 = swift_allocError();
      sub_268E2AB74(v514, v242, v243, v85);

      swift_willThrow();

      v413 = v244;
      return v408;
    }

    sub_268F9A204();

    if (v634[3])
    {
      sub_268F9A674();
      if (swift_dynamicCast())
      {
        v240 = v590;
      }

      else
      {
        v240 = 0;
      }

      v239 = v240;
    }

    else
    {
      sub_268D28414(v634);
      v239 = 0;
    }

    v238 = v239;
    if (v239)
    {
      v237 = v238;
      v235 = v238;
      v606 = v238;

      sub_268F9A6A4();
      v236 = v605;

      if (v236)
      {
        v234 = v236;
        v231 = v236;
        v86 = sub_268DDA5D0();
        v229 = *v86;
        v230 = v86[1];

        v232 = sub_268F9A0A4();

        if (v232)
        {
          v228 = v232;
          v591 = v232;
          v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
          sub_268DA5FC0();
          v87 = v477;
          sub_268F9AF94();
          v227 = v87;
          if (v87)
          {
            goto LABEL_229;
          }

          sub_268CD7930(&v591);
          v223 = sub_268F99F64();
          v224 = *(v223 - 8);
          v225 = v223 - 8;
          if ((*(v224 + 48))(v505, 1) != 1)
          {
            v218 = sub_268F99F44();
            v219 = v88;
            (*(v224 + 8))(v505, v223);
            v220 = v218;
            v221 = v219;
            v222 = v227;
            goto LABEL_165;
          }

          sub_268D9C0BC(v505);
          v233 = v227;
        }

        else
        {
          v233 = v477;
        }
      }

      else
      {
        v233 = v477;
      }

      v220 = 0;
      v221 = 0;
      v222 = v233;
LABEL_165:
      v215 = v222;
      v216 = v221;
      v217 = v220;
      v603 = v220;
      v604 = v221;
      sub_268D35D60(v501, v599);
      if (v599[3])
      {
        sub_268CDF978(v599, v600);

        v595 = v217;
        v596 = v216;

        if (v596)
        {
          *(v476 + 40) = *(v476 + 39);
        }

        else
        {
          v211 = v601;
          v212 = v602;
          v213 = __swift_project_boxed_opaque_existential_1(v600, v601);

          sub_268F9A6A4();
          v214 = v594;

          if (v214)
          {
            v210 = v214;
            v207 = v214;
            v208 = sub_268F99F04();

            v209 = v208;
          }

          else
          {
            v209 = 0;
          }

          v204 = v209;
          v205 = (*(v212 + 8))();
          v206 = v89;

          v597 = v205;
          v598 = v206;
          if (v596)
          {
            sub_268CD9D30(&v595);
          }
        }

        v202 = v597;
        v203 = v598;
        if (v598)
        {
          v200 = v202;
          v201 = v203;
          v195 = v203;
          v196 = v202;
          v592 = v202;
          v593 = v203;
          v198 = 0;
          v197 = sub_268D588E0();
          sub_268D291D4();
          v90 = sub_268F2B620(v196, v195, v198, v198);
          v199 = sub_268DA961C(v90, v198, v198, 3, v198);
          __swift_destroy_boxed_opaque_existential_0(v600);

          v415 = v199;
          v416 = v215;
          return v415;
        }

        __swift_destroy_boxed_opaque_existential_0(v600);
      }

      else
      {
        sub_268D28414(v599);
      }

      v91 = sub_268DDA790();
      v192 = *v91;
      v193 = v91[1];

      v191 = sub_268F9A7E4();
      sub_268D91304();
      v194 = swift_allocError();
      sub_268E2AB74(v514, v192, v193, v92);

      swift_willThrow();

      v413 = v194;
      return v408;
    }

    sub_268F9A204();

    if (v633[3])
    {
      sub_268F9A584();
      if (swift_dynamicCast())
      {
        v190 = v607;
      }

      else
      {
        v190 = 0;
      }

      v189 = v190;
    }

    else
    {
      sub_268D28414(v633);
      v189 = 0;
    }

    v188 = v189;
    if (!v189)
    {
      v114[2] = 0;
      v121 = sub_268F9A7E4();
      sub_268D91304();
      v116 = 1;
      v123 = swift_allocError();
      v122 = v99;
      v100 = sub_268F9B724();
      v118 = &v631;
      v631 = v100;
      v632 = v101;
      v102 = sub_268F9AEF4();
      v114[1] = v103;
      MEMORY[0x26D62E360](v102);

      v114[3] = &v630;
      v630 = v514;
      sub_268F9A6E4();
      v104 = sub_268F9AE64();
      v115 = v629;
      v629[0] = v104;
      v629[1] = v105;
      sub_268F9B704();
      sub_268CD9D30(v115);
      v106 = sub_268F9AEF4();
      v117 = v107;
      MEMORY[0x26D62E360](v106);

      v120 = v631;
      v119 = v632;

      sub_268CD9D30(v118);
      v108 = sub_268F9AED4();
      v109 = v121;
      v110 = v108;
      v111 = v122;
      *v122 = v110;
      v111[1] = v112;
      (*(*(v109 - 8) + 104))();
      swift_willThrow();
      v413 = v123;
      return v408;
    }

    v187 = v188;
    v185 = v188;
    v628 = v188;

    sub_268F9A664();
    v186 = v627;

    if (v186)
    {
      v184 = v186;
      v181 = v186;
      v93 = sub_268DDA5D0();
      v179 = *v93;
      v180 = v93[1];

      v182 = sub_268F9A0A4();

      if (v182)
      {
        v178 = v182;
        v608[0] = v182;
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        v94 = v477;
        sub_268F9AF94();
        v177 = v94;
        if (v94)
        {
          goto LABEL_230;
        }

        sub_268CD7930(v608);
        v173 = sub_268F99F64();
        v174 = *(v173 - 8);
        v175 = v173 - 8;
        if ((*(v174 + 48))(v503, 1) != 1)
        {
          v168 = sub_268F99F44();
          v169 = v95;
          (*(v174 + 8))(v503, v173);
          v170 = v168;
          v171 = v169;
          v172 = v177;
          goto LABEL_197;
        }

        sub_268D9C0BC(v503);
        v183 = v177;
      }

      else
      {
        v183 = v477;
      }
    }

    else
    {
      v183 = v477;
    }

    v170 = 0;
    v171 = 0;
    v172 = v183;
LABEL_197:
    v165 = v172;
    v166 = v171;
    v167 = v170;
    v625 = v170;
    v626 = v171;
    sub_268D35D60(v501, v621);
    if (v621[3])
    {
      sub_268CDF978(v621, v622);

      v617 = v167;
      v618 = v166;

      if (v618)
      {
        *(v476 + 55) = *(v476 + 54);
      }

      else
      {
        v161 = v623;
        v162 = v624;
        v163 = __swift_project_boxed_opaque_existential_1(v622, v623);

        sub_268F9A664();
        v164 = v616;

        if (v164)
        {
          v160 = v164;
          v157 = v164;
          v158 = sub_268F99F04();

          v159 = v158;
        }

        else
        {
          v159 = 0;
        }

        v154 = v159;
        v155 = (*(v162 + 8))();
        v156 = v96;

        v619 = v155;
        v620 = v156;
        if (v618)
        {
          sub_268CD9D30(&v617);
        }
      }

      v152 = v619;
      v153 = v620;
      if (v620)
      {
        v150 = v152;
        v151 = v153;
        v147 = v153;
        v148 = v152;
        v614 = v152;
        v615 = v153;
        v612 = 0;
        v613 = 1;

        v149 = sub_268F9A654();

        if (v149)
        {
          v146 = v149;
          v145 = v149;
          sub_268F9A134();
        }

        else
        {
          (*(v491 + 56))(v485, 1, 1, v490);
        }

        if ((*(v491 + 48))(v485, 1, v490) == 1)
        {
          sub_268E30CA0(v485);
          v143 = 0;
          v144 = 1;
        }

        else
        {
          (*(v491 + 32))(v494, v485, v490);
          v138 = *sub_268DDAE04();

          (*(v491 + 16))(v498, v494, v490);
          v137 = type metadata accessor for INBoundedSettingValue(0);
          sub_268DDAD84();
          sub_268F9ADC4();
          v142 = v608[1];
          v141 = v609;

          v612 = v142;
          v613 = v141 & 1;
          v140 = *(v491 + 8);
          v139 = v491 + 8;
          v140(v498, v490);
          v140(v494, v490);
          v143 = v142;
          v144 = v141;
        }

        v136 = v144;
        v135 = v143;
        v131 = 0;
        v130 = sub_268D588E0();
        sub_268D291D4();

        v132 = sub_268F2B620(v148, v147, v131, v131);

        v133 = sub_268F9A654();

        v134 = sub_268E2B494(v133);

        v610 = v135;
        v611 = v136 & 1;
        if (v136)
        {
          v129 = 0;
        }

        else
        {
          v129 = v610;
        }

        v128 = sub_268DA961C(v132, v134, v129, 3, 0);

        __swift_destroy_boxed_opaque_existential_0(v622);

        v415 = v128;
        v416 = v165;
        return v415;
      }

      __swift_destroy_boxed_opaque_existential_0(v622);
    }

    else
    {
      sub_268D28414(v621);
    }

    v97 = sub_268DDA790();
    v125 = *v97;
    v126 = v97[1];

    v124 = sub_268F9A7E4();
    sub_268D91304();
    v127 = swift_allocError();
    sub_268E2AB74(v514, v125, v126, v98);

    swift_willThrow();

    v413 = v127;
    return v408;
  }

  v472 = v473;
  v470 = v473;
  v533 = v473;

  sub_268F9A664();
  v471 = v532;

  if (!v471)
  {
    v468 = v477;
    goto LABEL_41;
  }

  v469 = v471;
  v466 = v471;
  v60 = sub_268DDA5D0();
  v464 = *v60;
  v465 = v60[1];

  v467 = sub_268F9A0A4();

  if (!v467)
  {
    v468 = v477;
    goto LABEL_41;
  }

  v463 = v467;
  v516[0] = v467;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  v61 = v477;
  sub_268F9AF94();
  v462 = v61;
  if (v61)
  {
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
    return v408;
  }

  sub_268CD7930(v516);
  v458 = sub_268F99F64();
  v459 = *(v458 - 8);
  v460 = v458 - 8;
  if ((*(v459 + 48))(v513, 1) != 1)
  {
    v453 = sub_268F99F44();
    v454 = v62;
    (*(v459 + 8))(v513, v458);
    v455 = v453;
    v456 = v454;
    v457 = v462;
    goto LABEL_17;
  }

  sub_268D9C0BC(v513);
  v468 = v462;
LABEL_41:
  v455 = 0;
  v456 = 0;
  v457 = v468;
LABEL_17:
  v450 = v457;
  v451 = v456;
  v452 = v455;
  v530 = v455;
  v531 = v456;
  sub_268D35D60(v501, v526);
  if (v526[3])
  {
    sub_268CDF978(v526, v527);

    *&v524 = v452;
    *(&v524 + 1) = v451;

    if (*(&v524 + 1))
    {
      v525 = v524;
    }

    else
    {
      v446 = v528;
      v447 = v529;
      v448 = __swift_project_boxed_opaque_existential_1(v527, v528);

      sub_268F9A664();
      v449 = v523;

      if (v449)
      {
        v445 = v449;
        v442 = v449;
        v443 = sub_268F99F04();

        v444 = v443;
      }

      else
      {
        v444 = 0;
      }

      v440 = v444;
      *&v441 = (*(v447 + 8))();
      *(&v441 + 1) = v63;

      v525 = v441;
      if (*(&v524 + 1))
      {
        sub_268CD9D30(&v524);
      }
    }

    v439 = v525;
    if (!*(&v525 + 1))
    {
      __swift_destroy_boxed_opaque_existential_0(v527);
      goto LABEL_40;
    }

    v438 = v439;
    v435 = *(&v439 + 1);
    v436 = v439;
    v522 = v439;
    v520 = 0;
    v521 = 1;

    v437 = sub_268F9A654();

    if (v437)
    {
      v434 = v437;
      v433 = v437;
      sub_268F9A134();
    }

    else
    {
      (*(v491 + 56))(v489, 1, 1, v490);
    }

    if ((*(v491 + 48))(v489, 1, v490) == 1)
    {
      sub_268E30CA0(v489);
      v431 = 0;
      v432 = 1;
    }

    else
    {
      (*(v491 + 32))(v500, v489, v490);
      v426 = *sub_268DDAE04();

      (*(v491 + 16))(v498, v500, v490);
      v425 = type metadata accessor for INBoundedSettingValue(0);
      sub_268DDAD84();
      sub_268F9ADC4();
      v430 = v516[1];
      v429 = v517;

      v520 = v430;
      v521 = v429 & 1;
      v428 = *(v491 + 8);
      v427 = v491 + 8;
      v428(v498, v490);
      v428(v500, v490);
      v431 = v430;
      v432 = v429;
    }

    v424 = v432;
    v423 = v431;
    v419 = 0;
    v418 = sub_268D588E0();
    sub_268D291D4();

    v420 = sub_268F2B620(v436, v435, v419, v419);

    v421 = sub_268F9A654();

    v422 = sub_268E2B494(v421);

    v518 = v423;
    v519 = v424 & 1;
    if (v424)
    {
      v417 = 0;
    }

    else
    {
      v417 = v518;
    }

    v414 = sub_268DA961C(v420, v422, v417, 1, 0);

    __swift_destroy_boxed_opaque_existential_0(v527);

    v415 = v414;
    v416 = v450;
    return v415;
  }

  sub_268D28414(v526);
LABEL_40:
  v64 = sub_268DDA790();
  v410 = *v64;
  v411 = v64[1];

  v409 = sub_268F9A7E4();
  sub_268D91304();
  v412 = swift_allocError();
  sub_268E2AB74(v514, v410, v411, v65);

  swift_willThrow();

  v413 = v412;
  return v408;
}

uint64_t sub_268E28D5C(uint64_t a1)
{
  v28 = a1;
  v24 = sub_268E30BB4;
  v30 = 0;
  v25 = 0;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v1, v2, v3);
  v27 = &v9 - v26;
  v30 = v4;

  if (!v28)
  {
    goto LABEL_12;
  }

  v23 = v28;
  v21 = v28;
  v5 = sub_268DDA5D0();
  v19 = *v5;
  v20 = v5[1];

  v22 = sub_268F9A0A4();

  if (!v22)
  {
    goto LABEL_12;
  }

  v18 = v22;
  v6 = v25;
  v29 = v22;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v6)
  {
    sub_268CD7930(&v29);
    v14 = sub_268F99F64();
    v15 = *(v14 - 8);
    v16 = v14 - 8;
    if ((*(v15 + 48))(v27, 1) != 1)
    {
      v10 = sub_268F99F44();
      v11 = v8;
      (*(v15 + 8))(v27, v14);
      v12 = v10;
      v13 = v11;
      return v12;
    }

    sub_268D9C0BC(v27);
LABEL_12:
    v12 = 0;
    v13 = 0;
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_268E28FC8(uint64_t a1)
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268E2905C(uint64_t a1, uint64_t a2, void *a3)
{
  v154 = a1;
  v153 = a2;
  v162 = a3;
  v158 = "Falling back on SRR.";
  v139 = sub_268E30D50;
  v140 = sub_268CD7608;
  v141 = sub_268CD7600;
  v142 = sub_268CD7600;
  v143 = sub_268CD7614;
  v144 = sub_268E2A9EC;
  v145 = sub_268E30D48;
  v146 = sub_268CD7608;
  v147 = sub_268CD7600;
  v148 = sub_268CD7600;
  v149 = sub_268CD7614;
  v150 = "Couldn't get user entity from SRR.";
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v176 = 0;
  v169 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v151 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v152 = &v42[-v151];
  v155 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v154, v153, v162, v7);
  v156 = &v42[-v155];
  v183 = v8;
  v182 = v9;
  v181 = v10;
  v159 = sub_268F9B284();
  v161 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v161);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v160 = sub_268F9B734();
  sub_268F9AC14(v159, &dword_268CBE000, v161, v158, 20, 2);

  MEMORY[0x277D82BD8](v161);
  sub_268D35D60(v162, v177);
  if (!v177[3])
  {
    sub_268D28414(v177);
LABEL_30:
    v43 = sub_268F9B284();
    v45 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v45);
    v46 = 0;
    v44 = sub_268F9B734();
    sub_268F9AC14(v43, &dword_268CBE000, v45, v150, 34, 2);

    MEMORY[0x277D82BD8](v45);
    v40 = sub_268DDA950();
    v48 = *v40;
    v49 = v40[1];

    v47 = sub_268F9A7E4();
    sub_268D91304();
    v51 = swift_allocError();
    sub_268E2AB74(v154, v48, v49, v41);

    swift_willThrow();
    return v50;
  }

  p_dst = &__dst;
  sub_268CDF978(v177, &__dst);
  v133 = v179;
  v134 = v180;
  __swift_project_boxed_opaque_existential_1(p_dst, v179);
  (*(v134 + 16))(v153, v133);
  v135 = sub_268F9ACE4();
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  if ((*(v136 + 48))(v156, 1) == 1)
  {
    sub_268D59D2C(v156);
    v131 = 0;
  }

  else
  {
    v130 = sub_268F9ACD4();
    (*(v136 + 8))(v156, v135);
    v131 = v130;
  }

  v129 = v131;
  if (!v131)
  {
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    goto LABEL_30;
  }

  v128 = v129;
  v126 = v129;
  v176 = v129;

  sub_268F99EA4();
  sub_268F9A2D4();

  v127 = v175;
  if (!v175)
  {
    v76 = sub_268F9B284();
    v75 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v75);

    v66 = 7;
    v67 = swift_allocObject();
    *(v67 + 16) = v153;
    v64 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v65 = 32;
    v28 = swift_allocObject();
    v29 = v67;
    v68 = v28;
    *(v28 + 16) = v145;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v68;
    v72 = v30;
    *(v30 + 16) = v146;
    *(v30 + 24) = v31;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v71 = sub_268F9B734();
    v73 = v32;

    v33 = v69;
    v34 = v73;
    *v73 = v147;
    v34[1] = v33;

    v35 = v70;
    v36 = v73;
    v73[2] = v148;
    v36[3] = v35;

    v37 = v72;
    v38 = v73;
    v73[4] = v149;
    v38[5] = v37;
    sub_268CD0F7C();

    if (os_log_type_enabled(v75, v76))
    {
      v57 = sub_268F9B3A4();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v58 = sub_268CD5448(0, v56, v56);
      v59 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v60 = &v174;
      v174 = v57;
      v61 = &v173;
      v173 = v58;
      v62 = &v172;
      v172 = v59;
      sub_268CD549C(2, &v174);
      sub_268CD549C(1, v60);
      v39 = v138;
      v170 = v147;
      v171 = v69;
      sub_268CD54B0(&v170, v60, v61, v62);
      v63 = v39;
      if (v39)
      {

        __break(1u);
      }

      else
      {
        v170 = v148;
        v171 = v70;
        sub_268CD54B0(&v170, &v174, &v173, &v172);
        v54 = 0;
        v170 = v149;
        v171 = v72;
        sub_268CD54B0(&v170, &v174, &v173, &v172);
        v53 = 0;
        _os_log_impl(&dword_268CBE000, v75, v76, "Could not retrieve user entity using key %s.", v57, 0xCu);
        sub_268CD54FC(v58, 0, v56);
        sub_268CD54FC(v59, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v55 = v53;
      }
    }

    else
    {

      v55 = v138;
    }

    v52 = v55;
    MEMORY[0x277D82BD8](v75);

    __swift_destroy_boxed_opaque_existential_0(&__dst);
    v80 = 0;
    v81 = 0;
    v82 = v52;
    return v80;
  }

  v125 = v127;
  v113 = v127;
  v169 = v127;
  v124 = sub_268F9B284();
  v123 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v123);

  v112 = 17;
  v115 = 7;
  v117 = swift_allocObject();
  *(v117 + 16) = 32;
  v118 = swift_allocObject();
  *(v118 + 16) = 8;
  v114 = 32;
  v11 = swift_allocObject();
  v12 = v113;
  v116 = v11;
  *(v11 + 16) = v139;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v116;
  v120 = v13;
  *(v13 + 16) = v140;
  *(v13 + 24) = v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v119 = sub_268F9B734();
  v121 = v15;

  v16 = v117;
  v17 = v121;
  *v121 = v141;
  v17[1] = v16;

  v18 = v118;
  v19 = v121;
  v121[2] = v142;
  v19[3] = v18;

  v20 = v120;
  v21 = v121;
  v121[4] = v143;
  v21[5] = v20;
  sub_268CD0F7C();

  if (os_log_type_enabled(v123, v124))
  {
    v105 = sub_268F9B3A4();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v106 = sub_268CD5448(0, v104, v104);
    v107 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v108 = &v167;
    v167 = v105;
    v109 = &v166;
    v166 = v106;
    v110 = &v165;
    v165 = v107;
    sub_268CD549C(2, &v167);
    sub_268CD549C(1, v108);
    v22 = v138;
    v163 = v141;
    v164 = v117;
    sub_268CD54B0(&v163, v108, v109, v110);
    v111 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v163 = v142;
      v164 = v118;
      sub_268CD54B0(&v163, &v167, &v166, &v165);
      v102 = 0;
      v163 = v143;
      v164 = v120;
      sub_268CD54B0(&v163, &v167, &v166, &v165);
      v101 = 0;
      _os_log_impl(&dword_268CBE000, v123, v124, "Got user entity %s.", v105, 0xCu);
      sub_268CD54FC(v106, 0, v104);
      sub_268CD54FC(v107, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v103 = v101;
    }
  }

  else
  {

    v103 = v138;
  }

  v97 = v103;
  MEMORY[0x277D82BD8](v123);
  v23 = sub_268DDA6B0();
  v98 = *v23;
  v99 = v23[1];

  v100 = sub_268F9A0A4();

  if (!v100)
  {
    v95 = v97;
    goto LABEL_22;
  }

  v96 = v100;
  v168 = v100;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  v24 = v97;
  result = sub_268F9AF94();
  v94 = v24;
  if (!v24)
  {
    sub_268CD7930(&v168);
    v90 = sub_268F99F64();
    v91 = *(v90 - 8);
    v92 = v90 - 8;
    if ((*(v91 + 48))(v152, 1) != 1)
    {
      v83 = sub_268F99F44();
      v84 = v26;
      (*(v91 + 8))(v152, v90);
      v85 = sub_268F9AE94();
      v86 = v27;

      v87 = v85;
      v88 = v86;
      v89 = v94;
LABEL_21:
      v79 = v89;
      v78 = v88;
      v77 = v87;

      __swift_destroy_boxed_opaque_existential_0(&__dst);
      v80 = v77;
      v81 = v78;
      v82 = v79;
      return v80;
    }

    sub_268D9C0BC(v152);
    v95 = v94;
LABEL_22:
    v87 = 0;
    v88 = 0;
    v89 = v95;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_268E2A500(uint64_t a1)
{

  if (!a1)
  {
    return 0;
  }

  if (sub_268F9A364() && (v19 = sub_268F9A3C4(), , v19))
  {
    sub_268F9A224();

    v17 = sub_268F9A724();

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    sub_268DAC8A8();
    v15 = sub_268DAC90C(v18);

    return v15;
  }

  else
  {
    if (sub_268F9A374() && (v14 = sub_268F9A234(), , v14))
    {
      v12 = sub_268F9A244();

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      sub_268F99F04();

      sub_268F9A504();
      sub_268F9A2D4();

      if (v21)
      {
        if (sub_268F9A4E4())
        {
          v8 = sub_268F9A1A4();
          v9 = v1;

          v10 = v8;
          v11 = v9;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        if ((v11 & 1) == 0)
        {
          v7 = sub_268E2DF88(v21, v10);

          return v7;
        }
      }

      else
      {
      }
    }

    if (sub_268F9A364() && (v6 = sub_268F9A3D4(), , v6))
    {
      v4 = sub_268F9A254();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v3 = sub_268E2FA5C(v5);

      return v3;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_268E2A974(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268E2A9EC(uint64_t a1)
{
  v11[1] = a1;
  v5 = *sub_268E174CC();

  v11[0] = v5;
  v7 = sub_268F99F54();
  v8 = v1;
  if (v1)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_268F9AEF4();
    v10 = v2;
  }

  v6[0] = v9;
  v6[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268DA6BFC();
  v4 = sub_268F9AFC4();
  sub_268CD9D30(v6);
  sub_268CD7930(v11);
  return v4 & 1;
}

uint64_t sub_268E2AB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40[4] = a1;
  v40[2] = a2;
  v40[3] = a3;
  v33 = sub_268F9B294();
  v4 = sub_268DC7EA8();
  v32 = *v4;
  MEMORY[0x277D82BE0](*v4);

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268E30D58;
  *(v22 + 24) = a1;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_268CD7608;
  *(v27 + 24) = v22;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268DA6D94;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_268CD7608;
  *(v30 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v31 = v5;

  *v31 = sub_268CD7600;
  v31[1] = v25;

  v31[2] = sub_268CD7600;
  v31[3] = v26;

  v31[4] = sub_268CD7614;
  v31[5] = v27;

  v31[6] = sub_268CD7600;
  v31[7] = v28;

  v31[8] = sub_268CD7600;
  v31[9] = v29;

  v31[10] = sub_268CD7614;
  v31[11] = v30;
  sub_268CD0F7C();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_268F9B3A4();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v16 = sub_268CD5448(0, v14, v14);
    v17 = sub_268CD5448(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v38 = buf;
    v37 = v16;
    v36 = v17;
    sub_268CD549C(2, &v38);
    sub_268CD549C(2, &v38);
    v34 = sub_268CD7600;
    v35 = v25;
    sub_268CD54B0(&v34, &v38, &v37, &v36);
    v34 = sub_268CD7600;
    v35 = v26;
    sub_268CD54B0(&v34, &v38, &v37, &v36);
    v34 = sub_268CD7614;
    v35 = v27;
    sub_268CD54B0(&v34, &v38, &v37, &v36);
    v34 = sub_268CD7600;
    v35 = v28;
    sub_268CD54B0(&v34, &v38, &v37, &v36);
    v34 = sub_268CD7600;
    v35 = v29;
    sub_268CD54B0(&v34, &v38, &v37, &v36);
    v34 = sub_268CD7614;
    v35 = v30;
    sub_268CD54B0(&v34, &v38, &v37, &v36);
    _os_log_impl(&dword_268CBE000, v32, v33, "NLToSiriKitIntentConverter could not convert UsoTask %s to %s because the setting name is missing.", buf, 0x16u);
    sub_268CD54FC(v16, 0, v14);
    sub_268CD54FC(v17, 2, MEMORY[0x277D84F70] + 8);
    sub_268F9B384();
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v32);
  v40[0] = sub_268F9B724();
  v40[1] = v6;
  v7 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v7);

  v39[2] = a1;
  sub_268F9A6E4();
  v39[0] = sub_268F9AE64();
  v39[1] = v8;
  sub_268F9B704();
  sub_268CD9D30(v39);
  v9 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v9);

  sub_268CD9D30(v40);
  *a4 = sub_268F9AED4();
  a4[1] = v10;
  v13 = *MEMORY[0x277D61E00];
  v11 = sub_268F9A7E4();
  return (*(*(v11 - 8) + 104))(a4, v13);
}

uint64_t sub_268E2B3F8(uint64_t a1)
{

  sub_268F99EA4();
  return sub_268F9AE64();
}

uint64_t sub_268E2B440(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD138, &qword_268FA3360);
  return sub_268F9AE64();
}

id sub_268E2B494(uint64_t a1)
{
  v64 = a1;
  v77 = 0;
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v62 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0C8, &qword_268FA32A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64, v1, v2, v3);
  v63 = &v11 - v62;
  v77 = v4;

  if (v64)
  {
    v61 = v64;
    v58 = v64;
    v59 = sub_268F99F04();

    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v57 = v60;
  sub_268F9A2C4();

  if (v76[3])
  {
    sub_268F9A574();
    if (swift_dynamicCast())
    {
      v56 = v65;
    }

    else
    {
      v56 = 0;
    }

    v55 = v56;
  }

  else
  {
    sub_268D28414(v76);
    v55 = 0;
  }

  v54 = v55;
  if (v55)
  {
    v53 = v54;
    v51 = v54;
    v73 = v54;
    v5 = sub_268F9A554();
    v52 = v5;
    if (v5)
    {
      v50 = v52;
      v47 = v52;
      v48 = sub_268F99F04();

      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v46 = v49;
    sub_268F9A2C4();

    if (v72[3])
    {
      sub_268F9A194();
      if (swift_dynamicCast())
      {
        v45 = v66;
      }

      else
      {
        v45 = 0;
      }

      v44 = v45;
    }

    else
    {
      sub_268D28414(v72);
      v44 = 0;
    }

    v43 = v44;
    if (v44)
    {
      v42 = v43;
      v40 = v43;
      v71 = v43;
      v6 = sub_268F9A564();
      v41 = v6;
      if (v6)
      {
        v39 = v41;
        v36 = v41;
        v37 = sub_268F99F04();

        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v35 = v38;
      sub_268F9A2C4();

      if (v70[3])
      {
        sub_268F9A1B4();
        if (swift_dynamicCast())
        {
          v34 = v67;
        }

        else
        {
          v34 = 0;
        }

        v33 = v34;
      }

      else
      {
        sub_268D28414(v70);
        v33 = 0;
      }

      v32 = v33;
      if (v33)
      {
        v31 = v32;
        v29 = v32;
        v69 = v32;
        v30 = sub_268F9A1A4();
        if ((v7 & 1) == 0)
        {
          v28 = v30;
          v25 = v30;
          v68 = v30;
          v27 = 0;
          v24 = sub_268DD26C8();
          sub_268D34FD4();
          v26 = sub_268E2BC40(v25);
          sub_268F9A164();
          v8 = sub_268F9A174();
          v23 = (*(*(v8 - 8) + 48))(v63, 1) != 1;
          v22 = v23;
          sub_268E30D60(v63);
          v21 = v22;
          v19 = sub_268E3E3F0(v26, v21);

          return v19;
        }
      }
    }

    else
    {
    }
  }

  if (v64)
  {
    v18 = v64;
    v15 = v64;
    v16 = sub_268F99F04();

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v12 = v17;
  HIDWORD(v11) = sub_268E2BC80();
  v9 = sub_268E2BC90();
  v75 = sub_268E3EA58(v12, *(&v11 + 1), v9);
  v13 = v75;
  v14 = BYTE4(v75);

  LODWORD(v74) = v13;
  BYTE4(v74) = v14 & 1;
  return sub_268E2BC98(v74);
}

id sub_268E2BC98(uint64_t a1)
{
  v4 = *&a1;
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  sub_268DD26C8();
  sub_268D34FD4();
  if ((LODWORD(v4) >> 23) == 255)
  {
    sub_268F9B584();
    __break(1u);
  }

  if (v4 <= -9.2234e18)
  {
    sub_268F9B584();
    __break(1u);
  }

  if (v4 >= 9.2234e18)
  {
    sub_268F9B584();
    __break(1u);
  }

  v1 = sub_268F2B5E0(v4);
  return sub_268E3E3F0(v1, 1);
}

uint64_t sub_268E2BED8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_268F99F44();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_268E2BF28(const void *a1)
{
  v69 = a1;
  v79 = 0;
  v75 = sub_268F9A4D4();
  v72 = *(v75 - 8);
  v73 = v75 - 8;
  v49 = (v72[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75, v1, v2, v3);
  v50 = &v30 - v49;
  v51 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30 - v49, v5, v6, v7);
  v52 = &v30 - v51;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0D0, &qword_268FA32B0);
  v53 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68, v8, v9, v10);
  v54 = &v30 - v53;
  v55 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v14, v15);
  v76 = &v30 - v55;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0B8, &qword_268FA3298);
  v61 = *(*(v16 - 8) + 64);
  v56 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v17, v75, v18);
  v57 = &v30 - v56;
  v58 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30 - v56, v19, v20, v21);
  v59 = &v30 - v58;
  v60 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30 - v58, v22, v23, v24);
  v62 = &v30 - v60;
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = MEMORY[0x28223BE20](&v30 - v60, v25, v26, v27);
  v71 = &v30 - v63;
  v79 = v69;
  v64 = v72[13];
  v65 = v72 + 13;
  v64(v28);
  v66 = v72[7];
  v67 = v72 + 7;
  v74 = 1;
  v66(v71, 0);
  v70 = *(v68 + 48);
  sub_268E30E08(v69, v76);
  sub_268E30E08(v71, &v76[v70]);
  v77 = v72[6];
  v78 = v72 + 6;
  if (v77(v76, v74, v75) == 1)
  {
    if (v77(&v76[v70], 1, v75) == 1)
    {
      sub_268E30BF8(v76);
      v48 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_268E30E08(v76, v62);
    if (v77(&v76[v70], 1, v75) != 1)
    {
      v44 = v72[4];
      v43 = v72 + 4;
      v44(v52, v62, v75);
      v44(v50, &v76[v70], v75);
      sub_268E3105C();
      v47 = sub_268F9AE04();
      v46 = v72[1];
      v45 = v72 + 1;
      v46(v50, v75);
      v46(v52, v75);
      sub_268E30BF8(v76);
      v48 = v47;
      goto LABEL_7;
    }

    (v72[1])(v62, v75);
  }

  sub_268E30F30(v76);
  v48 = 0;
LABEL_7:
  v42 = v48;
  sub_268E30BF8(v71);
  if (v42)
  {
    return 1;
  }

  (v64)(v59, *MEMORY[0x277D5F008], v75);
  v40 = 1;
  v66(v59, 0);
  v39 = &v54[*(v68 + 48)];
  sub_268E30E08(v69, v54);
  sub_268E30E08(v59, v39);
  if (v77(v54, v40, v75) == 1)
  {
    if (v77(v39, 1, v75) != 1)
    {
      goto LABEL_20;
    }

    sub_268E30BF8(v54);
    v38 = 1;
  }

  else
  {
    sub_268E30E08(v54, v57);
    if (v77(v39, 1, v75) == 1)
    {
      (v72[1])(v57, v75);
LABEL_20:
      sub_268E30F30(v54);
      v38 = 0;
      goto LABEL_18;
    }

    v34 = v72[4];
    v33 = v72 + 4;
    v34(v52, v57, v75);
    v34(v50, v39, v75);
    sub_268E3105C();
    v37 = sub_268F9AE04();
    v36 = v72[1];
    v35 = v72 + 1;
    v36(v50, v75);
    v36(v52, v75);
    sub_268E30BF8(v54);
    v38 = v37;
  }

LABEL_18:
  v32 = v38;
  sub_268E30BF8(v59);
  if (v32)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

id sub_268E2C7C8(uint64_t a1)
{
  v236 = v273;
  v259 = a1;
  v237 = sub_268E2DD58;
  v238 = sub_268E2BED8;
  v239 = "appName = %@";
  v240 = sub_268DA6D00;
  v241 = sub_268CD7608;
  v242 = sub_268CD7600;
  v243 = sub_268CD7600;
  v244 = sub_268CD7614;
  v245 = "setting appIdentifier = %@";
  v246 = "setting appName = %@";
  v292 = 0;
  v291 = 0;
  v289 = 0;
  v290 = 0;
  v288 = 0;
  v283[0] = 0;
  v283[1] = 0;
  v247 = 0;
  v280 = 0;
  v265 = 0;
  v266 = 0;
  v248 = sub_268F99F64();
  v250 = *(v248 - 8);
  v249 = v248 - 8;
  v251 = v250;
  v252 = *(v250 + 64);
  v253 = (v252 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v248, v1, v2, v3);
  v254 = &v73 - v253;
  v255 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v73 - v253, v5, v6, v7);
  v256 = &v73 - v255;
  v292 = &v73 - v255;
  v257 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v259, v8, v9, v10);
  v258 = &v73 - v257;
  v291 = v11;

  if (v259)
  {
    v235 = v259;
    v232 = v259;
    sub_268F9AEF4();
    v231 = v12;
    v233 = sub_268F99EF4();

    v234 = v233;
  }

  else
  {
    v234 = 0;
  }

  v230 = v234;
  if (!v234)
  {
LABEL_58:

    if (v259)
    {
      v86 = v259;
      v81 = v259;
      v82 = sub_268F9A0E4();
      v83 = v72;

      v84 = v82;
      v85 = v83;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v79 = v85;
    v80 = v84;
    if (!v85)
    {
      return 0;
    }

    v77 = v80;
    v78 = v79;
    v76 = v79;
    v75 = v80;
    v289 = v80;
    v290 = v79;
    v74 = 0;
    sub_268DA9760();
    return sub_268DA9564(v74, v74, v74, v74, v75, v76);
  }

  v229 = v230;
  v226 = v230;
  v288 = v230;
  v286 = 0;
  v287 = 0;
  v284 = 0;
  v285 = 0;

  v282[2] = v226;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268E30B2C();
  sub_268F9B254();
  for (i = v247; ; i = v225)
  {
    v225 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0E0, &unk_268FA32B8);
    sub_268F9B564();
    if ((*(v250 + 48))(v258, 1, v248) == 1)
    {
      break;
    }

    v221 = *(v250 + 32);
    v222 = (v250 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v221(v256, v258, v248);
    v223 = sub_268F99F54();
    v224 = v13;
    if (v13)
    {
      v219 = v223;
      v220 = v224;
      v214 = v224;
      v212 = v223;
      v265 = v223;
      v266 = v224;
      v14 = sub_268F9AEF4();
      v213 = v15;
      v215 = MEMORY[0x26D62DB50](v212, v214, v14);

      v216 = v214;
      v217 = v221;
      v218 = v222;
      if (v215)
      {
        v197 = v218;
        v198 = v217;
        v194 = v216;
        v211 = sub_268F9B284();
        v210 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v210);
        v195 = v251;
        (*(v250 + 16))(v254, v256, v248);
        v196 = (*(v195 + 80) + 16) & ~*(v195 + 80);
        v201 = 7;
        v202 = swift_allocObject();
        v198(v202 + v196, v254, v248);
        v199 = 17;
        v204 = swift_allocObject();
        *(v204 + 16) = 32;
        v205 = swift_allocObject();
        *(v205 + 16) = 8;
        v200 = 32;
        v16 = swift_allocObject();
        v17 = v202;
        v203 = v16;
        *(v16 + 16) = v240;
        *(v16 + 24) = v17;
        v18 = swift_allocObject();
        v19 = v203;
        v207 = v18;
        *(v18 + 16) = v241;
        *(v18 + 24) = v19;
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        v206 = sub_268F9B734();
        v208 = v20;

        v21 = v204;
        v22 = v208;
        *v208 = v242;
        v22[1] = v21;

        v23 = v205;
        v24 = v208;
        v208[2] = v243;
        v24[3] = v23;

        v25 = v207;
        v26 = v208;
        v208[4] = v244;
        v26[5] = v25;
        sub_268CD0F7C();

        if (os_log_type_enabled(v210, v211))
        {
          v27 = v225;
          v187 = sub_268F9B3A4();
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v188 = sub_268CD5448(0, v186, v186);
          v189 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v190 = &v264;
          v264 = v187;
          v191 = &v263;
          v263 = v188;
          v192 = &v262;
          v262 = v189;
          sub_268CD549C(2, &v264);
          sub_268CD549C(1, v190);
          v260 = v242;
          v261 = v204;
          sub_268CD54B0(&v260, v190, v191, v192);
          v193 = v27;
          if (v27)
          {

            __break(1u);
          }

          else
          {
            v260 = v243;
            v261 = v205;
            sub_268CD54B0(&v260, &v264, &v263, &v262);
            v185 = 0;
            v260 = v244;
            v261 = v207;
            sub_268CD54B0(&v260, &v264, &v263, &v262);
            _os_log_impl(&dword_268CBE000, v210, v211, "setting appIdentifier = %s", v187, 0xCu);
            sub_268CD54FC(v188, 0, v186);
            sub_268CD54FC(v189, 1, MEMORY[0x277D84F70] + 8);
            sub_268F9B384();
          }
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v210);
        v180 = 0;
        v179 = sub_268DA9760();
        v181 = sub_268F99F14();
        v182 = v28;
        v29 = sub_268F99F44();
        v183 = sub_268DA9564(v181, v182, v180, v180, v29, v30);

        (*(v250 + 8))(v256, v248);
        sub_268CD7930(v283);
        sub_268CD9D30(&v284);
        sub_268CD9D30(&v286);

        return v183;
      }
    }

    v175 = sub_268F99F14();
    v177 = v31;
    v32 = sub_268F9AEF4();
    v176 = v33;
    v178 = MEMORY[0x26D62DB50](v175, v177, v32);

    if (v178)
    {
      v172 = sub_268F99F54();
      v173 = v34;

      v171 = sub_268F9AEF4();
      v174 = v35;

      v270[0] = v172;
      v270[1] = v173;
      *&v271 = v171;
      *(&v271 + 1) = v174;
      if (v173)
      {
        sub_268D28874(v270, &v269);
        if (*(&v271 + 1))
        {
          v168 = &v268;
          v268 = v269;
          v167 = &v267;
          v267 = v271;
          v169 = MEMORY[0x26D62DB50](v269, *(&v269 + 1), v271, *(&v271 + 1));
          sub_268CD9D30(v167);
          sub_268CD9D30(v168);
          sub_268CD9D30(v270);
          v170 = v169;
LABEL_25:
          v165 = v170;

          v166 = v165;
          goto LABEL_29;
        }

        sub_268CD9D30(&v269);
      }

      else if (!*(&v271 + 1))
      {
        sub_268CD9D30(v270);
        v170 = 1;
        goto LABEL_25;
      }

      sub_268D28550(v270);
      v170 = 0;
      goto LABEL_25;
    }

    v166 = 0;
LABEL_29:
    if (v166)
    {
      v154 = sub_268F99F44();
      v155 = v36;

      v286 = v154;
      v287 = v155;

      v162 = sub_268F9B284();
      v164 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v164);
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v161 = sub_268F9B734();
      v159 = v37;
      v156 = v272;
      v272[0] = v154;
      v272[1] = v155;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      v157 = sub_268F9AE64();
      v158 = v38;
      v159[3] = MEMORY[0x277D837D0];
      v39 = sub_268CDD224();
      v40 = v157;
      v41 = v158;
      v42 = v159;
      v159[4] = v39;
      *v42 = v40;
      v42[1] = v41;
      sub_268CD0F7C();
      v163 = v43;
      sub_268F9AC14(v162, &dword_268CBE000, v164, v245, 26, 2);

      MEMORY[0x277D82BD8](v164);
    }

    v150 = sub_268F99F14();
    v152 = v44;
    v45 = sub_268F9AEF4();
    v151 = v46;
    v153 = MEMORY[0x26D62DB50](v150, v152, v45);

    if (v153)
    {
      v147 = sub_268F99F54();
      v148 = v48;

      v146 = sub_268F9AEF4();
      v149 = v49;

      v276[0] = v147;
      v276[1] = v148;
      v276[2] = v146;
      v277 = v149;
      if (v148)
      {
        sub_268D28874(v276, v275);
        if (v277)
        {
          v50 = v236;
          v51 = *(v236 + 2);
          v143 = v274;
          *(v236 + 1) = v51;
          v52 = v50[4];
          v142 = v273;
          *v50 = v52;
          v144 = MEMORY[0x26D62DB50](v274[0], v274[1], v273[0], v273[1]);
          sub_268CD9D30(v142);
          sub_268CD9D30(v143);
          sub_268CD9D30(v276);
          v145 = v144;
LABEL_38:
          v140 = v145;

          v141 = v140;
          goto LABEL_42;
        }

        sub_268CD9D30(v275);
      }

      else if (!v277)
      {
        sub_268CD9D30(v276);
        v145 = 1;
        goto LABEL_38;
      }

      sub_268D28550(v276);
      v145 = 0;
      goto LABEL_38;
    }

    v141 = 0;
LABEL_42:
    if (v141)
    {
      v129 = sub_268F99F44();
      v130 = v53;

      v284 = v129;
      v285 = v130;

      v137 = sub_268F9B284();
      v139 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v139);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v136 = sub_268F9B734();
      v134 = v54;
      v131 = v278;
      v278[0] = v129;
      v278[1] = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      v132 = sub_268F9AE64();
      v133 = v55;
      v134[3] = MEMORY[0x277D837D0];
      v56 = sub_268CDD224();
      v57 = v132;
      v58 = v133;
      v59 = v134;
      v134[4] = v56;
      *v59 = v57;
      v59[1] = v58;
      sub_268CD0F7C();
      v138 = v60;
      sub_268F9AC14(v137, &dword_268CBE000, v139, v246, 20, 2);

      v47 = MEMORY[0x277D82BD8](v139);
    }

    (*(v250 + 8))(v256, v248, v47);
  }

  sub_268CD7930(v283);
  v127 = v286;
  v128 = v287;

  v282[0] = v127;
  v282[1] = v128;
  v126 = v128 != 0;
  v125 = v126;
  sub_268CD9D30(v282);
  if (v125)
  {
    v119 = 0;
    sub_268DA9760();
    v123 = &v286;
    v117 = v286;
    v118 = v287;

    v122 = &v284;
    v120 = v284;
    v121 = v285;

    v124 = sub_268DA9564(v117, v118, v119, v119, v120, v121);
    sub_268CD9D30(v122);
    sub_268CD9D30(v123);

    return v124;
  }

  v61 = v225;

  v281[1] = v226;
  sub_268E310DC();
  result = sub_268F9B514();
  v115 = v61;
  v116 = result;
  if (v61)
  {
    __break(1u);
    __break(1u);
    return result;
  }

  v281[0] = v116;
  sub_268DA5FC0();
  v114 = sub_268F9AF84();
  v112 = v114;
  sub_268CD7930(v281);
  v280 = v112;
  v279[2] = v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
  sub_268E03530();
  if (sub_268F9B244())
  {

    sub_268CD9D30(&v284);
    sub_268CD9D30(&v286);

    goto LABEL_58;
  }

  v107 = sub_268F9B284();
  v108 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v110 = sub_268F9B734();
  v111 = v63;

  if (v259)
  {
    v106 = v259;
    v101 = v259;
    v102 = sub_268F9A0E4();
    v103 = v64;

    v104 = v102;
    v105 = v103;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v94 = v279;
  v279[0] = v104;
  v279[1] = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v95 = sub_268F9AE64();
  v96 = v65;
  v111[3] = MEMORY[0x277D837D0];
  v66 = sub_268CDD224();
  v67 = v95;
  v68 = v96;
  v69 = v111;
  v111[4] = v66;
  *v69 = v67;
  v69[1] = v68;
  sub_268CD0F7C();
  v97 = v70;
  sub_268F9AC14(v107, &dword_268CBE000, v108, v239, 12, 2);

  MEMORY[0x277D82BD8](v108);
  v98 = sub_268DA9760();
  v99 = v286;
  v100 = v287;

  if (v259)
  {
    v93 = v259;
    v88 = v259;
    v89 = sub_268F9A0E4();
    v90 = v71;

    v91 = v89;
    v92 = v90;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v87 = sub_268DA9564(v99, v100, 0, 0, v91, v92);

  sub_268CD9D30(&v284);
  sub_268CD9D30(&v286);

  return v87;
}

uint64_t sub_268E2DD58(uint64_t a1)
{
  v21 = a1;
  v11 = sub_268F99F54();
  v12 = v1;

  v10 = sub_268F9AEF4();
  v13 = v2;

  v19[0] = v11;
  v19[1] = v12;
  *&v20 = v10;
  *(&v20 + 1) = v13;
  if (v12)
  {
    sub_268D28874(v19, &v16);
    if (*(&v20 + 1))
    {
      v15 = v16;
      v14 = v20;
      v8 = MEMORY[0x26D62DB50](v16, *(&v16 + 1), v20, *(&v20 + 1));
      sub_268CD9D30(&v14);
      sub_268CD9D30(&v15);
      sub_268CD9D30(v19);
      v9 = v8;
      goto LABEL_7;
    }

    sub_268CD9D30(&v16);
    goto LABEL_9;
  }

  if (*(&v20 + 1))
  {
LABEL_9:
    sub_268D28550(v19);
    v9 = 0;
    goto LABEL_7;
  }

  sub_268CD9D30(v19);
  v9 = 1;
LABEL_7:

  if (v9)
  {
    v18[0] = sub_268F99F44();
    v18[1] = v3;
    v17[0] = sub_268F9AEF4();
    v17[1] = v4;
    sub_268D58980();
    v6 = sub_268F9B3F4();
    sub_268CD9D30(v17);
    sub_268CD9D30(v18);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_268E2DF88(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v78 = 0;
  v68 = sub_268F99214();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v72 = &v47 - v71;
  v73 = sub_268F992F4();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v6, v7, v8);
  v77 = &v47 - v76;
  v79 = sub_268F99314();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v9, v10, v11);
  v83 = &v47 - v82;
  v84 = sub_268F9A274();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84, v12, v13, v14);
  v88 = &v47 - v87;
  v89 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v47 - v87, v16, v17, v18);
  v90 = &v47 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0F0, &qword_268FA32C8);
  v92 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91, v19, v20, v21);
  v93 = &v47 - v92;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0F8, &unk_268FA32D0);
  v95 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v94, v23, v24);
  v96 = &v47 - v95;
  v97 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v47 - v95, v26, v27, v28);
  v98 = &v47 - v97;
  v99 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v47 - v97, v30, v31, v32);
  v100 = &v47 - v99;
  v105 = a1;
  v104 = v33;
  v103 = v33;
  v101 = sub_268F9A4F4();
  if (v101)
  {
    v67 = v101;
    v66 = v101;
    sub_268F9A264();
  }

  else
  {
    (*(v85 + 56))(v100, 1, 1, v84);
  }

  (*(v85 + 104))(v98, *MEMORY[0x277D5E908], v84);
  v34 = *(v85 + 56);
  v63 = 1;
  v35 = v34(v98, 0);
  v62 = &v93[*(v91 + 48)];
  sub_268E31164(v100, v93, v35);
  sub_268E31164(v98, v62, v36);
  v64 = *(v85 + 48);
  v65 = v85 + 48;
  if (v64(v93, v63, v84) == 1)
  {
    if (v64(v62, 1, v84) == 1)
    {
      sub_268E313B8(v93, v40);
      v61 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_268E31164(v93, v96, v37);
    if (v64(v62, 1, v84) != 1)
    {
      v57 = *(v85 + 32);
      v56 = v85 + 32;
      v57(v90, v96, v84);
      v38 = v57(v88, v62, v84);
      sub_268E31460(v38);
      v60 = sub_268F9AE04();
      v59 = *(v85 + 8);
      v58 = v85 + 8;
      v59(v88, v84);
      v39 = v59(v90, v84);
      sub_268E313B8(v93, v39);
      v61 = v60;
      goto LABEL_9;
    }

    (*(v85 + 8))(v96, v84);
  }

  sub_268E3128C(v93, v40);
  v61 = 0;
LABEL_9:
  v55 = v61;
  sub_268E313B8(v98, v43);
  result = sub_268E313B8(v100, v41);
  if (v55)
  {
    v54 = v94 + 12;
    if (__OFADD__(v94, 12))
    {
      goto LABEL_33;
    }

    v103 = v54;
    v53 = v54;
  }

  else
  {
    v53 = v94;
  }

  v51 = v53;
  sub_268F992E4();
  (*(v74 + 104))(v77, *MEMORY[0x277CC9980], v73);
  sub_268F99204();
  v50 = sub_268F99304();
  (*(v69 + 8))(v72, v68);
  (*(v74 + 8))(v77, v73);
  (*(v80 + 8))(v83, v79);
  result = v50;
  v52 = v51 - v50;
  if (__OFSUB__(v51, v50))
  {
    __break(1u);
  }

  else
  {
    v102 = v52;
    if ((v52 & 0x8000000000000000) == 0)
    {
      v48 = v52;
      return sub_268E2E8C0(v48);
    }

    v49 = 24 - v52;
    if (!__OFSUB__(24, v52))
    {
      v102 = v49;
      v48 = v49;
      return sub_268E2E8C0(v48);
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id sub_268E2E8C0(uint64_t a1)
{
  v154 = a1;
  v129 = "Failed to get end date, returning nil.";
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0E0, qword_268F9DA30);
  v130 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v131 = &v87[-v130];
  v132 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v87[-v130], v6, v7, v8);
  v133 = &v87[-v132];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v134 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v135 = &v87[-v134];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v136 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v137 = &v87[-v136];
  v147 = 0;
  v138 = sub_268F990E4();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (v139[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v147, v17, v18, v19);
  v142 = &v87[-v141];
  v178 = &v87[-v141];
  v143 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v23, v24);
  v144 = &v87[-v143];
  v177 = &v87[-v143];
  v159 = sub_268F992F4();
  v156 = *(v159 - 8);
  v157 = v159 - 8;
  v145 = (v156[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v147, v25, v26, v27);
  v158 = &v87[-v145];
  v165 = sub_268F99314();
  v162 = *(v165 - 8);
  v163 = v165 - 8;
  v146 = (v162[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v165, v28, v29, v30);
  v164 = &v87[-v146];
  v148 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v147, v31, v32, v33);
  v170 = &v87[-v148];
  v172 = sub_268F99214();
  v168 = *(v172 - 8);
  v169 = v172 - 8;
  v149 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v154, v34, v35, v36);
  v150 = &v87[-v149];
  v176 = &v87[-v149];
  v151 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38, v39, v40, v41);
  v155 = &v87[-v151];
  v175 = &v87[-v151];
  v174 = v42;
  sub_268F99204();
  sub_268F992E4();
  v43 = *MEMORY[0x277CC9980];
  v152 = v156[13];
  v153 = v156 + 13;
  v152(v158, v43, v159);
  sub_268CDD6D4();
  v171 = 1;
  sub_268F992D4();
  v160 = v156[1];
  v161 = v156 + 1;
  v160(v158, v159);
  v166 = v162[1];
  v167 = v162 + 1;
  v166(v164, v165);
  if ((*(v168 + 48))(v170, v171, v172) == 1)
  {
    sub_268D54CB4(v170);
    v88 = sub_268F9B284();
    v90 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v91 = 0;
    v89 = sub_268F9B734();
    sub_268F9AC14(v88, &dword_268CBE000, v90, v129, 38, 2);

    v63 = MEMORY[0x277D82BD8](v90);
    (*(v168 + 8))(v155, v172, v63);
    return v91;
  }

  else
  {
    (*(v168 + 32))(v150, v170, v172);
    v99 = v162[7];
    v98 = v162 + 7;
    v118 = 1;
    v99(v137, 1, 1, v165);
    v121 = 0;
    v100 = sub_268F99344();
    v44 = *(v100 - 8);
    v102 = *(v44 + 56);
    v101 = v44 + 56;
    v102(v135, v118);
    sub_268F992E4();
    v103 = MEMORY[0x277CC9988];
    v152(v158, *MEMORY[0x277CC9988], v159);
    v45 = sub_268F99304();
    v46 = v164;
    v95 = v45;
    v160(v158, v159);
    v166(v46, v165);
    sub_268F992E4();
    v104 = MEMORY[0x277CC9998];
    v152(v158, *MEMORY[0x277CC9998], v159);
    v47 = sub_268F99304();
    v48 = v164;
    v96 = v47;
    v160(v158, v159);
    v166(v48, v165);
    sub_268F992E4();
    v105 = MEMORY[0x277CC9968];
    v152(v158, *MEMORY[0x277CC9968], v159);
    v49 = sub_268F99304();
    v50 = v164;
    v92 = v49;
    v160(v158, v159);
    v166(v50, v165);
    sub_268F992E4();
    v106 = MEMORY[0x277CC9980];
    v152(v158, *MEMORY[0x277CC9980], v159);
    v51 = sub_268F99304();
    v52 = v164;
    v93 = v51;
    v160(v158, v159);
    v166(v52, v165);
    sub_268F992E4();
    v107 = MEMORY[0x277CC99A0];
    v152(v158, *MEMORY[0x277CC99A0], v159);
    v53 = sub_268F99304();
    v54 = v164;
    v94 = v53;
    v160(v158, v159);
    v166(v54, v165);
    v97 = &v65;
    v65 = v92;
    v66 = 0;
    v67 = v93;
    v68 = 0;
    v69 = v94;
    v70 = 0;
    v71 = 0;
    v111 = 1;
    v72 = 1;
    v73 = 0;
    v74 = 1;
    v75 = 0;
    v76 = 1;
    v77 = 0;
    v78 = 1;
    v79 = 0;
    v80 = 1;
    v81 = 0;
    v82 = 1;
    v83 = 0;
    v84 = 1;
    v85 = 0;
    v86 = 1;
    v117 = 0;
    sub_268F990D4();
    v99(v137, v118, v118, v165);
    (v102)(v135, v118, v118, v100);
    sub_268F992E4();
    v152(v158, *v103, v159);
    v55 = sub_268F99304();
    v56 = v164;
    v112 = v55;
    v160(v158, v159);
    v166(v56, v165);
    sub_268F992E4();
    v152(v158, *v104, v159);
    v57 = sub_268F99304();
    v58 = v164;
    v113 = v57;
    v160(v158, v159);
    v166(v58, v165);
    sub_268F992E4();
    v152(v158, *v105, v159);
    v59 = sub_268F99304();
    v60 = v164;
    v108 = v59;
    v160(v158, v159);
    v166(v60, v165);
    sub_268F992E4();
    v152(v158, *v106, v159);
    v61 = sub_268F99304();
    v62 = v164;
    v109 = v61;
    v160(v158, v159);
    v166(v62, v165);
    sub_268F992E4();
    v152(v158, *v107, v159);
    v110 = sub_268F99304();
    v160(v158, v159);
    v166(v164, v165);
    v114 = &v65;
    v65 = v108;
    v66 = 0;
    v67 = v109;
    v68 = 0;
    v69 = v110;
    v70 = 0;
    v71 = 0;
    v72 = v111;
    v73 = 0;
    v74 = v111;
    v75 = 0;
    v76 = v111;
    v77 = 0;
    v78 = v111;
    v79 = 0;
    v80 = v111;
    v81 = 0;
    v82 = v111;
    v83 = 0;
    v84 = v111;
    v85 = 0;
    v86 = v111;
    sub_268F990D4();
    sub_268DAC7EC();
    v116 = v139[2];
    v115 = v139 + 2;
    v116(v133, v144, v138);
    v120 = v139[7];
    v119 = v139 + 7;
    v120(v133, v117, v118, v138);
    v116(v131, v142, v138);
    v120(v131, v117, v118, v138);
    v122 = sub_268E305DC(v133, v131);
    v173 = v122;
    sub_268DAC8A8();
    v127 = sub_268DAC90C(v122);
    v124 = v139[1];
    v123 = v139 + 1;
    v124(v142, v138);
    v124(v144, v138);
    v126 = *(v168 + 8);
    v125 = v168 + 8;
    v126(v150, v172);
    v126(v155, v172);
    return v127;
  }
}

id sub_268E2FA5C(uint64_t a1)
{
  v101 = a1;
  v92 = "Unsupported time unit: %@. Skipping.";
  v93 = "Failed to extract integer, skipping.";
  v94 = "Failed to cast common_Int from common_Number, skipping.";
  v95 = "Value is nil in the DurationComponent, skipping.";
  v96 = "Value %@ is not a DurationComponent, skipping.";
  v116 = 0;
  v102 = v115;
  v115[0] = 0;
  v115[1] = 0;
  v112 = 0;
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v97 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD108, &qword_268FA32F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101, v1, v2, v3);
  v98 = &v28 - v97;
  v99 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v28 - v97, v6, v7);
  v100 = &v28 - v99;
  v116 = v8;

  v114 = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD110, &qword_268FA3300);
  sub_268E314E0();
  sub_268F9B254();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD120, &qword_268FA3308);
    sub_268F9B564();
    v91 = v113;
    if (!v113)
    {
      break;
    }

    v90 = v91;
    v88 = v91;
    v112 = v91;
    sub_268F9A064();
    v89 = v111;
    if (v111)
    {
      v87 = v89;
      v85 = v89;
      v109 = v89;
      v86 = sub_268F9A5E4();
      if (v86)
      {
        v84 = v86;
        v81 = v86;
        v82 = sub_268F99F04();

        v83 = v82;
      }

      else
      {
        v83 = 0;
      }

      v80 = v83;
      if (v83)
      {
        v79 = v80;
        v77 = v80;
        v108 = v80;

        sub_268F9A1B4();
        sub_268F9A2D4();

        v78 = v107;
        if (v107)
        {
          v76 = v78;
          v74 = v78;
          v106 = v78;
          v75 = sub_268F9A1A4();
          if (v9)
          {
            v43 = sub_268F9B284();
            v45 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v45);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v44 = sub_268F9B734();
            sub_268F9AC14(v43, &dword_268CBE000, v45, v93, 36, 2);

            MEMORY[0x277D82BD8](v45);
          }

          else
          {
            v73 = v75;
            v71 = v75;
            v105 = v75;
            v72 = sub_268F9A5D4();
            if (v72)
            {
              v70 = v72;
              v69 = v72;
              sub_268F9A284();
            }

            else
            {
              v19 = sub_268F9A294();
              (*(*(v19 - 8) + 56))(v100, 1);
            }

            v66 = sub_268F9A294();
            v67 = *(v66 - 8);
            v68 = v66 - 8;
            if (!(*(v67 + 48))(v100, 1))
            {
              sub_268E31610(v100, v98);
              v10 = (*(v67 + 88))(v98, v66) == *MEMORY[0x277D5E948];
              v61 = v71;
              v62 = v74;
              v63 = v77;
              v64 = v85;
              v65 = v88;
              if (v10)
              {
                v58 = v65;
                v57 = v64;
                v56 = v63;
                v55 = v62;
                v59 = sub_268E2E8C0(v61);
                sub_268E31568(v100);

                sub_268CD7930(v115);
                return v59;
              }

              (*(v67 + 8))(v98, v66);
            }

            v52 = sub_268F9B284();
            v54 = *sub_268DC7EA8();
            MEMORY[0x277D82BE0](v54);
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v51 = sub_268F9B734();
            v49 = v11;
            v12 = sub_268F9A5D4();
            v46 = &v104;
            v104 = v12;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD130, qword_268FA3318);
            v47 = sub_268F9AE64();
            v48 = v13;
            v49[3] = MEMORY[0x277D837D0];
            v14 = sub_268CDD224();
            v15 = v47;
            v16 = v48;
            v17 = v49;
            v49[4] = v14;
            *v17 = v15;
            v17[1] = v16;
            sub_268CD0F7C();
            v53 = v18;
            sub_268F9AC14(v52, &dword_268CBE000, v54, v92, 36, 2);

            MEMORY[0x277D82BD8](v54);
            sub_268E31568(v100);
          }
        }

        else
        {
          v40 = sub_268F9B284();
          v42 = *sub_268DC7EA8();
          MEMORY[0x277D82BE0](v42);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v41 = sub_268F9B734();
          sub_268F9AC14(v40, &dword_268CBE000, v42, v94, 55, 2);

          MEMORY[0x277D82BD8](v42);
        }
      }

      else
      {
        v37 = sub_268F9B284();
        v39 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v38 = sub_268F9B734();
        sub_268F9AC14(v37, &dword_268CBE000, v39, v95, 48, 2);

        MEMORY[0x277D82BD8](v39);
      }
    }

    else
    {
      v34 = sub_268F9B284();
      v36 = *sub_268DC7EA8();
      MEMORY[0x277D82BE0](v36);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v33 = sub_268F9B734();
      v31 = v20;

      v28 = &v110;
      v110 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD128, &qword_268FA3310);
      v29 = sub_268F9AE64();
      v30 = v21;
      v31[3] = MEMORY[0x277D837D0];
      v22 = sub_268CDD224();
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v31[4] = v22;
      *v25 = v23;
      v25[1] = v24;
      sub_268CD0F7C();
      v35 = v26;
      sub_268F9AC14(v34, &dword_268CBE000, v36, v96, 46, 2);

      MEMORY[0x277D82BD8](v36);
    }
  }

  sub_268CD7930(v115);
  return 0;
}

id sub_268E30624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_268CD7620();

  v11 = sub_268E2C7C8(a1);
  v15 = sub_268F284EC(a3, a4, a6, v11, 0);
  MEMORY[0x277D82BD8](v11);

  v6 = sub_268E2A500(a2);
  return sub_268DA95CC(v15, a5, v6);
}

uint64_t sub_268E30768(uint64_t a1)
{

  sub_268F9A6E4();
  return sub_268F9AE64();
}

id sub_268E307B0(uint64_t a1)
{
  v4 = [v1 initWithSettingMetadata_confirmationValue_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_268E30804(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithSettingMetadata_searchQuery_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id sub_268E3086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v9 = sub_268F9AE14();

    v5 = [v12 initWithSettingMetadata:a1 labeledValue:v9 temporalEventTrigger:?];
  }

  else
  {
    v5 = [v12 initWithSettingMetadata:a1 labeledValue:0 temporalEventTrigger:?];
  }

  v8 = v5;
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](a1);
  return v8;
}

id sub_268E30974(uint64_t a1, uint64_t a2)
{
  v11 = sub_268F990E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(a1, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_268F99084();
    (*(v12 + 8))(a1, v11);
    v7 = v6;
  }

  if ((v13)(a2, 1, v11) == 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = sub_268F99084();
    (*(v12 + 8))(a2, v11);
    v5 = v4;
  }

  v3 = [v9 initWithStartDateComponents:v7 endDateComponents:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v7);
  return v3;
}

unint64_t sub_268E30B2C()
{
  v2 = qword_2802DD0B0;
  if (!qword_2802DD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7E0, &qword_268F9F558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD0B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E30BF8(uint64_t a1)
{
  v3 = sub_268F9A4D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268E30CA0(uint64_t a1)
{
  v3 = sub_268F9A144();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268E30D60(uint64_t a1)
{
  v3 = sub_268F9A174();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268E30E08(const void *a1, void *a2)
{
  v6 = sub_268F9A4D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0B8, &qword_268FA3298);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268E30F30(uint64_t a1)
{
  v4 = sub_268F9A4D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0D0, &qword_268FA32B0) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_268E3105C()
{
  v2 = qword_2802DD0D8;
  if (!qword_2802DD0D8)
  {
    sub_268F9A4D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E310DC()
{
  v2 = qword_2802DD0E8;
  if (!qword_2802DD0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7E0, &qword_268F9F558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD0E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_268E31164(const void *a1, void *a2, double a3)
{
  v7 = sub_268F9A274();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0F8, &unk_268FA32D0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_268E3128C(uint64_t a1, double a2)
{
  v5 = sub_268F9A274();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!(v7)(a1, 1))
  {
    (*(v6 + 8))(a1, v5);
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD0F0, &qword_268FA32C8) + 48);
  if (!v7())
  {
    (*(v6 + 8))(v3, v5);
  }

  return a1;
}

uint64_t sub_268E313B8(uint64_t a1, double a2)
{
  v4 = sub_268F9A274();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

unint64_t sub_268E31460(double a1)
{
  v3 = qword_2802DD100;
  if (!qword_2802DD100)
  {
    sub_268F9A274();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD100);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_268E314E0()
{
  v2 = qword_2802DD118;
  if (!qword_2802DD118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD110, &qword_268FA3300);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E31568(uint64_t a1)
{
  v3 = sub_268F9A294();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268E31610(const void *a1, void *a2)
{
  v6 = sub_268F9A294();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD108, &qword_268FA32F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268E3174C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SettingIntent#SiriCannotChangeSetting";
  *(v2 + 8) = 37;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SettingIntent#StandBy";
  *(v2 + 32) = 21;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SettingIntent#DeviceDoesNotSupportBinarySetting";
  *(v2 + 56) = 47;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SettingIntent#FocusNotConfigured";
  *(v2 + 80) = 32;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SettingIntent#CannotDo";
  *(v2 + 104) = 22;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SettingIntent#DeviceDoesNotSupportNumericSetting";
  *(v2 + 128) = 48;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SettingIntent#NotPermittedToDo";
  *(v2 + 152) = 30;
  *(v2 + 160) = 2;
  *(v2 + 168) = "SettingIntent#SiriCannotChangeMultiSetting";
  *(v2 + 176) = 42;
  *(v2 + 184) = 2;
  *(v2 + 192) = "SettingIntent#SiriCannotChangeNumericSetting";
  *(v2 + 200) = 44;
  *(v2 + 208) = 2;
  *(v2 + 216) = "SettingIntent#FlashlightOverheated";
  *(v2 + 224) = 34;
  *(v2 + 232) = 2;
  *(v2 + 240) = "SettingIntent#FlashlightUnavailable";
  *(v2 + 248) = 35;
  *(v2 + 256) = 2;
  *(v2 + 264) = "SettingIntent#ResourceNotDownloaded";
  *(v2 + 272) = 35;
  *(v2 + 280) = 2;
  *(v2 + 288) = "SettingIntent#DisplaySettingsDisabledForCurrentMode";
  *(v2 + 296) = 51;
  *(v2 + 304) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_28:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_28;
    case 2:
      v5 = 2;
      goto LABEL_28;
    case 3:
      v5 = 3;
      goto LABEL_28;
    case 4:
      v5 = 4;
      goto LABEL_28;
    case 5:
      v5 = 5;
      goto LABEL_28;
    case 6:
      v5 = 6;
      goto LABEL_28;
    case 7:
      v5 = 7;
      goto LABEL_28;
    case 8:
      v5 = 8;
      goto LABEL_28;
    case 9:
      v5 = 9;
      goto LABEL_28;
    case 10:
      v5 = 10;
      goto LABEL_28;
    case 11:
      v5 = 11;
      goto LABEL_28;
    case 12:
      v5 = 12;
      goto LABEL_28;
  }

  return 13;
}

unint64_t sub_268E31E50()
{
  v2 = qword_2802DD140;
  if (!qword_2802DD140)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD140);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E31F9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E3174C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E31FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E31B9C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(uint64_t a1)
{
  v2 = qword_2802DD148;
  if (!qword_2802DD148)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E320D4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268E321A8(unsigned int a1)
{
  v2 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_268E321E0()
{
  v59 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v51 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v52 = v38 - v51;
  v59 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v54 = sub_268F9B734();
  v57 = v5;
  v56 = 1;
  v6 = sub_268F9AEF4();
  v8 = v7;
  v9 = v57;
  *v57 = v6;
  v9[1] = v8;
  LOBYTE(v8) = *v0;
  v55 = MEMORY[0x277D839B0];
  v9[5] = MEMORY[0x277D839B0];
  *(v9 + 16) = v8;
  v10 = sub_268F9AEF4();
  v11 = v55;
  v13 = v12;
  v14 = v57;
  v57[6] = v10;
  v14[7] = v13;
  LOBYTE(v13) = *(v0 + 1);
  v14[11] = v11;
  *(v14 + 64) = v13;
  v15 = sub_268F9AEF4();
  v16 = v57;
  v57[12] = v15;
  v16[13] = v17;
  v58 = *(v0 + 8);

  if (v58)
  {
    v49 = v58;
    v48 = v58;
    v18 = type metadata accessor for SettingsBinarySetting(0);
    v19 = v57;
    v20 = v48;
    v57[17] = v18;
    v19[14] = v20;
  }

  else
  {
    v37 = v57;
    v57[14] = 0;
    v37[15] = 0;
    v37[16] = 0;
    v37[17] = 0;
  }

  v41 = v57 + 20;
  v44 = 1;
  v21 = sub_268F9AEF4();
  v22 = v57;
  v57[18] = v21;
  v22[19] = v23;
  v43 = 0;
  v42 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
  sub_268D2A1F0((v50 + *(v42 + 28)), v52);
  v45 = sub_268F9A9C4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  if ((*(v46 + 48))(v52, v44) == 1)
  {
    sub_268D28588(v52);
    v36 = v57;
    v57[20] = 0;
    v36[21] = 0;
    v36[22] = 0;
    v36[23] = 0;
  }

  else
  {
    v24 = v41;
    v57[23] = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v46 + 32))(boxed_opaque_existential_1, v52, v45);
  }

  v26 = sub_268F9AEF4();
  v27 = v57;
  v28 = v42;
  v29 = v50;
  v57[24] = v26;
  v27[25] = v30;
  v40 = *(v29 + *(v28 + 32));
  if (v40 == 2)
  {
    v35 = v57;
    v57[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v39 = v40;
    v31 = v57;
    v32 = v40;
    v57[29] = MEMORY[0x277D839B0];
    *(v31 + 208) = v32 & 1;
  }

  sub_268CD0F7C();
  v38[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E32588@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, const void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  v10 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
  sub_268D84F40(a4, (a6 + *(v10 + 28)));
  result = v10;
  *(a6 + *(v10 + 32)) = a5;
  return result;
}

uint64_t type metadata accessor for StandByParameters(uint64_t a1)
{
  v2 = qword_2802DD158;
  if (!qword_2802DD158)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E326A0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for StandByParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268E32774(unsigned int a1)
{
  v2 = type metadata accessor for StandByParameters(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_268E327AC()
{
  v60 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v51 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v52 = &v38 - v51;
  v60 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v54 = sub_268F9B734();
  v58 = v5;
  v57 = 7;
  v56 = 1;
  v6 = sub_268F9AEF4();
  v7 = v58;
  *v58 = v6;
  v7[1] = v8;
  v9 = *v0;
  v55 = MEMORY[0x277D839B0];
  v7[5] = MEMORY[0x277D839B0];
  *(v7 + 16) = v9;
  v10 = sub_268F9AEF4();
  v11 = v55;
  v12 = v58;
  v58[6] = v10;
  v12[7] = v13;
  v14 = v0[1];
  v12[11] = v11;
  *(v12 + 64) = v14;
  v15 = sub_268F9AEF4();
  v16 = v58;
  v58[12] = v15;
  v16[13] = v17;
  v59 = *(v0 + 1);

  if (v59)
  {
    v49 = v59;
    v48 = v59;
    v18 = type metadata accessor for SettingsBinarySetting(0);
    v19 = v58;
    v20 = v48;
    v58[17] = v18;
    v19[14] = v20;
  }

  else
  {
    v37 = v58;
    v58[14] = 0;
    v37[15] = 0;
    v37[16] = 0;
    v37[17] = 0;
  }

  v41 = v58 + 20;
  v44 = 1;
  v21 = sub_268F9AEF4();
  v22 = v58;
  v58[18] = v21;
  v22[19] = v23;
  v43 = 0;
  v42 = type metadata accessor for StandByParameters(0);
  sub_268D2A1F0((v50 + *(v42 + 28)), v52);
  v45 = sub_268F9A9C4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  if ((*(v46 + 48))(v52, v44) == 1)
  {
    sub_268D28588(v52);
    v36 = v58;
    v58[20] = 0;
    v36[21] = 0;
    v36[22] = 0;
    v36[23] = 0;
  }

  else
  {
    v24 = v41;
    v58[23] = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v46 + 32))(boxed_opaque_existential_1, v52, v45);
  }

  v26 = sub_268F9AEF4();
  v27 = v58;
  v28 = v42;
  v29 = v50;
  v58[24] = v26;
  v27[25] = v30;
  v40 = *(v29 + *(v28 + 32));
  if (v40 == 2)
  {
    v35 = v58;
    v58[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v39 = v40;
    v31 = v58;
    v32 = v40;
    v58[29] = MEMORY[0x277D839B0];
    *(v31 + 208) = v32 & 1;
  }

  sub_268CD0F7C();
  v38 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E32B50@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, const void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  v10 = type metadata accessor for StandByParameters(0);
  sub_268D84F40(a4, (a6 + *(v10 + 28)));
  result = v10;
  *(a6 + *(v10 + 32)) = a5;
  return result;
}

uint64_t type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(uint64_t a1)
{
  v2 = qword_2802DD168;
  if (!qword_2802DD168)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E32C68(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 24)));
  return sub_268D28588(v11);
}

uint64_t sub_268E32D3C(unsigned int a1)
{
  v2 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_268E32D74()
{
  v53 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v46 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v47 = &v33 - v46;
  v53 = v0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v49 = sub_268F9B734();
  v51 = v5;
  v50 = 1;
  v6 = sub_268F9AEF4();
  v8 = v7;
  v9 = v51;
  *v51 = v6;
  v9[1] = v8;
  LOBYTE(v8) = *v0;
  v9[5] = MEMORY[0x277D839B0];
  *(v9 + 16) = v8;
  v10 = sub_268F9AEF4();
  v11 = v51;
  v51[6] = v10;
  v11[7] = v12;
  v52 = *(v0 + 8);

  if (v52)
  {
    v44 = v52;
    v43 = v52;
    v13 = type metadata accessor for SettingsMultiSetting(0);
    v14 = v51;
    v15 = v43;
    v51[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v32 = v51;
    v51[8] = 0;
    v32[9] = 0;
    v32[10] = 0;
    v32[11] = 0;
  }

  v36 = v51 + 14;
  v39 = 1;
  v16 = sub_268F9AEF4();
  v17 = v51;
  v51[12] = v16;
  v17[13] = v18;
  v38 = 0;
  v37 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
  sub_268D2A1F0((v45 + *(v37 + 24)), v47);
  v40 = sub_268F9A9C4();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  if ((*(v41 + 48))(v47, v39) == 1)
  {
    sub_268D28588(v47);
    v31 = v51;
    v51[14] = 0;
    v31[15] = 0;
    v31[16] = 0;
    v31[17] = 0;
  }

  else
  {
    v19 = v36;
    v51[17] = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v41 + 32))(boxed_opaque_existential_1, v47, v40);
  }

  v21 = sub_268F9AEF4();
  v22 = v51;
  v23 = v37;
  v24 = v45;
  v51[18] = v21;
  v22[19] = v25;
  v35 = *(v24 + *(v23 + 28));
  if (v35 == 2)
  {
    v30 = v51;
    v51[20] = 0;
    v30[21] = 0;
    v30[22] = 0;
    v30[23] = 0;
  }

  else
  {
    v34 = v35;
    v26 = v51;
    v27 = v35;
    v51[23] = MEMORY[0x277D839B0];
    *(v26 + 160) = v27 & 1;
  }

  sub_268CD0F7C();
  v33 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E330DC@<X0>(char a1@<W0>, uint64_t a2@<X1>, const void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
  sub_268D84F40(a3, (a5 + *(v9 + 24)));
  result = v9;
  *(a5 + *(v9 + 28)) = a4;
  return result;
}

uint64_t type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(uint64_t a1)
{
  v2 = qword_2802DD178;
  if (!qword_2802DD178)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E331F0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 24)));
  return sub_268D28588(v11);
}

uint64_t sub_268E332A0()
{
  v2 = *(v0 + *(type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0) + 28));

  return v2;
}

uint64_t sub_268E332D8(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0) + 28)) = a1;
}

uint64_t sub_268E33348(unsigned int a1)
{
  v2 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_268E333A4(unsigned int a1)
{
  v2 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 36)) = a1;
  return result;
}

uint64_t sub_268E333DC()
{
  v75 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v68 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v69 = &v50 - v68;
  v75 = v0;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v71 = sub_268F9B734();
  v73 = v5;
  v72 = 1;
  v6 = sub_268F9AEF4();
  v8 = v7;
  v9 = v73;
  *v73 = v6;
  v9[1] = v8;
  LOBYTE(v8) = *v0;
  v9[5] = MEMORY[0x277D839B0];
  *(v9 + 16) = v8;
  v10 = sub_268F9AEF4();
  v11 = v73;
  v73[6] = v10;
  v11[7] = v12;
  v74 = *(v0 + 8);

  if (v74)
  {
    v66 = v74;
    v65 = v74;
    v13 = sub_268F9AA44();
    v14 = v73;
    v15 = v65;
    v73[11] = v13;
    v14[8] = v15;
  }

  else
  {
    v49 = v73;
    v73[8] = 0;
    v49[9] = 0;
    v49[10] = 0;
    v49[11] = 0;
  }

  v58 = v73 + 14;
  v61 = 1;
  v16 = sub_268F9AEF4();
  v17 = v73;
  v73[12] = v16;
  v17[13] = v18;
  v60 = 0;
  v59 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  sub_268D2A1F0((v67 + *(v59 + 24)), v69);
  v62 = sub_268F9A9C4();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  if ((*(v63 + 48))(v69, v61) == 1)
  {
    sub_268D28588(v69);
    v48 = v73;
    v73[14] = 0;
    v48[15] = 0;
    v48[16] = 0;
    v48[17] = 0;
  }

  else
  {
    v19 = v58;
    v73[17] = v62;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(v63 + 32))(boxed_opaque_existential_1, v69, v62);
  }

  v21 = sub_268F9AEF4();
  v22 = v73;
  v23 = v59;
  v24 = v67;
  v73[18] = v21;
  v22[19] = v25;
  v57 = *(v24 + *(v23 + 28));

  if (v57)
  {
    v56 = v57;
    v55 = v57;
    v26 = type metadata accessor for SettingsNumericSetting(0);
    v27 = v73;
    v28 = v55;
    v73[23] = v26;
    v27[20] = v28;
  }

  else
  {
    v47 = v73;
    v73[20] = 0;
    v47[21] = 0;
    v47[22] = 0;
    v47[23] = 0;
  }

  v29 = sub_268F9AEF4();
  v30 = v73;
  v31 = v59;
  v32 = v67;
  v73[24] = v29;
  v30[25] = v33;
  v54 = *(v32 + *(v31 + 32));
  if (v54 == 2)
  {
    v46 = v73;
    v73[26] = 0;
    v46[27] = 0;
    v46[28] = 0;
    v46[29] = 0;
  }

  else
  {
    v53 = v54;
    v34 = v73;
    v35 = v54;
    v73[29] = MEMORY[0x277D839B0];
    *(v34 + 208) = v35 & 1;
  }

  v36 = sub_268F9AEF4();
  v37 = v73;
  v38 = v59;
  v39 = v67;
  v73[30] = v36;
  v37[31] = v40;
  v52 = *(v39 + *(v38 + 36));
  if (v52 == 2)
  {
    v45 = v73;
    v73[32] = 0;
    v45[33] = 0;
    v45[34] = 0;
    v45[35] = 0;
  }

  else
  {
    v51 = v52;
    v41 = v73;
    v42 = v52;
    v73[35] = MEMORY[0x277D839B0];
    *(v41 + 256) = v42 & 1;
  }

  sub_268CD0F7C();
  v50 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268E33870@<X0>(char a1@<W0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v13 = type metadata accessor for SettingIntentSiriCannotChangeNumericSettingParameters(0);
  sub_268D84F40(a3, (a7 + v13[6]));
  result = v13;
  *(a7 + v13[7]) = a4;
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(uint64_t a1)
{
  v2 = qword_2802DD190;
  if (!qword_2802DD190)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E339B4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(DoesNotSupportBinarySettingParameters + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268E33A88(unsigned int a1)
{
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  result = a1;
  *(v1 + *(DoesNotSupportBinarySettingParameters + 32)) = a1;
  return result;
}

uint64_t sub_268E33AE4(unsigned int a1)
{
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  result = a1;
  *(v1 + *(DoesNotSupportBinarySettingParameters + 36)) = a1;
  return result;
}

uint64_t sub_268E33B1C()
{
  v78 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v72 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v73 = &v52 - v72;
  v78 = v0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v75 = sub_268F9B734();
  v76 = v5;
  v6 = sub_268F9AEF4();
  v7 = v76;
  *v76 = v6;
  v7[1] = v8;
  v77 = *v0;

  if (v77)
  {
    v70 = v77;
    v69 = v77;
    v9 = sub_268F9AA44();
    v10 = v76;
    v11 = v69;
    v76[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v51 = v76;
    v76[2] = 0;
    v51[3] = 0;
    v51[4] = 0;
    v51[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v76;
  v14 = v71;
  v76[6] = v12;
  v13[7] = v15;
  v68 = *(v14 + 8);

  if (v68)
  {
    v67 = v68;
    v66 = v68;
    v16 = type metadata accessor for SettingsBinarySetting(0);
    v17 = v76;
    v18 = v66;
    v76[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v50 = v76;
    v76[8] = 0;
    v50[9] = 0;
    v50[10] = 0;
    v50[11] = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v76;
  v21 = v71;
  v76[12] = v19;
  v20[13] = v22;
  v65 = *(v21 + 16);
  if (v65 == 2)
  {
    v49 = v76;
    v76[14] = 0;
    v49[15] = 0;
    v49[16] = 0;
    v49[17] = 0;
  }

  else
  {
    v64 = v65;
    v23 = v76;
    v24 = v65;
    v76[17] = MEMORY[0x277D839B0];
    *(v23 + 112) = v24 & 1;
  }

  v57 = v76 + 20;
  v60 = 1;
  v25 = sub_268F9AEF4();
  v26 = v76;
  v76[18] = v25;
  v26[19] = v27;
  v59 = 0;
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  sub_268D2A1F0((v71 + *(DoesNotSupportBinarySettingParameters + 28)), v73);
  v61 = sub_268F9A9C4();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  if ((*(v62 + 48))(v73, v60) == 1)
  {
    sub_268D28588(v73);
    v48 = v76;
    v76[20] = 0;
    v48[21] = 0;
    v48[22] = 0;
    v48[23] = 0;
  }

  else
  {
    v28 = v57;
    v76[23] = v61;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(v62 + 32))(boxed_opaque_existential_1, v73, v61);
  }

  v30 = sub_268F9AEF4();
  v31 = v76;
  v32 = DoesNotSupportBinarySettingParameters;
  v33 = v71;
  v76[24] = v30;
  v31[25] = v34;
  v56 = *(v33 + *(v32 + 32));
  if (v56 == 2)
  {
    v47 = v76;
    v76[26] = 0;
    v47[27] = 0;
    v47[28] = 0;
    v47[29] = 0;
  }

  else
  {
    v55 = v56;
    v35 = v76;
    v36 = v56;
    v76[29] = MEMORY[0x277D839B0];
    *(v35 + 208) = v36 & 1;
  }

  v37 = sub_268F9AEF4();
  v38 = v76;
  v39 = DoesNotSupportBinarySettingParameters;
  v40 = v71;
  v76[30] = v37;
  v38[31] = v41;
  v54 = *(v40 + *(v39 + 36));
  if (v54 == 2)
  {
    v46 = v76;
    v76[32] = 0;
    v46[33] = 0;
    v46[34] = 0;
    v46[35] = 0;
  }

  else
  {
    v53 = v54;
    v42 = v76;
    v43 = v54;
    v76[35] = MEMORY[0x277D839B0];
    *(v42 + 256) = v43 & 1;
  }

  sub_268CD0F7C();
  v52 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E33FE0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v19 = 0;
  v12 = 0;
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  v13 = (*(*(DoesNotSupportBinarySettingParameters - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = &v12 - v13;
  v17 = v4;
  v19 = &v12 - v13;
  *v4 = 0;
  *(v4 + 1) = 0;
  v16 = 2;
  v4[16] = 2;
  v14 = *(v5 + 28);
  v6 = sub_268F9A9C4();
  (*(*(v6 - 8) + 56))(&v17[v14], 1);
  v7 = DoesNotSupportBinarySettingParameters;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v17[*(DoesNotSupportBinarySettingParameters + 32)] = v16;
  *(v9 + *(v7 + 36)) = v8;
  return sub_268E3D654(v9, v10);
}

uint64_t type metadata accessor for SettingIntentFocusNotConfiguredParameters(uint64_t a1)
{
  v2 = qword_2802DD1A0;
  if (!qword_2802DD1A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E341B0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 24)));
  return sub_268D28588(v11);
}

uint64_t sub_268E34284(unsigned int a1)
{
  v2 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

uint64_t sub_268E342BC()
{
  v59 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v53 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v54 = &v37 - v53;
  v59 = v0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v56 = sub_268F9B734();
  v57 = v5;
  v6 = sub_268F9AEF4();
  v7 = v57;
  *v57 = v6;
  v7[1] = v8;
  v58 = *v0;

  if (v58)
  {
    v51 = v58;
    v50 = v58;
    v9 = sub_268F9AA44();
    v10 = v57;
    v11 = v50;
    v57[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v36 = v57;
    v57[2] = 0;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
  }

  v43 = v57 + 8;
  v46 = 1;
  v12 = sub_268F9AEF4();
  v13 = v57;
  v57[6] = v12;
  v13[7] = v14;
  v45 = 0;
  v44 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  sub_268D2A1F0((v52 + *(v44 + 24)), v54);
  v47 = sub_268F9A9C4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  if ((*(v48 + 48))(v54, v46) == 1)
  {
    sub_268D28588(v54);
    v35 = v57;
    v57[8] = 0;
    v35[9] = 0;
    v35[10] = 0;
    v35[11] = 0;
  }

  else
  {
    v15 = v43;
    v57[11] = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(v48 + 32))(boxed_opaque_existential_1, v54, v47);
  }

  v17 = sub_268F9AEF4();
  v18 = v57;
  v19 = v52;
  v57[12] = v17;
  v18[13] = v20;
  v42 = *(v19 + 8);

  if (v42)
  {
    v41 = v42;
    v40 = v42;
    v21 = type metadata accessor for SettingsBinarySetting(0);
    v22 = v57;
    v23 = v40;
    v57[17] = v21;
    v22[14] = v23;
  }

  else
  {
    v34 = v57;
    v57[14] = 0;
    v34[15] = 0;
    v34[16] = 0;
    v34[17] = 0;
  }

  v24 = sub_268F9AEF4();
  v25 = v57;
  v26 = v44;
  v27 = v52;
  v57[18] = v24;
  v25[19] = v28;
  v39 = *(v27 + *(v26 + 28));
  if (v39 == 2)
  {
    v33 = v57;
    v57[20] = 0;
    v33[21] = 0;
    v33[22] = 0;
    v33[23] = 0;
  }

  else
  {
    v38 = v39;
    v29 = v57;
    v30 = v39;
    v57[23] = MEMORY[0x277D839B0];
    *(v29 + 160) = v30 & 1;
  }

  sub_268CD0F7C();
  v37 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268E3466C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v16 = 0;
  v10[1] = 0;
  v13 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  v11 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = v10 - v11;
  v14 = v4;
  v16 = v10 - v11;
  *v4 = 0;
  *(v4 + 1) = 0;
  v12 = *(v5 + 24);
  v6 = sub_268F9A9C4();
  (*(*(v6 - 8) + 56))(&v14[v12], 1);
  v7 = v14;
  v8 = v15;
  v14[*(v13 + 28)] = 2;
  return sub_268E3D4AC(v7, v8);
}

uint64_t type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(uint64_t a1)
{
  v2 = qword_2802DD1B0;
  if (!qword_2802DD1B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E34820(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(DoesNotSupportNumericSettingParameters + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268E348F4(unsigned int a1)
{
  DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  result = a1;
  *(v1 + *(DoesNotSupportNumericSettingParameters + 32)) = a1;
  return result;
}

uint64_t sub_268E3492C()
{
  v68 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v62 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v63 = v44 - v62;
  v68 = v0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v65 = sub_268F9B734();
  v66 = v5;
  v6 = sub_268F9AEF4();
  v7 = v66;
  *v66 = v6;
  v7[1] = v8;
  v67 = *v0;

  if (v67)
  {
    v60 = v67;
    v59 = v67;
    v9 = sub_268F9AA44();
    v10 = v66;
    v11 = v59;
    v66[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v43 = v66;
    v66[2] = 0;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v66;
  v14 = v61;
  v66[6] = v12;
  v13[7] = v15;
  v58 = *(v14 + 8);

  if (v58)
  {
    v57 = v58;
    v56 = v58;
    v16 = type metadata accessor for SettingsNumericSetting(0);
    v17 = v66;
    v18 = v56;
    v66[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v42 = v66;
    v66[8] = 0;
    v42[9] = 0;
    v42[10] = 0;
    v42[11] = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v66;
  v21 = v61;
  v66[12] = v19;
  v20[13] = v22;
  v55 = *(v21 + 16);
  if (v55 == 2)
  {
    v41 = v66;
    v66[14] = 0;
    v41[15] = 0;
    v41[16] = 0;
    v41[17] = 0;
  }

  else
  {
    v54 = v55;
    v23 = v66;
    v24 = v55;
    v66[17] = MEMORY[0x277D839B0];
    *(v23 + 112) = v24 & 1;
  }

  v47 = v66 + 20;
  v50 = 1;
  v25 = sub_268F9AEF4();
  v26 = v66;
  v66[18] = v25;
  v26[19] = v27;
  v49 = 0;
  DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  sub_268D2A1F0((v61 + *(DoesNotSupportNumericSettingParameters + 28)), v63);
  v51 = sub_268F9A9C4();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v63, v50) == 1)
  {
    sub_268D28588(v63);
    v40 = v66;
    v66[20] = 0;
    v40[21] = 0;
    v40[22] = 0;
    v40[23] = 0;
  }

  else
  {
    v28 = v47;
    v66[23] = v51;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(v52 + 32))(boxed_opaque_existential_1, v63, v51);
  }

  v30 = sub_268F9AEF4();
  v31 = v66;
  v32 = DoesNotSupportNumericSettingParameters;
  v33 = v61;
  v66[24] = v30;
  v31[25] = v34;
  v46 = *(v33 + *(v32 + 32));
  if (v46 == 2)
  {
    v39 = v66;
    v66[26] = 0;
    v39[27] = 0;
    v39[28] = 0;
    v39[29] = 0;
  }

  else
  {
    v45 = v46;
    v35 = v66;
    v36 = v46;
    v66[29] = MEMORY[0x277D839B0];
    *(v35 + 208) = v36 & 1;
  }

  sub_268CD0F7C();
  v44[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E34D60@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = 0;
  v10 = 0;
  DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  v11 = (*(*(DoesNotSupportNumericSettingParameters - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = &v10 - v11;
  v15 = v4;
  v17 = &v10 - v11;
  *v4 = 0;
  *(v4 + 1) = 0;
  v14 = 2;
  v4[16] = 2;
  v12 = *(v5 + 28);
  v6 = sub_268F9A9C4();
  (*(*(v6 - 8) + 56))(&v15[v12], 1);
  v7 = v15;
  v8 = v16;
  v15[*(DoesNotSupportNumericSettingParameters + 32)] = v14;
  return sub_268E3D2FC(v7, v8);
}

uint64_t sub_268E34E94(uint64_t a1)
{
  v8 = a1;
  v6[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v1, v2, v3);
  v7 = v6 - v6[0];
  sub_268D2A1F0(v4, v6 - v6[0]);
  sub_268D29FC8(v7, v6[1]);
  return sub_268D28588(v8);
}

uint64_t type metadata accessor for SettingIntentResourceNotDownloadedParameters(uint64_t a1)
{
  v2 = qword_2802DD1C0;
  if (!qword_2802DD1C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E34FE4(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SettingIntentResourceNotDownloadedParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268E35094()
{
  v46 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v32 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v33 = &v29 - v32;
  v34 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v29 - v32, v6, v7, v8);
  v40 = &v29 - v34;
  v46 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v36 = sub_268F9B734();
  v37 = v9;
  v39 = 1;
  v10 = sub_268F9AEF4();
  v11 = v37;
  v12 = v10;
  v13 = v38;
  v15 = v14;
  v16 = v40;
  *v37 = v12;
  v11[1] = v15;
  sub_268D2A1F0(v13, v16);
  v41 = sub_268F9A9C4();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = *(v42 + 48);
  v45 = v42 + 48;
  if (v44(v40, v39) == 1)
  {
    sub_268D28588(v40);
    v28 = v37;
    v37[2] = 0;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
  }

  else
  {
    v17 = v37;
    v37[5] = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17 + 2);
    (*(v42 + 32))(boxed_opaque_existential_1, v40, v41);
  }

  v30 = v37 + 8;
  v31 = 1;
  v19 = sub_268F9AEF4();
  v20 = v37;
  v37[6] = v19;
  v20[7] = v21;
  v22 = type metadata accessor for SettingIntentResourceNotDownloadedParameters(0);
  sub_268D2A1F0(&v38[*(v22 + 20)], v33);
  if ((v44)(v33, v31, v41) == 1)
  {
    sub_268D28588(v33);
    v27 = v37;
    v37[8] = 0;
    v27[9] = 0;
    v27[10] = 0;
    v27[11] = 0;
  }

  else
  {
    v23 = v30;
    v37[11] = v41;
    v24 = __swift_allocate_boxed_opaque_existential_1(v23);
    (*(v42 + 32))(v24, v33, v41);
  }

  sub_268CD0F7C();
  v29 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268E353A4@<X0>(char *a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v6 = 0;
  v8 = type metadata accessor for SettingIntentResourceNotDownloadedParameters(0);
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v13 = &v6 - v7;
  v15 = &v6 - v7;
  v10 = sub_268F9A9C4();
  v4 = *(v10 - 8);
  v12 = *(v4 + 56);
  v11 = v4 + 56;
  v9 = 1;
  v12(v13, 1);
  (v12)(&v13[*(v8 + 20)], v9, v9, v10);
  return sub_268E3D0D0(v13, v14);
}

uint64_t sub_268E354B8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 48) = a2;
  *(v4 + 137) = a1 & 1;
  *(v4 + 32) = v4;
  *(v4 + 136) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 72) = swift_task_alloc();
  type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 136) = a1 & 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 40) = v3;

  return MEMORY[0x2822009F8](sub_268E3563C, 0);
}

uint64_t sub_268E3563C()
{
  v11 = MEMORY[0x277D55BE8];
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v6 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v7, 1);
  v2 = sub_268CDD6D4();
  sub_268E32588(v6 & 1, v2 & 1, 0, v7, 2, v9);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  *(v0 + 96) = v3;
  sub_268E35B74(v9, v10);
  v14 = sub_268E321E0();
  *(v0 + 104) = v14;
  sub_268E35D34(v10);
  v15 = (v11 + *v11);
  v4 = swift_task_alloc();
  *(v12 + 112) = v4;
  *v4 = *(v12 + 32);
  v4[1] = sub_268E3581C;

  return v15(v16, v13, v14);
}

uint64_t sub_268E3581C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268E35A84;
  }

  else
  {

    v3 = sub_268E359B0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E359B0()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268E35D34(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268E35A84()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268E35D34(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E35B74(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = *(a1 + 8);

  *(a2 + 8) = v5;
  v6 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
  v7 = *(v6 + 28);
  v9 = sub_268F9A9C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1 + v7, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v7), (a1 + v7), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(a2 + v7, 0, 1, v9);
  }

  result = a2;
  *(a2 + *(v6 + 32)) = *(a1 + *(v6 + 32));
  return result;
}

uint64_t sub_268E35D34(uint64_t a1)
{

  v2 = *(type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E35E0C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 138) = a2 & 1;
  *(v5 + 137) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 72) = swift_task_alloc();
  type metadata accessor for StandByParameters(0);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 136) = a1 & 1;
  *(v5 + 144) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;

  return MEMORY[0x2822009F8](sub_268E35FC0, 0);
}

uint64_t sub_268E35FC0()
{
  v11 = MEMORY[0x277D55BE8];
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v6 = *(v0 + 138);
  v5 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v7, 1);
  sub_268E32B50(v5 & 1, v6 & 1, 0, v7, 2, v9);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v2;
  *(v0 + 96) = v2;
  sub_268E36508(v9, v10);
  v14 = sub_268E327AC();
  *(v0 + 104) = v14;
  sub_268E366C8(v10);
  v15 = (v11 + *v11);
  v3 = swift_task_alloc();
  *(v12 + 112) = v3;
  *v3 = *(v12 + 32);
  v3[1] = sub_268E361A8;

  return v15(v16, v13, v14);
}

uint64_t sub_268E361A8(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268E36414;
  }

  else
  {

    v3 = sub_268E3633C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E3633C()
{
  v1 = v0[11];
  v0[4] = v0;
  sub_268E366C8(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_268E36414()
{
  v3 = *(v0 + 88);
  *(v0 + 32) = v0;

  sub_268E366C8(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E36508(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = *(a1 + 8);

  *(a2 + 8) = v5;
  v6 = type metadata accessor for StandByParameters(0);
  v7 = *(v6 + 28);
  v9 = sub_268F9A9C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1 + v7, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v7), (a1 + v7), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(a2 + v7, 0, 1, v9);
  }

  result = a2;
  *(a2 + *(v6 + 32)) = *(a1 + *(v6 + 32));
  return result;
}

uint64_t sub_268E366C8(uint64_t a1)
{

  v2 = *(type metadata accessor for StandByParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E367A0(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268E368AC, 0);
}

uint64_t sub_268E368AC()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268E33FE0(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268E36D3C(v6, v7);
  v11 = sub_268E33B1C();
  v0[12] = v11;
  sub_268E36F34(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268E36A0C;

  return v12(v13, v10, v11);
}

uint64_t sub_268E36A0C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268E36C60;
  }

  else
  {

    v3 = sub_268E36BA0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E36BA0()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268E36F34(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268E36C60()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268E36F34(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E36D3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  v8 = DoesNotSupportBinarySettingParameters[7];
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  result = a2;
  *(a2 + DoesNotSupportBinarySettingParameters[8]) = *(a1 + DoesNotSupportBinarySettingParameters[8]);
  *(a2 + DoesNotSupportBinarySettingParameters[9]) = *(a1 + DoesNotSupportBinarySettingParameters[9]);
  return result;
}

uint64_t sub_268E36F34(uint64_t a1)
{

  v2 = *(type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E37018(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268E37124, 0);
}

uint64_t sub_268E37124()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268E3466C(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268E375B4(v6, v7);
  v11 = sub_268E342BC();
  v0[12] = v11;
  sub_268E37780(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268E37284;

  return v12(v13, v10, v11);
}

uint64_t sub_268E37284(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268E374D8;
  }

  else
  {

    v3 = sub_268E37418;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E37418()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268E37780(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268E374D8()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268E37780(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268E375B4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = *(a1 + 1);

  *(a2 + 1) = v6;
  v7 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
  v8 = *(v7 + 24);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  result = a2;
  a2[*(v7 + 28)] = a1[*(v7 + 28)];
  return result;
}

uint64_t sub_268E37780(uint64_t a1)
{

  v2 = *(type metadata accessor for SettingIntentFocusNotConfiguredParameters(0) + 24);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_268E37864()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268E378A0, 0);
}

uint64_t sub_268E378A0()
{
  v4 = MEMORY[0x277D55BE8];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

uint64_t sub_268E379F4(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268E37B00, 0);
}

uint64_t sub_268E37B00()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268E34D60(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268E37F90(v6, v7);
  v11 = sub_268E3492C();
  v0[12] = v11;
  sub_268E38168(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268E37C60;

  return v12(v13, v10, v11);
}

uint64_t sub_268E37C60(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268E37EB4;
  }

  else
  {

    v3 = sub_268E37DF4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E37DF4()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268E38168(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268E37EB4()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268E38168(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_268E37F90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  DoesNotSupportNumericSettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0);
  v8 = *(DoesNotSupportNumericSettingParameters + 28);
  v10 = sub_268F9A9C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy((a2 + v8), a1 + v8, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  result = a2;
  *(a2 + *(DoesNotSupportNumericSettingParameters + 32)) = *(a1 + *(DoesNotSupportNumericSettingParameters + 32));
  return result;
}

uint64_t sub_268E38168(uint64_t a1)
{

  v2 = *(type metadata accessor for SettingIntentDeviceDoesNotSupportNumericSettingParameters(0) + 28);
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}