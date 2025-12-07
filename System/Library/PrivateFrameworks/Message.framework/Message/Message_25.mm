uint64_t sub_1B087FF4C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
  swift_beginAccess();
  *v5 = 0;

  swift_endAccess();

  a2(v3);
}

uint64_t sub_1B087FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v83 = a2;
  v82 = a3;
  v56 = sub_1B08A2E98;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v106 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v100 = 0;
  v74 = 0;
  v57 = sub_1B0E44238();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = v39 - v60;
  v62 = sub_1B0E44288();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v66 = v39 - v65;
  v67 = *(_s6LoggerVMa(v4) - 8);
  v68 = v67;
  v69 = *(v67 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v71 = v39 - v70;
  v72 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v73 = v39 - v72;
  v112 = v39 - v72;
  v75 = *(_s18MailboxPersistenceVMa(v7) - 8);
  v76 = v75;
  v77 = *(v75 + 64);
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v79 = v39 - v78;
  v80 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v81 = v39 - v80;
  v111 = v39 - v80;
  v90 = sub_1B0E44468();
  v88 = *(v90 - 8);
  v89 = v90 - 8;
  v85 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v91 = (v39 - v85);
  v86 = *v10;
  v110 = v86;
  v108 = v11;
  v109 = v12;
  v107 = v3;
  v87 = *(v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v87);
  v106 = v87;
  MEMORY[0x1E69E5928](v87);
  MEMORY[0x1E69E5928](v87);
  v13 = v88;
  *v91 = v87;
  (*(v13 + 104))();
  v92 = sub_1B0E44488();
  (*(v88 + 8))(v91, v90);
  result = v92;
  if (v92)
  {
    v15 = v55;
    MEMORY[0x1E69E5920](v87);
    v39[0] = v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
    v39[1] = v105;
    swift_beginAccess();
    sub_1B03F4D78(v39[0], v81);
    swift_endAccess();
    v52 = sub_1B09B03B8();
    v53 = v16;
    v54 = v17;
    v102 = v52;
    v103 = v16;
    v104 = v17;
    v51 = *(v55 + 112);
    MEMORY[0x1E69E5928](v51);
    v101 = v51;
    v50 = sub_1B09B0434();
    v100 = v50;
    sub_1B0394784(v55 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v73);
    v49 = *sub_1B08772C0();
    MEMORY[0x1E69E5928](v49);
    MEMORY[0x1E69E5928](v51);
    sub_1B03F4D78(v81, v79);
    sub_1B07BA724(v52);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394784(v73, v71);
    MEMORY[0x1E69E5928](v87);

    v40 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v41 = (v40 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 31) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 8 + *(v68 + 80)) & ~*(v68 + 80);
    v44 = (v43 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    v19 = v86;
    v20 = v40;
    v21 = v18;
    v22 = v79;
    v47 = v21;
    *(v21 + 16) = v51;
    *(v21 + 24) = v19;
    sub_1B04158DC(v22, v21 + v20);
    v23 = v42;
    v24 = v43;
    v25 = v47;
    v26 = v50;
    v27 = v53;
    v28 = v54;
    v29 = v71;
    v30 = (v47 + v41);
    *v30 = v52;
    v30[1] = v27;
    v30[2] = v28;
    *(v25 + v23) = v26;
    sub_1B03F4FD0(v29, v25 + v24);
    v31 = v55;
    v32 = v45;
    v33 = v46;
    v34 = v83;
    v35 = v82;
    v36 = v56;
    v37 = v47;
    *(v47 + v44) = v87;
    *(v37 + v32) = v31;
    v38 = (v37 + v33);
    *v38 = v34;
    v38[1] = v35;
    v98 = v36;
    v99 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v94 = 1107296256;
    v95 = 0;
    v96 = sub_1B038C908;
    v97 = &block_descriptor_312;
    v48 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v66, v61, v48);
    (*(v58 + 8))(v61, v57);
    (*(v63 + 8))(v66, v62);
    _Block_release(v48);

    MEMORY[0x1E69E5920](v49);
    sub_1B039480C(v73);

    MEMORY[0x1E69E5920](v51);
    sub_1B07BA794(v52);
    sub_1B03F4F08(v81);
    return MEMORY[0x1E69E5920](v87);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0880A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27[1] = a2;
  v27[7] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v27[6] = a8;
  v27[8] = a9;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = sub_1B08A69EC;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v32 = 0;
  v36 = sub_1B0E44238();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v27[0] = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = v27 - v27[0];
  v40 = sub_1B0E44288();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  MEMORY[0x1EEE9AC00](v40);
  v39 = v27 - v13;
  v61 = a1;
  v60 = v14;
  v59 = v15;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  v55 = v19;
  v54 = v20;
  v53 = v21;
  v52 = v28;
  v50 = v29;
  v51 = v30;
  v49 = v14;
  sub_1B0880DA0(&v49, v15, v16, v17, v18, v19, v20);

  v22 = swift_allocObject();
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v22[2] = v28;
  v22[3] = v23;
  v22[4] = v24;
  v47 = v25;
  v48 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = 0;
  v45 = sub_1B038C908;
  v46 = &block_descriptor_1772;
  v41 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v32, v39, v35, v41);
  (*(v33 + 8))(v35, v36);
  (*(v37 + 8))(v39, v40);
  _Block_release(v41);
}

uint64_t sub_1B0880DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v343 = a1;
  v342 = a2;
  v337 = a3;
  v338 = a4;
  v339 = a5;
  v341 = a6;
  v340 = a7;
  v354 = sub_1B08A3090;
  v277 = sub_1B039BBE8;
  v278 = sub_1B06BA324;
  v279 = sub_1B0394C30;
  v280 = sub_1B0394C24;
  v281 = sub_1B039BA2C;
  v282 = sub_1B039BA88;
  v283 = sub_1B039BB94;
  v284 = sub_1B0394C24;
  v285 = sub_1B039BBA0;
  v286 = sub_1B039BC08;
  v287 = sub_1B03FB1CC;
  v288 = sub_1B039BCF8;
  v289 = sub_1B0398F5C;
  v290 = sub_1B0398F5C;
  v291 = sub_1B0399178;
  v292 = sub_1B0398F5C;
  v293 = sub_1B0398F5C;
  v294 = sub_1B039BA94;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0398F5C;
  v297 = sub_1B0399178;
  v298 = sub_1B0398F5C;
  v299 = sub_1B0398F5C;
  v300 = sub_1B03991EC;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0398F5C;
  v303 = sub_1B039BCEC;
  v304 = sub_1B039BBE8;
  v305 = sub_1B06BA324;
  v306 = sub_1B0394C24;
  v307 = sub_1B039BA2C;
  v308 = sub_1B039BA88;
  v309 = sub_1B0394C24;
  v310 = sub_1B039BBA0;
  v311 = sub_1B039BC08;
  v312 = sub_1B03FB1CC;
  v313 = sub_1B039BCF8;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0399178;
  v317 = sub_1B0398F5C;
  v318 = sub_1B0398F5C;
  v319 = sub_1B039BA94;
  v320 = sub_1B0398F5C;
  v321 = sub_1B0398F5C;
  v322 = sub_1B0399178;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B03991EC;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B039BCEC;
  v388 = 0;
  v387 = 0;
  v384 = 0;
  v385 = 0;
  v386 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v378 = 0;
  v372 = 0;
  v365 = 0;
  v363 = 0;
  v364 = 0;
  v361 = 0;
  v362 = 0;
  v357 = 0;
  v358 = 0;
  v359 = 0;
  v329 = 0;
  v330 = _s6LoggerVMa(0);
  v331 = (*(*(v330 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v332 = v146 - v331;
  v333 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v334 = v146 - v333;
  v335 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v336 = v146 - v335;
  v344 = sub_1B0E439A8();
  v345 = *(v344 - 8);
  v346 = v344 - 8;
  v347 = (*(v345 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v343);
  v348 = v146 - v347;
  v349 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v350 = v146 - v349;
  v351 = *v14;
  v388 = v351;
  v387 = v15;
  v384 = v16;
  v385 = v17;
  v386 = v18;
  v383 = v19;
  v382 = v20;
  v381 = v7;
  v379 = v19;
  v352 = v356;
  v356[2] = v351;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B8, &qword_1B0EA2020);
  sub_1B08A2E10();
  sub_1B0E44FB8();
  v355 = 0;
  v275 = v380;
  v378 = v380;
  MEMORY[0x1E69E5928](v380);
  if (v275)
  {
    v274 = v275;
    v272 = v275;
    v372 = v275;
    v371 = v351;
    v273 = sub_1B07BECC0(&v371);
    if (v273)
    {
      v271 = v273;
      v266 = v273;
      v365 = v273;
      v267 = sub_1B0888AF4();
      v21 = [v272 actionID];
      [v267 deleteMailboxAction_];
      MEMORY[0x1E69E5920](v267);
      v268 = [v272 mailboxName];
      v22 = sub_1B0E44AD8();
      v269 = sub_1B07C10E4(v22, v23);
      v270 = v24;
      MEMORY[0x1E69E5920](v268);
      v363 = v269;
      v364 = v270;
      sub_1B07BA724(v337);
      if (v337)
      {
        v263 = v337;
        v264 = v338;
        v265 = v339;
        v258 = v339;
        v257 = v337;
        v357 = v337;
        v358 = v338;
        v359 = v339;
        v259 = Namespace.removePrefix(_:)(v269, v270, v337);
        v260 = v25;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v361 = v259;
        v362 = v260;

        v261 = v259;
        v262 = v260;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v361 = v269;
        v362 = v270;
        v261 = v269;
        v262 = v270;
      }

      v252 = v262;
      v253 = v261;
      MEMORY[0x1E69E5928](v276);
      MEMORY[0x1E69E5928](v266);
      sub_1B07BF45C(v253, v252);
      v254 = v26;
      v256 = sub_1B0E44AC8();

      v255 = [v266 parent];
      v360.receiver = v276;
      v360.super_class = IMAPAccount;
      objc_msgSendSuper2(&v360, sel_renameMailbox_newName_parent_, v266, v256);
      MEMORY[0x1E69E5920](v255);
      MEMORY[0x1E69E5920](v256);
      MEMORY[0x1E69E5920](v266);
      MEMORY[0x1E69E5920](v276);
      sub_1B039E440(&v361);

      MEMORY[0x1E69E5920](v266);
      MEMORY[0x1E69E5920](v272);
      return MEMORY[0x1E69E5920](v275);
    }

    else
    {
      (*(v345 + 16))(v350, v340, v344);
      sub_1B0394784(v340, v336);
      sub_1B0394784(v336, v334);
      sub_1B03F4FD0(v336, v332);
      v28 = (v334 + *(v330 + 20));
      v214 = *v28;
      v215 = *(v28 + 1);
      sub_1B039480C(v334);
      v217 = 24;
      v229 = 7;
      v29 = swift_allocObject();
      v30 = v215;
      v220 = v29;
      *(v29 + 16) = v214;
      *(v29 + 20) = v30;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v31 = swift_allocObject();
      v32 = v215;
      v216 = v31;
      *(v31 + 16) = v214;
      *(v31 + 20) = v32;

      v228 = 32;
      v33 = swift_allocObject();
      v34 = v216;
      v225 = v33;
      *(v33 + 16) = v277;
      *(v33 + 24) = v34;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v332);
      v218 = swift_allocObject();
      *(v218 + 16) = v351;

      v35 = swift_allocObject();
      v36 = v218;
      v230 = v35;
      *(v35 + 16) = v278;
      *(v35 + 24) = v36;

      v250 = sub_1B0E43988();
      v251 = sub_1B0E458E8();
      v227 = 17;
      v232 = swift_allocObject();
      v222 = 16;
      *(v232 + 16) = 16;
      v233 = swift_allocObject();
      v224 = 4;
      *(v233 + 16) = 4;
      v37 = swift_allocObject();
      v219 = v37;
      *(v37 + 16) = v279;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v219;
      v234 = v38;
      *(v38 + 16) = v280;
      *(v38 + 24) = v39;
      v235 = swift_allocObject();
      *(v235 + 16) = 0;
      v236 = swift_allocObject();
      *(v236 + 16) = 1;
      v40 = swift_allocObject();
      v41 = v220;
      v221 = v40;
      *(v40 + 16) = v281;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v221;
      v237 = v42;
      *(v42 + 16) = v282;
      *(v42 + 24) = v43;
      v238 = swift_allocObject();
      *(v238 + 16) = v222;
      v239 = swift_allocObject();
      *(v239 + 16) = v224;
      v44 = swift_allocObject();
      v223 = v44;
      *(v44 + 16) = v283;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v223;
      v240 = v45;
      *(v45 + 16) = v284;
      *(v45 + 24) = v46;
      v241 = swift_allocObject();
      *(v241 + 16) = 0;
      v242 = swift_allocObject();
      *(v242 + 16) = v224;
      v47 = swift_allocObject();
      v48 = v225;
      v226 = v47;
      *(v47 + 16) = v285;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v226;
      v243 = v49;
      *(v49 + 16) = v286;
      *(v49 + 24) = v50;
      v244 = swift_allocObject();
      *(v244 + 16) = 32;
      v245 = swift_allocObject();
      *(v245 + 16) = 8;
      v51 = swift_allocObject();
      v52 = v230;
      v231 = v51;
      *(v51 + 16) = v287;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v231;
      v247 = v53;
      *(v53 + 16) = v288;
      *(v53 + 24) = v54;
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v246 = sub_1B0E46A48();
      v248 = v55;

      v56 = v232;
      v57 = v248;
      *v248 = v289;
      v57[1] = v56;

      v58 = v233;
      v59 = v248;
      v248[2] = v290;
      v59[3] = v58;

      v60 = v234;
      v61 = v248;
      v248[4] = v291;
      v61[5] = v60;

      v62 = v235;
      v63 = v248;
      v248[6] = v292;
      v63[7] = v62;

      v64 = v236;
      v65 = v248;
      v248[8] = v293;
      v65[9] = v64;

      v66 = v237;
      v67 = v248;
      v248[10] = v294;
      v67[11] = v66;

      v68 = v238;
      v69 = v248;
      v248[12] = v295;
      v69[13] = v68;

      v70 = v239;
      v71 = v248;
      v248[14] = v296;
      v71[15] = v70;

      v72 = v240;
      v73 = v248;
      v248[16] = v297;
      v73[17] = v72;

      v74 = v241;
      v75 = v248;
      v248[18] = v298;
      v75[19] = v74;

      v76 = v242;
      v77 = v248;
      v248[20] = v299;
      v77[21] = v76;

      v78 = v243;
      v79 = v248;
      v248[22] = v300;
      v79[23] = v78;

      v80 = v244;
      v81 = v248;
      v248[24] = v301;
      v81[25] = v80;

      v82 = v245;
      v83 = v248;
      v248[26] = v302;
      v83[27] = v82;

      v84 = v247;
      v85 = v248;
      v248[28] = v303;
      v85[29] = v84;
      sub_1B0394964();

      if (os_log_type_enabled(v250, v251))
      {
        v86 = v355;
        v207 = sub_1B0E45D78();
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v208 = sub_1B03949A8(0, v206, v206);
        v209 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v210 = &v370;
        v370 = v207;
        v211 = &v369;
        v369 = v208;
        v212 = &v368;
        v368 = v209;
        sub_1B0394A48(2, &v370);
        sub_1B0394A48(5, v210);
        v366 = v289;
        v367 = v232;
        sub_1B03949FC(&v366, v210, v211, v212);
        v213 = v86;
        if (v86)
        {

          __break(1u);
        }

        else
        {
          v366 = v290;
          v367 = v233;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v205 = 0;
          v366 = v291;
          v367 = v234;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v204 = 0;
          v366 = v292;
          v367 = v235;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v203 = 0;
          v366 = v293;
          v367 = v236;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v202 = 0;
          v366 = v294;
          v367 = v237;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v201 = 0;
          v366 = v295;
          v367 = v238;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v200 = 0;
          v366 = v296;
          v367 = v239;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v199 = 0;
          v366 = v297;
          v367 = v240;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v198 = 0;
          v366 = v298;
          v367 = v241;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v197 = 0;
          v366 = v299;
          v367 = v242;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v196 = 0;
          v366 = v300;
          v367 = v243;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v195 = 0;
          v366 = v301;
          v367 = v244;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v194 = 0;
          v366 = v302;
          v367 = v245;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          v193 = 0;
          v366 = v303;
          v367 = v247;
          sub_1B03949FC(&v366, &v370, &v369, &v368);
          _os_log_impl(&dword_1B0389000, v250, v251, "[%.*hhx-%.*X] Could not find mailbox for mailbox %s", v207, 0x21u);
          sub_1B03998A8(v208, 0, v206);
          sub_1B03998A8(v209, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v250);
      (*(v345 + 8))(v350, v344);
      MEMORY[0x1E69E5920](v272);
      return MEMORY[0x1E69E5920](v275);
    }
  }

  else
  {
    (*(v345 + 16))(v348, v340, v344);
    sub_1B0394784(v340, v336);
    sub_1B0394784(v336, v334);
    sub_1B03F4FD0(v336, v332);
    v87 = (v334 + *(v330 + 20));
    v155 = *v87;
    v156 = *(v87 + 1);
    sub_1B039480C(v334);
    v158 = 24;
    v170 = 7;
    v88 = swift_allocObject();
    v89 = v156;
    v161 = v88;
    *(v88 + 16) = v155;
    *(v88 + 20) = v89;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v90 = swift_allocObject();
    v91 = v156;
    v157 = v90;
    *(v90 + 16) = v155;
    *(v90 + 20) = v91;

    v169 = 32;
    v92 = swift_allocObject();
    v93 = v157;
    v166 = v92;
    *(v92 + 16) = v304;
    *(v92 + 24) = v93;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v332);
    v159 = swift_allocObject();
    *(v159 + 16) = v351;

    v94 = swift_allocObject();
    v95 = v159;
    v171 = v94;
    *(v94 + 16) = v305;
    *(v94 + 24) = v95;

    v191 = sub_1B0E43988();
    v192 = sub_1B0E458E8();
    v168 = 17;
    v173 = swift_allocObject();
    v163 = 16;
    *(v173 + 16) = 16;
    v174 = swift_allocObject();
    v165 = 4;
    *(v174 + 16) = 4;
    v96 = swift_allocObject();
    v160 = v96;
    *(v96 + 16) = v279;
    *(v96 + 24) = 0;
    v97 = swift_allocObject();
    v98 = v160;
    v175 = v97;
    *(v97 + 16) = v306;
    *(v97 + 24) = v98;
    v176 = swift_allocObject();
    *(v176 + 16) = 0;
    v177 = swift_allocObject();
    *(v177 + 16) = 1;
    v99 = swift_allocObject();
    v100 = v161;
    v162 = v99;
    *(v99 + 16) = v307;
    *(v99 + 24) = v100;
    v101 = swift_allocObject();
    v102 = v162;
    v178 = v101;
    *(v101 + 16) = v308;
    *(v101 + 24) = v102;
    v179 = swift_allocObject();
    *(v179 + 16) = v163;
    v180 = swift_allocObject();
    *(v180 + 16) = v165;
    v103 = swift_allocObject();
    v164 = v103;
    *(v103 + 16) = v283;
    *(v103 + 24) = 0;
    v104 = swift_allocObject();
    v105 = v164;
    v181 = v104;
    *(v104 + 16) = v309;
    *(v104 + 24) = v105;
    v182 = swift_allocObject();
    *(v182 + 16) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v165;
    v106 = swift_allocObject();
    v107 = v166;
    v167 = v106;
    *(v106 + 16) = v310;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v167;
    v184 = v108;
    *(v108 + 16) = v311;
    *(v108 + 24) = v109;
    v185 = swift_allocObject();
    *(v185 + 16) = 32;
    v186 = swift_allocObject();
    *(v186 + 16) = 8;
    v110 = swift_allocObject();
    v111 = v171;
    v172 = v110;
    *(v110 + 16) = v312;
    *(v110 + 24) = v111;
    v112 = swift_allocObject();
    v113 = v172;
    v188 = v112;
    *(v112 + 16) = v313;
    *(v112 + 24) = v113;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v187 = sub_1B0E46A48();
    v189 = v114;

    v115 = v173;
    v116 = v189;
    *v189 = v314;
    v116[1] = v115;

    v117 = v174;
    v118 = v189;
    v189[2] = v315;
    v118[3] = v117;

    v119 = v175;
    v120 = v189;
    v189[4] = v316;
    v120[5] = v119;

    v121 = v176;
    v122 = v189;
    v189[6] = v317;
    v122[7] = v121;

    v123 = v177;
    v124 = v189;
    v189[8] = v318;
    v124[9] = v123;

    v125 = v178;
    v126 = v189;
    v189[10] = v319;
    v126[11] = v125;

    v127 = v179;
    v128 = v189;
    v189[12] = v320;
    v128[13] = v127;

    v129 = v180;
    v130 = v189;
    v189[14] = v321;
    v130[15] = v129;

    v131 = v181;
    v132 = v189;
    v189[16] = v322;
    v132[17] = v131;

    v133 = v182;
    v134 = v189;
    v189[18] = v323;
    v134[19] = v133;

    v135 = v183;
    v136 = v189;
    v189[20] = v324;
    v136[21] = v135;

    v137 = v184;
    v138 = v189;
    v189[22] = v325;
    v138[23] = v137;

    v139 = v185;
    v140 = v189;
    v189[24] = v326;
    v140[25] = v139;

    v141 = v186;
    v142 = v189;
    v189[26] = v327;
    v142[27] = v141;

    v143 = v188;
    v144 = v189;
    v189[28] = v328;
    v144[29] = v143;
    sub_1B0394964();

    if (os_log_type_enabled(v191, v192))
    {
      v145 = v355;
      v148 = sub_1B0E45D78();
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v149 = sub_1B03949A8(0, v147, v147);
      v150 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v151 = &v377;
      v377 = v148;
      v152 = &v376;
      v376 = v149;
      v153 = &v375;
      v375 = v150;
      sub_1B0394A48(2, &v377);
      sub_1B0394A48(5, v151);
      v373 = v314;
      v374 = v173;
      sub_1B03949FC(&v373, v151, v152, v153);
      v154 = v145;
      if (v145)
      {

        __break(1u);
      }

      else
      {
        v373 = v315;
        v374 = v174;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[12] = 0;
        v373 = v316;
        v374 = v175;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[11] = 0;
        v373 = v317;
        v374 = v176;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[10] = 0;
        v373 = v318;
        v374 = v177;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[9] = 0;
        v373 = v319;
        v374 = v178;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[8] = 0;
        v373 = v320;
        v374 = v179;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[7] = 0;
        v373 = v321;
        v374 = v180;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[6] = 0;
        v373 = v322;
        v374 = v181;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[5] = 0;
        v373 = v323;
        v374 = v182;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[4] = 0;
        v373 = v324;
        v374 = v183;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[3] = 0;
        v373 = v325;
        v374 = v184;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[2] = 0;
        v373 = v326;
        v374 = v185;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[1] = 0;
        v373 = v327;
        v374 = v186;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        v146[0] = 0;
        v373 = v328;
        v374 = v188;
        sub_1B03949FC(&v373, &v377, &v376, &v375);
        _os_log_impl(&dword_1B0389000, v191, v192, "[%.*hhx-%.*X] Could not find failed rename action for mailbox %s", v148, 0x21u);
        sub_1B03998A8(v149, 0, v147);
        sub_1B03998A8(v150, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v191);
    (*(v345 + 8))(v348, v344);
    return MEMORY[0x1E69E5920](v275);
  }
}

uint64_t sub_1B0883208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v39 = 0;
  v4 = _s18MailboxPersistenceVMa(0);
  v37 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v19 - v37;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v19 - v40;
  v42 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v19 - v42;
  v48 = sub_1B0E42E68();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v19 - v51;
  v53 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v19 - v53;
  v55 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v19 - v55;
  v69 = &v19 - v55;
  v68 = v11;
  v57 = *v12;
  v67 = v57;
  v66 = v13;
  v65 = v14;
  MEMORY[0x1E69E5928](v57);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v58 = result;
  if (result)
  {
    v36 = v58;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v57);
    v36 = 0;
  }

  v35 = v36;
  if (v36)
  {
    v34 = v35;
    v32 = v35;
    v64 = v35;
    v16 = [v35 destinationMailboxURL];
    v33 = v16;
    if (v16)
    {
      v31 = v33;
      v30 = v33;
      sub_1B0E42DE8();
      (*(v49 + 32))(v43, v54, v48);
      (*(v49 + 56))(v43, 0, 1, v48);
      MEMORY[0x1E69E5920](v30);
    }

    else
    {
      (*(v49 + 56))(v43, 1, 1, v48);
    }

    if ((*(v49 + 48))(v43, 1, v48) == 1)
    {
      sub_1B06E3800(v43);
      return MEMORY[0x1E69E5920](v32);
    }

    else
    {
      v17 = v38;
      (*(v49 + 32))(v56, v43, v48);
      v25 = v44 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
      v26 = v61;
      swift_beginAccess();
      sub_1B03F4D78(v25, v17);
      swift_endAccess();
      v27 = *(v49 + 16);
      v28 = v49 + 16;
      v27(v41, v56, v48);
      v18 = *(v49 + 56);
      v29 = 1;
      v18(v41, 0);
      sub_1B07BF670(v41, &v62);
      sub_1B06E3800(v41);
      sub_1B03F4F08(v38);
      v59[2] = v62;
      v60 = v63 & 1 & v29;
      v24 = v60 == 0;
      if (v60)
      {
        v27(v52, v56, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E36F0, &qword_1B0E9EF80);
        sub_1B0E454D8();
        v23 = *(v49 + 8);
        v22 = v49 + 8;
        v23(v54, v48);
        MEMORY[0x1E69E5928](v32);
        v20 = [v32 persistentID];
        MEMORY[0x1E69E5920](v32);
        v21 = v59;
        v59[0] = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
        sub_1B0E454D8();
        MEMORY[0x1E69E5920](v59[1]);
        v23(v56, v48);
      }

      else
      {
        (*(v49 + 8))(v56, v48);
      }

      return MEMORY[0x1E69E5920](v32);
    }
  }

  return result;
}

uint64_t sub_1B0883A04(uint64_t a1)
{
  swift_beginAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0E42E68();
  sub_1B07BAD2C();
  v2 = sub_1B0E454A8();

  return v2;
}

uint64_t sub_1B0883A8C(uint64_t a1)
{
  sub_1B0E45C48();
  sub_1B074E39C();
  return sub_1B0E454A8();
}

uint64_t sub_1B0883B00(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

BOOL sub_1B0883B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B08A32FC();
  if (sub_1B0E46AE8())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = static OpaqueMailboxID.== infix(_:_:)(a2, a3, a5, a6);

    return (v8 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0883C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C0, &qword_1B0E9E040);
  sub_1B08A30BC();
  sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C8, &qword_1B0E9E048);
  sub_1B08A3144();
  sub_1B0E454B8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B0E454B8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27D0, &qword_1B0E9E050);
  sub_1B08A31CC();
  return sub_1B0E454B8();
}

uint64_t sub_1B0883ED4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B071F9F0();
  return a1;
}

BOOL sub_1B0883FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0451F2C();
  sub_1B08A63E8();
  v13 = sub_1B0E44758();

  if (v13)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08A658C();
    v12 = sub_1B0E44758();

    if (v12)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = sub_1B0E44758();

      if (v11)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B08A34FC();
        v10 = sub_1B0E44758();

        return (v10 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0884248(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27D8, &qword_1B0E9E058);
  sub_1B0E46A48();
  sub_1B0451F2C();
  v3 = sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27E0, &qword_1B0E9E060);
  sub_1B0E46A48();
  sub_1B0E445D8();
  sub_1B0E46A48();
  sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27E8, &qword_1B0E9E068);
  sub_1B0E46A48();
  sub_1B0E445D8();
  v5 = sub_1B0883ED4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27B8, &qword_1B0EA2020);
  sub_1B08A2E10();
  sub_1B0E45018();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03F4F08(a2);

  sub_1B071F9F0();
  return v5;
}

double sub_1B0884638()
{
  [v0 actionID];
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  return result;
}

