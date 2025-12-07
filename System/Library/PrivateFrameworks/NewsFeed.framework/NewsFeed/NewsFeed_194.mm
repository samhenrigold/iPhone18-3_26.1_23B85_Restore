void sub_1D6CECE98(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v14 = v13;
  v383 = a8;
  v368 = a6;
  v369 = a7;
  v386 = a5;
  v387 = a4;
  v445 = a3;
  v370 = a2;
  v384 = a1;
  v365 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v362 = &v347 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatPropertyDefinition(0);
  v364 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v357 = &v347 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v359 = &v347 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v363 = &v347 - v26;
  v378 = type metadata accessor for FormatOption(0);
  v374 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378, v27);
  v358 = &v347 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v356 = &v347 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v367 = &v347 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v347 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v377 = &v347 - v41;
  sub_1D6AC4E74(0);
  v354 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v355 = &v347 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v361, v45);
  v366 = &v347 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v360 = (&v347 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v371 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v371, v50);
  v372 = &v347 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v373 = v38;
  v380 = v12;
  v385 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v52 = *(v385 + 16);
  v53 = 0;
  if (v52)
  {
    v54 = (v385 + 32);
    do
    {
      v55 = *v54++;
      v56 = qword_1D7349118[v55];
      if ((v56 & ~v53) == 0)
      {
        v56 = 0;
      }

      v53 |= v56;
      --v52;
    }

    while (v52);
  }

  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  sub_1D6D09E8C(0, &qword_1EDF155B0, &type metadata for FeedPuzzle, type metadata accessor for FeedItemSorter);
  v379 = v58;
  v59 = swift_allocObject();
  v60 = MEMORY[0x1E69E7CC0];
  v381 = v59;
  *(v59 + 16) = MEMORY[0x1E69E7CC0];
  v61 = (v59 + 16);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1D6D09C90;
  *(v62 + 24) = v57;
  swift_beginAccess();

  v63 = sub_1D6990DC8(0, 1, 1, v60);
  v65 = v63[2];
  v64 = v63[3];
  if (v65 >= v64 >> 1)
  {
    v63 = sub_1D6990DC8((v64 > 1), v65 + 1, 1, v63);
  }

  v375 = a11;
  v382 = a10;
  v63[2] = v65 + 1;
  v66 = &v63[2 * v65];
  v66[4] = sub_1D6196DFC;
  v66[5] = v62;
  *v61 = v63;
  swift_endAccess();

  v376 = type metadata accessor for GroupLayoutBindingContext(0);
  v67 = v384;
  v68 = *&v384[v376[14]];
  v69 = *(v68 + 16);
  v70 = v387;

  if (!v69 || (v71 = sub_1D5BCF83C(0x7A7A755064656546, 0xEA0000000000656CLL, v445, v70), (v72 & 1) == 0) || !*(*(*(v68 + 56) + 8 * v71) + 16))
  {
    sub_1D5ED8048();
    v75 = swift_allocError();
    *v76 = 0x7A7A755064656546;
LABEL_14:
    *(v76 + 8) = 0xEA0000000000656CLL;
    *(v76 + 16) = v445;
    *(v76 + 24) = v70;
    goto LABEL_15;
  }

  v74 = sub_1D5BF08EC(v73, v383, v382);
  if (v14)
  {

    v75 = v14;
    goto LABEL_16;
  }

  v352 = v73;
  v103 = sub_1D714F5A0(v74);

  if (!v103)
  {
LABEL_44:

    sub_1D5ED8048();
    v75 = swift_allocError();
    *v76 = 0x7A7A755064656546;
    goto LABEL_14;
  }

  v350 = 0;
  v104 = *(v103 + 16);
  if (!v104)
  {

    v70 = v387;
    goto LABEL_44;
  }

  v353 = v103;
  v105 = v376;
  v106 = *&v67[v376[17]];
  v348 = v376[19];
  v349 = *&v67[v348];
  v107 = v349;
  if (v349 >= v106)
  {
    goto LABEL_55;
  }

  if (*v67)
  {
    v108 = v353;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_1D62F1B94(v353);
    v108 = v115;
    v104 = *(v115 + 16);

    if (!v104)
    {
      goto LABEL_54;
    }
  }

  v116 = 0;
  v351 = v386 | 0x1000;
  v117 = v108 + 32;
  do
  {
    if (v116 >= *(v108 + 16))
    {
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    *v390 = v116;
    sub_1D5F2DEAC(v117, &v390[8]);
    if (!*&v390[56])
    {
      break;
    }

    v118 = *v390;
    *v390 = *&v390[8];
    *&v390[16] = *&v390[24];
    *&v390[32] = *&v390[40];
    *&v390[48] = *&v390[56];
    *&v390[64] = *&v390[72];
    *&v390[80] = *&v390[88];
    *&v390[96] = *&v390[104];
    *&v390[112] = *&v390[120];
    *&v390[128] = *&v390[136];
    *&v390[144] = *&v390[152];
    *&v390[160] = *&v390[168];
    *&v390[176] = *&v390[184];
    *&v390[192] = *&v390[200];
    if ((v351 & ~*v390) == 0)
    {

      *&v391 = v108;
      v145 = v118;
      goto LABEL_109;
    }

    ++v116;
    sub_1D5F2DF58(v390);
    v117 += 208;
  }

  while (v104 != v116);
  v67 = v384;
LABEL_54:
  swift_bridgeObjectRelease_n();
  v107 = v349;
LABEL_55:
  v119 = *&v67[v105[18]];
  v120 = __OFSUB__(v119, v107);
  v121 = v119 - v107;
  if (v120)
  {
    goto LABEL_280;
  }

  v122 = v353;
  if (v121 < 1)
  {
    if (*v67)
    {

      v130 = v122;
    }

    else
    {
      sub_1D62F1B94(v353);
      v130 = v131;
    }

    v132 = *(v130 + 16);

    if (v132)
    {
      v133 = 0;
      v134 = v130 + 32;
      while (1)
      {
        if (v133 >= *(v130 + 16))
        {
          goto LABEL_274;
        }

        *v390 = v133;
        sub_1D5F2DEAC(v134, &v390[8]);
        if (!*&v390[56])
        {
          goto LABEL_77;
        }

        v135 = *v390;
        v136 = *&v390[8];
        *v390 = *&v390[8];
        *&v390[16] = *&v390[24];
        *&v390[32] = *&v390[40];
        *&v390[48] = *&v390[56];
        *&v390[64] = *&v390[72];
        *&v390[80] = *&v390[88];
        *&v390[96] = *&v390[104];
        *&v390[112] = *&v390[120];
        *&v390[128] = *&v390[136];
        *&v390[144] = *&v390[152];
        *&v390[160] = *&v390[168];
        *&v390[176] = *&v390[184];
        *&v390[192] = *&v390[200];
        if ((v386 & ~*v390) == 0 && (v136 & 0x1000) == 0)
        {
          break;
        }

        ++v133;
        sub_1D5F2DF58(v390);
        v134 += 208;
        v67 = v384;
        if (v132 == v133)
        {
          goto LABEL_77;
        }
      }

      *&v391 = v130;
      sub_1D5EC1FB8(v135, v389);
      sub_1D5F2DF58(v390);

      v401 = v389[10];
      v402 = v389[11];
      v391 = v389[0];
      v392 = v389[1];
      v403 = v389[12];
      v397 = v389[6];
      v398 = v389[7];
      v399 = v389[8];
      v400 = v389[9];
      v393 = v389[2];
      v394 = v389[3];
      v395 = v389[4];
      v396 = v389[5];
      v413 = v389[9];
      v414 = v389[10];
      v415 = v389[11];
      v416 = v389[12];
      v409 = v389[5];
      v410 = v389[6];
      v411 = v389[7];
      v412 = v389[8];
      v405 = v389[1];
      v406 = v389[2];
      v407 = v389[3];
      v408 = v389[4];
      v404 = v389[0];
      goto LABEL_110;
    }

LABEL_77:
    swift_bridgeObjectRelease_n();
    v391 = 0u;
    v392 = 0u;
    v393 = 0u;
    v394 = 0u;
    v395 = 0u;
    v396 = 0u;
    v397 = 0u;
    v398 = 0u;
    v399 = 0u;
    v400 = 0u;
    v401 = 0u;
    v402 = 0u;
    v403 = 0u;
    if ((*v67 & 1) == 0)
    {
      sub_1D62F1B94(v353);
      v140 = v139;

      v353 = v140;
    }

    v141 = *(v353 + 16);

    if (v141)
    {
      v142 = 0;
      v143 = v353 + 32;
      while (1)
      {
        if (v142 >= *(v353 + 16))
        {
          goto LABEL_277;
        }

        *v390 = v142;
        sub_1D5F2DEAC(v143, &v390[8]);
        if (!*&v390[56])
        {
          goto LABEL_85;
        }

        v144 = *v390;
        *v390 = *&v390[8];
        *&v390[16] = *&v390[24];
        *&v390[32] = *&v390[40];
        *&v390[48] = *&v390[56];
        *&v390[64] = *&v390[72];
        *&v390[80] = *&v390[88];
        *&v390[96] = *&v390[104];
        *&v390[112] = *&v390[120];
        *&v390[128] = *&v390[136];
        *&v390[144] = *&v390[152];
        *&v390[160] = *&v390[168];
        *&v390[176] = *&v390[184];
        *&v390[192] = *&v390[200];
        if ((v386 & ~*v390) == 0)
        {
          break;
        }

        ++v142;
        sub_1D5F2DF58(v390);
        v143 += 208;
        if (v141 == v142)
        {
          goto LABEL_85;
        }
      }

      v178 = v353;

      v388 = v178;
      sub_1D5EC1FB8(v144, v389);
      sub_1D5F2DF58(v390);

      v414 = v389[10];
      v415 = v389[11];
      v416 = v389[12];
      v410 = v389[6];
      v411 = v389[7];
      v412 = v389[8];
      v413 = v389[9];
      v406 = v389[2];
      v407 = v389[3];
      v408 = v389[4];
      v409 = v389[5];
      v404 = v389[0];
      v405 = v389[1];
    }

    else
    {
LABEL_85:
      v137 = swift_bridgeObjectRelease_n();
      v404 = 0u;
      v405 = 0u;
      v406 = 0u;
      v407 = 0u;
      v408 = 0u;
      v409 = 0u;
      v410 = 0u;
      v411 = 0u;
      v412 = 0u;
      v413 = 0u;
      v414 = 0u;
      v415 = 0u;
      v416 = 0u;
    }

    v161 = v350;
    v162 = v384;
    v129 = v387;
    if (v394)
    {
      v137 = sub_1D6D09524(&v391, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
    }

LABEL_135:
    v179 = v352;
    if (!v407)
    {

      goto LABEL_148;
    }

    v427 = v414;
    v428 = v415;
    v429 = v416;
    v423 = v410;
    v424 = v411;
    v425 = v412;
    v426 = v413;
    v419 = v406;
    v420 = v407;
    v421 = v408;
    v422 = v409;
    v417 = v404;
    v418 = v405;
    if ((BYTE1(v404) & 0x10) != 0)
    {
      if (__OFADD__(v349, 1))
      {
        goto LABEL_284;
      }

      *&v162[v348] = v349 + 1;
    }

    if ((v375 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v137, v138);
      *(&v347 - 2) = &v417;
      v181 = sub_1D5BF5F6C(sub_1D6D0A5A0, (&v347 - 4), v180);
      v350 = v161;
      v179 = v181;
    }

    *&v389[0] = 0x7A7A755064656546;
    *(&v389[0] + 1) = 0xEA0000000000656CLL;
    *&v389[1] = v445;
    *(&v389[1] + 1) = v129;
    sub_1D5BDACA8(v389, v179);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v443 = v428;
    v444 = v429;
    v438 = v423;
    v439 = v424;
    v441 = v426;
    v442 = v427;
    v440 = v425;
    v434 = v419;
    v435 = v420;
    v436 = v421;
    v437 = v422;
    v432 = v417;
    v433 = v418;
    v182 = *(&v419 + 1);
    v183 = v420;
    v184 = v370;
    v186 = v382;
    v185 = v383;
    v353 = sub_1D6196E44(v370, v383, v382, *(&v419 + 1), v420);
    v431 = v353;
    v376 = v183;
    v187 = sub_1D6196F00(v184, v185, v186, v182, v183);
    v188 = v186;
    v189 = v187;
    v430 = v187;
    if (!v188)
    {
      v387 = 0;
      v445 = 0;
      v385 = 0;
      v386 = 0;
      v381 = 0;
      v382 = 0;
      v190 = v380;
      goto LABEL_173;
    }

    v190 = v380;
    if (*(v184 + 16))
    {
      v191 = sub_1D5B69D90(v185, v188);
      if (v192)
      {
        v193 = *(*(*(v184 + 56) + 8 * v191) + 136);
        if (*(v193 + 16))
        {

          v194 = sub_1D5B69D90(v182, v376);
          if (v195)
          {
            v196 = (*(v193 + 56) + 48 * v194);
            v197 = v196[1];
            v387 = *v196;
            v198 = v196[2];
            v199 = v196[3];
            v382 = v196[4];
            v200 = v182;
            v201 = v196[5];
            v445 = v197;

            v386 = v198;

            v385 = v199;

            v381 = v201;
            v182 = v200;

            goto LABEL_168;
          }

          goto LABEL_171;
        }
      }
    }

LABEL_172:
    v387 = 0;
    v445 = 0;
    v385 = 0;
    v386 = 0;
    v381 = 0;
    v382 = 0;
    goto LABEL_173;
  }

  if ((*v67 & 1) == 0)
  {
    sub_1D62F1B94(v353);
    v124 = v123;

    v122 = v124;
  }

  v125 = *(v122 + 16);

  if (v125)
  {
    v126 = 0;
    v127 = v122 + 32;
    while (1)
    {
      if (v126 >= *(v122 + 16))
      {
        goto LABEL_273;
      }

      *v390 = v126;
      sub_1D5F2DEAC(v127, &v390[8]);
      if (!*&v390[56])
      {
        goto LABEL_65;
      }

      v128 = *v390;
      *v390 = *&v390[8];
      *&v390[16] = *&v390[24];
      *&v390[32] = *&v390[40];
      *&v390[48] = *&v390[56];
      *&v390[64] = *&v390[72];
      *&v390[80] = *&v390[88];
      *&v390[96] = *&v390[104];
      *&v390[112] = *&v390[120];
      *&v390[128] = *&v390[136];
      *&v390[144] = *&v390[152];
      *&v390[160] = *&v390[168];
      *&v390[176] = *&v390[184];
      *&v390[192] = *&v390[200];
      if ((v386 & ~*v390) == 0)
      {
        break;
      }

      ++v126;
      sub_1D5F2DF58(v390);
      v127 += 208;
      if (v125 == v126)
      {
        goto LABEL_65;
      }
    }

    *&v391 = v122;
    v145 = v128;
LABEL_109:
    sub_1D5EC1FB8(v145, v389);
    sub_1D5F2DF58(v390);

    v414 = v389[10];
    v415 = v389[11];
    v416 = v389[12];
    v410 = v389[6];
    v411 = v389[7];
    v412 = v389[8];
    v413 = v389[9];
    v406 = v389[2];
    v407 = v389[3];
    v408 = v389[4];
    v409 = v389[5];
    v404 = v389[0];
    v405 = v389[1];
LABEL_110:
    v161 = v350;
    v162 = v384;
    v129 = v387;
    goto LABEL_135;
  }

LABEL_65:
  swift_bridgeObjectRelease_n();

  v404 = 0u;
  v405 = 0u;
  v406 = 0u;
  v407 = 0u;
  v408 = 0u;
  v409 = 0u;
  v410 = 0u;
  v411 = 0u;
  v412 = 0u;
  v413 = 0u;
  v414 = 0u;
  v415 = 0u;
  v416 = 0u;
  v129 = v387;
LABEL_148:
  sub_1D6D09524(&v404, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
  sub_1D5ED8048();
  v75 = swift_allocError();
  *v76 = 0x7A7A755064656546;
  *(v76 + 8) = 0xEA0000000000656CLL;
  *(v76 + 16) = v445;
  *(v76 + 24) = v129;
LABEL_15:
  *(v76 + 32) = v386;
  *(v76 + 40) = 1;
  v77 = v382;
  *(v76 + 48) = v383;
  *(v76 + 56) = v77;
  *(v76 + 64) = 0;
  swift_willThrow();

LABEL_16:
  if ((*(v380 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    swift_willThrow();
    return;
  }

  v78 = *(v385 + 16);
  v382 = 0;
  v383 = v75;
  v79 = 0;
  if (v78)
  {
    v80 = (v385 + 32);
    do
    {
      v81 = *v80++;
      v82 = qword_1D7349118[v81];
      if ((v82 & ~v79) == 0)
      {
        v82 = 0;
      }

      v79 |= v82;
      --v78;
    }

    while (v78);
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v79;
  v84 = swift_allocObject();
  v385 = v84;
  v85 = MEMORY[0x1E69E7CC0];
  *(v84 + 16) = MEMORY[0x1E69E7CC0];
  v86 = (v84 + 16);
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1D6D0A5E4;
  *(v87 + 24) = v83;
  swift_beginAccess();

  v88 = sub_1D6990DC8(0, 1, 1, v85);
  v90 = v88[2];
  v89 = v88[3];
  if (v90 >= v89 >> 1)
  {
    v88 = sub_1D6990DC8((v89 > 1), v90 + 1, 1, v88);
  }

  v88[2] = v90 + 1;
  v91 = &v88[2 * v90];
  v91[4] = sub_1D6D0A510;
  v91[5] = v87;
  *v86 = v88;
  swift_endAccess();

  v92 = *(v68 + 16);
  v93 = v387;

  if (!v92 || (v94 = sub_1D5BCF83C(0x7A7A755064656546, 0xEA0000000000656CLL, v445, v93), (v95 & 1) == 0) || (v96 = *(*(v68 + 56) + 8 * v94), !*(v96 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v102 = 0x7A7A755064656546;
    *(v102 + 8) = 0xEA0000000000656CLL;
    *(v102 + 16) = v445;
    *(v102 + 24) = v93;
    goto LABEL_31;
  }

  v98 = v384;
  v99 = v382;
  v100 = sub_1D5BF08EC(v97, 0, 0);
  v101 = v99;
  if (v99)
  {

    goto LABEL_32;
  }

  v109 = sub_1D714F5A0(v100);

  if (!v109)
  {
    goto LABEL_46;
  }

  v110 = *(v109 + 16);
  if (!v110)
  {

LABEL_46:

LABEL_161:
    sub_1D5ED8048();
    swift_allocError();
    *v102 = 0x7A7A755064656546;
    *(v102 + 8) = 0xEA0000000000656CLL;
    v202 = v387;
    *(v102 + 16) = v445;
    *(v102 + 24) = v202;
LABEL_31:
    *(v102 + 32) = v386;
    *(v102 + 40) = 1;
    *(v102 + 48) = 0;
    *(v102 + 56) = 0;
    *(v102 + 64) = 0;
    swift_willThrow();
LABEL_32:

    swift_setDeallocating();
    swift_deallocClassInstance();
    return;
  }

  v111 = v376;
  v112 = *&v98[v376[17]];
  v379 = v376[19];
  v113 = *&v98[v379];
  v381 = v96;
  v382 = v113;
  if (v113 >= v112)
  {
    goto LABEL_95;
  }

  if (*v98)
  {
    swift_bridgeObjectRetain_n();
    v114 = v109;
  }

  else
  {
    sub_1D62F1B94(v109);
    v114 = v146;
    v110 = *(v146 + 16);

    if (!v110)
    {
      goto LABEL_94;
    }
  }

  v353 = v109;
  v147 = 0;
  v148 = v386 | 0x1000;
  v149 = v114 + 32;
  do
  {
    if (v147 >= *(v114 + 16))
    {
      goto LABEL_275;
    }

    *v390 = v147;
    sub_1D5F2DEAC(v149, &v390[8]);
    if (!*&v390[56])
    {
      break;
    }

    v150 = *v390;
    *v390 = *&v390[8];
    *&v390[16] = *&v390[24];
    *&v390[32] = *&v390[40];
    *&v390[48] = *&v390[56];
    *&v390[64] = *&v390[72];
    *&v390[80] = *&v390[88];
    *&v390[96] = *&v390[104];
    *&v390[112] = *&v390[120];
    *&v390[128] = *&v390[136];
    *&v390[144] = *&v390[152];
    *&v390[160] = *&v390[168];
    *&v390[176] = *&v390[184];
    *&v390[192] = *&v390[200];
    if ((v148 & ~*v390) == 0)
    {

      *&v391 = v114;
      sub_1D5EC1FB8(v150, v389);
      sub_1D5F2DF58(v390);

      v414 = v389[10];
      v415 = v389[11];
      v416 = v389[12];
      v410 = v389[6];
      v411 = v389[7];
      v412 = v389[8];
      v413 = v389[9];
      v406 = v389[2];
      v407 = v389[3];
      v408 = v389[4];
      v409 = v389[5];
      v404 = v389[0];
      v405 = v389[1];
      v101 = 0;
      goto LABEL_131;
    }

    ++v147;
    sub_1D5F2DF58(v390);
    v149 += 208;
  }

  while (v110 != v147);
  v101 = 0;
  v98 = v384;
  v113 = v382;
  v109 = v353;
LABEL_94:
  swift_bridgeObjectRelease_n();
  v111 = v376;
LABEL_95:
  v151 = *&v98[v111[18]];
  v120 = __OFSUB__(v151, v113);
  v152 = v151 - v113;
  if (v120)
  {
    goto LABEL_281;
  }

  if (v152 < 1)
  {
    v159 = *v98;
    v350 = v101;
    if (v159)
    {
      v160 = v109;
    }

    else
    {
      sub_1D62F1B94(v109);
      v160 = v163;
    }

    v164 = *(v160 + 16);

    if (v164)
    {
      v165 = 0;
      v166 = v160 + 32;
      while (1)
      {
        if (v165 >= *(v160 + 16))
        {
          goto LABEL_278;
        }

        *v390 = v165;
        sub_1D5F2DEAC(v166, &v390[8]);
        if (!*&v390[56])
        {
          goto LABEL_120;
        }

        v167 = *v390;
        v168 = *&v390[8];
        *v390 = *&v390[8];
        *&v390[16] = *&v390[24];
        *&v390[32] = *&v390[40];
        *&v390[48] = *&v390[56];
        *&v390[64] = *&v390[72];
        *&v390[80] = *&v390[88];
        *&v390[96] = *&v390[104];
        *&v390[112] = *&v390[120];
        *&v390[128] = *&v390[136];
        *&v390[144] = *&v390[152];
        *&v390[160] = *&v390[168];
        *&v390[176] = *&v390[184];
        *&v390[192] = *&v390[200];
        if ((v386 & ~*v390) == 0 && (v168 & 0x1000) == 0)
        {
          break;
        }

        ++v165;
        sub_1D5F2DF58(v390);
        v166 += 208;
        v98 = v384;
        if (v164 == v165)
        {
          goto LABEL_120;
        }
      }

      *&v391 = v160;
      sub_1D5EC1FB8(v167, v389);
      sub_1D5F2DF58(v390);

      v401 = v389[10];
      v402 = v389[11];
      v391 = v389[0];
      v392 = v389[1];
      v403 = v389[12];
      v397 = v389[6];
      v398 = v389[7];
      v399 = v389[8];
      v400 = v389[9];
      v393 = v389[2];
      v394 = v389[3];
      v395 = v389[4];
      v396 = v389[5];
      v413 = v389[9];
      v414 = v389[10];
      v415 = v389[11];
      v416 = v389[12];
      v409 = v389[5];
      v410 = v389[6];
      v411 = v389[7];
      v412 = v389[8];
      v405 = v389[1];
      v406 = v389[2];
      v407 = v389[3];
      v408 = v389[4];
      v404 = v389[0];
      v101 = v350;
      v162 = v384;
      v171 = v381;
    }

    else
    {
LABEL_120:
      swift_bridgeObjectRelease_n();
      v391 = 0u;
      v392 = 0u;
      v393 = 0u;
      v394 = 0u;
      v395 = 0u;
      v396 = 0u;
      v397 = 0u;
      v398 = 0u;
      v399 = 0u;
      v400 = 0u;
      v401 = 0u;
      v402 = 0u;
      v403 = 0u;
      if ((*v98 & 1) == 0)
      {
        sub_1D62F1B94(v109);
        v173 = v172;

        v109 = v173;
      }

      v174 = *(v109 + 16);

      v101 = v350;
      if (v174)
      {
        v175 = 0;
        v176 = v109 + 32;
        while (1)
        {
          if (v175 >= *(v109 + 16))
          {
            goto LABEL_279;
          }

          *v390 = v175;
          sub_1D5F2DEAC(v176, &v390[8]);
          if (!*&v390[56])
          {
            goto LABEL_128;
          }

          v177 = *v390;
          *v390 = *&v390[8];
          *&v390[16] = *&v390[24];
          *&v390[32] = *&v390[40];
          *&v390[48] = *&v390[56];
          *&v390[64] = *&v390[72];
          *&v390[80] = *&v390[88];
          *&v390[96] = *&v390[104];
          *&v390[112] = *&v390[120];
          *&v390[128] = *&v390[136];
          *&v390[144] = *&v390[152];
          *&v390[160] = *&v390[168];
          *&v390[176] = *&v390[184];
          *&v390[192] = *&v390[200];
          if ((v386 & ~*v390) == 0)
          {
            break;
          }

          ++v175;
          sub_1D5F2DF58(v390);
          v176 += 208;
          if (v174 == v175)
          {
            goto LABEL_128;
          }
        }

        v388 = v109;
        sub_1D5EC1FB8(v177, v389);
        sub_1D5F2DF58(v390);

        v414 = v389[10];
        v415 = v389[11];
        v416 = v389[12];
        v410 = v389[6];
        v411 = v389[7];
        v412 = v389[8];
        v413 = v389[9];
        v406 = v389[2];
        v407 = v389[3];
        v408 = v389[4];
        v409 = v389[5];
        v404 = v389[0];
        v405 = v389[1];
      }

      else
      {
LABEL_128:
        v169 = swift_bridgeObjectRelease_n();
        v404 = 0u;
        v405 = 0u;
        v406 = 0u;
        v407 = 0u;
        v408 = 0u;
        v409 = 0u;
        v410 = 0u;
        v411 = 0u;
        v412 = 0u;
        v413 = 0u;
        v414 = 0u;
        v415 = 0u;
        v416 = 0u;
      }

      v162 = v384;
      v171 = v381;
      v113 = v382;
      if (v394)
      {
        v169 = sub_1D6D09524(&v391, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
      }
    }

    goto LABEL_153;
  }

  if ((*v98 & 1) == 0)
  {
    sub_1D62F1B94(v109);
    v154 = v153;

    v109 = v154;
  }

  v155 = *(v109 + 16);

  if (!v155)
  {
LABEL_105:
    swift_bridgeObjectRelease_n();

    v404 = 0u;
    v405 = 0u;
    v406 = 0u;
    v407 = 0u;
    v408 = 0u;
    v409 = 0u;
    v410 = 0u;
    v411 = 0u;
    v412 = 0u;
    v413 = 0u;
    v414 = 0u;
    v415 = 0u;
    v416 = 0u;
LABEL_160:
    sub_1D6D09524(&v404, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
    goto LABEL_161;
  }

  v156 = 0;
  v157 = v109 + 32;
  while (1)
  {
    if (v156 >= *(v109 + 16))
    {
      goto LABEL_276;
    }

    *v390 = v156;
    sub_1D5F2DEAC(v157, &v390[8]);
    if (!*&v390[56])
    {
      goto LABEL_105;
    }

    v158 = *v390;
    *v390 = *&v390[8];
    *&v390[16] = *&v390[24];
    *&v390[32] = *&v390[40];
    *&v390[48] = *&v390[56];
    *&v390[64] = *&v390[72];
    *&v390[80] = *&v390[88];
    *&v390[96] = *&v390[104];
    *&v390[112] = *&v390[120];
    *&v390[128] = *&v390[136];
    *&v390[144] = *&v390[152];
    *&v390[160] = *&v390[168];
    *&v390[176] = *&v390[184];
    *&v390[192] = *&v390[200];
    if ((v386 & ~*v390) == 0)
    {
      break;
    }

    ++v156;
    sub_1D5F2DF58(v390);
    v157 += 208;
    if (v155 == v156)
    {
      goto LABEL_105;
    }
  }

  *&v391 = v109;
  sub_1D5EC1FB8(v158, v389);
  sub_1D5F2DF58(v390);

  v414 = v389[10];
  v415 = v389[11];
  v416 = v389[12];
  v410 = v389[6];
  v411 = v389[7];
  v412 = v389[8];
  v413 = v389[9];
  v406 = v389[2];
  v407 = v389[3];
  v408 = v389[4];
  v409 = v389[5];
  v404 = v389[0];
  v405 = v389[1];
LABEL_131:
  v162 = v384;
  v171 = v381;
  v113 = v382;
LABEL_153:
  if (!v407)
  {

    goto LABEL_160;
  }

  v427 = v414;
  v428 = v415;
  v429 = v416;
  v423 = v410;
  v424 = v411;
  v425 = v412;
  v426 = v413;
  v419 = v406;
  v420 = v407;
  v421 = v408;
  v422 = v409;
  v417 = v404;
  v418 = v405;
  if ((BYTE1(v404) & 0x10) == 0)
  {
    goto LABEL_157;
  }

  if (__OFADD__(v113, 1))
  {
    goto LABEL_285;
  }

  *&v162[v379] = v113 + 1;
LABEL_157:
  if ((v375 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v169, v170);
    *(&v347 - 2) = &v417;
    v171 = sub_1D5BF5F6C(sub_1D6D09C98, (&v347 - 4), v171);
  }

  v350 = v101;
  *&v389[0] = 0x7A7A755064656546;
  *(&v389[0] + 1) = 0xEA0000000000656CLL;
  *&v389[1] = v445;
  *(&v389[1] + 1) = v387;
  sub_1D5BDACA8(v389, v171);

  swift_setDeallocating();
  swift_deallocClassInstance();

  v443 = v428;
  v444 = v429;
  v438 = v423;
  v439 = v424;
  v441 = v426;
  v442 = v427;
  v440 = v425;
  v434 = v419;
  v435 = v420;
  v436 = v421;
  v437 = v422;
  v432 = v417;
  v433 = v418;
  v182 = *(&v419 + 1);
  v203 = v420;
  v204 = v370;
  v353 = sub_1D6196E44(v370, 42, 0xE100000000000000, *(&v419 + 1), v420);
  v431 = v353;
  v376 = v203;
  v189 = sub_1D6196F00(v204, 42, 0xE100000000000000, v182, v203);
  v430 = v189;
  v190 = v380;
  if (!*(v204 + 16) || (v205 = sub_1D5B69D90(42, 0xE100000000000000), (v206 & 1) == 0) || (v207 = *(*(*(v204 + 56) + 8 * v205) + 136), !*(v207 + 16)))
  {

    goto LABEL_172;
  }

  v208 = sub_1D5B69D90(v182, v376);
  if ((v209 & 1) == 0)
  {

LABEL_171:

    goto LABEL_172;
  }

  v210 = (*(v207 + 56) + 48 * v208);
  v211 = v210[1];
  v387 = *v210;
  v212 = v210[2];
  v213 = v210[3];
  v382 = v210[4];
  v214 = v182;
  v215 = v210[5];
  v445 = v211;

  v386 = v212;

  v385 = v213;

  v381 = v215;
  v182 = v214;

LABEL_168:

LABEL_173:
  *(&v389[1] + 1) = &type metadata for FeedPuzzle;
  v216 = sub_1D63071A0();
  *&v389[2] = v216;
  *&v389[0] = swift_allocObject();
  sub_1D5F2DEAC(&v432, *&v389[0] + 16);
  v217 = v372;
  sub_1D6818590(v389, v372);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v379 = v216;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v219 = v360;
      sub_1D6D0A058(v217, v360, type metadata accessor for FeedWebEmbed);
      v220 = sub_1D6944620();
      sub_1D5D505F0(v220);
      v221 = sub_1D69449D8();
      sub_1D5B886D0(v221);
      v222 = type metadata accessor for FeedWebEmbed;
      v223 = v219;
    }

    else
    {
      v222 = type metadata accessor for FeedItem;
      v223 = v217;
    }

    sub_1D6D0A444(v223, v222);
    goto LABEL_182;
  }

  v383 = v182;
  v224 = v366;
  sub_1D6D0A058(v217, v366, type metadata accessor for FeedCustomItem);
  v225 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v226 = *(v225 + 8);
  v227 = v224 + *(v361 + 20);
  v229 = *(v227 + 16);
  v228 = *(v227 + 24);
  if (!*(v226 + 16))
  {
LABEL_237:

    sub_1D67F58E4(v387, v445);

    memset(v389, 0, 81);
LABEL_238:
    type metadata accessor for FormatLayoutError(0);
    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v306 = v229;
    v306[1] = v228;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D6D09524(v389, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
    sub_1D5F2DF58(&v432);
    sub_1D6D0A444(v366, type metadata accessor for FeedCustomItem);
    return;
  }

  v230 = sub_1D5B69D90(v229, v228);
  if ((v231 & 1) == 0)
  {

    goto LABEL_237;
  }

  v232 = v355;
  sub_1D6D09934(*(v226 + 56) + *(v354 + 72) * v230, v355, sub_1D6AC4E74);
  v233 = *(v232 + 48);
  v419 = *(v232 + 32);
  v420 = v233;
  v421 = *(v232 + 64);
  LOBYTE(v422) = *(v232 + 80);
  v234 = *(v232 + 16);
  v417 = *v232;
  v418 = v234;
  sub_1D62B7D1C(&v417, &v404);
  sub_1D6D0A444(v232, sub_1D6AC4E74);

  *&v390[32] = v419;
  *&v390[48] = v420;
  *&v390[64] = v421;
  v390[80] = v422;
  *v390 = v417;
  *&v390[16] = v418;
  if (v422 >> 6 <= 1u)
  {
    sub_1D67F58E4(v387, v445);

    v389[2] = *&v390[32];
    v389[3] = *&v390[48];
    v389[4] = *&v390[64];
    LOBYTE(v389[5]) = v390[80];
    v389[0] = *v390;
    v389[1] = *&v390[16];
    goto LABEL_238;
  }

  LODWORD(v355) = v422;
  v348 = *(&v419 + 1);
  v307 = v419;
  v351 = *(&v420 + 1);
  v349 = v420;
  v354 = *(&v421 + 1);
  v352 = v421;
  *&v404 = v419;
  sub_1D6D098B8(0);
  sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
  sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);

  v308 = sub_1D72623BC();
  v309 = *(v227 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
  v372 = *(v309 + 16);
  if (!v372)
  {
LABEL_256:

    *&v404 = v309;
    sub_1D5B5AD98(0);
    sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
    sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    v326 = sub_1D72623AC();
    v327 = v363;
    v328 = v307;
    if (*(v307 + 16))
    {
      v329 = *(v307 + 16);
      v330 = 0;
      v372 = v328 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
      v373 = v328;
      v331 = (v374 + 56);
      while (1)
      {
        if (v330 >= v373[2])
        {
          goto LABEL_283;
        }

        sub_1D6D09934(v372 + *(v364 + 72) * v330, v327, type metadata accessor for FormatPropertyDefinition);
        v336 = FormatPropertyDefinition.identifier.getter();
        if (*(v326 + 16))
        {
          v338 = sub_1D5B69D90(v336, v337);
          v340 = v339;

          if (v340)
          {
            v332 = v374;
            v333 = v362;
            sub_1D6D09934(*(v326 + 56) + *(v374 + 72) * v338, v362, type metadata accessor for FormatOption);
            v327 = v363;
            sub_1D6D0A444(v363, type metadata accessor for FormatPropertyDefinition);
            (*(v332 + 56))(v333, 0, 1, v378);
            v334 = sub_1D5E04C00;
            v335 = v333;
            goto LABEL_259;
          }
        }

        else
        {
        }

        v341 = v362;
        (*v331)(v362, 1, 1, v378);
        sub_1D6D0A444(v341, sub_1D5E04C00);
        v327 = v363;
        if (sub_1D695C4AC())
        {

          sub_1D67F58E4(v387, v445);

          sub_1D60CF6F4(v373, v348, v349, v351, v352, v354, v355);

          type metadata accessor for FormatLayoutError(0);
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v343 = v342;
          sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
          v345 = *(v344 + 48);
          v346 = v366;
          sub_1D6D09934(v366, v343, type metadata accessor for FeedCustomItem);
          sub_1D6D09934(v327, v343 + v345, type metadata accessor for FormatPropertyDefinition);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D62B7D78(&v417);
          sub_1D6D0A444(v327, type metadata accessor for FormatPropertyDefinition);
          sub_1D5F2DF58(&v432);
          sub_1D6D0A444(v346, type metadata accessor for FeedCustomItem);
          return;
        }

        v334 = type metadata accessor for FormatPropertyDefinition;
        v335 = v327;
LABEL_259:
        sub_1D6D0A444(v335, v334);
        v182 = v383;
        if (v329 == ++v330)
        {
          sub_1D60CF6F4(v373, v348, v349, v351, v352, v354, v355);

          v162 = v384;
          goto LABEL_269;
        }
      }
    }

    sub_1D60CF6F4(v307, v348, v349, v351, v352, v354, v355);

    v182 = v383;
LABEL_269:
    sub_1D62B7D78(&v417);
    sub_1D6D0A444(v366, type metadata accessor for FeedCustomItem);
    v190 = v380;
LABEL_182:
    v235 = v430;
    v236 = v162[88];
    v383 = v430;
    v384 = v431;
    if (v375)
    {
      swift_beginAccess();
      if ((v236 & 1) != 0 || !*(v190[4] + 16) || (, sub_1D5B69D90(v368, v369), v238 = v237, , (v238 & 1) == 0))
      {
        v239 = v432;
        v240 = *(v190[10] + 16);
        if (v240)
        {
          sub_1D5B69D90(v182, v376);
          v240 = 0x4000000000;
          if ((v241 & 1) == 0)
          {
            v240 = 0;
          }
        }

        *&v389[0] = v240 | v239;
        v242 = v384;

        v243 = sub_1D713CCF4();
        v244 = sub_1D5BA8750(v243, v242);

        v245 = sub_1D6C694F4();
        v246 = sub_1D5BA8750(v245, v244);

        *(&v418 + 1) = &type metadata for FeedPuzzle;
        *&v419 = v379;
        *&v417 = swift_allocObject();
        sub_1D5F2DEAC(&v432, v417 + 16);
        sub_1D5B68374(&v417, v390);

        v247 = v246;
        if (v445)
        {
          v247 = sub_1D5BA8750(&unk_1F50F6970, v246);
          sub_1D5BFB68C(&unk_1F50F6990);
        }

        v379 = v246;
        *&v390[40] = v247;
        v248 = v235[2];
        if (v248)
        {
          *&v389[0] = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v248, 0);
          v249 = *&v389[0];
          v250 = v235 + ((*(v374 + 80) + 32) & ~*(v374 + 80));
          v251 = *(v374 + 72);
          v252 = v248;
          do
          {
            v253 = v377;
            sub_1D6D09934(v250, v377, type metadata accessor for FormatOption);
            v254 = swift_allocBox();
            sub_1D6D0A058(v253, v255, type metadata accessor for FormatOption);
            *&v389[0] = v249;
            v257 = *(v249 + 16);
            v256 = *(v249 + 24);
            if (v257 >= v256 >> 1)
            {
              sub_1D5D24610((v256 > 1), v257 + 1, 1);
              v249 = *&v389[0];
            }

            *(v249 + 16) = v257 + 1;
            *(v249 + 8 * v257 + 32) = v254 | 0x1000000000000004;
            v250 += v251;
            --v252;
          }

          while (v252);
          __swift_destroy_boxed_opaque_existential_1(&v417);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v417);
          v249 = MEMORY[0x1E69E7CC0];
        }

        *&v390[48] = v249;
        v281 = v387;
        *&v390[56] = v387;
        v282 = v445;
        *&v390[64] = v445;
        *&v390[72] = v386;
        *&v390[80] = v385;
        *&v390[88] = v382;
        *&v389[6] = v381;
        v389[0] = *v390;
        v389[1] = *&v390[16];
        v389[2] = *&v390[32];
        v389[3] = *&v390[48];
        v389[4] = *&v390[64];
        v389[5] = *&v390[80];
        v283 = v369;

        sub_1D67F5880(v281, v282);
        sub_1D6D60C48(v389, v368, v283);
        sub_1D5F2DEAC(&v432, v390);
        sub_1D5F2DEAC(v390, v389);
        if (v282)
        {
          v284 = sub_1D5BA8750(&unk_1F50F69A0, v379);
          sub_1D5BFB68C(&unk_1F50F69C0);
          v285 = v383;
        }

        else
        {
          v285 = v383;
          v284 = v379;
        }

        *&v389[13] = v284;
        if (v248)
        {
          *&v417 = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v248, 0);
          v291 = v417;
          v292 = v285 + ((*(v374 + 80) + 32) & ~*(v374 + 80));
          v293 = *(v374 + 72);
          do
          {
            v294 = v377;
            sub_1D6D09934(v292, v377, type metadata accessor for FormatOption);
            v295 = swift_allocBox();
            sub_1D6D0A058(v294, v296, type metadata accessor for FormatOption);
            *&v417 = v291;
            v298 = *(v291 + 16);
            v297 = *(v291 + 24);
            if (v298 >= v297 >> 1)
            {
              sub_1D5D24610((v297 > 1), v298 + 1, 1);
              v291 = v417;
            }

            *(v291 + 16) = v298 + 1;
            *(v291 + 8 * v298 + 32) = v295 | 0x1000000000000004;
            v292 += v293;
            --v248;
          }

          while (v248);
LABEL_232:
          sub_1D5F2DF58(v390);
LABEL_234:
          *(&v389[13] + 1) = v291;
          *&v389[14] = v387;
          *(&v389[14] + 1) = v445;
          *&v389[15] = v386;
          *(&v389[15] + 1) = v385;
          *&v389[16] = v382;
          *(&v389[16] + 1) = v381;
          memcpy(v365, v389, 0x110uLL);
          swift_endAccess();

          goto LABEL_235;
        }

        goto LABEL_233;
      }
    }

    else
    {
      swift_beginAccess();
      if ((v236 & 1) != 0 || !*(v190[3] + 16) || (, sub_1D5B69D90(v368, v369), v259 = v258, , (v259 & 1) == 0))
      {
        v262 = v432;
        v263 = *(v190[10] + 16);
        if (v263)
        {
          sub_1D5B69D90(v182, v376);
          v263 = 0x4000000000;
          if ((v264 & 1) == 0)
          {
            v263 = 0;
          }
        }

        *&v389[0] = v263 | v262;
        v265 = v384;

        v266 = sub_1D713CCF4();
        v267 = sub_1D5BA8750(v266, v265);

        v268 = sub_1D6C694F4();
        v269 = sub_1D5BA8750(v268, v267);

        *(&v418 + 1) = &type metadata for FeedPuzzle;
        *&v419 = v379;
        *&v417 = swift_allocObject();
        sub_1D5F2DEAC(&v432, v417 + 16);
        sub_1D5B68374(&v417, v390);

        v270 = v269;
        if (v445)
        {
          v270 = sub_1D5BA8750(&unk_1F50F69D0, v269);
          sub_1D5BFB68C(&unk_1F50F69F0);
        }

        v379 = v269;
        *&v390[40] = v270;
        v271 = v235[2];
        if (v271)
        {
          *&v389[0] = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v271, 0);
          v272 = *&v389[0];
          v273 = v235 + ((*(v374 + 80) + 32) & ~*(v374 + 80));
          v274 = *(v374 + 72);
          v275 = v271;
          do
          {
            v276 = v377;
            sub_1D6D09934(v273, v377, type metadata accessor for FormatOption);
            v277 = swift_allocBox();
            sub_1D6D0A058(v276, v278, type metadata accessor for FormatOption);
            *&v389[0] = v272;
            v280 = *(v272 + 16);
            v279 = *(v272 + 24);
            if (v280 >= v279 >> 1)
            {
              sub_1D5D24610((v279 > 1), v280 + 1, 1);
              v272 = *&v389[0];
            }

            *(v272 + 16) = v280 + 1;
            *(v272 + 8 * v280 + 32) = v277 | 0x1000000000000004;
            v273 += v274;
            --v275;
          }

          while (v275);
          __swift_destroy_boxed_opaque_existential_1(&v417);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v417);
          v272 = MEMORY[0x1E69E7CC0];
        }

        *&v390[48] = v272;
        v286 = v387;
        *&v390[56] = v387;
        v287 = v445;
        *&v390[64] = v445;
        *&v390[72] = v386;
        *&v390[80] = v385;
        *&v390[88] = v382;
        *&v389[6] = v381;
        v389[0] = *v390;
        v389[1] = *&v390[16];
        v389[2] = *&v390[32];
        v389[3] = *&v390[48];
        v389[4] = *&v390[64];
        v389[5] = *&v390[80];
        v288 = v369;

        sub_1D67F5880(v286, v287);
        sub_1D6D60C48(v389, v368, v288);
        sub_1D5F2DEAC(&v432, v390);
        sub_1D5F2DEAC(v390, v389);
        if (v287)
        {
          v289 = sub_1D5BA8750(&unk_1F50F6A00, v379);
          sub_1D5BFB68C(&unk_1F50F6A20);
          v290 = v383;
        }

        else
        {
          v290 = v383;
          v289 = v379;
        }

        *&v389[13] = v289;
        if (v271)
        {
          *&v417 = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v271, 0);
          v291 = v417;
          v299 = v290 + ((*(v374 + 80) + 32) & ~*(v374 + 80));
          v300 = *(v374 + 72);
          do
          {
            v301 = v377;
            sub_1D6D09934(v299, v377, type metadata accessor for FormatOption);
            v302 = swift_allocBox();
            sub_1D6D0A058(v301, v303, type metadata accessor for FormatOption);
            *&v417 = v291;
            v305 = *(v291 + 16);
            v304 = *(v291 + 24);
            if (v305 >= v304 >> 1)
            {
              sub_1D5D24610((v304 > 1), v305 + 1, 1);
              v291 = v417;
            }

            *(v291 + 16) = v305 + 1;
            *(v291 + 8 * v305 + 32) = v302 | 0x1000000000000004;
            v299 += v300;
            --v271;
          }

          while (v271);
          goto LABEL_232;
        }

LABEL_233:
        sub_1D5F2DF58(v390);
        v291 = MEMORY[0x1E69E7CC0];
        goto LABEL_234;
      }
    }

    sub_1D6752B3C();
    swift_allocError();
    v260 = v369;
    *v261 = v368;
    *(v261 + 8) = v260;
    *(v261 + 56) = 0;
    swift_willThrow();
    swift_endAccess();

    sub_1D67F58E4(v387, v445);

LABEL_235:

    sub_1D5F2DF58(&v432);
    return;
  }

  v310 = 0;
  v361 = (*(v374 + 80) + 32) & ~*(v374 + 80);
  v370 = v309 + v361;
  v371 = v308;
  while (v310 < *(v309 + 16))
  {
    v312 = v373;
    v313 = *(v374 + 72);
    sub_1D6D09934(v370 + v313 * v310, v373, type metadata accessor for FormatOption);
    if (*(v308 + 16) && (v314 = sub_1D5B69D90(*v312, v312[1]), (v315 & 1) != 0))
    {
      v360 = v189;
      v316 = v307;
      v317 = *(v308 + 56) + *(v364 + 72) * v314;
      v318 = v357;
      sub_1D6D09934(v317, v357, type metadata accessor for FormatPropertyDefinition);
      v319 = v359;
      sub_1D6D0A058(v318, v359, type metadata accessor for FormatPropertyDefinition);
      type metadata accessor for FormatOptionConverter();
      v320 = v356;
      v321 = v350;
      sub_1D6AC31AC(v312, v319, v356);
      v350 = v321;
      if (v321)
      {

        sub_1D67F58E4(v387, v445);
        sub_1D60CF6F4(v316, v348, v349, v351, v352, v354, v355);
        sub_1D62B7D78(&v417);
        sub_1D6D0A444(v359, type metadata accessor for FormatPropertyDefinition);

        sub_1D5F2DF58(&v432);
        sub_1D6D0A444(v312, type metadata accessor for FormatOption);
        sub_1D6D0A444(v366, type metadata accessor for FeedCustomItem);

        return;
      }

      sub_1D6D09934(v320, v358, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v360 = sub_1D5CEABA0(0, v360[2] + 1, 1, v360);
      }

      v307 = v316;
      v189 = v360;
      v323 = v360[2];
      v322 = v360[3];
      v324 = v323 + 1;
      if (v323 >= v322 >> 1)
      {
        v189 = sub_1D5CEABA0((v322 > 1), v323 + 1, 1, v360);
      }

      sub_1D6D0A444(v320, type metadata accessor for FormatOption);
      sub_1D6D0A444(v359, type metadata accessor for FormatPropertyDefinition);
      v311 = v358;
    }

    else
    {
      sub_1D6D09934(v312, v367, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v189 = sub_1D5CEABA0(0, v189[2] + 1, 1, v189);
      }

      v323 = v189[2];
      v325 = v189[3];
      v324 = v323 + 1;
      if (v323 >= v325 >> 1)
      {
        v189 = sub_1D5CEABA0((v325 > 1), v323 + 1, 1, v189);
      }

      v311 = v367;
    }

    ++v310;
    sub_1D6D0A444(v373, type metadata accessor for FormatOption);
    v189[2] = v324;
    sub_1D6D0A058(v311, v189 + v361 + v323 * v313, type metadata accessor for FormatOption);
    v430 = v189;
    v308 = v371;
    v162 = v384;
    if (v372 == v310)
    {
      goto LABEL_256;
    }
  }

LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
}

void sub_1D6CF0260(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (**a10)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 a11, uint64_t a12)
{
  v748 = a8;
  v708 = a6;
  v709 = a7;
  v751 = a5;
  v750 = a4;
  v774 = a3;
  v710 = a2;
  v749 = a1;
  v698 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v686 = &v655 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatPropertyDefinition(0);
  v697 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v672 = &v655 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v681 = &v655 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v694 = &v655 - v24;
  v739 = type metadata accessor for FormatOption(0);
  v715 = *(v739 - 8);
  MEMORY[0x1EEE9AC00](v739, v25);
  v679 = &v655 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v680 = &v655 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v705 = &v655 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v673 = (&v655 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v738 = &v655 - v38;
  sub_1D6D09428(0);
  v714 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v696 = &v655 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v695 = &v655 - v44;
  sub_1D6AC4E74(0);
  v667 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v668 = &v655 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v685 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v685, v48);
  v702 = &v655 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v711 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v711, v50);
  v52 = &v655 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v743 = v53;
  v720 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v54);
  v740 = (&v655 - v55);
  sub_1D5C144C0(0, &qword_1EDF04728, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v655 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v655 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v701 = &v655 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v725 = (&v655 - v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  v690 = &v655 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = (&v655 - v75);
  MEMORY[0x1EEE9AC00](v77, v78);
  v723 = &v655 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v732 + 1) = &v655 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v655 - v85;
  MEMORY[0x1EEE9AC00](v87, v88);
  v727 = (&v655 - v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  *&v732 = &v655 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v731 + 1) = &v655 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  *&v731 = &v655 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v736 = &v655 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v730 = &v655 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v737 = &v655 - v107;
  sub_1D6D0A350(0, &qword_1EDF12BA0, type metadata accessor for FeedWebEmbed, sub_1D6D09BB0, "best remaining ");
  MEMORY[0x1EEE9AC00](v108 - 8, v109);
  v666 = &v655 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v112);
  v669 = &v655 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v674 = &v655 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v677 = &v655 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v670 = &v655 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v678 = &v655 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v688 = &v655 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v693 = &v655 - v131;
  sub_1D5F2DDF0(0);
  MEMORY[0x1EEE9AC00](v132 - 8, v133);
  v135 = &v655 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136, v137);
  v707 = &v655 - v138;
  MEMORY[0x1EEE9AC00](v139, v140);
  v706 = &v655 - v141;
  MEMORY[0x1EEE9AC00](v142, v143);
  v717 = &v655 - v144;
  v726 = type metadata accessor for FeedWebEmbed(0);
  v742 = *(v726 - 8);
  MEMORY[0x1EEE9AC00](v726, v145);
  v713 = &v655 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v147, v148);
  v729 = (&v655 - v149);
  MEMORY[0x1EEE9AC00](v150, v151);
  v724 = &v655 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v728 = (&v655 - v155);
  MEMORY[0x1EEE9AC00](v156, v157);
  v676 = &v655 - v158;
  MEMORY[0x1EEE9AC00](v159, v160);
  v675 = &v655 - v161;
  MEMORY[0x1EEE9AC00](v162, v163);
  v683 = &v655 - v164;
  MEMORY[0x1EEE9AC00](v165, v166);
  v682 = &v655 - v167;
  MEMORY[0x1EEE9AC00](v168, v169);
  v700 = &v655 - v170;
  MEMORY[0x1EEE9AC00](v171, v172);
  v699 = &v655 - v173;
  MEMORY[0x1EEE9AC00](v174, v175);
  v684 = &v655 - v176;
  MEMORY[0x1EEE9AC00](v177, v178);
  v722 = (&v655 - v179);
  MEMORY[0x1EEE9AC00](v180, v181);
  v735 = &v655 - v182;
  MEMORY[0x1EEE9AC00](v183, v184);
  v734 = (&v655 - v185);
  MEMORY[0x1EEE9AC00](v186, v187);
  v189 = (&v655 - v188);
  MEMORY[0x1EEE9AC00](v190, v191);
  v692 = &v655 - v192;
  MEMORY[0x1EEE9AC00](v193, v194);
  v691 = &v655 - v195;
  MEMORY[0x1EEE9AC00](v196, v197);
  v704 = &v655 - v198;
  MEMORY[0x1EEE9AC00](v199, v200);
  v703 = &v655 - v201;
  MEMORY[0x1EEE9AC00](v202, v203);
  v718 = v59;
  v719 = &v655 - v204;
  v746 = v12;
  v205 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v206 = *(v205 + 16);
  v712 = v52;
  v671 = v63;
  v687 = v135;
  v689 = v76;
  v744 = v205;
  v207 = 0;
  if (v206)
  {
    v208 = (v205 + 32);
    do
    {
      v209 = *v208++;
      v210 = qword_1D7349118[v209];
      if ((v210 & ~v207) == 0)
      {
        v210 = 0;
      }

      v207 |= v210;
      --v206;
    }

    while (v206);
  }

  v211 = swift_allocObject();
  *(v211 + 16) = v207;
  sub_1D6D09390(0, &qword_1EDF155A0, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedItemSorter);
  v741 = v212;
  v213 = swift_allocObject();
  v214 = MEMORY[0x1E69E7CC0];
  v745 = v213;
  *(v213 + 16) = MEMORY[0x1E69E7CC0];
  v215 = (v213 + 16);
  v216 = swift_allocObject();
  *(v216 + 16) = sub_1D6D09BE4;
  *(v216 + 24) = v211;
  swift_beginAccess();

  v217 = sub_1D6990E20(0, 1, 1, v214);
  v219 = v217[2];
  v218 = v217[3];
  if (v219 >= v218 >> 1)
  {
    v217 = sub_1D6990E20((v218 > 1), v219 + 1, 1, v217);
  }

  v716 = a11;
  v747 = a10;
  v217[2] = v219 + 1;
  v220 = &v217[2 * v219];
  v220[4] = sub_1D6D09BEC;
  v220[5] = v216;
  *v215 = v217;
  swift_endAccess();

  v721 = type metadata accessor for GroupLayoutBindingContext(0);
  v221 = *&v749[v721[14]];
  v222 = *(v221 + 16);
  v223 = v750;

  if (!v222)
  {
    goto LABEL_20;
  }

  v224 = sub_1D5BCF83C(0x4562655764656546, 0xEC0000006465626DLL, v774, v223);
  if ((v225 & 1) == 0 || !*(*(*(v221 + 56) + 8 * v224) + 16))
  {
    goto LABEL_20;
  }

  v665 = v86;

  v227 = i;
  v228 = sub_1D5BF08EC(v226, v748, v747);
  if (v227)
  {

    v229 = v227;
LABEL_21:
    v240 = v746;
    goto LABEL_22;
  }

  v660 = v226;
  v658 = 0;
  v230 = sub_1D714F774(v228);

  if (!v230)
  {
LABEL_19:

LABEL_20:
    sub_1D5ED8048();
    v229 = swift_allocError();
    strcpy(v238, "FeedWebEmbed");
    v238[13] = 0;
    *(v238 + 7) = -5120;
    *(v238 + 2) = v774;
    *(v238 + 3) = v223;
    *(v238 + 4) = v751;
    *(v238 + 5) = 1;
    v239 = v747;
    *(v238 + 6) = v748;
    *(v238 + 7) = v239;
    v238[64] = 0;
    swift_willThrow();

    goto LABEL_21;
  }

  v231 = *(v230 + 16);
  if (!v231)
  {

    goto LABEL_19;
  }

  v232 = v721;
  v233 = v749;
  v234 = *&v749[v721[17]];
  v656 = v721[19];
  v657 = *&v749[v656];
  v235 = v657;
  if (v657 >= v234)
  {
LABEL_57:
    v285 = *&v233[v232[18]];
    v286 = v285 - v235;
    v287 = v736;
    if (__OFSUB__(v285, v235))
    {
      goto LABEL_311;
    }

    v288 = *v233;
    v289 = v731;
    if (v286 < 1)
    {
      v655 = v221;
      v661 = v230;
      if (v288)
      {

        v734 = v230;
      }

      else
      {
        sub_1D62F1E7C(v230);
        v734 = v319;
      }

      v320 = v734[2];
      v737 = v720 + 56;
      v736 = (v720 + 48);

      v321 = 0;
      for (i = v320; ; v320 = i)
      {
        if (v321 == v320)
        {
          v322 = 1;
          v321 = v320;
          v323 = v743;
          v324 = v732;
        }

        else
        {
          if ((v321 & 0x8000000000000000) != 0)
          {
            goto LABEL_301;
          }

          if (v321 >= v734[2])
          {
            goto LABEL_302;
          }

          v325 = v734 + ((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v321;
          v323 = v743;
          v326 = *(v743 + 48);
          v327 = v740;
          *v740 = v321;
          sub_1D6D09934(v325, v327 + v326, type metadata accessor for FeedWebEmbed);
          v328 = v327;
          v324 = v732;
          sub_1D6D0A3D8(v328, v732, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
          v322 = 0;
          ++v321;
        }

        v329 = *v737;
        (*v737)(v324, v322, 1, v323);
        v330 = *(&v731 + 1);
        sub_1D6D09B18(v324, *(&v731 + 1), &qword_1EDF04728, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v331 = *v736;
        if ((*v736)(v330, 1, v323) == 1)
        {
          break;
        }

        v332 = *v330;
        v333 = v330 + *(v323 + 48);
        v334 = v735;
        sub_1D6D0A058(v333, v735, type metadata accessor for FeedWebEmbed);
        if ((v751 & ~*v334) == 0 && (*v334 & 0x1000) == 0)
        {
          v335 = v734;

          *&v765 = v335;
          v336 = v678;
          sub_1D5EC207C(v332, v678);
          sub_1D6D0A444(v735, type metadata accessor for FeedWebEmbed);

          v337 = v706;
          sub_1D6D0A058(v336, v706, type metadata accessor for FeedWebEmbed);
          v316 = v742;
          v338 = *(v742 + 56);
          v315 = v726;
          v338(v337, 0, 1, v726);
          v339 = v337;
          v306 = v717;
          sub_1D6D0A058(v339, v717, type metadata accessor for FeedWebEmbed);
          v338(v306, 0, 1, v315);
          v240 = v746;
          v221 = v655;
          goto LABEL_172;
        }

        sub_1D6D0A444(v735, type metadata accessor for FeedWebEmbed);
      }

      swift_bridgeObjectRelease_n();
      v340 = *(v742 + 56);
      i = (v742 + 56);
      *&v732 = v340;
      v340(v706, 1, 1, v726);
      v341 = v661;
      if ((*v749 & 1) == 0)
      {
        sub_1D62F1E7C(v661);
        v343 = v342;

        v341 = v343;
      }

      v344 = *(v341 + 16);
      v661 = v341;

      v345 = 0;
      v346 = &qword_1EDF04730;
      v347 = v727;
      v735 = v344;
      if (v344)
      {
        goto LABEL_93;
      }

LABEL_96:
      v358 = 1;
      v345 = v344;
      v353 = v743;
      v357 = v665;
      while (1)
      {
        (v329)(v357, v358, 1, v353);
        sub_1D6D09B18(v357, v347, &qword_1EDF04728, v346, type metadata accessor for FeedWebEmbed);
        if (v331(v347, 1, v353) == 1)
        {
          swift_bridgeObjectRelease_n();
          v359 = 1;
          v306 = v717;
          goto LABEL_170;
        }

        v348 = v347;
        v349 = *v347;
        v350 = v722;
        sub_1D6D0A058(v348 + *(v353 + 48), v722, type metadata accessor for FeedWebEmbed);
        if ((v751 & ~*v350) == 0)
        {
          break;
        }

        sub_1D6D0A444(v350, type metadata accessor for FeedWebEmbed);
        v347 = v727;
        v344 = v735;
        if (v345 == v735)
        {
          goto LABEL_96;
        }

LABEL_93:
        if ((v345 & 0x8000000000000000) != 0)
        {
          goto LABEL_307;
        }

        if (v345 >= *(v661 + 16))
        {
          goto LABEL_308;
        }

        v351 = v346;
        v734 = (v345 + 1);
        v352 = v661 + ((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v345;
        v353 = v743;
        v354 = *(v743 + 48);
        v355 = v740;
        *v740 = v345;
        sub_1D6D09934(v352, v355 + v354, type metadata accessor for FeedWebEmbed);
        v356 = v355;
        v357 = v665;
        v346 = v351;
        sub_1D6D0A3D8(v356, v665, v351, type metadata accessor for FeedWebEmbed);
        v358 = 0;
        v345 = v734;
        v347 = v727;
      }

      v473 = v661;

      *&v765 = v473;
      v474 = v670;
      sub_1D5EC207C(v349, v670);
      sub_1D6D0A444(v350, type metadata accessor for FeedWebEmbed);

      v306 = v717;
      sub_1D6D0A058(v474, v717, type metadata accessor for FeedWebEmbed);
      v359 = 0;
LABEL_170:
      v315 = v726;
      (v732)(v306, v359, 1, v726);
      v316 = v742;
      v475 = v706;
      v476 = (*(v742 + 48))(v706, 1, v315);
      v240 = v746;
      v221 = v655;
      if (v476 != 1)
      {
        sub_1D6D0A444(v475, sub_1D5F2DDF0);
      }

LABEL_172:
      if ((*(v316 + 48))(v306, 1, v315) != 1)
      {
        v479 = v704;
        v480 = sub_1D6D0A058(v306, v704, type metadata accessor for FeedWebEmbed);
        if ((*(v479 + 1) & 0x10) != 0)
        {
          if (__OFADD__(v657, 1))
          {
            goto LABEL_317;
          }

          *&v749[v656] = v657 + 1;
        }

        v482 = v660;
        if ((v716 & 1) == 0)
        {
          MEMORY[0x1EEE9AC00](v480, v481);
          *(&v655 - 2) = v479;
          v483 = v658;
          v482 = sub_1D5BF5F6C(sub_1D6D0A584, (&v655 - 4), v482);
          v658 = v483;
        }

        strcpy(&v765, "FeedWebEmbed");
        BYTE13(v765) = 0;
        HIWORD(v765) = -5120;
        *&v766 = v774;
        *(&v766 + 1) = v750;
        sub_1D5BDACA8(&v765, v482);

        swift_setDeallocating();
        swift_deallocClassInstance();

        v484 = v479;
        v485 = v703;
        sub_1D6D0A058(v484, v703, type metadata accessor for FeedWebEmbed);
        v486 = v485;
        v487 = v719;
        sub_1D6D0A058(v486, v719, type metadata accessor for FeedWebEmbed);
        v489 = *(v487 + 40);
        v488 = *(v487 + 48);
        v452 = v487;
        v490 = v710;
        v491 = v748;
        v447 = v747;
        v745 = sub_1D6196E44(v710, v748, v747, v489, v488);
        v773 = v745;
        v744 = v489;
        v492 = sub_1D6196F00(v490, v491, v447, v489, v488);
        v439 = v492;
        v772 = v492;
        v742 = v488;
        if (v447)
        {
          v743 = v492;
          v493 = v712;
          if (*(v490 + 16) && (v494 = sub_1D5B69D90(v491, v447), (v495 & 1) != 0))
          {
            v496 = *(*(*(v490 + 56) + 8 * v494) + 136);
            v497 = v493;
            if (*(v496 + 16))
            {

              v498 = sub_1D5B69D90(v744, v488);
              if (v499)
              {
                v500 = *(v496 + 56) + 48 * v498;
                v448 = *v500;
                v447 = *(v500 + 8);
                v501 = *(v500 + 16);
                v502 = *(v500 + 24);
                v503 = *(v500 + 40);
                v750 = *(v500 + 32);

                v774 = v501;

                v751 = v502;
                v497 = v493;

                v748 = v503;

                v439 = v743;
                goto LABEL_189;
              }
            }

            v448 = 0;
            v447 = 0;
            v774 = 0;
            v751 = 0;
            v750 = 0;
            v748 = 0;
            v439 = v743;
          }

          else
          {
            v448 = 0;
            v447 = 0;
            v774 = 0;
            v751 = 0;
            v750 = 0;
            v748 = 0;
            v497 = v493;
            v439 = v743;
          }

LABEL_189:
          *(&v766 + 1) = v726;
          v504 = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
          *&v767 = v504;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v765);
          sub_1D6D09934(v452, boxed_opaque_existential_1, type metadata accessor for FeedWebEmbed);
          sub_1D6818590(&v765, v497);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v747 = v448;
          v743 = v504;
          if (EnumCaseMultiPayload != 8)
          {
            if (EnumCaseMultiPayload == 4)
            {
              v507 = v497;
              v497 = v684;
              sub_1D6D0A058(v507, v684, type metadata accessor for FeedWebEmbed);
              v508 = sub_1D6944620();
              sub_1D5D505F0(v508);
              v509 = sub_1D69449D8();
              sub_1D5B886D0(v509);
              v510 = type metadata accessor for FeedWebEmbed;
            }

            else
            {
              v510 = type metadata accessor for FeedItem;
            }

            sub_1D6D0A444(v497, v510);
            goto LABEL_198;
          }

          v511 = v497;
          v512 = v702;
          sub_1D6D0A058(v511, v702, type metadata accessor for FeedCustomItem);
          v513 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
          swift_beginAccess();
          v514 = *(v513 + 8);
          v515 = v512 + *(v685 + 20);
          v516 = *(v515 + 16);
          v517 = *(v515 + 24);
          if (*(v514 + 16))
          {

            v518 = sub_1D5B69D90(v516, v517);
            if (v519)
            {
              v740 = v516;
              v520 = v668;
              sub_1D6D09934(*(v514 + 56) + *(v667 + 72) * v518, v668, sub_1D6AC4E74);
              v521 = *(v520 + 32);
              v522 = *(v520 + 64);
              v756 = *(v520 + 48);
              v757 = v522;
              v758 = *(v520 + 80);
              v523 = *(v520 + 16);
              v753 = *v520;
              v754 = v523;
              v755 = v521;
              sub_1D62B7D1C(&v753, &v752);
              sub_1D6D0A444(v520, sub_1D6AC4E74);

              v761 = v755;
              v762 = v756;
              v763 = v757;
              LOBYTE(v764) = v758;
              v759 = v753;
              v760 = v754;
              if (v758 >> 6 <= 1u)
              {
                sub_1D67F58E4(v747, v447);

                v767 = v761;
                v768 = v762;
                v769 = v763;
                LOBYTE(v770) = v764;
                v765 = v759;
                v766 = v760;
                v524 = v719;
                v516 = v740;
LABEL_256:
                type metadata accessor for FormatLayoutError(0);
                sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                swift_allocError();
                *v611 = v516;
                v611[1] = v517;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                sub_1D6D09524(&v765, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
                sub_1D6D0A444(v524, type metadata accessor for FeedWebEmbed);
                v554 = type metadata accessor for FeedCustomItem;
                v555 = v702;
                goto LABEL_257;
              }

              LODWORD(i) = v758;
              v730 = *(&v755 + 1);
              v616 = v755;
              v731 = v756;
              v732 = v757;
              v752 = v755;
              sub_1D6D098B8(0);
              sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
              sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
              v734 = v616;

              v617 = sub_1D72623BC();
              v618 = *(v515 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
              v740 = *(v618 + 2);
              if (v740)
              {
                v741 = v447;
                v619 = 0;
                v735 = (*(v715 + 80) + 32) & ~*(v715 + 80);
                v737 = &v618[v735];
                v620 = v673;
                v736 = v618;
                do
                {
                  if (v619 >= *(v618 + 2))
                  {
                    goto LABEL_315;
                  }

                  v622 = *(v715 + 72);
                  sub_1D6D09934(v737 + v622 * v619, v620, type metadata accessor for FormatOption);
                  if (*(v617 + 16) && (v623 = sub_1D5B69D90(*v620, v620[1]), (v624 & 1) != 0))
                  {
                    v625 = v672;
                    sub_1D6D09934(*(v617 + 56) + *(v697 + 72) * v623, v672, type metadata accessor for FormatPropertyDefinition);
                    v626 = v681;
                    sub_1D6D0A058(v625, v681, type metadata accessor for FormatPropertyDefinition);
                    type metadata accessor for FormatOptionConverter();
                    v627 = v680;
                    v628 = v658;
                    sub_1D6AC31AC(v620, v626, v680);
                    if (v628)
                    {

                      sub_1D67F58E4(v747, v741);
                      sub_1D60CF6F4(v734, v730, v731, *(&v731 + 1), v732, *(&v732 + 1), i);
                      sub_1D62B7D78(&v753);
                      sub_1D6D0A444(v681, type metadata accessor for FormatPropertyDefinition);

                      sub_1D6D0A444(v719, type metadata accessor for FeedWebEmbed);
                      sub_1D6D0A444(v673, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v702, type metadata accessor for FeedCustomItem);

                      return;
                    }

                    sub_1D6D09934(v627, v679, type metadata accessor for FormatOption);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v658 = 0;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v439 = sub_1D5CEABA0(0, *(v439 + 2) + 1, 1, v439);
                    }

                    v631 = *(v439 + 2);
                    v630 = *(v439 + 3);
                    v632 = v631 + 1;
                    v620 = v673;
                    if (v631 >= v630 >> 1)
                    {
                      v439 = sub_1D5CEABA0((v630 > 1), v631 + 1, 1, v439);
                    }

                    sub_1D6D0A444(v680, type metadata accessor for FormatOption);
                    sub_1D6D0A444(v681, type metadata accessor for FormatPropertyDefinition);
                    v621 = v679;
                  }

                  else
                  {
                    sub_1D6D09934(v620, v705, type metadata accessor for FormatOption);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v439 = sub_1D5CEABA0(0, *(v439 + 2) + 1, 1, v439);
                    }

                    v631 = *(v439 + 2);
                    v633 = *(v439 + 3);
                    v632 = v631 + 1;
                    if (v631 >= v633 >> 1)
                    {
                      v439 = sub_1D5CEABA0((v633 > 1), v631 + 1, 1, v439);
                    }

                    v621 = v705;
                  }

                  ++v619;
                  sub_1D6D0A444(v620, type metadata accessor for FormatOption);
                  *(v439 + 2) = v632;
                  sub_1D6D0A058(v621, &v439[v735 + v631 * v622], type metadata accessor for FormatOption);
                  v772 = v439;
                  v618 = v736;
                }

                while (v740 != v619);

                v447 = v741;
              }

              else
              {
              }

              v752 = v618;
              sub_1D5B5AD98(0);
              sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
              sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
              v634 = sub_1D72623AC();
              v635 = v734;
              v636 = v744;
              v740 = v734[2];
              if (!v740)
              {
LABEL_294:
                v744 = v636;
                sub_1D60CF6F4(v635, v730, v731, *(&v731 + 1), v732, *(&v732 + 1), i);

                v452 = v719;
                v448 = v747;
                sub_1D62B7D78(&v753);
                sub_1D6D0A444(v702, type metadata accessor for FeedCustomItem);
                v240 = v746;
LABEL_198:
                v525 = v452;
                v526 = v772;
                v745 = v773;
                v527 = v749[88];
                v749 = v772;
                if (v716)
                {
                  swift_beginAccess();
                  if ((v527 & 1) != 0 || !*(v240[4] + 16) || (, sub_1D5B69D90(v708, v709), v529 = v528, , (v529 & 1) == 0))
                  {
                    v530 = *v525;
                    v531 = *(v240[10] + 16);
                    if (v531)
                    {
                      sub_1D5B69D90(v744, v742);
                      v531 = 0x4000000000;
                      if ((v532 & 1) == 0)
                      {
                        v531 = 0;
                      }
                    }

                    *&v765 = v531 | v530;
                    v533 = v745;

                    v534 = sub_1D713CCF4();
                    v535 = sub_1D5BA8750(v534, v533);

                    v536 = sub_1D6947924();
                    v537 = sub_1D5BA8750(v536, v535);

                    *(&v754 + 1) = v726;
                    *&v755 = v743;
                    v538 = __swift_allocate_boxed_opaque_existential_1(&v753);
                    sub_1D6D09934(v525, v538, type metadata accessor for FeedWebEmbed);
                    sub_1D5B68374(&v753, &v759);

                    v539 = v537;
                    if (v447)
                    {
                      v539 = sub_1D5BA8750(&unk_1F50F68B0, v537);
                      sub_1D5BFB68C(&unk_1F50F68D0);
                    }

                    v744 = v537;
                    *(&v761 + 1) = v539;
                    v540 = *(v526 + 2);
                    v741 = v447;
                    if (v540)
                    {
                      *&v765 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v540, 0);
                      v541 = v765;
                      v542 = &v526[(*(v715 + 80) + 32) & ~*(v715 + 80)];
                      v543 = *(v715 + 72);
                      v544 = v540;
                      do
                      {
                        v545 = v738;
                        sub_1D6D09934(v542, v738, type metadata accessor for FormatOption);
                        v546 = swift_allocBox();
                        sub_1D6D0A058(v545, v547, type metadata accessor for FormatOption);
                        *&v765 = v541;
                        v549 = *(v541 + 16);
                        v548 = *(v541 + 24);
                        if (v549 >= v548 >> 1)
                        {
                          sub_1D5D24610((v548 > 1), v549 + 1, 1);
                          v541 = v765;
                        }

                        *(v541 + 16) = v549 + 1;
                        *(v541 + 8 * v549 + 32) = v546 | 0x1000000000000004;
                        v542 += v543;
                        --v544;
                      }

                      while (v544);
                      __swift_destroy_boxed_opaque_existential_1(&v753);
                      v576 = v719;
                      v448 = v747;
                      v447 = v741;
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(&v753);
                      v541 = MEMORY[0x1E69E7CC0];
                      v576 = v525;
                    }

                    *&v762 = v541;
                    *(&v762 + 1) = v448;
                    *&v763 = v447;
                    *(&v763 + 1) = v774;
                    *&v764 = v751;
                    *(&v764 + 1) = v750;
                    v771 = v748;
                    v765 = v759;
                    v766 = v760;
                    v767 = v761;
                    v768 = v762;
                    v769 = v763;
                    v770 = v764;
                    v578 = v709;

                    sub_1D67F5880(v448, v447);
                    sub_1D6D60C48(&v765, v708, v578);
                    v579 = v699;
                    sub_1D6D09934(v576, v699, type metadata accessor for FeedWebEmbed);
                    v580 = v579;
                    v581 = v695;
                    sub_1D6D09934(v580, v695, type metadata accessor for FeedWebEmbed);
                    v582 = v576;
                    if (v447)
                    {
                      v583 = sub_1D5BA8750(&unk_1F50F68E0, v744);
                      sub_1D5BFB68C(&unk_1F50F6900);
                      v584 = v749;
                    }

                    else
                    {
                      v584 = v749;
                      v583 = v744;
                    }

                    *(v581 + *(v714 + 28)) = v583;
                    if (v540)
                    {
                      v590 = v582;
                      *&v765 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v540, 0);
                      v591 = v765;
                      v592 = &v584[(*(v715 + 80) + 32) & ~*(v715 + 80)];
                      v593 = *(v715 + 72);
                      do
                      {
                        v594 = v738;
                        sub_1D6D09934(v592, v738, type metadata accessor for FormatOption);
                        v595 = swift_allocBox();
                        sub_1D6D0A058(v594, v596, type metadata accessor for FormatOption);
                        *&v765 = v591;
                        v598 = *(v591 + 16);
                        v597 = *(v591 + 24);
                        if (v598 >= v597 >> 1)
                        {
                          sub_1D5D24610((v597 > 1), v598 + 1, 1);
                          v591 = v765;
                        }

                        *(v591 + 16) = v598 + 1;
                        *(v591 + 8 * v598 + 32) = v595 | 0x1000000000000004;
                        v592 += v593;
                        --v540;
                      }

                      while (v540);
                      sub_1D6D0A444(v699, type metadata accessor for FeedWebEmbed);
                      v581 = v695;
LABEL_249:
                      v447 = v741;
                      v582 = v590;
                      v448 = v747;
LABEL_253:
                      v607 = v714;
                      *(v581 + *(v714 + 32)) = v591;
                      v608 = (v581 + *(v607 + 36));
                      *v608 = v448;
                      v608[1] = v447;
                      v609 = v751;
                      v608[2] = v774;
                      v608[3] = v609;
                      v610 = v748;
                      v608[4] = v750;
                      v608[5] = v610;
                      sub_1D6D0A058(v581, v698, sub_1D6D09428);
                      swift_endAccess();

                      sub_1D6D0A444(v582, type metadata accessor for FeedWebEmbed);
                      return;
                    }

                    v606 = v699;
                    goto LABEL_252;
                  }
                }

                else
                {
                  swift_beginAccess();
                  if ((v527 & 1) != 0 || !*(v240[3] + 16) || (, sub_1D5B69D90(v708, v709), v551 = v550, , (v551 & 1) == 0))
                  {
                    v556 = *v525;
                    v557 = *(v240[10] + 16);
                    if (v557)
                    {
                      sub_1D5B69D90(v744, v742);
                      v557 = 0x4000000000;
                      if ((v558 & 1) == 0)
                      {
                        v557 = 0;
                      }
                    }

                    *&v765 = v557 | v556;
                    v559 = v745;

                    v560 = sub_1D713CCF4();
                    v561 = sub_1D5BA8750(v560, v559);

                    v562 = sub_1D6947924();
                    v563 = sub_1D5BA8750(v562, v561);

                    *(&v754 + 1) = v726;
                    *&v755 = v743;
                    v564 = __swift_allocate_boxed_opaque_existential_1(&v753);
                    sub_1D6D09934(v525, v564, type metadata accessor for FeedWebEmbed);
                    sub_1D5B68374(&v753, &v759);

                    v565 = v563;
                    if (v447)
                    {
                      v565 = sub_1D5BA8750(&unk_1F50F6910, v563);
                      sub_1D5BFB68C(&unk_1F50F6930);
                    }

                    v744 = v563;
                    *(&v761 + 1) = v565;
                    v566 = *(v526 + 2);
                    v741 = v447;
                    if (v566)
                    {
                      *&v765 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v566, 0);
                      v567 = v765;
                      v568 = &v526[(*(v715 + 80) + 32) & ~*(v715 + 80)];
                      v569 = *(v715 + 72);
                      v570 = v566;
                      do
                      {
                        v571 = v738;
                        sub_1D6D09934(v568, v738, type metadata accessor for FormatOption);
                        v572 = swift_allocBox();
                        sub_1D6D0A058(v571, v573, type metadata accessor for FormatOption);
                        *&v765 = v567;
                        v575 = *(v567 + 16);
                        v574 = *(v567 + 24);
                        if (v575 >= v574 >> 1)
                        {
                          sub_1D5D24610((v574 > 1), v575 + 1, 1);
                          v567 = v765;
                        }

                        *(v567 + 16) = v575 + 1;
                        *(v567 + 8 * v575 + 32) = v572 | 0x1000000000000004;
                        v568 += v569;
                        --v570;
                      }

                      while (v570);
                      __swift_destroy_boxed_opaque_existential_1(&v753);
                      v577 = v719;
                      v448 = v747;
                      v447 = v741;
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(&v753);
                      v567 = MEMORY[0x1E69E7CC0];
                      v577 = v525;
                    }

                    *&v762 = v567;
                    *(&v762 + 1) = v448;
                    *&v763 = v447;
                    *(&v763 + 1) = v774;
                    *&v764 = v751;
                    *(&v764 + 1) = v750;
                    v771 = v748;
                    v765 = v759;
                    v766 = v760;
                    v767 = v761;
                    v768 = v762;
                    v769 = v763;
                    v770 = v764;
                    v585 = v709;

                    sub_1D67F5880(v448, v447);
                    sub_1D6D60C48(&v765, v708, v585);
                    v586 = v700;
                    sub_1D6D09934(v577, v700, type metadata accessor for FeedWebEmbed);
                    v587 = v586;
                    v581 = v696;
                    sub_1D6D09934(v587, v696, type metadata accessor for FeedWebEmbed);
                    v582 = v577;
                    if (v447)
                    {
                      v588 = sub_1D5BA8750(&unk_1F50F6940, v744);
                      sub_1D5BFB68C(&unk_1F50F6960);
                      v589 = v749;
                    }

                    else
                    {
                      v589 = v749;
                      v588 = v744;
                    }

                    *(v581 + *(v714 + 28)) = v588;
                    if (v566)
                    {
                      v590 = v582;
                      *&v765 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v566, 0);
                      v591 = v765;
                      v599 = &v589[(*(v715 + 80) + 32) & ~*(v715 + 80)];
                      v600 = *(v715 + 72);
                      do
                      {
                        v601 = v738;
                        sub_1D6D09934(v599, v738, type metadata accessor for FormatOption);
                        v602 = swift_allocBox();
                        sub_1D6D0A058(v601, v603, type metadata accessor for FormatOption);
                        *&v765 = v591;
                        v605 = *(v591 + 16);
                        v604 = *(v591 + 24);
                        if (v605 >= v604 >> 1)
                        {
                          sub_1D5D24610((v604 > 1), v605 + 1, 1);
                          v591 = v765;
                        }

                        *(v591 + 16) = v605 + 1;
                        *(v591 + 8 * v605 + 32) = v602 | 0x1000000000000004;
                        v599 += v600;
                        --v566;
                      }

                      while (v566);
                      sub_1D6D0A444(v700, type metadata accessor for FeedWebEmbed);
                      v581 = v696;
                      goto LABEL_249;
                    }

                    v606 = v700;
LABEL_252:
                    sub_1D6D0A444(v606, type metadata accessor for FeedWebEmbed);
                    v591 = MEMORY[0x1E69E7CC0];
                    goto LABEL_253;
                  }
                }

                sub_1D6752B3C();
                swift_allocError();
                v552 = v709;
                *v553 = v708;
                *(v553 + 8) = v552;
                *(v553 + 56) = 0;
                swift_willThrow();
                swift_endAccess();

                sub_1D67F58E4(v448, v447);

                v554 = type metadata accessor for FeedWebEmbed;
                v555 = v525;
LABEL_257:
                sub_1D6D0A444(v555, v554);
                return;
              }

              v637 = 0;
              v736 = v734 + ((*(v697 + 80) + 32) & ~*(v697 + 80));
              v638 = (v715 + 56);
              v639 = v694;
              v737 = v634;
              while (1)
              {
                if (v637 >= *(v635 + 16))
                {
                  goto LABEL_316;
                }

                v643 = v447;
                sub_1D6D09934(&v736[*(v697 + 72) * v637], v639, type metadata accessor for FormatPropertyDefinition);
                v644 = FormatPropertyDefinition.identifier.getter();
                if (*(v634 + 16))
                {
                  v646 = sub_1D5B69D90(v644, v645);
                  v648 = v647;
                  v639 = v694;

                  if (v648)
                  {
                    v634 = v737;
                    v640 = v715;
                    v641 = *(v737 + 56) + *(v715 + 72) * v646;
                    v642 = v686;
                    sub_1D6D09934(v641, v686, type metadata accessor for FormatOption);
                    sub_1D6D0A444(v694, type metadata accessor for FormatPropertyDefinition);
                    v639 = v694;
                    (*(v640 + 56))(v642, 0, 1, v739);
                    sub_1D6D0A444(v642, sub_1D5E04C00);
                    v447 = v643;
                    v636 = v744;
                    v635 = v734;
                    goto LABEL_286;
                  }
                }

                else
                {
                }

                v649 = v686;
                (*v638)(v686, 1, 1, v739);
                sub_1D6D0A444(v649, sub_1D5E04C00);
                if (sub_1D695C4AC())
                {

                  sub_1D67F58E4(v747, v643);

                  sub_1D60CF6F4(v734, v730, v731, *(&v731 + 1), v732, *(&v732 + 1), i);

                  type metadata accessor for FormatLayoutError(0);
                  sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                  swift_allocError();
                  v651 = v650;
                  sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
                  v653 = *(v652 + 48);
                  v654 = v702;
                  sub_1D6D09934(v702, v651, type metadata accessor for FeedCustomItem);
                  sub_1D6D09934(v639, v651 + v653, type metadata accessor for FormatPropertyDefinition);
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  sub_1D62B7D78(&v753);
                  sub_1D6D0A444(v639, type metadata accessor for FormatPropertyDefinition);
                  sub_1D6D0A444(v719, type metadata accessor for FeedWebEmbed);
                  v554 = type metadata accessor for FeedCustomItem;
                  v555 = v654;
                  goto LABEL_257;
                }

                sub_1D6D0A444(v639, type metadata accessor for FormatPropertyDefinition);
                v447 = v643;
                v636 = v744;
                v635 = v734;
                v634 = v737;
LABEL_286:
                if (v740 == ++v637)
                {
                  goto LABEL_294;
                }
              }
            }
          }

          v524 = v719;

          sub_1D67F58E4(v747, v447);

          LOBYTE(v770) = 0;
          v768 = 0u;
          v769 = 0u;
          v766 = 0u;
          v767 = 0u;
          v765 = 0u;
          goto LABEL_256;
        }

        v448 = 0;
        v774 = 0;
        v751 = 0;
        v750 = 0;
        v748 = 0;
LABEL_188:
        v497 = v712;
        goto LABEL_189;
      }

      v307 = v750;
    }

    else
    {
      if ((*v233 & 1) == 0)
      {
        sub_1D62F1E7C(v230);
        v291 = v290;

        v230 = v291;
      }

      v292 = *(v230 + 16);
      v737 = v720 + 56;
      v293 = (v720 + 48);
      v661 = v230;

      v294 = 0;
      v735 = v292;
      if (v292)
      {
        goto LABEL_65;
      }

LABEL_68:
      v305 = 1;
      v294 = v292;
      v300 = v743;
      while (1)
      {
        (*v737)(v289, v305, 1, v300);
        sub_1D6D09B18(v289, v287, &qword_1EDF04728, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        if ((*v293)(v287, 1, v300) == 1)
        {
          break;
        }

        v295 = v287;
        v296 = v221;
        v297 = *v295;
        v298 = v734;
        sub_1D6D0A058(v295 + *(v300 + 48), v734, type metadata accessor for FeedWebEmbed);
        if ((v751 & ~*v298) == 0)
        {
          v317 = v661;

          *&v765 = v317;
          v318 = v688;
          sub_1D5EC207C(v297, v688);
          sub_1D6D0A444(v298, type metadata accessor for FeedWebEmbed);

          v306 = v717;
          sub_1D6D0A058(v318, v717, type metadata accessor for FeedWebEmbed);
          v316 = v742;
          v315 = v726;
          (*(v742 + 56))(v306, 0, 1, v726);
          v240 = v746;
          v221 = v296;
          goto LABEL_172;
        }

        sub_1D6D0A444(v298, type metadata accessor for FeedWebEmbed);
        v221 = v296;
        v287 = v736;
        v292 = v735;
        if (v294 == v735)
        {
          goto LABEL_68;
        }

LABEL_65:
        if ((v294 & 0x8000000000000000) != 0)
        {
          goto LABEL_299;
        }

        if (v294 >= *(v661 + 16))
        {
          goto LABEL_300;
        }

        v299 = v661 + ((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v294;
        v300 = v743;
        v301 = *(v743 + 48);
        v302 = v740;
        *v740 = v294;
        sub_1D6D09934(v299, v302 + v301, type metadata accessor for FeedWebEmbed);
        v303 = v302;
        v304 = v731;
        sub_1D6D0A3D8(v303, v731, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v305 = 0;
        ++v294;
        v289 = v304;
        v287 = v736;
      }

      swift_bridgeObjectRelease_n();

      v306 = v717;
      (*(v742 + 56))(v717, 1, 1, v726);
      v240 = v746;
      v307 = v750;
    }

    sub_1D6D0A444(v306, sub_1D5F2DDF0);
    sub_1D5ED8048();
    v229 = swift_allocError();
    strcpy(v477, "FeedWebEmbed");
    v477[13] = 0;
    *(v477 + 7) = -5120;
    *(v477 + 2) = v774;
    *(v477 + 3) = v307;
    *(v477 + 4) = v751;
    *(v477 + 5) = 1;
    v478 = v747;
    *(v477 + 6) = v748;
    *(v477 + 7) = v478;
    v477[64] = 0;
    swift_willThrow();

LABEL_22:
    if ((*(v240 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
    {
      swift_willThrow();
      return;
    }

    v241 = *(v744 + 16);
    v747 = v229;
    v737 = 0;
    v242 = 0;
    if (v241)
    {
      v243 = (v744 + 32);
      do
      {
        v244 = *v243++;
        v245 = qword_1D7349118[v244];
        if ((v245 & ~v242) == 0)
        {
          v245 = 0;
        }

        v242 |= v245;
        --v241;
      }

      while (v241);
    }

    v246 = swift_allocObject();
    *(v246 + 16) = v242;
    v247 = swift_allocObject();
    v748 = v247;
    v248 = MEMORY[0x1E69E7CC0];
    *(v247 + 16) = MEMORY[0x1E69E7CC0];
    v249 = (v247 + 16);
    v250 = swift_allocObject();
    *(v250 + 16) = sub_1D6D0A5E0;
    *(v250 + 24) = v246;
    swift_beginAccess();

    v251 = sub_1D6990E20(0, 1, 1, v248);
    v253 = v251[2];
    v252 = v251[3];
    if (v253 >= v252 >> 1)
    {
      v251 = sub_1D6990E20((v252 > 1), v253 + 1, 1, v251);
    }

    v251[2] = v253 + 1;
    v254 = &v251[2 * v253];
    v254[4] = sub_1D6D0A514;
    v254[5] = v250;
    v745 = v251;
    *v249 = v251;
    swift_endAccess();

    v255 = *(v221 + 16);
    v256 = v750;

    if (v255)
    {
      v257 = sub_1D5BCF83C(0x4562655764656546, 0xEC0000006465626DLL, v774, v256);
      if (v258)
      {
        v259 = *(*(v221 + 56) + 8 * v257);
        if (*(v259 + 16))
        {

          v261 = v749;
          v262 = v737;
          v263 = sub_1D5BF08EC(v260, 0, 0);
          if (v262)
          {

LABEL_45:

            swift_setDeallocating();
            swift_deallocClassInstance();
            return;
          }

          v658 = 0;
          v264 = sub_1D714F774(v263);
          v256 = v750;

          if (v264)
          {
            v265 = *(v264 + 16);
            if (v265)
            {
              v744 = v264;
              v266 = v721;
              v267 = *&v261[v721[17]];
              *&v732 = v721[19];
              v268 = *&v261[v732];
              v269 = v743;
              v734 = v259;
              i = v268;
              if (v268 < v267)
              {
                if (*v261)
                {
                }

                else
                {
                  sub_1D62F1E7C(v744);
                  v265 = *(v270 + 16);
                }

                v360 = v723;
                v361 = *(&v732 + 1);
                v737 = v751 | 0x1000;
                v741 = (v720 + 56);
                v362 = (v720 + 48);
                v736 = v270;

                v363 = 0;
                v364 = &qword_1EDF04730;
                if (v265)
                {
                  goto LABEL_104;
                }

LABEL_107:
                v375 = 1;
                v363 = v265;
                while (1)
                {
                  (*v741)(v360, v375, 1, v269);
                  sub_1D6D09B18(v360, v361, &qword_1EDF04728, v364, type metadata accessor for FeedWebEmbed);
                  if ((*v362)(v361, 1, v269) == 1)
                  {
                    break;
                  }

                  v365 = v364;
                  v366 = v361;
                  v367 = *v361;
                  v368 = v728;
                  sub_1D6D0A058(v366 + *(v269 + 48), v728, type metadata accessor for FeedWebEmbed);
                  if ((v737 & ~*v368) == 0)
                  {
                    v397 = v736;

                    *&v765 = v397;
                    v398 = v677;
                    sub_1D5EC207C(v367, v677);
                    sub_1D6D0A444(v368, type metadata accessor for FeedWebEmbed);

                    v399 = v398;
                    v400 = v676;
                    sub_1D6D0A058(v399, v676, type metadata accessor for FeedWebEmbed);
                    v401 = v400;
                    v402 = v675;
                    sub_1D6D0A058(v401, v675, type metadata accessor for FeedWebEmbed);
                    v403 = v402;
                    v404 = v707;
                    v395 = v707;
                    goto LABEL_128;
                  }

                  sub_1D6D0A444(v368, type metadata accessor for FeedWebEmbed);
                  v361 = *(&v732 + 1);
                  v364 = v365;
                  if (v363 == v265)
                  {
                    goto LABEL_107;
                  }

LABEL_104:
                  if ((v363 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_303;
                  }

                  if (v363 >= *(v736 + 2))
                  {
                    goto LABEL_304;
                  }

                  v369 = &v736[((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v363];
                  v370 = v743;
                  v371 = *(v743 + 48);
                  v372 = v740;
                  *v740 = v363;
                  sub_1D6D09934(v369, v372 + v371, type metadata accessor for FeedWebEmbed);
                  v373 = v372;
                  v374 = v723;
                  sub_1D6D0A3D8(v373, v723, v364, type metadata accessor for FeedWebEmbed);
                  v375 = 0;
                  ++v363;
                  v269 = v370;
                  v360 = v374;
                  v361 = *(&v732 + 1);
                }

                swift_bridgeObjectRelease_n();
                v261 = v749;
                v266 = v721;
                v268 = i;
              }

              v376 = *&v261[v266[18]];
              v377 = v724;
              if (__OFSUB__(v376, v268))
              {
                goto LABEL_314;
              }

              v378 = v701;
              if (v376 - v268 < 1)
              {
                if (*v261)
                {
                }

                else
                {
                  sub_1D62F1E7C(v744);
                }

                v736 = v396;
                v409 = *(v396 + 16);
                v741 = (v720 + 56);
                v737 = v720 + 48;

                v410 = 0;
                while (1)
                {
                  if (v410 == v409)
                  {
                    v411 = 1;
                    v410 = v409;
                  }

                  else
                  {
                    if ((v410 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_309;
                    }

                    if (v410 >= *(v736 + 2))
                    {
                      goto LABEL_310;
                    }

                    v412 = &v736[((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v410];
                    v413 = v743;
                    v414 = *(v743 + 48);
                    v415 = v740;
                    *v740 = v410;
                    sub_1D6D09934(v412, v415 + v414, type metadata accessor for FeedWebEmbed);
                    sub_1D6D0A3D8(v415, v378, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
                    v411 = 0;
                    ++v410;
                    v269 = v413;
                  }

                  v416 = *v741;
                  (*v741)(v378, v411, 1, v269);
                  v417 = v725;
                  sub_1D6D09B18(v378, v725, &qword_1EDF04728, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
                  v418 = *v737;
                  if ((*v737)(v417, 1, v269) == 1)
                  {
                    swift_bridgeObjectRelease_n();
                    v453 = *(v742 + 56);
                    *(&v732 + 1) = v742 + 56;
                    *(&v731 + 1) = v453;
                    v453(v687, 1, 1, v726);
                    if ((*v749 & 1) == 0)
                    {
                      sub_1D62F1E7C(v744);
                      v455 = v454;

                      v744 = v455;
                    }

                    v456 = *(v744 + 16);

                    v457 = 0;
                    v458 = &qword_1EDF04730;
                    v459 = v713;
                    v736 = v456;
                    v460 = v671;
                    if (v456)
                    {
                      goto LABEL_163;
                    }

LABEL_166:
                    v470 = 1;
                    v457 = v456;
                    v471 = v460;
                    v469 = v718;
                    while (1)
                    {
                      v416(v469, v470, 1, v269);
                      sub_1D6D09B18(v469, v471, &qword_1EDF04728, v458, type metadata accessor for FeedWebEmbed);
                      if (v418(v471, 1, v269) == 1)
                      {
                        break;
                      }

                      v460 = v471;
                      v461 = *v471;
                      sub_1D6D0A058(v460 + *(v269 + 48), v459, type metadata accessor for FeedWebEmbed);
                      if ((v751 & ~*v459) == 0)
                      {
                        v612 = v744;

                        *&v765 = v612;
                        v613 = v666;
                        sub_1D5EC207C(v461, v666);
                        sub_1D6D0A444(v459, type metadata accessor for FeedWebEmbed);

                        v395 = v707;
                        sub_1D6D0A058(v613, v707, type metadata accessor for FeedWebEmbed);
                        v472 = 0;
LABEL_259:
                        v408 = v726;
                        (*(&v731 + 1))(v395, v472, 1, v726);
                        v407 = v742;
                        v614 = v687;
                        v615 = (*(v742 + 48))(v687, 1, v408);
                        v240 = v746;
                        v426 = v734;
                        if (v615 != 1)
                        {
                          sub_1D6D0A444(v614, sub_1D5F2DDF0);
                        }

                        goto LABEL_142;
                      }

                      sub_1D6D0A444(v459, type metadata accessor for FeedWebEmbed);
                      v456 = v736;
                      if (v457 == v736)
                      {
                        goto LABEL_166;
                      }

LABEL_163:
                      if ((v457 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_312;
                      }

                      if (v457 >= *(v744 + 16))
                      {
                        goto LABEL_313;
                      }

                      v462 = v458;
                      v463 = v460;
                      v735 = v457 + 1;
                      v464 = v744 + ((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v457;
                      v465 = v743;
                      v466 = *(v743 + 48);
                      v467 = v740;
                      *v740 = v457;
                      sub_1D6D09934(v464, v467 + v466, type metadata accessor for FeedWebEmbed);
                      v468 = v467;
                      v469 = v718;
                      v458 = v462;
                      sub_1D6D0A3D8(v468, v718, v462, type metadata accessor for FeedWebEmbed);
                      v470 = 0;
                      v457 = v735;
                      v269 = v465;
                      v471 = v463;
                      v459 = v713;
                    }

                    swift_bridgeObjectRelease_n();
                    v472 = 1;
                    v395 = v707;
                    goto LABEL_259;
                  }

                  v419 = *v417;
                  v420 = v417 + *(v269 + 48);
                  v421 = v729;
                  sub_1D6D0A058(v420, v729, type metadata accessor for FeedWebEmbed);
                  if ((v751 & ~*v421) == 0 && (*v421 & 0x1000) == 0)
                  {
                    v422 = v736;

                    *&v765 = v422;
                    v423 = v669;
                    sub_1D5EC207C(v419, v669);
                    sub_1D6D0A444(v729, type metadata accessor for FeedWebEmbed);

                    v424 = v687;
                    sub_1D6D0A058(v423, v687, type metadata accessor for FeedWebEmbed);
                    v407 = v742;
                    v425 = *(v742 + 56);
                    v408 = v726;
                    v425(v424, 0, 1, v726);
                    v395 = v707;
                    sub_1D6D0A058(v424, v707, type metadata accessor for FeedWebEmbed);
                    v425(v395, 0, 1, v408);
                    goto LABEL_141;
                  }

                  sub_1D6D0A444(v729, type metadata accessor for FeedWebEmbed);
                }
              }

              v379 = v744;
              if ((*v261 & 1) == 0)
              {
                sub_1D62F1E7C(v744);
                v381 = v380;

                v379 = v381;
              }

              v382 = *(v379 + 16);
              v383 = (v720 + 56);
              v384 = (v720 + 48);
              v744 = v379;

              v385 = 0;
              v387 = v689;
              v386 = v690;
              v741 = v382;
              if (v382)
              {
                goto LABEL_118;
              }

LABEL_121:
              v394 = 1;
              v385 = v382;
              while (1)
              {
                (*v383)(v386, v394, 1, v269);
                sub_1D6D09B18(v386, v387, &qword_1EDF04728, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
                if ((*v384)(v387, 1, v269) == 1)
                {
                  swift_bridgeObjectRelease_n();

                  v395 = v707;
                  (*(v742 + 56))(v707, 1, 1, v726);
                  goto LABEL_144;
                }

                v388 = *v387;
                sub_1D6D0A058(v387 + *(v269 + 48), v377, type metadata accessor for FeedWebEmbed);
                if ((v751 & ~*v377) == 0)
                {
                  break;
                }

                sub_1D6D0A444(v377, type metadata accessor for FeedWebEmbed);
                v382 = v741;
                if (v385 == v741)
                {
                  goto LABEL_121;
                }

LABEL_118:
                if ((v385 & 0x8000000000000000) != 0)
                {
                  goto LABEL_305;
                }

                if (v385 >= *(v744 + 16))
                {
                  goto LABEL_306;
                }

                v389 = v387;
                v390 = v744 + ((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v385;
                v391 = v743;
                v392 = *(v743 + 48);
                v393 = v740;
                *v740 = v385;
                sub_1D6D09934(v390, v393 + v392, type metadata accessor for FeedWebEmbed);
                sub_1D6D0A3D8(v393, v386, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
                v394 = 0;
                ++v385;
                v269 = v391;
                v387 = v389;
                v377 = v724;
              }

              v405 = v744;

              *&v765 = v405;
              v406 = v674;
              sub_1D5EC207C(v388, v674);
              sub_1D6D0A444(v377, type metadata accessor for FeedWebEmbed);

              v403 = v406;
              v395 = v707;
              v404 = v707;
LABEL_128:
              sub_1D6D0A058(v403, v404, type metadata accessor for FeedWebEmbed);
              v407 = v742;
              v408 = v726;
              (*(v742 + 56))(v395, 0, 1, v726);
LABEL_141:
              v240 = v746;
              v426 = v734;
LABEL_142:
              if ((*(v407 + 48))(v395, 1, v408) == 1)
              {

LABEL_144:
                sub_1D6D0A444(v395, sub_1D5F2DDF0);
                sub_1D5ED8048();
                swift_allocError();
                strcpy(v271, "FeedWebEmbed");
                *(v271 + 13) = 0;
                *(v271 + 14) = -5120;
                v427 = v750;
                *(v271 + 16) = v774;
                *(v271 + 24) = v427;
                goto LABEL_44;
              }

              v428 = v683;
              v429 = sub_1D6D0A058(v395, v683, type metadata accessor for FeedWebEmbed);
              if ((*(v428 + 1) & 0x10) != 0)
              {
                if (__OFADD__(i, 1))
                {
                  goto LABEL_318;
                }

                *&v749[v732] = i + 1;
              }

              if ((v716 & 1) == 0)
              {
                MEMORY[0x1EEE9AC00](v429, v430);
                *(&v655 - 2) = v428;
                v431 = v658;
                v426 = sub_1D5BF5F6C(sub_1D6D09C0C, (&v655 - 4), v426);
                v658 = v431;
              }

              strcpy(&v765, "FeedWebEmbed");
              BYTE13(v765) = 0;
              HIWORD(v765) = -5120;
              *&v766 = v774;
              *(&v766 + 1) = v750;
              sub_1D5BDACA8(&v765, v426);

              swift_setDeallocating();
              swift_deallocClassInstance();

              v432 = v682;
              sub_1D6D0A058(v428, v682, type metadata accessor for FeedWebEmbed);
              v433 = v432;
              v434 = v719;
              sub_1D6D0A058(v433, v719, type metadata accessor for FeedWebEmbed);
              v436 = *(v434 + 40);
              v435 = *(v434 + 48);
              v437 = v710;
              v438 = sub_1D6196E44(v710, 42, 0xE100000000000000, v436, v435);
              v773 = v438;
              v744 = v436;
              v439 = sub_1D6196F00(v437, 42, 0xE100000000000000, v436, v435);
              v772 = v439;
              v440 = *(v437 + 16);
              v742 = v435;
              v745 = v438;
              if (v440 && (v441 = sub_1D5B69D90(42, 0xE100000000000000), (v442 & 1) != 0) && (v443 = *(*(*(v437 + 56) + 8 * v441) + 136), *(v443 + 16)))
              {

                v444 = sub_1D5B69D90(v744, v435);
                if (v445)
                {
                  v446 = *(v443 + 56) + 48 * v444;
                  v448 = *v446;
                  v447 = *(v446 + 8);
                  v449 = *(v446 + 16);
                  v450 = *(v446 + 24);
                  v451 = *(v446 + 40);
                  v750 = *(v446 + 32);

                  v774 = v449;

                  v751 = v450;

                  v748 = v451;

                  v452 = v719;
                  goto LABEL_188;
                }
              }

              else
              {
              }

              v448 = 0;
              v447 = 0;
              v774 = 0;
              v751 = 0;
              v750 = 0;
              v748 = 0;
              v452 = v719;
              goto LABEL_188;
            }
          }
        }
      }
    }

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v271, "FeedWebEmbed");
    *(v271 + 13) = 0;
    *(v271 + 14) = -5120;
    *(v271 + 16) = v774;
    *(v271 + 24) = v256;
LABEL_44:
    *(v271 + 32) = v751;
    *(v271 + 40) = 1;
    *(v271 + 48) = 0;
    *(v271 + 56) = 0;
    *(v271 + 64) = 0;
    swift_willThrow();
    goto LABEL_45;
  }

  v236 = *v749;
  v661 = v230;
  if (v236)
  {
  }

  else
  {
    sub_1D62F1E7C(v230);
    v231 = *(v237 + 16);
  }

  v272 = v730;
  v273 = v737;
  i = (v720 + 56);
  v663 = v751 | 0x1000;
  v664 = (v720 + 48);
  v659 = v237;

  v274 = 0;
  v662 = v231;
  if (v231)
  {
    goto LABEL_51;
  }

LABEL_54:
  v284 = 1;
  v274 = v231;
  v279 = v743;
  while (1)
  {
    (*i)(v272, v284, 1, v279);
    sub_1D6D09B18(v272, v273, &qword_1EDF04728, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
    if ((*v664)(v273, 1, v279) == 1)
    {
      swift_bridgeObjectRelease_n();
      v232 = v721;
      v233 = v749;
      v235 = v657;
      v230 = v661;
      goto LABEL_57;
    }

    v275 = v273;
    v276 = v221;
    v277 = *v275;
    sub_1D6D0A058(v275 + *(v279 + 48), v189, type metadata accessor for FeedWebEmbed);
    if ((v663 & ~*v189) == 0)
    {
      v308 = v659;

      *&v765 = v308;
      v309 = v693;
      sub_1D5EC207C(v277, v693);
      sub_1D6D0A444(v189, type metadata accessor for FeedWebEmbed);

      v310 = v692;
      sub_1D6D0A058(v309, v692, type metadata accessor for FeedWebEmbed);
      v311 = v310;
      v312 = v691;
      sub_1D6D0A058(v311, v691, type metadata accessor for FeedWebEmbed);
      v313 = v312;
      v306 = v717;
      sub_1D6D0A058(v313, v717, type metadata accessor for FeedWebEmbed);
      v314 = v742;
      v315 = v726;
      (*(v742 + 56))(v306, 0, 1, v726);
      v240 = v746;
      v221 = v276;
      v316 = v314;
      goto LABEL_172;
    }

    sub_1D6D0A444(v189, type metadata accessor for FeedWebEmbed);
    v221 = v276;
    v273 = v737;
    v231 = v662;
    if (v274 == v662)
    {
      goto LABEL_54;
    }

LABEL_51:
    if ((v274 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v274 >= *(v659 + 16))
    {
      goto LABEL_298;
    }

    v278 = v659 + ((*(v742 + 80) + 32) & ~*(v742 + 80)) + *(v742 + 72) * v274;
    v279 = v743;
    v280 = *(v743 + 48);
    v281 = v740;
    *v740 = v274;
    sub_1D6D09934(v278, v281 + v280, type metadata accessor for FeedWebEmbed);
    v282 = v281;
    v283 = v730;
    sub_1D6D0A3D8(v282, v730, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
    v284 = 0;
    ++v274;
    v272 = v283;
    v273 = v737;
  }

  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
}

void sub_1D6CF4AD0(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, unsigned __int8 a11, uint64_t a12)
{
  v14 = v13;
  v393 = a8;
  v378 = a6;
  v379 = a7;
  v395 = a5;
  v396 = a4;
  v456 = a3;
  v394 = a1;
  v375 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v372 = &v356 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatPropertyDefinition(0);
  v374 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v367 = &v356 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v369 = &v356 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v373 = &v356 - v27;
  v388 = type metadata accessor for FormatOption(0);
  v384 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388, v28);
  v368 = &v356 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v366 = &v356 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v377 = &v356 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v356 - v38);
  MEMORY[0x1EEE9AC00](v40, v41);
  v387 = &v356 - v42;
  sub_1D6AC4E74(0);
  v364 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v365 = &v356 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v371, v46);
  v376 = &v356 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v370 = &v356 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v356 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = v12;
  v55 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v56 = *(v55 + 16);
  v382 = v54;
  v383 = v39;
  v380 = a2;
  v381 = v57;
  v58 = 0;
  if (v56)
  {
    v59 = (v55 + 32);
    do
    {
      v60 = *v59++;
      v61 = qword_1D7349118[v60];
      if ((v61 & ~v58) == 0)
      {
        v61 = 0;
      }

      v58 |= v61;
      --v56;
    }

    while (v56);
  }

  v62 = swift_allocObject();
  *(v62 + 16) = v58;
  sub_1D6D09E8C(0, &qword_1EDF155C0, &type metadata for FeedTag, type metadata accessor for FeedItemSorter);
  v389 = v63;
  v64 = swift_allocObject();
  v65 = MEMORY[0x1E69E7CC0];
  v391 = v64;
  *(v64 + 16) = MEMORY[0x1E69E7CC0];
  v66 = (v64 + 16);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1D6D09B88;
  *(v67 + 24) = v62;
  swift_beginAccess();

  v68 = sub_1D6990F7C(0, 1, 1, v65);
  v70 = v68[2];
  v69 = v68[3];
  if (v70 >= v69 >> 1)
  {
    v68 = sub_1D6990F7C((v69 > 1), v70 + 1, 1, v68);
  }

  v385 = a11;
  v392 = a10;
  v68[2] = v70 + 1;
  v71 = &v68[2 * v70];
  v71[4] = sub_1D6196DFC;
  v71[5] = v67;
  *v66 = v68;
  swift_endAccess();

  v386 = type metadata accessor for GroupLayoutBindingContext(0);
  v72 = v394;
  v73 = *&v394[v386[14]];
  v74 = *(v73 + 16);
  v75 = v396;

  if (!v74)
  {
    goto LABEL_13;
  }

  v76 = sub_1D5BCF83C(0x67615464656546, 0xE700000000000000, v456, v75);
  if ((v77 & 1) == 0 || !*(*(*(v73 + 56) + 8 * v76) + 16))
  {
    goto LABEL_13;
  }

  v79 = sub_1D5BF08EC(v78, v393, v392);
  if (v14)
  {

    v80 = v14;
    goto LABEL_14;
  }

  v361 = v78;
  v105 = sub_1D714FA6C(v79);

  if (!v105)
  {
    goto LABEL_40;
  }

  v362 = *(v105 + 16);
  if (!v362)
  {

LABEL_40:

LABEL_13:
    sub_1D5ED8048();
    v80 = swift_allocError();
    *v81 = 0x67615464656546;
    *(v81 + 8) = 0xE700000000000000;
    *(v81 + 16) = v456;
    *(v81 + 24) = v75;
    *(v81 + 32) = v395;
    *(v81 + 40) = 1;
    v82 = v392;
    *(v81 + 48) = v393;
    *(v81 + 56) = v82;
    *(v81 + 64) = 0;
    swift_willThrow();

LABEL_14:
    if ((*(v390 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
    {
      swift_willThrow();
      return;
    }

    v392 = v80;
    v83 = *(v55 + 16);
    if (v83)
    {
      v84 = 0;
      v85 = (v55 + 32);
      do
      {
        v86 = *v85++;
        v87 = qword_1D7349118[v86];
        if ((v87 & ~v84) == 0)
        {
          v87 = 0;
        }

        v84 |= v87;
        --v83;
      }

      while (v83);
    }

    else
    {
      v84 = 0;
    }

    v88 = swift_allocObject();
    *(v88 + 16) = v84;
    v89 = swift_allocObject();
    v393 = v89;
    v90 = MEMORY[0x1E69E7CC0];
    *(v89 + 16) = MEMORY[0x1E69E7CC0];
    v91 = (v89 + 16);
    v92 = swift_allocObject();
    *(v92 + 16) = sub_1D6D0A5DC;
    *(v92 + 24) = v88;
    swift_beginAccess();

    v93 = sub_1D6990F7C(0, 1, 1, v90);
    v95 = v93[2];
    v94 = v93[3];
    if (v95 >= v94 >> 1)
    {
      v93 = sub_1D6990F7C((v94 > 1), v95 + 1, 1, v93);
    }

    v93[2] = v95 + 1;
    v96 = &v93[2 * v95];
    v96[4] = sub_1D6D0A510;
    v96[5] = v92;
    *v91 = v93;
    swift_endAccess();

    v97 = *(v73 + 16);
    v98 = v396;

    if (!v97)
    {
      goto LABEL_158;
    }

    v99 = sub_1D5BCF83C(0x67615464656546, 0xE700000000000000, v456, v98);
    if ((v100 & 1) == 0)
    {
      goto LABEL_158;
    }

    v101 = *(*(v73 + 56) + 8 * v99);
    if (!*(v101 + 16))
    {
      goto LABEL_158;
    }

    v104 = 0;

    v103 = sub_1D5BF08EC(v102, 0, 0);
    v110 = sub_1D714FA6C(v103);

    if (v110)
    {
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = v386;
        v113 = v394;
        v114 = *&v394[v386[17]];
        v361 = v386[19];
        v115 = *&v394[v361];
        v359 = 0;
        v362 = v115;
        v363 = v101;
        if (v115 >= v114)
        {
          goto LABEL_91;
        }

        if (*v394)
        {
          swift_bridgeObjectRetain_n();
          v116 = v110;
        }

        else
        {
          sub_1D62F2250(v110);
          v116 = v147;
          v111 = *(v147 + 16);

          if (!v111)
          {
            goto LABEL_90;
          }
        }

        v148 = v110;
        v149 = 0;
        v391 = v395 | 0x1000;
        v150 = v116 + 32;
        do
        {
          if (v149 >= *(v116 + 16))
          {
            goto LABEL_275;
          }

          *&v411 = v149;
          sub_1D5EE5AF8(v150, &v411 + 8);
          if (!*v412)
          {
            break;
          }

          v151 = v411;
          v411 = __PAIR128__(*v412, *(&v411 + 1));
          *v412 = *&v412[8];
          *&v412[16] = *&v412[24];
          *&v412[32] = *&v412[40];
          *&v412[48] = *&v412[56];
          *&v412[64] = *&v412[72];
          *&v412[80] = *&v412[88];
          *&v412[96] = *&v412[104];
          *&v412[112] = *&v412[120];
          v412[128] = v413;
          swift_getObjectType();
          FCTagProviding.traits.getter(&v414);
          if ((v391 & ~v414) == 0)
          {

            *&v414 = v116;
            goto LABEL_126;
          }

          ++v149;
          sub_1D5EE5B54(&v411);
          v150 += 152;
        }

        while (v111 != v149);
        v104 = v359;
        v98 = v396;
        v110 = v148;
LABEL_90:
        swift_bridgeObjectRelease_n();
        v113 = v394;
        v112 = v386;
        v115 = v362;
LABEL_91:
        v152 = *&v113[v112[18]];
        v123 = __OFSUB__(v152, v115);
        v153 = v152 - v115;
        if (!v123)
        {
          if (v153 < 1)
          {
            v159 = *v394;
            v360 = v110;
            if (v159)
            {

              v160 = v110;
            }

            else
            {
              sub_1D62F2250(v110);
              v160 = v162;
            }

            v163 = *(v160 + 16);

            v391 = v163;
            if (!v163)
            {
LABEL_115:
              swift_bridgeObjectRelease_n();
              v414 = 0u;
              v415 = 0u;
              v416 = 0u;
              v417 = 0u;
              v418 = 0u;
              v419 = 0u;
              v420 = 0u;
              v421 = 0u;
              v422 = 0u;
              v423 = 0;
              v169 = v360;
              if ((*v394 & 1) == 0)
              {
                sub_1D62F2250(v360);
                v171 = v170;

                v169 = v171;
              }

              v172 = *(v169 + 16);
              v173 = v169;

              if (v172)
              {
                v174 = 0;
                v175 = v173 + 32;
                while (1)
                {
                  if (v174 >= *(v173 + 16))
                  {
                    goto LABEL_279;
                  }

                  *&v411 = v174;
                  sub_1D5EE5AF8(v175, &v411 + 8);
                  if (!*v412)
                  {
                    goto LABEL_123;
                  }

                  v176 = v411;
                  v411 = __PAIR128__(*v412, *(&v411 + 1));
                  *v412 = *&v412[8];
                  *&v412[16] = *&v412[24];
                  *&v412[32] = *&v412[40];
                  *&v412[48] = *&v412[56];
                  *&v412[64] = *&v412[72];
                  *&v412[80] = *&v412[88];
                  *&v412[96] = *&v412[104];
                  *&v412[112] = *&v412[120];
                  v412[128] = v413;
                  swift_getObjectType();
                  FCTagProviding.traits.getter(&v397);
                  if ((v395 & ~v397) == 0)
                  {
                    break;
                  }

                  ++v174;
                  sub_1D5EE5B54(&v411);
                  v175 += 152;
                  v98 = v396;
                  if (v172 == v174)
                  {
                    goto LABEL_123;
                  }
                }

                v397 = v173;
                sub_1D5EC20BC(v176, &v398);
                sub_1D5EE5B54(&v411);

                v430 = v404;
                v431 = v405;
                v432 = v406;
                v433 = v407;
                v426 = v400;
                v427 = v401;
                v428 = v402;
                v429 = v403;
                v424 = v398;
                v425 = v399;
                v98 = v396;
              }

              else
              {
LABEL_123:
                swift_bridgeObjectRelease_n();
                v424 = 0u;
                v425 = 0u;
                v426 = 0u;
                v427 = 0u;
                v428 = 0u;
                v429 = 0u;
                v430 = 0u;
                v431 = 0u;
                v432 = 0u;
                v433 = 0;
              }

              v104 = v359;
              v177 = v385;
              if (*(&v414 + 1))
              {
                sub_1D6D09524(&v414, &unk_1EDF34F60, &type metadata for FeedTag, MEMORY[0x1E69E6720]);
              }

              goto LABEL_150;
            }

            v164 = 0;
            v165 = v160 + 32;
            v389 = v160;
            while (1)
            {
              if (v164 >= *(v160 + 16))
              {
                goto LABEL_278;
              }

              *&v411 = v164;
              sub_1D5EE5AF8(v165, &v411 + 8);
              if (!*v412)
              {
                goto LABEL_115;
              }

              v166 = v411;
              v411 = __PAIR128__(*v412, *(&v411 + 1));
              *v412 = *&v412[8];
              *&v412[16] = *&v412[24];
              *&v412[32] = *&v412[40];
              *&v412[48] = *&v412[56];
              *&v412[64] = *&v412[72];
              *&v412[80] = *&v412[88];
              *&v412[96] = *&v412[104];
              *&v412[112] = *&v412[120];
              v412[128] = v413;
              swift_getObjectType();
              FCTagProviding.traits.getter(&v414);
              v167 = v414;
              FCTagProviding.traits.getter(&v414);
              if ((v395 & ~v414) == 0 && (v167 & 0x1000) == 0)
              {
                break;
              }

              ++v164;
              sub_1D5EE5B54(&v411);
              v165 += 152;
              v98 = v396;
              v160 = v389;
              if (v391 == v164)
              {
                goto LABEL_115;
              }
            }

            v168 = v389;

            *&v414 = v168;
            sub_1D5EC20BC(v166, &v398);
            sub_1D5EE5B54(&v411);

            v420 = v404;
            v421 = v405;
            v422 = v406;
            v423 = v407;
            v416 = v400;
            v417 = v401;
            v418 = v402;
            v419 = v403;
            v414 = v398;
            v415 = v399;
            v430 = v404;
            v431 = v405;
            v432 = v406;
            v433 = v407;
            v426 = v400;
            v427 = v401;
            v428 = v402;
            v429 = v403;
            v424 = v398;
            v425 = v399;
          }

          else
          {
            if ((*v394 & 1) == 0)
            {
              sub_1D62F2250(v110);
              v155 = v154;

              v110 = v155;
            }

            v156 = *(v110 + 16);

            if (!v156)
            {
LABEL_101:
              swift_bridgeObjectRelease_n();

              v424 = 0u;
              v425 = 0u;
              v426 = 0u;
              v427 = 0u;
              v428 = 0u;
              v429 = 0u;
              v430 = 0u;
              v431 = 0u;
              v432 = 0u;
              v433 = 0;
LABEL_157:
              sub_1D6D09524(&v424, &unk_1EDF34F60, &type metadata for FeedTag, MEMORY[0x1E69E6720]);
              goto LABEL_158;
            }

            v157 = 0;
            v158 = v110 + 32;
            while (1)
            {
              if (v157 >= *(v110 + 16))
              {
                goto LABEL_276;
              }

              *&v411 = v157;
              sub_1D5EE5AF8(v158, &v411 + 8);
              if (!*v412)
              {
                goto LABEL_101;
              }

              v151 = v411;
              v411 = __PAIR128__(*v412, *(&v411 + 1));
              *v412 = *&v412[8];
              *&v412[16] = *&v412[24];
              *&v412[32] = *&v412[40];
              *&v412[48] = *&v412[56];
              *&v412[64] = *&v412[72];
              *&v412[80] = *&v412[88];
              *&v412[96] = *&v412[104];
              *&v412[112] = *&v412[120];
              v412[128] = v413;
              swift_getObjectType();
              FCTagProviding.traits.getter(&v414);
              if ((v395 & ~v414) == 0)
              {
                break;
              }

              ++v157;
              sub_1D5EE5B54(&v411);
              v158 += 152;
              v98 = v396;
              if (v156 == v157)
              {
                goto LABEL_101;
              }
            }

            *&v414 = v110;
LABEL_126:
            sub_1D5EC20BC(v151, &v398);
            sub_1D5EE5B54(&v411);

            v430 = v404;
            v431 = v405;
            v432 = v406;
            v433 = v407;
            v426 = v400;
            v427 = v401;
            v428 = v402;
            v429 = v403;
            v424 = v398;
            v425 = v399;
            v104 = v359;
          }

          v177 = v385;
          v98 = v396;
LABEL_150:
          if (*(&v424 + 1))
          {
            v440 = v430;
            v441 = v431;
            v442 = v432;
            v443 = v433;
            v436 = v426;
            v437 = v427;
            v438 = v428;
            v439 = v429;
            v434 = v424;
            v435 = v425;
            swift_getObjectType();
            v202 = FCTagProviding.traits.getter(&v398);
            if ((v398 & 0x1000) != 0)
            {
              if (__OFADD__(v362, 1))
              {
                goto LABEL_285;
              }

              *&v394[v361] = v362 + 1;
            }

            if (v177)
            {
              v204 = v390;
              v188 = v382;
              v205 = v363;
            }

            else
            {
              v204 = v390;
              MEMORY[0x1EEE9AC00](v202, v203);
              *(&v356 - 2) = &v434;
              v205 = sub_1D5BF5F6C(sub_1D6D09B90, (&v356 - 4), v363);
              v359 = v104;
              v188 = v382;
            }

            *&v398 = 0x67615464656546;
            *(&v398 + 1) = 0xE700000000000000;
            *&v399 = v456;
            *(&v399 + 1) = v396;
            sub_1D5BDACA8(&v398, v205);

            swift_setDeallocating();
            swift_deallocClassInstance();

            v452 = v440;
            v453 = v441;
            v454 = v442;
            v455 = v443;
            v448 = v436;
            v449 = v437;
            v450 = v438;
            v451 = v439;
            v446 = v434;
            v447 = v435;
            v207 = *(&v434 + 1);
            v183 = v434;
            v208 = v380;
            v363 = sub_1D6196E44(v380, 42, 0xE100000000000000, v434, *(&v434 + 1));
            v445 = v363;
            v386 = v207;
            v187 = sub_1D6196F00(v208, 42, 0xE100000000000000, v183, v207);
            v444 = v187;
            if (*(v208 + 16))
            {
              v209 = sub_1D5B69D90(42, 0xE100000000000000);
              v138 = v394;
              v194 = v204;
              if ((v210 & 1) == 0 || (v211 = *(*(*(v208 + 56) + 8 * v209) + 136), !*(v211 + 16)))
              {

                goto LABEL_170;
              }

              v212 = sub_1D5B69D90(v183, v386);
              if ((v213 & 1) == 0)
              {

                goto LABEL_169;
              }

              v214 = (*(v211 + 56) + 48 * v212);
              v215 = v214[1];
              v396 = *v214;
              v380 = v183;
              v216 = v214[2];
              v217 = v214[3];
              v391 = v214[4];
              v218 = v214[5];
              v456 = v215;

              v395 = v216;

              v393 = v217;
              v183 = v380;

              v389 = v218;
              v194 = v204;

LABEL_165:
            }

            else
            {

              v396 = 0;
              v456 = 0;
              v395 = 0;
              v393 = 0;
              v391 = 0;
              v389 = 0;
              v138 = v394;
              v194 = v204;
            }

LABEL_171:
            *(&v399 + 1) = &type metadata for FeedTag;
            v219 = sub_1D5EE5BA8();
            *&v400 = v219;
            *&v398 = swift_allocObject();
            sub_1D5EE5AF8(&v446, v398 + 16);
            sub_1D6818590(&v398, v188);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload != 8)
            {
              if (EnumCaseMultiPayload == 4)
              {
                v221 = v188;
                v188 = v370;
                sub_1D6D0A058(v221, v370, type metadata accessor for FeedWebEmbed);
                v222 = sub_1D6944620();
                sub_1D5D505F0(v222);
                v223 = sub_1D69449D8();
                sub_1D5B886D0(v223);
                v224 = type metadata accessor for FeedWebEmbed;
              }

              else
              {
                v224 = type metadata accessor for FeedItem;
              }

              sub_1D6D0A444(v188, v224);
              v236 = v385;
              goto LABEL_180;
            }

            v362 = v219;
            v225 = v376;
            sub_1D6D0A058(v188, v376, type metadata accessor for FeedCustomItem);
            v226 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
            swift_beginAccess();
            v227 = *(v226 + 8);
            v228 = v225 + *(v371 + 20);
            v230 = *(v228 + 16);
            v229 = *(v228 + 24);
            if (*(v227 + 16))
            {

              v231 = sub_1D5B69D90(v230, v229);
              if (v232)
              {
                v380 = v183;
                v233 = v365;
                sub_1D6D09934(*(v227 + 56) + *(v364 + 72) * v231, v365, sub_1D6AC4E74);
                v234 = *(v233 + 48);
                v436 = *(v233 + 32);
                v437 = v234;
                v438 = *(v233 + 64);
                LOBYTE(v439) = *(v233 + 80);
                v235 = *(v233 + 16);
                v434 = *v233;
                v435 = v235;
                sub_1D62B7D1C(&v434, &v424);
                sub_1D6D0A444(v233, sub_1D6AC4E74);

                *&v412[16] = v436;
                *&v412[32] = v437;
                *&v412[48] = v438;
                v412[64] = v439;
                v411 = v434;
                *v412 = v435;
                if (v439 >> 6 <= 1u)
                {
                  sub_1D67F58E4(v396, v456);

                  v400 = *&v412[16];
                  v401 = *&v412[32];
                  v402 = *&v412[48];
                  LOBYTE(v403) = v412[64];
                  v398 = v411;
                  v399 = *v412;
LABEL_236:
                  type metadata accessor for FormatLayoutError(0);
                  sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                  swift_allocError();
                  *v318 = v230;
                  v318[1] = v229;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();

                  sub_1D6D09524(&v398, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
                  sub_1D5EE5B54(&v446);
                  sub_1D6D0A444(v376, type metadata accessor for FeedCustomItem);
                  return;
                }

                LODWORD(v365) = v439;
                v357 = *(&v436 + 1);
                v319 = v436;
                v360 = *(&v437 + 1);
                v358 = v437;
                v364 = *(&v438 + 1);
                v361 = v438;
                *&v424 = v436;
                sub_1D6D098B8(0);
                sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
                sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);

                v320 = sub_1D72623BC();
                v321 = *(v228 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
                v322 = *(v321 + 16);
                v370 = v319;
                v392 = v322;
                if (v322)
                {
                  v323 = 0;
                  v371 = (*(v384 + 80) + 32) & ~*(v384 + 80);
                  v381 = v321;
                  v382 = (v321 + v371);
                  do
                  {
                    v325 = v383;
                    if (v323 >= *(v321 + 16))
                    {
                      goto LABEL_282;
                    }

                    v326 = *(v384 + 72);
                    sub_1D6D09934(&v382[v326 * v323], v383, type metadata accessor for FormatOption);
                    if (*(v320 + 16) && (v327 = sub_1D5B69D90(*v325, v325[1]), (v328 & 1) != 0))
                    {
                      v329 = v367;
                      sub_1D6D09934(*(v320 + 56) + *(v374 + 72) * v327, v367, type metadata accessor for FormatPropertyDefinition);
                      v330 = v369;
                      sub_1D6D0A058(v329, v369, type metadata accessor for FormatPropertyDefinition);
                      type metadata accessor for FormatOptionConverter();
                      v331 = v366;
                      v332 = v359;
                      sub_1D6AC31AC(v325, v330, v366);
                      v359 = v332;
                      if (v332)
                      {

                        sub_1D67F58E4(v396, v456);
                        sub_1D60CF6F4(v370, v357, v358, v360, v361, v364, v365);
                        sub_1D62B7D78(&v434);
                        sub_1D6D0A444(v369, type metadata accessor for FormatPropertyDefinition);

                        sub_1D5EE5B54(&v446);
                        sub_1D6D0A444(v325, type metadata accessor for FormatOption);
                        sub_1D6D0A444(v376, type metadata accessor for FeedCustomItem);

                        return;
                      }

                      sub_1D6D09934(v331, v368, type metadata accessor for FormatOption);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v187 = sub_1D5CEABA0(0, v187[2] + 1, 1, v187);
                      }

                      v183 = v380;
                      v334 = v187[2];
                      v333 = v187[3];
                      v335 = v334 + 1;
                      if (v334 >= v333 >> 1)
                      {
                        v187 = sub_1D5CEABA0((v333 > 1), v334 + 1, 1, v187);
                      }

                      sub_1D6D0A444(v331, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v369, type metadata accessor for FormatPropertyDefinition);
                      v324 = v368;
                    }

                    else
                    {
                      sub_1D6D09934(v325, v377, type metadata accessor for FormatOption);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v187 = sub_1D5CEABA0(0, v187[2] + 1, 1, v187);
                      }

                      v183 = v380;
                      v334 = v187[2];
                      v336 = v187[3];
                      v335 = v334 + 1;
                      if (v334 >= v336 >> 1)
                      {
                        v187 = sub_1D5CEABA0((v336 > 1), v334 + 1, 1, v187);
                      }

                      v324 = v377;
                    }

                    ++v323;
                    sub_1D6D0A444(v383, type metadata accessor for FormatOption);
                    v187[2] = v335;
                    sub_1D6D0A058(v324, v187 + v371 + v334 * v326, type metadata accessor for FormatOption);
                    v444 = v187;
                    v321 = v381;
                  }

                  while (v392 != v323);

                  v319 = v370;
                }

                else
                {

                  v183 = v380;
                }

                *&v424 = v321;
                sub_1D5B5AD98(0);
                sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
                sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
                v337 = sub_1D72623AC();
                v338 = v373;
                v392 = *(v319 + 16);
                if (!v392)
                {
                  sub_1D60CF6F4(v319, v357, v358, v360, v361, v364, v365);

                  v138 = v394;
LABEL_269:
                  v236 = v385;
                  v219 = v362;
                  sub_1D62B7D78(&v434);
                  sub_1D6D0A444(v376, type metadata accessor for FeedCustomItem);
                  v194 = v390;
LABEL_180:
                  v237 = v445;
                  v238 = v444;
                  v239 = v138[88];
                  v394 = v444;
                  if (v236)
                  {
                    swift_beginAccess();
                    if ((v239 & 1) != 0 || !*(v194[4] + 16) || (, sub_1D5B69D90(v378, v379), v241 = v240, , (v241 & 1) == 0))
                    {
                      v242 = v219;
                      swift_getObjectType();
                      FCTagProviding.traits.getter(&v398);
                      v243 = v398;
                      v244 = *(v194[10] + 16);
                      if (v244)
                      {
                        sub_1D5B69D90(v183, v386);
                        v244 = 0x4000000000;
                        if ((v245 & 1) == 0)
                        {
                          v244 = 0;
                        }
                      }

                      *&v398 = v244 | v243;

                      v246 = sub_1D713CCF4();
                      v392 = v237;
                      v247 = sub_1D5BA8750(v246, v237);

                      sub_1D5EE5AF8(&v446, &v398);
                      ObjectType = swift_getObjectType();
                      v249 = sub_1D5EEDC00(0, 0xE000000000000000, ObjectType);
                      sub_1D5EE5B54(&v398);
                      v250 = sub_1D5BA8750(v249, v247);

                      *(&v435 + 1) = &type metadata for FeedTag;
                      *&v436 = v242;
                      *&v434 = swift_allocObject();
                      sub_1D5EE5AF8(&v446, v434 + 16);
                      sub_1D5B68374(&v434, &v411);

                      v251 = v250;
                      if (v456)
                      {
                        v251 = sub_1D5BA8750(&unk_1F50F67F0, v250);
                        sub_1D5BFB68C(&unk_1F50F6810);
                      }

                      v386 = v250;
                      *&v412[24] = v251;
                      v252 = *(v238 + 2);
                      if (v252)
                      {
                        *&v398 = MEMORY[0x1E69E7CC0];
                        sub_1D5D24610(0, v252, 0);
                        v253 = v398;
                        v254 = &v238[(*(v384 + 80) + 32) & ~*(v384 + 80)];
                        v255 = *(v384 + 72);
                        v256 = v252;
                        do
                        {
                          v257 = v387;
                          sub_1D6D09934(v254, v387, type metadata accessor for FormatOption);
                          v258 = swift_allocBox();
                          sub_1D6D0A058(v257, v259, type metadata accessor for FormatOption);
                          *&v398 = v253;
                          v261 = *(v253 + 16);
                          v260 = *(v253 + 24);
                          if (v261 >= v260 >> 1)
                          {
                            sub_1D5D24610((v260 > 1), v261 + 1, 1);
                            v253 = v398;
                          }

                          *(v253 + 16) = v261 + 1;
                          *(v253 + 8 * v261 + 32) = v258 | 0x1000000000000004;
                          v254 += v255;
                          --v256;
                        }

                        while (v256);
                        __swift_destroy_boxed_opaque_existential_1(&v434);
                      }

                      else
                      {
                        __swift_destroy_boxed_opaque_existential_1(&v434);
                        v253 = MEMORY[0x1E69E7CC0];
                      }

                      *&v412[32] = v253;
                      v286 = v396;
                      *&v412[40] = v396;
                      v287 = v456;
                      *&v412[48] = v456;
                      *&v412[56] = v395;
                      *&v412[64] = v393;
                      *&v412[72] = v391;
                      *&v404 = v389;
                      v398 = v411;
                      v399 = *v412;
                      v400 = *&v412[16];
                      v401 = *&v412[32];
                      v402 = *&v412[48];
                      v403 = *&v412[64];
                      v288 = v379;

                      sub_1D67F5880(v286, v287);
                      sub_1D6D60C48(&v398, v378, v288);
                      sub_1D5EE5AF8(&v446, &v411);
                      sub_1D5EE5AF8(&v411, &v398);
                      if (v287)
                      {
                        v289 = sub_1D5BA8750(&unk_1F50F6820, v386);
                        sub_1D5BFB68C(&unk_1F50F6840);
                        v290 = v394;
                      }

                      else
                      {
                        v290 = v394;
                        v289 = v386;
                      }

                      *(&v407 + 1) = v289;
                      if (v252)
                      {
                        *&v434 = MEMORY[0x1E69E7CC0];
                        sub_1D5D24610(0, v252, 0);
                        v296 = v434;
                        v297 = &v290[(*(v384 + 80) + 32) & ~*(v384 + 80)];
                        v298 = *(v384 + 72);
                        do
                        {
                          v299 = v387;
                          sub_1D6D09934(v297, v387, type metadata accessor for FormatOption);
                          v300 = swift_allocBox();
                          sub_1D6D0A058(v299, v301, type metadata accessor for FormatOption);
                          *&v434 = v296;
                          v303 = *(v296 + 16);
                          v302 = *(v296 + 24);
                          if (v303 >= v302 >> 1)
                          {
                            sub_1D5D24610((v302 > 1), v303 + 1, 1);
                            v296 = v434;
                          }

                          *(v296 + 16) = v303 + 1;
                          *(v296 + 8 * v303 + 32) = v300 | 0x1000000000000004;
                          v297 += v298;
                          --v252;
                        }

                        while (v252);
LABEL_230:
                        sub_1D5EE5B54(&v411);
LABEL_232:
                        *&v408 = v296;
                        *(&v408 + 1) = v396;
                        *&v409 = v456;
                        *(&v409 + 1) = v395;
                        *&v410 = v393;
                        *(&v410 + 1) = v391;
                        v311 = v375;
                        *(v375 + 208) = v389;
                        v312 = v405;
                        v311[6] = v404;
                        v311[7] = v312;
                        v313 = v407;
                        v311[8] = v406;
                        v311[9] = v313;
                        v314 = v401;
                        v311[2] = v400;
                        v311[3] = v314;
                        v315 = v403;
                        v311[4] = v402;
                        v311[5] = v315;
                        v316 = v399;
                        *v311 = v398;
                        v311[1] = v316;
                        v317 = v409;
                        v311[10] = v408;
                        v311[11] = v317;
                        v311[12] = v410;
                        swift_endAccess();

                        goto LABEL_233;
                      }

                      goto LABEL_231;
                    }
                  }

                  else
                  {
                    swift_beginAccess();
                    if ((v239 & 1) != 0 || !*(v194[3] + 16) || (, sub_1D5B69D90(v378, v379), v263 = v262, , (v263 & 1) == 0))
                    {
                      v266 = v219;
                      swift_getObjectType();
                      FCTagProviding.traits.getter(&v398);
                      v267 = v398;
                      v268 = *(v194[10] + 16);
                      if (v268)
                      {
                        sub_1D5B69D90(v183, v386);
                        v268 = 0x4000000000;
                        if ((v269 & 1) == 0)
                        {
                          v268 = 0;
                        }
                      }

                      *&v398 = v268 | v267;

                      v270 = sub_1D713CCF4();
                      v392 = v237;
                      v271 = sub_1D5BA8750(v270, v237);

                      sub_1D5EE5AF8(&v446, &v398);
                      v272 = swift_getObjectType();
                      v273 = sub_1D5EEDC00(0, 0xE000000000000000, v272);
                      sub_1D5EE5B54(&v398);
                      v274 = sub_1D5BA8750(v273, v271);

                      *(&v435 + 1) = &type metadata for FeedTag;
                      *&v436 = v266;
                      *&v434 = swift_allocObject();
                      sub_1D5EE5AF8(&v446, v434 + 16);
                      sub_1D5B68374(&v434, &v411);

                      v275 = v274;
                      if (v456)
                      {
                        v275 = sub_1D5BA8750(&unk_1F50F6850, v274);
                        sub_1D5BFB68C(&unk_1F50F6870);
                      }

                      v386 = v274;
                      *&v412[24] = v275;
                      v276 = *(v238 + 2);
                      if (v276)
                      {
                        *&v398 = MEMORY[0x1E69E7CC0];
                        sub_1D5D24610(0, v276, 0);
                        v277 = v398;
                        v278 = &v238[(*(v384 + 80) + 32) & ~*(v384 + 80)];
                        v279 = *(v384 + 72);
                        v280 = v276;
                        do
                        {
                          v281 = v387;
                          sub_1D6D09934(v278, v387, type metadata accessor for FormatOption);
                          v282 = swift_allocBox();
                          sub_1D6D0A058(v281, v283, type metadata accessor for FormatOption);
                          *&v398 = v277;
                          v285 = *(v277 + 16);
                          v284 = *(v277 + 24);
                          if (v285 >= v284 >> 1)
                          {
                            sub_1D5D24610((v284 > 1), v285 + 1, 1);
                            v277 = v398;
                          }

                          *(v277 + 16) = v285 + 1;
                          *(v277 + 8 * v285 + 32) = v282 | 0x1000000000000004;
                          v278 += v279;
                          --v280;
                        }

                        while (v280);
                        __swift_destroy_boxed_opaque_existential_1(&v434);
                      }

                      else
                      {
                        __swift_destroy_boxed_opaque_existential_1(&v434);
                        v277 = MEMORY[0x1E69E7CC0];
                      }

                      *&v412[32] = v277;
                      v291 = v396;
                      *&v412[40] = v396;
                      v292 = v456;
                      *&v412[48] = v456;
                      *&v412[56] = v395;
                      *&v412[64] = v393;
                      *&v412[72] = v391;
                      *&v404 = v389;
                      v398 = v411;
                      v399 = *v412;
                      v400 = *&v412[16];
                      v401 = *&v412[32];
                      v402 = *&v412[48];
                      v403 = *&v412[64];
                      v293 = v379;

                      sub_1D67F5880(v291, v292);
                      sub_1D6D60C48(&v398, v378, v293);
                      sub_1D5EE5AF8(&v446, &v411);
                      sub_1D5EE5AF8(&v411, &v398);
                      if (v292)
                      {
                        v294 = sub_1D5BA8750(&unk_1F50F6880, v386);
                        sub_1D5BFB68C(&unk_1F50F68A0);
                        v295 = v394;
                      }

                      else
                      {
                        v295 = v394;
                        v294 = v386;
                      }

                      *(&v407 + 1) = v294;
                      if (v276)
                      {
                        *&v434 = MEMORY[0x1E69E7CC0];
                        sub_1D5D24610(0, v276, 0);
                        v296 = v434;
                        v304 = &v295[(*(v384 + 80) + 32) & ~*(v384 + 80)];
                        v305 = *(v384 + 72);
                        do
                        {
                          v306 = v387;
                          sub_1D6D09934(v304, v387, type metadata accessor for FormatOption);
                          v307 = swift_allocBox();
                          sub_1D6D0A058(v306, v308, type metadata accessor for FormatOption);
                          *&v434 = v296;
                          v310 = *(v296 + 16);
                          v309 = *(v296 + 24);
                          if (v310 >= v309 >> 1)
                          {
                            sub_1D5D24610((v309 > 1), v310 + 1, 1);
                            v296 = v434;
                          }

                          *(v296 + 16) = v310 + 1;
                          *(v296 + 8 * v310 + 32) = v307 | 0x1000000000000004;
                          v304 += v305;
                          --v276;
                        }

                        while (v276);
                        goto LABEL_230;
                      }

LABEL_231:
                      sub_1D5EE5B54(&v411);
                      v296 = MEMORY[0x1E69E7CC0];
                      goto LABEL_232;
                    }
                  }

                  sub_1D6752B3C();
                  swift_allocError();
                  v264 = v379;
                  *v265 = v378;
                  *(v265 + 8) = v264;
                  *(v265 + 56) = 0;
                  swift_willThrow();
                  swift_endAccess();

                  sub_1D67F58E4(v396, v456);

LABEL_233:

                  sub_1D5EE5B54(&v446);
                  return;
                }

                v339 = 0;
                v383 = (v319 + ((*(v374 + 80) + 32) & ~*(v374 + 80)));
                v340 = (v384 + 56);
                while (1)
                {
                  if (v339 >= *(v319 + 16))
                  {
                    goto LABEL_283;
                  }

                  sub_1D6D09934(v383 + *(v374 + 72) * v339, v338, type metadata accessor for FormatPropertyDefinition);
                  v345 = FormatPropertyDefinition.identifier.getter();
                  if (*(v337 + 16))
                  {
                    v347 = sub_1D5B69D90(v345, v346);
                    v349 = v348;

                    if (v349)
                    {
                      v341 = v384;
                      v342 = v372;
                      sub_1D6D09934(*(v337 + 56) + *(v384 + 72) * v347, v372, type metadata accessor for FormatOption);
                      v338 = v373;
                      sub_1D6D0A444(v373, type metadata accessor for FormatPropertyDefinition);
                      (*(v341 + 56))(v342, 0, 1, v388);
                      v343 = sub_1D5E04C00;
                      v344 = v342;
                      goto LABEL_259;
                    }
                  }

                  else
                  {
                  }

                  v350 = v372;
                  (*v340)(v372, 1, 1, v388);
                  sub_1D6D0A444(v350, sub_1D5E04C00);
                  v338 = v373;
                  if (sub_1D695C4AC())
                  {

                    sub_1D67F58E4(v396, v456);

                    sub_1D60CF6F4(v370, v357, v358, v360, v361, v364, v365);

                    type metadata accessor for FormatLayoutError(0);
                    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                    swift_allocError();
                    v352 = v351;
                    sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
                    v354 = *(v353 + 48);
                    v355 = v376;
                    sub_1D6D09934(v376, v352, type metadata accessor for FeedCustomItem);
                    sub_1D6D09934(v338, v352 + v354, type metadata accessor for FormatPropertyDefinition);
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                    sub_1D62B7D78(&v434);
                    sub_1D6D0A444(v338, type metadata accessor for FormatPropertyDefinition);
                    sub_1D5EE5B54(&v446);
                    sub_1D6D0A444(v355, type metadata accessor for FeedCustomItem);
                    return;
                  }

                  v343 = type metadata accessor for FormatPropertyDefinition;
                  v344 = v338;
LABEL_259:
                  sub_1D6D0A444(v344, v343);
                  v138 = v394;
                  v319 = v370;
                  if (v392 == ++v339)
                  {
                    sub_1D60CF6F4(v370, v357, v358, v360, v361, v364, v365);

                    goto LABEL_269;
                  }
                }
              }
            }

            sub_1D67F58E4(v396, v456);

            LOBYTE(v403) = 0;
            v401 = 0u;
            v402 = 0u;
            v399 = 0u;
            v400 = 0u;
            v398 = 0u;
            goto LABEL_236;
          }

          goto LABEL_157;
        }

LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }
    }

LABEL_158:
    sub_1D5ED8048();
    swift_allocError();
    *v206 = 0x67615464656546;
    *(v206 + 8) = 0xE700000000000000;
    *(v206 + 16) = v456;
    *(v206 + 24) = v98;
    *(v206 + 32) = v395;
    *(v206 + 40) = 1;
    *(v206 + 48) = 0;
    *(v206 + 56) = 0;
    *(v206 + 64) = 0;
    swift_willThrow();

    swift_setDeallocating();
    swift_deallocClassInstance();
    return;
  }

  v363 = v105;
  v359 = 0;
  v106 = v386;
  v107 = *&v72[v386[17]];
  v356 = v386[19];
  v357 = *&v72[v356];
  v108 = v357;
  if (v357 >= v107)
  {
    goto LABEL_51;
  }

  if (*v72)
  {
    v109 = v363;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_1D62F2250(v363);
    v109 = v117;
    v118 = *(v117 + 16);

    v362 = v118;
    if (!v118)
    {
      goto LABEL_50;
    }
  }

  v119 = 0;
  v360 = v395 | 0x1000;
  v120 = v109 + 32;
  do
  {
    if (v119 >= *(v109 + 16))
    {
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

    *&v411 = v119;
    sub_1D5EE5AF8(v120, &v411 + 8);
    if (!*v412)
    {
      break;
    }

    v121 = v411;
    v411 = __PAIR128__(*v412, *(&v411 + 1));
    *v412 = *&v412[8];
    *&v412[16] = *&v412[24];
    *&v412[32] = *&v412[40];
    *&v412[48] = *&v412[56];
    *&v412[64] = *&v412[72];
    *&v412[80] = *&v412[88];
    *&v412[96] = *&v412[104];
    *&v412[112] = *&v412[120];
    v412[128] = v413;
    swift_getObjectType();
    FCTagProviding.traits.getter(&v414);
    if ((v360 & ~v414) == 0)
    {

      *&v414 = v109;
      goto LABEL_105;
    }

    ++v119;
    sub_1D5EE5B54(&v411);
    v120 += 152;
  }

  while (v362 != v119);
  v72 = v394;
  v75 = v396;
  v106 = v386;
LABEL_50:
  swift_bridgeObjectRelease_n();
  v108 = v357;
LABEL_51:
  v122 = *&v72[v106[18]];
  v123 = __OFSUB__(v122, v108);
  v124 = v122 - v108;
  if (v123)
  {
    goto LABEL_280;
  }

  if (v124 < 1)
  {
    if (*v72)
    {
      v130 = v363;
    }

    else
    {
      sub_1D62F2250(v363);
      v130 = v131;
    }

    v132 = *(v130 + 16);

    v362 = v132;
    if (v132)
    {
      v133 = 0;
      v134 = v130 + 32;
      v360 = v130;
      while (1)
      {
        if (v133 >= *(v130 + 16))
        {
          goto LABEL_274;
        }

        *&v411 = v133;
        sub_1D5EE5AF8(v134, &v411 + 8);
        if (!*v412)
        {
          goto LABEL_73;
        }

        v358 = v411;
        v411 = __PAIR128__(*v412, *(&v411 + 1));
        *v412 = *&v412[8];
        *&v412[16] = *&v412[24];
        *&v412[32] = *&v412[40];
        *&v412[48] = *&v412[56];
        *&v412[64] = *&v412[72];
        *&v412[80] = *&v412[88];
        *&v412[96] = *&v412[104];
        *&v412[112] = *&v412[120];
        v412[128] = v413;
        swift_getObjectType();
        FCTagProviding.traits.getter(&v414);
        v135 = v414;
        FCTagProviding.traits.getter(&v414);
        if ((v395 & ~v414) == 0 && (v135 & 0x1000) == 0)
        {
          break;
        }

        ++v133;
        sub_1D5EE5B54(&v411);
        v134 += 152;
        v72 = v394;
        v130 = v360;
        if (v362 == v133)
        {
          goto LABEL_73;
        }
      }

      v136 = v360;

      *&v414 = v136;
      sub_1D5EC20BC(v358, &v398);
      sub_1D5EE5B54(&v411);

      v420 = v404;
      v421 = v405;
      v422 = v406;
      v423 = v407;
      v416 = v400;
      v417 = v401;
      v418 = v402;
      v419 = v403;
      v414 = v398;
      v415 = v399;
      v430 = v404;
      v431 = v405;
      v432 = v406;
      v433 = v407;
      v426 = v400;
      v427 = v401;
      v428 = v402;
      v429 = v403;
      v424 = v398;
      v425 = v399;
      v137 = v359;
      v138 = v394;
      v75 = v396;
    }

    else
    {
LABEL_73:
      swift_bridgeObjectRelease_n();
      v414 = 0u;
      v415 = 0u;
      v416 = 0u;
      v417 = 0u;
      v418 = 0u;
      v419 = 0u;
      v420 = 0u;
      v421 = 0u;
      v422 = 0u;
      v423 = 0;
      v139 = v363;
      if ((*v72 & 1) == 0)
      {
        sub_1D62F2250(v363);
        v141 = v140;

        v139 = v141;
      }

      v142 = *(v139 + 16);
      v143 = v139;

      v75 = v396;
      v363 = v142;
      if (v142)
      {
        v144 = 0;
        v145 = v143 + 32;
        while (1)
        {
          if (v144 >= *(v143 + 16))
          {
            goto LABEL_277;
          }

          *&v411 = v144;
          sub_1D5EE5AF8(v145, &v411 + 8);
          if (!*v412)
          {
            goto LABEL_81;
          }

          v146 = v411;
          v411 = __PAIR128__(*v412, *(&v411 + 1));
          *v412 = *&v412[8];
          *&v412[16] = *&v412[24];
          *&v412[32] = *&v412[40];
          *&v412[48] = *&v412[56];
          *&v412[64] = *&v412[72];
          *&v412[80] = *&v412[88];
          *&v412[96] = *&v412[104];
          *&v412[112] = *&v412[120];
          v412[128] = v413;
          swift_getObjectType();
          FCTagProviding.traits.getter(&v397);
          if ((v395 & ~v397) == 0)
          {
            break;
          }

          ++v144;
          sub_1D5EE5B54(&v411);
          v145 += 152;
          v75 = v396;
          if (v363 == v144)
          {
            goto LABEL_81;
          }
        }

        v397 = v143;
        sub_1D5EC20BC(v146, &v398);
        sub_1D5EE5B54(&v411);

        v430 = v404;
        v431 = v405;
        v432 = v406;
        v433 = v407;
        v426 = v400;
        v427 = v401;
        v428 = v402;
        v429 = v403;
        v424 = v398;
        v425 = v399;
        v75 = v396;
      }

      else
      {
LABEL_81:
        swift_bridgeObjectRelease_n();
        v424 = 0u;
        v425 = 0u;
        v426 = 0u;
        v427 = 0u;
        v428 = 0u;
        v429 = 0u;
        v430 = 0u;
        v431 = 0u;
        v432 = 0u;
        v433 = 0;
      }

      v138 = v394;
      v137 = v359;
      if (*(&v414 + 1))
      {
        sub_1D6D09524(&v414, &unk_1EDF34F60, &type metadata for FeedTag, MEMORY[0x1E69E6720]);
      }
    }

    goto LABEL_131;
  }

  if ((*v72 & 1) == 0)
  {
    sub_1D62F2250(v363);
    v126 = v125;

    v363 = v126;
  }

  v127 = *(v363 + 16);

  if (!v127)
  {
LABEL_61:
    swift_bridgeObjectRelease_n();

    v424 = 0u;
    v425 = 0u;
    v426 = 0u;
    v427 = 0u;
    v428 = 0u;
    v429 = 0u;
    v430 = 0u;
    v431 = 0u;
    v432 = 0u;
    v433 = 0;
LABEL_144:
    sub_1D6D09524(&v424, &unk_1EDF34F60, &type metadata for FeedTag, MEMORY[0x1E69E6720]);
    goto LABEL_13;
  }

  v128 = 0;
  v129 = v363 + 32;
  while (1)
  {
    if (v128 >= *(v363 + 16))
    {
      goto LABEL_273;
    }

    *&v411 = v128;
    sub_1D5EE5AF8(v129, &v411 + 8);
    if (!*v412)
    {
      goto LABEL_61;
    }

    v121 = v411;
    v411 = __PAIR128__(*v412, *(&v411 + 1));
    *v412 = *&v412[8];
    *&v412[16] = *&v412[24];
    *&v412[32] = *&v412[40];
    *&v412[48] = *&v412[56];
    *&v412[64] = *&v412[72];
    *&v412[80] = *&v412[88];
    *&v412[96] = *&v412[104];
    *&v412[112] = *&v412[120];
    v412[128] = v413;
    swift_getObjectType();
    FCTagProviding.traits.getter(&v414);
    if ((v395 & ~v414) == 0)
    {
      break;
    }

    ++v128;
    sub_1D5EE5B54(&v411);
    v129 += 152;
    v75 = v396;
    if (v127 == v128)
    {
      goto LABEL_61;
    }
  }

  v161 = v363;

  *&v414 = v161;
LABEL_105:
  sub_1D5EC20BC(v121, &v398);
  sub_1D5EE5B54(&v411);

  v430 = v404;
  v431 = v405;
  v432 = v406;
  v433 = v407;
  v426 = v400;
  v427 = v401;
  v428 = v402;
  v429 = v403;
  v424 = v398;
  v425 = v399;
  v138 = v394;
  v75 = v396;
  v137 = v359;
LABEL_131:
  if (!*(&v424 + 1))
  {

    goto LABEL_144;
  }

  v440 = v430;
  v441 = v431;
  v442 = v432;
  v443 = v433;
  v436 = v426;
  v437 = v427;
  v438 = v428;
  v439 = v429;
  v434 = v424;
  v435 = v425;
  swift_getObjectType();
  v178 = FCTagProviding.traits.getter(&v398);
  v180 = v385;
  if ((v398 & 0x1000) == 0)
  {
    goto LABEL_135;
  }

  if (!__OFADD__(v357, 1))
  {
    *&v138[v356] = v357 + 1;
LABEL_135:
    v181 = v361;
    if ((v180 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v178, v179);
      *(&v356 - 2) = &v434;
      v181 = sub_1D5BF5F6C(sub_1D6D0A568, (&v356 - 4), v181);
      v359 = v137;
    }

    *&v398 = 0x67615464656546;
    *(&v398 + 1) = 0xE700000000000000;
    *&v399 = v456;
    *(&v399 + 1) = v75;
    sub_1D5BDACA8(&v398, v181);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v452 = v440;
    v453 = v441;
    v454 = v442;
    v455 = v443;
    v448 = v436;
    v449 = v437;
    v450 = v438;
    v451 = v439;
    v446 = v434;
    v447 = v435;
    v182 = *(&v434 + 1);
    v183 = v434;
    v184 = v380;
    v185 = v392;
    v186 = v393;
    v363 = sub_1D6196E44(v380, v393, v392, v434, *(&v434 + 1));
    v445 = v363;
    v386 = v182;
    v187 = sub_1D6196F00(v184, v186, v185, v183, v182);
    v444 = v187;
    v188 = v382;
    if (v185)
    {
      v189 = v185;
      v190 = v390;
      if (*(v184 + 16) && (v191 = sub_1D5B69D90(v186, v189), (v192 & 1) != 0))
      {
        v193 = *(*(*(v184 + 56) + 8 * v191) + 136);
        v194 = v190;
        if (*(v193 + 16))
        {

          v195 = sub_1D5B69D90(v183, v386);
          if (v196)
          {
            v197 = (*(v193 + 56) + 48 * v195);
            v198 = v197[1];
            v396 = *v197;
            v380 = v183;
            v199 = v197[2];
            v200 = v197[3];
            v201 = v197[5];
            v391 = v197[4];
            v456 = v198;

            v395 = v199;

            v393 = v200;
            v183 = v380;

            v389 = v201;
            v194 = v190;

            goto LABEL_165;
          }

LABEL_169:
        }

LABEL_170:
        v396 = 0;
        v456 = 0;
        v395 = 0;
        v393 = 0;
        v391 = 0;
        v389 = 0;
      }

      else
      {
        v396 = 0;
        v456 = 0;
        v395 = 0;
        v393 = 0;
        v391 = 0;
        v389 = 0;
        v194 = v190;
      }
    }

    else
    {
      v396 = 0;
      v456 = 0;
      v395 = 0;
      v393 = 0;
      v391 = 0;
      v389 = 0;
      v194 = v390;
    }

    goto LABEL_171;
  }

LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
}

void sub_1D6CF7EAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v389 = a8;
  v375 = a6;
  v376 = a7;
  v391 = a5;
  v479 = a3;
  v379 = a2;
  v390 = a1;
  v373 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v370 = &v348 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatPropertyDefinition(0);
  v372 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v365 = &v348 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v367 = &v348 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v348 - v25;
  v387 = type metadata accessor for FormatOption(0);
  v381 = *(v387 - 8);
  MEMORY[0x1EEE9AC00](v387, v27);
  v366 = &v348 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v364 = &v348 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v348 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v348 - v38);
  MEMORY[0x1EEE9AC00](v40, v41);
  v386 = &v348 - v42;
  sub_1D6AC4E74(0);
  v362 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v363 = &v348 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v369, v46);
  v374 = &v348 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v368 = &v348 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v377, v51);
  v53 = &v348 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = v12;
  v54 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v55 = *(v54 + 16);
  v380 = v39;
  v361 = v35;
  v378 = v53;
  v56 = 0;
  if (v55)
  {
    v57 = (v54 + 32);
    do
    {
      v58 = *v57++;
      v59 = qword_1D7349118[v58];
      if ((v59 & ~v56) == 0)
      {
        v59 = 0;
      }

      v56 |= v59;
      --v55;
    }

    while (v55);
  }

  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  sub_1D6D09E8C(0, &qword_1EDF155B8, &type metadata for FeedIssue, type metadata accessor for FeedItemSorter);
  v385 = v61;
  v62 = swift_allocObject();
  *(v62 + 16) = MEMORY[0x1E69E7CC0];
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1D6D096B0;
  *(v63 + 24) = v60;
  swift_beginAccess();
  v64 = *(v62 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v62 + 16) = v64;
  v371 = v26;
  v392 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v64 = sub_1D69910F0(0, v64[2] + 1, 1, v64);
    *(v62 + 16) = v64;
  }

  v67 = v64[2];
  v66 = v64[3];
  if (v67 >= v66 >> 1)
  {
    v64 = sub_1D69910F0((v66 > 1), v67 + 1, 1, v64);
  }

  v382 = a11;
  v68 = a10;
  v64[2] = v67 + 1;
  v69 = &v64[2 * v67];
  v69[4] = sub_1D6D096B4;
  v69[5] = v63;
  *(v62 + 16) = v64;
  swift_endAccess();

  v383 = type metadata accessor for GroupLayoutBindingContext(0);
  v70 = v390;
  v71 = *(v390 + v383[14]);
  v72 = *(v71 + 16);
  v73 = v392;

  if (v72)
  {
    v74 = sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, v479, v73);
    if (v75)
    {
      if (*(*(*(v71 + 56) + 8 * v74) + 16))
      {

        v77 = v384;
        v78 = sub_1D5BF08EC(v76, v389, a10);
        if (v77)
        {

          v79 = v77;
          goto LABEL_17;
        }

        v384 = v76;
        v104 = sub_1D714E90C(v78);

        if (v104)
        {
          if (*(v104 + 16))
          {
            v105 = v383;
            v106 = *(v70 + v383[17]);
            v107 = v70;
            v360 = v383[19];
            v108 = *(v70 + v360);
            if (v108 < v106)
            {
              sub_1D6D02DC4(v104, v391 | 0x1000, v62, 0, 1, 1, &v453);
              v465[2] = v458;
              v465[3] = v459[0];
              v465[4] = v459[1];
              v466 = v460;
              v463 = v455[0];
              v464 = v455[1];
              v465[0] = v456;
              v465[1] = v457;
              v461 = v453;
              v462 = v454;
              if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) != 1)
              {

                v450 = v458;
                v451[0] = v459[0];
                *(v451 + 9) = *(v459 + 9);
                v447[0] = v455[0];
                v447[1] = v455[1];
                v449 = v457;
                v448 = v456;
                v446 = v454;
                v445 = v453;
                nullsub_1();
                v469[2] = v450;
                v469[3] = v451[0];
                *(&v469[3] + 9) = *(v451 + 9);
                v468[1] = v447[0];
                v468[2] = v447[1];
                v469[1] = v449;
                v469[0] = v448;
                v112 = v446;
                v113 = v445;
                goto LABEL_63;
              }

              v450 = v458;
              v451[0] = v459[0];
              v451[1] = v459[1];
              v452 = v460;
              v447[0] = v455[0];
              v447[1] = v455[1];
              v448 = v456;
              v449 = v457;
              v445 = v453;
              v446 = v454;
              sub_1D6D0983C(&v445, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
              v107 = v390;
              v105 = v383;
            }

            v109 = *(v107 + v105[18]);
            v110 = __OFSUB__(v109, v108);
            v111 = v109 - v108;
            if (v110)
            {
              __break(1u);
LABEL_260:
              __break(1u);
LABEL_261:
              __break(1u);
LABEL_262:
              __break(1u);
              goto LABEL_263;
            }

            if (v111 >= 1)
            {
              sub_1D6D02DC4(v104, v391, v62, 0, 1, 1, &v453);

              v465[2] = v458;
              v465[3] = v459[0];
              v465[4] = v459[1];
              v466 = v460;
              v463 = v455[0];
              v464 = v455[1];
              v465[0] = v456;
              v465[1] = v457;
              v461 = v453;
              v462 = v454;
              if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) == 1)
              {
                v450 = v458;
                v451[0] = v459[0];
                v451[1] = v459[1];
                v452 = v460;
                v447[0] = v455[0];
                v447[1] = v455[1];
                v448 = v456;
                v449 = v457;
                v445 = v453;
                v446 = v454;
                sub_1D6D0983C(&v445, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
                sub_1D5D62850(&v436);
                v469[2] = v442;
                v469[3] = v443[0];
                *(&v469[3] + 9) = *(v443 + 9);
                v468[1] = v438;
                v468[2] = v439;
                v469[1] = v441;
                v469[0] = v440;
                v112 = v437;
                v113 = v436;
LABEL_63:
                v468[0] = v112;
                v467 = v113;
                goto LABEL_75;
              }

              v469[2] = v458;
              v469[3] = v459[0];
              *(&v469[3] + 9) = *(v459 + 9);
              v468[1] = v455[0];
              v468[2] = v455[1];
              v469[1] = v457;
              v469[0] = v456;
              v468[0] = v454;
              v467 = v453;
              nullsub_1();
LABEL_75:
              v465[2] = v469[2];
              v465[3] = v469[3];
              *(&v465[3] + 9) = *(&v469[3] + 9);
              v463 = v468[1];
              v464 = v468[2];
              v465[1] = v469[1];
              v465[0] = v469[0];
              v462 = v468[0];
              v461 = v467;
              if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) == 1)
              {

                v458 = v469[2];
                v459[0] = v469[3];
                *(v459 + 9) = *(&v469[3] + 9);
                v455[0] = v468[1];
                v455[1] = v468[2];
                v457 = v469[1];
                v456 = v469[0];
                v454 = v468[0];
                v453 = v467;
                sub_1D6D09524(&v453, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720]);
                goto LABEL_77;
              }

              v472 = *(v468 + 8);
              v473 = *(&v468[1] + 8);
              v131 = *&v468[0];
              *&v476[16] = *(&v469[1] + 1);
              *&v476[32] = *(&v469[2] + 1);
              *&v476[48] = *(&v469[3] + 1);
              *&v476[64] = *(&v469[4] + 1);
              *v476 = *(v469 + 1);
              v470 = v467;
              v385 = *(&v467 + 1);
              v471 = *&v468[0];
              v358 = *(&v468[2] + 1);
              v474 = *(&v468[2] + 1);
              v475 = v469[0];
              LODWORD(v383) = LOBYTE(v469[0]);
              v391 = v467;
              if (v469[0])
              {
                v132 = FCIssue.issueCoverModel.getter(&v445);
                *(v455 + 9) = *(v447 + 9);
                v453 = v445;
                v454 = v446;
                v455[0] = v447[0];
                v134 = v379;
                if (BYTE8(v447[1]) < 2u)
                {
                  v132 = sub_1D619CBDC(&v453);
                }
              }

              else
              {
                v132 = FCIssue.issueCoverModel.getter(&v445);
                *(v455 + 9) = *(v447 + 9);
                v453 = v445;
                v454 = v446;
                v455[0] = v447[0];
                v134 = v379;
                if (BYTE8(v447[1]) < 2u)
                {
                  v132 = sub_1D619CBDC(&v453);
                }

                if (__OFADD__(v108, 1))
                {
LABEL_263:
                  __break(1u);
                  goto LABEL_264;
                }

                *(v390 + v360) = v108 + 1;
              }

              v135 = v384;
              v359 = v131;
              if (v382)
              {
                v384 = 0;
              }

              else
              {
                MEMORY[0x1EEE9AC00](v132, v133);
                *(&v348 - 2) = &v470;
                v137 = sub_1D5BF5F6C(sub_1D6D0A530, (&v348 - 4), v136);
                v384 = 0;
                v135 = v137;
              }

              *&v453 = 0x7573734964656546;
              *(&v453 + 1) = 0xE900000000000065;
              *&v454 = v479;
              *(&v454 + 1) = v392;
              sub_1D5BDACA8(&v453, v135);

              v138 = v472;
              v139 = BYTE1(v472);
              v357 = *(&v472 + 1);
              LODWORD(v356) = v473;
              v354 = *(&v473 + 1);
              v355 = *&v476[23];
              v352 = *&v476[7];
              v353 = *&v476[55];
              v350 = *&v476[39];
              v351 = v476[71];
              v140 = v359;

              v141 = v389;
              v142 = v385;
              v143 = sub_1D6196E44(v134, v389, a10, v385, v140);

              v348 = v143;
              v478 = v143;

              v144 = sub_1D6196F00(v134, v141, a10, v142, v140);

              v349 = v144;
              v477 = v144;
              if (a10)
              {
                v145 = v138;
                if (*(v134 + 16))
                {
                  v146 = v359;

                  v147 = sub_1D5B69D90(v141, a10);
                  v148 = v139;
                  if (v149)
                  {
                    v150 = *(*(*(v134 + 56) + 8 * v147) + 136);
                    v151 = v390;
                    if (*(v150 + 16))
                    {

                      v146 = v359;
                      v152 = sub_1D5B69D90(v385, v359);
                      v154 = v153;

                      if (v154)
                      {
                        v155 = (*(v150 + 56) + 48 * v152);
                        v68 = *v155;
                        v156 = v155[1];
                        v157 = v155[2];
                        v158 = v155[3];
                        v159 = v155[5];
                        v379 = v155[4];
                        v479 = v156;

                        v392 = v157;

                        v389 = v158;

                        v360 = v159;
                      }

                      else
                      {

                        v68 = 0;
                        v479 = 0;
                        v392 = 0;
                        v389 = 0;
                        v379 = 0;
                        v360 = 0;
                      }

                      v151 = v390;
                    }

                    else
                    {
                      v146 = v359;

                      v68 = 0;
                      v479 = 0;
                      v392 = 0;
                      v389 = 0;
                      v379 = 0;
                      v360 = 0;
                    }

                    v160 = v358;
                  }

                  else
                  {

                    v68 = 0;
                    v479 = 0;
                    v392 = 0;
                    v389 = 0;
                    v379 = 0;
                    v360 = 0;
                    v160 = v358;
                    v151 = v390;
                  }

                  goto LABEL_127;
                }

                v68 = 0;
                v479 = 0;
                v392 = 0;
                v389 = 0;
                v379 = 0;
                v360 = 0;
                v160 = v358;
              }

              else
              {
                v479 = 0;
                v392 = 0;
                v389 = 0;
                v379 = 0;
                v360 = 0;
                v160 = v358;
                v145 = v138;
              }

              v148 = v139;
              v151 = v390;
              v146 = v359;
LABEL_127:
              v184 = v357;
              v185 = v356;
              v187 = v354;
              v190 = v351;
              v183 = v391;
              v186 = v355;
              v189 = v352;
              v188 = v353;
LABEL_128:
              v391 = v183;
              *&v461 = v183;
              *(&v461 + 1) = v385;
              *&v462 = v146;
              BYTE8(v462) = v145;
              BYTE9(v462) = v148;
              *&v463 = v184;
              BYTE8(v463) = v185;
              *&v464 = v187;
              *(&v464 + 1) = v160;
              LOBYTE(v465[0]) = v383 & 1;
              *(v465 + 8) = v189;
              *(&v465[1] + 8) = v186;
              *(&v465[2] + 8) = v350;
              *(&v465[3] + 8) = v188;
              BYTE8(v465[4]) = v190;
              *(&v446 + 1) = &type metadata for FeedIssue;
              v191 = sub_1D5EE5AA4();
              *&v447[0] = v191;
              v192 = swift_allocObject();
              *&v445 = v192;
              v193 = v465[3];
              v192[7] = v465[2];
              v192[8] = v193;
              *(v192 + 137) = *(&v465[3] + 9);
              v194 = v464;
              v192[3] = v463;
              v192[4] = v194;
              v195 = v465[1];
              v192[5] = v465[0];
              v192[6] = v195;
              v196 = v462;
              v192[1] = v461;
              v192[2] = v196;
              sub_1D5ECF2C4(&v461, &v453);
              v197 = v378;
              sub_1D6818590(&v445, v378);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v359 = v191;
              if (EnumCaseMultiPayload != 8)
              {
                if (EnumCaseMultiPayload == 4)
                {
                  v199 = v197;
                  v197 = v368;
                  sub_1D6D0A058(v199, v368, type metadata accessor for FeedWebEmbed);
                  v200 = sub_1D6944620();
                  sub_1D5D505F0(v200);
                  v201 = sub_1D69449D8();
                  sub_1D5B886D0(v201);
                  v202 = type metadata accessor for FeedWebEmbed;
                }

                else
                {
                  v202 = type metadata accessor for FeedItem;
                }

                sub_1D6D0A444(v197, v202);
                v216 = v384;
                goto LABEL_138;
              }

              v203 = v374;
              sub_1D6D0A058(v197, v374, type metadata accessor for FeedCustomItem);
              v204 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
              swift_beginAccess();
              v205 = *(v204 + 8);
              v206 = v203 + *(v369 + 20);
              v208 = *(v206 + 16);
              v207 = *(v206 + 24);
              if (*(v205 + 16))
              {

                v209 = sub_1D5B69D90(v208, v207);
                if (v210)
                {
                  v211 = v363;
                  sub_1D6D09934(*(v205 + 56) + *(v362 + 72) * v209, v363, sub_1D6AC4E74);
                  v212 = *(v211 + 48);
                  v438 = *(v211 + 32);
                  v439 = v212;
                  v440 = *(v211 + 64);
                  LOBYTE(v441) = *(v211 + 80);
                  v213 = *(v211 + 16);
                  v436 = *v211;
                  v437 = v213;
                  sub_1D62B7D1C(&v436, &v427);
                  sub_1D6D0A444(v211, sub_1D6AC4E74);

                  v447[0] = v438;
                  v447[1] = v439;
                  v448 = v440;
                  LOBYTE(v449) = v441;
                  v214 = v441 >> 6;
                  v445 = v436;
                  v446 = v437;
                  if (!v214 || (v215 = v349, v214 == 1))
                  {
                    sub_1D67F58E4(v68, v479);

                    v455[0] = v447[0];
                    v455[1] = v447[1];
                    v456 = v448;
                    LOBYTE(v457) = v449;
                    v453 = v445;
                    v454 = v446;
                    goto LABEL_221;
                  }

                  LODWORD(v357) = v441;
                  *&v352 = *(&v438 + 1);
                  v305 = v438;
                  v354 = *(&v439 + 1);
                  *&v353 = v439;
                  v356 = *(&v440 + 1);
                  *&v355 = v440;
                  *&v427 = v438;
                  sub_1D6D098B8(0);
                  sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
                  sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
                  v362 = v305;

                  v306 = sub_1D72623BC();
                  v307 = *(v206 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
                  v378 = *(v307 + 16);
                  v358 = v68;
                  if (v378)
                  {
                    v308 = 0;
                    v363 = (*(v381 + 80) + 32) & ~*(v381 + 80);
                    v368 = v307;
                    v369 = v307 + v363;
                    v309 = v361;
                    v377 = v306;
                    do
                    {
                      v311 = v380;
                      if (v308 >= *(v307 + 16))
                      {
                        goto LABEL_260;
                      }

                      v312 = *(v381 + 72);
                      sub_1D6D09934(v369 + v312 * v308, v380, type metadata accessor for FormatOption);
                      if (*(v306 + 16) && (v313 = sub_1D5B69D90(*v311, v311[1]), (v314 & 1) != 0))
                      {
                        v349 = v215;
                        v315 = v309;
                        v316 = *(v306 + 56) + *(v372 + 72) * v313;
                        v317 = v365;
                        sub_1D6D09934(v316, v365, type metadata accessor for FormatPropertyDefinition);
                        v318 = v367;
                        sub_1D6D0A058(v317, v367, type metadata accessor for FormatPropertyDefinition);
                        type metadata accessor for FormatOptionConverter();
                        v319 = v364;
                        v320 = v384;
                        sub_1D6AC31AC(v311, v318, v364);
                        v384 = v320;
                        if (v320)
                        {

                          sub_1D60CF6F4(v362, v352, v353, v354, v355, v356, v357);
                          sub_1D62B7D78(&v436);
                          sub_1D67F58E4(v358, v479);
                          sub_1D5ECF320(&v461);
                          sub_1D6D0A444(v367, type metadata accessor for FormatPropertyDefinition);

                          sub_1D6D0A444(v311, type metadata accessor for FormatOption);
                          sub_1D6D0A444(v374, type metadata accessor for FeedCustomItem);

                          return;
                        }

                        sub_1D6D09934(v319, v366, type metadata accessor for FormatOption);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v349 = sub_1D5CEABA0(0, v349[2] + 1, 1, v349);
                        }

                        v309 = v315;
                        v215 = v349;
                        v322 = v349[2];
                        v321 = v349[3];
                        v323 = v322 + 1;
                        if (v322 >= v321 >> 1)
                        {
                          v215 = sub_1D5CEABA0((v321 > 1), v322 + 1, 1, v349);
                        }

                        sub_1D6D0A444(v319, type metadata accessor for FormatOption);
                        sub_1D6D0A444(v367, type metadata accessor for FormatPropertyDefinition);
                        v310 = v366;
                      }

                      else
                      {
                        sub_1D6D09934(v311, v309, type metadata accessor for FormatOption);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v215 = sub_1D5CEABA0(0, v215[2] + 1, 1, v215);
                        }

                        v322 = v215[2];
                        v324 = v215[3];
                        v323 = v322 + 1;
                        if (v322 >= v324 >> 1)
                        {
                          v215 = sub_1D5CEABA0((v324 > 1), v322 + 1, 1, v215);
                        }

                        v310 = v309;
                      }

                      ++v308;
                      sub_1D6D0A444(v380, type metadata accessor for FormatOption);
                      v215[2] = v323;
                      sub_1D6D0A058(v310, v215 + v363 + v322 * v312, type metadata accessor for FormatOption);
                      v477 = v215;
                      v306 = v377;
                      v307 = v368;
                    }

                    while (v378 != v308);

                    v68 = v358;
                  }

                  else
                  {
                  }

                  *&v427 = v307;
                  sub_1D5B5AD98(0);
                  sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
                  sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
                  v325 = sub_1D72623AC();
                  v326 = v362;
                  v216 = v384;
                  v380 = *(v362 + 16);
                  if (!v380)
                  {
                    sub_1D60CF6F4(v362, v352, v353, v354, v355, v356, v357);

LABEL_256:
                    sub_1D62B7D78(&v436);
                    sub_1D6D0A444(v374, type metadata accessor for FeedCustomItem);
                    v151 = v390;
LABEL_138:
                    v217 = v478;
                    v218 = *(v151 + 88);
                    v390 = v477;
                    if (v382)
                    {
                      swift_beginAccess();
                      if ((v218 & 1) != 0 || !*(v388[4] + 16) || (, sub_1D5B69D90(v375, v376), v220 = v219, , (v220 & 1) == 0))
                      {
                        if (v383)
                        {
                          FCIssue.issueCoverModel.getter(&v453);
                          if (!BYTE8(v455[1]))
                          {
                            v221 = 64;
                            goto LABEL_166;
                          }

                          if (BYTE8(v455[1]) == 1)
                          {
                            v221 = 16448;
LABEL_166:
                            sub_1D619CBDC(&v453);
                            goto LABEL_167;
                          }

                          v221 = 0;
                        }

                        else
                        {
                          FCIssue.issueCoverModel.getter(&v453);
                          if (!BYTE8(v455[1]))
                          {
                            v221 = 4160;
                            goto LABEL_166;
                          }

                          if (BYTE8(v455[1]) == 1)
                          {
                            v221 = 20544;
                            goto LABEL_166;
                          }

                          v221 = 4096;
                        }

LABEL_167:
                        v229 = *(v388[10] + 16);
                        if (v229)
                        {
                          sub_1D5B69D90(v385, v146);
                          v229 = 0x4000000000;
                          if ((v230 & 1) == 0)
                          {
                            v229 = 0;
                          }
                        }

                        *&v453 = v229 | v221;

                        v231 = sub_1D713CCF4();
                        v391 = v217;
                        v232 = sub_1D5BA8750(v231, v217);

                        v450 = v465[2];
                        v451[0] = v465[3];
                        *(v451 + 9) = *(&v465[3] + 9);
                        v447[0] = v463;
                        v447[1] = v464;
                        v449 = v465[1];
                        v448 = v465[0];
                        v446 = v462;
                        v445 = v461;
                        sub_1D5ECF2C4(&v461, &v453);
                        v233 = sub_1D6CB06DC();
                        v458 = v450;
                        v459[0] = v451[0];
                        *(v459 + 9) = *(v451 + 9);
                        v455[0] = v447[0];
                        v455[1] = v447[1];
                        v457 = v449;
                        v456 = v448;
                        v454 = v446;
                        v453 = v445;
                        sub_1D5ECF320(&v453);
                        v234 = sub_1D5BA8750(v233, v232);

                        *(&v428 + 1) = &type metadata for FeedIssue;
                        *&v429 = v359;
                        v235 = swift_allocObject();
                        *&v427 = v235;
                        v236 = v465[3];
                        v235[7] = v465[2];
                        v235[8] = v236;
                        *(v235 + 137) = *(&v465[3] + 9);
                        v237 = v464;
                        v235[3] = v463;
                        v235[4] = v237;
                        v238 = v465[1];
                        v235[5] = v465[0];
                        v235[6] = v238;
                        v239 = v462;
                        v235[1] = v461;
                        v235[2] = v239;
                        sub_1D5B68374(&v427, &v436);
                        v385 = v234;
                        if (v479)
                        {
                          sub_1D5ECF2C4(&v461, &v445);

                          v234 = sub_1D5BA8750(&unk_1F50F6730, v234);
                          sub_1D5BFB68C(&unk_1F50F6750);
                        }

                        else
                        {
                          sub_1D5ECF2C4(&v461, &v445);
                        }

                        *(&v438 + 1) = v234;
                        v240 = v390;
                        v241 = v390[2];
                        v358 = v68;
                        if (v241)
                        {
                          v384 = v216;
                          *&v445 = MEMORY[0x1E69E7CC0];
                          sub_1D5D24610(0, v241, 0);
                          v242 = v445;
                          v243 = v240 + ((*(v381 + 80) + 32) & ~*(v381 + 80));
                          v244 = *(v381 + 72);
                          v245 = v241;
                          do
                          {
                            v246 = v386;
                            sub_1D6D09934(v243, v386, type metadata accessor for FormatOption);
                            v247 = swift_allocBox();
                            sub_1D6D0A058(v246, v248, type metadata accessor for FormatOption);
                            *&v445 = v242;
                            v250 = *(v242 + 16);
                            v249 = *(v242 + 24);
                            if (v250 >= v249 >> 1)
                            {
                              sub_1D5D24610((v249 > 1), v250 + 1, 1);
                              v242 = v445;
                            }

                            *(v242 + 16) = v250 + 1;
                            *(v242 + 8 * v250 + 32) = v247 | 0x1000000000000004;
                            v243 += v244;
                            --v245;
                          }

                          while (v245);
                          __swift_destroy_boxed_opaque_existential_1(&v427);
                          v68 = v358;
                        }

                        else
                        {
                          __swift_destroy_boxed_opaque_existential_1(&v427);
                          v242 = MEMORY[0x1E69E7CC0];
                        }

                        *&v439 = v242;
                        *(&v439 + 1) = v68;
                        v251 = v479;
                        *&v440 = v479;
                        *(&v440 + 1) = v392;
                        *&v441 = v389;
                        *(&v441 + 1) = v379;
                        *&v450 = v360;
                        v445 = v436;
                        v446 = v437;
                        v447[0] = v438;
                        v447[1] = v439;
                        v448 = v440;
                        v449 = v441;
                        v252 = v376;

                        sub_1D67F5880(v68, v251);
                        sub_1D6D60C48(&v445, v375, v252);
                        v399 = v465[2];
                        v400[0] = v465[3];
                        *(v400 + 9) = *(&v465[3] + 9);
                        v395 = v463;
                        v396 = v464;
                        v397 = v465[0];
                        v398 = v465[1];
                        v393 = v461;
                        v394 = v462;
                        sub_1D5ECF2C4(&v461, &v445);
                        if (v251)
                        {
                          v385 = sub_1D5BA8750(&unk_1F50F6760, v385);
                          sub_1D5BFB68C(&unk_1F50F6780);
                        }

                        v253 = MEMORY[0x1E69E7CC0];
                        if (v241)
                        {
                          *&v445 = MEMORY[0x1E69E7CC0];
                          sub_1D5D24610(0, v241, 0);
                          v253 = v445;
                          v254 = v390 + ((*(v381 + 80) + 32) & ~*(v381 + 80));
                          v255 = *(v381 + 72);
                          do
                          {
                            v256 = v386;
                            sub_1D6D09934(v254, v386, type metadata accessor for FormatOption);
                            v257 = swift_allocBox();
                            sub_1D6D0A058(v256, v258, type metadata accessor for FormatOption);
                            *&v445 = v253;
                            v260 = *(v253 + 16);
                            v259 = *(v253 + 24);
                            if (v260 >= v259 >> 1)
                            {
                              sub_1D5D24610((v259 > 1), v260 + 1, 1);
                              v253 = v445;
                            }

                            *(v253 + 16) = v260 + 1;
                            *(v253 + 8 * v260 + 32) = v257 | 0x1000000000000004;
                            v254 += v255;
                            --v241;
                          }

                          while (v241);
                          v68 = v358;
                        }

                        v261 = v400[0];
                        v262 = v373;
                        *(v373 + 96) = v399;
                        *(v262 + 112) = v261;
                        *(v262 + 128) = v400[1];
                        v263 = v396;
                        *(v262 + 32) = v395;
                        *(v262 + 48) = v263;
                        v264 = v398;
                        *(v262 + 64) = v397;
                        *(v262 + 80) = v264;
                        v266 = v393;
                        v265 = v394;
LABEL_213:
                        *v262 = v266;
                        *(v262 + 16) = v265;
                        *(v262 + 144) = v385;
                        *(v262 + 152) = v253;
                        v301 = v479;
                        *(v262 + 160) = v68;
                        *(v262 + 168) = v301;
                        v302 = v389;
                        *(v262 + 176) = v392;
                        *(v262 + 184) = v302;
                        v303 = v360;
                        *(v262 + 192) = v379;
                        *(v262 + 200) = v303;
                        swift_endAccess();
                        sub_1D67F5880(v68, v301);

                        sub_1D5ECF320(&v461);
                        v226 = v68;
                        v227 = v301;
                        goto LABEL_214;
                      }

LABEL_149:
                      sub_1D6752B3C();
                      swift_allocError();
                      v224 = v376;
                      *v225 = v375;
                      *(v225 + 8) = v224;
                      *(v225 + 56) = 0;
                      swift_willThrow();
                      swift_endAccess();

                      sub_1D5ECF320(&v461);
                      v226 = v68;
                      v227 = v479;
LABEL_214:
                      sub_1D67F58E4(v226, v227);
                      return;
                    }

                    swift_beginAccess();
                    if ((v218 & 1) == 0)
                    {
                      if (*(v388[3] + 16))
                      {

                        sub_1D5B69D90(v375, v376);
                        v223 = v222;

                        if (v223)
                        {
                          goto LABEL_149;
                        }
                      }
                    }

                    if (v383)
                    {
                      FCIssue.issueCoverModel.getter(&v453);
                      if (!BYTE8(v455[1]))
                      {
                        v228 = 64;
                        goto LABEL_190;
                      }

                      if (BYTE8(v455[1]) == 1)
                      {
                        v228 = 16448;
LABEL_190:
                        sub_1D619CBDC(&v453);
                        goto LABEL_191;
                      }

                      v228 = 0;
                    }

                    else
                    {
                      FCIssue.issueCoverModel.getter(&v453);
                      if (!BYTE8(v455[1]))
                      {
                        v228 = 4160;
                        goto LABEL_190;
                      }

                      if (BYTE8(v455[1]) == 1)
                      {
                        v228 = 20544;
                        goto LABEL_190;
                      }

                      v228 = 4096;
                    }

LABEL_191:
                    v267 = *(v388[10] + 16);
                    if (v267)
                    {
                      sub_1D5B69D90(v385, v146);
                      v267 = 0x4000000000;
                      if ((v268 & 1) == 0)
                      {
                        v267 = 0;
                      }
                    }

                    *&v453 = v267 | v228;

                    v269 = sub_1D713CCF4();
                    v391 = v217;
                    v270 = sub_1D5BA8750(v269, v217);

                    v450 = v465[2];
                    v451[0] = v465[3];
                    *(v451 + 9) = *(&v465[3] + 9);
                    v447[0] = v463;
                    v447[1] = v464;
                    v449 = v465[1];
                    v448 = v465[0];
                    v446 = v462;
                    v445 = v461;
                    sub_1D5ECF2C4(&v461, &v453);
                    v271 = sub_1D6CB06DC();
                    v458 = v450;
                    v459[0] = v451[0];
                    *(v459 + 9) = *(v451 + 9);
                    v455[0] = v447[0];
                    v455[1] = v447[1];
                    v457 = v449;
                    v456 = v448;
                    v454 = v446;
                    v453 = v445;
                    sub_1D5ECF320(&v453);
                    v272 = sub_1D5BA8750(v271, v270);

                    *(&v428 + 1) = &type metadata for FeedIssue;
                    *&v429 = v359;
                    v273 = swift_allocObject();
                    *&v427 = v273;
                    v274 = v465[3];
                    v273[7] = v465[2];
                    v273[8] = v274;
                    *(v273 + 137) = *(&v465[3] + 9);
                    v275 = v464;
                    v273[3] = v463;
                    v273[4] = v275;
                    v276 = v465[1];
                    v273[5] = v465[0];
                    v273[6] = v276;
                    v277 = v462;
                    v273[1] = v461;
                    v273[2] = v277;
                    sub_1D5B68374(&v427, &v436);
                    v385 = v272;
                    if (v479)
                    {
                      sub_1D5ECF2C4(&v461, &v445);

                      v272 = sub_1D5BA8750(&unk_1F50F6790, v272);
                      sub_1D5BFB68C(&unk_1F50F67B0);
                    }

                    else
                    {
                      sub_1D5ECF2C4(&v461, &v445);
                    }

                    *(&v438 + 1) = v272;
                    v278 = v390;
                    v279 = v390[2];
                    v358 = v68;
                    if (v279)
                    {
                      v384 = v216;
                      *&v445 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v279, 0);
                      v280 = v445;
                      v281 = v278 + ((*(v381 + 80) + 32) & ~*(v381 + 80));
                      v282 = *(v381 + 72);
                      v283 = v279;
                      do
                      {
                        v284 = v386;
                        sub_1D6D09934(v281, v386, type metadata accessor for FormatOption);
                        v285 = swift_allocBox();
                        sub_1D6D0A058(v284, v286, type metadata accessor for FormatOption);
                        *&v445 = v280;
                        v288 = *(v280 + 16);
                        v287 = *(v280 + 24);
                        if (v288 >= v287 >> 1)
                        {
                          sub_1D5D24610((v287 > 1), v288 + 1, 1);
                          v280 = v445;
                        }

                        *(v280 + 16) = v288 + 1;
                        *(v280 + 8 * v288 + 32) = v285 | 0x1000000000000004;
                        v281 += v282;
                        --v283;
                      }

                      while (v283);
                      __swift_destroy_boxed_opaque_existential_1(&v427);
                      v68 = v358;
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(&v427);
                      v280 = MEMORY[0x1E69E7CC0];
                    }

                    *&v439 = v280;
                    *(&v439 + 1) = v68;
                    v289 = v479;
                    *&v440 = v479;
                    *(&v440 + 1) = v392;
                    *&v441 = v389;
                    *(&v441 + 1) = v379;
                    *&v450 = v360;
                    v445 = v436;
                    v446 = v437;
                    v447[0] = v438;
                    v447[1] = v439;
                    v448 = v440;
                    v449 = v441;
                    v290 = v376;

                    sub_1D67F5880(v68, v289);
                    sub_1D6D60C48(&v445, v375, v290);
                    v407 = v465[2];
                    v408[0] = v465[3];
                    *(v408 + 9) = *(&v465[3] + 9);
                    v403 = v463;
                    v404 = v464;
                    v405 = v465[0];
                    v406 = v465[1];
                    v401 = v461;
                    v402 = v462;
                    sub_1D5ECF2C4(&v461, &v445);
                    if (v289)
                    {
                      v385 = sub_1D5BA8750(&unk_1F50F67C0, v385);
                      sub_1D5BFB68C(&unk_1F50F67E0);
                    }

                    v253 = MEMORY[0x1E69E7CC0];
                    if (v279)
                    {
                      *&v445 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v279, 0);
                      v253 = v445;
                      v291 = v390 + ((*(v381 + 80) + 32) & ~*(v381 + 80));
                      v292 = *(v381 + 72);
                      do
                      {
                        v293 = v386;
                        sub_1D6D09934(v291, v386, type metadata accessor for FormatOption);
                        v294 = swift_allocBox();
                        sub_1D6D0A058(v293, v295, type metadata accessor for FormatOption);
                        *&v445 = v253;
                        v297 = *(v253 + 16);
                        v296 = *(v253 + 24);
                        if (v297 >= v296 >> 1)
                        {
                          sub_1D5D24610((v296 > 1), v297 + 1, 1);
                          v253 = v445;
                        }

                        *(v253 + 16) = v297 + 1;
                        *(v253 + 8 * v297 + 32) = v294 | 0x1000000000000004;
                        v291 += v292;
                        --v279;
                      }

                      while (v279);
                      v68 = v358;
                    }

                    v298 = v408[0];
                    v262 = v373;
                    *(v373 + 96) = v407;
                    *(v262 + 112) = v298;
                    *(v262 + 128) = v408[1];
                    v299 = v404;
                    *(v262 + 32) = v403;
                    *(v262 + 48) = v299;
                    v300 = v406;
                    *(v262 + 64) = v405;
                    *(v262 + 80) = v300;
                    v266 = v401;
                    v265 = v402;
                    goto LABEL_213;
                  }

                  v349 = v215;
                  v327 = 0;
                  v328 = v371;
                  v329 = *(v372 + 80);
                  v377 = v325;
                  v378 = (v362 + ((v329 + 32) & ~v329));
                  v330 = (v381 + 56);
                  while (1)
                  {
                    if (v327 >= *(v326 + 16))
                    {
                      goto LABEL_262;
                    }

                    v336 = v216;
                    sub_1D6D09934(&v378[*(v372 + 72) * v327], v328, type metadata accessor for FormatPropertyDefinition);
                    v337 = FormatPropertyDefinition.identifier.getter();
                    if (*(v325 + 16))
                    {
                      v339 = sub_1D5B69D90(v337, v338);
                      v341 = v340;
                      v328 = v371;

                      if (v341)
                      {
                        v331 = v377;
                        v332 = v381;
                        v333 = *(v377 + 56) + *(v381 + 72) * v339;
                        v334 = v370;
                        sub_1D6D09934(v333, v370, type metadata accessor for FormatOption);
                        sub_1D6D0A444(v371, type metadata accessor for FormatPropertyDefinition);
                        v328 = v371;
                        (*(v332 + 56))(v334, 0, 1, v387);
                        v335 = v334;
                        v325 = v331;
                        sub_1D6D0A444(v335, sub_1D5E04C00);
                        v326 = v362;
                        goto LABEL_246;
                      }
                    }

                    else
                    {
                    }

                    v342 = v370;
                    (*v330)(v370, 1, 1, v387);
                    sub_1D6D0A444(v342, sub_1D5E04C00);
                    if (sub_1D695C4AC())
                    {

                      sub_1D67F58E4(v358, v479);

                      sub_1D60CF6F4(v362, v352, v353, v354, v355, v356, v357);

                      type metadata accessor for FormatLayoutError(0);
                      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                      swift_allocError();
                      v344 = v343;
                      sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
                      v346 = *(v345 + 48);
                      v347 = v374;
                      sub_1D6D09934(v374, v344, type metadata accessor for FeedCustomItem);
                      sub_1D6D09934(v328, v344 + v346, type metadata accessor for FormatPropertyDefinition);
                      swift_storeEnumTagMultiPayload();
                      swift_willThrow();
                      sub_1D62B7D78(&v436);
                      sub_1D5ECF320(&v461);
                      sub_1D6D0A444(v328, type metadata accessor for FormatPropertyDefinition);
                      sub_1D6D0A444(v347, type metadata accessor for FeedCustomItem);
                      return;
                    }

                    sub_1D6D0A444(v328, type metadata accessor for FormatPropertyDefinition);
                    v326 = v362;
                    v325 = v377;
LABEL_246:
                    v327 = (v327 + 1);
                    v216 = v336;
                    if (v380 == v327)
                    {
                      sub_1D60CF6F4(v326, v352, v353, v354, v355, v356, v357);

                      v68 = v358;
                      goto LABEL_256;
                    }
                  }
                }
              }

              sub_1D67F58E4(v68, v479);

              LOBYTE(v457) = 0;
              v456 = 0u;
              memset(v455, 0, sizeof(v455));
              v454 = 0u;
              v453 = 0u;
LABEL_221:
              type metadata accessor for FormatLayoutError(0);
              sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
              swift_allocError();
              *v304 = v208;
              v304[1] = v207;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D6D09524(&v453, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
              sub_1D5ECF320(&v461);
              sub_1D6D0A444(v374, type metadata accessor for FeedCustomItem);
              return;
            }

            v359 = v108;
            v123 = v391;
            sub_1D6D02DC4(v104, v391, v62, 4096, 0, 1, &v453);
            v465[2] = v458;
            v465[3] = v459[0];
            v465[4] = v459[1];
            v466 = v460;
            v463 = v455[0];
            v464 = v455[1];
            v465[0] = v456;
            v465[1] = v457;
            v461 = v453;
            v462 = v454;
            if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) == 1)
            {
              v442 = v458;
              v443[0] = v459[0];
              v443[1] = v459[1];
              v444 = v460;
              v438 = v455[0];
              v439 = v455[1];
              v440 = v456;
              v441 = v457;
              v436 = v453;
              v437 = v454;
              sub_1D6D0983C(&v436, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
              sub_1D6D02DC4(v104, v123, v62, 0, 1, 1, &v427);

              v450 = v433;
              v451[0] = v434[0];
              v451[1] = v434[1];
              v452 = v435;
              v447[0] = v429;
              v447[1] = v430;
              v448 = v431;
              v449 = v432;
              v445 = v427;
              v446 = v428;
              if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v445) != 1)
              {

                v469[2] = v433;
                v469[3] = v434[0];
                *(&v469[3] + 9) = *(v434 + 9);
                v468[1] = v429;
                v468[2] = v430;
                v469[1] = v432;
                v469[0] = v431;
                v468[0] = v428;
                v467 = v427;
                nullsub_1();
                goto LABEL_74;
              }

              v415 = v433;
              v416 = v434[0];
              v417 = v434[1];
              v418 = v435;
              v411 = v429;
              v412 = v430;
              v413 = v431;
              v414 = v432;
              v409 = v427;
              v410 = v428;
              sub_1D6D0983C(&v409, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
              sub_1D5D62850(&v419);
              v469[2] = v425;
              v469[3] = v426[0];
              *(&v469[3] + 9) = *(v426 + 9);
              v468[1] = v421;
              v468[2] = v422;
              v469[1] = v424;
              v469[0] = v423;
              v125 = v419;
              v124 = v420;
            }

            else
            {

              v450 = v458;
              v451[0] = v459[0];
              *(v451 + 9) = *(v459 + 9);
              v447[0] = v455[0];
              v447[1] = v455[1];
              v449 = v457;
              v448 = v456;
              v446 = v454;
              v445 = v453;
              nullsub_1();
              v469[2] = v450;
              v469[3] = v451[0];
              *(&v469[3] + 9) = *(v451 + 9);
              v468[1] = v447[0];
              v468[2] = v447[1];
              v469[1] = v449;
              v469[0] = v448;
              v124 = v446;
              v125 = v445;
            }

            v468[0] = v124;
            v467 = v125;
LABEL_74:
            v108 = v359;
            goto LABEL_75;
          }
        }

LABEL_77:
        sub_1D5ED8048();
        v79 = swift_allocError();
        *v80 = 0x7573734964656546;
        *(v80 + 8) = 0xE900000000000065;
        v130 = v392;
        *(v80 + 16) = v479;
        *(v80 + 24) = v130;
        goto LABEL_16;
      }
    }
  }

  sub_1D5ED8048();
  v79 = swift_allocError();
  *v80 = 0x7573734964656546;
  *(v80 + 8) = 0xE900000000000065;
  *(v80 + 16) = v479;
  *(v80 + 24) = v73;
LABEL_16:
  *(v80 + 32) = v391;
  *(v80 + 40) = 1;
  *(v80 + 48) = v389;
  *(v80 + 56) = a10;
  *(v80 + 64) = 0;
  swift_willThrow();

LABEL_17:
  if ((*(v388 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    swift_willThrow();
    return;
  }

  v81 = *(v54 + 16);
  if (v81)
  {
    v82 = 0;
    v83 = (v54 + 32);
    do
    {
      v84 = *v83++;
      LOBYTE(v453) = v84;
      sub_1D6FA308C(&v461);
      v85 = v461;
      if ((v461 & ~v82) == 0)
      {
        v85 = 0;
      }

      v82 |= v85;
      --v81;
    }

    while (v81);
  }

  else
  {
    v82 = 0;
  }

  v86 = swift_allocObject();
  *(v86 + 16) = v82;
  v87 = swift_allocObject();
  v389 = v87;
  *(v87 + 16) = MEMORY[0x1E69E7CC0];
  v88 = (v87 + 16);
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1D6D0A528;
  *(v89 + 24) = v86;
  swift_beginAccess();
  v90 = *v88;

  v91 = swift_isUniquelyReferenced_nonNull_native();
  *v88 = v90;
  if ((v91 & 1) == 0)
  {
    v90 = sub_1D69910F0(0, v90[2] + 1, 1, v90);
    *v88 = v90;
  }

  v93 = v90[2];
  v92 = v90[3];
  if (v93 >= v92 >> 1)
  {
    v90 = sub_1D69910F0((v92 > 1), v93 + 1, 1, v90);
  }

  v90[2] = v93 + 1;
  v94 = &v90[2 * v93];
  v94[4] = sub_1D6D0A50C;
  v94[5] = v89;
  *(v389 + 16) = v90;
  swift_endAccess();

  v95 = *(v71 + 16);
  v96 = v392;

  if (!v95 || (v97 = sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, v479, v96), (v98 & 1) == 0) || (v99 = *(*(v71 + 56) + 8 * v97), !*(v99 + 2)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v103 = 0x7573734964656546;
    *(v103 + 8) = 0xE900000000000065;
    *(v103 + 16) = v479;
    *(v103 + 24) = v96;
LABEL_35:
    *(v103 + 32) = v391;
    *(v103 + 40) = 1;
    *(v103 + 48) = 0;
    *(v103 + 56) = 0;
    *(v103 + 64) = 0;
    swift_willThrow();
LABEL_36:

    return;
  }

  v101 = v390;
  v102 = sub_1D5BF08EC(v100, 0, 0);
  v114 = sub_1D714E90C(v102);

  if (!v114)
  {
LABEL_58:

    sub_1D5ED8048();
    swift_allocError();
    *v103 = 0x7573734964656546;
    *(v103 + 8) = 0xE900000000000065;
    v122 = v392;
    *(v103 + 16) = v479;
    *(v103 + 24) = v122;
    goto LABEL_35;
  }

  if (!*(v114 + 16))
  {

    goto LABEL_58;
  }

  v115 = v383;
  v116 = v383[19];
  v117 = *(v101 + v116);
  if (v117 < *(v101 + v383[17]))
  {
    sub_1D6D02DC4(v114, v391 | 0x1000, v389, 0, 1, 1, &v453);
    v465[2] = v458;
    v465[3] = v459[0];
    v465[4] = v459[1];
    v466 = v460;
    v463 = v455[0];
    v464 = v455[1];
    v465[0] = v456;
    v465[1] = v457;
    v461 = v453;
    v462 = v454;
    if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) != 1)
    {

      v450 = v458;
      v451[0] = v459[0];
      *(v451 + 9) = *(v459 + 9);
      v447[0] = v455[0];
      v447[1] = v455[1];
      v449 = v457;
      v448 = v456;
      v446 = v454;
      v445 = v453;
      nullsub_1();
      v469[2] = v450;
      v469[3] = v451[0];
      *(&v469[3] + 9) = *(v451 + 9);
      v468[1] = v447[0];
      v468[2] = v447[1];
      v469[1] = v449;
      v469[0] = v448;
      v120 = v446;
      v121 = v445;
      goto LABEL_71;
    }

    v450 = v458;
    v451[0] = v459[0];
    v451[1] = v459[1];
    v452 = v460;
    v447[0] = v455[0];
    v447[1] = v455[1];
    v448 = v456;
    v449 = v457;
    v445 = v453;
    v446 = v454;
    sub_1D6D0983C(&v445, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
    v101 = v390;
    v115 = v383;
  }

  v118 = *(v101 + v115[18]);
  v110 = __OFSUB__(v118, v117);
  v119 = v118 - v117;
  if (v110)
  {
    goto LABEL_261;
  }

  if (v119 < 1)
  {
    v385 = v116;
    v126 = v391;
    v127 = v389;
    sub_1D6D02DC4(v114, v391, v389, 4096, 0, 1, &v453);
    v465[2] = v458;
    v465[3] = v459[0];
    v465[4] = v459[1];
    v466 = v460;
    v463 = v455[0];
    v464 = v455[1];
    v465[0] = v456;
    v465[1] = v457;
    v461 = v453;
    v462 = v454;
    if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) == 1)
    {
      v442 = v458;
      v443[0] = v459[0];
      v443[1] = v459[1];
      v444 = v460;
      v438 = v455[0];
      v439 = v455[1];
      v440 = v456;
      v441 = v457;
      v436 = v453;
      v437 = v454;
      sub_1D6D0983C(&v436, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
      sub_1D6D02DC4(v114, v126, v127, 0, 1, 1, &v427);

      v450 = v433;
      v451[0] = v434[0];
      v451[1] = v434[1];
      v452 = v435;
      v447[0] = v429;
      v447[1] = v430;
      v448 = v431;
      v449 = v432;
      v445 = v427;
      v446 = v428;
      if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v445) != 1)
      {

        v469[2] = v433;
        v469[3] = v434[0];
        *(&v469[3] + 9) = *(v434 + 9);
        v468[1] = v429;
        v468[2] = v430;
        v469[1] = v432;
        v469[0] = v431;
        v468[0] = v428;
        v467 = v427;
        nullsub_1();
        goto LABEL_103;
      }

      v415 = v433;
      v416 = v434[0];
      v417 = v434[1];
      v418 = v435;
      v411 = v429;
      v412 = v430;
      v413 = v431;
      v414 = v432;
      v409 = v427;
      v410 = v428;
      sub_1D6D0983C(&v409, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
      sub_1D5D62850(&v419);
      v469[2] = v425;
      v469[3] = v426[0];
      *(&v469[3] + 9) = *(v426 + 9);
      v468[1] = v421;
      v468[2] = v422;
      v469[1] = v424;
      v469[0] = v423;
      v129 = v419;
      v128 = v420;
    }

    else
    {

      v450 = v458;
      v451[0] = v459[0];
      *(v451 + 9) = *(v459 + 9);
      v447[0] = v455[0];
      v447[1] = v455[1];
      v449 = v457;
      v448 = v456;
      v446 = v454;
      v445 = v453;
      nullsub_1();
      v469[2] = v450;
      v469[3] = v451[0];
      *(&v469[3] + 9) = *(v451 + 9);
      v468[1] = v447[0];
      v468[2] = v447[1];
      v469[1] = v449;
      v469[0] = v448;
      v128 = v446;
      v129 = v445;
    }

    v468[0] = v128;
    v467 = v129;
LABEL_103:
    v116 = v385;
    goto LABEL_104;
  }

  sub_1D6D02DC4(v114, v391, v389, 0, 1, 1, &v453);

  v465[2] = v458;
  v465[3] = v459[0];
  v465[4] = v459[1];
  v466 = v460;
  v463 = v455[0];
  v464 = v455[1];
  v465[0] = v456;
  v465[1] = v457;
  v461 = v453;
  v462 = v454;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) != 1)
  {

    v469[2] = v458;
    v469[3] = v459[0];
    *(&v469[3] + 9) = *(v459 + 9);
    v468[1] = v455[0];
    v468[2] = v455[1];
    v469[1] = v457;
    v469[0] = v456;
    v468[0] = v454;
    v467 = v453;
    nullsub_1();
    goto LABEL_104;
  }

  v450 = v458;
  v451[0] = v459[0];
  v451[1] = v459[1];
  v452 = v460;
  v447[0] = v455[0];
  v447[1] = v455[1];
  v448 = v456;
  v449 = v457;
  v445 = v453;
  v446 = v454;
  sub_1D6D0983C(&v445, &qword_1EC894E48, &qword_1EC894E50, &qword_1EC880BA0, &type metadata for FeedIssue);
  sub_1D5D62850(&v436);
  v469[2] = v442;
  v469[3] = v443[0];
  *(&v469[3] + 9) = *(v443 + 9);
  v468[1] = v438;
  v468[2] = v439;
  v469[1] = v441;
  v469[0] = v440;
  v120 = v437;
  v121 = v436;
LABEL_71:
  v468[0] = v120;
  v467 = v121;
LABEL_104:
  v465[2] = v469[2];
  v465[3] = v469[3];
  *(&v465[3] + 9) = *(&v469[3] + 9);
  v463 = v468[1];
  v464 = v468[2];
  v465[1] = v469[1];
  v465[0] = v469[0];
  v462 = v468[0];
  v461 = v467;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v461) == 1)
  {

    v458 = v469[2];
    v459[0] = v469[3];
    *(v459 + 9) = *(&v469[3] + 9);
    v455[0] = v468[1];
    v455[1] = v468[2];
    v457 = v469[1];
    v456 = v469[0];
    v454 = v468[0];
    v453 = v467;
    sub_1D6D09524(&v453, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720]);
    sub_1D5ED8048();
    swift_allocError();
    *v161 = 0x7573734964656546;
    *(v161 + 8) = 0xE900000000000065;
    v162 = v392;
    *(v161 + 16) = v479;
    *(v161 + 24) = v162;
    *(v161 + 32) = v391;
    *(v161 + 40) = 1;
    *(v161 + 48) = 0;
    *(v161 + 56) = 0;
    *(v161 + 64) = 0;
    swift_willThrow();
    goto LABEL_36;
  }

  v472 = *(v468 + 8);
  v473 = *(&v468[1] + 8);
  v146 = *&v468[0];
  *&v476[16] = *(&v469[1] + 1);
  *&v476[32] = *(&v469[2] + 1);
  *&v476[48] = *(&v469[3] + 1);
  *&v476[64] = *(&v469[4] + 1);
  *v476 = *(v469 + 1);
  v470 = v467;
  v385 = *(&v467 + 1);
  v471 = *&v468[0];
  v358 = *(&v468[2] + 1);
  v474 = *(&v468[2] + 1);
  v475 = v469[0];
  LODWORD(v383) = LOBYTE(v469[0]);
  v391 = v467;
  if (v469[0])
  {
    v163 = FCIssue.issueCoverModel.getter(&v445);
    *(v455 + 9) = *(v447 + 9);
    v453 = v445;
    v454 = v446;
    v455[0] = v447[0];
    if (BYTE8(v447[1]) < 2u)
    {
      v163 = sub_1D619CBDC(&v453);
    }

    v151 = v390;
LABEL_114:
    if ((v382 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v163, v164);
      *(&v348 - 2) = &v470;
      v99 = sub_1D5BF5F6C(sub_1D6D09898, (&v348 - 4), v99);
    }

    v384 = 0;
    *&v453 = 0x7573734964656546;
    *(&v453 + 1) = 0xE900000000000065;
    *&v454 = v479;
    *(&v454 + 1) = v392;
    sub_1D5BDACA8(&v453, v99);

    v145 = v472;
    v148 = BYTE1(v472);
    v357 = *(&v472 + 1);
    LODWORD(v356) = v473;
    v354 = *(&v473 + 1);
    v355 = *&v476[23];
    v352 = *&v476[7];
    v353 = *&v476[55];
    v350 = *&v476[39];
    v351 = v476[71];

    v166 = v379;
    v167 = v385;
    v168 = sub_1D6196E44(v379, 42, 0xE100000000000000, v385, v146);

    v478 = v168;

    v169 = sub_1D6196F00(v166, 42, 0xE100000000000000, v167, v146);

    v477 = v169;
    v170 = *(v166 + 16);

    v348 = v168;
    v349 = v169;
    if (v170 && (v171 = sub_1D5B69D90(42, 0xE100000000000000), (v172 & 1) != 0))
    {
      v173 = *(*(*(v166 + 56) + 8 * v171) + 136);
      v174 = *(v173 + 16);

      if (v174)
      {
        v175 = sub_1D5B69D90(v385, v146);
        v177 = v176;

        if (v177)
        {
          v178 = (*(v173 + 56) + 48 * v175);
          v68 = *v178;
          v179 = v178[1];
          v180 = v178[2];
          v181 = v178[3];
          v182 = v178[5];
          v379 = v178[4];
          v479 = v179;

          v392 = v180;

          v389 = v181;

          v360 = v182;
        }

        else
        {

          v68 = 0;
          v479 = 0;
          v392 = 0;
          v389 = 0;
          v379 = 0;
          v360 = 0;
        }

        v151 = v390;
        goto LABEL_123;
      }
    }

    else
    {
    }

    v68 = 0;
    v479 = 0;
    v392 = 0;
    v389 = 0;
    v379 = 0;
    v360 = 0;
LABEL_123:
    v183 = v391;
    v184 = v357;
    v160 = v358;
    v185 = v356;
    v186 = v355;
    v187 = v354;
    v189 = v352;
    v188 = v353;
    v190 = v351;
    goto LABEL_128;
  }

  v163 = FCIssue.issueCoverModel.getter(&v445);
  *(v455 + 9) = *(v447 + 9);
  v453 = v445;
  v454 = v446;
  v455[0] = v447[0];
  if (BYTE8(v447[1]) < 2u)
  {
    v163 = sub_1D619CBDC(&v453);
  }

  if (!__OFADD__(v117, 1))
  {
    v165 = v390;
    *(v390 + v116) = v117 + 1;
    v151 = v165;
    goto LABEL_114;
  }

LABEL_264:
  __break(1u);
}

void sub_1D6CFBBC4(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v759 = a8;
  v718 = a6;
  v719 = a7;
  v762 = a5;
  *(&v761 + 1) = a4;
  *&v761 = a3;
  v720 = a2;
  v760 = a1;
  v706 = a9;
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v695 = &v667 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatPropertyDefinition(0);
  v705 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v681 = &v667 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v690 = &v667 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v697 = &v667 - v24;
  v750 = type metadata accessor for FormatOption(0);
  v726 = *(v750 - 8);
  MEMORY[0x1EEE9AC00](v750, v25);
  v688 = &v667 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v689 = &v667 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v714 = &v667 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v723 = (&v667 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v749 = &v667 - v38;
  sub_1D6D0945C(0);
  v724 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v704 = &v667 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v703 = &v667 - v44;
  sub_1D6AC4E74(0);
  v677 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v678 = &v667 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v694 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v694, v48);
  v710 = &v667 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v693 = &v667 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v667 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v754 = v57;
  v734 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57, v58);
  v751 = (&v667 - v59);
  sub_1D5C144C0(0, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v731 = &v667 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v730 = (&v667 - v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v740 = &v667 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = (&v667 - v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = &v667 - v75;
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = (&v667 - v79);
  MEMORY[0x1EEE9AC00](v81, v82);
  v737 = &v667 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v736 = (&v667 - v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  v90 = &v667 - v89;
  MEMORY[0x1EEE9AC00](v91, v92);
  v739 = (&v667 - v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  v725 = &v667 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  *&v744 = &v667 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v732 = &v667 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  *(&v744 + 1) = &v667 - v105;
  MEMORY[0x1EEE9AC00](v106, v107);
  *(&v743 + 1) = &v667 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  k = (&v667 - v111);
  sub_1D6D0A350(0, &qword_1EDF34AF8, type metadata accessor for FeedHeadline, sub_1D6D09AE4, "best remaining ");
  MEMORY[0x1EEE9AC00](v112 - 8, v113);
  v676 = &v667 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v115, v116);
  v679 = &v667 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v682 = &v667 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v685 = &v667 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v680 = &v667 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v686 = &v667 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v698 = &v667 - v132;
  MEMORY[0x1EEE9AC00](v133, v134);
  v702 = &v667 - v135;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v136 - 8, v137);
  v696 = &v667 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v139, v140);
  v716 = &v667 - v141;
  MEMORY[0x1EEE9AC00](v142, v143);
  v715 = &v667 - v144;
  MEMORY[0x1EEE9AC00](v145, v146);
  v728 = &v667 - v147;
  v742 = type metadata accessor for FeedHeadline(0);
  v753 = *(v742 - 8);
  MEMORY[0x1EEE9AC00](v742, v148);
  v729 = &v667 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v150, v151);
  v733 = &v667 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v738 = &v667 - v155;
  MEMORY[0x1EEE9AC00](v156, v157);
  *&v743 = &v667 - v158;
  MEMORY[0x1EEE9AC00](v159, v160);
  v684 = &v667 - v161;
  MEMORY[0x1EEE9AC00](v162, v163);
  v683 = &v667 - v164;
  MEMORY[0x1EEE9AC00](v165, v166);
  MEMORY[0x1EEE9AC00](v167, v168);
  v691 = &v667 - v169;
  MEMORY[0x1EEE9AC00](v170, v171);
  v708 = &v667 - v172;
  MEMORY[0x1EEE9AC00](v173, v174);
  v707 = &v667 - v175;
  MEMORY[0x1EEE9AC00](v176, v177);
  v687 = &v667 - v178;
  MEMORY[0x1EEE9AC00](v179, v180);
  v747 = &v667 - v181;
  MEMORY[0x1EEE9AC00](v182, v183);
  v746 = (&v667 - v184);
  MEMORY[0x1EEE9AC00](v185, v186);
  v188 = &v667 - v187;
  MEMORY[0x1EEE9AC00](v189, v190);
  v701 = &v667 - v191;
  MEMORY[0x1EEE9AC00](v192, v193);
  v700 = &v667 - v194;
  MEMORY[0x1EEE9AC00](v195, v196);
  v713 = &v667 - v197;
  MEMORY[0x1EEE9AC00](v198, v199);
  v712 = &v667 - v200;
  MEMORY[0x1EEE9AC00](v201, v202);
  v741 = (&v667 - v203);
  v757 = v12;
  v204 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v205 = *(v204 + 16);
  v721 = v53;
  v722 = v56;
  v692 = v206;
  v717 = v72;
  v699 = v76;
  v709 = v80;
  v755 = v204;
  v207 = 0;
  if (v205)
  {
    v208 = (v204 + 32);
    do
    {
      v209 = *v208++;
      v210 = qword_1D7349118[v209];
      if ((v210 & ~v207) == 0)
      {
        v210 = 0;
      }

      v207 |= v210;
      --v205;
    }

    while (v205);
  }

  v211 = swift_allocObject();
  *(v211 + 16) = v207;
  sub_1D6D09390(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v752 = v212;
  v213 = swift_allocObject();
  v214 = MEMORY[0x1E69E7CC0];
  v756 = v213;
  *(v213 + 16) = MEMORY[0x1E69E7CC0];
  v215 = (v213 + 16);
  v216 = swift_allocObject();
  *(v216 + 16) = sub_1D613DB68;
  *(v216 + 24) = v211;
  swift_beginAccess();

  v217 = sub_1D5C0F8FC(0, 1, 1, v214);
  v219 = v217[2];
  v218 = v217[3];
  if (v219 >= v218 >> 1)
  {
    v217 = sub_1D5C0F8FC((v218 > 1), v219 + 1, 1, v217);
  }

  v727 = a11;
  v758 = a10;
  v217[2] = v219 + 1;
  v220 = &v217[2 * v219];
  v220[4] = sub_1D613DB70;
  v220[5] = v216;
  v711 = v217;
  *v215 = v217;
  swift_endAccess();

  v735 = type metadata accessor for GroupLayoutBindingContext(0);
  v221 = v760;
  v785 = *&v760[v735[14]];
  v222 = *(v785 + 16);
  v223 = *(&v761 + 1);

  v224 = v761;
  if (!v222 || (v225 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, v761, v223), (v226 & 1) == 0) || !*(*(*(v785 + 56) + 8 * v225) + 16))
  {
    sub_1D5ED8048();
    v230 = swift_allocError();
    *v231 = 0x6461654864656546;
LABEL_14:
    *(v231 + 8) = 0xEC000000656E696CLL;
    *(v231 + 16) = v224;
    v232 = v762;
    *(v231 + 24) = v223;
    *(v231 + 32) = v232;
    *(v231 + 40) = 1;
    v233 = v758;
    *(v231 + 48) = v759;
    *(v231 + 56) = v233;
    *(v231 + 64) = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v675 = v90;

  v228 = v745;
  v229 = sub_1D5BF08EC(v227, v759, v758);
  v230 = v228;
  if (v228)
  {

LABEL_15:
    v234 = v757;
    goto LABEL_16;
  }

  v671 = v227;
  v669 = 0;
  v260 = sub_1D5C14D80(v229);

  if (!v260)
  {
LABEL_43:

    sub_1D5ED8048();
    v230 = swift_allocError();
    *v231 = 0x6461654864656546;
    goto LABEL_14;
  }

  v261 = v260;
  v262 = *(v260 + 16);
  if (!v262)
  {

    goto LABEL_43;
  }

  v263 = v735;
  v264 = *&v221[v735[17]];
  v667 = v735[19];
  v266 = v732;
  v267 = *(&v744 + 1);
  v668 = *&v221[v667];
  v265 = v668;
  if (v668 >= v264)
  {
LABEL_57:
    v294 = *&v221[v263[18]];
    v295 = v294 - v265;
    if (__OFSUB__(v294, v265))
    {
      goto LABEL_308;
    }

    v296 = *v221;
    v297 = v725;
    if (v295 < 1)
    {
      v672 = v261;
      if (v296)
      {
      }

      else
      {
        sub_1D62F071C(v261);
      }

      v746 = v312;
      v329 = *(v312 + 16);
      k = (v734 + 56);
      v330 = (v734 + 48);

      v331 = 0;
      while (1)
      {
        if (v331 == v329)
        {
          v332 = 1;
          v331 = v329;
          v333 = v754;
        }

        else
        {
          if ((v331 & 0x8000000000000000) != 0)
          {
            goto LABEL_298;
          }

          if (v331 >= *(v746 + 2))
          {
            goto LABEL_299;
          }

          v334 = v746 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * v331;
          v333 = v754;
          v335 = *(v754 + 12);
          v336 = v751;
          *v751 = v331;
          sub_1D6D09934(v334, v336 + v335, type metadata accessor for FeedHeadline);
          sub_1D6D0A3D8(v336, v297, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          v332 = 0;
          ++v331;
        }

        v337 = *k;
        (*k)(v297, v332, 1, v333);
        v338 = v744;
        sub_1D6D09B18(v297, v744, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v339 = *v330;
        if ((*v330)(v338, 1, v333) == 1)
        {
          swift_bridgeObjectRelease_n();
          v382 = *(v753 + 56);
          v745 = (v753 + 56);
          *(&v744 + 1) = v382;
          v382(v715, 1, 1, v742);
          v383 = v672;
          if ((*v760 & 1) == 0)
          {
            sub_1D62F071C(v672);
            v385 = v384;

            v383 = v385;
          }

          v386 = *(v383 + 16);
          v672 = v383;

          v387 = 0;
          v388 = v687;
          v747 = v386;
          if (v386)
          {
            goto LABEL_109;
          }

LABEL_112:
          v396 = 1;
          v387 = v386;
          v391 = v754;
          v395 = v675;
          while (1)
          {
            v337(v395, v396, 1, v391);
            v397 = v395;
            v398 = v739;
            sub_1D6D09B18(v397, v739, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            if (v339(v398, 1, v391) == 1)
            {
              break;
            }

            v389 = *v398;
            sub_1D6D0A058(v398 + *(v391 + 12), v388, type metadata accessor for FeedHeadline);
            if ((v762 & ~*(v388 + 32)) == 0)
            {
              v502 = v672;

              *&v776 = v502;
              v503 = v680;
              sub_1D5C17DC4(v389, v680);
              sub_1D6D0A444(v388, type metadata accessor for FeedHeadline);

              v320 = v728;
              sub_1D6D0A058(v503, v728, type metadata accessor for FeedHeadline);
              v399 = 0;
LABEL_184:
              v504 = v715;
              v328 = v742;
              (*(&v744 + 1))(v320, v399, 1, v742);
              v327 = v753;
              v505 = (*(v753 + 48))(v504, 1, v328) == 1;
              v506 = v504;
              v234 = v757;
              v348 = v760;
              v322 = *(&v761 + 1);
              v323 = v761;
              if (!v505)
              {
                sub_1D6D0A444(v506, sub_1D5B69BE0);
              }

              goto LABEL_89;
            }

            sub_1D6D0A444(v388, type metadata accessor for FeedHeadline);
            v386 = v747;
            if (v387 == v747)
            {
              goto LABEL_112;
            }

LABEL_109:
            if ((v387 & 0x8000000000000000) != 0)
            {
              goto LABEL_304;
            }

            if (v387 >= *(v672 + 16))
            {
              goto LABEL_305;
            }

            v746 = (v387 + 1);
            v390 = v672 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * v387;
            v391 = v754;
            v392 = *(v754 + 12);
            v393 = v751;
            *v751 = v387;
            sub_1D6D09934(v390, v393 + v392, type metadata accessor for FeedHeadline);
            v394 = v393;
            v395 = v675;
            sub_1D6D0A3D8(v394, v675, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v396 = 0;
            v387 = v746;
          }

          swift_bridgeObjectRelease_n();
          v399 = 1;
          v320 = v728;
          goto LABEL_184;
        }

        v340 = *v338;
        v341 = v338 + *(v333 + 12);
        v342 = v747;
        sub_1D6D0A058(v341, v747, type metadata accessor for FeedHeadline);
        v343 = *(v342 + 32);
        if ((v762 & ~v343) == 0 && (v343 & 0x1000) == 0)
        {
          v344 = v746;

          *&v776 = v344;
          v345 = v686;
          sub_1D5C17DC4(v340, v686);
          sub_1D6D0A444(v747, type metadata accessor for FeedHeadline);

          v346 = v715;
          sub_1D6D0A058(v345, v715, type metadata accessor for FeedHeadline);
          v327 = v753;
          v347 = *(v753 + 56);
          v328 = v742;
          v347(v346, 0, 1, v742);
          v320 = v728;
          sub_1D6D0A058(v346, v728, type metadata accessor for FeedHeadline);
          v347(v320, 0, 1, v328);
          goto LABEL_88;
        }

        sub_1D6D0A444(v747, type metadata accessor for FeedHeadline);
      }
    }

    if ((*v221 & 1) == 0)
    {
      sub_1D62F071C(v261);
      v299 = v298;

      v261 = v299;
    }

    v300 = *(v261 + 16);
    v301 = (v734 + 56);
    v302 = (v734 + 48);
    v672 = v261;

    v303 = 0;
    while (1)
    {
      if (v303 == v300)
      {
        v304 = 1;
        v303 = v300;
        v305 = v754;
      }

      else
      {
        if ((v303 & 0x8000000000000000) != 0)
        {
          goto LABEL_296;
        }

        if (v303 >= *(v672 + 16))
        {
          goto LABEL_297;
        }

        v306 = v672 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * v303;
        v305 = v754;
        v307 = *(v754 + 12);
        v308 = v751;
        *v751 = v303;
        sub_1D6D09934(v306, v308 + v307, type metadata accessor for FeedHeadline);
        sub_1D6D0A3D8(v308, v266, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v304 = 0;
        ++v303;
        v267 = *(&v744 + 1);
      }

      (*v301)(v266, v304, 1, v305);
      sub_1D6D09B18(v266, v267, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      if ((*v302)(v267, 1, v305) == 1)
      {
        swift_bridgeObjectRelease_n();

        v320 = v728;
        (*(v753 + 56))(v728, 1, 1, v742);
        v234 = v757;
        v322 = *(&v761 + 1);
        v323 = v761;
        goto LABEL_91;
      }

      v309 = *v267;
      v310 = v267 + *(v305 + 12);
      v311 = v746;
      sub_1D6D0A058(v310, v746, type metadata accessor for FeedHeadline);
      if ((v762 & ~*(v311 + 32)) == 0)
      {
        break;
      }

      sub_1D6D0A444(v311, type metadata accessor for FeedHeadline);
    }

    v324 = v311;
    v325 = v672;

    *&v776 = v325;
    v326 = v698;
    sub_1D5C17DC4(v309, v698);
    sub_1D6D0A444(v324, type metadata accessor for FeedHeadline);

    v319 = v326;
    v320 = v728;
    v321 = v728;
LABEL_75:
    sub_1D6D0A058(v319, v321, type metadata accessor for FeedHeadline);
    v327 = v753;
    v328 = v742;
    (*(v753 + 56))(v320, 0, 1, v742);
LABEL_88:
    v234 = v757;
    v348 = v760;
    v322 = *(&v761 + 1);
    v323 = v761;
LABEL_89:
    if ((*(v327 + 48))(v320, 1, v328) != 1)
    {
      v351 = v713;
      v352 = sub_1D6D0A058(v320, v713, type metadata accessor for FeedHeadline);
      if ((*(v351 + 33) & 0x10) != 0)
      {
        if (__OFADD__(v668, 1))
        {
          goto LABEL_314;
        }

        *&v348[v667] = v668 + 1;
      }

      v354 = v671;
      if ((v727 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v352, v353);
        *(&v667 - 2) = v351;
        v355 = v669;
        v357 = sub_1D5BF5F6C(sub_1D6D0A54C, (&v667 - 4), v356);
        v669 = v355;
        v354 = v357;
      }

      strcpy(&v776, "FeedHeadline");
      BYTE13(v776) = 0;
      HIWORD(v776) = -5120;
      *&v777 = v323;
      *(&v777 + 1) = v322;
      sub_1D5BDACA8(&v776, v354);

      swift_setDeallocating();
      swift_deallocClassInstance();

      v358 = v712;
      sub_1D6D0A058(v351, v712, type metadata accessor for FeedHeadline);
      v359 = v358;
      v360 = v741;
      sub_1D6D0A058(v359, v741, type metadata accessor for FeedHeadline);
      v362 = *v360;
      v361 = v360[1];
      v363 = v720;
      v364 = v759;
      v365 = v758;
      v755 = sub_1D6196E44(v720, v759, v758, v362, v361);
      v784 = v755;
      v366 = sub_1D6196F00(v363, v364, v365, v362, v361);
      v783 = v366;
      v756 = v361;
      if (v365)
      {
        v367 = v365;
        v368 = v742;
        v369 = v722;
        if (*(v363 + 16))
        {
          v370 = sub_1D5B69D90(v364, v367);
          if (v371)
          {
            v372 = *(*(*(v363 + 56) + 8 * v370) + 136);
            if (*(v372 + 16))
            {

              v373 = sub_1D5B69D90(v362, v361);
              if (v374)
              {
                v375 = *(v372 + 56) + 48 * v373;
                v376 = *(v375 + 8);
                v754 = *v375;
                v377 = v362;
                v378 = *(v375 + 16);
                v379 = *(v375 + 24);
                v380 = *(v375 + 40);
                *&v761 = *(v375 + 32);
                v785 = v376;

                v762 = v378;

                *(&v761 + 1) = v379;
                v362 = v377;

                v758 = v380;
                v381 = v754;

                goto LABEL_192;
              }
            }
          }
        }

        v381 = 0;
        v785 = 0;
        v762 = 0;
        v761 = 0uLL;
        v758 = 0;
LABEL_192:
        *(&v777 + 1) = v368;
        v511 = sub_1D6D098EC(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
        *&v778 = v511;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v776);
        sub_1D6D09934(v741, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
        sub_1D6818590(&v776, v369);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v759 = v511;
        if (EnumCaseMultiPayload != 8)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v514 = v693;
            sub_1D6D0A058(v369, v693, type metadata accessor for FeedWebEmbed);
            v515 = sub_1D6944620();
            sub_1D5D505F0(v515);
            v516 = sub_1D69449D8();
            sub_1D5B886D0(v516);
            v517 = type metadata accessor for FeedWebEmbed;
            v518 = v514;
          }

          else
          {
            v517 = type metadata accessor for FeedItem;
            v518 = v369;
          }

          goto LABEL_201;
        }

        v753 = v362;
        v519 = v710;
        sub_1D6D0A058(v369, v710, type metadata accessor for FeedCustomItem);
        v520 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
        swift_beginAccess();
        v521 = *(v520 + 8);
        v522 = v519 + *(v694 + 20);
        v524 = *(v522 + 16);
        v523 = *(v522 + 24);
        if (*(v521 + 16))
        {

          v525 = sub_1D5B69D90(v524, v523);
          if (v526)
          {
            v754 = v381;
            v527 = v678;
            sub_1D6D09934(*(v521 + 56) + *(v677 + 72) * v525, v678, sub_1D6AC4E74);
            v528 = *(v527 + 32);
            v529 = *(v527 + 64);
            v767 = *(v527 + 48);
            v768 = v529;
            v769 = *(v527 + 80);
            v530 = *(v527 + 16);
            v764 = *v527;
            v765 = v530;
            v766 = v528;
            sub_1D62B7D1C(&v764, v763);
            sub_1D6D0A444(v527, sub_1D6AC4E74);

            v772 = v766;
            v773 = v767;
            v774 = v768;
            LOBYTE(v775) = v769;
            v531 = v769 >> 6;
            v770 = v764;
            v771 = v765;
            if (!v531)
            {
              v532 = v754;
              goto LABEL_259;
            }

            v381 = v754;
            if (v531 == 1)
            {
              v532 = v754;
LABEL_259:
              sub_1D67F58E4(v532, v785);

              v778 = v772;
              v779 = v773;
              v780 = v774;
              LOBYTE(v781) = v775;
              v776 = v770;
              v777 = v771;
              goto LABEL_260;
            }

            LODWORD(v745) = v769;
            v740 = *(&v766 + 1);
            v626 = v766;
            v743 = v767;
            v744 = v768;
            v763[0] = v766;
            sub_1D6D098B8(0);
            sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8, MEMORY[0x1E69E6328]);
            sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
            v746 = v626;

            v627 = sub_1D72623BC();
            v628 = *(v522 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 28));
            v752 = *(v628 + 16);
            if (v752)
            {
              v629 = 0;
              v747 = (*(v726 + 80) + 32) & ~*(v726 + 80);
              k = (v628 + v747);
              v751 = v627;
              do
              {
                v631 = v723;
                if (v629 >= *(v628 + 16))
                {
                  goto LABEL_312;
                }

                v632 = *(v726 + 72);
                sub_1D6D09934(k + v632 * v629, v723, type metadata accessor for FormatOption);
                if (*(v627 + 16) && (v633 = sub_1D5B69D90(*v631, v631[1]), (v634 & 1) != 0))
                {
                  v754 = v366;
                  v635 = v628;
                  v636 = v381;
                  v637 = *(v627 + 56) + *(v705 + 72) * v633;
                  v638 = v681;
                  sub_1D6D09934(v637, v681, type metadata accessor for FormatPropertyDefinition);
                  v639 = v690;
                  sub_1D6D0A058(v638, v690, type metadata accessor for FormatPropertyDefinition);
                  type metadata accessor for FormatOptionConverter();
                  v640 = v689;
                  v641 = v669;
                  sub_1D6AC31AC(v631, v639, v689);
                  if (v641)
                  {

                    sub_1D67F58E4(v636, v785);
                    sub_1D60CF6F4(v746, v740, v743, *(&v743 + 1), v744, *(&v744 + 1), v745);
                    sub_1D62B7D78(&v764);
                    sub_1D6D0A444(v690, type metadata accessor for FormatPropertyDefinition);

                    sub_1D6D0A444(v741, type metadata accessor for FeedHeadline);
                    sub_1D6D0A444(v723, type metadata accessor for FormatOption);
                    sub_1D6D0A444(v710, type metadata accessor for FeedCustomItem);

                    return;
                  }

                  sub_1D6D09934(v640, v688, type metadata accessor for FormatOption);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v669 = 0;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v754 = sub_1D5CEABA0(0, v754[2] + 1, 1, v754);
                  }

                  v381 = v636;
                  v644 = v754[2];
                  v643 = v754[3];
                  v645 = v644 + 1;
                  v628 = v635;
                  if (v644 >= v643 >> 1)
                  {
                    v754 = sub_1D5CEABA0((v643 > 1), v644 + 1, 1, v754);
                  }

                  sub_1D6D0A444(v689, type metadata accessor for FormatOption);
                  sub_1D6D0A444(v690, type metadata accessor for FormatPropertyDefinition);
                  v630 = v688;
                  v366 = v754;
                }

                else
                {
                  sub_1D6D09934(v631, v714, type metadata accessor for FormatOption);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v366 = sub_1D5CEABA0(0, *(v366 + 2) + 1, 1, v366);
                  }

                  v644 = *(v366 + 2);
                  v646 = *(v366 + 3);
                  v645 = v644 + 1;
                  if (v644 >= v646 >> 1)
                  {
                    v366 = sub_1D5CEABA0((v646 > 1), v644 + 1, 1, v366);
                  }

                  v630 = v714;
                }

                ++v629;
                sub_1D6D0A444(v723, type metadata accessor for FormatOption);
                *(v366 + 2) = v645;
                sub_1D6D0A058(v630, &v366[v747 + v644 * v632], type metadata accessor for FormatOption);
                v783 = v366;
                v627 = v751;
              }

              while (v752 != v629);
            }

            v763[0] = v628;
            sub_1D5B5AD98(0);
            sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98, MEMORY[0x1E69E6328]);
            sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
            v647 = sub_1D72623AC();
            v648 = v746;
            v649 = v697;
            v362 = v753;
            v754 = *(v746 + 2);
            if (!v754)
            {
LABEL_291:
              sub_1D60CF6F4(v648, v740, v743, *(&v743 + 1), v744, *(&v744 + 1), v745);

              sub_1D62B7D78(&v764);
              v517 = type metadata accessor for FeedCustomItem;
              v518 = v710;
LABEL_201:
              sub_1D6D0A444(v518, v517);
              v533 = v757;
              v534 = v783;
              v535 = v784;
              v536 = v760[88];
              v760 = v783;
              if (v727)
              {
                swift_beginAccess();
                if ((v536 & 1) != 0 || !*(*(v533 + 32) + 16) || (, sub_1D5B69D90(v718, v719), v538 = v537, , (v538 & 1) == 0))
                {
                  v539 = v533;
                  v540 = v741[4];
                  v541 = *(*(v539 + 80) + 16);
                  if (v541)
                  {
                    sub_1D5B69D90(v362, v756);
                    v541 = 0x4000000000;
                    if ((v542 & 1) == 0)
                    {
                      v541 = 0;
                    }
                  }

                  *&v776 = v541 | v540;

                  v543 = sub_1D713CCF4();
                  v544 = sub_1D5BA8750(v543, v535);

                  v545 = v741;
                  v546 = sub_1D5EE52D8();
                  v547 = sub_1D5BA8750(v546, v544);

                  *(&v765 + 1) = v742;
                  *&v766 = v759;
                  v548 = __swift_allocate_boxed_opaque_existential_1(&v764);
                  sub_1D6D09934(v545, v548, type metadata accessor for FeedHeadline);
                  sub_1D5B68374(&v764, &v770);

                  v549 = v547;
                  if (v785)
                  {
                    v549 = sub_1D5BA8750(&unk_1F50F6670, v547);
                    sub_1D5BFB68C(&unk_1F50F6690);
                  }

                  v756 = v547;
                  v759 = v535;
                  *(&v772 + 1) = v549;
                  v550 = *(v534 + 2);
                  if (v550)
                  {
                    v754 = v381;
                    *&v776 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v550, 0);
                    v551 = v776;
                    v552 = &v534[(*(v726 + 80) + 32) & ~*(v726 + 80)];
                    v553 = *(v726 + 72);
                    v554 = v550;
                    do
                    {
                      v555 = v749;
                      sub_1D6D09934(v552, v749, type metadata accessor for FormatOption);
                      v556 = swift_allocBox();
                      sub_1D6D0A058(v555, v557, type metadata accessor for FormatOption);
                      *&v776 = v551;
                      v559 = *(v551 + 16);
                      v558 = *(v551 + 24);
                      if (v559 >= v558 >> 1)
                      {
                        sub_1D5D24610((v558 > 1), v559 + 1, 1);
                        v551 = v776;
                      }

                      *(v551 + 16) = v559 + 1;
                      *(v551 + 8 * v559 + 32) = v556 | 0x1000000000000004;
                      v552 += v553;
                      --v554;
                    }

                    while (v554);
                    __swift_destroy_boxed_opaque_existential_1(&v764);
                    v381 = v754;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v764);
                    v551 = MEMORY[0x1E69E7CC0];
                  }

                  *&v773 = v551;
                  *(&v773 + 1) = v381;
                  v587 = v785;
                  *&v774 = v785;
                  *(&v774 + 1) = v762;
                  *&v775 = *(&v761 + 1);
                  *(&v775 + 1) = v761;
                  v782 = v758;
                  v776 = v770;
                  v777 = v771;
                  v778 = v772;
                  v779 = v773;
                  v780 = v774;
                  v781 = v775;
                  v588 = v719;

                  v589 = v381;
                  sub_1D67F5880(v381, v587);
                  sub_1D6D60C48(&v776, v718, v588);
                  v590 = v741;
                  v591 = v707;
                  sub_1D6D09934(v741, v707, type metadata accessor for FeedHeadline);
                  v592 = v591;
                  v593 = v703;
                  sub_1D6D09934(v592, v703, type metadata accessor for FeedHeadline);
                  if (v587)
                  {
                    v594 = sub_1D5BA8750(&unk_1F50F66A0, v756);
                    sub_1D5BFB68C(&unk_1F50F66C0);
                    v595 = v760;
                  }

                  else
                  {
                    v595 = v760;
                    v594 = v756;
                  }

                  *(v593 + *(v724 + 28)) = v594;
                  v603 = v589;
                  if (v550)
                  {
                    *&v776 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v550, 0);
                    v604 = v776;
                    v605 = &v595[(*(v726 + 80) + 32) & ~*(v726 + 80)];
                    v606 = *(v726 + 72);
                    do
                    {
                      v607 = v749;
                      sub_1D6D09934(v605, v749, type metadata accessor for FormatOption);
                      v608 = swift_allocBox();
                      sub_1D6D0A058(v607, v609, type metadata accessor for FormatOption);
                      *&v776 = v604;
                      v611 = *(v604 + 16);
                      v610 = *(v604 + 24);
                      if (v611 >= v610 >> 1)
                      {
                        sub_1D5D24610((v610 > 1), v611 + 1, 1);
                        v604 = v776;
                      }

                      *(v604 + 16) = v611 + 1;
                      *(v604 + 8 * v611 + 32) = v608 | 0x1000000000000004;
                      v605 += v606;
                      --v550;
                    }

                    while (v550);
                    sub_1D6D0A444(v707, type metadata accessor for FeedHeadline);
                    v590 = v741;
                    v593 = v703;
                    goto LABEL_255;
                  }

                  v619 = v707;
LABEL_254:
                  sub_1D6D0A444(v619, type metadata accessor for FeedHeadline);
                  v604 = MEMORY[0x1E69E7CC0];
LABEL_255:
                  v620 = v724;
                  *(v593 + *(v724 + 32)) = v604;
                  v621 = (v593 + *(v620 + 36));
                  v622 = v785;
                  *v621 = v603;
                  v621[1] = v622;
                  v623 = *(&v761 + 1);
                  v621[2] = v762;
                  v621[3] = v623;
                  v624 = v758;
                  v621[4] = v761;
                  v621[5] = v624;
                  sub_1D6D0A058(v593, v706, sub_1D6D0945C);
                  swift_endAccess();

                  sub_1D6D0A444(v590, type metadata accessor for FeedHeadline);
                  return;
                }
              }

              else
              {
                swift_beginAccess();
                if ((v536 & 1) != 0 || !*(*(v533 + 24) + 16) || (, sub_1D5B69D90(v718, v719), v561 = v560, , (v561 & 1) == 0))
                {
                  v566 = v533;
                  v567 = v741[4];
                  v568 = *(*(v566 + 80) + 16);
                  if (v568)
                  {
                    sub_1D5B69D90(v362, v756);
                    v568 = 0x4000000000;
                    if ((v569 & 1) == 0)
                    {
                      v568 = 0;
                    }
                  }

                  *&v776 = v568 | v567;

                  v570 = sub_1D713CCF4();
                  v571 = sub_1D5BA8750(v570, v535);

                  v572 = v741;
                  v573 = sub_1D5EE52D8();
                  v574 = sub_1D5BA8750(v573, v571);

                  *(&v765 + 1) = v742;
                  *&v766 = v759;
                  v575 = __swift_allocate_boxed_opaque_existential_1(&v764);
                  sub_1D6D09934(v572, v575, type metadata accessor for FeedHeadline);
                  sub_1D5B68374(&v764, &v770);

                  v576 = v574;
                  if (v785)
                  {
                    v576 = sub_1D5BA8750(&unk_1F50F66D0, v574);
                    sub_1D5BFB68C(&unk_1F50F66F0);
                  }

                  v756 = v574;
                  v759 = v535;
                  *(&v772 + 1) = v576;
                  v577 = *(v534 + 2);
                  if (v577)
                  {
                    v754 = v381;
                    *&v776 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v577, 0);
                    v578 = v776;
                    v579 = &v534[(*(v726 + 80) + 32) & ~*(v726 + 80)];
                    v580 = *(v726 + 72);
                    v581 = v577;
                    do
                    {
                      v582 = v749;
                      sub_1D6D09934(v579, v749, type metadata accessor for FormatOption);
                      v583 = swift_allocBox();
                      sub_1D6D0A058(v582, v584, type metadata accessor for FormatOption);
                      *&v776 = v578;
                      v586 = *(v578 + 16);
                      v585 = *(v578 + 24);
                      if (v586 >= v585 >> 1)
                      {
                        sub_1D5D24610((v585 > 1), v586 + 1, 1);
                        v578 = v776;
                      }

                      *(v578 + 16) = v586 + 1;
                      *(v578 + 8 * v586 + 32) = v583 | 0x1000000000000004;
                      v579 += v580;
                      --v581;
                    }

                    while (v581);
                    __swift_destroy_boxed_opaque_existential_1(&v764);
                    v381 = v754;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v764);
                    v578 = MEMORY[0x1E69E7CC0];
                  }

                  *&v773 = v578;
                  *(&v773 + 1) = v381;
                  v596 = v785;
                  *&v774 = v785;
                  *(&v774 + 1) = v762;
                  *&v775 = *(&v761 + 1);
                  *(&v775 + 1) = v761;
                  v782 = v758;
                  v776 = v770;
                  v777 = v771;
                  v778 = v772;
                  v779 = v773;
                  v780 = v774;
                  v781 = v775;
                  v597 = v719;

                  v598 = v381;
                  sub_1D67F5880(v381, v596);
                  sub_1D6D60C48(&v776, v718, v597);
                  v590 = v741;
                  v599 = v708;
                  sub_1D6D09934(v741, v708, type metadata accessor for FeedHeadline);
                  v600 = v599;
                  v593 = v704;
                  sub_1D6D09934(v600, v704, type metadata accessor for FeedHeadline);
                  if (v596)
                  {
                    v601 = sub_1D5BA8750(&unk_1F50F6700, v756);
                    sub_1D5BFB68C(&unk_1F50F6720);
                    v602 = v760;
                  }

                  else
                  {
                    v602 = v760;
                    v601 = v756;
                  }

                  *(v593 + *(v724 + 28)) = v601;
                  v603 = v598;
                  if (v577)
                  {
                    *&v776 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v577, 0);
                    v604 = v776;
                    v612 = &v602[(*(v726 + 80) + 32) & ~*(v726 + 80)];
                    v613 = *(v726 + 72);
                    do
                    {
                      v614 = v749;
                      sub_1D6D09934(v612, v749, type metadata accessor for FormatOption);
                      v615 = swift_allocBox();
                      sub_1D6D0A058(v614, v616, type metadata accessor for FormatOption);
                      *&v776 = v604;
                      v618 = *(v604 + 16);
                      v617 = *(v604 + 24);
                      if (v618 >= v617 >> 1)
                      {
                        sub_1D5D24610((v617 > 1), v618 + 1, 1);
                        v604 = v776;
                      }

                      *(v604 + 16) = v618 + 1;
                      *(v604 + 8 * v618 + 32) = v615 | 0x1000000000000004;
                      v612 += v613;
                      --v577;
                    }

                    while (v577);
                    sub_1D6D0A444(v708, type metadata accessor for FeedHeadline);
                    v590 = v741;
                    v593 = v704;
                    goto LABEL_255;
                  }

                  v619 = v708;
                  goto LABEL_254;
                }
              }

              sub_1D6752B3C();
              swift_allocError();
              v562 = v719;
              *v563 = v718;
              *(v563 + 8) = v562;
              *(v563 + 56) = 0;
              swift_willThrow();
              swift_endAccess();

              sub_1D67F58E4(v381, v785);

              v564 = type metadata accessor for FeedHeadline;
              v565 = v741;
LABEL_261:
              sub_1D6D0A444(v565, v564);
              return;
            }

            v650 = 0;
            v752 = v746 + ((*(v705 + 80) + 32) & ~*(v705 + 80));
            v651 = (v726 + 56);
            while (1)
            {
              if (v650 >= *(v648 + 16))
              {
                goto LABEL_313;
              }

              sub_1D6D09934(v752 + *(v705 + 72) * v650, v649, type metadata accessor for FormatPropertyDefinition);
              v656 = FormatPropertyDefinition.identifier.getter();
              if (*(v647 + 16))
              {
                v658 = sub_1D5B69D90(v656, v657);
                v660 = v659;

                if (v660)
                {
                  v652 = v726;
                  v653 = v695;
                  sub_1D6D09934(*(v647 + 56) + *(v726 + 72) * v658, v695, type metadata accessor for FormatOption);
                  v649 = v697;
                  sub_1D6D0A444(v697, type metadata accessor for FormatPropertyDefinition);
                  (*(v652 + 56))(v653, 0, 1, v750);
                  v654 = sub_1D5E04C00;
                  v655 = v653;
                  goto LABEL_283;
                }
              }

              else
              {
              }

              v661 = v695;
              (*v651)(v695, 1, 1, v750);
              sub_1D6D0A444(v661, sub_1D5E04C00);
              v649 = v697;
              if (sub_1D695C4AC())
              {

                sub_1D67F58E4(v381, v785);

                sub_1D60CF6F4(v746, v740, v743, *(&v743 + 1), v744, *(&v744 + 1), v745);

                type metadata accessor for FormatLayoutError(0);
                sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                swift_allocError();
                v663 = v662;
                sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition, "object property ");
                v665 = *(v664 + 48);
                v666 = v710;
                sub_1D6D09934(v710, v663, type metadata accessor for FeedCustomItem);
                sub_1D6D09934(v649, v663 + v665, type metadata accessor for FormatPropertyDefinition);
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                sub_1D62B7D78(&v764);
                sub_1D6D0A444(v649, type metadata accessor for FormatPropertyDefinition);
                sub_1D6D0A444(v741, type metadata accessor for FeedHeadline);
                v564 = type metadata accessor for FeedCustomItem;
                v565 = v666;
                goto LABEL_261;
              }

              v654 = type metadata accessor for FormatPropertyDefinition;
              v655 = v649;
LABEL_283:
              sub_1D6D0A444(v655, v654);
              v362 = v753;
              v648 = v746;
              if (v754 == ++v650)
              {
                goto LABEL_291;
              }
            }
          }
        }

        sub_1D67F58E4(v381, v785);

        LOBYTE(v781) = 0;
        v779 = 0u;
        v780 = 0u;
        v777 = 0u;
        v778 = 0u;
        v776 = 0u;
