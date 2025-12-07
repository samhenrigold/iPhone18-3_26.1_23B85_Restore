void sub_25327D3D0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (**a15)(char *, uint64_t, uint64_t), char *a16, char *a17, uint64_t a18, uint64_t a19, char *a20, unsigned __int8 a21)
{
  v402 = a8;
  v356 = a4;
  v357 = a7;
  v386 = a6;
  v358 = a5;
  v355 = a3;
  v353 = a1;
  v354 = a2;
  v387 = a19;
  v381 = a18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD8, &unk_253D4AD60);
  MEMORY[0x28223BE20](v22 - 8);
  v389 = &v337 - v23;
  v406 = sub_253CD02D8();
  v365 = *(v406 - 8);
  v24 = MEMORY[0x28223BE20](v406);
  v369 = &v337 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v404 = &v337 - v27;
  MEMORY[0x28223BE20](v26);
  v405 = &v337 - v28;
  v408 = sub_253CD0178();
  v410 = *(v408 - 8);
  v29 = MEMORY[0x28223BE20](v408);
  v377 = &v337 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v376 = &v337 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v340 = &v337 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v407 = &v337 - v36;
  MEMORY[0x28223BE20](v35);
  v409 = &v337 - v37;
  v390 = sub_253CD02B8();
  v385 = *(v390 - 8);
  v38 = MEMORY[0x28223BE20](v390);
  v370 = &v337 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v378 = &v337 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v396 = &v337 - v43;
  MEMORY[0x28223BE20](v42);
  v399 = &v337 - v44;
  v45 = sub_253CD01C8();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v368 = &v337 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v339 = &v337 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v380 = &v337 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v379 = &v337 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v382 = &v337 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v383 = &v337 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v397 = &v337 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v398 = &v337 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v392 = &v337 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v400 = &v337 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v393 = &v337 - v68;
  MEMORY[0x28223BE20](v67);
  v70 = &v337 - v69;
  v364 = a17;
  if (!a17)
  {
    goto LABEL_9;
  }

  v71 = [v364 appleMediaAccessoryDiagnosticInfo];
  if (!v71)
  {
    goto LABEL_271;
  }

  v72 = v71;
  v73 = [v71 idsInfo];

  if (!v73)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v74 = [v73 idsIdentifierString];

  if (!v74)
  {
LABEL_9:
    v78 = v387 == 0;
    goto LABEL_10;
  }

  v75 = sub_253CD0968();
  v77 = v76;

  if (v387)
  {
    if (v75 == v381 && v77 == v387)
    {

      v78 = 1;
LABEL_10:
      v352 = v78;
      goto LABEL_11;
    }

    v352 = sub_253CD1118();
  }

  else
  {

    v352 = 0;
  }

