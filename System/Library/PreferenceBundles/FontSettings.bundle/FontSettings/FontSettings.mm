uint64_t sub_17A0(uint64_t a1)
{
  v31 = a1;
  v19 = 0;
  v32 = &unk_7E240;
  v42 = 0;
  v41 = 0;
  v16 = (*(*(sub_1A88(&qword_90AD0, &qword_7E230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v34 = &v16 - v16;
  v42 = v2;
  v41 = v1;
  sub_1AF4(v2);
  v17 = 9;
  v3 = sub_7D704();
  v26 = &v39;
  v39 = v3;
  v40 = v4;
  v30 = 1;
  v43._countAndFlagsBits = sub_7CF84("Download ", v17, 1);
  object = v43._object;
  sub_7D6F4(v43);

  v20 = &v38;
  swift_beginAccess();
  v21 = *(v31 + 16);
  v22 = *(v31 + 24);

  swift_endAccess();

  v23 = v37;
  v37[0] = v21;
  v37[1] = v22;
  sub_7D6E4();
  sub_1F58(v23);
  v29 = 0;
  v44._countAndFlagsBits = sub_7CF84("", 0, v30 & 1);
  v25 = v44._object;
  sub_7D6F4(v44);
  v5 = v24;

  v28 = v39;
  v27 = v40;

  sub_1F58(v26);
  v33 = sub_7CF74();
  v35 = v6;
  sub_7D1A4();
  v7 = sub_7D1E4();
  (*(*(v7 - 8) + 56))(v34, 0, v30);

  v8 = swift_allocObject();
  v9 = v31;
  v10 = v32;
  v11 = v34;
  v12 = v35;
  v13 = v8;
  v14 = v33;
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v9;
  v13[5] = v5;
  v36 = sub_5370(v14, v12, v11, v10, v13, &type metadata for () + 8);
  sub_5900(v34);
}

uint64_t sub_1A88(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1AF4(uint64_t a1)
{
  v40 = a1;
  v2 = v1;
  v33 = v2;
  v28 = 0;
  v41 = &unk_7E258;
  v55 = 0;
  v54 = 0;
  v4 = sub_1A88(&qword_90AD0, &qword_7E230);
  v19[0] = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v43 = v19 - v19[0];
  v55 = a1;
  v54 = v5;

  sub_6AE48(3);

  v19[1] = &v53;
  v27 = 32;
  swift_beginAccess();
  v20 = *(v40 + 16);
  v21 = *(v40 + 24);

  swift_endAccess();

  v23 = &v52;
  v52 = v40;
  v22 = v51;
  v51[0] = v20;
  v51[1] = v21;
  v24 = &v50;
  swift_beginAccess();
  sub_1A88(&qword_90AD8, &qword_7E248);
  sub_7CE14();
  swift_endAccess();
  v25 = 21;
  v6 = sub_7D704();
  v35 = &v48;
  v48 = v6;
  v49 = v7;
  v39 = 1;
  v56._countAndFlagsBits = sub_7CF84("Processing timer for ", v25, 1);
  object = v56._object;
  sub_7D6F4(v56);

  v29 = &v47;
  swift_beginAccess();
  v30 = *(v40 + 16);
  v31 = *(v40 + 24);

  swift_endAccess();

  v32 = v46;
  v46[0] = v30;
  v46[1] = v31;
  sub_7D6E4();
  sub_1F58(v32);
  v38 = 0;
  v57._countAndFlagsBits = sub_7CF84("", 0, v39 & 1);
  v34 = v57._object;
  sub_7D6F4(v57);
  v8 = v33;

  v37 = v48;
  v36 = v49;

  sub_1F58(v35);
  v42 = sub_7CF74();
  v44 = v9;
  v10 = sub_7D1E4();
  (*(*(v10 - 8) + 56))(v43, v39);

  v11 = swift_allocObject();
  v12 = v40;
  v13 = v41;
  v14 = v43;
  v15 = v44;
  v16 = v11;
  v17 = v42;
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v8;
  v16[5] = v12;
  v45 = sub_5370(v17, v15, v14, v13, v16, &type metadata for () + 8);
  sub_5900(v43);
}

uint64_t sub_1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[11] = v5;
  v5[12] = 0;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[16] = 0;
  v5[12] = a4;
  v5[13] = a5;
  return _swift_task_switch(sub_1FE8, 0);
}

uint64_t sub_1FE8()
{
  v15 = *(v0 + 144);
  v16 = *(v0 + 136);
  *(v0 + 88) = v0;
  v10 = sub_1A88(&qword_90C30, &qword_7E880);
  v9 = sub_7D714();
  v7 = v1;
  kCTFontDownloadableAttribute;
  *v7 = kCTFontDownloadableAttribute;
  *(v7 + 32) = &type metadata for Bool;
  *(v7 + 8) = 1;
  kCTFontFamilyNameAttribute;
  *(v7 + 40) = kCTFontFamilyNameAttribute;

  swift_beginAccess();
  v6 = *(v16 + 16);
  v8 = *(v16 + 24);

  swift_endAccess();
  *(v7 + 72) = &type metadata for String;
  *(v7 + 48) = v6;
  *(v7 + 56) = v8;

  sub_71DDC(v9, v10);
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v21 = CTFontDescriptorCreateWithAttributes(isa);

  *(v0 + 112) = v21;
  v20 = swift_allocObject();
  *(v0 + 120) = v20 + 16;
  *(v20 + 16) = 0;
  v19 = swift_allocObject();
  *(v0 + 128) = v19 + 16;
  *(v19 + 16) = 0;
  v14 = type metadata accessor for CTFontDescriptor(0);
  v13 = sub_7D714();
  v12 = v2;
  v21;
  *v12 = v21;
  sub_71DDC(v13, v14);
  v18 = sub_7D094().super.isa;

  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v3 = swift_allocObject();
  v3[2] = v16;
  v3[3] = v20;
  v3[4] = v19;
  v3[5] = v15;
  *(v0 + 48) = sub_E4CC;
  *(v0 + 56) = v3;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = sub_5E88;
  *(v0 + 40) = &unk_8E8A0;
  v17 = _Block_copy((v0 + 16));

  swift_unownedRelease();
  CTFontDescriptorDownloadMatchingFontDescriptors();
  _Block_release(v17);

  v4 = *(*(v0 + 88) + 8);

  return v4();
}

uint64_t sub_2470()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24C0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_1F84(a1, v6, v7, v8, v9);
}

uint64_t sub_25A4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26CC(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v370 = a1;
  v365 = a2;
  v366 = a3;
  v367 = a4;
  v368 = a5;
  v369 = a6;
  v362 = &unk_7E8A0;
  v363 = &unk_7E8B0;
  v364 = &unk_7E8C0;
  v447 = 0;
  v446 = 0;
  v445 = 0;
  v444 = 0;
  v443 = 0;
  v442 = 0;
  v441 = 0;
  v433 = 0;
  v394 = 0;
  v391 = 0;
  v371 = (*(*(sub_1A88(&qword_90AD0, &qword_7E230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v370);
  v372 = &v100 - v371;
  v447 = v7;
  v446 = v8;
  v445 = v9;
  v444 = v10 + 16;
  v443 = v11 + 16;
  v442 = v12;
  if (!v7)
  {
    v349 = 1;
    v358 = sub_7CF84("download(_:)", 0xCuLL, 1, v6);
    v361 = v13;
    v14 = sub_7D704();
    v351 = &v375;
    v375 = v14;
    v376 = v15;
    v448._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
    object = v448._object;
    sub_7D6F4(v448);

    v345 = &v374;
    swift_beginAccess();
    v346 = *(v366 + 16);
    v347 = *(v366 + 24);

    swift_endAccess();

    v348 = v373;
    v373[0] = v346;
    v373[1] = v347;
    v354 = &type metadata for String;
    sub_7D6E4();
    sub_1F58(v348);
    v449._countAndFlagsBits = sub_7CF84(" did begin", 0xAuLL, v349 & 1);
    v350 = v449._object;
    sub_7D6F4(v449);

    v353 = v375;
    v352 = v376;

    sub_1F58(v351);
    v357 = sub_7CF74();
    v360 = v16;
    v359 = sub_7D714();
    v355 = sub_4754();
    v356 = sub_4754();
    v17 = sub_4760();
    sub_71E20(v358, v361, v355 & 1, v356 & 1, v357, v360, v17, v359);

    goto LABEL_62;
  }

  switch(v370)
  {
    case 1u:
      v208 = 1;
      v200 = sub_7CF84("download(_:)", 0xCuLL, 1, v6);
      v201 = v65;
      v66 = sub_7D704();
      v206 = &v423;
      v423 = v66;
      v424 = v67;
      v464._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v202 = v464._object;
      sub_7D6F4(v464);

      v203 = &v422;
      v210 = 32;
      v211 = 0;
      swift_beginAccess();
      v204 = *(v366 + 16);
      v205 = *(v366 + 24);

      swift_endAccess();

      v207 = v421;
      v421[0] = v204;
      v421[1] = v205;
      sub_7D6E4();
      sub_1F58(v207);
      v465._countAndFlagsBits = sub_7CF84(" finished. Without errors? ", 0x1BuLL, v208 & 1);
      v209 = v465._object;
      sub_7D6F4(v465);

      v212 = &v420;
      swift_beginAccess();
      v213 = *(v367 + 16);
      swift_endAccess();
      if (v213)
      {
        v198 = sub_7CF84("❌", 3uLL, 0);
      }

      else
      {
        v198 = sub_7CF84("✅", 3uLL, 0);
      }

      v199 = v68;
      v194 = v419;
      v419[0] = v198;
      v419[1] = v68;
      v193 = &v423;
      sub_7D6E4();
      sub_1F58(v194);
      v466._countAndFlagsBits = sub_7CF84(" Downloaded? ", 0xDuLL, 1);
      v195 = v466._object;
      sub_7D6F4(v466);

      v196 = &v418;
      swift_beginAccess();
      v197 = *(v368 + 16);
      swift_endAccess();
      if (v197)
      {
        v191 = sub_7CF84("✅", 3uLL, 0);
      }

      else
      {
        v191 = sub_7CF84("❌", 3uLL, 0);
      }

      v192 = v69;
      v177 = v417;
      v417[0] = v191;
      v417[1] = v69;
      v183 = &type metadata for String;
      v179 = &v423;
      sub_7D6E4();
      sub_1F58(v177);
      v182 = 0;
      v467._countAndFlagsBits = sub_7CF84("", 0, 1);
      v178 = v467._object;
      sub_7D6F4(v467);

      v181 = v423;
      v180 = v424;

      sub_1F58(v179);
      v186 = sub_7CF74();
      v188 = v70;
      v187 = sub_7D714();
      v184 = sub_4754();
      v185 = sub_4754();
      v71 = sub_4760();
      sub_71E20(v200, v201, v184 & 1, v185 & 1, v186, v188, v71, v187);

      v189 = &v416;
      swift_beginAccess();
      v190 = *(v368 + 16);
      swift_endAccess();
      if (v190)
      {
        v174 = &v415;
        swift_beginAccess();
        v175 = *(v367 + 16);
        swift_endAccess();
        v176 = v175;
      }

      else
      {
        v176 = 1;
      }

      if (v176)
      {
        v159 = 16;
        v72 = sub_7D704();
        v166 = &v413;
        v413 = v72;
        v414 = v73;
        v170 = 1;
        v468._countAndFlagsBits = sub_7CF84("Stop processing ", v159, 1);
        v160 = v468._object;
        sub_7D6F4(v468);

        v161 = &v412;
        swift_beginAccess();
        v162 = *(v366 + 16);
        v163 = *(v366 + 24);

        swift_endAccess();

        v164 = v411;
        v411[0] = v162;
        v411[1] = v163;
        sub_7D6E4();
        sub_1F58(v164);
        v169 = 0;
        v469._countAndFlagsBits = sub_7CF84("", 0, v170 & 1);
        v165 = v469._object;
        sub_7D6F4(v469);

        v168 = v413;
        v167 = v414;

        sub_1F58(v166);
        v171 = sub_7CF74();
        v172 = v74;
        v75 = sub_7D1E4();
        (*(*(v75 - 8) + 56))(v372, v170);
        swift_unownedRetain();

        v76 = swift_allocObject();
        v77 = v369;
        v78 = v366;
        v79 = v362;
        v80 = v372;
        v81 = v172;
        v82 = v76;
        v83 = v171;
        v82[2] = 0;
        v82[3] = 0;
        v82[4] = v77;
        v82[5] = v78;
        v173 = sub_5370(v83, v81, v80, v79, v82, &type metadata for () + 8);
        sub_5900(v372);
      }

      goto LABEL_62;
    case 3u:
      v313 = 1;
      v322 = sub_7CF84("download(_:)", 0xCuLL, 1, v6);
      v325 = v23;
      v24 = sub_7D704();
      v315 = &v383;
      v383 = v24;
      v384 = v25;
      v452._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v308 = v452._object;
      sub_7D6F4(v452);

      v309 = &v382;
      swift_beginAccess();
      v310 = *(v366 + 16);
      v311 = *(v366 + 24);

      swift_endAccess();

      v312 = v381;
      v381[0] = v310;
      v381[1] = v311;
      v318 = &type metadata for String;
      sub_7D6E4();
      sub_1F58(v312);
      v453._countAndFlagsBits = sub_7CF84(" stalled", 8uLL, v313 & 1);
      v314 = v453._object;
      sub_7D6F4(v453);

      v317 = v383;
      v316 = v384;

      sub_1F58(v315);
      v321 = sub_7CF74();
      v324 = v26;
      v323 = sub_7D714();
      v319 = sub_4754();
      v320 = sub_4754();
      v27 = sub_4760();
      sub_71E20(v322, v325, v319 & 1, v320 & 1, v321, v324, v27, v323);

      goto LABEL_62;
    case 4u:
      v331 = 1;
      v340 = sub_7CF84("download(_:)", 0xCuLL, 1, v6);
      v343 = v18;
      v19 = sub_7D704();
      v333 = &v379;
      v379 = v19;
      v380 = v20;
      v450._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v326 = v450._object;
      sub_7D6F4(v450);

      v327 = &v378;
      swift_beginAccess();
      v328 = *(v366 + 16);
      v329 = *(v366 + 24);

      swift_endAccess();

      v330 = v377;
      v377[0] = v328;
      v377[1] = v329;
      v336 = &type metadata for String;
      sub_7D6E4();
      sub_1F58(v330);
      v451._countAndFlagsBits = sub_7CF84(" will begin download", 0x14uLL, v331 & 1);
      v332 = v451._object;
      sub_7D6F4(v451);

      v335 = v379;
      v334 = v380;

      sub_1F58(v333);
      v339 = sub_7CF74();
      v342 = v21;
      v341 = sub_7D714();
      v337 = sub_4754();
      v338 = sub_4754();
      v22 = sub_4760();
      sub_71E20(v340, v343, v337 & 1, v338 & 1, v339, v342, v22, v341);

      goto LABEL_62;
    case 5u:
      v365;
      objc_opt_self();
      v307 = swift_dynamicCastObjCClass();
      if (v307)
      {
        v306 = v307;
        v305 = sub_1A88(&qword_90C40, &qword_7E890);
        v306;
        sub_E544();
        sub_7D774();

        if (v385)
        {
          v304 = v385;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v304 = 0;
LABEL_17:
      v303 = v304;
      if (v304)
      {
        v302 = v303;
        v299 = v303;
        v394 = v303;
        v298 = kCTFontDescriptorMatchingPercentage;
        kCTFontDescriptorMatchingPercentage;
        v28 = sub_7CF14();
        v300 = v392;
        v392[0] = v28;
        v392[1] = v29;
        sub_7CE04();
        sub_1F58(v300);
        v301 = v393;
        if (v393)
        {
          v297 = v301;
          v296 = v301;
          v391 = v301;

          v283 = 1;
          v292 = sub_7CF84("download(_:)", 0xCuLL, 1);
          v295 = v30;
          v31 = sub_7D704();
          v285 = &v389;
          v389 = v31;
          v390 = v32;
          v281 = 4;
          v454._countAndFlagsBits = sub_7CF84("⏳ ", 4uLL, 0);
          v276 = v454._object;
          sub_7D6F4(v454);

          v277 = &v388;
          swift_beginAccess();
          v278 = *(v366 + 16);
          v279 = *(v366 + 24);

          swift_endAccess();

          v280 = v387;
          v387[0] = v278;
          v387[1] = v279;
          v288 = &type metadata for String;
          sub_7D6E4();
          sub_1F58(v280);
          v455._countAndFlagsBits = sub_7CF84(" is ", v281, v283 & 1);
          v282 = v455._object;
          sub_7D6F4(v455);

          swift_getObjectType();
          v386 = v296;
          sub_7D6D4();
          v456._countAndFlagsBits = sub_7CF84(" %% downloaded", 0xEuLL, v283 & 1);
          v284 = v456._object;
          sub_7D6F4(v456);

          v287 = v389;
          v286 = v390;

          sub_1F58(v285);
          v291 = sub_7CF74();
          v294 = v33;
          v293 = sub_7D714();
          v289 = sub_4754();
          v290 = sub_4754();
          v34 = sub_4760();
          sub_71E20(v292, v295, v289 & 1, v290 & 1, v291, v294, v34, v293);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      goto LABEL_62;
    case 6u:
      v270 = 1;
      v262 = sub_7CF84("download(_:)", 0xCuLL, 1, v6);
      v263 = v35;
      v36 = sub_7D704();
      v268 = &v409;
      v409 = v36;
      v410 = v37;
      v457._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v264 = v457._object;
      sub_7D6F4(v457);

      v265 = &v408;
      v272 = 32;
      v273 = 0;
      swift_beginAccess();
      v266 = *(v366 + 16);
      v267 = *(v366 + 24);

      swift_endAccess();

      v269 = v407;
      v407[0] = v266;
      v407[1] = v267;
      sub_7D6E4();
      sub_1F58(v269);
      v458._countAndFlagsBits = sub_7CF84(" finished downloading ", 0x16uLL, v270 & 1);
      v271 = v458._object;
      sub_7D6F4(v458);

      v274 = &v406;
      swift_beginAccess();
      v275 = *(v367 + 16);
      swift_endAccess();
      if (v275)
      {
        v260 = sub_7CF84("❌", 3uLL, 0);
      }

      else
      {
        v260 = sub_7CF84("✅", 3uLL, 0);
      }

      v261 = v38;
      v246 = v405;
      v405[0] = v260;
      v405[1] = v38;
      v252 = &type metadata for String;
      v248 = &v409;
      sub_7D6E4();
      sub_1F58(v246);
      v251 = 0;
      v459._countAndFlagsBits = sub_7CF84("", 0, 1);
      v247 = v459._object;
      sub_7D6F4(v459);

      v250 = v409;
      v249 = v410;

      sub_1F58(v248);
      v255 = sub_7CF74();
      v257 = v39;
      v256 = sub_7D714();
      v253 = sub_4754();
      v254 = sub_4754();
      v40 = sub_4760();
      sub_71E20(v262, v263, v253 & 1, v254 & 1, v255, v257, v40, v256);

      v258 = &v404;
      swift_beginAccess();
      v259 = *(v367 + 16);
      swift_endAccess();
      if (v259)
      {
        v214 = 16;
        v53 = sub_7D704();
        v221 = &v402;
        v402 = v53;
        v403 = v54;
        v225 = 1;
        v462._countAndFlagsBits = sub_7CF84("Stop processing ", v214, 1);
        v215 = v462._object;
        sub_7D6F4(v462);

        v216 = &v401;
        swift_beginAccess();
        v217 = *(v366 + 16);
        v218 = *(v366 + 24);

        swift_endAccess();

        v219 = v400;
        v400[0] = v217;
        v400[1] = v218;
        sub_7D6E4();
        sub_1F58(v219);
        v224 = 0;
        v463._countAndFlagsBits = sub_7CF84("", 0, v225 & 1);
        v220 = v463._object;
        sub_7D6F4(v463);

        v223 = v402;
        v222 = v403;

        sub_1F58(v221);
        v226 = sub_7CF74();
        v227 = v55;
        v56 = sub_7D1E4();
        (*(*(v56 - 8) + 56))(v372, v225);
        swift_unownedRetain();

        v57 = swift_allocObject();
        v58 = v369;
        v59 = v366;
        v60 = v363;
        v61 = v372;
        v62 = v227;
        v63 = v57;
        v64 = v226;
        v63[2] = 0;
        v63[3] = 0;
        v63[4] = v58;
        v63[5] = v59;
        v228 = sub_5370(v64, v62, v61, v60, v63, &type metadata for () + 8);
      }

      else
      {
        v229 = &v399;
        v232 = 0;
        swift_beginAccess();
        *(v368 + 16) = 1;
        swift_endAccess();
        v230 = 22;
        v41 = sub_7D704();
        v238 = &v397;
        v397 = v41;
        v398 = v42;
        v242 = 1;
        v460._countAndFlagsBits = sub_7CF84("Download cooldown for ", v230, 1);
        v231 = v460._object;
        sub_7D6F4(v460);

        v233 = &v396;
        swift_beginAccess();
        v234 = *(v366 + 16);
        v235 = *(v366 + 24);

        swift_endAccess();

        v236 = v395;
        v395[0] = v234;
        v395[1] = v235;
        sub_7D6E4();
        sub_1F58(v236);
        v241 = 0;
        v461._countAndFlagsBits = sub_7CF84("", 0, v242 & 1);
        v237 = v461._object;
        sub_7D6F4(v461);

        v240 = v397;
        v239 = v398;

        sub_1F58(v238);
        v243 = sub_7CF74();
        v244 = v43;
        v44 = sub_7D1E4();
        (*(*(v44 - 8) + 56))(v372, v242);
        swift_unownedRetain();

        v45 = swift_allocObject();
        v46 = v369;
        v47 = v366;
        v48 = v364;
        v49 = v372;
        v50 = v244;
        v51 = v45;
        v52 = v243;
        v51[2] = 0;
        v51[3] = 0;
        v51[4] = v46;
        v51[5] = v47;
        v245 = sub_5370(v52, v50, v49, v48, v51, &type metadata for () + 8);
      }

      sub_5900(v372);

      goto LABEL_62;
  }

  if (v370 != 8)
  {
LABEL_62:
    v101 = 1;
    return v101 & 1;
  }

  v365;
  objc_opt_self();
  v158 = swift_dynamicCastObjCClass();
  if (v158)
  {
    v157 = v158;
    v156 = sub_1A88(&qword_90C40, &qword_7E890);
    v157;
    sub_E544();
    sub_7D774();

    if (v425)
    {
      v155 = v425;
      goto LABEL_48;
    }
  }

  else
  {
  }

  v155 = 0;
LABEL_48:
  v154 = v155;
  if (!v155)
  {
    goto LABEL_62;
  }

  v153 = v154;
  v150 = v154;
  v441 = v154;
  v149 = kCTFontDescriptorMatchingError;
  kCTFontDescriptorMatchingError;
  v84 = sub_7CF14();
  v151 = v439;
  v439[0] = v84;
  v439[1] = v85;
  sub_7CE04();
  sub_1F58(v151);
  v152 = v440;
  if (v440)
  {
    v148 = v152;
    v146 = &v427;
    v427 = v152;
    sub_1A88(&qword_90C38, &qword_7E888);
    v86 = swift_dynamicCast();
    if (v86)
    {
      v145 = v426;
    }

    else
    {
      v145 = 0;
    }

    v144 = v145;

    v147 = v144;
  }

  else
  {

    v147 = 0;
  }

  v143 = v147;
  if (v147)
  {
    v142 = v143;
    v124 = v143;
    v433 = v143;
    v117 = 1;
    v120 = sub_7CF84("download(_:)", 0xCuLL, 1);
    v123 = v92;
    v93 = sub_7D704();
    v112 = &v431;
    v431 = v93;
    v432 = v94;
    v472._countAndFlagsBits = sub_7CF84("❌ Download for ", 0x11uLL, 0);
    v102 = v472._object;
    sub_7D6F4(v472);

    v103 = &v430;
    swift_beginAccess();
    v104 = *(v366 + 16);
    v105 = *(v366 + 24);

    swift_endAccess();

    v106 = v429;
    v429[0] = v104;
    v429[1] = v105;
    v115 = &type metadata for String;
    v108 = &protocol witness table for String;
    v109 = &protocol witness table for String;
    sub_7D6E4();
    sub_1F58(v106);
    v473._countAndFlagsBits = sub_7CF84(" failed with error: ", 0x14uLL, v117 & 1);
    v107 = v473._object;
    sub_7D6F4(v473);

    swift_getErrorValue();
    v95 = sub_7D7B4();
    v110 = v428;
    v428[0] = v95;
    v428[1] = v96;
    sub_7D6E4();
    sub_1F58(v110);
    v116 = 0;
    v474._countAndFlagsBits = sub_7CF84("", 0, v117 & 1);
    v111 = v474._object;
    sub_7D6F4(v474);

    v114 = v431;
    v113 = v432;

    sub_1F58(v112);
    v118 = sub_7CF74();
    v122 = v97;
    v119 = sub_7D3A4();
    v121 = sub_7D714();
    v98 = sub_4754();
    sub_71E20(v120, v123, v98 & 1, v117 & 1, v118, v122, v119, v121);
  }

  else
  {
    v135 = 1;
    v138 = sub_7CF84("download(_:)", 0xCuLL, 1);
    v141 = v87;
    v88 = sub_7D704();
    v131 = &v437;
    v437 = v88;
    v438 = v89;
    v470._countAndFlagsBits = sub_7CF84("❌ Download for ", 0x11uLL, 0);
    v125 = v470._object;
    sub_7D6F4(v470);

    v126 = &v436;
    swift_beginAccess();
    v127 = *(v366 + 16);
    v128 = *(v366 + 24);

    swift_endAccess();

    v129 = v435;
    v435[0] = v127;
    v435[1] = v128;
    v134 = &type metadata for String;
    sub_7D6E4();
    sub_1F58(v129);
    v471._countAndFlagsBits = sub_7CF84(" failed", 7uLL, v135 & 1);
    v130 = v471._object;
    sub_7D6F4(v471);

    v133 = v437;
    v132 = v438;

    sub_1F58(v131);
    v136 = sub_7CF74();
    v140 = v90;
    v137 = sub_7D3A4();
    v139 = sub_7D714();
    v91 = sub_4754();
    sub_71E20(v138, v141, v91 & 1, v135 & 1, v136, v140, v137, v139);
  }

  v100 = &v434;
  swift_beginAccess();
  *(v367 + 16) = 1;
  swift_endAccess();

  v101 = 0;
  return v101 & 1;
}

uint64_t sub_4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_47C8, 0);
}

uint64_t sub_47C8()
{
  v4 = v0;
  v0[2] = v0;
  swift_unownedRetainStrong();
  v1 = swift_task_alloc();
  v4[7] = v1;
  *v1 = v4[2];
  v1[1] = sub_488C;
  v2 = v4[6];

  return sub_49EC(v2, 30);
}

uint64_t sub_488C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_49EC(uint64_t a1, uint64_t a2)
{
  v3[28] = v2;
  v3[27] = a2;
  v3[26] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v3[22] = 0;
  v4 = sub_7D5A4();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = v2;
  sub_7D184();
  v3[32] = sub_7D174();
  v9 = sub_7D154();
  v3[33] = v9;
  v3[34] = v5;

  return _swift_task_switch(sub_4B64, v9);
}

uint64_t sub_4B64()
{
  v1 = *(v0 + 216);
  *(v0 + 136) = v0;
  *(v0 + 168) = v1;
  sub_AF70();
  *(v0 + 88) = sub_7D844();
  *(v0 + 96) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v8 = sub_AFE8();
  sub_A8F8();
  v3 = swift_task_alloc();
  v7[35] = v3;
  *v3 = v7[17];
  v3[1] = sub_4CD4;
  v4 = v7[31];
  v5 = v7[29];

  return sub_A91C(v0 + 88, v0 + 64, v4, v5, v8);
}

uint64_t sub_4CD4()
{
  v5 = *v1;
  v5[17] = *v1;
  v5[36] = v0;

  if (v0)
  {
    v2 = v5[33];
    v3 = sub_5264;
  }

  else
  {
    (*(v5[30] + 8))(v5[31], v5[29]);
    v2 = v5[33];
    v3 = sub_4E74;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_4E74()
{
  v16 = v0[26];
  v0[17] = v0;

  swift_beginAccess();
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  swift_endAccess();

  swift_beginAccess();
  v0[13] = v17;
  v0[14] = v18;
  type metadata accessor for FontAssetFamily(0);
  sub_7CE04();
  sub_1F58((v0 + 13));
  v19 = v0[23];
  swift_endAccess();
  v0[24] = v19;
  if (v0[24])
  {
    sub_B068(v15 + 24);
    v14 = v15[26];
    v10 = sub_7CF84("startTimer(for:seconds:)", 0x18uLL, 1);
    v13 = v1;
    v15[15] = sub_7D704();
    v15[16] = v2;
    v21._countAndFlagsBits = sub_7CF84("❌ Assuming failed download for: ", 0x22uLL, 0);
    sub_7D6F4(v21);

    v15[25] = v14;
    sub_7D6D4();
    v22._countAndFlagsBits = sub_7CF84("", 0, 1);
    sub_7D6F4(v22);

    sub_1F58((v15 + 15));
    v9 = sub_7CF74();
    v12 = v3;
    v11 = sub_7D714();
    v7 = sub_4754();
    v8 = sub_4754();
    v4 = sub_4760();
    sub_71E20(v10, v13, v7 & 1, v8 & 1, v9, v12, v4, v11);

    sub_5B58(v14, 0);
  }

  else
  {
    sub_B068(v15 + 24);
  }

  v5 = *(v15[17] + 8);

  return v5();
}

uint64_t sub_5264()
{
  v6 = v0[36];
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[29];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v0[22] = v6;

  v4 = *(v0[17] + 8);

  return v4();
}

uint64_t sub_5370(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_7E870;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(sub_1A88(&qword_90AD0, &qword_7E230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_E19C(v53, v56);
  v57 = sub_7D1E4();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_5900(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_7D1D4();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_7D154();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_7CF54();
    sub_CB0C(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_CCCC();
  v16 = v13;

  return v16;
}

uint64_t sub_5900(uint64_t a1)
{
  v3 = sub_7D1E4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_59F8, 0);
}

uint64_t sub_59F8()
{
  *(v0 + 16) = v0;
  swift_unownedRetainStrong();
  sub_7D184();
  *(v0 + 56) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_5AA0, v1);
}

uint64_t sub_5AA0()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_5B58(v1, 0);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

void sub_5B58(uint64_t a1, char a2)
{
  v13[9] = 0;
  v15 = a1;
  v14 = a2 & 1;

  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);

  swift_endAccess();

  swift_beginAccess();
  v13[0] = v7;
  v13[1] = v8;
  type metadata accessor for FontAssetFamily(0);
  sub_7CE04();
  sub_1F58(v13);
  v9 = v13[2];
  swift_endAccess();
  v12 = v9;
  sub_B068(&v12);
  if (v9)
  {

    swift_beginAccess();
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    swift_endAccess();

    v11[0] = v3;
    v11[1] = v4;
    swift_beginAccess();
    sub_1A88(&qword_90AD8, &qword_7E248);
    sub_7CDA4();
    swift_endAccess();
    sub_1F58(v11);

    if (a2)
    {

      v10[4] = a1;
      v2 = sub_14078(v10);
      sub_1A88(&qword_90AF0, &qword_7E270);
      sub_7D264();
      v2();

      sub_6CB54();

      sub_6AE48(2);
    }

    else
    {

      sub_6AE48(1);
    }
  }
}

uint64_t sub_5E88(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = *(a1 + 32);

  a3;
  v7 = v4(a2, a3);

  return v7 & 1;
}

__int128 *sub_5F18(uint64_t a1)
{
  v35 = a1;
  v27 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v36 = 0;
  v39 = 0;
  v38 = 0;
  v34 = sub_7BD04();
  v28 = v34;
  v29 = *(v34 - 8);
  v30 = v29;
  __chkstk_darwin(v34 - 8);
  v31 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v31;
  v32 = (*(*(sub_1A88(&qword_90AF8, &qword_7E278) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v33 = v10 - v32;
  v48 = v3;
  v47 = v1;

  sub_B094();
  sub_7D224();
  v46 = v52;
  v45 = v51;
  v44 = v50;
  for (i = v36; ; i = v10[0])
  {
    v26 = i;
    sub_1A88(&qword_90B08, &qword_7E280);
    sub_7D294();
    if ((*(v30 + 48))(v33, 1, v28) == 1)
    {
      result = &v44;
      sub_B114(&v44);
      return result;
    }

    v4 = v26;
    (*(v30 + 32))(v31, v33, v28);
    v42 = sub_13F40();
    v23 = v10;
    __chkstk_darwin(v10);
    v21 = &v10[-4];
    v10[-2] = v5;
    v22 = sub_1A88(&qword_90AF0, &qword_7E270);
    sub_B1C4();
    sub_7D034();
    v24 = v4;
    v25 = v23;
    if (v4)
    {
      break;
    }

    sub_B2C0(&v42);
    v20 = v43;
    if (v43)
    {
      v19 = v20;
      v6 = v24;
      v17 = v20;
      v38 = v20;
      sub_6634(v20);

      v18 = v6;
    }

    else
    {
      v7 = v24;
      v40 = sub_13FDC();
      v14 = v10;
      __chkstk_darwin(v10);
      v12 = &v10[-4];
      v10[-2] = v8;
      v13 = sub_1A88(&qword_90B18, &qword_7E288);
      sub_B318();
      sub_7D034();
      v15 = v7;
      v16 = v14;
      if (v7)
      {
        goto LABEL_13;
      }

      sub_B2C0(&v40);
      v11 = v41;
      if (v41)
      {
        v10[2] = v11;
        v10[1] = v11;
        v39 = v11;
        sub_6C84(v11);
      }

      v18 = v15;
    }

    v10[0] = v18;
    (*(v30 + 8))(v31, v28);
  }

  __break(1u);
LABEL_13:
  result = v16;
  __break(1u);
  return result;
}

uint64_t sub_645C(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v22 = 0;
  v21 = 0;
  v10 = 0;
  v11 = sub_7BD04();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v6 - v14;
  v16 = *v2;
  v22 = v16;
  v21 = v3;
  v17 = sub_7D184();
  v18 = sub_7D174();
  v19 = sub_7D154();
  v20 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v15, v16 + OBJC_IVAR____TtC12FontSettings6Family_id, v11);

  v7 = sub_7BCE4();
  (*(v12 + 8))(v15, v11);

  return v7 & 1;
}

uint64_t sub_6634(uint64_t a1)
{
  v31[2] = 0;
  v31[3] = a1;
  v13 = sub_7CF84("requestRemove(_:)", 0x11uLL, 1);
  v16 = v1;
  v31[0] = sub_7D704();
  v31[1] = v2;
  v32._countAndFlagsBits = sub_7CF84("🚮 Requesting removal of font asset family: ", 0x2EuLL, 0);
  sub_7D6F4(v32);

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);

  swift_endAccess();

  v30[0] = v8;
  v30[1] = v9;
  sub_7D6E4();
  sub_1F58(v30);
  v33._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v33);

  sub_1F58(v31);
  v12 = sub_7CF74();
  v15 = v3;
  v14 = sub_7D714();
  v10 = sub_4754();
  v11 = sub_4754();
  v4 = sub_4760();
  sub_71E20(v13, v16, v10 & 1, v11 & 1, v12, v15, v4, v14);

  v24 = sub_1A88(&qword_90B28, &qword_7E290);
  v23 = sub_7D714();
  v22 = v5;
  v21 = sub_1A88(&qword_90B30, &qword_7E298);
  v20 = sub_7D714();
  v18 = v6;
  kCTFontFamilyNameAttribute;
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7D6B4();

  swift_beginAccess();
  v17 = *(a1 + 16);
  v19 = *(a1 + 24);

  swift_endAccess();
  v18[8] = &type metadata for String;
  v18[5] = v17;
  v18[6] = v19;

  sub_71DDC(v20, v21);

  *v22 = sub_7CDB4();
  sub_71DDC(v23, v24);
  v26 = objc_opt_self();

  isa = sub_7D094().super.isa;

  v25 = kFSUserFontManagerUninstallFontAssetsIdentifier;
  kFSUserFontManagerUninstallFontAssetsIdentifier;
  sub_7CF14();
  v27 = sub_7CF04();

  [v26 uninstallFonts:isa forIdentifier:v27 appInfo:0 completionHandler:?];
  sub_7B8C(a1);
}

uint64_t sub_6AAC(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v22 = 0;
  v21 = 0;
  v10 = 0;
  v11 = sub_7BD04();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v6 - v14;
  v16 = *v2;
  v22 = v16;
  v21 = v3;
  v17 = sub_7D184();
  v18 = sub_7D174();
  v19 = sub_7D154();
  v20 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v15, v16 + OBJC_IVAR____TtC12FontSettings6Family_id, v11);

  v7 = sub_7BCE4();
  (*(v12 + 8))(v15, v11);

  return v7 & 1;
}

uint64_t sub_6C84(void *a1)
{
  v26[2] = 0;
  v26[3] = a1;
  v15 = sub_7CF84("requestRemove(_:)", 0x11uLL, 1);
  v18 = v1;
  v26[0] = sub_7D704();
  v26[1] = v2;
  v27._countAndFlagsBits = sub_7CF84("🚮 Requesting removal of installed family: ", 0x2DuLL, 0);
  sub_7D6F4(v27);

  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];

  swift_endAccess();

  v25[0] = v10;
  v25[1] = v11;
  sub_7D6E4();
  sub_1F58(v25);
  v28._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v28);

  sub_1F58(v26);
  v14 = sub_7CF74();
  v17 = v3;
  v16 = sub_7D714();
  v12 = sub_4754();
  v13 = sub_4754();
  v4 = sub_4760();
  sub_71E20(v15, v18, v12 & 1, v13 & 1, v14, v17, v4, v16);

  v20 = sub_6C6DC();

  v24 = v20;
  v21 = sub_1A88(&qword_90B40, &qword_7E2A0);
  v22 = sub_1A88(&qword_90B28, &qword_7E290);
  v5 = sub_B4B8();
  sub_7FFC(sub_7E44, 0, v21, v22, &type metadata for Never, v5, &protocol witness table for Never, v23);
  sub_B2C0(&v24);
  v7 = objc_opt_self();

  isa = sub_7D094().super.isa;

  swift_beginAccess();

  swift_endAccess();
  v8 = sub_7CF04();

  [v7 uninstallFonts:isa forIdentifier:v8 appInfo:0 completionHandler:?];

  sub_88E0(a1);
}

uint64_t sub_7078(__objc2_class **a1)
{
  v75 = a1;
  v76 = 0;
  v71 = &unk_7E2C0;
  v72 = &unk_7E2B0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v82 = 0;
  v73 = (*(*(sub_1A88(&qword_90AD0, &qword_7E230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v74 = &v30 - v73;
  v89 = v2;
  v88 = v1;

  v3 = v76;
  if (_TtC12FontSettings15FontAssetFamily == *v75)
  {
    v3 = v75;
  }

  v77 = v3;
  if (v3)
  {
    v69 = v77;
  }

  else
  {

    v69 = 0;
  }

  v68 = v69;
  if (v69)
  {
    v67 = v68;
    v66 = v68;
    v82 = v68;
    sub_1AF4(v68);
    v51 = 19;
    v4 = sub_7D704();
    v58 = &v80;
    v80 = v4;
    v81 = v5;
    v62 = 1;
    v90._countAndFlagsBits = sub_7CF84("Request removal of ", v51, 1);
    object = v90._object;
    sub_7D6F4(v90);

    v53 = &v79;
    swift_beginAccess();
    v54 = *(v66 + 16);
    v55 = *(v66 + 24);

    swift_endAccess();

    v56 = v78;
    v78[0] = v54;
    v78[1] = v55;
    sub_7D6E4();
    sub_1F58(v56);
    v61 = 0;
    v91._countAndFlagsBits = sub_7CF84("", 0, v62 & 1);
    v57 = v91._object;
    sub_7D6F4(v91);

    v60 = v80;
    v59 = v81;

    sub_1F58(v58);
    v63 = sub_7CF74();
    v64 = v6;
    sub_7D194();
    v7 = sub_7D1E4();
    (*(*(v7 - 8) + 56))(v74, 0, v62);

    v8 = swift_allocObject();
    v9 = v70;
    v10 = v71;
    v11 = v74;
    v12 = v64;
    v13 = v66;
    v14 = v8;
    v15 = v63;
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v9;
    v14[5] = v13;
    v65 = sub_5370(v15, v12, v11, v10, v14, &type metadata for () + 8);
    sub_5900(v74);
  }

  else
  {

    v17 = 0;
    if (_TtC12FontSettings18FontProviderFamily == *v75)
    {
      v17 = v75;
    }

    v50 = v17;
    if (v17)
    {
      v49 = v50;
    }

    else
    {

      v49 = 0;
    }

    v48 = v49;
    if (v49)
    {
      v47 = v48;
      v46 = v48;
      v87 = v48;

      sub_6AE48(3);

      v31 = 19;
      v18 = sub_7D704();
      v38 = &v85;
      v85 = v18;
      v86 = v19;
      v42 = 1;
      v92._countAndFlagsBits = sub_7CF84("Request removal of ", v31, 1);
      v32 = v92._object;
      sub_7D6F4(v92);

      v33 = &v84;
      swift_beginAccess();
      v34 = v46[2];
      v35 = v46[3];

      swift_endAccess();

      v36 = v83;
      v83[0] = v34;
      v83[1] = v35;
      sub_7D6E4();
      sub_1F58(v36);
      v41 = 0;
      v93._countAndFlagsBits = sub_7CF84("", 0, v42 & 1);
      v37 = v93._object;
      sub_7D6F4(v93);

      v40 = v85;
      v39 = v86;

      sub_1F58(v38);
      v43 = sub_7CF74();
      v44 = v20;
      sub_7D194();
      v21 = sub_7D1E4();
      (*(*(v21 - 8) + 56))(v74, 0, v42);

      v22 = swift_allocObject();
      v23 = v70;
      v24 = v72;
      v25 = v74;
      v26 = v44;
      v27 = v46;
      v28 = v22;
      v29 = v43;
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v23;
      v28[5] = v27;
      v45 = sub_5370(v29, v26, v25, v24, v28, &type metadata for () + 8);
      sub_5900(v74);
    }
  }

  return result;
}

uint64_t sub_7864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_78B4, 0);
}

uint64_t sub_78B4()
{
  *(v0 + 16) = v0;
  sub_7D184();
  *(v0 + 56) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_7954, v1);
}

uint64_t sub_7954()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_6634(v1);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_79F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_7A48, 0);
}

uint64_t sub_7A48()
{
  *(v0 + 16) = v0;
  sub_7D184();
  *(v0 + 56) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_7AE8, v1);
}

uint64_t sub_7AE8()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_6C84(v1);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_7B8C(uint64_t a1)
{
  v19[2] = 0;
  v19[3] = a1;
  v11 = sub_7CF84("remove(_:)", 0xAuLL, 1);
  v14 = v1;
  v19[0] = sub_7D704();
  v19[1] = v2;
  v20._countAndFlagsBits = sub_7CF84("🗑️ Removing font asset family: ", 0x24uLL, 0);
  sub_7D6F4(v20);

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  swift_endAccess();

  v18[0] = v6;
  v18[1] = v7;
  sub_7D6E4();
  sub_1F58(v18);
  v21._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v21);

  sub_1F58(v19);
  v10 = sub_7CF74();
  v13 = v3;
  v12 = sub_7D714();
  v8 = sub_4754();
  v9 = sub_4754();
  v4 = sub_4760();
  sub_71E20(v11, v14, v8 & 1, v9 & 1, v10, v13, v4, v12);

  sub_6CB54();

  sub_6AE48(1);

  v17[4] = a1;
  v16 = sub_14078(v17);
  sub_1A88(&qword_90AF0, &qword_7E270);
  sub_7D274();
  v16();
}

uint64_t sub_7E44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  v9 = *a1;
  v10 = a1[1];
  v12 = *a1;
  v13 = v10;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1A88(&qword_90B30, &qword_7E298);
  v5 = sub_7D714();
  v6 = v2;
  v11[0] = sub_7CF84("actualPath", 0xAuLL, 1);
  v11[1] = v3;
  sub_7D6B4();

  v6[8] = &type metadata for String;
  v6[5] = v9;
  v6[6] = v10;
  sub_71DDC(v5, v7);
  sub_1F58(v11);
  *a2 = sub_7CDB4();
}

uint64_t sub_7FFC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  __chkstk_darwin(a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v66 = &v15 - v65;
  v67 = sub_7D2F4();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_7D584();
  v33 = sub_7D594();
  sub_7D564(v67);
  result = sub_7D2E4();
  if (v67 < 0)
  {
    sub_7D5E4();
    __break(1u);
LABEL_24:
    v17 = sub_7D0D4();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_7D304();
    swift_getAssociatedConformanceWitness();
    v22 = sub_7CE84();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_7D624();
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
      sub_7D5E4();
      __break(1u);
LABEL_18:
      sub_7D624();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_7D364();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_B068(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_7D574();
    sub_7D314();
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

uint64_t sub_88E0(uint64_t a1)
{
  v19[2] = 0;
  v19[3] = a1;
  v11 = sub_7CF84("remove(_:)", 0xAuLL, 1);
  v14 = v1;
  v19[0] = sub_7D704();
  v19[1] = v2;
  v20._countAndFlagsBits = sub_7CF84("🗑️ Removing font provider family: ", 0x27uLL, 0);
  sub_7D6F4(v20);

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  swift_endAccess();

  v18[0] = v6;
  v18[1] = v7;
  sub_7D6E4();
  sub_1F58(v18);
  v21._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v21);

  sub_1F58(v19);
  v10 = sub_7CF74();
  v13 = v3;
  v12 = sub_7D714();
  v8 = sub_4754();
  v9 = sub_4754();
  v4 = sub_4760();
  sub_71E20(v11, v14, v8 & 1, v9 & 1, v10, v13, v4, v12);

  v17[4] = a1;
  v16 = sub_14234(v17);
  sub_1A88(&qword_90B18, &qword_7E288);
  sub_7D274();
  v16();
}

uint64_t sub_8B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  v6 = swift_task_alloc();
  *(v8 + 40) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_8C4C;

  return sub_49EC(a5, 120);
}

uint64_t sub_8C4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_8D8C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = a1;
  v10 = a2;

  swift_beginAccess();
  v6[0] = a1;
  v6[1] = a2;
  type metadata accessor for FontAssetFamily(0);
  sub_7CE04();
  sub_1F58(v6);
  v5 = v7;
  if (!v7)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  sub_5B58(v5, 1);
}

uint64_t sub_8EC4()
{
  *(v1 + 600) = v0;
  *(v1 + 496) = v1;
  *(v1 + 504) = 0;
  *(v1 + 512) = 0;
  *(v1 + 776) = 0;
  *(v1 + 520) = 0;
  *(v1 + 536) = 0;
  memset((v1 + 136), 0, 0x28uLL);
  *(v1 + 560) = 0;
  *(v1 + 576) = 0;
  memset((v1 + 216), 0, 0x28uLL);
  memset((v1 + 256), 0, 0x28uLL);
  *(v1 + 448) = 0;
  *(v1 + 456) = 0;
  v2 = sub_7BCD4();
  *(v1 + 608) = v2;
  *(v1 + 616) = *(v2 - 8);
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = swift_task_alloc();
  sub_1A88(&qword_90B50, &qword_7E2D0);
  *(v1 + 640) = swift_task_alloc();
  *(v1 + 648) = swift_task_alloc();
  v3 = sub_7BB94();
  *(v1 + 656) = v3;
  *(v1 + 664) = *(v3 - 8);
  *(v1 + 672) = swift_task_alloc();
  sub_1A88(&qword_90B58, &qword_7E2D8);
  *(v1 + 680) = swift_task_alloc();
  v4 = sub_7D3D4();
  *(v1 + 688) = v4;
  *(v1 + 696) = *(v4 - 8);
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 504) = v0;
  *(v1 + 712) = sub_7D184();
  *(v1 + 720) = sub_7D174();
  v7 = sub_7D154();
  *(v1 + 728) = v7;
  *(v1 + 736) = v5;

  return _swift_task_switch(sub_91DC, v7);
}

uint64_t sub_91DC()
{
  *(v0 + 496) = v0;
  v8 = [objc_opt_self() defaultCenter];
  v7 = *sub_61278();
  v7;
  v1 = sub_7D3E4();
  *(v0 + 744) = v1;

  *(v0 + 512) = v1;
  *(v0 + 776) = 0;

  sub_7D3C4();
  *(v0 + 777) = 0;
  v10 = sub_7D174();
  *(v0 + 752) = v10;
  v2 = swift_task_alloc();
  v9[95] = v2;
  v3 = sub_B7A8();
  *v2 = v9[62];
  v2[1] = sub_938C;
  v4 = v9[86];
  v5 = v9[85];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v5, v10, &protocol witness table for MainActor, v4, v3);
}

uint64_t sub_938C()
{
  v5 = *v1 + 16;
  *(*v1 + 496) = *v1;

  if (v0)
  {
    v2 = *(v5 + 712);
    v3 = sub_A8E4;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = *(v5 + 712);
    v3 = sub_950C;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_950C()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[82];
  v0[62] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v61 + 696) + 8))();

    v21 = *(*(v61 + 496) + 8);

    return v21();
  }

  else
  {
    (*(*(v61 + 664) + 32))(*(v61 + 672), *(v61 + 680), *(v61 + 656));
    if (sub_7BB84())
    {
      sub_BA0C(&kCTFontManagerAvailableFontURLsAddedKey, (v61 + 592));
      sub_1A88(&qword_90B88, qword_7E2F0);
      sub_BA4C();
      sub_7D6B4();
      sub_7CE04();

      sub_BAE4((v61 + 296));
      sub_BB0C((v61 + 592));
    }

    else
    {
      *(v61 + 336) = 0;
      *(v61 + 344) = 0;
      *(v61 + 352) = 0;
      *(v61 + 360) = 0;
    }

    if (*(v61 + 360))
    {
      sub_1A88(&qword_90B68, &qword_7E2E0);
      if (swift_dynamicCast())
      {
        v60 = *(v61 + 584);
      }

      else
      {
        v60 = 0;
      }

      v59 = v60;
    }

    else
    {
      sub_B828((v61 + 336));
      v59 = 0;
    }

    if (v59)
    {
      *(v61 + 560) = v59;

      *(v61 + 568) = v59;
      sub_1A88(&qword_90B68, &qword_7E2E0);
      sub_B904();
      sub_B984();
      *(v61 + 576) = sub_7D2C4();

      sub_7D224();
      memcpy((v61 + 216), (v61 + 96), 0x28uLL);
      for (i = *(v61 + 777); ; i = v50)
      {
        v55 = *(v61 + 648);
        v56 = *(v61 + 608);
        v54 = *(v61 + 616);
        sub_1A88(&qword_90B80, &qword_7E2E8);
        sub_7D294();
        if ((*(v54 + 48))(v55, 1, v56) == 1)
        {
          break;
        }

        (*(*(v61 + 616) + 32))(*(v61 + 632), *(v61 + 648), *(v61 + 608));
        sub_7BCA4();
        v4 = sub_612D8();
        v51 = *v4;
        v52 = v4[1];

        v63._countAndFlagsBits = v51;
        v63._object = v52;
        v53 = sub_7D014(v63);

        if (v53)
        {
          *(v61 + 776) = 1;
          v50 = 1;
        }

        else
        {
          sub_61338();
          sub_7D224();
          memcpy((v61 + 256), (v61 + 56), 0x28uLL);
          while (1)
          {
            sub_1A88(&qword_90B98, &unk_80F60);
            sub_7D294();
            v48 = *(v61 + 432);
            v49 = *(v61 + 440);
            if (!v49)
            {
              break;
            }

            *(v61 + 448) = v48;
            *(v61 + 456) = v49;
            v44 = sub_7CF84("respondToNotification()", 0x17uLL, 1);
            v47 = v5;
            *(v61 + 464) = sub_7D704();
            *(v61 + 472) = v6;
            v64._countAndFlagsBits = sub_7CF84("➕ Notified of addition: ", 0x1AuLL, 0);
            sub_7D6F4(v64);

            *(v61 + 480) = v48;
            *(v61 + 488) = v49;
            sub_7D6E4();
            v65._countAndFlagsBits = sub_7CF84("", 0, 1);
            sub_7D6F4(v65);

            sub_1F58(v61 + 464);
            v43 = sub_7CF74();
            v46 = v7;
            v45 = sub_7D714();
            v41 = sub_4754();
            v42 = sub_4754();
            v8 = sub_4760();
            sub_71E20(v44, v47, v41 & 1, v42 & 1, v43, v46, v8, v45);

            sub_8D8C(v48, v49);
          }

          sub_B114((v61 + 256));
          v50 = i;
        }

        (*(*(v61 + 616) + 8))(*(v61 + 632), *(v61 + 608));
      }

      sub_B114((v61 + 216));

      v57 = i;
    }

    else
    {
      v57 = *(v61 + 777);
    }

    if (sub_7BB84())
    {
      sub_BA0C(&kCTFontManagerAvailableFontURLsRemovedKey, (v61 + 552));
      sub_1A88(&qword_90B88, qword_7E2F0);
      sub_BA4C();
      sub_7D6B4();
      sub_7CE04();

      sub_BAE4((v61 + 176));
      sub_BB0C((v61 + 552));
    }

    else
    {
      *(v61 + 368) = 0;
      *(v61 + 376) = 0;
      *(v61 + 384) = 0;
      *(v61 + 392) = 0;
    }

    if (*(v61 + 392))
    {
      sub_1A88(&qword_90B68, &qword_7E2E0);
      if (swift_dynamicCast())
      {
        v40 = *(v61 + 544);
      }

      else
      {
        v40 = 0;
      }

      v39 = v40;
    }

    else
    {
      sub_B828((v61 + 368));
      v39 = 0;
    }

    if (v39)
    {
      *(v61 + 520) = v39;

      *(v61 + 528) = v39;
      sub_1A88(&qword_90B68, &qword_7E2E0);
      sub_B904();
      sub_B984();
      *(v61 + 536) = sub_7D2C4();

      sub_7D224();
      memcpy((v61 + 136), (v61 + 16), 0x28uLL);
      for (j = v57; ; j = v23)
      {
        v35 = *(v61 + 640);
        v36 = *(v61 + 608);
        v34 = *(v61 + 616);
        sub_1A88(&qword_90B80, &qword_7E2E8);
        sub_7D294();
        if ((*(v34 + 48))(v35, 1, v36) == 1)
        {
          break;
        }

        (*(*(v61 + 616) + 32))();
        v27 = sub_7CF84("respondToNotification()", 0x17uLL, 1);
        v30 = v9;
        *(v61 + 400) = sub_7D704();
        *(v61 + 408) = v10;
        v66._countAndFlagsBits = sub_7CF84("➖ Notified of removal: ", 0x19uLL, 0);
        sub_7D6F4(v66);

        *(v61 + 416) = sub_7BCA4();
        *(v61 + 424) = v11;
        sub_7D6E4();
        sub_1F58(v61 + 416);
        v67._countAndFlagsBits = sub_7CF84("", 0, 1);
        sub_7D6F4(v67);

        sub_1F58(v61 + 400);
        v26 = sub_7CF74();
        v29 = v12;
        v28 = sub_7D714();
        v24 = sub_4754();
        v25 = sub_4754();
        v13 = sub_4760();
        sub_71E20(v27, v30, v24 & 1, v25 & 1, v26, v29, v13, v28);

        sub_7BCA4();
        v14 = sub_612D8();
        v31 = *v14;
        v32 = v14[1];

        v68._countAndFlagsBits = v31;
        v68._object = v32;
        v33 = sub_7D014(v68);

        if (v33)
        {
          *(v61 + 776) = 1;
          v23 = 1;
        }

        else
        {
          v23 = j;
        }

        (*(*(v61 + 616) + 8))(*(v61 + 624), *(v61 + 608));
      }

      sub_B114((v61 + 136));

      v37 = j;
    }

    else
    {
      v37 = v57;
    }

    *(v61 + 778) = v37 & 1;
    if (v37)
    {
      v15 = swift_task_alloc();
      *(v61 + 768) = v15;
      *v15 = *(v61 + 496);
      v15[1] = sub_A66C;

      return sub_F0A0();
    }

    else
    {
      (*(*(v61 + 664) + 8))(*(v61 + 672), *(v61 + 656));
      *(v61 + 777) = *(v61 + 778) & 1;
      v22 = sub_7D174();
      *(v61 + 752) = v22;
      v17 = swift_task_alloc();
      *(v61 + 760) = v17;
      v18 = sub_B7A8();
      *v17 = *(v61 + 496);
      v17[1] = sub_938C;
      v19 = *(v61 + 688);
      v20 = *(v61 + 680);

      return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v20, v22, &protocol witness table for MainActor, v19, v18);
    }
  }
}

