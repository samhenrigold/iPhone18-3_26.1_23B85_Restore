uint64_t sub_1A39BB550@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v428 = a2;
  v422 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150, &qword_1A3A72C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v414 - v7;
  v9 = sub_1A3A30090();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v414 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChromeElementIcon(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v414 - v20;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v414 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v43 = &v414 - v42;
  switch(a1)
  {
    case 0uLL:
      v44 = v39;
      v45 = sub_1A39FDA64(0);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v45);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v46 = sub_1A3A31810();

      v47 = CAMLocalizedFrameworkString(v46, 0);

      v48 = sub_1A3A31850();
      v424 = v49;
      v425 = v48;

      v423 = type metadata accessor for ChromeMenu(0);
      v50 = v428;
      sub_1A39AE314(0, 0, 1, v428, v422 + *(v423 + 24));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308, &unk_1A3A7FE00);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v52 = *(v44 + 80);
      v427 = v43;
      v53 = (v52 + 16) & ~v52;
      v54 = swift_allocObject();
      v421 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v54 + v53, type metadata accessor for ChromeElementIcon);
      v55 = swift_allocObject();
      v426 = v29;
      v56 = v55;
      v420 = sub_1A39C25D8;
      *(v55 + 16) = sub_1A39C25D8;
      *(v55 + 24) = v50;
      swift_getKeyPath(byte_1A3A7FDD0);
      v419 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v50;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v46) = *(v50 + 752);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C3930;
      *(v51 + 72) = v54;
      *(v51 + 80) = (v46 & 1) == 0;
      *(v51 + 81) = 0;
      *(v51 + 82) = v433;
      *(v51 + 86) = WORD2(v433);
      *(v51 + 88) = sub_1A39C391C;
      *(v51 + 96) = v56;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v57 = v426;
      v58 = v427;
      sub_1A38907D0(v427, v426);
      v59 = swift_allocObject();
      sub_1A39C1510(v57, v59 + v53, v421);
      v60 = swift_allocObject();
      *(v60 + 16) = v420;
      *(v60 + 24) = v50;
      swift_getKeyPath(byte_1A3A7FDD0);
      v435 = v50;
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v47) = *(v50 + 752);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C3930;
      *(v51 + 160) = v59;
      *(v51 + 168) = v47;
      *(v51 + 169) = 0;
      *(v51 + 170) = v435;
      *(v51 + 174) = WORD2(v435);
      *(v51 + 176) = sub_1A39C3920;
      *(v51 + 184) = v60;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v58);
      v62 = v422;
      *v422 = 0;
      goto LABEL_94;
    case 3uLL:
      v324 = v40;
      v325 = sub_1A39FDA64(3);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v325);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v326 = sub_1A3A31810();

      v327 = CAMLocalizedFrameworkString(v326, 0);

      v328 = sub_1A3A31850();
      v423 = v329;
      v424 = v328;

      v425 = v324;
      v330 = v428;
      sub_1A39AE314(3, 0, 1, v428, v324);
      v435 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v331 = v435;
      v332 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v333 = swift_allocObject();
      *(v333 + 16) = 0;
      v334 = swift_allocObject();
      *(v334 + 16) = 0;
      v335 = swift_allocObject();
      *(v335 + 16) = sub_1A39C24F8;
      *(v335 + 24) = v330;
      *(v335 + 32) = 0;
      v336 = swift_allocObject();
      *(v336 + 16) = 0;
      swift_getKeyPath(byte_1A3A80040);
      v433 = v330;
      v337 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      swift_retain_n();
      v426 = v337;
      v427 = v332;
      sub_1A3A2F080();

      LODWORD(v332) = *(v330 + 793);

      v338 = v332 == 0;
      v340 = *(v331 + 16);
      v339 = *(v331 + 24);
      if (v340 >= v339 >> 1)
      {
        sub_1A3956B60((v339 > 1), v340 + 1, 1);
        v331 = v435;
      }

      *(v331 + 16) = v340 + 1;
      v341 = v331 + 88 * v340;
      *(v341 + 32) = sub_1A39C2580;
      *(v341 + 40) = v333;
      *(v341 + 48) = sub_1A39047E8;
      *(v341 + 56) = 0;
      *(v341 + 64) = sub_1A39C2588;
      *(v341 + 72) = v334;
      *(v341 + 80) = v338;
      *(v341 + 81) = 0;
      *(v341 + 82) = v431;
      *(v341 + 86) = v432;
      *(v341 + 88) = sub_1A39C3914;
      *(v341 + 96) = v335;
      *(v341 + 104) = sub_1A39C2590;
      *(v341 + 112) = v336;
      v342 = swift_allocObject();
      *(v342 + 16) = 1;
      v343 = swift_allocObject();
      *(v343 + 16) = 1;
      v344 = swift_allocObject();
      *(v344 + 16) = sub_1A39C24F8;
      *(v344 + 24) = v330;
      *(v344 + 32) = 1;
      v345 = swift_allocObject();
      *(v345 + 16) = 1;
      swift_getKeyPath(byte_1A3A80040);
      v433 = v330;
      swift_retain_n();
      sub_1A3A2F080();

      v346 = *(v330 + 793);

      v347 = v346 == 1;
      v349 = *(v331 + 16);
      v348 = *(v331 + 24);
      if (v349 >= v348 >> 1)
      {
        sub_1A3956B60((v348 > 1), v349 + 1, 1);
        v331 = v435;
      }

      *(v331 + 16) = v349 + 1;
      v350 = v331 + 88 * v349;
      *(v350 + 32) = sub_1A39C38FC;
      *(v350 + 40) = v342;
      *(v350 + 48) = sub_1A39047E8;
      *(v350 + 56) = 0;
      *(v350 + 64) = sub_1A39C3908;
      *(v350 + 72) = v343;
      *(v350 + 80) = v347;
      *(v350 + 81) = 0;
      v351 = v430;
      *(v350 + 82) = v429;
      *(v350 + 86) = v351;
      *(v350 + 88) = sub_1A39C3914;
      *(v350 + 96) = v344;
      *(v350 + 104) = sub_1A39C3900;
      *(v350 + 112) = v345;
      v352 = swift_allocObject();
      *(v352 + 16) = 2;
      v421 = swift_allocObject();
      *(v421 + 16) = 2;
      v353 = swift_allocObject();
      *(v353 + 16) = sub_1A39C24F8;
      *(v353 + 24) = v330;
      *(v353 + 32) = 2;
      v354 = swift_allocObject();
      *(v354 + 16) = 2;
      swift_getKeyPath(byte_1A3A80040);
      v433 = v330;
      swift_retain_n();
      sub_1A3A2F080();

      v355 = *(v330 + 793);

      v356 = v355 == 2;
      v358 = *(v331 + 16);
      v357 = *(v331 + 24);
      if (v358 >= v357 >> 1)
      {
        sub_1A3956B60((v357 > 1), v358 + 1, 1);
      }

      v231 = v435;
      *(v435 + 16) = v358 + 1;
      v359 = v231 + 88 * v358;
      *(v359 + 32) = sub_1A39C38FC;
      *(v359 + 40) = v352;
      *(v359 + 48) = sub_1A39047E8;
      *(v359 + 56) = 0;
      v360 = v421;
      *(v359 + 64) = sub_1A39C3908;
      *(v359 + 72) = v360;
      *(v359 + 80) = v356;
      *(v359 + 81) = 0;
      *(v359 + 82) = v433;
      *(v359 + 86) = WORD2(v433);
      *(v359 + 88) = sub_1A39C3914;
      *(v359 + 96) = v353;
      *(v359 + 104) = sub_1A39C3900;
      *(v359 + 112) = v354;

      v234 = 3;
      goto LABEL_88;
    case 7uLL:
      v235 = v37;
      v236 = sub_1A39FDA64(7);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v236);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v237 = sub_1A3A31810();

      v238 = CAMLocalizedFrameworkString(v237, 0);

      v421 = sub_1A3A31850();
      v423 = v239;

      v424 = v235;
      sub_1A39AE314(7, 0, 1, v428, v235);
      v435 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v240 = 0;
      v241 = v435;
      v425 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v242 = v428;
      while (1)
      {
        v427 = v240;
        v243 = *(&unk_1F16556A0 + v240 + 32);
        v244 = swift_allocObject();
        *(v244 + 16) = v243;
        v426 = swift_allocObject();
        *(v426 + 2) = v243;
        v245 = swift_allocObject();
        v245[2] = sub_1A39C2418;
        v245[3] = v242;
        v245[4] = v243;
        v246 = swift_allocObject();
        *(v246 + 16) = v243;
        swift_getKeyPath(byte_1A3A7FBA0);
        v433 = v242;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        swift_retain_n();
        sub_1A3A2F080();

        v247 = *(v242 + 616);
        swift_getKeyPath(a8_5);
        v433 = v247;
        sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel, &unk_1A3A73F60);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v248 = *(v247 + 24);

        v249 = v248 == v243;
        v435 = v241;
        v251 = *(v241 + 16);
        v250 = *(v241 + 24);
        if (v251 >= v250 >> 1)
        {
          sub_1A3956B60((v250 > 1), v251 + 1, 1);
          v241 = v435;
        }

        *(v241 + 16) = v251 + 1;
        v252 = v241 + 88 * v251;
        *(v252 + 32) = sub_1A39C24A0;
        *(v252 + 40) = v244;
        *(v252 + 48) = sub_1A39047E8;
        *(v252 + 56) = 0;
        v253 = v426;
        *(v252 + 64) = sub_1A39C24A8;
        *(v252 + 72) = v253;
        *(v252 + 80) = v249;
        *(v252 + 81) = 0;
        LOWORD(v253) = v432;
        *(v252 + 82) = v431;
        *(v252 + 86) = v253;
        *(v252 + 88) = sub_1A39C24EC;
        *(v252 + 96) = v245;
        *(v252 + 104) = sub_1A39C24F0;
        *(v252 + 112) = v246;
        if (v427 == 16)
        {
          break;
        }

        v240 = (v427 + 8);
      }

      v254 = v422;
      *v422 = 7;
      v255 = v423;
      v254[1] = v421;
      v254[2] = v255;
      v256 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v424, v254 + *(v256 + 24), type metadata accessor for ChromeElementIcon);
      *(v254 + *(v256 + 28)) = v241;
      v85 = 7;
      return sub_1A38A8F64(v85);
    case 9uLL:
      v308 = v39;
      v309 = sub_1A39FDA64(9);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v309);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v310 = sub_1A3A31810();

      v311 = CAMLocalizedFrameworkString(v310, 0);

      v312 = sub_1A3A31850();
      v424 = v313;
      v425 = v312;

      v423 = type metadata accessor for ChromeMenu(0);
      v314 = v428;
      sub_1A39AE314(9, 0, 1, v428, v422 + *(v423 + 24));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308, &unk_1A3A7FE00);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v315 = *(v308 + 80);
      v427 = v43;
      v316 = (v315 + 16) & ~v315;
      v317 = swift_allocObject();
      v421 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v317 + v316, type metadata accessor for ChromeElementIcon);
      v318 = swift_allocObject();
      v426 = v29;
      v319 = v318;
      v420 = sub_1A39C2410;
      *(v318 + 16) = sub_1A39C2410;
      *(v318 + 24) = v314;
      swift_getKeyPath(byte_1A3A7FB50);
      v419 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v314;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v310) = *(v314 + 755);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C3930;
      *(v51 + 72) = v317;
      *(v51 + 80) = (v310 & 1) == 0;
      *(v51 + 81) = 0;
      *(v51 + 82) = v433;
      *(v51 + 86) = WORD2(v433);
      *(v51 + 88) = sub_1A39C391C;
      *(v51 + 96) = v319;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v320 = v426;
      v321 = v427;
      sub_1A38907D0(v427, v426);
      v322 = swift_allocObject();
      sub_1A39C1510(v320, v322 + v316, v421);
      v323 = swift_allocObject();
      *(v323 + 16) = v420;
      *(v323 + 24) = v314;
      swift_getKeyPath(byte_1A3A7FB50);
      v435 = v314;
      swift_retain_n();
      sub_1A3A2F080();

      LOBYTE(v311) = *(v314 + 755);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C3930;
      *(v51 + 160) = v322;
      *(v51 + 168) = v311;
      *(v51 + 169) = 0;
      *(v51 + 170) = v435;
      *(v51 + 174) = WORD2(v435);
      *(v51 + 176) = sub_1A39C3920;
      *(v51 + 184) = v323;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v321);
      v171 = 9;
      goto LABEL_93;
    case 0xAuLL:
      v277 = v34;
      v278 = sub_1A39FDA64(10);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v278);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v279 = sub_1A3A31810();

      v280 = CAMLocalizedFrameworkString(v279, 0);

      v281 = sub_1A3A31850();
      v425 = v282;
      v426 = v281;

      v427 = v277;
      v283 = v428;
      sub_1A39AE314(10, 0, 1, v428, v277);
      v435 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 2, 0);
      v284 = v435;
      v285 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v286 = swift_allocObject();
      *(v286 + 16) = 1;
      v287 = swift_allocObject();
      *(v287 + 16) = 1;
      v288 = swift_allocObject();
      v288[2] = sub_1A39C23B0;
      v288[3] = v283;
      v288[4] = 1;
      v289 = swift_allocObject();
      *(v289 + 16) = 1;
      swift_getKeyPath(aX_13);
      v433 = v283;
      v290 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      swift_retain_n();
      v423 = v290;
      v424 = v285;
      sub_1A3A2F080();

      v291 = *(v283 + 1072);

      v292 = v291 == 1;
      v294 = *(v284 + 16);
      v293 = *(v284 + 24);
      if (v294 >= v293 >> 1)
      {
        sub_1A3956B60((v293 > 1), v294 + 1, 1);
        v284 = v435;
      }

      *(v284 + 16) = v294 + 1;
      v295 = v284 + 88 * v294;
      *(v295 + 32) = sub_1A39C23B8;
      *(v295 + 40) = v286;
      *(v295 + 48) = sub_1A39047E8;
      *(v295 + 56) = 0;
      *(v295 + 64) = sub_1A39C23C0;
      *(v295 + 72) = v287;
      *(v295 + 80) = v292;
      *(v295 + 81) = 0;
      *(v295 + 82) = v431;
      *(v295 + 86) = v432;
      *(v295 + 88) = sub_1A39C3910;
      *(v295 + 96) = v288;
      *(v295 + 104) = sub_1A39C23C8;
      *(v295 + 112) = v289;
      v296 = swift_allocObject();
      *(v296 + 16) = 0;
      v421 = swift_allocObject();
      *(v421 + 2) = 0;
      v297 = swift_allocObject();
      v297[2] = sub_1A39C23B0;
      v297[3] = v283;
      v297[4] = 0;
      v298 = swift_allocObject();
      *(v298 + 16) = 0;
      swift_getKeyPath(aX_13);
      v433 = v283;
      swift_retain_n();
      sub_1A3A2F080();

      v299 = *(v283 + 1072);

      v300 = v299 == 0;
      v302 = *(v284 + 16);
      v301 = *(v284 + 24);
      if (v302 >= v301 >> 1)
      {
        sub_1A3956B60((v301 > 1), v302 + 1, 1);
        v284 = v435;
      }

      *(v284 + 16) = v302 + 1;
      v303 = v284 + 88 * v302;
      *(v303 + 32) = sub_1A39C38F0;
      *(v303 + 40) = v296;
      *(v303 + 48) = sub_1A39047E8;
      *(v303 + 56) = 0;
      v304 = v421;
      *(v303 + 64) = sub_1A39C3938;
      *(v303 + 72) = v304;
      *(v303 + 80) = v300;
      *(v303 + 81) = 0;
      LOWORD(v304) = WORD2(v433);
      *(v303 + 82) = v433;
      *(v303 + 86) = v304;
      *(v303 + 88) = sub_1A39C3910;
      *(v303 + 96) = v297;
      *(v303 + 104) = sub_1A39C38F4;
      *(v303 + 112) = v298;

      v305 = v422;
      *v422 = 10;
      v306 = v425;
      v305[1] = v426;
      v305[2] = v306;
      v307 = type metadata accessor for ChromeMenu(0);
      result = sub_1A39C1510(v427, v305 + *(v307 + 24), type metadata accessor for ChromeElementIcon);
      *(v305 + *(v307 + 28)) = v284;
      return result;
    case 0xEuLL:
      v172 = v41;
      v173 = sub_1A39FDA64(14);
      v116 = v10;
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v173);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v174 = sub_1A3A31810();

      v175 = CAMLocalizedFrameworkString(v174, 0);

      v176 = sub_1A3A31850();
      v417 = v177;
      v418 = v176;

      v419 = v172;
      v178 = v172;
      v179 = v428;
      sub_1A39AE314(14, 0, 1, v428, v178);
      swift_getKeyPath(byte_1A3A7F7E0);
      v180 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v179;
      v425 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v426 = v180;
      sub_1A3A2F080();

      v4 = *(v179 + 1128);
      v181 = objc_opt_self();
      sub_1A3A2EA50();
      v182 = [v181 currentTraitCollection];
      v183 = [v182 preferredContentSizeCategory];

      sub_1A3A300A0();
      v184 = *(v116 + 48);
      if (v184(v8, 1, v9) == 1)
      {
        v185 = v116;
        (*(v116 + 104))(v12, *MEMORY[0x1E697F680], v9);
        if (v184(v8, 1, v9) != 1)
        {
          sub_1A3913464(v8);
        }
      }

      else
      {
        v185 = v116;
        (*(v116 + 32))(v12, v8, v9);
      }

      swift_getKeyPath(byte_1A3A7FFA0);
      v115 = v428;
      v435 = v428;
      sub_1A3A2F080();

      if (*(v115 + 664))
      {
        if (*(v115 + 664) == 1)
        {
          v387 = 0xE90000000000006FLL;
        }

        else
        {
          v387 = 0xEF6873616C732E6FLL;
        }
      }

      else
      {
        v387 = 0x80000001A3AA75D0;
      }

      v420 = v387;
      (*(v185 + 8))(v12, v9);
      v117 = *(v4 + 16);
      sub_1A3A2EA60();
      v424 = v117;
      if (v117)
      {
        v14 = 0;
        v400 = MEMORY[0x1E69E7CC0];
        v421 = (v4 + 32);
        v423 = v4;
        do
        {
          v118 = *(v4 + 16);
          if (v14 >= v118)
          {
            goto LABEL_123;
          }

          LODWORD(v115) = *(v421 + v14);
          v116 = swift_allocObject();
          *(v116 + 16) = v115;
          v427 = swift_allocObject();
          v427[16] = v115;
          a1 = swift_allocObject();
          v117 = v428;
          *(a1 + 16) = sub_1A39C23A0;
          *(a1 + 24) = v117;
          *(a1 + 32) = v115;
          v12 = swift_allocObject();
          v12[16] = v115;
          v8 = swift_allocObject();
          v8[16] = v115;
          swift_getKeyPath(byte_1A3A7FFA0);
          v435 = v117;
          swift_retain_n();
          sub_1A3A2F080();

          v401 = *(v117 + 664);

          LOBYTE(v115) = v401 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v400 = sub_1A3956550(0, *(v400 + 2) + 1, 1, v400);
          }

          v403 = *(v400 + 2);
          v402 = *(v400 + 3);
          if (v403 >= v402 >> 1)
          {
            v400 = sub_1A3956550((v402 > 1), v403 + 1, 1, v400);
          }

          ++v14;
          *(v400 + 2) = v403 + 1;
          v404 = &v400[88 * v403];
          *(v404 + 4) = sub_1A39C38F8;
          *(v404 + 5) = v116;
          *(v404 + 6) = sub_1A39047E8;
          *(v404 + 7) = v12;
          v405 = v427;
          *(v404 + 8) = sub_1A39C23A8;
          *(v404 + 9) = v405;
          v404[80] = v115;
          v404[81] = 0;
          LOWORD(v405) = WORD2(v435);
          *(v404 + 82) = v435;
          *(v404 + 43) = v405;
          *(v404 + 11) = sub_1A39C3914;
          *(v404 + 12) = a1;
          *(v404 + 13) = sub_1A39C3928;
          *(v404 + 14) = v8;
          v4 = v423;
        }

        while (v424 != v14);
      }

      else
      {
        v400 = MEMORY[0x1E69E7CC0];
      }

      v406 = v422;
      *v422 = 14;
      v407 = v417;
      v406[1] = v418;
      v406[2] = v407;
      v408 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v419, v406 + *(v408 + 24), type metadata accessor for ChromeElementIcon);
      *(v406 + *(v408 + 28)) = v400;
      v85 = 14;
      return sub_1A38A8F64(v85);
    case 0x11uLL:
      v207 = v38;
      v208 = sub_1A39FDA64(17);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v208);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v209 = sub_1A3A31810();

      v210 = CAMLocalizedFrameworkString(v209, 0);

      v211 = sub_1A3A31850();
      v423 = v212;
      v424 = v211;

      v425 = v207;
      v4 = v428;
      sub_1A39AE314(17, 0, 1, v428, v207);
      v435 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v213 = v435;
      v214 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = v4;
      v116 = swift_allocObject();
      *(v116 + 16) = 0;
      v8 = swift_allocObject();
      *(v8 + 2) = sub_1A39C22F4;
      *(v8 + 3) = v4;
      v8[32] = 0;
      v12 = swift_allocObject();
      v12[16] = 0;
      *(v12 + 3) = v4;
      swift_getKeyPath(byte_1A3A7FF50);
      v433 = v4;
      v115 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      swift_retain_n();
      v426 = v115;
      v427 = v214;
      sub_1A3A2F080();

      LOBYTE(v115) = *(v4 + 889) == 0;
      v117 = *(v213 + 16);
      v118 = *(v213 + 24);
      a1 = v117 + 1;
      if (v117 < v118 >> 1)
      {
        goto LABEL_52;
      }

      goto LABEL_126;
    case 0x12uLL:
      v133 = v33;
      v134 = sub_1A39FDA64(18);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v134);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v135 = sub_1A3A31810();

      v136 = CAMLocalizedFrameworkString(v135, 0);

      v137 = sub_1A3A31850();
      v415 = v138;
      v416 = v137;

      v417 = v133;
      v139 = v133;
      v115 = v428;
      sub_1A39AE314(18, 0, 1, v428, v139);
      swift_getKeyPath(aP_26);
      v140 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v115;
      v141 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v423 = v140;
      v421 = v141;
      sub_1A3A2F080();

      v117 = *(v115 + 960);
      v142 = *(v117 + 16);
      sub_1A3A2EA60();
      sub_1A3A2EA50();
      v420 = v142;
      if (v142)
      {
        v14 = 0;
        v116 = MEMORY[0x1E69E7CC0];
        v418 = (v117 + 32);
        v419 = v117;
        v8 = v421;
        do
        {
          v118 = *(v117 + 16);
          if (v14 >= v118)
          {
            goto LABEL_122;
          }

          LODWORD(v115) = v418[v14];
          v426 = swift_allocObject();
          v426[16] = v115;
          v427 = swift_allocObject();
          v427[16] = v115;
          a1 = swift_allocObject();
          v143 = v428;
          *(a1 + 16) = sub_1A39C220C;
          *(a1 + 24) = v143;
          *(a1 + 32) = v115;
          v12 = swift_allocObject();
          v12[16] = v115;
          v425 = swift_allocObject();
          *(v425 + 16) = v115;
          swift_getKeyPath(aX_19);
          v435 = v143;
          swift_retain_n();
          sub_1A3A2F080();

          v144 = *(v143 + 968);

          LODWORD(v424) = v144 == v115;
          swift_getKeyPath(a8_7);
          v435 = v143;
          sub_1A3A2EA60();
          sub_1A3A2F080();

          v145 = *(v143 + 969);

          LOBYTE(v115) = v145 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_1A3956550(0, *(v116 + 16) + 1, 1, v116);
          }

          v4 = *(v116 + 16);
          v146 = *(v116 + 24);
          v117 = v419;
          if (v4 >= v146 >> 1)
          {
            v116 = sub_1A3956550((v146 > 1), v4 + 1, 1, v116);
          }

          ++v14;
          *(v116 + 16) = v4 + 1;
          v147 = v116 + 88 * v4;
          v149 = v426;
          v148 = v427;
          *(v147 + 32) = sub_1A39C38E8;
          *(v147 + 40) = v149;
          *(v147 + 48) = sub_1A39047E8;
          *(v147 + 56) = v12;
          *(v147 + 64) = sub_1A39C3918;
          *(v147 + 72) = v148;
          *(v147 + 80) = v424;
          *(v147 + 81) = v115;
          LOWORD(v148) = WORD2(v435);
          *(v147 + 82) = v435;
          *(v147 + 86) = v148;
          *(v147 + 88) = sub_1A39C3914;
          *(v147 + 96) = a1;
          v150 = v425;
          *(v147 + 104) = sub_1A39C2214;
          *(v147 + 112) = v150;
        }

        while (v420 != v14);
      }

      else
      {
        v116 = MEMORY[0x1E69E7CC0];
      }

      v391 = v422;
      *v422 = 18;
      v392 = v415;
      v391[1] = v416;
      v391[2] = v392;
      v393 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v417, v391 + *(v393 + 24), type metadata accessor for ChromeElementIcon);
      *(v391 + *(v393 + 28)) = v116;
      v85 = 18;
      return sub_1A38A8F64(v85);
    case 0x13uLL:
      v259 = v32;
      v260 = sub_1A39FDA64(19);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v260);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v261 = sub_1A3A31810();

      v262 = CAMLocalizedFrameworkString(v261, 0);

      v263 = sub_1A3A31850();
      v415 = v264;
      v416 = v263;

      v417 = v259;
      v265 = v259;
      v115 = v428;
      sub_1A39AE314(19, 0, 1, v428, v265);
      swift_getKeyPath(byte_1A3A7F970);
      v266 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v115;
      v267 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v423 = v266;
      v421 = v267;
      sub_1A3A2F080();

      v117 = *(v115 + 1056);
      v268 = *(v117 + 16);
      sub_1A3A2EA60();
      sub_1A3A2EA50();
      v420 = v268;
      if (v268)
      {
        v14 = 0;
        v116 = MEMORY[0x1E69E7CC0];
        v418 = (v117 + 32);
        v419 = v117;
        v8 = v421;
        do
        {
          v118 = *(v117 + 16);
          if (v14 >= v118)
          {
            goto LABEL_125;
          }

          LODWORD(v115) = v418[v14];
          v426 = swift_allocObject();
          v426[16] = v115;
          v427 = swift_allocObject();
          v427[16] = v115;
          a1 = swift_allocObject();
          v269 = v428;
          *(a1 + 16) = sub_1A39C21A0;
          *(a1 + 24) = v269;
          *(a1 + 32) = v115;
          v12 = swift_allocObject();
          v12[16] = v115;
          v425 = swift_allocObject();
          *(v425 + 16) = v115;
          swift_getKeyPath(byte_1A3A7FE60);
          v435 = v269;
          swift_retain_n();
          sub_1A3A2F080();

          v270 = *(v269 + 1064);

          LODWORD(v424) = v270 == v115;
          swift_getKeyPath(aX_20);
          v435 = v269;
          sub_1A3A2EA60();
          sub_1A3A2F080();

          v271 = *(v269 + 1065);

          LOBYTE(v115) = v271 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_1A3956550(0, *(v116 + 16) + 1, 1, v116);
          }

          v4 = *(v116 + 16);
          v272 = *(v116 + 24);
          v117 = v419;
          if (v4 >= v272 >> 1)
          {
            v116 = sub_1A3956550((v272 > 1), v4 + 1, 1, v116);
          }

          ++v14;
          *(v116 + 16) = v4 + 1;
          v273 = v116 + 88 * v4;
          v275 = v426;
          v274 = v427;
          *(v273 + 32) = sub_1A39C21A8;
          *(v273 + 40) = v275;
          *(v273 + 48) = sub_1A39C21FC;
          *(v273 + 56) = v12;
          *(v273 + 64) = sub_1A39C3918;
          *(v273 + 72) = v274;
          *(v273 + 80) = v424;
          *(v273 + 81) = v115;
          LOWORD(v274) = WORD2(v435);
          *(v273 + 82) = v435;
          *(v273 + 86) = v274;
          *(v273 + 88) = sub_1A39C3914;
          *(v273 + 96) = a1;
          v276 = v425;
          *(v273 + 104) = sub_1A39C2204;
          *(v273 + 112) = v276;
        }

        while (v420 != v14);
      }

      else
      {
        v116 = MEMORY[0x1E69E7CC0];
      }

      v397 = v422;
      *v422 = 19;
      v398 = v415;
      v397[1] = v416;
      v397[2] = v398;
      v399 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v417, v397 + *(v399 + 24), type metadata accessor for ChromeElementIcon);
      *(v397 + *(v399 + 28)) = v116;
      v85 = 19;
      return sub_1A38A8F64(v85);
    case 0x15uLL:
      v108 = v31;
      v109 = sub_1A39FDA64(21);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v109);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v110 = sub_1A3A31810();

      v111 = CAMLocalizedFrameworkString(v110, 0);

      v112 = sub_1A3A31850();
      v415 = v113;
      v416 = v112;

      v417 = v108;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath(byte_1A3A7FF00);
      v114 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v115 = v428;
      v435 = v428;
      v116 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      v8 = *(v115 + 880);
      v117 = *(v8 + 2);
      swift_retain_n();
      sub_1A3A2EA50();
      v420 = v117;
      if (!v117)
      {
        v12 = MEMORY[0x1E69E7CC0];
LABEL_100:

        v388 = v422;
        *v422 = 21;
        v389 = v415;
        v388[1] = v416;
        v388[2] = v389;
        v390 = type metadata accessor for ChromeMenu(0);
        sub_1A39C1510(v417, v388 + *(v390 + 24), type metadata accessor for ChromeElementIcon);
        *(v388 + *(v390 + 28)) = v12;
        v85 = 21;
        return sub_1A38A8F64(v85);
      }

      v421 = v116;
      v423 = v114;
      v4 = 0;
      v418 = v8 + 32;
      v12 = MEMORY[0x1E69E7CC0];
      v419 = v8;
      break;
    case 0x17uLL:
      v257 = v422;
      v258 = v428;

      return sub_1A39C05D4(0x17uLL, v258, v257);
    case 0x1AuLL:
      v63 = sub_1A39FDA64(26);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      v64 = v21;
      MEMORY[0x1A58F7770](v63);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v65 = sub_1A3A31810();

      v66 = CAMLocalizedFrameworkString(v65, 0);

      v423 = sub_1A3A31850();
      v424 = v67;

      v425 = v64;
      sub_1A39AE314(26, 0, 1, v428, v64);
      v435 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 4, 0);
      v68 = 0;
      v69 = v435;
      v426 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      while (1)
      {
        v427 = v68;
        v70 = *(&unk_1F1655700 + v68 + 32);
        v71 = swift_allocObject();
        *(v71 + 16) = v70;
        v72 = swift_allocObject();
        *(v72 + 16) = v70;
        v73 = swift_allocObject();
        v74 = v428;
        *(v73 + 16) = sub_1A39C2314;
        *(v73 + 24) = v74;
        *(v73 + 32) = v70;
        v75 = swift_allocObject();
        *(v75 + 16) = v70;
        swift_getKeyPath(byte_1A3A7FF78);
        v433 = v74;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        swift_retain_n();
        sub_1A3A2F080();

        v76 = *(v74 + 792);

        v77 = v76 == v70;
        v435 = v69;
        v79 = *(v69 + 16);
        v78 = *(v69 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1A3956B60((v78 > 1), v79 + 1, 1);
          v69 = v435;
        }

        *(v69 + 16) = v79 + 1;
        v80 = v69 + 88 * v79;
        *(v80 + 32) = sub_1A39C38EC;
        *(v80 + 40) = v71;
        *(v80 + 48) = sub_1A39047E8;
        *(v80 + 56) = 0;
        *(v80 + 64) = sub_1A39C231C;
        *(v80 + 72) = v72;
        *(v80 + 80) = v77;
        *(v80 + 81) = 0;
        v81 = v432;
        *(v80 + 82) = v431;
        *(v80 + 86) = v81;
        *(v80 + 88) = sub_1A39C2380;
        *(v80 + 96) = v73;
        *(v80 + 104) = sub_1A39C2384;
        *(v80 + 112) = v75;
        if (v427 == 3)
        {
          break;
        }

        v68 = (v427 + 1);
      }

      v82 = v422;
      *v422 = 26;
      v83 = v424;
      v82[1] = v423;
      v82[2] = v83;
      v84 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v425, v82 + *(v84 + 24), type metadata accessor for ChromeElementIcon);
      *(v82 + *(v84 + 28)) = v69;
      v85 = 26;
      return sub_1A38A8F64(v85);
    case 0x1BuLL:
      v86 = v36;
      v87 = sub_1A39FDA64(27);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v87);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v88 = sub_1A3A31810();

      v89 = CAMLocalizedFrameworkString(v88, 0);

      v421 = sub_1A3A31850();
      v423 = v90;

      v424 = v86;
      sub_1A39AE314(27, 0, 1, v428, v86);
      v435 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA60();
      sub_1A3956B60(0, 3, 0);
      v91 = 0;
      v92 = v435;
      v425 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v93 = v428;
      while (1)
      {
        v427 = v91;
        v94 = *(&unk_1F16556D8 + v91 + 32);
        v95 = swift_allocObject();
        *(v95 + 16) = v94;
        v426 = swift_allocObject();
        v426[16] = v94;
        v96 = swift_allocObject();
        *(v96 + 16) = sub_1A39C23D0;
        *(v96 + 24) = v93;
        *(v96 + 32) = v94;
        v97 = swift_allocObject();
        *(v97 + 16) = v94;
        swift_getKeyPath(aP_16);
        v433 = v93;
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        swift_retain_n();
        sub_1A3A2F080();

        v98 = *(v93 + 624);
        swift_getKeyPath(aX_16);
        v433 = v98;
        sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v99 = *(v98 + 20);

        v100 = v99 == v94;
        v435 = v92;
        v102 = *(v92 + 16);
        v101 = *(v92 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_1A3956B60((v101 > 1), v102 + 1, 1);
          v92 = v435;
        }

        *(v92 + 16) = v102 + 1;
        v103 = v92 + 88 * v102;
        *(v103 + 32) = sub_1A39C23D8;
        *(v103 + 40) = v95;
        *(v103 + 48) = sub_1A39047E8;
        *(v103 + 56) = 0;
        v104 = v426;
        *(v103 + 64) = sub_1A39C3918;
        *(v103 + 72) = v104;
        *(v103 + 80) = v100;
        *(v103 + 81) = 0;
        LOWORD(v104) = v432;
        *(v103 + 82) = v431;
        *(v103 + 86) = v104;
        *(v103 + 88) = sub_1A39C3914;
        *(v103 + 96) = v96;
        *(v103 + 104) = sub_1A39C23F4;
        *(v103 + 112) = v97;
        if (v427 == 2)
        {
          break;
        }

        v91 = (v427 + 1);
      }

      v105 = v422;
      *v422 = 27;
      v106 = v423;
      v105[1] = v421;
      v105[2] = v106;
      v107 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v424, v105 + *(v107 + 24), type metadata accessor for ChromeElementIcon);
      *(v105 + *(v107 + 28)) = v92;
      v85 = 27;
      return sub_1A38A8F64(v85);
    case 0x1CuLL:
      v186 = v35;
      v187 = sub_1A39FDA64(28);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v187);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v188 = sub_1A3A31810();

      v189 = CAMLocalizedFrameworkString(v188, 0);

      v190 = sub_1A3A31850();
      v414 = v191;
      v415 = v190;

      v416 = v186;
      v192 = v186;
      v115 = v428;
      sub_1A39AE314(28, 0, 1, v428, v192);
      swift_getKeyPath(aP_28);
      v193 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v115;
      v420 = sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v421 = v193;
      sub_1A3A2F080();

      v117 = *(v115 + 864);
      v194 = *(v117 + 16);
      sub_1A3A2EA60();
      sub_1A3A2EA50();
      v419 = v194;
      if (v194)
      {
        v116 = 0;
        v8 = MEMORY[0x1E69E7CC0];
        v417 = v117 + 32;
        v418 = v117;
        v12 = v421;
        do
        {
          v118 = *(v117 + 16);
          if (v116 >= v118)
          {
            goto LABEL_124;
          }

          v115 = *(v417 + 8 * v116);
          v426 = swift_allocObject();
          *(v426 + 2) = v115;
          v427 = swift_allocObject();
          *(v427 + 2) = v115;
          a1 = swift_allocObject();
          v195 = v428;
          *(a1 + 16) = sub_1A39C2284;
          *(a1 + 24) = v195;
          *(a1 + 32) = v115;
          v196 = swift_allocObject();
          *(v196 + 16) = v115;
          v425 = swift_allocObject();
          *(v425 + 16) = v115;
          swift_getKeyPath(a0_14);
          v435 = v195;
          swift_retain_n();
          v14 = v420;
          sub_1A3A2F080();

          v197 = *(v195 + 984);
          LODWORD(v424) = *(v195 + 992);

          LODWORD(v423) = v197 == v115;
          swift_getKeyPath(byte_1A3A7F510);
          v435 = v195;
          sub_1A3A2EA60();
          sub_1A3A2F080();

          v198 = *(v195 + 1024);
          v4 = *(v195 + 1032);

          LOBYTE(v115) = v198 == v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A3956550(0, *(v8 + 2) + 1, 1, v8);
          }

          v200 = *(v8 + 2);
          v199 = *(v8 + 3);
          if (v200 >= v199 >> 1)
          {
            v8 = sub_1A3956550((v199 > 1), v200 + 1, 1, v8);
          }

          ++v116;
          v201 = v423 & ~v424;
          *(v8 + 2) = v200 + 1;
          v202 = &v8[88 * v200];
          v203 = v426;
          *(v202 + 4) = sub_1A39C390C;
          *(v202 + 5) = v203;
          *(v202 + 6) = sub_1A39047E8;
          *(v202 + 7) = v196;
          v204 = v427;
          *(v202 + 8) = sub_1A39C3918;
          *(v202 + 9) = v204;
          v202[80] = v201;
          v202[81] = v115 & ~v4;
          v205 = WORD2(v435);
          *(v202 + 82) = v435;
          *(v202 + 43) = v205;
          *(v202 + 11) = sub_1A39C3910;
          *(v202 + 12) = a1;
          v206 = v425;
          *(v202 + 13) = sub_1A39C3924;
          *(v202 + 14) = v206;
          v117 = v418;
        }

        while (v419 != v116);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      v394 = v422;
      *v422 = 28;
      v395 = v414;
      v394[1] = v415;
      v394[2] = v395;
      v396 = type metadata accessor for ChromeMenu(0);
      sub_1A39C1510(v416, v394 + *(v396 + 24), type metadata accessor for ChromeElementIcon);
      *(v394 + *(v396 + 28)) = v8;
      v85 = 28;
      return sub_1A38A8F64(v85);
    case 0x1DuLL:
      v364 = v422;
      v365 = v428;

      return sub_1A39BFFDC(v365, 0x1DuLL, v364);
    case 0x20uLL:
      v151 = v39;
      v152 = sub_1A39FDA64(32);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v152);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v153 = sub_1A3A31810();

      v154 = CAMLocalizedFrameworkString(v153, 0);

      v155 = sub_1A3A31850();
      v424 = v156;
      v425 = v155;

      v423 = type metadata accessor for ChromeMenu(0);
      v157 = v428;
      sub_1A39AE314(32, 0, 1, v428, v422 + *(v423 + 24));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308, &unk_1A3A7FE00);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v158 = *(v151 + 80);
      v427 = v43;
      v159 = (v158 + 16) & ~v158;
      v160 = swift_allocObject();
      v421 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v160 + v159, type metadata accessor for ChromeElementIcon);
      v161 = swift_allocObject();
      v426 = v29;
      v162 = v161;
      v420 = sub_1A39C2198;
      *(v161 + 16) = sub_1A39C2198;
      *(v161 + 24) = v157;
      v163 = swift_retain_n();
      LODWORD(v418) = (sub_1A38FBF14(v163, v164) & 1) == 0;
      swift_getKeyPath(byte_1A3A7FE38);
      v419 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v157;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v153) = *(v157 + 1169);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C3930;
      *(v51 + 72) = v160;
      *(v51 + 80) = v418;
      *(v51 + 81) = (v153 & 1) == 0;
      *(v51 + 82) = v433;
      *(v51 + 86) = WORD2(v433);
      *(v51 + 88) = sub_1A39C391C;
      *(v51 + 96) = v162;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v165 = v426;
      v166 = v427;
      sub_1A38907D0(v427, v426);
      v167 = swift_allocObject();
      sub_1A39C1510(v165, v167 + v159, v421);
      v168 = swift_allocObject();
      *(v168 + 16) = v420;
      *(v168 + 24) = v157;
      v169 = swift_retain_n();
      LOBYTE(v165) = sub_1A38FBF14(v169, v170);

      swift_getKeyPath(byte_1A3A7FE38);
      v435 = v157;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v154) = *(v157 + 1169);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C3930;
      *(v51 + 160) = v167;
      *(v51 + 168) = v165 & 1;
      *(v51 + 169) = v154;
      *(v51 + 170) = v435;
      *(v51 + 174) = WORD2(v435);
      *(v51 + 176) = sub_1A39C3920;
      *(v51 + 184) = v168;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v166);
      v171 = 32;
      goto LABEL_93;
    case 0x21uLL:
      v366 = v39;
      v367 = sub_1A39FDA64(33);
      v435 = 0x2E656D6F726843;
      v436 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v367);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v368 = sub_1A3A31810();

      v369 = CAMLocalizedFrameworkString(v368, 0);

      v370 = sub_1A3A31850();
      v424 = v371;
      v425 = v370;

      v423 = type metadata accessor for ChromeMenu(0);
      v372 = v428;
      sub_1A39AE314(33, 0, 1, v428, v422 + *(v423 + 24));
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308, &unk_1A3A7FE00);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A3A70140;
      sub_1A38907D0(v43, v29);
      v373 = *(v366 + 80);
      v427 = v43;
      v374 = (v373 + 16) & ~v373;
      v375 = swift_allocObject();
      v421 = type metadata accessor for ChromeElementIcon;
      sub_1A39C1510(v29, v375 + v374, type metadata accessor for ChromeElementIcon);
      v376 = swift_allocObject();
      v426 = v29;
      v377 = v376;
      v420 = sub_1A39C2168;
      *(v376 + 16) = sub_1A39C2168;
      *(v376 + 24) = v372;
      v378 = swift_retain_n();
      LODWORD(v418) = (sub_1A38FC0C8(v378, v379) & 1) == 0;
      swift_getKeyPath(byte_1A3A7FE10);
      v419 = OBJC_IVAR____TtC8CameraUI15ChromeViewModel___observationRegistrar;
      v435 = v372;
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v368) = *(v372 + 1170);

      *(v51 + 32) = sub_1A391535C;
      *(v51 + 40) = 0;
      *(v51 + 48) = sub_1A39047E8;
      *(v51 + 56) = 0;
      *(v51 + 64) = sub_1A39C2170;
      *(v51 + 72) = v375;
      *(v51 + 80) = v418;
      *(v51 + 81) = (v368 & 1) == 0;
      *(v51 + 82) = v433;
      *(v51 + 86) = WORD2(v433);
      *(v51 + 88) = sub_1A39C2188;
      *(v51 + 96) = v377;
      *(v51 + 104) = sub_1A3915404;
      *(v51 + 112) = 0;
      v380 = v426;
      v381 = v427;
      sub_1A38907D0(v427, v426);
      v382 = swift_allocObject();
      sub_1A39C1510(v380, v382 + v374, v421);
      v383 = swift_allocObject();
      *(v383 + 16) = v420;
      *(v383 + 24) = v372;
      v384 = swift_retain_n();
      LOBYTE(v380) = sub_1A38FC0C8(v384, v385);

      swift_getKeyPath(byte_1A3A7FE10);
      v435 = v372;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      LOBYTE(v369) = *(v372 + 1170);

      *(v51 + 120) = sub_1A391547C;
      *(v51 + 128) = 0;
      *(v51 + 136) = sub_1A39047E8;
      *(v51 + 144) = 0;
      *(v51 + 152) = sub_1A39C2170;
      *(v51 + 160) = v382;
      *(v51 + 168) = v380 & 1;
      *(v51 + 169) = v369;
      *(v51 + 170) = v435;
      *(v51 + 174) = WORD2(v435);
      *(v51 + 176) = sub_1A39C2190;
      *(v51 + 184) = v383;
      *(v51 + 192) = sub_1A3915524;
      *(v51 + 200) = 0;

      result = sub_1A392BCAC(v381);
      v171 = 33;
