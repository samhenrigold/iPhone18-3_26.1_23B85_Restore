id sub_1B09257F4(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B09258B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_1B09258D0(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  v12[3] = a2;
  v12[2] = a3;
  v12[1] = a4 + 16;
  v14 = __dst[3];
  sub_1B074E7A8(&v14, v12);
  v11 = v14;
  sub_1B092A698(__dst, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  v5 = sub_1B0E44F58();
  sub_1B092A758(__dst);

  sub_1B039E440(&v11);
  *a5 = v5;
}

uint64_t sub_1B0925A50@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v378 = a6;
  v462 = a1;
  v461 = a2;
  v458 = a3;
  v459 = a4;
  v460 = a5;
  v380 = sub_1B074E050;
  v381 = sub_1B0394C30;
  v382 = sub_1B0394C24;
  v383 = sub_1B074DFFC;
  v384 = sub_1B039BA88;
  v385 = sub_1B039BB94;
  v386 = sub_1B0394C24;
  v387 = sub_1B039BBA0;
  v388 = sub_1B039BC08;
  v389 = 0x786F626C69616DLL;
  v390 = sub_1B06BA324;
  v391 = sub_1B074E0E4;
  v392 = sub_1B039BCF8;
  v393 = sub_1B092A7AC;
  v394 = sub_1B039BCF8;
  v395 = sub_1B092A7A4;
  v396 = sub_1B070B324;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0399178;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0398F5C;
  v402 = sub_1B039BA94;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0399178;
  v406 = sub_1B0398F5C;
  v407 = sub_1B0398F5C;
  v408 = sub_1B03991EC;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B03993BC;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B039BCEC;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B039BCEC;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B070B4B4;
  v421 = sub_1B074E050;
  v422 = sub_1B0394C24;
  v423 = sub_1B074DFFC;
  v424 = sub_1B039BA88;
  v425 = sub_1B0394C24;
  v426 = sub_1B039BBA0;
  v427 = sub_1B039BC08;
  v428 = sub_1B06BA324;
  v429 = sub_1B074E0E4;
  v430 = sub_1B039BCF8;
  v431 = sub_1B092A7A4;
  v432 = sub_1B070B324;
  v433 = sub_1B0398F5C;
  v434 = sub_1B0398F5C;
  v435 = sub_1B0399178;
  v436 = sub_1B0398F5C;
  v437 = sub_1B0398F5C;
  v438 = sub_1B039BA94;
  v439 = sub_1B0398F5C;
  v440 = sub_1B0398F5C;
  v441 = sub_1B0399178;
  v442 = sub_1B0398F5C;
  v443 = sub_1B0398F5C;
  v444 = sub_1B03991EC;
  v445 = sub_1B0398F5C;
  v446 = sub_1B0398F5C;
  v447 = sub_1B03993BC;
  v448 = sub_1B0398F5C;
  v449 = sub_1B0398F5C;
  v450 = sub_1B039BCEC;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0398F5C;
  v453 = sub_1B070B4B4;
  v498 = 0;
  v497 = 0;
  v496 = 0;
  v495 = 0;
  v494 = 0;
  v474 = 0;
  v454 = 0;
  v455 = _s6LoggerVMa_1(0);
  v456 = (*(*(v455 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v457 = v192 - v456;
  v463 = sub_1B0E439A8();
  v464 = *(v463 - 8);
  v465 = v463 - 8;
  v466 = (*(v464 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v462);
  v467 = v192 - v466;
  v468 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v469 = v192 - v468;
  v470 = *v8;
  v498 = v470;
  v497 = v9;
  v496 = v10;
  v495 = v11;
  v494 = v12;
  v471 = *(v9 + 32);
  MEMORY[0x1E69E5928](v471);
  MEMORY[0x1E69E5928](v470);
  v472 = v499;
  sub_1B091EEC4(v471, v470, v499);
  memcpy(__dst, v472, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v502, __dst, sizeof(v502));
    v485 = sub_1B0917A3C();
    v377 = v485;
    if ((v485 & 0x100000000) != 0)
    {
      (*(v464 + 16))(v469, v458, v463);

      sub_1B074B69C(v459 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v457);
      v14 = (v457 + *(v455 + 20));
      v313 = *v14;
      v314 = *(v14 + 1);
      v315 = *(v14 + 1);
      v316 = *(v14 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v457);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v312 = 36;
      v333 = 7;
      v15 = swift_allocObject();
      v16 = v314;
      v17 = v315;
      v18 = v316;
      v318 = v15;
      *(v15 + 16) = v313;
      *(v15 + 20) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v18;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = swift_allocObject();
      v20 = v314;
      v21 = v315;
      v22 = v316;
      v311 = v19;
      *(v19 + 16) = v313;
      *(v19 + 20) = v20;
      *(v19 + 24) = v21;
      *(v19 + 32) = v22;

      v332 = 32;
      v23 = swift_allocObject();
      v24 = v311;
      v323 = v23;
      *(v23 + 16) = v380;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      v25 = swift_allocObject();
      v26 = v314;
      v27 = v315;
      v28 = v316;
      v326 = v25;
      *(v25 + 16) = v313;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      MEMORY[0x1E69E5928](v470);
      v336 = 24;
      v29 = swift_allocObject();
      v30 = v461;
      v328 = v29;
      *(v29 + 16) = v470;
      sub_1B092A698(v30, &v484);
      v334 = swift_allocObject();
      memcpy((v334 + 16), v461, 0x28uLL);
      v364 = sub_1B0E43988();
      v365 = sub_1B0E458E8();
      v330 = 17;
      v337 = swift_allocObject();
      v320 = 16;
      *(v337 + 16) = 16;
      v338 = swift_allocObject();
      v322 = 4;
      *(v338 + 16) = 4;
      v31 = swift_allocObject();
      v317 = v31;
      *(v31 + 16) = v381;
      *(v31 + 24) = 0;
      v32 = swift_allocObject();
      v33 = v317;
      v339 = v32;
      *(v32 + 16) = v382;
      *(v32 + 24) = v33;
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = 1;
      v34 = swift_allocObject();
      v35 = v318;
      v319 = v34;
      *(v34 + 16) = v383;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v319;
      v342 = v36;
      *(v36 + 16) = v384;
      *(v36 + 24) = v37;
      v343 = swift_allocObject();
      *(v343 + 16) = v320;
      v344 = swift_allocObject();
      *(v344 + 16) = v322;
      v38 = swift_allocObject();
      v321 = v38;
      *(v38 + 16) = v385;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v321;
      v345 = v39;
      *(v39 + 16) = v386;
      *(v39 + 24) = v40;
      v346 = swift_allocObject();
      *(v346 + 16) = 0;
      v347 = swift_allocObject();
      *(v347 + 16) = v322;
      v41 = swift_allocObject();
      v42 = v323;
      v324 = v41;
      *(v41 + 16) = v387;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v324;
      v348 = v43;
      *(v43 + 16) = v388;
      *(v43 + 24) = v44;
      v349 = swift_allocObject();
      *(v349 + 16) = 112;
      v350 = swift_allocObject();
      v331 = 8;
      *(v350 + 16) = 8;
      v325 = swift_allocObject();
      *(v325 + 16) = v389;
      v45 = swift_allocObject();
      v46 = v325;
      v351 = v45;
      *(v45 + 16) = v390;
      *(v45 + 24) = v46;
      v352 = swift_allocObject();
      *(v352 + 16) = 37;
      v353 = swift_allocObject();
      *(v353 + 16) = v331;
      v47 = swift_allocObject();
      v48 = v326;
      v327 = v47;
      *(v47 + 16) = v391;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v327;
      v354 = v49;
      *(v49 + 16) = v392;
      *(v49 + 24) = v50;
      v355 = swift_allocObject();
      *(v355 + 16) = 32;
      v356 = swift_allocObject();
      *(v356 + 16) = v331;
      v51 = swift_allocObject();
      v52 = v328;
      v329 = v51;
      *(v51 + 16) = v393;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v329;
      v357 = v53;
      *(v53 + 16) = v394;
      *(v53 + 24) = v54;
      v358 = swift_allocObject();
      *(v358 + 16) = 64;
      v359 = swift_allocObject();
      *(v359 + 16) = v331;
      v55 = swift_allocObject();
      v56 = v334;
      v335 = v55;
      *(v55 + 16) = v395;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v335;
      v361 = v57;
      *(v57 + 16) = v396;
      *(v57 + 24) = v58;
      v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v360 = sub_1B0E46A48();
      v362 = v59;

      v60 = v337;
      v61 = v362;
      *v362 = v397;
      v61[1] = v60;

      v62 = v338;
      v63 = v362;
      v362[2] = v398;
      v63[3] = v62;

      v64 = v339;
      v65 = v362;
      v362[4] = v399;
      v65[5] = v64;

      v66 = v340;
      v67 = v362;
      v362[6] = v400;
      v67[7] = v66;

      v68 = v341;
      v69 = v362;
      v362[8] = v401;
      v69[9] = v68;

      v70 = v342;
      v71 = v362;
      v362[10] = v402;
      v71[11] = v70;

      v72 = v343;
      v73 = v362;
      v362[12] = v403;
      v73[13] = v72;

      v74 = v344;
      v75 = v362;
      v362[14] = v404;
      v75[15] = v74;

      v76 = v345;
      v77 = v362;
      v362[16] = v405;
      v77[17] = v76;

      v78 = v346;
      v79 = v362;
      v362[18] = v406;
      v79[19] = v78;

      v80 = v347;
      v81 = v362;
      v362[20] = v407;
      v81[21] = v80;

      v82 = v348;
      v83 = v362;
      v362[22] = v408;
      v83[23] = v82;

      v84 = v349;
      v85 = v362;
      v362[24] = v409;
      v85[25] = v84;

      v86 = v350;
      v87 = v362;
      v362[26] = v410;
      v87[27] = v86;

      v88 = v351;
      v89 = v362;
      v362[28] = v411;
      v89[29] = v88;

      v90 = v352;
      v91 = v362;
      v362[30] = v412;
      v91[31] = v90;

      v92 = v353;
      v93 = v362;
      v362[32] = v413;
      v93[33] = v92;

      v94 = v354;
      v95 = v362;
      v362[34] = v414;
      v95[35] = v94;

      v96 = v355;
      v97 = v362;
      v362[36] = v415;
      v97[37] = v96;

      v98 = v356;
      v99 = v362;
      v362[38] = v416;
      v99[39] = v98;

      v100 = v357;
      v101 = v362;
      v362[40] = v417;
      v101[41] = v100;

      v102 = v358;
      v103 = v362;
      v362[42] = v418;
      v103[43] = v102;

      v104 = v359;
      v105 = v362;
      v362[44] = v419;
      v105[45] = v104;

      v106 = v361;
      v107 = v362;
      v362[46] = v420;
      v107[47] = v106;
      sub_1B0394964();

      if (os_log_type_enabled(v364, v365))
      {
        v304 = sub_1B0E45D78();
        v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v305 = sub_1B03949A8(1, v303, v303);
        v306 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v307 = &v481;
        v481 = v304;
        v308 = &v480;
        v480 = v305;
        v309 = &v479;
        v479 = v306;
        sub_1B0394A48(3, &v481);
        sub_1B0394A48(8, v307);
        v108 = v379;
        v477 = v397;
        v478 = v337;
        sub_1B03949FC(&v477, v307, v308, v309);
        v310 = v108;
        if (v108)
        {

          __break(1u);
        }

        else
        {
          v477 = v398;
          v478 = v338;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v301 = 0;
          v477 = v399;
          v478 = v339;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v300 = 0;
          v477 = v400;
          v478 = v340;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v299 = 0;
          v477 = v401;
          v478 = v341;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v298 = 0;
          v477 = v402;
          v478 = v342;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v297 = 0;
          v477 = v403;
          v478 = v343;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v296 = 0;
          v477 = v404;
          v478 = v344;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v295 = 0;
          v477 = v405;
          v478 = v345;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v294 = 0;
          v477 = v406;
          v478 = v346;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v293 = 0;
          v477 = v407;
          v478 = v347;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v292 = 0;
          v477 = v408;
          v478 = v348;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v291 = 0;
          v477 = v409;
          v478 = v349;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v290 = 0;
          v477 = v410;
          v478 = v350;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v289 = 0;
          v477 = v411;
          v478 = v351;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v288 = 0;
          v477 = v412;
          v478 = v352;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v287 = 0;
          v477 = v413;
          v478 = v353;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v286 = 0;
          v477 = v414;
          v478 = v354;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v285 = 0;
          v477 = v415;
          v478 = v355;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v284 = 0;
          v477 = v416;
          v478 = v356;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v283 = 0;
          v477 = v417;
          v478 = v357;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v282 = 0;
          v477 = v418;
          v478 = v358;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v281 = 0;
          v477 = v419;
          v478 = v359;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v280 = 0;
          v477 = v420;
          v478 = v361;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v279 = 0;
          _os_log_impl(&dword_1B0389000, v364, v365, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Invalid source UID '%s' in move/copy action %@", v304, 0x3Fu);
          sub_1B03998A8(v305, 1, v303);
          sub_1B03998A8(v306, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v302 = v279;
        }
      }

      else
      {

        v302 = v379;
      }

      v278 = v302;
      MEMORY[0x1E69E5920](v364);
      (*(v464 + 8))(v469, v463);
      v275 = *(v461 + 4);
      MEMORY[0x1E69E5928](v275);
      v277 = [v275 persistentID];
      MEMORY[0x1E69E5920](v275);
      v276 = &v482;
      swift_beginAccess();
      sub_1B07B7528(v470, v277);
      swift_endAccess();
      MEMORY[0x1E69E5920](v277);
      memset(v483, 0, sizeof(v483));
      memcpy(v378, v483, 0x40uLL);
      sub_1B08283D8();
      result = v278;
      v375 = v278;
    }

    else
    {
      v376 = v377;
      v367 = v377;
      v474 = v377;
      v366 = *v461;
      v368 = *(v461 + 1);
      v369 = *(v461 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v374 = v502;
      sub_1B0828300(v502, &v473);
      v370 = v500;
      sub_1B0827070(v374, v366 & 1, v367, v368, v369, v500);
      v371 = v475;
      v373 = 64;
      memcpy(v475, v370, sizeof(v475));
      v372 = v476;
      memcpy(v476, v475, sizeof(v476));
      memcpy(v378, v476, 0x40uLL);
      sub_1B08283D8();
      result = v379;
      v375 = v379;
    }
  }

  else
  {
    (*(v464 + 16))(v467, v458, v463);

    sub_1B074B69C(v459 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v457);
    v109 = (v457 + *(v455 + 20));
    v228 = *v109;
    v229 = *(v109 + 1);
    v230 = *(v109 + 1);
    v231 = *(v109 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v457);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v227 = 36;
    v246 = 7;
    v110 = swift_allocObject();
    v111 = v229;
    v112 = v230;
    v113 = v231;
    v233 = v110;
    *(v110 + 16) = v228;
    *(v110 + 20) = v111;
    *(v110 + 24) = v112;
    *(v110 + 32) = v113;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v114 = swift_allocObject();
    v115 = v229;
    v116 = v230;
    v117 = v231;
    v226 = v114;
    *(v114 + 16) = v228;
    *(v114 + 20) = v115;
    *(v114 + 24) = v116;
    *(v114 + 32) = v117;

    v245 = 32;
    v118 = swift_allocObject();
    v119 = v226;
    v238 = v118;
    *(v118 + 16) = v421;
    *(v118 + 24) = v119;
    sub_1B0394868();
    sub_1B0394868();

    v120 = swift_allocObject();
    v121 = v229;
    v122 = v230;
    v123 = v231;
    v241 = v120;
    *(v120 + 16) = v228;
    *(v120 + 20) = v121;
    *(v120 + 24) = v122;
    *(v120 + 32) = v123;

    sub_1B092A698(v461, &v493);
    v247 = swift_allocObject();
    memcpy((v247 + 16), v461, 0x28uLL);
    v273 = sub_1B0E43988();
    v274 = sub_1B0E458E8();
    v243 = 17;
    v249 = swift_allocObject();
    v235 = 16;
    *(v249 + 16) = 16;
    v250 = swift_allocObject();
    v237 = 4;
    *(v250 + 16) = 4;
    v124 = swift_allocObject();
    v232 = v124;
    *(v124 + 16) = v381;
    *(v124 + 24) = 0;
    v125 = swift_allocObject();
    v126 = v232;
    v251 = v125;
    *(v125 + 16) = v422;
    *(v125 + 24) = v126;
    v252 = swift_allocObject();
    *(v252 + 16) = 0;
    v253 = swift_allocObject();
    *(v253 + 16) = 1;
    v127 = swift_allocObject();
    v128 = v233;
    v234 = v127;
    *(v127 + 16) = v423;
    *(v127 + 24) = v128;
    v129 = swift_allocObject();
    v130 = v234;
    v254 = v129;
    *(v129 + 16) = v424;
    *(v129 + 24) = v130;
    v255 = swift_allocObject();
    *(v255 + 16) = v235;
    v256 = swift_allocObject();
    *(v256 + 16) = v237;
    v131 = swift_allocObject();
    v236 = v131;
    *(v131 + 16) = v385;
    *(v131 + 24) = 0;
    v132 = swift_allocObject();
    v133 = v236;
    v257 = v132;
    *(v132 + 16) = v425;
    *(v132 + 24) = v133;
    v258 = swift_allocObject();
    *(v258 + 16) = 0;
    v259 = swift_allocObject();
    *(v259 + 16) = v237;
    v134 = swift_allocObject();
    v135 = v238;
    v239 = v134;
    *(v134 + 16) = v426;
    *(v134 + 24) = v135;
    v136 = swift_allocObject();
    v137 = v239;
    v260 = v136;
    *(v136 + 16) = v427;
    *(v136 + 24) = v137;
    v261 = swift_allocObject();
    *(v261 + 16) = 112;
    v262 = swift_allocObject();
    v244 = 8;
    *(v262 + 16) = 8;
    v240 = swift_allocObject();
    *(v240 + 16) = v389;
    v138 = swift_allocObject();
    v139 = v240;
    v263 = v138;
    *(v138 + 16) = v428;
    *(v138 + 24) = v139;
    v264 = swift_allocObject();
    *(v264 + 16) = 37;
    v265 = swift_allocObject();
    *(v265 + 16) = v244;
    v140 = swift_allocObject();
    v141 = v241;
    v242 = v140;
    *(v140 + 16) = v429;
    *(v140 + 24) = v141;
    v142 = swift_allocObject();
    v143 = v242;
    v266 = v142;
    *(v142 + 16) = v430;
    *(v142 + 24) = v143;
    v267 = swift_allocObject();
    *(v267 + 16) = 64;
    v268 = swift_allocObject();
    *(v268 + 16) = v244;
    v144 = swift_allocObject();
    v145 = v247;
    v248 = v144;
    *(v144 + 16) = v431;
    *(v144 + 24) = v145;
    v146 = swift_allocObject();
    v147 = v248;
    v270 = v146;
    *(v146 + 16) = v432;
    *(v146 + 24) = v147;
    v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v269 = sub_1B0E46A48();
    v271 = v148;

    v149 = v249;
    v150 = v271;
    *v271 = v433;
    v150[1] = v149;

    v151 = v250;
    v152 = v271;
    v271[2] = v434;
    v152[3] = v151;

    v153 = v251;
    v154 = v271;
    v271[4] = v435;
    v154[5] = v153;

    v155 = v252;
    v156 = v271;
    v271[6] = v436;
    v156[7] = v155;

    v157 = v253;
    v158 = v271;
    v271[8] = v437;
    v158[9] = v157;

    v159 = v254;
    v160 = v271;
    v271[10] = v438;
    v160[11] = v159;

    v161 = v255;
    v162 = v271;
    v271[12] = v439;
    v162[13] = v161;

    v163 = v256;
    v164 = v271;
    v271[14] = v440;
    v164[15] = v163;

    v165 = v257;
    v166 = v271;
    v271[16] = v441;
    v166[17] = v165;

    v167 = v258;
    v168 = v271;
    v271[18] = v442;
    v168[19] = v167;

    v169 = v259;
    v170 = v271;
    v271[20] = v443;
    v170[21] = v169;

    v171 = v260;
    v172 = v271;
    v271[22] = v444;
    v172[23] = v171;

    v173 = v261;
    v174 = v271;
    v271[24] = v445;
    v174[25] = v173;

    v175 = v262;
    v176 = v271;
    v271[26] = v446;
    v176[27] = v175;

    v177 = v263;
    v178 = v271;
    v271[28] = v447;
    v178[29] = v177;

    v179 = v264;
    v180 = v271;
    v271[30] = v448;
    v180[31] = v179;

    v181 = v265;
    v182 = v271;
    v271[32] = v449;
    v182[33] = v181;

    v183 = v266;
    v184 = v271;
    v271[34] = v450;
    v184[35] = v183;

    v185 = v267;
    v186 = v271;
    v271[36] = v451;
    v186[37] = v185;

    v187 = v268;
    v188 = v271;
    v271[38] = v452;
    v188[39] = v187;

    v189 = v270;
    v190 = v271;
    v271[40] = v453;
    v190[41] = v189;
    sub_1B0394964();

    if (os_log_type_enabled(v273, v274))
    {
      v219 = sub_1B0E45D78();
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v218 = 1;
      v220 = sub_1B03949A8(1, v217, v217);
      v221 = sub_1B03949A8(v218, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v222 = &v490;
      v490 = v219;
      v223 = &v489;
      v489 = v220;
      v224 = &v488;
      v488 = v221;
      sub_1B0394A48(3, &v490);
      sub_1B0394A48(7, v222);
      v191 = v379;
      v486 = v433;
      v487 = v249;
      sub_1B03949FC(&v486, v222, v223, v224);
      v225 = v191;
      if (v191)
      {

        __break(1u);
      }

      else
      {
        v486 = v434;
        v487 = v250;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v215 = 0;
        v486 = v435;
        v487 = v251;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v214 = 0;
        v486 = v436;
        v487 = v252;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v213 = 0;
        v486 = v437;
        v487 = v253;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v212 = 0;
        v486 = v438;
        v487 = v254;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v211 = 0;
        v486 = v439;
        v487 = v255;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v210 = 0;
        v486 = v440;
        v487 = v256;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v209 = 0;
        v486 = v441;
        v487 = v257;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v208 = 0;
        v486 = v442;
        v487 = v258;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v207 = 0;
        v486 = v443;
        v487 = v259;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v206 = 0;
        v486 = v444;
        v487 = v260;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v205 = 0;
        v486 = v445;
        v487 = v261;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v204 = 0;
        v486 = v446;
        v487 = v262;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v203 = 0;
        v486 = v447;
        v487 = v263;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v202 = 0;
        v486 = v448;
        v487 = v264;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v201 = 0;
        v486 = v449;
        v487 = v265;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v200 = 0;
        v486 = v450;
        v487 = v266;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v199 = 0;
        v486 = v451;
        v487 = v267;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v198 = 0;
        v486 = v452;
        v487 = v268;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v197 = 0;
        v486 = v453;
        v487 = v270;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v196 = 0;
        _os_log_impl(&dword_1B0389000, v273, v274, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to create MoveReference for item in move/copy action %@", v219, 0x35u);
        v195 = 1;
        sub_1B03998A8(v220, 1, v217);
        sub_1B03998A8(v221, v195, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v216 = v196;
      }
    }

    else
    {

      v216 = v379;
    }

    v194 = v216;
    MEMORY[0x1E69E5920](v273);
    (*(v464 + 8))(v467, v463);
    v192[0] = *(v461 + 4);
    MEMORY[0x1E69E5928](v192[0]);
    v193 = [v192[0] persistentID];
    MEMORY[0x1E69E5920](v192[0]);
    v192[1] = &v491;
    swift_beginAccess();
    sub_1B07B7528(v470, v193);
    swift_endAccess();
    MEMORY[0x1E69E5920](v193);
    memset(v492, 0, sizeof(v492));
    memcpy(v378, v492, 0x40uLL);
    return v194;
  }

  return result;
}

id sub_1B0928A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x1E69E5928](v2);
  v3 = [v2 persistentID];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B0928AA8(void *a1)
{
  v8 = [a1 sourceRemoteID];
  if (v8)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_1B0E44838();
    v12 = v2;
  }

  return v11;
}

void sub_1B0928BB4(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v9 = 0;
  v7 = 0;
  v12[3] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12[2] = swift_projectBox();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
    sub_1B0E46518();
    v2 = v10;
    if (!v10)
    {
      break;
    }

    v9 = v10;
    v8 = sub_1B0917A3C();
    if ((v8 & 0x100000000) == 0)
    {
      v7 = v8;
      v5 = v8;
      swift_beginAccess();
      MessageIdentifierSet.insert(_:)(v6, &v5, v3);
      swift_endAccess();
    }

    MEMORY[0x1E69E5920](v2);
  }

  sub_1B039E440(v12);
}

uint64_t sub_1B0928D98(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

unint64_t sub_1B0928DEC()
{
  v2 = qword_1EB6DB120;
  if (!qword_1EB6DB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E35D0, &qword_1B0EA0980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0928EA4()
{
  v2 = qword_1EB6DB110;
  if (!qword_1EB6DB110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E35D0, &qword_1B0EA0980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0928F6C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_1B03B2000(v4, v5);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  v6 = *(a1 + 56);
  MEMORY[0x1E69E5928](v6);
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  MEMORY[0x1E69E5928](v7);
  *(a2 + 64) = v7;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v8 = *(a1 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 88) = v8;
  v10 = *(a1 + 96);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 96) = v10;
  *(a2 + 104) = *(a1 + 104);
  return result;
}

uint64_t sub_1B0929098(void *a1)
{
  v6 = *(_s6LoggerVMa_1(0) - 8);
  v2 = (*(v6 + 80) + 124) & ~*(v6 + 80);
  v3 = v1 + ((v2 + *(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  LODWORD(v7) = *v3;
  BYTE4(v7) = *(v3 + 4) & 1;

  return sub_1B091B848(a1, v1 + 16, v1 + v2, v7);
}

uint64_t block_copy_helper_226(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B09291C8(void *a1)
{

  sub_1B0391D50(a1[3], a1[4]);
  MEMORY[0x1E69E5920](a1[7]);
  MEMORY[0x1E69E5920](a1[8]);

  return a1;
}

uint64_t sub_1B0929244(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  sub_1B03B2000(v5, v6);
  result = a2;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B09292C4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = *(a1 + 8);

  *(a2 + 16) = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  sub_1B0391D50(v3, v4);
  return a2;
}

uint64_t sub_1B0929338(uint64_t a1)
{

  sub_1B0391D50(*(a1 + 24), *(a1 + 32));
  return a1;
}

unint64_t sub_1B092937C()
{
  v2 = qword_1EB6DB780;
  if (!qword_1EB6DB780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E31A8, &qword_1B0EA09A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB780);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0929404(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *(_s6LoggerVMa_1(0) - 8);
  v4 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v5 = (v4 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B091EB8C(a1, a2, a3 & 1, v3[2], v3[3], v3[4], v3 + v4, *(v3 + v5), *(v3 + v5 + 8));
}

unint64_t sub_1B09294F4()
{
  v2 = qword_1EB6DA550;
  if (!qword_1EB6DA550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E31B8, &qword_1B0EA09A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092957C()
{
  v2 = qword_1EB6E31C8;
  if (!qword_1EB6E31C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E31C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09295F8()
{
  v2 = qword_1EB6DBFC0;
  if (!qword_1EB6DBFC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B092967C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *(_s6LoggerVMa_1(0) - 8);
  v3 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v4 = (v3 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v4);
  v6 = *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B092083C(a1, v2 + v3, v5, v6, a2);
}

void sub_1B092973C(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *(_s6LoggerVMa_1(0) - 8);
  v3 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v4 = (v3 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v4);
  v6 = *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1B09258D0(a1, v2 + v3, v5, v6, a2);
}

unint64_t sub_1B09297FC()
{
  v2 = qword_1EB6DA470;
  if (!qword_1EB6DA470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31D8, &qword_1B0EA09C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929884()
{
  v2 = qword_1EB6DB128;
  if (!qword_1EB6DB128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E35D0, &qword_1B0EA0980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB128);
    return WitnessTable;
  }

  return v2;
}

void sub_1B092990C()
{
}

unint64_t sub_1B0929980()
{
  v2 = qword_1EB6DA4E8;
  if (!qword_1EB6DA4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31E0, &qword_1B0EA09C8);
    sub_1B0929A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929A18()
{
  v2 = qword_1EB6DA4D0;
  if (!qword_1EB6DA4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E31E8, &qword_1B0EA09D0);
    sub_1B0929AC0();
    sub_1B0928DEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929AC0()
{
  v2 = qword_1EB6DA4C0;
  if (!qword_1EB6DA4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31F8, &qword_1B0EA09D8);
    sub_1B0929B58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929B58()
{
  v2 = qword_1EB6DA480;
  if (!qword_1EB6DA480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31D8, &qword_1B0EA09C0);
    sub_1B0929BF0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929BF0()
{
  v2 = qword_1EB6DA3B8;
  if (!qword_1EB6DA3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3200, &qword_1B0EA09E0);
    sub_1B0929C88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929C88()
{
  v2 = qword_1EB6DA4B8;
  if (!qword_1EB6DA4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3210, &qword_1B0EA09E8);
    sub_1B08754BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0929D20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);

  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);

  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);

  *(a2 + 120) = v12;
  *(a2 + 128) = v13;
  v15 = *(a1 + 136);
  v16 = *(a1 + 144);

  *(a2 + 136) = v15;
  *(a2 + 144) = v16;
  v18 = *(a1 + 152);
  v19 = *(a1 + 160);

  result = a2;
  *(a2 + 152) = v18;
  *(a2 + 160) = v19;
  return result;
}

unint64_t sub_1B0929EB0()
{
  v2 = qword_1EB6DA380;
  if (!qword_1EB6DA380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3218, &qword_1B0EA09F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA380);
    return WitnessTable;
  }

  return v2;
}

void sub_1B0929F38()
{
}

uint64_t sub_1B0929FE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 108))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B092A100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B092A364()
{
  v2 = qword_1EB6E3220;
  if (!qword_1EB6E3220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E35C0, qword_1B0EA0DD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A404()
{
  v2 = qword_1EB6DBFB0;
  if (!qword_1EB6DBFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A498()
{
  v2 = qword_1EB6DBFB8;
  if (!qword_1EB6DBFB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A52C()
{
  v2 = qword_1EB6E3230;
  if (!qword_1EB6E3230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A5A8()
{
  v2 = qword_1EB6DE1D0;
  if (!qword_1EB6DE1D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A620()
{
  v2 = qword_1EB6DE200;
  if (!qword_1EB6DE200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B092A698(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  MEMORY[0x1E69E5928](v6);
  result = a2;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B092A758(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 32));
  return a1;
}

uint64_t sub_1B092A7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B0E42E68();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0925854(v3, a1);
}

unint64_t sub_1B092A830()
{
  v2 = qword_1EB6E3250;
  if (!qword_1EB6E3250)
  {
    sub_1B0E42E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B092A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B0E42C38();
  v9 = v5;

  if ((v9 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  OpaquePersistedMessageIdentifier.init(rawValue:)();
  return v6;
}

uint64_t sub_1B092AA44()
{
  sub_1B0E42C68();
  v1 = sub_1B0E42C48();

  sub_1B0E42C18();
  sub_1B0E42C08();

  sub_1B0E42C28();
  sub_1B092AADC();
  return v1;
}

uint64_t sub_1B092AB14@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X5>, void *a5@<X8>)
{

  sub_1B03B2000(a1, a2);
  sub_1B0E42BF8();
  sub_1B0391D50(a1, a2);

  return (*(*(a3 - 8) + 56))(a5, 0, 1);
}

void sub_1B092AC94(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a1;
  v17 = a2;
  v15 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  sub_1B09896FC(a1, a2, a3, a4, a5, a6, a7);
  sub_1B0989BEC(a1, a2, a3, a4, a5, a6, a7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0989D8C();
  sub_1B0E45028();

  sub_1B039E440(v14);
  sub_1B08CF7DC();
}

uint64_t (*sub_1B092AE20(uint64_t a1, int a2, int a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = swift_allocObject();
  result = sub_1B0989E14;
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 36) = a3;
  return result;
}

uint64_t sub_1B092AED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v29 = a1;
  v27 = a2;
  v28 = a3;
  v26 = a4;
  v24 = a5;
  v25 = a6;
  v23 = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v17 = a7;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E0, &qword_1B0EA1CB0);
  sub_1B09B21DC(a5, a6, sub_1B0993FA0, v16, v8, &v22);

  return v22;
}

id sub_1B092B058@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v13 = *(a5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v13);
  v6 = sub_1B092B158();
  v15 = sub_1B07CD4F8(a1, a2, a3, a4, v13, v6, v7);

  MEMORY[0x1E69E5920](v13);
  result = v15;
  *a6 = v15;
  return result;
}

uint64_t sub_1B092B218(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, void (*a6)(void), uint64_t a7)
{
  v256 = a1;
  v257 = a2;
  v238 = a3;
  v258 = a4;
  v239 = a5;
  v240 = a6;
  v241 = a7;
  v253 = 0;
  v185 = sub_1B074E050;
  v186 = sub_1B03F7AE0;
  v187 = sub_1B0394C30;
  v188 = sub_1B0394C24;
  v189 = sub_1B074DFFC;
  v190 = sub_1B039BA88;
  v191 = sub_1B039BB94;
  v192 = sub_1B0394C24;
  v193 = sub_1B039BBA0;
  v194 = sub_1B039BC08;
  v195 = sub_1B06BA324;
  v196 = sub_1B074E0E4;
  v197 = sub_1B039BCF8;
  v198 = sub_1B07AB020;
  v199 = sub_1B039BC08;
  v200 = sub_1B0398F5C;
  v201 = sub_1B0398F5C;
  v202 = sub_1B0399178;
  v203 = sub_1B0398F5C;
  v204 = sub_1B0398F5C;
  v205 = sub_1B039BA94;
  v206 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B0399178;
  v209 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v211 = sub_1B03991EC;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B03993BC;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B039BCEC;
  v218 = sub_1B0398F5C;
  v219 = sub_1B0398F5C;
  v220 = sub_1B03991EC;
  v282 = 0;
  v281 = 0;
  v279 = 0;
  v280 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v274 = 0;
  v275 = 0;
  v273 = 0;
  v283 = 0;
  v221 = 0;
  v264 = 0;
  v236 = 0;
  v222 = type metadata accessor for InProgressMessageDownload.Completed(0);
  v223 = *(v222 - 8);
  v224 = v222 - 8;
  v225 = (*(v223 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v226 = v114 - v225;
  v283 = v114 - v225;
  v227 = sub_1B0E439A8();
  v228 = *(v227 - 8);
  v229 = v227 - 8;
  v230 = (*(v228 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v236);
  v231 = v114 - v230;
  v232 = (*(*(type metadata accessor for MessagesBeingDownloaded.PopResult(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v236);
  v233 = v114 - v232;
  v234 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v235 = (v114 - v234);
  v282 = v114 - v234;
  v237 = (*(*(_s6LoggerVMa(v11) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v236);
  v251 = v114 - v237;
  v242 = _s6LoggerVMa_1(v12);
  v248 = *(*(v242 - 8) + 64);
  v243 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v256);
  v244 = v114 - v243;
  v245 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v246 = v114 - v245;
  v247 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v249 = v114 - v247;
  v250 = (v248 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v252 = v114 - v250;
  v281 = v114 - v250;
  v279 = v16;
  v280 = v17;
  v278 = v18 & 1;
  v277 = v19;
  v276 = v20;
  v274 = v21;
  v275 = v22;
  v273 = v7;
  sub_1B0394784(v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v23);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v251, v256, v257, v252);
  v254 = v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  v255 = v272;
  swift_beginAccess();
  v259 = *v254;
  v260 = *(v254 + 8);
  v261 = *(v254 + 16);
  v262 = *(v254 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v263 = sub_1B092D7D0(v256, v257, v258, v259, v260, v261, v262);

  if (v263)
  {
    v181 = v265;
    swift_beginAccess();
    v182 = *(v184 + 64);

    swift_endAccess();
    v183 = sub_1B08B4670(v256, v257, v258, v252);

    if (v183)
    {
      v180 = v183;
      v179 = v183;
      v264 = v183;
      sub_1B092D904(v256);
    }
  }

  v24 = v184;
  v173 = v271;
  swift_beginAccess();
  v177 = *(v24 + 64);

  swift_endAccess();
  v174 = sub_1B092AE20(v256, v257, v258);
  v176 = v25;

  v175 = *(v184 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

  sub_1B08B12BC(v256, v257, v258, v238 & 1, v239, v174, v176, v175, v235, v252);

  sub_1B0989E28(v235, v233);
  v178 = (*(v223 + 48))(v233, 2, v222);
  if (v178)
  {
    if (v178 == 1)
    {
      (*(v228 + 16))(v231, v252, v227);
      sub_1B074B69C(v252, v249);
      sub_1B074B69C(v249, v246);
      sub_1B074E41C(v249, v244);
      v26 = (v246 + *(v242 + 20));
      v125 = *v26;
      v126 = *(v26 + 1);
      v127 = *(v26 + 1);
      v128 = *(v26 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v246);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v124 = 36;
      v144 = 7;
      v27 = swift_allocObject();
      v28 = v126;
      v29 = v127;
      v30 = v128;
      v131 = v27;
      *(v27 + 16) = v125;
      *(v27 + 20) = v28;
      *(v27 + 24) = v29;
      *(v27 + 32) = v30;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = swift_allocObject();
      v32 = v126;
      v33 = v127;
      v34 = v128;
      v123 = v31;
      *(v31 + 16) = v125;
      *(v31 + 20) = v32;
      *(v31 + 24) = v33;
      *(v31 + 32) = v34;

      v143 = 32;
      v35 = swift_allocObject();
      v36 = v123;
      v135 = v35;
      *(v35 + 16) = v185;
      *(v35 + 24) = v36;
      sub_1B0394868();
      sub_1B0394868();

      v37 = swift_allocObject();
      v38 = v126;
      v39 = v127;
      v40 = v128;
      v41 = v37;
      v42 = v244;
      v139 = v41;
      *(v41 + 16) = v125;
      *(v41 + 20) = v38;
      *(v41 + 24) = v39;
      *(v41 + 32) = v40;
      sub_1B074B764(v42);
      v129 = swift_allocObject();
      *(v129 + 16) = v258;

      v43 = swift_allocObject();
      v44 = v129;
      v145 = v43;
      *(v43 + 16) = v186;
      *(v43 + 24) = v44;

      v171 = sub_1B0E43988();
      v172 = sub_1B0E458E8();
      v141 = 17;
      v147 = swift_allocObject();
      v133 = 16;
      *(v147 + 16) = 16;
      v148 = swift_allocObject();
      v142 = 4;
      *(v148 + 16) = 4;
      v45 = swift_allocObject();
      v130 = v45;
      *(v45 + 16) = v187;
      *(v45 + 24) = 0;
      v46 = swift_allocObject();
      v47 = v130;
      v149 = v46;
      *(v46 + 16) = v188;
      *(v46 + 24) = v47;
      v150 = swift_allocObject();
      *(v150 + 16) = 0;
      v151 = swift_allocObject();
      *(v151 + 16) = 1;
      v48 = swift_allocObject();
      v49 = v131;
      v132 = v48;
      *(v48 + 16) = v189;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v132;
      v152 = v50;
      *(v50 + 16) = v190;
      *(v50 + 24) = v51;
      v153 = swift_allocObject();
      *(v153 + 16) = v133;
      v154 = swift_allocObject();
      *(v154 + 16) = v142;
      v52 = swift_allocObject();
      v134 = v52;
      *(v52 + 16) = v191;
      *(v52 + 24) = 0;
      v53 = swift_allocObject();
      v54 = v134;
      v155 = v53;
      *(v53 + 16) = v192;
      *(v53 + 24) = v54;
      v156 = swift_allocObject();
      *(v156 + 16) = 0;
      v157 = swift_allocObject();
      *(v157 + 16) = v142;
      v55 = swift_allocObject();
      v56 = v135;
      v136 = v55;
      *(v55 + 16) = v193;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v136;
      v158 = v57;
      *(v57 + 16) = v194;
      *(v57 + 24) = v58;
      v159 = swift_allocObject();
      *(v159 + 16) = 112;
      v160 = swift_allocObject();
      v138 = 8;
      *(v160 + 16) = 8;
      v137 = swift_allocObject();
      *(v137 + 16) = 0x786F626C69616DLL;
      v59 = swift_allocObject();
      v60 = v137;
      v161 = v59;
      *(v59 + 16) = v195;
      *(v59 + 24) = v60;
      v162 = swift_allocObject();
      *(v162 + 16) = 37;
      v163 = swift_allocObject();
      *(v163 + 16) = v138;
      v61 = swift_allocObject();
      v62 = v139;
      v140 = v61;
      *(v61 + 16) = v196;
      *(v61 + 24) = v62;
      v63 = swift_allocObject();
      v64 = v140;
      v164 = v63;
      *(v63 + 16) = v197;
      *(v63 + 24) = v64;
      v165 = swift_allocObject();
      *(v165 + 16) = 0;
      v166 = swift_allocObject();
      *(v166 + 16) = v142;
      v65 = swift_allocObject();
      v66 = v145;
      v146 = v65;
      *(v65 + 16) = v198;
      *(v65 + 24) = v66;
      v67 = swift_allocObject();
      v68 = v146;
      v168 = v67;
      *(v67 + 16) = v199;
      *(v67 + 24) = v68;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v167 = sub_1B0E46A48();
      v169 = v69;

      v70 = v147;
      v71 = v169;
      *v169 = v200;
      v71[1] = v70;

      v72 = v148;
      v73 = v169;
      v169[2] = v201;
      v73[3] = v72;

      v74 = v149;
      v75 = v169;
      v169[4] = v202;
      v75[5] = v74;

      v76 = v150;
      v77 = v169;
      v169[6] = v203;
      v77[7] = v76;

      v78 = v151;
      v79 = v169;
      v169[8] = v204;
      v79[9] = v78;

      v80 = v152;
      v81 = v169;
      v169[10] = v205;
      v81[11] = v80;

      v82 = v153;
      v83 = v169;
      v169[12] = v206;
      v83[13] = v82;

      v84 = v154;
      v85 = v169;
      v169[14] = v207;
      v85[15] = v84;

      v86 = v155;
      v87 = v169;
      v169[16] = v208;
      v87[17] = v86;

      v88 = v156;
      v89 = v169;
      v169[18] = v209;
      v89[19] = v88;

      v90 = v157;
      v91 = v169;
      v169[20] = v210;
      v91[21] = v90;

      v92 = v158;
      v93 = v169;
      v169[22] = v211;
      v93[23] = v92;

      v94 = v159;
      v95 = v169;
      v169[24] = v212;
      v95[25] = v94;

      v96 = v160;
      v97 = v169;
      v169[26] = v213;
      v97[27] = v96;

      v98 = v161;
      v99 = v169;
      v169[28] = v214;
      v99[29] = v98;

      v100 = v162;
      v101 = v169;
      v169[30] = v215;
      v101[31] = v100;

      v102 = v163;
      v103 = v169;
      v169[32] = v216;
      v103[33] = v102;

      v104 = v164;
      v105 = v169;
      v169[34] = v217;
      v105[35] = v104;

      v106 = v165;
      v107 = v169;
      v169[36] = v218;
      v107[37] = v106;

      v108 = v166;
      v109 = v169;
      v169[38] = v219;
      v109[39] = v108;

      v110 = v168;
      v111 = v169;
      v169[40] = v220;
      v111[41] = v110;
      sub_1B0394964();

      if (os_log_type_enabled(v171, v172))
      {
        v112 = v221;
        v116 = sub_1B0E45D78();
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v117 = sub_1B03949A8(0, v115, v115);
        v118 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v119 = &v270;
        v270 = v116;
        v120 = &v269;
        v269 = v117;
        v121 = &v268;
        v268 = v118;
        sub_1B0394A48(3, &v270);
        sub_1B0394A48(7, v119);
        v266 = v200;
        v267 = v147;
        sub_1B03949FC(&v266, v119, v120, v121);
        v122 = v112;
        if (v112)
        {

          __break(1u);
        }

        else
        {
          v266 = v201;
          v267 = v148;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[18] = 0;
          v266 = v202;
          v267 = v149;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[17] = 0;
          v266 = v203;
          v267 = v150;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[16] = 0;
          v266 = v204;
          v267 = v151;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[15] = 0;
          v266 = v205;
          v267 = v152;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[14] = 0;
          v266 = v206;
          v267 = v153;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[13] = 0;
          v266 = v207;
          v267 = v154;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[12] = 0;
          v266 = v208;
          v267 = v155;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[11] = 0;
          v266 = v209;
          v267 = v156;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[10] = 0;
          v266 = v210;
          v267 = v157;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[9] = 0;
          v266 = v211;
          v267 = v158;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[8] = 0;
          v266 = v212;
          v267 = v159;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[7] = 0;
          v266 = v213;
          v267 = v160;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[6] = 0;
          v266 = v214;
          v267 = v161;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[5] = 0;
          v266 = v215;
          v267 = v162;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[4] = 0;
          v266 = v216;
          v267 = v163;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[3] = 0;
          v266 = v217;
          v267 = v164;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[2] = 0;
          v266 = v218;
          v267 = v165;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[1] = 0;
          v266 = v219;
          v267 = v166;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114[0] = 0;
          v266 = v220;
          v267 = v168;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          _os_log_impl(&dword_1B0389000, v171, v172, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for UID %u, but no such message in-progress.", v116, 0x31u);
          sub_1B03998A8(v117, 0, v115);
          sub_1B03998A8(v118, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v171);
      (*(v228 + 8))(v231, v227);
      sub_1B09343F0(v256, v257, v258, v238 & 1, v252);

      v240(v239);
    }
  }

  else
  {
    sub_1B07B02D8(v233, v226);
    v283 = v226;
    sub_1B0935A80(v256, v257, v226, 1, v240, v241, v252);
    sub_1B08BED00(v226);
  }

  sub_1B098A548(v235);
  return sub_1B074B764(v252);
}

uint64_t sub_1B092D7D0(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v13 = a2;
  v11 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[0] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0989D8C();
  v8 = sub_1B0E45028();

  sub_1B039E440(v10);
  return v8 & 1;
}

uint64_t sub_1B092D904(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v971 = v2;
  v972 = v3;
  v969 = v4;
  v766 = v1;
  v970 = 0;
  v767 = sub_1B0938030;
  v768 = sub_1B074E050;
  v769 = sub_1B07AAFA4;
  v770 = sub_1B0394C30;
  v771 = sub_1B0394C24;
  v772 = sub_1B074DFFC;
  v773 = sub_1B039BA88;
  v774 = sub_1B039BB94;
  v775 = sub_1B0394C24;
  v776 = sub_1B039BBA0;
  v777 = sub_1B039BC08;
  v778 = 0x786F626C69616DLL;
  v779 = sub_1B06BA324;
  v780 = sub_1B074E0E4;
  v781 = sub_1B039BCF8;
  v782 = sub_1B07AB020;
  v783 = sub_1B039BC08;
  v784 = sub_1B0398F5C;
  v785 = sub_1B0398F5C;
  v786 = sub_1B0399178;
  v787 = sub_1B0398F5C;
  v788 = sub_1B0398F5C;
  v789 = sub_1B039BA94;
  v790 = sub_1B0398F5C;
  v791 = sub_1B0398F5C;
  v792 = sub_1B0399178;
  v793 = sub_1B0398F5C;
  v794 = sub_1B0398F5C;
  v795 = sub_1B03991EC;
  v796 = sub_1B0398F5C;
  v797 = sub_1B0398F5C;
  v798 = sub_1B03993BC;
  v799 = sub_1B0398F5C;
  v800 = sub_1B0398F5C;
  v801 = sub_1B039BCEC;
  v802 = sub_1B0398F5C;
  v803 = sub_1B0398F5C;
  v804 = sub_1B03991EC;
  v805 = sub_1B074E050;
  v806 = sub_1B07AAFA4;
  v807 = sub_1B0394C24;
  v808 = sub_1B074DFFC;
  v809 = sub_1B039BA88;
  v810 = sub_1B0394C24;
  v811 = sub_1B039BBA0;
  v812 = sub_1B039BC08;
  v813 = sub_1B06BA324;
  v814 = sub_1B074E0E4;
  v815 = sub_1B039BCF8;
  v816 = sub_1B07AB020;
  v817 = sub_1B039BC08;
  v818 = sub_1B0398F5C;
  v819 = sub_1B0398F5C;
  v820 = sub_1B0399178;
  v821 = sub_1B0398F5C;
  v822 = sub_1B0398F5C;
  v823 = sub_1B039BA94;
  v824 = sub_1B0398F5C;
  v825 = sub_1B0398F5C;
  v826 = sub_1B0399178;
  v827 = sub_1B0398F5C;
  v828 = sub_1B0398F5C;
  v829 = sub_1B03991EC;
  v830 = sub_1B0398F5C;
  v831 = sub_1B0398F5C;
  v832 = sub_1B03993BC;
  v833 = sub_1B0398F5C;
  v834 = sub_1B0398F5C;
  v835 = sub_1B039BCEC;
  v836 = sub_1B0398F5C;
  v837 = sub_1B0398F5C;
  v838 = sub_1B03991EC;
  v839 = sub_1B074E050;
  v840 = sub_1B07AAFA4;
  v841 = sub_1B0394C24;
  v842 = sub_1B074DFFC;
  v843 = sub_1B039BA88;
  v844 = sub_1B0394C24;
  v845 = sub_1B039BBA0;
  v846 = sub_1B039BC08;
  v847 = sub_1B06BA324;
  v848 = sub_1B074E0E4;
  v849 = sub_1B039BCF8;
  v850 = sub_1B07AB020;
  v851 = sub_1B039BC08;
  v852 = sub_1B07B07A0;
  v853 = sub_1B03B0DF8;
  v854 = sub_1B0398F5C;
  v855 = sub_1B0398F5C;
  v856 = sub_1B0399178;
  v857 = sub_1B0398F5C;
  v858 = sub_1B0398F5C;
  v859 = sub_1B039BA94;
  v860 = sub_1B0398F5C;
  v861 = sub_1B0398F5C;
  v862 = sub_1B0399178;
  v863 = sub_1B0398F5C;
  v864 = sub_1B0398F5C;
  v865 = sub_1B03991EC;
  v866 = sub_1B0398F5C;
  v867 = sub_1B0398F5C;
  v868 = sub_1B03993BC;
  v869 = sub_1B0398F5C;
  v870 = sub_1B0398F5C;
  v871 = sub_1B039BCEC;
  v872 = sub_1B0398F5C;
  v873 = sub_1B0398F5C;
  v874 = sub_1B03991EC;
  v875 = sub_1B0398F5C;
  v876 = sub_1B0398F5C;
  v877 = sub_1B0399260;
  v878 = sub_1B074E050;
  v879 = sub_1B07AAFA4;
  v880 = sub_1B0394C24;
  v881 = sub_1B074DFFC;
  v882 = sub_1B039BA88;
  v883 = sub_1B0394C24;
  v884 = sub_1B039BBA0;
  v885 = sub_1B039BC08;
  v886 = sub_1B06BA324;
  v887 = sub_1B074E0E4;
  v888 = sub_1B039BCF8;
  v889 = sub_1B07AB020;
  v890 = sub_1B039BC08;
  v891 = sub_1B0398F5C;
  v892 = sub_1B0398F5C;
  v893 = sub_1B0399178;
  v894 = sub_1B0398F5C;
  v895 = sub_1B0398F5C;
  v896 = sub_1B039BA94;
  v897 = sub_1B0398F5C;
  v898 = sub_1B0398F5C;
  v899 = sub_1B0399178;
  v900 = sub_1B0398F5C;
  v901 = sub_1B0398F5C;
  v902 = sub_1B03991EC;
  v903 = sub_1B0398F5C;
  v904 = sub_1B0398F5C;
  v905 = sub_1B03993BC;
  v906 = sub_1B0398F5C;
  v907 = sub_1B0398F5C;
  v908 = sub_1B039BCEC;
  v909 = sub_1B0398F5C;
  v910 = sub_1B0398F5C;
  v911 = sub_1B03991EC;
  v912 = sub_1B098FE40;
  v913 = sub_1B098FE40;
  v914 = sub_1B098FE40;
  v1025 = 0;
  v1024 = 0;
  v1023 = 0;
  v1022 = 0;
  v1020 = 0;
  v1021 = 0;
  v1019 = 0;
  v1018 = 0;
  v915 = 0;
  v1011[0] = 0;
  v1011[1] = 0;
  v1005 = 0;
  v1006 = 0;
  v999[0] = 0;
  v999[1] = 0;
  v993 = 0;
  v994 = 0;
  v987[0] = 0;
  v987[1] = 0;
  v981 = 0;
  v982 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  v916 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v917 = v402 - v916;
  v956 = 0;
  v918 = sub_1B0E439A8();
  v919 = *(v918 - 8);
  v920 = v918 - 8;
  v921 = (*(v919 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v956);
  v922 = v402 - v921;
  v923 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v924 = v402 - v923;
  v925 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v926 = v402 - v925;
  v927 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v928 = v402 - v927;
  v929 = type metadata accessor for Message(v12);
  v930 = *(v929 - 8);
  v931 = v929 - 8;
  v932 = (*(v930 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v956);
  v933 = v402 - v932;
  v1025 = v402 - v932;
  v14 = type metadata accessor for InProgressMessageDownload.Result(v13);
  v934 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v935 = v402 - v934;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  v936 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v937 = v402 - v936;
  v938 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v956);
  v939 = v402 - v938;
  v940 = sub_1B0E443C8();
  v942 = *(v940 - 8);
  v941 = v940 - 8;
  v943 = v942;
  v944 = *(v942 + 64);
  v945 = (v944 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v940);
  v946 = v402 - v945;
  v947 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v402 - v945);
  v948 = v402 - v947;
  v1024 = v402 - v947;
  v949 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v956);
  v950 = (v402 - v949);
  v951 = type metadata accessor for InProgressMessageDownload.Completed(v17);
  v952 = *(v951 - 8);
  v953 = v951 - 8;
  v954 = (*(v952 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v956);
  v955 = (v402 - v954);
  v1023 = v402 - v954;
  v957 = (*(*(_s6LoggerVMa(v18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v956);
  v967 = v402 - v957;
  v958 = _s6LoggerVMa_1(v19);
  v964 = *(*(v958 - 8) + 64);
  v959 = (v964 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v971);
  v960 = v402 - v959;
  v961 = (v964 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v962 = v402 - v961;
  v963 = (v964 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v965 = v402 - v963;
  v966 = (v964 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v968 = v402 - v966;
  v1022 = v402 - v966;
  v1020 = v23;
  v1021 = v24;
  v1019 = v25;
  v1018 = v1;
  sub_1B0394784(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v26);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v967, v971, v972, v968);
  v973 = *(v969 + 16);
  v974 = &v1017;
  swift_beginAccess();
  v975 = v1026;
  sub_1B0937E20(v971, v972, v973, v1026);
  swift_endAccess();
  memcpy(__dst, v975, sizeof(__dst));
  if (__dst[3])
  {
    memcpy(v1028, __dst, sizeof(v1028));
    v764 = *(v766 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    v765 = 1;
    sub_1B076CC6C(v767);

    if ((*(v952 + 48))(v950, v765, v951) == 1)
    {
      v223 = v924;
      sub_1B08BE984(v950);
      (*(v919 + 16))(v223, v968, v918);
      sub_1B074B69C(v968, v965);
      sub_1B074B69C(v965, v962);
      sub_1B074E41C(v965, v960);
      v224 = (v962 + *(v958 + 20));
      v509 = *v224;
      v510 = *(v224 + 1);
      v511 = *(v224 + 1);
      v512 = *(v224 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v962);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v508 = 36;
      v527 = 7;
      v225 = swift_allocObject();
      v226 = v510;
      v227 = v511;
      v228 = v512;
      v514 = v225;
      *(v225 + 16) = v509;
      *(v225 + 20) = v226;
      *(v225 + 24) = v227;
      *(v225 + 32) = v228;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v229 = swift_allocObject();
      v230 = v510;
      v231 = v511;
      v232 = v512;
      v507 = v229;
      *(v229 + 16) = v509;
      *(v229 + 20) = v230;
      *(v229 + 24) = v231;
      *(v229 + 32) = v232;

      v526 = 32;
      v233 = swift_allocObject();
      v234 = v507;
      v518 = v233;
      *(v233 + 16) = v768;
      *(v233 + 24) = v234;
      sub_1B0394868();
      sub_1B0394868();

      v235 = swift_allocObject();
      v236 = v510;
      v237 = v511;
      v238 = v512;
      v239 = v235;
      v240 = v960;
      v522 = v239;
      *(v239 + 16) = v509;
      *(v239 + 20) = v236;
      *(v239 + 24) = v237;
      *(v239 + 32) = v238;
      sub_1B074B764(v240);

      v241 = swift_allocObject();
      v242 = v969;
      v528 = v241;
      *(v241 + 16) = v769;
      *(v241 + 24) = v242;

      v554 = sub_1B0E43988();
      v555 = sub_1B0E458E8();
      v524 = 17;
      v530 = swift_allocObject();
      v516 = 16;
      *(v530 + 16) = 16;
      v531 = swift_allocObject();
      v525 = 4;
      *(v531 + 16) = 4;
      v243 = swift_allocObject();
      v513 = v243;
      *(v243 + 16) = v770;
      *(v243 + 24) = 0;
      v244 = swift_allocObject();
      v245 = v513;
      v532 = v244;
      *(v244 + 16) = v771;
      *(v244 + 24) = v245;
      v533 = swift_allocObject();
      *(v533 + 16) = 0;
      v534 = swift_allocObject();
      *(v534 + 16) = 1;
      v246 = swift_allocObject();
      v247 = v514;
      v515 = v246;
      *(v246 + 16) = v772;
      *(v246 + 24) = v247;
      v248 = swift_allocObject();
      v249 = v515;
      v535 = v248;
      *(v248 + 16) = v773;
      *(v248 + 24) = v249;
      v536 = swift_allocObject();
      *(v536 + 16) = v516;
      v537 = swift_allocObject();
      *(v537 + 16) = v525;
      v250 = swift_allocObject();
      v517 = v250;
      *(v250 + 16) = v774;
      *(v250 + 24) = 0;
      v251 = swift_allocObject();
      v252 = v517;
      v538 = v251;
      *(v251 + 16) = v775;
      *(v251 + 24) = v252;
      v539 = swift_allocObject();
      *(v539 + 16) = 0;
      v540 = swift_allocObject();
      *(v540 + 16) = v525;
      v253 = swift_allocObject();
      v254 = v518;
      v519 = v253;
      *(v253 + 16) = v776;
      *(v253 + 24) = v254;
      v255 = swift_allocObject();
      v256 = v519;
      v541 = v255;
      *(v255 + 16) = v777;
      *(v255 + 24) = v256;
      v542 = swift_allocObject();
      *(v542 + 16) = 112;
      v543 = swift_allocObject();
      v521 = 8;
      *(v543 + 16) = 8;
      v520 = swift_allocObject();
      *(v520 + 16) = v778;
      v257 = swift_allocObject();
      v258 = v520;
      v544 = v257;
      *(v257 + 16) = v779;
      *(v257 + 24) = v258;
      v545 = swift_allocObject();
      *(v545 + 16) = 37;
      v546 = swift_allocObject();
      *(v546 + 16) = v521;
      v259 = swift_allocObject();
      v260 = v522;
      v523 = v259;
      *(v259 + 16) = v780;
      *(v259 + 24) = v260;
      v261 = swift_allocObject();
      v262 = v523;
      v547 = v261;
      *(v261 + 16) = v781;
      *(v261 + 24) = v262;
      v548 = swift_allocObject();
      *(v548 + 16) = 0;
      v549 = swift_allocObject();
      *(v549 + 16) = v525;
      v263 = swift_allocObject();
      v264 = v528;
      v529 = v263;
      *(v263 + 16) = v782;
      *(v263 + 24) = v264;
      v265 = swift_allocObject();
      v266 = v529;
      v551 = v265;
      *(v265 + 16) = v783;
      *(v265 + 24) = v266;
      v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v550 = sub_1B0E46A48();
      v552 = v267;

      v268 = v530;
      v269 = v552;
      *v552 = v784;
      v269[1] = v268;

      v270 = v531;
      v271 = v552;
      v552[2] = v785;
      v271[3] = v270;

      v272 = v532;
      v273 = v552;
      v552[4] = v786;
      v273[5] = v272;

      v274 = v533;
      v275 = v552;
      v552[6] = v787;
      v275[7] = v274;

      v276 = v534;
      v277 = v552;
      v552[8] = v788;
      v277[9] = v276;

      v278 = v535;
      v279 = v552;
      v552[10] = v789;
      v279[11] = v278;

      v280 = v536;
      v281 = v552;
      v552[12] = v790;
      v281[13] = v280;

      v282 = v537;
      v283 = v552;
      v552[14] = v791;
      v283[15] = v282;

      v284 = v538;
      v285 = v552;
      v552[16] = v792;
      v285[17] = v284;

      v286 = v539;
      v287 = v552;
      v552[18] = v793;
      v287[19] = v286;

      v288 = v540;
      v289 = v552;
      v552[20] = v794;
      v289[21] = v288;

      v290 = v541;
      v291 = v552;
      v552[22] = v795;
      v291[23] = v290;

      v292 = v542;
      v293 = v552;
      v552[24] = v796;
      v293[25] = v292;

      v294 = v543;
      v295 = v552;
      v552[26] = v797;
      v295[27] = v294;

      v296 = v544;
      v297 = v552;
      v552[28] = v798;
      v297[29] = v296;

      v298 = v545;
      v299 = v552;
      v552[30] = v799;
      v299[31] = v298;

      v300 = v546;
      v301 = v552;
      v552[32] = v800;
      v301[33] = v300;

      v302 = v547;
      v303 = v552;
      v552[34] = v801;
      v303[35] = v302;

      v304 = v548;
      v305 = v552;
      v552[36] = v802;
      v305[37] = v304;

      v306 = v549;
      v307 = v552;
      v552[38] = v803;
      v307[39] = v306;

      v308 = v551;
      v309 = v552;
      v552[40] = v804;
      v309[41] = v308;
      sub_1B0394964();

      if (os_log_type_enabled(v554, v555))
      {
        v310 = v915;
        v500 = sub_1B0E45D78();
        v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v501 = sub_1B03949A8(0, v499, v499);
        v502 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v503 = &v1004;
        v1004 = v500;
        v504 = &v1003;
        v1003 = v501;
        v505 = &v1002;
        v1002 = v502;
        sub_1B0394A48(3, &v1004);
        sub_1B0394A48(7, v503);
        v1000 = v784;
        v1001 = v530;
        sub_1B03949FC(&v1000, v503, v504, v505);
        v506 = v310;
        if (v310)
        {

          __break(1u);
        }

        else
        {
          v1000 = v785;
          v1001 = v531;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v497 = 0;
          v1000 = v786;
          v1001 = v532;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v496 = 0;
          v1000 = v787;
          v1001 = v533;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v495 = 0;
          v1000 = v788;
          v1001 = v534;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v494 = 0;
          v1000 = v789;
          v1001 = v535;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v493 = 0;
          v1000 = v790;
          v1001 = v536;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v492 = 0;
          v1000 = v791;
          v1001 = v537;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v491 = 0;
          v1000 = v792;
          v1001 = v538;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v490 = 0;
          v1000 = v793;
          v1001 = v539;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v489 = 0;
          v1000 = v794;
          v1001 = v540;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v488 = 0;
          v1000 = v795;
          v1001 = v541;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v487 = 0;
          v1000 = v796;
          v1001 = v542;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v486 = 0;
          v1000 = v797;
          v1001 = v543;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v485 = 0;
          v1000 = v798;
          v1001 = v544;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v484 = 0;
          v1000 = v799;
          v1001 = v545;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v483 = 0;
          v1000 = v800;
          v1001 = v546;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v482 = 0;
          v1000 = v801;
          v1001 = v547;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v481 = 0;
          v1000 = v802;
          v1001 = v548;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v480 = 0;
          v1000 = v803;
          v1001 = v549;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v479 = 0;
          v1000 = v804;
          v1001 = v551;
          sub_1B03949FC(&v1000, &v1004, &v1003, &v1002);
          v478 = 0;
          _os_log_impl(&dword_1B0389000, v554, v555, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u), but no message data found.", v500, 0x31u);
          sub_1B03998A8(v501, 0, v499);
          sub_1B03998A8(v502, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v498 = v478;
        }
      }

      else
      {
        v311 = v915;

        v498 = v311;
      }

      v476 = v498;
      MEMORY[0x1E69E5920](v554);
      (*(v919 + 8))(v924, v918);
      v1031 = v1028[7];
      sub_1B074E7A8(&v1031, &v1010);
      v1009 = v1031;
      v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
      sub_1B098FD6C();
      sub_1B0E45798();
      for (i = v476; ; i = v472)
      {
        v472 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
        sub_1B0E46518();
        v473 = v1007;
        v474 = v1008;
        if (v1007)
        {
          v470 = v473;
          v471 = v474;
          v467 = v474;
          v466 = v473;
          v312 = swift_allocObject();
          v313 = v467;
          v314 = v912;
          *(v312 + 16) = v466;
          *(v312 + 24) = v313;
          v468 = v314;
          v469 = v312;
        }

        else
        {
          v468 = 0;
          v469 = 0;
        }

        v464 = v469;
        v465 = v468;
        if (!v468)
        {
          break;
        }

        v462 = v465;
        v463 = v464;
        v461 = v464;
        v460 = v465;
        v1005 = v465;
        v1006 = v464;

        (*(v930 + 56))(v917, 1, 1, v929);
        v460(v917);
        sub_1B07AF920(v917);
      }

      sub_1B039E440(v1011);
      sub_1B098FDF4(v1028);
      return sub_1B074B764(v968);
    }

    else
    {
      sub_1B07B02D8(v950, v955);
      v763 = *(v766 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

      sub_1B0798464(v763, v968, v935);

      sub_1B07AEE78(v935, v937);
      sub_1B07AF3D4(v935);
      v27 = type metadata accessor for InProgressMessageDownload.EMLX(0);
      if ((*(*(v27 - 8) + 48))(v937, 1) == 1)
      {
        sub_1B07AF3D4(v937);
        (*(v942 + 56))(v939, 1, 1, v940);
      }

      else
      {
        (*(v942 + 16))(v939, v937, v940);
        sub_1B07AF320(v937);
        (*(v942 + 56))(v939, 0, 1, v940);
      }

      if ((*(v942 + 48))(v939, 1, v940) == 1)
      {
        v131 = v926;
        sub_1B075B1E0(v939);
        (*(v919 + 16))(v131, v968, v918);
        sub_1B074B69C(v968, v965);
        sub_1B074B69C(v965, v962);
        sub_1B074E41C(v965, v960);
        v132 = (v962 + *(v958 + 20));
        v605 = *v132;
        v606 = *(v132 + 1);
        v607 = *(v132 + 1);
        v608 = *(v132 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v962);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v604 = 36;
        v623 = 7;
        v133 = swift_allocObject();
        v134 = v606;
        v135 = v607;
        v136 = v608;
        v610 = v133;
        *(v133 + 16) = v605;
        *(v133 + 20) = v134;
        *(v133 + 24) = v135;
        *(v133 + 32) = v136;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v137 = swift_allocObject();
        v138 = v606;
        v139 = v607;
        v140 = v608;
        v603 = v137;
        *(v137 + 16) = v605;
        *(v137 + 20) = v138;
        *(v137 + 24) = v139;
        *(v137 + 32) = v140;

        v622 = 32;
        v141 = swift_allocObject();
        v142 = v603;
        v614 = v141;
        *(v141 + 16) = v805;
        *(v141 + 24) = v142;
        sub_1B0394868();
        sub_1B0394868();

        v143 = swift_allocObject();
        v144 = v606;
        v145 = v607;
        v146 = v608;
        v147 = v143;
        v148 = v960;
        v618 = v147;
        *(v147 + 16) = v605;
        *(v147 + 20) = v144;
        *(v147 + 24) = v145;
        *(v147 + 32) = v146;
        sub_1B074B764(v148);

        v149 = swift_allocObject();
        v150 = v969;
        v624 = v149;
        *(v149 + 16) = v806;
        *(v149 + 24) = v150;

        v650 = sub_1B0E43988();
        v651 = sub_1B0E458E8();
        v620 = 17;
        v626 = swift_allocObject();
        v612 = 16;
        *(v626 + 16) = 16;
        v627 = swift_allocObject();
        v621 = 4;
        *(v627 + 16) = 4;
        v151 = swift_allocObject();
        v609 = v151;
        *(v151 + 16) = v770;
        *(v151 + 24) = 0;
        v152 = swift_allocObject();
        v153 = v609;
        v628 = v152;
        *(v152 + 16) = v807;
        *(v152 + 24) = v153;
        v629 = swift_allocObject();
        *(v629 + 16) = 0;
        v630 = swift_allocObject();
        *(v630 + 16) = 1;
        v154 = swift_allocObject();
        v155 = v610;
        v611 = v154;
        *(v154 + 16) = v808;
        *(v154 + 24) = v155;
        v156 = swift_allocObject();
        v157 = v611;
        v631 = v156;
        *(v156 + 16) = v809;
        *(v156 + 24) = v157;
        v632 = swift_allocObject();
        *(v632 + 16) = v612;
        v633 = swift_allocObject();
        *(v633 + 16) = v621;
        v158 = swift_allocObject();
        v613 = v158;
        *(v158 + 16) = v774;
        *(v158 + 24) = 0;
        v159 = swift_allocObject();
        v160 = v613;
        v634 = v159;
        *(v159 + 16) = v810;
        *(v159 + 24) = v160;
        v635 = swift_allocObject();
        *(v635 + 16) = 0;
        v636 = swift_allocObject();
        *(v636 + 16) = v621;
        v161 = swift_allocObject();
        v162 = v614;
        v615 = v161;
        *(v161 + 16) = v811;
        *(v161 + 24) = v162;
        v163 = swift_allocObject();
        v164 = v615;
        v637 = v163;
        *(v163 + 16) = v812;
        *(v163 + 24) = v164;
        v638 = swift_allocObject();
        *(v638 + 16) = 112;
        v639 = swift_allocObject();
        v617 = 8;
        *(v639 + 16) = 8;
        v616 = swift_allocObject();
        *(v616 + 16) = v778;
        v165 = swift_allocObject();
        v166 = v616;
        v640 = v165;
        *(v165 + 16) = v813;
        *(v165 + 24) = v166;
        v641 = swift_allocObject();
        *(v641 + 16) = 37;
        v642 = swift_allocObject();
        *(v642 + 16) = v617;
        v167 = swift_allocObject();
        v168 = v618;
        v619 = v167;
        *(v167 + 16) = v814;
        *(v167 + 24) = v168;
        v169 = swift_allocObject();
        v170 = v619;
        v643 = v169;
        *(v169 + 16) = v815;
        *(v169 + 24) = v170;
        v644 = swift_allocObject();
        *(v644 + 16) = 0;
        v645 = swift_allocObject();
        *(v645 + 16) = v621;
        v171 = swift_allocObject();
        v172 = v624;
        v625 = v171;
        *(v171 + 16) = v816;
        *(v171 + 24) = v172;
        v173 = swift_allocObject();
        v174 = v625;
        v647 = v173;
        *(v173 + 16) = v817;
        *(v173 + 24) = v174;
        v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v646 = sub_1B0E46A48();
        v648 = v175;

        v176 = v626;
        v177 = v648;
        *v648 = v818;
        v177[1] = v176;

        v178 = v627;
        v179 = v648;
        v648[2] = v819;
        v179[3] = v178;

        v180 = v628;
        v181 = v648;
        v648[4] = v820;
        v181[5] = v180;

        v182 = v629;
        v183 = v648;
        v648[6] = v821;
        v183[7] = v182;

        v184 = v630;
        v185 = v648;
        v648[8] = v822;
        v185[9] = v184;

        v186 = v631;
        v187 = v648;
        v648[10] = v823;
        v187[11] = v186;

        v188 = v632;
        v189 = v648;
        v648[12] = v824;
        v189[13] = v188;

        v190 = v633;
        v191 = v648;
        v648[14] = v825;
        v191[15] = v190;

        v192 = v634;
        v193 = v648;
        v648[16] = v826;
        v193[17] = v192;

        v194 = v635;
        v195 = v648;
        v648[18] = v827;
        v195[19] = v194;

        v196 = v636;
        v197 = v648;
        v648[20] = v828;
        v197[21] = v196;

        v198 = v637;
        v199 = v648;
        v648[22] = v829;
        v199[23] = v198;

        v200 = v638;
        v201 = v648;
        v648[24] = v830;
        v201[25] = v200;

        v202 = v639;
        v203 = v648;
        v648[26] = v831;
        v203[27] = v202;

        v204 = v640;
        v205 = v648;
        v648[28] = v832;
        v205[29] = v204;

        v206 = v641;
        v207 = v648;
        v648[30] = v833;
        v207[31] = v206;

        v208 = v642;
        v209 = v648;
        v648[32] = v834;
        v209[33] = v208;

        v210 = v643;
        v211 = v648;
        v648[34] = v835;
        v211[35] = v210;

        v212 = v644;
        v213 = v648;
        v648[36] = v836;
        v213[37] = v212;

        v214 = v645;
        v215 = v648;
        v648[38] = v837;
        v215[39] = v214;

        v216 = v647;
        v217 = v648;
        v648[40] = v838;
        v217[41] = v216;
        sub_1B0394964();

        if (os_log_type_enabled(v650, v651))
        {
          v218 = v915;
          v596 = sub_1B0E45D78();
          v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v597 = sub_1B03949A8(0, v595, v595);
          v598 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v599 = &v992;
          v992 = v596;
          v600 = &v991;
          v991 = v597;
          v601 = &v990;
          v990 = v598;
          sub_1B0394A48(3, &v992);
          sub_1B0394A48(7, v599);
          v988 = v818;
          v989 = v626;
          sub_1B03949FC(&v988, v599, v600, v601);
          v602 = v218;
          if (v218)
          {

            __break(1u);
          }

          else
          {
            v988 = v819;
            v989 = v627;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v593 = 0;
            v988 = v820;
            v989 = v628;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v592 = 0;
            v988 = v821;
            v989 = v629;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v591 = 0;
            v988 = v822;
            v989 = v630;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v590 = 0;
            v988 = v823;
            v989 = v631;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v589 = 0;
            v988 = v824;
            v989 = v632;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v588 = 0;
            v988 = v825;
            v989 = v633;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v587 = 0;
            v988 = v826;
            v989 = v634;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v586 = 0;
            v988 = v827;
            v989 = v635;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v585 = 0;
            v988 = v828;
            v989 = v636;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v584 = 0;
            v988 = v829;
            v989 = v637;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v583 = 0;
            v988 = v830;
            v989 = v638;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v582 = 0;
            v988 = v831;
            v989 = v639;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v581 = 0;
            v988 = v832;
            v989 = v640;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v580 = 0;
            v988 = v833;
            v989 = v641;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v579 = 0;
            v988 = v834;
            v989 = v642;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v578 = 0;
            v988 = v835;
            v989 = v643;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v577 = 0;
            v988 = v836;
            v989 = v644;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v576 = 0;
            v988 = v837;
            v989 = v645;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v575 = 0;
            v988 = v838;
            v989 = v647;
            sub_1B03949FC(&v988, &v992, &v991, &v990);
            v574 = 0;
            _os_log_impl(&dword_1B0389000, v650, v651, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u), but no message data found.", v596, 0x31u);
            sub_1B03998A8(v597, 0, v595);
            sub_1B03998A8(v598, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v594 = v574;
          }
        }

        else
        {
          v219 = v915;

          v594 = v219;
        }

        v572 = v594;
        MEMORY[0x1E69E5920](v650);
        (*(v919 + 8))(v926, v918);
        v1030 = v1028[7];
        sub_1B074E7A8(&v1030, &v998);
        v997 = v1030;
        v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
        sub_1B098FD6C();
        sub_1B0E45798();
        for (j = v572; ; j = v568)
        {
          v568 = j;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
          sub_1B0E46518();
          v569 = v995;
          v570 = v996;
          if (v995)
          {
            v566 = v569;
            v567 = v570;
            v563 = v570;
            v562 = v569;
            v220 = swift_allocObject();
            v221 = v563;
            v222 = v913;
            *(v220 + 16) = v562;
            *(v220 + 24) = v221;
            v564 = v222;
            v565 = v220;
          }

          else
          {
            v564 = 0;
            v565 = 0;
          }

          v560 = v565;
          v561 = v564;
          if (!v564)
          {
            break;
          }

          v558 = v561;
          v559 = v560;
          v557 = v560;
          v556 = v561;
          v993 = v561;
          v994 = v560;

          (*(v930 + 56))(v917, 1, 1, v929);
          v556(v917);
          sub_1B07AF920(v917);
        }

        sub_1B039E440(v999);
        sub_1B08BED00(v955);
        sub_1B098FDF4(v1028);
        return sub_1B074B764(v968);
      }

      else
      {
        v28 = v928;
        v710 = v943;
        v713 = *(v942 + 32);
        v712 = v942 + 32;
        v713(v948, v939, v940);
        v709 = *(v942 + 16);
        v708 = v942 + 16;
        v709(v946, v948, v940);
        Message.init(_:)(v946, v933);
        (*(v919 + 16))(v28, v968, v918);
        sub_1B074B69C(v968, v965);
        sub_1B074B69C(v965, v962);
        sub_1B074E41C(v965, v960);
        v29 = (v962 + *(v958 + 20));
        v704 = *v29;
        v705 = *(v29 + 1);
        v706 = *(v29 + 1);
        v707 = *(v29 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v962);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v703 = 36;
        v730 = 7;
        v30 = swift_allocObject();
        v31 = v705;
        v32 = v706;
        v33 = v707;
        v715 = v30;
        *(v30 + 16) = v704;
        *(v30 + 20) = v31;
        *(v30 + 24) = v32;
        *(v30 + 32) = v33;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = swift_allocObject();
        v35 = v705;
        v36 = v706;
        v37 = v707;
        v702 = v34;
        *(v34 + 16) = v704;
        *(v34 + 20) = v35;
        *(v34 + 24) = v36;
        *(v34 + 32) = v37;

        v729 = 32;
        v38 = swift_allocObject();
        v39 = v702;
        v719 = v38;
        *(v38 + 16) = v839;
        *(v38 + 24) = v39;
        sub_1B0394868();
        sub_1B0394868();

        v40 = swift_allocObject();
        v41 = v705;
        v42 = v706;
        v43 = v707;
        v44 = v40;
        v45 = v960;
        v722 = v44;
        *(v44 + 16) = v704;
        *(v44 + 20) = v41;
        *(v44 + 24) = v42;
        *(v44 + 32) = v43;
        sub_1B074B764(v45);

        v46 = swift_allocObject();
        v47 = v969;
        v725 = v46;
        *(v46 + 16) = v840;
        *(v46 + 24) = v47;

        v709(v946, v948, v940);
        v711 = (*(v710 + 80) + 16) & ~*(v710 + 80);
        v731 = swift_allocObject();
        v713((v731 + v711), v946, v940);
        sub_1B07575C4();

        v761 = sub_1B0E43988();
        v762 = sub_1B0E45908();
        v727 = 17;
        v734 = swift_allocObject();
        v717 = 16;
        *(v734 + 16) = 16;
        v735 = swift_allocObject();
        v724 = 4;
        *(v735 + 16) = 4;
        v48 = swift_allocObject();
        v714 = v48;
        *(v48 + 16) = v770;
        *(v48 + 24) = 0;
        v49 = swift_allocObject();
        v50 = v714;
        v736 = v49;
        *(v49 + 16) = v841;
        *(v49 + 24) = v50;
        v737 = swift_allocObject();
        *(v737 + 16) = 0;
        v738 = swift_allocObject();
        *(v738 + 16) = 1;
        v51 = swift_allocObject();
        v52 = v715;
        v716 = v51;
        *(v51 + 16) = v842;
        *(v51 + 24) = v52;
        v53 = swift_allocObject();
        v54 = v716;
        v739 = v53;
        *(v53 + 16) = v843;
        *(v53 + 24) = v54;
        v740 = swift_allocObject();
        *(v740 + 16) = v717;
        v741 = swift_allocObject();
        *(v741 + 16) = v724;
        v55 = swift_allocObject();
        v718 = v55;
        *(v55 + 16) = v774;
        *(v55 + 24) = 0;
        v56 = swift_allocObject();
        v57 = v718;
        v742 = v56;
        *(v56 + 16) = v844;
        *(v56 + 24) = v57;
        v743 = swift_allocObject();
        *(v743 + 16) = 0;
        v744 = swift_allocObject();
        *(v744 + 16) = v724;
        v58 = swift_allocObject();
        v59 = v719;
        v720 = v58;
        *(v58 + 16) = v845;
        *(v58 + 24) = v59;
        v60 = swift_allocObject();
        v61 = v720;
        v745 = v60;
        *(v60 + 16) = v846;
        *(v60 + 24) = v61;
        v746 = swift_allocObject();
        *(v746 + 16) = 112;
        v747 = swift_allocObject();
        v728 = 8;
        *(v747 + 16) = 8;
        v733 = 24;
        v721 = swift_allocObject();
        *(v721 + 16) = v778;
        v62 = swift_allocObject();
        v63 = v721;
        v748 = v62;
        *(v62 + 16) = v847;
        *(v62 + 24) = v63;
        v749 = swift_allocObject();
        *(v749 + 16) = 37;
        v750 = swift_allocObject();
        *(v750 + 16) = v728;
        v64 = swift_allocObject();
        v65 = v722;
        v723 = v64;
        *(v64 + 16) = v848;
        *(v64 + 24) = v65;
        v66 = swift_allocObject();
        v67 = v723;
        v751 = v66;
        *(v66 + 16) = v849;
        *(v66 + 24) = v67;
        v752 = swift_allocObject();
        *(v752 + 16) = 0;
        v753 = swift_allocObject();
        *(v753 + 16) = v724;
        v68 = swift_allocObject();
        v69 = v725;
        v726 = v68;
        *(v68 + 16) = v850;
        *(v68 + 24) = v69;
        v70 = swift_allocObject();
        v71 = v726;
        v754 = v70;
        *(v70 + 16) = v851;
        *(v70 + 24) = v71;
        v755 = swift_allocObject();
        *(v755 + 16) = 0;
        v756 = swift_allocObject();
        *(v756 + 16) = v728;
        v72 = swift_allocObject();
        v73 = v731;
        v732 = v72;
        *(v72 + 16) = v852;
        *(v72 + 24) = v73;
        v74 = swift_allocObject();
        v75 = v732;
        v758 = v74;
        *(v74 + 16) = v853;
        *(v74 + 24) = v75;
        v760 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v757 = sub_1B0E46A48();
        v759 = v76;

        v77 = v734;
        v78 = v759;
        *v759 = v854;
        v78[1] = v77;

        v79 = v735;
        v80 = v759;
        v759[2] = v855;
        v80[3] = v79;

        v81 = v736;
        v82 = v759;
        v759[4] = v856;
        v82[5] = v81;

        v83 = v737;
        v84 = v759;
        v759[6] = v857;
        v84[7] = v83;

        v85 = v738;
        v86 = v759;
        v759[8] = v858;
        v86[9] = v85;

        v87 = v739;
        v88 = v759;
        v759[10] = v859;
        v88[11] = v87;

        v89 = v740;
        v90 = v759;
        v759[12] = v860;
        v90[13] = v89;

        v91 = v741;
        v92 = v759;
        v759[14] = v861;
        v92[15] = v91;

        v93 = v742;
        v94 = v759;
        v759[16] = v862;
        v94[17] = v93;

        v95 = v743;
        v96 = v759;
        v759[18] = v863;
        v96[19] = v95;

        v97 = v744;
        v98 = v759;
        v759[20] = v864;
        v98[21] = v97;

        v99 = v745;
        v100 = v759;
        v759[22] = v865;
        v100[23] = v99;

        v101 = v746;
        v102 = v759;
        v759[24] = v866;
        v102[25] = v101;

        v103 = v747;
        v104 = v759;
        v759[26] = v867;
        v104[27] = v103;

        v105 = v748;
        v106 = v759;
        v759[28] = v868;
        v106[29] = v105;

        v107 = v749;
        v108 = v759;
        v759[30] = v869;
        v108[31] = v107;

        v109 = v750;
        v110 = v759;
        v759[32] = v870;
        v110[33] = v109;

        v111 = v751;
        v112 = v759;
        v759[34] = v871;
        v112[35] = v111;

        v113 = v752;
        v114 = v759;
        v759[36] = v872;
        v114[37] = v113;

        v115 = v753;
        v116 = v759;
        v759[38] = v873;
        v116[39] = v115;

        v117 = v754;
        v118 = v759;
        v759[40] = v874;
        v118[41] = v117;

        v119 = v755;
        v120 = v759;
        v759[42] = v875;
        v120[43] = v119;

        v121 = v756;
        v122 = v759;
        v759[44] = v876;
        v122[45] = v121;

        v123 = v758;
        v124 = v759;
        v759[46] = v877;
        v124[47] = v123;
        sub_1B0394964();

        if (os_log_type_enabled(v761, v762))
        {
          v125 = v915;
          v695 = sub_1B0E45D78();
          v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v696 = sub_1B03949A8(0, v694, v694);
          v697 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v698 = &v980;
          v980 = v695;
          v699 = &v979;
          v979 = v696;
          v700 = &v978;
          v978 = v697;
          sub_1B0394A48(3, &v980);
          sub_1B0394A48(8, v698);
          v976 = v854;
          v977 = v734;
          sub_1B03949FC(&v976, v698, v699, v700);
          v701 = v125;
          if (v125)
          {

            __break(1u);
          }

          else
          {
            v976 = v855;
            v977 = v735;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v692 = 0;
            v976 = v856;
            v977 = v736;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v691 = 0;
            v976 = v857;
            v977 = v737;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v690 = 0;
            v976 = v858;
            v977 = v738;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v689 = 0;
            v976 = v859;
            v977 = v739;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v688 = 0;
            v976 = v860;
            v977 = v740;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v687 = 0;
            v976 = v861;
            v977 = v741;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v686 = 0;
            v976 = v862;
            v977 = v742;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v685 = 0;
            v976 = v863;
            v977 = v743;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v684 = 0;
            v976 = v864;
            v977 = v744;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v683 = 0;
            v976 = v865;
            v977 = v745;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v682 = 0;
            v976 = v866;
            v977 = v746;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v681 = 0;
            v976 = v867;
            v977 = v747;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v680 = 0;
            v976 = v868;
            v977 = v748;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v679 = 0;
            v976 = v869;
            v977 = v749;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v678 = 0;
            v976 = v870;
            v977 = v750;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v677 = 0;
            v976 = v871;
            v977 = v751;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v676 = 0;
            v976 = v872;
            v977 = v752;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v675 = 0;
            v976 = v873;
            v977 = v753;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v674 = 0;
            v976 = v874;
            v977 = v754;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v673 = 0;
            v976 = v875;
            v977 = v755;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v672 = 0;
            v976 = v876;
            v977 = v756;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v671 = 0;
            v976 = v877;
            v977 = v758;
            sub_1B03949FC(&v976, &v980, &v979, &v978);
            v670 = 0;
            _os_log_impl(&dword_1B0389000, v761, v762, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u) with %{iec-bytes}ld.", v695, 0x3Bu);
            sub_1B03998A8(v696, 0, v694);
            sub_1B03998A8(v697, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v693 = v670;
          }
        }

        else
        {
          v126 = v915;

          v693 = v126;
        }

        v668 = v693;
        MEMORY[0x1E69E5920](v761);
        (*(v919 + 8))(v928, v918);
        v1029 = v1028[7];
        sub_1B074E7A8(&v1029, &v986);
        v985 = v1029;
        v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
        sub_1B098FD6C();
        sub_1B0E45798();
        for (k = v668; ; k = v664)
        {
          v664 = k;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
          sub_1B0E46518();
          v665 = v983;
          v666 = v984;
          if (v983)
          {
            v662 = v665;
            v663 = v666;
            v659 = v666;
            v658 = v665;
            v127 = swift_allocObject();
            v128 = v659;
            v129 = v914;
            *(v127 + 16) = v658;
            *(v127 + 24) = v128;
            v660 = v129;
            v661 = v127;
          }

          else
          {
            v660 = 0;
            v661 = 0;
          }

          v656 = v661;
          v657 = v660;
          if (!v660)
          {
            break;
          }

          v654 = v657;
          v655 = v656;
          v653 = v656;
          v652 = v657;
          v981 = v657;
          v982 = v656;

          (*(v930 + 16))(v917, v933, v929);
          (*(v930 + 56))(v917, 0, 1, v929);
          v652(v917);
          sub_1B07AF920(v917);
        }

        sub_1B039E440(v987);
        (*(v930 + 8))(v933, v929);
        (*(v942 + 8))(v948, v940);
        sub_1B08BED00(v955);
        sub_1B098FDF4(v1028);
        return sub_1B074B764(v968);
      }
    }
  }

  else
  {
    (*(v919 + 16))(v922, v968, v918);
    sub_1B074B69C(v968, v965);
    sub_1B074B69C(v965, v962);
    sub_1B074E41C(v965, v960);
    v315 = (v962 + *(v958 + 20));
    v413 = *v315;
    v414 = *(v315 + 1);
    v415 = *(v315 + 1);
    v416 = *(v315 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v962);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v412 = 36;
    v431 = 7;
    v316 = swift_allocObject();
    v317 = v414;
    v318 = v415;
    v319 = v416;
    v418 = v316;
    *(v316 + 16) = v413;
    *(v316 + 20) = v317;
    *(v316 + 24) = v318;
    *(v316 + 32) = v319;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v320 = swift_allocObject();
    v321 = v414;
    v322 = v415;
    v323 = v416;
    v411 = v320;
    *(v320 + 16) = v413;
    *(v320 + 20) = v321;
    *(v320 + 24) = v322;
    *(v320 + 32) = v323;

    v430 = 32;
    v324 = swift_allocObject();
    v325 = v411;
    v422 = v324;
    *(v324 + 16) = v878;
    *(v324 + 24) = v325;
    sub_1B0394868();
    sub_1B0394868();

    v326 = swift_allocObject();
    v327 = v414;
    v328 = v415;
    v329 = v416;
    v330 = v326;
    v331 = v960;
    v426 = v330;
    *(v330 + 16) = v413;
    *(v330 + 20) = v327;
    *(v330 + 24) = v328;
    *(v330 + 32) = v329;
    sub_1B074B764(v331);

    v332 = swift_allocObject();
    v333 = v969;
    v432 = v332;
    *(v332 + 16) = v879;
    *(v332 + 24) = v333;

    v458 = sub_1B0E43988();
    v459 = sub_1B0E458E8();
    v428 = 17;
    v434 = swift_allocObject();
    v420 = 16;
    *(v434 + 16) = 16;
    v435 = swift_allocObject();
    v429 = 4;
    *(v435 + 16) = 4;
    v334 = swift_allocObject();
    v417 = v334;
    *(v334 + 16) = v770;
    *(v334 + 24) = 0;
    v335 = swift_allocObject();
    v336 = v417;
    v436 = v335;
    *(v335 + 16) = v880;
    *(v335 + 24) = v336;
    v437 = swift_allocObject();
    *(v437 + 16) = 0;
    v438 = swift_allocObject();
    *(v438 + 16) = 1;
    v337 = swift_allocObject();
    v338 = v418;
    v419 = v337;
    *(v337 + 16) = v881;
    *(v337 + 24) = v338;
    v339 = swift_allocObject();
    v340 = v419;
    v439 = v339;
    *(v339 + 16) = v882;
    *(v339 + 24) = v340;
    v440 = swift_allocObject();
    *(v440 + 16) = v420;
    v441 = swift_allocObject();
    *(v441 + 16) = v429;
    v341 = swift_allocObject();
    v421 = v341;
    *(v341 + 16) = v774;
    *(v341 + 24) = 0;
    v342 = swift_allocObject();
    v343 = v421;
    v442 = v342;
    *(v342 + 16) = v883;
    *(v342 + 24) = v343;
    v443 = swift_allocObject();
    *(v443 + 16) = 0;
    v444 = swift_allocObject();
    *(v444 + 16) = v429;
    v344 = swift_allocObject();
    v345 = v422;
    v423 = v344;
    *(v344 + 16) = v884;
    *(v344 + 24) = v345;
    v346 = swift_allocObject();
    v347 = v423;
    v445 = v346;
    *(v346 + 16) = v885;
    *(v346 + 24) = v347;
    v446 = swift_allocObject();
    *(v446 + 16) = 112;
    v447 = swift_allocObject();
    v425 = 8;
    *(v447 + 16) = 8;
    v424 = swift_allocObject();
    *(v424 + 16) = v778;
    v348 = swift_allocObject();
    v349 = v424;
    v448 = v348;
    *(v348 + 16) = v886;
    *(v348 + 24) = v349;
    v449 = swift_allocObject();
    *(v449 + 16) = 37;
    v450 = swift_allocObject();
    *(v450 + 16) = v425;
    v350 = swift_allocObject();
    v351 = v426;
    v427 = v350;
    *(v350 + 16) = v887;
    *(v350 + 24) = v351;
    v352 = swift_allocObject();
    v353 = v427;
    v451 = v352;
    *(v352 + 16) = v888;
    *(v352 + 24) = v353;
    v452 = swift_allocObject();
    *(v452 + 16) = 0;
    v453 = swift_allocObject();
    *(v453 + 16) = v429;
    v354 = swift_allocObject();
    v355 = v432;
    v433 = v354;
    *(v354 + 16) = v889;
    *(v354 + 24) = v355;
    v356 = swift_allocObject();
    v357 = v433;
    v455 = v356;
    *(v356 + 16) = v890;
    *(v356 + 24) = v357;
    v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v454 = sub_1B0E46A48();
    v456 = v358;

    v359 = v434;
    v360 = v456;
    *v456 = v891;
    v360[1] = v359;

    v361 = v435;
    v362 = v456;
    v456[2] = v892;
    v362[3] = v361;

    v363 = v436;
    v364 = v456;
    v456[4] = v893;
    v364[5] = v363;

    v365 = v437;
    v366 = v456;
    v456[6] = v894;
    v366[7] = v365;

    v367 = v438;
    v368 = v456;
    v456[8] = v895;
    v368[9] = v367;

    v369 = v439;
    v370 = v456;
    v456[10] = v896;
    v370[11] = v369;

    v371 = v440;
    v372 = v456;
    v456[12] = v897;
    v372[13] = v371;

    v373 = v441;
    v374 = v456;
    v456[14] = v898;
    v374[15] = v373;

    v375 = v442;
    v376 = v456;
    v456[16] = v899;
    v376[17] = v375;

    v377 = v443;
    v378 = v456;
    v456[18] = v900;
    v378[19] = v377;

    v379 = v444;
    v380 = v456;
    v456[20] = v901;
    v380[21] = v379;

    v381 = v445;
    v382 = v456;
    v456[22] = v902;
    v382[23] = v381;

    v383 = v446;
    v384 = v456;
    v456[24] = v903;
    v384[25] = v383;

    v385 = v447;
    v386 = v456;
    v456[26] = v904;
    v386[27] = v385;

    v387 = v448;
    v388 = v456;
    v456[28] = v905;
    v388[29] = v387;

    v389 = v449;
    v390 = v456;
    v456[30] = v906;
    v390[31] = v389;

    v391 = v450;
    v392 = v456;
    v456[32] = v907;
    v392[33] = v391;

    v393 = v451;
    v394 = v456;
    v456[34] = v908;
    v394[35] = v393;

    v395 = v452;
    v396 = v456;
    v456[36] = v909;
    v396[37] = v395;

    v397 = v453;
    v398 = v456;
    v456[38] = v910;
    v398[39] = v397;

    v399 = v455;
    v400 = v456;
    v456[40] = v911;
    v400[41] = v399;
    sub_1B0394964();

    if (os_log_type_enabled(v458, v459))
    {
      v401 = v915;
      v404 = sub_1B0E45D78();
      v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v405 = sub_1B03949A8(0, v403, v403);
      v406 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v407 = &v1016;
      v1016 = v404;
      v408 = &v1015;
      v1015 = v405;
      v409 = &v1014;
      v1014 = v406;
      sub_1B0394A48(3, &v1016);
      sub_1B0394A48(7, v407);
      v1012 = v891;
      v1013 = v434;
      sub_1B03949FC(&v1012, v407, v408, v409);
      v410 = v401;
      if (v401)
      {

        __break(1u);
      }

      else
      {
        v1012 = v892;
        v1013 = v435;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[18] = 0;
        v1012 = v893;
        v1013 = v436;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[17] = 0;
        v1012 = v894;
        v1013 = v437;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[16] = 0;
        v1012 = v895;
        v1013 = v438;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[15] = 0;
        v1012 = v896;
        v1013 = v439;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[14] = 0;
        v1012 = v897;
        v1013 = v440;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[13] = 0;
        v1012 = v898;
        v1013 = v441;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[12] = 0;
        v1012 = v899;
        v1013 = v442;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[11] = 0;
        v1012 = v900;
        v1013 = v443;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[10] = 0;
        v1012 = v901;
        v1013 = v444;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[9] = 0;
        v1012 = v902;
        v1013 = v445;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[8] = 0;
        v1012 = v903;
        v1013 = v446;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[7] = 0;
        v1012 = v904;
        v1013 = v447;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[6] = 0;
        v1012 = v905;
        v1013 = v448;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[5] = 0;
        v1012 = v906;
        v1013 = v449;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[4] = 0;
        v1012 = v907;
        v1013 = v450;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[3] = 0;
        v1012 = v908;
        v1013 = v451;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[2] = 0;
        v1012 = v909;
        v1013 = v452;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[1] = 0;
        v1012 = v910;
        v1013 = v453;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        v402[0] = 0;
        v1012 = v911;
        v1013 = v455;
        sub_1B03949FC(&v1012, &v1016, &v1015, &v1014);
        _os_log_impl(&dword_1B0389000, v458, v459, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u), but no such request.", v404, 0x31u);
        sub_1B03998A8(v405, 0, v403);
        sub_1B03998A8(v406, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v458);
    (*(v919 + 8))(v922, v918);
    return sub_1B074B764(v968);
  }
}

void *sub_1B09343F0(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v21 = a1;
  v20 = a2;
  v26 = a3;
  v18 = a4;
  v17 = a5;
  v19 = sub_1B098FE4C;
  v13[61] = sub_1B039BBE8;
  v13[62] = sub_1B0394C30;
  v13[63] = sub_1B0394C24;
  v13[64] = sub_1B039BA2C;
  v13[65] = sub_1B039BA88;
  v13[66] = sub_1B039BB94;
  v13[67] = sub_1B0394C24;
  v13[68] = sub_1B039BBA0;
  v13[69] = sub_1B039BC08;
  v13[70] = sub_1B07135E4;
  v13[71] = sub_1B070B324;
  v13[72] = sub_1B0398F5C;
  v13[73] = sub_1B0398F5C;
  v13[74] = sub_1B0399178;
  v13[75] = sub_1B0398F5C;
  v13[76] = sub_1B0398F5C;
  v13[77] = sub_1B039BA94;
  v13[78] = sub_1B0398F5C;
  v13[79] = sub_1B0398F5C;
  v13[80] = sub_1B0399178;
  v13[81] = sub_1B0398F5C;
  v13[82] = sub_1B0398F5C;
  v13[83] = sub_1B03991EC;
  v13[84] = sub_1B0398F5C;
  v13[85] = sub_1B0398F5C;
  v13[86] = sub_1B070B4B4;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v13[87] = 0;
  v14 = _s6LoggerVMa(0);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = v13 - v15;
  v22 = sub_1B0E439A8();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v27 = v13 - v25;
  v36 = v6;
  v37 = v7;
  v35 = v26;
  v34 = v8 & 1;
  v33 = v9;
  v32 = v5;
  v29[16] = v8 & 1;
  v30 = v26;
  sub_1B09B21DC(v6, v7, v10, v29, MEMORY[0x1E69E7CA8] + 8, v11);
  v28 = 0;
  return sub_1B09408A4(v21, v20, v26, v17);
}

uint64_t sub_1B0935A80(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a1;
  v123 = a2;
  v119 = a3;
  v121 = a4;
  v107 = a5;
  v108 = a6;
  v109 = a7;
  v124 = sub_1B098FE7C;
  v45 = sub_1B099027C;
  v46 = sub_1B039BBE8;
  v47 = sub_1B0874D38;
  v48 = sub_1B0394C30;
  v49 = sub_1B0394C24;
  v50 = sub_1B039BA2C;
  v51 = sub_1B039BA88;
  v52 = sub_1B039BB94;
  v53 = sub_1B0394C24;
  v54 = sub_1B039BBA0;
  v55 = sub_1B039BC08;
  v56 = sub_1B03FB49C;
  v57 = sub_1B039BCF8;
  v58 = sub_1B07135E4;
  v59 = sub_1B070B324;
  v60 = sub_1B0398F5C;
  v61 = sub_1B0398F5C;
  v62 = sub_1B0399178;
  v63 = sub_1B0398F5C;
  v64 = sub_1B0398F5C;
  v65 = sub_1B039BA94;
  v66 = sub_1B0398F5C;
  v67 = sub_1B0398F5C;
  v68 = sub_1B0399178;
  v69 = sub_1B0398F5C;
  v70 = sub_1B0398F5C;
  v71 = sub_1B03991EC;
  v72 = sub_1B0398F5C;
  v73 = sub_1B0398F5C;
  v74 = sub_1B039BCEC;
  v75 = sub_1B0398F5C;
  v76 = sub_1B0398F5C;
  v77 = sub_1B070B4B4;
  v147 = 0;
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v143 = 0;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v96 = 0;
  v78 = _s6LoggerVMa(0);
  v79 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v80 = &v34[-v79];
  v81 = sub_1B0E439A8();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v85 = &v34[-v84];
  v86 = sub_1B0E44238();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v90 = &v34[-v89];
  v91 = sub_1B0E44288();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v34[-v94];
  v97 = *(_s6LoggerVMa_1(v8) - 8);
  v98 = v97;
  v99 = *(v97 + 64);
  v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v34[-v100];
  v10 = type metadata accessor for InProgressMessageDownload.Completed(v9);
  v102 = *(v10 - 8);
  v103 = v102;
  v104 = *(v102 + 64);
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v34[-v105];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
  v110 = *(v125 - 8);
  v111 = v110;
  v112 = *(v110 + 64);
  v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v34[-v113];
  v115 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v34[-v115];
  v116 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v34[-v116];
  v147 = &v34[-v116];
  v145 = v15;
  v146 = v16;
  v144 = v17;
  v120 = 1;
  v143 = v18 & 1;
  v141 = v19;
  v142 = v20;
  v140 = v21;
  v139 = v7;

  v128 = v119;
  v129 = v121 & v120;
  v130 = v7;
  sub_1B09B21DC(v118, v123, v124, v127, v125, v122);
  v126 = 0;

  sub_1B098FEB0(v122, v117);
  v43 = *(v44 + 96);
  MEMORY[0x1E69E5928](v43);
  sub_1B0990044(v117, v114);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AFC78(v119, v106);
  sub_1B074B69C(v109, v101);

  v35 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v36 = (v35 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 12 + *(v103 + 80)) & ~*(v103 + 80);
  v39 = (v38 + v104 + *(v98 + 80)) & ~*(v98 + 80);
  v40 = (v39 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_1B098FEB0(v114, (v41 + v35));
  v22 = v37;
  v23 = v118;
  v24 = v123;
  v25 = v38;
  v26 = v41;
  v27 = v106;
  *(v41 + v36) = v44;
  v28 = v26 + v22;
  *v28 = v23;
  *(v28 + 8) = v24;
  sub_1B07B02D8(v27, (v26 + v25));
  sub_1B074E41C(v101, v41 + v39);
  v29 = v108;
  v30 = v45;
  v31 = v41;
  v32 = (v41 + v40);
  *v32 = v107;
  v32[1] = v29;
  v136 = v30;
  v137 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = 0;
  v134 = sub_1B038C908;
  v135 = &block_descriptor_16;
  v42 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v95, v90, v42);
  (*(v87 + 8))(v90, v86);
  (*(v92 + 8))(v95, v91);
  _Block_release(v42);

  MEMORY[0x1E69E5920](v43);
  return sub_1B099045C(v117);
}

void *sub_1B0937E20@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v9 = 0;
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v4;
  v7 = *(v4 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0990574();
  sub_1B0E456F8();

  sub_1B039E440(v14);
  if (v15)
  {
    memset(v12, 0, sizeof(v12));
    memcpy(v13, v12, sizeof(v13));
  }

  else
  {
    v9 = v14[1];
    sub_1B0E45308();
    memcpy(__dst, v8, sizeof(__dst));
    memcpy(v11, __dst, sizeof(v11));
    memcpy(v13, v11, sizeof(v13));
  }

  return memcpy(a4, v13, 0x40uLL);
}

uint64_t sub_1B0938180(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v23 = a2;
  v31 = 0;
  v30 = 0;
  v24 = 0;
  v25 = (*(*(type metadata accessor for InProgressMessageDownload.EMLX(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v8 - v25;
  v31 = v2;
  v30 = v3;
  v5 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(v4);
  if (*(v27 + *(v5 + 24)))
  {
    v28 = 0;
    v29 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    sub_1B07AF800(v27, v26);
    v18 = *(v23 + 104);

    v19 = sub_1B08C4040(v18);
    v20 = v6;

    sub_1B07AF320(v26);
    if (v20)
    {
      v16 = v19;
      v17 = v20;
      v13 = v20;
      v12 = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v14 = v12;
      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v11 = v15;
    v10 = v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = v10;
    v29 = v11;
    v21 = v10;
    v22 = v11;
  }

  v8 = v22;
  v9 = v21;
  sub_1B03B1198(&v28);
  return v9;
}

uint64_t sub_1B0938358(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1B0858C94(a3);
}

uint64_t sub_1B093840C(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a1;
  v84 = a2;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v74 = a6;
  v75 = a7;
  v76 = a8;
  v83 = sub_1B0993B1C;
  v82 = sub_1B0993B24;
  v49 = sub_1B0993B54;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v97 = 0;
  v98 = 0;
  v60 = 0;
  v50 = sub_1B0E44238();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v54 = &v35 - v53;
  v55 = sub_1B0E44288();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v35 - v58;
  v61 = *(_s6LoggerVMa_1(v9) - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v65 = &v35 - v64;
  v11 = type metadata accessor for InProgressMessageDownload.Completed(v10);
  v66 = *(v11 - 8);
  v67 = v66;
  v68 = *(v66 + 64);
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v70 = (&v35 - v69);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
  v77 = *(v85 - 8);
  v78 = v77;
  v79 = *(v77 + 64);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v35 - v80;
  v108 = a1;
  v107 = v12;
  v105 = v13;
  v106 = v14;
  v104 = v15;
  v103 = v16;
  v101 = v17;
  v102 = v18;

  v88 = v83;
  v89 = v84;
  sub_1B039A570(v82, v87, v85, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v86, &v99);

  v40 = v99;
  v47 = v100;
  v97 = v99;
  v98 = v100;
  v46 = *(v84 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v46);
  sub_1B0990044(v48, v81);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AFC78(v73, v70);
  sub_1B074B69C(v74, v65);

  v36 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v37 = (v36 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 19) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v39 + 16 + *(v67 + 80)) & ~*(v67 + 80);
  v42 = (v41 + v68 + *(v62 + 80)) & ~*(v62 + 80);
  v43 = (v42 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  sub_1B098FEB0(v81, (v44 + v36));
  v19 = v38;
  v20 = v71;
  v21 = v72;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v25 = v44;
  v26 = v47;
  v27 = v70;
  *(v44 + v37) = v84;
  v28 = v25 + v19;
  *v28 = v20;
  *(v28 + 8) = v21;
  v29 = (v25 + v22);
  *v29 = v23;
  v29[1] = v26;
  sub_1B07B02D8(v27, (v25 + v24));
  sub_1B074E41C(v65, v44 + v42);
  v30 = v76;
  v31 = v49;
  v32 = v44;
  v33 = (v44 + v43);
  *v33 = v75;
  v33[1] = v30;
  v95 = v31;
  v96 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v91 = 1107296256;
  v92 = 0;
  v93 = sub_1B038C908;
  v94 = &block_descriptor_5675;
  v45 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v59, v54, v45);
  (*(v51 + 8))(v54, v50);
  (*(v56 + 8))(v59, v55);
  _Block_release(v45);

  MEMORY[0x1E69E5920](v46);
}

uint64_t sub_1B0938C9C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B0938CE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  v222 = a8;
  v221 = a7;
  v220 = a6;
  v219 = a5;
  v218 = a4;
  v217 = a3;
  v227 = a2;
  v224 = a1;
  v223 = a10;
  v205 = a10;
  v228 = a9;
  v206 = a9;
  v214 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v207 = 0;
  v238 = 0;
  v208 = _s6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](0);
  v209 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1B0E439A8();
  v211 = *(v210 - 8);
  v212 = v211;
  MEMORY[0x1EEE9AC00](v210 - 8);
  v213 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v214);
  v232 = &v94 - v215;
  v216 = &v94 - v215;
  v231 = type metadata accessor for MailboxPersistenceHelper.DownloadResult(v12);
  v225 = *(v231 - 8);
  v230 = v225;
  v226 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v229 = &v94 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = v229;
  v249 = v13;
  v248 = v227;
  v246 = v14;
  v247 = v15;
  v244 = v16;
  v245 = v17;
  v243 = v18;
  v242 = v19;
  v240 = v228;
  v241 = v20;
  sub_1B0990044(v13, v21);
  if ((*(v230 + 48))(v232, 1, v231) == 1)
  {
    sub_1B099045C(v216);
    v204 = v207;
  }

  else
  {
    v22 = v227;
    v23 = v207;
    sub_1B0993DBC(v216, v229);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v201 = &v94;
    MEMORY[0x1EEE9AC00](v217);
    v24 = v219;
    v25 = v220;
    v26 = v221;
    *(&v94 - 6) = v27;
    *(&v94 - 5) = v24;
    *(&v94 - 4) = v25;
    *(&v94 - 3) = v26;
    *(&v94 - 2) = v22;
    sub_1B09B21DC(v28, v29, sub_1B0993E90, (&v94 - 8), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    v202 = v23;
    v203 = v23;
    if (v23)
    {
      v31 = v213;
      v139 = v203;
      v154 = 0;
      v134 = 0;

      v32 = v139;
      v238 = v139;
      (*(v212 + 16))(v31, v222, v210);

      sub_1B0394784(v227 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v209);
      v33 = (v209 + *(v208 + 20));
      v135 = *v33;
      v136 = *(v33 + 1);
      sub_1B039480C(v209);

      v138 = 24;
      v168 = 7;
      v34 = swift_allocObject();
      v35 = v136;
      v148 = v34;
      *(v34 + 16) = v135;
      *(v34 + 20) = v35;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v36 = swift_allocObject();
      v37 = v136;
      v137 = v36;
      *(v36 + 16) = v135;
      *(v36 + 20) = v37;

      v167 = 32;
      v38 = swift_allocObject();
      v39 = v137;
      v161 = v38;
      *(v38 + 16) = sub_1B039BBE8;
      *(v38 + 24) = v39;
      sub_1B0394868();
      sub_1B0394868();

      v40 = v139;
      v169 = swift_allocObject();
      *(v169 + 16) = v139;
      v191 = sub_1B0E43988();
      v140 = v191;
      v190 = sub_1B0E458E8();
      v141 = v190;
      v164 = 17;
      v172 = swift_allocObject();
      v142 = v172;
      v151 = 16;
      *(v172 + 16) = 16;
      v173 = swift_allocObject();
      v143 = v173;
      v159 = 4;
      *(v173 + 16) = 4;
      v41 = swift_allocObject();
      v42 = v154;
      v144 = v41;
      *(v41 + 16) = sub_1B0394C30;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v144;
      v174 = v43;
      v145 = v43;
      *(v43 + 16) = sub_1B0394C24;
      *(v43 + 24) = v44;
      v175 = swift_allocObject();
      v146 = v175;
      v157 = 0;
      *(v175 + 16) = 0;
      v176 = swift_allocObject();
      v147 = v176;
      *(v176 + 16) = 1;
      v45 = swift_allocObject();
      v46 = v148;
      v149 = v45;
      *(v45 + 16) = sub_1B039BA2C;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v149;
      v177 = v47;
      v150 = v47;
      *(v47 + 16) = sub_1B039BA88;
      *(v47 + 24) = v48;
      v178 = swift_allocObject();
      v152 = v178;
      *(v178 + 16) = v151;
      v179 = swift_allocObject();
      v153 = v179;
      *(v179 + 16) = v159;
      v49 = swift_allocObject();
      v50 = v154;
      v155 = v49;
      *(v49 + 16) = sub_1B039BB94;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v155;
      v180 = v51;
      v156 = v51;
      *(v51 + 16) = sub_1B0394C24;
      *(v51 + 24) = v52;
      v181 = swift_allocObject();
      v158 = v181;
      *(v181 + 16) = v157;
      v182 = swift_allocObject();
      v160 = v182;
      *(v182 + 16) = v159;
      v53 = swift_allocObject();
      v54 = v161;
      v162 = v53;
      *(v53 + 16) = sub_1B039BBA0;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v162;
      v183 = v55;
      v163 = v55;
      *(v55 + 16) = sub_1B039BC08;
      *(v55 + 24) = v56;
      v184 = swift_allocObject();
      v165 = v184;
      *(v184 + 16) = 64;
      v185 = swift_allocObject();
      v166 = v185;
      *(v185 + 16) = 8;
      v57 = swift_allocObject();
      v58 = v169;
      v170 = v57;
      *(v57 + 16) = sub_1B07135E4;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v170;
      v188 = v59;
      v171 = v59;
      *(v59 + 16) = sub_1B070B324;
      *(v59 + 24) = v60;
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v186 = sub_1B0E46A48();
      v187 = v61;

      v62 = v172;
      v63 = v187;
      *v187 = sub_1B0398F5C;
      v63[1] = v62;

      v64 = v173;
      v65 = v187;
      v187[2] = sub_1B0398F5C;
      v65[3] = v64;

      v66 = v174;
      v67 = v187;
      v187[4] = sub_1B0399178;
      v67[5] = v66;

      v68 = v175;
      v69 = v187;
      v187[6] = sub_1B0398F5C;
      v69[7] = v68;

      v70 = v176;
      v71 = v187;
      v187[8] = sub_1B0398F5C;
      v71[9] = v70;

      v72 = v177;
      v73 = v187;
      v187[10] = sub_1B039BA94;
      v73[11] = v72;

      v74 = v178;
      v75 = v187;
      v187[12] = sub_1B0398F5C;
      v75[13] = v74;

      v76 = v179;
      v77 = v187;
      v187[14] = sub_1B0398F5C;
      v77[15] = v76;

      v78 = v180;
      v79 = v187;
      v187[16] = sub_1B0399178;
      v79[17] = v78;

      v80 = v181;
      v81 = v187;
      v187[18] = sub_1B0398F5C;
      v81[19] = v80;

      v82 = v182;
      v83 = v187;
      v187[20] = sub_1B0398F5C;
      v83[21] = v82;

      v84 = v183;
      v85 = v187;
      v187[22] = sub_1B03991EC;
      v85[23] = v84;

      v86 = v184;
      v87 = v187;
      v187[24] = sub_1B0398F5C;
      v87[25] = v86;

      v88 = v185;
      v89 = v187;
      v187[26] = sub_1B0398F5C;
      v89[27] = v88;

      v90 = v187;
      v91 = v188;
      v187[28] = sub_1B070B4B4;
      v90[29] = v91;
      sub_1B0394964();

      if (os_log_type_enabled(v191, v190))
      {
        v92 = v134;
        v128 = sub_1B0E45D78();
        v125 = v128;
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v129 = sub_1B03949A8(1, v126, v126);
        v127 = v129;
        v130 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v237 = v128;
        v236 = v129;
        v235 = v130;
        v131 = &v237;
        sub_1B0394A48(2, &v237);
        sub_1B0394A48(5, v131);
        v233 = sub_1B0398F5C;
        v234 = v142;
        sub_1B03949FC(&v233, v131, &v236, &v235);
        v132 = v92;
        v133 = v92;
        if (v92)
        {
          v123 = 0;

          __break(1u);
        }

        else
        {
          v233 = sub_1B0398F5C;
          v234 = v143;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v121 = 0;
          v122 = 0;
          v233 = sub_1B0399178;
          v234 = v145;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v119 = 0;
          v120 = 0;
          v233 = sub_1B0398F5C;
          v234 = v146;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v117 = 0;
          v118 = 0;
          v233 = sub_1B0398F5C;
          v234 = v147;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v115 = 0;
          v116 = 0;
          v233 = sub_1B039BA94;
          v234 = v150;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v113 = 0;
          v114 = 0;
          v233 = sub_1B0398F5C;
          v234 = v152;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v111 = 0;
          v112 = 0;
          v233 = sub_1B0398F5C;
          v234 = v153;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v109 = 0;
          v110 = 0;
          v233 = sub_1B0399178;
          v234 = v156;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v107 = 0;
          v108 = 0;
          v233 = sub_1B0398F5C;
          v234 = v158;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v105 = 0;
          v106 = 0;
          v233 = sub_1B0398F5C;
          v234 = v160;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v103 = 0;
          v104 = 0;
          v233 = sub_1B03991EC;
          v234 = v163;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v101 = 0;
          v102 = 0;
          v233 = sub_1B0398F5C;
          v234 = v165;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v99 = 0;
          v100 = 0;
          v233 = sub_1B0398F5C;
          v234 = v166;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v97 = 0;
          v98 = 0;
          v233 = sub_1B070B4B4;
          v234 = v171;
          sub_1B03949FC(&v233, &v237, &v236, &v235);
          v95 = 0;
          v96 = 0;
          _os_log_impl(&dword_1B0389000, v140, v141, "[%.*hhx-%.*X] Failed to persist complete download: %@", v125, 0x21u);
          sub_1B03998A8(v127, 1, v126);
          sub_1B03998A8(v130, 0, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v124 = v95;
        }
      }

      else
      {
        v93 = v134;

        v124 = v93;
      }

      v94 = v124;

      (*(v212 + 8))(v213, v210);
      v200 = v94;
    }

    else
    {

      v200 = v202;
    }

    v199 = v200;
    sub_1B0993EC8(v229);
    v204 = v199;
  }

  sub_1B093A9A8(v217, v218, *v221, v221, v222);
  v198 = *(v221 + *(type metadata accessor for InProgressMessageDownload.Completed(0) + 32));
  if (v198 == 2)
  {
    v195 = 0;
    v196 = 1;
  }

  else
  {
    v197 = HIDWORD(v198);
    v195 = HIDWORD(v198);
    v196 = 0;
  }

  result = v195;
  v194 = v195;
  if ((v196 & 1) == 0)
  {
    v193 = v194;
    v192 = v194;
    v239 = v194;

    v206(v192);
  }

  return result;
}

uint64_t sub_1B093A8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v13 = a7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard;
  swift_beginAccess();
  sub_1B0863D8C(a3, a4, a5, a6, a2, v13);
  return swift_endAccess();
}

void *sub_1B093A9A8(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (sub_1B0999758(a3, a1, a2))
  {
    return sub_1B093AA74(a1);
  }

  else
  {
    return sub_1B09408A4(a1, a2, a3, a5);
  }
}

uint64_t sub_1B093AA74(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1408 = v2;
  v1409 = v3;
  v1410 = v4;
  v1396 = v5;
  v1397 = v6;
  v1314 = v1;
  v1398 = 0;
  v1315 = sub_1B03F7AE0;
  v1316 = sub_1B07AB020;
  v1317 = sub_1B039BC08;
  v1318 = sub_1B0398F5C;
  v1319 = sub_1B0398F5C;
  v1320 = sub_1B03991EC;
  v1321 = sub_1B074E050;
  v1322 = sub_1B09907C8;
  v1323 = sub_1B03F7AE0;
  v1324 = sub_1B0394C30;
  v1325 = sub_1B0394C24;
  v1326 = sub_1B074DFFC;
  v1327 = sub_1B039BA88;
  v1328 = sub_1B039BB94;
  v1329 = sub_1B0394C24;
  v1330 = sub_1B039BBA0;
  v1331 = sub_1B039BC08;
  v1332 = sub_1B06BA324;
  v1333 = sub_1B074E0E4;
  v1334 = sub_1B039BCF8;
  v1335 = sub_1B09907D0;
  v1336 = sub_1B039BC08;
  v1337 = sub_1B07AB020;
  v1338 = sub_1B039BC08;
  v1339 = sub_1B07B07A0;
  v1340 = sub_1B03B0DF8;
  v1341 = sub_1B0398F5C;
  v1342 = sub_1B0398F5C;
  v1343 = sub_1B0399178;
  v1344 = sub_1B0398F5C;
  v1345 = sub_1B0398F5C;
  v1346 = sub_1B039BA94;
  v1347 = sub_1B0398F5C;
  v1348 = sub_1B0398F5C;
  v1349 = sub_1B0399178;
  v1350 = sub_1B0398F5C;
  v1351 = sub_1B0398F5C;
  v1352 = sub_1B03991EC;
  v1353 = sub_1B0398F5C;
  v1354 = sub_1B0398F5C;
  v1355 = sub_1B03993BC;
  v1356 = sub_1B0398F5C;
  v1357 = sub_1B0398F5C;
  v1358 = sub_1B039BCEC;
  v1359 = sub_1B0398F5C;
  v1360 = sub_1B0398F5C;
  v1361 = sub_1B03991EC;
  v1362 = sub_1B0398F5C;
  v1363 = sub_1B0398F5C;
  v1364 = sub_1B03991EC;
  v1365 = sub_1B0398F5C;
  v1366 = sub_1B0398F5C;
  v1367 = sub_1B0399260;
  v1368 = sub_1B03F7AE0;
  v1369 = sub_1B07AB020;
  v1370 = sub_1B039BC08;
  v1371 = sub_1B0398F5C;
  v1372 = sub_1B0398F5C;
  v1373 = sub_1B03991EC;
  v1446 = 0;
  v1444 = 0;
  v1445 = 0;
  v1443 = 0;
  v1442 = 0;
  v1441 = 0;
  v1440 = 0;
  v1438 = 0;
  v1374 = 0;
  v1426 = 0;
  v1427 = 0;
  v1425 = 0;
  v1424[0] = 0;
  v1424[1] = 0;
  v1393 = 0;
  v1375 = _s6LoggerVMa_1(0);
  v1376 = (*(*(v1375 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1377 = &v351 - v1376;
  v1378 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1379 = &v351 - v1378;
  v1380 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v1381 = &v351 - v1380;
  v1382 = sub_1B0E439A8();
  v1383 = *(v1382 - 8);
  v1384 = v1382 - 8;
  v1385 = (*(v1383 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1382);
  v1386 = &v351 - v1385;
  v1387 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v351 - v1385);
  v1388 = &v351 - v1387;
  v1389 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v351 - v1387);
  v1390 = &v351 - v1389;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  v1391 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v1392 = &v351 - v1391;
  v1394 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1393);
  v1395 = &v351 - v1394;
  v1399 = sub_1B0E443C8();
  v1401 = *(v1399 - 8);
  v1400 = v1399 - 8;
  v1402 = v1401;
  v1404 = *(v1401 + 64);
  v1403 = (v1404 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1408);
  v1405 = &v351 - v1403;
  v1406 = (v1404 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v1407 = &v351 - v1406;
  v1446 = &v351 - v1406;
  v1444 = v15;
  v1445 = v16;
  v1443 = v17;
  v1442 = v18;
  v1441 = v19;
  v1440 = v1;
  v1411 = &v1439;
  swift_beginAccess();
  v1412 = sub_1B09460C0(v1408, v1409, 1, v1410);
  swift_endAccess();
  v1438 = v1412;
  v1437[1] = v1412;
  v1413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v1414 = sub_1B0990678();
  if (sub_1B0E45748())
  {
    (*(v1383 + 16))(v1386, v1397, v1382);
    v366 = 7;
    v363 = swift_allocObject();
    *(v363 + 16) = v1410;

    v365 = 32;
    v337 = swift_allocObject();
    v338 = v363;
    v367 = v337;
    *(v337 + 16) = v1315;
    *(v337 + 24) = v338;

    v375 = sub_1B0E43988();
    v376 = sub_1B0E458E8();
    v364 = 17;
    v369 = swift_allocObject();
    *(v369 + 16) = 0;
    v370 = swift_allocObject();
    *(v370 + 16) = 4;
    v339 = swift_allocObject();
    v340 = v367;
    v368 = v339;
    *(v339 + 16) = v1316;
    *(v339 + 24) = v340;
    v341 = swift_allocObject();
    v342 = v368;
    v372 = v341;
    *(v341 + 16) = v1317;
    *(v341 + 24) = v342;
    v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v371 = sub_1B0E46A48();
    v373 = v343;

    v344 = v369;
    v345 = v373;
    *v373 = v1318;
    v345[1] = v344;

    v346 = v370;
    v347 = v373;
    v373[2] = v1319;
    v347[3] = v346;

    v348 = v372;
    v349 = v373;
    v373[4] = v1320;
    v349[5] = v348;
    sub_1B0394964();

    if (os_log_type_enabled(v375, v376))
    {
      v350 = v1374;
      v356 = sub_1B0E45D78();
      v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v355 = 0;
      v357 = sub_1B03949A8(0, v354, v354);
      v358 = sub_1B03949A8(v355, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v359 = v1437;
      v1437[0] = v356;
      v360 = &v1436;
      v1436 = v357;
      v361 = &v1435;
      v1435 = v358;
      sub_1B0394A48(0, v1437);
      sub_1B0394A48(1, v359);
      v1433 = v1318;
      v1434 = v369;
      sub_1B03949FC(&v1433, v359, v360, v361);
      v362 = v350;
      if (v350)
      {

        __break(1u);
      }

      else
      {
        v1433 = v1319;
        v1434 = v370;
        sub_1B03949FC(&v1433, v1437, &v1436, &v1435);
        v353 = 0;
        v1433 = v1320;
        v1434 = v372;
        sub_1B03949FC(&v1433, v1437, &v1436, &v1435);
        _os_log_impl(&dword_1B0389000, v375, v376, "“Reply workaround” did not find any user-initiated requests matching UID %u.", v356, 8u);
        v352 = 0;
        sub_1B03998A8(v357, 0, v354);
        sub_1B03998A8(v358, v352, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v375);
    (*(v1383 + 8))(v1386, v1382);
  }

  else
  {
    v1313 = *(v1314 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    sub_1B0798550(v1313, v1397, v1392);

    v20 = type metadata accessor for InProgressMessageDownload.EMLX(0);
    if ((*(*(v20 - 8) + 48))(v1392, 1) == 1)
    {
      sub_1B07AF3D4(v1392);
      (*(v1401 + 56))(v1395, 1, 1, v1399);
    }

    else
    {
      (*(v1401 + 16))(v1395, v1392, v1399);
      sub_1B07AF320(v1392);
      (*(v1401 + 56))(v1395, 0, 1, v1399);
    }

    if ((*(v1401 + 48))(v1395, 1, v1399) == 1)
    {
      sub_1B075B1E0(v1395);
LABEL_21:
      (*(v1383 + 16))(v1388, v1397, v1382);
      v391 = 7;
      v388 = swift_allocObject();
      *(v388 + 16) = v1410;

      v390 = 32;
      v323 = swift_allocObject();
      v324 = v388;
      v392 = v323;
      *(v323 + 16) = v1368;
      *(v323 + 24) = v324;

      v400 = sub_1B0E43988();
      v401 = sub_1B0E458E8();
      v389 = 17;
      v394 = swift_allocObject();
      *(v394 + 16) = 0;
      v395 = swift_allocObject();
      *(v395 + 16) = 4;
      v325 = swift_allocObject();
      v326 = v392;
      v393 = v325;
      *(v325 + 16) = v1369;
      *(v325 + 24) = v326;
      v327 = swift_allocObject();
      v328 = v393;
      v397 = v327;
      *(v327 + 16) = v1370;
      *(v327 + 24) = v328;
      v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v396 = sub_1B0E46A48();
      v398 = v329;

      v330 = v394;
      v331 = v398;
      *v398 = v1371;
      v331[1] = v330;

      v332 = v395;
      v333 = v398;
      v398[2] = v1372;
      v333[3] = v332;

      v334 = v397;
      v335 = v398;
      v398[4] = v1373;
      v335[5] = v334;
      sub_1B0394964();

      if (os_log_type_enabled(v400, v401))
      {
        v336 = v1374;
        v381 = sub_1B0E45D78();
        v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v380 = 0;
        v382 = sub_1B03949A8(0, v379, v379);
        v383 = sub_1B03949A8(v380, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v384 = &v1432;
        v1432 = v381;
        v385 = &v1431;
        v1431 = v382;
        v386 = &v1430;
        v1430 = v383;
        sub_1B0394A48(0, &v1432);
        sub_1B0394A48(1, v384);
        v1428 = v1371;
        v1429 = v394;
        sub_1B03949FC(&v1428, v384, v385, v386);
        v387 = v336;
        if (v336)
        {

          __break(1u);
        }

        else
        {
          v1428 = v1372;
          v1429 = v395;
          sub_1B03949FC(&v1428, &v1432, &v1431, &v1430);
          v378 = 0;
          v1428 = v1373;
          v1429 = v397;
          sub_1B03949FC(&v1428, &v1432, &v1431, &v1430);
          _os_log_impl(&dword_1B0389000, v400, v401, "Unable to assemble EMLX for “reply workaround” for UID %u.", v381, 8u);
          v377 = 0;
          sub_1B03998A8(v382, 0, v379);
          sub_1B03998A8(v383, v377, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v400);
      (*(v1383 + 8))(v1388, v1382);
    }

    v21 = v1405;
    v1305 = *(v1401 + 32);
    v1306 = v1401 + 32;
    v1305(v1407, v1395, v1399);
    v1307 = *(v1401 + 16);
    v1308 = v1401 + 16;
    v1307(v21, v1407, v1399);
    v1309 = sub_1B0E44338();
    v1312 = NWCreateNSDataFromDispatchData();
    MEMORY[0x1E69E5920](v1309);
    v1310 = *(v1401 + 8);
    v1311 = v1401 + 8;
    v1310(v1405, v1399);
    if (v1312)
    {
      v1304 = v1312;
      v1299 = v1312;
      v1300 = sub_1B0E42F38();
      v1301 = v22;
      MEMORY[0x1E69E5920](v1299);
      v1302 = v1300;
      v1303 = v1301;
    }

    else
    {
      v1302 = 0;
      v1303 = 0xF000000000000000;
    }

    v1297 = v1303;
    v1298 = v1302;
    if ((v1303 & 0xF000000000000000) == 0xF000000000000000)
    {
      v1310(v1407, v1399);
      goto LABEL_21;
    }

    v1295 = v1298;
    v1296 = v1297;
    v1291 = v1297;
    v1292 = v1298;
    v1426 = v1298;
    v1427 = v1297;
    sub_1B03B2000(v1298, v1297);
    v1293 = sub_1B0E42F18();
    v1425 = v1293;
    sub_1B0391D50(v1292, v1291);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1423[9] = v1412;
    sub_1B0E45798();
    for (i = v1374; ; i = v404)
    {
      v1287 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
      v1288 = &v1421;
      sub_1B0E46518();
      v1289 = v1422;
      v1290 = 72;
      memcpy(v1422, v1288, sizeof(v1422));
      memcpy(v1423, v1422, 0x48uLL);
      if (!v1423[3])
      {
        break;
      }

      v1228 = v1423;
      v1229 = __dst;
      v1230 = 72;
      memcpy(__dst, v1423, 0x48uLL);
      (*(v1383 + 16))(v1390, v1397, v1382);
      sub_1B074B69C(v1397, v1381);
      sub_1B074B69C(v1381, v1379);
      sub_1B074E41C(v1381, v1377);
      v23 = (v1379 + *(v1375 + 20));
      v1224 = *v23;
      v1225 = *(v23 + 1);
      v1226 = *(v23 + 1);
      v1227 = *(v23 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1379);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1223 = 36;
      v1252 = 7;
      v24 = swift_allocObject();
      v25 = v1225;
      v26 = v1226;
      v27 = v1227;
      v1235 = v24;
      *(v24 + 16) = v1224;
      *(v24 + 20) = v25;
      *(v24 + 24) = v26;
      *(v24 + 32) = v27;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = swift_allocObject();
      v29 = v1225;
      v30 = v1226;
      v31 = v1227;
      v1222 = v28;
      *(v28 + 16) = v1224;
      *(v28 + 20) = v29;
      *(v28 + 24) = v30;
      *(v28 + 32) = v31;

      v1251 = 32;
      v32 = swift_allocObject();
      v33 = v1222;
      v1239 = v32;
      *(v32 + 16) = v1321;
      *(v32 + 24) = v33;
      sub_1B0394868();
      sub_1B0394868();

      v34 = swift_allocObject();
      v35 = v1225;
      v36 = v1226;
      v37 = v1227;
      v38 = v34;
      v39 = v1377;
      v1242 = v38;
      *(v38 + 16) = v1224;
      *(v38 + 20) = v35;
      *(v38 + 24) = v36;
      *(v38 + 32) = v37;
      sub_1B074B764(v39);
      sub_1B0990700(v1228, &v1420);
      v1231 = swift_allocObject();
      memcpy((v1231 + 16), v1229, v1230);

      v40 = swift_allocObject();
      v41 = v1231;
      v1244 = v40;
      *(v40 + 16) = v1322;
      *(v40 + 24) = v41;

      v1232 = swift_allocObject();
      *(v1232 + 16) = v1410;

      v42 = swift_allocObject();
      v43 = v1232;
      v1247 = v42;
      *(v42 + 16) = v1323;
      *(v42 + 24) = v43;

      v1307(v1405, v1407, v1399);
      v1233 = (*(v1402 + 80) + 16) & ~*(v1402 + 80);
      v1253 = swift_allocObject();
      v1305((v1253 + v1233), v1405, v1399);
      sub_1B07575C4();

      v1285 = sub_1B0E43988();
      v1286 = sub_1B0E45908();
      v1249 = 17;
      v1255 = swift_allocObject();
      v1237 = 16;
      *(v1255 + 16) = 16;
      v1256 = swift_allocObject();
      v1246 = 4;
      *(v1256 + 16) = 4;
      v44 = swift_allocObject();
      v1234 = v44;
      *(v44 + 16) = v1324;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v1234;
      v1257 = v45;
      *(v45 + 16) = v1325;
      *(v45 + 24) = v46;
      v1258 = swift_allocObject();
      *(v1258 + 16) = 0;
      v1259 = swift_allocObject();
      *(v1259 + 16) = 1;
      v47 = swift_allocObject();
      v48 = v1235;
      v1236 = v47;
      *(v47 + 16) = v1326;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v1236;
      v1260 = v49;
      *(v49 + 16) = v1327;
      *(v49 + 24) = v50;
      v1261 = swift_allocObject();
      *(v1261 + 16) = v1237;
      v1262 = swift_allocObject();
      *(v1262 + 16) = v1246;
      v51 = swift_allocObject();
      v1238 = v51;
      *(v51 + 16) = v1328;
      *(v51 + 24) = 0;
      v52 = swift_allocObject();
      v53 = v1238;
      v1263 = v52;
      *(v52 + 16) = v1329;
      *(v52 + 24) = v53;
      v1264 = swift_allocObject();
      *(v1264 + 16) = 0;
      v1265 = swift_allocObject();
      *(v1265 + 16) = v1246;
      v54 = swift_allocObject();
      v55 = v1239;
      v1240 = v54;
      *(v54 + 16) = v1330;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v1240;
      v1266 = v56;
      *(v56 + 16) = v1331;
      *(v56 + 24) = v57;
      v1267 = swift_allocObject();
      *(v1267 + 16) = 112;
      v1268 = swift_allocObject();
      v1250 = 8;
      *(v1268 + 16) = 8;
      v1241 = swift_allocObject();
      *(v1241 + 16) = 0x786F626C69616DLL;
      v58 = swift_allocObject();
      v59 = v1241;
      v1269 = v58;
      *(v58 + 16) = v1332;
      *(v58 + 24) = v59;
      v1270 = swift_allocObject();
      *(v1270 + 16) = 37;
      v1271 = swift_allocObject();
      *(v1271 + 16) = v1250;
      v60 = swift_allocObject();
      v61 = v1242;
      v1243 = v60;
      *(v60 + 16) = v1333;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v1243;
      v1272 = v62;
      *(v62 + 16) = v1334;
      *(v62 + 24) = v63;
      v1273 = swift_allocObject();
      *(v1273 + 16) = 2;
      v1274 = swift_allocObject();
      *(v1274 + 16) = v1246;
      v64 = swift_allocObject();
      v65 = v1244;
      v1245 = v64;
      *(v64 + 16) = v1335;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v1245;
      v1275 = v66;
      *(v66 + 16) = v1336;
      *(v66 + 24) = v67;
      v1276 = swift_allocObject();
      *(v1276 + 16) = 0;
      v1277 = swift_allocObject();
      *(v1277 + 16) = v1246;
      v68 = swift_allocObject();
      v69 = v1247;
      v1248 = v68;
      *(v68 + 16) = v1337;
      *(v68 + 24) = v69;
      v70 = swift_allocObject();
      v71 = v1248;
      v1278 = v70;
      *(v70 + 16) = v1338;
      *(v70 + 24) = v71;
      v1279 = swift_allocObject();
      *(v1279 + 16) = 0;
      v1280 = swift_allocObject();
      *(v1280 + 16) = v1250;
      v72 = swift_allocObject();
      v73 = v1253;
      v1254 = v72;
      *(v72 + 16) = v1339;
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v1254;
      v1282 = v74;
      *(v74 + 16) = v1340;
      *(v74 + 24) = v75;
      v1284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1281 = sub_1B0E46A48();
      v1283 = v76;

      v77 = v1255;
      v78 = v1283;
      *v1283 = v1341;
      v78[1] = v77;

      v79 = v1256;
      v80 = v1283;
      v1283[2] = v1342;
      v80[3] = v79;

      v81 = v1257;
      v82 = v1283;
      v1283[4] = v1343;
      v82[5] = v81;

      v83 = v1258;
      v84 = v1283;
      v1283[6] = v1344;
      v84[7] = v83;

      v85 = v1259;
      v86 = v1283;
      v1283[8] = v1345;
      v86[9] = v85;

      v87 = v1260;
      v88 = v1283;
      v1283[10] = v1346;
      v88[11] = v87;

      v89 = v1261;
      v90 = v1283;
      v1283[12] = v1347;
      v90[13] = v89;

      v91 = v1262;
      v92 = v1283;
      v1283[14] = v1348;
      v92[15] = v91;

      v93 = v1263;
      v94 = v1283;
      v1283[16] = v1349;
      v94[17] = v93;

      v95 = v1264;
      v96 = v1283;
      v1283[18] = v1350;
      v96[19] = v95;

      v97 = v1265;
      v98 = v1283;
      v1283[20] = v1351;
      v98[21] = v97;

      v99 = v1266;
      v100 = v1283;
      v1283[22] = v1352;
      v100[23] = v99;

      v101 = v1267;
      v102 = v1283;
      v1283[24] = v1353;
      v102[25] = v101;

      v103 = v1268;
      v104 = v1283;
      v1283[26] = v1354;
      v104[27] = v103;

      v105 = v1269;
      v106 = v1283;
      v1283[28] = v1355;
      v106[29] = v105;

      v107 = v1270;
      v108 = v1283;
      v1283[30] = v1356;
      v108[31] = v107;

      v109 = v1271;
      v110 = v1283;
      v1283[32] = v1357;
      v110[33] = v109;

      v111 = v1272;
      v112 = v1283;
      v1283[34] = v1358;
      v112[35] = v111;

      v113 = v1273;
      v114 = v1283;
      v1283[36] = v1359;
      v114[37] = v113;

      v115 = v1274;
      v116 = v1283;
      v1283[38] = v1360;
      v116[39] = v115;

      v117 = v1275;
      v118 = v1283;
      v1283[40] = v1361;
      v118[41] = v117;

      v119 = v1276;
      v120 = v1283;
      v1283[42] = v1362;
      v120[43] = v119;

      v121 = v1277;
      v122 = v1283;
      v1283[44] = v1363;
      v122[45] = v121;

      v123 = v1278;
      v124 = v1283;
      v1283[46] = v1364;
      v124[47] = v123;

      v125 = v1279;
      v126 = v1283;
      v1283[48] = v1365;
      v126[49] = v125;

      v127 = v1280;
      v128 = v1283;
      v1283[50] = v1366;
      v128[51] = v127;

      v129 = v1282;
      v130 = v1283;
      v1283[52] = v1367;
      v130[53] = v129;
      sub_1B0394964();

      if (os_log_type_enabled(v1285, v1286))
      {
        v131 = v1262;
        v132 = v1261;
        v133 = v1260;
        v134 = v1259;
        v135 = v1258;
        v136 = v1257;
        v137 = v1256;
        v138 = v1287;
        v1188 = sub_1B0E45D78();
        v1187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1189 = sub_1B03949A8(0, v1187, v1187);
        v1190 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v1191 = &v1419;
        v1419 = v1188;
        v1192 = &v1418;
        v1418 = v1189;
        v1193 = &v1417;
        v1417 = v1190;
        sub_1B0394A48(3, &v1419);
        sub_1B0394A48(9, v1191);
        v1415 = v1341;
        v1416 = v1255;
        sub_1B03949FC(&v1415, v1191, v1192, v1193);
        v1194 = v138;
        v1195 = v1255;
        v1196 = v137;
        v1197 = v136;
        v1198 = v135;
        v1199 = v134;
        v1200 = v133;
        v1201 = v132;
        v1202 = v131;
        v1203 = v1263;
        v1204 = v1264;
        v1205 = v1265;
        v1206 = v1266;
        v1207 = v1267;
        v1208 = v1268;
        v1209 = v1269;
        v1210 = v1270;
        v1211 = v1271;
        v1212 = v1272;
        v1213 = v1273;
        v1214 = v1274;
        v1215 = v1275;
        v1216 = v1276;
        v1217 = v1277;
        v1218 = v1278;
        v1219 = v1279;
        v1220 = v1280;
        v1221 = v1282;
        if (v138)
        {
          v1159 = v1195;
          v1160 = v1196;
          v1161 = v1197;
          v1162 = v1198;
          v1163 = v1199;
          v1164 = v1200;
          v1165 = v1201;
          v1166 = v1202;
          v1167 = v1203;
          v1168 = v1204;
          v1169 = v1205;
          v1170 = v1206;
          v1171 = v1207;
          v1172 = v1208;
          v1173 = v1209;
          v1174 = v1210;
          v1175 = v1211;
          v1176 = v1212;
          v1177 = v1213;
          v1178 = v1214;
          v1179 = v1215;
          v1180 = v1216;
          v1181 = v1217;
          v1182 = v1218;
          v1183 = v1219;
          v1184 = v1220;
          v1185 = v1221;
          v430 = v1221;
          v429 = v1220;
          v428 = v1219;
          v427 = v1218;
          v426 = v1217;
          v425 = v1216;
          v424 = v1215;
          v423 = v1214;
          v422 = v1213;
          v421 = v1212;
          v420 = v1211;
          v419 = v1210;
          v418 = v1209;
          v417 = v1208;
          v416 = v1207;
          v415 = v1206;
          v414 = v1205;
          v413 = v1204;
          v412 = v1203;
          v411 = v1202;
          v410 = v1201;
          v409 = v1200;
          v408 = v1199;
          v407 = v1198;
          v406 = v1197;
          v405 = v1196;

          __break(1u);
        }

        else
        {
          v140 = v1262;
          v141 = v1261;
          v142 = v1260;
          v143 = v1259;
          v144 = v1258;
          v145 = v1257;
          v146 = v1256;
          v1415 = v1342;
          v1416 = v1256;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v1131 = 0;
          v1132 = v1255;
          v1133 = v146;
          v1134 = v145;
          v1135 = v144;
          v1136 = v143;
          v1137 = v142;
          v1138 = v141;
          v1139 = v140;
          v1140 = v1263;
          v1141 = v1264;
          v1142 = v1265;
          v1143 = v1266;
          v1144 = v1267;
          v1145 = v1268;
          v1146 = v1269;
          v1147 = v1270;
          v1148 = v1271;
          v1149 = v1272;
          v1150 = v1273;
          v1151 = v1274;
          v1152 = v1275;
          v1153 = v1276;
          v1154 = v1277;
          v1155 = v1278;
          v1156 = v1279;
          v1157 = v1280;
          v1158 = v1282;
          v147 = v1262;
          v148 = v1261;
          v149 = v1260;
          v150 = v1259;
          v151 = v1258;
          v152 = v1257;
          v153 = v1256;
          v1415 = v1343;
          v1416 = v1257;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v1103 = 0;
          v1104 = v1255;
          v1105 = v153;
          v1106 = v152;
          v1107 = v151;
          v1108 = v150;
          v1109 = v149;
          v1110 = v148;
          v1111 = v147;
          v1112 = v1263;
          v1113 = v1264;
          v1114 = v1265;
          v1115 = v1266;
          v1116 = v1267;
          v1117 = v1268;
          v1118 = v1269;
          v1119 = v1270;
          v1120 = v1271;
          v1121 = v1272;
          v1122 = v1273;
          v1123 = v1274;
          v1124 = v1275;
          v1125 = v1276;
          v1126 = v1277;
          v1127 = v1278;
          v1128 = v1279;
          v1129 = v1280;
          v1130 = v1282;
          v154 = v1262;
          v155 = v1261;
          v156 = v1260;
          v157 = v1259;
          v158 = v1258;
          v159 = v1257;
          v160 = v1256;
          v1415 = v1344;
          v1416 = v1258;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v1075 = 0;
          v1076 = v1255;
          v1077 = v160;
          v1078 = v159;
          v1079 = v158;
          v1080 = v157;
          v1081 = v156;
          v1082 = v155;
          v1083 = v154;
          v1084 = v1263;
          v1085 = v1264;
          v1086 = v1265;
          v1087 = v1266;
          v1088 = v1267;
          v1089 = v1268;
          v1090 = v1269;
          v1091 = v1270;
          v1092 = v1271;
          v1093 = v1272;
          v1094 = v1273;
          v1095 = v1274;
          v1096 = v1275;
          v1097 = v1276;
          v1098 = v1277;
          v1099 = v1278;
          v1100 = v1279;
          v1101 = v1280;
          v1102 = v1282;
          v161 = v1262;
          v162 = v1261;
          v163 = v1260;
          v164 = v1259;
          v165 = v1258;
          v166 = v1257;
          v167 = v1256;
          v1415 = v1345;
          v1416 = v1259;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v1047 = 0;
          v1048 = v1255;
          v1049 = v167;
          v1050 = v166;
          v1051 = v165;
          v1052 = v164;
          v1053 = v163;
          v1054 = v162;
          v1055 = v161;
          v1056 = v1263;
          v1057 = v1264;
          v1058 = v1265;
          v1059 = v1266;
          v1060 = v1267;
          v1061 = v1268;
          v1062 = v1269;
          v1063 = v1270;
          v1064 = v1271;
          v1065 = v1272;
          v1066 = v1273;
          v1067 = v1274;
          v1068 = v1275;
          v1069 = v1276;
          v1070 = v1277;
          v1071 = v1278;
          v1072 = v1279;
          v1073 = v1280;
          v1074 = v1282;
          v168 = v1262;
          v169 = v1261;
          v170 = v1260;
          v171 = v1259;
          v172 = v1258;
          v173 = v1257;
          v174 = v1256;
          v1415 = v1346;
          v1416 = v1260;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v1019 = 0;
          v1020 = v1255;
          v1021 = v174;
          v1022 = v173;
          v1023 = v172;
          v1024 = v171;
          v1025 = v170;
          v1026 = v169;
          v1027 = v168;
          v1028 = v1263;
          v1029 = v1264;
          v1030 = v1265;
          v1031 = v1266;
          v1032 = v1267;
          v1033 = v1268;
          v1034 = v1269;
          v1035 = v1270;
          v1036 = v1271;
          v1037 = v1272;
          v1038 = v1273;
          v1039 = v1274;
          v1040 = v1275;
          v1041 = v1276;
          v1042 = v1277;
          v1043 = v1278;
          v1044 = v1279;
          v1045 = v1280;
          v1046 = v1282;
          v175 = v1262;
          v176 = v1261;
          v177 = v1260;
          v178 = v1259;
          v179 = v1258;
          v180 = v1257;
          v181 = v1256;
          v1415 = v1347;
          v1416 = v1261;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v991 = 0;
          v992 = v1255;
          v993 = v181;
          v994 = v180;
          v995 = v179;
          v996 = v178;
          v997 = v177;
          v998 = v176;
          v999 = v175;
          v1000 = v1263;
          v1001 = v1264;
          v1002 = v1265;
          v1003 = v1266;
          v1004 = v1267;
          v1005 = v1268;
          v1006 = v1269;
          v1007 = v1270;
          v1008 = v1271;
          v1009 = v1272;
          v1010 = v1273;
          v1011 = v1274;
          v1012 = v1275;
          v1013 = v1276;
          v1014 = v1277;
          v1015 = v1278;
          v1016 = v1279;
          v1017 = v1280;
          v1018 = v1282;
          v182 = v1262;
          v183 = v1261;
          v184 = v1260;
          v185 = v1259;
          v186 = v1258;
          v187 = v1257;
          v188 = v1256;
          v1415 = v1348;
          v1416 = v1262;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v963 = 0;
          v964 = v1255;
          v965 = v188;
          v966 = v187;
          v967 = v186;
          v968 = v185;
          v969 = v184;
          v970 = v183;
          v971 = v182;
          v972 = v1263;
          v973 = v1264;
          v974 = v1265;
          v975 = v1266;
          v976 = v1267;
          v977 = v1268;
          v978 = v1269;
          v979 = v1270;
          v980 = v1271;
          v981 = v1272;
          v982 = v1273;
          v983 = v1274;
          v984 = v1275;
          v985 = v1276;
          v986 = v1277;
          v987 = v1278;
          v988 = v1279;
          v989 = v1280;
          v990 = v1282;
          v189 = v1262;
          v190 = v1261;
          v191 = v1260;
          v192 = v1259;
          v193 = v1258;
          v194 = v1257;
          v195 = v1256;
          v1415 = v1349;
          v1416 = v1263;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v935 = 0;
          v936 = v1255;
          v937 = v195;
          v938 = v194;
          v939 = v193;
          v940 = v192;
          v941 = v191;
          v942 = v190;
          v943 = v189;
          v944 = v1263;
          v945 = v1264;
          v946 = v1265;
          v947 = v1266;
          v948 = v1267;
          v949 = v1268;
          v950 = v1269;
          v951 = v1270;
          v952 = v1271;
          v953 = v1272;
          v954 = v1273;
          v955 = v1274;
          v956 = v1275;
          v957 = v1276;
          v958 = v1277;
          v959 = v1278;
          v960 = v1279;
          v961 = v1280;
          v962 = v1282;
          v196 = v1262;
          v197 = v1261;
          v198 = v1260;
          v199 = v1259;
          v200 = v1258;
          v201 = v1257;
          v202 = v1256;
          v1415 = v1350;
          v1416 = v1264;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v907 = 0;
          v908 = v1255;
          v909 = v202;
          v910 = v201;
          v911 = v200;
          v912 = v199;
          v913 = v198;
          v914 = v197;
          v915 = v196;
          v916 = v1263;
          v917 = v1264;
          v918 = v1265;
          v919 = v1266;
          v920 = v1267;
          v921 = v1268;
          v922 = v1269;
          v923 = v1270;
          v924 = v1271;
          v925 = v1272;
          v926 = v1273;
          v927 = v1274;
          v928 = v1275;
          v929 = v1276;
          v930 = v1277;
          v931 = v1278;
          v932 = v1279;
          v933 = v1280;
          v934 = v1282;
          v203 = v1262;
          v204 = v1261;
          v205 = v1260;
          v206 = v1259;
          v207 = v1258;
          v208 = v1257;
          v209 = v1256;
          v1415 = v1351;
          v1416 = v1265;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v879 = 0;
          v880 = v1255;
          v881 = v209;
          v882 = v208;
          v883 = v207;
          v884 = v206;
          v885 = v205;
          v886 = v204;
          v887 = v203;
          v888 = v1263;
          v889 = v1264;
          v890 = v1265;
          v891 = v1266;
          v892 = v1267;
          v893 = v1268;
          v894 = v1269;
          v895 = v1270;
          v896 = v1271;
          v897 = v1272;
          v898 = v1273;
          v899 = v1274;
          v900 = v1275;
          v901 = v1276;
          v902 = v1277;
          v903 = v1278;
          v904 = v1279;
          v905 = v1280;
          v906 = v1282;
          v210 = v1262;
          v211 = v1261;
          v212 = v1260;
          v213 = v1259;
          v214 = v1258;
          v215 = v1257;
          v216 = v1256;
          v1415 = v1352;
          v1416 = v1266;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v851 = 0;
          v852 = v1255;
          v853 = v216;
          v854 = v215;
          v855 = v214;
          v856 = v213;
          v857 = v212;
          v858 = v211;
          v859 = v210;
          v860 = v1263;
          v861 = v1264;
          v862 = v1265;
          v863 = v1266;
          v864 = v1267;
          v865 = v1268;
          v866 = v1269;
          v867 = v1270;
          v868 = v1271;
          v869 = v1272;
          v870 = v1273;
          v871 = v1274;
          v872 = v1275;
          v873 = v1276;
          v874 = v1277;
          v875 = v1278;
          v876 = v1279;
          v877 = v1280;
          v878 = v1282;
          v217 = v1262;
          v218 = v1261;
          v219 = v1260;
          v220 = v1259;
          v221 = v1258;
          v222 = v1257;
          v223 = v1256;
          v1415 = v1353;
          v1416 = v1267;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v823 = 0;
          v824 = v1255;
          v825 = v223;
          v826 = v222;
          v827 = v221;
          v828 = v220;
          v829 = v219;
          v830 = v218;
          v831 = v217;
          v832 = v1263;
          v833 = v1264;
          v834 = v1265;
          v835 = v1266;
          v836 = v1267;
          v837 = v1268;
          v838 = v1269;
          v839 = v1270;
          v840 = v1271;
          v841 = v1272;
          v842 = v1273;
          v843 = v1274;
          v844 = v1275;
          v845 = v1276;
          v846 = v1277;
          v847 = v1278;
          v848 = v1279;
          v849 = v1280;
          v850 = v1282;
          v224 = v1262;
          v225 = v1261;
          v226 = v1260;
          v227 = v1259;
          v228 = v1258;
          v229 = v1257;
          v230 = v1256;
          v1415 = v1354;
          v1416 = v1268;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v795 = 0;
          v796 = v1255;
          v797 = v230;
          v798 = v229;
          v799 = v228;
          v800 = v227;
          v801 = v226;
          v802 = v225;
          v803 = v224;
          v804 = v1263;
          v805 = v1264;
          v806 = v1265;
          v807 = v1266;
          v808 = v1267;
          v809 = v1268;
          v810 = v1269;
          v811 = v1270;
          v812 = v1271;
          v813 = v1272;
          v814 = v1273;
          v815 = v1274;
          v816 = v1275;
          v817 = v1276;
          v818 = v1277;
          v819 = v1278;
          v820 = v1279;
          v821 = v1280;
          v822 = v1282;
          v231 = v1262;
          v232 = v1261;
          v233 = v1260;
          v234 = v1259;
          v235 = v1258;
          v236 = v1257;
          v237 = v1256;
          v1415 = v1355;
          v1416 = v1269;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v767 = 0;
          v768 = v1255;
          v769 = v237;
          v770 = v236;
          v771 = v235;
          v772 = v234;
          v773 = v233;
          v774 = v232;
          v775 = v231;
          v776 = v1263;
          v777 = v1264;
          v778 = v1265;
          v779 = v1266;
          v780 = v1267;
          v781 = v1268;
          v782 = v1269;
          v783 = v1270;
          v784 = v1271;
          v785 = v1272;
          v786 = v1273;
          v787 = v1274;
          v788 = v1275;
          v789 = v1276;
          v790 = v1277;
          v791 = v1278;
          v792 = v1279;
          v793 = v1280;
          v794 = v1282;
          v238 = v1262;
          v239 = v1261;
          v240 = v1260;
          v241 = v1259;
          v242 = v1258;
          v243 = v1257;
          v244 = v1256;
          v1415 = v1356;
          v1416 = v1270;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v739 = 0;
          v740 = v1255;
          v741 = v244;
          v742 = v243;
          v743 = v242;
          v744 = v241;
          v745 = v240;
          v746 = v239;
          v747 = v238;
          v748 = v1263;
          v749 = v1264;
          v750 = v1265;
          v751 = v1266;
          v752 = v1267;
          v753 = v1268;
          v754 = v1269;
          v755 = v1270;
          v756 = v1271;
          v757 = v1272;
          v758 = v1273;
          v759 = v1274;
          v760 = v1275;
          v761 = v1276;
          v762 = v1277;
          v763 = v1278;
          v764 = v1279;
          v765 = v1280;
          v766 = v1282;
          v245 = v1262;
          v246 = v1261;
          v247 = v1260;
          v248 = v1259;
          v249 = v1258;
          v250 = v1257;
          v251 = v1256;
          v1415 = v1357;
          v1416 = v1271;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v711 = 0;
          v712 = v1255;
          v713 = v251;
          v714 = v250;
          v715 = v249;
          v716 = v248;
          v717 = v247;
          v718 = v246;
          v719 = v245;
          v720 = v1263;
          v721 = v1264;
          v722 = v1265;
          v723 = v1266;
          v724 = v1267;
          v725 = v1268;
          v726 = v1269;
          v727 = v1270;
          v728 = v1271;
          v729 = v1272;
          v730 = v1273;
          v731 = v1274;
          v732 = v1275;
          v733 = v1276;
          v734 = v1277;
          v735 = v1278;
          v736 = v1279;
          v737 = v1280;
          v738 = v1282;
          v252 = v1262;
          v253 = v1261;
          v254 = v1260;
          v255 = v1259;
          v256 = v1258;
          v257 = v1257;
          v258 = v1256;
          v1415 = v1358;
          v1416 = v1272;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v683 = 0;
          v684 = v1255;
          v685 = v258;
          v686 = v257;
          v687 = v256;
          v688 = v255;
          v689 = v254;
          v690 = v253;
          v691 = v252;
          v692 = v1263;
          v693 = v1264;
          v694 = v1265;
          v695 = v1266;
          v696 = v1267;
          v697 = v1268;
          v698 = v1269;
          v699 = v1270;
          v700 = v1271;
          v701 = v1272;
          v702 = v1273;
          v703 = v1274;
          v704 = v1275;
          v705 = v1276;
          v706 = v1277;
          v707 = v1278;
          v708 = v1279;
          v709 = v1280;
          v710 = v1282;
          v259 = v1262;
          v260 = v1261;
          v261 = v1260;
          v262 = v1259;
          v263 = v1258;
          v264 = v1257;
          v265 = v1256;
          v1415 = v1359;
          v1416 = v1273;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v655 = 0;
          v656 = v1255;
          v657 = v265;
          v658 = v264;
          v659 = v263;
          v660 = v262;
          v661 = v261;
          v662 = v260;
          v663 = v259;
          v664 = v1263;
          v665 = v1264;
          v666 = v1265;
          v667 = v1266;
          v668 = v1267;
          v669 = v1268;
          v670 = v1269;
          v671 = v1270;
          v672 = v1271;
          v673 = v1272;
          v674 = v1273;
          v675 = v1274;
          v676 = v1275;
          v677 = v1276;
          v678 = v1277;
          v679 = v1278;
          v680 = v1279;
          v681 = v1280;
          v682 = v1282;
          v266 = v1262;
          v267 = v1261;
          v268 = v1260;
          v269 = v1259;
          v270 = v1258;
          v271 = v1257;
          v272 = v1256;
          v1415 = v1360;
          v1416 = v1274;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v627 = 0;
          v628 = v1255;
          v629 = v272;
          v630 = v271;
          v631 = v270;
          v632 = v269;
          v633 = v268;
          v634 = v267;
          v635 = v266;
          v636 = v1263;
          v637 = v1264;
          v638 = v1265;
          v639 = v1266;
          v640 = v1267;
          v641 = v1268;
          v642 = v1269;
          v643 = v1270;
          v644 = v1271;
          v645 = v1272;
          v646 = v1273;
          v647 = v1274;
          v648 = v1275;
          v649 = v1276;
          v650 = v1277;
          v651 = v1278;
          v652 = v1279;
          v653 = v1280;
          v654 = v1282;
          v273 = v1262;
          v274 = v1261;
          v275 = v1260;
          v276 = v1259;
          v277 = v1258;
          v278 = v1257;
          v279 = v1256;
          v1415 = v1361;
          v1416 = v1275;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v599 = 0;
          v600 = v1255;
          v601 = v279;
          v602 = v278;
          v603 = v277;
          v604 = v276;
          v605 = v275;
          v606 = v274;
          v607 = v273;
          v608 = v1263;
          v609 = v1264;
          v610 = v1265;
          v611 = v1266;
          v612 = v1267;
          v613 = v1268;
          v614 = v1269;
          v615 = v1270;
          v616 = v1271;
          v617 = v1272;
          v618 = v1273;
          v619 = v1274;
          v620 = v1275;
          v621 = v1276;
          v622 = v1277;
          v623 = v1278;
          v624 = v1279;
          v625 = v1280;
          v626 = v1282;
          v280 = v1262;
          v281 = v1261;
          v282 = v1260;
          v283 = v1259;
          v284 = v1258;
          v285 = v1257;
          v286 = v1256;
          v1415 = v1362;
          v1416 = v1276;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v571 = 0;
          v572 = v1255;
          v573 = v286;
          v574 = v285;
          v575 = v284;
          v576 = v283;
          v577 = v282;
          v578 = v281;
          v579 = v280;
          v580 = v1263;
          v581 = v1264;
          v582 = v1265;
          v583 = v1266;
          v584 = v1267;
          v585 = v1268;
          v586 = v1269;
          v587 = v1270;
          v588 = v1271;
          v589 = v1272;
          v590 = v1273;
          v591 = v1274;
          v592 = v1275;
          v593 = v1276;
          v594 = v1277;
          v595 = v1278;
          v596 = v1279;
          v597 = v1280;
          v598 = v1282;
          v287 = v1262;
          v288 = v1261;
          v289 = v1260;
          v290 = v1259;
          v291 = v1258;
          v292 = v1257;
          v293 = v1256;
          v1415 = v1363;
          v1416 = v1277;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v543 = 0;
          v544 = v1255;
          v545 = v293;
          v546 = v292;
          v547 = v291;
          v548 = v290;
          v549 = v289;
          v550 = v288;
          v551 = v287;
          v552 = v1263;
          v553 = v1264;
          v554 = v1265;
          v555 = v1266;
          v556 = v1267;
          v557 = v1268;
          v558 = v1269;
          v559 = v1270;
          v560 = v1271;
          v561 = v1272;
          v562 = v1273;
          v563 = v1274;
          v564 = v1275;
          v565 = v1276;
          v566 = v1277;
          v567 = v1278;
          v568 = v1279;
          v569 = v1280;
          v570 = v1282;
          v294 = v1262;
          v295 = v1261;
          v296 = v1260;
          v297 = v1259;
          v298 = v1258;
          v299 = v1257;
          v300 = v1256;
          v1415 = v1364;
          v1416 = v1278;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v515 = 0;
          v516 = v1255;
          v517 = v300;
          v518 = v299;
          v519 = v298;
          v520 = v297;
          v521 = v296;
          v522 = v295;
          v523 = v294;
          v524 = v1263;
          v525 = v1264;
          v526 = v1265;
          v527 = v1266;
          v528 = v1267;
          v529 = v1268;
          v530 = v1269;
          v531 = v1270;
          v532 = v1271;
          v533 = v1272;
          v534 = v1273;
          v535 = v1274;
          v536 = v1275;
          v537 = v1276;
          v538 = v1277;
          v539 = v1278;
          v540 = v1279;
          v541 = v1280;
          v542 = v1282;
          v301 = v1262;
          v302 = v1261;
          v303 = v1260;
          v304 = v1259;
          v305 = v1258;
          v306 = v1257;
          v307 = v1256;
          v1415 = v1365;
          v1416 = v1279;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v487 = 0;
          v488 = v1255;
          v489 = v307;
          v490 = v306;
          v491 = v305;
          v492 = v304;
          v493 = v303;
          v494 = v302;
          v495 = v301;
          v496 = v1263;
          v497 = v1264;
          v498 = v1265;
          v499 = v1266;
          v500 = v1267;
          v501 = v1268;
          v502 = v1269;
          v503 = v1270;
          v504 = v1271;
          v505 = v1272;
          v506 = v1273;
          v507 = v1274;
          v508 = v1275;
          v509 = v1276;
          v510 = v1277;
          v511 = v1278;
          v512 = v1279;
          v513 = v1280;
          v514 = v1282;
          v308 = v1262;
          v309 = v1261;
          v310 = v1260;
          v311 = v1259;
          v312 = v1258;
          v313 = v1257;
          v314 = v1256;
          v1415 = v1366;
          v1416 = v1280;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v459 = 0;
          v460 = v1255;
          v461 = v314;
          v462 = v313;
          v463 = v312;
          v464 = v311;
          v465 = v310;
          v466 = v309;
          v467 = v308;
          v468 = v1263;
          v469 = v1264;
          v470 = v1265;
          v471 = v1266;
          v472 = v1267;
          v473 = v1268;
          v474 = v1269;
          v475 = v1270;
          v476 = v1271;
          v477 = v1272;
          v478 = v1273;
          v479 = v1274;
          v480 = v1275;
          v481 = v1276;
          v482 = v1277;
          v483 = v1278;
          v484 = v1279;
          v485 = v1280;
          v486 = v1282;
          v315 = v1262;
          v316 = v1261;
          v317 = v1260;
          v318 = v1259;
          v319 = v1258;
          v320 = v1257;
          v321 = v1256;
          v1415 = v1367;
          v1416 = v1282;
          sub_1B03949FC(&v1415, &v1419, &v1418, &v1417);
          v431 = 0;
          v432 = v1255;
          v433 = v321;
          v434 = v320;
          v435 = v319;
          v436 = v318;
          v437 = v317;
          v438 = v316;
          v439 = v315;
          v440 = v1263;
          v441 = v1264;
          v442 = v1265;
          v443 = v1266;
          v444 = v1267;
          v445 = v1268;
          v446 = v1269;
          v447 = v1270;
          v448 = v1271;
          v449 = v1272;
          v450 = v1273;
          v451 = v1274;
          v452 = v1275;
          v453 = v1276;
          v454 = v1277;
          v455 = v1278;
          v456 = v1279;
          v457 = v1280;
          v458 = v1282;
          _os_log_impl(&dword_1B0389000, v1285, v1286, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completing “reply workaround” request %{public}u for UID %u (%{iec-bytes}ld).", v1188, 0x41u);
          sub_1B03998A8(v1189, 0, v1187);
          sub_1B03998A8(v1190, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v1186 = v431;
        }
      }

      else
      {
        v139 = v1287;

        v1186 = v139;
      }

      v404 = v1186;
      MEMORY[0x1E69E5920](v1285);
      (*(v1383 + 8))(v1390, v1382);
      v403 = v1423;
      v402 = v1423[8];
      MEMORY[0x1E69E5928](v1423[8]);
      [v402 finishWithResult_];
      MEMORY[0x1E69E5920](v402);
      sub_1B09907DC(v403);
    }

    sub_1B039E440(v1424);
    MEMORY[0x1E69E5920](v1293);
    sub_1B0391D50(v1292, v1291);
    v1310(v1407, v1399);
  }
}

void *sub_1B09408A4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v135 = a4;
  v146 = a3;
  v145 = a2;
  v144 = a1;
  v171 = 0;
  v136 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v134 = 0;
  v161 = 0;
  v160 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v137 = sub_1B0E439A8();
  v138 = *(v137 - 8);
  v139 = v138;
  v140 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v141 = &v42 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v5;
  v171 = v6;
  v169 = v7;
  v168 = v8;
  v167 = v4;
  v142 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  v143 = v166;
  swift_beginAccess();
  v147 = *v142;
  v148 = *(v142 + 8);
  v149 = *(v142 + 16);
  v150 = *(v142 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v151 = sub_1B0975B38(v144, v145, v146, v147, v148, v149, v150);

  if ((v151 & 1) == 0)
  {
    return v134;
  }

  v9 = v134;
  v130 = &v42;
  MEMORY[0x1EEE9AC00](&v42);
  v131 = &v42 - 4;
  *(&v42 - 4) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3300, &qword_1B0EA10F8);
  sub_1B09B21DC(v144, v145, sub_1B0990830, v131, v11, v162);
  v132 = v9;
  v133 = v9;
  if (v9)
  {
    v43 = 0;
    v44 = 0;

    v126 = v43;
    v127 = v43;
    v128 = 1;
    v129 = v44;
  }

  else
  {
    v126 = v162[0];
    v127 = v162[1];
    v128 = v162[2];
    v129 = 0;
  }

  v122 = v129;
  v125 = v128;
  v124 = v127;
  v123 = v126;
  sub_1B0820818(v126, v127, v128);
  v163 = v123;
  v164 = v124;
  v165 = v125;
  v161 = 0;
  sub_1B0820818(v123, v124, v125);
  if (v125 == 1)
  {
    v119 = 2;
  }

  else
  {
    v120 = v124;
    v121 = v125;
    v117 = v125;
    v118 = v124;
    sub_1B07F200C(v124);
    sub_1B07F2124(v118);

    v119 = v118;
  }

  v116 = v119;
  if (v119 == 2)
  {
    v114 = 0;
  }

  else
  {
    v115 = v116;
    v113 = v115;
    if (v115 >= 2)
    {
      v112 = v113;

      v12 = sub_1B0975E70(v144);
      v161 = v12 & 1;
      v114 = v12;
    }

    else
    {
      sub_1B07F2124(v113);
      v114 = 0;
    }
  }

  v111 = v114;
  v160 = 0;
  if (v125 == 1)
  {
    v107 = 0;
  }

  else
  {
    v108 = v123;
    v109 = v124;
    v110 = v125;
    v105 = v125;
    v104 = v124;
    v152 = v123;
    v153 = v124;
    v154 = v125;
    v106 = sub_1B097D874(v144);
    v160 = v106 & 1;
    sub_1B07F2124(v104);

    v107 = v106;
  }

  v103 = v107;
  if (v111)
  {
    v102 = 0;
  }

  else
  {
    v102 = v103 ^ 1;
  }

  if (v102)
  {
    (*(v139 + 16))(v141, v135, v137);
    v87 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v146;

    v82 = 32;
    v86 = 32;
    v13 = swift_allocObject();
    v14 = v71;
    v79 = v13;
    *(v13 + 16) = sub_1B03F7AE0;
    *(v13 + 24) = v14;

    v72 = v163;
    v73 = v164;
    v74 = v165;
    sub_1B0820818(v163, v164, v165);
    v15 = swift_allocObject();
    v16 = v73;
    v17 = v74;
    v88 = v15;
    v15[2] = v72;
    v15[3] = v16;
    v15[4] = v17;
    v101 = sub_1B0E43988();
    v75 = v101;
    v100 = sub_1B0E458E8();
    v76 = v100;
    v83 = 17;
    v91 = swift_allocObject();
    v77 = v91;
    *(v91 + 16) = 0;
    v92 = swift_allocObject();
    v78 = v92;
    *(v92 + 16) = 4;
    v18 = swift_allocObject();
    v19 = v79;
    v80 = v18;
    *(v18 + 16) = sub_1B07AB020;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v80;
    v93 = v20;
    v81 = v20;
    *(v20 + 16) = sub_1B039BC08;
    *(v20 + 24) = v21;
    v94 = swift_allocObject();
    v84 = v94;
    *(v94 + 16) = v82;
    v95 = swift_allocObject();
    v85 = v95;
    *(v95 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v88;
    v89 = v22;
    *(v22 + 16) = sub_1B09908C4;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v89;
    v98 = v24;
    v90 = v24;
    *(v24 + 16) = sub_1B039BCF8;
    *(v24 + 24) = v25;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v96 = sub_1B0E46A48();
    v97 = v26;

    v27 = v91;
    v28 = v97;
    *v97 = sub_1B0398F5C;
    v28[1] = v27;

    v29 = v92;
    v30 = v97;
    v97[2] = sub_1B0398F5C;
    v30[3] = v29;

    v31 = v93;
    v32 = v97;
    v97[4] = sub_1B03991EC;
    v32[5] = v31;

    v33 = v94;
    v34 = v97;
    v97[6] = sub_1B0398F5C;
    v34[7] = v33;

    v35 = v95;
    v36 = v97;
    v97[8] = sub_1B0398F5C;
    v36[9] = v35;

    v37 = v97;
    v38 = v98;
    v97[10] = sub_1B039BCEC;
    v37[11] = v38;
    sub_1B0394964();

    if (os_log_type_enabled(v101, v100))
    {
      v39 = v122;
      v64 = sub_1B0E45D78();
      v61 = v64;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v65 = sub_1B03949A8(0, v62, v62);
      v63 = v65;
      v66 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v159 = v64;
      v158 = v65;
      v157 = v66;
      v67 = 2;
      v68 = &v159;
      sub_1B0394A48(2, &v159);
      sub_1B0394A48(v67, v68);
      v155 = sub_1B0398F5C;
      v156 = v77;
      sub_1B03949FC(&v155, v68, &v158, &v157);
      v69 = v39;
      v70 = v39;
      if (v39)
      {
        v59 = 0;

        __break(1u);
      }

      else
      {
        v155 = sub_1B0398F5C;
        v156 = v78;
        sub_1B03949FC(&v155, &v159, &v158, &v157);
        v57 = 0;
        v58 = 0;
        v155 = sub_1B03991EC;
        v156 = v81;
        sub_1B03949FC(&v155, &v159, &v158, &v157);
        v55 = 0;
        v56 = 0;
        v155 = sub_1B0398F5C;
        v156 = v84;
        sub_1B03949FC(&v155, &v159, &v158, &v157);
        v53 = 0;
        v54 = 0;
        v155 = sub_1B0398F5C;
        v156 = v85;
        sub_1B03949FC(&v155, &v159, &v158, &v157);
        v51 = 0;
        v52 = 0;
        v155 = sub_1B039BCEC;
        v156 = v90;
        sub_1B03949FC(&v155, &v159, &v158, &v157);
        v49 = 0;
        v50 = 0;
        _os_log_impl(&dword_1B0389000, v75, v76, "Did not find any user-initiated requests matching UID %u. Missing parts: %s", v61, 0x12u);
        sub_1B03998A8(v63, 0, v62);
        sub_1B03998A8(v66, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v60 = v49;
      }
    }

    else
    {
      v40 = v122;

      v60 = v40;
    }

    v47 = v60;

    (*(v139 + 8))(v141, v137);
    v48 = v47;
  }

  else
  {
    v48 = v122;
  }

  v45 = v48;
  sub_1B0990858(&v163);
  return v45;
}

BOOL sub_1B0941AA0(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (a3)
  {
    return sub_1B0815120(a4);
  }

  else
  {
    return sub_1B08155A8(a4);
  }
}

uint64_t sub_1B0941B24(uint64_t a1, int a2, char a3, unsigned int a4, uint64_t a5)
{
  sub_1B0941C6C(a1, a2, a4);
  swift_beginAccess();

  swift_endAccess();
  sub_1B08BE008(a4, a1, a2);

  sub_1B09343F0(a1, a2, a4, a3 & 1, a5);
  swift_beginAccess();
  sub_1B0943D8C(a4, a1, a2, a5);
  return swift_endAccess();
}

void *sub_1B0941C6C(uint64_t a1, int a2, int a3)
{
  v253 = a3;
  v251 = a2;
  v250 = a1;
  v252 = 0;
  v270 = 0;
  v244 = 0;
  v269 = 0;
  v268 = 0;
  v267 = 0;
  v265 = 0;
  v239 = 0;
  v263 = 0;
  v240 = sub_1B0E439A8();
  v241 = *(v240 - 8);
  v242 = v241;
  MEMORY[0x1EEE9AC00](0);
  v243 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = _s6LoggerVMa(v5);
  v246 = *(*(v245 - 8) + 64);
  MEMORY[0x1EEE9AC00](v250);
  v248 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
  v247 = &v102 - v248;
  MEMORY[0x1EEE9AC00](v6);
  v249 = &v102 - v248;
  v269 = v7;
  v270 = v8;
  v268 = v9;
  v267 = v3;
  v254 = v266;
  swift_beginAccess();
  v256 = sub_1B09460C0(v250, v251, v252, v253);
  v255 = v256;
  swift_endAccess();
  v265 = v256;
  v264 = v256;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0990678();
  if (sub_1B0E45748())
  {

    return v239;
  }

  else
  {
    v10 = v238;
    v11 = v239;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v235 = &v102;
    MEMORY[0x1EEE9AC00](v250);
    v12 = v253;
    *(&v102 - 6) = v10;
    *(&v102 - 10) = v12;
    *(&v102 - 4) = v13;
    *(&v102 - 6) = v14;
    *(&v102 - 2) = v15;
    sub_1B09B21DC(v13, v14, sub_1B09908D4, (&v102 - 8), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    v236 = v11;
    v237 = v11;
    if (v11)
    {
      v17 = v243;
      v162 = v237;
      v177 = 0;
      v156 = 0;

      v18 = v162;
      v263 = v162;
      v157 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
      sub_1B0394784(v238 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v249);
      (*(v242 + 16))(v17, v249, v240);
      sub_1B039480C(v249);

      sub_1B0394784(v238 + *v157, v247);
      v19 = (v247 + *(v245 + 20));
      v158 = *v19;
      v159 = *(v19 + 1);
      sub_1B039480C(v247);

      v188 = 24;
      v202 = 7;
      v20 = swift_allocObject();
      v21 = v159;
      v171 = v20;
      *(v20 + 16) = v158;
      *(v20 + 20) = v21;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v22 = swift_allocObject();
      v23 = v159;
      v160 = v22;
      *(v22 + 16) = v158;
      *(v22 + 20) = v23;

      v201 = 32;
      v24 = swift_allocObject();
      v25 = v160;
      v184 = v24;
      *(v24 + 16) = sub_1B039BBE8;
      *(v24 + 24) = v25;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = swift_allocObject();
      v27 = v251;
      v161 = v26;
      *(v26 + 16) = v250;
      *(v26 + 24) = v27;

      v28 = swift_allocObject();
      v29 = v161;
      v194 = v28;
      *(v28 + 16) = sub_1B07C8FC0;
      *(v28 + 24) = v29;

      v30 = v162;
      v203 = swift_allocObject();
      *(v203 + 16) = v162;
      v231 = sub_1B0E43988();
      v163 = v231;
      v230 = sub_1B0E458E8();
      v164 = v230;
      v197 = 17;
      v206 = swift_allocObject();
      v165 = v206;
      v174 = 16;
      *(v206 + 16) = 16;
      v207 = swift_allocObject();
      v166 = v207;
      v182 = 4;
      *(v207 + 16) = 4;
      v31 = swift_allocObject();
      v32 = v177;
      v167 = v31;
      *(v31 + 16) = sub_1B0394C30;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v167;
      v208 = v33;
      v168 = v33;
      *(v33 + 16) = sub_1B0394C24;
      *(v33 + 24) = v34;
      v209 = swift_allocObject();
      v169 = v209;
      v180 = 0;
      *(v209 + 16) = 0;
      v210 = swift_allocObject();
      v170 = v210;
      *(v210 + 16) = 1;
      v35 = swift_allocObject();
      v36 = v171;
      v172 = v35;
      *(v35 + 16) = sub_1B039BA2C;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v172;
      v211 = v37;
      v173 = v37;
      *(v37 + 16) = sub_1B039BA88;
      *(v37 + 24) = v38;
      v212 = swift_allocObject();
      v175 = v212;
      *(v212 + 16) = v174;
      v213 = swift_allocObject();
      v176 = v213;
      *(v213 + 16) = v182;
      v39 = swift_allocObject();
      v40 = v177;
      v178 = v39;
      *(v39 + 16) = sub_1B039BB94;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v178;
      v214 = v41;
      v179 = v41;
      *(v41 + 16) = sub_1B0394C24;
      *(v41 + 24) = v42;
      v215 = swift_allocObject();
      v181 = v215;
      *(v215 + 16) = v180;
      v216 = swift_allocObject();
      v183 = v216;
      *(v216 + 16) = v182;
      v43 = swift_allocObject();
      v44 = v184;
      v185 = v43;
      *(v43 + 16) = sub_1B039BBA0;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v185;
      v217 = v45;
      v186 = v45;
      *(v45 + 16) = sub_1B039BC08;
      *(v45 + 24) = v46;
      v218 = swift_allocObject();
      v187 = v218;
      *(v218 + 16) = 112;
      v219 = swift_allocObject();
      v189 = v219;
      v199 = 8;
      *(v219 + 16) = 8;
      v190 = swift_allocObject();
      *(v190 + 16) = 0x786F626C69616DLL;
      v47 = swift_allocObject();
      v48 = v190;
      v220 = v47;
      v191 = v47;
      *(v47 + 16) = sub_1B06BA324;
      *(v47 + 24) = v48;
      v221 = swift_allocObject();
      v192 = v221;
      *(v221 + 16) = 37;
      v222 = swift_allocObject();
      v193 = v222;
      *(v222 + 16) = v199;
      v49 = swift_allocObject();
      v50 = v194;
      v195 = v49;
      *(v49 + 16) = sub_1B06E395C;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v195;
      v223 = v51;
      v196 = v51;
      *(v51 + 16) = sub_1B039BCF8;
      *(v51 + 24) = v52;
      v224 = swift_allocObject();
      v198 = v224;
      *(v224 + 16) = 64;
      v225 = swift_allocObject();
      v200 = v225;
      *(v225 + 16) = v199;
      v53 = swift_allocObject();
      v54 = v203;
      v204 = v53;
      *(v53 + 16) = sub_1B07135E4;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v204;
      v228 = v55;
      v205 = v55;
      *(v55 + 16) = sub_1B070B324;
      *(v55 + 24) = v56;
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v226 = sub_1B0E46A48();
      v227 = v57;

      v58 = v206;
      v59 = v227;
      *v227 = sub_1B0398F5C;
      v59[1] = v58;

      v60 = v207;
      v61 = v227;
      v227[2] = sub_1B0398F5C;
      v61[3] = v60;

      v62 = v208;
      v63 = v227;
      v227[4] = sub_1B0399178;
      v63[5] = v62;

      v64 = v209;
      v65 = v227;
      v227[6] = sub_1B0398F5C;
      v65[7] = v64;

      v66 = v210;
      v67 = v227;
      v227[8] = sub_1B0398F5C;
      v67[9] = v66;

      v68 = v211;
      v69 = v227;
      v227[10] = sub_1B039BA94;
      v69[11] = v68;

      v70 = v212;
      v71 = v227;
      v227[12] = sub_1B0398F5C;
      v71[13] = v70;

      v72 = v213;
      v73 = v227;
      v227[14] = sub_1B0398F5C;
      v73[15] = v72;

      v74 = v214;
      v75 = v227;
      v227[16] = sub_1B0399178;
      v75[17] = v74;

      v76 = v215;
      v77 = v227;
      v227[18] = sub_1B0398F5C;
      v77[19] = v76;

      v78 = v216;
      v79 = v227;
      v227[20] = sub_1B0398F5C;
      v79[21] = v78;

      v80 = v217;
      v81 = v227;
      v227[22] = sub_1B03991EC;
      v81[23] = v80;

      v82 = v218;
      v83 = v227;
      v227[24] = sub_1B0398F5C;
      v83[25] = v82;

      v84 = v219;
      v85 = v227;
      v227[26] = sub_1B0398F5C;
      v85[27] = v84;

      v86 = v220;
      v87 = v227;
      v227[28] = sub_1B03993BC;
      v87[29] = v86;

      v88 = v221;
      v89 = v227;
      v227[30] = sub_1B0398F5C;
      v89[31] = v88;

      v90 = v222;
      v91 = v227;
      v227[32] = sub_1B0398F5C;
      v91[33] = v90;

      v92 = v223;
      v93 = v227;
      v227[34] = sub_1B039BCEC;
      v93[35] = v92;

      v94 = v224;
      v95 = v227;
      v227[36] = sub_1B0398F5C;
      v95[37] = v94;

      v96 = v225;
      v97 = v227;
      v227[38] = sub_1B0398F5C;
      v97[39] = v96;

      v98 = v227;
      v99 = v228;
      v227[40] = sub_1B070B4B4;
      v98[41] = v99;
      sub_1B0394964();

      if (os_log_type_enabled(v231, v230))
      {
        v100 = v156;
        v150 = sub_1B0E45D78();
        v146 = v150;
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v148 = 1;
        v151 = sub_1B03949A8(1, v147, v147);
        v149 = v151;
        v152 = sub_1B03949A8(v148, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v262 = v150;
        v261 = v151;
        v260 = v152;
        v153 = &v262;
        sub_1B0394A48(3, &v262);
        sub_1B0394A48(7, v153);
        v258 = sub_1B0398F5C;
        v259 = v165;
        sub_1B03949FC(&v258, v153, &v261, &v260);
        v154 = v100;
        v155 = v100;
        if (v100)
        {
          v144 = 0;

          __break(1u);
        }

        else
        {
          v258 = sub_1B0398F5C;
          v259 = v166;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v142 = 0;
          v143 = 0;
          v258 = sub_1B0399178;
          v259 = v168;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v140 = 0;
          v141 = 0;
          v258 = sub_1B0398F5C;
          v259 = v169;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v138 = 0;
          v139 = 0;
          v258 = sub_1B0398F5C;
          v259 = v170;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v136 = 0;
          v137 = 0;
          v258 = sub_1B039BA94;
          v259 = v173;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v134 = 0;
          v135 = 0;
          v258 = sub_1B0398F5C;
          v259 = v175;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v132 = 0;
          v133 = 0;
          v258 = sub_1B0398F5C;
          v259 = v176;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v130 = 0;
          v131 = 0;
          v258 = sub_1B0399178;
          v259 = v179;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v128 = 0;
          v129 = 0;
          v258 = sub_1B0398F5C;
          v259 = v181;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v126 = 0;
          v127 = 0;
          v258 = sub_1B0398F5C;
          v259 = v183;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v124 = 0;
          v125 = 0;
          v258 = sub_1B03991EC;
          v259 = v186;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v122 = 0;
          v123 = 0;
          v258 = sub_1B0398F5C;
          v259 = v187;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v120 = 0;
          v121 = 0;
          v258 = sub_1B0398F5C;
          v259 = v189;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v118 = 0;
          v119 = 0;
          v258 = sub_1B03993BC;
          v259 = v191;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v116 = 0;
          v117 = 0;
          v258 = sub_1B0398F5C;
          v259 = v192;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v114 = 0;
          v115 = 0;
          v258 = sub_1B0398F5C;
          v259 = v193;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v112 = 0;
          v113 = 0;
          v258 = sub_1B039BCEC;
          v259 = v196;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v110 = 0;
          v111 = 0;
          v258 = sub_1B0398F5C;
          v259 = v198;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v108 = 0;
          v109 = 0;
          v258 = sub_1B0398F5C;
          v259 = v200;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v106 = 0;
          v107 = 0;
          v258 = sub_1B070B4B4;
          v259 = v205;
          sub_1B03949FC(&v258, &v262, &v261, &v260);
          v104 = 0;
          v105 = 0;
          _os_log_impl(&dword_1B0389000, v163, v164, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to complete cross-account transfer downloads: %@", v146, 0x35u);
          v103 = 1;
          sub_1B03998A8(v149, 1, v147);
          sub_1B03998A8(v152, v103, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v145 = v104;
        }
      }

      else
      {
        v101 = v156;

        v145 = v101;
      }

      v102 = v145;

      (*(v242 + 8))(v243, v240);
      v234 = v102;
    }

    else
    {

      v234 = v236;
    }

    v232 = v234;

    return v232;
  }
}

uint64_t sub_1B0943D8C(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v419 = &v455;
  v423 = a4;
  v422 = a3;
  v425 = a2;
  v424 = a1;
  v492 = 0;
  v491 = 0;
  v421 = 0;
  v490 = 0;
  v489 = 0;
  v488 = 0;
  v487[1] = 0;
  v487[0] = 0;
  v436 = 0;
  v474[1] = 0;
  v474[0] = 0;
  v426 = sub_1B0E439A8();
  v427 = *(v426 - 8);
  v428 = v427;
  v429 = *(v427 + 64);
  MEMORY[0x1EEE9AC00](v424);
  v431 = (v429 + 15) & 0xFFFFFFFFFFFFFFF0;
  v430 = v118 - v431;
  MEMORY[0x1EEE9AC00](v5);
  v432 = v118 - v431;
  v492 = v6;
  v490 = v7;
  v491 = v8;
  v489 = v9;
  v488 = v4;
  v433 = *(v4 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v486 = v433;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v434 = v435;
  sub_1B0990678();
  sub_1B0E45798();
  for (i = v436; ; i = v306)
  {
    v418 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
    sub_1B0E46518();
    v476 = v419[25];
    v10 = v419[26];
    v11 = v419[27];
    v12 = v419[28];
    v480 = v475;
    v479 = v12;
    v478 = v11;
    v477 = v10;
    v481 = v476;
    v485 = v475;
    v484 = v12;
    v483 = v11;
    v482 = v10;
    if (!*(&v10 + 1))
    {
      break;
    }

    v493 = v481;
    v497 = v485;
    v496 = v484;
    v495 = v483;
    v494 = v482;
    v416 = *(&v482 + 1);
    v415 = v483;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v417 = static MailboxName.== infix(_:_:)(v416, v415, v425, v422);

    sub_1B0990700(&v481, v446);
    if (v417)
    {
      v439 = DWORD1(v483);
      v438 = v424;
      sub_1B0714E4C();
      v414 = sub_1B0E45ED8();
    }

    else
    {
      v414 = 0;
    }

    v413 = v414;
    sub_1B09907DC(&v481);
    if (v413)
    {
      v13 = v432;
      v381 = v485;
      v14 = v485;
      sub_1B0990DA0();
      v392 = 0;
      v379 = swift_allocError();
      v386 = 2;
      *v15 = 2;
      v380 = sub_1B0E42CC8();

      [v381 finishWithError_];
      (*(v428 + 16))(v13, v423, v426);
      sub_1B0990700(&v481, &v445);
      v398 = 7;
      v16 = swift_allocObject();
      v382 = v16;
      *(v16 + 16) = v493;
      v17 = v494;
      v18 = v495;
      v19 = v496;
      *(v16 + 80) = v497;
      *(v16 + 64) = v19;
      *(v16 + 48) = v18;
      *(v16 + 32) = v17;

      v397 = 32;
      v20 = swift_allocObject();
      v21 = v382;
      v389 = v20;
      *(v20 + 16) = sub_1B09907C8;
      *(v20 + 24) = v21;

      v383 = swift_allocObject();
      *(v383 + 16) = v424;

      v22 = swift_allocObject();
      v23 = v383;
      v399 = v22;
      *(v22 + 16) = sub_1B03F7AE0;
      *(v22 + 24) = v23;

      v412 = sub_1B0E43988();
      v384 = v412;
      v411 = sub_1B0E458E8();
      v385 = v411;
      v393 = 17;
      v402 = swift_allocObject();
      v387 = v402;
      *(v402 + 16) = v386;
      v403 = swift_allocObject();
      v388 = v403;
      v395 = 4;
      *(v403 + 16) = 4;
      v24 = swift_allocObject();
      v25 = v389;
      v390 = v24;
      *(v24 + 16) = sub_1B09907D0;
      *(v24 + 24) = v25;
      v26 = swift_allocObject();
      v27 = v390;
      v404 = v26;
      v391 = v26;
      *(v26 + 16) = sub_1B039BC08;
      *(v26 + 24) = v27;
      v405 = swift_allocObject();
      v394 = v405;
      *(v405 + 16) = v392;
      v406 = swift_allocObject();
      v396 = v406;
      *(v406 + 16) = v395;
      v28 = swift_allocObject();
      v29 = v399;
      v400 = v28;
      *(v28 + 16) = sub_1B07AB020;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v400;
      v409 = v30;
      v401 = v30;
      *(v30 + 16) = sub_1B039BC08;
      *(v30 + 24) = v31;
      v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v407 = sub_1B0E46A48();
      v408 = v32;

      v33 = v402;
      v34 = v408;
      *v408 = sub_1B0398F5C;
      v34[1] = v33;

      v35 = v403;
      v36 = v408;
      v408[2] = sub_1B0398F5C;
      v36[3] = v35;

      v37 = v404;
      v38 = v408;
      v408[4] = sub_1B03991EC;
      v38[5] = v37;

      v39 = v405;
      v40 = v408;
      v408[6] = sub_1B0398F5C;
      v40[7] = v39;

      v41 = v406;
      v42 = v408;
      v408[8] = sub_1B0398F5C;
      v42[9] = v41;

      v43 = v408;
      v44 = v409;
      v408[10] = sub_1B03991EC;
      v43[11] = v44;
      sub_1B0394964();

      if (os_log_type_enabled(v412, v411))
      {
        v45 = v418;
        v367 = sub_1B0E45D78();
        v363 = v367;
        v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v365 = 0;
        v368 = sub_1B03949A8(0, v364, v364);
        v366 = v368;
        v369 = sub_1B03949A8(v365, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v444 = v367;
        v443 = v368;
        v442 = v369;
        v370 = &v444;
        sub_1B0394A48(0, &v444);
        sub_1B0394A48(2, v370);
        v440 = sub_1B0398F5C;
        v441 = v387;
        sub_1B03949FC(&v440, v370, &v443, &v442);
        v371 = v45;
        v372 = v387;
        v373 = v388;
        v374 = v391;
        v375 = v394;
        v376 = v396;
        v377 = v401;
        v378 = v45;
        if (v45)
        {
          v355 = v372;
          v356 = v373;
          v357 = v374;
          v358 = v375;
          v359 = v376;
          v360 = v377;
          v361 = 0;
          v313 = v377;
          v312 = v376;
          v311 = v375;
          v310 = v374;
          v309 = v373;

          __break(1u);
        }

        else
        {
          v440 = sub_1B0398F5C;
          v441 = v388;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v347 = 0;
          v348 = v387;
          v349 = v388;
          v350 = v391;
          v351 = v394;
          v352 = v396;
          v353 = v401;
          v354 = 0;
          v440 = sub_1B03991EC;
          v441 = v391;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v339 = 0;
          v340 = v387;
          v341 = v388;
          v342 = v391;
          v343 = v394;
          v344 = v396;
          v345 = v401;
          v346 = 0;
          v440 = sub_1B0398F5C;
          v441 = v394;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v331 = 0;
          v332 = v387;
          v333 = v388;
          v334 = v391;
          v335 = v394;
          v336 = v396;
          v337 = v401;
          v338 = 0;
          v440 = sub_1B0398F5C;
          v441 = v396;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v323 = 0;
          v324 = v387;
          v325 = v388;
          v326 = v391;
          v327 = v394;
          v328 = v396;
          v329 = v401;
          v330 = 0;
          v440 = sub_1B03991EC;
          v441 = v401;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v315 = 0;
          v316 = v387;
          v317 = v388;
          v318 = v391;
          v319 = v394;
          v320 = v396;
          v321 = v401;
          v322 = 0;
          _os_log_impl(&dword_1B0389000, v384, v385, "Failing request %{public}u for UID %u.", v363, 0xEu);
          v314 = 0;
          sub_1B03998A8(v366, 0, v364);
          sub_1B03998A8(v369, v314, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v362 = v315;
        }
      }

      else
      {
        v46 = v418;

        v362 = v46;
      }

      v307 = v362;

      (*(v428 + 8))(v432, v426);
      v308 = v307;
    }

    else
    {
      v308 = v418;
    }

    v306 = v308;
    sub_1B09907DC(&v481);
  }

  v47 = v418;
  sub_1B039E440(v487);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v302 = v118;
  MEMORY[0x1EEE9AC00](v118);
  v48 = v422;
  v49 = v424;
  v303 = &v118[-4];
  v118[-2] = v50;
  LODWORD(v118[-1]) = v48;
  HIDWORD(v118[-1]) = v49;
  v304 = sub_1B0990940();
  sub_1B09909C8();
  sub_1B0E45898();
  v305 = v47;
  if (v47)
  {

    __break(1u);
  }

  else
  {

    v298 = *(v420 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v473 = v298;
    v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
    v299 = v300;
    sub_1B0990A50();
    sub_1B0E45798();
    for (j = v305; ; j = v119)
    {
      v297 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3310, qword_1B0EA1108);
      sub_1B0E46518();
      v51 = *v419;
      v52 = v419[1];
      v53 = v419[2];
      v460 = v419[3];
      v459 = v53;
      v458 = v52;
      v457 = v51;
      v54 = v419[4];
      v55 = v419[5];
      v56 = v419[6];
      v464 = v456;
      v463 = v56;
      v462 = v55;
      v461 = v54;
      v468 = v460;
      v467 = v459;
      v466 = v458;
      v465 = v457;
      v472 = v456;
      v471 = v56;
      v470 = v55;
      v469 = v54;
      if (!*(&v458 + 1))
      {
        break;
      }

      v501 = v468;
      v500 = v467;
      v499 = v466;
      v498 = v465;
      v505 = v472;
      v504 = v471;
      v503 = v470;
      v502 = v469;
      v295 = *(&v466 + 1);
      v294 = v467;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v296 = static MailboxName.== infix(_:_:)(v295, v294, v425, v422);

      sub_1B0990C1C(&v465, &v454);
      if (v296)
      {
        v446[19] = DWORD1(v467);
        v446[18] = v424;
        sub_1B0714E4C();
        v293 = sub_1B0E45ED8();
      }

      else
      {
        v293 = 0;
      }

      v292 = v293;
      sub_1B0990D34(&v465);
      if (v292)
      {
        v57 = v430;
        v249 = v472;
        v58 = v472;
        sub_1B0990DA0();
        v263 = 0;
        v247 = swift_allocError();
        v257 = 2;
        *v59 = 2;
        v248 = sub_1B0E42CC8();

        [v249 finishWithError_];
        (*(v428 + 16))(v57, v423, v426);
        v252 = &v465;
        sub_1B0990C1C(&v465, &v453);
        v253 = 136;
        v274 = 7;
        v60 = swift_allocObject();
        v250 = v60;
        v61 = v498;
        v62 = v499;
        v63 = v500;
        *(v60 + 64) = v501;
        *(v60 + 48) = v63;
        *(v60 + 32) = v62;
        *(v60 + 16) = v61;
        v64 = v502;
        v65 = v503;
        v66 = v504;
        *(v60 + 128) = v505;
        *(v60 + 112) = v66;
        *(v60 + 96) = v65;
        *(v60 + 80) = v64;

        v273 = 32;
        v67 = swift_allocObject();
        v68 = v250;
        v260 = v67;
        *(v67 + 16) = sub_1B09907C8;
        *(v67 + 24) = v68;

        v251 = swift_allocObject();
        *(v251 + 16) = v424;

        v69 = swift_allocObject();
        v70 = v251;
        v267 = v69;
        *(v69 + 16) = sub_1B03F7AE0;
        *(v69 + 24) = v70;

        sub_1B0990C1C(v252, &v452);
        v71 = swift_allocObject();
        v254 = v71;
        v72 = v498;
        v73 = v499;
        v74 = v500;
        *(v71 + 64) = v501;
        *(v71 + 48) = v74;
        *(v71 + 32) = v73;
        *(v71 + 16) = v72;
        v75 = v502;
        v76 = v503;
        v77 = v504;
        *(v71 + 128) = v505;
        *(v71 + 112) = v77;
        *(v71 + 96) = v76;
        *(v71 + 80) = v75;

        v78 = swift_allocObject();
        v79 = v254;
        v275 = v78;
        *(v78 + 16) = sub_1B0990E1C;
        *(v78 + 24) = v79;

        v291 = sub_1B0E43988();
        v255 = v291;
        v290 = sub_1B0E458E8();
        v256 = v290;
        v270 = 17;
        v278 = swift_allocObject();
        v258 = v278;
        *(v278 + 16) = v257;
        v279 = swift_allocObject();
        v259 = v279;
        v265 = 4;
        *(v279 + 16) = 4;
        v80 = swift_allocObject();
        v81 = v260;
        v261 = v80;
        *(v80 + 16) = sub_1B09907D0;
        *(v80 + 24) = v81;
        v82 = swift_allocObject();
        v83 = v261;
        v280 = v82;
        v262 = v82;
        *(v82 + 16) = sub_1B039BC08;
        *(v82 + 24) = v83;
        v281 = swift_allocObject();
        v264 = v281;
        *(v281 + 16) = v263;
        v282 = swift_allocObject();
        v266 = v282;
        *(v282 + 16) = v265;
        v84 = swift_allocObject();
        v85 = v267;
        v268 = v84;
        *(v84 + 16) = sub_1B07AB020;
        *(v84 + 24) = v85;
        v86 = swift_allocObject();
        v87 = v268;
        v283 = v86;
        v269 = v86;
        *(v86 + 16) = sub_1B039BC08;
        *(v86 + 24) = v87;
        v284 = swift_allocObject();
        v271 = v284;
        *(v284 + 16) = 34;
        v285 = swift_allocObject();
        v272 = v285;
        *(v285 + 16) = 8;
        v88 = swift_allocObject();
        v89 = v275;
        v276 = v88;
        *(v88 + 16) = sub_1B07AD0A4;
        *(v88 + 24) = v89;
        v90 = swift_allocObject();
        v91 = v276;
        v288 = v90;
        v277 = v90;
        *(v90 + 16) = sub_1B039BCF8;
        *(v90 + 24) = v91;
        v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v286 = sub_1B0E46A48();
        v287 = v92;

        v93 = v278;
        v94 = v287;
        *v287 = sub_1B0398F5C;
        v94[1] = v93;

        v95 = v279;
        v96 = v287;
        v287[2] = sub_1B0398F5C;
        v96[3] = v95;

        v97 = v280;
        v98 = v287;
        v287[4] = sub_1B03991EC;
        v98[5] = v97;

        v99 = v281;
        v100 = v287;
        v287[6] = sub_1B0398F5C;
        v100[7] = v99;

        v101 = v282;
        v102 = v287;
        v287[8] = sub_1B0398F5C;
        v102[9] = v101;

        v103 = v283;
        v104 = v287;
        v287[10] = sub_1B03991EC;
        v104[11] = v103;

        v105 = v284;
        v106 = v287;
        v287[12] = sub_1B0398F5C;
        v106[13] = v105;

        v107 = v285;
        v108 = v287;
        v287[14] = sub_1B0398F5C;
        v108[15] = v107;

        v109 = v287;
        v110 = v288;
        v287[16] = sub_1B039BCEC;
        v109[17] = v110;
        sub_1B0394964();

        if (os_log_type_enabled(v291, v290))
        {
          v111 = v297;
          v232 = sub_1B0E45D78();
          v229 = v232;
          v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v233 = sub_1B03949A8(0, v230, v230);
          v231 = v233;
          v234 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v451 = v232;
          v450 = v233;
          v449 = v234;
          v235 = &v451;
          sub_1B0394A48(2, &v451);
          sub_1B0394A48(3, v235);
          v447 = sub_1B0398F5C;
          v448 = v258;
          sub_1B03949FC(&v447, v235, &v450, &v449);
          v236 = v111;
          v237 = v258;
          v238 = v259;
          v239 = v262;
          v240 = v264;
          v241 = v266;
          v242 = v269;
          v243 = v271;
          v244 = v272;
          v245 = v277;
          v246 = v111;
          if (v111)
          {
            v218 = v237;
            v219 = v238;
            v220 = v239;
            v221 = v240;
            v222 = v241;
            v223 = v242;
            v224 = v243;
            v225 = v244;
            v226 = v245;
            v227 = 0;
            v129 = v245;
            v128 = v244;
            v127 = v243;
            v126 = v242;
            v125 = v241;
            v124 = v240;
            v123 = v239;
            v122 = v238;

            __break(1u);
          }

          else
          {
            v447 = sub_1B0398F5C;
            v448 = v259;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v207 = 0;
            v208 = v258;
            v209 = v259;
            v210 = v262;
            v211 = v264;
            v212 = v266;
            v213 = v269;
            v214 = v271;
            v215 = v272;
            v216 = v277;
            v217 = 0;
            v447 = sub_1B03991EC;
            v448 = v262;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v196 = 0;
            v197 = v258;
            v198 = v259;
            v199 = v262;
            v200 = v264;
            v201 = v266;
            v202 = v269;
            v203 = v271;
            v204 = v272;
            v205 = v277;
            v206 = 0;
            v447 = sub_1B0398F5C;
            v448 = v264;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v185 = 0;
            v186 = v258;
            v187 = v259;
            v188 = v262;
            v189 = v264;
            v190 = v266;
            v191 = v269;
            v192 = v271;
            v193 = v272;
            v194 = v277;
            v195 = 0;
            v447 = sub_1B0398F5C;
            v448 = v266;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v174 = 0;
            v175 = v258;
            v176 = v259;
            v177 = v262;
            v178 = v264;
            v179 = v266;
            v180 = v269;
            v181 = v271;
            v182 = v272;
            v183 = v277;
            v184 = 0;
            v447 = sub_1B03991EC;
            v448 = v269;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v163 = 0;
            v164 = v258;
            v165 = v259;
            v166 = v262;
            v167 = v264;
            v168 = v266;
            v169 = v269;
            v170 = v271;
            v171 = v272;
            v172 = v277;
            v173 = 0;
            v447 = sub_1B0398F5C;
            v448 = v271;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v152 = 0;
            v153 = v258;
            v154 = v259;
            v155 = v262;
            v156 = v264;
            v157 = v266;
            v158 = v269;
            v159 = v271;
            v160 = v272;
            v161 = v277;
            v162 = 0;
            v447 = sub_1B0398F5C;
            v448 = v272;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v141 = 0;
            v142 = v258;
            v143 = v259;
            v144 = v262;
            v145 = v264;
            v146 = v266;
            v147 = v269;
            v148 = v271;
            v149 = v272;
            v150 = v277;
            v151 = 0;
            v447 = sub_1B039BCEC;
            v448 = v277;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v130 = 0;
            v131 = v258;
            v132 = v259;
            v133 = v262;
            v134 = v264;
            v135 = v266;
            v136 = v269;
            v137 = v271;
            v138 = v272;
            v139 = v277;
            v140 = 0;
            _os_log_impl(&dword_1B0389000, v255, v256, "Failing request %{public}u for UID %u part '[%{public}s]'.", v229, 0x18u);
            sub_1B03998A8(v231, 0, v230);
            sub_1B03998A8(v234, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v228 = v130;
          }
        }

        else
        {
          v112 = v297;

          v228 = v112;
        }

        v120 = v228;

        (*(v428 + 8))(v430, v426);
        v121 = v120;
      }

      else
      {
        v121 = v297;
      }

      v119 = v121;
      sub_1B0990D34(&v465);
    }

    v113 = v297;
    sub_1B039E440(v474);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v118[0] = v118;
    MEMORY[0x1EEE9AC00](v118);
    v114 = v422;
    v115 = v424;
    v118[1] = &v118[-4];
    v118[-2] = v116;
    LODWORD(v118[-1]) = v114;
    HIDWORD(v118[-1]) = v115;
    v118[2] = sub_1B0990B0C();
    sub_1B0990B94();
    sub_1B0E45898();
    if (!v113)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B09460C0(uint64_t a1, int a2, int a3, int a4)
{
  v23 = a4;
  v24 = a2;
  v25 = a1;
  v47[1] = 0;
  v27 = 0;
  v39 = 0;
  v26 = a3;
  v50 = a1;
  v51 = a2;
  v49 = a3 & 1;
  v48 = a4;
  v47[0] = sub_1B0E46A48();
  for (i = 0; ; i = v12)
  {
    v4 = i;
    v15 = *(v22 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45[0] = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v5 = v25;
    v6 = v24;
    v17 = &v10 - 6;
    *(&v10 - 8) = v7;
    *(&v10 - 3) = v5;
    *(&v10 - 4) = v6;
    *(&v10 - 12) = v8 & 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    v16 = v18;
    sub_1B0990678();
    sub_1B0E456F8();
    v20 = v4;
    v21 = v19;
    if (v4)
    {
      break;
    }

    sub_1B039E440(v45);
    v14 = v45[1];
    if (v46)
    {
      v11 = v47[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(v47);
      return v11;
    }

    v13 = v14;
    v12 = v20;
    v39 = v14;
    sub_1B0E45308();
    v40 = v34;
    v44 = v38;
    v43 = v37;
    v42 = v36;
    v41 = v35;
    v29 = v34;
    v33 = v38;
    v32 = v37;
    v31 = v36;
    v30 = v35;
    sub_1B0E452E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B094633C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v787 = v2;
  v783 = v3;
  v785 = v4;
  v790 = v5;
  v788 = v6;
  v789 = v7;
  v781 = v8;
  v731 = v1;
  v782 = 0;
  v732 = sub_1B039BBE8;
  v733 = sub_1B09907C8;
  v734 = sub_1B0991328;
  v735 = sub_1B0394C30;
  v736 = sub_1B0394C24;
  v737 = sub_1B039BA2C;
  v738 = sub_1B039BA88;
  v739 = sub_1B039BB94;
  v740 = sub_1B0394C24;
  v741 = sub_1B039BBA0;
  v742 = sub_1B039BC08;
  v743 = sub_1B09907D0;
  v744 = sub_1B039BC08;
  v745 = sub_1B07AB020;
  v746 = sub_1B039BC08;
  v747 = sub_1B08A9978;
  v748 = sub_1B03B0DF8;
  v749 = sub_1B0398F5C;
  v750 = sub_1B0398F5C;
  v751 = sub_1B0399178;
  v752 = sub_1B0398F5C;
  v753 = sub_1B0398F5C;
  v754 = sub_1B039BA94;
  v755 = sub_1B0398F5C;
  v756 = sub_1B0398F5C;
  v757 = sub_1B0399178;
  v758 = sub_1B0398F5C;
  v759 = sub_1B0398F5C;
  v760 = sub_1B03991EC;
  v761 = sub_1B0398F5C;
  v762 = sub_1B0398F5C;
  v763 = sub_1B03991EC;
  v764 = sub_1B0398F5C;
  v765 = sub_1B0398F5C;
  v766 = sub_1B03991EC;
  v767 = sub_1B0398F5C;
  v768 = sub_1B0398F5C;
  v769 = sub_1B0399260;
  v815 = 0;
  v814 = 0;
  v813 = 0;
  v812 = 0;
  v810 = 0;
  v811 = 0;
  v809 = 0;
  v806 = 0;
  v807 = 0;
  v805[0] = 0;
  v805[1] = 0;
  v775 = 0;
  v770 = sub_1B0E439A8();
  v771 = *(v770 - 8);
  v772 = v770 - 8;
  v773 = (*(v771 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v774 = &v148 - v773;
  v776 = _s6LoggerVMa(v9);
  v777 = (*(*(v776 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v775);
  v778 = &v148 - v777;
  v779 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v780 = &v148 - v779;
  v784 = (*(*(_s6LoggerVMa_1(v12) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v787);
  v791 = &v148 - v784;
  v815 = v13;
  v814 = v14;
  v813 = v15;
  v812 = v16;
  v810 = v17;
  v811 = v18;
  v809 = v19;
  v786 = &v808;
  swift_beginAccess();
  v793 = *(v785 + 64);

  swift_endAccess();
  sub_1B074B69C(v787 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v791);
  v792 = sub_1B08AE484(v790, v788, v789, v791);
  v794 = v20;
  sub_1B074B764(v791);

  if ((v794 & 0xF000000000000000) == 0xF000000000000000)
  {
    result = v731;
    v728 = v731;
  }

  else
  {
    v729 = v792;
    v730 = v794;
    v724 = v794;
    v725 = v792;
    v806 = v792;
    v807 = v794;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v804[9] = v781;
    v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    sub_1B0990678();
    sub_1B0E45798();
    for (i = v731; ; i = v152)
    {
      v720 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
      v721 = &v802;
      sub_1B0E46518();
      v722 = v803;
      v723 = 72;
      memcpy(v803, v721, sizeof(v803));
      memcpy(v804, v803, 0x48uLL);
      if (!v804[3])
      {
        break;
      }

      v22 = v774;
      v672 = v804;
      v674 = __dst;
      v675 = 72;
      memcpy(__dst, v804, sizeof(__dst));
      v666 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
      sub_1B0394784(v785 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v780);
      (*(v771 + 16))(v22, v780, v770);
      sub_1B039480C(v780);

      sub_1B0394784(v785 + *v666, v778);
      v23 = (v778 + *(v776 + 20));
      v668 = *v23;
      v669 = *(v23 + 1);
      sub_1B039480C(v778);

      v667 = 24;
      v691 = 7;
      v24 = swift_allocObject();
      v25 = v669;
      v678 = v24;
      *(v24 + 16) = v668;
      *(v24 + 20) = v25;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v26 = swift_allocObject();
      v27 = v669;
      v670 = v26;
      *(v26 + 16) = v668;
      *(v26 + 20) = v27;

      v690 = 32;
      v28 = swift_allocObject();
      v29 = v670;
      v682 = v28;
      *(v28 + 16) = v732;
      *(v28 + 24) = v29;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B0990700(v672, &v801);
      v673 = 88;
      v671 = swift_allocObject();
      memcpy((v671 + 16), v674, v675);

      v30 = swift_allocObject();
      v31 = v671;
      v684 = v30;
      *(v30 + 16) = v733;
      *(v30 + 24) = v31;

      sub_1B0990700(v672, &v800);
      v676 = swift_allocObject();
      memcpy((v676 + 16), v674, v675);

      v32 = swift_allocObject();
      v33 = v676;
      v687 = v32;
      *(v32 + 16) = v734;
      *(v32 + 24) = v33;

      sub_1B03B2000(v725, v724);
      v34 = swift_allocObject();
      v35 = v724;
      v692 = v34;
      *(v34 + 16) = v725;
      *(v34 + 24) = v35;
      sub_1B07575C4();

      v718 = sub_1B0E43988();
      v719 = sub_1B0E45908();
      v689 = 17;
      v694 = swift_allocObject();
      v680 = 16;
      *(v694 + 16) = 16;
      v695 = swift_allocObject();
      v686 = 4;
      *(v695 + 16) = 4;
      v36 = swift_allocObject();
      v677 = v36;
      *(v36 + 16) = v735;
      *(v36 + 24) = 0;
      v37 = swift_allocObject();
      v38 = v677;
      v696 = v37;
      *(v37 + 16) = v736;
      *(v37 + 24) = v38;
      v697 = swift_allocObject();
      *(v697 + 16) = 0;
      v698 = swift_allocObject();
      *(v698 + 16) = 1;
      v39 = swift_allocObject();
      v40 = v678;
      v679 = v39;
      *(v39 + 16) = v737;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v679;
      v699 = v41;
      *(v41 + 16) = v738;
      *(v41 + 24) = v42;
      v700 = swift_allocObject();
      *(v700 + 16) = v680;
      v701 = swift_allocObject();
      *(v701 + 16) = v686;
      v43 = swift_allocObject();
      v681 = v43;
      *(v43 + 16) = v739;
      *(v43 + 24) = 0;
      v44 = swift_allocObject();
      v45 = v681;
      v702 = v44;
      *(v44 + 16) = v740;
      *(v44 + 24) = v45;
      v703 = swift_allocObject();
      *(v703 + 16) = 0;
      v704 = swift_allocObject();
      *(v704 + 16) = v686;
      v46 = swift_allocObject();
      v47 = v682;
      v683 = v46;
      *(v46 + 16) = v741;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v683;
      v705 = v48;
      *(v48 + 16) = v742;
      *(v48 + 24) = v49;
      v706 = swift_allocObject();
      *(v706 + 16) = 2;
      v707 = swift_allocObject();
      *(v707 + 16) = v686;
      v50 = swift_allocObject();
      v51 = v684;
      v685 = v50;
      *(v50 + 16) = v743;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v685;
      v708 = v52;
      *(v52 + 16) = v744;
      *(v52 + 24) = v53;
      v709 = swift_allocObject();
      *(v709 + 16) = 0;
      v710 = swift_allocObject();
      *(v710 + 16) = v686;
      v54 = swift_allocObject();
      v55 = v687;
      v688 = v54;
      *(v54 + 16) = v745;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v688;
      v711 = v56;
      *(v56 + 16) = v746;
      *(v56 + 24) = v57;
      v712 = swift_allocObject();
      *(v712 + 16) = 0;
      v713 = swift_allocObject();
      *(v713 + 16) = 8;
      v58 = swift_allocObject();
      v59 = v692;
      v693 = v58;
      *(v58 + 16) = v747;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v693;
      v715 = v60;
      *(v60 + 16) = v748;
      *(v60 + 24) = v61;
      v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v714 = sub_1B0E46A48();
      v716 = v62;

      v63 = v694;
      v64 = v716;
      *v716 = v749;
      v64[1] = v63;

      v65 = v695;
      v66 = v716;
      v716[2] = v750;
      v66[3] = v65;

      v67 = v696;
      v68 = v716;
      v716[4] = v751;
      v68[5] = v67;

      v69 = v697;
      v70 = v716;
      v716[6] = v752;
      v70[7] = v69;

      v71 = v698;
      v72 = v716;
      v716[8] = v753;
      v72[9] = v71;

      v73 = v699;
      v74 = v716;
      v716[10] = v754;
      v74[11] = v73;

      v75 = v700;
      v76 = v716;
      v716[12] = v755;
      v76[13] = v75;

      v77 = v701;
      v78 = v716;
      v716[14] = v756;
      v78[15] = v77;

      v79 = v702;
      v80 = v716;
      v716[16] = v757;
      v80[17] = v79;

      v81 = v703;
      v82 = v716;
      v716[18] = v758;
      v82[19] = v81;

      v83 = v704;
      v84 = v716;
      v716[20] = v759;
      v84[21] = v83;

      v85 = v705;
      v86 = v716;
      v716[22] = v760;
      v86[23] = v85;

      v87 = v706;
      v88 = v716;
      v716[24] = v761;
      v88[25] = v87;

      v89 = v707;
      v90 = v716;
      v716[26] = v762;
      v90[27] = v89;

      v91 = v708;
      v92 = v716;
      v716[28] = v763;
      v92[29] = v91;

      v93 = v709;
      v94 = v716;
      v716[30] = v764;
      v94[31] = v93;

      v95 = v710;
      v96 = v716;
      v716[32] = v765;
      v96[33] = v95;

      v97 = v711;
      v98 = v716;
      v716[34] = v766;
      v98[35] = v97;

      v99 = v712;
      v100 = v716;
      v716[36] = v767;
      v100[37] = v99;

      v101 = v713;
      v102 = v716;
      v716[38] = v768;
      v102[39] = v101;

      v103 = v715;
      v104 = v716;
      v716[40] = v769;
      v104[41] = v103;
      sub_1B0394964();

      if (os_log_type_enabled(v718, v719))
      {
        v105 = v695;
        v106 = v694;
        v638 = sub_1B0E45D78();
        v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v637 = 0;
        v639 = sub_1B03949A8(0, v636, v636);
        v640 = sub_1B03949A8(v637, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v641 = &v799;
        v799 = v638;
        v642 = &v798;
        v798 = v639;
        v643 = &v797;
        v797 = v640;
        sub_1B0394A48(0, &v799);
        sub_1B0394A48(7, v641);
        v107 = v720;
        v795 = v749;
        v796 = v106;
        sub_1B03949FC(&v795, v641, v642, v643);
        v644 = v107;
        v645 = v106;
        v646 = v105;
        v647 = v696;
        v648 = v697;
        v649 = v698;
        v650 = v699;
        v651 = v700;
        v652 = v701;
        v653 = v702;
        v654 = v703;
        v655 = v704;
        v656 = v705;
        v657 = v706;
        v658 = v707;
        v659 = v708;
        v660 = v709;
        v661 = v710;
        v662 = v711;
        v663 = v712;
        v664 = v713;
        v665 = v715;
        if (v107)
        {
          v614 = v645;
          v615 = v646;
          v616 = v647;
          v617 = v648;
          v618 = v649;
          v619 = v650;
          v620 = v651;
          v621 = v652;
          v622 = v653;
          v623 = v654;
          v624 = v655;
          v625 = v656;
          v626 = v657;
          v627 = v658;
          v628 = v659;
          v629 = v660;
          v630 = v661;
          v631 = v662;
          v632 = v663;
          v633 = v664;
          v634 = v665;
          v172 = v665;
          v171 = v664;
          v170 = v663;
          v169 = v662;
          v168 = v661;
          v167 = v660;
          v166 = v659;
          v165 = v658;
          v164 = v657;
          v163 = v656;
          v162 = v655;
          v161 = v654;
          v160 = v653;
          v159 = v652;
          v158 = v651;
          v157 = v650;
          v156 = v649;
          v155 = v648;
          v154 = v647;
          v153 = v646;

          __break(1u);
        }

        else
        {
          v108 = v695;
          v109 = v694;
          v795 = v750;
          v796 = v695;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v592 = 0;
          v593 = v109;
          v594 = v108;
          v595 = v696;
          v596 = v697;
          v597 = v698;
          v598 = v699;
          v599 = v700;
          v600 = v701;
          v601 = v702;
          v602 = v703;
          v603 = v704;
          v604 = v705;
          v605 = v706;
          v606 = v707;
          v607 = v708;
          v608 = v709;
          v609 = v710;
          v610 = v711;
          v611 = v712;
          v612 = v713;
          v613 = v715;
          v110 = v695;
          v111 = v694;
          v795 = v751;
          v796 = v696;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v570 = 0;
          v571 = v111;
          v572 = v110;
          v573 = v696;
          v574 = v697;
          v575 = v698;
          v576 = v699;
          v577 = v700;
          v578 = v701;
          v579 = v702;
          v580 = v703;
          v581 = v704;
          v582 = v705;
          v583 = v706;
          v584 = v707;
          v585 = v708;
          v586 = v709;
          v587 = v710;
          v588 = v711;
          v589 = v712;
          v590 = v713;
          v591 = v715;
          v112 = v695;
          v113 = v694;
          v795 = v752;
          v796 = v697;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v548 = 0;
          v549 = v113;
          v550 = v112;
          v551 = v696;
          v552 = v697;
          v553 = v698;
          v554 = v699;
          v555 = v700;
          v556 = v701;
          v557 = v702;
          v558 = v703;
          v559 = v704;
          v560 = v705;
          v561 = v706;
          v562 = v707;
          v563 = v708;
          v564 = v709;
          v565 = v710;
          v566 = v711;
          v567 = v712;
          v568 = v713;
          v569 = v715;
          v114 = v695;
          v115 = v694;
          v795 = v753;
          v796 = v698;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v526 = 0;
          v527 = v115;
          v528 = v114;
          v529 = v696;
          v530 = v697;
          v531 = v698;
          v532 = v699;
          v533 = v700;
          v534 = v701;
          v535 = v702;
          v536 = v703;
          v537 = v704;
          v538 = v705;
          v539 = v706;
          v540 = v707;
          v541 = v708;
          v542 = v709;
          v543 = v710;
          v544 = v711;
          v545 = v712;
          v546 = v713;
          v547 = v715;
          v116 = v695;
          v117 = v694;
          v795 = v754;
          v796 = v699;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v504 = 0;
          v505 = v117;
          v506 = v116;
          v507 = v696;
          v508 = v697;
          v509 = v698;
          v510 = v699;
          v511 = v700;
          v512 = v701;
          v513 = v702;
          v514 = v703;
          v515 = v704;
          v516 = v705;
          v517 = v706;
          v518 = v707;
          v519 = v708;
          v520 = v709;
          v521 = v710;
          v522 = v711;
          v523 = v712;
          v524 = v713;
          v525 = v715;
          v118 = v695;
          v119 = v694;
          v795 = v755;
          v796 = v700;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v482 = 0;
          v483 = v119;
          v484 = v118;
          v485 = v696;
          v486 = v697;
          v487 = v698;
          v488 = v699;
          v489 = v700;
          v490 = v701;
          v491 = v702;
          v492 = v703;
          v493 = v704;
          v494 = v705;
          v495 = v706;
          v496 = v707;
          v497 = v708;
          v498 = v709;
          v499 = v710;
          v500 = v711;
          v501 = v712;
          v502 = v713;
          v503 = v715;
          v120 = v695;
          v121 = v694;
          v795 = v756;
          v796 = v701;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v460 = 0;
          v461 = v121;
          v462 = v120;
          v463 = v696;
          v464 = v697;
          v465 = v698;
          v466 = v699;
          v467 = v700;
          v468 = v701;
          v469 = v702;
          v470 = v703;
          v471 = v704;
          v472 = v705;
          v473 = v706;
          v474 = v707;
          v475 = v708;
          v476 = v709;
          v477 = v710;
          v478 = v711;
          v479 = v712;
          v480 = v713;
          v481 = v715;
          v122 = v695;
          v123 = v694;
          v795 = v757;
          v796 = v702;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v438 = 0;
          v439 = v123;
          v440 = v122;
          v441 = v696;
          v442 = v697;
          v443 = v698;
          v444 = v699;
          v445 = v700;
          v446 = v701;
          v447 = v702;
          v448 = v703;
          v449 = v704;
          v450 = v705;
          v451 = v706;
          v452 = v707;
          v453 = v708;
          v454 = v709;
          v455 = v710;
          v456 = v711;
          v457 = v712;
          v458 = v713;
          v459 = v715;
          v124 = v695;
          v125 = v694;
          v795 = v758;
          v796 = v703;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v416 = 0;
          v417 = v125;
          v418 = v124;
          v419 = v696;
          v420 = v697;
          v421 = v698;
          v422 = v699;
          v423 = v700;
          v424 = v701;
          v425 = v702;
          v426 = v703;
          v427 = v704;
          v428 = v705;
          v429 = v706;
          v430 = v707;
          v431 = v708;
          v432 = v709;
          v433 = v710;
          v434 = v711;
          v435 = v712;
          v436 = v713;
          v437 = v715;
          v126 = v695;
          v127 = v694;
          v795 = v759;
          v796 = v704;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v394 = 0;
          v395 = v127;
          v396 = v126;
          v397 = v696;
          v398 = v697;
          v399 = v698;
          v400 = v699;
          v401 = v700;
          v402 = v701;
          v403 = v702;
          v404 = v703;
          v405 = v704;
          v406 = v705;
          v407 = v706;
          v408 = v707;
          v409 = v708;
          v410 = v709;
          v411 = v710;
          v412 = v711;
          v413 = v712;
          v414 = v713;
          v415 = v715;
          v128 = v695;
          v129 = v694;
          v795 = v760;
          v796 = v705;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v372 = 0;
          v373 = v129;
          v374 = v128;
          v375 = v696;
          v376 = v697;
          v377 = v698;
          v378 = v699;
          v379 = v700;
          v380 = v701;
          v381 = v702;
          v382 = v703;
          v383 = v704;
          v384 = v705;
          v385 = v706;
          v386 = v707;
          v387 = v708;
          v388 = v709;
          v389 = v710;
          v390 = v711;
          v391 = v712;
          v392 = v713;
          v393 = v715;
          v130 = v695;
          v131 = v694;
          v795 = v761;
          v796 = v706;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v350 = 0;
          v351 = v131;
          v352 = v130;
          v353 = v696;
          v354 = v697;
          v355 = v698;
          v356 = v699;
          v357 = v700;
          v358 = v701;
          v359 = v702;
          v360 = v703;
          v361 = v704;
          v362 = v705;
          v363 = v706;
          v364 = v707;
          v365 = v708;
          v366 = v709;
          v367 = v710;
          v368 = v711;
          v369 = v712;
          v370 = v713;
          v371 = v715;
          v132 = v695;
          v133 = v694;
          v795 = v762;
          v796 = v707;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v328 = 0;
          v329 = v133;
          v330 = v132;
          v331 = v696;
          v332 = v697;
          v333 = v698;
          v334 = v699;
          v335 = v700;
          v336 = v701;
          v337 = v702;
          v338 = v703;
          v339 = v704;
          v340 = v705;
          v341 = v706;
          v342 = v707;
          v343 = v708;
          v344 = v709;
          v345 = v710;
          v346 = v711;
          v347 = v712;
          v348 = v713;
          v349 = v715;
          v134 = v695;
          v135 = v694;
          v795 = v763;
          v796 = v708;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v306 = 0;
          v307 = v135;
          v308 = v134;
          v309 = v696;
          v310 = v697;
          v311 = v698;
          v312 = v699;
          v313 = v700;
          v314 = v701;
          v315 = v702;
          v316 = v703;
          v317 = v704;
          v318 = v705;
          v319 = v706;
          v320 = v707;
          v321 = v708;
          v322 = v709;
          v323 = v710;
          v324 = v711;
          v325 = v712;
          v326 = v713;
          v327 = v715;
          v136 = v695;
          v137 = v694;
          v795 = v764;
          v796 = v709;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v284 = 0;
          v285 = v137;
          v286 = v136;
          v287 = v696;
          v288 = v697;
          v289 = v698;
          v290 = v699;
          v291 = v700;
          v292 = v701;
          v293 = v702;
          v294 = v703;
          v295 = v704;
          v296 = v705;
          v297 = v706;
          v298 = v707;
          v299 = v708;
          v300 = v709;
          v301 = v710;
          v302 = v711;
          v303 = v712;
          v304 = v713;
          v305 = v715;
          v138 = v695;
          v139 = v694;
          v795 = v765;
          v796 = v710;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v262 = 0;
          v263 = v139;
          v264 = v138;
          v265 = v696;
          v266 = v697;
          v267 = v698;
          v268 = v699;
          v269 = v700;
          v270 = v701;
          v271 = v702;
          v272 = v703;
          v273 = v704;
          v274 = v705;
          v275 = v706;
          v276 = v707;
          v277 = v708;
          v278 = v709;
          v279 = v710;
          v280 = v711;
          v281 = v712;
          v282 = v713;
          v283 = v715;
          v140 = v695;
          v141 = v694;
          v795 = v766;
          v796 = v711;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v240 = 0;
          v241 = v141;
          v242 = v140;
          v243 = v696;
          v244 = v697;
          v245 = v698;
          v246 = v699;
          v247 = v700;
          v248 = v701;
          v249 = v702;
          v250 = v703;
          v251 = v704;
          v252 = v705;
          v253 = v706;
          v254 = v707;
          v255 = v708;
          v256 = v709;
          v257 = v710;
          v258 = v711;
          v259 = v712;
          v260 = v713;
          v261 = v715;
          v142 = v695;
          v143 = v694;
          v795 = v767;
          v796 = v712;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v218 = 0;
          v219 = v143;
          v220 = v142;
          v221 = v696;
          v222 = v697;
          v223 = v698;
          v224 = v699;
          v225 = v700;
          v226 = v701;
          v227 = v702;
          v228 = v703;
          v229 = v704;
          v230 = v705;
          v231 = v706;
          v232 = v707;
          v233 = v708;
          v234 = v709;
          v235 = v710;
          v236 = v711;
          v237 = v712;
          v238 = v713;
          v239 = v715;
          v144 = v695;
          v145 = v694;
          v795 = v768;
          v796 = v713;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v196 = 0;
          v197 = v145;
          v198 = v144;
          v199 = v696;
          v200 = v697;
          v201 = v698;
          v202 = v699;
          v203 = v700;
          v204 = v701;
          v205 = v702;
          v206 = v703;
          v207 = v704;
          v208 = v705;
          v209 = v706;
          v210 = v707;
          v211 = v708;
          v212 = v709;
          v213 = v710;
          v214 = v711;
          v215 = v712;
          v216 = v713;
          v217 = v715;
          v146 = v695;
          v147 = v694;
          v795 = v769;
          v796 = v715;
          sub_1B03949FC(&v795, &v799, &v798, &v797);
          v174 = 0;
          v175 = v147;
          v176 = v146;
          v177 = v696;
          v178 = v697;
          v179 = v698;
          v180 = v699;
          v181 = v700;
          v182 = v701;
          v183 = v702;
          v184 = v703;
          v185 = v704;
          v186 = v705;
          v187 = v706;
          v188 = v707;
          v189 = v708;
          v190 = v709;
          v191 = v710;
          v192 = v711;
          v193 = v712;
          v194 = v713;
          v195 = v715;
          _os_log_impl(&dword_1B0389000, v718, v719, "[%.*hhx-%.*X] Completing user-initiated download request %{public}u for UID %u (%{iec-bytes}ld).", v638, 0x2Du);
          v173 = 0;
          sub_1B03998A8(v639, 0, v636);
          sub_1B03998A8(v640, v173, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v635 = v174;
        }
      }

      else
      {

        v635 = v720;
      }

      v152 = v635;
      MEMORY[0x1E69E5920](v718);
      (*(v771 + 8))(v774, v770);
      v151 = v804;
      v150 = v804[8];
      MEMORY[0x1E69E5928](v804[8]);
      sub_1B03B2000(v725, v724);
      v149 = sub_1B0E42F18();
      [v150 finishWithResult_];
      MEMORY[0x1E69E5920](v149);
      sub_1B0391D50(v725, v724);
      MEMORY[0x1E69E5920](v150);
      sub_1B09907DC(v151);
    }

    sub_1B039E440(v805);
    sub_1B0391D50(v725, v724);
    result = v720;
    v728 = v720;
  }

  return result;
}