uint64_t sub_A66C()
{
  v3 = *v0;
  *(*v0 + 496) = *v0;

  v1 = *(v3 + 728);

  return _swift_task_switch(sub_A7AC, v1);
}

uint64_t sub_A7AC()
{
  *(v0 + 496) = v0;
  (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
  *(v0 + 777) = *(v0 + 778) & 1;
  v7 = sub_7D174();
  *(v0 + 752) = v7;
  v1 = swift_task_alloc();
  v6[95] = v1;
  v2 = sub_B7A8();
  *v1 = v6[62];
  v1[1] = sub_938C;
  v3 = v6[86];
  v4 = v6[85];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v4, v7, &protocol witness table for MainActor, v3, v2);
}

uint64_t sub_A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_AA08;

  return sub_CCE0(a1, a2, a4, a5);
}

uint64_t sub_AA08()
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

uint64_t sub_AB94@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_7CB24();
  v3 = enum case for PopoverAttachmentAnchor.rect(_:);
  v1 = sub_7C4F4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_AC14(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (sub_D1EC(18, 1, 0))
  {
    if (a5 != 4)
    {
      sub_7C5C4();
    }

    return sub_7C794();
  }

  else if (sub_D1EC(18, 0, 0))
  {
    return sub_7C954();
  }

  else
  {
    return sub_7C964();
  }
}