LABEL_11:
  v367 = a20;
  if (a20)
  {
    v79 = [v367 appleMediaAccessoryDiagnosticInfo];
    if (v79)
    {
      v80 = v79;
      v81 = [v79 nearbyVisibleDeviceInfos];

      if (v81)
      {
        *&v426[0] = 0;
        sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
        sub_253CD0A48();

        v82 = *&v426[0];
        if (*&v426[0])
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
    return;
  }

LABEL_15:

  v82 = MEMORY[0x277D84F90];
LABEL_16:
  if (v82 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_253CD0ED8())
  {
    v351 = a9;
    v391 = v45;
    v388 = v46;
    if (i)
    {
      v84 = 0;
      v394 = v82 & 0xFFFFFFFFFFFFFF8;
      v395 = (v82 & 0xC000000000000001);
      v401 = v46 + 32;
      v85 = MEMORY[0x277D84F90];
      v384 = v82;
      v375 = i;
      while (1)
      {
        if (v395)
        {
          v86 = MEMORY[0x259C00F30](v84, v82);
        }

        else
        {
          if (v84 >= *(v394 + 16))
          {
            goto LABEL_64;
          }

          v86 = *(v82 + 8 * v84 + 32);
        }

        v46 = v86;
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        v88 = [v86 idsIdentifierString];
        if (v88)
        {
          a9 = v70;
          v403 = v85;
          v89 = v88;
          sub_253CD0968();

          v90 = [v46 mediaRouteIdString];
          if (v90)
          {
            v91 = v90;
            sub_253CD0968();
          }

          v92 = v393;
          sub_253CD0198();

          v93 = *v401;
          v45 = v391;
          (*v401)(v70, v92, v391);
          v94 = v403;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_25328330C(0, v94[2] + 1, 1, v94);
          }

          v46 = v388;
          v96 = v94[2];
          v95 = v94[3];
          v97 = v94;
          if (v96 >= v95 >> 1)
          {
            v97 = sub_25328330C((v95 > 1), v96 + 1, 1, v94);
          }

          v97[2] = v96 + 1;
          v85 = v97;
          v93(v97 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v96, v70, v45);
          v82 = v384;
          i = v375;
        }

        else
        {

          v45 = v391;
          v46 = v388;
        }

        ++v84;
        if (v87 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v85 = MEMORY[0x277D84F90];
LABEL_36:
    v403 = v85;

    if (v367)
    {
      v98 = [v367 appleMediaAccessoryDiagnosticInfo];
      if (!v98)
      {
        goto LABEL_274;
      }

      v99 = v98;
      v100 = [v98 networkVisibleDeviceInfos];

      v82 = MEMORY[0x277D84F90];
      if (v100)
      {
        *&v426[0] = 0;
        sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
        sub_253CD0A48();

        if (*&v426[0])
        {
          v82 = *&v426[0];
        }
      }
    }

    else
    {
      v82 = MEMORY[0x277D84F90];
    }

    if (!(v82 >> 62))
    {
      a9 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a9)
      {
        break;
      }

      goto LABEL_45;
    }

    a9 = sub_253CD0ED8();
    if (!a9)
    {
      break;
    }

LABEL_45:
    v101 = 0;
    v394 = v82 & 0xFFFFFFFFFFFFFF8;
    v395 = (v82 & 0xC000000000000001);
    v401 = v46 + 32;
    v102 = MEMORY[0x277D84F90];
    v393 = v82;
    v384 = a9;
    while (1)
    {
      if (v395)
      {
        v103 = MEMORY[0x259C00F30](v101, v82);
      }

      else
      {
        if (v101 >= *(v394 + 16))
        {
          goto LABEL_66;
        }

        v103 = *(v82 + 8 * v101 + 32);
      }

      v70 = v103;
      v104 = (v101 + 1);
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v105 = [v103 idsIdentifierString];
      if (v105)
      {
        v106 = v105;
        sub_253CD0968();

        v107 = [v70 mediaRouteIdString];
        if (v107)
        {
          v108 = v107;
          sub_253CD0968();
        }

        v109 = v392;
        sub_253CD0198();

        v110 = *v401;
        v45 = v391;
        (*v401)(v400, v109, v391);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v388;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v102 = sub_25328330C(0, v102[2] + 1, 1, v102);
        }

        a9 = v384;
        v113 = v102[2];
        v112 = v102[3];
        v114 = v102;
        if (v113 >= v112 >> 1)
        {
          v114 = sub_25328330C((v112 > 1), v113 + 1, 1, v102);
        }

        v114[2] = v113 + 1;
        v102 = v114;
        v110(v114 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v113, v400, v45);
        v82 = v393;
      }

      else
      {
      }

      ++v101;
      if (v104 == a9)
      {
        goto LABEL_70;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v102 = MEMORY[0x277D84F90];
LABEL_70:
  v392 = a16;
  v366 = a11;
  v348 = a21;
  v395 = a15;
  v350 = a14;
  v361 = a12;
  v349 = a13;

  v115 = 0;
  v116 = v102;
  v117 = v102[2];
  v393 = v46 + 16;
  v394 = (v46 + 8);
  do
  {
    v119 = v115;
    if (v117 == v115)
    {
      break;
    }

    if (v115 >= v116[2])
    {
      goto LABEL_263;
    }

    (*(v46 + 2))(v398, v116 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v115, v45);
    if (sub_253CD01A8() == v402 && v120 == a10)
    {

      (*v394)(v398, v45);
      break;
    }

    ++v115;
    v118 = sub_253CD1118();

    (*v394)(v398, v45);
  }

  while ((v118 & 1) == 0);
  v347 = v119;
  v121 = 0;
  v384 = v403[2];
  do
  {
    v123 = v121;
    if (v384 == v121)
    {
      break;
    }

    if (v121 >= v403[2])
    {
      goto LABEL_264;
    }

    (*(v46 + 2))(v397, v403 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v121, v45);
    if (sub_253CD01A8() == v402 && v124 == a10)
    {

      (*v394)(v397, v45);
      break;
    }

    ++v121;
    v122 = sub_253CD1118();

    (*v394)(v397, v45);
  }

  while ((v122 & 1) == 0);
  v346 = v123;
  v125 = 0;
  v126 = v366;
  do
  {
    if (v117 == v125)
    {
      v345 = v125;
      goto LABEL_93;
    }

    if (v125 >= v116[2])
    {
      goto LABEL_265;
    }

    (*(v46 + 2))(v383, v116 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v125, v45);
    if (sub_253CD01A8() == v395 && v129 == v392)
    {
      v345 = v125;

      (*v394)(v383, v45);
      goto LABEL_93;
    }

    v127 = v125++;
    v128 = sub_253CD1118();

    (*v394)(v383, v45);
  }

  while ((v128 & 1) == 0);
  v345 = v127;
LABEL_93:

  v130 = 0;
  v131 = v390;
  do
  {
    v383 = v130;
    if (v384 == v130)
    {
      break;
    }

    if (v130 >= v403[2])
    {
      goto LABEL_266;
    }

    (*(v46 + 2))(v382, v403 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v130, v45);
    if (sub_253CD01A8() == v395 && v133 == v392)
    {

      (*v394)(v382, v45);
      break;
    }

    v130 = v383 + 1;
    v132 = sub_253CD1118();

    (*v394)(v382, v45);
  }

  while ((v132 & 1) == 0);

  v422 = MEMORY[0x277D84FA0];
  v423 = MEMORY[0x277D84FA0];
  v420 = MEMORY[0x277D84FA0];
  v421 = MEMORY[0x277D84FA0];
  v418 = MEMORY[0x277D84FA0];
  v419 = MEMORY[0x277D84FA0];
  v362 = xmmword_253D4ACC0;
  v363 = 0u;
  v344 = v117;
  if (v367)
  {
    v134 = v367;
    sub_25327BCC8(v134, v381, v387, v424);
    v341 = v424[0];
    v342 = v424[1];
    v343 = v425;
    v403 = sub_25328D168(v134);
    v375 = v136;
    v338 = v135;
    if (v135)
    {
      v137 = v135;
      v138 = [v135 SSID];
      if (v138)
      {
        v139 = v137;
        v140 = v138;
        v141 = sub_253CD0968();
        v143 = v142;

        sub_253286FEC(v426, v141, v143);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_253D48DA0;
        *(inited + 32) = v141;
        *(inited + 40) = v143;
        v360 = sub_25327B0F4(inited, MEMORY[0x277D84FA0]);
        swift_setDeallocating();
        v137 = v139;
        swift_arrayDestroy();
      }

      else
      {
        v360 = MEMORY[0x277D84FA0];
      }

      v146 = [v137 networkBSSID];
      if (v146)
      {
        v147 = v146;
        v148 = sub_253CD0968();
        v150 = v149;

        sub_253286FEC(v426, v148, v150);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
        v151 = swift_initStackObject();
        *(v151 + 16) = xmmword_253D48DA0;
        *(v151 + 32) = v148;
        *(v151 + 40) = v150;
        v359 = sub_25327B0F4(v151, MEMORY[0x277D84FA0]);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        v359 = MEMORY[0x277D84FA0];
      }

      v131 = v390;
      v126 = v366;
    }

    else
    {
      v359 = MEMORY[0x277D84FA0];
      v360 = MEMORY[0x277D84FA0];
    }

    v152 = v375;
    v374 = *(v375 + 16);
    if (v374)
    {
      v337 = v134;
      v402 = v403[2];
      v373 = (v375 + ((*(v385 + 80) + 32) & ~*(v385 + 80)));
      v372 = v385 + 16;
      v400 = v410 + 16;
      v401 = (v410 + 8);
      LODWORD(v398) = *MEMORY[0x277D0EFB8];
      v397 = (v365 + 104);
      v153 = (v365 + 8);
      v371 = (v385 + 8);

      v154 = 0;
      v155 = v408;
      v156 = v399;
      v157 = v409;
      while (1)
      {
        if (v154 >= *(v152 + 16))
        {
          goto LABEL_267;
        }

        v159 = *(v385 + 72);
        v382 = v154;
        (*(v385 + 16))(v156, v373 + v159 * v154, v131);
        if (!v402)
        {
LABEL_114:
          v131 = v390;
          (*v371)(v156, v390);
          v152 = v375;
          v158 = v382;
          goto LABEL_115;
        }

        v160 = 0;
        v161 = v403 + ((*(v410 + 80) + 32) & ~*(v410 + 80));
        while (1)
        {
          if (v160 >= v403[2])
          {
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }

          (*(v410 + 16))(v409, &v161[*(v410 + 72) * v160], v155);
          v162 = sub_253CD0158();
          v164 = v163;
          if (v162 == sub_253CD0238() && v164 == v165)
          {
            break;
          }

          v166 = sub_253CD1118();

          if (v166)
          {
            goto LABEL_126;
          }

          (*v401)(v409, v155);
LABEL_120:
          if (v402 == ++v160)
          {
            goto LABEL_114;
          }
        }

LABEL_126:
        v167 = v405;
        sub_253CD0168();
        v168 = v404;
        v169 = v406;
        (*v397)(v404, v398, v406);
        sub_25327FE88();
        v170 = sub_253CD0918();
        v171 = *v153;
        (*v153)(v168, v169);
        v172 = v167;
        v156 = v399;
        v155 = v408;
        v171(v172, v169);
        (*v401)(v157, v155);
        if (v170)
        {
          goto LABEL_120;
        }

        v173 = sub_253CD0268();
        if (v174)
        {
          v175 = v173;
          v176 = v174;

          sub_253286FEC(v426, v175, v176);

          sub_253286FEC(v426, v175, v176);
        }

        v177 = sub_253CD0278();
        v131 = v390;
        v152 = v375;
        v158 = v382;
        if (v178)
        {
          sub_253286FEC(v426, v177, v178);
        }

        (*v371)(v156, v131);
LABEL_115:
        v154 = v158 + 1;
        if (v154 == v374)
        {

          v45 = v391;
          v46 = v388;
          v126 = v366;
          v134 = v337;
          break;
        }
      }
    }

    v145 = v364;
    if (v364)
    {
      goto LABEL_134;
    }

LABEL_105:
    LODWORD(v372) = 0;
    goto LABEL_162;
  }

  v343 = 0;
  v359 = MEMORY[0x277D84FA0];
  v360 = MEMORY[0x277D84FA0];
  v341 = xmmword_253D4ACC0;
  v342 = 0uLL;
  v145 = v364;
  if (!v364)
  {
    goto LABEL_105;
  }

LABEL_134:
  v179 = v145;
  sub_25327BCC8(v179, v381, v387, v426);
  v362 = v426[0];
  v363 = v426[1];
  LODWORD(v372) = v427;
  v338 = v179;
  v409 = sub_25328D168(v179);
  v182 = v181;
  v371 = v180;
  if (v180)
  {
    v183 = [v180 SSID];
    if (v183)
    {
      v184 = v183;
      v185 = sub_253CD0968();
      v187 = v186;

      sub_253286FEC(&v411, v185, v187);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
      v188 = swift_initStackObject();
      *(v188 + 16) = xmmword_253D48DA0;
      *(v188 + 32) = v185;
      *(v188 + 40) = v187;
      v360 = sub_25327B0F4(v188, v360);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v189 = [v371 networkBSSID];
    if (v189)
    {
      v190 = v189;
      v191 = sub_253CD0968();
      v193 = v192;

      sub_253286FEC(&v411, v191, v193);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
      v194 = swift_initStackObject();
      *(v194 + 16) = xmmword_253D48DA0;
      *(v194 + 32) = v191;
      *(v194 + 40) = v193;
      v359 = sub_25327B0F4(v194, v359);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v126 = v366;
  }

  v397 = *(v182 + 16);
  if (v397)
  {
    v403 = *(v409 + 2);
    v382 = (v182 + ((*(v385 + 80) + 32) & ~*(v385 + 80)));
    v375 = v385 + 16;
    v401 = (v410 + 16);
    v402 = (v410 + 8);
    LODWORD(v400) = *MEMORY[0x277D0EFB8];
    v399 = (v365 + 104);
    v195 = (v365 + 8);
    v373 = (v385 + 8);

    v196 = 0;
    v197 = v408;
    v198 = v396;
    v374 = v182;
    v199 = v404;
    while (1)
    {
      if (v196 >= *(v182 + 16))
      {
        goto LABEL_268;
      }

      v200 = *(v385 + 72);
      v398 = v196;
      (*(v385 + 16))(v198, &v382[v200 * v196], v131);
      if (!v403)
      {
LABEL_142:
        v131 = v390;
        (*v373)(v198, v390);
        v182 = v374;
        goto LABEL_143;
      }

      v201 = 0;
      v202 = &v409[(*(v410 + 80) + 32) & ~*(v410 + 80)];
      while (1)
      {
        if (v201 >= *(v409 + 2))
        {
          goto LABEL_261;
        }

        (*(v410 + 16))(v407, &v202[*(v410 + 72) * v201], v197);
        v203 = sub_253CD0158();
        v205 = v204;
        if (v203 == sub_253CD0238() && v205 == v206)
        {
          break;
        }

        v207 = sub_253CD1118();

        if (v207)
        {
          goto LABEL_154;
        }

        (*v402)(v407, v197);
LABEL_148:
        if (v403 == ++v201)
        {
          goto LABEL_142;
        }
      }

LABEL_154:
      v208 = v405;
      v209 = v407;
      sub_253CD0168();
      v210 = v406;
      (*v399)(v199, v400, v406);
      sub_25327FE88();
      v211 = sub_253CD0918();
      v212 = *v195;
      (*v195)(v199, v210);
      v213 = v208;
      v197 = v408;
      v212(v213, v210);
      v214 = v209;
      v198 = v396;
      (*v402)(v214, v197);
      if (v211)
      {
        goto LABEL_148;
      }

      v215 = sub_253CD0268();
      if (v216)
      {
        v217 = v215;
        v218 = v216;

        sub_253286FEC(&v411, v217, v218);

        sub_253286FEC(&v411, v217, v218);
      }

      v219 = sub_253CD0278();
      v131 = v390;
      v182 = v374;
      if (v220)
      {
        sub_253286FEC(&v411, v219, v220);
      }

      (*v373)(v198, v131);
LABEL_143:
      v196 = v398 + 1;
      if (v398 + 1 == v397)
      {

        v45 = v391;
        v46 = v388;
        v126 = v366;
        break;
      }
    }
  }

  v145 = v364;
LABEL_162:
  if (v358 <= -61)
  {
    v221 = 2;
  }

  else
  {
    v221 = (v358 >> 31) & 3;
  }

  if (v358 >= -80)
  {
    v222 = v221;
  }

  else
  {
    v222 = 1;
  }

  if (v145)
  {
    v223 = [v145 version];
    if ((v223 & 0x8000000000000000) != 0)
    {
      goto LABEL_269;
    }

    v224 = v367;
    if (!v367)
    {
      goto LABEL_174;
    }

LABEL_173:
    v224 = [v224 version];
    if ((v224 & 0x8000000000000000) != 0)
    {
      goto LABEL_270;
    }

    goto LABEL_174;
  }

  v223 = 0;
  v224 = v367;
  if (v367)
  {
    goto LABEL_173;
  }

LABEL_174:
  v373 = v224;
  v374 = v223;
  LODWORD(v371) = v222;
  v225 = 0;
  v226 = *(v126 + 16);
  do
  {
    v228 = v225;
    if (v226 == v225)
    {
      break;
    }

    (*(v46 + 2))(v379, v126 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v225, v45);
    if (sub_253CD01A8() == v395 && v229 == v392)
    {

      (*v394)(v379, v45);
      break;
    }

    ++v225;
    v227 = sub_253CD1118();

    (*v394)(v379, v45);
  }

  while ((v227 & 1) == 0);
  v367 = v228;
  v379 = v226;
  v230 = 0;
  v231 = v361;
  v232 = *(v361 + 16);
  do
  {
    v234 = v230;
    if (v232 == v230)
    {
      break;
    }

    (*(v46 + 2))(v380, v231 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v230, v45);
    if (sub_253CD01A8() == v395 && v235 == v392)
    {

      (*v394)(v380, v45);
      break;
    }

    ++v230;
    v233 = sub_253CD1118();

    (*v394)(v380, v45);
  }

  while ((v233 & 1) == 0);
  v236 = v356;
  v237 = [v356 SSID];
  v380 = v232;
  v364 = v234;
  if (v237)
  {

    v238 = [v236 networkBSSID];
    v239 = v357;
    v240 = v378;
    if (v238)
    {

      v358 = 1;
    }

    else
    {
      v358 = 0;
    }
  }

  else
  {
    v358 = 0;
    v239 = v357;
    v240 = v378;
  }

  v241 = *(v385 + 56);
  v409 = (v385 + 56);
  v407 = v241;
  (v241)(v389, 1, 1, v131);
  v242 = *(v239 + 16);
  if (v242)
  {
    v243 = *(v385 + 16);
    v244 = v239 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
    v245 = *(v385 + 72);
    v403 = (v385 + 8);
    v246 = (v385 + 32);
    do
    {
      v247 = v240;
      v248 = v240;
      v249 = v390;
      v243(v247, v244, v390);
      if (sub_253CD02A8())
      {
        v250 = v243;
        v251 = v389;
        sub_253206054(v389, &qword_27F5A3CD8, &unk_253D4AD60);
        (*v246)(v251, v248, v249);
        v252 = v251;
        v243 = v250;
        (v407)(v252, 0, 1, v249);
      }

      else
      {
        (*v403)(v248, v249);
      }

      v244 += v245;
      --v242;
      v240 = v378;
    }

    while (v242);
  }

  v253 = *(v386 + 16);
  v409 = v253;
  if (!v253)
  {
    goto LABEL_224;
  }

  LODWORD(v382) = 0;
  LODWORD(v375) = 0;
  LODWORD(v378) = 0;
  v401 = (v386 + ((*(v410 + 80) + 32) & ~*(v410 + 80)));
  v400 = v410 + 16;
  v399 = (v385 + 48);
  v395 = (v385 + 16);
  v392 = (v385 + 8);
  v385 = v365 + 88;
  LODWORD(v402) = *MEMORY[0x277D0EFC0];
  LODWORD(v398) = *MEMORY[0x277D0EFC8];
  v254 = (v365 + 8);
  v397 = (v410 + 8);
  v255 = v404;
  v256 = v340;
  v396 = (v365 + 104);
  v257 = 0;
  do
  {
    while (1)
    {
      (*(v410 + 16))(v256, &v401[*(v410 + 72) * v257], v408);
      if (__OFADD__(v257, 1))
      {
        goto LABEL_262;
      }

      v403 = v257;
      v407 = (v257 + 1);
      v258 = sub_253CD0158();
      v260 = v259;
      v261 = v389;
      v262 = v390;
      if ((*v399)(v389, 1, v390))
      {
      }

      else
      {
        v263 = v370;
        (*v395)(v370, v261, v262);
        v264 = sub_253CD0238();
        v266 = v265;
        (*v392)(v263, v262);
        if (v258 == v264 && v260 == v266)
        {

          v255 = v404;
        }

        else
        {
          v267 = sub_253CD1118();

          v255 = v404;
          if ((v267 & 1) == 0)
          {
            goto LABEL_215;
          }
        }

        v268 = v369;
        sub_253CD0168();
        v269 = v406;
        v270 = (*v385)(v268, v406);
        if (v270 == v402)
        {
          v271 = 2;
        }

        else if (v270 == v398)
        {
          v271 = 1;
        }

        else
        {
          (*v254)(v369, v269);
          v271 = 3;
        }

        LODWORD(v382) = v271;
      }

LABEL_215:
      v272 = *(sub_253CD0128() + 16);

      if (!v272)
      {
        v273 = *(sub_253CD0138() + 16);

        if (!v273)
        {
          (*v397)(v256, v408);
          break;
        }
      }

      v274 = v405;
      v275 = v256;
      sub_253CD0168();
      v276 = *v396;
      v277 = v406;
      (*v396)(v255, v398, v406);
      v278 = sub_253CD02C8();
      v279 = *v254;
      (*v254)(v255, v277);
      v279(v274, v277);
      if (v278)
      {
        (*v397)(v275, v408);
        LODWORD(v378) = 1;
        v253 = v409;
        v281 = v407;
        v256 = v275;
        if (v407 == v409)
        {
          goto LABEL_225;
        }

        goto LABEL_222;
      }

      sub_253CD0168();
      v276(v255, v402, v277);
      v280 = sub_253CD02C8();
      v279(v255, v277);
      v279(v274, v277);
      (*v397)(v275, v408);
      v256 = v275;
      if ((v280 & 1) == 0)
      {
        break;
      }

      LODWORD(v375) = 1;
      v253 = v409;
      v281 = v407;
      if (v407 == v409)
      {
        goto LABEL_225;
      }

LABEL_222:
      v257 = v281;
      if (v281 >= v253)
      {
        goto LABEL_223;
      }
    }

    v257 = v403 + 1;
    v253 = v409;
    if (v407 == v409)
    {
      goto LABEL_225;
    }
  }

  while (v257 < v409);
LABEL_223:
  __break(1u);
LABEL_224:
  LODWORD(v382) = 0;
  LODWORD(v375) = 0;
  LODWORD(v378) = 0;
LABEL_225:
  v282 = 0;
  v407 = (v410 + 16);
  LODWORD(v398) = *MEMORY[0x277D0EFC8];
  v403 = (v365 + 104);
  v402 = (v365 + 8);
  v401 = (v410 + 8);
  v283 = v405;
  v284 = v408;
  do
  {
    v399 = v282;
    if (v253 == v282)
    {
      break;
    }

    v285 = v410;
    v286 = v376;
    (*(v410 + 16))(v376, v386 + ((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v282++, v284);
    sub_253CD0168();
    v287 = v404;
    v288 = v406;
    (*v403)(v404, v398, v406);
    LODWORD(v400) = sub_253CD02C8();
    v289 = *v402;
    (*v402)(v287, v288);
    v289(v283, v288);
    v253 = v409;
    (*(v285 + 8))(v286, v284);
  }

  while ((v400 & 1) == 0);
  v290 = 0;
  LODWORD(v398) = *MEMORY[0x277D0EFC0];
  v291 = v408;
  do
  {
    v292 = v290;
    if (v253 == v290)
    {
      break;
    }

    v293 = v410;
    v294 = v377;
    (*(v410 + 16))(v377, v386 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v290++, v291);
    sub_253CD0168();
    v295 = v404;
    v296 = v406;
    (*v403)(v404, v398, v406);
    LODWORD(v400) = sub_253CD02C8();
    v297 = *v402;
    v298 = v295;
    v299 = v405;
    (*v402)(v298, v296);
    v297(v299, v296);
    v253 = v409;
    (*(v293 + 8))(v294, v291);
  }

  while ((v400 & 1) == 0);
  v300 = v380;
  if (!v380)
  {
    LODWORD(v410) = 0;
    v302 = v389;
    goto LABEL_245;
  }

  v301 = v292;
  v302 = v389;
  v303 = v361 + ((v388[80] + 32) & ~v388[80]);
  v304 = *(v388 + 9);
  v305 = v380;
  v306 = *(v388 + 2);
  v307 = v339;
  v308 = v391;
  v306(v339, v303, v391);
  while (2)
  {
    v309 = sub_253CD01A8();
    if (!v387)
    {
      (*v394)(v307, v308);

LABEL_234:
      v303 += v304;
      --v305;
      v302 = v389;
      if (!v305)
      {
        LODWORD(v410) = 0;
        goto LABEL_244;
      }

      v306(v307, v303, v308);
      continue;
    }

    break;
  }

  if (v309 != v381 || v310 != v387)
  {
    v311 = sub_253CD1118();

    (*v394)(v307, v391);
    if (v311)
    {
      LODWORD(v410) = 1;
      v302 = v389;
      goto LABEL_244;
    }

    goto LABEL_234;
  }

  (*v394)(v307, v391);
  LODWORD(v410) = 1;
LABEL_244:
  v300 = v380;
  v292 = v301;
LABEL_245:
  v312 = v368;
  v313 = v379;
  if (!v379)
  {
    LODWORD(v403) = 0;
    goto LABEL_259;
  }

  v314 = v292;
  v315 = v366 + ((v388[80] + 32) & ~v388[80]);
  v316 = *(v388 + 9);
  v317 = *(v388 + 2);
  while (2)
  {
    v318 = v391;
    v317(v312, v315, v391);
    v319 = sub_253CD01A8();
    if (!v387)
    {
      (*v394)(v312, v318);

LABEL_248:
      v315 += v316;
      if (!--v313)
      {
        LODWORD(v403) = 0;
        goto LABEL_258;
      }

      continue;
    }

    break;
  }

  if (v319 != v381 || v320 != v387)
  {
    v321 = sub_253CD1118();

    v312 = v368;
    (*v394)(v368, v391);
    if (v321)
    {
      goto LABEL_257;
    }

    goto LABEL_248;
  }

  (*v394)(v368, v391);
LABEL_257:
  LODWORD(v403) = 1;
LABEL_258:
  v302 = v389;
  v300 = v380;
  v292 = v314;
LABEL_259:
  v322 = v409 != v292;
  v323 = v409 != v399;
  LODWORD(v402) = v387 != 0;
  LODWORD(v409) = v300 != v364;
  LODWORD(v407) = v379 != v367;
  LODWORD(v408) = v384 != v383;
  LODWORD(v405) = v344 != v345;
  LODWORD(v406) = v384 != v346;
  LODWORD(v404) = v344 != v347;
  LODWORD(v398) = v375 & 1;
  v324 = v378 & 1;
  sub_253206054(v302, &qword_27F5A3CD8, &unk_253D4AD60);
  v401 = *(v423 + 16);
  v325 = v354;

  v400 = *(v422 + 16);

  v399 = v360[2];

  v326 = v359[2];

  v327 = *(v421 + 16);

  v328 = *(v418 + 16);

  v329 = sub_25327B294(v420, v419);

  v330 = v329[2];

  v331 = v351;
  *v351 = v353;
  v331[1] = v325;
  *(v331 + 16) = v355;
  *(v331 + 24) = v323;
  *(v331 + 25) = v322;
  *(v331 + 17) = v411;
  *(v331 + 5) = *(&v411 + 3);
  v332 = v352 & 1;
  v333 = v348 & 1;
  *(v331 + 26) = v382;
  *(v331 + 27) = 1;
  *(v331 + 28) = v324;
  *(v331 + 29) = v398;
  *(v331 + 30) = v410;
  *(v331 + 31) = v403;
  *(v331 + 32) = v402;
  v331[5] = v350;
  v331[6] = v349;
  *(v331 + 56) = v371;
  *(v331 + 57) = v358;
  *(v331 + 58) = v416;
  *(v331 + 31) = v417;
  v334 = v363;
  *(v331 + 4) = v362;
  *(v331 + 5) = v334;
  *(v331 + 48) = v372;
  *(v331 + 98) = v414;
  *(v331 + 51) = v415;
  v335 = v342;
  *(v331 + 13) = v341;
  *(v331 + 15) = v335;
  *(v331 + 68) = v343;
  *(v331 + 71) = v413;
  *(v331 + 138) = v412;
  v331[18] = v401;
  v331[19] = v400;
  v331[20] = v399;
  v331[21] = v326;
  v331[22] = v327;
  v331[23] = v328;
  *(v331 + 192) = v407;
  *(v331 + 193) = v409;
  *(v331 + 194) = v405;
  *(v331 + 195) = v408;
  *(v331 + 196) = v404;
  *(v331 + 197) = v406;
  v336 = v374;
  v331[25] = v330;
  v331[26] = v336;
  v331[27] = v373;
  *(v331 + 224) = v332;
  *(v331 + 225) = v333;
}

unint64_t sub_25327FE88()
{
  result = qword_27F5A3CE0;
  if (!qword_27F5A3CE0)
  {
    sub_253CD02D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3CE0);
  }

  return result;
}

unint64_t *sub_25327FEE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_25327B458(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

__n128 __swift_memcpy226_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 224) = *(a2 + 112);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_25327FF60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 226))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25327FFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 226) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 226) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_253280048(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[34])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25328009C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_253280118()
{
  result = qword_27F5A3D00;
  if (!qword_27F5A3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3D00);
  }

  return result;
}

uint64_t sub_25328017C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25328020C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2532802CC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25328035C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_253280420()
{
  result = qword_27F5A3D08;
  if (!qword_27F5A3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3D08);
  }

  return result;
}

unint64_t sub_253280478()
{
  result = qword_27F5A3D10;
  if (!qword_27F5A3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3D10);
  }

  return result;
}