LABEL_93:
      v62 = v422;
      *v422 = v171;
LABEL_94:
      v386 = v424;
      v62[1] = v425;
      v62[2] = v386;
      *(v62 + *(v423 + 28)) = v51;
      return result;
    default:
      v435 = 0;
      v436 = 0xE000000000000000;
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD00000000000001ELL, 0x80000001A3AA7560);
      v409 = sub_1A39FDA64(a1);
      v433 = 0x2E656D6F726843;
      v434 = 0xE700000000000000;
      MEMORY[0x1A58F7770](v409);

      sub_1A3A2EA50();
      MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

      v410 = sub_1A3A31810();

      v411 = CAMLocalizedFrameworkString(v410, 0);

      v115 = sub_1A3A31850();
      v413 = v412;

      MEMORY[0x1A58F7770](v115, v413);

      MEMORY[0x1A58F7770](0xD000000000000042, 0x80000001A3AA7580);
      sub_1A3A32070("Fatal error", 11, 2, v435, v436, "CameraUI/ChromeElementModel.swift", 33, 2, 510, 0);
      __break(1u);
      goto LABEL_128;
  }

  while (1)
  {
    v118 = *(v8 + 2);
    if (v4 >= v118)
    {
      break;
    }

    v115 = *&v418[8 * v4];
    v119 = swift_allocObject();
    *(v119 + 16) = v115;
    v120 = swift_allocObject();
    *(v120 + 16) = v115;
    a1 = swift_allocObject();
    v121 = v428;
    *(a1 + 16) = sub_1A39C2264;
    *(a1 + 24) = v121;
    *(a1 + 32) = v115;
    v122 = swift_allocObject();
    *(v122 + 16) = v115;
    v123 = swift_allocObject();
    *(v123 + 16) = v115;
    v426 = v119;
    v427 = v120;
    v424 = v122;
    v425 = v123;
    if (v115 - 2 >= 3)
    {
      if (v115 >= 2)
      {
LABEL_128:
        v435 = v115;
        sub_1A3A2EA60();
LABEL_130:
        result = sub_1A3A321F0();
        __break(1u);
        return result;
      }

      v116 = v12;
      swift_getKeyPath(a0_13);
      v121 = v428;
      v435 = v428;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v124 = *(v121 + 976);
      if (v124 >= 5)
      {
        v435 = *(v121 + 976);
        goto LABEL_130;
      }

      v117 = 3u >> v124;
    }

    else
    {
      v116 = v12;
      swift_getKeyPath(a0_13);
      v435 = v121;
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v117 = v115 == *(v121 + 976);
    }

    swift_getKeyPath(byte_1A3A7FF28);
    v435 = v121;
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v125 = *(v121 + 1016);

    LOBYTE(v115) = v125 == v115;
    v12 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1A3956550(0, *(v116 + 16) + 1, 1, v116);
    }

    v8 = v419;
    v14 = *(v12 + 2);
    v126 = *(v12 + 3);
    if (v14 >= v126 >> 1)
    {
      v12 = sub_1A3956550((v126 > 1), v14 + 1, 1, v12);
    }

    ++v4;
    *(v12 + 2) = v14 + 1;
    v127 = &v12[88 * v14];
    v128 = v426;
    *(v127 + 4) = sub_1A39C226C;
    *(v127 + 5) = v128;
    v129 = v424;
    *(v127 + 6) = sub_1A39C2274;
    *(v127 + 7) = v129;
    v130 = v427;
    *(v127 + 8) = sub_1A39C3918;
    *(v127 + 9) = v130;
    v127[80] = v117 & 1;
    v127[81] = v115;
    v131 = WORD2(v435);
    *(v127 + 82) = v435;
    *(v127 + 43) = v131;
    *(v127 + 11) = sub_1A39C3910;
    *(v127 + 12) = a1;
    v132 = v425;
    *(v127 + 13) = sub_1A39C227C;
    *(v127 + 14) = v132;
    if (v420 == v4)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  sub_1A3956B60((v118 > 1), a1, 1);
  v213 = v435;
LABEL_52:
  *(v213 + 16) = a1;
  v215 = v213 + 88 * v117;
  *(v215 + 32) = sub_1A39C22FC;
  *(v215 + 40) = v14;
  *(v215 + 48) = sub_1A39047E8;
  *(v215 + 56) = 0;
  *(v215 + 64) = sub_1A39C3918;
  *(v215 + 72) = v116;
  *(v215 + 80) = v115;
  *(v215 + 81) = 0;
  *(v215 + 82) = v431;
  *(v215 + 86) = v432;
  *(v215 + 88) = sub_1A39C3914;
  *(v215 + 96) = v8;
  *(v215 + 104) = sub_1A39C2308;
  *(v215 + 112) = v12;
  v216 = swift_allocObject();
  *(v216 + 16) = 1;
  *(v216 + 24) = v4;
  v217 = swift_allocObject();
  *(v217 + 16) = 1;
  v218 = swift_allocObject();
  *(v218 + 16) = sub_1A39C22F4;
  *(v218 + 24) = v4;
  *(v218 + 32) = 1;
  v219 = swift_allocObject();
  *(v219 + 16) = 1;
  *(v219 + 24) = v4;
  swift_getKeyPath(byte_1A3A7FF50);
  v433 = v4;
  swift_retain_n();
  sub_1A3A2F080();

  v220 = *(v4 + 889) == 1;
  v222 = *(v213 + 16);
  v221 = *(v213 + 24);
  if (v222 >= v221 >> 1)
  {
    sub_1A3956B60((v221 > 1), v222 + 1, 1);
    v213 = v435;
  }

  *(v213 + 16) = v222 + 1;
  v223 = v213 + 88 * v222;
  *(v223 + 32) = sub_1A39C3904;
  *(v223 + 40) = v216;
  *(v223 + 48) = sub_1A39047E8;
  *(v223 + 56) = 0;
  *(v223 + 64) = sub_1A39C3918;
  *(v223 + 72) = v217;
  *(v223 + 80) = v220;
  *(v223 + 81) = 0;
  v224 = v430;
  *(v223 + 82) = v429;
  *(v223 + 86) = v224;
  *(v223 + 88) = sub_1A39C3914;
  *(v223 + 96) = v218;
  *(v223 + 104) = sub_1A39C3934;
  *(v223 + 112) = v219;
  v225 = swift_allocObject();
  *(v225 + 16) = 2;
  *(v225 + 24) = v4;
  v421 = swift_allocObject();
  *(v421 + 16) = 2;
  v226 = swift_allocObject();
  *(v226 + 16) = sub_1A39C22F4;
  *(v226 + 24) = v4;
  *(v226 + 32) = 2;
  v227 = swift_allocObject();
  *(v227 + 16) = 2;
  *(v227 + 24) = v4;
  swift_getKeyPath(byte_1A3A7FF50);
  v433 = v4;
  swift_retain_n();
  sub_1A3A2F080();

  v228 = *(v4 + 889) == 2;
  v230 = *(v213 + 16);
  v229 = *(v213 + 24);
  if (v230 >= v229 >> 1)
  {
    sub_1A3956B60((v229 > 1), v230 + 1, 1);
  }

  v231 = v435;
  *(v435 + 16) = v230 + 1;
  v232 = v231 + 88 * v230;
  *(v232 + 32) = sub_1A39C3904;
  *(v232 + 40) = v225;
  *(v232 + 48) = sub_1A39047E8;
  *(v232 + 56) = 0;
  v233 = v421;
  *(v232 + 64) = sub_1A39C3918;
  *(v232 + 72) = v233;
  *(v232 + 80) = v228;
  *(v232 + 81) = 0;
  *(v232 + 82) = v433;
  *(v232 + 86) = WORD2(v433);
  *(v232 + 88) = sub_1A39C3914;
  *(v232 + 96) = v226;
  *(v232 + 104) = sub_1A39C3934;
  *(v232 + 112) = v227;

  v234 = 17;
LABEL_88:
  v361 = v422;
  *v422 = v234;
  v362 = v423;
  v361[1] = v424;
  v361[2] = v362;
  v363 = type metadata accessor for ChromeMenu(0);
  result = sub_1A39C1510(v425, v361 + *(v363 + 24), type metadata accessor for ChromeElementIcon);
  *(v361 + *(v363 + 28)) = v231;
  return result;
}

void sub_1A39BFE70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A7F538);
  v12 = a2;
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(a2 + 1000);
  v5 = *(a2 + 1008);
  v6 = type metadata accessor for ChromeVideoConfiguration();
  v7 = objc_allocWithZone(v6);
  if (v5)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate] = v3;
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_resolution] = v4;
    v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority] = 0;
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    v9 = *(a2 + 1224);
    v10 = *(a2 + 1232);
    __swift_project_boxed_opaque_existential_1((a2 + 1200), v9);
    (*(v10 + 8))(v8, 0, 0, 140, a2, v9, v10);
  }
}