uint64_t sub_1B08846DC(id *a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v83 = 0;
  v82 = 0;
  v59 = *a1;
  v91 = v59;
  v90 = a2;
  v89 = a3;
  v63 = [v59 mailboxName];
  v3 = sub_1B0E44AD8();
  v60 = v4;
  v64 = sub_1B07C12C0(v3, v4);
  v61 = v64;
  v62 = v5;

  if (!v64)
  {
    result = v56;
    v53 = v56;
    return result;
  }

  v54 = v61;
  v55 = v62;
  v50 = v62;
  v51 = v61;
  v87 = v61;
  v88 = v62;
  v7 = [v59 actionType];
  v52 = v7;
  if (v7 == 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0884638();
    v67 = v8;
    v68 = 0;
    v65 = v51;
    v66 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
    sub_1B0E44788();
    v49 = v56;
  }

  else if (v52 == 2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0884638();
    v47 = v10;
    v11 = [v59 mailboxID];
    v48 = sub_1B039BF24(v11, v12, v13, v14, v15, v16, v17, v18);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v71 = v19;
    v72 = v20;
    v73 = v21;
    v69 = v51;
    v70 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22C0, &unk_1B0E9E070);
    sub_1B0E44788();
    v49 = v56;
  }

  else if (v52 == 3)
  {
    v46 = [v59 renamedMailboxName];
    if (v46)
    {
      v45 = v46;
      v40 = v46;
      v41 = sub_1B0E44AD8();
      v42 = v22;

      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    v38 = v56;
    v84[0] = v43;
    v84[1] = v44;
    v36 = &v29;
    MEMORY[0x1EEE9AC00](&v29);
    v37 = v28;
    v28[2] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    v25 = v38;
    sub_1B039A570(sub_1B08A6924, v37, v24, MEMORY[0x1E69E73E0], &type metadata for MailboxName, v26, &v85);
    v39 = v25;
    if (v25)
    {
      result = 0;
      __break(1u);
      return result;
    }

    sub_1B03B1198(v84);
    v34 = v85;
    v35 = v86;
    if (v85)
    {
      v32 = v34;
      v33 = v35;
      v30 = v35;
      v31 = v34;
      v82 = v34;
      v83 = v35;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0884638();
      v80 = v27;
      v81 = 0;
      v78 = v31;
      v79 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
      sub_1B0E44788();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v76 = v51;
      v77 = v50;
      v74 = v31;
      v75 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2968, &qword_1B0E9EF78);
      sub_1B0E44788();
    }

    v49 = v39;
  }

  else
  {
    v49 = v56;
  }

  v29 = v49;

  result = v29;
  v53 = v29;
  return result;
}

unsigned __int8 *sub_1B0884D1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B07C12C0(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B0884D88(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v13 = a3;
  v10 = a1;
  v11 = 0;
  v19 = a1;
  v20 = a2;
  v17 = a3;
  v18 = a4;
  v14 = MailboxName.isInbox.getter(a1, a2);
  v15 = MailboxName.isInbox.getter(v13, v12);
  if (v14)
  {
    v8 = (v15 & 1) == 0;
    v9 = v11;
  }

  else if (v15)
  {
    v8 = 0;
    v9 = v11;
  }

  else
  {
    v4 = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6[1] = v6;
    MEMORY[0x1EEE9AC00](v6);
    sub_1B0E45208();
    v7 = v4;

    v8 = v16;
    v9 = v7;
  }

  return v8 & 1;
}

void *sub_1B0884F5C()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E45208();
  if (!v1)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0885024@<X0>(BOOL *a5@<X8>)
{
  sub_1B0E450E8();
  sub_1B0E450E8();
  sub_1B0E46B78();
  __s1 = sub_1B0E450C8();
  v5 = sub_1B0E450C8();
  result = memcmp(__s1, v5, v11);
  if ((result & 0x80000000) != 0)
  {
    *a5 = 1;
  }

  else if (result <= 0)
  {
    v8 = sub_1B0E450E8();
    v7 = sub_1B0E450E8();
    result = v8;
    *a5 = v8 < v7;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

uint64_t sub_1B0885194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = v7;
  v50 = a7;
  v49 = a6;
  v48 = a5;
  v47 = a4;
  v46 = a3;
  v45 = a2;
  v44 = a1;
  v63 = 0;
  v59 = 0;
  v58 = 0;
  v71 = a6;
  v70 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v65 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v48;
  v51 = 0;
  v52 = sub_1B0E44F58();
  v36 = v52;

  v64[1] = v52;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64[0] = v46;
  v37 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v20[2] = v8;
  v20[3] = v50;
  v20[4] = v44;
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v39 = v19;
  v19[2] = sub_1B08A33D8;
  v19[3] = v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22C0, &unk_1B0E9E070);
  sub_1B07C8614();
  v10 = sub_1B0E44F58();
  v41 = 0;
  v42 = v10;
  v29 = v10;
  sub_1B039E440(v64);
  v63 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61 = v47;
  v60 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v11 = v46;
  v12 = v47;
  v31 = v19;
  v33 = &v19[-10];
  v19[-8] = v13;
  v19[-7] = v14;
  v19[-6] = v15;
  v19[-5] = v16;
  v19[-4] = v11;
  v19[-3] = v12;
  v19[-2] = v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22B8, &unk_1B0E9C110);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
  v32 = v35;
  sub_1B07C8554();
  sub_1B0E44FD8();

  sub_1B039E440(&v61);
  v24 = v62;
  v23 = v62;
  v59 = v62;
  v25 = &unk_1F26D76E8;
  v26 = sub_1B0E45238();
  v28 = sub_1B0E45238();
  v27 = v28;

  v58 = v28;
  v57 = v28;
  sub_1B08A3474();
  if (sub_1B0E45748())
  {

    v22 = 1;
  }

  else
  {
    sub_1B08896A0();

    v22 = 0;
  }

  return v22 & 1;
}

void sub_1B0885834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(__b, 0, sizeof(__b));
  v20 = 0;
  v21 = 0;
  v31 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v26 = a6;
  v25 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0451F2C();
  sub_1B0E445C8();
  memcpy(__b, v32, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2808, &qword_1B0E9E088);
    sub_1B0E446D8();
    v9 = v22;
    v10 = v23;
    if (!v22)
    {
      break;
    }

    v20 = v22;
    v21 = v23;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v19 = v7;
    v17[2] = v9;
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C8, &qword_1B0E9E048);
    sub_1B08A3144();
    sub_1B08A34FC();
    v8 = sub_1B0E450A8();
    sub_1B039E440(&v19);
    if ((v8 & 1) == 0)
    {
      sub_1B07C5844(v9, v10, a6, v17);
    }
  }

  sub_1B06B91B0();
}

uint64_t sub_1B0885A84(uint64_t a1)
{
  v8 = sub_1B0888AF4();
  (MEMORY[0x1E69E5928])();
  v10 = [v9 identifier];
  if (v10)
  {
    sub_1B0E44AD8();
    v6 = v1;
    MEMORY[0x1E69E5920](v10);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v3 = sub_1B0E44AC8();
  (MEMORY[0x1E69E5920])();

  v4 = [v8 allMailboxActionForAccountID_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v8);
  sub_1B08A3574();
  v5 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1B0885C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v262 = &v325;
  v300 = a8;
  v299 = a7;
  v288 = a6;
  v287 = a5;
  v286 = a4;
  v285 = a3;
  v295 = a2;
  v291 = a1;
  v263 = a13;
  v267 = a12;
  v264 = a12;
  v296 = a11;
  v265 = a11;
  v301 = a9;
  v266 = a9;
  v302 = a10;
  v284 = 0;
  v355 = 0;
  v354 = 0;
  v353 = 0u;
  v352 = 0u;
  v351 = 0;
  v350 = 0;
  v349 = 0;
  v348 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v341 = 0;
  v340 = 0;
  v339 = 0;
  v338[1] = 0;
  v338[0] = 0;
  v321 = 0;
  v268 = sub_1B0E439A8();
  v269 = *(v268 - 8);
  v270 = v269;
  v271 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](0);
  v273 = (v271 + 15) & 0xFFFFFFFFFFFFFFF0;
  v272 = v120 - v273;
  MEMORY[0x1EEE9AC00](v14);
  v274 = v120 - v273;
  v275 = *(v15 - 8);
  v276 = v275;
  MEMORY[0x1EEE9AC00](v16);
  v277 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = _s6LoggerVMa(v18);
  v281 = *(*(v278 - 8) + 64);
  MEMORY[0x1EEE9AC00](v284);
  v283 = (v281 + 15) & 0xFFFFFFFFFFFFFFF0;
  v279 = v120 - v283;
  MEMORY[0x1EEE9AC00](v19);
  v280 = v120 - v283;
  MEMORY[0x1EEE9AC00](v20);
  v282 = v120 - v283;
  MEMORY[0x1EEE9AC00](v21);
  v303 = v120 - v283;
  _s18MailboxPersistenceVMa(v22);
  MEMORY[0x1EEE9AC00](v284);
  v298 = v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for MailboxUpdateTree(v24);
  v289 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v290 = (v120 - ((v289 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v297 = (v120 - v27);
  v292 = (v120 - v27);
  v355 = v291;
  v354 = v28;
  *&v352 = v29;
  *(&v352 + 1) = v30;
  *&v353 = v31;
  *(&v353 + 1) = v32;
  v349 = v33;
  v350 = v34;
  v351 = v301;
  v348 = v302;
  v347 = v35;
  v346 = v13;
  v293 = swift_allocBox();
  v294 = v36;
  v345 = v36;
  v37 = v13;
  sub_1B03F4D78(v295, v298);
  sub_1B07BA724(v299);

  sub_1B0394784(v296, v303);
  sub_1B08897D0(v304, v298, v299, v300, v301, v302, v303, v297);
  v305 = 0;
  v306 = 0;
  sub_1B08A364C(v292, v294);
  v38 = sub_1B0889C84();
  v258 = v38;
  v343 = v38;
  (*(v276 + 16))(v277, v291, v264);
  sub_1B07BA724(v299);
  v259 = v120;
  MEMORY[0x1EEE9AC00](v120);
  v39 = v299;
  v40 = v300;
  v120[-6] = v41;
  v120[-5] = v42;
  LOBYTE(v120[-4]) = v43;
  v120[-3] = v39;
  v120[-2] = v40;
  v120[-1] = v44;
  v45 = sub_1B0E44FC8();
  v260 = 0;
  v261 = v45;
  v196 = v45;
  sub_1B07BA794(v299);
  v342 = v196;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2810, &qword_1B0E9E090);
  v197 = v198;
  v199 = sub_1B08A38A4();
  v200 = &v342;
  v46 = sub_1B088C478(v299, v300, v266, v198, v199);
  v47 = v274;
  v202 = v46;
  v201 = v46;
  sub_1B039E440(v200);
  v341 = v202;
  (*(v270 + 16))(v47, v265, v268);
  sub_1B0394784(v265, v282);
  sub_1B0394784(v282, v280);
  sub_1B03F4FD0(v282, v279);
  v48 = (v280 + *(v278 + 20));
  v204 = *v48;
  v205 = *(v48 + 1);
  sub_1B039480C(v280);
  v203 = 24;
  v235 = 7;
  v49 = swift_allocObject();
  v50 = v205;
  v215 = v49;
  *(v49 + 16) = v204;
  *(v49 + 20) = v50;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v51 = swift_allocObject();
  v52 = v205;
  v206 = v51;
  *(v51 + 16) = v204;
  *(v51 + 20) = v52;

  v234 = 32;
  v53 = swift_allocObject();
  v54 = v206;
  v227 = v53;
  *(v53 + 16) = sub_1B039BBE8;
  *(v53 + 24) = v54;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v279);

  v257 = sub_1B0E43988();
  v207 = v257;
  v256 = sub_1B0E458C8();
  v208 = v256;
  v231 = 17;
  v238 = swift_allocObject();
  v209 = v238;
  v218 = 16;
  *(v238 + 16) = 16;
  v239 = swift_allocObject();
  v210 = v239;
  v225 = 4;
  *(v239 + 16) = 4;
  v55 = swift_allocObject();
  v211 = v55;
  *(v55 + 16) = sub_1B0394C30;
  v221 = 0;
  *(v55 + 24) = 0;
  v56 = swift_allocObject();
  v57 = v211;
  v240 = v56;
  v212 = v56;
  *(v56 + 16) = sub_1B0394C24;
  *(v56 + 24) = v57;
  v241 = swift_allocObject();
  v213 = v241;
  v230 = 0;
  *(v241 + 16) = 0;
  v242 = swift_allocObject();
  v214 = v242;
  *(v242 + 16) = 1;
  v58 = swift_allocObject();
  v59 = v215;
  v216 = v58;
  *(v58 + 16) = sub_1B039BA2C;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v216;
  v243 = v60;
  v217 = v60;
  *(v60 + 16) = sub_1B039BA88;
  *(v60 + 24) = v61;
  v244 = swift_allocObject();
  v219 = v244;
  *(v244 + 16) = v218;
  v245 = swift_allocObject();
  v220 = v245;
  *(v245 + 16) = v225;
  v62 = swift_allocObject();
  v63 = v221;
  v222 = v62;
  *(v62 + 16) = sub_1B039BB94;
  *(v62 + 24) = v63;
  v64 = swift_allocObject();
  v65 = v222;
  v246 = v64;
  v223 = v64;
  *(v64 + 16) = sub_1B0394C24;
  *(v64 + 24) = v65;
  v247 = swift_allocObject();
  v224 = v247;
  *(v247 + 16) = v230;
  v248 = swift_allocObject();
  v226 = v248;
  *(v248 + 16) = v225;
  v66 = swift_allocObject();
  v67 = v227;
  v228 = v66;
  *(v66 + 16) = sub_1B039BBA0;
  *(v66 + 24) = v67;
  v68 = swift_allocObject();
  v69 = v228;
  v249 = v68;
  v229 = v68;
  *(v68 + 16) = sub_1B039BC08;
  *(v68 + 24) = v69;
  v250 = swift_allocObject();
  v232 = v250;
  *(v250 + 16) = v230;
  v251 = swift_allocObject();
  v233 = v251;
  *(v251 + 16) = 8;
  v70 = swift_allocObject();
  v71 = v293;
  v236 = v70;
  *(v70 + 16) = sub_1B08A392C;
  *(v70 + 24) = v71;
  v72 = swift_allocObject();
  v73 = v236;
  v254 = v72;
  v237 = v72;
  *(v72 + 16) = sub_1B03B0DF8;
  *(v72 + 24) = v73;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v252 = sub_1B0E46A48();
  v253 = v74;

  v75 = v238;
  v76 = v253;
  *v253 = sub_1B0398F5C;
  v76[1] = v75;

  v77 = v239;
  v78 = v253;
  v253[2] = sub_1B0398F5C;
  v78[3] = v77;

  v79 = v240;
  v80 = v253;
  v253[4] = sub_1B0399178;
  v80[5] = v79;

  v81 = v241;
  v82 = v253;
  v253[6] = sub_1B0398F5C;
  v82[7] = v81;

  v83 = v242;
  v84 = v253;
  v253[8] = sub_1B0398F5C;
  v84[9] = v83;

  v85 = v243;
  v86 = v253;
  v253[10] = sub_1B039BA94;
  v86[11] = v85;

  v87 = v244;
  v88 = v253;
  v253[12] = sub_1B0398F5C;
  v88[13] = v87;

  v89 = v245;
  v90 = v253;
  v253[14] = sub_1B0398F5C;
  v90[15] = v89;

  v91 = v246;
  v92 = v253;
  v253[16] = sub_1B0399178;
  v92[17] = v91;

  v93 = v247;
  v94 = v253;
  v253[18] = sub_1B0398F5C;
  v94[19] = v93;

  v95 = v248;
  v96 = v253;
  v253[20] = sub_1B0398F5C;
  v96[21] = v95;

  v97 = v249;
  v98 = v253;
  v253[22] = sub_1B03991EC;
  v98[23] = v97;

  v99 = v250;
  v100 = v253;
  v253[24] = sub_1B0398F5C;
  v100[25] = v99;

  v101 = v251;
  v102 = v253;
  v253[26] = sub_1B0398F5C;
  v102[27] = v101;

  v103 = v253;
  v104 = v254;
  v253[28] = sub_1B0399260;
  v103[29] = v104;
  sub_1B0394964();

  if (os_log_type_enabled(v257, v256))
  {
    v105 = v260;
    v190 = sub_1B0E45D78();
    v186 = v190;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v188 = 0;
    v191 = sub_1B03949A8(0, v187, v187);
    v189 = v191;
    v192 = sub_1B03949A8(v188, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v311 = v190;
    v310 = v191;
    v309 = v192;
    v193 = &v311;
    sub_1B0394A48(0, &v311);
    sub_1B0394A48(5, v193);
    v307 = sub_1B0398F5C;
    v308 = v209;
    sub_1B03949FC(&v307, v193, &v310, &v309);
    v194 = v105;
    v195 = v105;
    if (v105)
    {
      v184 = 0;

      __break(1u);
    }

    else
    {
      v307 = sub_1B0398F5C;
      v308 = v210;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v182 = 0;
      v183 = 0;
      v307 = sub_1B0399178;
      v308 = v212;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v180 = 0;
      v181 = 0;
      v307 = sub_1B0398F5C;
      v308 = v213;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v178 = 0;
      v179 = 0;
      v307 = sub_1B0398F5C;
      v308 = v214;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v176 = 0;
      v177 = 0;
      v307 = sub_1B039BA94;
      v308 = v217;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v174 = 0;
      v175 = 0;
      v307 = sub_1B0398F5C;
      v308 = v219;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v172 = 0;
      v173 = 0;
      v307 = sub_1B0398F5C;
      v308 = v220;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v170 = 0;
      v171 = 0;
      v307 = sub_1B0399178;
      v308 = v223;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v168 = 0;
      v169 = 0;
      v307 = sub_1B0398F5C;
      v308 = v224;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v166 = 0;
      v167 = 0;
      v307 = sub_1B0398F5C;
      v308 = v226;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v164 = 0;
      v165 = 0;
      v307 = sub_1B03991EC;
      v308 = v229;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v162 = 0;
      v163 = 0;
      v307 = sub_1B0398F5C;
      v308 = v232;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v160 = 0;
      v161 = 0;
      v307 = sub_1B0398F5C;
      v308 = v233;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v158 = 0;
      v159 = 0;
      v307 = sub_1B0399260;
      v308 = v237;
      sub_1B03949FC(&v307, &v311, &v310, &v309);
      v156 = 0;
      v157 = 0;
      _os_log_impl(&dword_1B0389000, v207, v208, "[%.*hhx-%.*X] Found %ld local mailbox(es).", v186, 0x21u);
      v155 = 0;
      sub_1B03998A8(v189, 0, v187);
      sub_1B03998A8(v192, v155, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v185 = v156;
    }
  }

  else
  {
    v106 = v260;

    v185 = v106;
  }

  v153 = v185;

  (*(v270 + 8))(v274, v268);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v151 = sub_1B0451F2C();
  v148 = v151;
  v150 = &type metadata for MailboxName;
  v149 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v340 = v149;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v152 = sub_1B0E446B8();
  v339 = v152;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v337 = v201;
  sub_1B08A3934();
  sub_1B0E45798();
  for (i = v153; ; i = v136)
  {
    v147 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2818, &qword_1B0E9E098);
    sub_1B0E46518();
    v327 = *v262;
    v107 = v262[1];
    v108 = v262[2];
    v109 = v262[3];
    v331 = v326;
    v330 = v109;
    v329 = v108;
    v328 = v107;
    v332 = v327;
    v336 = v326;
    v335 = v109;
    v334 = v108;
    v333 = v107;
    if (!v327)
    {
      break;
    }

    v356[0] = v332;
    v357 = v336;
    v356[3] = v335;
    v356[2] = v334;
    v356[1] = v333;
    v318 = v149;
    RemoteMailbox.name.getter();
    v316 = v110;
    v317 = v111;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C8, &qword_1B0E9E048);
    v143 = sub_1B08A3144();
    v144 = sub_1B08A34FC();
    v145 = &v316;
    v146 = sub_1B0E450A8();
    sub_1B039E440(v145);
    if (v146 & 1) != 0 || (v315 = v152, RemoteMailbox.name.getter(), v313 = v112, v314 = v113, v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2820, &qword_1B0E9E0A0), sub_1B08A4004(), v140 = &v313, v141 = sub_1B0E450A8(), sub_1B039E440(v140), (v141))
    {
      sub_1B039E440(&v332);
      v136 = v147;
    }

    else
    {
      v114 = v147;
      sub_1B03BB0B4(&v332, &v312);
      v137 = v120;
      MEMORY[0x1EEE9AC00](v120);
      v120[-2] = v115;
      v120[-1] = v356;
      sub_1B083F2C4(sub_1B08A408C, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v116, MEMORY[0x1E69E7CA8]);
      v138 = v114;
      if (v114)
      {
        sub_1B039E440(&v332);
        __break(1u);
        goto LABEL_17;
      }

      v135 = &v332;
      sub_1B039E440(&v332);
      sub_1B039E440(v135);
      v136 = v138;
    }
  }

  v117 = v147;
  sub_1B039E440(v338);
  v124 = &v324;
  v133 = 0;
  swift_beginAccess();
  sub_1B088D7A8();
  swift_endAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v131 = &type metadata for MailboxName;
  v126 = &unk_1F26D76E8;
  v125 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v323 = v125;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E27C0, &qword_1B0E9E040);
  v130 = sub_1B08A30BC();
  v128 = sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v127 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v322 = v127;
  v132 = sub_1B0E454B8();
  v321 = v132;
  v320[4] = v201;
  v320[3] = sub_1B0E44588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B0E44FD8();
  v134 = v117;
  if (!v117)
  {
    v121 = v320[5];
    v120[97] = v320;
    v122 = 0;
    swift_beginAccess();
    sub_1B088DA10(v121, v132);
    v118 = v290;
    swift_endAccess();

    [v304 resetSpecialMailboxes];
    v123 = &v319;
    swift_beginAccess();
    sub_1B08A39BC(v294, v118);
    swift_endAccess();
    sub_1B088DFA4();
    sub_1B08A3DE8(v290);

    return v134;
  }

LABEL_17:
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1B0888858(id *a1, uint64_t a2, int a3)
{
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v14 = *a1;
  v33 = v14;
  v31 = a2;
  v32 = a3;
  v30 = [v14 actionType];
  v29 = 1;
  type metadata accessor for EDMailboxActionType(0);
  sub_1B08A6950();
  v16 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((v16 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v10 = [v14 mailboxName];
  v3 = sub_1B0E44AD8();
  v11 = sub_1B07C10E4(v3, v4);
  v12 = v5;
  MEMORY[0x1E69E5920](v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = a2;
  v28 = a3;
  v23 = v11;
  v24 = v12;
  sub_1B08A6A60(&v27, &v25);
  if (v11)
  {
    sub_1B08A6A60(&v23, &v21);
    if (v25)
    {
      v19 = v21;
      v20 = v22;
      v17 = v25;
      v18 = v26;
      if ((v22 | (v22 << 32)) == (v26 | (v26 << 32)))
      {
        v9 = sub_1B04520BC(v21, v25);
      }

      else
      {
        v9 = 0;
      }

      sub_1B039E440(&v17);
      sub_1B039E440(&v19);
      sub_1B039E440(&v23);
      v8 = v9;
      goto LABEL_12;
    }

    sub_1B039E440(&v21);
  }

  else if (!v25)
  {
    sub_1B039E440(&v23);
    v8 = 1;
    goto LABEL_12;
  }

  sub_1B06E38F8(&v23);
  v8 = 0;
LABEL_12:

  v7 = v8;
LABEL_16:
  MEMORY[0x1E69E5920](v14);

  return v7 & 1;
}

id sub_1B0888AF4()
{
  v12 = [v0 library];
  MEMORY[0x1E69E5928](v12);
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    LOBYTE(v2) = 2;
    v4 = 494;
    LODWORD(v6) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v10 = [v11 persistence];
  MEMORY[0x1E69E5920](v11);
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    LOBYTE(v3) = 2;
    v5 = 494;
    LODWORD(v7) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v8 = [v9 mailboxActionPersistence];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v12);
  return v8;
}

BOOL sub_1B0888CC8(id *a1, uint64_t a2)
{
  v23 = 0;
  v22 = 0;
  v6 = *a1;
  v23 = v6;
  v22 = a2;
  v21 = [v6 actionType];
  v20 = 3;
  type metadata accessor for EDMailboxActionType(0);
  sub_1B08A6950();
  v7 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v6);
  if ((v7 & 1) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  MailboxRowID.init(_:)([v6 mailboxID], &v18);
  v16 = v18;
  v17 = v19 & 1;
  v14 = a2;
  v15 = 0;
  sub_1B08A69D0(&v16, v11);
  sub_1B08A69D0(&v14, &v12);
  if (v11[8])
  {
    if (v13)
    {
      v4 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1B08A69D0(v11, &v10);
  if (v13)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_8;
  }

  v9 = v10;
  v8 = v12;
  v4 = static MailboxRowID.== infix(_:_:)(&v9, &v8);
LABEL_8:
  v3 = v4;
LABEL_12:
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t sub_1B0888EA0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v9 = a4;
  *(&v9 + 1) = a5;
  memcpy(__dst, a1, sizeof(__dst));
  v13 = a2;
  v14 = a3;
  v15 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  RemoteMailbox.name.getter();
  v11 = v5;
  v12 = v6;
  sub_1B0451F2C();
  sub_1B0E44778();
  sub_1B039E440(&v11);
}

uint64_t sub_1B0888F84(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0E45028();

  if (v10)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_1B08890AC(const void *a1, uint64_t a2, int a3)
{
  memcpy(__dst, a1, sizeof(__dst));
  RemoteMailbox.name.getter();
  v8 = static MailboxName.== infix(_:_:)(v3, v4, a2, a3);

  return v8 & 1;
}

uint64_t sub_1B0889144@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a3 = result;
  *(a3 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B08891B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v28 = a7;
  v29 = a3;
  v30 = a1;
  v41 = a9;
  v31 = a9;
  v32 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0u;
  v57 = 0u;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v49 = 0;
  v48 = 0;
  v64 = a8;
  v63 = a1;
  v38 = *a2;
  v33 = v38;
  v39 = *(a2 + 2);
  v34 = v39;
  v36 = a2[2];
  v35 = v36;
  v60 = v38;
  LODWORD(v61) = v39;
  v62 = v36;
  v59 = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  *&v58 = a6;
  *(&v58 + 1) = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = v38;
  v56 = v39;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = v36;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = v38;
  v45 = v39;
  v42 = v37;
  v43 = sub_1B0E45028();
  if (v37)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    v27 = v43;

    if (v43)
    {
      v46 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
      sub_1B0E452E8();

      v26 = v42;
      return result;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50 = v33;
    v51 = v34;
    sub_1B0451F2C();
    v23 = &v50;
    sub_1B0E44778();
    sub_1B039E440(&v50);
    v24 = v52;
    v25 = v53;
    if (v52)
    {
      v21 = v24;
      v22 = v25;
      v15 = v25;
      v17 = v24;
      v14 = v42;
      v48 = v24;
      v49 = v25;

      v10 = v42;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = &v12;
      MEMORY[0x1EEE9AC00](&v12);
      v11 = sub_1B0E45028();
      v18 = v10;
      v19 = v11;
      v13 = v19;

      if ((v13 & 1) == 0)
      {
        v47 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
        sub_1B0E452E8();

        result = v18;
        v26 = v18;
        return result;
      }

      v20 = v18;
    }

    else
    {

      v20 = v42;
    }

    v12 = v20;

    result = v12;
    v26 = v12;
  }

  return result;
}

uint64_t sub_1B08896A0()
{
  v3 = sub_1B0888AF4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2800, &qword_1B0E9E080);
  v5 = sub_1B039A494();
  v0 = sub_1B08A3474();
  sub_1B039CA88(sub_1B07CAF1C, 0, v4, v5, MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v6);
  v2 = sub_1B0E451A8();

  [v3 deleteMailboxActions_];
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](v3);
}

void sub_1B08897D0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v44 = a8;
  v63 = a1;
  v62 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v51 = 0;
  updated = type metadata accessor for MailboxUpdateTree(0);
  v48 = *(*(updated - 1) + 64);
  v45 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = (v37 - v45);
  v47 = v45;
  MEMORY[0x1EEE9AC00](v8);
  v55 = (v37 - v47);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v54 = (v37 - v49);
  v74 = v37 - v49;
  v73 = v63;
  v72 = v10;
  v69 = v11;
  v70 = v12;
  v71 = v13;
  v68 = v14;
  v67 = v15;
  v50 = *(v16 + 40);
  v17 = sub_1B0E46A48();
  v18 = v54;
  v19 = v17;
  v20 = updated;
  *(v54 + v50) = v19;
  v21 = (v18 + v20[11]);
  *v21 = 0;
  v21[1] = 0;
  v52 = v20[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
  v22 = sub_1B0E46A48();
  v23 = updated;
  v24 = v54;
  v25 = v55;
  v26 = v56;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v30 = v60;
  v31 = v61;
  v32 = v62;
  v33 = v22;
  v34 = v63;
  *(v54 + v52) = v33;
  *(v24 + v23[13]) = 0;
  sub_1B088E5C0(v34, v32, v26, v27, v28, v29, 0, v30, v25);
  v64 = v31;
  v65 = v31;
  if (!v31)
  {
    sub_1B039E440((v54 + updated[10]));
    sub_1B08A40BC((v54 + updated[11]));
    sub_1B039E440((v54 + updated[12]));
    sub_1B08A364C(v55, v54);
    v43 = v64;
LABEL_3:
    v42 = v43;
    sub_1B08A39BC(v54, v44);
    sub_1B039480C(v60);

    sub_1B07BA794(v56);
    sub_1B03F4F08(v62);
    MEMORY[0x1E69E5920](v63);
    sub_1B08A3DE8(v54);
    return;
  }

  v40 = v65;
  v38 = 0;
  v35 = v65;
  v36 = v38;
  v66 = v40;
  sub_1B088E5C0(v63, v62, v56, v57, v58, v59, 1, v60, v46);
  v41 = v36;
  v39 = v36;
  if (!v36)
  {
    sub_1B039E440((v54 + updated[10]));
    sub_1B08A40BC((v54 + updated[11]));
    sub_1B039E440((v54 + updated[12]));
    sub_1B08A364C(v46, v54);

    v43 = v41;
    goto LABEL_3;
  }

  v37[1] = v39;

  sub_1B039480C(v60);

  sub_1B07BA794(v56);
  sub_1B03F4F08(v62);
  MEMORY[0x1E69E5920](v63);
  sub_1B039E440((v54 + updated[10]));
  sub_1B08A40BC((v54 + updated[11]));
  sub_1B039E440((v54 + updated[12]));
}

BOOL sub_1B0889C84()
{
  v1 = *MEMORY[0x1E6959B40];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6959B40]);
  sub_1B0E44AD8();
  v3 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](v1);
  v4 = [v2 isEnabledForDataclass_];
  MEMORY[0x1E69E5920](v3);
  return (v4 & 1) == 0;
}