unint64_t sub_2532804D0()
{
  result = qword_27F5A3D18;
  if (!qword_27F5A3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3D18);
  }

  return result;
}

id sub_2532806EC(uint64_t a1, uint64_t a2, Class *a3)
{
  if (isWatchLegacy())
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(*a3) init];
  }

  return v4;
}

id sub_253280AE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, Class *a5)
{
  v7 = sub_253CCFF58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  v11 = objc_allocWithZone(*a5);
  v12 = a4;
  v13 = sub_253CCFF18();
  v14 = [v11 initWithUUID:v13 workQueue:v12];

  (*(v8 + 8))(v10, v7);

  return v14;
}

unint64_t type metadata accessor for HMDHomeDefaultDataSource()
{
  result = qword_27F5A3D88;
  if (!qword_27F5A3D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3D88);
  }

  return result;
}

void *sub_253280C98()
{
  v1 = type metadata accessor for NetworkDetectAccessory(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v79 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = v74 - v5;
  v6 = sub_253CD01C8();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy23NetworkMismatchDetector_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  v81 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return v81;
  }

  v11 = Strong;
  v77 = v1;
  v12 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v84 = v12[3](ObjectType, v12);
  v14 = v12[2](ObjectType, v12);
  v15 = *(v14 + 16);
  v80 = v2;
  v78 = v11;
  if (v15)
  {
    v75 = ObjectType;
    v76 = v12;
    v89 = MEMORY[0x277D84F90];
    sub_25328BEB8(0, v15, 0);
    v16 = v89;
    v83 = *(v85 + 16);
    v17 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v74[1] = v14;
    v18 = v14 + v17;
    v82 = *(v85 + 72);
    v88 = v85 + 16;
    v19 = (v85 + 8);
    do
    {
      v20 = v86;
      v83(v8, v18, v86);
      v21 = sub_253CD01A8();
      v23 = v22;
      (*v19)(v8, v20);
      v89 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25328BEB8((v24 > 1), v25 + 1, 1);
        v16 = v89;
      }

      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += v82;
      --v15;
    }

    while (v15);

    v2 = v80;
    v12 = v76;
    ObjectType = v75;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = sub_25328D0D0(v16);

  v28 = v12[1](ObjectType, v12);
  v29 = v28[2];
  v88 = v27;
  if (v29)
  {
    v89 = MEMORY[0x277D84F90];
    sub_25328BEB8(0, v29, 0);
    v30 = v89;
    v31 = *(v85 + 16);
    v32 = *(v85 + 80);
    v81 = v28;
    v33 = v28 + ((v32 + 32) & ~v32);
    v82 = *(v85 + 72);
    v83 = v31;
    v85 += 16;
    v34 = (v85 - 8);
    do
    {
      v35 = v86;
      v83(v8, v33, v86);
      v36 = sub_253CD01A8();
      v38 = v37;
      (*v34)(v8, v35);
      v89 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_25328BEB8((v39 > 1), v40 + 1, 1);
        v30 = v89;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += v82;
      --v29;
    }

    while (v29);

    v2 = v80;
    v27 = v88;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v42 = sub_25328D0D0(v30);

  v44 = v84;
  v85 = *(v84 + 16);
  if (!v85)
  {

    v81 = MEMORY[0x277D84F90];
LABEL_48:
    swift_unknownObjectRelease();

    return v81;
  }

  v45 = 0;
  v86 = *(v77 + 20);
  v82 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v83 = (v84 + v82);
  v46 = v27 + 56;
  v81 = MEMORY[0x277D84F90];
  v47 = v42 + 56;
  while (v45 < *(v44 + 16))
  {
    v48 = *(v2 + 72);
    sub_25328F024(v83 + v48 * v45, v87, type metadata accessor for NetworkDetectAccessory);
    v49 = sub_253CCFF08();
    v51 = v50;
    v52 = v88;
    if (*(v88 + 16) && (v53 = v49, sub_253CD11C8(), sub_253CD09A8(), v54 = sub_253CD11E8(), v55 = -1 << *(v52 + 32), v56 = v54 & ~v55, ((*(v46 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
    {
      v57 = ~v55;
      while (1)
      {
        v58 = (*(v88 + 48) + 16 * v56);
        v59 = *v58 == v53 && v58[1] == v51;
        if (v59 || (sub_253CD1118() & 1) != 0)
        {
          break;
        }

        v56 = (v56 + 1) & v57;
        if (((*(v46 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v60 = sub_253CCFF08();
      v62 = v61;
      if (*(v42 + 16))
      {
        v63 = v60;
        sub_253CD11C8();
        sub_253CD09A8();
        v64 = sub_253CD11E8();
        v65 = -1 << *(v42 + 32);
        v66 = v64 & ~v65;
        if ((*(v47 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
        {
          v67 = ~v65;
          while (1)
          {
            v68 = (*(v42 + 48) + 16 * v66);
            v69 = *v68 == v63 && v68[1] == v62;
            if (v69 || (sub_253CD1118() & 1) != 0)
            {
              break;
            }

            v66 = (v66 + 1) & v67;
            if (((*(v47 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

LABEL_18:
          v2 = v80;
          goto LABEL_19;
        }
      }

LABEL_41:

      sub_25328F0EC(v87, v79, type metadata accessor for NetworkDetectAccessory);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_253283960(0, v81[2] + 1, 1, v81, &qword_27F5A3E20, &unk_253D4B1D0, type metadata accessor for NetworkDetectAccessory);
      }

      v2 = v80;
      v71 = v81[2];
      v70 = v81[3];
      if (v71 >= v70 >> 1)
      {
        v81 = sub_253283960((v70 > 1), v71 + 1, 1, v81, &qword_27F5A3E20, &unk_253D4B1D0, type metadata accessor for NetworkDetectAccessory);
      }

      v72 = v81;
      v73 = v82;
      v81[2] = v71 + 1;
      result = sub_25328F0EC(v79, v72 + v73 + v71 * v48, type metadata accessor for NetworkDetectAccessory);
    }

    else
    {
LABEL_19:

      result = sub_25328F08C(v87, type metadata accessor for NetworkDetectAccessory);
    }

    v44 = v84;
    if (++v45 == v85)
    {

      goto LABEL_48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253281498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA0, &qword_253D4B110);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DF8, &qword_253D4B178);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DE8, &qword_253D4B158);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E00, &unk_253D4B180);
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = type metadata accessor for NetworkDetectAccessory(0);
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v5[29] = *(v10 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253281740, 0, 0);
}

uint64_t sub_253281740()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v29 = **(v0 + 88);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v28 = *(v3 + 72);
    v27 = (v4 + 48) & ~v4;
    v6 = sub_253CD0B58();
    v7 = *(v6 - 8);
    v26 = *(v7 + 56);
    v25 = (v7 + 48);
    v24 = (v7 + 8);
    do
    {
      v30 = v2;
      v11 = *(v0 + 256);
      v10 = *(v0 + 264);
      v12 = *(v0 + 248);
      v31 = *(v0 + 104);
      v26(v10, 1, 1, v6);
      sub_25328F024(v5, v12, type metadata accessor for NetworkDetectAccessory);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = v31;
      sub_25328F0EC(v12, v13 + v27, type metadata accessor for NetworkDetectAccessory);
      sub_2532168A0(v10, v11, qword_27F5A2C48, &unk_253D48880);
      LODWORD(v11) = (*v25)(v11, 1, v6);
      swift_unknownObjectRetain();
      v14 = *(v0 + 256);
      if (v11 == 1)
      {
        sub_253206054(*(v0 + 256), qword_27F5A2C48, &unk_253D48880);
      }

      else
      {
        sub_253CD0B48();
        (*v24)(v14, v6);
      }

      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_253CD0AB8();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = &unk_253D4B1A0;
      *(v18 + 24) = v13;

      if (v17 | v15)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 264);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_253206054(v9, qword_27F5A2C48, &unk_253D48880);
      v5 += v28;
      v2 = v30 - 1;
    }

    while (v30 != 1);
  }

  sub_253CD0AF8();
  *(v0 + 272) = MEMORY[0x277D84F90];
  v19 = sub_25328ED30();
  v20 = swift_task_alloc();
  *(v0 + 280) = v20;
  *v20 = v0;
  v20[1] = sub_253281B20;
  v21 = *(v0 + 192);
  v22 = *(v0 + 144);

  return MEMORY[0x282200308](v22, v21, v19);
}

uint64_t sub_253281B20()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[25];
    v3 = v2[26];
    v5 = v2[24];

    (*(v4 + 8))(v3, v5);

    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_253281C74;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_253281C74()
{
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[34];
    v4 = v0[10];
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_253206054(v2, &qword_27F5A3DF8, &qword_253D4B178);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[22];
  v10 = v0[23];
  sub_25328ED94(v2, v10, &qword_27F5A3DE8, &qword_253D4B158);
  sub_2532168A0(v10, v9, &qword_27F5A3DE8, &qword_253D4B158);
  v11 = *(v1 + 48);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v12 = v0[22];
    sub_253206054(v0[23], &qword_27F5A3DE8, &qword_253D4B158);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B8, &qword_253D4B1B0);
    (*(*(v13 - 8) + 8))(v9 + v11, v13);
    v14 = v12;
  }

  else
  {
    v15 = v0[23];
    v16 = v0[21];
    v17 = v0[19];
    sub_25328F0EC(v0[22], v0[30], type metadata accessor for NetworkDetectAccessory);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B8, &qword_253D4B1B0);
    v19 = *(*(v18 - 8) + 8);
    v19(v9 + v11, v18);
    sub_2532168A0(v15, v16, &qword_27F5A3DE8, &qword_253D4B158);
    v20 = *(v17 + 48);
    sub_253CD00D8();
    v21 = v0[9];
    if (v21)
    {
      v39 = v0[30];
      v22 = v0[21];
      v23 = v0[17];
      v24 = v0[15];
      v19(v16 + v20, v18);
      sub_253206054(v22, &qword_27F5A3E10, &qword_253D4B1B8);
      v25 = *(v24 + 48);
      sub_25328F024(v39, v23, type metadata accessor for NetworkDetectAccessory);
      *(v23 + v25) = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v0[34];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_253283D64(0, v27[2] + 1, 1, v0[34]);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = sub_253283D64((v28 > 1), v29 + 1, 1, v27);
      }

      v30 = v0[23];
      v32 = v0[16];
      v31 = v0[17];
      sub_25328F08C(v0[30], type metadata accessor for NetworkDetectAccessory);
      sub_253206054(v30, &qword_27F5A3DE8, &qword_253D4B158);
      v27[2] = v29 + 1;
      sub_25328ED94(v31, v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, &qword_27F5A3DA0, &qword_253D4B110);
      goto LABEL_15;
    }

    v33 = v0[23];
    v34 = v0[21];
    sub_25328F08C(v0[30], type metadata accessor for NetworkDetectAccessory);
    sub_253206054(v33, &qword_27F5A3DE8, &qword_253D4B158);
    v19(v16 + v20, v18);
    v14 = v34;
  }

  sub_253206054(v14, &qword_27F5A3E10, &qword_253D4B1B8);
  v27 = v0[34];
LABEL_15:
  v0[34] = v27;
  v35 = sub_25328ED30();
  v36 = swift_task_alloc();
  v0[35] = v36;
  *v36 = v0;
  v36[1] = sub_253281B20;
  v37 = v0[24];
  v38 = v0[18];

  return MEMORY[0x282200308](v38, v37, v35);
}

uint64_t sub_253282188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a1;
  v6[4] = a6;
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_2532822C4;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_2532822C4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2532823C4, 0, 0);
}

uint64_t sub_2532823C4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DE8, &qword_253D4B158);
  sub_25328F024(v3, v2, type metadata accessor for NetworkDetectAccessory);
  v4 = type metadata accessor for NetworkDetectAccessory(0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[2] = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C8, &qword_253D48DE8);
  MEMORY[0x259C00030](v0 + 2, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2532824F0()
{
  v1 = sub_253280C98();
  v0[4] = v1;
  if (v1[2] && (v2 = v0[3] + OBJC_IVAR____TtC19HomeKitDaemonLegacy23NetworkMismatchDetector_dataSource, Strong = swift_unknownObjectWeakLoadStrong(), (v0[5] = Strong) != 0))
  {
    v4 = Strong;
    v5 = *(v2 + 8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DE8, &qword_253D4B158);
    v7 = swift_task_alloc();
    v0[6] = v7;
    v7[2] = v1;
    v7[3] = v4;
    v7[4] = v5;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DF0, &qword_253D4B170);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_25328269C;

    return MEMORY[0x282200600](v0 + 2, v6, v8, 0, 0, &unk_253D4B168, v7, v6);
  }

  else
  {

    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_25328269C()
{

  return MEMORY[0x2822009F8](sub_2532827D0, 0, 0);
}

uint64_t sub_2532827D0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_253282834(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3D98, &qword_253D4B108);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = sub_253CCFF58();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA0, &qword_253D4B110);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v1;
  v5[1] = sub_253282A50;

  return sub_2532824D0();
}

uint64_t sub_253282A50(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_253282B50, 0, 0);
}

uint64_t sub_253282B50()
{
  v82 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v79 = v0[15];
    v3 = v0[11];
    v75 = v0[10];
    v77 = v0[14];
    v4 = v0[8];
    v81 = MEMORY[0x277D84F90];
    sub_25328BF1C(0, v2, 0);
    v5 = v81;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v73 = *(v3 + 72);
    do
    {
      v7 = v0[16];
      v8 = v0[12];
      v9 = v0[13];
      v10 = v0[7];
      sub_2532168A0(v6, v9, &qword_27F5A3DA0, &qword_253D4B110);
      v11 = (v7 + *(v77 + 48));
      sub_2532168A0(v9, v8, &qword_27F5A3DA0, &qword_253D4B110);

      (*(v4 + 16))(v7, v8, v10);
      sub_25328F08C(v8, type metadata accessor for NetworkDetectAccessory);
      *v11 = sub_25328D168(*(v9 + *(v75 + 48)));
      v11[1] = v12;
      v11[2] = v13;
      sub_253206054(v9, &qword_27F5A3DA0, &qword_253D4B110);
      v81 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25328BF1C((v14 > 1), v15 + 1, 1);
        v5 = v81;
      }

      v16 = v0[16];
      *(v5 + 16) = v15 + 1;
      sub_25328ED94(v16, v5 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v15, &qword_27F5A3DA8, &qword_253D4B118);
      v6 += v73;
      --v2;
    }

    while (v2);

    if (*(v5 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DB0, &qword_253D4B120);
      v17 = sub_253CD10C8();
      goto LABEL_10;
    }
  }

  v17 = MEMORY[0x277D84F98];
LABEL_10:
  v81 = v17;

  sub_25328C774(v18, 1, &v81);
  v19 = v0[2];

  v20 = sub_25328D968(v19, v81);

  v21 = v19;
  v22 = sub_25328E904(v20, v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v0[8];
    v70 = v0[3];
    v81 = MEMORY[0x277D84F90];
    sub_25328BED8(0, v23, 0);
    v25 = v81;
    v26 = v22 + 64;
    v27 = sub_253CD0E48();
    v32 = v27;
    v33 = 0;
    v69 = v22 + 64;
    v65 = v22 + 72;
    v66 = v23;
    v67 = v22;
    v68 = v24;
    while ((v32 & 0x8000000000000000) == 0 && v32 < 1 << *(v22 + 32))
    {
      if ((*(v26 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
      {
        goto LABEL_32;
      }

      v74 = v32 >> 6;
      v71 = v33;
      v72 = *(v22 + 36);
      v76 = v0[9];
      v35 = v0[6];
      v36 = v0[7];
      v80 = v25;
      v38 = v0[4];
      v37 = v0[5];
      v78 = *(v24 + 72);
      (*(v24 + 16))(v35, *(v22 + 48) + v78 * v32, v36);
      v39 = (*(v22 + 56) + 24 * v32);
      v40 = v24;
      v42 = *v39;
      v41 = v39[1];
      v43 = v39[2];
      v44 = *(v40 + 32);
      v44(v37, v35, v36);
      v45 = (v37 + *(v70 + 48));
      *v45 = v42;
      v45[1] = v41;
      v45[2] = v43;
      sub_25328ED94(v37, v38, &qword_27F5A3D98, &qword_253D4B108);
      v46 = v38 + *(v70 + 48);
      v47 = v43;

      v48 = *(v46 + 16);
      v25 = v80;

      v44(v76, v38, v36);
      v81 = v80;
      v50 = *(v80 + 16);
      v49 = *(v80 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_25328BED8((v49 > 1), v50 + 1, 1);
        v25 = v81;
      }

      v51 = v0[9];
      v52 = v0[7];
      *(v25 + 16) = v50 + 1;
      v24 = v68;
      v27 = (v44)(v25 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + v50 * v78, v51, v52);
      v22 = v67;
      v34 = 1 << *(v67 + 32);
      v26 = v69;
      if (v32 >= v34)
      {
        goto LABEL_33;
      }

      v53 = *(v69 + 8 * v74);
      if ((v53 & (1 << v32)) == 0)
      {
        goto LABEL_34;
      }

      v28 = v72;
      if (v72 != *(v67 + 36))
      {
        goto LABEL_35;
      }

      v54 = v53 & (-2 << (v32 & 0x3F));
      if (v54)
      {
        v34 = __clz(__rbit64(v54)) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = v74 << 6;
        v56 = (v65 + 8 * v74);
        v57 = v74 + 1;
        while (v57 < (v34 + 63) >> 6)
        {
          v59 = *v56++;
          v58 = v59;
          v55 += 64;
          ++v57;
          if (v59)
          {
            v27 = sub_25323FB84(v32, v72, 0);
            v34 = __clz(__rbit64(v58)) + v55;
            goto LABEL_13;
          }
        }

        v27 = sub_25323FB84(v32, v72, 0);
      }

LABEL_13:
      v33 = v71 + 1;
      v32 = v34;
      if (v71 + 1 == v66)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return MEMORY[0x2821FEBD8](v27, v28, v29, v30, v31);
  }

  else
  {
LABEL_28:

    v60 = objc_allocWithZone(HMDNetworkMismatchDetectorResult);
    v61 = sub_253CD0A38();

    v62 = [v60 initWithAccessoriesNotOnWiFi_];

    v63 = v0[1];

    return v63(v62);
  }
}

id sub_25328327C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NetworkMismatchDetector();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_253283334(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E50, &qword_253D4B220);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E58, &qword_253D4B228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25328347C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3EA8, &qword_253D4B288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25328359C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3EA0, &qword_253D4B280);
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

char *sub_2532836C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
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

char *sub_253283844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E48, &qword_253D4B218);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_253283960(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_253283B3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E90, &unk_253D4B268);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_253283C30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB0, &unk_253D4B1E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_253283D64(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E18, &unk_253D4B1C0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA0, &qword_253D4B110) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA0, &qword_253D4B110) - 8);
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

uint64_t sub_253283F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E80, &qword_253D4B258);
  result = sub_253CD10B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_253CD0D78();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2532841EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E70, &unk_253D4B240);
  result = sub_253CD10B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_253CD0D78();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_253284464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_253CD01C8();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E68, &qword_253D4B238);
  v42 = v4;
  result = sub_253CD10B8();
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

      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
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