unint64_t sub_1A39BFFDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  swift_getKeyPath(byte_1A3A7F678);
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(a1 + 872);
  v5 = *(v4 + 16);
  sub_1A3A2EA50();
  result = sub_1A3A2EA60();
  v30 = v5;
  if (v5)
  {
    v7 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v28 = v4 + 32;
    v29 = v4;
    while (v7 < *(v4 + 16))
    {
      v8 = *(v28 + 8 * v7);
      v33 = swift_allocObject();
      *(v33 + 16) = v8;
      v34 = swift_allocObject();
      *(v34 + 16) = v8;
      v9 = swift_allocObject();
      v9[2] = sub_1A39C28C8;
      v9[3] = a1;
      v9[4] = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v32 = swift_allocObject();
      *(v32 + 16) = v8;
      swift_getKeyPath(byte_1A3A7F538);
      swift_retain_n();
      sub_1A3A2F080();

      v11 = *(a1 + 1000);
      v31 = *(a1 + 1008);

      v12 = v11 == v8;
      swift_getKeyPath(byte_1A3A80068);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v13 = *(a1 + 1040);
      v14 = *(a1 + 1048);

      v15 = v13 == v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A3956550(0, *(v35 + 16) + 1, 1, v35);
        v35 = result;
      }

      v17 = *(v35 + 16);
      v16 = *(v35 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1A3956550((v16 > 1), v17 + 1, 1, v35);
        v35 = result;
      }

      ++v7;
      *(v35 + 16) = v17 + 1;
      v18 = v35 + 88 * v17;
      *(v18 + 32) = sub_1A39C28D0;
      *(v18 + 40) = v33;
      *(v18 + 48) = sub_1A39047E8;
      *(v18 + 56) = v10;
      *(v18 + 64) = sub_1A39C3918;
      *(v18 + 72) = v34;
      *(v18 + 80) = v12 & ~v31;
      *(v18 + 81) = v15 & ~v14;
      *(v18 + 82) = a1;
      *(v18 + 86) = WORD2(a1);
      *(v18 + 88) = sub_1A39C3910;
      *(v18 + 96) = v9;
      *(v18 + 104) = sub_1A39C2918;
      *(v18 + 112) = v32;
      v4 = v29;
      if (v30 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_11:

    sub_1A38A8F64(a2);
    v19 = sub_1A39FDA64(a2);
    MEMORY[0x1A58F7770](v19);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

    v20 = sub_1A3A31810();

    v21 = CAMLocalizedFrameworkString(v20, 0);

    v22 = sub_1A3A31850();
    v24 = v23;

    v25 = type metadata accessor for ChromeMenu(0);
    type metadata accessor for ChromeElementIcon(0);
    result = swift_storeEnumTagMultiPayload();
    *a3 = a2;
    a3[1] = v22;
    a3[2] = v24;
    *(a3 + *(v25 + 28)) = v35;
  }

  return result;
}

void sub_1A39C0464(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath(a0_14);
  v12 = a2;
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(a2 + 984);
  v5 = *(a2 + 992);
  v6 = type metadata accessor for ChromeVideoConfiguration();
  v7 = objc_allocWithZone(v6);
  if (v5)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_frameRate] = v4;
    *&v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_resolution] = v3;
    v7[OBJC_IVAR____TtC8CameraUI24ChromeVideoConfiguration_priority] = 1;
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    v9 = *(a2 + 1224);
    v10 = *(a2 + 1232);
    __swift_project_boxed_opaque_existential_1((a2 + 1200), v9);
    (*(v10 + 8))(v8, 0, 0, 140, a2, v9, v10);
  }
}

unint64_t sub_1A39C05D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = [objc_opt_self() capabilities];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 isInternalInstall];

  if (!v8)
  {
LABEL_7:
    result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeElementModel.swift", 33, 2, 481, 0);
    __break(1u);
    return result;
  }

  v9 = sub_1A39FDA64(a1);
  MEMORY[0x1A58F7770](v9);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v10 = sub_1A3A31810();

  v11 = CAMLocalizedFrameworkString(v10, 0);

  v12 = sub_1A3A31850();
  v14 = v13;

  v15 = type metadata accessor for ChromeMenu(0);
  sub_1A39AE314(a1, 0, 1, a2, &a3[*(v15 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF308, &unk_1A3A7FE00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A3A681C0;
  *(v16 + 32) = sub_1A39C0848;
  *(v16 + 40) = 0;
  *(v16 + 48) = sub_1A39047E8;
  *(v16 + 56) = 0;
  *(v16 + 64) = sub_1A39C085C;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 82) = 1869768771;
  *(v16 + 86) = 25965;
  *(v16 + 88) = sub_1A39C2920;
  *(v16 + 96) = a2;
  *(v16 + 104) = sub_1A39C08C8;
  *(v16 + 112) = 0;
  *a3 = a1;
  *(a3 + 1) = v12;
  *(a3 + 2) = v14;
  *&a3[*(v15 + 28)] = v16;
  sub_1A3A2EA60();

  return sub_1A38A8F64(a1);
}

uint64_t sub_1A39C085C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x637269632E746E61;
  *(a1 + 8) = 0xEA0000000000656CLL;
  *(a1 + 16) = 1;
  type metadata accessor for ChromeElementIcon(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

void *sub_1A39C08E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_1A3A804A8);
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(a1 + 816);
  v5 = *(a1 + 824);
  v6 = *(a1 + 832);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = *(a1 + 840);
  return sub_1A38DCB50(v4, v5, v6);
}

uint64_t sub_1A39C09A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_getKeyPath(byte_1A3A7FE60);
  sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  swift_getKeyPath(aX_19);
  sub_1A3A2F080();

  swift_getKeyPath(byte_1A3A7F970);
  sub_1A3A2F080();

  if (*(*(a1 + 1056) + 16) > 1uLL)
  {
    if ((a4 & 1) != 0 || a3 != 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004E8, &qword_1A3A80400);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1A3A681C0;
      sub_1A38EC330();
      v28 = sub_1A3A31E50();
      v30 = v29;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448, &unk_1A3A75AB0);
      v32 = v31[16];
      v33 = v31[20];
      v34 = v31[24];
      v42 = v31[32];
      v43 = v31[28];
      v44 = v31[36];
      v35 = sub_1A3A31810();

      v36 = CAMLocalizedFrameworkString(v35, 0);

      v37 = sub_1A3A31850();
      v39 = v38;

      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      *(v27 + 48) = v37;
      *(v27 + 56) = v39;
      *(v27 + 64) = 0;
      *(v27 + 72) = 0xE000000000000000;
      *a5 = v27;
      *(a5 + 8) = 0;
      v40 = sub_1A3A30090();
      (*(*(v40 - 8) + 16))(a5 + v32, a2, v40);
      *(a5 + v33) = 3;
      *(a5 + v34) = 0;
      *(a5 + v43) = 0;
      *(a5 + v42) = 0;
      *(a5 + v44) = 0;
      goto LABEL_8;
    }

    swift_getKeyPath(aX_19);
    sub_1A3A2F080();

    v17 = sub_1A3A31810();

    v18 = CAMLocalizedFrameworkString(v17, 0);

    v19 = sub_1A3A31850();
    v21 = v20;

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](32, 0xE100000000000000);

    swift_getKeyPath(byte_1A3A7FE60);
    sub_1A3A2F080();

    sub_1A38EC330();
    v22 = sub_1A3A31E50();
    v24 = v23;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](v22, v24);

    sub_1A3A30740();
    sub_1A391A414(v25);
    v26 = CEKFontOfSizeWeightStyle();
    v16 = sub_1A3A307B0();
    *a5 = v19;
    *(a5 + 8) = v21;
  }

  else
  {
    v9 = sub_1A3A31810();

    v10 = CAMLocalizedFrameworkString(v9, 0);

    v11 = sub_1A3A31850();
    v13 = v12;

    sub_1A391163C(a2);
    sub_1A3A30740();
    sub_1A391A414(v14);
    v15 = CEKFontOfSizeWeightStyle();
    v16 = sub_1A3A307B0();
    *a5 = v11;
    *(a5 + 8) = v13;
  }

  *(a5 + 16) = v16;
  *(a5 + 24) = 0;
LABEL_8:
  type metadata accessor for ChromeElementIcon(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C0F24(uint64_t a1)
{
  if (!a1)
  {
    v1 = 0xE400000000000000;
    v2 = 1801675074;
LABEL_5:
    MEMORY[0x1A58F7770](v2, v1);

    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    v1 = 0xE500000000000000;
    v2 = 0x746E6F7246;
    goto LABEL_5;
  }

  sub_1A3A31F20();

  MEMORY[0x1A58F7770](0xD000000000000017, 0x80000001A3AA4FF0);

  result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000018, 0x80000001A3AA7920, "CameraUI/ChromeElementModel.swift", 33, 2, 1055, 0);
  __break(1u);
  return result;
}

void sub_1A39C1074(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aP_27);
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
}

void sub_1A39C1144(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_15);
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  *a2 = *(v3 + 64);
}

void sub_1A39C1214(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a8_9);
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  *a2 = *(v3 + 80);
}

void sub_1A39C12E4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A80360);
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  *a2 = *(v3 + 81);
}

void sub_1A39C13B4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_21);
  sub_1A39C18E8(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  *a2 = *(v3 + 82);
}

uint64_t objectdestroyTm_12()
{
  if (*(v0 + 24) >= 0x23uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A39C1510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A39C1578()
{
  off_1F16584F0(&type metadata for ChromeVideoResolution);
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1620()
{
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C1698(_BYTE *a1)
{
  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1754()
{
  off_1F1658538(&type metadata for ChromeVideoFormat);
  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C17FC()
{
  off_1F1658538(&type metadata for ChromeVideoFormat);
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v0 = sub_1A3A31810();

  v1 = CAMLocalizedFrameworkString(v0, 0);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39C18E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A39C1930(_BYTE *a1)
{
  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

void sub_1A39C19E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v1 = 2;
    }

    else
    {
      v1 = 3;
    }
  }

  else if (!v1)
  {
    v2 = sub_1A3A31810();
    v3 = CAMLocalizedFrameworkString(v2, 0);

    sub_1A3A31850();
    return;
  }

  v4 = CAMSecondsForTimerDuration_1(v1);

  sub_1A39A04FC(v4);
}

uint64_t sub_1A39C1AA8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE90000000000006FLL;
  if (v3 != 1)
  {
    v4 = 0xEF6873616C732E6FLL;
  }

  v5 = v3 == 0;
  if (*a1)
  {
    v6 = 0x746F68706576696CLL;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v5)
  {
    v4 = 0x80000001A3AA75D0;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  type metadata accessor for ChromeElementIcon(0);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C1B68(uint64_t *a1)
{
  sub_1A3990AC8(*a1);
  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1BE0(uint64_t *a1)
{
  sub_1A3990AC8(*a1);
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1C98(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0xE200000000000000;
  v3 = 28239;
  if (v1 != 1)
  {
    v3 = 6710863;
    v2 = 0xE300000000000000;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1869903169;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1A58F7770](v4, v5);

  v6 = sub_1A3A31810();

  v7 = CAMLocalizedFrameworkString(v6, 0);

  v8 = sub_1A3A31850();
  return v8;
}

uint64_t sub_1A39C1D80(__n128 a1)
{
  off_1F165EA38(&type metadata for ChromeFlashMode, a1);
  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1E28(__n128 a1)
{
  off_1F165EA38(&type metadata for ChromeFlashMode, a1);
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1F08(_BYTE *a1)
{
  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C1FC8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0xD000000000000017;
  v4 = *a1;
  v5 = "ratio.16.to.9.viewfinder";
  if (v4 == 1)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v4 == 1)
  {
    v5 = "ratio.4.to.3.viewfinder";
  }

  if (*a1)
  {
    v3 = v6;
    v7 = v5;
  }

  else
  {
    v7 = "livephoto.badge.automatic";
  }

  *a2 = v3;
  *(a2 + 8) = v7 | 0x8000000000000000;
  *(a2 + 16) = 1;
  type metadata accessor for ChromeElementIcon(0);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C2068(_BYTE *a1)
{
  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v1 = sub_1A3A31810();

  v2 = CAMLocalizedFrameworkString(v1, 0);

  v3 = sub_1A3A31850();
  return v3;
}

uint64_t sub_1A39C231C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x72656D6974;
  *(a1 + 8) = 0xE500000000000000;
  *(a1 + 16) = 1;
  type metadata accessor for ChromeElementIcon(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C2420(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = v2[153];
  v6 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v5);
  return (*(v6 + 8))(v4, 0, 0, a2, v2, v5, v6);
}

uint64_t sub_1A39C24A8()
{
  type metadata accessor for ChromeElementIcon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39C2500(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = v2[153];
  v6 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v5);
  return (*(v6 + 8))(v4, 0, 0, a2, v2, v5, v6);
}

uint64_t sub_1A39C2598()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1A39C25E0(char a1, uint64_t a2)
{
  v5 = v2[153];
  v6 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v5);
  return (*(v6 + 8))(a1 & 1, 0, 0, a2, v2, v5, v6);
}

uint64_t objectdestroy_273Tm()
{
  v1 = *(type metadata accessor for ChromeElementIcon(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          if (*(v3 + 24))
          {
          }
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + v2));
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
      }

      goto LABEL_20;
    }

LABEL_16:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448, &unk_1A3A75AB0) + 64);
    v6 = sub_1A3A30090();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_16;
  }

LABEL_20:

  return swift_deallocObject();
}

uint64_t sub_1A39C2830(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeElementIcon(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A39C28D8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1A39C2920()
{
  v1 = v0[153];
  v2 = v0[154];
  __swift_project_boxed_opaque_existential_1(v0 + 150, v1);
  return (*(v2 + 8))(4, 0, 0, 160, v0, v1, v2);
}

uint64_t sub_1A39C2990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  switch(a1)
  {
    case 0uLL:
      swift_getKeyPath(byte_1A3A7FDD0, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = ~*(a4 + 752) & 1;
      break;
    case 2uLL:
    case 5uLL:
    case 6uLL:
    case 0x14uLL:
    case 0x18uLL:
    case 0x19uLL:
      swift_getKeyPath(byte_1A3A800E0, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      sub_1A38A8F64(a1);
      result = a1;
      break;
    case 3uLL:
      swift_getKeyPath(byte_1A3A80040, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = sub_1A39B6950(*(a4 + 793), &unk_1F1655678);
      if (result == 3)
      {
        goto LABEL_53;
      }

      result = result;
      break;
    case 4uLL:
      result = 1;
      break;
    case 7uLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (a2)
      {
        if (a2 != 4)
        {
          goto LABEL_45;
        }

        swift_getKeyPath(byte_1A3A7FBA0);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        v11 = *(a4 + 616);
        swift_getKeyPath(a8_5);
        sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel, &unk_1A3A73F60);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v12 = *(v11 + 24);

        result = sub_1A39B69A8(v12, &unk_1F1655598);
        if (v13)
        {
          goto LABEL_57;
        }
      }

      else
      {
        swift_getKeyPath(byte_1A3A7FBA0);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        v17 = *(a4 + 616);
        swift_getKeyPath(a8_5);
        sub_1A39C18E8(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel, &unk_1A3A73F60);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v18 = *(v17 + 24) != 2;

        result = 2 * v18;
      }

      break;
    case 8uLL:
      result = 3;
      break;
    case 9uLL:
      swift_getKeyPath(byte_1A3A7FB50, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = ~*(a4 + 755) & 1;
      break;
    case 0xAuLL:
      swift_getKeyPath(aX_13, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = sub_1A39B69A8(*(a4 + 1072), &unk_1F16555F8);
      if (v14)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      break;
    case 0xCuLL:
      result = 5;
      break;
    case 0xEuLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (a2)
      {
        if (a2 != 4)
        {
          goto LABEL_45;
        }

        swift_getKeyPath(byte_1A3A7FFA0);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        result = sub_1A39B6950(*(a4 + 664), &unk_1F1655628);
        if (result == 3)
        {
          goto LABEL_55;
        }

        result = result;
      }

      else
      {
        swift_getKeyPath(byte_1A3A7FFA0);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        result = 2 * (*(a4 + 664) != 2);
      }

      break;
    case 0xFuLL:
      swift_getKeyPath(byte_1A3A7F790, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      v7 = *(a4 + 648);
      swift_getKeyPath(byte_1A3A80090);
      sub_1A39C18E8(&qword_1ED997770, type metadata accessor for ChromeMacroViewModel, &unk_1A3A72660);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v8 = *(v7 + 24);

      result = v8 != 1;
      break;
    case 0x10uLL:
      swift_getKeyPath(byte_1A3A7FCB8, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      v9 = *(a4 + 656);
      swift_getKeyPath(byte_1A3A800B8);
      sub_1A39C18E8(&qword_1ED997660, type metadata accessor for ChromeDepthViewModel, &unk_1A3A71D40);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v10 = *(v9 + 17);

      result = ~v10 & 1;
      break;
    case 0x11uLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (a2)
      {
        if (a2 != 4)
        {
          goto LABEL_45;
        }

        swift_getKeyPath(byte_1A3A7FF50);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        result = sub_1A39B6950(*(a4 + 889), &unk_1F1655650);
        if (result == 3)
        {
          goto LABEL_56;
        }

        result = result;
      }

      else
      {
        swift_getKeyPath(byte_1A3A7FF50);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        result = 2 * (*(a4 + 889) != 2);
      }

      break;
    case 0x16uLL:
      result = 9;
      break;
    case 0x17uLL:
      swift_getKeyPath(aP_15, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = qword_1A3A80558[*(a4 + 808)];
      break;
    case 0x1AuLL:
      swift_getKeyPath(byte_1A3A800E0, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      if (*(a4 + 416) > 1u)
      {
        result = 26;
      }

      else
      {
        swift_getKeyPath(byte_1A3A7FF78);
        sub_1A3A2F080();

        result = sub_1A39B6A10(*(a4 + 792), &unk_1F1655570);
        if (result == 4)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        result = result;
      }

      break;
    case 0x1BuLL:
      if (a3)
      {
        goto LABEL_45;
      }

      if (!a2)
      {
        swift_getKeyPath(aP_16);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        v19 = *(a4 + 624);
        swift_getKeyPath(aX_16);
        sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v20 = *(v19 + 20) != 2;

        return 2 * v20;
      }

      if (a2 != 4)
      {
LABEL_45:
        result = 0;
      }

      else
      {
        swift_getKeyPath(aP_16);
        sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        sub_1A3A2F080();

        v15 = *(a4 + 624);
        swift_getKeyPath(aX_16);
        sub_1A39C18E8(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
        sub_1A3A2EA60();
        sub_1A3A2F080();

        v16 = *(v15 + 20);

        result = sub_1A39B6950(v16, &unk_1F16555D0);
        if (result == 3)
        {
LABEL_58:
          __break(1u);
        }

        else
        {
          result = result;
        }
      }

      break;
    case 0x1CuLL:
      result = 0;
      break;
    case 0x1DuLL:
      result = 1;
      break;
    case 0x1EuLL:
      result = 7;
      break;
    case 0x20uLL:
      swift_getKeyPath(byte_1A3A7FE38, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = ~*(a4 + 1169) & 1;
      break;
    case 0x21uLL:
      swift_getKeyPath(byte_1A3A7FE10, a2, a3, 252);
      sub_1A39C18E8(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2F080();

      result = ~*(a4 + 1170) & 1;
      break;
    case 0x22uLL:
      result = 8;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1A39C3884()
{
  result = qword_1ED9981E8;
  if (!qword_1ED9981E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF2E0, &qword_1A3A778C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9981E8);
  }

  return result;
}

uint64_t sub_1A39C393C()
{
  result = sub_1A3A31810();
  qword_1ED998F10 = result;
  return result;
}

uint64_t sub_1A39C3974(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A3A31810();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  v3 = CFPreferencesCopyAppValue(v2, qword_1ED998F10);

  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 == CFStringGetTypeID())
    {
      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_1A39C3A48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A3A31810();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  v3 = CFPreferencesCopyAppValue(v2, qword_1ED998F10);

  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 == CFNumberGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [v5 doubleValue];
        v7 = v6;
        swift_unknownObjectRelease_n();
        return v7;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1A39C3B44(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A3A31810();
  if (qword_1ED9964A8 != -1)
  {
    swift_once();
  }

  v3 = CFPreferencesCopyAppValue(v2, qword_1ED998F10);

  if (!v3)
  {
    return 0;
  }

  v4 = CFGetTypeID(v3);
  if (v4 == CFNumberGetTypeID())
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 integerValue];
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A39C3C48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A39C3C90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A39C3CF0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1A3A322C0();
  if (!a4)
  {
    MEMORY[0x1A58F8150](0);
    MEMORY[0x1A58F8150](a1);
    MEMORY[0x1A58F8150](a2);
    MEMORY[0x1A58F8150](a3);
    return sub_1A3A32300();
  }

  if (a4 != 1)
  {
    MEMORY[0x1A58F8150](2);
LABEL_8:
    sub_1A3A00434(v9, a1);
    return sub_1A3A32300();
  }

  MEMORY[0x1A58F8150](1);
  if (a1 != 35)
  {
    sub_1A3A322E0();
    goto LABEL_8;
  }

  sub_1A3A322E0();
  return sub_1A3A32300();
}

unint64_t sub_1A39C3DD8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      MEMORY[0x1A58F8150](1);
      if (v4 == 35)
      {
        return sub_1A3A322E0();
      }

      sub_1A3A322E0();
    }

    else
    {
      MEMORY[0x1A58F8150](2);
    }

    return sub_1A3A00434(a1, v4);
  }

  else
  {
    v7 = *(v2 + 8);
    v6 = *(v2 + 16);
    MEMORY[0x1A58F8150](0);
    MEMORY[0x1A58F8150](v4);
    MEMORY[0x1A58F8150](v7);
    return MEMORY[0x1A58F8150](v6);
  }
}

uint64_t sub_1A39C3E94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1A3A322C0();
  if (!v5)
  {
    MEMORY[0x1A58F8150](0);
    MEMORY[0x1A58F8150](v2);
    MEMORY[0x1A58F8150](v3);
    MEMORY[0x1A58F8150](v4);
    return sub_1A3A32300();
  }

  if (v5 != 1)
  {
    MEMORY[0x1A58F8150](2);
LABEL_8:
    sub_1A3A00434(v7, v2);
    return sub_1A3A32300();
  }

  MEMORY[0x1A58F8150](1);
  if (v2 != 35)
  {
    sub_1A3A322E0();
    goto LABEL_8;
  }

  sub_1A3A322E0();
  return sub_1A3A32300();
}

uint64_t sub_1A39C3F8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a1 == 35)
        {
          if (a5 == 35)
          {
            sub_1A38BCF98(0x23uLL);
            return 1;
          }
        }

        else if (a5 == 35)
        {
          sub_1A38BCF98(0x23uLL);
        }

        else
        {
          v10 = a1;
          sub_1A38BCF98(a5);
          LOBYTE(v10) = sub_1A3A018A8(v10, a5);
          sub_1A3890EFC(a5, a6, a7, 1);
          result = 1;
          if (v10)
          {
            return result;
          }
        }
      }

      return 0;
    }

    if (a8 != 2)
    {
      return 0;
    }

    return sub_1A3A018A8(a1, a5);
  }

  else
  {
    v9 = a8 == 0;
    if (a5 != a1)
    {
      v9 = 0;
    }

    if (a2 != a6)
    {
      v9 = 0;
    }

    return a3 == a7 && v9;
  }
}

uint64_t sub_1A39C40CC(uint64_t a1, uint64_t a2)
{
  sub_1A39C7DF0();
  sub_1A3A2FEF0();
  return v3;
}

void *sub_1A39C410C@<X0>(uint64_t a3@<X8>)
{
  sub_1A39C7DF0();
  result = sub_1A3A2FEF0();
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1A39C420C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3A2FE20();
  *a1 = result & 1;
  return result;
}

void sub_1A39C423C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A80860);
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
}

id sub_1A39C430C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_1A3A807B0);
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  result = sub_1A394FC58(20);
  *a2 = result & 1;
  return result;
}

double sub_1A39C43BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1A3A807B0);
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F070();

  return result;
}

void *sub_1A39C4488@<X0>(void *a1@<X8>)
{
  sub_1A3968434();
  result = sub_1A3A2FEF0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A39C44D8(uint64_t *a1)
{
  sub_1A3968434();
  sub_1A3A2EA60();
  return sub_1A3A2FF00();
}

void sub_1A39C4538(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v28 = swift_allocBox();
  v12 = v11;
  type metadata accessor for ChromeViewModel(0);
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2EA60();
  sub_1A3A312C0();
  (*(v8 + 16))(v10, v12, v7);
  sub_1A3A312A0();
  (*(v8 + 8))(v10, v7);
  v13 = v29;
  v14 = sub_1A3A31530();
  sub_1A3900F74(v14, 0, v13);

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v15 = off_1ED997FE0;
  swift_getKeyPath(byte_1A3A80788);
  v29 = v15;
  sub_1A39C8240(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v16 = v15[2];
  swift_getKeyPath(byte_1A3A807B0);
  v29 = v16;
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  sub_1A394FC58(20);

  *a4 = sub_1A3A31480();
  a4[1] = v17;
  v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004F0, &qword_1A3A807D8) + 44));
  *v18 = sub_1A3A31480();
  v18[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1004F8, &qword_1A3A807E0);
  sub_1A39C4924(a1);
  v20 = sub_1A3A2FAA0();
  v21 = sub_1A3A30610();
  v22 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100500, &qword_1A3A807E8) + 36);
  *v22 = v20;
  v22[8] = v21;
  KeyPath = swift_getKeyPath(aP_32);
  v24 = sub_1A3A31530();
  v25 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100508, &qword_1A3A80818) + 36);
  *v25 = KeyPath;
  *(v25 + 1) = v24;
  v25[16] = 0;
  v26 = swift_getKeyPath(aH_21);
  v27 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100510, &qword_1A3A80848) + 36));
  sub_1A3A2EA60();

  *v27 = v26;
  v27[1] = a2;
}