uint64_t sub_1B0889D50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v368 = a1;
  v376 = a3;
  v377 = a4;
  v378 = a5;
  v379 = a6;
  v380 = a7;
  v299 = sub_1B039BBE8;
  v300 = sub_1B08A68C0;
  v301 = sub_1B0394C30;
  v302 = sub_1B0394C24;
  v303 = sub_1B039BA2C;
  v304 = sub_1B039BA88;
  v305 = sub_1B039BB94;
  v306 = sub_1B0394C24;
  v307 = sub_1B039BBA0;
  v308 = sub_1B039BC08;
  v309 = 0x786F626C69616DLL;
  v310 = sub_1B06BA324;
  v311 = sub_1B06E395C;
  v312 = sub_1B039BCF8;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0399178;
  v316 = sub_1B0398F5C;
  v317 = sub_1B0398F5C;
  v318 = sub_1B039BA94;
  v319 = sub_1B0398F5C;
  v320 = sub_1B0398F5C;
  v321 = sub_1B0399178;
  v322 = sub_1B0398F5C;
  v323 = sub_1B0398F5C;
  v324 = sub_1B03991EC;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0398F5C;
  v327 = sub_1B03993BC;
  v328 = sub_1B0398F5C;
  v329 = sub_1B0398F5C;
  v330 = sub_1B039BCEC;
  v331 = sub_1B039BBE8;
  v332 = sub_1B08A68C0;
  v333 = sub_1B0394C24;
  v334 = sub_1B039BA2C;
  v335 = sub_1B039BA88;
  v336 = sub_1B0394C24;
  v337 = sub_1B039BBA0;
  v338 = sub_1B039BC08;
  v339 = sub_1B06BA324;
  v340 = sub_1B06E395C;
  v341 = sub_1B039BCF8;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0398F5C;
  v344 = sub_1B0399178;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B039BA94;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0398F5C;
  v350 = sub_1B0399178;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v353 = sub_1B03991EC;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B03993BC;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BCEC;
  v406 = 0;
  v405 = 0;
  v404 = 0;
  v401 = 0;
  v402 = 0;
  v403 = 0;
  v360 = 0;
  v361 = _s6LoggerVMa(0);
  v362 = (*(*(v361 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v363 = &v149 - v362;
  v364 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v365 = &v149 - v364;
  v366 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v367 = &v149 - v366;
  v369 = sub_1B0E439A8();
  v370 = *(v369 - 8);
  v371 = v369 - 8;
  v372 = (*(v370 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v369);
  v373 = &v149 - v372;
  v374 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v149 - v372);
  v375 = &v149 - v374;
  memcpy(__dst, v13, 0x42uLL);
  v406 = a2;
  v405 = v376;
  v404 = v377 & 1;
  v401 = v378;
  v402 = v379;
  v403 = v380;
  v383 = __dst[0];
  v381 = __dst[1];
  v382 = BYTE4(__dst[1]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v399 = v383;
  LODWORD(v400) = v381;
  BYTE4(v400) = v382;
  v384 = sub_1B07C1318(v383, v400);

  if (v384)
  {
    v294 = v408;
    *v408 = __dst[0];
    *&v408[5] = *(__dst + 5);
    sub_1B06E38A8(v408, &v392);
    sub_1B06E38A8(v294, &v391);
    v296 = *v408;
    v295 = *&v408[8];
    sub_1B039E440(v294);
    v297 = sub_1B0876B40(v296, v295, v378, v379, v380, v377 & 1);

    if (v297)
    {
      v292 = 1;
      v293 = v298;
    }

    else
    {
      (*(v370 + 16))(v375, v376, v369);
      sub_1B0394784(v376, v367);
      sub_1B0394784(v367, v365);
      sub_1B03F4FD0(v367, v363);
      v14 = (v365 + *(v361 + 20));
      v248 = *v14;
      v249 = *(v14 + 1);
      sub_1B039480C(v365);
      v261 = 24;
      v266 = 7;
      v15 = swift_allocObject();
      v16 = v249;
      v254 = v15;
      *(v15 + 16) = v248;
      *(v15 + 20) = v16;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v17 = swift_allocObject();
      v18 = v249;
      v250 = v17;
      *(v17 + 16) = v248;
      *(v17 + 20) = v18;

      v265 = 32;
      v19 = swift_allocObject();
      v20 = v250;
      v259 = v19;
      *(v19 + 16) = v331;
      *(v19 + 24) = v20;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v363);
      v251 = __dst;
      sub_1B03BB0B4(__dst, &v390);
      v252 = swift_allocObject();
      memcpy((v252 + 16), v251, 0x42uLL);

      v21 = swift_allocObject();
      v22 = v252;
      v267 = v21;
      *(v21 + 16) = v332;
      *(v21 + 24) = v22;

      v290 = sub_1B0E43988();
      v291 = sub_1B0E45908();
      v263 = 17;
      v269 = swift_allocObject();
      v256 = 16;
      *(v269 + 16) = 16;
      v270 = swift_allocObject();
      v258 = 4;
      *(v270 + 16) = 4;
      v23 = swift_allocObject();
      v253 = v23;
      *(v23 + 16) = v301;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v25 = v253;
      v271 = v24;
      *(v24 + 16) = v333;
      *(v24 + 24) = v25;
      v272 = swift_allocObject();
      *(v272 + 16) = 0;
      v273 = swift_allocObject();
      *(v273 + 16) = 1;
      v26 = swift_allocObject();
      v27 = v254;
      v255 = v26;
      *(v26 + 16) = v334;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v255;
      v274 = v28;
      *(v28 + 16) = v335;
      *(v28 + 24) = v29;
      v275 = swift_allocObject();
      *(v275 + 16) = v256;
      v276 = swift_allocObject();
      *(v276 + 16) = v258;
      v30 = swift_allocObject();
      v257 = v30;
      *(v30 + 16) = v305;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      v32 = v257;
      v277 = v31;
      *(v31 + 16) = v336;
      *(v31 + 24) = v32;
      v278 = swift_allocObject();
      *(v278 + 16) = 0;
      v279 = swift_allocObject();
      *(v279 + 16) = v258;
      v33 = swift_allocObject();
      v34 = v259;
      v260 = v33;
      *(v33 + 16) = v337;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v260;
      v280 = v35;
      *(v35 + 16) = v338;
      *(v35 + 24) = v36;
      v281 = swift_allocObject();
      *(v281 + 16) = 112;
      v282 = swift_allocObject();
      v264 = 8;
      *(v282 + 16) = 8;
      v262 = swift_allocObject();
      *(v262 + 16) = v309;
      v37 = swift_allocObject();
      v38 = v262;
      v283 = v37;
      *(v37 + 16) = v339;
      *(v37 + 24) = v38;
      v284 = swift_allocObject();
      *(v284 + 16) = 37;
      v285 = swift_allocObject();
      *(v285 + 16) = v264;
      v39 = swift_allocObject();
      v40 = v267;
      v268 = v39;
      *(v39 + 16) = v340;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v268;
      v287 = v41;
      *(v41 + 16) = v341;
      *(v41 + 24) = v42;
      v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v286 = sub_1B0E46A48();
      v288 = v43;

      v44 = v269;
      v45 = v288;
      *v288 = v342;
      v45[1] = v44;

      v46 = v270;
      v47 = v288;
      v288[2] = v343;
      v47[3] = v46;

      v48 = v271;
      v49 = v288;
      v288[4] = v344;
      v49[5] = v48;

      v50 = v272;
      v51 = v288;
      v288[6] = v345;
      v51[7] = v50;

      v52 = v273;
      v53 = v288;
      v288[8] = v346;
      v53[9] = v52;

      v54 = v274;
      v55 = v288;
      v288[10] = v347;
      v55[11] = v54;

      v56 = v275;
      v57 = v288;
      v288[12] = v348;
      v57[13] = v56;

      v58 = v276;
      v59 = v288;
      v288[14] = v349;
      v59[15] = v58;

      v60 = v277;
      v61 = v288;
      v288[16] = v350;
      v61[17] = v60;

      v62 = v278;
      v63 = v288;
      v288[18] = v351;
      v63[19] = v62;

      v64 = v279;
      v65 = v288;
      v288[20] = v352;
      v65[21] = v64;

      v66 = v280;
      v67 = v288;
      v288[22] = v353;
      v67[23] = v66;

      v68 = v281;
      v69 = v288;
      v288[24] = v354;
      v69[25] = v68;

      v70 = v282;
      v71 = v288;
      v288[26] = v355;
      v71[27] = v70;

      v72 = v283;
      v73 = v288;
      v288[28] = v356;
      v73[29] = v72;

      v74 = v284;
      v75 = v288;
      v288[30] = v357;
      v75[31] = v74;

      v76 = v285;
      v77 = v288;
      v288[32] = v358;
      v77[33] = v76;

      v78 = v287;
      v79 = v288;
      v288[34] = v359;
      v79[35] = v78;
      sub_1B0394964();

      if (os_log_type_enabled(v290, v291))
      {
        v241 = sub_1B0E45D78();
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v242 = sub_1B03949A8(0, v240, v240);
        v243 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v244 = &v389;
        v389 = v241;
        v245 = &v388;
        v388 = v242;
        v246 = &v387;
        v387 = v243;
        sub_1B0394A48(3, &v389);
        sub_1B0394A48(6, v244);
        v80 = v298;
        v385 = v342;
        v386 = v269;
        sub_1B03949FC(&v385, v244, v245, v246);
        v247 = v80;
        if (v80)
        {

          __break(1u);
        }

        else
        {
          v385 = v343;
          v386 = v270;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v238 = 0;
          v385 = v344;
          v386 = v271;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v237 = 0;
          v385 = v345;
          v386 = v272;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v236 = 0;
          v385 = v346;
          v386 = v273;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v235 = 0;
          v385 = v347;
          v386 = v274;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v234 = 0;
          v385 = v348;
          v386 = v275;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v233 = 0;
          v385 = v349;
          v386 = v276;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v232 = 0;
          v385 = v350;
          v386 = v277;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v231 = 0;
          v385 = v351;
          v386 = v278;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v230 = 0;
          v385 = v352;
          v386 = v279;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v229 = 0;
          v385 = v353;
          v386 = v280;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v228 = 0;
          v385 = v354;
          v386 = v281;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v227 = 0;
          v385 = v355;
          v386 = v282;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v226 = 0;
          v385 = v356;
          v386 = v283;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v225 = 0;
          v385 = v357;
          v386 = v284;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v224 = 0;
          v385 = v358;
          v386 = v285;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v223 = 0;
          v385 = v359;
          v386 = v287;
          sub_1B03949FC(&v385, &v389, &v388, &v387);
          v222 = 0;
          _os_log_impl(&dword_1B0389000, v290, v291, "[%.*hhx-%.*X] Not syncing Notes mailbox path %{sensitive,mask.mailbox}s", v241, 0x2Bu);
          sub_1B03998A8(v242, 0, v240);
          sub_1B03998A8(v243, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v239 = v222;
        }
      }

      else
      {

        v239 = v298;
      }

      v221 = v239;
      MEMORY[0x1E69E5920](v290);
      (*(v370 + 8))(v375, v369);
      v292 = 0;
      v293 = v221;
    }
  }

  else
  {
    (*(v370 + 16))(v373, v376, v369);
    sub_1B0394784(v376, v367);
    sub_1B0394784(v367, v365);
    sub_1B03F4FD0(v367, v363);
    v81 = (v365 + *(v361 + 20));
    v177 = *v81;
    v178 = *(v81 + 1);
    sub_1B039480C(v365);
    v190 = 24;
    v195 = 7;
    v82 = swift_allocObject();
    v83 = v178;
    v183 = v82;
    *(v82 + 16) = v177;
    *(v82 + 20) = v83;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v84 = swift_allocObject();
    v85 = v178;
    v179 = v84;
    *(v84 + 16) = v177;
    *(v84 + 20) = v85;

    v194 = 32;
    v86 = swift_allocObject();
    v87 = v179;
    v188 = v86;
    *(v86 + 16) = v299;
    *(v86 + 24) = v87;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v363);
    v180 = __dst;
    sub_1B03BB0B4(__dst, v398);
    v181 = swift_allocObject();
    memcpy((v181 + 16), v180, 0x42uLL);

    v88 = swift_allocObject();
    v89 = v181;
    v196 = v88;
    *(v88 + 16) = v300;
    *(v88 + 24) = v89;

    v219 = sub_1B0E43988();
    v220 = sub_1B0E45908();
    v192 = 17;
    v198 = swift_allocObject();
    v185 = 16;
    *(v198 + 16) = 16;
    v199 = swift_allocObject();
    v187 = 4;
    *(v199 + 16) = 4;
    v90 = swift_allocObject();
    v182 = v90;
    *(v90 + 16) = v301;
    *(v90 + 24) = 0;
    v91 = swift_allocObject();
    v92 = v182;
    v200 = v91;
    *(v91 + 16) = v302;
    *(v91 + 24) = v92;
    v201 = swift_allocObject();
    *(v201 + 16) = 0;
    v202 = swift_allocObject();
    *(v202 + 16) = 1;
    v93 = swift_allocObject();
    v94 = v183;
    v184 = v93;
    *(v93 + 16) = v303;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v184;
    v203 = v95;
    *(v95 + 16) = v304;
    *(v95 + 24) = v96;
    v204 = swift_allocObject();
    *(v204 + 16) = v185;
    v205 = swift_allocObject();
    *(v205 + 16) = v187;
    v97 = swift_allocObject();
    v186 = v97;
    *(v97 + 16) = v305;
    *(v97 + 24) = 0;
    v98 = swift_allocObject();
    v99 = v186;
    v206 = v98;
    *(v98 + 16) = v306;
    *(v98 + 24) = v99;
    v207 = swift_allocObject();
    *(v207 + 16) = 0;
    v208 = swift_allocObject();
    *(v208 + 16) = v187;
    v100 = swift_allocObject();
    v101 = v188;
    v189 = v100;
    *(v100 + 16) = v307;
    *(v100 + 24) = v101;
    v102 = swift_allocObject();
    v103 = v189;
    v209 = v102;
    *(v102 + 16) = v308;
    *(v102 + 24) = v103;
    v210 = swift_allocObject();
    *(v210 + 16) = 112;
    v211 = swift_allocObject();
    v193 = 8;
    *(v211 + 16) = 8;
    v191 = swift_allocObject();
    *(v191 + 16) = v309;
    v104 = swift_allocObject();
    v105 = v191;
    v212 = v104;
    *(v104 + 16) = v310;
    *(v104 + 24) = v105;
    v213 = swift_allocObject();
    *(v213 + 16) = 37;
    v214 = swift_allocObject();
    *(v214 + 16) = v193;
    v106 = swift_allocObject();
    v107 = v196;
    v197 = v106;
    *(v106 + 16) = v311;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v197;
    v216 = v108;
    *(v108 + 16) = v312;
    *(v108 + 24) = v109;
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v215 = sub_1B0E46A48();
    v217 = v110;

    v111 = v198;
    v112 = v217;
    *v217 = v313;
    v112[1] = v111;

    v113 = v199;
    v114 = v217;
    v217[2] = v314;
    v114[3] = v113;

    v115 = v200;
    v116 = v217;
    v217[4] = v315;
    v116[5] = v115;

    v117 = v201;
    v118 = v217;
    v217[6] = v316;
    v118[7] = v117;

    v119 = v202;
    v120 = v217;
    v217[8] = v317;
    v120[9] = v119;

    v121 = v203;
    v122 = v217;
    v217[10] = v318;
    v122[11] = v121;

    v123 = v204;
    v124 = v217;
    v217[12] = v319;
    v124[13] = v123;

    v125 = v205;
    v126 = v217;
    v217[14] = v320;
    v126[15] = v125;

    v127 = v206;
    v128 = v217;
    v217[16] = v321;
    v128[17] = v127;

    v129 = v207;
    v130 = v217;
    v217[18] = v322;
    v130[19] = v129;

    v131 = v208;
    v132 = v217;
    v217[20] = v323;
    v132[21] = v131;

    v133 = v209;
    v134 = v217;
    v217[22] = v324;
    v134[23] = v133;

    v135 = v210;
    v136 = v217;
    v217[24] = v325;
    v136[25] = v135;

    v137 = v211;
    v138 = v217;
    v217[26] = v326;
    v138[27] = v137;

    v139 = v212;
    v140 = v217;
    v217[28] = v327;
    v140[29] = v139;

    v141 = v213;
    v142 = v217;
    v217[30] = v328;
    v142[31] = v141;

    v143 = v214;
    v144 = v217;
    v217[32] = v329;
    v144[33] = v143;

    v145 = v216;
    v146 = v217;
    v217[34] = v330;
    v146[35] = v145;
    sub_1B0394964();

    if (os_log_type_enabled(v219, v220))
    {
      v170 = sub_1B0E45D78();
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v171 = sub_1B03949A8(0, v169, v169);
      v172 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v173 = &v397;
      v397 = v170;
      v174 = &v396;
      v396 = v171;
      v175 = &v395;
      v395 = v172;
      sub_1B0394A48(3, &v397);
      sub_1B0394A48(6, v173);
      v147 = v298;
      v393 = v313;
      v394 = v198;
      sub_1B03949FC(&v393, v173, v174, v175);
      v176 = v147;
      if (v147)
      {

        __break(1u);
      }

      else
      {
        v393 = v314;
        v394 = v199;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v167 = 0;
        v393 = v315;
        v394 = v200;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v166 = 0;
        v393 = v316;
        v394 = v201;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v165 = 0;
        v393 = v317;
        v394 = v202;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v164 = 0;
        v393 = v318;
        v394 = v203;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v163 = 0;
        v393 = v319;
        v394 = v204;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v162 = 0;
        v393 = v320;
        v394 = v205;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v161 = 0;
        v393 = v321;
        v394 = v206;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v160 = 0;
        v393 = v322;
        v394 = v207;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v159 = 0;
        v393 = v323;
        v394 = v208;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v158 = 0;
        v393 = v324;
        v394 = v209;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v157 = 0;
        v393 = v325;
        v394 = v210;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v156 = 0;
        v393 = v326;
        v394 = v211;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v155 = 0;
        v393 = v327;
        v394 = v212;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v154 = 0;
        v393 = v328;
        v394 = v213;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v153 = 0;
        v393 = v329;
        v394 = v214;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v152 = 0;
        v393 = v330;
        v394 = v216;
        sub_1B03949FC(&v393, &v397, &v396, &v395);
        v151 = 0;
        _os_log_impl(&dword_1B0389000, v219, v220, "[%.*hhx-%.*X] Not syncing unsupported mailbox path %{sensitive,mask.mailbox}s", v170, 0x2Bu);
        sub_1B03998A8(v171, 0, v169);
        sub_1B03998A8(v172, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v168 = v151;
      }
    }

    else
    {

      v168 = v298;
    }

    v150 = v168;
    MEMORY[0x1E69E5920](v219);
    (*(v370 + 8))(v373, v369);
    v292 = 0;
    v293 = v150;
  }

  return v292 & 1;
}

uint64_t sub_1B088C40C(void *a1)
{
  *v5 = *a1;
  *&v5[5] = *(a1 + 5);
  sub_1B06E38A8(v5, v4);
  sub_1B06E38A8(v5, v3);
  v2 = *v5;
  sub_1B039E440(v5);
  return v2;
}

uint64_t sub_1B088C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = 0;
  v68 = 0;
  v67 = 0;
  v61 = 0;
  v60[0] = 0;
  v60[1] = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  memset(v48, 0, 21);
  v76 = a4;
  v72 = a1;
  v73 = a2;
  v74 = a3;
  sub_1B07BA724(a1);
  if (a1)
  {
    if (Namespace.hasPrefix.getter(a1))
    {
      v5 = MailboxName.inbox.unsafeMutableAddressor();
      v34 = *v5;
      v33 = *(v5 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = Namespace.addPrefix(to:)(v34, v33, a1);
      v36 = v6;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v69 = v35;
      v70 = v36;

      v37 = v35;
      v38 = v36;
      goto LABEL_6;
    }
  }

  v69 = 0;
  v70 = 0;
  v37 = 0;
  v38 = 0;
LABEL_6:
  v31 = sub_1B08A16C8(v43, v37, v38, a4, a5);
  v68 = v31;

  v30 = swift_allocObject();
  v67 = v30 + 16;
  v66[1] = v31;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
  sub_1B08A4110();
  MEMORY[0x1B27270C0](v66, v29);
  v65 = v66[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2838, &unk_1B0E9E0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B08A4198();
  sub_1B0E46728();
  sub_1B039E440(&v65);
  v62 = v66[2];
  v63 = v66[3];
  v64 = v66[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2840, &qword_1B0E9E0C8);
  sub_1B08A4220();
  sub_1B08A42B4();
  *(v30 + 16) = sub_1B0E45598();
  v32 = swift_allocObject();
  v61 = v32 + 16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v32 + 16) = v31;
  sub_1B07BA724(a1);
  if (a1)
  {
    v51 = a1;
    v52 = a2;
    v53 = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = MailboxName.init(_:)(a1);
    v28 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = MailboxPath.init(name:pathSeparator:)(v27, v8, v28, a2, a3);
    v50 = v9;
    if (v49)
    {
      v48[1] = v49;
      LODWORD(v48[2]) = v9;
      BYTE4(v48[2]) = ((v9 | (BYTE4(v9) << 32)) & 0xFFFFFFFFFFLL) >> 32;
      LODWORD(v47) = v9;
      BYTE4(v47) = BYTE4(v48[2]);
      MailboxPath.displayStringComponents(omittingEmptySubsequences:)(1, v49, v47);
      v48[0] = v10;
      while (1)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0750598();
        v25 = sub_1B0E45748();

        if (v25)
        {
          break;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2850, &qword_1B0E9E0E0);
        sub_1B0E454D8();

        sub_1B03B11C4();
        sub_1B07BC194();
        sub_1B0E45888();
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
      sub_1B08A43C4();
      v24 = sub_1B0E45748();

      if ((v24 & 1) == 0)
      {
        v11 = MailboxName.inbox.unsafeMutableAddressor();
        v21 = *v11;
        v20 = *(v11 + 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = Namespace.addPrefix(to:)(v21, v20, a1);
        v23 = v12;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = MailboxPath.init(name:pathSeparator:)(v22, v13, v23, a2, a3);
        if (v46)
        {
          LODWORD(v45) = v14;
          BYTE4(v45) = ((v14 | (BYTE4(v14) << 32)) & 0xFFFFFFFFFFLL) >> 32;
          MailboxPath.displayStringComponents(omittingEmptySubsequences:)(1, v46, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2850, &qword_1B0E9E0E0);
          sub_1B0E454D8();
        }
      }

      sub_1B039E440(v48);
    }

    else
    {
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v59[10] = v31;
  v19 = sub_1B08A433C();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2848, &unk_1B0E9E0D0);
    sub_1B0E46518();
    memcpy(__dst, v57, sizeof(__dst));
    memcpy(v59, __dst, 0x50uLL);
    if (!v59[0])
    {
      break;
    }

    memcpy(v75, v59, 0x42uLL);
    v54 = v59[9];
    sub_1B08A1BE0(v75, v59[9], a1, a2, a3, v30, v32);

    sub_1B039E440(v59);
  }

  sub_1B039E440(v60);
  swift_beginAccess();
  v17 = *(v32 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v56 = v17;
  v18 = sub_1B0E44FF8();
  sub_1B039E440(&v56);
  v55 = v18;
  v16 = sub_1B039CA88(sub_1B08A24FC, 0, v29, &type metadata for RemoteMailbox, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v26);
  sub_1B039E440(&v55);

  sub_1B039E440(&v69);
  return v16;
}

uint64_t sub_1B088CF6C(uint64_t a1)
{
  type metadata accessor for MailboxUpdateTree(0);
  swift_projectBox();
  swift_beginAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0451F2C();
  v2 = sub_1B0E44628();

  return v2;
}

uint64_t sub_1B088D018(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1B088D08C(a2);
  return swift_endAccess();
}

void sub_1B088D08C(uint64_t *a1)
{
  v33 = __dst;
  v50 = a1;
  v34 = "Fatal error";
  v35 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v36 = "Message/MailboxTree.swift";
  v58 = 0;
  v57 = 0;
  v54 = 0;
  v55[0] = 0;
  *(v55 + 5) = 0;
  v37 = 0;
  v38 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v12 - v38;
  updated = type metadata accessor for MailboxUpdateTree(v1);
  v47 = *(*(updated - 8) + 64);
  v42 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v12 - v42);
  v44 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v45 = (&v12 - v44);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = (&v12 - v46);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v51 = (&v12 - v49);
  v58 = v5;
  v57 = v6;
  sub_1B08A39BC(v6, (&v12 - v49));
  v52 = v59;
  sub_1B0897668(v50, v59);
  sub_1B08A3DE8(v51);
  memcpy(__dst, v52, 0x49uLL);
  v53 = (LOBYTE(__dst[9]) >> 6) & 3;
  if (v53)
  {
    if (v53 == 1)
    {
      v9 = v40;
      LOBYTE(__dst[9]) &= 0x3Fu;
      v21 = v56;
      memcpy(v56, __dst, 0x49uLL);
      v29 = v56[0];
      v30 = v56[1];
      v22 = v56[2];
      v23 = BYTE4(v56[2]);
      v28 = &v56[3];
      v24 = v63;
      memcpy(v63, &v56[3], 0x31uLL);
      v54 = v56[0];
      v55[0] = v56[1];
      LODWORD(v55[1]) = v56[2];
      BYTE4(v55[1]) = BYTE4(v56[2]);
      sub_1B08A39BC(v40, v51);
      v10 = (v51 + *(updated + 24));
      v25 = *v10;
      v26 = v10[1];
      v27 = v10[2];
      sub_1B07BA724(v25);
      sub_1B08A3DE8(v51);
      MEMORY[0x1E69E5928](v29);
      sub_1B08A39BC(v9, v48);
      sub_1B0394784(v48 + *(updated + 32), v39);
      sub_1B08A3DE8(v48);
      sub_1B089BA50(v25, v26, v27, v24, v50, v29, v39);
      sub_1B039480C(v39);
      MEMORY[0x1E69E5920](v29);
      sub_1B07BA794(v25);
      sub_1B08A444C();
      MEMORY[0x1E69E5920](v29);
    }

    else if (v53 == 2)
    {
      LOBYTE(__dst[9]) &= 0x3Fu;
      memcpy(v62, __dst, 0x31uLL);
      sub_1B088D7A8();
      sub_1B08A39BC(v40, v45);
      v11 = (v45 + *(updated + 24));
      v16 = *v11;
      v17 = v11[1];
      v18 = v11[2];
      sub_1B07BA724(v16);
      sub_1B08A3DE8(v45);
      sub_1B08A39BC(v40, v43);
      v19 = *v43;
      MEMORY[0x1E69E5928](v19);
      sub_1B08A3DE8(v43);
      v20 = [v19 rootMailbox];
      MEMORY[0x1E69E5920](v19);
      if (v20)
      {
        v15 = v20;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v13 = v15;
      sub_1B08A39BC(v40, v51);
      sub_1B0394784(v51 + *(updated + 32), v39);
      sub_1B08A3DE8(v51);
      v14 = v62;
      sub_1B089BA50(v16, v17, v18, v62, v50, v13, v39);
      sub_1B039480C(v39);
      MEMORY[0x1E69E5920](v13);
      sub_1B07BA794(v16);
      sub_1B08A444C();
    }
  }

  else
  {
    LOBYTE(__dst[9]) &= 0x3Fu;
    v7 = *v33;
    v32 = v61;
    v33[5] = v7;
    *(&v61[1] + 5) = *(&__dst[1] + 5);
    sub_1B088D7A8();
    v8 = v40;
    v31 = v61[0];
    MEMORY[0x1E69E5928](v61[0]);
    sub_1B08A39BC(v8, v51);
    sub_1B0394784(v51 + *(updated + 32), v39);
    sub_1B08A3DE8(v51);
    sub_1B08986B4(v31, v50, v39);
    sub_1B039480C(v39);
    MEMORY[0x1E69E5920](v31);
    sub_1B08A4490(v32);
  }
}

void sub_1B088D7A8()
{
  updated = type metadata accessor for MailboxUpdateTree(0);
  v6 = *(v0 + *(updated + 44));
  sub_1B08A44D0(v6);
  if (v6)
  {
    v1 = (v4 + *(updated + 44));
    v2 = *v1;
    *v1 = 0;
    v1[1] = 0;
    sub_1B08A4518(v2);
    MEMORY[0x1E69E5928](v6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03EE50C();
    v3 = sub_1B0E451A8();

    [v6 setChildren_];
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5928](v6);
    v7 = [v6 attributes];
    type metadata accessor for MailboxAttributes(0);
    sub_1B0694AF8();
    sub_1B0E46F58();
    [v6 setAttributes_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v6);
  }
}

uint64_t sub_1B088D980(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  RemoteMailbox.name.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B0E454D8();
}

void sub_1B088DA10(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v36 = __b;
  v38 = 40;
  memset(__b, 0, sizeof(__b));
  v47 = 0;
  v48 = 0;
  v45 = 0;
  memset(v46, 0, 13);
  v40 = 0;
  v39 = 0;
  updated = type metadata accessor for MailboxUpdateTree(0);
  v32 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](updated);
  v33 = (&v7 - v32);
  v54 = v4;
  v53 = v5;
  v52 = v2;
  v34 = *(v2 + *(v6 + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = sub_1B0451F2C();
  v37 = &v55;
  sub_1B0E445C8();
  memcpy(v36, v37, v38);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2858, &qword_1B0E9E0E8);
    v23 = v49;
    sub_1B0E446D8();
    v24 = v49[0];
    v25 = v49[1];
    v26 = v49[2];
    v27 = v49[3];
    v28 = v50 | (*(v23 + 36) << 32);
    if (!v49[0])
    {
      break;
    }

    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28 & 0xFFFFFFFFFFLL;
    v13 = v27;
    v14 = v26;
    v15 = v25;
    v16 = v24;
    v47 = v24;
    v48 = v25;
    v45 = v26;
    v46[0] = v27;
    LODWORD(v46[1]) = v28;
    BYTE4(v46[1]) = (v28 & 0xFFFFFFFFFFLL) >> 32;
    v43 = v24;
    v44 = v25;
    v17 = sub_1B0E45528();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v17)
    {
      v12 = 1;
    }

    else
    {
      v41 = v16;
      v42 = v15;
      v12 = sub_1B0E45528();
    }

    v11 = v12;

    v40 = (v11 ^ 1) & 1;
    if (v40)
    {
      MEMORY[0x1E69E5928](v14);
      v10 = [v14 parent];
      if (v10)
      {
        v9 = v10;
        v8 = v10;
        v39 = v10;
        MEMORY[0x1E69E5920](v14);
        sub_1B089E99C(v8);
        MEMORY[0x1E69E5920](v8);
      }

      else
      {
        MEMORY[0x1E69E5920](v14);
      }

      sub_1B08A39BC(v29, v33);
      v7 = *v33;
      MEMORY[0x1E69E5928](v7);
      sub_1B08A3DE8(v33);
      MEMORY[0x1E69E5928](v14);
      [v7 deleteMailbox:v14 reflectToServer:0];
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v14);
    }

    else
    {
      MEMORY[0x1E69E5920](v14);
    }
  }

  sub_1B06B91B0();
}

uint64_t sub_1B088DFA4()
{
  v5 = v0;
  result = type metadata accessor for MailboxUpdateTree(0);
  if (*(v0 + *(result + 52)))
  {
    sub_1B07BC130();
    if ([swift_getObjCClassFromMetadata() mailboxListingNotificationsAreEnabled])
    {
      v4 = sub_1B0896600();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
      sub_1B08A4560();
      sub_1B0E45018();
      sub_1B039E440(&v4);
    }

    v2 = *v3;
    MEMORY[0x1E69E5928](*v3);
    [v2 _writeMailboxCacheWithPrejudice_];
    return MEMORY[0x1E69E5920](v2);
  }

  return result;
}

uint64_t sub_1B088E118()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 24));
  sub_1B07BA724(v2);
  return v2;
}

