uint64_t sub_2729F03A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E260, &qword_2729FA988);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = v40 - v7;
  v8 = sub_2729FA48C();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v40[0] = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v42 = v40 - v12;
  MEMORY[0x28223BE20](v11);
  v43 = v40 - v13;
  v14 = sub_2729FA32C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2729FA46C();
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x28223BE20](v18);
  v47 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v15 + 104);
  v20(v17, *MEMORY[0x277CF1EF8], v14);
  v21 = a1;
  v22 = a2;
  LOBYTE(a1) = sub_2729FA21C();
  v23 = *(v15 + 8);
  v23(v17, v14);
  if (a1)
  {
    v24 = v21;
    v25 = MEMORY[0x277CF2A30];
  }

  else
  {
    v20(v17, *MEMORY[0x277CF1F00], v14);
    v35 = sub_2729FA21C();
    v23(v17, v14);
    if (v35 & 1) == 0 || (v20(v17, *MEMORY[0x277CF1F08], v14), v36 = sub_2729FA21C(), v23(v17, v14), (v36))
    {
      sub_2729FA4AC();
      sub_2729F3BFC(&qword_28089E1D8, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      swift_allocError();
      sub_2729FA49C();
      swift_willThrow();
      return sub_2729F3DA8(v21, v22);
    }

    v24 = v21;
    v25 = MEMORY[0x277CF2A38];
  }

  v27 = v47;
  v26 = v48;
  v28 = v49;
  (*(v48 + 104))(v47, *v25, v49);
  v52 = MEMORY[0x277CC9318];
  v53 = MEMORY[0x277CF1C90];
  v50 = v24;
  v51 = v22;
  v29 = v22;
  v30 = v41;
  (*(v26 + 16))(v41, v27, v28);
  (*(v26 + 56))(v30, 0, 1, v28);
  sub_2729F3DFC(v24, v22);
  v31 = v43;
  sub_2729FA47C();
  v32 = v42;
  v33 = v44;
  sub_2729FA45C();
  if (v33)
  {
    sub_2729F3DA8(v24, v29);
    (*(v45 + 8))(v31, v46);
    return (*(v26 + 8))(v27, v28);
  }

  else
  {
    v38 = v45;
    v37 = v46;
    (*(v45 + 16))(v40[0], v32, v46);
    sub_2729FA3AC();
    sub_2729F3DA8(v24, v29);
    v39 = *(v38 + 8);
    v39(v32, v37);
    v39(v31, v37);
    return (*(v48 + 8))(v47, v49);
  }
}