uint64_t sub_1A39C4924(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v42 = v1;
  v46 = v3;
  v47 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100518, &qword_1A3A80850);
  MEMORY[0x1EEE9AC00](v41);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100520, &qword_1A3A80858);
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v38 = v9;
  v39 = v7;
  v40 = v5;
  sub_1A39C4E90(v18);
  v24 = swift_projectBox();
  (*(v11 + 16))(v13, v24, v10);
  sub_1A3A312B0();
  v25 = *(v11 + 8);
  v25(v13, v10);
  swift_getKeyPath(byte_1A3A80860);
  sub_1A3A312D0();

  v25(v16, v10);
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100528, &qword_1A3A80888);
  sub_1A39C7E4C();
  v26 = type metadata accessor for ChromeViewModel(255);
  v27 = sub_1A39C81E4();
  v28 = sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v51[0] = &type metadata for CameraUISettingsView;
  v51[1] = v26;
  v51[2] = v27;
  v51[3] = v28;
  swift_getOpaqueTypeConformance2();
  sub_1A3A30C10();

  sub_1A388F740(v18, &qword_1EB100518, &qword_1A3A80850);
  if (v42)
  {
    sub_1A39C58B4(v38);
    memcpy(v50, v49, sizeof(v50));
    CAMPhotoFormatMake();
    memcpy(v51, v50, 0x8B0uLL);
  }

  else
  {
    sub_1A39C8238(v51);
  }

  v30 = v43;
  v29 = v44;
  v31 = *(v44 + 16);
  v32 = v45;
  v31(v43, v23, v45);
  memcpy(v48, v51, sizeof(v48));
  v33 = v46;
  v31(v46, v30, v32);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100570, &qword_1A3A808C0) + 48);
  memcpy(v49, v48, sizeof(v49));
  memcpy(&v33[v34], v48, 0x8B0uLL);
  sub_1A388F6D8(v49, v50, &qword_1EB100578, &qword_1A3A808C8);
  v35 = *(v29 + 8);
  v35(v23, v32);
  memcpy(v50, v48, sizeof(v50));
  sub_1A388F740(v50, &qword_1EB100578, &qword_1A3A808C8);
  return (v35)(v30, v32);
}

double sub_1A39C4E90@<D0>(uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100588, &qword_1A3A80AE0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = v56 - v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100550, &qword_1A3A808A0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v56 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100548, &qword_1A3A80898);
  MEMORY[0x1EEE9AC00](v58);
  v60 = v56 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100540, &qword_1A3A80890);
  MEMORY[0x1EEE9AC00](v67);
  v61 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100518, &qword_1A3A80850);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = v56 - v13;
  v65 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for ChromeViewModel(0);
  v17 = sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2EA60();
  v56[1] = v16;
  sub_1A3A312C0();
  v63 = *(v9 + 16);
  v63(v11, v15, v8);
  sub_1A3A312A0();
  v64 = *(v9 + 8);
  v64(v11, v8);
  v18 = v89;
  swift_getKeyPath(byte_1A3A80AE8);
  *&v89 = v18;
  v56[0] = v17;
  sub_1A3A2F080();

  v19 = *(v18 + 416);

  v63(v11, v15, v8);
  sub_1A3A312A0();
  v64(v11, v8);
  if (v19 == 2)
  {
    v20 = v59;
    sub_1A3A312C0();
    v21 = sub_1A3A2FAA0();
    v22 = sub_1A3A30610();
    v23 = v20 + *(v57 + 36);
    *v23 = v21;
    *(v23 + 8) = v22;
    v24 = sub_1A3A31480();
    sub_1A3A2FBF0(v101, 0, 1, 0x7FF0000000000000, 0, v24, v25);
    v26 = v60;
    sub_1A388F670(v20, v60, &qword_1EB100550, &qword_1A3A808A0);
    v27 = (v26 + *(v58 + 36));
    v28 = v101[5];
    v27[4] = v101[4];
    v27[5] = v28;
    v27[6] = v101[6];
    v29 = v101[1];
    *v27 = v101[0];
    v27[1] = v29;
    v30 = v101[3];
    v27[2] = v101[2];
    v27[3] = v30;
    v31 = sub_1A3A31440();
    v33 = v32;
    sub_1A39C732C(v65, &v72);
    v84 = v76;
    v85 = v77;
    v86 = v78;
    v80 = v72;
    v81 = v73;
    v82 = v74;
    v83 = v75;
    *&v87 = v79;
    *(&v87 + 1) = v31;
    v88 = v33;
    v34 = v26;
    v35 = v61;
    sub_1A388F670(v34, v61, &qword_1EB100548, &qword_1A3A80898);
    v36 = v35 + *(v67 + 36);
    v37 = v87;
    *(v36 + 96) = v86;
    *(v36 + 112) = v37;
    *(v36 + 128) = v88;
    v38 = v83;
    *(v36 + 32) = v82;
    *(v36 + 48) = v38;
    v39 = v85;
    *(v36 + 64) = v84;
    *(v36 + 80) = v39;
    v40 = v81;
    *v36 = v80;
    *(v36 + 16) = v40;
    v93 = v76;
    v94 = v77;
    v95 = v78;
    v89 = v72;
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v96 = v79;
    v97 = v31;
    v98 = v33;
    sub_1A388F6D8(&v80, v71, &qword_1EB100558, &qword_1A3A808A8);
    sub_1A388F740(&v89, &qword_1EB100558, &qword_1A3A808A8);
    v41 = v62;
    sub_1A388F670(v35, v62, &qword_1EB100540, &qword_1A3A80890);
    sub_1A388F6D8(v41, v69, &qword_1EB100540, &qword_1A3A80890);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100560, &qword_1A3A808B0);
    sub_1A39C7ED8();
    sub_1A39C80D8();
    v42 = v66;
    sub_1A3A301F0();
    sub_1A388F740(v41, &qword_1EB100540, &qword_1A3A80890);
  }

  else
  {
    v43 = v89;
    KeyPath = swift_getKeyPath(byte_1A3A80B10);
    v45 = swift_getKeyPath(byte_1A3A80B40);
    v46 = sub_1A3A31440();
    v48 = v47;
    sub_1A39C79F0(&v72);
    v84 = v76;
    v85 = v77;
    v80 = v72;
    v81 = v73;
    *&v99[71] = v76;
    *&v99[87] = v77;
    *&v99[55] = v75;
    *&v99[7] = v72;
    *&v99[23] = v73;
    v82 = v74;
    v83 = v75;
    *&v86 = v46;
    *(&v86 + 1) = v48;
    LOBYTE(v101[0]) = 0;
    v100 = 0;
    *&v99[39] = v74;
    *&v99[103] = v86;
    v93 = v76;
    v94 = v77;
    v91 = v74;
    v92 = v75;
    v89 = v72;
    v90 = v73;
    *&v95 = v46;
    *(&v95 + 1) = v48;
    sub_1A388F6D8(&v80, v71, &qword_1EB100568, &qword_1A3A808B8);
    sub_1A388F740(&v89, &qword_1EB100568, &qword_1A3A808B8);
    v49 = *&v99[80];
    v50 = v69;
    *(v69 + 97) = *&v99[64];
    *(v50 + 113) = v49;
    *(v50 + 129) = *&v99[96];
    v51 = *&v99[16];
    *(v50 + 33) = *v99;
    *(v50 + 49) = v51;
    v52 = *&v99[48];
    *(v50 + 65) = *&v99[32];
    v53 = v101[0];
    v54 = v100;
    *v50 = v43;
    *(v50 + 8) = KeyPath;
    *(v50 + 16) = v53;
    *(v50 + 24) = v45;
    *(v50 + 32) = v54;
    *(v50 + 144) = *&v99[111];
    *(v50 + 81) = v52;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100560, &qword_1A3A808B0);
    sub_1A39C7ED8();
    sub_1A39C80D8();
    v42 = v66;
    sub_1A3A301F0();
  }

  sub_1A388F670(v42, v70, &qword_1EB100518, &qword_1A3A80850);

  return result;
}

uint64_t sub_1A39C56F8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  sub_1A3A13718(v7);
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_1A3A312A0();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for ChromeViewModel(0);
  sub_1A39C81E4();
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A30980();

  v9[4] = v7[4];
  v10[0] = v8[0];
  *(v10 + 9) = *(v8 + 9);
  v9[0] = v7[0];
  v9[1] = v7[1];
  v9[2] = v7[2];
  v9[3] = v7[3];
  return sub_1A39C89C4(v9);
}

double sub_1A39C58B4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v165 = sub_1A3A30DB0();
  swift_getKeyPath(byte_1A3A808D0);
  v392.n128_u64[0] = v2;
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v5 = v2[44];
  v6 = v2[45];
  v7 = v2[46];
  v8 = v2[47];
  v9 = sub_1A3A30D60();
  v10 = sub_1A3A31480();
  v12 = v11;
  sub_1A3940614(1, v9, &v380, v5, v6, v7, v8);

  v251[8] = v388;
  v251[9] = v389;
  v251[4] = v384;
  v251[5] = v385;
  v251[7] = v387;
  v251[6] = v386;
  v251[0] = v380;
  v251[1] = v381;
  v251[3] = v383;
  v251[2] = v382;
  *&v178[118] = v387;
  *&v178[54] = v383;
  *&v178[134] = v388;
  *&v178[150] = v389;
  *&v178[70] = v384;
  *&v178[86] = v385;
  *&v178[102] = v386;
  *&v178[6] = v380;
  *&v178[22] = v381;
  *&v252 = v390;
  *(&v252 + 1) = v10;
  *&v178[38] = v382;
  *&v178[166] = v252;
  v254[8] = v388;
  v254[9] = v389;
  v254[4] = v384;
  v254[5] = v385;
  v254[7] = v387;
  v254[6] = v386;
  v253 = v12;
  *&v178[182] = v12;
  v254[0] = v380;
  v254[1] = v381;
  v254[3] = v383;
  v254[2] = v382;
  v255 = v390;
  v256 = v10;
  v257 = v12;
  sub_1A388F6D8(v251, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v254, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A80900);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v13 = v2[32];
  v14 = v2[33];
  v15 = v2[34];
  v16 = v2[35];
  v17 = sub_1A3A30DC0();
  v18 = sub_1A3A31480();
  v20 = v19;
  sub_1A3940614(1, v17, &v380, v13, v14, v15, v16);

  v258[8] = v388;
  v258[9] = v389;
  v258[4] = v384;
  v258[5] = v385;
  v258[7] = v387;
  v258[6] = v386;
  v258[0] = v380;
  v258[1] = v381;
  v258[3] = v383;
  v258[2] = v382;
  v294 = v388;
  v295 = v389;
  v290 = v384;
  v291 = v385;
  v293 = v387;
  v292 = v386;
  v286 = v380;
  v287 = v381;
  *&v259 = v390;
  *(&v259 + 1) = v18;
  v289 = v383;
  v288 = v382;
  v296 = v259;
  v261[8] = v388;
  v261[9] = v389;
  v261[4] = v384;
  v261[5] = v385;
  v261[7] = v387;
  v261[6] = v386;
  v260 = v20;
  v297 = v20;
  v261[0] = v380;
  v261[1] = v381;
  v261[3] = v383;
  v261[2] = v382;
  v262 = v390;
  v263 = v18;
  v264 = v20;
  sub_1A388F6D8(v258, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v261, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(asc_1A3A80928);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v21 = v2[36];
  v22 = v2[37];
  v23 = v2[38];
  v24 = v2[39];
  v25 = sub_1A3A30DE0();
  v26 = sub_1A3A31480();
  v28 = v27;
  sub_1A3940614(1, v25, &v380, v21, v22, v23, v24);

  v265[8] = v388;
  v265[9] = v389;
  v265[4] = v384;
  v265[5] = v385;
  v265[7] = v387;
  v265[6] = v386;
  v265[0] = v380;
  v265[1] = v381;
  v265[3] = v383;
  v265[2] = v382;
  v313 = v388;
  v314 = v389;
  v309 = v384;
  v310 = v385;
  v312 = v387;
  v311 = v386;
  v305 = v380;
  v306 = v381;
  *&v266 = v390;
  *(&v266 + 1) = v26;
  v308 = v383;
  v307 = v382;
  v315 = v266;
  v268[8] = v388;
  v268[9] = v389;
  v268[4] = v384;
  v268[5] = v385;
  v268[7] = v387;
  v268[6] = v386;
  v267 = v28;
  v316 = v28;
  v268[0] = v380;
  v268[1] = v381;
  v268[3] = v383;
  v268[2] = v382;
  v269 = v390;
  v270 = v26;
  v271 = v28;
  sub_1A388F6D8(v265, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v268, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(asc_1A3A80950);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v29 = v2[40];
  v30 = v2[41];
  v31 = v2[42];
  v32 = v2[43];
  v33 = sub_1A3A30E00();
  v34 = sub_1A3A31480();
  v36 = v35;
  sub_1A3940614(1, v33, &v380, v29, v30, v31, v32);

  v272[8] = v388;
  v272[9] = v389;
  v272[4] = v384;
  v272[5] = v385;
  v272[7] = v387;
  v272[6] = v386;
  v272[0] = v380;
  v272[1] = v381;
  v272[3] = v383;
  v272[2] = v382;
  v187 = v388;
  v188 = v389;
  v183 = v384;
  v184 = v385;
  v185 = v386;
  v186 = v387;
  v179 = v380;
  v180 = v381;
  *&v273 = v390;
  *(&v273 + 1) = v34;
  v181 = v382;
  v182 = v383;
  v189 = v273;
  v275[8] = v388;
  v275[9] = v389;
  v275[4] = v384;
  v275[5] = v385;
  v275[7] = v387;
  v275[6] = v386;
  v274 = v36;
  v190 = v36;
  v275[0] = v380;
  v275[1] = v381;
  v275[3] = v383;
  v275[2] = v382;
  v276 = v390;
  v277 = v34;
  v278 = v36;
  sub_1A388F6D8(v272, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v275, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(asc_1A3A80978);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v37 = v2[8];
  v38 = v2[9];
  v39 = v2[10];
  v40 = v2[11];
  v41 = sub_1A3A30D50();
  v42 = sub_1A3A31480();
  v44 = v43;
  sub_1A3940614(1, v41, &v380, v37, v38, v39, v40);

  v279[8] = v388;
  v279[9] = v389;
  v279[4] = v384;
  v279[5] = v385;
  v279[7] = v387;
  v279[6] = v386;
  v279[0] = v380;
  v279[1] = v381;
  v279[3] = v383;
  v279[2] = v382;
  v199 = v388;
  v200 = v389;
  v195 = v384;
  v196 = v385;
  v197 = v386;
  v198 = v387;
  v191 = v380;
  v192 = v381;
  *&v280 = v390;
  *(&v280 + 1) = v42;
  v193 = v382;
  v194 = v383;
  v201 = v280;
  v282[8] = v388;
  v282[9] = v389;
  v282[4] = v384;
  v282[5] = v385;
  v282[7] = v387;
  v282[6] = v386;
  v281 = v44;
  v202 = v44;
  v282[0] = v380;
  v282[1] = v381;
  v282[3] = v383;
  v282[2] = v382;
  v283 = v390;
  v284 = v42;
  v285 = v44;
  sub_1A388F6D8(v279, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v282, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A809A0);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v45 = v2[24];
  v46 = v2[25];
  v47 = v2[26];
  v48 = v2[27];
  v49 = sub_1A3A30D60();
  v50 = sub_1A3A31480();
  v52 = v51;
  sub_1A3940614(1, v49, &v380, v45, v46, v47, v48);

  v298[8] = v388;
  v298[9] = v389;
  v298[4] = v384;
  v298[5] = v385;
  v298[7] = v387;
  v298[6] = v386;
  v298[0] = v380;
  v298[1] = v381;
  v298[3] = v383;
  v298[2] = v382;
  v211 = v388;
  v212 = v389;
  v207 = v384;
  v208 = v385;
  v210 = v387;
  v209 = v386;
  v203 = v380;
  v204 = v381;
  *&v299 = v390;
  *(&v299 + 1) = v50;
  v205 = v382;
  v206 = v383;
  v213 = v299;
  v301[8] = v388;
  v301[9] = v389;
  v301[4] = v384;
  v301[5] = v385;
  v301[7] = v387;
  v301[6] = v386;
  v300 = v52;
  v214 = v52;
  v301[0] = v380;
  v301[1] = v381;
  v301[3] = v383;
  v301[2] = v382;
  v302 = v390;
  v303 = v50;
  v304 = v52;
  sub_1A388F6D8(v298, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v301, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A809C8);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v53 = *(v2 + 80);
  swift_getKeyPath(byte_1A3A809F0);
  v392.n128_u64[0] = v53;
  sub_1A39C8240(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v54 = v53[31];
  v55 = v53[32];
  v56 = v53[33];
  v57 = v53[34];

  v58 = sub_1A3A30E00();
  v59 = sub_1A3A31480();
  v61 = v60;
  sub_1A3940614(1, v58, &v380, v54, v55, v56, v57);

  v317[8] = v388;
  v317[9] = v389;
  v317[4] = v384;
  v317[5] = v385;
  v317[7] = v387;
  v317[6] = v386;
  v317[0] = v380;
  v317[1] = v381;
  v317[3] = v383;
  v317[2] = v382;
  v223 = v388;
  v224 = v389;
  v219 = v384;
  v220 = v385;
  v222 = v387;
  v221 = v386;
  v215 = v380;
  v216 = v381;
  *&v318 = v390;
  *(&v318 + 1) = v59;
  v218 = v383;
  v217 = v382;
  v225 = v318;
  v320[8] = v388;
  v320[9] = v389;
  v320[4] = v384;
  v320[5] = v385;
  v320[7] = v387;
  v320[6] = v386;
  v319 = v61;
  v226 = v61;
  v320[0] = v380;
  v320[1] = v381;
  v320[3] = v383;
  v320[2] = v382;
  v321 = v390;
  v322 = v59;
  v323 = v61;
  sub_1A388F6D8(v317, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v320, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A80A18);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v62 = v2[16];
  v63 = v2[17];
  v64 = v2[18];
  v65 = v2[19];
  v66 = sub_1A3A30D60();
  v67 = sub_1A3A31480();
  v69 = v68;
  sub_1A3940614(1, v66, &v380, v62, v63, v64, v65);

  v324[8] = v388;
  v324[9] = v389;
  v324[4] = v384;
  v324[5] = v385;
  v324[7] = v387;
  v324[6] = v386;
  v324[0] = v380;
  v324[1] = v381;
  v324[3] = v383;
  v324[2] = v382;
  v235 = v388;
  v236 = v389;
  v231 = v384;
  v232 = v385;
  v234 = v387;
  v233 = v386;
  v227 = v380;
  v228 = v381;
  *&v325 = v390;
  *(&v325 + 1) = v67;
  v230 = v383;
  v229 = v382;
  v237 = v325;
  v327[8] = v388;
  v327[9] = v389;
  v327[4] = v384;
  v327[5] = v385;
  v327[7] = v387;
  v327[6] = v386;
  v326 = v69;
  v238 = v69;
  v327[0] = v380;
  v327[1] = v381;
  v327[3] = v383;
  v327[2] = v382;
  v328 = v390;
  v329 = v67;
  v330 = v69;
  sub_1A388F6D8(v324, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v327, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A80A40);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v70 = v2[20];
  v71 = v2[21];
  v72 = v2[22];
  v73 = v2[23];
  v74 = sub_1A3A30DC0();
  v75 = sub_1A3A31480();
  v77 = v76;
  sub_1A3940614(1, v74, &v380, v70, v71, v72, v73);

  v331[8] = v388;
  v331[9] = v389;
  v331[4] = v384;
  v331[5] = v385;
  v331[7] = v387;
  v331[6] = v386;
  v331[0] = v380;
  v331[1] = v381;
  v331[3] = v383;
  v331[2] = v382;
  v247 = v388;
  v248 = v389;
  v243 = v384;
  v244 = v385;
  v246 = v387;
  v245 = v386;
  v239 = v380;
  v240 = v381;
  *&v332 = v390;
  *(&v332 + 1) = v75;
  v242 = v383;
  v241 = v382;
  v249 = v332;
  v334[8] = v388;
  v334[9] = v389;
  v334[4] = v384;
  v334[5] = v385;
  v334[7] = v387;
  v334[6] = v386;
  v333 = v77;
  v250 = v77;
  v334[0] = v380;
  v334[1] = v381;
  v334[3] = v383;
  v334[2] = v382;
  v335 = v390;
  v336 = v75;
  v337 = v77;
  sub_1A388F6D8(v331, &v392, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v334, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A809C8);
  v392.n128_u64[0] = v2;
  sub_1A3A2F080();

  v78 = *(v2 + 80);
  swift_getKeyPath(asc_1A3A80A68);
  v392.n128_u64[0] = v78;
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v79 = v78[35];
  v80 = v78[36];
  v81 = v78[37];
  v82 = v78[38];

  v83 = sub_1A3A30DE0();
  v84 = sub_1A3A31480();
  v86 = v85;
  sub_1A3940614(1, v83, &v368, v79, v80, v81, v82);

  v338[8] = v376;
  v338[9] = v377;
  v338[4] = v372;
  v338[5] = v373;
  v338[7] = v375;
  v338[6] = v374;
  v338[0] = v368;
  v338[1] = v369;
  v338[3] = v371;
  v338[2] = v370;
  v400 = v376;
  v401 = v377;
  v396 = v372;
  v397 = v373;
  v399 = v375;
  v398 = v374;
  v392 = v368;
  v393 = v369;
  *&v339 = v378;
  *(&v339 + 1) = v84;
  v395 = v371;
  v394 = v370;
  v402 = v339;
  v341[8] = v376;
  v341[9] = v377;
  v341[4] = v372;
  v341[5] = v373;
  v341[7] = v375;
  v341[6] = v374;
  v340 = v86;
  v403 = v86;
  v341[0] = v368;
  v341[1] = v369;
  v341[3] = v371;
  v341[2] = v370;
  v342 = v378;
  v343 = v84;
  v344 = v86;
  sub_1A388F6D8(v338, &v380, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v341, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(byte_1A3A809C8);
  v380.n128_u64[0] = v2;
  sub_1A3A2F080();

  v87 = *(v2 + 80);
  swift_getKeyPath(asc_1A3A80A90);
  v380.n128_u64[0] = v87;
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v88 = v87[39];
  v89 = v87[40];
  v90 = v87[41];
  v91 = v87[42];

  v92 = sub_1A3A30D70();
  v93 = sub_1A3A31480();
  v95 = v94;
  sub_1A3940614(1, v92, &v355, v88, v89, v90, v91);

  v345[8] = v363;
  v345[9] = v364;
  v345[4] = v359;
  v345[5] = v360;
  v345[7] = v362;
  v345[6] = v361;
  v345[0] = v355;
  v345[1] = v356;
  v345[3] = v358;
  v345[2] = v357;
  v388 = v363;
  v389 = v364;
  v384 = v359;
  v385 = v360;
  v387 = v362;
  v386 = v361;
  v380 = v355;
  v381 = v356;
  *&v346 = v365;
  *(&v346 + 1) = v93;
  v383 = v358;
  v382 = v357;
  v390 = v346;
  v348[8] = v363;
  v348[9] = v364;
  v348[4] = v359;
  v348[5] = v360;
  v348[7] = v362;
  v348[6] = v361;
  v347 = v95;
  v391 = v95;
  v348[0] = v355;
  v348[1] = v356;
  v348[3] = v358;
  v348[2] = v357;
  v349 = v365;
  v350 = v93;
  v351 = v95;
  sub_1A388F6D8(v345, &v368, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(v348, &qword_1EB100580, &qword_1A3A808F8);
  swift_getKeyPath(asc_1A3A80AB8);
  v368.n128_u64[0] = v2;
  sub_1A3A2F080();

  v96 = v2[95];
  v97 = v2[96];
  v98 = v2[97];
  v99 = v2[98];
  v100 = sub_1A3A30DF0();
  v101 = sub_1A3A31480();
  v103 = v102;
  sub_1A3940614(1, v100, &v167, v96, v97, v98, v99);

  v352[8] = v175;
  v352[9] = v176;
  v352[4] = v171;
  v352[5] = v172;
  v352[7] = v174;
  v352[6] = v173;
  v352[0] = v167;
  v352[1] = v168;
  v352[3] = v170;
  v352[2] = v169;
  v376 = v175;
  v377 = v176;
  v372 = v171;
  v373 = v172;
  v375 = v174;
  v374 = v173;
  v368 = v167;
  v369 = v168;
  *&v353 = v177;
  *(&v353 + 1) = v101;
  v371 = v170;
  v370 = v169;
  v378 = v353;
  v363 = v175;
  v364 = v176;
  v359 = v171;
  v360 = v172;
  v362 = v174;
  v361 = v173;
  v354 = v103;
  v379 = v103;
  v355 = v167;
  v356 = v168;
  v358 = v170;
  v357 = v169;
  v365 = v177;
  v366 = v101;
  v367 = v103;
  sub_1A388F6D8(v352, v166, &qword_1EB100580, &qword_1A3A808F8);
  sub_1A388F740(&v355, &qword_1EB100580, &qword_1A3A808F8);
  *v4 = v165;
  *(v4 + 8) = 0;
  *(v4 + 9) = 1;
  v104 = *&v178[144];
  *(v4 + 138) = *&v178[128];
  *(v4 + 154) = v104;
  *(v4 + 170) = *&v178[160];
  *(v4 + 184) = *&v178[174];
  v105 = *&v178[80];
  *(v4 + 74) = *&v178[64];
  *(v4 + 90) = v105;
  v106 = *&v178[112];
  *(v4 + 106) = *&v178[96];
  *(v4 + 122) = v106;
  v107 = *&v178[16];
  *(v4 + 10) = *v178;
  *(v4 + 26) = v107;
  v108 = *&v178[48];
  *(v4 + 42) = *&v178[32];
  *(v4 + 58) = v108;
  v109 = v295;
  *(v4 + 328) = v294;
  *(v4 + 344) = v109;
  *(v4 + 360) = v296;
  *(v4 + 376) = v297;
  v110 = v291;
  *(v4 + 264) = v290;
  *(v4 + 280) = v110;
  v111 = v293;
  *(v4 + 296) = v292;
  *(v4 + 312) = v111;
  v112 = v287;
  *(v4 + 200) = v286;
  *(v4 + 216) = v112;
  v113 = v289;
  *(v4 + 232) = v288;
  *(v4 + 248) = v113;
  v114 = v314;
  *(v4 + 512) = v313;
  *(v4 + 528) = v114;
  *(v4 + 544) = v315;
  *(v4 + 560) = v316;
  v115 = v310;
  *(v4 + 448) = v309;
  *(v4 + 464) = v115;
  v116 = v312;
  *(v4 + 480) = v311;
  *(v4 + 496) = v116;
  v117 = v306;
  *(v4 + 384) = v305;
  *(v4 + 400) = v117;
  v118 = v308;
  *(v4 + 416) = v307;
  *(v4 + 432) = v118;
  v119 = v188;
  *(v4 + 696) = v187;
  *(v4 + 712) = v119;
  *(v4 + 728) = v189;
  *(v4 + 744) = v190;
  v120 = v184;
  *(v4 + 632) = v183;
  *(v4 + 648) = v120;
  v121 = v186;
  *(v4 + 664) = v185;
  *(v4 + 680) = v121;
  v122 = v180;
  *(v4 + 568) = v179;
  *(v4 + 584) = v122;
  v123 = v182;
  *(v4 + 600) = v181;
  *(v4 + 616) = v123;
  v124 = v200;
  *(v4 + 880) = v199;
  *(v4 + 896) = v124;
  *(v4 + 912) = v201;
  *(v4 + 928) = v202;
  v125 = v196;
  *(v4 + 816) = v195;
  *(v4 + 832) = v125;
  v126 = v198;
  *(v4 + 848) = v197;
  *(v4 + 864) = v126;
  v127 = v192;
  *(v4 + 752) = v191;
  *(v4 + 768) = v127;
  v128 = v194;
  *(v4 + 784) = v193;
  *(v4 + 800) = v128;
  v129 = v212;
  *(v4 + 1064) = v211;
  *(v4 + 1080) = v129;
  *(v4 + 1096) = v213;
  *(v4 + 1112) = v214;
  v130 = v208;
  *(v4 + 1000) = v207;
  *(v4 + 1016) = v130;
  v131 = v210;
  *(v4 + 1032) = v209;
  *(v4 + 1048) = v131;
  v132 = v204;
  *(v4 + 936) = v203;
  *(v4 + 952) = v132;
  v133 = v206;
  *(v4 + 968) = v205;
  *(v4 + 984) = v133;
  v134 = v224;
  *(v4 + 1248) = v223;
  *(v4 + 1264) = v134;
  *(v4 + 1280) = v225;
  *(v4 + 1296) = v226;
  v135 = v220;
  *(v4 + 1184) = v219;
  *(v4 + 1200) = v135;
  v136 = v222;
  *(v4 + 1216) = v221;
  *(v4 + 1232) = v136;
  v137 = v216;
  *(v4 + 1120) = v215;
  *(v4 + 1136) = v137;
  v138 = v218;
  *(v4 + 1152) = v217;
  *(v4 + 1168) = v138;
  v139 = v236;
  *(v4 + 1432) = v235;
  *(v4 + 1448) = v139;
  *(v4 + 1464) = v237;
  *(v4 + 1480) = v238;
  v140 = v232;
  *(v4 + 1368) = v231;
  *(v4 + 1384) = v140;
  v141 = v234;
  *(v4 + 1400) = v233;
  *(v4 + 1416) = v141;
  v142 = v228;
  *(v4 + 1304) = v227;
  *(v4 + 1320) = v142;
  v143 = v230;
  *(v4 + 1336) = v229;
  *(v4 + 1352) = v143;
  v144 = v248;
  *(v4 + 1616) = v247;
  *(v4 + 1632) = v144;
  *(v4 + 1648) = v249;
  *(v4 + 1664) = v250;
  v145 = v244;
  *(v4 + 1552) = v243;
  *(v4 + 1568) = v145;
  v146 = v246;
  *(v4 + 1584) = v245;
  *(v4 + 1600) = v146;
  v147 = v240;
  *(v4 + 1488) = v239;
  *(v4 + 1504) = v147;
  v148 = v242;
  *(v4 + 1520) = v241;
  *(v4 + 1536) = v148;
  v149 = v401;
  *(v4 + 1800) = v400;
  *(v4 + 1816) = v149;
  *(v4 + 1832) = v402;
  *(v4 + 1848) = v403;
  v150 = v397;
  *(v4 + 1736) = v396;
  *(v4 + 1752) = v150;
  v151 = v399;
  *(v4 + 1768) = v398;
  *(v4 + 1784) = v151;
  v152 = v393;
  *(v4 + 1672) = v392;
  *(v4 + 1688) = v152;
  v153 = v395;
  *(v4 + 1704) = v394;
  *(v4 + 1720) = v153;
  v154 = v389;
  *(v4 + 1984) = v388;
  *(v4 + 2000) = v154;
  *(v4 + 2016) = v390;
  *(v4 + 2032) = v391;
  v155 = v385;
  *(v4 + 1920) = v384;
  *(v4 + 1936) = v155;
  v156 = v387;
  *(v4 + 1952) = v386;
  *(v4 + 1968) = v156;
  v157 = v381;
  *(v4 + 1856) = v380;
  *(v4 + 1872) = v157;
  v158 = v383;
  *(v4 + 1888) = v382;
  *(v4 + 1904) = v158;
  v159 = v377;
  *(v4 + 2168) = v376;
  *(v4 + 2184) = v159;
  *(v4 + 2200) = v378;
  *(v4 + 2216) = v379;
  v160 = v373;
  *(v4 + 2104) = v372;
  *(v4 + 2120) = v160;
  v161 = v375;
  *(v4 + 2136) = v374;
  *(v4 + 2152) = v161;
  v162 = v369;
  *(v4 + 2040) = v368;
  *(v4 + 2056) = v162;
  result = *&v370;
  v164 = v371;
  *(v4 + 2072) = v370;
  *(v4 + 2088) = v164;
  return result;
}

void sub_1A39C732C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v8 = off_1ED997FE0;
  swift_getKeyPath(byte_1A3A80788);
  *&v26 = v8;
  sub_1A39C8240(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v9 = v8[2];
  swift_getKeyPath(byte_1A3A80B70);
  *&v26 = v9;
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v10 = [objc_opt_self() solCamDebugMenuEnabled];

  if (v10)
  {
    sub_1A3A30DD0();
    v11 = sub_1A3A30E10();

    sub_1A3A31480();
    sub_1A3A2F780();
    v23 = v27;
    v24 = v28;
    v22 = v26;
    v12 = swift_projectBox();
    (*(v5 + 16))(v7, v12, v4);
    sub_1A3A312A0();
    (*(v5 + 8))(v7, v4);
    v13 = v25;
    v14 = sub_1A3A2FAA0();
    v15 = sub_1A3A30610();
    sub_1A3A2EA60();
    v17 = v22;
    v16 = v23;
    v18 = v24;
    v19 = vdupq_n_s64(0x100uLL);
    v19.i64[0] = v11;
    v20 = sub_1A39C8A18;
    v21 = sub_1A39C7688;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v21 = 0;
    v20 = 0;
    a1 = 0;
    v15 = 0;
    v19 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v18 = 0uLL;
  }

  *a2 = v19;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v18;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v21;
  *(a2 + 96) = 0;
  *(a2 + 104) = v20;
  *(a2 + 112) = a1;
}

uint64_t sub_1A39C7688@<X0>(double *a1@<X8>)
{
  v2 = sub_1A3A30220();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0x77656956746F6F52;
  v15[1] = 0xE800000000000000;
  sub_1A3A30350();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

void sub_1A39C77C4(CGFloat *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = swift_projectBox();
  (*(v4 + 16))(v6, v11, v3);
  sub_1A3A312A0();
  (*(v4 + 8))(v6, v3);
  v12 = v15;
  v16.origin.x = v8;
  v16.origin.y = v7;
  v16.size.width = v10;
  v16.size.height = v9;
  if (CGRectEqualToRect(v15[6], v16))
  {
    v12[6].origin.x = v8;
    v12[6].origin.y = v7;
    v12[6].size.width = v10;
    v12[6].size.height = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A809A0);
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v14 - 6) = v12;
    *(&v14 - 5) = v8;
    *(&v14 - 4) = v7;
    *(&v14 - 3) = v10;
    *(&v14 - 2) = v9;
    v15 = v12;
    sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39C79F0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v7 = off_1ED997FE0;
  swift_getKeyPath(byte_1A3A80788);
  *&v28 = v7;
  sub_1A39C8240(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v8 = v7[2];
  swift_getKeyPath(byte_1A3A80B70);
  *&v28 = v8;
  sub_1A39C8240(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v9 = [objc_opt_self() solCamDebugMenuEnabled];

  if (v9)
  {
    v26 = sub_1A3A30DB0();
    *&v24 = type metadata accessor for ChromeViewSpec();
    v10 = swift_projectBox();
    v25 = *(v4 + 16);
    v25(v6, v10, v3);
    sub_1A3A312A0();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v12 = v28;
    swift_getKeyPath(aH_22);
    *&v28 = v12;
    sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    v13 = *(v12 + 400);
    v14 = *(v12 + 408);

    sub_1A391049C(v13, v14);
    sub_1A3A31480();
    sub_1A3A2F780();
    v23 = v29;
    v24 = v30;
    v22 = v28;
    v25(v6, v10, v3);
    sub_1A3A312A0();
    v11(v6, v3);
    v15 = v27;
    v16 = sub_1A3A2FAA0();
    result = sub_1A3A30610();
    v19 = v22;
    v18 = v23;
    v20 = v24;
    v21 = vdupq_n_s64(0x100uLL);
    v21.i64[0] = v26;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    result = 0;
    v21 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
    v20 = 0uLL;
  }

  *a2 = v21;
  *(a2 + 16) = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v20;
  *(a2 + 64) = 0;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = result;
  return result;
}

unint64_t sub_1A39C7DF0()
{
  result = qword_1ED998F18;
  if (!qword_1ED998F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F18);
  }

  return result;
}

unint64_t sub_1A39C7E4C()
{
  result = qword_1EB100530;
  if (!qword_1EB100530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100518, &qword_1A3A80850);
    sub_1A39C7ED8();
    sub_1A39C80D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100530);
  }

  return result;
}

unint64_t sub_1A39C7ED8()
{
  result = qword_1EB100538;
  if (!qword_1EB100538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100540, &qword_1A3A80890);
    sub_1A39C7F90();
    sub_1A38A08F8(&qword_1ED998F38, &qword_1EB100558, &qword_1A3A808A8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100538);
  }

  return result;
}

unint64_t sub_1A39C7F90()
{
  result = qword_1ED998F20;
  if (!qword_1ED998F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100548, &qword_1A3A80898);
    sub_1A39C801C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F20);
  }

  return result;
}

unint64_t sub_1A39C801C()
{
  result = qword_1ED998F28;
  if (!qword_1ED998F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100550, &qword_1A3A808A0);
    sub_1A39C8240(&qword_1ED998F30, type metadata accessor for ChromePadView, &unk_1A3A82B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F28);
  }

  return result;
}