uint64_t sub_1B088E16C()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 28));

  return v2;
}

uint64_t sub_1B088E1DC()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B088E214(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(type metadata accessor for MailboxUpdateTree(0) + 36)) = a1;
}

uint64_t sub_1B088E260()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B088E298(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(type metadata accessor for MailboxUpdateTree(0) + 40)) = a1;
}

uint64_t sub_1B088E2E4()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 44));
  sub_1B08A44D0(v2);
  return v2;
}

uint64_t sub_1B088E32C(uint64_t a1, uint64_t a2)
{
  sub_1B08A44D0(a1);
  v3 = (v2 + *(type metadata accessor for MailboxUpdateTree(0) + 44));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  sub_1B08A4518(v4);
  return sub_1B08A4518(a1);
}

uint64_t sub_1B088E38C()
{
  v2 = *(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 48));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B088E3C4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(type metadata accessor for MailboxUpdateTree(0) + 48)) = a1;
}

uint64_t sub_1B088E43C(unsigned int a1)
{
  updated = type metadata accessor for MailboxUpdateTree(0);
  result = a1;
  *(v1 + *(updated + 52)) = a1;
  return result;
}

uint64_t sub_1B088E51C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = BYTE4(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 8) = a1;
  *(v2 + 16) = v4;
  *(v2 + 20) = v5;
}

void sub_1B088E5C0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v66 = a4;
  v65 = a3;
  v71 = a2;
  v73 = a1;
  v61 = a9;
  v62 = a7;
  v63 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v75 = 0;
  _s6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](0);
  v64 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18MailboxPersistenceVMa(v10);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v12;
  v87 = v13;
  v84 = v14;
  v85 = v15;
  v86 = v16;
  v83 = v17;
  v82 = v18;
  v81 = v19;
  v20 = v12;
  v74 = [v73 rootMailbox];
  if (v74)
  {
    v59 = v74;
    v57 = v74;
    v80 = v74;

    v58 = [v57 children];
    if (v58)
    {
      v56 = v58;
      v53 = v58;
      v52 = sub_1B03EE50C();
      v54 = sub_1B0E451B8();

      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v51 = v55;
    if (v55)
    {
      v50 = v51;
      v39 = v51;
      v46 = v60;
      v79 = v51;
      v21 = sub_1B0889C84();
      v41 = v21;
      v78 = v21;
      v77 = v39;
      v40 = v28;
      MEMORY[0x1EEE9AC00](v28);
      v22 = v41;
      v42 = &v28[-6];
      v28[-4] = v71;
      LOBYTE(v28[-3]) = v22;
      v28[-2] = v23;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2870, &qword_1B0E9E100);
      v45 = sub_1B06E35CC();
      sub_1B08A4714();
      v24 = v46;
      v25 = sub_1B0E45008();
      v47 = v24;
      v48 = v25;
      v49 = v24;
      if (v24)
      {
        v28[2] = v49;
      }

      else
      {
        v35 = v48;
        v76 = v48;
        v26 = sub_1B088FCE8(v48);
        v36 = 0;
        v37 = v26;
        v38 = 0;
        v33 = v26;
        v34 = 0;
        v75 = v26;
        v27 = v73;
        sub_1B03F4D78(v71, v72);
        sub_1B07BA724(v65);

        sub_1B0394784(v70, v64);
        sub_1B088EC28(v73, v72, v65, v66, v67, v68, v33, v64, v61);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      sub_1B08A4664();
      v30 = 0;
      v31 = swift_allocError();
      swift_willThrow();

      v32 = v31;
    }
  }

  else
  {

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B08A45E8();
    v28[3] = 0;
    v29 = swift_allocError();
    swift_willThrow();
    v32 = v29;
  }
}