uint64_t sub_2729F0968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v292 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E1E8, &qword_2729FA910);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v273 = &v250 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v296 = &v250 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E1F0, &qword_2729FA918);
  MEMORY[0x28223BE20](v7 - 8);
  v268 = &v250 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E1F8, &qword_2729FA920);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v274 = (&v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v280 = &v250 - v12;
  v289 = sub_2729FA3BC();
  v282 = *(v289 - 8);
  v13 = MEMORY[0x28223BE20](v289);
  v284 = &v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v295 = &v250 - v15;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E200, &qword_2729FA928);
  v16 = MEMORY[0x28223BE20](v275);
  v288 = &v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v276 = (&v250 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E208, &qword_2729FA930);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v286 = (&v250 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v285 = (&v250 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E210, &qword_2729FA938);
  MEMORY[0x28223BE20](v23 - 8);
  v279 = &v250 - v24;
  v293 = _s13ThumbnailInfoVMa(0);
  v283 = *(v293 - 8);
  v25 = MEMORY[0x28223BE20](v293);
  v294 = &v250 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v270 = (&v250 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v278 = &v250 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v281 = &v250 - v32;
  MEMORY[0x28223BE20](v31);
  v267 = &v250 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E218, &qword_2729FA940);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v287 = &v250 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v277 = (&v250 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v269 = (&v250 - v40);
  MEMORY[0x28223BE20](v39);
  v266 = &v250 - v41;
  v291 = sub_2729FA1FC();
  v271 = *(v291 - 8);
  v42 = MEMORY[0x28223BE20](v291);
  v44 = &v250 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v250 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v250 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v250 - v51;
  v53 = sub_2729FA05C();
  v272 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = &v250 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v57 = sub_2729F9DEC();
  v58 = v290;
  v59 = sub_2729F9FFC();
  if (v58)
  {
  }

  v265 = v56;
  v259 = v52;
  v257 = v50;
  v258 = v47;
  v290 = v44;
  v261 = v59;
  v262 = v60;
  v62 = sub_2729FA01C();
  v64 = v63;
  (*(v272 + 8))(v55, v53);
  v65 = sub_2729FA02C();
  v67 = v66;
  v263 = v57;
  sub_2729F3DFC(v261, v262);
  sub_2729F3DFC(v62, v64);
  sub_2729F3DFC(v65, v67);
  v252 = v62;
  v253 = v64;
  v250 = v65;
  v251 = v67;
  sub_2729FA34C();

  sub_2729F71F8(v68, v299);
  v69 = v299[0];
  v309 = v299[0];
  sub_2729F93A8(&v309, &v298, &qword_28089E220, &qword_2729FA948);
  v70 = sub_2729F8CC4(MEMORY[0x277D84F90]);
  v71 = v69 + 56;
  v72 = 1 << *(v69 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v69 + 56);
  v75 = (v72 + 63) >> 6;
  v256 = v69;

  v76 = 0;
  v272 = 0;
  v77 = v295;
  v78 = v294;
  v79 = v287;
  v80 = v277;
  v254 = v69 + 56;
  v255 = v75;
  while (v74)
  {
    v83 = v76;
LABEL_13:
    v84 = (*(v256 + 48) + ((v83 << 10) | (16 * __clz(__rbit64(v74)))));
    v85 = *v84;
    v86 = v84[1];

    v87 = sub_2729F9DCC();
    v260 = sub_2729F9EAC();
    v264 = v88;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v298 = v70;
    v91 = sub_2729F5724(v85, v86);
    v92 = v70[2];
    v93 = (v90 & 1) == 0;
    v94 = v92 + v93;
    if (__OFADD__(v92, v93))
    {
      goto LABEL_110;
    }

    v95 = v90;
    if (v70[3] >= v94)
    {
      v75 = v255;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2729F6300();
        v75 = v255;
      }

      v79 = v287;
    }

    else
    {
      sub_2729F5B1C(v94, isUniquelyReferenced_nonNull_native);
      v96 = sub_2729F5724(v85, v86);
      if ((v95 & 1) != (v97 & 1))
      {
        goto LABEL_115;
      }

      v91 = v96;
      v79 = v287;
      v75 = v255;
    }

    v74 &= v74 - 1;
    v70 = v298;
    if (v95)
    {
      v81 = (v298[7] + 16 * v91);
      v82 = v264;
      *v81 = v260;
      v81[1] = v82;
    }

    else
    {
      v298[(v91 >> 6) + 8] |= 1 << v91;
      v98 = (v70[6] + 16 * v91);
      *v98 = v85;
      v98[1] = v86;
      v99 = (v70[7] + 16 * v91);
      v100 = v264;
      *v99 = v260;
      v99[1] = v100;
      v101 = v70[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_114;
      }

      v70[2] = v103;
    }

    v76 = v83;
    v77 = v295;
    v78 = v294;
    v80 = v277;
    v71 = v254;
  }

  while (1)
  {
    v83 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      result = sub_2729FA59C();
      __break(1u);
      return result;
    }

    if (v83 >= v75)
    {
      break;
    }

    v74 = *(v71 + 8 * v83);
    ++v76;
    if (v74)
    {
      goto LABEL_13;
    }
  }

  sub_2729F9410(&v309, &qword_28089E220, &qword_2729FA948);
  sub_2729FA37C();
  v104 = swift_allocObject();
  v104[2] = sub_2729F8E20(MEMORY[0x277D84F90]);
  v260 = (v104 + 2);
  v104[3] = v105;
  v104[4] = v106;
  v264 = v104;
  v107 = v300;
  v108 = v288;
  v109 = v281;
  v110 = v269;
  if (v300)
  {
    v111 = v299[1];

    sub_2729F9F2C();
    v112 = v266;
    v256 = v111;
    sub_2729FA00C();
    v113 = v271;
    v114 = v291;
    if ((*(v271 + 48))(v112, 1, v291) == 1)
    {

      sub_2729F9410(v112, &qword_28089E218, &qword_2729FA940);
    }

    else
    {
      (*(v113 + 32))(v259, v112, v114);
      v115 = v267;
      v116 = v259;
      (*(v113 + 16))(v267, v259, v114);
      v117 = v293;
      *(v115 + *(v293 + 20)) = 0x4072C00000000000;
      *(v115 + *(v117 + 24)) = 1;
      sub_2729F2B98(v115, v256, v107, v264);

      v118 = v115;
      v80 = v277;
      sub_2729F91E0(v118);
      (*(v113 + 8))(v116, v114);
    }

    v77 = v295;
    v110 = v269;
  }

  v119 = v302;
  if (v302)
  {
    v120 = v301;

    sub_2729F9F2C();
    v266 = v120;
    sub_2729FA00C();
    v121 = v291;
    if ((*(v271 + 48))(v110, 1, v291) == 1)
    {

      sub_2729F9410(v110, &qword_28089E218, &qword_2729FA940);
    }

    else
    {
      v122 = v271;
      v123 = v110;
      v124 = v257;
      (*(v271 + 32))(v257, v123, v121);
      v125 = *(v122 + 16);
      v126 = v267;
      v125(v267, v124, v121);
      v127 = v293;
      *(v126 + *(v293 + 20)) = 0x4051800000000000;
      *(v126 + *(v127 + 24)) = 0;
      sub_2729F2B98(v126, v266, v119, v264);

      v128 = v126;
      v80 = v277;
      sub_2729F91E0(v128);
      (*(v271 + 8))(v124, v121);
    }
  }

  v129 = v304;
  if (v304)
  {
    v130 = v303;

    sub_2729F9F2C();
    v277 = v130;
    sub_2729FA00C();
    v131 = v271;
    v132 = v291;
    if ((*(v271 + 48))(v80, 1, v291) == 1)
    {

      sub_2729F9410(v80, &qword_28089E218, &qword_2729FA940);
    }

    else
    {
      v133 = *(v131 + 32);
      v134 = v258;
      v133(v258, v80, v132);
      v135 = v267;
      (*(v271 + 16))(v267, v134, v132);
      v136 = v293;
      *(v135 + *(v293 + 20)) = 0x4051800000000000;
      *(v135 + *(v136 + 24)) = 0;
      sub_2729F2B98(v135, v277, v129, v264);

      sub_2729F91E0(v135);
      (*(v271 + 8))(v134, v132);
    }
  }

  v137 = v306;
  v307 = v306;
  v138 = *(v306 + 16);
  if (v138)
  {
    v308 = v305;
    v277 = (v306 + 32);
    sub_2729F93A8(&v308, &v298, &qword_28089E228, &qword_2729FA950);
    sub_2729F93A8(&v307, &v298, &qword_28089E230, &qword_2729FA958);
    v139 = 0;
    v140 = (v271 + 48);
    v269 = (v271 + 32);
    v267 = (v271 + 16);
    v259 = (v283 + 56);
    v271 += 8;
    v266 = v137;
    while (1)
    {
      if (v139 >= v138)
      {
        goto LABEL_105;
      }

      v141 = &v277[2 * v139];
      v143 = *v141;
      v142 = v141[1];

      sub_2729F9F2C();
      sub_2729FA00C();
      v144 = v291;
      if ((*v140)(v79, 1, v291) == 1)
      {

        sub_2729F9410(v79, &qword_28089E218, &qword_2729FA940);
        v77 = v295;
        v78 = v294;
        goto LABEL_39;
      }

      v145 = v290;
      (*v269)(v290, v79, v144);
      (*v267)(v109, v145, v144);
      v146 = v293;
      *(v109 + *(v293 + 20)) = 0x4083100000000000;
      *(v109 + *(v146 + 24)) = 0;
      swift_beginAccess();
      v148 = v264[2];
      v147 = v264[3];
      v149 = v264[4];
      v150 = *(v147 + 16);
      if (v148)
      {

        v151 = sub_2729F4A7C(v143, v142, v147 + 32, v150, (v148 + 16), v148 + 32);
        v153 = v152;

        if (v153)
        {
          goto LABEL_54;
        }

        v154 = v283;
        if ((v151 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (!v150)
        {
LABEL_54:
          swift_endAccess();
          v157 = v281;
          v158 = v278;
          sub_2729F923C(v281, v278);
          v159 = v293;
          v160 = v279;
          goto LABEL_60;
        }

        v151 = 0;
        v155 = (v147 + 40);
        while (1)
        {
          v156 = *(v155 - 1) == v143 && *v155 == v142;
          if (v156 || (sub_2729FA57C() & 1) != 0)
          {
            break;
          }

          ++v151;
          v155 += 2;
          if (v150 == v151)
          {
            goto LABEL_54;
          }
        }

        v154 = v283;
      }

      v160 = v279;
      v161 = v270;
      if (v151 >= *(v149 + 16))
      {
        goto LABEL_112;
      }

      sub_2729F923C(v149 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v151, v270);
      swift_endAccess();
      v159 = v293;
      v162 = *(v293 + 20);
      v163 = *(v161 + v162);
      if (v163 <= 610.0)
      {
        v163 = 610.0;
      }

      *(v161 + v162) = v163;
      *(v161 + *(v159 + 24)) = *(v161 + *(v159 + 24));
      v164 = v161;
      v158 = v278;
      sub_2729F917C(v164, v278);
      v157 = v281;
LABEL_60:
      sub_2729F923C(v158, v160);
      (*v259)(v160, 0, 1, v159);
      swift_beginAccess();
      sub_2729F2FFC(v160, v143, v142);
      swift_endAccess();
      sub_2729F91E0(v158);
      sub_2729F91E0(v157);
      v165 = *(v264[4] + 16);
      v166 = sub_2729FA36C();
      (*v271)(v290, v291);
      v167 = v165 < v166;
      v77 = v295;
      v78 = v294;
      v108 = v288;
      v109 = v157;
      v79 = v287;
      v137 = v266;
      if (!v167)
      {
LABEL_61:
        sub_2729F9410(&v308, &qword_28089E228, &qword_2729FA950);
        sub_2729F9410(&v307, &qword_28089E230, &qword_2729FA958);
        break;
      }

LABEL_39:
      ++v139;
      v138 = *(v137 + 16);
      if (v139 == v138)
      {
        goto LABEL_61;
      }
    }
  }

  swift_beginAccess();
  v168 = v264[2];
  v169 = v264[3];
  v170 = v264[4];
  v278 = *(v170 + 2);
  v260 = v169 + 32;
  v271 = v282 + 16;
  v279 = (v282 + 56);
  LODWORD(v259) = *MEMORY[0x277CC6DB8];
  v270 = (v282 + 48);
  v269 = (v282 + 32);
  v258 = (v282 + 40);
  v277 = (v282 + 8);
  v257 = v168;

  v266 = v169;

  v267 = v170;

  v171 = 0;
  v172 = v296;
  while (1)
  {
    if (v171 >= v278)
    {
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E238, &qword_2729FA960);
      v188 = v286;
      (*(*(v191 - 8) + 56))(v286, 1, 1, v191);
    }

    else
    {
      v176 = v276;
      v177 = v267;
      if ((v171 & 0x8000000000000000) != 0)
      {
        goto LABEL_106;
      }

      if (v171 >= *(v266 + 16))
      {
        goto LABEL_107;
      }

      v178 = v275;
      v179 = *(v275 + 48);
      v180 = (v260 + 16 * v171);
      v181 = v180[1];
      *v276 = *v180;
      *(v176 + 8) = v181;
      if (v171 >= *(v177 + 2))
      {
        goto LABEL_108;
      }

      sub_2729F923C(&v177[((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v171++], v176 + v179);
      sub_2729F92A0(v176, v108, &qword_28089E200, &qword_2729FA928);
      v182 = *(v178 + 48);
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E238, &qword_2729FA960);
      v184 = *(v183 + 48);
      v185 = v108[1];
      v186 = v286;
      *v286 = *v108;
      v186[1] = v185;
      v187 = v108 + v182;
      v188 = v186;
      sub_2729F917C(v187, v186 + v184);
      v189 = *(*(v183 - 8) + 56);
      v190 = v183;
      v172 = v296;
      v189(v188, 0, 1, v190);
    }

    v192 = v188;
    v193 = v285;
    sub_2729F92A0(v192, v285, &qword_28089E208, &qword_2729FA930);
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E238, &qword_2729FA960);
    v195 = (*(*(v194 - 8) + 48))(v193, 1, v194);
    v196 = v292;
    if (v195 == 1)
    {

      sub_2729F3DA8(v261, v262);
      sub_2729F3DA8(v252, v253);
      sub_2729F3DA8(v250, v251);

      sub_2729F914C(v299);
    }

    v290 = *v193;
    v197 = v193;
    v198 = v193[1];
    sub_2729F917C(v197 + *(v194 + 48), v78);
    v199 = v272;
    v200 = sub_2729FA20C();
    if (v199)
    {

      sub_2729F914C(v299);

      sub_2729F3DA8(v250, v251);
      sub_2729F3DA8(v252, v253);
      sub_2729F3DA8(v261, v262);
      sub_2729F91E0(v78);
      v248 = sub_2729FA3CC();
      (*(*(v248 - 8) + 8))(v196, v248);
    }

    v281 = v171;
    v202 = v77;
    v203 = v293;
    v204 = v200;
    v205 = v78;
    v206 = v201;
    sub_2729F3DFC(v200, v201);
    v207 = v202;
    v291 = v206;
    sub_2729F03A0(v204, v206, v202);
    v272 = 0;
    v156 = *(v205 + *(v203 + 24)) == 1;
    v287 = v204;
    if (!v156)
    {
      v78 = v205;
      v213 = v289;
      goto LABEL_83;
    }

    v208 = v280;
    sub_2729F9E5C();
    v209 = v274;
    sub_2729F93A8(v208, v274, &qword_28089E1F8, &qword_2729FA920);
    v210 = sub_2729F9E4C();
    v211 = *(v210 - 8);
    v212 = (*(v211 + 48))(v209, 1, v210);
    v213 = v289;
    if (v212 != 1)
    {
      break;
    }

    sub_2729F9410(v208, &qword_28089E1F8, &qword_2729FA920);
    sub_2729F9410(v209, &qword_28089E1F8, &qword_2729FA920);
LABEL_82:
    v172 = v296;
    v78 = v294;
LABEL_83:
    (*v271)(v172, v207, v213);
    v220 = v213;
    v221 = *v279;
    (*v279)(v172, 0, 1, v213);
    v222 = sub_2729FA35C();
    v223 = v296;
    v224 = v222;
    v226 = v225;
    if ((*v270)(v296, 1, v220) == 1)
    {
      sub_2729F9410(v223, &qword_28089E1E8, &qword_2729FA910);
      v227 = sub_2729F5724(v290, v198);
      v229 = v228;

      v230 = v224;
      if (v229)
      {
        v231 = swift_isUniquelyReferenced_nonNull_native();
        v297 = *v226;
        *v226 = 0x8000000000000000;
        if (!v231)
        {
          sub_2729F6080();
        }

        v232 = v297;

        v174 = v273;
        v175 = v289;
        (*(v282 + 32))(v273, *(v232 + 56) + *(v282 + 72) * v227, v289);
        sub_2729F5DDC(v227, v232);
        *v226 = v232;

        v173 = 0;
      }

      else
      {
        v173 = 1;
        v174 = v273;
        v175 = v289;
      }

      v221(v174, v173, 1, v175);
      sub_2729F9410(v174, &qword_28089E1E8, &qword_2729FA910);
      v172 = v296;
      v77 = v295;
      v108 = v288;
      v171 = v281;
    }

    else
    {
      v233 = *v269;
      (*v269)(v284, v223, v220);
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v297 = *v226;
      v235 = v297;
      *v226 = 0x8000000000000000;
      v237 = sub_2729F5724(v290, v198);
      v238 = v235[2];
      v239 = (v236 & 1) == 0;
      v240 = v238 + v239;
      if (__OFADD__(v238, v239))
      {
        goto LABEL_109;
      }

      v241 = v236;
      v230 = v224;
      if (v235[3] >= v240)
      {
        v172 = v296;
        if ((v234 & 1) == 0)
        {
          sub_2729F6080();
          v172 = v296;
        }

        v175 = v289;
      }

      else
      {
        sub_2729F579C(v240, v234);
        v242 = sub_2729F5724(v290, v198);
        if ((v241 & 1) != (v243 & 1))
        {
          goto LABEL_115;
        }

        v237 = v242;
        v175 = v289;
        v172 = v296;
      }

      v171 = v281;
      if (v241)
      {

        v244 = v297;
        (*(v282 + 40))(v297[7] + *(v282 + 72) * v237, v284, v175);
      }

      else
      {
        v244 = v297;
        v297[(v237 >> 6) + 8] |= 1 << v237;
        v245 = (v244[6] + 16 * v237);
        *v245 = v290;
        v245[1] = v198;
        v233(v244[7] + *(v282 + 72) * v237, v284, v175);
        v246 = v244[2];
        v102 = __OFADD__(v246, 1);
        v247 = v246 + 1;
        if (v102)
        {
          goto LABEL_113;
        }

        v244[2] = v247;
      }

      v78 = v294;
      v108 = v288;
      *v226 = v244;

      v77 = v295;
    }

    v230(&v298, 0);
    sub_2729F3DA8(v287, v291);
    (*v277)(v77, v175);
    sub_2729F91E0(v78);
  }

  v214 = (*(v211 + 88))(v209, v210);
  if (v214 != v259)
  {
    sub_2729F9410(v280, &qword_28089E1F8, &qword_2729FA920);
    (*(v211 + 8))(v209, v210);
    goto LABEL_82;
  }

  (*(v211 + 96))(v209, v210);
  v215 = *v209;
  v216 = v268;
  v217 = v272;
  sub_2729FA43C();
  v272 = v217;
  v78 = v294;
  v218 = v287;
  if (!v217)
  {
    v219 = sub_2729FA44C();
    (*(*(v219 - 8) + 56))(v216, 0, 1, v219);
    sub_2729FA39C();

    sub_2729F9410(v280, &qword_28089E1F8, &qword_2729FA920);
    v172 = v296;
    goto LABEL_83;
  }

  sub_2729F914C(v299);

  sub_2729F3DA8(v218, v291);

  sub_2729F3DA8(v250, v251);
  sub_2729F3DA8(v252, v253);
  sub_2729F3DA8(v261, v262);
  sub_2729F9410(v280, &qword_28089E1F8, &qword_2729FA920);
  (*v277)(v207, v213);
  sub_2729F91E0(v78);
  v249 = sub_2729FA3CC();
  (*(*(v249 - 8) + 8))(v292, v249);
}