unint64_t sub_1A39C80D8()
{
  result = qword_1ED998F40;
  if (!qword_1ED998F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100560, &qword_1A3A808B0);
    sub_1A39C8190();
    sub_1A38A08F8(&qword_1ED998F50, &qword_1EB100568, &qword_1A3A808B8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F40);
  }

  return result;
}

unint64_t sub_1A39C8190()
{
  result = qword_1ED998F48;
  if (!qword_1ED998F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F48);
  }

  return result;
}

unint64_t sub_1A39C81E4()
{
  result = qword_1ED998F58;
  if (!qword_1ED998F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F58);
  }

  return result;
}

uint64_t sub_1A39C8240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A39C8298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A39C8C38();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

id sub_1A39C82FC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v19[1] = a1;
  v20 = a3;
  v3 = sub_1A3A2F570();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF50, &qword_1A3A7D160);
  v19[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1005C8, &qword_1A3A80CC8);
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  result = [objc_opt_self() capabilities];
  if (result)
  {
    v14 = result;
    v15 = [result isInternalInstall];

    if (v15)
    {
      sub_1A3A2F560();
      sub_1A3A2EA60();
      sub_1A3A31240();

      (*(v4 + 8))(v6, v3);
      sub_1A3A2F660();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1005D0, &qword_1A3A80CD0);
      sub_1A38A08F8(&qword_1ED998F80, &qword_1EB1005D0, &qword_1A3A80CD0, MEMORY[0x1E697FDF8]);
      sub_1A38A08F8(&qword_1ED998C68, &qword_1EB0FFF50, &qword_1A3A7D160, MEMORY[0x1E697E238]);
      sub_1A3A30AE0();
      (*(v19[0] + 8))(v9, v7);
      v16 = v20;
      (*(v21 + 32))(v20, v12, v10);
      return (*(v21 + 56))(v16, 0, 1, v10);
    }

    else
    {
      v17 = v20;
      v18 = *(v21 + 56);

      return v18(v17, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A39C86B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1A3A80860);
  sub_1A39C8240(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  swift_getKeyPath(byte_1A3A80860);
  sub_1A3A2F0A0();

  *(a2 + 16) = (*(a2 + 16) & 1) == 0;
  swift_getKeyPath(byte_1A3A80860);
  sub_1A3A2F090();

  return result;
}

__n128 sub_1A39C87D4@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 280;
  swift_getKeyPath(asc_1A3A80A68);
  sub_1A39C8240(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1A39C88B4@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 312;
  swift_getKeyPath(asc_1A3A80A90);
  sub_1A39C8240(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

unint64_t sub_1A39C8A80()
{
  result = qword_1EB100590;
  if (!qword_1EB100590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100510, &qword_1A3A80848);
    sub_1A39C8B38();
    sub_1A38A08F8(&qword_1ED998F68, &qword_1EB1005B8, qword_1A3A80C28, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100590);
  }

  return result;
}

unint64_t sub_1A39C8B38()
{
  result = qword_1EB100598;
  if (!qword_1EB100598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100508, &qword_1A3A80818);
    sub_1A38A08F8(&qword_1EB1005A0, &qword_1EB1005A8, &qword_1A3A80C18, MEMORY[0x1E6981880]);
    sub_1A38A08F8(&qword_1ED998F60, &qword_1EB1005B0, &qword_1A3A80C20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100598);
  }

  return result;
}

unint64_t sub_1A39C8C38()
{
  result = qword_1ED998F70;
  if (!qword_1ED998F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1005C0, &unk_1A3A80CB8);
    sub_1A39C8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F70);
  }

  return result;
}

unint64_t sub_1A39C8CBC()
{
  result = qword_1ED998F78;
  if (!qword_1ED998F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F78);
  }

  return result;
}

unint64_t sub_1A39C8D18()
{
  result = qword_1ED998F88;
  if (!qword_1ED998F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1005D8, &qword_1A3A80CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1005D0, &qword_1A3A80CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FFF50, &qword_1A3A7D160);
    sub_1A38A08F8(&qword_1ED998F80, &qword_1EB1005D0, &qword_1A3A80CD0, MEMORY[0x1E697FDF8]);
    sub_1A38A08F8(&qword_1ED998C68, &qword_1EB0FFF50, &qword_1A3A7D160, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998F88);
  }

  return result;
}

void *sub_1A39C8E6C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction] = 0;
  *&v1[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount] = 0;
  v3 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v4 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v5 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  v6 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v7 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v8 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v9 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v10 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v11 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1A3A321B0();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for LiquidLensLayer();
  v13 = objc_msgSendSuper2(&v15, sel_initWithLayer_, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

id sub_1A39C9124(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for LiquidLensLayer();
  v9.receiver = v3;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, sel_cornerRadius);
  if (v7 != a3)
  {
    v8.receiver = v3;
    v8.super_class = v5;
    objc_msgSendSuper2(&v8, sel_setCornerRadius_, a3);
    [*&v3[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass] setCornerRadius_];
    [*&v3[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop] setCornerRadius_];
    [*&v3[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer] setCornerRadius_];
    return [*&v3[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer] setCornerRadius_];
  }

  return result;
}

char *sub_1A39C91F0()
{
  *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction] = 0;
  *&v0[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount] = 0;
  v1 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_initWithIOSurface_];
  v3 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E6979438]) &selRef_initWithIOSurface_];
  v4 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E6979310]) &selRef_initWithIOSurface_];
  v5 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v6 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x1E6979398]) &selRef_initWithIOSurface_];
  v7 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x1E6979398]) &selRef_initWithIOSurface_];
  v8 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_initWithIOSurface_];
  v9 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  *&v0[v9] = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_initWithIOSurface_];
  v121.receiver = v0;
  v121.super_class = type metadata accessor for LiquidLensLayer();
  v10 = objc_msgSendSuper2(&v121, &selRef_initWithIOSurface_);
  v11 = *MEMORY[0x1E69796E8];
  v12 = v10;
  [v12 setCornerCurve_];
  [v12 setAllowsEdgeAntialiasing_];
  [v12 setShadowPathIsBounds_];
  [v12 setPunchoutShadow_];
  v13 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  [*&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass] &selRef:v11 setButtonAccessoryState:? animated:? + 7];
  [*&v12[v13] setAllowsEdgeAntialiasing_];
  [*&v12[v13] setMasksToBounds_];
  [v12 addSublayer_];
  v14 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  v120 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  v116 = v11;
  [*&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer] &selRef:v11 setButtonAccessoryState:? animated:? + 7];
  [*&v12[v14] setAllowsEdgeAntialiasing_];
  v15 = v13;
  v117 = v13;
  [*&v12[v13] &selRef:*&v12[v14] :?videoConfigurationStatusIndicator];
  v16 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  v17 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter];
  v18 = sub_1A3A31810();
  [v17 setValue:v18 forKey:*MEMORY[0x1E6979C10]];

  v19 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  [*&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop] &selRef:v11 setButtonAccessoryState:? animated:? + 7];
  [*&v12[v19] setAllowsEdgeAntialiasing_];
  v20 = *&v12[v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0FE520, &unk_1A3A74240);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A3A681C0;
  v22 = *&v12[v16];
  v118 = sub_1A39CAA64();
  *(v21 + 56) = v118;
  *(v21 + 32) = v22;
  v23 = v20;
  v24 = v22;
  v25 = sub_1A3A31990();

  [v23 setFilters_];

  [*&v12[v15] addSublayer_];
  v26 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  v27 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer];
  v28 = sub_1A3A31810();
  [v27 setName_];

  v29 = *&v12[v26];
  v30 = objc_allocWithZone(MEMORY[0x1E6979458]);
  v31 = v29;
  v32 = [v30 init];
  [v32 setHeight_];
  [v32 setCurvature_];
  [v31 setEffect_];

  [*&v12[v26] setEffectOffset_];
  v33 = *&v12[v26];
  v34 = *&v12[v120];
  v35 = objc_allocWithZone(MEMORY[0x1E6979408]);
  v36 = v33;
  v37 = v34;
  v38 = [v35 init];
  [v38 setSourceLayer_];
  [v38 setHidesSourceLayer_];
  [v38 setMatchesPosition_];
  [v38 setMatchesTransform_];

  [v36 addSublayer_];
  [*&v12[v19] addSublayer_];
  v39 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  v40 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow];
  v41 = sub_1A3A31810();
  [v40 &selRef:v41 setPreferredContentSizeCategory:?];

  [*&v12[v39] setAllowsEdgeAntialiasing_];
  v42 = *&v12[v39];
  v43 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v44 = v42;
  v45 = [v43 initWithWhite:0.0 alpha:0.6588];
  v46 = [v45 CGColor];

  [v44 setBackgroundColor_];
  v47 = *MEMORY[0x1E6979928];
  v48 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v49 = sub_1A3A2F0D0();
  v50 = sub_1A3A31810();
  [v48 setValue:v49 forKey:v50];

  v51 = *&v12[v39];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1A3A681C0;
  *(v52 + 56) = v118;
  *(v52 + 32) = v48;
  v53 = v51;
  v115 = v48;
  v54 = sub_1A3A31990();

  [v53 setFilters_];

  [*&v12[v117] addSublayer_];
  v55 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  v56 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow];
  v57 = sub_1A3A31810();
  [v56 setName_];

  [*&v12[v55] setAllowsEdgeAntialiasing_];
  v58 = *&v12[v55];
  v59 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v60 = v58;
  v61 = [v59 initWithWhite:1.0 alpha:0.6588];
  v62 = [v61 CGColor];

  [v60 setBackgroundColor_];
  v63 = *&v12[v55];
  v64 = *MEMORY[0x1E6979CF8];
  v114 = *MEMORY[0x1E6979CF8];
  v65 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v66 = v63;
  v67 = [v65 initWithType_];
  [v66 setCompositingFilter_];

  v68 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v69 = sub_1A3A2F0D0();
  v70 = sub_1A3A31810();
  [v68 setValue:v69 forKey:v70];

  v71 = *&v12[v55];
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1A3A681C0;
  *(v72 + 56) = v118;
  *(v72 + 32) = v68;
  v73 = v71;
  v119 = v68;
  v74 = sub_1A3A31990();

  [v73 setFilters_];

  [*&v12[v117] addSublayer_];
  v75 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  v76 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer];
  v77 = sub_1A3A31810();
  [v76 setName_];

  v78 = *&v12[v75];
  v79 = objc_allocWithZone(MEMORY[0x1E6979460]);
  v80 = v78;
  v81 = [v79 init];
  [v81 setAmount_];
  [v81 setAngle_];
  [v81 setCurvature_];
  [v81 setHeight_];
  [v81 setSpread_];
  [v80 setEffect_];

  [*&v12[v75] setCornerCurve_];
  v82 = *&v12[v75];
  v83 = *&v12[v120];
  v84 = objc_allocWithZone(MEMORY[0x1E6979408]);
  v85 = v82;
  v86 = v83;
  v87 = [v84 init];
  [v87 setSourceLayer_];
  [v87 setHidesSourceLayer_];
  [v87 setMatchesPosition_];
  [v87 setMatchesTransform_];

  [v85 addSublayer_];
  v88 = *&v12[v75];
  v89 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v90 = v88;
  v91 = [v89 initWithType_];
  [v90 setCompositingFilter_];

  LODWORD(v92) = 1055622431;
  [*&v12[v75] setOpacity_];
  [*&v12[v117] addSublayer_];
  v93 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  v94 = *&v12[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer];
  v95 = sub_1A3A31810();
  [v94 setName_];

  v96 = *&v12[v93];
  v97 = objc_allocWithZone(MEMORY[0x1E6979460]);
  v98 = v96;
  v99 = [v97 init];
  [v99 setAmount_];
  [v99 setAngle_];
  [v99 setCurvature_];
  [v99 setHeight_];
  [v99 setSpread_];
  [v98 setEffect_];

  [*&v12[v93] setCornerCurve_];
  v100 = *&v12[v93];
  v101 = *&v12[v120];
  v102 = objc_allocWithZone(MEMORY[0x1E6979408]);
  v103 = v100;
  v104 = v101;
  v105 = [v102 init];
  [v105 setSourceLayer_];
  [v105 setHidesSourceLayer_];
  [v105 setMatchesPosition_];
  [v105 setMatchesTransform_];

  [v103 addSublayer_];
  v106 = *&v12[v93];
  v107 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v108 = v106;
  v109 = [v107 initWithType_];
  [v108 setCompositingFilter_];

  LODWORD(v110) = 1055622431;
  [*&v12[v93] setOpacity_];
  [*&v12[v117] addSublayer_];
  v111 = *&v12[v117];
  sub_1A39CA044();

  v112 = *&v12[v117];
  sub_1A398FA24(v112);

  sub_1A39CA4A8();
  return v12;
}

void sub_1A39CA044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBB0, &qword_1A3A7BFF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1A3A1E3AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA0, &qword_1A3A7BFE8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA8, &qword_1A3A7BFF0);
  v2 = sub_1A3A31700();

  [v0 setActions_];
}

id sub_1A39CA1B8(uint64_t a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for LiquidLensLayer();
  objc_msgSendSuper2(&v13, sel_layoutSublayers);
  v3 = *&v2[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass];
  [v2 bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [v3 setPosition_];
  [v2 bounds];
  [v3 setBounds_];
  v9 = *&v2[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow];
  [v2 bounds];
  [v9 setBounds_];
  [v2 bounds];
  [v9 setPosition_];
  v10 = *&v2[OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow];
  [v2 bounds];
  [v10 setBounds_];
  [v2 bounds];
  v11 = CGRectGetMidX(v19);
  [v2 bounds];
  return [v10 setPosition_];
}

void sub_1A39CA4A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter);
  v2 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount;
  v3 = sub_1A3A2F0D0();
  [v1 setValue:v3 forKey:*MEMORY[0x1E6979990]];

  v4 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop);
  v5 = *(v0 + v2);
  *&v5 = v5;
  [v4 setOpacity_];
  v6 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow);
  v7 = *(v0 + v2) * 0.5;
  *&v7 = v7;
  [v6 setOpacity_];
  v8 = *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow);
  v9 = *(v0 + v2) * 0.095;
  *&v9 = v9;
  [v8 setOpacity_];
  [v4 setEnabled_];
  [v4 setHidden_];
  [v6 setHidden_];
  [v8 setHidden_];
  v10 = [*(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer) effect];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    [v11 setAmount_];
    [v12 setSpread_];
    [v12 setAngle_];
  }

  v15 = [*(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer) effect];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    [v13 setAmount_];
    [v14 setSpread_];
    [v14 setAngle_];
  }
}

id sub_1A39CA7A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LiquidLensLayer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A39CA8BC()
{
  *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction) = 0;
  *(v0 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount) = 0;
  v1 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_glass;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v3 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_elementLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  v4 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpBackdrop;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v5 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpDisplacementFilter;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v6 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerShadow;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v7 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_innerGlow;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v8 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_topEdgeGlareSdfLayer;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  v9 = OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_bottomEdgeGlareSdfLayer;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
  sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000025, 0x80000001A3AA4060, "CameraUI/LiquidLensLayer.swift", 30, 2, 178, 0);
  __break(1u);
}