uint64_t sub_2532847E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DB0, &qword_253D4B120);
  v43 = v4;
  result = sub_253CD10B8();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v46 = *(v6 + 72);
      v26 = v25 + v46 * v24;
      if (v43)
      {
        (*v44)(v47, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v48 = *v27;
        v45 = *(v27 + 16);
      }

      else
      {
        (*v40)(v47, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v48 = *v28;
        v45 = *(v28 + 16);
        v29 = v45;
      }

      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_253CD08F8();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v46 * v19, v47, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v48;
      *(v20 + 16) = v45;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_253284C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_253CD10B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_253284EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_253CD10B8();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_253205FF8(v27, v38);
      }

      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_2532851A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B48, &unk_253D4AB40);
  v34 = v4;
  result = sub_253CD10B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_253285440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E28, &unk_253D4B1F0);
  v37 = v4;
  result = sub_253CD10B8();
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

      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
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

uint64_t sub_253285700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F0, &qword_253D48D78);
  v33 = v4;
  result = sub_253CD10B8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_2531FF170(v24, v34);
      }

      else
      {
        sub_2532074E4(v24, v34);
      }

      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2531FF170(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_2532859EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E80, &qword_253D4B258);
  v2 = *v0;
  v3 = sub_253CD10A8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_253285B50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E70, &unk_253D4B240);
  v2 = *v0;
  v3 = sub_253CD10A8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
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