uint64_t sub_AE3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_AE8C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_8B74(a1, v6, v7, v8, v9);
}

unint64_t sub_AF70()
{
  v2 = qword_90AE0;
  if (!qword_90AE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AFE8()
{
  v2 = qword_90AE8;
  if (!qword_90AE8)
  {
    sub_7D5A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90AE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B094()
{
  v2 = qword_90B00;
  if (!qword_90B00)
  {
    sub_7BD04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B1C4()
{
  v2 = qword_90B10;
  if (!qword_90B10)
  {
    sub_B24C(&qword_90AF0, &qword_7E270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_B24C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_B318()
{
  v2 = qword_90B20;
  if (!qword_90B20)
  {
    sub_B24C(&qword_90B18, &qword_7E288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B20);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CFString(uint64_t a1)
{
  v5 = qword_90BE0;
  if (!qword_90BE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BE0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_B438()
{
  v2 = qword_90B38;
  if (!qword_90B38)
  {
    type metadata accessor for CFString(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B4B8()
{
  v2 = qword_90B48;
  if (!qword_90B48)
  {
    sub_B24C(&qword_90B40, &qword_7E2A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_B540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_B590(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_79F8(a1, v6, v7, v8, v9);
}

uint64_t sub_B674()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_B6C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_7864(a1, v6, v7, v8, v9);
}

unint64_t sub_B7A8()
{
  v2 = qword_90B60;
  if (!qword_90B60)
  {
    sub_7D3D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B60);
    return WitnessTable;
  }

  return v2;
}

void *sub_B828(void *a1)
{
  if (a1[3])
  {
    sub_B864(a1);
  }

  return a1;
}

uint64_t sub_B864(void *a1)
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

unint64_t sub_B904()
{
  v2 = qword_90B70;
  if (!qword_90B70)
  {
    sub_7BCD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B984()
{
  v2 = qword_90B78;
  if (!qword_90B78)
  {
    sub_B24C(&qword_90B68, &qword_7E2E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B78);
    return WitnessTable;
  }

  return v2;
}

void *sub_BA0C(id *a1, void *a2)
{
  v3 = *a1;
  *a1;
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_BA4C()
{
  v2 = qword_90B90;
  if (!qword_90B90)
  {
    sub_B24C(&qword_90B88, qword_7E2F0);
    sub_B438();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_BE10(uint64_t a1)
{
  sub_EEA8();
  sub_EF28();
  return sub_7D6A4();
}

uint64_t sub_BE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EEA8();
  sub_EF28();
  return sub_7D674();
}

uint64_t sub_BE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EEA8();
  sub_EF28();
  return sub_7D684() & 1;
}

uint64_t sub_BEE8(uint64_t a1, uint64_t a2)
{
  sub_EEA8();
  sub_EF28();
  return sub_7D694();
}

void sub_C004(uint64_t a2@<X8>)
{
  sub_C040();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t sub_C1B0(uint64_t a1)
{
  sub_EE28();
  sub_EF28();
  return sub_7D6A4();
}

uint64_t sub_C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EE28();
  sub_EF28();
  return sub_7D674();
}

uint64_t sub_C238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_EE28();
  sub_EF28();
  return sub_7D684() & 1;
}

uint64_t sub_C288(uint64_t a1, uint64_t a2)
{
  sub_EE28();
  sub_EF28();
  return sub_7D694();
}

void sub_C3D8(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 4) = 0;
}

uint64_t sub_C448(uint64_t a1)
{
  sub_E0A4();
  sub_E124();
  return sub_7D904();
}

uint64_t sub_C64C(uint64_t a1, uint64_t a2)
{
  sub_E0A4();
  sub_E124();
  return sub_7D8F4();
}

uint64_t sub_C690(uint64_t a1, uint64_t a2)
{
  sub_E0A4();
  sub_E124();
  return sub_7D8D4();
}

uint64_t sub_C6D4(uint64_t a1, uint64_t a2)
{
  sub_E0A4();
  sub_E124();
  return sub_7D8E4();
}

void sub_C840(_BYTE *a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  a1[1] = 0;
}

NSString sub_C8B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C8E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

NSString sub_C8E8(uint64_t a1, uint64_t a2)
{

  v3 = sub_7CF04();
  v3;

  return v3;
}

uint64_t sub_C954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C988(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C988(void *a1)
{
  a1;
  v3 = sub_7CF14();

  return v3;
}

uint64_t sub_C9E8(uint64_t a1)
{
  sub_EFA0();
  sub_EEA8();
  return sub_7D654();
}

uint64_t sub_CAC0(uint64_t a1)
{
  sub_F020();
  sub_EE28();
  return sub_7D654();
}

uint64_t sub_CB0C@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_7D5E4();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_CE0C, 0);
}

uint64_t sub_CE0C()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_7D784();
  swift_getAssociatedConformanceWitness();
  sub_7D5B4();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_CF74;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v3, v6, v5, v4);
}

uint64_t sub_CF74()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return _swift_task_switch(sub_D144, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_D144()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

__n128 sub_D228(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_D23C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
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

uint64_t sub_D344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 32) = 1;
    }
  }

  else if (a3)
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CGRect(uint64_t a1)
{
  v5 = qword_90BA0;
  if (!qword_90BA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BA0);
      return v2;
    }
  }

  return v5;
}

__n128 sub_D58C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_D598(uint64_t a1, int a2)
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

uint64_t sub_D6A4(uint64_t result, int a2, int a3)
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

unint64_t type metadata accessor for CGPoint(uint64_t a1)
{
  v5 = qword_90BA8;
  if (!qword_90BA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BA8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CTFont(uint64_t a1)
{
  v5 = qword_90BB0;
  if (!qword_90BB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BB0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ComparisonResult(uint64_t a1)
{
  v5 = qword_90BB8;
  if (!qword_90BB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BB8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CFComparisonResult(uint64_t a1)
{
  v5 = qword_90BC0;
  if (!qword_90BC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BC0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CTFontSymbolicTraits(uint64_t a1)
{
  v5 = qword_90BC8;
  if (!qword_90BC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CGSize(uint64_t a1)
{
  v5 = qword_90BD0;
  if (!qword_90BD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BD0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CTFontDescriptor(uint64_t a1)
{
  v5 = qword_90BD8;
  if (!qword_90BD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for OSLogType(uint64_t a1)
{
  v5 = qword_90BE8;
  if (!qword_90BE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BE8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_DD44()
{
  v2 = qword_90BF0;
  if (!qword_90BF0)
  {
    type metadata accessor for CTFontSymbolicTraits(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90BF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DDDC()
{
  v2 = qword_90BF8;
  if (!qword_90BF8)
  {
    type metadata accessor for CTFontSymbolicTraits(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DE74()
{
  v2 = qword_90C00;
  if (!qword_90C00)
  {
    type metadata accessor for CTFontSymbolicTraits(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DF0C()
{
  v2 = qword_90C08;
  if (!qword_90C08)
  {
    type metadata accessor for CTFontSymbolicTraits(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DFA4()
{
  v2 = qword_90C10;
  if (!qword_90C10)
  {
    type metadata accessor for CFString(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E024()
{
  v2 = qword_90C18;
  if (!qword_90C18)
  {
    type metadata accessor for OSLogType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E0A4()
{
  v2 = qword_90C20;
  if (!qword_90C20)
  {
    type metadata accessor for CTFontSymbolicTraits(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E124()
{
  v2 = qword_90C28;
  if (!qword_90C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C28);
    return WitnessTable;
  }

  return v2;
}

void *sub_E19C(const void *a1, void *a2)
{
  v6 = sub_7D1E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_90AD0, &qword_7E230);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_E30C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_17A28(a1, v6);
}

uint64_t sub_E474()
{

  swift_unownedRelease();
  return swift_deallocObject();
}

uint64_t sub_E4E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_E544()
{
  v2 = qword_90C48;
  if (!qword_90C48)
  {
    sub_B24C(&qword_90C40, &qword_7E890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_E5CC()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_E61C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_59A8(a1, v6, v7, v8, v9);
}

uint64_t sub_E700()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_E750(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_59A8(a1, v6, v7, v8, v9);
}

uint64_t sub_E834()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_E884(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_4778(a1, v6, v7, v8, v9);
}

unint64_t type metadata accessor for Key(uint64_t a1)
{
  v5 = qword_90C50;
  if (!qword_90C50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90C50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for FileAttributeKey(uint64_t a1)
{
  v5 = qword_90C58;
  if (!qword_90C58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90C58);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_EAB0()
{
  v2 = qword_90C60;
  if (!qword_90C60)
  {
    type metadata accessor for FileAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EB48()
{
  v2 = qword_90C68;
  if (!qword_90C68)
  {
    type metadata accessor for FileAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EBE0()
{
  v2 = qword_90C70;
  if (!qword_90C70)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EC78()
{
  v2 = qword_90C78;
  if (!qword_90C78)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_ED10()
{
  v2 = qword_90C80;
  if (!qword_90C80)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EDA8()
{
  v2 = qword_90C88;
  if (!qword_90C88)
  {
    type metadata accessor for FileAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EE28()
{
  v2 = qword_90C90;
  if (!qword_90C90)
  {
    type metadata accessor for FileAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EEA8()
{
  v2 = qword_90C98;
  if (!qword_90C98)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EF28()
{
  v2 = qword_90CA0;
  if (!qword_90CA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EFA0()
{
  v2 = qword_90CA8;
  if (!qword_90CA8)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_F020()
{
  v2 = qword_90CB0;
  if (!qword_90CB0)
  {
    type metadata accessor for FileAttributeKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_F0A0()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  sub_7D184();
  v1[5] = sub_7D174();
  v2 = sub_7D154();

  return _swift_task_switch(sub_F154, v2);
}

uint64_t sub_F154()
{
  *(v0 + 16) = v0;
  v1 = sub_12244();
  sub_14500(v1);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_F208()
{
  v9 = sub_F2D4();
  v1 = sub_FA28(v9, v0);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  sub_14314(v1);
  sub_143B8(v6);
  sub_1445C(v7);
  sub_14500(v8);
}

uint64_t sub_F2D4()
{
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v35 = 0;
  v36 = 0;
  memset(__b, 0, sizeof(__b));
  v45 = v0;
  type metadata accessor for CTFontDescriptor(0);
  v44 = sub_7D714();
  v43 = sub_145A4();
  v26 = [objc_opt_self() familyNames];
  v27 = sub_7D0A4();
  v42 = v27;

  v40 = v27;
  sub_1A88(&qword_90CB8, &qword_80B00);
  sub_127A8();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90CC8, &qword_7EBF8);
    sub_7D5D4();
    v24 = v38;
    v25 = v39;
    if (!v39)
    {
      break;
    }

    v35 = v38;
    v36 = v39;
    sub_145A4();

    v28[0] = v24;
    v28[1] = v25;
    sub_7CE04();
    sub_1F58(v28);
    v18 = v28[2];
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    if (v29)
    {

      __b[0] = v18;
      __b[1] = v19;
      LOBYTE(__b[2]) = v20 & 1;
      __b[3] = v21;
      __b[4] = v22;
      __b[5] = v23;

      LOBYTE(__b[2]) = 1;

      sub_1A88(&qword_90CF0, &qword_7EC10);
      sub_7CE14();
      sub_128B8(__b);
    }

    else
    {

      v7 = sub_1A88(&qword_90C30, &qword_7E880);
      v8 = sub_7D714();
      v6 = v1;
      kCTFontFamilyNameAttribute;
      *v6 = kCTFontFamilyNameAttribute;

      *(v6 + 32) = &type metadata for String;
      *(v6 + 8) = v24;
      *(v6 + 16) = v25;
      kCTFontDownloadedAttribute;
      *(v6 + 40) = kCTFontDownloadedAttribute;
      *(v6 + 72) = &type metadata for Bool;
      *(v6 + 48) = 0;
      kCTFontDownloadableAttribute;
      *(v6 + 80) = kCTFontDownloadableAttribute;
      *(v6 + 112) = &type metadata for Bool;
      *(v6 + 88) = 0;
      sub_71DDC(v8, v7);
      type metadata accessor for CFString(0);
      sub_B438();
      sub_7CDB4();
      isa = sub_7CD84().super.isa;
      v16 = CTFontDescriptorCreateWithAttributes(isa);

      v16;
      v16;
      v14 = sub_1A88(&qword_90CE0, &qword_7EC08);
      v13 = sub_7D714();
      v12 = v2;
      v10 = kCTFontUserInstalledAttribute;
      kCTFontUserInstalledAttribute;
      *v12 = v10;
      v11 = sub_61724();

      *(v12 + 8) = (v11 ^ 1) & 1;
      sub_71DDC(v13, v14);
      sub_7CDB4();
      v15 = sub_7CD84().super.isa;
      CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v16, v15);

      CopyWithAttributes;

      sub_1A88(&qword_90CE8, &unk_80F50);
      sub_7D0F4();
    }
  }

  sub_B2C0(v41);
  v4 = v44;

  v5 = sub_10148(v4);

  v37 = sub_7CDD4();
  sub_1A88(&qword_90CD0, &qword_7EC00);
  sub_12830();
  sub_7D134();

  sub_B2C0(&v43);
  sub_B2C0(&v44);
  return v5;
}

uint64_t sub_FA28(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v27[0] = 0;
  v27[1] = 0;
  memset(__b, 0, sizeof(__b));
  v37 = a1;
  v36 = a2;
  v35 = v2;
  type metadata accessor for Family(0);
  sub_7D714();
  sub_128FC();
  v34 = sub_7D214();
  type metadata accessor for FontAssetFamily(0);
  sub_7D714();
  sub_1297C();
  v33 = sub_7D214();
  sub_7D714();
  v32 = sub_7D214();
  type metadata accessor for FontProviderFamily(0);
  sub_7D714();
  sub_129FC();
  v31 = sub_7D214();

  v29 = a1;
  sub_1A88(&qword_90CE8, &unk_80F50);
  sub_12A7C();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90D18, &qword_7EC18);
    sub_7D5D4();
    v16 = v28;
    if (!v28)
    {
      break;
    }

    if (sub_61E48())
    {
      v16;
      sub_6A410(v16);

      v15 = sub_6ACF8();

      if (sub_62C5C(v15, 2))
      {

        sub_1A88(&qword_90AF0, &qword_7E270);
        sub_7D264();
      }

      sub_1A88(&qword_90AF0, &qword_7E270);
      sub_7D264();
    }

    else if (sub_61724())
    {
      v16;
      sub_6A45C(v16);
      sub_1A88(&qword_90D38, &qword_7EC30);
      sub_7D264();
    }

    else if (sub_61AC4())
    {
      v16;
      sub_6A3C4(v16);
      sub_1A88(&qword_90B18, &qword_7E288);
      sub_7D264();
    }
  }

  sub_B2C0(v30);

  v26 = a2;
  sub_1A88(&qword_90D20, &qword_7EC20);
  sub_12B04();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90D30, &qword_7EC28);
    sub_7D5D4();
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v14 = v24;
    if (!v21)
    {
      break;
    }

    __b[0] = v20;
    __b[1] = v21;
    LOBYTE(__b[2]) = v22 & 1;
    __b[3] = v23;
    __b[4] = v24;
    __b[5] = v25;

    v3 = sub_6175C();
    v7 = *v3;
    v8 = v3[1];

    v38._countAndFlagsBits = v7;
    v38._object = v8;
    v9 = sub_7D014(v38);

    if (v9)
    {
    }

    else
    {

      if (v12)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      sub_6A4A8(v10, v11, v13, v14, v6);

      sub_1A88(&qword_90AF0, &qword_7E270);
      sub_7D264();

      if (v12)
      {

        sub_7D264();
      }
    }
  }

  sub_B2C0(v27);
  v5 = v34;

  sub_B2C0(&v31);
  sub_B2C0(&v32);
  sub_B2C0(&v33);
  sub_B2C0(&v34);
  return v5;
}

uint64_t sub_10148(uint64_t a1)
{

  sub_1A88(&qword_90CE8, &unk_80F50);
  sub_13888();
  return sub_7D554();
}

uint64_t sub_101FC()
{
  v2 = [objc_opt_self() cachedDownloadFamiles];
  sub_7CD94();

  sub_1A88(&qword_90B28, &qword_7E290);
  sub_1A88(&qword_90D48, &unk_7EDB0);
  sub_1393C();
  sub_7D024();

  sub_1A88(&qword_90D58, &qword_7EC38);
  sub_139C4();
  v1 = sub_7CDC4();

  return v1;
}

void *sub_103C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v91 = 0;
  v92 = 0;
  v88 = 0;
  memset(__b, 0, sizeof(__b));
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v70 = 0;
  v69[0] = 0;
  v69[1] = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v55 = 0;
  v56 = 0;
  v99 = a1;
  v98 = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_13E30(a1, v97);
  if (swift_dynamicCast())
  {
    v48 = v95;
    v49 = v96;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  if (v49)
  {
    v91 = v48;
    v92 = v49;
    sub_13E9C(a2, v90);
    sub_1A88(&qword_90B28, &qword_7E290);
    v3 = swift_dynamicCast();
    if (v3)
    {
      v47 = v89[8];
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      v88 = v47;
      v45 = *sub_6175C();

      v46 = sub_7D014(v45);

      if (v46)
      {
        memset(v53, 0, 64);

        memcpy(__dst, v53, sizeof(__dst));
      }

      else
      {

        v40 = sub_4754();
        v41 = sub_617BC();
        v42 = v4;
        v5 = sub_617E8();
        sub_6180C(v48, v49, v40 & 1, v41, v42, v5, v100);
        v43 = v100[16];
        v44 = v100[16];
        memcpy(__b, v100, sizeof(__b));
        v6 = sub_61828();
        sub_13F00(v6, v84);
        sub_7D6B4();
        sub_7CE04();
        if (v85[3])
        {
          sub_1A88(&qword_90CB8, &qword_80B00);
          if (swift_dynamicCast())
          {
            v38 = v53[8];
          }

          else
          {
            v38 = 0;
          }

          sub_BAE4(v83);
          sub_1F58(v84);
          v39 = v38;
        }

        else
        {
          sub_BAE4(v83);
          sub_1F58(v84);
          sub_B828(v85);
          v39 = 0;
        }

        v82 = v39;
        if (v39)
        {
          v86 = v82;
        }

        else
        {
          v86 = sub_7D714();
        }

        v30 = v86;
        v81 = v86;

        __b[5] = v30;

        v31 = objc_opt_self();
        v29 = sub_7D714();
        v28 = v7;
        v8 = sub_61888();
        sub_13F00(v8, v28);
        sub_71DDC(v29, &type metadata for String);
        sub_7D0C4();

        isa = sub_7D094().super.isa;

        sub_7BD14();
        v32 = sub_7D094().super.isa;

        v34 = [v31 preferredLocalizationsFromArray:isa forPreferences:v32];

        v80 = sub_7D0A4();
        v36 = sub_7D714();
        v35 = v9;
        v10 = sub_61888();
        sub_13F00(v10, v35);
        sub_71DDC(v36, &type metadata for String);
        v37 = sub_7D124();

        if (v37)
        {
          memset(v54, 0, 64);

          sub_128B8(__b);

          memcpy(__dst, v54, sizeof(__dst));
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v11 = sub_618E8();
          sub_13F00(v11, v76);
          sub_7D6B4();
          sub_7CE04();
          if (v77[3])
          {
            sub_1A88(&qword_90DB8, &qword_7EC88);
            if (swift_dynamicCast())
            {
              v26 = v54[8];
            }

            else
            {
              v26 = 0;
            }

            sub_BAE4(v75);
            sub_1F58(v76);
            v27 = v26;
          }

          else
          {
            sub_BAE4(v75);
            sub_1F58(v76);
            sub_B828(v77);
            v27 = 0;
          }

          if (v27)
          {
            v70 = v27;
            v68 = sub_7BD14();
            sub_1A88(&qword_90CB8, &qword_80B00);
            sub_127A8();
            sub_7D354();
            while (1)
            {
              sub_1A88(&qword_90CC8, &qword_7EBF8);
              sub_7D5D4();
              if (!v67)
              {
                sub_B2C0(v69);

                goto LABEL_44;
              }

              v64 = v66;
              v65 = v67;

              v20 = sub_7CF04();
              v21 = CTCopyLanguageIdentifierNormalizedForLocalizedNames();

              v22 = sub_7CF14();
              v23 = v12;
              v62 = v22;
              v63 = v12;

              v59[0] = v22;
              v59[1] = v23;
              sub_7CE04();
              sub_1F58(v59);
              v24 = v60;
              v25 = v61;
              if (v61)
              {
                break;
              }
            }

            v55 = v60;
            v56 = v61;

            __b[3] = v24;
            __b[4] = v25;

            v17 = __b[0];
            v18 = __b[1];

            v19 = __b[5];

            v57[0] = v48;
            v57[1] = v49;
            v57[2] = v17;
            v57[3] = v18;
            LOBYTE(v57[4]) = v44;
            v57[5] = v24;
            v57[6] = v25;
            v57[7] = v19;
            memcpy(v58, v57, sizeof(v58));

            sub_B2C0(v69);

            sub_128B8(__b);

            memcpy(__dst, v58, sizeof(__dst));
          }

          else
          {
LABEL_44:
            v73 = 0;
            v74 = 0;

            __b[3] = v48;
            __b[4] = v49;

            v14 = __b[0];
            v15 = __b[1];

            v16 = __b[5];

            v71[0] = v48;
            v71[1] = v49;
            v71[2] = v14;
            v71[3] = v15;
            LOBYTE(v71[4]) = v43;
            v71[5] = v48;
            v71[6] = v49;
            v71[7] = v16;
            memcpy(v72, v71, sizeof(v72));

            sub_128B8(__b);

            memcpy(__dst, v72, sizeof(__dst));
          }
        }
      }
    }

    else
    {
      memset(v89, 0, 64);

      memcpy(__dst, v89, sizeof(__dst));
    }
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    memcpy(__dst, __src, sizeof(__dst));
  }

  return memcpy(a3, __dst, 0x40uLL);
}

uint64_t sub_11118()
{
  v1[17] = v0;
  v1[9] = v1;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  sub_1A88(&qword_90AD0, &qword_7E230);
  v1[18] = swift_task_alloc();
  v1[10] = v0;
  sub_7D184();
  v1[19] = sub_7D174();
  v4 = sub_7D154();
  v1[20] = v4;
  v1[21] = v2;

  return _swift_task_switch(sub_11230, v4);
}

uint64_t sub_11230()
{
  v10 = v0[18];
  v6 = v0[17];
  v0[9] = v0;
  v5 = (v6 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies);
  swift_beginAccess();
  v7 = *v5;
  v0[22] = *v5;

  swift_endAccess();
  v0[11] = v7;
  v9 = sub_7CF84("Create families", 0xFuLL, 1);
  v11 = v1;
  sub_7D1B4();
  v2 = sub_7D1E4();
  (*(*(v2 - 8) + 56))(v10, 0, 1);

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v7;
  v14 = sub_1A88(&qword_90D68, &qword_7EC58);
  v13 = sub_5370(v9, v11, v10, &unk_7EC50, v8, v14);
  v0[23] = v13;
  sub_5900(v10);

  v0[12] = v13;
  v3 = swift_task_alloc();
  *(v12 + 192) = v3;
  *v3 = *(v12 + 72);
  v3[1] = sub_11474;

  return Task<>.value.getter(v12 + 16, v13, v14);
}

uint64_t sub_11474()
{
  v3 = *v0;
  *(*v0 + 72) = *v0;

  v1 = *(v3 + 160);

  return _swift_task_switch(sub_115B4, v1);
}

uint64_t sub_115B4()
{
  v0[9] = v0;
  v1 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v0[13] = v1;
  v0[14] = v4;
  v0[15] = v5;
  v0[16] = v6;
  sub_14314(v1);
  sub_143B8(v4);
  sub_1445C(v5);
  sub_14500(v6);

  v2 = *(v0[9] + 8);

  return v2();
}

uint64_t sub_1170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[16] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[11] = 0;
  v5[12] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_11780, 0);
}

uint64_t sub_11780()
{
  v0[2] = v0;
  v1 = sub_12244();
  v6 = v2;
  v0[19] = v1;
  v0[20] = v2;
  v0[5] = v1;
  v0[6] = v2;
  sub_1A88(&qword_90D90, &qword_7EC70);
  sub_7D714();
  v0[21] = type metadata accessor for CTFontDescriptor(0);
  v0[7] = sub_7CDB4();
  v3 = sub_12B8C(v6);
  v0[22] = v3;
  v0[8] = v3;
  v0[23] = sub_7D184();
  v0[24] = sub_7D174();
  v4 = sub_7D154();

  return _swift_task_switch(sub_118D8, v4);
}

uint64_t sub_118D8()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[25] = sub_10148(v1);

  return _swift_task_switch(sub_11968, 0);
}

uint64_t sub_11968(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 208) = sub_7D174();
  v2 = sub_7D154();

  return _swift_task_switch(sub_11A00, v2);
}

uint64_t sub_11A00()
{
  v1 = v0[25];
  v2 = v0[20];
  v0[2] = v0;
  sub_12D28(v1, (v0 + 7), v2);

  return _swift_task_switch(sub_11A9C, 0);
}

uint64_t sub_11A9C()
{
  v0[2] = v0;
  v1 = sub_12F80();
  v0[27] = v1;
  v0[9] = v1;
  v0[28] = sub_7D174();
  v2 = sub_7D154();

  return _swift_task_switch(sub_11B50, v2);
}

uint64_t sub_11B50()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[29] = sub_10148(v1);

  return _swift_task_switch(sub_11BE0, 0);
}

uint64_t sub_11BE0(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 240) = sub_7D174();
  v2 = sub_7D154();

  return _swift_task_switch(sub_11C78, v2);
}

uint64_t sub_11C78()
{
  v1 = v0[29];
  v2 = v0[20];
  v0[2] = v0;
  sub_12D28(v1, (v0 + 7), v2);

  return _swift_task_switch(sub_11D14, 0);
}

uint64_t sub_11D14()
{
  v0[2] = v0;
  v0[13] = sub_7CDD4();
  sub_1A88(&qword_90D98, &qword_7EC78);
  sub_13CBC();
  v0[31] = sub_7D134();
  v0[32] = sub_7D714();
  v0[33] = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_11E20, v1);
}

uint64_t sub_11E20()
{
  v1 = v0[32];
  v2 = v0[31];
  v0[2] = v0;
  v0[34] = sub_FA28(v2, v1);
  v0[35] = v3;
  v0[36] = v4;
  v0[37] = v5;

  return _swift_task_switch(sub_11ED8, 0);
}

uint64_t sub_11ED8()
{
  v9 = v0[36];
  v11 = v0[35];
  v8 = v0[34];
  v10 = v0[18];
  v0[2] = v0;

  v0[10] = v8;

  v0[11] = v11;

  v0[12] = v9;

  *(swift_task_alloc() + 16) = v10;
  type metadata accessor for FontAssetFamily(0);
  sub_1297C();
  v12 = sub_7D254();
  v4 = v7[36];
  v3 = v7[34];
  v6 = v7[19];
  v5 = v7[16];

  v7[11] = v12;

  v7[14] = sub_7CDD4();
  sub_1A88(&qword_90DA8, &qword_7EC80);
  sub_13D70();
  v7[15] = sub_7D2C4();
  sub_1A88(&qword_90AF0, &qword_7E270);
  sub_B1C4();
  sub_7D2B4();
  *v5 = v3;
  sub_13DF8(v7 + 11, v5 + 1);
  v5[2] = v4;

  v5[3] = v6;
  sub_B2C0(v7 + 12);
  sub_B2C0(v7 + 11);
  sub_B2C0(v7 + 10);

  sub_B2C0(v7 + 7);

  v1 = *(v7[2] + 8);

  return v1();
}

uint64_t sub_12244()
{
  v25[1] = 0;
  v22 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v18 = 0;
  type metadata accessor for FontProviderFamily(0);
  sub_7D714();
  sub_129FC();
  v25[0] = sub_7D214();
  sub_7D714();
  v24 = sub_7D214();
  v11 = sub_1A88(&qword_90CE0, &qword_7EC08);
  v12 = sub_7D714();
  v10 = v0;
  v9 = kCTFontUserInstalledAttribute;
  kCTFontUserInstalledAttribute;
  *v10 = v9;
  *(v10 + 8) = 1;
  kCTFontDownloadableAttribute;
  *(v10 + 16) = kCTFontDownloadableAttribute;
  *(v10 + 24) = 0;
  kCTFontDownloadedAttribute;
  *(v10 + 32) = kCTFontDownloadedAttribute;
  *(v10 + 40) = 0;
  sub_71DDC(v12, v11);
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v14 = CTFontDescriptorCreateWithAttributes(isa);

  v23 = v14;
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v14, 0);
  if (MatchingFontDescriptors)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      sub_1A88(&qword_90CE8, &unk_80F50);
      v8;
      sub_13B80();
      sub_7D774();

      if (v16)
      {
        v7 = v16;
LABEL_7:
        v6 = v7;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v7 = 0;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:
  if (v6)
  {
    v22 = v6;

    v20 = v6;
    sub_1A88(&qword_90CE8, &unk_80F50);
    sub_12A7C();
    sub_7D354();
    while (1)
    {
      sub_1A88(&qword_90D18, &qword_7EC18);
      sub_7D5D4();
      v5 = v19;
      if (!v19)
      {
        break;
      }

      v18 = v19;

      v17[0] = sub_61948();
      v17[1] = v1;
      v4 = sub_7D2A4();
      sub_1F58(v17);

      if (v4 & 1) == 0 && (sub_61724() & 1) == 0 && (sub_61AC4())
      {
        sub_61948();
        sub_1A88(&qword_90B40, &qword_7E2A0);
        sub_7D264();

        v5;
        sub_6A3C4(v5);
        sub_1A88(&qword_90B18, &qword_7E288);
        sub_7D264();
      }
    }

    sub_B2C0(v21);
  }

  v3 = v25[0];

  sub_B2C0(&v24);
  sub_B2C0(v25);
  return v3;
}

unint64_t sub_127A8()
{
  v2 = qword_90CC0;
  if (!qword_90CC0)
  {
    sub_B24C(&qword_90CB8, &qword_80B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12830()
{
  v2 = qword_90CD8;
  if (!qword_90CD8)
  {
    sub_B24C(&qword_90CD0, &qword_7EC00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CD8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_128B8(void *a1)
{
}

unint64_t sub_128FC()
{
  v2 = qword_90CF8;
  if (!qword_90CF8)
  {
    type metadata accessor for Family(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1297C()
{
  v2 = qword_90D00;
  if (!qword_90D00)
  {
    type metadata accessor for FontAssetFamily(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_129FC()
{
  v2 = qword_90D08;
  if (!qword_90D08)
  {
    type metadata accessor for FontProviderFamily(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12A7C()
{
  v2 = qword_90D10;
  if (!qword_90D10)
  {
    sub_B24C(&qword_90CE8, &unk_80F50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12B04()
{
  v2 = qword_90D28;
  if (!qword_90D28)
  {
    sub_B24C(&qword_90D20, &qword_7EC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_12B8C(uint64_t a1)
{
  v9[2] = 0;
  v9[3] = a1;
  v7 = [objc_opt_self() familyNames];
  v9[1] = sub_7D0A4();

  v8 = sub_1A88(&qword_90CB8, &qword_80B00);
  sub_13C34();
  v3 = sub_7D554();

  v9[0] = v3;
  v4 = type metadata accessor for CTFontDescriptor(0);
  v1 = sub_127A8();
  v6 = sub_7FFC(sub_1339C, 0, v8, v4, &type metadata for Never, v1, &protocol witness table for Never, v5);
  sub_B2C0(v9);
  return v6;
}

void sub_12D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v9 = 0;
  v13[4] = a1;
  v13[3] = a2;
  v13[2] = a3;

  v13[0] = a3;

  v11 = a1;
  sub_1A88(&qword_90CE8, &unk_80F50);
  sub_12A7C();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90D18, &qword_7EC18);
    sub_7D5D4();
    v5 = v10;
    if (!v10)
    {
      break;
    }

    v9 = v10;

    v8[0] = sub_61948();
    v8[1] = v3;
    v4 = sub_7D2A4();
    sub_1F58(v8);

    if ((v4 & 1) == 0)
    {
      sub_61948();
      v5;
      sub_1A88(&qword_90D80, &qword_7EC60);
      sub_7CE14();
      sub_61948();
      sub_1A88(&qword_90B40, &qword_7E2A0);
      sub_7D264();
    }
  }

  sub_B2C0(v12);
  sub_B2C0(v13);
}

uint64_t sub_12F80()
{
  v14 = 0;
  v6 = sub_1A88(&qword_90CE0, &qword_7EC08);
  v7 = sub_7D714();
  v5 = v0;
  kCTFontDownloadableAttribute;
  *v5 = kCTFontDownloadableAttribute;
  *(v5 + 8) = 1;
  sub_71DDC(v7, v6);
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v9 = CTFontDescriptorCreateWithAttributes(isa);

  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v9, 0);

  if (MatchingFontDescriptors)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      sub_1A88(&qword_90CE8, &unk_80F50);
      v4;
      sub_13B80();
      sub_7D774();

      if (v11)
      {
        v3 = v11;
LABEL_7:
        v2 = v3;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = 0;
    goto LABEL_7;
  }

  v2 = 0;
LABEL_8:
  v12 = v2;
  if (v2)
  {
    return v12;
  }

  type metadata accessor for CTFontDescriptor(0);
  return sub_7D714();
}

BOOL sub_1320C(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v10 = 0;
  v11 = *a1;
  v4 = v11;
  v10 = a2;

  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  swift_endAccess();

  v8[0] = v5;
  v8[1] = v6;
  type metadata accessor for FontAssetFamily(0);
  sub_7CE04();
  sub_1F58(v8);
  v7 = v9;
  v3 = v9 == 0;
  sub_B068(&v7);
  return v3;
}

CTFontDescriptorRef sub_1339C@<X0>(const __CFString **a1@<X0>, CTFontDescriptorRef *a2@<X8>)
{
  v5 = *a1;
  v7 = a1[1];
  v8 = sub_1A88(&qword_90D88, &qword_7EC68);
  v4 = sub_7D714();
  v6 = v2;
  kCTFontFamilyNameAttribute;
  *v6 = kCTFontFamilyNameAttribute;

  v6[1] = v5;
  v6[2] = v7;
  sub_71DDC(v4, v8);
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v10 = CTFontDescriptorCreateWithAttributes(isa);

  result = v10;
  *a2 = v10;
  return result;
}

uint64_t sub_134E0(void **a1)
{
  v26 = 0;
  v25 = 0;
  v22 = *a1;
  v26 = *a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (CTFontDescriptorIsVisible())
  {
    v20 = sub_61C04();
    v22;
    if (v20)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_61724();
    }

    if (v19)
    {
      v21 = 1;
    }

    else
    {
      v18 = sub_61D44();
      if (v18)
      {
        v25 = v18;
        v24[1] = v18;
        sub_1A88(&qword_90CB8, &qword_80B00);
        sub_127A8();
        v17 = sub_7D344();

        if (v17)
        {
          v16 = 1;
        }

        else
        {
          v8 = sub_7D714();
          v7 = v1;
          v2 = sub_61888();
          sub_13F00(v2, v7);
          sub_71DDC(v8, &type metadata for String);
          v24[0] = v3;
          v11 = objc_opt_self();
          v10 = sub_7D714();
          v9 = v4;
          v5 = sub_61888();
          sub_13F00(v5, v9);
          sub_71DDC(v10, &type metadata for String);
          sub_7D0C4();

          isa = sub_7D094().super.isa;

          sub_7BD14();
          v12 = sub_7D094().super.isa;

          v14 = [v11 preferredLocalizationsFromArray:isa forPreferences:v12];

          v23 = sub_7D0A4();
          v15 = sub_7D124() ^ 1;
          sub_B2C0(&v23);

          sub_B2C0(v24);
          v16 = v15;
        }

        v21 = v16;
      }

      else
      {
        v21 = 1;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t sub_13888()
{
  v2 = qword_90D40;
  if (!qword_90D40)
  {
    sub_B24C(&qword_90CE8, &unk_80F50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1393C()
{
  v2 = qword_90D50;
  if (!qword_90D50)
  {
    sub_B24C(&qword_90B28, &qword_7E290);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_139C4()
{
  v2 = qword_90D60;
  if (!qword_90D60)
  {
    sub_B24C(&qword_90D58, &qword_7EC38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_13A4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_13A9C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_1170C(a1, v6, v7, v8, v9);
}

unint64_t sub_13B80()
{
  v2 = qword_90D70;
  if (!qword_90D70)
  {
    sub_B24C(&qword_90CE8, &unk_80F50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13C34()
{
  v2 = qword_90D78;
  if (!qword_90D78)
  {
    sub_B24C(&qword_90CB8, &qword_80B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13CBC()
{
  v2 = qword_90DA0;
  if (!qword_90DA0)
  {
    sub_B24C(&qword_90D98, &qword_7EC78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13D70()
{
  v2 = qword_90DB0;
  if (!qword_90DB0)
  {
    sub_B24C(&qword_90DA8, &qword_7EC80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90DB0);
    return WitnessTable;
  }

  return v2;
}

void *sub_13DF8(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_13E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_13E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_13F00(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_13F40()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_13FDC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

void (*sub_14078(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_17EB8(0x40uLL, 47380);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_7BE04();
  return sub_14158;
}

void sub_14158(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

void (*sub_14234(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_17EB8(0x40uLL, 18817);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_7BE04();
  return sub_14158;
}

uint64_t sub_14314(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_143B8(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_1445C(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_14500(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_145A4()
{
  v12 = 0;
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  v11 = v8;
  sub_B2C0(&v11);
  if (!v8)
  {
    v5 = sub_101FC();
    v4 = (v6 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  v9 = v3;
  if (v3)
  {
    return v9;
  }

  sub_1A88(&qword_90D48, &unk_7EDB0);
  sub_7D714();
  return sub_7CDB4();
}

uint64_t sub_1477C()
{
  type metadata accessor for FontSettingsModel(0);
  result = sub_147B0();
  qword_94E38 = result;
  return result;
}

uint64_t *sub_147EC()
{
  if (qword_90A28 != -1)
  {
    swift_once();
  }

  return &qword_94E38;
}

uint64_t sub_1484C()
{
  v1 = *sub_147EC();

  return v1;
}

uint64_t sub_1487C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_1A88(&qword_90D38, &qword_7EC30);
  sub_17330(v6, v2, a2);
}

uint64_t sub_148EC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_14988@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_148EC();
}

uint64_t sub_149E4(void *a1, uint64_t *a2)
{
  sub_13DF8(a1, &v4);
  v3 = v4;

  sub_14314(v3);
}

uint64_t sub_14A4C()
{
  swift_beginAccess();
  sub_1A88(&qword_90DE0, &qword_7EDC0);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_14AC8(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_1A88(&qword_90DE8, &unk_7EDC8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_1A88(&qword_90DE0, &qword_7EDC0);
  sub_7BDF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_14C1C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90DE0, &qword_7EDC0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_14CB4(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1A88(&qword_90DE0, &qword_7EDC0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_14E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_1A88(&qword_90AF0, &qword_7E270);
  sub_17330(v6, v2, a2);
}

uint64_t sub_14E70()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_14F0C@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_14E70();
}

uint64_t sub_14F68(void *a1, uint64_t *a2)
{
  sub_13DF8(a1, &v4);
  v3 = v4;

  sub_143B8(v3);
}

uint64_t sub_14FD0()
{
  swift_beginAccess();
  sub_1A88(&qword_90DF0, &qword_7EDD8);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_1504C(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_1A88(&qword_90DF8, &unk_7EDE0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_1A88(&qword_90DF0, &qword_7EDD8);
  sub_7BDF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_151A0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90DF0, &qword_7EDD8);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_15238(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1A88(&qword_90DF0, &qword_7EDD8);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_15384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_1A88(&qword_90B18, &qword_7E288);
  sub_17330(v6, v2, a2);
}

uint64_t sub_153F4@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_13FDC();
}

uint64_t sub_15450(void *a1, uint64_t *a2)
{
  sub_13DF8(a1, &v4);
  v3 = v4;

  sub_14500(v3);
}

uint64_t sub_154B8()
{
  swift_beginAccess();
  sub_1A88(&qword_90E00, &qword_7EDF0);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_15534(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_1A88(&qword_90E08, &unk_7EDF8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_1A88(&qword_90E00, &qword_7EDF0);
  sub_7BDF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_15688@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90E00, &qword_7EDF0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_15720(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1A88(&qword_90E00, &qword_7EDF0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1586C@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_13F40();
}

uint64_t sub_158E0(void *a1, uint64_t *a2)
{
  sub_13DF8(a1, &v4);
  v3 = v4;

  sub_1445C(v3);
}

uint64_t type metadata accessor for FontSettingsModel(uint64_t a1)
{
  v2 = qword_90E40;
  if (!qword_90E40)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_15A64()
{
  swift_beginAccess();
  sub_1A88(&qword_90DF0, &qword_7EDD8);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_15AE0(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_1A88(&qword_90DF8, &unk_7EDE0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_1A88(&qword_90DF0, &qword_7EDD8);
  sub_7BDF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_15C34@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90DF0, &qword_7EDD8);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_15CCC(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1A88(&qword_90DF0, &qword_7EDD8);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_15E18()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_15E78(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_15EE8()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_15F48(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_15FB8()
{
  v60 = &protocol witness table for MainActor;
  v62 = &unk_7EE18;
  v70 = &unk_7EE28;
  v77 = 0;
  v1 = sub_1A88(&qword_90AD0, &qword_7E230);
  v28 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v73 = &v28 - v28;
  v49 = sub_1A88(&qword_90E00, &qword_7EDF0);
  v45 = *(v49 - 8);
  v46 = v49 - 8;
  v29 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = &v28 - v29;
  v53 = sub_1A88(&qword_90DF0, &qword_7EDD8);
  v40 = *(v53 - 8);
  v41 = v53 - 8;
  v30 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v52 = &v28 - v30;
  v38 = sub_1A88(&qword_90DE0, &qword_7EDC0);
  v34 = *(v38 - 8);
  v35 = v38 - 8;
  v31 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v28 - v31;
  v77 = v0;
  v36 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  v58 = 0;
  v32 = type metadata accessor for Family(0);
  v33 = sub_7D714();
  sub_128FC();
  v2 = sub_7D214();
  sub_1487C(v2, v37);
  (*(v34 + 32))(v0 + v36, v37, v38);
  v42 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  v56 = type metadata accessor for FontAssetFamily(v58);
  v39 = sub_7D714();
  v50 = sub_1297C();
  v3 = sub_7D214();
  sub_14E00(v3, v52);
  v55 = *(v40 + 32);
  v54 = v40 + 32;
  v55(v0 + v42, v52, v53);
  v47 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  v43 = type metadata accessor for FontProviderFamily(v58);
  v44 = sub_7D714();
  sub_129FC();
  v4 = sub_7D214();
  sub_15384(v4, v48);
  (*(v45 + 32))(v0 + v47, v48, v49);
  v51 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies;
  sub_7D714();
  v5 = sub_7D214();
  sub_14E00(v5, v52);
  v55(v0 + v51, v52, v53);
  v57 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies;
  sub_1A88(&qword_90E10, &qword_7EE08);
  sub_7D714();
  v6 = sub_7CDB4();
  v7 = v58;
  *(v0 + v57) = v6;
  *(v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies) = v7;
  sub_F208();
  v64 = 1;
  v63 = sub_7CF84("First load of fonts", 0x13uLL, 1);
  v61 = v8;
  v65 = sub_7D1E4();
  v9 = *(v65 - 8);
  v67 = *(v9 + 56);
  v66 = v9 + 56;
  v67(v73, v64);

  sub_7D184();
  v10 = sub_7D174();
  v11 = v76;
  v59 = v10;
  v68 = 40;
  v69 = 7;
  v12 = swift_allocObject();
  v13 = v60;
  v14 = v61;
  v15 = v62;
  v16 = v73;
  v17 = v12;
  v18 = v63;
  v17[2] = v59;
  v17[3] = v13;
  v17[4] = v11;
  v71 = &type metadata for () + 8;
  sub_16928(v18, v14, v16, v15, v17, &type metadata for () + 8);

  v72 = sub_7CF84("CoreText responder", 0x12uLL, v64 & 1);
  v74 = v19;
  sub_16EF4();
  (v67)(v73, 0, v64, v65);

  v20 = swift_allocObject();
  v21 = v70;
  v22 = v71;
  v23 = v73;
  v24 = v74;
  v25 = v20;
  v26 = v72;
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v11;
  v75 = sub_5370(v26, v24, v23, v21, v25, v22);
  sub_5900(v73);

  return v76;
}

uint64_t sub_1666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  v4[4] = sub_7D184();
  v4[5] = sub_7D174();
  v5 = swift_task_alloc();
  *(v7 + 48) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_16744;

  return sub_11118();
}

uint64_t sub_16744()
{
  *(*v0 + 16) = *v0;

  v1 = sub_7D154();

  return _swift_task_switch(sub_1689C, v1);
}

uint64_t sub_1689C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_16928(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_7E870;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_1A88(&qword_90AD0, &qword_7E230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_E19C(v54, v57);
  v58 = sub_7D1E4();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_5900(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_7D1D4();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_7D154();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_7CF54();

    sub_17CB0(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_5900(v54);

    v18 = v16;
  }

  else
  {

    sub_5900(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_16F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 24) = a4;
  v5 = swift_task_alloc();
  *(v7 + 32) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_16FCC;

  return sub_8EC4();
}

uint64_t sub_16FCC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_17100()
{
  v4 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  v1 = sub_1A88(&qword_90DE0, &qword_7EDC0);
  (*(*(v1 - 8) + 8))(v0 + v4);
  v5 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  v7 = sub_1A88(&qword_90DF0, &qword_7EDD8);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v5);
  v6 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  v2 = sub_1A88(&qword_90E00, &qword_7EDF0);
  (*(*(v2 - 8) + 8))(v0 + v6);
  (v8)(v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies, v7);
  sub_B2C0((v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies));
  sub_B2C0((v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies));
  return v9;
}

uint64_t sub_172DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7BDC4();
  *a1 = result;
  return result;
}

uint64_t sub_17330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[1] = a3;
  v8 = a1;
  v9 = a2;
  v10 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(a1);
  v5[2] = v5 - v5[0];
  (*(v6 + 16))(v3);
  sub_7BDD4();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_17420()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_17468(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_1666C(a1, v6, v7, v8);
}

uint64_t sub_17540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_17588(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_16F10(a1, v6, v7, v8);
}

unint64_t sub_1767C(uint64_t a1)
{
  updated = sub_17830(319);
  if (v1 <= 0x3F)
  {
    updated = sub_178D4(319);
    if (v2 <= 0x3F)
    {
      updated = sub_17978(319);
      if (v3 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

unint64_t sub_17830(uint64_t a1)
{
  v5 = qword_90E50;
  if (!qword_90E50)
  {
    sub_B24C(&qword_90D38, &qword_7EC30);
    v4 = sub_7BE34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_90E50);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_178D4(uint64_t a1)
{
  v5 = qword_90E58;
  if (!qword_90E58)
  {
    sub_B24C(&qword_90AF0, &qword_7E270);
    v4 = sub_7BE34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_90E58);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_17978(uint64_t a1)
{
  v5 = qword_90E60;
  if (!qword_90E60)
  {
    sub_B24C(&qword_90B18, &qword_7E288);
    v4 = sub_7BE34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_90E60);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_17A28(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_17B3C;

  return v6(a1);
}

uint64_t sub_17B3C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_17CB0@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_7D5E4();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

void *sub_17EB8(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

void *sub_17F0C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = sub_1A88(&qword_90F08, &unk_7EED0);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3[1]);
  v7 = (v3 - v4);
  sub_17FC0(v1, (v3 - v4));
  sub_7BF04();
  return sub_18094(v7);
}

void *sub_17FC0(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_90F10, &qword_7FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7CD24();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_18094(void *a1)
{
  sub_1A88(&qword_90F10, &qword_7FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7CD24();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_18150(void *a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_1A88(&qword_90F08, &unk_7EED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v4 = (v3 - v3[0]);
  sub_17FC0(v1, (v3 - v3[0]));
  sub_181F4(v4, v3[1]);
  return sub_18094(v5);
}

void *sub_181F4(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_18094(a2);
    v4 = sub_1A88(&qword_90F10, &qword_7FFA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7CD24();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_182E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v9 = sub_1A88(&qword_90F18, &qword_7EEE0);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = (&v5 - v7);
  sub_183A4((v3 + *(v2 + 36)), (&v5 - v7));
  sub_7BF04();
  return sub_18478(v10);
}

void *sub_183A4(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_90F20, &qword_7EEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BD84();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_18478(void *a1)
{
  sub_1A88(&qword_90F20, &qword_7EEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BD84();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_18538(void *a1, uint64_t a2)
{
  v8 = a1;
  v6 = a2;
  v5 = (*(*(sub_1A88(&qword_90F18, &qword_7EEE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = (&v5 - v5);
  sub_183A4(v3, (&v5 - v5));
  sub_185E4(v7, (v2 + *(v6 + 36)));
  return sub_18478(v8);
}

void *sub_185E4(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_18478(a2);
    v4 = sub_1A88(&qword_90F20, &qword_7EEE8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7BD84();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_186E8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 44));

  return v3;
}

uint64_t sub_18728(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(a3 + 44));
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_18784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v91 = a1;
  v49 = &protocol conformance descriptor for NavigationLink<A, B>;
  v50 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v111 = 0;
  v108 = 0;
  v52 = *(a1 + 16);
  v121 = v52;
  v51 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v53 = &v25 - v51;
  v54 = *(v2 + 24);
  v117 = &type metadata for Text;
  v118 = v52;
  v119 = &protocol witness table for Text;
  v120 = v54;
  v87 = 0;
  v85 = sub_7C0A4();
  v55 = *(v85 - 8);
  v56 = v85 - 8;
  v57 = (v55[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v58 = &v25 - v57;
  v59 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v60 = &v25 - v59;
  v61 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v62 = &v25 - v61;
  v116 = &v25 - v61;
  v63 = sub_7CEF4();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v63);
  v67 = &v25 - v66;
  v86 = sub_1A88(&qword_90F28, &unk_7EEF0);
  v68 = *(v86 - 8);
  v69 = v86 - 8;
  v70 = (v68[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v71 = &v25 - v70;
  v72 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v70);
  v73 = &v25 - v72;
  v74 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v25 - v72);
  v75 = &v25 - v74;
  v115 = &v25 - v74;
  v76 = sub_1A88(&qword_90F08, &unk_7EED0);
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v78 = (&v25 - v77);
  v79 = sub_7CD24();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v83 = &v25 - v82;
  v98 = sub_1A88(&qword_90F18, &qword_7EEE0);
  v84 = (*(*(v98 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v9 = (&v25 - v84);
  v99 = (&v25 - v84);
  v104 = sub_7BD84();
  v100 = *(v104 - 8);
  v101 = v104 - 8;
  v88 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v102 = &v25 - v88;
  v89 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v103 = &v25 - v89;
  v92 = sub_7C3A4();
  v94 = *(*(v92 - 8) + 64);
  v93 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v95 = &v25 - v93;
  v96 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v97 = &v25 - v96;
  v114 = &v25 - v96;
  v113 = v13;
  sub_183A4((v13 + *(v14 + 36)), v9);
  sub_7BF04();
  sub_18478(v99);
  (*(v100 + 104))(v102, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v104);
  sub_19824();
  v107 = sub_7D724();
  v106 = *(v100 + 8);
  v105 = v100 + 8;
  v106(v102, v104);
  v106(v103, v104);
  if (v107 & 1) != 0 && (sub_17FC0(v90, v78), sub_7BF04(), sub_18094(v78), v47 = sub_7CD14(), (*(v80 + 8))(v83, v79), (v47))
  {
    sub_79024(*(v90 + *(v91 + 40)), v67);
    v39 = sub_61F88(v67);
    v40 = v15;
    (*(v64 + 8))(v67, v63);
    v43 = v110;
    v110[0] = v39;
    v110[1] = v40;
    v16 = *(v90 + *(v91 + 40));
    v41 = &v109;
    v109 = v16;
    v42 = sub_198A4();
    sub_19E54();
    sub_7C094();
    v44 = sub_19B70();
    sub_1991C(v73, v86, v75);
    v45 = v68[1];
    v46 = v68 + 1;
    v45(v73, v86);
    v108 = v73;
    v38 = v68[2];
    v37 = v68 + 2;
    v38(v71, v75, v86);
    sub_1991C(v71, v86, v73);
    v45(v71, v86);
    v38(v71, v73, v86);
    WitnessTable = swift_getWitnessTable();
    sub_19980(v71, v86, v85, v44, WitnessTable, v95);
    v45(v71, v86);
    v18 = sub_7C384();
    sub_19BF8(v95, v97, v85, v18);
    v45(v73, v86);
    v45(v75, v86);
  }

  else
  {
    sub_79024(*(v90 + *(v91 + 40)), v67);
    v29 = sub_61F88(v67);
    v30 = v19;
    (*(v64 + 8))(v67, v63);
    v32 = v112;
    v112[0] = v29;
    v112[1] = v30;
    v20 = v90 + *(v91 + 44);
    v31 = *v20;
    v33 = *(v20 + 1);

    v31(*(v90 + *(v91 + 40)));
    sub_198A4();
    sub_7C084();

    v34 = swift_getWitnessTable();
    sub_1991C(v60, v85, v62);
    v35 = v55[1];
    v36 = v55 + 1;
    v35(v60, v85);
    v111 = v60;
    v28 = v55[2];
    v27 = v55 + 2;
    v28(v58, v62, v85);
    sub_1991C(v58, v85, v60);
    v35(v58, v85);
    v28(v58, v60, v85);
    v21 = sub_19B70();
    sub_19A78(v58, v86, v85, v21, v34, v95);
    v35(v58, v85);
    v22 = sub_7C384();
    sub_19BF8(v95, v97, v85, v22);
    v35(v60, v85);
    v35(v62, v85);
  }

  v26 = sub_7C384();
  sub_19CD0(v97, v95, v85, v26);
  v25 = sub_19B70();
  v23 = swift_getWitnessTable();
  v110[2] = v25;
  v110[3] = v23;
  swift_getWitnessTable();
  sub_1991C(v95, v92, v48);
  sub_19DA8(v95, v85, v26);
  return sub_19DA8(v97, v85, v26);
}

unint64_t sub_19824()
{
  v2 = qword_90F30;
  if (!qword_90F30)
  {
    sub_7BD84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_198A4()
{
  v2 = qword_90F38;
  if (!qword_90F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90F38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_7C384();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_7C394();
}

uint64_t sub_19A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_7C384();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_7C394();
}

unint64_t sub_19B70()
{
  v2 = qword_90F40;
  if (!qword_90F40)
  {
    sub_B24C(&qword_90F28, &unk_7EEF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90F40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 32))(a2, a1);
  }

  else
  {
    (*(*(*(a4 + 16) - 8) + 32))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_19CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 16))(a2, a1);
  }

  else
  {
    (*(*(*(a4 + 16) - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_19DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_19E54()
{
  v2 = qword_90F48[0];
  if (!qword_90F48[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_90F48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19ECC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getKeyPath();
  sub_7BF24();
  v12 = type metadata accessor for AdaptiveNavigationLink(0, a4, a5, v6);
  swift_getKeyPath();
  sub_7BF24();
  result = v12;
  *(a6 + *(v12 + 40)) = a1;
  v8 = (a6 + *(v12 + 44));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

unint64_t sub_1A014(uint64_t a1)
{
  v5 = sub_1A50C(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1A5A8(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1A644();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_1A150(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_1A88(&qword_90F08, &unk_7EED0);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = sub_1A88(&qword_90F18, &qword_7EEE0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 36), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 44)) < 0x100000000uLL)
      {
        v4 = *(a1 + *(a3 + 44));
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_1A340(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_1A88(&qword_90F08, &unk_7EED0);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = sub_1A88(&qword_90F18, &qword_7EEE0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 36), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 44)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A50C(uint64_t a1)
{
  v5 = qword_90FD0;
  if (!qword_90FD0)
  {
    sub_7CD24();
    v4 = sub_7BF14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_90FD0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1A5A8(uint64_t a1)
{
  v5 = qword_90FD8;
  if (!qword_90FD8)
  {
    sub_7BD84();
    v4 = sub_7BF14();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_90FD8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1A644()
{
  v2 = qword_90FE0;
  if (!qword_90FE0)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_90FE0);
    return FunctionTypeMetadata0;
  }

  return v2;
}

uint64_t sub_1A6B0()
{
  sub_B24C(&qword_90F28, &unk_7EEF0);
  sub_7C0A4();
  sub_7C3A4();
  sub_19B70();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_7CD24();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_7C244();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_7C214();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_1A9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_7BD84();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v4 - v5;
  v15 = sub_7C244();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_7C1E4();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_1AB94(uint64_t a1, uint64_t a2)
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v3 = sub_7C184();

  return v3;
}

unint64_t sub_1AC10()
{
  v2 = qword_90FE8;
  if (!qword_90FE8)
  {
    type metadata accessor for FontSettingsModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90FE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC90(uint64_t a1, uint64_t a2)
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v3 = sub_7C194();

  return v3;
}

uint64_t sub_1AD3C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1AD84(uint64_t a1)
{
  type metadata accessor for Family(0);
  sub_1ADCC();
  return sub_7C0D4();
}

unint64_t sub_1ADCC()
{
  v2 = qword_90FF0;
  if (!qword_90FF0)
  {
    type metadata accessor for Family(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90FF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a4;
}

uint64_t sub_1AEAC(uint64_t a1)
{

  *(v1 + 24) = a1;
}

uint64_t sub_1AF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for Family(0);
  sub_1ADCC();
  v5 = sub_7C0E4();

  return v5;
}

uint64_t sub_1AFBC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1B008(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v7 = sub_7C1A4();
  v5 = v1;

  *&v8 = v7;
  *(&v8 + 1) = v5;

  *&v6 = sub_1AD84(a1);
  *(&v6 + 1) = v2;

  v9 = v6;

  sub_1B0CC(&v8);
  return v7;
}

uint64_t sub_1B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v28 = a1;
  v23 = a2;
  v24 = a3;
  v29 = a4;
  v19 = sub_1CAB4;
  v25 = sub_1E244;
  v35 = &opaque type descriptor for <<opaque return type of View.swipeActions<A>(edge:allowsFullSwipe:content:)>>;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v20 = sub_1A88(&qword_90FF8, &qword_7F020);
  v13 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v22 = &v13 - v13;
  v31 = sub_1A88(&qword_91000, &qword_7F028);
  v14 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = &v13 - v14;
  v42 = sub_1A88(&qword_91008, &qword_7F030);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v15 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v40 = &v13 - v15;
  v16 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v41 = &v13 - v16;
  v61 = &v13 - v16;
  *&v59 = v7;
  *(&v59 + 1) = v8;
  *&v60 = v9;
  *(&v60 + 1) = v10;

  v17 = &v50;
  v51 = v28;
  v52 = v23;
  v53 = v24;
  v54 = v29;
  v18 = sub_1A88(&qword_91010, &qword_7F038);
  sub_1CAC8();
  sub_7CA14();

  v21 = sub_1D5BC();
  v11 = sub_1D5A4();
  v27 = 1;
  sub_1D654(v11 & 1, v20, v21);
  sub_1D6D4(v22);

  v26 = &v45;
  v46 = v28;
  v47 = v23;
  v48 = v24;
  v49 = v29;
  v32 = sub_1A88(&qword_910C8, &qword_7F098);
  v33 = sub_1E708();
  v34 = sub_1E838();
  sub_1E6EC();
  sub_7C7D4();

  sub_1D6D4(v30);
  v55 = v31;
  v56 = v32;
  v57 = v33;
  v58 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1991C(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_1B6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v124 = &v191;
  v125 = a5;
  v170 = a1;
  v171 = a2;
  v172 = a3;
  v173 = a4;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v213 = 0u;
  v214 = 0u;
  v210 = 0;
  v208 = 0u;
  v209 = 0u;
  v205 = 0u;
  v206 = 0u;
  v202 = 0;
  v201 = 0;
  v199 = 0;
  v198 = 0;
  v196 = 0;
  v195 = 0;
  v193 = 0;
  v191 = 0u;
  v192 = 0u;
  v188 = 0u;
  v189 = 0u;
  v185 = 0;
  v126 = sub_1A88(&qword_91088, &qword_7F060);
  v127 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v126);
  v128 = (&v56 - v127);
  v129 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v127);
  v130 = (&v56 - v129);
  v131 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v129);
  v132 = (&v56 - v131);
  v225 = &v56 - v131;
  v133 = sub_1A88(&qword_91028, &qword_7F040);
  v134 = (*(*(v133 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v135 = &v56 - v134;
  v174 = 0;
  v136 = type metadata accessor for CachedDownloadView(0);
  v137 = (*(*(v136 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v136);
  v138 = &v56 - v137;
  v139 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v137);
  v140 = &v56 - v139;
  v141 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v139);
  v142 = &v56 - v141;
  v224 = &v56 - v141;
  v143 = sub_1A88(&qword_91068, &qword_7F058);
  v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v174);
  v145 = &v56 - v144;
  v146 = type metadata accessor for ProcessingView(v9);
  v147 = (*(*(v146 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v146);
  v148 = &v56 - v147;
  v149 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v147);
  v150 = &v56 - v149;
  v151 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v149);
  v152 = &v56 - v151;
  v223 = &v56 - v151;
  v153 = sub_1A88(&qword_91048, &qword_7F050);
  v154 = (*(*(v153 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v174);
  v155 = &v56 - v154;
  v156 = type metadata accessor for DownloadView(v12);
  v157 = (*(*(v156 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v156);
  v158 = &v56 - v157;
  v159 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v157);
  v160 = &v56 - v159;
  v161 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v159);
  v162 = &v56 - v161;
  v222 = &v56 - v161;
  v163 = sub_1A88(&qword_91038, &qword_7F048);
  v164 = (*(*(v163 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v163);
  v165 = (&v56 - v164);
  v166 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v164);
  v167 = (&v56 - v166);
  v168 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v56 - v166);
  v169 = (&v56 - v168);
  v221 = &v56 - v168;
  v175 = sub_1A88(&qword_91010, &qword_7F038);
  v177 = *(*(v175 - 8) + 64);
  v176 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v174);
  v178 = (&v56 - v176);
  v179 = (v177 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v180 = (&v56 - v179);
  v220 = &v56 - v179;
  *&v218 = v18;
  *(&v218 + 1) = v19;
  *&v219 = v20;
  *(&v219 + 1) = v21;
  v181 = sub_7D184();
  v182 = sub_7D174();
  v183 = sub_7D154();
  v184 = v22;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_1AE4C(v170, v171, v172, v173);
  v122 = v23;
  v24 = 0;
  if (_TtC12FontSettings15FontAssetFamily == *v23)
  {
    v24 = v23;
  }

  v123 = v24;
  if (v24)
  {
    v121 = v123;
  }

  else
  {

    v121 = 0;
  }

  v120 = v121;
  if (v121)
  {
    v119 = v120;
    v115 = v120;
    v198 = v120;

    v116 = sub_6ACF8();

    if (v116)
    {
      if (v116 == 1)
      {

        sub_1D210(v115, v160);
        v114 = sub_1CD68();
        sub_1991C(v160, v156, v162);
        sub_1FF20(v160);
        v185 = v160;
        sub_1FE44(v162, v158);
        sub_1991C(v158, v156, v160);
        sub_1FF20(v158);
        sub_1FE44(v160, v158);
        v27 = sub_1CE5C();
        sub_19980(v158, v156, &unk_8EBC0, v114, v27, v155);
        sub_1FF20(v158);
        v113 = sub_1CCC0();
        v28 = sub_1CED8();
        sub_19980(v155, v153, v143, v113, v28, v167);
        sub_26B48(v155);
        sub_26318(v167, v169);
        sub_1FF20(v160);
        sub_1FF20(v162);
      }

      else if (v116 == 2)
      {

        v29 = sub_1D320(v115);
        v101 = v190;
        v190[0] = v29;
        v190[1] = v30;
        v190[2] = v31;
        v190[3] = v32;
        v108 = sub_1CE5C();
        v112 = &v191;
        v107 = &unk_8EBC0;
        sub_1991C(v101, &unk_8EBC0, &v191);
        sub_1FFB0(v101);
        v102 = v191;
        v103 = v192;

        v104 = v187;
        v187[0] = v102;
        v187[1] = v103;
        v111 = &v188;
        sub_1991C(v187, v107, &v188);
        sub_1FFB0(v104);
        v105 = v188;
        v106 = v189;

        v109 = v186;
        v186[0] = v105;
        v186[1] = v106;
        v33 = sub_1CD68();
        sub_19A78(v109, v156, v107, v33, v108, v155);
        sub_1FFB0(v109);
        v110 = sub_1CCC0();
        v34 = sub_1CED8();
        sub_19980(v155, v153, v143, v110, v34, v167);
        sub_26B48(v155);
        sub_26318(v167, v169);
        sub_1FFB0(v111);
        sub_1FFB0(v112);
      }

      else
      {

        v97 = &v194;
        swift_beginAccess();
        v98 = v115[4];
        v99 = v115[5];

        swift_endAccess();

        sub_1D3E4(v98, v99, v150);
        v100 = sub_1CF80();
        sub_1991C(v150, v146, v152);
        sub_2009C(v150);
        v193 = v150;
        sub_1FFE8(v152, v148);
        sub_1991C(v148, v146, v150);
        sub_2009C(v148);
        sub_1FFE8(v150, v148);
        v35 = sub_1D074();
        sub_19980(v148, v146, v136, v100, v35, v145);
        sub_2009C(v148);
        v96 = sub_1CCC0();
        v36 = sub_1CED8();
        sub_19A78(v145, v153, v143, v96, v36, v167);
        sub_261F8(v145);
        sub_26318(v167, v169);
        sub_2009C(v150);
        sub_2009C(v152);
      }
    }

    else
    {

      v92 = &v197;
      swift_beginAccess();
      v93 = v115[4];
      v94 = v115[5];

      swift_endAccess();

      sub_1D4C4(v93, v94, v140);
      v95 = sub_1D074();
      sub_1991C(v140, v136, v142);
      sub_201D4(v140);
      v196 = v140;
      sub_20120(v142, v138);
      sub_1991C(v138, v136, v140);
      sub_201D4(v138);
      sub_20120(v140, v138);
      v37 = sub_1CF80();
      sub_19A78(v138, v146, v136, v37, v95, v145);
      sub_201D4(v138);
      v91 = sub_1CCC0();
      v38 = sub_1CED8();
      sub_19A78(v145, v153, v143, v91, v38, v167);
      sub_261F8(v145);
      sub_26318(v167, v169);
      sub_201D4(v140);
      sub_201D4(v142);
    }

    v195 = v167;
    sub_265D8(v169, v165);
    v89 = sub_1CC18();
    sub_1991C(v165, v163, v167);
    sub_26938(v165);
    sub_265D8(v167, v165);
    v39 = sub_1D168();
    sub_19980(v165, v163, v126, v89, v39, v135);
    sub_26938(v165);
    v90 = sub_1CB70();
    v40 = sub_1CE5C();
    sub_19980(v135, v133, &unk_8EBC0, v90, v40, v178);
    sub_25F04(v135);
    sub_251B8(v178, v180);
    sub_26938(v167);
    sub_26938(v169);
  }

  else
  {
    v25 = sub_1AE4C(v170, v171, v172, v173);
    v117 = v25;
    v26 = 0;
    if (_TtC12FontSettings18FontProviderFamily == *v25)
    {
      v26 = v25;
    }

    v118 = v26;
    if (v26)
    {
      v88 = v118;
    }

    else
    {

      v88 = 0;
    }

    v87 = v88;
    if (v88)
    {
      v86 = v87;
      v73 = v87;
      v210 = v87;

      v74 = sub_6ACF8();

      if (sub_62C5C(v74, 3))
      {
        v201 = v152;

        v69 = &v200;
        swift_beginAccess();
        v70 = *(v73 + 32);
        v71 = *(v73 + 40);

        swift_endAccess();

        sub_1D3E4(v70, v71, v150);
        v72 = sub_1CF80();
        sub_1991C(v150, v146, v152);
        sub_2009C(v150);
        v199 = v150;
        sub_1FFE8(v152, v148);
        sub_1991C(v148, v146, v150);
        sub_2009C(v148);
        sub_1FFE8(v150, v148);
        v47 = sub_1CE5C();
        sub_19980(v148, v146, &unk_8EBC0, v72, v47, v130);
        sub_2009C(v148);
        sub_25BC0(v130, v132);
        sub_2009C(v150);
        sub_2009C(v152);
      }

      else
      {

        v48 = sub_1D320(v73);
        v58 = v207;
        v207[0] = v48;
        v207[1] = v49;
        v207[2] = v50;
        v207[3] = v51;
        v65 = sub_1CE5C();
        v68 = &v208;
        v64 = &unk_8EBC0;
        sub_1991C(v58, &unk_8EBC0, &v208);
        sub_1FFB0(v58);
        v59 = v208;
        v60 = v209;

        v61 = v204;
        v204[0] = v59;
        v204[1] = v60;
        v67 = &v205;
        sub_1991C(v204, v64, &v205);
        sub_1FFB0(v61);
        v62 = v205;
        v63 = v206;

        v66 = v203;
        v203[0] = v62;
        v203[1] = v63;
        v52 = sub_1CF80();
        sub_19A78(v66, v146, v64, v52, v65, v130);
        sub_1FFB0(v66);
        sub_25BC0(v130, v132);
        sub_1FFB0(v67);
        sub_1FFB0(v68);
      }

      v202 = v130;
      sub_25CD0(v132, v128);
      v56 = sub_1D168();
      sub_1991C(v128, v126, v130);
      sub_25E30(v128);
      sub_25CD0(v130, v128);
      v53 = sub_1CC18();
      sub_19A78(v128, v163, v126, v53, v56, v135);
      sub_25E30(v128);
      v57 = sub_1CB70();
      v54 = sub_1CE5C();
      sub_19980(v135, v133, &unk_8EBC0, v57, v54, v178);
      sub_25F04(v135);
      sub_251B8(v178, v180);
      sub_25E30(v130);
      sub_25E30(v132);
    }

    else
    {
      v41 = sub_1AE4C(v170, v171, v172, v173);
      v42 = sub_1D320(v41);
      v75 = v215;
      v215[0] = v42;
      v215[1] = v43;
      v215[2] = v44;
      v215[3] = v45;
      v82 = sub_1CE5C();
      v85 = &v216;
      v81 = &unk_8EBC0;
      sub_1991C(v75, &unk_8EBC0, &v216);
      sub_1FFB0(v75);
      v76 = v216;
      v77 = v217;

      v78 = v212;
      v212[0] = v76;
      v212[1] = v77;
      v84 = &v213;
      sub_1991C(v212, v81, &v213);
      sub_1FFB0(v78);
      v79 = v213;
      v80 = v214;

      v83 = v211;
      v211[0] = v79;
      v211[1] = v80;
      v46 = sub_1CB70();
      sub_19A78(v83, v133, v81, v46, v82, v178);
      sub_1FFB0(v83);
      sub_251B8(v178, v180);
      sub_1FFB0(v84);
      sub_1FFB0(v85);
    }
  }

  sub_25624(v180, v178);
  sub_1CAC8();
  sub_1991C(v178, v175, v125);
  sub_1D6D4(v178);
  sub_1D6D4(v180);
}

unint64_t sub_1CAC8()
{
  v2 = qword_91018;
  if (!qword_91018)
  {
    sub_B24C(&qword_91010, &qword_7F038);
    sub_1CB70();
    sub_1CE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CB70()
{
  v2 = qword_91020;
  if (!qword_91020)
  {
    sub_B24C(&qword_91028, &qword_7F040);
    sub_1CC18();
    sub_1D168();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CC18()
{
  v2 = qword_91030;
  if (!qword_91030)
  {
    sub_B24C(&qword_91038, &qword_7F048);
    sub_1CCC0();
    sub_1CED8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CCC0()
{
  v2 = qword_91040;
  if (!qword_91040)
  {
    sub_B24C(&qword_91048, &qword_7F050);
    sub_1CD68();
    sub_1CE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CD68()
{
  v2 = qword_91050;
  if (!qword_91050)
  {
    type metadata accessor for DownloadView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91050);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for DownloadView(uint64_t a1)
{
  v2 = qword_91328;
  if (!qword_91328)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1CE5C()
{
  v2 = qword_91058;
  if (!qword_91058)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CED8()
{
  v2 = qword_91060;
  if (!qword_91060)
  {
    sub_B24C(&qword_91068, &qword_7F058);
    sub_1CF80();
    sub_1D074();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CF80()
{
  v2 = qword_91070;
  if (!qword_91070)
  {
    type metadata accessor for ProcessingView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91070);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ProcessingView(uint64_t a1)
{
  v2 = qword_91298;
  if (!qword_91298)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1D074()
{
  v2 = qword_91078;
  if (!qword_91078)
  {
    type metadata accessor for CachedDownloadView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91078);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CachedDownloadView(uint64_t a1)
{
  v2 = qword_913D0;
  if (!qword_913D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1D168()
{
  v2 = qword_91080;
  if (!qword_91080)
  {
    sub_B24C(&qword_91088, &qword_7F060);
    sub_1CF80();
    sub_1CE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = a1;
  v21 = 0;
  v20 = 0;
  v13[1] = 0;
  v16 = type metadata accessor for DownloadView(0);
  v14 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = (v13 - v14);
  v21 = v13 - v14;
  v20 = v2;
  v15 = type metadata accessor for FontSettingsModel(v3);
  sub_1AC10();
  v4 = sub_7C1A4();
  v5 = v19;
  v19[2] = v4;
  v5[3] = v6;
  sub_7BCF4();

  v7 = sub_1FDE0(v18);
  v8 = v19;
  v10 = v9;
  v11 = v17;
  *v19 = v7;
  *(v8 + 1) = v10;
  sub_1FE44(v8, v11);

  return sub_1FF20(v19);
}

uint64_t sub_1D320(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  *&v6 = sub_7C1A4();
  *(&v6 + 1) = v1;

  v9 = v6;

  v7 = sub_1AD84(a1);
  v5 = v2;

  *&v8 = v7;
  *(&v8 + 1) = v5;

  sub_1FFB0(&v8);
  return v7;
}

uint64_t sub_1D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v10 = a1;
  v12 = a2;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v3 = type metadata accessor for ProcessingView(0);
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v13 = (&v9 - v9);
  v16 = &v9 - v9;
  v14 = v10;
  v15 = v4;
  sub_7BCF4();

  v5 = v13;
  v6 = v11;
  v7 = v12;
  *v13 = v10;
  *(v5 + 1) = v7;
  sub_1FFE8(v5, v6);

  return sub_2009C(v13);
}

uint64_t sub_1D4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v10 = a1;
  v12 = a2;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v3 = type metadata accessor for CachedDownloadView(0);
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v13 = (&v9 - v9);
  v16 = &v9 - v9;
  v14 = v10;
  v15 = v4;
  sub_7BCF4();

  v5 = v13;
  v6 = v11;
  v7 = v12;
  *v13 = v10;
  *(v5 + 1) = v7;
  sub_20120(v5, v6);

  return sub_201D4(v13);
}

unint64_t sub_1D5BC()
{
  v2 = qword_91090;
  if (!qword_91090)
  {
    sub_B24C(&qword_90FF8, &qword_7F020);
    sub_1CAC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91090);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D654(char a1, uint64_t a2, uint64_t a3)
{
  sub_7C544();
  sub_25138();
  return sub_7C904();
}

uint64_t sub_1D6D4(uint64_t a1)
{
  sub_1A88(&qword_91098, &qword_7F068);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_12;
  }

  sub_1A88(&qword_910A0, &qword_7F070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910C0, &qword_7F090);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v6 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
      v4 = sub_7BD04();
      (*(*(v4 - 8) + 8))(v6);
      return a1;
    }

    goto LABEL_12;
  }

  sub_1A88(&qword_910A8, &qword_7F078);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A88(&qword_910B0, &qword_7F080);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v9 = a1 + *(type metadata accessor for DownloadView(0) + 24);
      v1 = sub_7BD04();
      (*(*(v1 - 8) + 8))(v9);
      return a1;
    }

LABEL_12:

    return a1;
  }

  sub_1A88(&qword_910B8, &qword_7F088);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = a1 + *(type metadata accessor for CachedDownloadView(0) + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {

    v8 = a1 + *(type metadata accessor for ProcessingView(0) + 20);
    v2 = sub_7BD04();
    (*(*(v2 - 8) + 8))(v8);
  }

  return a1;
}

uint64_t sub_1DA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v49 = a1;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v68 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v39 = sub_1A88(&qword_91108, &qword_7F0B0);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = &v21 - v40;
  v42 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v21 - v40);
  v43 = &v21 - v42;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v21 - v42);
  v45 = &v21 - v44;
  v68 = &v21 - v44;
  v50 = sub_1A88(&qword_910C8, &qword_7F098);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v52 = &v21 - v51;
  v53 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v54 = &v21 - v53;
  v55 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v56 = &v21 - v55;
  v67 = &v21 - v55;
  *&v65 = v11;
  *(&v65 + 1) = v12;
  *&v66 = v13;
  *(&v66 + 1) = v14;
  v57 = sub_7D184();
  v58 = sub_7D174();
  v59 = sub_7D154();
  v60 = v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_1AE4C(v49, v46, v47, v48);
  v36 = v16;
  v17 = 0;
  if (_TtC12FontSettings15FontAssetFamily == *v16)
  {
    v17 = v16;
  }

  v37 = v17;
  if (v17)
  {
    v35 = v37;
  }

  else
  {

    v35 = 0;
  }

  v34 = v35;
  if (v35)
  {
    v33 = v34;
    v31 = v34;
    v62 = v34;

    v32 = sub_6ACF8();

    if (sub_62C5C(v32, 2))
    {
      sub_1E258(v31, v49, v46, v47, v48, v43);
      v30 = sub_1E970();
      sub_1991C(v43, v39, v45);
      sub_20364(v43);
      v61 = v43;
      sub_24FE8(v45, v41);
      sub_1991C(v41, v39, v43);
      sub_20364(v41);
      sub_24FE8(v43, v41);
      sub_19980(v41, v39, v39, v30, v30, v52);
      sub_20364(v41);
      v29 = sub_1A88(&qword_910F8, &qword_7F0A8);
      (*(*(v29 - 8) + 56))(v52, 0, 1);
      sub_1E8D0();
      sub_4E680(v52, v29, v54);
      sub_246D4(v52);
      sub_24930(v54, v56);
      sub_20364(v43);
      sub_20364(v45);

      goto LABEL_22;
    }
  }

  v18 = sub_1AE4C(v49, v46, v47, v48);
  v27 = v18;
  v19 = 0;
  if (_TtC12FontSettings18FontProviderFamily == *v18)
  {
    v19 = v18;
  }

  v28 = v19;
  if (v19)
  {

    v26 = 1;
  }

  else
  {

    v26 = 0;
  }

  if (v26)
  {
    v64 = v45;
    v24 = sub_1AE4C(v49, v46, v47, v48);
    sub_1E258(v24, v49, v46, v47, v48, v43);

    v25 = sub_1E970();
    sub_1991C(v43, v39, v45);
    sub_20364(v43);
    v63 = v43;
    sub_24FE8(v45, v41);
    sub_1991C(v41, v39, v43);
    sub_20364(v41);
    sub_24FE8(v43, v41);
    sub_19A78(v41, v39, v39, v25, v25, v52);
    sub_20364(v41);
    v23 = sub_1A88(&qword_910F8, &qword_7F0A8);
    (*(*(v23 - 8) + 56))(v52, 0, 1);
    sub_1E8D0();
    sub_4E680(v52, v23, v54);
    sub_246D4(v52);
    sub_24930(v54, v56);
    sub_20364(v43);
    sub_20364(v45);
  }

  else
  {
    v22 = sub_1A88(&qword_910F8, &qword_7F0A8);
    (*(*(v22 - 8) + 56))(v52, 1);
    sub_1E8D0();
    sub_4E680(v52, v22, v54);
    sub_246D4(v52);
    sub_24930(v54, v56);
  }

LABEL_22:
  sub_24C50(v56, v54);
  sub_1E838();
  sub_1991C(v54, v50, v38);
  sub_246D4(v54);
  sub_246D4(v56);
}

uint64_t sub_1E258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v27 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v29 = 0;
  v30 = sub_202A8;
  v28 = sub_1ED54;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v44 = sub_7CEF4();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v19 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v43 = &v19 - v19;
  v35 = sub_1A88(&qword_91128, &qword_7F0C0);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v20 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v34 = &v19 - v20;
  v36 = sub_1A88(&qword_91118, &qword_7F0B8);
  v21 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v39 = &v19 - v21;
  v48 = sub_1A88(&qword_91108, &qword_7F0B0);
  v22 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v50 = &v19 - v22;
  v54 = v6;
  *&v52 = v7;
  *(&v52 + 1) = v8;
  *&v53 = v9;
  *(&v53 + 1) = v10;

  v11 = swift_allocObject();
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v11[2] = v23;
  v11[3] = v12;
  v11[4] = v13;
  v11[5] = v14;
  v11[6] = v15;
  sub_7CB44();
  v31 = sub_7C9C4();
  sub_1EAC0();
  sub_7C8D4();

  (*(v32 + 8))(v34, v35);
  v40 = 1;
  v37 = sub_7CF84("SWIPE_REMOVE_FAMILY", 0x13uLL, 1);
  v38 = v16;
  sub_1EA18();
  sub_7C884();

  sub_202C0(v39);
  sub_7CF84("Remove font", 0xBuLL, v40 & 1);
  sub_7CE94();
  v45 = sub_61F88(v43);
  v46 = v17;
  (*(v41 + 8))(v43, v44);
  v49 = v51;
  v51[0] = v45;
  v51[1] = v46;
  sub_198A4();
  sub_7C114();
  sub_1F58(v49);
  return sub_20364(v50);
}

unint64_t sub_1E708()
{
  v2 = qword_910D0;
  if (!qword_910D0)
  {
    sub_B24C(&qword_91000, &qword_7F028);
    sub_1D5BC();
    sub_1E7B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E7B0()
{
  v2 = qword_910D8;
  if (!qword_910D8)
  {
    sub_B24C(&qword_910E0, &qword_7F0A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E838()
{
  v2 = qword_910E8;
  if (!qword_910E8)
  {
    sub_B24C(&qword_910C8, &qword_7F098);
    sub_1E8D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E8D0()
{
  v2 = qword_910F0;
  if (!qword_910F0)
  {
    sub_B24C(&qword_910F8, &qword_7F0A8);
    sub_1E970();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E970()
{
  v2 = qword_91100;
  if (!qword_91100)
  {
    sub_B24C(&qword_91108, &qword_7F0B0);
    sub_1EA18();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EA18()
{
  v2 = qword_91110;
  if (!qword_91110)
  {
    sub_B24C(&qword_91118, &qword_7F0B8);
    sub_1EAC0();
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EAC0()
{
  v2 = qword_91120;
  if (!qword_91120)
  {
    sub_B24C(&qword_91128, &qword_7F0C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EB48()
{
  v2 = qword_91130;
  if (!qword_91130)
  {
    sub_B24C(&qword_91138, &qword_7F0C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EBD0()
{
  v2 = qword_91140;
  if (!qword_91140)
  {
    sub_7C574();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91140);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __objc2_class **a5)
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AB94(a1, a2);
  sub_7078(a5);
}

uint64_t sub_1ED54@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7CF84("trash", 5uLL, 1);
  v5 = sub_7CA34();
  sub_1991C(&v5, &type metadata for Image, &v6);
  sub_B068(&v5);
  v2 = v6;

  v4 = v2;
  sub_1991C(&v4, &type metadata for Image, a1);
  sub_B068(&v4);
  sub_B068(&v6);
}

uint64_t sub_1EEBC(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_1EF1C(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_1EF70(uint64_t a1, uint64_t a2)
{

  type metadata accessor for Family(0);
  sub_1ADCC();
  v3 = sub_7C0E4();

  return v3;
}

uint64_t sub_1F02C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1F078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v5 = sub_7C184();

  return v5;
}

uint64_t sub_1F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v5 = sub_7C194();

  return v5;
}

uint64_t sub_1F1B4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1F1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v26 = 0;
  v27 = type metadata accessor for FamilyView(0);
  v14 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v5 = (&v14 - v14);
  v31 = &v14 - v14;
  v33 = sub_1A88(&qword_91148, &qword_7F0D0);
  v15 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v14 - v15;
  v42 = sub_1A88(&qword_91150, &qword_7F0D8);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v40 = &v14 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v41 = &v14 - v17;
  v49 = &v14 - v17;
  *&v47 = v8;
  *(&v47 + 1) = v9;
  *&v48 = v10;
  *(&v48 + 1) = v11;
  v19 = sub_1EEBC(v8, v9);
  v18 = &v46;
  swift_beginAccess();
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  swift_endAccess();

  v35 = v45;
  v45[0] = v20;
  v45[1] = v21;
  v12 = sub_1EEBC(v22, v23);
  sub_2E6EC(v12, v5);
  v30 = sub_1F078(v22, v23, v24, v25);
  v28 = type metadata accessor for FontSettingsModel(v26);
  v29 = sub_20464();
  sub_1AC10();
  sub_7C834();

  sub_204E4(v31);
  v34 = sub_205F8();
  sub_198A4();
  sub_7C084();
  v39 = sub_20728();
  sub_1991C(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1991C(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_1F660()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1F698@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for ProcessingView(0) + 20);
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1F710@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_207B0;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_91188, &qword_7F0F0);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_91190, &qword_7F0F8);
  v10 = sub_207B8();
  sub_1FDBC();
  sub_7CB74();
  v13 = sub_20840();
  sub_1991C(v14, v12, v15);
  sub_208C8(v14);
  sub_20A40(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_208C8(v14);
  return sub_208C8(v15);
}

uint64_t sub_1F89C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = v70;
  v27 = a2;
  v38 = a1;
  v72 = 0;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v60 = 0;
  v61 = 0;
  v39 = 0;
  v28 = sub_7BD04();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v32 = &v11 - v31;
  v33 = sub_1A88(&qword_911B8, &qword_7F110);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = &v11 - v36;
  v40 = sub_1A88(&qword_911C0, &qword_7F118);
  v42 = *(*(v40 - 8) + 64);
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v43 = &v11 - v41;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v45 = &v11 - v44;
  v72 = &v11 - v44;
  v71 = v3;
  v46 = sub_7D184();
  v47 = sub_7D174();
  v48 = sub_7D154();
  v49 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *v38;
  v12 = *(v38 + 1);

  v13 = v69;
  v69[0] = v11;
  v69[1] = v12;
  sub_198A4();
  v65 = sub_7C6E4();
  v66 = v5;
  v67 = v6;
  v68 = v7;
  v14 = v62;
  v62[0] = v65;
  v62[1] = v5;
  v15 = 1;
  v63 = v6 & 1;
  v64 = v7;
  v25 = v70;
  v18 = &type metadata for Text;
  v20 = &protocol witness table for Text;
  sub_1991C(v62, &type metadata for Text, v70);
  sub_23BF4(v14);
  v16 = 0;
  v58 = sub_7CB84();
  v59 = v8 & 1 & v15;
  v19 = &type metadata for Spacer;
  v21 = &protocol witness table for Spacer;
  sub_1991C(&v58, &type metadata for Spacer, &v60);
  sub_7BF84();
  v9 = type metadata accessor for ProcessingView(v16);
  (*(v29 + 16))(v32, &v38[*(v9 + 20)], v28);
  v17 = sub_24420();
  sub_B094();
  sub_7C8B4();
  (*(v29 + 8))(v32, v28);
  (*(v34 + 8))(v37, v33);
  v22 = sub_244A8();
  sub_1991C(v43, v40, v45);
  sub_24530(v43);
  v24 = v56;
  sub_23E4C(v25, v56);
  v23 = v57;
  v57[0] = v24;
  v54 = v60;
  v55 = v61;
  v57[1] = &v54;
  sub_245F4(v45, v43);
  v57[2] = v43;
  v53[0] = v18;
  v53[1] = v19;
  v53[2] = v40;
  v50 = v20;
  v51 = v21;
  v52 = v22;
  sub_4E6CC(v23, 3uLL, v53, v27);
  sub_24530(v43);
  sub_23BF4(v24);
  sub_24530(v45);
  sub_23BF4(v25);
}

char *sub_1FE44(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(a1 + 2);

  *(a2 + 2) = v5;
  *(a2 + 3) = *(a1 + 3);
  v6 = *(type metadata accessor for DownloadView(0) + 24);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t sub_1FF20(uint64_t a1)
{

  v3 = *(type metadata accessor for DownloadView(0) + 24);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1FFE8(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for ProcessingView(0) + 20);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t sub_2009C(uint64_t a1)
{

  v3 = *(type metadata accessor for ProcessingView(0) + 20);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_20120(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for CachedDownloadView(0) + 20);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t sub_201D4(uint64_t a1)
{

  v3 = *(type metadata accessor for CachedDownloadView(0) + 20);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_20258()
{

  return swift_deallocObject();
}

uint64_t sub_202C0(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91118, &qword_7F0B8);

  return a1;
}

uint64_t sub_20364(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91118, &qword_7F0B8);

  v4 = *(sub_1A88(&qword_91108, &qword_7F0B0) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_20464()
{
  v2 = qword_91158;
  if (!qword_91158)
  {
    type metadata accessor for FamilyView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91158);
    return WitnessTable;
  }

  return v2;
}

char *sub_204E4(char *a1)
{

  v3 = *(type metadata accessor for FamilyView(0) + 28);
  sub_1A88(&qword_91160, &unk_7F0E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(&a1[v3]);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_205F8()
{
  v2 = qword_91168;
  if (!qword_91168)
  {
    sub_B24C(&qword_91148, &qword_7F0D0);
    sub_20464();
    sub_206A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_206A0()
{
  v2 = qword_91170;
  if (!qword_91170)
  {
    sub_B24C(&qword_91178, &qword_7FDD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20728()
{
  v2 = qword_91180;
  if (!qword_91180)
  {
    sub_B24C(&qword_91150, &qword_7F0D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_207B8()
{
  v2 = qword_91198;
  if (!qword_91198)
  {
    sub_B24C(&qword_91190, &qword_7F0F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20840()
{
  v2 = qword_911A0;
  if (!qword_911A0)
  {
    sub_B24C(&qword_91188, &qword_7F0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_208C8(uint64_t a1)
{
  v4 = a1 + *(sub_1A88(&qword_911A8, &qword_7F100) + 44);
  sub_209FC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  v5 = *(sub_1A88(&qword_911B0, &qword_7F108) + 64);
  v1 = sub_1A88(&qword_911B8, &qword_7F110);
  (*(*(v1 - 8) + 8))();
  v6 = *(sub_1A88(&qword_911C0, &qword_7F118) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 8))(v4 + v5 + v6);
  return a1;
}

uint64_t sub_209FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20A40(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_1A88(&qword_911A8, &qword_7F100) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_20C1C(v7, v8, v9 & 1);
  v11 = a2 + v6;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);

  *(v11 + 24) = v10;
  *(v11 + 32) = *(a1 + v6 + 32);
  *(v11 + 40) = *(a1 + v6 + 40);
  v12 = *(sub_1A88(&qword_911B0, &qword_7F108) + 64);
  v2 = sub_1A88(&qword_911B8, &qword_7F110);
  (*(*(v2 - 8) + 16))();
  v13 = *(sub_1A88(&qword_911C0, &qword_7F118) + 52);
  v3 = sub_7BD04();
  (*(*(v3 - 8) + 16))(a2 + v6 + v12 + v13, a1 + v6 + v12 + v13);
  return a2;
}

uint64_t sub_20C1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20C60()
{
  v2 = qword_911C8;
  if (!qword_911C8)
  {
    type metadata accessor for FontAssetFamily(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_20CF8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_20D30()
{

  type metadata accessor for FontAssetFamily(0);
  sub_20C60();
  v1 = sub_7C0E4();

  return v1;
}

uint64_t sub_20DA4()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_20DDC()
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v1 = sub_7C184();

  return v1;
}

uint64_t sub_20E50()
{

  type metadata accessor for FontSettingsModel(0);
  sub_1AC10();
  v1 = sub_7C194();

  return v1;
}

uint64_t sub_20EC4()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_20EFC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for DownloadView(0) + 24);
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_20F74@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_2180C;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_911D0, &qword_7F120);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_911D8, &qword_7F128);
  v10 = sub_21814();
  sub_1FDBC();
  sub_7CB74();
  v13 = sub_2189C();
  sub_1991C(v14, v12, v15);
  sub_21924(v14);
  sub_21A58(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_21924(v14);
  return sub_21924(v15);
}

uint64_t sub_21100@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v59 = a1;
  v42 = sub_24170;
  v43 = sub_21D10;
  v97 = 0;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v84 = 0;
  v85 = 0;
  v60 = 0;
  v44 = sub_7CEF4();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v48 = &v15 - v47;
  v3 = type metadata accessor for DownloadView(v2);
  v49 = *(v3 - 8);
  v50 = v49;
  v51 = *(v49 + 64);
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v53 = &v15 - v52;
  v54 = sub_1A88(&qword_91128, &qword_7F0C0);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v58 = &v15 - v57;
  v61 = sub_1A88(&qword_91200, &qword_7F140);
  v65 = *(*(v61 - 8) + 64);
  v62 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v63 = &v15 - v62;
  v64 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v66 = &v15 - v64;
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v68 = &v15 - v67;
  v97 = &v15 - v67;
  v96 = v6;
  v69 = sub_7D184();
  v70 = sub_7D174();
  v71 = sub_7D154();
  v72 = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_20CF8();
  v15 = &v94;
  v23 = 0;
  swift_beginAccess();
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);

  swift_endAccess();

  v19 = v93;
  v93[0] = v17;
  v93[1] = v18;
  v31 = sub_198A4();
  v30 = &type metadata for String;
  v89 = sub_7C6E4();
  v90 = v8;
  v91 = v9;
  v92 = v10;
  v20 = v86;
  v86[0] = v89;
  v86[1] = v8;
  v27 = 1;
  v87 = v9 & 1;
  v88 = v10;
  v40 = v95;
  v33 = &type metadata for Text;
  v35 = &protocol witness table for Text;
  sub_1991C(v86, &type metadata for Text, v95);
  sub_23BF4(v20);
  v82 = sub_7CB84();
  v83 = v11 & 1 & v27;
  v34 = &type metadata for Spacer;
  v36 = &protocol witness table for Spacer;
  sub_1991C(&v82, &type metadata for Spacer, &v84);
  sub_1FE44(v59, v53);
  v21 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v22 = swift_allocObject();
  sub_240CC(v53, (v22 + v21));
  sub_7CB44();
  v26 = 8;
  v24 = sub_7CF84("DOWNLOAD", 8uLL, v27 & 1);
  v25 = v12;
  sub_1EAC0();
  sub_7C884();

  (*(v55 + 8))(v58, v54);
  sub_7CF84("Download", v26, v27 & 1);
  sub_7CE94();
  v28 = sub_61F88(v48);
  v29 = v13;
  (*(v45 + 8))(v48, v44);
  v32 = v81;
  v81[0] = v28;
  v81[1] = v29;
  sub_7C114();
  sub_1F58(v32);
  sub_241D4(v63);
  v37 = sub_24298();
  sub_1991C(v66, v61, v68);
  sub_241D4(v66);
  v39 = v79;
  sub_23E4C(v40, v79);
  v38 = v80;
  v80[0] = v39;
  v77 = v84;
  v78 = v85;
  v80[1] = &v77;
  sub_24340(v68, v66);
  v80[2] = v66;
  v76[0] = v33;
  v76[1] = v34;
  v76[2] = v61;
  v73 = v35;
  v74 = v36;
  v75 = v37;
  sub_4E6CC(v38, 3uLL, v76, v41);
  sub_241D4(v66);
  sub_23BF4(v39);
  sub_241D4(v68);
  sub_23BF4(v40);
}

unint64_t sub_21814()
{
  v2 = qword_911E0;
  if (!qword_911E0)
  {
    sub_B24C(&qword_911D8, &qword_7F128);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2189C()
{
  v2 = qword_911E8;
  if (!qword_911E8)
  {
    sub_B24C(&qword_911D0, &qword_7F120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21924(uint64_t a1)
{
  v4 = a1 + *(sub_1A88(&qword_911F0, &qword_7F130) + 44);
  sub_209FC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  v5 = *(sub_1A88(&qword_911F8, &qword_7F138) + 64);
  v1 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v1 - 8) + 8))();
  v6 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(v4 + v5 + v6);
  return a1;
}

uint64_t sub_21A58(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_1A88(&qword_911F0, &qword_7F130) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_20C1C(v7, v8, v9 & 1);
  v11 = a2 + v6;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);

  *(v11 + 24) = v10;
  *(v11 + 32) = *(a1 + v6 + 32);
  *(v11 + 40) = *(a1 + v6 + 40);
  v12 = *(sub_1A88(&qword_911F8, &qword_7F138) + 64);
  v2 = sub_1A88(&qword_91128, &qword_7F0C0);
  (*(*(v2 - 8) + 16))();
  v13 = *(sub_1A88(&qword_91200, &qword_7F140) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v6 + v12 + v13, a1 + v6 + v12 + v13);
  return a2;
}

uint64_t sub_21C34()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20DDC();
  v1 = sub_20CF8();
  sub_17A0(v1);
}

uint64_t sub_21D10@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7CF84("arrow.down.circle", 0x11uLL, 1);
  v5 = sub_7CA34();
  sub_1991C(&v5, &type metadata for Image, &v6);
  sub_B068(&v5);
  v2 = v6;

  v4 = v2;
  sub_1991C(&v4, &type metadata for Image, a1);
  sub_B068(&v4);
  sub_B068(&v6);
}

uint64_t sub_21E68@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for CachedDownloadView(0) + 20);
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_21EE0@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_22570;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_91208, &qword_7F148);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_91210, &qword_7F150);
  v10 = sub_22578();
  sub_1FDBC();
  sub_7CB74();
  v13 = sub_22600();
  sub_1991C(v14, v12, v15);
  sub_22688(v14);
  sub_22794(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_22688(v14);
  return sub_22688(v15);
}

uint64_t sub_2206C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v38 = a1;
  v74 = 0;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v62 = 0;
  v63 = 0;
  v39 = 0;
  v33 = sub_7BD04();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = &v12 - v36;
  v40 = sub_1A88(&qword_91238, &qword_7F168);
  v42 = *(*(v40 - 8) + 64);
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v43 = &v12 - v41;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v45 = &v12 - v44;
  v74 = &v12 - v44;
  v73 = v3;
  v46 = sub_7D184();
  v47 = sub_7D174();
  v48 = sub_7D154();
  v49 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *v38;
  v14 = *(v38 + 1);

  v15 = v71;
  v71[0] = v13;
  v71[1] = v14;
  sub_198A4();
  v67 = sub_7C6E4();
  v68 = v5;
  v69 = v6;
  v70 = v7;
  v16 = v64;
  v64[0] = v67;
  v64[1] = v5;
  v17 = 1;
  v65 = v6 & 1;
  v66 = v7;
  v31 = v72;
  v24 = &type metadata for Text;
  v26 = &protocol witness table for Text;
  sub_1991C(v64, &type metadata for Text, v72);
  sub_23BF4(v16);
  v20 = 0;
  v60 = sub_7CB84();
  v61 = v8 & 1 & v17;
  v25 = &type metadata for Spacer;
  v27 = &protocol witness table for Spacer;
  sub_1991C(&v60, &type metadata for Spacer, &v62);
  sub_7CF84("arrow.down.circle", 0x11uLL, v17 & 1);
  v9 = sub_7CA34();
  v19 = v59;
  v59[0] = v9;
  v18 = sub_7CA04();
  sub_7C7F4();

  sub_B068(v19);
  v23 = v58;
  v58[0] = v59[1];
  v58[1] = v59[2];
  v58[2] = v59[3];
  v10 = type metadata accessor for CachedDownloadView(v20);
  (*(v34 + 16))(v37, &v38[*(v10 + 20)], v33);
  v21 = sub_1A88(&qword_91408, &qword_7F6E8);
  v22 = sub_23C3C();
  sub_B094();
  sub_7C8B4();
  (*(v34 + 8))(v37, v33);
  sub_23CE0(v23);
  v28 = sub_23D24();
  sub_1991C(v43, v40, v45);
  sub_23DAC(v43);
  v30 = v56;
  sub_23E4C(v31, v56);
  v29 = v57;
  v57[0] = v30;
  v54 = v62;
  v55 = v63;
  v57[1] = &v54;
  sub_23ED4(v45, v43);
  v57[2] = v43;
  v53[0] = v24;
  v53[1] = v25;
  v53[2] = v40;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  sub_4E6CC(v29, 3uLL, v53, v32);
  sub_23DAC(v43);
  sub_23BF4(v30);
  sub_23DAC(v45);
  sub_23BF4(v31);
}