unint64_t sub_1A39CAA64()
{
  result = qword_1ED997BA8;
  if (!qword_1ED997BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED997BA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListLayoutCenteredGroupFit(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for ListLayoutCenteredGroupFit(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1A39CABD4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A39CABF4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

unint64_t sub_1A39CAC28()
{
  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (v0[1])
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1A39CAC84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a1 == v2) & ~v3;
  v5 = v2 == 0;
  if (*a2)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v3 = 0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (a1[1] == 1)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1A39CACD0(uint64_t a1, uint64_t a2)
{
  sub_1A3A31730();
  sub_1A3A30F80();
  return v3;
}

void *sub_1A39CAD20(char *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v7);
  v4 = v7;
  v5 = BYTE1(v7);
  v6 = *a1 != 0;
  if (v7)
  {
    v6 = 0;
  }

  if (BYTE1(v7) & (v6 | ~a1[1]))
  {
    v4 = *a1;
    v5 = a1[1];
  }

  *a1 = v4;
  a1[1] = v5 & 1;
  return result;
}

uint64_t sub_1A39CAD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v27 = a1[2];
  v3 = sub_1A3A31E70();
  v29 = a1[3];
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090, &qword_1A3A80F10);
  sub_1A3A2FA90();
  v4 = sub_1A3A2FA90();
  WitnessTable = swift_getWitnessTable();
  v26 = a1[4];
  v44 = v3;
  v45 = v27;
  v46 = v4;
  v47 = WitnessTable;
  v48 = v26;
  v6 = sub_1A3A31220();
  v25 = a1[5];
  v42 = v25;
  v43 = MEMORY[0x1E697EBE0];
  v28 = MEMORY[0x1E697E858];
  v40 = swift_getWitnessTable();
  v41 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090, &qword_1A3A80F10, MEMORY[0x1E69802E0]);
  v38 = swift_getWitnessTable();
  v39 = sub_1A39CC974();
  v37 = swift_getWitnessTable();
  v24 = v6;
  swift_getWitnessTable();
  v7 = sub_1A3A31140();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1006C0, &qword_1A3A80F18);
  v11 = sub_1A3A2FA90();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  *&v18 = v27;
  *(&v18 + 1) = v29;
  *&v19 = v26;
  *(&v19 + 1) = v25;
  v32 = v18;
  v33 = v19;
  v34 = v30;
  sub_1A3A31480();
  sub_1A3A31130();
  LOWORD(v44) = sub_1A39CBFF8(a1) & 0x1FF;
  v20 = swift_getWitnessTable();
  sub_1A39CC9D8();
  sub_1A3A30940();
  (*(v8 + 8))(v10, v7);
  v21 = sub_1A38A08F8(&qword_1EB1006D0, &qword_1EB1006C0, &qword_1A3A80F18, MEMORY[0x1E6980758]);
  v35 = v20;
  v36 = v21;
  swift_getWitnessTable();
  sub_1A3964BD0();
  v22 = *(v12 + 8);
  v22(v14, v11);
  sub_1A3964BD0();
  return (v22)(v17, v11);
}

uint64_t sub_1A39CB23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v43 = a6;
  v41 = sub_1A3A31E70();
  v35 = sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090, &qword_1A3A80F10);
  v38 = sub_1A3A2FA90();
  v37 = sub_1A3A2FA90();
  WitnessTable = swift_getWitnessTable();
  *&v45 = v41;
  *(&v45 + 1) = a2;
  v46 = v37;
  v47 = WitnessTable;
  v48 = a4;
  v10 = sub_1A3A31220();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v32 - v13;
  v14 = *(a1 + 40);
  v45 = *(a1 + 8);
  v50 = v14;
  sub_1A3A31A40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006E0, &unk_1A3A80F20);
  swift_getWitnessTable();
  sub_1A38A08F8(&qword_1ED998FB8, &qword_1EB1006E0, &unk_1A3A80F20, MEMORY[0x1E69E5FB8]);
  sub_1A3A31780();
  v49[0] = v49[2];
  v49[1] = v49[3];
  v44[0] = a2;
  v44[1] = a3;
  v16 = v33;
  v15 = v34;
  v44[2] = v33;
  v44[3] = v34;
  KeyPath = swift_getKeyPath(byte_1A3A80F30, v44);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  v19 = *(a1 + 48);
  *(v18 + 80) = *(a1 + 32);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 48) = *a1;
  *(v18 + 64) = v20;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v46 = v16;
  v47 = v15;
  v21 = type metadata accessor for ListLayoutCenteredGroupFitReporter(0, &v45);
  (*(*(v21 - 8) + 16))(&v45, a1, v21);
  v44[10] = v15;
  v44[11] = MEMORY[0x1E697EBE0];
  v22 = swift_getWitnessTable();
  v23 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090, &qword_1A3A80F10, MEMORY[0x1E69802E0]);
  v44[8] = v22;
  v44[9] = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1A39CC974();
  v44[6] = v24;
  v44[7] = v25;
  v26 = v37;
  v27 = swift_getWitnessTable();
  v28 = v36;
  sub_1A3A31200(v49, KeyPath, sub_1A39CCA80, v18, v41, v26, WitnessTable, v16, v27);
  v44[5] = v27;
  swift_getWitnessTable();
  v29 = v39;
  sub_1A3964BD0();
  v30 = *(v42 + 8);
  v30(v28, v10);
  sub_1A3964BD0();
  return (v30)(v29, v10);
}

uint64_t sub_1A39CB690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a5;
  v49 = a3;
  v60 = a7;
  v11 = *(a3 - 8);
  v48 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A3A2FA90();
  v57 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v46 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090, &qword_1A3A80F10);
  v55 = sub_1A3A2FA90();
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v46 - v20;
  v52 = sub_1A3A2FA90();
  v59 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v56 = &v46 - v24;
  (*(a2 + 48))(a1, v23);
  sub_1A39DDAD0(a4, a6);
  (*(v15 + 8))(v18, a4);
  v25 = v49;
  (*(v11 + 16))(v13, a1, v49);
  v26 = (*(v11 + 80) + 128) & ~*(v11 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = a4;
  v28 = v54;
  *(v27 + 32) = v54;
  *(v27 + 40) = a6;
  v29 = *(a2 + 48);
  *(v27 + 80) = *(a2 + 32);
  *(v27 + 96) = v29;
  *(v27 + 112) = *(a2 + 64);
  v30 = *(a2 + 16);
  *(v27 + 48) = *a2;
  *(v27 + 64) = v30;
  (*(v11 + 32))(v27 + v26, v13, v25);
  v67[0] = v25;
  v67[1] = a4;
  v67[2] = v28;
  v67[3] = a6;
  v31 = type metadata accessor for ListLayoutCenteredGroupFitReporter(0, v67);
  (*(*(v31 - 8) + 16))(v67, a2, v31);
  v65 = a6;
  v66 = MEMORY[0x1E697EBE0];
  v32 = v51;
  WitnessTable = swift_getWitnessTable();
  v34 = sub_1A389EEE0();
  v35 = v50;
  v36 = v47;
  sub_1A39CFD78(MEMORY[0x1E69E7DE0], sub_1A39CBCA8, 0, sub_1A39CCA90, v27, v32, MEMORY[0x1E69E7DE0], WitnessTable, v34);

  (*(v57 + 8))(v36, v32);
  v37 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090, &qword_1A3A80F10, MEMORY[0x1E69802E0]);
  v63 = WitnessTable;
  v64 = v37;
  v38 = v55;
  v39 = swift_getWitnessTable();
  v40 = v53;
  sub_1A3A30C20();
  (*(v58 + 8))(v35, v38);
  v41 = sub_1A39CC974();
  v61 = v39;
  v62 = v41;
  v42 = v52;
  swift_getWitnessTable();
  v43 = v56;
  sub_1A3964BD0();
  v44 = *(v59 + 8);
  v44(v40, v42);
  sub_1A3964BD0();
  return (v44)(v43, v42);
}

void sub_1A39CBCA8(CGFloat *a1@<X8>)
{
  v2 = sub_1A3A30210();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A30340();
  sub_1A3A2F810();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetWidth(v15);
}

uint64_t sub_1A39CBDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v8 = *v7;
  (*(v9 + 16))(&v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v11, v5);
  v20[5] = v8;
  v21 = 0;
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v22 = v13;
  v23 = v12;
  v20[2] = v12;
  v20[3] = v13;
  v14 = sub_1A3A31730();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v20, &v23, v14);
  sub_1A3A2F5A0();
  v16 = sub_1A3A31DE0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v20, &v22, v16);
  sub_1A3A30FC0();
  sub_1A3A30F90();
  sub_1A3A31740();
  v20[0] = v12;
  v20[1] = v13;
  v19 = v20[4];
  sub_1A3A30FA0();
  (*(v15 + 8))(&v23, v14);
  return (*(v17 + 8))(&v22, v16);
}

uint64_t sub_1A39CBFF8(uint64_t a1)
{
  v16 = *(v1 + 64);
  sub_1A3A31730();
  sub_1A3A30FC0();
  sub_1A3A30F90();
  sub_1A3A31720();
  swift_getWitnessTable();
  sub_1A39CCA2C();
  sub_1A3A31970();

  if (v15)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v6 = __OFADD__(v7, 1);
    v8 = v7 + 1;
    if (!v6)
    {
      v9 = *(v1 + 24);
      v10 = *(v1 + 32) * 0.5;
      v11 = v14 * v8 + v10;
      sub_1A3A30F90();
      sub_1A3A31950();

      v3 = v11 > v9;
      if (v11 > v9 && v10 + *&v16 > v9)
      {
        if (*v1 == *(v1 + 8))
        {
          v3 = sub_1A3A2F900();
          v13 = 0;
        }

        else
        {
          if (*v1 == *(v1 + 16))
          {
            v3 = sub_1A3A2F8E0();
          }

          else
          {
            v3 = sub_1A3A2F8D0();
          }

          v13 = 0;
        }

        return v3 | (v13 << 8);
      }

LABEL_9:
      v13 = 1;
      return v3 | (v13 << 8);
    }
  }

  __break(1u);
  return result;
}

double sub_1A39CC20C@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

uint64_t sub_1A39CC220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, uint64_t a11)
{
  v20 = MEMORY[0x1E69E7DE0];
  swift_getTupleTypeMetadata2();
  v21 = sub_1A3A319D0();
  v22 = sub_1A39CC538(v21, a7, v20, a11);

  result = sub_1A39CACD0(v22, a7);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a9;
  *(a8 + 32) = a10;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = result;
  *(a8 + 72) = v24;
  return result;
}

unint64_t sub_1A39CC354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3A31750();

  return sub_1A39CC3B0(a1, v6, a2, a3);
}

unint64_t sub_1A39CC3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1A3A31790();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1A39CC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A3A31A10())
  {
    sub_1A3A320F0();
    v13 = sub_1A3A320E0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  sub_1A3A2EA60();
  result = sub_1A3A31A10();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A3A319F0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A3A31F30();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A39CC354(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1A39CC824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A39CC87C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A39CC8C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A39CC974()
{
  result = qword_1EB1006B8;
  if (!qword_1EB1006B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1006B8);
  }

  return result;
}

unint64_t sub_1A39CC9D8()
{
  result = qword_1EB1006C8;
  if (!qword_1EB1006C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1006C8);
  }

  return result;
}

unint64_t sub_1A39CCA2C()
{
  result = qword_1EB1006D8;
  if (!qword_1EB1006D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1006D8);
  }

  return result;
}

uint64_t sub_1A39CCAD4@<X0>(uint64_t a1@<X8>)
{
  v9[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v3 = v11;
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = *(v1 + 32);
  *(v4 + 57) = *(v1 + 41);
  v11 = v3;
  v12 = sub_1A39CDEC4;
  v13 = v4;
  v10 = *(v1 + 8);
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = *(v1 + 32);
  *(v6 + 57) = *(v1 + 41);
  sub_1A393A2BC(v1, v9);
  sub_1A393A2BC(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100700, &qword_1A3A81030);
  sub_1A38A08F8(&qword_1ED998FE8, &qword_1EB100700, &qword_1A3A81030, &unk_1A3A828F8);
  sub_1A3A30CA0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100708, &qword_1A3A81038);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A39CCC9C@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_1A39CCD6C(a3, *a1);
  v5 = *a2;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100710, &qword_1A3A81040) + 36);
  v7 = *(sub_1A3A2FBC0() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1A3A30000();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD120, &qword_1A3A6E1F8);
  v6[*(result + 36)] = 0;
  return result;
}

uint64_t sub_1A39CCD6C@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v54 = a1;
  v5 = sub_1A3A30D30();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A3A2FBB0();
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100718, &qword_1A3A81048);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v44 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100720, &qword_1A3A81050);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v44 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100728, &qword_1A3A81058);
  v46 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v44 - v12;
  v14 = sub_1A3A2FEE0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v3 + 56);
  v18 = *(v3 + 48);
  v57 = v18;
  if (v58 == 1)
  {
    v19 = v18;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v57, &qword_1EB0FC680, &qword_1A3A6C850);
    (*(v15 + 8))(v17, v14);
    v19 = *v55;
  }

  v21 = (1.0 - a2) * *(v3 + 32);
  v22 = 1.0 / v19;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v23 = v22 + v21;
  v24 = off_1ED997FE0;
  swift_getKeyPath(byte_1A3A81060);
  *&v55[0] = v24;
  sub_1A39126DC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v25 = v24[2];
  swift_getKeyPath(byte_1A3A81088);
  *&v55[0] = v25;
  sub_1A39126DC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v26 = sub_1A394FC58(5);

  if (v26)
  {
    type metadata accessor for ModeLoupeLayer();
    v27 = swift_allocObject();
    v28 = *(v3 + 16);
    *(v27 + 16) = *v3;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(v3 + 32);
    *(v27 + 57) = *(v3 + 41);
    *(v27 + 80) = v23;
    *(v27 + 88) = a2;
    sub_1A393A2BC(v3, v55);
    sub_1A3A2F770();
    v29 = v46;
    v30 = v52;
    (*(v46 + 16))(v51, v13, v52);
    swift_storeEnumTagMultiPayload();
    sub_1A38A08F8(&qword_1ED998FF0, &qword_1EB100728, &qword_1A3A81058, MEMORY[0x1E697E030]);
    sub_1A38A08F8(&qword_1ED998FF8, &qword_1EB100718, &qword_1A3A81048, MEMORY[0x1E697E8C0]);
    sub_1A3A301F0();
    return (*(v29 + 8))(v13, v30);
  }

  else
  {
    v32 = *v3;
    v33 = *(sub_1A3A2FBC0() + 20);
    v34 = *MEMORY[0x1E697F468];
    v35 = sub_1A3A30000();
    (*(*(v35 - 8) + 104))(&v8[v33], v34, v35);
    *v8 = v32;
    *(v8 + 1) = v32;
    *&v8[*(v45 + 20)] = v23;
    (*(v48 + 104))(v47, *MEMORY[0x1E69814D8], v49);
    v36 = sub_1A3A30E50();
    sub_1A3A2F680();
    sub_1A39CDED4(v8, v10);
    v37 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100730, &qword_1A3A810B0) + 36)];
    v38 = v55[1];
    *v37 = v55[0];
    *(v37 + 1) = v38;
    *(v37 + 4) = v56;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100738, &qword_1A3A810B8);
    *&v10[*(v39 + 52)] = v36;
    *&v10[*(v39 + 56)] = 256;
    v40 = sub_1A3A31480();
    v42 = v41;
    sub_1A39CDF38(v8);
    v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100740, &qword_1A3A810C0) + 36)];
    *v43 = v40;
    v43[1] = v42;
    sub_1A39CDF94(v10, v51);
    swift_storeEnumTagMultiPayload();
    sub_1A38A08F8(&qword_1ED998FF0, &qword_1EB100728, &qword_1A3A81058, MEMORY[0x1E697E030]);
    sub_1A38A08F8(&qword_1ED998FF8, &qword_1EB100718, &qword_1A3A81048, MEMORY[0x1E697E8C0]);
    sub_1A3A301F0();
    return sub_1A388F740(v10, &qword_1EB100718, &qword_1A3A81048);
  }
}

double sub_1A39CD5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v4 = 0.0;
  if (*(a3 + 8))
  {
    v4 = 1.0;
  }

  sub_1A39CF48C(v4);

  return result;
}

void sub_1A39CD620(char *a1, uint64_t a2, double a3, double a4)
{
  [a1 setCornerRadius_];
  v8 = *&a1[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset];
  *&a1[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset] = a3;
  if (v8 != a3)
  {
    [a1 setNeedsLayout];
  }

  v9 = *(a2 + 40) * a4;
  v10 = *&a1[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer];
  v11 = *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction);
  *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_refraction) = v9;
  if (v9 != v11)
  {
    v12 = *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer_warpSdfLayer);
    v13 = sub_1A3A2F0D0();
    v14 = sub_1A3A31810();
    [v12 setValue:v13 forKeyPath:v14];
  }

  v21 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  v15 = sub_1A3A30F90();
  v16 = v20[5];
  MEMORY[0x1EEE9AC00](v15);
  v20[0] = MEMORY[0x1E69E7DE0];
  v20[1] = sub_1A389EEE0();
  v20[2] = sub_1A38E9D44();
  swift_getKeyPath(byte_1A3A810C8, v20);
  *&v21 = v16;
  sub_1A38A08F8(&qword_1ED999000, &qword_1EB0FDA50, &qword_1A3A6F2A0, &unk_1A3A82848);
  sub_1A3A2F080();

  v17 = *(v16 + 40);

  if (v17 != 1 || (v18 = 0.0, (*(a2 + 8) & 1) != 0))
  {
    v18 = 0.01;
    if (a4 > 0.01)
    {
      v18 = a4;
    }
  }

  v19 = fmin(v18, 1.0);
  if (*(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount) != v19)
  {
    *(v10 + OBJC_IVAR____TtC8CameraUI15LiquidLensLayer__glassAmount) = v19;
    sub_1A39CA4A8();
  }
}

char *sub_1A39CD998()
{
  *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset] = 0;
  v1 = [objc_allocWithZone(type metadata accessor for LiquidLensLayer()) init];
  *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer] = v1;
  [v1 setCornerCurve_];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ModeLoupeLayer();
  v2 = objc_msgSendSuper2(&v10, sel_init);
  [v2 setAllowsEdgeAntialiasing_];
  v3 = OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer;
  [v2 addSublayer_];
  v4 = *&v2[v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBB0, &qword_1A3A7BFF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A70140;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  v6 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v7 = v4;
  *(inited + 48) = [v6 init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1A3A1E3AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA0, &qword_1A3A7BFE8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFBA8, &qword_1A3A7BFF0);
  v8 = sub_1A3A31700();

  [v7 setActions_];

  return v2;
}

id sub_1A39CDBC0()
{
  [v0 bounds];
  v19 = CGRectInset(v18, *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset], *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset]);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v4 = *&v0[OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_lensLayer];
  [v4 setBounds_];
  [v0 bounds];
  v5 = v20.origin.x;
  v6 = v20.origin.y;
  v7 = v20.size.width;
  v8 = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = v7;
  v21.size.height = v8;
  [v4 setPosition_];
  [v0 cornerRadius];
  v11 = v10;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v12 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v13 = CGRectGetHeight(v23);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  v14 = v13 * 0.5;
  if (v14 >= v11)
  {
    v14 = v11;
  }

  return [v4 setCornerRadius_];
}

id sub_1A39CDE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModeLoupeLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A39CDED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A2FBB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A39CDF38(uint64_t a1)
{
  v2 = sub_1A3A2FBB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A39CDF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100718, &qword_1A3A81048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_13(uint64_t a1)
{

  sub_1A3670FF4(*(v1 + 64), *(v1 + 72));

  return swift_deallocObject();
}

unint64_t sub_1A39CE068()
{
  result = qword_1ED999008;
  if (!qword_1ED999008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100708, &qword_1A3A81038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100700, &qword_1A3A81030);
    sub_1A38A08F8(&qword_1ED998FE8, &qword_1EB100700, &qword_1A3A81030, &unk_1A3A828F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999008);
  }

  return result;
}

uint64_t type metadata accessor for ModeLoupeBackground(uint64_t a1)
{
  result = qword_1EB100750;
  if (!qword_1EB100750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A39CE1EC(uint64_t a1)
{
  sub_1A39CE288(319);
  if (v1 <= 0x3F)
  {
    sub_1A39CE2E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A39CE288(uint64_t a1)
{
  if (!qword_1EB100760)
  {
    sub_1A3A31430();
    v1 = sub_1A3A31DE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB100760);
    }
  }
}

void sub_1A39CE2E0(uint64_t a1)
{
  if (!qword_1ED999010[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA50, &qword_1A3A6F2A0);
    v1 = sub_1A3A30FC0();
    if (!v2)
    {
      atomic_store(v1, qword_1ED999010);
    }
  }
}

double sub_1A39CE360()
{
  v1 = type metadata accessor for ModeLoupeBackground(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v0 + *(v2 + 36));
  v7 = *v5;
  v6 = v5[1];
  v13 = v7;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v8 = v16;
  sub_1A39CF8E4(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModeLoupeBackground);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A39CEA7C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v13 = v8;
  v14 = sub_1A39CEAE0;
  v15 = v10;
  LOBYTE(v16) = *(v0 + *(v2 + 32));
  sub_1A39CF8E4(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModeLoupeBackground);
  v11 = swift_allocObject();
  sub_1A39CEA7C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100768, &unk_1A3A81198);
  sub_1A38A08F8(&qword_1EB100770, &qword_1EB100768, &unk_1A3A81198, &unk_1A3A828F8);
  sub_1A3A30CA0();

  return result;
}

void sub_1A39CE5A4(uint64_t a1@<X8>, double a2@<D0>)
{
  v29 = a1;
  v30 = sub_1A3A315D0();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A3A2FBB0();
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100748, &unk_1A3A81110);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_1A3A31430();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A3A30DB0();
  v16 = type metadata accessor for ModeLoupeBackground(0);
  sub_1A388F6D8(v2 + *(v16 + 20), v11, &qword_1EB100748, &unk_1A3A81110);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) == 1)
  {
    v31 = a2;
    sub_1A39CF890();
    sub_1A3A31420();
    if (v17(v11, 1, v12) != 1)
    {
      sub_1A388F740(v11, &qword_1EB100748, &unk_1A3A81110);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v18 = *v2;
  v19 = *(sub_1A3A2FBC0() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A3A30000();
  (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
  *v8 = v18;
  *(v8 + 1) = v18;
  *&v8[*(v27 + 20)] = (1.0 - a2) * *(v2 + *(v16 + 32));
  v31 = *&v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8B0, &qword_1A3A811E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A3A681C0;
  sub_1A39CF8E4(v8, v25, MEMORY[0x1E697EAB8]);
  sub_1A39CF94C();
  *(v22 + 32) = sub_1A3A31290();
  v23 = v26;
  sub_1A3A315C0();
  sub_1A3A30A10();
  (*(v28 + 8))(v23, v30);
  sub_1A39CDF38(v8);
  (*(v13 + 8))(v15, v12);
}

double sub_1A39CE9EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for ModeLoupeBackground(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v4 = 0.0;
  if (v3)
  {
    v4 = 1.0;
  }

  sub_1A39CF48C(v4);

  return result;
}

uint64_t sub_1A39CEA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModeLoupeBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for ModeLoupeBackground(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 20);
  v4 = sub_1A3A31430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

double sub_1A39CEC98(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for ModeLoupeBackground(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A39CE9EC(a1, a2, v6);
}

void *sub_1A39CED18(double a1)
{
  v1 = sub_1A3A30D30();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A3A31400();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDE48, &unk_1A3A722F0);
  sub_1A3A313E0();
  *(swift_allocObject() + 16) = xmmword_1A3A791B0;
  v7 = sub_1A3A31850();
  v9 = v8;
  CEKInterpolateClamped();
  v21 = v7;
  v22 = v9;
  v23 = v10;
  sub_1A39CFA64();
  sub_1A3A313B0();

  v21 = sub_1A3A31850();
  v22 = v11;
  v23 = 0x3FF4CCCCCCCCCCCDLL;
  v12 = v6;
  sub_1A3A313B0();

  CEKInterpolateClamped();
  sub_1A3A313D0();
  (*(v18 + 104))(v3, *MEMORY[0x1E69814D8], v19);
  sub_1A3A30E30();
  sub_1A3A313F0();

  v13 = sub_1A39561A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1A39561A4((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  v16 = v13;
  (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v12, v20);
  return v16;
}

uint64_t sub_1A39CF0BC()
{
  v1 = *v0;
  sub_1A3A322C0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1A58F8170](*&v2);
  return sub_1A3A32300();
}

uint64_t sub_1A39CF118()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1A58F8170](*&v1);
}

uint64_t sub_1A39CF154(uint64_t a1)
{
  v2 = *v1;
  sub_1A3A322C0();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1A58F8170](*&v3);
  return sub_1A3A32300();
}

id sub_1A39CF1C0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v1 = sub_1A3A31810();
  v2 = [v0 initWithType_];

  v3 = sub_1A3A2F0D0();
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979990]];

  return v2;
}

BOOL sub_1A39CF26C(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1A3A321C0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void sub_1A39CF2CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1A3A2EA50();
  v4 = sub_1A39FD05C(v3, a1);

  if (v4)
  {
  }

  else if (*(v1 + 40))
  {
    MEMORY[0x1EEE9AC00](v5);
    v7[0] = MEMORY[0x1E69E7DE0];
    v7[1] = sub_1A389EEE0();
    v8 = sub_1A38E9D44();
    KeyPath = swift_getKeyPath(byte_1A3A811A8, v7);
    MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = 0;
    v10 = v1;
    sub_1A38A08F8(&qword_1ED999000, &qword_1EB0FDA50, &qword_1A3A6F2A0, &unk_1A3A82848);
    sub_1A3A2F070();
  }

  else
  {

    *(v1 + 40) = 0;
  }
}

void sub_1A39CF48C(double a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = *(v1 + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v21 = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A3A2EA50();
    sub_1A3956BB0(0, v9, 0);
    v11 = 0;
    v10 = v26;
    v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = v8 + v23;
    while (v11 < *(v8 + 16))
    {
      v12 = v3;
      v13 = *(v3 + 72);
      v14 = v24;
      sub_1A388F6D8(v22 + v13 * v11, v24, &qword_1EB0FDA48, &qword_1A3A78090);
      v15 = sub_1A3A310F0();
      (*(*(v15 - 8) + 16))(v7, v14, v15);
      *&v7[*(v25 + 44)] = a1;
      sub_1A388F740(v14, &qword_1EB0FDA48, &qword_1A3A78090);
      v26 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1A3956BB0((v16 > 1), v17 + 1, 1);
        v10 = v26;
      }

      ++v11;
      *(v10 + 16) = v17 + 1;
      sub_1A39CF810(v7, v10 + v23 + v17 * v13);
      v3 = v12;
      if (v9 == v11)
      {

        v1 = v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_1A39CF2CC(v10);
    if (*(v1 + 40))
    {
      MEMORY[0x1EEE9AC00](v18);
      *(&v20 - 4) = MEMORY[0x1E69E7DE0];
      *(&v20 - 3) = sub_1A389EEE0();
      *(&v20 - 2) = sub_1A38E9D44();
      KeyPath = swift_getKeyPath(byte_1A3A811A8, &v20 - 4);
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v20 - 2) = v1;
      *(&v20 - 8) = 0;
      v26 = v1;
      sub_1A38A08F8(&qword_1ED999000, &qword_1EB0FDA50, &qword_1A3A6F2A0, &unk_1A3A82848);
      sub_1A3A2F070();
    }

    else
    {
      *(v1 + 40) = 0;
    }
  }
}

uint64_t sub_1A39CF810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A39CF890()
{
  result = qword_1EB100778;
  if (!qword_1EB100778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100778);
  }

  return result;
}