char *sub_253285CC0()
{
  v1 = v0;
  v35 = sub_253CD01C8();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E68, &qword_253D4B238);
  v3 = *v0;
  v4 = sub_253CD10A8();
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

char *sub_253285F40()
{
  v1 = v0;
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DB0, &qword_253D4B120);
  v5 = *v0;
  v6 = sub_253CD10A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v44 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v16;
    v40 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v42;
        v21 = v43;
        v23 = *(v43 + 72) * v20;
        v24 = v41;
        (*(v43 + 16))(v41, *(v5 + 48) + v23, v42);
        v25 = *(v5 + 56);
        v26 = 24 * v20;
        v27 = (v25 + 24 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v31 = v44;
        (*(v21 + 32))(*(v44 + 48) + v23, v24, v22);
        v32 = (*(v31 + 56) + v26);
        v5 = v40;
        *v32 = v28;
        v32[1] = v29;
        v32[2] = v30;
        v33 = v30;

        v16 = v39;
        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    v7 = v44;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
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

id sub_2532861F8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_253CD10A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_25328637C(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_253CD10A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_253205FF8(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_25328651C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E28, &unk_253D4B1F0);
  v2 = *v0;
  v3 = sub_253CD10A8();
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

void *sub_253286694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F0, &qword_253D48D78);
  v2 = *v0;
  v3 = sub_253CD10A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2532074E4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2531FF170(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_25328683C(uint64_t *a1, void *a2)
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

    v9 = sub_253CD0EE8();

    if (v9)
    {

      sub_253200644(0, &qword_281530E30, off_27971A270);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_253CD0ED8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_253287808(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_253287C50(v20 + 1);
    }

    v18 = v8;
    sub_253289000(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  v11 = sub_253CD0D78();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_25328917C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_253CD0D88();

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

uint64_t sub_253286A74(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_253CD08F8();
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
      sub_25328F154(&qword_27F5A2AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_253CD0918();
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
    sub_2532892EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_253286D54(void *a1, uint64_t a2)
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

    v8 = sub_253CD0EE8();

    if (v8)
    {

      type metadata accessor for AssertionHandle.Assertion(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_253CD0ED8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2532879F8(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2532881D4(v18 + 1);
        }

        sub_253289084(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_253CD11C8();
    sub_253CCFF58();
    sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_253CD0908();
    v10 = sub_253CD11E8();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_253CCFF28();

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

      sub_253289590(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_253286FEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_253CD11C8();
  sub_253CD09A8();
  v8 = sub_253CD11E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_253CD1118() & 1) != 0)
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

    sub_25328976C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25328713C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for HomeDeviceEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  v9 = sub_253CD11E8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_25328F024(*(v8 + 48) + v13 * v11, v7, type metadata accessor for HomeDeviceEntity);
      v14 = sub_253CCFF28();
      sub_25328F08C(v7, type metadata accessor for HomeDeviceEntity);
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

    sub_25328F08C(a2, type metadata accessor for HomeDeviceEntity);
    sub_25328F024(*(v8 + 48) + v13 * v11, v21, type metadata accessor for HomeDeviceEntity);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25328F024(a2, v7, type metadata accessor for HomeDeviceEntity);
    v22 = *v15;
    sub_2532898EC(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_25328F0EC(a2, v17, type metadata accessor for HomeDeviceEntity);
    return 1;
  }
}

uint64_t sub_2532873A4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for HomeGroupEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_253CD11C8();
  v22 = v4;
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v23 = a2;
  sub_253CD0908();
  v9 = sub_253CD11E8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_25328F024(*(v8 + 48) + v13 * v11, v7, type metadata accessor for HomeGroupEntity);
      v14 = sub_253CCFF28();
      sub_25328F08C(v7, type metadata accessor for HomeGroupEntity);
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

    sub_25328F08C(v23, type metadata accessor for HomeGroupEntity);
    sub_25328F024(*(v8 + 48) + v13 * v11, v21, type metadata accessor for HomeGroupEntity);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v23;
    sub_25328F024(v23, v7, type metadata accessor for HomeGroupEntity);
    v24 = *v15;
    sub_253289BAC(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v24;
    sub_25328F0EC(v17, v21, type metadata accessor for HomeGroupEntity);
    return 1;
  }
}

uint64_t sub_253287664(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = v4;
  v8 = *v4;
  sub_253CD11C8();
  a3(a2);
  sub_253CD09A8();

  v9 = sub_253CD11E8();
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

      v18 = sub_253CD1118();

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

uint64_t sub_253287808(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E78, &qword_253D4B250);
    v2 = sub_253CD0F88();
    v15 = v2;
    sub_253CD0E98();
    if (sub_253CD0F08())
    {
      sub_253200644(0, &qword_281530E30, off_27971A270);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_253287C50(v9 + 1);
        }

        v2 = v15;
        result = sub_253CD0D78();
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

      while (sub_253CD0F08());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2532879F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E60, &qword_253D4B230);
    v2 = sub_253CD0F88();
    v15 = v2;
    sub_253CD0E98();
    if (sub_253CD0F08())
    {
      type metadata accessor for AssertionHandle.Assertion(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2532881D4(v9 + 1);
        }

        v2 = v15;
        sub_253CD11C8();
        sub_253CCFF58();
        sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_253CD0908();
        result = sub_253CD11E8();
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

      while (sub_253CD0F08());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_253287C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E78, &qword_253D4B250);
  result = sub_253CD0F78();
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
      result = sub_253CD0D78();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_253287E78(uint64_t a1)
{
  v2 = v1;
  v36 = sub_253CCFF58();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E88, &qword_253D4B260);
  result = sub_253CD0F78();
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
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_253CD08F8();
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

uint64_t sub_2532881D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E60, &qword_253D4B230);
  result = sub_253CD0F78();
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
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253CD0908();
      result = sub_253CD11E8();
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

uint64_t sub_25328847C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  result = sub_253CD0F78();
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
      sub_253CD11C8();
      sub_253CD09A8();
      result = sub_253CD11E8();
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

uint64_t sub_2532886DC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeDeviceEntity(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3830, &unk_253D499F0);
  result = sub_253CD0F78();
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
      sub_25328F0EC(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeDeviceEntity);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253CD0908();
      result = sub_253CD11E8();
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
      result = sub_25328F0EC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeDeviceEntity);
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

uint64_t sub_253288A30(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeGroupEntity(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E40, &qword_253D4B210);
  result = sub_253CD0F78();
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
      sub_25328F0EC(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeGroupEntity);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253CD0908();
      result = sub_253CD11E8();
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
      result = sub_25328F0EC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeGroupEntity);
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

uint64_t sub_253288D90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253CD0F78();
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
      sub_253CD11C8();
      a4(v20);
      sub_253CD09A8();

      result = sub_253CD11E8();
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

unint64_t sub_253289000(uint64_t a1, uint64_t a2)
{
  sub_253CD0D78();
  result = sub_253CD0E78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_253289084(uint64_t a1, uint64_t a2)
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  sub_253CD11E8();
  result = sub_253CD0E78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_25328917C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_253287C50(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25328A2C8();
      goto LABEL_12;
    }

    sub_25328AC34(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_253CD0D78();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_253200644(0, &qword_281530E30, off_27971A270);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_253CD0D88();

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
  sub_253CD1148();
  __break(1u);
}

uint64_t sub_2532892EC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_253287E78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25328A418();
      goto LABEL_12;
    }

    sub_25328AE48(v10 + 1);
  }

  v12 = *v3;
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_253CD08F8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25328F154(&qword_27F5A2AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_253CD0918();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_253289590(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2532881D4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25328A650();
      goto LABEL_12;
    }

    sub_25328B164(v7 + 1);
  }

  v9 = *v3;
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  result = sub_253CD11E8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AssertionHandle.Assertion(0);
    do
    {

      v12 = sub_253CCFF28();

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_25328976C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25328847C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25328A7A0();
      goto LABEL_16;
    }

    sub_25328B3EC(v8 + 1);
  }

  v10 = *v4;
  sub_253CD11C8();
  sub_253CD09A8();
  result = sub_253CD11E8();
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

      result = sub_253CD1118();
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
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_2532898EC(uint64_t a1, unint64_t a2, char a3)
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
    sub_2532886DC(v12 + 1);
    goto LABEL_8;
  }

  if (v13 <= v12)
  {
    v27 = v9;
    sub_25328B624(v12 + 1);
LABEL_8:
    v15 = *v3;
    sub_253CD11C8();
    sub_253CCFF58();
    sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_253CD0908();
    v16 = sub_253CD11E8();
    v17 = -1 << *(v15 + 32);
    a2 = v16 & ~v17;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v18 = ~v17;
      v14 = v8;
      v19 = *(v8 + 72);
      while (1)
      {
        sub_25328F024(*(v15 + 48) + v19 * a2, v11, type metadata accessor for HomeDeviceEntity);
        v20 = sub_253CCFF28();
        sub_25328F08C(v11, type metadata accessor for HomeDeviceEntity);
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
  sub_25328A8FC(type metadata accessor for HomeDeviceEntity, &qword_27F5A3830, &unk_253D499F0, type metadata accessor for HomeDeviceEntity);
LABEL_14:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_25328F0EC(a1, *(v21 + 48) + *(v14 + 72) * a2, type metadata accessor for HomeDeviceEntity);
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
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_253289BAC(uint64_t a1, unint64_t a2, char a3)
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
    sub_253288A30(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25328A8FC(type metadata accessor for HomeGroupEntity, &qword_27F5A3E40, &qword_253D4B210, type metadata accessor for HomeGroupEntity);
      goto LABEL_12;
    }

    sub_25328B948(v10 + 1);
  }

  v12 = *v3;
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  v13 = sub_253CD11E8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_25328F024(*(v12 + 48) + v16 * a2, v9, type metadata accessor for HomeGroupEntity);
      v17 = sub_253CCFF28();
      sub_25328F08C(v9, type metadata accessor for HomeGroupEntity);
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
  result = sub_25328F0EC(v18, *(v19 + 48) + *(v24 + 72) * a2, type metadata accessor for HomeGroupEntity);
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
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_253289E68(uint64_t result, unint64_t a2, char a3)
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
    sub_253288D90(v7 + 1, &qword_27F5A3810, &unk_253D499E0, sub_253243DB4);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25328AB04(&qword_27F5A3810, &unk_253D499E0);
      goto LABEL_16;
    }

    sub_25328BC78(v7 + 1, &qword_27F5A3810, &unk_253D499E0, sub_253243DB4);
  }

  v9 = *v3;
  sub_253CD11C8();
  sub_253243DB4(v6);
  sub_253CD09A8();

  result = sub_253CD11E8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_253243DB4(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == sub_253243DB4(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_253CD1118();

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
  result = sub_253CD1148();
  __break(1u);
  return result;
}

uint64_t sub_25328A098(uint64_t result, unint64_t a2, char a3)
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
    sub_253288D90(v7 + 1, &qword_27F5A3E30, &qword_253D4B208, sub_253244E38);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25328AB04(&qword_27F5A3E30, &qword_253D4B208);
      goto LABEL_16;
    }

    sub_25328BC78(v7 + 1, &qword_27F5A3E30, &qword_253D4B208, sub_253244E38);
  }

  v9 = *v3;
  sub_253CD11C8();
  sub_253244E38(v6);
  sub_253CD09A8();

  result = sub_253CD11E8();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = sub_253244E38(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == sub_253244E38(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_253CD1118();

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
  result = sub_253CD1148();
  __break(1u);
  return result;
}

id sub_25328A2C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E78, &qword_253D4B250);
  v2 = *v0;
  v3 = sub_253CD0F68();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_25328A418()
{
  v1 = v0;
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E88, &qword_253D4B260);
  v6 = *v0;
  v7 = sub_253CD0F68();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_25328A650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E60, &qword_253D4B230);
  v2 = *v0;
  v3 = sub_253CD0F68();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_25328A7A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  v2 = *v0;
  v3 = sub_253CD0F68();
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