uint64_t sub_2729F2B98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E210, &qword_2729FA938);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = _s13ThumbnailInfoVMa(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  swift_beginAccess();
  sub_2729F2E38(a2, a3, a4[2], a4[3], a4[4], v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2729F9410(v13, &qword_28089E210, &qword_2729FA938);
    swift_endAccess();
    sub_2729F923C(a1, v20);
  }

  else
  {
    sub_2729F917C(v13, v18);
    swift_endAccess();
    v21 = *(v14 + 20);
    v22 = *&v18[v21];
    if (v22 <= *(a1 + v21))
    {
      v22 = *(a1 + v21);
    }

    *&v18[v21] = v22;
    v23 = *(v14 + 24);
    if (v18[v23])
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a1 + v23);
    }

    v18[v23] = v24;
    sub_2729F917C(v18, v20);
  }

  sub_2729F923C(v20, v11);
  (*(v15 + 56))(v11, 0, 1, v14);
  swift_beginAccess();

  sub_2729F2FFC(v11, a2, a3);
  swift_endAccess();
  return sub_2729F91E0(v20);
}

uint64_t sub_2729F2E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a4 + 16);
  if (!a3)
  {
    if (v11)
    {
      v13 = 0;
      v22 = (a4 + 40);
      do
      {
        result = *(v22 - 1);
        if (result == a1 && *v22 == a2)
        {
          goto LABEL_4;
        }

        result = sub_2729FA57C();
        if (result)
        {
          goto LABEL_4;
        }

        ++v13;
        v22 += 2;
      }

      while (v11 != v13);
    }

LABEL_14:
    v24 = _s13ThumbnailInfoVMa(0);
    v18 = *(*(v24 - 8) + 56);
    v21 = v24;
    v19 = a6;
    v20 = 1;
    goto LABEL_15;
  }

  v13 = sub_2729F4A7C(a1, a2, a4 + 32, v11, (a3 + 16), a3 + 32);
  v15 = v14;

  if (v15)
  {
    goto LABEL_14;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_4:
  if (v13 >= *(a5 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v17 = _s13ThumbnailInfoVMa(0);
  v25 = *(v17 - 8);
  sub_2729F923C(a5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v13, a6);
  v18 = *(v25 + 56);
  v19 = a6;
  v20 = 0;
  v21 = v17;
LABEL_15:

  return v18(v19, v20, 1, v21);
}

uint64_t sub_2729F2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s13ThumbnailInfoVMa(0);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v47 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v48 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E240, &qword_2729FA968);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = *v3;
  v20 = v3[1];
  v21 = *(v20 + 16);
  if (!*v3)
  {
    if (v21)
    {
      v22 = 0;
      v29 = (v20 + 40);
      while (1)
      {
        v30 = *(v29 - 1) == a2 && *v29 == a3;
        if (v30 || (sub_2729FA57C() & 1) != 0)
        {
          break;
        }

        ++v22;
        v29 += 2;
        if (v21 == v22)
        {
          goto LABEL_12;
        }
      }

      v27 = &v18[*(v16 + 48)];
      v28 = a1;
      sub_2729F93A8(a1, v27, &qword_28089E210, &qword_2729FA938);
      v26 = 0;
      goto LABEL_21;
    }

LABEL_12:
    v27 = &v18[*(v16 + 48)];
    v28 = a1;
    sub_2729F93A8(a1, v27, &qword_28089E210, &qword_2729FA938);
    v26 = 0;
LABEL_13:
    v31 = v52;
    if ((*(v52 + 48))(v27, 1, v51) == 1)
    {
      sub_2729F9410(v28, &qword_28089E210, &qword_2729FA938);
    }

    else
    {
      v33 = v50;
      sub_2729F917C(v27, v50);
      sub_2729F4340(a2, a3, v26);

      v34 = v49;
      sub_2729F923C(v33, v49);
      v37 = v3[2];
      v36 = v3 + 2;
      v35 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v36 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2729F4778(0, *(v35 + 16) + 1, 1);
        v35 = *v36;
      }

      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2729F4778((v39 > 1), v40 + 1, 1);
      }

      sub_2729F9410(v28, &qword_28089E210, &qword_2729FA938);
      sub_2729F91E0(v50);
      v41 = *v36;
      *(v41 + 16) = v40 + 1;
      result = sub_2729F917C(v34, v41 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v40);
      *v36 = v41;
    }

    return result;
  }

  v22 = sub_2729F4A7C(a2, a3, v20 + 32, v21, (v19 + 16), v19 + 32);
  v24 = v23;
  v26 = v25;

  v27 = &v18[*(v16 + 48)];
  sub_2729F93A8(a1, v27, &qword_28089E210, &qword_2729FA938);
  v28 = a1;
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_21:
  v43 = v51;
  v42 = v52;

  if ((*(v42 + 48))(v27, 1, v43) == 1)
  {
    sub_2729F6658(v22, v26);

    v44 = v47;
    sub_2729F67C0(v22, v47);
    sub_2729F9410(v28, &qword_28089E210, &qword_2729FA938);
    return sub_2729F91E0(v44);
  }

  v45 = v48;
  sub_2729F917C(v27, v48);
  v46 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_2729F6978(v46);
  }

  result = sub_2729F9410(v28, &qword_28089E210, &qword_2729FA938);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < v46[2])
  {
    result = sub_2729F9308(v45, v46 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v22);
    v3[2] = v46;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t WalletOrderPreviewUnpacker.unpack(from:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2729FA3FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2729FA38C();
  v10 = v7;
  v11 = a1;
  v12 = a2;
  sub_2729FA3CC();
  sub_2729FA3DC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2729F35E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[4] = a3;
  v19[3] = a2;
  v19[1] = a4;
  v22 = sub_2729FA1FC();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2729FA42C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = [objc_opt_self() defaultManager];
  v19[2] = a1;
  sub_2729FA3EC();
  sub_2729FA40C();
  v15 = *(v8 + 8);
  v15(v13, v7);
  v16 = sub_2729FA4BC();

  LODWORD(v13) = [v14 isWritableFileAtPath_];

  if (v13)
  {
    sub_2729F9E0C();
    sub_2729FA3EC();
    sub_2729FA41C();
    v15(v11, v7);
    v21[3] = &type metadata for OrderPackageValidator;
    v21[4] = sub_2729F3C44();
    v17 = v19[5];
    sub_2729F9DDC();
    (*(v20 + 8))(v6, v22);
    if (v17)
    {
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_2729FA3CC();
      sub_2729F9DBC();
    }
  }

  else
  {
    sub_2729FA4AC();
    sub_2729F3BFC(&qword_28089E1D8, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_2729FA49C();
    return swift_willThrow();
  }
}

uint64_t sub_2729F39EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2729FA3FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2729FA38C();
  v10 = v7;
  v11 = a1;
  v12 = a2;
  sub_2729FA3CC();
  sub_2729FA3DC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t getEnumTagSinglePayload for WalletOrderPreviewUnpacker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WalletOrderPreviewUnpacker(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2729F3BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2729F3C44()
{
  result = qword_28089E1E0;
  if (!qword_28089E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089E1E0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t _s13ThumbnailInfoVMa(uint64_t a1)
{
  result = qword_28089E298;
  if (!qword_28089E298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2729F3DA8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2729F3DFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_2729F3E50(uint64_t a1)
{
  v2 = sub_2729F4010();
  v3 = sub_2729F4018(&v19, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v19;
  if (v19 != v4)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v4 < v19)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      sub_2729F4BC8(a1, a1 + 32, 0, (2 * v19) | 1);
      v20 = v3;
      v21 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v8 = (a1 + 32 + 16 * v5);
          v10 = *v8;
          v9 = v8[1];
          v11 = v20;
          v12 = v21;
          v13 = *(v21 + 16);
          if (v20)
          {

            sub_2729F4A7C(v10, v9, v12 + 32, v13, (v11 + 16), v11 + 32);
            v15 = v14;
            v7 = v16;

            if ((v15 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v13)
            {
              v17 = (v21 + 40);
              do
              {
                v18 = *(v17 - 1) == v10 && *v17 == v9;
                if (v18 || (sub_2729FA57C() & 1) != 0)
                {
                  goto LABEL_9;
                }

                v17 += 2;
              }

              while (--v13);
            }

            v7 = 0;
          }

          sub_2729F4340(v10, v9, v7);
LABEL_8:

LABEL_9:
          if (++v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_2729F4018(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x2743D1D00](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x2743D1D10]();
    sub_2729F4CA0(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_2729F40FC(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_2729F40FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = MEMORY[0x277D84F90];
  result = sub_2729F4758(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v18[2];
    v17 = a1;
    do
    {
      v7 = v5++;
      v8 = (a1 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v18 + 5;
      v12 = v6 + 1;
      while (--v12)
      {
        if (v9 != *(v11 - 1) || v10 != *v11)
        {
          v11 += 2;
          if ((sub_2729FA57C() & 1) == 0)
          {
            continue;
          }
        }

        return v7;
      }

      v14 = v18[2];
      v15 = v18[3];
      v6 = v14 + 1;

      if (v14 >= v15 >> 1)
      {
        sub_2729F4758((v15 > 1), v14 + 1, 1);
      }

      v18[2] = v6;
      v16 = &v18[2 * v14];
      v16[4] = v9;
      v16[5] = v10;
      a1 = v17;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_2729F424C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (*v2)
  {

    sub_2729F4A7C(a1, a2, v6 + 32, v7, (v5 + 16), v5 + 32);
    v9 = v8;
    v7 = v10;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    v12 = 0;
    v13 = (v6 + 40);
    while (1)
    {
      v14 = *(v13 - 1) == a1 && *v13 == a2;
      if (v14 || (sub_2729FA57C() & 1) != 0)
      {
        return 0;
      }

      ++v12;
      v13 += 2;
      if (v7 == v12)
      {
        v7 = 0;
        break;
      }
    }
  }

  sub_2729F4340(a1, a2, v7);
  return 1;
}

uint64_t sub_2729F4340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2729F4758(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_2729F4758((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x2743D1CD0](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_2729FA2AC();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_2729FA24C();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_2729F44B8();
}

uint64_t sub_2729F44B8()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x2743D1D00](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_2729F4558(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_2729F4558(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x2743D1D00](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x2743D1D10](v8, a4);
    sub_2729F45D8(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_2729F4628(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_2729FA5AC();

        sub_2729FA4CC();
        v7 = sub_2729FA5BC();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_2729FA22C();

        if (v8)
        {
          while (1)
          {
            sub_2729FA27C();
          }
        }

        v7 = sub_2729FA26C();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

char *sub_2729F4758(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2729F4798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2729F4778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2729F48A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2729F4798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E250, &qword_2729FA978);
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

void *sub_2729F48A4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E248, &qword_2729FA970);
  v10 = *(_s13ThumbnailInfoVMa(0) - 8);
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
  v15 = *(_s13ThumbnailInfoVMa(0) - 8);
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

uint64_t sub_2729F4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_2729FA5AC();
  sub_2729FA4CC();
  result = sub_2729FA5BC();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_2729FA22C();
    result = sub_2729FA25C();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_2729FA57C())
          {
            break;
          }

          sub_2729FA27C();
          result = sub_2729FA25C();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_2729F4BC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E250, &qword_2729FA978);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2729F4CA0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  v14 = result;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v15 = v6 + 1;
    v7 = (v5 + 16 * v6);
    sub_2729FA5AC();

    sub_2729FA4CC();
    result = sub_2729FA5BC();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_2729FA22C();

    v5 = v14;
    while (1)
    {
      v8 = sub_2729FA25C();
      if (v9)
      {
        break;
      }

      v10 = (v14 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (sub_2729FA57C() & 1) != 0)
      {
        return 0;
      }

      sub_2729FA27C();
    }

    result = sub_2729FA26C();
    ++v6;
    v4 = a3;
    if (v15 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_2729F4E60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2729FA5AC();
  sub_2729FA4CC();
  v8 = sub_2729FA5BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2729FA57C() & 1) != 0)
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

    sub_2729F5210(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2729F4FB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E290, &qword_2729FA9B8);
  result = sub_2729FA53C();
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
      sub_2729FA5AC();
      sub_2729FA4CC();
      result = sub_2729FA5BC();
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

uint64_t sub_2729F5210(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2729F4FB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2729F5390();
      goto LABEL_16;
    }

    sub_2729F54EC(v8 + 1);
  }

  v10 = *v4;
  sub_2729FA5AC();
  sub_2729FA4CC();
  result = sub_2729FA5BC();
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

      result = sub_2729FA57C();
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
  result = sub_2729FA58C();
  __break(1u);
  return result;
}

void *sub_2729F5390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E290, &qword_2729FA9B8);
  v2 = *v0;
  v3 = sub_2729FA52C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2729F54EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E290, &qword_2729FA9B8);
  result = sub_2729FA53C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2729FA5AC();

      sub_2729FA4CC();
      result = sub_2729FA5BC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2729F5724(uint64_t a1, uint64_t a2)
{
  sub_2729FA5AC();
  sub_2729FA4CC();
  v4 = sub_2729FA5BC();

  return sub_2729F5FC8(a1, a2, v4);
}

uint64_t sub_2729F579C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_2729FA3BC();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E258, &qword_2729FA980);
  v42 = v4;
  result = sub_2729FA55C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_2729FA5AC();
      sub_2729FA4CC();
      result = sub_2729FA5BC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2729F5B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E268, &qword_2729FA990);
  v37 = v4;
  result = sub_2729FA55C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2729FA5AC();
      sub_2729FA4CC();
      result = sub_2729FA5BC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2729F5DDC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2729FA51C() + 1) & ~v5;
    while (1)
    {
      sub_2729FA5AC();

      sub_2729FA4CC();
      v9 = sub_2729FA5BC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_2729FA3BC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2729F5FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2729FA57C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2729F6080()
{
  v1 = v0;
  v35 = sub_2729FA3BC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E258, &qword_2729FA980);
  v3 = *v0;
  v4 = sub_2729FA54C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2729F6300()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E268, &qword_2729FA990);
  v2 = *v0;
  v3 = sub_2729FA54C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2729F6478(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_2729F4758(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x2743D1D00](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x2743D1D00](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x2743D1D00](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_2729F4558(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_2729FA2AC();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_2729F6658(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_2729F68DC(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x2743D1CE0]())
  {
LABEL_16:
    v11 = sub_2729F68DC(a1);
    sub_2729F44B8();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_2729FA2AC();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_2729F698C(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_2729F6B84(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_2729F68DC(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2729F67C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2729F6978(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s13ThumbnailInfoVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2729F917C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2729F68DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2729F6964(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_2729F698C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_2729FA22C();
  sub_2729FA27C();
  if (v14)
  {
    v7 = sub_2729FA23C();
    while (1)
    {
      result = sub_2729FA25C();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_2729FA5AC();

      sub_2729FA4CC();
      v10 = sub_2729FA5BC();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_2729FA25C();
      v6 = a1;
      sub_2729FA24C();
LABEL_3:
      sub_2729FA27C();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_2729FA24C();
}

uint64_t sub_2729F6B84(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x2743D1CD0](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_2729FA5AC();

            sub_2729FA4CC();
            result = sub_2729FA5BC();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_2729FA22C())
            {
              while (1)
              {
                v11 = sub_2729FA25C();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_2729FA27C();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_2729FA26C();

            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_2729FA22C();
      v19 = sub_2729FA25C();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_33:
        result = sub_2729FA27C();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_2729FA26C();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_2729FA22C();
      v21 = sub_2729FA25C();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_2729FA26C();
      }

      return sub_2729FA27C();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x2743D1CD0](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      do
      {
        sub_2729FA5AC();

        sub_2729FA4CC();
        result = sub_2729FA5BC();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_2729FA22C())
        {
          while (1)
          {
            v23 = sub_2729FA25C();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_2729FA27C();
          }
        }

        sub_2729FA26C();
      }

      while (++v5 != v9);
    }
  }

  return result;
}

uint64_t sub_2729F6FF0()
{
  v1 = sub_2729FA1EC();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2729FA05C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2729F9DEC();
  v11 = sub_2729FA01C();
  if (v0)
  {
  }

  sub_2729F3DA8(v11, v12);
  (*(v5 + 32))(v10, v8, v4);
  sub_2729FA1DC();
  sub_2729FA1CC();

  (*(v15 + 8))(v3, v1);
  return (*(v5 + 8))(v10, v4);
}

char *sub_2729F71F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E270, &qword_2729FA998);
  MEMORY[0x28223BE20](v3 - 8);
  v212 = &v200 - v4;
  v213 = sub_2729F9FAC();
  v211 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v210 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_2729F9E9C();
  v261 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v248 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2729F9FCC();
  v217 = *(v7 - 8);
  v218 = v7;
  MEMORY[0x28223BE20](v7);
  v231 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E278, &qword_2729FA9A0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v223 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v224 = &v200 - v12;
  v245 = sub_2729FA04C();
  v206 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v262 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2729FA18C();
  v208 = *(v14 - 8);
  v209 = v14;
  MEMORY[0x28223BE20](v14);
  v207 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2729FA16C();
  v204 = *(v16 - 8);
  v205 = v16;
  MEMORY[0x28223BE20](v16);
  v203 = &v200 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_2729FA14C();
  v241 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v237 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_2729FA1BC();
  v240 = *(v260 - 1);
  MEMORY[0x28223BE20](v260);
  v244 = &v200 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E280, &qword_2729FA9A8);
  MEMORY[0x28223BE20](v20 - 8);
  v216 = &v200 - v21;
  v22 = sub_2729F9F1C();
  v221 = *(v22 - 8);
  v222 = v22;
  MEMORY[0x28223BE20](v22);
  v225 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_2729F9FEC();
  v263 = *(v250 - 8);
  v24 = MEMORY[0x28223BE20](v250);
  v259 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v266 = &v200 - v26;
  v268 = sub_2729F9F6C();
  v264 = *(v268 - 8);
  v27 = MEMORY[0x28223BE20](v268);
  v29 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v200 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v200 - v33;
  v238 = sub_2729F9ECC();
  v251 = *(v238 - 8);
  v35 = MEMORY[0x28223BE20](v238);
  v230 = &v200 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v265 = &v200 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E288, &qword_2729FA9B0);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v236 = &v200 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v246 = &v200 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v267 = (&v200 - v44);
  MEMORY[0x28223BE20](v43);
  v227 = &v200 - v45;
  v46 = sub_2729F9E3C();
  v214 = *(v46 - 8);
  v215 = v46;
  MEMORY[0x28223BE20](v46);
  v48 = &v200 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_2729FA0FC();
  v226 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v50 = &v200 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2729F9EDC();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v200 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v277 = MEMORY[0x277D84FA0];
  memset(&v277[8], 0, 48);
  sub_2729F3E50(MEMORY[0x277D84F90]);
  *&v277[56] = v55;
  v278 = v56;
  sub_2729F9DFC();
  if ((*(v52 + 88))(v54, v51) != *MEMORY[0x277CC6FA8])
  {

    (*(v52 + 8))(v54, v51);
LABEL_95:
    v197 = v229;
    v272 = *&v277[32];
    v273 = *&v277[48];
    v274 = v278;
    v270 = *v277;
    v271 = *&v277[16];
    v275[2] = *&v277[32];
    v275[3] = *&v277[48];
    v276 = v278;
    v275[0] = *v277;
    v275[1] = *&v277[16];
    sub_2729F9370(&v270, &v269);
    result = sub_2729F914C(v275);
    v198 = v273;
    *(v197 + 32) = v272;
    *(v197 + 48) = v198;
    *(v197 + 64) = v274;
    v199 = v271;
    *v197 = v270;
    *(v197 + 16) = v199;
    return result;
  }

  v202 = a1;
  (*(v52 + 96))(v54, v51);
  (*(v226 + 32))(v50, v54, v228);
  v239 = v50;
  sub_2729FA0DC();
  v57 = sub_2729F9E1C();
  sub_2729F4E60(v275, v57, v58);

  v59 = sub_2729F9E2C();
  if (v60)
  {
    *&v277[8] = v59;
    *&v277[16] = v60;
  }

  v201 = v48;
  v61 = sub_2729FA09C();
  v63 = v250;
  if (v62)
  {
    sub_2729F4E60(v275, v61, v62);
  }

  v64 = v227;
  sub_2729FA0AC();
  v65 = v267;
  sub_2729F93A8(v64, v267, &qword_28089E288, &qword_2729FA9B0);
  v66 = v238;
  v234 = *(v251 + 48);
  v235 = v251 + 48;
  v67 = v234(v65, 1, v238);
  v68 = v231;
  if (v67 == 1)
  {
    sub_2729F9410(v65, &qword_28089E288, &qword_2729FA9B0);
  }

  else
  {
    v69 = v251;
    v70 = v265;
    (*(v251 + 32))(v265, v65, v66);
    v71 = sub_2729F9EBC();
    if (v72)
    {
      sub_2729F4E60(v275, v71, v72);
    }

    (*(v69 + 8))(v70, v66);
    v68 = v231;
  }

  v73 = sub_2729FA0EC();
  v74 = *(v73 + 16);
  if (v74)
  {
    v267 = *(v264 + 16);
    v75 = *(v264 + 80);
    v258 = v73;
    v76 = v73 + ((v75 + 32) & ~v75);
    v265 = *(v264 + 72);
    v77 = (v264 + 8);
    (v267)(v34, v76, v268);
    while (1)
    {
      v79 = sub_2729F9F4C();
      sub_2729F4E60(v275, v79, v80);

      v81 = sub_2729F9F5C();
      if (v82)
      {
        sub_2729F4E60(v275, v81, v82);
      }

      v83 = sub_2729F9F3C();
      if (v84)
      {
        sub_2729F424C(v83, v84);
      }

      v78 = v268;
      (*v77)(v34, v268);
      v76 += v265;
      if (!--v74)
      {
        break;
      }

      (v267)(v34, v76, v78);
    }

    v68 = v231;
    v63 = v250;
  }

  else
  {
  }

  result = sub_2729FA07C();
  v258 = *(result + 2);
  if (v258)
  {
    v86 = 0;
    v256 = &result[(*(v263 + 80) + 32) & ~*(v263 + 80)];
    v254 = v263 + 88;
    v255 = v263 + 16;
    v253 = *MEMORY[0x277CC7728];
    v252 = (v263 + 8);
    v247 = (v263 + 96);
    v242 = *MEMORY[0x277CC7720];
    v233 = (v241 + 4);
    v220 = (v251 + 32);
    v219 = (v251 + 8);
    v232 = (v241 + 1);
    v87 = v240++;
    v241 = (v87 + 4);
    v267 = (v264 + 16);
    v88 = (v264 + 8);
    v257 = result;
    while (1)
    {
      if (v86 >= *(result + 2))
      {
        __break(1u);
        goto LABEL_97;
      }

      v89 = v263;
      v90 = *(v263 + 72);
      v265 = v86;
      v91 = *(v263 + 16);
      v92 = v266;
      v91(v266, &v256[v90 * v86], v63);
      v93 = v259;
      v91(v259, v92, v63);
      v94 = (*(v89 + 88))(v93, v63);
      if (v94 == v253)
      {
        break;
      }

      v100 = v246;
      if (v94 == v242)
      {
        (*v247)(v93, v63);
        v101 = v237;
        (*v233)(v237, v93, v243);
        v102 = sub_2729FA10C();
        sub_2729F4E60(v275, v102, v103);

        v104 = sub_2729FA11C();
        if (v105)
        {
          sub_2729F4E60(v275, v104, v105);
        }

        v106 = sub_2729FA12C();
        if (v107)
        {
          sub_2729F4E60(v275, v106, v107);
        }

        sub_2729FA13C();
        v108 = v236;
        sub_2729F93A8(v100, v236, &qword_28089E288, &qword_2729FA9B0);
        v109 = v238;
        if (v234(v108, 1, v238) == 1)
        {
          sub_2729F9410(v100, &qword_28089E288, &qword_2729FA9B0);
          (*v232)(v101, v243);
          sub_2729F9410(v108, &qword_28089E288, &qword_2729FA9B0);
        }

        else
        {
          v112 = v230;
          (*v220)(v230, v108, v109);
          v113 = sub_2729F9EBC();
          if (v114)
          {
            sub_2729F4E60(v275, v113, v114);
          }

          (*v219)(v112, v109);
          sub_2729F9410(v246, &qword_28089E288, &qword_2729FA9B0);
          (*v232)(v101, v243);
        }

        v63 = v250;
        goto LABEL_46;
      }

      v110 = v93;
      v111 = *v252;
      (*v252)(v266, v63);
      v111(v110, v63);
LABEL_26:
      result = v257;
      v86 = v265 + 1;
      if (v265 + 1 == v258)
      {

        v68 = v231;
        goto LABEL_57;
      }
    }

    (*v247)(v93, v63);
    v95 = v244;
    (*v241)(v244, v93, v260);
    v96 = sub_2729FA19C();
    if (v97)
    {
      sub_2729F4E60(v275, v96, v97);
    }

    v98 = sub_2729FA1AC();
    if (v99)
    {
      sub_2729F4E60(v275, v98, v99);
    }

    (*v240)(v95, v260);
LABEL_46:
    v115 = sub_2729F9FDC();
    v116 = *(v115 + 16);
    if (v116)
    {
      v117 = *(v264 + 80);
      v251 = v115;
      v118 = v115 + ((v117 + 32) & ~v117);
      v119 = *(v264 + 72);
      v120 = *(v264 + 16);
      v120(v32, v118, v268);
      while (1)
      {
        v122 = sub_2729F9F4C();
        sub_2729F4E60(v275, v122, v123);

        v124 = sub_2729F9F5C();
        if (v125)
        {
          sub_2729F4E60(v275, v124, v125);
        }

        v126 = sub_2729F9F3C();
        if (v127)
        {
          sub_2729F424C(v126, v127);
        }

        v121 = v268;
        (*v88)(v32, v268);
        v118 += v119;
        if (!--v116)
        {
          break;
        }

        v120(v32, v118, v121);
      }

      v63 = v250;
    }

    else
    {
    }

    (*v252)(v266, v63);
    goto LABEL_26;
  }

LABEL_57:
  v128 = v216;
  sub_2729FA0BC();
  v130 = v221;
  v129 = v222;
  v131 = (*(v221 + 48))(v128, 1, v222);
  v133 = v248;
  v132 = v249;
  v134 = v223;
  if (v131 == 1)
  {
    sub_2729F9410(v128, &qword_28089E280, &qword_2729FA9A8);
  }

  else
  {
    (*(v130 + 32))(v225, v128, v129);
    v135 = sub_2729F9EEC();
    v136 = *(v135 + 16);
    if (v136)
    {
      v137 = v205;
      v267 = *(v204 + 16);
      v138 = *(v204 + 80);
      v263 = v135;
      v139 = v135 + ((v138 + 32) & ~v138);
      v266 = *(v204 + 72);
      v265 = v204 + 8;
      v140 = v203;
      do
      {
        (v267)(v140, v139, v137);
        v141 = sub_2729FA15C();
        v143 = v142;
        (*v265)(v140, v137);
        sub_2729F4E60(v275, v141, v143);

        v139 += v266;
        --v136;
      }

      while (v136);
    }

    v144 = sub_2729F9F0C();
    v145 = *(v144 + 16);
    if (v145)
    {
      v146 = (v144 + 40);
      do
      {
        v147 = *(v146 - 1);
        v148 = *v146;

        sub_2729F4E60(v275, v147, v148);

        v146 += 2;
        --v145;
      }

      while (v145);
    }

    v149 = sub_2729F9EFC();
    v150 = *(v149 + 16);
    if (v150)
    {
      v151 = v209;
      v267 = *(v208 + 16);
      v152 = *(v208 + 80);
      v265 = v149;
      v153 = v149 + ((v152 + 32) & ~v152);
      v266 = *(v208 + 72);
      v154 = (v208 + 8);
      v155 = v207;
      v156 = (v206 + 8);
      do
      {
        (v267)(v155, v153, v151);
        sub_2729FA17C();
        (*v154)(v155, v151);
        v157 = sub_2729FA03C();
        sub_2729F4E60(v275, v157, v158);
        v159 = v262;

        (*v156)(v159, v245);
        v153 += v266;
        --v150;
      }

      while (v150);
    }

    (*(v221 + 8))(v225, v222);
    v133 = v248;
    v132 = v249;
    v68 = v231;
    v134 = v223;
  }

  v160 = v224;
  sub_2729FA06C();
  sub_2729F93A8(v160, v134, &qword_28089E278, &qword_2729FA9A0);
  v161 = v217;
  v162 = v218;
  if ((*(v217 + 48))(v134, 1, v218) == 1)
  {
    sub_2729F9410(v134, &qword_28089E278, &qword_2729FA9A0);
  }

  else
  {
    (*(v161 + 32))(v68, v134, v162);
    v163 = sub_2729F9FBC();
    if (v164)
    {
      sub_2729F4E60(v275, v163, v164);
    }

    (*(v161 + 8))(v68, v162);
  }

  result = sub_2729FA0CC();
  v165 = result;
  v265 = *(result + 2);
  if (!v265)
  {
LABEL_92:

    v185 = v212;
    v186 = v239;
    sub_2729FA08C();
    v187 = v211;
    v188 = v213;
    if ((*(v211 + 48))(v185, 1, v213) == 1)
    {

      sub_2729F9410(v224, &qword_28089E278, &qword_2729FA9A0);
      sub_2729F9410(v227, &qword_28089E288, &qword_2729FA9B0);
      (*(v214 + 8))(v201, v215);
      (*(v226 + 8))(v186, v228);
      sub_2729F9410(v185, &qword_28089E270, &qword_2729FA998);
    }

    else
    {
      v189 = v186;
      v190 = v210;
      (*(v187 + 32))(v210, v185, v188);
      v191 = sub_2729F9F7C();
      sub_2729F4E60(v275, v191, v192);

      *&v277[24] = sub_2729F9F9C();
      *&v277[32] = v193;
      v194 = sub_2729F9F8C();
      v196 = v195;

      (*(v187 + 8))(v190, v188);
      sub_2729F9410(v224, &qword_28089E278, &qword_2729FA9A0);
      sub_2729F9410(v227, &qword_28089E288, &qword_2729FA9B0);
      (*(v214 + 8))(v201, v215);
      (*(v226 + 8))(v189, v228);
      *&v277[40] = v194;
      *&v277[48] = v196;
    }

    goto LABEL_95;
  }

  v166 = 0;
  v263 = &result[(*(v261 + 80) + 32) & ~*(v261 + 80)];
  v262 = (v261 + 16);
  v167 = (v264 + 8);
  v259 = result;
  v260 = (v261 + 8);
  while (v166 < *(v165 + 16))
  {
    (*(v261 + 16))(v133, v263 + *(v261 + 72) * v166, v132);
    v168 = sub_2729F9E6C();
    if (v169)
    {
      sub_2729F4E60(v275, v168, v169);
    }

    v170 = sub_2729F9E7C();
    if (v171)
    {
      sub_2729F4E60(v275, v170, v171);
    }

    v172 = sub_2729F9E8C();
    v173 = v172[2];
    if (v173)
    {
      v266 = v166;
      v174 = (*(v264 + 80) + 32) & ~*(v264 + 80);
      v267 = v172;
      v175 = v172 + v174;
      v176 = *(v264 + 72);
      v177 = *(v264 + 16);
      v177(v29, v172 + v174, v268);
      while (1)
      {
        v179 = sub_2729F9F4C();
        sub_2729F4E60(v275, v179, v180);

        v181 = sub_2729F9F5C();
        if (v182)
        {
          sub_2729F4E60(v275, v181, v182);
        }

        v183 = sub_2729F9F3C();
        if (v184)
        {
          sub_2729F424C(v183, v184);
        }

        v178 = v268;
        (*v167)(v29, v268);
        v175 += v176;
        if (!--v173)
        {
          break;
        }

        v177(v29, v175, v178);
      }

      v133 = v248;
      v132 = v249;
      v165 = v259;
      v166 = v266;
    }

    else
    {
    }

    ++v166;
    result = (*v260)(v133, v132);
    if (v166 == v265)
    {
      goto LABEL_92;
    }
  }

LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_2729F8CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E268, &qword_2729FA990);
    v3 = sub_2729FA56C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2729F5724(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_2729F8DD8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2729F8E20(uint64_t a1)
{
  v2 = _s13ThumbnailInfoVMa(0);
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E200, &qword_2729FA928);
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = (&v29 - v9);
  v11 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  sub_2729F6478(v12, 0);
  v34 = v11;
  sub_2729F4778(0, v12, 0);
  v13 = v34;
  v31 = v12;
  if (!v12)
  {
    return v35;
  }

  v14 = 0;
  v30 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v29 = *(v8 + 72);
  while (1)
  {
    sub_2729F93A8(v30 + v29 * v14, v10, &qword_28089E200, &qword_2729FA928);
    v16 = *v10;
    v15 = v10[1];
    sub_2729F917C(v10 + *(v33 + 48), v7);
    v17 = v35;
    v18 = v36;
    v19 = *(v36 + 16);
    if (!v35)
    {
      break;
    }

    sub_2729F4A7C(v16, v15, v18 + 32, v19, (v17 + 16), v17 + 32);
    v21 = v20;
    v23 = v22;

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_2729F4340(v16, v15, v23);
    sub_2729F923C(v7, v5);
    v34 = v13;
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_2729F4778((v27 > 1), v28 + 1, 1);

      v13 = v34;
    }

    else
    {
    }

    ++v14;
    sub_2729F91E0(v7);
    *(v13 + 16) = v28 + 1;
    sub_2729F917C(v5, v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    if (v14 == v31)
    {
      return v35;
    }
  }

  if (!v19)
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v25 = (v36 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v16 && *v25 == v15)
    {
      break;
    }

    result = sub_2729FA57C();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v19)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2729F917C(uint64_t a1, uint64_t a2)
{
  v4 = _s13ThumbnailInfoVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2729F91E0(uint64_t a1)
{
  v2 = _s13ThumbnailInfoVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2729F923C(uint64_t a1, uint64_t a2)
{
  v4 = _s13ThumbnailInfoVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2729F92A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2729F9308(uint64_t a1, uint64_t a2)
{
  v4 = _s13ThumbnailInfoVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2729F93A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2729F9410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2729F9494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2729F94DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2729F9550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2729FA1FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2729F9630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2729FA1FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2729F96E8(uint64_t a1)
{
  result = sub_2729FA1FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WalletBlastDoorClient.__allocating_init()()
{
  v11 = sub_2729FA4EC();
  v0 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2729FA4DC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2729FA2EC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2729FA31C();
  v10[1] = "WorkingDirectoryInvalid";
  v10[2] = v5;
  v6 = *MEMORY[0x277CF30B0];
  sub_2729F9A2C();
  v7 = v6;
  sub_2729FA2DC();
  v12 = MEMORY[0x277D84F90];
  sub_2729F9C78(&qword_28089E2B0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E2B8, &qword_2729FAA90);
  sub_2729F9A78();
  sub_2729FA50C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v11);
  sub_2729FA4FC();
  v8 = sub_2729FA2FC();
  result = swift_allocObject();
  *(result + 16) = v8;
  return result;
}

unint64_t sub_2729F9A2C()
{
  result = qword_28089E2A8;
  if (!qword_28089E2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089E2A8);
  }

  return result;
}

unint64_t sub_2729F9A78()
{
  result = qword_28089E2C0;
  if (!qword_28089E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089E2B8, &qword_2729FAA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089E2C0);
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

uint64_t WalletBlastDoorClient.unpackOrderPreview(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E2C8, &qword_2729FAA98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_2729FA3CC();
  v6 = sub_2729FA33C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2729F9C78(&qword_28089E1D0, MEMORY[0x277CF23B0], MEMORY[0x277CF23A8]);
  sub_2729FA30C();
  return sub_2729F9CC0(v5);
}

uint64_t sub_2729F9C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2729F9CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E2C8, &qword_2729FAA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WalletBlastDoorClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}