uint64_t sub_1A39CF8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A39CF94C()
{
  result = qword_1EB100780;
  if (!qword_1EB100780)
  {
    sub_1A3A2FBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100780);
  }

  return result;
}

unint64_t sub_1A39CF9B8()
{
  result = qword_1EB100788;
  if (!qword_1EB100788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100788);
  }

  return result;
}

unint64_t sub_1A39CFA10()
{
  result = qword_1EB100790;
  if (!qword_1EB100790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100790);
  }

  return result;
}

unint64_t sub_1A39CFA64()
{
  result = qword_1EB100798;
  if (!qword_1EB100798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100798);
  }

  return result;
}

uint64_t sub_1A39CFAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A39CFB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A39CFB54()
{
  result = qword_1EB1007A0;
  if (!qword_1EB1007A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1007A0);
  }

  return result;
}

void sub_1A39CFBC0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6370];
  v3 = MEMORY[0x1E69E6388];
  v7[0] = MEMORY[0x1E69E6370];
  v7[1] = MEMORY[0x1E69E6388];
  swift_getKeyPath(byte_1A3A817C0, v7);
  v8 = a1;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
  sub_1A3A2F080();

  v4 = [*(a1 + 24) invalidate];
  if (*(a1 + 24))
  {
    *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
    KeyPath = swift_getKeyPath(byte_1A3A817C0, v5, v2, v3);
    MEMORY[0x1EEE9AC00](KeyPath);
    v8 = a1;
    sub_1A3A2F070();
  }

  sub_1A38E01D4(*(a1 + 16), 0.0);
  sub_1A38E0410(2);
}

double sub_1A39CFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  v16[0] = sub_1A3A30380();
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = sub_1A3A30390();
  MEMORY[0x1A58F6B00](v16, a6, v14, a8);

  return result;
}

uint64_t sub_1A39CFE64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v365 = a2;
  v379 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v379);
  v364 = &v280 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100800, &qword_1A3A816B0);
  MEMORY[0x1EEE9AC00](v378);
  v363 = &v280 - v4;
  v362 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v362);
  v361 = &v280 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = *(a1 + 2);
  v383 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v381 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = *(a1 - 1);
  v388 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v380 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v394 = *(a1 + 3);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808, &qword_1A3A816B8);
  sub_1A3A2FA90();
  v387 = *(a1 + 4);
  v10 = sub_1A3A2FA90();
  v11 = *(a1 + 5);
  v393 = *(a1 + 6);
  v396 = a1;
  v444 = v393;
  v445 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v443 = MEMORY[0x1E697E040];
  v12 = swift_getWitnessTable();
  v13 = sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808, &qword_1A3A816B8, MEMORY[0x1E697FF70]);
  v440 = v12;
  v441 = v13;
  v14 = swift_getWitnessTable();
  v390 = *(a1 + 7);
  v438 = v14;
  v439 = v390;
  v15 = swift_getWitnessTable();
  v16 = v386;
  v429 = v386;
  *&v430[0] = v10;
  *(&v430[0] + 1) = v11;
  v17 = v11;
  v382 = v11;
  *&v430[1] = v15;
  type metadata accessor for ModeWheelListView(255, &v429);
  sub_1A3A2FA90();
  v18 = sub_1A3A2FA90();
  v436 = swift_getWitnessTable();
  v437 = MEMORY[0x1E697E270];
  v434 = swift_getWitnessTable();
  v435 = MEMORY[0x1E697FB08];
  *&v283 = v18;
  v19 = swift_getWitnessTable();
  v284 = v19;
  v20 = sub_1A389EEE0();
  v21 = sub_1A38E9D44();
  v429 = v18;
  *&v430[0] = MEMORY[0x1E69E7DE0];
  *(&v430[0] + 1) = MEMORY[0x1E69E7DE0];
  *&v430[1] = v19;
  *(&v430[1] + 1) = v20;
  v431 = v21;
  v432 = v20;
  v433 = v21;
  v310 = type metadata accessor for DoubleSpringAnimation(255, &v429);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100818, &unk_1A3A816C0);
  v22 = sub_1A3A2FA90();
  v366 = v22;
  v23 = swift_getWitnessTable();
  v311 = v23;
  v24 = sub_1A38A08F8(&qword_1EB100820, &qword_1EB100818, &unk_1A3A816C0, MEMORY[0x1E6980620]);
  v427 = v23;
  v428 = v24;
  v369 = swift_getWitnessTable();
  v385 = v17[1];
  v429 = v22;
  *&v430[0] = v16;
  v25 = v16;
  *(&v430[0] + 1) = v369;
  *&v430[1] = v385;
  *&v395 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v293 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v289 = &v280 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD090, &qword_1A3A80F10);
  v367 = sub_1A3A2FA90();
  v294 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v286 = &v280 - v27;
  *&v368 = sub_1A3A2FA90();
  v297 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v296 = &v280 - v28;
  v29 = sub_1A3A2FA90();
  v301 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v298 = &v280 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100828, &unk_1A3A816D0);
  v31 = sub_1A3A2FA90();
  v302 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v299 = &v280 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC470, &qword_1A3A6C348);
  v33 = sub_1A3A2FA90();
  v305 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v300 = &v280 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100830, &qword_1A3A816E0);
  v35 = sub_1A3A2FA90();
  v313 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v309 = &v280 - v36;
  v37 = sub_1A3A2FA90();
  v319 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v317 = &v280 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100838, &qword_1A3A816E8);
  v39 = sub_1A3A2FA90();
  v330 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v372 = &v280 - v40;
  v429 = v366;
  *&v430[0] = v25;
  *(&v430[0] + 1) = v369;
  *&v430[1] = v385;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v281 = OpaqueTypeConformance2;
  v42 = sub_1A38A08F8(&qword_1EB0FD088, &qword_1EB0FD090, &qword_1A3A80F10, MEMORY[0x1E69802E0]);
  v425 = OpaqueTypeConformance2;
  v426 = v42;
  v282 = swift_getWitnessTable();
  v423 = v282;
  v424 = MEMORY[0x1E697EBF8];
  v285 = swift_getWitnessTable();
  v421 = v285;
  v422 = MEMORY[0x1E697E5D8];
  v303 = v29;
  v43 = swift_getWitnessTable();
  v44 = sub_1A38A08F8(&qword_1ED9990A8, &qword_1EB100828, &unk_1A3A816D0, MEMORY[0x1E697EC18]);
  v287 = v43;
  v419 = v43;
  v420 = v44;
  v304 = v31;
  v45 = swift_getWitnessTable();
  v46 = sub_1A38A08F8(&qword_1ED996638, &qword_1EB0FC470, &qword_1A3A6C348, MEMORY[0x1E697DDB0]);
  v288 = v45;
  v417 = v45;
  v418 = v46;
  v306 = v33;
  v47 = swift_getWitnessTable();
  v48 = sub_1A38A08F8(&qword_1ED9990B0, &qword_1EB100830, &qword_1A3A816E0, MEMORY[0x1E697DDE8]);
  v290 = v47;
  v415 = v47;
  v416 = v48;
  v314 = v35;
  v292 = swift_getWitnessTable();
  v413 = v292;
  v414 = v48;
  v320 = v37;
  v49 = swift_getWitnessTable();
  v50 = sub_1A38A08F8(&qword_1ED9990B8, &qword_1EB100838, &qword_1A3A816E8, MEMORY[0x1E697FD58]);
  v295 = v49;
  v411 = v49;
  v412 = v50;
  v51 = swift_getWitnessTable();
  v52 = sub_1A39DBDD4();
  v429 = v39;
  v53 = v378;
  *&v430[0] = v378;
  *(&v430[0] + 1) = v51;
  *&v430[1] = v52;
  v54 = swift_getOpaqueTypeMetadata2();
  v321 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v370 = &v280 - v55;
  v332 = v39;
  v429 = v39;
  *&v430[0] = v53;
  v307 = v52;
  v308 = v51;
  *(&v430[0] + 1) = v51;
  *&v430[1] = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = MEMORY[0x1E69E6370];
  v429 = v54;
  *&v430[0] = MEMORY[0x1E69E6370];
  v58 = MEMORY[0x1E69E6388];
  *(&v430[0] + 1) = v56;
  *&v430[1] = MEMORY[0x1E69E6388];
  v59 = swift_getOpaqueTypeMetadata2();
  v326 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v371 = &v280 - v60;
  v322 = v54;
  v429 = v54;
  *&v430[0] = v57;
  v315 = v56;
  *(&v430[0] + 1) = v56;
  *&v430[1] = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_1A39DA768(&qword_1ED9990C0, type metadata accessor for ModeWheelGestureState, &unk_1A3A813D8);
  v429 = v59;
  v63 = v379;
  *&v430[0] = v379;
  *(&v430[0] + 1) = v61;
  *&v430[1] = v62;
  v64 = swift_getOpaqueTypeMetadata2();
  v324 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v323 = &v280 - v65;
  type metadata accessor for ScenePhaseModifier(255);
  v325 = v64;
  v66 = sub_1A3A2FA90();
  v338 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v373 = &v280 - v67;
  v327 = v59;
  v429 = v59;
  *&v430[0] = v63;
  v318 = v61;
  *(&v430[0] + 1) = v61;
  v316 = v62;
  *&v430[1] = v62;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_1A39DA768(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier, &unk_1A3A764F4);
  v312 = v68;
  v409 = v68;
  v410 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_1A3955A7C();
  v429 = v66;
  *&v430[0] = &type metadata for CameraUISettings.ModeWheelPeekBehavior;
  *(&v430[0] + 1) = v70;
  *&v430[1] = v71;
  v72 = swift_getOpaqueTypeMetadata2();
  v335 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v334 = &v280 - v73;
  v339 = v66;
  v429 = v66;
  *&v430[0] = &type metadata for CameraUISettings.ModeWheelPeekBehavior;
  v328 = v71;
  v329 = v70;
  *(&v430[0] + 1) = v70;
  *&v430[1] = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x1E69E6530];
  v429 = v72;
  *&v430[0] = MEMORY[0x1E69E6530];
  v76 = MEMORY[0x1E69E6550];
  *(&v430[0] + 1) = v74;
  *&v430[1] = MEMORY[0x1E69E6550];
  v77 = swift_getOpaqueTypeMetadata2();
  v340 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v337 = &v280 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100858, &unk_1A3A816F8);
  v336 = v72;
  v429 = v72;
  *&v430[0] = v75;
  v331 = v74;
  *(&v430[0] + 1) = v74;
  *&v430[1] = v76;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_1A39DBE84();
  v429 = v77;
  *&v430[0] = v79;
  *(&v430[0] + 1) = v80;
  *&v430[1] = v81;
  v82 = swift_getOpaqueTypeMetadata2();
  v343 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v374 = &v280 - v83;
  v341 = v77;
  v429 = v77;
  *&v430[0] = v79;
  v333 = v80;
  *(&v430[0] + 1) = v80;
  *&v430[1] = v81;
  v84 = swift_getOpaqueTypeConformance2();
  v346 = v82;
  v429 = v82;
  v377 = v79;
  *&v430[0] = v79;
  v85 = v392;
  v342 = v84;
  *(&v430[0] + 1) = v84;
  v376 = v81;
  *&v430[1] = v81;
  v86 = swift_getOpaqueTypeMetadata2();
  v344 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v375 = &v280 - v87;
  v88 = v386;
  v89 = sub_1A3A30010();
  v345 = v86;
  v90 = sub_1A3A2FA90();
  v349 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v348 = &v280 - v91;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100870, &unk_1A3A81708);
  v350 = v90;
  v92 = sub_1A3A2FA90();
  v352 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v351 = &v280 - v93;
  v353 = v94;
  v347 = v89;
  v95 = sub_1A3A2FA90();
  v357 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v354 = &v280 - v96;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9B8, &qword_1A3A6D2E0);
  v358 = v95;
  v360 = sub_1A3A2FA90();
  v359 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360);
  v355 = &v280 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v356 = &v280 - v99;
  v100 = v396;
  v101 = v397;
  v102 = (v397 + v396[40]);
  v104 = *v102;
  v103 = v102[1];
  v429 = v104;
  *&v430[0] = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v105 = (v101 + v100[41]);
  v107 = *v105;
  v106 = v105[1];
  v429 = v107;
  *&v430[0] = v106;
  sub_1A3A30F90();
  *&v280 = v406;
  v108 = v85;
  v109 = *(v85 + 16);
  v391 = v85 + 16;
  v389 = v109;
  v110 = v380;
  v109(v380, v101, v100);
  v111 = *(v108 + 80);
  v112 = (v111 + 64) & ~v111;
  v388 += v112;
  v384 = v112;
  v113 = swift_allocObject();
  *&v114 = v88;
  *(&v114 + 1) = v394;
  *&v115 = v387;
  *(&v115 + 1) = v382;
  v394 = v115;
  v395 = v114;
  *(v113 + 16) = v114;
  *(v113 + 32) = v115;
  v116 = v393;
  v117 = v390;
  *(v113 + 48) = v393;
  *(v113 + 56) = v117;
  v382 = *(v108 + 32);
  v392 = v108 + 32;
  v382(v113 + v112, v110, v100);
  v118 = swift_allocObject();
  v119 = v394;
  *(v118 + 16) = v395;
  *(v118 + 32) = v119;
  *(v118 + 48) = v116;
  *(v118 + 56) = v117;
  *(v118 + 64) = sub_1A39DBF34;
  *(v118 + 72) = v113;
  swift_checkMetadataState();
  CAMPhotoFormatMake();
  v387 = v120;
  v406 = v120;
  *&v407[0] = v121;
  *(&v407[0] + 1) = v122;
  *&v407[1] = v123;
  v389(v110, v397, v100);
  v124 = swift_allocObject();
  v125 = v394;
  *(v124 + 16) = v395;
  *(v124 + 32) = v125;
  *(v124 + 48) = v116;
  *(v124 + 56) = v117;
  v382(v124 + v384, v110, v100);
  swift_checkMetadataState();
  sub_1A39CC9D8();
  sub_1A39DC598();
  sub_1A3A30AA0();

  v284 = v429;
  v406 = v429;
  v283 = v430[0];
  v407[0] = v430[0];
  v280 = v430[1];
  v407[1] = v430[1];
  v408 = v431;
  v126 = v397;
  v127 = v397 + v100[24];
  v128 = v386;
  v129 = sub_1A3A311E0();
  v130 = v381;
  v310 = v129;
  v311 = v127;
  MEMORY[0x1A58F7010]();
  v131 = v110;
  v132 = v110;
  v133 = v126;
  v389(v132, v126, v100);
  v387 = v111;
  v134 = swift_allocObject();
  v135 = v394;
  *(v134 + 16) = v395;
  *(v134 + 32) = v135;
  v136 = v390;
  *(v134 + 48) = v393;
  *(v134 + 56) = v136;
  v382(v134 + v384, v131, v100);
  swift_checkMetadataState();
  v137 = v289;
  sub_1A3A30CA0();

  v138 = *(v383 + 8);
  v139 = v130;
  v140 = v286;
  v383 += 8;
  v369 = v138;
  v138(v139, v128);

  v141 = (v133 + v100[36]);
  v142 = *v141;
  v143 = v141[1];
  v406 = v142;
  *&v407[0] = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30FB0();
  v144 = OpaqueTypeMetadata2;
  sub_1A39D4AC4(v429, *&v430[0], OpaqueTypeMetadata2, v281, *(v430 + 1));

  (*(v293 + 8))(v137, v144);
  if (sub_1A39D4BBC(v100))
  {
    v145 = 0;
    v146 = 0x7FF0000000000000;
  }

  else
  {
    v146 = sub_1A39D4EFC(v396);
  }

  v147 = *(v397 + v396[19]);
  v148 = v296;
  v149 = v367;
  sub_1A391A5DC(v146, v145 & 1, *(v397 + v396[19]), v367, v282);
  (*(v294 + 8))(v140, v149);
  v150 = v390;
  if (v147)
  {
    sub_1A3A30660();
  }

  else
  {
    sub_1A3A30600();
  }

  v151 = sub_1A39D4BBC(v396);
  LODWORD(v366) = v147;
  if ((!v151 || !sub_1A39D4F90(v396)) && qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v152 = v298;
  v153 = v368;
  sub_1A3A30C70();
  v154 = (*(v297 + 8))(v148, v153);
  MEMORY[0x1EEE9AC00](v154);
  v155 = v394;
  *(&v280 - 4) = v395;
  *(&v280 - 3) = v155;
  *(&v280 - 4) = v393;
  *(&v280 - 3) = v150;
  *(&v280 - 2) = v397;
  sub_1A3A31480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100880, &qword_1A3A81718);
  sub_1A39DC6C8();
  v156 = v299;
  v157 = v303;
  sub_1A3A30C60();
  (*(v301 + 8))(v152, v157);
  v158 = v396;
  v429 = sub_1A39D5220(v396);
  v159 = sub_1A38BE458();
  v160 = MEMORY[0x1E6981A90];
  v161 = v300;
  v162 = v304;
  sub_1A3A30CE0();

  (*(v302 + 8))(v156, v162);
  sub_1A39D5378(v158);
  v429 = sub_1A39D5220(v158);
  v163 = v309;
  v164 = v306;
  sub_1A391A6B8(v366, &v429, v306, v160, v290, v159, v309);

  (*(v305 + 8))(v161, v164);
  v165 = sub_1A39D53F4(v158);
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v166 = v396;
  v167 = v397;
  v429 = sub_1A39D5220(v396);
  v168 = v165 & 0x1FF;
  v169 = v317;
  v170 = v314;
  sub_1A391AE40(v168, &v429, v314, v292, v159, v317);

  (*(v313 + 8))(v163, v170);
  v171 = *MEMORY[0x1E697F468];
  v172 = sub_1A3A30000();
  v173 = v361;
  (*(*(v172 - 8) + 104))(v361, v171, v172);
  sub_1A39DA768(qword_1ED9969F8, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  v174 = v320;
  sub_1A3A309B0();
  sub_1A39DC884(v173, MEMORY[0x1E6981998]);
  (*(v319 + 8))(v169, v174);
  if (*(v167 + v166[18]) == 1)
  {
    v175 = v396;
    v176 = v397;
    v177 = (v397 + v396[20]);
    v178 = *v177;
    v179 = v177[1];
    v180 = *(v397 + v396[21]);
    type metadata accessor for ModeWheelGesture(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
    v181 = v363;
    sub_1A3A311B0();
    *v181 = v366;
    *(v181 + 1) = v178;
    *(v181 + 2) = v179;
    v181[24] = v180;
    v182 = v176 + v175[17];
    v183 = *(v182 + 8);
    LOBYTE(v429) = *v182;
    *&v430[0] = v183;
    *(v430 + 8) = *(v182 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100888, &qword_1A3A81720);
    sub_1A3A2F6F0();
    LOBYTE(v176) = v406;
    v184 = *&v407[0];
    v368 = *(v407 + 8);
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100850, &qword_1A3A816F0);
    v186 = &v181[*(v185 + 44)];
    *v186 = v176;
    *(v186 + 1) = v184;
    v187 = v181;
    *(v186 + 1) = v368;
    v188 = &v181[*(v185 + 48)];
    *v188 = sub_1A39D54F4;
    *(v188 + 1) = 0;
    (*(*(v185 - 8) + 56))(v181, 0, 1, v185);
  }

  else
  {
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100850, &qword_1A3A816F0);
    v187 = v363;
    (*(*(v189 - 8) + 56))(v363, 1, 1, v189);
  }

  sub_1A3A2F660();
  v190 = v332;
  v191 = v372;
  sub_1A3A30AE0();
  sub_1A388F740(v187, &qword_1EB100800, &qword_1A3A816B0);
  (*(v330 + 8))(v191, v190);
  v192 = v396;
  v193 = v397;
  v194 = v397 + v396[17];
  v195 = *(v194 + 8);
  LOBYTE(v429) = *v194;
  *&v430[0] = v195;
  *(v430 + 8) = *(v194 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100888, &qword_1A3A81720);
  sub_1A3A2F6E0();
  LOBYTE(v429) = v406;
  v196 = v380;
  v389(v380, v193, v192);
  v197 = swift_allocObject();
  v198 = v394;
  *(v197 + 16) = v395;
  *(v197 + 32) = v198;
  v199 = v390;
  *(v197 + 48) = v393;
  *(v197 + 56) = v199;
  v200 = v382;
  v382(v197 + v384, v196, v192);
  v201 = v322;
  v202 = v370;
  sub_1A3A30CA0();

  (*(v321 + 8))(v202, v201);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  v204 = v364;
  MEMORY[0x1A58F7010](v203);
  v205 = v192;
  v389(v196, v193, v192);
  v206 = swift_allocObject();
  v207 = v394;
  *(v206 + 16) = v395;
  *(v206 + 32) = v207;
  *(v206 + 48) = v393;
  *(v206 + 56) = v199;
  v208 = v384;
  v200(v206 + v384, v196, v205);
  v209 = v323;
  v210 = v327;
  v211 = v371;
  sub_1A3A30CA0();

  sub_1A39DC884(v204, type metadata accessor for ModeWheelGestureState);
  v212 = v210;
  v213 = v208;
  (*(v326 + 8))(v211, v212);
  v214 = v200;
  v215 = v396;
  v389(v196, v397, v396);
  v216 = swift_allocObject();
  v217 = v394;
  *(v216 + 16) = v395;
  *(v216 + 32) = v217;
  v218 = v390;
  *(v216 + 48) = v393;
  *(v216 + 56) = v218;
  v219 = v196;
  v214(v216 + v213, v196, v215);
  v220 = v325;
  sub_1A393BE2C(0, sub_1A39DC8E4, v216, v325, v312);

  (*(v324 + 8))(v209, v220);
  v221 = v218;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v222 = off_1ED997FE0;
  swift_getKeyPath(aX_22);
  v429 = v222;
  sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v223 = v222[2];
  swift_getKeyPath(aX_23);
  v429 = v223;
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v224 = *(v223 + 48);

  LOBYTE(v429) = v224;
  v225 = v396;
  v226 = v389;
  v389(v219, v397, v396);
  v227 = swift_allocObject();
  v228 = v394;
  *(v227 + 16) = v395;
  *(v227 + 32) = v228;
  *(v227 + 48) = v393;
  *(v227 + 56) = v221;
  v229 = v382;
  v382(v227 + v213, v219, v225);
  v230 = v334;
  v231 = v339;
  v232 = v373;
  sub_1A3A30CA0();

  (*(v338 + 8))(v232, v231);
  v233 = v397;
  sub_1A39D5EC8(v225);
  v429 = v234;
  v226(v219, v233, v225);
  v235 = swift_allocObject();
  v236 = v394;
  *(v235 + 16) = v395;
  *(v235 + 32) = v236;
  v237 = v390;
  *(v235 + 48) = v393;
  *(v235 + 56) = v237;
  v229(v235 + v213, v219, v225);
  v238 = v336;
  v239 = v337;
  sub_1A3A30CA0();

  (*(v335 + 8))(v230, v238);
  v240 = v397;
  sub_1A39D60A4(v225);
  v429 = v241;
  v389(v219, v240, v225);
  v242 = swift_allocObject();
  v243 = v394;
  *(v242 + 16) = v395;
  *(v242 + 32) = v243;
  v244 = v390;
  *(v242 + 48) = v393;
  *(v242 + 56) = v244;
  v229(v242 + v213, v219, v225);
  v245 = v341;
  sub_1A3A30CA0();

  (*(v340 + 8))(v239, v245);
  if (*(v397 + v225[21]) == 1)
  {
    sub_1A39D8588(v396);
    v247 = v246;
  }

  else
  {
    v247 = MEMORY[0x1E69E7CC0];
  }

  v429 = v247;
  v248 = v396;
  v389(v219, v397, v396);
  v249 = swift_allocObject();
  v250 = v394;
  *(v249 + 16) = v395;
  *(v249 + 32) = v250;
  v251 = v390;
  *(v249 + 48) = v393;
  *(v249 + 56) = v251;
  v229(v249 + v384, v219, v248);
  v252 = v346;
  v253 = v377;
  v254 = v342;
  v255 = v376;
  v256 = v374;
  sub_1A3A30CA0();

  (*(v343 + 8))(v256, v252);
  sub_1A3A314E0();
  sub_1A39D5EC8(v248);
  v257 = v381;
  v258 = v386;
  sub_1A3A31A50();
  v429 = v252;
  *&v430[0] = v253;
  *(&v430[0] + 1) = v254;
  *&v430[1] = v255;
  v259 = swift_getOpaqueTypeConformance2();
  v260 = v348;
  v261 = v345;
  v262 = v375;
  sub_1A3A30CD0();

  v369(v257, v258);
  (*(v344 + 8))(v262, v261);
  sub_1A3A314E0();
  LOWORD(v429) = sub_1A39D53F4(v248) & 0x1FF;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100890, &qword_1A3A81778);
  v263 = MEMORY[0x1E697F548];
  *&v394 = MEMORY[0x1E697F548];
  *&v395 = swift_getWitnessTable();
  v404 = v259;
  v405 = v395;
  v264 = v350;
  v265 = swift_getWitnessTable();
  sub_1A39DCBAC();
  v266 = v351;
  sub_1A3A30CD0();

  (*(v349 + 8))(v260, v264);
  sub_1A3A314E0();
  MEMORY[0x1A58F7010](v310);
  v267 = sub_1A38A08F8(&qword_1EB1008A8, &qword_1EB100870, &unk_1A3A81708, v263);
  v402 = v265;
  v403 = v267;
  v268 = v353;
  v269 = swift_getWitnessTable();
  v270 = v354;
  v271 = v386;
  sub_1A3A30CD0();

  v369(v257, v271);
  (*(v352 + 8))(v266, v268);
  sub_1A3A314E0();
  LOBYTE(v429) = sub_1A39D4A20() & 1;
  v400 = v269;
  v401 = v395;
  v272 = v358;
  v273 = swift_getWitnessTable();
  v274 = v355;
  sub_1A3A30CD0();

  (*(v357 + 8))(v270, v272);
  v275 = sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8, &qword_1A3A6D2E0, v394);
  v398 = v273;
  v399 = v275;
  v276 = v360;
  swift_getWitnessTable();
  v277 = v356;
  sub_1A3964BD0();
  v278 = *(v359 + 8);
  v278(v274, v276);
  sub_1A3964BD0();
  return (v278)(v277, v276);
}