void *sub_25328A8FC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_253CD0F68();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_25328F024(*(v13 + 48) + v28, v12, a4);
        result = sub_25328F0EC(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void *sub_25328AB04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_253CD0F68();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

uint64_t sub_25328AC34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E78, &qword_253D4B250);
  result = sub_253CD0F78();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_253CD0D78();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_25328AE48(uint64_t a1)
{
  v2 = v1;
  v33 = sub_253CCFF58();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E88, &qword_253D4B260);
  v7 = sub_253CD0F78();
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
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_253CD08F8();
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

uint64_t sub_25328B164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E60, &qword_253D4B230);
  result = sub_253CD0F78();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      sub_253CD0908();
      result = sub_253CD11E8();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_25328B3EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CE8, &qword_253D4AD70);
  result = sub_253CD0F78();
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
      sub_253CD11C8();

      sub_253CD09A8();
      result = sub_253CD11E8();
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

uint64_t sub_25328B624(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeDeviceEntity(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3830, &unk_253D499F0);
  result = sub_253CD0F78();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_25328F024(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeDeviceEntity);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253CD0908();
      result = sub_253CD11E8();
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_25328F0EC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeDeviceEntity);
      ++*(v8 + 16);
      v6 = v30;
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

        v2 = v29;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_25328B948(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeGroupEntity(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E40, &qword_253D4B210);
  result = sub_253CD0F78();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_25328F024(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for HomeGroupEntity);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25328F154(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253CD0908();
      result = sub_253CD11E8();
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_25328F0EC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for HomeGroupEntity);
      ++*(v8 + 16);
      v6 = v31;
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

        v2 = v30;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_25328BC78(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_253CD0F78();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_253CD11C8();
      a4(v19);
      sub_253CD09A8();

      result = sub_253CD11E8();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v5 = v8;
  }

  return result;
}