void *sub_1B088EC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a9;
  v56 = a1;
  v55 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v51 = a6;
  v50 = a7;
  v49 = a8;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v43 = 0;
  v39 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = &v39 - v39;
  v40 = (*(*(_s18MailboxPersistenceVMa(v9) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v39 - v40;
  updated = type metadata accessor for MailboxUpdateTree(v10);
  v41 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v57 = (&v39 - v41);
  v66 = &v39 - v41;
  v65 = v56;
  v64 = v11;
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v60 = v15;
  v59 = v16;
  v58 = v17;
  v42 = *(v18 + 40);
  v19 = sub_1B0E46A48();
  v20 = v57;
  v21 = v19;
  v22 = updated;
  *(v57 + v42) = v21;
  v23 = (v20 + v22[11]);
  *v23 = 0;
  v23[1] = 0;
  v44 = v22[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
  v24 = sub_1B0E46A48();
  v25 = updated;
  v26 = v57;
  v27 = v24;
  v28 = v56;
  *(v57 + v44) = v27;
  *(v26 + v25[13]) = 0;
  MEMORY[0x1E69E5928](v28);
  v29 = v45;
  v30 = v55;
  *v57 = v56;
  sub_1B03F4D78(v30, v29);
  sub_1B04158DC(v45, v57 + updated[5]);
  sub_1B07BA724(v52);
  v31 = v53;
  v32 = v54;
  v33 = (v57 + updated[6]);
  *v33 = v52;
  v33[1] = v31;
  v33[2] = v32;

  v34 = v49;
  v35 = v46;
  *(v57 + updated[7]) = v51;
  sub_1B0394784(v34, v35);
  sub_1B03F4FD0(v46, v57 + updated[8]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v57;
  v37 = v48;
  *(v57 + updated[9]) = v50;
  sub_1B08A39BC(v36, v37);
  sub_1B039480C(v49);

  sub_1B07BA794(v52);
  sub_1B03F4F08(v55);
  MEMORY[0x1E69E5920](v56);
  return sub_1B08A3DE8(v57);
}

uint64_t sub_1B088EF8C@<X0>(uint64_t *a1@<X8>, void **a2@<X0>, uint64_t a3@<X1>, char a4@<W2>, uint64_t a5@<X3>)
{
  result = sub_1B088F02C(*a2, a3, a4 & 1, a5);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B088F02C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v81 = a4;
  v80 = a3;
  v73 = a2;
  v82 = a1;
  v75 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  memset(v111, 0, 13);
  v104 = 0;
  v103 = 0;
  v74 = a3;
  v76 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v22 - v78;
  MEMORY[0x1EEE9AC00](v5);
  v79 = v22 - v78;
  v83 = sub_1B0E42E68();
  v84 = *(v83 - 8);
  v85 = v84;
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v88 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = v22 - v88;
  MEMORY[0x1EEE9AC00](v6);
  v89 = v22 - v88;
  v119 = v22 - v88;
  v118 = v7;
  v117 = a2;
  v116 = v8 & 1;
  v115 = v9;
  v90 = sub_1B07C0878();
  v91 = v10;
  v92 = v11;
  if (!v90)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B08A479C();
    v22[1] = 0;
    v23 = swift_allocError();
    swift_willThrow();
    result = v23;
    v26 = v23;
    return result;
  }

  v69 = v90;
  v70 = v91;
  v71 = v92;
  v65 = v92;
  v66 = v91;
  v67 = v90;
  v112 = v90;
  v113 = v91;
  v114 = v92;
  v68 = [v82 URL];
  if (v68)
  {
    v64 = v68;
    v63 = v68;
    sub_1B0E42DE8();
    (*(v85 + 32))(v79, v87, v83);
    (*(v85 + 56))(v79, 0, 1, v83);
  }

  else
  {
    (*(v85 + 56))(v79, 1, 1, v83);
  }

  if ((*(v85 + 48))(v79, 1, v83) == 1)
  {
    sub_1B06E3800(v79);
LABEL_24:
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B08A4818();
    v24 = 0;
    v25 = swift_allocError();
    swift_willThrow();

    result = v25;
    v26 = v25;
    return result;
  }

  (*(v85 + 32))(v89, v79, v83);
  (*(v85 + 16))(v77, v89, v83);
  (*(v85 + 56))(v77, 0, 1, v83);
  v62 = sub_1B07BEDFC(v77);
  v60 = v62;
  v61 = v12;
  sub_1B06E3800(v77);
  if (!v62)
  {
    (*(v85 + 8))(v89, v83);
    goto LABEL_24;
  }

  v57 = v60;
  v58 = v61;
  v59 = BYTE4(v61);
  v54 = BYTE4(v61);
  v55 = v61;
  v56 = v60;
  v111[0] = v60;
  LODWORD(v111[1]) = v61;
  BYTE4(v111[1]) = BYTE4(v61);
  MailboxRowID.init(_:)([v82 databaseID], &v109);
  v107 = v109;
  v108 = v110;
  if (v110)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07C5844(v56, v55, v81, v93);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v52 = sub_1B0876B40(v56, v55, v67, v66, v65, v74 & 1);
  sub_1B07BA794(v67);

  if ((v52 & 1) == 0)
  {
    v27 = sub_1B0E46A48();
    v28 = v27;

    (*(v85 + 8))(v89, v83);

    v31 = v28;
    v32 = v72;
    return v31;
  }

  v51 = [v82 children];
  if (v51)
  {
    v50 = v51;
    v47 = v51;
    v46 = sub_1B03EE50C();
    v48 = sub_1B0E451B8();

    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v105 = v49;
  if (v49)
  {
    v106 = v105;
  }

  else
  {
    v44 = 0;
    v45 = sub_1B03EE50C();
    v106 = sub_1B0E46A48();
    if (v105)
    {
      sub_1B039E440(&v105);
    }
  }

  v40 = v72;
  v33 = v106;
  v104 = v106;
  v102 = v106;
  v34 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v13 = v74;
  v36 = &v22[-6];
  v22[-4] = v73;
  LOBYTE(v22[-3]) = v13 & 1;
  v22[-2] = v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2870, &qword_1B0E9E100);
  v35 = v38;
  v39 = sub_1B06E35CC();
  sub_1B08A4714();
  v15 = v40;
  v16 = sub_1B0E45008();
  v41 = v15;
  v42 = v16;
  v43 = v15;
  if (!v15)
  {
    v103 = v42;
    v17 = v82;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v99 = v56;
    v100 = v55;
    v101 = v54;
    sub_1B088E584();
    v96 = v18;
    v97 = v19;
    v98 = v20;
    v93[2] = v18;
    v93[3] = v19;
    v94 = v20;
    v95 = BYTE4(v20);
    v29 = &v103;
    sub_1B0E452E8();
    v30 = v103;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440(v29);

    (*(v85 + 8))(v89, v83);

    v31 = v30;
    v32 = v41;
    return v31;
  }

  v22[0] = v43;

  (*(v85 + 8))(v89, v83);

  return v22[0];
}

uint64_t sub_1B088FCE8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1497 = v2;
  v1482 = v3;
  v1481 = v4;
  v1500 = v1;
  v1406 = sub_1B039BBE8;
  v1407 = sub_1B08A49D0;
  v1408 = sub_1B0394C30;
  v1409 = sub_1B0394C24;
  v1410 = sub_1B039BA2C;
  v1411 = sub_1B039BA88;
  v1412 = sub_1B039BB94;
  v1413 = sub_1B0394C24;
  v1414 = sub_1B039BBA0;
  v1415 = sub_1B039BC08;
  v1416 = sub_1B08A49DC;
  v1417 = sub_1B039BCF8;
  v1418 = sub_1B0398F5C;
  v1419 = sub_1B0398F5C;
  v1420 = sub_1B0399178;
  v1421 = sub_1B0398F5C;
  v1422 = sub_1B0398F5C;
  v1423 = sub_1B039BA94;
  v1424 = sub_1B0398F5C;
  v1425 = sub_1B0398F5C;
  v1426 = sub_1B0399178;
  v1427 = sub_1B0398F5C;
  v1428 = sub_1B0398F5C;
  v1429 = sub_1B03991EC;
  v1430 = sub_1B0398F5C;
  v1431 = sub_1B0398F5C;
  v1432 = sub_1B039BCEC;
  v1433 = sub_1B039BBE8;
  v1434 = sub_1B08A4998;
  v1435 = sub_1B08A49D0;
  v1436 = sub_1B08A4AA8;
  v1437 = sub_1B0394C24;
  v1438 = sub_1B039BA2C;
  v1439 = sub_1B039BA88;
  v1440 = sub_1B0394C24;
  v1441 = sub_1B039BBA0;
  v1442 = sub_1B039BC08;
  v1443 = sub_1B06BA324;
  v1444 = sub_1B06E395C;
  v1445 = sub_1B039BCF8;
  v1446 = sub_1B08A49DC;
  v1447 = sub_1B039BCF8;
  v1448 = sub_1B08A49DC;
  v1449 = sub_1B039BCF8;
  v1450 = sub_1B0398F5C;
  v1451 = sub_1B0398F5C;
  v1452 = sub_1B0399178;
  v1453 = sub_1B0398F5C;
  v1454 = sub_1B0398F5C;
  v1455 = sub_1B039BA94;
  v1456 = sub_1B0398F5C;
  v1457 = sub_1B0398F5C;
  v1458 = sub_1B0399178;
  v1459 = sub_1B0398F5C;
  v1460 = sub_1B0398F5C;
  v1461 = sub_1B03991EC;
  v1462 = sub_1B0398F5C;
  v1463 = sub_1B0398F5C;
  v1464 = sub_1B03993BC;
  v1465 = sub_1B0398F5C;
  v1466 = sub_1B0398F5C;
  v1467 = sub_1B039BCEC;
  v1468 = sub_1B0398F5C;
  v1469 = sub_1B0398F5C;
  v1470 = sub_1B039BCEC;
  v1471 = sub_1B0398F5C;
  v1472 = sub_1B0398F5C;
  v1473 = sub_1B039BCEC;
  v1548 = 0;
  v1547 = 0;
  v1546 = 0;
  v1545 = 0;
  v1544 = 0;
  v1498 = v1543;
  v1543[0] = 0;
  v1543[1] = 0;
  v1538 = 0;
  memset(v1539, 0, 13);
  v1536 = 0;
  v1537 = 0;
  v1534 = 0;
  v1533 = 0;
  v1525 = 0;
  v1526[0] = 0;
  *(v1526 + 5) = 0;
  v1494 = 0;
  v1474 = _s6LoggerVMa(0);
  v1475 = (*(*(v1474 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1476 = &v313 - v1475;
  v1477 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1478 = &v313 - v1477;
  v1479 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1480 = &v313 - v1479;
  v1483 = sub_1B0E439A8();
  v1484 = *(v1483 - 8);
  v1485 = v1483 - 8;
  v1487 = *(v1484 + 64);
  v1486 = (v1487 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1494);
  v1488 = &v313 - v1486;
  v1489 = (v1487 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v1490 = &v313 - v1489;
  v1548 = v10;
  v1547 = v11 & 1;
  v1546 = v12;
  v1491 = &type metadata for OpaqueMailboxID;
  v1492 = sub_1B0E46A48();
  v1493 = sub_1B03B8BD8();
  v1545 = sub_1B0E45438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2888, &qword_1B0E9E108);
  v1495 = sub_1B0E46A48();
  v1496 = sub_1B0451F2C();
  v1544 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1542 = v1497;
  v1499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2870, &qword_1B0E9E100);
  sub_1B08A4894();
  sub_1B0E45798();
  for (i = v1500; ; i = v1372)
  {
    v1401 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2890, &qword_1B0E9E110);
    v1402 = v1540;
    sub_1B0E46518();
    v1403 = v1540[0];
    v1404 = v1540[1];
    v1405 = v1541 | (*(v1402 + 20) << 32);
    if (!v1540[0])
    {
      break;
    }

    v1398 = v1403;
    v1399 = v1404;
    v1400 = v1405 & 0xFFFFFFFFFFLL;
    v1389 = (v1405 & 0xFFFFFFFFFFLL) >> 32;
    v1390 = v1405;
    v1395 = v1404;
    v1394 = v1403;
    v1538 = v1403;
    v1539[0] = v1404;
    LODWORD(v1539[1]) = v1405;
    BYTE4(v1539[1]) = v1389;
    MEMORY[0x1E69E5928](v1403);
    v1391 = [v1394 databaseID];
    MEMORY[0x1E69E5920](v1394);
    v1396 = sub_1B039BF24(v1391, v13, v14, v15, v16, v17, v18, v19);
    v1392 = v20;
    v1536 = v1396;
    v1537 = v20;
    v1393 = v1545;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1535[2] = v1396;
    v1535[3] = v1392;
    v1397 = sub_1B0E45528();

    MEMORY[0x1E69E5928](v1394);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v1397)
    {
      MEMORY[0x1E69E5928](v1394);
      v1384 = [v1394 attributes];
      MEMORY[0x1E69E5920](v1394);
      v1535[1] = v1384;
      v1386 = v1535;
      v1535[0] = 2;
      v1385 = type metadata accessor for MailboxAttributes(0);
      sub_1B0694AF8();
      v1387 = sub_1B0E46F78();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v1387)
      {
        v1381 = sub_1B039BF24(*MEMORY[0x1E699A728], v21, v22, v23, v24, v25, v26, v27);
        v1382 = static OpaqueMailboxID.== infix(_:_:)(v1396, v1392, v1381, v28);

        v1383 = v1382;
      }

      else
      {
        v1383 = 0;
      }

      v1380 = v1383;

      v1388 = v1380;
    }

    else
    {
      v1388 = 1;
    }

    v1379 = v1388;
    MEMORY[0x1E69E5920](v1394);

    v1534 = v1379 & 1;
    MEMORY[0x1E69E5928](v1394);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v1379)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v1377 = &v1505;
      v1505 = v1395;
      v1506 = v1390;
      v1378 = v1507;
      sub_1B0E44778();
      sub_1B039E440(v1377);
      v29 = v1508 | (*(v1378 + 20) << 32);
      v1502[0] = v1507[0];
      v1502[1] = v1507[1];
      v1503 = v29;
      v1504 = BYTE4(v29);
      v1376 = v1507[0] == 0;
      v1374 = v1376;
      sub_1B08A40BC(v1502);
      v1375 = v1374;
    }

    else
    {
      v1375 = 0;
    }

    v1373 = v1375;
    MEMORY[0x1E69E5920](v1394);

    v1533 = v1373;
    if (v1373)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1369 = v1514;
      v1514[0] = v1396;
      v1514[1] = v1392;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
      sub_1B0E454D8();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      MEMORY[0x1E69E5928](v1394);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1371 = v1511;
      v1511[0] = v1394;
      v1511[1] = v1395;
      v1512 = v1390;
      v1513 = v1389;
      v1370 = &v1509;
      v1509 = v1395;
      v1510 = v1390;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A0, &qword_1B0E9E118);
      sub_1B0E44788();

      MEMORY[0x1E69E5920](v1394);

      v1372 = v1401;
    }

    else
    {
      v1366 = v1394;
      v1367 = v1395;
      v1368 = v1396;
      if ((v1482 & 1) == 0)
      {
        v315 = v1368;
        v317 = v1367;
        v316 = v1366;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        sub_1B08A491C();
        v318 = swift_allocError();
        swift_willThrow();

        MEMORY[0x1E69E5920](v316);

        sub_1B039E440(v1543);
        sub_1B039E440(&v1544);
        sub_1B039E440(&v1545);
        return v1302;
      }

      v1364 = v1545;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1531 = v1396;
      v1532 = v1392;
      v1365 = sub_1B0E45528();

      if (v1365)
      {
        (*(v1484 + 16))(v1490, v1481, v1483);
        sub_1B0394784(v1481, v1480);
        sub_1B0394784(v1480, v1478);
        sub_1B03F4FD0(v1480, v1476);
        v30 = (v1478 + *(v1474 + 20));
        v1327 = *v30;
        v1328 = *(v30 + 1);
        sub_1B039480C(v1478);
        v1326 = 24;
        v1341 = 7;
        v31 = swift_allocObject();
        v32 = v1328;
        v1332 = v31;
        *(v31 + 16) = v1327;
        *(v31 + 20) = v32;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v33 = swift_allocObject();
        v34 = v1328;
        v1329 = v33;
        *(v33 + 16) = v1327;
        *(v33 + 20) = v34;

        v1340 = 32;
        v35 = swift_allocObject();
        v36 = v1329;
        v1337 = v35;
        *(v35 + 16) = v1406;
        *(v35 + 24) = v36;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v1476);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = swift_allocObject();
        v38 = v1392;
        v1330 = v37;
        *(v37 + 16) = v1396;
        *(v37 + 24) = v38;

        v39 = swift_allocObject();
        v40 = v1330;
        v1342 = v39;
        *(v39 + 16) = v1407;
        *(v39 + 24) = v40;

        v1362 = sub_1B0E43988();
        v1363 = sub_1B0E458E8();
        v1339 = 17;
        v1344 = swift_allocObject();
        v1334 = 16;
        *(v1344 + 16) = 16;
        v1345 = swift_allocObject();
        v1336 = 4;
        *(v1345 + 16) = 4;
        v41 = swift_allocObject();
        v1331 = v41;
        *(v41 + 16) = v1408;
        *(v41 + 24) = 0;
        v42 = swift_allocObject();
        v43 = v1331;
        v1346 = v42;
        *(v42 + 16) = v1409;
        *(v42 + 24) = v43;
        v1347 = swift_allocObject();
        *(v1347 + 16) = 0;
        v1348 = swift_allocObject();
        *(v1348 + 16) = 1;
        v44 = swift_allocObject();
        v45 = v1332;
        v1333 = v44;
        *(v44 + 16) = v1410;
        *(v44 + 24) = v45;
        v46 = swift_allocObject();
        v47 = v1333;
        v1349 = v46;
        *(v46 + 16) = v1411;
        *(v46 + 24) = v47;
        v1350 = swift_allocObject();
        *(v1350 + 16) = v1334;
        v1351 = swift_allocObject();
        *(v1351 + 16) = v1336;
        v48 = swift_allocObject();
        v1335 = v48;
        *(v48 + 16) = v1412;
        *(v48 + 24) = 0;
        v49 = swift_allocObject();
        v50 = v1335;
        v1352 = v49;
        *(v49 + 16) = v1413;
        *(v49 + 24) = v50;
        v1353 = swift_allocObject();
        *(v1353 + 16) = 0;
        v1354 = swift_allocObject();
        *(v1354 + 16) = v1336;
        v51 = swift_allocObject();
        v52 = v1337;
        v1338 = v51;
        *(v51 + 16) = v1414;
        *(v51 + 24) = v52;
        v53 = swift_allocObject();
        v54 = v1338;
        v1355 = v53;
        *(v53 + 16) = v1415;
        *(v53 + 24) = v54;
        v1356 = swift_allocObject();
        *(v1356 + 16) = 32;
        v1357 = swift_allocObject();
        *(v1357 + 16) = 8;
        v55 = swift_allocObject();
        v56 = v1342;
        v1343 = v55;
        *(v55 + 16) = v1416;
        *(v55 + 24) = v56;
        v57 = swift_allocObject();
        v58 = v1343;
        v1359 = v57;
        *(v57 + 16) = v1417;
        *(v57 + 24) = v58;
        v1361 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1358 = sub_1B0E46A48();
        v1360 = v59;

        v60 = v1344;
        v61 = v1360;
        *v1360 = v1418;
        v61[1] = v60;

        v62 = v1345;
        v63 = v1360;
        v1360[2] = v1419;
        v63[3] = v62;

        v64 = v1346;
        v65 = v1360;
        v1360[4] = v1420;
        v65[5] = v64;

        v66 = v1347;
        v67 = v1360;
        v1360[6] = v1421;
        v67[7] = v66;

        v68 = v1348;
        v69 = v1360;
        v1360[8] = v1422;
        v69[9] = v68;

        v70 = v1349;
        v71 = v1360;
        v1360[10] = v1423;
        v71[11] = v70;

        v72 = v1350;
        v73 = v1360;
        v1360[12] = v1424;
        v73[13] = v72;

        v74 = v1351;
        v75 = v1360;
        v1360[14] = v1425;
        v75[15] = v74;

        v76 = v1352;
        v77 = v1360;
        v1360[16] = v1426;
        v77[17] = v76;

        v78 = v1353;
        v79 = v1360;
        v1360[18] = v1427;
        v79[19] = v78;

        v80 = v1354;
        v81 = v1360;
        v1360[20] = v1428;
        v81[21] = v80;

        v82 = v1355;
        v83 = v1360;
        v1360[22] = v1429;
        v83[23] = v82;

        v84 = v1356;
        v85 = v1360;
        v1360[24] = v1430;
        v85[25] = v84;

        v86 = v1357;
        v87 = v1360;
        v1360[26] = v1431;
        v87[27] = v86;

        v88 = v1359;
        v89 = v1360;
        v1360[28] = v1432;
        v89[29] = v88;
        sub_1B0394964();

        if (os_log_type_enabled(v1362, v1363))
        {
          v1304 = sub_1B0E45D78();
          v1303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v1305 = sub_1B03949A8(0, v1303, v1303);
          v1306 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v1307 = &v1519;
          v1519 = v1304;
          v1308 = &v1518;
          v1518 = v1305;
          v1309 = &v1517;
          v1517 = v1306;
          sub_1B0394A48(2, &v1519);
          sub_1B0394A48(5, v1307);
          v90 = v1401;
          v1515 = v1418;
          v1516 = v1344;
          sub_1B03949FC(&v1515, v1307, v1308, v1309);
          v1310 = v90;
          v1311 = v1344;
          v1312 = v1345;
          v1313 = v1346;
          v1314 = v1347;
          v1315 = v1348;
          v1316 = v1349;
          v1317 = v1350;
          v1318 = v1351;
          v1319 = v1352;
          v1320 = v1353;
          v1321 = v1354;
          v1322 = v1355;
          v1323 = v1356;
          v1324 = v1357;
          v1325 = v1359;
          if (v90)
          {
            v1286 = v1311;
            v1287 = v1312;
            v1288 = v1313;
            v1289 = v1314;
            v1290 = v1315;
            v1291 = v1316;
            v1292 = v1317;
            v1293 = v1318;
            v1294 = v1319;
            v1295 = v1320;
            v1296 = v1321;
            v1297 = v1322;
            v1298 = v1323;
            v1299 = v1324;
            v1300 = v1325;
            v1061 = v1325;
            v1060 = v1324;
            v1059 = v1323;
            v1058 = v1322;
            v1057 = v1321;
            v1056 = v1320;
            v1055 = v1319;
            v1054 = v1318;
            v1053 = v1317;
            v1052 = v1316;
            v1051 = v1315;
            v1050 = v1314;
            v1049 = v1313;
            v1048 = v1312;

            __break(1u);
          }

          else
          {
            v1515 = v1419;
            v1516 = v1345;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1270 = 0;
            v1271 = v1344;
            v1272 = v1345;
            v1273 = v1346;
            v1274 = v1347;
            v1275 = v1348;
            v1276 = v1349;
            v1277 = v1350;
            v1278 = v1351;
            v1279 = v1352;
            v1280 = v1353;
            v1281 = v1354;
            v1282 = v1355;
            v1283 = v1356;
            v1284 = v1357;
            v1285 = v1359;
            v1515 = v1420;
            v1516 = v1346;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1254 = 0;
            v1255 = v1344;
            v1256 = v1345;
            v1257 = v1346;
            v1258 = v1347;
            v1259 = v1348;
            v1260 = v1349;
            v1261 = v1350;
            v1262 = v1351;
            v1263 = v1352;
            v1264 = v1353;
            v1265 = v1354;
            v1266 = v1355;
            v1267 = v1356;
            v1268 = v1357;
            v1269 = v1359;
            v1515 = v1421;
            v1516 = v1347;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1238 = 0;
            v1239 = v1344;
            v1240 = v1345;
            v1241 = v1346;
            v1242 = v1347;
            v1243 = v1348;
            v1244 = v1349;
            v1245 = v1350;
            v1246 = v1351;
            v1247 = v1352;
            v1248 = v1353;
            v1249 = v1354;
            v1250 = v1355;
            v1251 = v1356;
            v1252 = v1357;
            v1253 = v1359;
            v1515 = v1422;
            v1516 = v1348;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1222 = 0;
            v1223 = v1344;
            v1224 = v1345;
            v1225 = v1346;
            v1226 = v1347;
            v1227 = v1348;
            v1228 = v1349;
            v1229 = v1350;
            v1230 = v1351;
            v1231 = v1352;
            v1232 = v1353;
            v1233 = v1354;
            v1234 = v1355;
            v1235 = v1356;
            v1236 = v1357;
            v1237 = v1359;
            v1515 = v1423;
            v1516 = v1349;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1206 = 0;
            v1207 = v1344;
            v1208 = v1345;
            v1209 = v1346;
            v1210 = v1347;
            v1211 = v1348;
            v1212 = v1349;
            v1213 = v1350;
            v1214 = v1351;
            v1215 = v1352;
            v1216 = v1353;
            v1217 = v1354;
            v1218 = v1355;
            v1219 = v1356;
            v1220 = v1357;
            v1221 = v1359;
            v1515 = v1424;
            v1516 = v1350;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1190 = 0;
            v1191 = v1344;
            v1192 = v1345;
            v1193 = v1346;
            v1194 = v1347;
            v1195 = v1348;
            v1196 = v1349;
            v1197 = v1350;
            v1198 = v1351;
            v1199 = v1352;
            v1200 = v1353;
            v1201 = v1354;
            v1202 = v1355;
            v1203 = v1356;
            v1204 = v1357;
            v1205 = v1359;
            v1515 = v1425;
            v1516 = v1351;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1174 = 0;
            v1175 = v1344;
            v1176 = v1345;
            v1177 = v1346;
            v1178 = v1347;
            v1179 = v1348;
            v1180 = v1349;
            v1181 = v1350;
            v1182 = v1351;
            v1183 = v1352;
            v1184 = v1353;
            v1185 = v1354;
            v1186 = v1355;
            v1187 = v1356;
            v1188 = v1357;
            v1189 = v1359;
            v1515 = v1426;
            v1516 = v1352;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1158 = 0;
            v1159 = v1344;
            v1160 = v1345;
            v1161 = v1346;
            v1162 = v1347;
            v1163 = v1348;
            v1164 = v1349;
            v1165 = v1350;
            v1166 = v1351;
            v1167 = v1352;
            v1168 = v1353;
            v1169 = v1354;
            v1170 = v1355;
            v1171 = v1356;
            v1172 = v1357;
            v1173 = v1359;
            v1515 = v1427;
            v1516 = v1353;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1142 = 0;
            v1143 = v1344;
            v1144 = v1345;
            v1145 = v1346;
            v1146 = v1347;
            v1147 = v1348;
            v1148 = v1349;
            v1149 = v1350;
            v1150 = v1351;
            v1151 = v1352;
            v1152 = v1353;
            v1153 = v1354;
            v1154 = v1355;
            v1155 = v1356;
            v1156 = v1357;
            v1157 = v1359;
            v1515 = v1428;
            v1516 = v1354;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1126 = 0;
            v1127 = v1344;
            v1128 = v1345;
            v1129 = v1346;
            v1130 = v1347;
            v1131 = v1348;
            v1132 = v1349;
            v1133 = v1350;
            v1134 = v1351;
            v1135 = v1352;
            v1136 = v1353;
            v1137 = v1354;
            v1138 = v1355;
            v1139 = v1356;
            v1140 = v1357;
            v1141 = v1359;
            v1515 = v1429;
            v1516 = v1355;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1110 = 0;
            v1111 = v1344;
            v1112 = v1345;
            v1113 = v1346;
            v1114 = v1347;
            v1115 = v1348;
            v1116 = v1349;
            v1117 = v1350;
            v1118 = v1351;
            v1119 = v1352;
            v1120 = v1353;
            v1121 = v1354;
            v1122 = v1355;
            v1123 = v1356;
            v1124 = v1357;
            v1125 = v1359;
            v1515 = v1430;
            v1516 = v1356;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1094 = 0;
            v1095 = v1344;
            v1096 = v1345;
            v1097 = v1346;
            v1098 = v1347;
            v1099 = v1348;
            v1100 = v1349;
            v1101 = v1350;
            v1102 = v1351;
            v1103 = v1352;
            v1104 = v1353;
            v1105 = v1354;
            v1106 = v1355;
            v1107 = v1356;
            v1108 = v1357;
            v1109 = v1359;
            v1515 = v1431;
            v1516 = v1357;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1078 = 0;
            v1079 = v1344;
            v1080 = v1345;
            v1081 = v1346;
            v1082 = v1347;
            v1083 = v1348;
            v1084 = v1349;
            v1085 = v1350;
            v1086 = v1351;
            v1087 = v1352;
            v1088 = v1353;
            v1089 = v1354;
            v1090 = v1355;
            v1091 = v1356;
            v1092 = v1357;
            v1093 = v1359;
            v1515 = v1432;
            v1516 = v1359;
            sub_1B03949FC(&v1515, &v1519, &v1518, &v1517);
            v1062 = 0;
            v1063 = v1344;
            v1064 = v1345;
            v1065 = v1346;
            v1066 = v1347;
            v1067 = v1348;
            v1068 = v1349;
            v1069 = v1350;
            v1070 = v1351;
            v1071 = v1352;
            v1072 = v1353;
            v1073 = v1354;
            v1074 = v1355;
            v1075 = v1356;
            v1076 = v1357;
            v1077 = v1359;
            _os_log_impl(&dword_1B0389000, v1362, v1363, "[%.*hhx-%.*X] Mailbox ID %s is not unique.", v1304, 0x21u);
            sub_1B03998A8(v1305, 0, v1303);
            sub_1B03998A8(v1306, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v1301 = v1062;
          }
        }

        else
        {

          v1301 = v1401;
        }

        v1046 = v1301;
        MEMORY[0x1E69E5920](v1362);
        (*(v1484 + 8))(v1490, v1483);
        v1047 = v1046;
      }

      else
      {
        v1047 = v1401;
      }

      v1040 = v1047;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v1041 = &v1527;
      v1527 = v1395;
      v1528 = v1390;
      v1042 = v1529;
      sub_1B0E44778();
      sub_1B039E440(v1041);
      v1043 = v1529[0];
      v1044 = v1529[1];
      v1045 = v1530 | (*(v1042 + 20) << 32);
      if (v1529[0])
      {
        v1037 = v1043;
        v1038 = v1044;
        v1039 = v1045 & 0xFFFFFFFFFFLL;
        v984 = v1045 & 0xFFFFFFFFFFLL;
        v983 = v1044;
        v982 = v1043;
        v1525 = v1043;
        v1526[0] = v1044;
        LODWORD(v1526[1]) = v1045;
        BYTE4(v1526[1]) = (v1045 & 0xFFFFFFFFFFLL) >> 32;
        (*(v1484 + 16))(v1488, v1481, v1483);
        sub_1B0394784(v1481, v1480);
        sub_1B0394784(v1480, v1478);
        sub_1B03F4FD0(v1480, v1476);
        v91 = (v1478 + *(v1474 + 20));
        v976 = *v91;
        v977 = *(v91 + 1);
        sub_1B039480C(v1478);
        v1006 = 24;
        v1003 = 7;
        v92 = swift_allocObject();
        v93 = v977;
        v987 = v92;
        *(v92 + 16) = v976;
        *(v92 + 20) = v93;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v94 = swift_allocObject();
        v95 = v977;
        v978 = v94;
        *(v94 + 16) = v976;
        *(v94 + 20) = v95;

        v1002 = 32;
        v96 = swift_allocObject();
        v97 = v978;
        v992 = v96;
        *(v96 + 16) = v1433;
        *(v96 + 24) = v97;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v1476);
        MEMORY[0x1E69E5928](v1394);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v981 = 37;
        v98 = swift_allocObject();
        v99 = v1395;
        v100 = v1390;
        v101 = v1389;
        v979 = v98;
        *(v98 + 16) = v1394;
        *(v98 + 24) = v99;
        *(v98 + 32) = v100;
        *(v98 + 36) = v101;

        v102 = swift_allocObject();
        v103 = v979;
        v995 = v102;
        *(v102 + 16) = v1434;
        *(v102 + 24) = v103;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v104 = swift_allocObject();
        v105 = v1392;
        v980 = v104;
        *(v104 + 16) = v1396;
        *(v104 + 24) = v105;

        v106 = swift_allocObject();
        v107 = v980;
        v997 = v106;
        *(v106 + 16) = v1435;
        *(v106 + 24) = v107;

        MEMORY[0x1E69E5928](v982);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v108 = swift_allocObject();
        v109 = v983;
        v110 = v984;
        v111 = BYTE4(v984);
        v985 = v108;
        *(v108 + 16) = v982;
        *(v108 + 24) = v109;
        *(v108 + 32) = v110;
        *(v108 + 36) = v111;

        v112 = swift_allocObject();
        v113 = v985;
        v1004 = v112;
        *(v112 + 16) = v1436;
        *(v112 + 24) = v113;

        v1034 = sub_1B0E43988();
        v1035 = sub_1B0E458E8();
        v1000 = 17;
        v1007 = swift_allocObject();
        v989 = 16;
        *(v1007 + 16) = 16;
        v1008 = swift_allocObject();
        v991 = 4;
        *(v1008 + 16) = 4;
        v114 = swift_allocObject();
        v986 = v114;
        *(v114 + 16) = v1408;
        *(v114 + 24) = 0;
        v115 = swift_allocObject();
        v116 = v986;
        v1009 = v115;
        *(v115 + 16) = v1437;
        *(v115 + 24) = v116;
        v1010 = swift_allocObject();
        *(v1010 + 16) = 0;
        v1011 = swift_allocObject();
        *(v1011 + 16) = 1;
        v117 = swift_allocObject();
        v118 = v987;
        v988 = v117;
        *(v117 + 16) = v1438;
        *(v117 + 24) = v118;
        v119 = swift_allocObject();
        v120 = v988;
        v1012 = v119;
        *(v119 + 16) = v1439;
        *(v119 + 24) = v120;
        v1013 = swift_allocObject();
        *(v1013 + 16) = v989;
        v1014 = swift_allocObject();
        *(v1014 + 16) = v991;
        v121 = swift_allocObject();
        v990 = v121;
        *(v121 + 16) = v1412;
        *(v121 + 24) = 0;
        v122 = swift_allocObject();
        v123 = v990;
        v1015 = v122;
        *(v122 + 16) = v1440;
        *(v122 + 24) = v123;
        v1016 = swift_allocObject();
        *(v1016 + 16) = 0;
        v1017 = swift_allocObject();
        *(v1017 + 16) = v991;
        v124 = swift_allocObject();
        v125 = v992;
        v993 = v124;
        *(v124 + 16) = v1441;
        *(v124 + 24) = v125;
        v126 = swift_allocObject();
        v127 = v993;
        v1018 = v126;
        *(v126 + 16) = v1442;
        *(v126 + 24) = v127;
        v1019 = swift_allocObject();
        *(v1019 + 16) = 112;
        v1020 = swift_allocObject();
        v1001 = 8;
        *(v1020 + 16) = 8;
        v994 = swift_allocObject();
        *(v994 + 16) = 0x786F626C69616DLL;
        v128 = swift_allocObject();
        v129 = v994;
        v1021 = v128;
        *(v128 + 16) = v1443;
        *(v128 + 24) = v129;
        v1022 = swift_allocObject();
        *(v1022 + 16) = 37;
        v1023 = swift_allocObject();
        *(v1023 + 16) = v1001;
        v130 = swift_allocObject();
        v131 = v995;
        v996 = v130;
        *(v130 + 16) = v1444;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v996;
        v1024 = v132;
        *(v132 + 16) = v1445;
        *(v132 + 24) = v133;
        v1025 = swift_allocObject();
        v999 = 32;
        *(v1025 + 16) = 32;
        v1026 = swift_allocObject();
        *(v1026 + 16) = v1001;
        v134 = swift_allocObject();
        v135 = v997;
        v998 = v134;
        *(v134 + 16) = v1446;
        *(v134 + 24) = v135;
        v136 = swift_allocObject();
        v137 = v998;
        v1027 = v136;
        *(v136 + 16) = v1447;
        *(v136 + 24) = v137;
        v1028 = swift_allocObject();
        *(v1028 + 16) = v999;
        v1029 = swift_allocObject();
        *(v1029 + 16) = v1001;
        v138 = swift_allocObject();
        v139 = v1004;
        v1005 = v138;
        *(v138 + 16) = v1448;
        *(v138 + 24) = v139;
        v140 = swift_allocObject();
        v141 = v1005;
        v1031 = v140;
        *(v140 + 16) = v1449;
        *(v140 + 24) = v141;
        v1033 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v1030 = sub_1B0E46A48();
        v1032 = v142;

        v143 = v1007;
        v144 = v1032;
        *v1032 = v1450;
        v144[1] = v143;

        v145 = v1008;
        v146 = v1032;
        v1032[2] = v1451;
        v146[3] = v145;

        v147 = v1009;
        v148 = v1032;
        v1032[4] = v1452;
        v148[5] = v147;

        v149 = v1010;
        v150 = v1032;
        v1032[6] = v1453;
        v150[7] = v149;

        v151 = v1011;
        v152 = v1032;
        v1032[8] = v1454;
        v152[9] = v151;

        v153 = v1012;
        v154 = v1032;
        v1032[10] = v1455;
        v154[11] = v153;

        v155 = v1013;
        v156 = v1032;
        v1032[12] = v1456;
        v156[13] = v155;

        v157 = v1014;
        v158 = v1032;
        v1032[14] = v1457;
        v158[15] = v157;

        v159 = v1015;
        v160 = v1032;
        v1032[16] = v1458;
        v160[17] = v159;

        v161 = v1016;
        v162 = v1032;
        v1032[18] = v1459;
        v162[19] = v161;

        v163 = v1017;
        v164 = v1032;
        v1032[20] = v1460;
        v164[21] = v163;

        v165 = v1018;
        v166 = v1032;
        v1032[22] = v1461;
        v166[23] = v165;

        v167 = v1019;
        v168 = v1032;
        v1032[24] = v1462;
        v168[25] = v167;

        v169 = v1020;
        v170 = v1032;
        v1032[26] = v1463;
        v170[27] = v169;

        v171 = v1021;
        v172 = v1032;
        v1032[28] = v1464;
        v172[29] = v171;

        v173 = v1022;
        v174 = v1032;
        v1032[30] = v1465;
        v174[31] = v173;

        v175 = v1023;
        v176 = v1032;
        v1032[32] = v1466;
        v176[33] = v175;

        v177 = v1024;
        v178 = v1032;
        v1032[34] = v1467;
        v178[35] = v177;

        v179 = v1025;
        v180 = v1032;
        v1032[36] = v1468;
        v180[37] = v179;

        v181 = v1026;
        v182 = v1032;
        v1032[38] = v1469;
        v182[39] = v181;

        v183 = v1027;
        v184 = v1032;
        v1032[40] = v1470;
        v184[41] = v183;

        v185 = v1028;
        v186 = v1032;
        v1032[42] = v1471;
        v186[43] = v185;

        v187 = v1029;
        v188 = v1032;
        v1032[44] = v1472;
        v188[45] = v187;

        v189 = v1031;
        v190 = v1032;
        v1032[46] = v1473;
        v190[47] = v189;
        sub_1B0394964();

        if (os_log_type_enabled(v1034, v1035))
        {
          v191 = v1011;
          v192 = v1010;
          v193 = v1009;
          v194 = v1008;
          v195 = v1007;
          v945 = sub_1B0E45D78();
          v944 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v946 = sub_1B03949A8(0, v944, v944);
          v947 = sub_1B03949A8(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v948 = &v1524;
          v1524 = v945;
          v949 = &v1523;
          v1523 = v946;
          v950 = &v1522;
          v1522 = v947;
          sub_1B0394A48(3, &v1524);
          sub_1B0394A48(8, v948);
          v196 = v1040;
          v1520 = v1450;
          v1521 = v195;
          sub_1B03949FC(&v1520, v948, v949, v950);
          v951 = v196;
          v952 = v195;
          v953 = v194;
          v954 = v193;
          v955 = v192;
          v956 = v191;
          v957 = v1012;
          v958 = v1013;
          v959 = v1014;
          v960 = v1015;
          v961 = v1016;
          v962 = v1017;
          v963 = v1018;
          v964 = v1019;
          v965 = v1020;
          v966 = v1021;
          v967 = v1022;
          v968 = v1023;
          v969 = v1024;
          v970 = v1025;
          v971 = v1026;
          v972 = v1027;
          v973 = v1028;
          v974 = v1029;
          v975 = v1031;
          if (v196)
          {
            v919 = v952;
            v920 = v953;
            v921 = v954;
            v922 = v955;
            v923 = v956;
            v924 = v957;
            v925 = v958;
            v926 = v959;
            v927 = v960;
            v928 = v961;
            v929 = v962;
            v930 = v963;
            v931 = v964;
            v932 = v965;
            v933 = v966;
            v934 = v967;
            v935 = v968;
            v936 = v969;
            v937 = v970;
            v938 = v971;
            v939 = v972;
            v940 = v973;
            v941 = v974;
            v942 = v975;
            v343 = v975;
            v342 = v974;
            v341 = v973;
            v340 = v972;
            v339 = v971;
            v338 = v970;
            v337 = v969;
            v336 = v968;
            v335 = v967;
            v334 = v966;
            v333 = v965;
            v332 = v964;
            v331 = v963;
            v330 = v962;
            v329 = v961;
            v328 = v960;
            v327 = v959;
            v326 = v958;
            v325 = v957;
            v324 = v956;
            v323 = v955;
            v322 = v954;
            v321 = v953;

            __break(1u);
          }

          else
          {
            v197 = v1011;
            v198 = v1010;
            v199 = v1009;
            v200 = v1008;
            v201 = v1007;
            v1520 = v1451;
            v1521 = v1008;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v894 = 0;
            v895 = v201;
            v896 = v200;
            v897 = v199;
            v898 = v198;
            v899 = v197;
            v900 = v1012;
            v901 = v1013;
            v902 = v1014;
            v903 = v1015;
            v904 = v1016;
            v905 = v1017;
            v906 = v1018;
            v907 = v1019;
            v908 = v1020;
            v909 = v1021;
            v910 = v1022;
            v911 = v1023;
            v912 = v1024;
            v913 = v1025;
            v914 = v1026;
            v915 = v1027;
            v916 = v1028;
            v917 = v1029;
            v918 = v1031;
            v202 = v1011;
            v203 = v1010;
            v204 = v1009;
            v205 = v1008;
            v206 = v1007;
            v1520 = v1452;
            v1521 = v1009;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v869 = 0;
            v870 = v206;
            v871 = v205;
            v872 = v204;
            v873 = v203;
            v874 = v202;
            v875 = v1012;
            v876 = v1013;
            v877 = v1014;
            v878 = v1015;
            v879 = v1016;
            v880 = v1017;
            v881 = v1018;
            v882 = v1019;
            v883 = v1020;
            v884 = v1021;
            v885 = v1022;
            v886 = v1023;
            v887 = v1024;
            v888 = v1025;
            v889 = v1026;
            v890 = v1027;
            v891 = v1028;
            v892 = v1029;
            v893 = v1031;
            v207 = v1011;
            v208 = v1010;
            v209 = v1009;
            v210 = v1008;
            v211 = v1007;
            v1520 = v1453;
            v1521 = v1010;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v844 = 0;
            v845 = v211;
            v846 = v210;
            v847 = v209;
            v848 = v208;
            v849 = v207;
            v850 = v1012;
            v851 = v1013;
            v852 = v1014;
            v853 = v1015;
            v854 = v1016;
            v855 = v1017;
            v856 = v1018;
            v857 = v1019;
            v858 = v1020;
            v859 = v1021;
            v860 = v1022;
            v861 = v1023;
            v862 = v1024;
            v863 = v1025;
            v864 = v1026;
            v865 = v1027;
            v866 = v1028;
            v867 = v1029;
            v868 = v1031;
            v212 = v1011;
            v213 = v1010;
            v214 = v1009;
            v215 = v1008;
            v216 = v1007;
            v1520 = v1454;
            v1521 = v1011;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v819 = 0;
            v820 = v216;
            v821 = v215;
            v822 = v214;
            v823 = v213;
            v824 = v212;
            v825 = v1012;
            v826 = v1013;
            v827 = v1014;
            v828 = v1015;
            v829 = v1016;
            v830 = v1017;
            v831 = v1018;
            v832 = v1019;
            v833 = v1020;
            v834 = v1021;
            v835 = v1022;
            v836 = v1023;
            v837 = v1024;
            v838 = v1025;
            v839 = v1026;
            v840 = v1027;
            v841 = v1028;
            v842 = v1029;
            v843 = v1031;
            v217 = v1011;
            v218 = v1010;
            v219 = v1009;
            v220 = v1008;
            v221 = v1007;
            v1520 = v1455;
            v1521 = v1012;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v794 = 0;
            v795 = v221;
            v796 = v220;
            v797 = v219;
            v798 = v218;
            v799 = v217;
            v800 = v1012;
            v801 = v1013;
            v802 = v1014;
            v803 = v1015;
            v804 = v1016;
            v805 = v1017;
            v806 = v1018;
            v807 = v1019;
            v808 = v1020;
            v809 = v1021;
            v810 = v1022;
            v811 = v1023;
            v812 = v1024;
            v813 = v1025;
            v814 = v1026;
            v815 = v1027;
            v816 = v1028;
            v817 = v1029;
            v818 = v1031;
            v222 = v1011;
            v223 = v1010;
            v224 = v1009;
            v225 = v1008;
            v226 = v1007;
            v1520 = v1456;
            v1521 = v1013;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v769 = 0;
            v770 = v226;
            v771 = v225;
            v772 = v224;
            v773 = v223;
            v774 = v222;
            v775 = v1012;
            v776 = v1013;
            v777 = v1014;
            v778 = v1015;
            v779 = v1016;
            v780 = v1017;
            v781 = v1018;
            v782 = v1019;
            v783 = v1020;
            v784 = v1021;
            v785 = v1022;
            v786 = v1023;
            v787 = v1024;
            v788 = v1025;
            v789 = v1026;
            v790 = v1027;
            v791 = v1028;
            v792 = v1029;
            v793 = v1031;
            v227 = v1011;
            v228 = v1010;
            v229 = v1009;
            v230 = v1008;
            v231 = v1007;
            v1520 = v1457;
            v1521 = v1014;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v744 = 0;
            v745 = v231;
            v746 = v230;
            v747 = v229;
            v748 = v228;
            v749 = v227;
            v750 = v1012;
            v751 = v1013;
            v752 = v1014;
            v753 = v1015;
            v754 = v1016;
            v755 = v1017;
            v756 = v1018;
            v757 = v1019;
            v758 = v1020;
            v759 = v1021;
            v760 = v1022;
            v761 = v1023;
            v762 = v1024;
            v763 = v1025;
            v764 = v1026;
            v765 = v1027;
            v766 = v1028;
            v767 = v1029;
            v768 = v1031;
            v232 = v1011;
            v233 = v1010;
            v234 = v1009;
            v235 = v1008;
            v236 = v1007;
            v1520 = v1458;
            v1521 = v1015;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v719 = 0;
            v720 = v236;
            v721 = v235;
            v722 = v234;
            v723 = v233;
            v724 = v232;
            v725 = v1012;
            v726 = v1013;
            v727 = v1014;
            v728 = v1015;
            v729 = v1016;
            v730 = v1017;
            v731 = v1018;
            v732 = v1019;
            v733 = v1020;
            v734 = v1021;
            v735 = v1022;
            v736 = v1023;
            v737 = v1024;
            v738 = v1025;
            v739 = v1026;
            v740 = v1027;
            v741 = v1028;
            v742 = v1029;
            v743 = v1031;
            v237 = v1011;
            v238 = v1010;
            v239 = v1009;
            v240 = v1008;
            v241 = v1007;
            v1520 = v1459;
            v1521 = v1016;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v694 = 0;
            v695 = v241;
            v696 = v240;
            v697 = v239;
            v698 = v238;
            v699 = v237;
            v700 = v1012;
            v701 = v1013;
            v702 = v1014;
            v703 = v1015;
            v704 = v1016;
            v705 = v1017;
            v706 = v1018;
            v707 = v1019;
            v708 = v1020;
            v709 = v1021;
            v710 = v1022;
            v711 = v1023;
            v712 = v1024;
            v713 = v1025;
            v714 = v1026;
            v715 = v1027;
            v716 = v1028;
            v717 = v1029;
            v718 = v1031;
            v242 = v1011;
            v243 = v1010;
            v244 = v1009;
            v245 = v1008;
            v246 = v1007;
            v1520 = v1460;
            v1521 = v1017;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v669 = 0;
            v670 = v246;
            v671 = v245;
            v672 = v244;
            v673 = v243;
            v674 = v242;
            v675 = v1012;
            v676 = v1013;
            v677 = v1014;
            v678 = v1015;
            v679 = v1016;
            v680 = v1017;
            v681 = v1018;
            v682 = v1019;
            v683 = v1020;
            v684 = v1021;
            v685 = v1022;
            v686 = v1023;
            v687 = v1024;
            v688 = v1025;
            v689 = v1026;
            v690 = v1027;
            v691 = v1028;
            v692 = v1029;
            v693 = v1031;
            v247 = v1011;
            v248 = v1010;
            v249 = v1009;
            v250 = v1008;
            v251 = v1007;
            v1520 = v1461;
            v1521 = v1018;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v644 = 0;
            v645 = v251;
            v646 = v250;
            v647 = v249;
            v648 = v248;
            v649 = v247;
            v650 = v1012;
            v651 = v1013;
            v652 = v1014;
            v653 = v1015;
            v654 = v1016;
            v655 = v1017;
            v656 = v1018;
            v657 = v1019;
            v658 = v1020;
            v659 = v1021;
            v660 = v1022;
            v661 = v1023;
            v662 = v1024;
            v663 = v1025;
            v664 = v1026;
            v665 = v1027;
            v666 = v1028;
            v667 = v1029;
            v668 = v1031;
            v252 = v1011;
            v253 = v1010;
            v254 = v1009;
            v255 = v1008;
            v256 = v1007;
            v1520 = v1462;
            v1521 = v1019;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v619 = 0;
            v620 = v256;
            v621 = v255;
            v622 = v254;
            v623 = v253;
            v624 = v252;
            v625 = v1012;
            v626 = v1013;
            v627 = v1014;
            v628 = v1015;
            v629 = v1016;
            v630 = v1017;
            v631 = v1018;
            v632 = v1019;
            v633 = v1020;
            v634 = v1021;
            v635 = v1022;
            v636 = v1023;
            v637 = v1024;
            v638 = v1025;
            v639 = v1026;
            v640 = v1027;
            v641 = v1028;
            v642 = v1029;
            v643 = v1031;
            v257 = v1011;
            v258 = v1010;
            v259 = v1009;
            v260 = v1008;
            v261 = v1007;
            v1520 = v1463;
            v1521 = v1020;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v594 = 0;
            v595 = v261;
            v596 = v260;
            v597 = v259;
            v598 = v258;
            v599 = v257;
            v600 = v1012;
            v601 = v1013;
            v602 = v1014;
            v603 = v1015;
            v604 = v1016;
            v605 = v1017;
            v606 = v1018;
            v607 = v1019;
            v608 = v1020;
            v609 = v1021;
            v610 = v1022;
            v611 = v1023;
            v612 = v1024;
            v613 = v1025;
            v614 = v1026;
            v615 = v1027;
            v616 = v1028;
            v617 = v1029;
            v618 = v1031;
            v262 = v1011;
            v263 = v1010;
            v264 = v1009;
            v265 = v1008;
            v266 = v1007;
            v1520 = v1464;
            v1521 = v1021;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v569 = 0;
            v570 = v266;
            v571 = v265;
            v572 = v264;
            v573 = v263;
            v574 = v262;
            v575 = v1012;
            v576 = v1013;
            v577 = v1014;
            v578 = v1015;
            v579 = v1016;
            v580 = v1017;
            v581 = v1018;
            v582 = v1019;
            v583 = v1020;
            v584 = v1021;
            v585 = v1022;
            v586 = v1023;
            v587 = v1024;
            v588 = v1025;
            v589 = v1026;
            v590 = v1027;
            v591 = v1028;
            v592 = v1029;
            v593 = v1031;
            v267 = v1011;
            v268 = v1010;
            v269 = v1009;
            v270 = v1008;
            v271 = v1007;
            v1520 = v1465;
            v1521 = v1022;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v544 = 0;
            v545 = v271;
            v546 = v270;
            v547 = v269;
            v548 = v268;
            v549 = v267;
            v550 = v1012;
            v551 = v1013;
            v552 = v1014;
            v553 = v1015;
            v554 = v1016;
            v555 = v1017;
            v556 = v1018;
            v557 = v1019;
            v558 = v1020;
            v559 = v1021;
            v560 = v1022;
            v561 = v1023;
            v562 = v1024;
            v563 = v1025;
            v564 = v1026;
            v565 = v1027;
            v566 = v1028;
            v567 = v1029;
            v568 = v1031;
            v272 = v1011;
            v273 = v1010;
            v274 = v1009;
            v275 = v1008;
            v276 = v1007;
            v1520 = v1466;
            v1521 = v1023;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v519 = 0;
            v520 = v276;
            v521 = v275;
            v522 = v274;
            v523 = v273;
            v524 = v272;
            v525 = v1012;
            v526 = v1013;
            v527 = v1014;
            v528 = v1015;
            v529 = v1016;
            v530 = v1017;
            v531 = v1018;
            v532 = v1019;
            v533 = v1020;
            v534 = v1021;
            v535 = v1022;
            v536 = v1023;
            v537 = v1024;
            v538 = v1025;
            v539 = v1026;
            v540 = v1027;
            v541 = v1028;
            v542 = v1029;
            v543 = v1031;
            v277 = v1011;
            v278 = v1010;
            v279 = v1009;
            v280 = v1008;
            v281 = v1007;
            v1520 = v1467;
            v1521 = v1024;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v494 = 0;
            v495 = v281;
            v496 = v280;
            v497 = v279;
            v498 = v278;
            v499 = v277;
            v500 = v1012;
            v501 = v1013;
            v502 = v1014;
            v503 = v1015;
            v504 = v1016;
            v505 = v1017;
            v506 = v1018;
            v507 = v1019;
            v508 = v1020;
            v509 = v1021;
            v510 = v1022;
            v511 = v1023;
            v512 = v1024;
            v513 = v1025;
            v514 = v1026;
            v515 = v1027;
            v516 = v1028;
            v517 = v1029;
            v518 = v1031;
            v282 = v1011;
            v283 = v1010;
            v284 = v1009;
            v285 = v1008;
            v286 = v1007;
            v1520 = v1468;
            v1521 = v1025;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v469 = 0;
            v470 = v286;
            v471 = v285;
            v472 = v284;
            v473 = v283;
            v474 = v282;
            v475 = v1012;
            v476 = v1013;
            v477 = v1014;
            v478 = v1015;
            v479 = v1016;
            v480 = v1017;
            v481 = v1018;
            v482 = v1019;
            v483 = v1020;
            v484 = v1021;
            v485 = v1022;
            v486 = v1023;
            v487 = v1024;
            v488 = v1025;
            v489 = v1026;
            v490 = v1027;
            v491 = v1028;
            v492 = v1029;
            v493 = v1031;
            v287 = v1011;
            v288 = v1010;
            v289 = v1009;
            v290 = v1008;
            v291 = v1007;
            v1520 = v1469;
            v1521 = v1026;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v444 = 0;
            v445 = v291;
            v446 = v290;
            v447 = v289;
            v448 = v288;
            v449 = v287;
            v450 = v1012;
            v451 = v1013;
            v452 = v1014;
            v453 = v1015;
            v454 = v1016;
            v455 = v1017;
            v456 = v1018;
            v457 = v1019;
            v458 = v1020;
            v459 = v1021;
            v460 = v1022;
            v461 = v1023;
            v462 = v1024;
            v463 = v1025;
            v464 = v1026;
            v465 = v1027;
            v466 = v1028;
            v467 = v1029;
            v468 = v1031;
            v292 = v1011;
            v293 = v1010;
            v294 = v1009;
            v295 = v1008;
            v296 = v1007;
            v1520 = v1470;
            v1521 = v1027;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v419 = 0;
            v420 = v296;
            v421 = v295;
            v422 = v294;
            v423 = v293;
            v424 = v292;
            v425 = v1012;
            v426 = v1013;
            v427 = v1014;
            v428 = v1015;
            v429 = v1016;
            v430 = v1017;
            v431 = v1018;
            v432 = v1019;
            v433 = v1020;
            v434 = v1021;
            v435 = v1022;
            v436 = v1023;
            v437 = v1024;
            v438 = v1025;
            v439 = v1026;
            v440 = v1027;
            v441 = v1028;
            v442 = v1029;
            v443 = v1031;
            v297 = v1011;
            v298 = v1010;
            v299 = v1009;
            v300 = v1008;
            v301 = v1007;
            v1520 = v1471;
            v1521 = v1028;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v394 = 0;
            v395 = v301;
            v396 = v300;
            v397 = v299;
            v398 = v298;
            v399 = v297;
            v400 = v1012;
            v401 = v1013;
            v402 = v1014;
            v403 = v1015;
            v404 = v1016;
            v405 = v1017;
            v406 = v1018;
            v407 = v1019;
            v408 = v1020;
            v409 = v1021;
            v410 = v1022;
            v411 = v1023;
            v412 = v1024;
            v413 = v1025;
            v414 = v1026;
            v415 = v1027;
            v416 = v1028;
            v417 = v1029;
            v418 = v1031;
            v302 = v1011;
            v303 = v1010;
            v304 = v1009;
            v305 = v1008;
            v306 = v1007;
            v1520 = v1472;
            v1521 = v1029;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v369 = 0;
            v370 = v306;
            v371 = v305;
            v372 = v304;
            v373 = v303;
            v374 = v302;
            v375 = v1012;
            v376 = v1013;
            v377 = v1014;
            v378 = v1015;
            v379 = v1016;
            v380 = v1017;
            v381 = v1018;
            v382 = v1019;
            v383 = v1020;
            v384 = v1021;
            v385 = v1022;
            v386 = v1023;
            v387 = v1024;
            v388 = v1025;
            v389 = v1026;
            v390 = v1027;
            v391 = v1028;
            v392 = v1029;
            v393 = v1031;
            v307 = v1011;
            v308 = v1010;
            v309 = v1009;
            v310 = v1008;
            v311 = v1007;
            v1520 = v1473;
            v1521 = v1031;
            sub_1B03949FC(&v1520, &v1524, &v1523, &v1522);
            v344 = 0;
            v345 = v311;
            v346 = v310;
            v347 = v309;
            v348 = v308;
            v349 = v307;
            v350 = v1012;
            v351 = v1013;
            v352 = v1014;
            v353 = v1015;
            v354 = v1016;
            v355 = v1017;
            v356 = v1018;
            v357 = v1019;
            v358 = v1020;
            v359 = v1021;
            v360 = v1022;
            v361 = v1023;
            v362 = v1024;
            v363 = v1025;
            v364 = v1026;
            v365 = v1027;
            v366 = v1028;
            v367 = v1029;
            v368 = v1031;
            _os_log_impl(&dword_1B0389000, v1034, v1035, "[%.*hhx-%.*X] Mailbox name '%{sensitive,mask.mailbox}s' is not unique (%s %s).", v945, 0x3Fu);
            sub_1B03998A8(v946, 0, v944);
            sub_1B03998A8(v947, 3, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v943 = v344;
          }
        }

        else
        {

          v943 = v1040;
        }

        v320 = v943;
        MEMORY[0x1E69E5920](v1034);
        (*(v1484 + 8))(v1488, v1483);
        MEMORY[0x1E69E5920](v982);

        v1036 = v320;
      }

      else
      {
        v1036 = v1040;
      }

      v319 = v1036;

      MEMORY[0x1E69E5920](v1394);

      v1372 = v319;
    }
  }

  sub_1B039E440(v1543);
  v313 = &v1544;
  v314 = v1544;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v313);
  sub_1B039E440(&v1545);
  return v314;
}