uint64_t sub_1A39D2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v78 = a8;
  *&v106 = a2;
  *(&v106 + 1) = a3;
  v68 = a3;
  v81 = a4;
  v82 = a6;
  *&v107 = a4;
  *(&v107 + 1) = a5;
  v83 = a5;
  v84 = a7;
  *&v108 = a6;
  *(&v108 + 1) = a7;
  v13 = type metadata accessor for ModeWheel(0, &v106);
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a1 + *(v22 + 76));
  v23 = *(a1 + *(v22 + 88));
  v24 = sub_1A3A311E0();
  v76 = v23;
  sub_1A3A2EA50();
  MEMORY[0x1A58F7010](v24);
  v25 = a1;
  v75 = sub_1A39D31D8(v21, v13);
  v26 = a2;
  v27 = v13;
  (*(v18 + 8))(v21, a2);
  v28 = v25 + *(v13 + 92);
  v29 = *v28;
  v73 = *(v28 + 8);
  v74 = v29;
  v72 = *(v28 + 16);
  v30 = v25 + *(v13 + 148);
  v71 = *v30;
  v70 = *(v30 + 8);
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v31 = v66;
  v32 = v66[2];
  v62 = v17;
  v63 = v32;
  v32(v17, v25, v13);
  v33 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v69 = v25;
  v80 = v26;
  v35 = v68;
  v34[2] = v26;
  v34[3] = v35;
  v36 = v82;
  v37 = v83;
  v34[4] = v81;
  v34[5] = v37;
  v38 = v84;
  v34[6] = v36;
  v34[7] = v38;
  v39 = v31[4];
  v65 = v34;
  v66 = v39;
  (v39)(v34 + v33, v62, v13);
  v40 = v67;
  v41 = v25;
  v42 = v27;
  v64 = v27;
  v63(v67, v41, v27);
  v43 = swift_allocObject();
  v44 = v81;
  v43[2] = v80;
  v43[3] = v35;
  v43[4] = v44;
  v43[5] = v37;
  v45 = v82;
  v46 = v84;
  v43[6] = v82;
  v43[7] = v46;
  (v66)(v43 + v33, v40, v42);
  sub_1A3A2FA90();
  sub_1A3A2FA90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808, &qword_1A3A816B8);
  sub_1A3A2FA90();
  v47 = sub_1A3A2FA90();
  v104 = v45;
  v105 = MEMORY[0x1E697E5D8];
  v48 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v103 = MEMORY[0x1E697E040];
  v82 = v48;
  v49 = swift_getWitnessTable();
  v50 = sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808, &qword_1A3A816B8, MEMORY[0x1E697FF70]);
  v100 = v49;
  v101 = v50;
  v98 = swift_getWitnessTable();
  v99 = v84;
  v51 = swift_getWitnessTable();
  v52 = v83;
  v53 = v80;
  v60.n128_u64[0] = sub_1A39DCFB4;
  v60.n128_u64[1] = v65;
  sub_1A39DDAE4(v77, v76, v75, v74, v73, v72, v71, v70, v97, a9, 16.0, v60, sub_1A39DD088, v43, v80);
  v54 = v64;
  sub_1A39D40D8(v64);
  sub_1A39D40D8(v54);
  *&v106 = v53;
  *(&v106 + 1) = v47;
  *&v107 = v52;
  *(&v107 + 1) = v51;
  v55 = type metadata accessor for ModeWheelListView(0, &v106);
  v56 = swift_getWitnessTable();
  sub_1A3A30C30();
  v95[4] = v97[4];
  v95[5] = v97[5];
  v95[6] = v97[6];
  v95[0] = v97[0];
  v95[1] = v97[1];
  v95[2] = v97[2];
  v95[3] = v97[3];
  (*(*(v55 - 8) + 8))(v95, v55);
  v91 = v110;
  v92 = v111;
  v93 = v112;
  v94 = v113;
  v87 = v106;
  v88 = v107;
  v89 = v108;
  v90 = v109;
  v57 = sub_1A3A2FA90();
  v85 = v56;
  v86 = MEMORY[0x1E697E270];
  v58 = swift_getWitnessTable();
  MEMORY[0x1A58F6B00](v58, v57, MEMORY[0x1E697FB10], v58);
  v96[4] = v91;
  v96[5] = v92;
  v96[6] = v93;
  v96[7] = v94;
  v96[0] = v87;
  v96[1] = v88;
  v96[2] = v89;
  v96[3] = v90;
  return (*(*(v57 - 8) + 8))(v96, v57);
}

void *sub_1A39D31D8(uint64_t a1, uint64_t a2)
{
  sub_1A3A31A40();
  swift_getWitnessTable();
  result = sub_1A3A31BB0();
  if ((v4 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39D3274@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v22[5] = v18;
  v19 = type metadata accessor for ModeWheel(0, v22);
  sub_1A39D5EC8(v19);
  sub_1A3A31A50();
  v20 = sub_1A3A31790();
  (*(v10 + 8))(v12, a3);
  return sub_1A39D33C0(a1, v20 & 1, v19, x8_0);
}

uint64_t sub_1A39D33C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v109 = a1;
  v104 = a4;
  v5 = *(a3 + 32);
  v103 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v7 + 16);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v87 = v9;
  v94 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v12 = v10 - 8;
  v90 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v86 = v14;
  v88 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v12 + 32) - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v19;
  v20 = sub_1A3A2FA90();
  v84 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v23 = sub_1A3A2FA90();
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v77 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100808, &qword_1A3A816B8);
  v91 = v23;
  v25 = sub_1A3A2FA90();
  v96 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v77 - v26;
  v98 = v27;
  v108 = v5;
  v101 = sub_1A3A2FA90();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v93 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v95 = &v77 - v30;
  v31 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1A58F7010]();
  v83 = *v33;
  sub_1A39DC884(v33, type metadata accessor for ModeWheelGestureState);
  v35 = 0;
  if (*(v4 + *(v12 + 92)))
  {
    if (*(v4 + *(v12 + 92)) == 1)
    {
      MEMORY[0x1A58F7010](v34);
      v82 = v33[1];
      sub_1A39DC884(v33, type metadata accessor for ModeWheelGestureState);
      v36 = (v4 + *(v11 + 188));
      v37 = *v36;
      v38 = v36[1];
      v111 = v37;
      v112 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
      sub_1A3A30F90();
      v35 = v110;
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v39 = (v4 + *(v11 + 168));
    v40 = *v39;
    v41 = *(v39 + 1);
    LOBYTE(v111) = v40;
    v112 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30F90();
    v82 = v110;
  }

  v42 = v84;
  v43 = *(v4 + *(v11 + 112));
  v85 &= 1u;
  v43(v109);
  sub_1A3A30600();
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v45 = v106;
  v78 = *(v11 + 48);
  v44 = v78;
  sub_1A3A30C70();
  (*(v15 + 8))(v18, v45);
  v46 = v11;
  v105 = v11;
  sub_1A3A31480();
  v81 = v4;
  v119 = v44;
  v120 = MEMORY[0x1E697E5D8];
  v84 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  sub_1A3A30BF0();
  (*(v42 + 8))(v22, v20);
  v80 = sub_1A3A30FD0();
  v47 = v90;
  v48 = v88;
  (*(v90 + 16))(v88, v4, v46);
  v49 = v97;
  v50 = v94;
  v51 = v99;
  (*(v97 + 16))(v94, v109, v99);
  v52 = (*(v47 + 80) + 64) & ~*(v47 + 80);
  v53 = (v86 + v52 + *(v49 + 80)) & ~*(v49 + 80);
  v54 = v53 + v87;
  v55 = (v53 + v87 + 10) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v105;
  v58 = v106;
  *(v56 + 2) = v51;
  *(v56 + 3) = v58;
  v59 = *(v57 + 40);
  *(v56 + 4) = v108;
  *(v56 + 5) = v59;
  v106 = *(v57 + 56);
  v60 = v106;
  *(v56 + 6) = v78;
  *(v56 + 7) = v60;
  (*(v47 + 32))(&v56[v52], v48);
  (*(v49 + 32))(&v56[v53], v50, v51);
  v61 = &v56[v54];
  v62 = v85;
  *v61 = v85;
  v61[1] = v83;
  v61[2] = v82;
  *&v56[v55] = v35;
  type metadata accessor for CGRect(0);
  v117 = WitnessTable;
  v118 = MEMORY[0x1E697E040];
  v63 = v91;
  v64 = swift_getWitnessTable();
  sub_1A39DD300();
  v65 = v92;
  v66 = v107;
  sub_1A3A30A70();

  (*(v89 + 8))(v66, v63);
  v67 = v102;
  (*(v81 + *(v105 + 116)))(v109, v62);
  v68 = sub_1A38A08F8(&qword_1EB100810, &qword_1EB100808, &qword_1A3A816B8, MEMORY[0x1E697FF70]);
  v115 = v64;
  v116 = v68;
  v69 = v98;
  v70 = swift_getWitnessTable();
  v71 = v93;
  v72 = v108;
  MEMORY[0x1A58F6B00](v67, v69, v108, v70);
  (*(v103 + 8))(v67, v72);
  (*(v96 + 8))(v65, v69);
  v113 = v70;
  v114 = v106;
  v73 = v101;
  swift_getWitnessTable();
  v74 = v95;
  sub_1A3964BD0();
  v75 = *(v100 + 8);
  v75(v71, v73);
  sub_1A3964BD0();
  return (v75)(v74, v73);
}

double sub_1A39D3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();

  return result;
}

void *sub_1A39D3F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (v2 + *(v10 + 132));
  v12 = *v11;
  v13 = *(v11 + 1);
  v18[16] = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  result = sub_1A3A30F90();
  if ((v18[15] & 1) == 0)
  {
    v15 = sub_1A3A311E0();
    MEMORY[0x1A58F7010](v15);
    v16 = sub_1A3A31790();
    result = (*(v7 + 8))(v9, v6);
    if (v16)
    {
      v17 = (v3 + *(a2 + 104));
      if (*v17)
      {
        return (*v17)(result);
      }
    }

    else
    {
      return sub_1A39D64E4(a1, a2);
    }
  }

  return result;
}

double sub_1A39D40D8(uint64_t a1)
{
  if (qword_1EB0FC220 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = 20.0;
  if ((*(v1 + *(a1 + 76)) & 1) == 0)
  {
    return dbl_1A3A81908[*(v1 + *(a1 + 84))];
  }

  return result;
}

uint64_t sub_1A39D4168(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v8 = (a2 + *(type metadata accessor for ModeWheel(0, &v13) + 156));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 1);
  LOBYTE(v13) = v9;
  BYTE1(v13) = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008B0, &qword_1A3A81828);
  return sub_1A3A30FA0();
}

void sub_1A39D4204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1A3A2FEE0();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD758, &qword_1A3A6EF30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v61 - v18;
  v68 = sub_1A3A2F540();
  v19 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v61 - v22;
  v23 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v71 = a4;
  *(&v71 + 1) = a5;
  v72 = a6;
  v73 = a7;
  v74 = a8;
  v75 = a9;
  v27 = type metadata accessor for ModeWheel(0, &v71);
  v28 = a3 + v27[34];
  v30 = *(v28 + 8);
  LOBYTE(v71) = *v28;
  v29 = v71;
  *(&v71 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
  sub_1A3A30F90();
  v64 = v69[0];
  LOBYTE(v71) = v29;
  *(&v71 + 1) = v30;
  v69[0] = 0;
  sub_1A3A30FA0();
  v31 = sub_1A3A311E0();
  MEMORY[0x1A58F7010](v31);
  v32 = sub_1A39D31D8(v26, v27);
  v33 = v26;
  v34 = a3;
  (*(v23 + 8))(v33, a4);
  v71 = *(a3 + v27[45]);
  *v69 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
  sub_1A3A30FA0();
  v35 = a3 + v27[48];
  v36 = *v35;
  LOBYTE(v32) = *(v35 + 8);
  sub_1A3A2EA60();
  if ((v32 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v61;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    v39 = j__swift_release(v36);
    (*(v62 + 8))(v38, v63, v39);
    v36 = v71;
  }

  v40 = v68;
  v41 = v66;
  if (v36)
  {
    swift_getKeyPath(aH_23);
    *&v71 = v36;
    sub_1A39DA768(&qword_1ED996CF8, type metadata accessor for ChromeScenePhaseModel, &unk_1A3A78C78);
    sub_1A3A2F080();

    v42 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
    swift_beginAccess();
    v43 = v36 + v42;
    v44 = v65;
    (*(v19 + 16))(v65, v43, v40);

    (*(v19 + 56))(v44, 0, 1, v40);
    (*(v19 + 32))(v41, v44, v40);
  }

  else
  {
    v45 = v65;
    (*(v19 + 56))(v65, 1, 1, v68);
    type metadata accessor for ChromeScenePhase(0);
    sub_1A39A1420(v41);
    if ((*(v19 + 48))(v45, 1, v40) != 1)
    {
      sub_1A388F740(v45, &qword_1EB0FD758, &qword_1A3A6EF30);
    }
  }

  v46 = v67;
  (*(v19 + 104))(v67, *MEMORY[0x1E697BE38], v40);
  v47 = sub_1A3A2F530();
  v48 = *(v19 + 8);
  v48(v46, v40);
  v48(v41, v40);
  if ((v47 & 1) != 0 && ((sub_1A39D4A20() | v64) & 1) == 0)
  {
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v49 = off_1ED997FE0;
    swift_getKeyPath(aX_22);
    *&v71 = v49;
    sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v50 = v49[2];
    swift_getKeyPath(aX_23);
    *&v71 = v50;
    sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v51 = *(v50 + 48);

    if ((v51 - 1) <= 1)
    {
      v52 = (v34 + v27[43]);
      v54 = v52[1];
      v55 = v52[2];
      *&v71 = *v52;
      v53 = v71;
      *(&v71 + 1) = v54;
      v72 = v55;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
      MEMORY[0x1A58F7010](&v70);
      sub_1A38E01D4(1, 0.0);

      *&v71 = v53;
      *(&v71 + 1) = v54;
      v72 = v55;
      MEMORY[0x1A58F7010](&v70, v56);
      v57 = *(v34 + v27[31]);
      sub_1A38E01D4(0, v57);

      v58 = (v34 + v27[35]);
      v60 = v58[1];
      *&v71 = *v58;
      v59 = v71;
      *(&v71 + 1) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE910, &qword_1A3A75398);
      sub_1A3A30F90();
      sub_1A38E01D4(1, 0.0);

      *&v71 = v59;
      *(&v71 + 1) = v60;
      sub_1A3A30F90();
      sub_1A38E01D4(0, v57);
    }
  }
}

uint64_t sub_1A39D4A20()
{
  v0 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
  MEMORY[0x1A58F7010](v3);
  v4 = *v2;
  sub_1A39DC884(v2, type metadata accessor for ModeWheelGestureState);
  return v4;
}

double sub_1A39D4AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a5;
  v11 = sub_1A389EEE0();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A39CFD78(MEMORY[0x1E69E7DE0], sub_1A39D9F94, 0, sub_1A39DCF54, v10, a3, MEMORY[0x1E69E7DE0], a4, v11);

  return result;
}

BOOL sub_1A39D4BBC(int *a1)
{
  if (*(v1 + a1[21]) == 2)
  {
    return 0;
  }

  v4 = (v1 + a1[23]);
  if ((v4[2] & 1) == 0)
  {
    v6 = *v4;
    v5 = v4[1];
    sub_1A39D5EC8(a1);
    if (v7 < v6 || v5 < v7)
    {
      return 1;
    }
  }

  v9 = (v1 + a1[25]);
  v10 = *v9;
  v11 = v9[1];
  LOBYTE(v9) = *(v9 + 16);
  v25 = v10;
  *&v26 = v11;
  BYTE8(v26) = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
  MEMORY[0x1A58F7010](&v24, v12);
  if (v24)
  {
    return 1;
  }

  v13 = v1 + a1[37];
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    if (v14 < sub_1A39D61FC(a1))
    {
      return 0;
    }
  }

  v15 = (v1 + a1[43]);
  v25 = *v15;
  v26 = *(v15 + 1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
  v17 = MEMORY[0x1A58F7010](&v24, v16);
  v18 = v24;
  *&v19 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  swift_getKeyPath(byte_1A3A81780, v19, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  v25 = v18;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08, &unk_1A3A6F500, &unk_1A3A6BA14);
  sub_1A3A2F080();

  swift_beginAccess();
  v20 = *(v18 + 18);

  if (v20 != 1)
  {
    return 0;
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v21 = off_1ED997FE0;
  swift_getKeyPath(aX_22);
  v24 = v21;
  sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v22 = v21[2];
  swift_getKeyPath(aX_23);
  v24 = v22;
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v23 = *(v22 + 48);

  return v23 < 3;
}

uint64_t sub_1A39D4EFC(uint64_t a1)
{
  v3 = v1 + *(a1 + 148);
  result = *v3;
  if ((*(v3 + 8) & 1) == 0)
  {
    v5 = *v3;
    if (sub_1A39D61FC(a1) <= v5)
    {
      *&result = 0.0;
    }

    else
    {
      if (qword_1EB0FC220 != -1)
      {
        swift_once();
      }

      *&result = v5 + -16.0;
    }
  }

  return result;
}

BOOL sub_1A39D4F90(uint64_t a1)
{
  v2 = v1 + *(a1 + 148);
  if (*(v2 + 8))
  {
    return 1;
  }

  v3 = v1 + *(a1 + 152);
  if (*(v3 + 8))
  {
    return 1;
  }

  v5 = *v3;
  v6 = *v2;
  return v5 + sub_1A39D61FC(a1) < v6;
}

void sub_1A39D4FEC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v10 = type metadata accessor for ModeWheel(0, &v24);
  v11 = *(a1 + *(v10 + 76));
  v12 = sub_1A3A305F0();
  v13 = sub_1A3A305F0();
  v14 = 0uLL;
  if (v12 == v13)
  {
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v15 = off_1ED997FE0;
    swift_getKeyPath(aX_22);
    v24 = v15;
    sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
    sub_1A3A2F080();

    v16 = v15[2];
    swift_getKeyPath(byte_1A3A81830);
    v24 = v16;
    sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v17 = sub_1A394FC58(6);

    if (v17)
    {
      v18 = a1 + *(v10 + 100);
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      v24 = v19;
      v25 = v20;
      LOBYTE(v26) = v18;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80);
      MEMORY[0x1A58F7010](&v23, v21);
      v22 = 0x4046000000000000;
      if (!v23)
      {
        v22 = 0;
      }

      v14 = xmmword_1A3A81390;
    }

    else
    {
      v22 = 0;
      v11 = 2;
      v14 = 0uLL;
    }
  }

  else
  {
    v22 = 0;
    v11 = 2;
  }

  *a8 = v11;
  *(a8 + 8) = v22;
  *(a8 + 16) = v14;
}

uint64_t sub_1A39D5220(uint64_t a1)
{
  v1 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A305F0();
  if (v4 == sub_1A3A305F0())
  {
    v5 = *MEMORY[0x1E697F468];
    v6 = sub_1A3A30000();
    (*(*(v6 - 8) + 104))(v3, v5, v6);
    sub_1A39DA768(qword_1ED9969F8, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    return sub_1A3A31290();
  }

  else
  {
    sub_1A39DCF00();

    return sub_1A3A31290();
  }
}

double sub_1A39D5378(int *a1)
{
  v2 = 0.0;
  if (!sub_1A39D6400(a1) && sub_1A39D4BBC(a1))
  {
    if (qword_1EB0FC220 != -1)
    {
      swift_once();
    }

    return 44.0;
  }

  return v2;
}

uint64_t sub_1A39D53F4(int *a1)
{
  v2 = v1 + a1[37];
  if (*(v2 + 8) & 1) != 0 || (v4 = *v2, v4 >= sub_1A39D61FC(a1)) || (v5 = (v1 + a1[25]), v6 = *v5, v7 = v5[1], LOBYTE(v5) = *(v5 + 16), v18 = v6, v19 = v7, v20 = v5, v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598, &qword_1A3A6FC80), MEMORY[0x1A58F7010](&v16, v8), (v16))
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v12 = (v1 + a1[39]);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 1);
    LOBYTE(v18) = v13;
    BYTE1(v18) = v14;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1008B0, &qword_1A3A81828);
    sub_1A3A30F90();
    v9 = v16;
    v10 = v17;
    if (v17)
    {
      v9 = 0;
    }
  }

  return v9 | (v10 << 8);
}

void sub_1A39D5500(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    if (qword_1EB0FC210 != -1)
    {
      v8 = v4;
      swift_once();
      v4 = v8;
    }

    v7 = __swift_project_value_buffer(v4, qword_1EB101B38);
    sub_1A39DD4CC(v7, v6, type metadata accessor for ModeWheelGestureState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00, &unk_1A3A6F250);
    sub_1A3A311A0();
  }
}

void sub_1A39D5604(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  v43 = sub_1A3A31650();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A3A31670();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  v10 = *(a3 - 8);
  a3 -= 8;
  v37 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a3 + 32);
  v36 = *(a3 + 24);
  v46 = v36;
  v47 = v13;
  v35 = v13;
  v14 = *(a3 + 48);
  v34 = *(a3 + 40);
  v48 = v34;
  v49 = v14;
  v15 = *(a3 + 56);
  v16 = *(a3 + 64);
  v50 = v15;
  v51 = v16;
  v52 = v4;
  v53 = a1;
  v44 = a1;
  v54 = a2;
  sub_1A3A314E0();
  sub_1A3A2F8A0();
  v17 = a2;

  v18 = (v4 + *(a3 + 140));
  v19 = *v18;
  v20 = *(v18 + 1);
  if (a2[1] == 1)
  {
    LOBYTE(aBlock) = v19;
    v56 = v20;
    v61 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30FA0();
  }

  else
  {
    LOBYTE(aBlock) = v19;
    v56 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30F90();
    if (v61 == 1)
    {
      sub_1A38C9AFC();
      v32 = sub_1A3A31C70();
      v21 = v37;
      v22 = *(v37 + 16);
      v33 = v17;
      v23 = v45;
      v22(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v45);
      v24 = (*(v21 + 80) + 64) & ~*(v21 + 80);
      v25 = swift_allocObject();
      v26 = v35;
      *(v25 + 2) = v36;
      *(v25 + 3) = v26;
      *(v25 + 4) = v34;
      *(v25 + 5) = v14;
      *(v25 + 6) = v15;
      *(v25 + 7) = v16;
      (*(v21 + 32))(&v25[v24], &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
      v59 = sub_1A39DCD40;
      v60 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_1A3904E20;
      v58 = &block_descriptor_10;
      v27 = _Block_copy(&aBlock);

      v28 = v38;
      sub_1A3A31660();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1A39DA768(&qword_1ED997B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD668, qword_1A3A741D0);
      v17 = v33;
      sub_1A38A08F8(&qword_1ED997BA0, &qword_1EB0FD668, qword_1A3A741D0, MEMORY[0x1E69E6328]);
      v29 = v40;
      v30 = v43;
      sub_1A3A31E80();
      v31 = v32;
      MEMORY[0x1A58F7B00](0, v28, v29, v27);
      _Block_release(v27);

      (*(v42 + 8))(v29, v30);
      (*(v39 + 8))(v28, v41);
    }
  }

  if (*(v4 + *(v45 + 84)))
  {
    if (*(v4 + *(v45 + 84)) == 1)
    {
      sub_1A39D7714(v44, v17, v45);
    }
  }

  else
  {
    sub_1A39D7310(v44, v17, v45);
  }
}

double sub_1A39D5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();

  return result;
}

void sub_1A39D5BEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v12 = off_1ED997FE0;
  swift_getKeyPath(aX_22, a7);
  v20 = v12;
  sub_1A39DA768(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v13 = v12[2];
  swift_getKeyPath(aX_23);
  v20 = v13;
  sub_1A39DA768(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v14 = *(v13 + 48);

  if (v14)
  {
    v20 = a2;
    *&v21 = a3;
    *(&v21 + 1) = a4;
    v22 = a5;
    v23 = a6;
    v24 = v18;
    v15 = a1 + *(type metadata accessor for ModeWheel(0, &v20) + 172);
    v20 = *v15;
    v21 = *(v15 + 8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
    MEMORY[0x1A58F7010](&v25, v16);
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }
}

double sub_1A39D5E24(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*a2)
  {
    v20 = v9;
    v21 = v10;
    v15 = a4;
    *&v16 = a5;
    *(&v16 + 1) = a6;
    v17 = a7;
    v18 = a8;
    v19 = a9;
    v11 = a3 + *(type metadata accessor for ModeWheel(0, &v15) + 172);
    v15 = *v11;
    v16 = *(v11 + 8);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0, &unk_1A3A6F650);
    MEMORY[0x1A58F7010](&v14, v12);
    sub_1A38E01D4(1, 0.0);
  }

  return result;
}

void sub_1A39D5EC8(uint64_t a1)
{
  if (*(v1 + *(a1 + 84)))
  {
    if (*(v1 + *(a1 + 84)) == 1)
    {
      sub_1A39D629C(a1);
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
      sub_1A3A30F90();
      v5 = sub_1A39D40D8(a1);
      v6 = sub_1A3A31A10();
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
      }

      else
      {
        v7 = round(v9 / v5 + v4);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              return;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    sub_1A39D629C(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8, &qword_1A3A6C090);
    sub_1A3A30F90();
    if (LOBYTE(v9) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720, &unk_1A3A6ED80);
      sub_1A3A30F90();
    }

    else
    {
      sub_1A39D629C(a1);
    }
  }
}

void sub_1A39D60A4(int *a1)
{
  if (*(v1 + a1[21]))
  {
    if (*(v1 + a1[21]) == 1)
    {
      sub_1A39D8450(a1);
    }
  }

  else
  {
    sub_1A39D8070(a1);
  }
}

double sub_1A39D60CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v9 = (a3 + *(type metadata accessor for ModeWheel(0, &v14) + 160));
  v11 = *v9;
  v10 = v9[1];
  v14 = v11;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v12 = sub_1A3A2EA50();
  sub_1A39CF2CC(v12);

  return result;
}

double sub_1A39D6164(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v9 = (a3 + *(type metadata accessor for ModeWheel(0, &v14) + 164));
  v11 = *v9;
  v10 = v9[1];
  v14 = v11;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1006F8, &qword_1A3A81190);
  sub_1A3A30F90();
  v12 = sub_1A3A2EA50();
  sub_1A39CF2CC(v12);

  return result;
}

double sub_1A39D61FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0, &qword_1A3A6C6C0);
  sub_1A3A30F90();
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  return v2 + 16.0;
}

void sub_1A39D629C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v1 + *(v6 + 88));
  v7 = sub_1A3A311E0();
  sub_1A3A2EA50();
  MEMORY[0x1A58F7010](v7);
  sub_1A3A31A40();
  swift_getWitnessTable();
  sub_1A3A31BB0();
  (*(v3 + 8))(v5, v2);

  if (v9)
  {
    __break(1u);
  }
}