char *sub_25328BEB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25328BFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25328BED8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25328C3CC(a1, a2, a3, *v3, &qword_27F5A3DB8, &qword_253D4B128, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_25328BF1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25328C0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25328BF3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25328C2BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25328BF5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25328C3CC(a1, a2, a3, *v3, &qword_27F5A3DD8, &qword_253D4B148, MEMORY[0x277D0EFB0]);
  *v3 = result;
  return result;
}

void *sub_25328BFA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25328C5A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25328BFC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A90, &unk_253D4AAB0);
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

void *sub_25328C0CC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DE0, &qword_253D4B150);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118) - 8);
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

char *sub_25328C2BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3E98, &qword_253D4B278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25328C3CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_25328C5A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BB0, &unk_253D4B1E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_25328C6DC(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_25328E5DC(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void sub_25328C774(uint64_t a1, char a2, void *a3)
{
  v65 = a3;
  v6 = sub_253CCFF58();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3DA8, &qword_253D4B118);
  v62 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = v56 - v10;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v61;
  v12 = (v61 + *(v9 + 48));
  v13 = *(v62 + 80);
  v60 = a1;
  v14 = (v63 + 32);
  v58 = a1 + ((v13 + 32) & ~v13);
  sub_2532168A0(v58, v61, &qword_27F5A3DA8, &qword_253D4B118);
  v15 = v66;
  v57 = *v14;
  v57(v66, v11, v64);
  v16 = *v12;
  v17 = v12[1];
  v18 = v12[2];
  v19 = *v65;
  v21 = sub_253217E4C(v15);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_253285F40();
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2532847E4(v24, a2 & 1);
  v26 = sub_253217E4C(v66);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_14:
      v30 = v66;
      v31 = *v65;
      *(*v65 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v57(v31[6] + *(v63 + 72) * v21, v30, v64);
      v32 = (v31[7] + 24 * v21);
      *v32 = v16;
      v32[1] = v17;
      v32[2] = v18;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31[2] = v35;
      if (v59 != 1)
      {
        v36 = 1;
        while (v36 < *(v60 + 16))
        {
          v37 = v61;
          sub_2532168A0(v58 + *(v62 + 72) * v36, v61, &qword_27F5A3DA8, &qword_253D4B118);
          v38 = *v14;
          v39 = v66;
          (*v14)(v66, v37, v64);
          v40 = *v12;
          v41 = v12[1];
          v18 = v12[2];
          v42 = *v65;
          v43 = sub_253217E4C(v39);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v34 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v34)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2532847E4(v47, 1);
            v43 = sub_253217E4C(v66);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v66;
          v51 = *v65;
          *(*v65 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v38(v51[6] + *(v63 + 72) * v43, v50, v64);
          v53 = (v51[7] + 24 * v52);
          *v53 = v40;
          v53[1] = v41;
          v53[2] = v18;
          v54 = v51[2];
          v34 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v51[2] = v55;
          if (v59 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v28 = swift_allocError();
    swift_willThrow();
    v69 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v66, v64);
      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_253CD1158();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_253CD0FB8();
  MEMORY[0x259C00940](0xD00000000000001BLL, 0x8000000253D51A50);
  sub_253CD1058();
  MEMORY[0x259C00940](39, 0xE100000000000000);
  sub_253CD1078();
  __break(1u);
}