uint64_t sub_1B08964F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B0896530(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return a2;
}

uint64_t sub_1B0896584@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x1E69E5928](a1);
  v12 = [a1 databaseID];
  MEMORY[0x1E69E5920](a1);
  result = sub_1B039BF24(v12, v2, v3, v4, v5, v6, v7, v8);
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B0896600()
{
  if (*(v0 + *(type metadata accessor for MailboxUpdateTree(0) + 52)))
  {
    sub_1B0E42A08();
    sub_1B0E46A48();
    MEMORY[0x1E69E5928](@"AccountMailboxListingDidChange");
    sub_1B0E44AD8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = sub_1B0E44AC8();
    MEMORY[0x1E69E5928](v3);

    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](@"AccountMailboxListingDidChange");
    sub_1B0E429E8();
    sub_1B0394964();
    return v1;
  }

  else
  {
    sub_1B0E42A08();
    return sub_1B0E46A48();
  }
}

uint64_t sub_1B0896744(uint64_t a1)
{
  v5 = a1;
  v12 = 0;
  v8 = sub_1B0E42A08();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v1 = &v4 - v4;
  v9 = &v4 - v4;
  v12 = v2;
  v11 = [objc_opt_self() defaultCenter];
  (*(v6 + 16))(v1, v5, v8);
  v10 = sub_1B0E429C8();
  (*(v6 + 8))(v9, v8);
  [v11 postNotification_];
  MEMORY[0x1E69E5920](v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B08968AC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](@"AccountMailboxListingDidChange");
  sub_1B0E44AD8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v4);

  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](@"AccountMailboxListingDidChange");
  MEMORY[0x1E69E5928](a1);
  sub_1B03EE50C();
  return sub_1B0E429E8();
}