LABEL_260:
        type metadata accessor for FormatLayoutError(0);
        sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v625 = v524;
        v625[1] = v523;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D6D09524(&v776, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
        sub_1D6D0A444(v741, type metadata accessor for FeedHeadline);
        v564 = type metadata accessor for FeedCustomItem;
        v565 = v710;
        goto LABEL_261;
      }

      goto LABEL_170;
    }

LABEL_91:
    sub_1D6D0A444(v320, sub_1D5B69BE0);
    sub_1D5ED8048();
    v230 = swift_allocError();
    strcpy(v349, "FeedHeadline");
    v349[13] = 0;
    *(v349 + 7) = -5120;
    *(v349 + 2) = v323;
    *(v349 + 3) = v322;
    *(v349 + 4) = v762;
    *(v349 + 5) = 1;
    v350 = v758;
    *(v349 + 6) = v759;
    *(v349 + 7) = v350;
    v349[64] = 0;
    swift_willThrow();

LABEL_16:
    if ((*(v234 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
    {
      swift_willThrow();
      return;
    }

    v235 = *(v755 + 16);
    v759 = v230;
    v236 = 0;
    if (v235)
    {
      v237 = (v755 + 32);
      do
      {
        v238 = *v237++;
        v239 = qword_1D7349118[v238];
        if ((v239 & ~v236) == 0)
        {
          v239 = 0;
        }

        v236 |= v239;
        --v235;
      }

      while (v235);
    }

    v240 = swift_allocObject();
    *(v240 + 16) = v236;
    v241 = swift_allocObject();
    v758 = v241;
    v242 = MEMORY[0x1E69E7CC0];
    *(v241 + 16) = MEMORY[0x1E69E7CC0];
    v243 = (v241 + 16);
    v244 = swift_allocObject();
    *(v244 + 16) = sub_1D6D0A5D8;
    *(v244 + 24) = v240;
    swift_beginAccess();

    v245 = sub_1D5C0F8FC(0, 1, 1, v242);
    v247 = v245[2];
    v246 = v245[3];
    if (v247 >= v246 >> 1)
    {
      v245 = sub_1D5C0F8FC((v246 > 1), v247 + 1, 1, v245);
    }

    v245[2] = v247 + 1;
    v248 = &v245[2 * v247];
    v248[4] = sub_1D6D0A5F4;
    v248[5] = v244;
    *v243 = v245;
    swift_endAccess();

    v249 = *(v785 + 16);
    v250 = *(&v761 + 1);

    v251 = v761;
    if (!v249 || (v252 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, v761, v250), (v253 & 1) == 0) || (v254 = *(*(v785 + 56) + 8 * v252), !*(v254 + 16)))
    {
      sub_1D5ED8048();
      swift_allocError();
      strcpy(v258, "FeedHeadline");
      *(v258 + 13) = 0;
      *(v258 + 14) = -5120;
      *(v258 + 16) = v251;
      *(v258 + 24) = v250;
LABEL_30:
      *(v258 + 32) = v762;
      *(v258 + 40) = 1;
      *(v258 + 48) = 0;
      *(v258 + 56) = 0;
      *(v258 + 64) = 0;
      swift_willThrow();
      v259 = v759;
LABEL_31:

      swift_setDeallocating();
      swift_deallocClassInstance();
      return;
    }

    v256 = sub_1D5BF08EC(v255, 0, 0);
    v257 = v759;
    v669 = 0;
    v270 = sub_1D5C14D80(v256);

    if (v270)
    {
      v271 = *(v270 + 16);
      if (v271)
      {
        v745 = v254;
        v272 = v735;
        v273 = v760;
        v274 = *&v760[v735[17]];
        *&v744 = v735[19];
        v276 = v754;
        v277 = v717;
        *(&v744 + 1) = *&v760[v744];
        v275 = *(&v744 + 1);
        if (*(&v744 + 1) < v274)
        {
          v278 = *v760;
          v747 = v270;
          v756 = v245;
          if (v278)
          {
          }

          else
          {
            sub_1D62F071C(v270);
            v271 = *(v279 + 16);
          }

          v400 = v737;
          v401 = v736;
          v752 = v762 | 0x1000;
          v785 = v734 + 56;
          v755 = v734 + 48;
          v746 = v279;

          i = 0;
          v403 = &qword_1EDF1ACC0;
          k = v271;
          if (v271)
          {
            goto LABEL_120;
          }

LABEL_123:
          v413 = 1;
          for (i = v271; ; ++i)
          {
            (*v785)(v400, v413, 1, v276);
            sub_1D6D09B18(v400, v401, &unk_1EDF1ACB0, v403, type metadata accessor for FeedHeadline);
            if ((*v755)(v401, 1, v276) == 1)
            {
              break;
            }

            v404 = v400;
            v405 = v403;
            v406 = v277;
            v407 = *v401;
            v408 = v743;
            sub_1D6D0A058(v401 + *(v276 + 12), v743, type metadata accessor for FeedHeadline);
            if ((v752 & ~*(v408 + 32)) == 0)
            {
              v435 = v746;

              *&v776 = v435;
              v436 = v685;
              sub_1D5C17DC4(v407, v685);
              sub_1D6D0A444(v408, type metadata accessor for FeedHeadline);

              v437 = v684;
              sub_1D6D0A058(v436, v684, type metadata accessor for FeedHeadline);
              v438 = v437;
              v439 = v683;
              sub_1D6D0A058(v438, v683, type metadata accessor for FeedHeadline);
              v434 = v716;
              sub_1D6D0A058(v439, v716, type metadata accessor for FeedHeadline);
              v440 = v753;
              v441 = v742;
              (*(v753 + 56))(v434, 0, 1, v742);
              goto LABEL_156;
            }

            sub_1D6D0A444(v408, type metadata accessor for FeedHeadline);
            v277 = v406;
            v271 = k;
            v403 = v405;
            v400 = v404;
            if (i == k)
            {
              goto LABEL_123;
            }

LABEL_120:
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_300;
            }

            if (i >= *(v746 + 2))
            {
              goto LABEL_301;
            }

            v409 = v277;
            v410 = v746 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * i;
            v411 = *(v276 + 12);
            v412 = v751;
            *v751 = i;
            sub_1D6D09934(v410, v412 + v411, type metadata accessor for FeedHeadline);
            v400 = v737;
            sub_1D6D0A3D8(v412, v737, v403, type metadata accessor for FeedHeadline);
            v413 = 0;
            v277 = v409;
            v401 = v736;
          }

          swift_bridgeObjectRelease_n();
          v272 = v735;
          v273 = v760;
          v275 = *(&v744 + 1);
          v270 = v747;
        }

        v414 = *&v273[v272[18]];
        v415 = v414 - v275;
        v416 = v740;
        v417 = v709;
        v418 = v738;
        if (__OFSUB__(v414, v275))
        {
          goto LABEL_311;
        }

        v419 = *v273;
        if (v415 >= 1)
        {
          if ((*v273 & 1) == 0)
          {
            sub_1D62F071C(v270);
            v421 = v420;

            v270 = v421;
          }

          v422 = *(v270 + 16);
          v785 = v734 + 56;
          v423 = (v734 + 48);
          v747 = v270;

          j = 0;
          v425 = v699;
          v755 = v422;
          if (v422)
          {
            goto LABEL_134;
          }

LABEL_137:
          v433 = 1;
          for (j = v422; ; ++j)
          {
            (*v785)(v425, v433, 1, v276);
            sub_1D6D09B18(v425, v417, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            if ((*v423)(v417, 1, v276) == 1)
            {
              break;
            }

            v426 = *v417;
            sub_1D6D0A058(v417 + *(v276 + 12), v418, type metadata accessor for FeedHeadline);
            if ((v762 & ~*(v418 + 32)) == 0)
            {
              v442 = v747;

              *&v776 = v442;
              v443 = v418;
              v444 = v682;
              sub_1D5C17DC4(v426, v682);
              sub_1D6D0A444(v443, type metadata accessor for FeedHeadline);

              v434 = v716;
              sub_1D6D0A058(v444, v716, type metadata accessor for FeedHeadline);
              v440 = v753;
              v441 = v742;
              (*(v753 + 56))(v434, 0, 1, v742);
              goto LABEL_156;
            }

            sub_1D6D0A444(v418, type metadata accessor for FeedHeadline);
            v422 = v755;
            if (j == v755)
            {
              goto LABEL_137;
            }

LABEL_134:
            if ((j & 0x8000000000000000) != 0)
            {
              goto LABEL_302;
            }

            if (j >= *(v747 + 16))
            {
              goto LABEL_303;
            }

            v427 = v417;
            v428 = v425;
            v429 = v747 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * j;
            v430 = *(v276 + 12);
            v431 = v751;
            *v751 = j;
            sub_1D6D09934(v429, v431 + v430, type metadata accessor for FeedHeadline);
            v432 = v431;
            v425 = v428;
            sub_1D6D0A3D8(v432, v428, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v433 = 0;
            v417 = v427;
            v418 = v738;
          }

          swift_bridgeObjectRelease_n();

          v434 = v716;
          (*(v753 + 56))(v716, 1, 1, v742);
          goto LABEL_158;
        }

        v747 = v270;
        if (v419)
        {

          v752 = v270;
        }

        else
        {
          sub_1D62F071C(v270);
          v752 = v445;
        }

        v446 = v733;
        v447 = *(v752 + 16);
        v785 = v734 + 56;
        v755 = v734 + 48;

        v448 = 0;
        for (k = v447; ; v447 = k)
        {
          if (v448 == v447)
          {
            v449 = 1;
            v448 = v447;
          }

          else
          {
            if ((v448 & 0x8000000000000000) != 0)
            {
              goto LABEL_306;
            }

            if (v448 >= *(v752 + 16))
            {
              goto LABEL_307;
            }

            v450 = v752 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * v448;
            v451 = *(v276 + 12);
            v452 = v751;
            *v751 = v448;
            sub_1D6D09934(v450, v452 + v451, type metadata accessor for FeedHeadline);
            sub_1D6D0A3D8(v452, v416, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v449 = 0;
            ++v448;
            v446 = v733;
          }

          v453 = *v785;
          (*v785)(v416, v449, 1, v276);
          sub_1D6D09B18(v416, v277, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          v454 = *v755;
          if ((*v755)(v277, 1, v276) == 1)
          {
            break;
          }

          v455 = *v277;
          sub_1D6D0A058(v277 + *(v276 + 12), v446, type metadata accessor for FeedHeadline);
          v456 = *(v446 + 32);
          if ((v762 & ~v456) == 0 && (v456 & 0x1000) == 0)
          {
            v457 = v446;
            v458 = v752;

            *&v776 = v458;
            v459 = v679;
            sub_1D5C17DC4(v455, v679);
            sub_1D6D0A444(v457, type metadata accessor for FeedHeadline);

            v460 = v696;
            sub_1D6D0A058(v459, v696, type metadata accessor for FeedHeadline);
            v440 = v753;
            v461 = *(v753 + 56);
            v441 = v742;
            v461(v460, 0, 1, v742);
            v434 = v716;
            sub_1D6D0A058(v460, v716, type metadata accessor for FeedHeadline);
            v461(v434, 0, 1, v441);
            goto LABEL_156;
          }

          sub_1D6D0A444(v446, type metadata accessor for FeedHeadline);
          v416 = v740;
        }

        swift_bridgeObjectRelease_n();
        v485 = *(v753 + 56);
        k = (v753 + 56);
        v746 = v485;
        v485(v696, 1, 1, v742);
        v486 = v747;
        if ((*v760 & 1) == 0)
        {
          sub_1D62F071C(v747);
          v488 = v487;

          v486 = v488;
        }

        v489 = *(v486 + 16);
        v747 = v486;

        v490 = 0;
        while (1)
        {
          if (v490 == v489)
          {
            v491 = 1;
            v490 = v489;
            v492 = v731;
          }

          else
          {
            if ((v490 & 0x8000000000000000) != 0)
            {
              goto LABEL_309;
            }

            if (v490 >= *(v747 + 16))
            {
              goto LABEL_310;
            }

            v752 = v490 + 1;
            v493 = v747 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * v490;
            v494 = *(v276 + 12);
            v495 = v751;
            *v751 = v490;
            sub_1D6D09934(v493, v495 + v494, type metadata accessor for FeedHeadline);
            v496 = v495;
            v492 = v731;
            sub_1D6D0A3D8(v496, v731, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v491 = 0;
            v490 = v752;
          }

          v453(v492, v491, 1, v276);
          v497 = v492;
          v498 = v730;
          sub_1D6D09B18(v497, v730, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          if (v454(v498, 1, v276) == 1)
          {
            swift_bridgeObjectRelease_n();
            v507 = 1;
            v434 = v716;
            goto LABEL_188;
          }

          v499 = *v498;
          v500 = v498 + *(v276 + 12);
          v501 = v729;
          sub_1D6D0A058(v500, v729, type metadata accessor for FeedHeadline);
          if ((v762 & ~*(v501 + 32)) == 0)
          {
            break;
          }

          sub_1D6D0A444(v501, type metadata accessor for FeedHeadline);
        }

        v508 = v747;

        *&v776 = v508;
        v509 = v676;
        sub_1D5C17DC4(v499, v676);
        sub_1D6D0A444(v501, type metadata accessor for FeedHeadline);

        v434 = v716;
        sub_1D6D0A058(v509, v716, type metadata accessor for FeedHeadline);
        v507 = 0;
LABEL_188:
        v441 = v742;
        v746(v434, v507, 1, v742);
        v440 = v753;
        v510 = v696;
        if ((*(v753 + 48))(v696, 1, v441) != 1)
        {
          sub_1D6D0A444(v510, sub_1D5B69BE0);
        }

LABEL_156:
        if ((*(v440 + 48))(v434, 1, v441) == 1)
        {

LABEL_158:
          sub_1D6D0A444(v434, sub_1D5B69BE0);
          sub_1D5ED8048();
          swift_allocError();
          strcpy(v258, "FeedHeadline");
          *(v258 + 13) = 0;
          *(v258 + 14) = -5120;
          v462 = *(&v761 + 1);
          *(v258 + 16) = v761;
          *(v258 + 24) = v462;
          goto LABEL_30;
        }

        v463 = v692;
        v464 = sub_1D6D0A058(v434, v692, type metadata accessor for FeedHeadline);
        v466 = v745;
        if ((*(v463 + 33) & 0x10) != 0)
        {
          if (__OFADD__(*(&v744 + 1), 1))
          {
            goto LABEL_315;
          }

          *&v760[v744] = *(&v744 + 1) + 1;
        }

        if ((v727 & 1) == 0)
        {
          MEMORY[0x1EEE9AC00](v464, v465);
          *(&v667 - 2) = v463;
          v467 = v669;
          v466 = sub_1D5BF5F6C(sub_1D5BF619C, (&v667 - 4), v466);
          v669 = v467;
        }

        strcpy(&v776, "FeedHeadline");
        BYTE13(v776) = 0;
        HIWORD(v776) = -5120;
        v777 = v761;
        sub_1D5BDACA8(&v776, v466);

        swift_setDeallocating();
        swift_deallocClassInstance();

        v468 = v691;
        sub_1D6D0A058(v463, v691, type metadata accessor for FeedHeadline);
        v469 = v468;
        v470 = v741;
        sub_1D6D0A058(v469, v741, type metadata accessor for FeedHeadline);
        v362 = *v470;
        v471 = v470[1];
        v472 = v720;
        v473 = sub_1D6196E44(v720, 42, 0xE100000000000000, v362, v471);
        v784 = v473;
        v366 = sub_1D6196F00(v472, 42, 0xE100000000000000, v362, v471);
        v783 = v366;
        v474 = *(v472 + 16);
        v756 = v471;
        v755 = v473;
        if (v474 && (v475 = sub_1D5B69D90(42, 0xE100000000000000), (v476 & 1) != 0) && (v477 = *(*(*(v472 + 56) + 8 * v475) + 136), *(v477 + 16)))
        {

          v478 = sub_1D5B69D90(v362, v471);
          if (v479)
          {
            v480 = *(v477 + 56) + 48 * v478;
            v381 = *v480;
            v481 = *(v480 + 8);
            v482 = *(v480 + 16);
            v483 = *(v480 + 24);
            v484 = *(v480 + 40);
            *&v761 = *(v480 + 32);
            v785 = v481;

            v762 = v482;

            *(&v761 + 1) = v483;

            v758 = v484;

LABEL_171:
            v368 = v742;
            v369 = v722;
            goto LABEL_192;
          }
        }

        else
        {
        }

LABEL_170:
        v381 = 0;
        v785 = 0;
        v762 = 0;
        v761 = 0uLL;
        v758 = 0;
        goto LABEL_171;
      }
    }

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v280, "FeedHeadline");
    v280[13] = 0;
    *(v280 + 7) = -5120;
    v281 = *(&v761 + 1);
    *(v280 + 2) = v761;
    *(v280 + 3) = v281;
    *(v280 + 4) = v762;
    *(v280 + 5) = 1;
    *(v280 + 6) = 0;
    *(v280 + 7) = 0;
    v280[64] = 0;
    swift_willThrow();
    v259 = v257;
    goto LABEL_31;
  }

  v268 = *v221;
  v672 = v261;
  if (v268)
  {
  }

  else
  {
    sub_1D62F071C(v261);
    v262 = *(v269 + 16);
  }

  v282 = *(&v743 + 1);
  v283 = k;
  v674 = v762 | 0x1000;
  v745 = (v734 + 56);
  v284 = (v734 + 48);
  v670 = v269;

  v285 = 0;
  v673 = v262;
  if (v262)
  {
    goto LABEL_51;
  }

LABEL_54:
  v293 = 1;
  v285 = v262;
  v289 = v754;
  while (1)
  {
    (*v745)(v282, v293, 1, v289);
    sub_1D6D09B18(v282, v283, &unk_1EDF1ACB0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
    if ((*v284)(v283, 1, v289) == 1)
    {
      swift_bridgeObjectRelease_n();
      v221 = v760;
      v263 = v735;
      v265 = v668;
      v261 = v672;
      v266 = v732;
      goto LABEL_57;
    }

    v286 = v283;
    v287 = *v283;
    sub_1D6D0A058(v286 + *(v289 + 12), v188, type metadata accessor for FeedHeadline);
    if ((v674 & ~*(v188 + 4)) == 0)
    {
      v313 = v670;

      *&v776 = v313;
      v314 = v702;
      sub_1D5C17DC4(v287, v702);
      sub_1D6D0A444(v188, type metadata accessor for FeedHeadline);

      v315 = v314;
      v316 = v701;
      sub_1D6D0A058(v315, v701, type metadata accessor for FeedHeadline);
      v317 = v316;
      v318 = v700;
      sub_1D6D0A058(v317, v700, type metadata accessor for FeedHeadline);
      v319 = v318;
      v320 = v728;
      v321 = v728;
      goto LABEL_75;
    }

    sub_1D6D0A444(v188, type metadata accessor for FeedHeadline);
    v283 = k;
    v262 = v673;
    if (v285 == v673)
    {
      goto LABEL_54;
    }

LABEL_51:
    if ((v285 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v285 >= *(v670 + 16))
    {
      goto LABEL_295;
    }

    v288 = v670 + ((*(v753 + 80) + 32) & ~*(v753 + 80)) + *(v753 + 72) * v285;
    v289 = v754;
    v290 = *(v754 + 12);
    v291 = v751;
    *v751 = v285;
    sub_1D6D09934(v288, v291 + v290, type metadata accessor for FeedHeadline);
    v292 = v291;
    v282 = *(&v743 + 1);
    sub_1D6D0A3D8(v292, *(&v743 + 1), &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
    v293 = 0;
    ++v285;
    v283 = k;
  }

  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
}