unint64_t sub_1B08969A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a1;
  v129 = a2;
  v127 = a3;
  v122 = "Fatal error";
  v123 = "Range requires lowerBound <= upperBound";
  v124 = "Swift/Range.swift";
  v175 = 0;
  v176 = 0;
  v173 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  v152 = 0u;
  v153 = 0u;
  v125 = 0;
  v149[0] = 0;
  *(v149 + 5) = 0;
  v146 = 0;
  v147 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v185 = a4;
  v186 = a5;
  v131 = a4;
  v132 = a5;
  v128 = BYTE4(a5);
  v126 = 0;
  sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v31 - v5;
  v182 = v6;
  v183 = v7;
  v184 = v8;
  v179 = v131;
  v180 = v132;
  v181 = v9;
  v177 = v131;
  LODWORD(v178) = v132;
  BYTE4(v178) = v9;
  v134 = MailboxPath.pathSeparator.getter(v131, v178);
  v135 = v10;
  if (!v10)
  {
    goto LABEL_53;
  }

  v120 = v134;
  v121 = v135;
  v117 = v135;
  v118 = v134;
  v175 = v134;
  v176 = v135;
  v11 = sub_1B0E447F8();
  v174 = v11;
  v119 = v11;
  if ((v11 & 0x100) != 0)
  {

LABEL_53:
    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  v116 = v119;
  v115 = v119;
  v173 = v119;
  sub_1B07BA724(v130);
  if (v130)
  {
    v112 = v130;
    v113 = v129;
    v114 = v127;
    v107 = v127;
    v105 = v129;
    v106 = v130;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v108 = Namespace.removePrefix(_:)(v131, v132, v106);
    v109 = v12;

    v110 = v108;
    v111 = v109;
  }

  else
  {
    v110 = 0;
    v111 = 0;
  }

  v169 = v110;
  v170 = v111;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v169)
  {
    v171 = v169;
    v172 = v170;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v171 = v131;
    v172 = v132;
    if (v169)
    {
      sub_1B039E440(&v169);
    }
  }

  v101 = v171;
  v100 = v172;
  v167 = v171;
  v168 = v172;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v166 = v101;
  v163 = v101;
  v103 = &v162;
  v162 = v115;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B08A4AE0();
  sub_1B0E448D8();
  v104 = v164;
  if (v165)
  {

    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  v99 = v104;
  v97 = v104;
  v161 = v104;
  v13 = sub_1B0E451C8();
  v98 = v13;
  if (v97 < v13)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v91 = sub_1B0E45388();
  v92 = v14;
  v93 = v15;
  v94 = v16;
  *&v159 = v91;
  *(&v159 + 1) = v14;
  *&v160 = v15;
  *(&v160 + 1) = v16;
  v158[4] = v91;
  v158[5] = v14;
  v158[6] = v15;
  v158[7] = v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A8, &unk_1B0E9E120);
  v96 = sub_1B08A4B68();
  if (sub_1B0E45748())
  {
    swift_unknownObjectRelease();

    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  swift_unknownObjectRetain();
  v87 = v158;
  v158[0] = v91;
  v158[1] = v92;
  v158[2] = v93;
  v158[3] = v94;
  v88 = sub_1B08A4BF0();
  v17 = sub_1B0E45378();
  v89 = MailboxName.init(_:)(v17);
  v90 = v18;
  v156 = v89;
  v157 = v18;
  sub_1B07BA724(v130);
  if (v130)
  {
    v84 = v130;
    v85 = v129;
    v86 = v127;
    v77 = v127;
    v78 = v129;
    v79 = v130;
    v140 = v130;
    v141 = v129;
    v142 = v127;
    v138 = v89;
    v139 = v90;
    v19 = MailboxName.inbox.unsafeMutableAddressor();
    v80 = *v19;
    v81 = *(v19 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v136 = v80;
    v137 = v81;
    v82 = v138;
    v83 = v80;
    if ((v139 | (v139 << 32)) == (v81 | (v81 << 32)))
    {
      v76 = sub_1B04520BC(v82, v83);
    }

    else
    {
      v76 = 0;
    }

    v75 = v76;
    sub_1B039E440(&v136);
    if ((v75 & 1) == 0)
    {
      v154 = Namespace.addPrefix(to:)(v89, v90, v79);
      v155 = v20;

      goto LABEL_29;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v154 = v89;
  v155 = v90;
LABEL_29:
  sub_1B07BA724(v130);
  if (v130)
  {
    v72 = v130;
    v73 = v129;
    v74 = v127;
    v69 = v127;
    v70 = v129;
    v71 = v130;
    v143 = v130;
    v144 = v129;
    v145 = v127;
    v21 = Namespace.contains(_:)(v101, v100, v130);
    if (v21)
    {
      v67 = v154;
      v66 = v155;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v68 = Namespace.contains(_:)(v67, v66, v71);

      if ((v68 & 1) == 0)
      {

        sub_1B039E440(&v154);

        swift_unknownObjectRelease();

        v62 = v126;
        v63 = v126;
        v64 = v126;
        v65 = v126;
        return v62;
      }
    }
  }

  if (v97 < sub_1B0E452A8())
  {
    v59 = MEMORY[0x1E69E7508];
    v60 = sub_1B0E452B8();
    v61 = sub_1B0E452A8();
    if (v61 < v60)
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v22 = v125;
    v49 = sub_1B0E45388();
    v50 = v23;
    v51 = v24;
    v52 = v25;
    *&v152 = v49;
    *(&v152 + 1) = v23;
    *&v153 = v24;
    *(&v153 + 1) = v25;
    v53 = v154;
    v54 = v155;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v150 = MailboxPath.init(name:pathSeparator:)(v53, v26, v54, v118, v117);
    v151 = v27;
    v55 = v150;
    v56 = v27;
    v57 = BYTE4(v27);
    v58 = v22;
    if (v22)
    {

      v47 = 0;
      v48 = 0;
    }

    else
    {
      v47 = v55;
      v48 = v56 | (v57 << 32);
    }

    v45 = v48;
    v46 = v47;
    if (v47)
    {
      v43 = v46;
      v44 = v45 & 0xFFFFFFFFFFLL;
      v40 = (v45 & 0xFFFFFFFFFFLL) >> 32;
      v41 = v45;
      v42 = v46;
      v149[0] = v46;
      LODWORD(v149[1]) = v45;
      BYTE4(v149[1]) = v40;
      v148[4] = v49;
      v148[5] = v50;
      v148[6] = v51;
      v148[7] = v52;
      v28 = sub_1B0E45748();
      if ((v28 & 1) == 0)
      {
        v37 = v148;
        v148[0] = v49;
        v148[1] = v50;
        v148[2] = v51;
        v148[3] = v52;
        sub_1B0E44B48();
        v38 = sub_1B0E44B08();
        v39 = v29;
        if (v29)
        {
          v35 = v38;
          v36 = v39;
          v34 = v39;
          v33 = v38;
          v146 = v38;
          v147 = v39;
          v32 = v41 | (v40 << 32);
          swift_unknownObjectRelease();
          sub_1B039E440(&v154);

          swift_unknownObjectRelease();

          v62 = v42;
          v63 = v32;
          v64 = v33;
          v65 = v34;
          return v62;
        }
      }
    }

    swift_unknownObjectRelease();
    sub_1B039E440(&v154);

    swift_unknownObjectRelease();

    v62 = v126;
    v63 = v126;
    v64 = v126;
    v65 = v126;
    return v62;
  }

  sub_1B039E440(&v154);

  swift_unknownObjectRelease();

  v62 = v126;
  v63 = v126;
  v64 = v126;
  v65 = v126;
  return v62;
}

void sub_1B0897668(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v200 = v300;
  v188 = v277;
  v189 = &v257;
  v190 = &v226;
  v191 = &v214;
  v199 = a1;
  v193 = a2;
  v195 = 0;
  v295 = 0;
  v276 = 0;
  v275 = 0;
  *(v264 + 5) = 0;
  v264[0] = 0;
  v256 = 0;
  v255 = 0;
  v194 = 0;
  v241 = 0u;
  v240 = 0u;
  *(v227 + 5) = 0;
  v227[0] = 0;
  v226 = 0;
  *&v207[13] = 0;
  *&v207[8] = 0;
  *v207 = 0;
  v300[0] = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v301 = *(a1 + 64);
  v300[3] = v5;
  v300[2] = v4;
  v300[1] = v3;
  v307 = v300[0];
  v311 = v301;
  v310 = v5;
  v309 = v4;
  v308 = v3;
  sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](0);
  v196 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = v2;
  updated = type metadata accessor for MailboxUpdateTree(v7);
  v202 = *(v2 + *(updated + 36));
  v198 = v202;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = *v199;
  *(v200 + 101) = *(v199 + 5);
  v303 = v8;
  v201 = &v303;
  sub_1B06E38A8(&v303, &v294);
  sub_1B06E38A8(v201, &v293);
  v306 = v304;
  v305 = v303;
  sub_1B039E440(v201);
  v289 = v306;
  v288 = v305;
  v203 = sub_1B0451F2C();
  v204 = &v288;
  sub_1B0E44778();
  sub_1B039E440(v204);
  v205 = v290;
  v206 = v291 | (v292 << 32);
  if (v290)
  {
    v185 = v205;
    v186 = v206;
    v187 = BYTE4(v206);
    v9 = v194;
    v183 = BYTE4(v206);
    v182 = v206;
    v181 = v205;
    *v207 = v205;
    *&v207[16] = v206;
    v207[20] = BYTE4(v206);

    v10 = v200;
    v208 = v181;
    LODWORD(v209) = v182;
    BYTE4(v209) = v183;
    BYTE8(v211[1]) &= 1u;
    v200[8] = v181;
    v11 = v209;
    v12 = v210;
    v13 = v211[0];
    *(v10 + 185) = *(v211 + 9);
    v10[11] = v13;
    v10[10] = v12;
    v10[9] = v11;
    v184 = v9;
LABEL_29:
    v82 = v193;
    v83 = v200;
    *v193 = v200[8];
    v84 = v83[9];
    v85 = v83[10];
    v86 = v83[11];
    *(v82 + 57) = *(v83 + 185);
    v82[3] = v86;
    v82[2] = v85;
    v82[1] = v84;
    return;
  }

  v175 = *v199;
  v173 = *(v199 + 2);
  v174 = *(v199 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v286 = v175;
  LODWORD(v287) = v173;
  BYTE4(v287) = v174;
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v175, v287);
  v177 = v14;
  v176 = v14;

  v285 = v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  sub_1B0E44888();
  v179 = v283;
  v180 = v284;
  if (!v284)
  {

    v76 = v188;
    v77 = v200;
    v78 = v194;
    v87[0] = 0;
    v277[0] = 0;
    v277[1] = 0;
    v278 = 0uLL;
    v279 = 0uLL;
    v280 = 0uLL;
    v281 = 0;
    v282 = -64;
    v200[8] = 0u;
    v79 = v278;
    v80 = v279;
    v81 = v280;
    *(v77 + 185) = *(v76 + 57);
    v77[11] = v81;
    v77[10] = v80;
    v77[9] = v79;
    v184 = v78;
    goto LABEL_29;
  }

  v171 = v179;
  v172 = v180;
  v159 = v180;
  v160 = v179;
  v275 = v179;
  v276 = v180;

  v169 = *v199;
  v161 = *(v199 + 2);
  v162 = *(v199 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = (v192 + *(updated + 24));
  v163 = *v15;
  v164 = v15[1];
  v165 = v15[2];
  sub_1B07BA724(v163);
  v273 = v169;
  LODWORD(v274) = v161;
  BYTE4(v274) = v162;
  v170 = sub_1B08969A0(v163, v164, v165, v169, v274);
  v166 = v170;
  v167 = v16;
  *&v168 = v17;
  *(&v168 + 1) = v18;
  sub_1B07BA794(v163);

  if (v170)
  {
    v156 = v166;
    v157 = v167;
    v158 = v168;
    v148 = *(&v168 + 1);
    v146 = v168;
    v150 = v167;
    v149 = v166;
    *&v240 = v166;
    DWORD2(v240) = v167;
    BYTE12(v240) = BYTE4(v167);
    v241 = v168;
    v151 = *(v192 + *(updated + 36));
    v147 = v151;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v234 = v149;
    v235 = v150;
    v152 = &v234;
    sub_1B0E44778();
    sub_1B039E440(v152);
    v153 = v236;
    v154 = v237;
    v155 = v238 | (v239 << 32);
    if (!v236)
    {
      v41 = v194;

      v127 = 0;
      v228 = 0uLL;
      v229 = 0uLL;
      v230 = 0uLL;
      v231 = 0uLL;
      v232 = 0;
      v233 = -64;

      v42 = v190;
      v43 = v200;
      v200[8] = v228;
      v44 = v229;
      v45 = v230;
      v46 = v231;
      *(v43 + 185) = *(v42 + 81);
      v43[11] = v46;
      v43[10] = v45;
      v43[9] = v44;
      v184 = v41;
      goto LABEL_29;
    }

    v142 = v153;
    v143 = v154;
    v144 = v155;
    v145 = BYTE4(v155);
    v19 = v194;
    v129 = BYTE4(v155);
    v130 = v155;
    v131 = v154;
    v132 = v153;
    v226 = v153;
    v227[0] = v154;
    LODWORD(v227[1]) = v155;
    BYTE4(v227[1]) = BYTE4(v155);

    v133 = *v199;
    v134 = *(v199 + 2);
    v135 = *(v199 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = (v192 + *(updated + 24));
    v136 = *v20;
    v137 = v20[1];
    v138 = v20[2];
    sub_1B07BA724(v136);
    v224[0] = v136;
    v224[1] = v137;
    v224[2] = v138;
    sub_1B03BB0B4(v199, &v223);
    v139 = v87;
    MEMORY[0x1EEE9AC00](v87);
    v140 = &v87[-4];
    v87[-2] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
    sub_1B03F1A20(sub_1B08A4C78, v140, v22, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v23, &v225);
    v141 = v19;
    if (!v19)
    {
      sub_1B039E440(v199);
      sub_1B0876CCC(v224);
      v222 = v225;
      if (v225 == 2)
      {
        v128 = 0;
      }

      else
      {
        v128 = v222;
      }

      v24 = v141;
      v212 = v133;
      LODWORD(v213) = v134;
      BYTE4(v213) = v135;
      sub_1B089F374(v133, v213, v160, v159, v146, v148, v128 & 1, v296);
      v25 = v191;
      v26 = *(v188 + 25);
      v27 = *(v188 + 27);
      v28 = *(v188 + 29);
      v215 = v297;
      v191[2] = v28;
      v25[1] = v27;
      v214 = v26;

      v29 = v191;
      v216 = v132;
      v217 = v131;
      v218 = v130;
      v219 = v129;
      v30 = v214;
      v31 = v191[1];
      v32 = v191[2];
      v220 = v215;
      *(v191 + 120) = v32;
      *(v29 + 104) = v31;
      *(v29 + 88) = v30;
      v29[9] = v29[4];
      v33 = v29[5];
      v34 = v29[6];
      v35 = v29[7];
      *(v29 + 201) = *(v29 + 121);
      v29[12] = v35;
      v29[11] = v34;
      v29[10] = v33;
      v221 = v221 & 1 | 0x40;

      v36 = v191;
      v37 = v200;
      v200[8] = v191[9];
      v38 = v36[10];
      v39 = v36[11];
      v40 = v36[12];
      *(v37 + 185) = *(v36 + 201);
      v37[11] = v40;
      v37[10] = v39;
      v37[9] = v38;
      v184 = v24;
      goto LABEL_29;
    }

    sub_1B039E440(v199);
    __break(1u);
  }

  else
  {
    v47 = (v192 + *(updated + 24));
    v126 = *v47;
    v123 = v126;
    v124 = v47[1];
    v125 = v47[2];
    sub_1B07BA724(v126);
    if (v126)
    {
      v120 = v123;
      v121 = v124;
      v122 = v125;
      v114 = v125;
      v111 = v124;
      v113 = v123;
      v112 = *v199;
      v109 = *(v199 + 2);
      v110 = *(v199 + 12);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v244 = v112;
      LODWORD(v245) = v109;
      BYTE4(v245) = v110;
      v242 = Namespace.removePrefix(_:)(v112, v245, v113, v111, v114);
      v243 = v48;
      v115 = v242;
      v117 = v48;
      v116 = BYTE4(v48);

      v118 = v115;
      v119 = v117 | (v116 << 32);
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    v267 = v118;
    v268 = v119;
    v269 = BYTE4(v119);
    sub_1B03BB0B4(v199, &v266);
    if (v267)
    {
      v270 = v267;
      v271 = v268;
      v272 = v269;
    }

    else
    {
      v49 = *v199;
      *(v200 + 85) = *(v199 + 5);
      v302 = v49;
      sub_1B06E38A8(&v302, &v265);
      v50 = v302;
      *(v189 + 213) = *(v200 + 85);
      v270 = v50;
      if (v267)
      {
        sub_1B039E440(&v267);
      }
    }

    sub_1B039E440(v199);
    v103 = v270;
    v102 = v270;
    v264[0] = v270;
    LODWORD(v264[1]) = v271;
    BYTE4(v264[1]) = v272;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v263 = v103;
    sub_1B0E44B48();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B07B517C();
    v105 = &v263;
    v51 = sub_1B0E44B08();
    v108 = v52;
    v106 = v51;
    v107 = v52;
    sub_1B039E440(v105);
    if (!v108)
    {
      v87[1] = 0;
      v257 = 0uLL;
      v258 = 0uLL;
      v259 = 0uLL;
      v260 = 0uLL;
      v261 = 0;
      v262 = -64;

      v70 = v189;
      v71 = v200;
      v72 = v194;
      v200[8] = v257;
      v73 = v258;
      v74 = v259;
      v75 = v260;
      *(v71 + 185) = *(v70 + 57);
      v71[11] = v75;
      v71[10] = v74;
      v71[9] = v73;
      v184 = v72;
      goto LABEL_29;
    }

    v100 = v106;
    v101 = v107;
    v53 = v194;
    v93 = v107;
    v89 = v106;
    v255 = v106;
    v256 = v107;
    v90 = *v199;
    v91 = *(v199 + 2);
    v92 = *(v199 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = (v192 + *(updated + 24));
    v94 = *v54;
    v95 = v54[1];
    v96 = v54[2];
    sub_1B07BA724(v94);
    v253[0] = v94;
    v253[1] = v95;
    v253[2] = v96;
    sub_1B03BB0B4(v199, &v252);
    v97 = v87;
    MEMORY[0x1EEE9AC00](v87);
    v98 = &v87[-4];
    v87[-2] = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
    sub_1B03F1A20(sub_1B08A4C78, v98, v56, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v57, &v254);
    v99 = v53;
    if (!v53)
    {
      sub_1B039E440(v199);
      sub_1B0876CCC(v253);
      v251 = v254;
      if (v254 == 2)
      {
        v88 = 0;
      }

      else
      {
        v88 = v251;
      }

      v246 = v90;
      LODWORD(v247) = v91;
      BYTE4(v247) = v92;
      sub_1B089F374(v90, v247, v160, v159, v89, v93, v88 & 1, v298);
      v58 = v190;
      v59 = v298[0];
      v60 = v298[1];
      v248 = v299;
      *(v190 + 16) = v298[2];
      *(v58 + 15) = v60;
      *(v58 + 14) = v59;
      v61 = *(v58 + 14);
      v62 = *(v58 + 15);
      v63 = *(v58 + 16);
      v249 = v248;
      *(v58 + 20) = v63;
      *(v58 + 19) = v62;
      *(v58 + 18) = v61;
      HIBYTE(v250) = HIBYTE(v250) & 1 | 0x80;

      v64 = v190;
      v65 = v200;
      v66 = v99;
      v200[8] = *(v190 + 18);
      v67 = *(v64 + 19);
      v68 = *(v64 + 20);
      v69 = *(v64 + 21);
      *(v65 + 185) = v250;
      v65[11] = v69;
      v65[10] = v68;
      v65[9] = v67;
      v184 = v66;
      goto LABEL_29;
    }
  }

  sub_1B039E440(v199);
  __break(1u);
}

uint64_t sub_1B08986B4(void *a1, uint64_t *a2, uint64_t a3)
{
  v511 = a1;
  v510 = a2;
  v509 = a3;
  v410 = sub_1B039BBE8;
  v411 = sub_1B08A4CB8;
  v412 = sub_1B0394C30;
  v413 = sub_1B0394C24;
  v414 = sub_1B039BA2C;
  v415 = sub_1B039BA88;
  v416 = sub_1B039BB94;
  v417 = sub_1B0394C24;
  v418 = sub_1B039BBA0;
  v419 = sub_1B039BC08;
  v420 = 0x786F626C69616DLL;
  v421 = sub_1B06BA324;
  v422 = sub_1B070B550;
  v423 = sub_1B039BCF8;
  v424 = sub_1B08A4CC0;
  v425 = sub_1B039BCF8;
  v426 = sub_1B0398F5C;
  v427 = sub_1B0398F5C;
  v428 = sub_1B0399178;
  v429 = sub_1B0398F5C;
  v430 = sub_1B0398F5C;
  v431 = sub_1B039BA94;
  v432 = sub_1B0398F5C;
  v433 = sub_1B0398F5C;
  v434 = sub_1B0399178;
  v435 = sub_1B0398F5C;
  v436 = sub_1B0398F5C;
  v437 = sub_1B03991EC;
  v438 = sub_1B0398F5C;
  v439 = sub_1B0398F5C;
  v440 = sub_1B03993BC;
  v441 = sub_1B0398F5C;
  v442 = sub_1B0398F5C;
  v443 = sub_1B039BCEC;
  v444 = sub_1B0398F5C;
  v445 = sub_1B0398F5C;
  v446 = sub_1B039BCEC;
  v447 = sub_1B039BBE8;
  v448 = sub_1B08A4CA4;
  v449 = sub_1B0394C24;
  v450 = sub_1B039BA2C;
  v451 = sub_1B039BA88;
  v452 = sub_1B0394C24;
  v453 = sub_1B039BBA0;
  v454 = sub_1B039BC08;
  v455 = sub_1B06BA324;
  v456 = sub_1B070B550;
  v457 = sub_1B039BCF8;
  v458 = sub_1B08A4CAC;
  v459 = sub_1B039BCF8;
  v460 = sub_1B0398F5C;
  v461 = sub_1B0398F5C;
  v462 = sub_1B0399178;
  v463 = sub_1B0398F5C;
  v464 = sub_1B0398F5C;
  v465 = sub_1B039BA94;
  v466 = sub_1B0398F5C;
  v467 = sub_1B0398F5C;
  v468 = sub_1B0399178;
  v469 = sub_1B0398F5C;
  v470 = sub_1B0398F5C;
  v471 = sub_1B03991EC;
  v472 = sub_1B0398F5C;
  v473 = sub_1B0398F5C;
  v474 = sub_1B03993BC;
  v475 = sub_1B0398F5C;
  v476 = sub_1B0398F5C;
  v477 = sub_1B039BCEC;
  v478 = sub_1B0398F5C;
  v479 = sub_1B0398F5C;
  v480 = sub_1B039BCEC;
  v481 = "Fatal error";
  v482 = "Unexpectedly found nil while unwrapping an Optional value";
  v483 = "Message/MailboxTree.swift";
  v550 = 0;
  v549 = 0;
  v548 = 0;
  v547 = 0;
  v545 = 0;
  v546 = 0;
  v544 = 0;
  v541 = 0;
  v539 = 0;
  v540 = 0;
  v484 = 0;
  v521 = 0;
  v522 = 0;
  v523 = 0;
  v519 = 0;
  v520 = 0;
  v506 = 0;
  v485 = _s6LoggerVMa(0);
  v486 = (*(*(v485 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v487 = v196 - v486;
  v488 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v489 = v196 - v488;
  v490 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v491 = v196 - v490;
  v492 = sub_1B0E439A8();
  v493 = *(v492 - 8);
  v494 = v492 - 8;
  v495 = (*(v493 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v506);
  v496 = v196 - v495;
  v497 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v498 = v196 - v497;
  v499 = sub_1B0E42E68();
  v500 = *(v499 - 8);
  v501 = v499 - 8;
  v502 = (*(v500 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v499);
  v503 = v196 - v502;
  v504 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v506);
  v505 = v196 - v504;
  v507 = (*(*(_s18MailboxPersistenceVMa(v10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v506);
  v508 = v196 - v507;
  updated = type metadata accessor for MailboxUpdateTree(v11);
  v513 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v511);
  v514 = (v196 - v513);
  v515 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v516 = (v196 - v515);
  v550 = v15;
  v549 = v16;
  v548 = v17;
  v547 = v3;
  v517 = [v15 displayName];
  if (v517)
  {
    v408 = v517;
    v403 = v517;
    v404 = sub_1B0E44AD8();
    v405 = v18;
    MEMORY[0x1E69E5920](v403);
    v406 = v404;
    v407 = v405;
  }

  else
  {
    v406 = 0;
    v407 = 0;
  }

  v401 = v407;
  v402 = v406;
  if (v407)
  {
    v399 = v402;
    v400 = v401;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v394 = v400;
  v395 = v399;
  v545 = v399;
  v546 = v400;
  v544 = sub_1B089F490(v510[7]);
  sub_1B08A39BC(v409, v516);
  v19 = (v516 + updated[6]);
  v398 = *v19;
  v396 = v19[1];
  v397 = v19[2];
  sub_1B07BA724(v398);
  sub_1B08A3DE8(v516);
  if (v398)
  {
    v391 = v398;
    v392 = v396;
    v393 = v397;
    v387 = v397;
    v388 = v396;
    v389 = v398;
    v521 = v398;
    v522 = v396;
    v523 = v397;
    sub_1B08A39BC(v409, v514);
    sub_1B03F4D78(v514 + updated[5], v508);
    sub_1B08A3DE8(v514);
    v20 = [v511 URL];
    v390 = v20;
    if (v20)
    {
      v386 = v390;
      v385 = v390;
      sub_1B0E42DE8();
      (*(v500 + 32))(v505, v503, v499);
      (*(v500 + 56))(v505, 0, 1, v499);
      MEMORY[0x1E69E5920](v385);
    }

    else
    {
      (*(v500 + 56))(v505, 1, 1, v499);
    }

    v384 = sub_1B07BF5C8(v505);
    v383 = v21;
    sub_1B06E3800(v505);
    sub_1B03F4F08(v508);
    if (v384)
    {
      v381 = v384;
      v382 = v383;
      v380 = v384;
      v519 = v384;
      v520 = v383;
      v22 = Namespace.contains(_:)(v384, v383, v389);
      if ((v22 & 1) == 0)
      {
        v378 = &v518;
        v518 = 128;
        v379 = type metadata accessor for MailboxAttributes(0);
        sub_1B0694AF8();
        sub_1B0E46F48();
      }
    }

    else
    {
    }
  }

  v23 = [v511 attributes];
  v377 = &v543;
  v543 = v23;
  v374 = v544;
  v375 = &v542;
  v542 = v544;
  v376 = type metadata accessor for MailboxAttributes(0);
  sub_1B0692938();
  if (sub_1B0E44A28())
  {
    v296 = v484;
  }

  else
  {
    (*(v493 + 16))(v498, v509, v492);
    sub_1B0394784(v509, v491);
    sub_1B0394784(v491, v489);
    sub_1B03F4FD0(v491, v487);
    v24 = (v489 + *(v485 + 20));
    v326 = *v24;
    v327 = *(v24 + 1);
    sub_1B039480C(v489);
    v338 = 24;
    v345 = 7;
    v25 = swift_allocObject();
    v26 = v327;
    v331 = v25;
    *(v25 + 16) = v326;
    *(v25 + 20) = v26;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v27 = swift_allocObject();
    v28 = v327;
    v328 = v27;
    *(v27 + 16) = v326;
    *(v27 + 20) = v28;

    v344 = 32;
    v29 = swift_allocObject();
    v30 = v328;
    v336 = v29;
    *(v29 + 16) = v410;
    *(v29 + 24) = v30;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v487);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31 = swift_allocObject();
    v32 = v394;
    v33 = v31;
    v34 = v510;
    v340 = v33;
    *(v33 + 16) = v395;
    *(v33 + 24) = v32;
    sub_1B03BB0B4(v34, &v529);
    v329 = swift_allocObject();
    memcpy((v329 + 16), v510, 0x42uLL);

    v35 = swift_allocObject();
    v36 = v329;
    v346 = v35;
    *(v35 + 16) = v411;
    *(v35 + 24) = v36;

    v372 = sub_1B0E43988();
    v373 = sub_1B0E45908();
    v342 = 17;
    v348 = swift_allocObject();
    v333 = 16;
    *(v348 + 16) = 16;
    v349 = swift_allocObject();
    v335 = 4;
    *(v349 + 16) = 4;
    v37 = swift_allocObject();
    v330 = v37;
    *(v37 + 16) = v412;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v330;
    v350 = v38;
    *(v38 + 16) = v413;
    *(v38 + 24) = v39;
    v351 = swift_allocObject();
    *(v351 + 16) = 0;
    v352 = swift_allocObject();
    *(v352 + 16) = 1;
    v40 = swift_allocObject();
    v41 = v331;
    v332 = v40;
    *(v40 + 16) = v414;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v332;
    v353 = v42;
    *(v42 + 16) = v415;
    *(v42 + 24) = v43;
    v354 = swift_allocObject();
    *(v354 + 16) = v333;
    v355 = swift_allocObject();
    *(v355 + 16) = v335;
    v44 = swift_allocObject();
    v334 = v44;
    *(v44 + 16) = v416;
    *(v44 + 24) = 0;
    v45 = swift_allocObject();
    v46 = v334;
    v356 = v45;
    *(v45 + 16) = v417;
    *(v45 + 24) = v46;
    v357 = swift_allocObject();
    *(v357 + 16) = 0;
    v358 = swift_allocObject();
    *(v358 + 16) = v335;
    v47 = swift_allocObject();
    v48 = v336;
    v337 = v47;
    *(v47 + 16) = v418;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v337;
    v359 = v49;
    *(v49 + 16) = v419;
    *(v49 + 24) = v50;
    v360 = swift_allocObject();
    *(v360 + 16) = 112;
    v361 = swift_allocObject();
    v343 = 8;
    *(v361 + 16) = 8;
    v339 = swift_allocObject();
    *(v339 + 16) = v420;
    v51 = swift_allocObject();
    v52 = v339;
    v362 = v51;
    *(v51 + 16) = v421;
    *(v51 + 24) = v52;
    v363 = swift_allocObject();
    *(v363 + 16) = 37;
    v364 = swift_allocObject();
    *(v364 + 16) = v343;
    v53 = swift_allocObject();
    v54 = v340;
    v341 = v53;
    *(v53 + 16) = v422;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    v56 = v341;
    v365 = v55;
    *(v55 + 16) = v423;
    *(v55 + 24) = v56;
    v366 = swift_allocObject();
    *(v366 + 16) = 34;
    v367 = swift_allocObject();
    *(v367 + 16) = v343;
    v57 = swift_allocObject();
    v58 = v346;
    v347 = v57;
    *(v57 + 16) = v424;
    *(v57 + 24) = v58;
    v59 = swift_allocObject();
    v60 = v347;
    v369 = v59;
    *(v59 + 16) = v425;
    *(v59 + 24) = v60;
    v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v368 = sub_1B0E46A48();
    v370 = v61;

    v62 = v348;
    v63 = v370;
    *v370 = v426;
    v63[1] = v62;

    v64 = v349;
    v65 = v370;
    v370[2] = v427;
    v65[3] = v64;

    v66 = v350;
    v67 = v370;
    v370[4] = v428;
    v67[5] = v66;

    v68 = v351;
    v69 = v370;
    v370[6] = v429;
    v69[7] = v68;

    v70 = v352;
    v71 = v370;
    v370[8] = v430;
    v71[9] = v70;

    v72 = v353;
    v73 = v370;
    v370[10] = v431;
    v73[11] = v72;

    v74 = v354;
    v75 = v370;
    v370[12] = v432;
    v75[13] = v74;

    v76 = v355;
    v77 = v370;
    v370[14] = v433;
    v77[15] = v76;

    v78 = v356;
    v79 = v370;
    v370[16] = v434;
    v79[17] = v78;

    v80 = v357;
    v81 = v370;
    v370[18] = v435;
    v81[19] = v80;

    v82 = v358;
    v83 = v370;
    v370[20] = v436;
    v83[21] = v82;

    v84 = v359;
    v85 = v370;
    v370[22] = v437;
    v85[23] = v84;

    v86 = v360;
    v87 = v370;
    v370[24] = v438;
    v87[25] = v86;

    v88 = v361;
    v89 = v370;
    v370[26] = v439;
    v89[27] = v88;

    v90 = v362;
    v91 = v370;
    v370[28] = v440;
    v91[29] = v90;

    v92 = v363;
    v93 = v370;
    v370[30] = v441;
    v93[31] = v92;

    v94 = v364;
    v95 = v370;
    v370[32] = v442;
    v95[33] = v94;

    v96 = v365;
    v97 = v370;
    v370[34] = v443;
    v97[35] = v96;

    v98 = v366;
    v99 = v370;
    v370[36] = v444;
    v99[37] = v98;

    v100 = v367;
    v101 = v370;
    v370[38] = v445;
    v101[39] = v100;

    v102 = v369;
    v103 = v370;
    v370[40] = v446;
    v103[41] = v102;
    sub_1B0394964();

    if (os_log_type_enabled(v372, v373))
    {
      v104 = v484;
      v319 = sub_1B0E45D78();
      v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v320 = sub_1B03949A8(0, v318, v318);
      v321 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v322 = &v528;
      v528 = v319;
      v323 = &v527;
      v527 = v320;
      v324 = &v526;
      v526 = v321;
      sub_1B0394A48(3, &v528);
      sub_1B0394A48(7, v322);
      v524 = v426;
      v525 = v348;
      sub_1B03949FC(&v524, v322, v323, v324);
      v325 = v104;
      if (v104)
      {

        __break(1u);
      }

      else
      {
        v524 = v427;
        v525 = v349;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v316 = 0;
        v524 = v428;
        v525 = v350;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v315 = 0;
        v524 = v429;
        v525 = v351;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v314 = 0;
        v524 = v430;
        v525 = v352;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v313 = 0;
        v524 = v431;
        v525 = v353;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v312 = 0;
        v524 = v432;
        v525 = v354;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v311 = 0;
        v524 = v433;
        v525 = v355;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v310 = 0;
        v524 = v434;
        v525 = v356;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v309 = 0;
        v524 = v435;
        v525 = v357;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v308 = 0;
        v524 = v436;
        v525 = v358;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v307 = 0;
        v524 = v437;
        v525 = v359;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v306 = 0;
        v524 = v438;
        v525 = v360;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v305 = 0;
        v524 = v439;
        v525 = v361;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v304 = 0;
        v524 = v440;
        v525 = v362;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v303 = 0;
        v524 = v441;
        v525 = v363;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v302 = 0;
        v524 = v442;
        v525 = v364;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v301 = 0;
        v524 = v443;
        v525 = v365;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v300 = 0;
        v524 = v444;
        v525 = v366;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v299 = 0;
        v524 = v445;
        v525 = v367;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v298 = 0;
        v524 = v446;
        v525 = v369;
        sub_1B03949FC(&v524, &v528, &v527, &v526);
        v297 = 0;
        _os_log_impl(&dword_1B0389000, v372, v373, "[%.*hhx-%.*X] Setting attributes for mailbox '%{sensitive,mask.mailbox}s': '%{public}s'", v319, 0x35u);
        sub_1B03998A8(v320, 0, v318);
        sub_1B03998A8(v321, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v317 = v297;
      }
    }

    else
    {
      v105 = v484;

      v317 = v105;
    }

    v295 = v317;
    MEMORY[0x1E69E5920](v372);
    (*(v493 + 8))(v498, v492);
    [v511 setAttributes_];
    v106 = v295;
    *(v409 + updated[13]) = 1;
    v296 = v106;
  }

  v294 = v296;
  v551 = *(v510 + 16);
  v552 = v551;
  if (v551 != 7)
  {
    v290 = v552;
    v541 = v552;
    v291 = sub_1B089F5B0(v552);
    v292 = v107;
    v539 = v291;
    v540 = v107;
    v293 = [v511 extraAttributes];
    if (v293)
    {
      v289 = v293;
      v286 = v293;
      v287 = sub_1B0E451B8();
      MEMORY[0x1E69E5920](v286);
      v288 = v287;
    }

    else
    {
      v288 = 0;
    }

    v285 = v288;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v283 = MEMORY[0x1E69E6158];
    v281 = sub_1B0E46A48();
    v282 = v108;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = v292;
    v110 = v282;
    *v282 = v291;
    v110[1] = v109;
    sub_1B0394964();
    v284 = v111;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v537 = v285;
    v538 = v284;
    if (v285)
    {
      sub_1B074E7A8(&v537, &v531);
      if (v538)
      {
        v277 = &v530;
        v530 = v538;
        v278 = &v531;
        v279 = sub_1B0E45368();
        sub_1B039E440(v277);
        sub_1B039E440(v278);
        sub_1B039E440(&v537);
        v280 = v279;
LABEL_38:
        v276 = v280;

        if ((v276 & 1) == 0)
        {
          (*(v493 + 16))(v496, v509, v492);
          sub_1B0394784(v509, v491);
          sub_1B0394784(v491, v489);
          sub_1B03F4FD0(v491, v487);
          v112 = (v489 + *(v485 + 20));
          v228 = *v112;
          v229 = *(v112 + 1);
          sub_1B039480C(v489);
          v240 = 24;
          v247 = 7;
          v113 = swift_allocObject();
          v114 = v229;
          v233 = v113;
          *(v113 + 16) = v228;
          *(v113 + 20) = v114;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v115 = swift_allocObject();
          v116 = v229;
          v230 = v115;
          *(v115 + 16) = v228;
          *(v115 + 20) = v116;

          v246 = 32;
          v117 = swift_allocObject();
          v118 = v230;
          v238 = v117;
          *(v117 + 16) = v447;
          *(v117 + 24) = v118;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v487);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v119 = swift_allocObject();
          v120 = v394;
          v242 = v119;
          *(v119 + 16) = v395;
          *(v119 + 24) = v120;
          v244 = 17;
          v231 = swift_allocObject();
          *(v231 + 16) = v290;

          v121 = swift_allocObject();
          v122 = v231;
          v248 = v121;
          *(v121 + 16) = v448;
          *(v121 + 24) = v122;

          v274 = sub_1B0E43988();
          v275 = sub_1B0E45908();
          v250 = swift_allocObject();
          v235 = 16;
          *(v250 + 16) = 16;
          v251 = swift_allocObject();
          v237 = 4;
          *(v251 + 16) = 4;
          v123 = swift_allocObject();
          v232 = v123;
          *(v123 + 16) = v412;
          *(v123 + 24) = 0;
          v124 = swift_allocObject();
          v125 = v232;
          v252 = v124;
          *(v124 + 16) = v449;
          *(v124 + 24) = v125;
          v253 = swift_allocObject();
          *(v253 + 16) = 0;
          v254 = swift_allocObject();
          *(v254 + 16) = 1;
          v126 = swift_allocObject();
          v127 = v233;
          v234 = v126;
          *(v126 + 16) = v450;
          *(v126 + 24) = v127;
          v128 = swift_allocObject();
          v129 = v234;
          v255 = v128;
          *(v128 + 16) = v451;
          *(v128 + 24) = v129;
          v256 = swift_allocObject();
          *(v256 + 16) = v235;
          v257 = swift_allocObject();
          *(v257 + 16) = v237;
          v130 = swift_allocObject();
          v236 = v130;
          *(v130 + 16) = v416;
          *(v130 + 24) = 0;
          v131 = swift_allocObject();
          v132 = v236;
          v258 = v131;
          *(v131 + 16) = v452;
          *(v131 + 24) = v132;
          v259 = swift_allocObject();
          *(v259 + 16) = 0;
          v260 = swift_allocObject();
          *(v260 + 16) = v237;
          v133 = swift_allocObject();
          v134 = v238;
          v239 = v133;
          *(v133 + 16) = v453;
          *(v133 + 24) = v134;
          v135 = swift_allocObject();
          v136 = v239;
          v261 = v135;
          *(v135 + 16) = v454;
          *(v135 + 24) = v136;
          v262 = swift_allocObject();
          *(v262 + 16) = 112;
          v263 = swift_allocObject();
          v245 = 8;
          *(v263 + 16) = 8;
          v241 = swift_allocObject();
          *(v241 + 16) = v420;
          v137 = swift_allocObject();
          v138 = v241;
          v264 = v137;
          *(v137 + 16) = v455;
          *(v137 + 24) = v138;
          v265 = swift_allocObject();
          *(v265 + 16) = 37;
          v266 = swift_allocObject();
          *(v266 + 16) = v245;
          v139 = swift_allocObject();
          v140 = v242;
          v243 = v139;
          *(v139 + 16) = v456;
          *(v139 + 24) = v140;
          v141 = swift_allocObject();
          v142 = v243;
          v267 = v141;
          *(v141 + 16) = v457;
          *(v141 + 24) = v142;
          v268 = swift_allocObject();
          *(v268 + 16) = 34;
          v269 = swift_allocObject();
          *(v269 + 16) = v245;
          v143 = swift_allocObject();
          v144 = v248;
          v249 = v143;
          *(v143 + 16) = v458;
          *(v143 + 24) = v144;
          v145 = swift_allocObject();
          v146 = v249;
          v271 = v145;
          *(v145 + 16) = v459;
          *(v145 + 24) = v146;
          v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v270 = sub_1B0E46A48();
          v272 = v147;

          v148 = v250;
          v149 = v272;
          *v272 = v460;
          v149[1] = v148;

          v150 = v251;
          v151 = v272;
          v272[2] = v461;
          v151[3] = v150;

          v152 = v252;
          v153 = v272;
          v272[4] = v462;
          v153[5] = v152;

          v154 = v253;
          v155 = v272;
          v272[6] = v463;
          v155[7] = v154;

          v156 = v254;
          v157 = v272;
          v272[8] = v464;
          v157[9] = v156;

          v158 = v255;
          v159 = v272;
          v272[10] = v465;
          v159[11] = v158;

          v160 = v256;
          v161 = v272;
          v272[12] = v466;
          v161[13] = v160;

          v162 = v257;
          v163 = v272;
          v272[14] = v467;
          v163[15] = v162;

          v164 = v258;
          v165 = v272;
          v272[16] = v468;
          v165[17] = v164;

          v166 = v259;
          v167 = v272;
          v272[18] = v469;
          v167[19] = v166;

          v168 = v260;
          v169 = v272;
          v272[20] = v470;
          v169[21] = v168;

          v170 = v261;
          v171 = v272;
          v272[22] = v471;
          v171[23] = v170;

          v172 = v262;
          v173 = v272;
          v272[24] = v472;
          v173[25] = v172;

          v174 = v263;
          v175 = v272;
          v272[26] = v473;
          v175[27] = v174;

          v176 = v264;
          v177 = v272;
          v272[28] = v474;
          v177[29] = v176;

          v178 = v265;
          v179 = v272;
          v272[30] = v475;
          v179[31] = v178;

          v180 = v266;
          v181 = v272;
          v272[32] = v476;
          v181[33] = v180;

          v182 = v267;
          v183 = v272;
          v272[34] = v477;
          v183[35] = v182;

          v184 = v268;
          v185 = v272;
          v272[36] = v478;
          v185[37] = v184;

          v186 = v269;
          v187 = v272;
          v272[38] = v479;
          v187[39] = v186;

          v188 = v271;
          v189 = v272;
          v272[40] = v480;
          v189[41] = v188;
          sub_1B0394964();

          if (os_log_type_enabled(v274, v275))
          {
            v190 = v294;
            v221 = sub_1B0E45D78();
            v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v222 = sub_1B03949A8(0, v220, v220);
            v223 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v224 = &v536;
            v536 = v221;
            v225 = &v535;
            v535 = v222;
            v226 = &v534;
            v534 = v223;
            sub_1B0394A48(3, &v536);
            sub_1B0394A48(7, v224);
            v532 = v460;
            v533 = v250;
            sub_1B03949FC(&v532, v224, v225, v226);
            v227 = v190;
            if (v190)
            {

              __break(1u);
            }

            else
            {
              v532 = v461;
              v533 = v251;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v219 = 0;
              v532 = v462;
              v533 = v252;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v218 = 0;
              v532 = v463;
              v533 = v253;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v217 = 0;
              v532 = v464;
              v533 = v254;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v216 = 0;
              v532 = v465;
              v533 = v255;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v215 = 0;
              v532 = v466;
              v533 = v256;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v214 = 0;
              v532 = v467;
              v533 = v257;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v213 = 0;
              v532 = v468;
              v533 = v258;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v212 = 0;
              v532 = v469;
              v533 = v259;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v211 = 0;
              v532 = v470;
              v533 = v260;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v210 = 0;
              v532 = v471;
              v533 = v261;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v209 = 0;
              v532 = v472;
              v533 = v262;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v208 = 0;
              v532 = v473;
              v533 = v263;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v207 = 0;
              v532 = v474;
              v533 = v264;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v206 = 0;
              v532 = v475;
              v533 = v265;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v205 = 0;
              v532 = v476;
              v533 = v266;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v204 = 0;
              v532 = v477;
              v533 = v267;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v203 = 0;
              v532 = v478;
              v533 = v268;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v202 = 0;
              v532 = v479;
              v533 = v269;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              v201 = 0;
              v532 = v480;
              v533 = v271;
              sub_1B03949FC(&v532, &v536, &v535, &v534);
              _os_log_impl(&dword_1B0389000, v274, v275, "[%.*hhx-%.*X] Setting special use for mailbox '%{sensitive,mask.mailbox}s': '%{public}s'", v221, 0x35u);
              sub_1B03998A8(v222, 0, v220);
              sub_1B03998A8(v223, 2, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v274);
          (*(v493 + 8))(v496, v492);
          v198 = MEMORY[0x1E69E6158];
          v196[1] = sub_1B0E46A48();
          v197 = v191;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v192 = v292;
          v193 = v197;
          *v197 = v291;
          v193[1] = v192;
          sub_1B0394964();
          v199 = v194;
          v200 = sub_1B0E451A8();

          [v511 setExtraAttributes_];
          MEMORY[0x1E69E5920](v200);
          *(v409 + updated[13]) = 1;
        }
      }

      sub_1B039E440(&v531);
    }

    else if (!v538)
    {
      sub_1B039E440(&v537);
      v280 = 1;
      goto LABEL_38;
    }

    sub_1B07F22C0();
    v280 = 0;
    goto LABEL_38;
  }
}

uint64_t sub_1B089BA50(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v439 = a1;
  v444 = a2;
  v440 = a3;
  v441 = a4;
  v442 = a5;
  v445 = a6;
  v443 = a7;
  v349 = sub_1B039BBE8;
  v350 = sub_1B0394C30;
  v351 = sub_1B0394C24;
  v352 = sub_1B039BA2C;
  v353 = sub_1B039BA88;
  v354 = sub_1B039BB94;
  v355 = sub_1B0394C24;
  v356 = sub_1B039BBA0;
  v357 = sub_1B039BC08;
  v358 = 0x786F626C69616DLL;
  v359 = sub_1B06BA324;
  v360 = sub_1B08A4D6C;
  v361 = sub_1B039BCF8;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0399178;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0398F5C;
  v367 = sub_1B039BA94;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0399178;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0398F5C;
  v373 = sub_1B03991EC;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B03993BC;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B039BCEC;
  v380 = sub_1B039BBE8;
  v381 = sub_1B0394C24;
  v382 = sub_1B039BA2C;
  v383 = sub_1B039BA88;
  v384 = sub_1B0394C24;
  v385 = sub_1B039BBA0;
  v386 = sub_1B039BC08;
  v387 = sub_1B06BA324;
  v388 = sub_1B08A4D6C;
  v389 = sub_1B039BCF8;
  v390 = sub_1B06BA324;
  v391 = sub_1B08A4D74;
  v392 = sub_1B039BCF8;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0399178;
  v396 = sub_1B0398F5C;
  v397 = sub_1B0398F5C;
  v398 = sub_1B039BA94;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0399178;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0398F5C;
  v404 = sub_1B03991EC;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0398F5C;
  v407 = sub_1B03993BC;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0398F5C;
  v410 = sub_1B039BCEC;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0398F5C;
  v413 = sub_1B03993BC;
  v414 = sub_1B0398F5C;
  v415 = sub_1B0398F5C;
  v416 = sub_1B039BCEC;
  v487 = 0;
  v488 = 0;
  v489 = 0;
  v486 = 0;
  v485 = 0;
  v484 = 0;
  v483 = 0;
  v482 = 0;
  v480 = 0;
  v417 = 0;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
  v419 = (*(*(v418 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v418);
  v420 = &v177 - v419;
  v431 = 0;
  v421 = sub_1B0E42E68();
  v422 = *(v421 - 8);
  v423 = v421 - 8;
  v424 = (*(v422 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v421);
  v425 = &v177 - v424;
  v426 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v431);
  v427 = &v177 - v426;
  updated = type metadata accessor for MailboxUpdateTree(v8);
  v429 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v431);
  v430 = (&v177 - v429);
  v432 = _s6LoggerVMa(v9);
  v433 = (*(*(v432 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v431);
  v434 = &v177 - v433;
  v435 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v436 = &v177 - v435;
  v437 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v438 = &v177 - v437;
  v446 = sub_1B0E439A8();
  v447 = *(v446 - 8);
  v448 = v446 - 8;
  v450 = *(v447 + 64);
  v449 = (v450 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v445);
  v451 = &v177 - v449;
  v452 = (v450 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v453 = &v177 - v452;
  v487 = v16;
  v488 = v17;
  v489 = v18;
  v486 = v19;
  v485 = v20;
  v484 = v21;
  v483 = v22;
  v482 = v7;
  if ([v21 isRootMailbox])
  {
    (*(v447 + 16))(v451, v443, v446);
    sub_1B0394784(v443, v438);
    sub_1B0394784(v438, v436);
    sub_1B03F4FD0(v438, v434);
    v106 = (v436 + *(v432 + 20));
    v223 = *v106;
    v224 = *(v106 + 1);
    sub_1B039480C(v436);
    v234 = 24;
    v239 = 7;
    v107 = swift_allocObject();
    v108 = v224;
    v227 = v107;
    *(v107 + 16) = v223;
    *(v107 + 20) = v108;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v109 = swift_allocObject();
    v110 = v224;
    v225 = v109;
    *(v109 + 16) = v223;
    *(v109 + 20) = v110;

    v238 = 32;
    v111 = swift_allocObject();
    v112 = v225;
    v232 = v111;
    *(v111 + 16) = v349;
    *(v111 + 24) = v112;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v434);
    sub_1B08A4CCC(v441, v481);
    v240 = swift_allocObject();
    memcpy((v240 + 16), v441, 0x31uLL);
    v263 = sub_1B0E43988();
    v264 = sub_1B0E45908();
    v236 = 17;
    v242 = swift_allocObject();
    v229 = 16;
    *(v242 + 16) = 16;
    v243 = swift_allocObject();
    v231 = 4;
    *(v243 + 16) = 4;
    v113 = swift_allocObject();
    v226 = v113;
    *(v113 + 16) = v350;
    *(v113 + 24) = 0;
    v114 = swift_allocObject();
    v115 = v226;
    v244 = v114;
    *(v114 + 16) = v351;
    *(v114 + 24) = v115;
    v245 = swift_allocObject();
    *(v245 + 16) = 0;
    v246 = swift_allocObject();
    *(v246 + 16) = 1;
    v116 = swift_allocObject();
    v117 = v227;
    v228 = v116;
    *(v116 + 16) = v352;
    *(v116 + 24) = v117;
    v118 = swift_allocObject();
    v119 = v228;
    v247 = v118;
    *(v118 + 16) = v353;
    *(v118 + 24) = v119;
    v248 = swift_allocObject();
    *(v248 + 16) = v229;
    v249 = swift_allocObject();
    *(v249 + 16) = v231;
    v120 = swift_allocObject();
    v230 = v120;
    *(v120 + 16) = v354;
    *(v120 + 24) = 0;
    v121 = swift_allocObject();
    v122 = v230;
    v250 = v121;
    *(v121 + 16) = v355;
    *(v121 + 24) = v122;
    v251 = swift_allocObject();
    *(v251 + 16) = 0;
    v252 = swift_allocObject();
    *(v252 + 16) = v231;
    v123 = swift_allocObject();
    v124 = v232;
    v233 = v123;
    *(v123 + 16) = v356;
    *(v123 + 24) = v124;
    v125 = swift_allocObject();
    v126 = v233;
    v253 = v125;
    *(v125 + 16) = v357;
    *(v125 + 24) = v126;
    v254 = swift_allocObject();
    *(v254 + 16) = 112;
    v255 = swift_allocObject();
    v237 = 8;
    *(v255 + 16) = 8;
    v235 = swift_allocObject();
    *(v235 + 16) = v358;
    v127 = swift_allocObject();
    v128 = v235;
    v256 = v127;
    *(v127 + 16) = v359;
    *(v127 + 24) = v128;
    v257 = swift_allocObject();
    *(v257 + 16) = 37;
    v258 = swift_allocObject();
    *(v258 + 16) = v237;
    v129 = swift_allocObject();
    v130 = v240;
    v241 = v129;
    *(v129 + 16) = v360;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v241;
    v260 = v131;
    *(v131 + 16) = v361;
    *(v131 + 24) = v132;
    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v259 = sub_1B0E46A48();
    v261 = v133;

    v134 = v242;
    v135 = v261;
    *v261 = v362;
    v135[1] = v134;

    v136 = v243;
    v137 = v261;
    v261[2] = v363;
    v137[3] = v136;

    v138 = v244;
    v139 = v261;
    v261[4] = v364;
    v139[5] = v138;

    v140 = v245;
    v141 = v261;
    v261[6] = v365;
    v141[7] = v140;

    v142 = v246;
    v143 = v261;
    v261[8] = v366;
    v143[9] = v142;

    v144 = v247;
    v145 = v261;
    v261[10] = v367;
    v145[11] = v144;

    v146 = v248;
    v147 = v261;
    v261[12] = v368;
    v147[13] = v146;

    v148 = v249;
    v149 = v261;
    v261[14] = v369;
    v149[15] = v148;

    v150 = v250;
    v151 = v261;
    v261[16] = v370;
    v151[17] = v150;

    v152 = v251;
    v153 = v261;
    v261[18] = v371;
    v153[19] = v152;

    v154 = v252;
    v155 = v261;
    v261[20] = v372;
    v155[21] = v154;

    v156 = v253;
    v157 = v261;
    v261[22] = v373;
    v157[23] = v156;

    v158 = v254;
    v159 = v261;
    v261[24] = v374;
    v159[25] = v158;

    v160 = v255;
    v161 = v261;
    v261[26] = v375;
    v161[27] = v160;

    v162 = v256;
    v163 = v261;
    v261[28] = v376;
    v163[29] = v162;

    v164 = v257;
    v165 = v261;
    v261[30] = v377;
    v165[31] = v164;

    v166 = v258;
    v167 = v261;
    v261[32] = v378;
    v167[33] = v166;

    v168 = v260;
    v169 = v261;
    v261[34] = v379;
    v169[35] = v168;
    sub_1B0394964();

    if (os_log_type_enabled(v263, v264))
    {
      v170 = v417;
      v216 = sub_1B0E45D78();
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v217 = sub_1B03949A8(0, v215, v215);
      v218 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v219 = &v464;
      v464 = v216;
      v220 = &v463;
      v463 = v217;
      v221 = &v462;
      v462 = v218;
      sub_1B0394A48(3, &v464);
      sub_1B0394A48(6, v219);
      v460 = v362;
      v461 = v242;
      sub_1B03949FC(&v460, v219, v220, v221);
      v222 = v170;
      if (v170)
      {

        __break(1u);
      }

      else
      {
        v460 = v363;
        v461 = v243;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v214 = 0;
        v460 = v364;
        v461 = v244;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v213 = 0;
        v460 = v365;
        v461 = v245;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v212 = 0;
        v460 = v366;
        v461 = v246;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v211 = 0;
        v460 = v367;
        v461 = v247;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v210 = 0;
        v460 = v368;
        v461 = v248;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v209 = 0;
        v460 = v369;
        v461 = v249;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v208 = 0;
        v460 = v370;
        v461 = v250;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v207 = 0;
        v460 = v371;
        v461 = v251;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v206 = 0;
        v460 = v372;
        v461 = v252;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v205 = 0;
        v460 = v373;
        v461 = v253;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v204 = 0;
        v460 = v374;
        v461 = v254;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v203 = 0;
        v460 = v375;
        v461 = v255;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v202 = 0;
        v460 = v376;
        v461 = v256;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v201 = 0;
        v460 = v377;
        v461 = v257;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v200 = 0;
        v460 = v378;
        v461 = v258;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        v199 = 0;
        v460 = v379;
        v461 = v260;
        sub_1B03949FC(&v460, &v464, &v463, &v462);
        _os_log_impl(&dword_1B0389000, v263, v264, "[%.*hhx-%.*X] Creating new top level local mailbox '%{sensitive,mask.mailbox}s'.", v216, 0x2Bu);
        sub_1B03998A8(v217, 0, v215);
        sub_1B03998A8(v218, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v263);
    (*(v447 + 8))(v451, v446);
  }

  else
  {
    (*(v447 + 16))(v453, v443, v446);
    sub_1B0394784(v443, v438);
    sub_1B0394784(v438, v436);
    sub_1B03F4FD0(v438, v434);
    v23 = (v436 + *(v432 + 20));
    v295 = *v23;
    v296 = *(v23 + 1);
    sub_1B039480C(v436);
    v318 = 24;
    v315 = 7;
    v24 = swift_allocObject();
    v25 = v296;
    v299 = v24;
    *(v24 + 16) = v295;
    *(v24 + 20) = v25;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v26 = swift_allocObject();
    v27 = v296;
    v297 = v26;
    *(v26 + 16) = v295;
    *(v26 + 20) = v27;

    v314 = 32;
    v28 = swift_allocObject();
    v29 = v297;
    v304 = v28;
    *(v28 + 16) = v380;
    *(v28 + 24) = v29;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v434);
    sub_1B08A4CCC(v441, &v459);
    v307 = swift_allocObject();
    memcpy((v307 + 16), v441, 0x31uLL);
    MEMORY[0x1E69E5928](v445);
    v316 = swift_allocObject();
    *(v316 + 16) = v445;
    v346 = sub_1B0E43988();
    v347 = sub_1B0E45908();
    v312 = 17;
    v319 = swift_allocObject();
    v301 = 16;
    *(v319 + 16) = 16;
    v320 = swift_allocObject();
    v303 = 4;
    *(v320 + 16) = 4;
    v30 = swift_allocObject();
    v298 = v30;
    *(v30 + 16) = v350;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v298;
    v321 = v31;
    *(v31 + 16) = v381;
    *(v31 + 24) = v32;
    v322 = swift_allocObject();
    *(v322 + 16) = 0;
    v323 = swift_allocObject();
    *(v323 + 16) = 1;
    v33 = swift_allocObject();
    v34 = v299;
    v300 = v33;
    *(v33 + 16) = v382;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v300;
    v324 = v35;
    *(v35 + 16) = v383;
    *(v35 + 24) = v36;
    v325 = swift_allocObject();
    *(v325 + 16) = v301;
    v326 = swift_allocObject();
    *(v326 + 16) = v303;
    v37 = swift_allocObject();
    v302 = v37;
    *(v37 + 16) = v354;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    v39 = v302;
    v327 = v38;
    *(v38 + 16) = v384;
    *(v38 + 24) = v39;
    v328 = swift_allocObject();
    *(v328 + 16) = 0;
    v329 = swift_allocObject();
    *(v329 + 16) = v303;
    v40 = swift_allocObject();
    v41 = v304;
    v305 = v40;
    *(v40 + 16) = v385;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v305;
    v330 = v42;
    *(v42 + 16) = v386;
    *(v42 + 24) = v43;
    v331 = swift_allocObject();
    v309 = 112;
    *(v331 + 16) = 112;
    v332 = swift_allocObject();
    v313 = 8;
    *(v332 + 16) = 8;
    v306 = swift_allocObject();
    *(v306 + 16) = v358;
    v44 = swift_allocObject();
    v45 = v306;
    v333 = v44;
    *(v44 + 16) = v387;
    *(v44 + 24) = v45;
    v334 = swift_allocObject();
    v311 = 37;
    *(v334 + 16) = 37;
    v335 = swift_allocObject();
    *(v335 + 16) = v313;
    v46 = swift_allocObject();
    v47 = v307;
    v308 = v46;
    *(v46 + 16) = v388;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v308;
    v336 = v48;
    *(v48 + 16) = v389;
    *(v48 + 24) = v49;
    v337 = swift_allocObject();
    *(v337 + 16) = v309;
    v338 = swift_allocObject();
    *(v338 + 16) = v313;
    v310 = swift_allocObject();
    *(v310 + 16) = v358;
    v50 = swift_allocObject();
    v51 = v310;
    v339 = v50;
    *(v50 + 16) = v390;
    *(v50 + 24) = v51;
    v340 = swift_allocObject();
    *(v340 + 16) = v311;
    v341 = swift_allocObject();
    *(v341 + 16) = v313;
    v52 = swift_allocObject();
    v53 = v316;
    v317 = v52;
    *(v52 + 16) = v391;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v317;
    v343 = v54;
    *(v54 + 16) = v392;
    *(v54 + 24) = v55;
    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v342 = sub_1B0E46A48();
    v344 = v56;

    v57 = v319;
    v58 = v344;
    *v344 = v393;
    v58[1] = v57;

    v59 = v320;
    v60 = v344;
    v344[2] = v394;
    v60[3] = v59;

    v61 = v321;
    v62 = v344;
    v344[4] = v395;
    v62[5] = v61;

    v63 = v322;
    v64 = v344;
    v344[6] = v396;
    v64[7] = v63;

    v65 = v323;
    v66 = v344;
    v344[8] = v397;
    v66[9] = v65;

    v67 = v324;
    v68 = v344;
    v344[10] = v398;
    v68[11] = v67;

    v69 = v325;
    v70 = v344;
    v344[12] = v399;
    v70[13] = v69;

    v71 = v326;
    v72 = v344;
    v344[14] = v400;
    v72[15] = v71;

    v73 = v327;
    v74 = v344;
    v344[16] = v401;
    v74[17] = v73;

    v75 = v328;
    v76 = v344;
    v344[18] = v402;
    v76[19] = v75;

    v77 = v329;
    v78 = v344;
    v344[20] = v403;
    v78[21] = v77;

    v79 = v330;
    v80 = v344;
    v344[22] = v404;
    v80[23] = v79;

    v81 = v331;
    v82 = v344;
    v344[24] = v405;
    v82[25] = v81;

    v83 = v332;
    v84 = v344;
    v344[26] = v406;
    v84[27] = v83;

    v85 = v333;
    v86 = v344;
    v344[28] = v407;
    v86[29] = v85;

    v87 = v334;
    v88 = v344;
    v344[30] = v408;
    v88[31] = v87;

    v89 = v335;
    v90 = v344;
    v344[32] = v409;
    v90[33] = v89;

    v91 = v336;
    v92 = v344;
    v344[34] = v410;
    v92[35] = v91;

    v93 = v337;
    v94 = v344;
    v344[36] = v411;
    v94[37] = v93;

    v95 = v338;
    v96 = v344;
    v344[38] = v412;
    v96[39] = v95;

    v97 = v339;
    v98 = v344;
    v344[40] = v413;
    v98[41] = v97;

    v99 = v340;
    v100 = v344;
    v344[42] = v414;
    v100[43] = v99;

    v101 = v341;
    v102 = v344;
    v344[44] = v415;
    v102[45] = v101;

    v103 = v343;
    v104 = v344;
    v344[46] = v416;
    v104[47] = v103;
    sub_1B0394964();

    if (os_log_type_enabled(v346, v347))
    {
      v105 = v417;
      v288 = sub_1B0E45D78();
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v289 = sub_1B03949A8(0, v287, v287);
      v290 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v291 = &v458;
      v458 = v288;
      v292 = &v457;
      v457 = v289;
      v293 = &v456;
      v456 = v290;
      sub_1B0394A48(3, &v458);
      sub_1B0394A48(8, v291);
      v454 = v393;
      v455 = v319;
      sub_1B03949FC(&v454, v291, v292, v293);
      v294 = v105;
      if (v105)
      {

        __break(1u);
      }

      else
      {
        v454 = v394;
        v455 = v320;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v286 = 0;
        v454 = v395;
        v455 = v321;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v285 = 0;
        v454 = v396;
        v455 = v322;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v284 = 0;
        v454 = v397;
        v455 = v323;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v283 = 0;
        v454 = v398;
        v455 = v324;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v282 = 0;
        v454 = v399;
        v455 = v325;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v281 = 0;
        v454 = v400;
        v455 = v326;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v280 = 0;
        v454 = v401;
        v455 = v327;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v279 = 0;
        v454 = v402;
        v455 = v328;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v278 = 0;
        v454 = v403;
        v455 = v329;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v277 = 0;
        v454 = v404;
        v455 = v330;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v276 = 0;
        v454 = v405;
        v455 = v331;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v275 = 0;
        v454 = v406;
        v455 = v332;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v274 = 0;
        v454 = v407;
        v455 = v333;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v273 = 0;
        v454 = v408;
        v455 = v334;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v272 = 0;
        v454 = v409;
        v455 = v335;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v271 = 0;
        v454 = v410;
        v455 = v336;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v270 = 0;
        v454 = v411;
        v455 = v337;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v269 = 0;
        v454 = v412;
        v455 = v338;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v268 = 0;
        v454 = v413;
        v455 = v339;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v267 = 0;
        v454 = v414;
        v455 = v340;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v266 = 0;
        v454 = v415;
        v455 = v341;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        v265 = 0;
        v454 = v416;
        v455 = v343;
        sub_1B03949FC(&v454, &v458, &v457, &v456);
        _os_log_impl(&dword_1B0389000, v346, v347, "[%.*hhx-%.*X] Creating new local mailbox '%{sensitive,mask.mailbox}s' inside parent '%{sensitive,mask.mailbox}s.'", v288, 0x3Fu);
        sub_1B03998A8(v289, 0, v287);
        sub_1B03998A8(v290, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v346);
    (*(v447 + 8))(v453, v446);
  }

  sub_1B089E99C(v445);
  v194 = 0;
  sub_1B03EE50C();
  v193 = v441[2];
  v186 = v441[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v187 = v441[4];
  v188 = v441[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v189 = *(v442 + 14);
  v190 = *(v442 + 16);
  v191 = *(v441 + 48);
  sub_1B08A39BC(v348, v430);
  v192 = *v430;
  MEMORY[0x1E69E5928](v192);
  sub_1B08A3DE8(v430);
  v197 = sub_1B089F8E0(v193, v186, v187, v188, v189, v190, v191 & 1, v192);
  v480 = v197;
  v195 = &v479;
  v479 = 64;
  v478 = [v197 attributes];
  v196 = type metadata accessor for MailboxAttributes(v194);
  sub_1B0694AF8();
  sub_1B0E46F48();
  [v197 setAttributes_];
  sub_1B089FC28(v445, v197);
  sub_1B08A39BC(v348, v430);
  sub_1B089FF5C(v442);
  sub_1B08A3DE8(v430);
  v198 = [v197 URL];
  if (v198)
  {
    v185 = v198;
    v184 = v198;
    sub_1B0E42DE8();
    (*(v422 + 32))(v427, v425, v421);
    (*(v422 + 56))(v427, 0, 1, v421);
    MEMORY[0x1E69E5920](v184);
  }

  else
  {
    (*(v422 + 56))(v427, 1, 1, v421);
  }

  MEMORY[0x1E69E5928](v197);
  v177 = *(v418 + 48);
  sub_1B07C8260(v427, v420);
  *&v420[v177] = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28C0, &qword_1B0E9E130);
  sub_1B0E452E8();
  v171 = v441;
  *(v348 + *(updated + 52)) = 1;
  v172 = *v171;
  v178 = v490;
  *v490 = v172;
  *&v490[5] = *(v171 + 5);
  sub_1B06E38A8(v490, v477);
  sub_1B06E38A8(v178, v476);
  v491 = *v490;
  v492 = *&v490[8];
  sub_1B039E440(v178);
  MEMORY[0x1E69E5928](v197);
  v179 = *v441;
  v180 = *(v441 + 2);
  v181 = *(v441 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v473 = v179;
  v474 = v180;
  v475 = v181;
  sub_1B088E584();
  v470 = v173;
  v471 = v174;
  v472 = v175;
  v183 = v467;
  v467[0] = v173;
  v467[1] = v174;
  v468 = v175;
  v469 = BYTE4(v175);
  v182 = &v465;
  v465 = v491;
  v466 = v492;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28A0, &qword_1B0E9E118);
  sub_1B0E44788();
  return MEMORY[0x1E69E5920](v197);
}