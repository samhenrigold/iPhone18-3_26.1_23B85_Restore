uint64_t sub_1D26DBA14@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1D2875F68();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02E8, &qword_1D289E988);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = (v1 + *(type metadata accessor for ComposingView(0) + 24));
  v11 = *v9;
  v10 = v9[1];
  *&v28[0] = *v9;
  *(&v28[0] + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v12 = sub_1D2300CD0();

  if ((v12 & 1) == 0)
  {
    return (*(v6 + 56))(v21, 1, 1, v5);
  }

  *&v28[0] = v11;
  *(&v28[0] + 1) = v10;
  sub_1D2877308();
  v13 = sub_1D22FDC70();

  KeyPath = swift_getKeyPath();
  v27 = 0;
  v15 = swift_getKeyPath();
  v26 = 0;
  v16 = swift_getKeyPath();
  v25 = 0;
  *&v22 = v13;
  type metadata accessor for ErrorViewModel(0);
  sub_1D28772F8();
  v22 = v28[0];
  *&v23 = KeyPath;
  BYTE8(v23) = v27;
  *v24 = v15;
  v24[8] = v26;
  *&v24[16] = v16;
  v24[24] = v25;
  sub_1D2875F58();
  sub_1D26ECF8C();
  sub_1D2876958();
  (*(v20 + 8))(v4, v2);
  v28[0] = v22;
  v28[1] = v23;
  v29[0] = *v24;
  *(v29 + 9) = *&v24[9];
  sub_1D26ECFE0(v28);
  v17 = v21;
  (*(v6 + 32))(v21, v8, v5);
  return (*(v6 + 56))(v17, 0, 1, v5);
}

uint64_t sub_1D26DBD24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v348 = a1;
  v347 = sub_1D2877748();
  v346 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347);
  v345 = &v271 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_1D2875628();
  v342 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v339 = &v271 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_1D2870CB8();
  v320 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v316 = &v271 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_1D2877C78();
  v315 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v314 = &v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9B08, &unk_1D287F790);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v313 = &v271 - v8;
  v9 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v290 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58, &qword_1D287FE70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v287 = &v271 - v12;
  v286 = sub_1D2871F38();
  v285 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v272 = &v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_1D2872008();
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v284 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ComposingView(0);
  v366 = *(v15 - 8);
  v364 = *(v366 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v280 = (&v271 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v360 = &v271 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0130, &qword_1D289E468);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v271 - v20;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0138, &qword_1D289E470);
  MEMORY[0x1EEE9AC00](v358);
  v349 = &v271 - v22;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0140, &qword_1D289E478);
  v281 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351);
  v350 = &v271 - v23;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0148, &qword_1D289E480);
  v291 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v352 = (&v271 - v24);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0150, &qword_1D289E488);
  v294 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v293 = &v271 - v25;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0158, &qword_1D289E490);
  v298 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v297 = &v271 - v26;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0160, &qword_1D289E498);
  MEMORY[0x1EEE9AC00](v296);
  v302 = &v271 - v27;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0168, &qword_1D289E4A0);
  MEMORY[0x1EEE9AC00](v301);
  v300 = &v271 - v28;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0170, &qword_1D289E4A8);
  MEMORY[0x1EEE9AC00](v304);
  v305 = &v271 - v29;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0178, &qword_1D289E4B0);
  v307 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v306 = &v271 - v30;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0180, &qword_1D289E4B8);
  MEMORY[0x1EEE9AC00](v303);
  v353 = &v271 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v310 = &v271 - v33;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0188, &qword_1D289E4C0);
  MEMORY[0x1EEE9AC00](v309);
  v311 = &v271 - v34;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0190, &qword_1D289E4C8);
  MEMORY[0x1EEE9AC00](v357);
  v356 = (&v271 - v35);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0198, &qword_1D289E4D0);
  v312 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v354 = &v271 - v36;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01A0, &qword_1D289E4D8);
  v321 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v318 = &v271 - v37;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01A8, &qword_1D289E4E0);
  v325 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v323 = &v271 - v38;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01B0, &qword_1D289E4E8);
  v327 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v329);
  v355 = &v271 - v39;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01B8, &qword_1D289E4F0);
  v330 = *(v331 - 8);
  MEMORY[0x1EEE9AC00](v331);
  v328 = &v271 - v40;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01C0, &qword_1D289E4F8);
  v333 = *(v334 - 8);
  MEMORY[0x1EEE9AC00](v334);
  v332 = &v271 - v41;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01C8, &qword_1D289E500);
  v338 = *(v340 - 8);
  MEMORY[0x1EEE9AC00](v340);
  v335 = &v271 - v42;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01D0, &qword_1D289E508);
  v341 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v336 = &v271 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v337 = &v271 - v45;
  *v21 = sub_1D2875918();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01D8, &qword_1D289E510);
  sub_1D26DF228(v1, &v21[*(v46 + 44)]);
  v47 = sub_1D2877848();
  v49 = v48;
  v50 = sub_1D2875918();
  v51 = sub_1D2874F98();
  v52 = sub_1D2876338();
  v382 = 1;
  v381 = 1;
  v53 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E01E0, &unk_1D289E518) + 36)];
  *v53 = v50;
  *(v53 + 1) = 0;
  v53[16] = 1;
  *(v53 + 3) = 0;
  v53[32] = 1;
  *(v53 + 5) = v51;
  v53[48] = v52;
  *(v53 + 7) = v47;
  *(v53 + 8) = v49;
  v269 = sub_1D2877838();
  v270 = v54;
  LOBYTE(v268) = 0;
  v267 = 0x7FF0000000000000;
  LOBYTE(v266) = 1;
  v265 = 0;
  sub_1D2875208();
  v55 = &v21[*(v19 + 36)];
  v56 = v388;
  *(v55 + 4) = v387;
  *(v55 + 5) = v56;
  *(v55 + 6) = v389;
  v57 = v384;
  *v55 = v383;
  *(v55 + 1) = v57;
  v58 = v386;
  *(v55 + 2) = v385;
  *(v55 + 3) = v58;
  v59 = v2 + *(v15 + 44);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v378) = v60;
  v379 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877328();
  v62 = v368;
  v63 = v369;
  LOBYTE(v49) = v370;
  *(swift_allocObject() + 16) = 0x4082C00000000000;
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  *(v64 + 24) = v63;
  *(v64 + 32) = v49;
  sub_1D26EB710();
  sub_1D2870F78();
  sub_1D2870F78();
  v269 = MEMORY[0x1E69E6388];
  v65 = v349;
  sub_1D2876A38();

  sub_1D22BD238(v21, &qword_1EC6E0130, &qword_1D289E468);
  v66 = sub_1D2874FB8();
  v67 = sub_1D2876358();
  v68 = &v65[*(v358 + 9)];
  *v68 = v66;
  v68[8] = v67;
  v361 = v15;
  v69 = *(v15 + 24);
  v367 = v2;
  v70 = (v2 + v69);
  v72 = *v70;
  v71 = v70[1];
  v359 = v72;
  v363 = v71;
  v378 = v72;
  v379 = v71;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877328();
  v73 = v368;
  v74 = v369;
  v75 = v370;
  swift_getKeyPath();
  v368 = v73;
  v369 = v74;
  v370 = v75;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE8, &qword_1D2884B18);
  sub_1D2877508();

  LODWORD(v283) = v380;

  v76 = v360;
  sub_1D26EF2C0(v2, v360, type metadata accessor for ComposingView);
  v77 = *(v366 + 80);
  v78 = (v77 + 16) & ~v77;
  v79 = v364;
  v80 = swift_allocObject();
  v273 = type metadata accessor for ComposingView;
  sub_1D26EF328(v76, v80 + v78, type metadata accessor for ComposingView);
  v276 = sub_1D2873BC8();
  v278 = sub_1D26EB898();
  v279 = sub_1D26EEE94(&unk_1ED89E0D8, MEMORY[0x1E69A1590], MEMORY[0x1E69A1588]);
  v81 = v349;
  sub_1D2876E48();

  sub_1D22BD238(v81, &qword_1EC6E0138, &qword_1D289E470);
  v82 = v367;
  sub_1D26EF2C0(v367, v76, type metadata accessor for ComposingView);
  v83 = sub_1D2878568();
  v84 = sub_1D2878558();
  v85 = (v77 + 32) & ~v77;
  v283 = v85 + v79;
  v86 = swift_allocObject();
  v87 = MEMORY[0x1E69E85E0];
  *(v86 + 16) = v84;
  *(v86 + 24) = v87;
  v349 = v85;
  v88 = v273;
  sub_1D26EF328(v76, v86 + v85, v273);
  v282 = v83;
  v89 = sub_1D2878558();
  v90 = swift_allocObject();
  *(v90 + 16) = v89;
  *(v90 + 24) = v87;
  sub_1D2877528();
  v274 = v378;
  LODWORD(v275) = v380;
  sub_1D26EF2C0(v82, v76, type metadata accessor for ComposingView);
  v91 = swift_allocObject();
  v92 = v88;
  sub_1D26EF328(v76, v91 + v78, v88);
  v93 = v280;
  sub_1D26EF2C0(v82, v280, type metadata accessor for ComposingView);
  v366 = v77;
  v94 = swift_allocObject();
  v365 = v78;
  v95 = v94 + v78;
  v96 = v359;
  sub_1D26EF328(v93, v95, v92);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0200, &qword_1D289E570);
  v368 = v358;
  v369 = v276;
  v370 = v278;
  v371 = v279;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0208, &qword_1D289E578);
  v100 = sub_1D26EBA40();
  v101 = sub_1D22BAAF0();
  v368 = v99;
  v369 = &type metadata for FixedPresentationSizing;
  v370 = v100;
  v102 = v363;
  v371 = v101;
  v278 = swift_getOpaqueTypeConformance2();
  v269 = v278;
  v279 = OpaqueTypeConformance2;
  v268 = OpaqueTypeConformance2;
  v280 = v97;
  v267 = v97;
  v103 = v351;
  v104 = v350;
  sub_1D2876E48();

  (*(v281 + 8))(v104, v103);
  v378 = v96;
  v379 = v102;
  sub_1D2877328();
  v105 = v368;
  v106 = v369;
  v107 = v370;
  swift_getKeyPath();
  v378 = v105;
  v379 = v106;
  v380 = v107;
  sub_1D2877508();

  v281 = v375;
  v277 = v376;
  LODWORD(v276) = v377;
  v108 = v285;

  v109 = v286;

  v110 = v284;

  sub_1D2871EC8();
  v111 = v287;
  sub_1D2871F58();
  v112 = v111;
  if ((*(v108 + 48))(v111, 1, v109) == 1)
  {
    sub_1D22BD238(v111, &qword_1EC6D9D58, &qword_1D287FE70);
    v358 = 0xE000000000000000;
  }

  else
  {
    v113 = v272;
    (*(v108 + 32))(v272, v112, v109);
    sub_1D2871ED8();
    v358 = v114;
    (*(v108 + 8))(v113, v109);
  }

  (*(v288 + 8))(v110, v289);
  v368 = v96;
  v369 = v102;
  sub_1D2877308();
  v115 = v374;
  swift_getKeyPath();
  v368 = v115;
  v116 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v289) = *(v115 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto);

  v368 = v96;
  v369 = v102;
  sub_1D2877308();
  v117 = v374;
  swift_getKeyPath();
  v368 = v117;
  v350 = v116;
  sub_1D28719E8();

  v118 = *(v117 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName + 8);
  v288 = *(v117 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  v119 = v118;
  sub_1D2870F68();

  v120 = v360;
  sub_1D26EF2C0(v367, v360, type metadata accessor for ComposingView);
  v121 = v365;
  v122 = swift_allocObject();
  sub_1D26EF328(v120, v122 + v121, type metadata accessor for ComposingView);
  sub_1D2875778();
  sub_1D2875768();
  sub_1D2875758();
  sub_1D2875768();
  sub_1D28757A8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v123 = qword_1ED8B0058;
  v287 = sub_1D2876668();
  v286 = v124;
  v126 = v125;
  v285 = v127;
  v290 = &v271;
  MEMORY[0x1EEE9AC00](v287);
  v270 = v358;
  MEMORY[0x1EEE9AC00](v128);
  v273 = v122;
  v274 = v119;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0210, &qword_1D289E5F8);
  v275 = v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0218, &unk_1D289E600);
  v284 = v130;
  v368 = v351;
  v369 = v280;
  v370 = v279;
  v371 = v278;
  v131 = swift_getOpaqueTypeConformance2();
  v288 = v131;
  v132 = sub_1D22BB9D8(&qword_1ED89CFF0, &qword_1EC6E0210, &qword_1D289E5F8, MEMORY[0x1E6981F48]);
  v289 = v132;
  v351 = sub_1D26EBC60();
  v268 = v132;
  v269 = v351;
  v266 = v130;
  v267 = v131;
  v265 = v129;
  v133 = v292;
  v264[0] = v264;
  v264[1] = v292;
  LOBYTE(v131) = v126;
  v134 = v293;
  v135 = v287;
  v136 = v286;
  v137 = v352;
  sub_1D2876E08();

  sub_1D22ED6E0(v135, v136, v131 & 1);

  (*(v291 + 8))(v137, v133);
  v138 = (v367 + v361[7]);
  v140 = *v138;
  v139 = v138[1];
  v368 = v140;
  v369 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0220, &qword_1D289E610);
  sub_1D2877308();
  type metadata accessor for ComposingAnimationCoordinator(0);
  v368 = v133;
  v369 = v275;
  v370 = v284;
  v371 = v288;
  v372 = v289;
  v373 = v351;
  swift_getOpaqueTypeConformance2();
  sub_1D26EEE94(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
  v141 = v297;
  v142 = v295;
  sub_1D28767E8();

  (*(v294 + 8))(v134, v142);
  v358 = MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  v143 = v359;
  v368 = v359;
  v144 = v363;
  v369 = v363;
  sub_1D2877308();
  v145 = v378;
  swift_getKeyPath();
  v368 = v145;
  sub_1D28719E8();

  LODWORD(v137) = *(v145 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  v146 = v302;
  (*(v298 + 32))(v302, v141, v299);
  v147 = v146 + *(v296 + 36);
  *v147 = v358;
  *(v147 + 8) = v137 == 1;
  v148 = MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  v368 = v143;
  v369 = v144;
  sub_1D2877308();
  v149 = v378;
  swift_getKeyPath();
  v368 = v149;
  sub_1D28719E8();

  v150 = *(v149 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  v151 = v300;
  sub_1D22EC9BC(v146, v300, &qword_1EC6E0160, &qword_1D289E498);
  v152 = v151 + *(v301 + 36);
  *v152 = v148;
  *(v152 + 8) = v150 == 1;
  v153 = v151;
  v154 = v305;
  sub_1D22EC9BC(v153, v305, &qword_1EC6E0168, &qword_1D289E4A0);
  *(v154 + *(v304 + 36)) = 0;
  v155 = v367;
  v156 = v360;
  v352 = type metadata accessor for ComposingView;
  sub_1D26EF2C0(v367, v360, type metadata accessor for ComposingView);
  v157 = v365;
  v158 = swift_allocObject();
  v358 = type metadata accessor for ComposingView;
  sub_1D26EF328(v156, v158 + v157, type metadata accessor for ComposingView);
  sub_1D26EBD04();
  v159 = v306;
  sub_1D2876908();

  sub_1D22BD238(v154, &qword_1EC6E0170, &qword_1D289E4A8);
  v160 = sub_1D2877848();
  v162 = v161;
  v163 = v353;
  v164 = v353 + *(v303 + 36);
  sub_1D26E6750(v155, v164);
  v165 = (v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0240, &qword_1D289E640) + 36));
  *v165 = v160;
  v165[1] = v162;
  (*(v307 + 32))(v163, v159, v308);
  v368 = v143;
  v166 = v363;
  v369 = v363;
  sub_1D2877308();
  v167 = sub_1D22F7DF4();

  swift_getKeyPath();
  v368 = v167;
  sub_1D26EEE94(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
  sub_1D28719E8();

  v168 = sub_1D2878558();
  v169 = swift_allocObject();
  *(v169 + 16) = v168;
  v170 = MEMORY[0x1E69E85E0];
  *(v169 + 24) = MEMORY[0x1E69E85E0];
  sub_1D26EF2C0(v155, v156, type metadata accessor for ComposingView);
  v171 = sub_1D2878558();
  v172 = swift_allocObject();
  *(v172 + 16) = v171;
  *(v172 + 24) = v170;
  sub_1D26EF328(v156, &v349[v172], v358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA0, &unk_1D289E670);
  v173 = v313;
  sub_1D2877528();
  v174 = v314;
  sub_1D2877C68();
  v175 = v316;
  sub_1D2870CA8();
  v368 = v143;
  v369 = v166;
  sub_1D2877308();
  sub_1D22F7DF4();

  sub_1D23C6CA0();
  v176 = _SystemPhotoLibrary.photoLibrary.getter();

  (*(v320 + 8))(v175, v322);
  (*(v315 + 8))(v174, v317);
  sub_1D22BD238(v173, &qword_1EC6D9B08, &unk_1D287F790);
  v177 = v310;
  sub_1D22EC9BC(v353, v310, &qword_1EC6E0180, &qword_1D289E4B8);
  v178 = v367;
  v179 = v156;
  v180 = v156;
  v181 = v352;
  sub_1D26EF2C0(v367, v180, v352);
  v182 = v365;
  v183 = swift_allocObject();
  v184 = v358;
  sub_1D26EF328(v179, v183 + v182, v358);
  v185 = v177;
  v186 = v311;
  sub_1D22EC9BC(v185, v311, &qword_1EC6E0180, &qword_1D289E4B8);
  v187 = (v186 + *(v309 + 36));
  *v187 = sub_1D26EC220;
  v187[1] = v183;
  v187[2] = 0;
  v187[3] = 0;
  v188 = v178;
  sub_1D26EF2C0(v178, v179, v181);
  v189 = swift_allocObject();
  sub_1D26EF328(v179, v189 + v182, v184);
  v190 = v356;
  sub_1D22EC9BC(v186, v356, &qword_1EC6E0188, &qword_1D289E4C0);
  v191 = (v190 + *(v357 + 36));
  *v191 = 0;
  v191[1] = 0;
  v191[2] = sub_1D26EC238;
  v191[3] = v189;
  v192 = v188 + v361[19];
  v193 = *v192;
  v194 = v179;
  if (*(v192 + 8) == 1)
  {
    LOBYTE(v368) = *v192;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v195 = sub_1D28762E8();
    sub_1D2873BE8();

    v196 = v339;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v193, 0);
    (*(v342 + 8))(v196, v344);
    LOBYTE(v193) = v368;
  }

  LOBYTE(v378) = v193;
  sub_1D26EF2C0(v188, v194, type metadata accessor for ComposingView);
  v197 = swift_allocObject();
  sub_1D26EF328(v194, v197 + v182, type metadata accessor for ComposingView);
  v198 = sub_1D26EC268();
  v199 = sub_1D22EBCFC();
  v200 = v356;
  sub_1D2876F48();

  sub_1D22BD238(v200, &qword_1EC6E0190, &qword_1D289E4C8);
  v201 = v188 + v361[24];
  v202 = *v201;
  if (*(v201 + 8) == 1)
  {
    v203 = *v201;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v204 = sub_1D28762E8();
    sub_1D2873BE8();

    v205 = v339;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v202, 0);
    (*(v342 + 8))(v205, v344);
    v203 = v368;
  }

  v378 = v203;
  v356 = type metadata accessor for ComposingView;
  sub_1D26EF2C0(v188, v194, type metadata accessor for ComposingView);
  v206 = v365;
  v207 = swift_allocObject();
  v358 = type metadata accessor for ComposingView;
  sub_1D26EF328(v194, v207 + v206, type metadata accessor for ComposingView);
  v368 = v357;
  v369 = &type metadata for CreationViewStyle;
  v370 = v198;
  v371 = v199;
  v357 = MEMORY[0x1E6981440];
  v208 = swift_getOpaqueTypeConformance2();
  v209 = sub_1D2403664();
  v210 = v318;
  v211 = v319;
  v212 = v354;
  sub_1D2876F48();

  (*(v312 + 8))(v212, v211);
  v368 = v359;
  v369 = v363;
  sub_1D2877308();
  sub_1D22FFBF8();

  LOBYTE(v212) = sub_1D25A3F44();

  LOBYTE(v378) = v212 & 1;
  v213 = v188;
  v214 = v356;
  sub_1D26EF2C0(v213, v194, v356);
  v215 = swift_allocObject();
  sub_1D26EF328(v194, v215 + v206, v358);
  v368 = v211;
  v369 = MEMORY[0x1E69E7DE0];
  v370 = v208;
  v371 = v209;
  v216 = swift_getOpaqueTypeConformance2();
  v217 = v323;
  v218 = v324;
  sub_1D2876F48();

  (*(v321 + 8))(v210, v218);
  v219 = v367;
  LOBYTE(v378) = sub_1D26DA570();
  sub_1D26EF2C0(v219, v194, v214);
  v220 = v365;
  v221 = swift_allocObject() + v220;
  v222 = v194;
  v223 = v194;
  v224 = v358;
  sub_1D26EF328(v223, v221, v358);
  v368 = v218;
  v369 = MEMORY[0x1E69E6370];
  v370 = v216;
  v371 = MEMORY[0x1E69E6388];
  v225 = swift_getOpaqueTypeConformance2();
  v226 = v326;
  sub_1D2876F48();

  (*(v325 + 8))(v217, v226);
  v368 = v359;
  v369 = v363;
  sub_1D2877308();
  LOBYTE(v214) = sub_1D230326C();

  LOBYTE(v378) = v214 & 1;
  v227 = v356;
  sub_1D26EF2C0(v367, v222, v356);
  v228 = v365;
  v229 = swift_allocObject();
  sub_1D26EF328(v222, v229 + v228, v224);
  v368 = v226;
  v369 = MEMORY[0x1E69E6370];
  v370 = v225;
  v371 = MEMORY[0x1E69E6388];
  v230 = swift_getOpaqueTypeConformance2();
  v231 = v328;
  v232 = v329;
  v233 = v355;
  sub_1D2876F48();

  (*(v327 + 8))(v233, v232);
  v234 = v367;
  LOBYTE(v378) = sub_1D26DAA04() & 1;
  v235 = v234;
  v236 = v360;
  sub_1D26EF2C0(v235, v360, v227);
  v237 = v365;
  v238 = swift_allocObject();
  sub_1D26EF328(v236, v238 + v237, v358);
  v368 = v232;
  v369 = MEMORY[0x1E69E6370];
  v370 = v230;
  v371 = MEMORY[0x1E69E6388];
  v239 = swift_getOpaqueTypeConformance2();
  v240 = v332;
  v241 = v331;
  sub_1D2876F48();

  (*(v330 + 8))(v231, v241);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D30, &unk_1D28A82F0);
  sub_1D2874AE8();
  v242 = v236;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_1D2880100;
  sub_1D2874A98();
  sub_1D2874AB8();
  sub_1D2874AC8();
  sub_1D2874AD8();
  sub_1D2874A68();
  v244 = sub_1D2402C24(v243);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v245 = v367;
  sub_1D26EF2C0(v367, v236, v356);
  v246 = v365;
  v247 = swift_allocObject();
  sub_1D26EF328(v242, v247 + v246, v358);
  v368 = v241;
  v369 = MEMORY[0x1E69E6370];
  v370 = v239;
  v371 = MEMORY[0x1E69E6388];
  v248 = swift_getOpaqueTypeConformance2();
  v249 = v345;
  v250 = v334;
  sub_1D24C66D8();
  v251 = v335;
  MEMORY[0x1D389F1F0](v244, v249, sub_1D26EC5EC, v247, v250, v248);

  (*(v346 + 8))(v249, v347);
  (*(v333 + 8))(v240, v250);
  v252 = (v245 + v361[13]);
  v254 = *v252;
  v253 = v252[1];
  v368 = v254;
  v369 = v253;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0260, &unk_1D289E680);
  sub_1D2877308();
  v255 = type metadata accessor for StickerSaveAnimation.Coordinator(0);
  v368 = v250;
  v369 = v248;
  v256 = swift_getOpaqueTypeConformance2();
  v257 = sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator, &unk_1D28A3200);
  v258 = v336;
  v259 = v340;
  sub_1D28767E8();

  (*(v338 + 8))(v251, v259);
  v368 = v259;
  v369 = v255;
  v370 = v256;
  v371 = v257;
  swift_getOpaqueTypeConformance2();
  v260 = v337;
  v261 = v343;
  sub_1D245980C();
  v262 = *(v341 + 8);
  v262(v258, v261);
  sub_1D245980C();
  return (v262)(v260, v261);
}

uint64_t sub_1D26DF228@<X0>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0298, &qword_1D289E8E0);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v104 - v3;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02A0, &qword_1D289E8E8);
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v129 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02A8, &qword_1D289E8F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v123 = (&v104 - v8);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02B0, &qword_1D289E8F8);
  MEMORY[0x1EEE9AC00](v121);
  v10 = &v104 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02B8, &qword_1D289E900);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v104 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v104 - v16;
  v118 = sub_1D2875E18();
  v120 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0, &qword_1D288C390);
  MEMORY[0x1EEE9AC00](v116);
  v19 = &v104 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v115 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v104 - v26;
  v27 = sub_1D2875628();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D26DAA04() & 1) == 0)
  {
    sub_1D26ECE84(&v173);
    goto LABEL_20;
  }

  v113 = v10;
  v31 = type metadata accessor for ComposingView(0);
  v32 = a1 + *(v31 + 84);
  v33 = *v32;
  LODWORD(v32) = v32[8];
  v119 = a1;
  v112 = v14;
  if (v32 == 1)
  {
    *&v145 = v33;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v34 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v28 + 8))(v30, v27);
  }

  swift_getKeyPath();
  v35 = v117;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  *&v173 = off_1ED8A4930;
  sub_1D26EEE94(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v36 = sub_1D23CF978();

  v37 = (v119 + *(v31 + 24));
  v38 = *v37;
  v107 = v37[1];
  v108 = v38;
  *&v173 = v38;
  *(&v173 + 1) = v107;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v110 = sub_1D22FECC4();

  sub_1D2521858(v132);
  v109 = v36 & 1;
  v111 = sub_1D2876348();
  v105 = v31;
  sub_1D24CC0C4(v35);
  v39 = v120;
  v40 = v118;
  (*(v120 + 104))(v24, *MEMORY[0x1E697FF38], v118);
  (*(v39 + 56))(v24, 0, 1, v40);
  v41 = *(v116 + 48);
  sub_1D22BD1D0(v35, v19, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD1D0(v24, &v19[v41], &qword_1EC6D99B8, &unk_1D287E890);
  v42 = *(v39 + 48);
  if (v42(v19, 1, v40) == 1)
  {
    sub_1D22BD238(v24, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v35, &qword_1EC6D99B8, &unk_1D287E890);
    v43 = v42(&v19[v41], 1, v40);
    a1 = v119;
    if (v43 == 1)
    {
      sub_1D22BD238(v19, &qword_1EC6D99B8, &unk_1D287E890);
      v10 = v113;
LABEL_15:
      v49 = a1 + *(v105 + 44);
      v50 = *v49;
      v51 = *(v49 + 1);
      LOBYTE(v173) = v50;
      *(&v173 + 1) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
      sub_1D2877308();
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v44 = v115;
  sub_1D22BD1D0(v19, v115, &qword_1EC6D99B8, &unk_1D287E890);
  if (v42(&v19[v41], 1, v40) == 1)
  {
    sub_1D22BD238(v24, &qword_1EC6D99B8, &unk_1D287E890);
    sub_1D22BD238(v35, &qword_1EC6D99B8, &unk_1D287E890);
    (*(v120 + 8))(v44, v40);
    a1 = v119;
LABEL_13:
    sub_1D22BD238(v19, &qword_1EC6E0DB0, &qword_1D288C390);
    v10 = v113;
    goto LABEL_16;
  }

  v45 = v120;
  v46 = v114;
  (*(v120 + 32))(v114, &v19[v41], v40);
  sub_1D26EEE94(&qword_1ED89D3D0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v47 = sub_1D2877F98();
  v48 = *(v45 + 8);
  v48(v46, v40);
  sub_1D22BD238(v24, &qword_1EC6D99B8, &unk_1D287E890);
  sub_1D22BD238(v35, &qword_1EC6D99B8, &unk_1D287E890);
  v48(v115, v40);
  sub_1D22BD238(v19, &qword_1EC6D99B8, &unk_1D287E890);
  a1 = v119;
  v10 = v113;
  if (v47)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_1D2874298();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v134) = 0;
  *&v173 = v108;
  *(&v173 + 1) = v107;
  sub_1D2877308();
  v60 = sub_1D2307934();

  if (v60)
  {
    sub_1D2874938();
    MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
    v61 = sub_1D2874978();
  }

  else
  {
    v61 = sub_1D2874958();
  }

  v14 = v112;
  v156 = v110;
  LOBYTE(v157) = v109;
  *(&v157 + 1) = 0;
  v160 = v132[2];
  v161[0] = v133[0];
  *(v161 + 9) = *(v133 + 9);
  v158 = v132[0];
  v159 = v132[1];
  LOBYTE(v162) = v111;
  *(&v162 + 1) = v53;
  *&v163 = v55;
  *(&v163 + 1) = v57;
  *&v164 = v59;
  BYTE8(v164) = 0;
  v165 = v61;
  CGRectMake();
  v181 = v163;
  v182 = v164;
  v183 = v165;
  v177 = v160;
  v178 = v161[0];
  v180 = v162;
  v179 = v161[1];
  v173 = v156;
  v174 = v157;
  v175 = v158;
  v176 = v159;
LABEL_20:
  v62 = sub_1D2877848();
  v63 = v123;
  *v123 = v62;
  *(v63 + 8) = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02C0, &qword_1D289E908);
  sub_1D26E0288(a1, v63 + *(v65 + 44));
  sub_1D2877848();
  sub_1D2875208();
  sub_1D22EC9BC(v63, v10, &qword_1EC6E02A8, &qword_1D289E8F0);
  v66 = &v10[*(v121 + 36)];
  v67 = v171;
  *(v66 + 4) = v170;
  *(v66 + 5) = v67;
  *(v66 + 6) = v172;
  v68 = v167;
  *v66 = v166;
  *(v66 + 1) = v68;
  v69 = v169;
  *(v66 + 2) = v168;
  *(v66 + 3) = v69;
  v70 = sub_1D2877828();
  v72 = v71;
  v73 = &v14[*(v122 + 36)];
  sub_1D26DBA14(v73);
  v74 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02C8, &qword_1D289E910) + 36));
  *v74 = v70;
  v74[1] = v72;
  sub_1D22EC9BC(v10, v14, &qword_1EC6E02B0, &qword_1D289E8F8);
  sub_1D22EC9BC(v14, v131, &qword_1EC6E02B8, &qword_1D289E900);
  v75 = type metadata accessor for ComposingView(0);
  v76 = (a1 + v75[6]);
  v77 = *v76;
  v123 = v76[1];
  *&v156 = v77;
  *(&v156 + 1) = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D22F7DF4();

  v78 = v124;
  sub_1D22D7C04(*a1, 0, v124);
  v79 = a1 + v75[11];
  v80 = *v79;
  v81 = *(v79 + 1);
  LOBYTE(v156) = v80;
  *(&v156 + 1) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  LOBYTE(v63) = v145;
  KeyPath = swift_getKeyPath();
  v83 = v78 + *(v125 + 36);
  *v83 = KeyPath;
  *(v83 + 8) = v63;
  v84 = a1 + v75[16];
  v85 = *v84;
  v86 = *(v84 + 1);
  LOBYTE(v84) = v84[16];
  LOBYTE(v156) = v85;
  *(&v156 + 1) = v86;
  LOBYTE(v157) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
  sub_1D28742C8();
  v156 = v145;
  LOBYTE(v157) = v146;
  LOBYTE(v145) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0128, &qword_1D289E318);
  sub_1D26ECEA4();
  sub_1D26EA8A8();
  v87 = v129;
  sub_1D2876EA8();

  sub_1D22BD238(v78, &qword_1EC6E0298, &qword_1D289E8E0);
  *&v156 = v77;
  *(&v156 + 1) = v123;
  sub_1D2877308();
  v88 = v145;
  swift_getKeyPath();
  *&v156 = v88;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v63) = *(v88 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  *(v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02D0, &qword_1D289E948) + 36)) = v63 == 1;
  *(v87 + *(v127 + 36)) = 0xBFF0000000000000;
  v142 = v181;
  v143 = v182;
  v144 = v183;
  v138 = v177;
  v139 = v178;
  v140 = v179;
  v141 = v180;
  v134 = v173;
  v135 = v174;
  v136 = v175;
  v137 = v176;
  v89 = v131;
  v90 = v128;
  sub_1D22BD1D0(v131, v128, &qword_1EC6E02B8, &qword_1D289E900);
  v91 = v130;
  sub_1D22BD1D0(v87, v130, &qword_1EC6E02A0, &qword_1D289E8E8);
  v92 = v143;
  v153 = v142;
  v154 = v143;
  v93 = v138;
  v94 = v139;
  v149 = v138;
  v150 = v139;
  v96 = v140;
  v95 = v141;
  v151 = v140;
  v152 = v141;
  v97 = v134;
  v98 = v135;
  v145 = v134;
  v146 = v135;
  v100 = v136;
  v99 = v137;
  v147 = v136;
  v148 = v137;
  v101 = v126;
  *(v126 + 128) = v142;
  *(v101 + 144) = v92;
  *(v101 + 64) = v93;
  *(v101 + 80) = v94;
  *(v101 + 96) = v96;
  *(v101 + 112) = v95;
  *v101 = v97;
  *(v101 + 16) = v98;
  v155 = v144;
  *(v101 + 160) = v144;
  *(v101 + 32) = v100;
  *(v101 + 48) = v99;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02D8, &qword_1D289E950);
  sub_1D22BD1D0(v90, v101 + *(v102 + 48), &qword_1EC6E02B8, &qword_1D289E900);
  sub_1D22BD1D0(v91, v101 + *(v102 + 64), &qword_1EC6E02A0, &qword_1D289E8E8);
  sub_1D22BD1D0(&v145, &v156, &qword_1EC6E02E0, &qword_1D289E958);
  sub_1D22BD238(v87, &qword_1EC6E02A0, &qword_1D289E8E8);
  sub_1D22BD238(v89, &qword_1EC6E02B8, &qword_1D289E900);
  sub_1D22BD238(v91, &qword_1EC6E02A0, &qword_1D289E8E8);
  sub_1D22BD238(v90, &qword_1EC6E02B8, &qword_1D289E900);
  v163 = v142;
  v164 = v143;
  v165 = v144;
  v160 = v138;
  v161[0] = v139;
  v161[1] = v140;
  v162 = v141;
  v156 = v134;
  v157 = v135;
  v158 = v136;
  v159 = v137;
  return sub_1D22BD238(&v156, &qword_1EC6E02E0, &qword_1D289E958);
}

uint64_t sub_1D26E0288@<X0>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v140);
  v146 = &v128 - v3;
  v156 = sub_1D2875678();
  v157 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v153 = &v128 - v6;
  v7 = type metadata accessor for CreationFloatingBubblesView(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02F0, &qword_1D289E9E8) - 8;
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v128 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E02F8, &qword_1D289E9F0) - 8;
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v128 - v12;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0300, &qword_1D289E9F8) - 8;
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v128 - v13;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0308, &qword_1D289EA00) - 8;
  MEMORY[0x1EEE9AC00](v159);
  v155 = &v128 - v14;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0310, &qword_1D289EA08) - 8;
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v128 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0318, &qword_1D289EA10) - 8;
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v128 - v16;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0320, &qword_1D289EA18) - 8;
  MEMORY[0x1EEE9AC00](v164);
  v161 = &v128 - v17;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0328, &qword_1D289EA20);
  MEMORY[0x1EEE9AC00](v166);
  v163 = &v128 - v18;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0330, &qword_1D289EA28);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v128 - v19;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0338, &qword_1D289EA30);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v128 - v20;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0340, &qword_1D289EA38);
  MEMORY[0x1EEE9AC00](v133);
  v139 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v128 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v128 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0348, &qword_1D289EA40);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v128 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0350, &qword_1D289EA48);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v134 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v128 - v32;
  v34 = sub_1D2875918();
  *v28 = 0;
  v28[8] = 1;
  *(v28 + 2) = 0;
  *(v28 + 3) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0358, &qword_1D289EA50);
  sub_1D26E1640(a1, &v28[*(v35 + 44)]);
  *&v28[*(v26 + 36)] = 0x4014000000000000;
  sub_1D26ED034();
  v129 = v33;
  sub_1D2876F98();
  sub_1D22BD238(v28, &qword_1EC6E0348, &qword_1D289EA40);
  v36 = type metadata accessor for ComposingView(0);
  v37 = *(v36 + 24);
  v38 = v36;
  v143 = v36;
  v39 = (a1 + v37);
  v41 = *v39;
  v40 = v39[1];
  v167 = a1;
  *&v168 = v41;
  *(&v168 + 1) = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D230808C();

  v43 = (a1 + *(v38 + 36));
  v44 = *v43;
  v145 = v43[1];
  *&v168 = v44;
  *(&v168 + 1) = v145;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877308();
  v45 = v171;
  *&v168 = v41;
  *(&v168 + 1) = v40;
  sub_1D2877308();
  sub_1D22FFBF8();
  v142 = sub_1D25A3F44();

  *&v168 = v41;
  *(&v168 + 1) = v40;
  v46 = sub_1D2877308();
  LOBYTE(v38) = sub_1D2309BC4(v46);

  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v171 = 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9B0, &qword_1D289C870);
  sub_1D28772F8();
  *(v10 + 32) = v168;
  LOBYTE(v171) = 0;
  sub_1D28772F8();
  v47 = *(&v168 + 1);
  *(v10 + 48) = v168;
  *(v10 + 56) = v47;
  v171 = 0.0;
  v172 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48, &qword_1D287CC90);
  sub_1D28772F8();
  v48 = v169;
  *(v10 + 64) = v168;
  *(v10 + 80) = v48;
  type metadata accessor for FloatingBubblesViewModel(0);
  sub_1D26EEE94(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  v49 = v146;
  sub_1D2877638();
  v50 = v10 + v8[12];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = v10 + v8[13];
  type metadata accessor for ComposingAnimationCoordinator(0);
  sub_1D26EEE94(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
  *v51 = sub_1D28744C8();
  *(v51 + 8) = v52 & 1;
  *(v10 + v8[14]) = v45;
  *(v10 + v8[15]) = v142 & 1;
  *(v10 + v8[16]) = (v38 & 1) == 0;
  v53 = v8[17];
  *(v10 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  v54 = v10 + v8[18];
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  v55 = v8[19];
  *(v10 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  swift_storeEnumTagMultiPayload();
  v56 = v10 + v8[20];
  type metadata accessor for CGSize(0);
  v171 = 0.0;
  v172 = 0;
  sub_1D28772F8();
  v57 = v169;
  *v56 = v168;
  *(v56 + 16) = v57;
  v58 = (v10 + v8[21]);
  *v58 = xmmword_1D289E250;
  v58[1] = xmmword_1D289E260;
  LOBYTE(v8) = sub_1D2876358();
  v59 = v167 + *(v143 + 44);
  v60 = *v59;
  v61 = *(v59 + 1);
  LOBYTE(v168) = v60;
  *(&v168 + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  sub_1D2874298();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v147;
  sub_1D26EF328(v10, v147, type metadata accessor for CreationFloatingBubblesView);
  v71 = v70 + *(v148 + 44);
  *v71 = v8;
  *(v71 + 8) = v63;
  *(v71 + 16) = v65;
  *(v71 + 24) = v67;
  *(v71 + 32) = v69;
  *(v71 + 40) = 0;
  *&v168 = v41;
  *(&v168 + 1) = v40;
  sub_1D2877308();
  LOBYTE(v10) = sub_1D230326C();

  if (v10)
  {
    v72 = 40.0;
  }

  else
  {
    v72 = 0.0;
  }

  v73 = v149;
  sub_1D22EC9BC(v70, v149, &qword_1EC6E02F0, &qword_1D289E9E8);
  v74 = v73 + *(v150 + 44);
  *v74 = v72;
  *(v74 + 8) = 0;
  v75 = v153;
  sub_1D2875668();
  v76 = v157;
  v77 = v156;
  (*(v157 + 16))(v154, v75, v156);
  sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v78 = v77;
  v79 = sub_1D2874988();
  (*(v76 + 8))(v75, v78);
  v80 = v151;
  v81 = sub_1D22EC9BC(v73, v151, &qword_1EC6E02F8, &qword_1D289E9F0);
  *(v80 + *(v152 + 44)) = v79;
  v82 = v80;
  v83 = MEMORY[0x1D38A0390](v81, 0.5, 1.0, 0.0);
  *&v168 = v41;
  *(&v168 + 1) = v40;
  sub_1D2877308();
  v84 = v171;
  swift_getKeyPath();
  *&v168 = v84;
  v156 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v80) = *(*&v84 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);

  v85 = v82;
  v86 = v155;
  sub_1D22EC9BC(v85, v155, &qword_1EC6E0300, &qword_1D289E9F8);
  v87 = v86 + *(v159 + 44);
  *v87 = v83;
  *(v87 + 8) = v80 == 4;
  *&v168 = v44;
  v88 = v145;
  *(&v168 + 1) = v145;
  sub_1D2877308();
  v89 = v171 * 0.6 + 1.0;
  sub_1D2877AE8();
  v91 = v90;
  v93 = v92;
  v94 = v86;
  v95 = v158;
  sub_1D22EC9BC(v94, v158, &qword_1EC6E0308, &qword_1D289EA00);
  v96 = v95 + *(v160 + 44);
  *v96 = v89;
  *(v96 + 8) = v89;
  *(v96 + 16) = v91;
  *(v96 + 24) = v93;
  v160 = v41;
  *&v168 = v41;
  *(&v168 + 1) = v40;
  v159 = v40;
  v157 = v42;
  sub_1D2877308();
  sub_1D22FFBF8();
  LOBYTE(v84) = sub_1D25A3F44();

  v97 = v95;
  v98 = v162;
  sub_1D22EC9BC(v97, v162, &qword_1EC6E0310, &qword_1D289EA08);
  *(v98 + *(v165 + 44)) = (LOBYTE(v84) & 1) == 0;
  if (sub_1D26E5E8C())
  {
    v99 = 4.0;
  }

  else
  {
    v99 = 6.0;
  }

  v100 = v98;
  v101 = v161;
  v102 = sub_1D22EC9BC(v100, v161, &qword_1EC6E0318, &qword_1D289EA10);
  *(v101 + *(v164 + 44)) = v99;
  v103 = MEMORY[0x1D38A0390](v102, 0.5, 1.0, 0.0);
  *&v168 = v44;
  *(&v168 + 1) = v88;
  sub_1D2877308();
  v104 = v171 * 0.6 + 1.0;
  v105 = v101;
  v106 = v163;
  sub_1D22EC9BC(v105, v163, &qword_1EC6E0320, &qword_1D289EA18);
  v107 = v166;
  v108 = v106;
  v109 = v106 + *(v166 + 36);
  *v109 = v103;
  *(v109 + 8) = v104;
  v110 = *MEMORY[0x1E697E6C0];
  v111 = sub_1D2874E88();
  (*(*(v111 - 8) + 104))(v49, v110, v111);
  sub_1D26EEE94(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
    v113 = sub_1D26ED1D0();
    v114 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    v115 = v128;
    v116 = v140;
    sub_1D28769B8();
    sub_1D22BD238(v49, &unk_1EC6DE860, &unk_1D287CD70);
    sub_1D22BD238(v108, &qword_1EC6E0328, &qword_1D289EA20);
    *&v168 = v107;
    *(&v168 + 1) = v116;
    v169 = v113;
    v170 = v114;
    swift_getOpaqueTypeConformance2();
    v117 = v135;
    v118 = v132;
    sub_1D2876F98();
    (*(v131 + 8))(v115, v118);
    *&v168 = v160;
    *(&v168 + 1) = v159;
    sub_1D2877308();
    v119 = v171;
    swift_getKeyPath();
    *&v168 = v119;
    sub_1D28719E8();

    LODWORD(v115) = *(*&v119 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

    if (v115 == 1)
    {
      v120 = 1.0;
    }

    else
    {
      v120 = 0.0;
    }

    v121 = v130;
    (*(v136 + 32))(v130, v117, v137);
    *(v121 + *(v133 + 36)) = v120;
    v122 = v138;
    sub_1D22EC9BC(v121, v138, &qword_1EC6E0340, &qword_1D289EA38);
    v123 = v129;
    v124 = v134;
    sub_1D22BD1D0(v129, v134, &qword_1EC6E0350, &qword_1D289EA48);
    v125 = v139;
    sub_1D22BD1D0(v122, v139, &qword_1EC6E0340, &qword_1D289EA38);
    v126 = v141;
    sub_1D22BD1D0(v124, v141, &qword_1EC6E0350, &qword_1D289EA48);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0370, &qword_1D289EB20);
    sub_1D22BD1D0(v125, v126 + *(v127 + 48), &qword_1EC6E0340, &qword_1D289EA38);
    sub_1D22BD238(v122, &qword_1EC6E0340, &qword_1D289EA38);
    sub_1D22BD238(v123, &qword_1EC6E0350, &qword_1D289EA48);
    sub_1D22BD238(v125, &qword_1EC6E0340, &qword_1D289EA38);
    return sub_1D22BD238(v124, &qword_1EC6E0350, &qword_1D289EA48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26E1640@<X0>(void ***a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v126 = sub_1D2871818();
  v139 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComposingView(0);
  v132 = *(v4 - 8);
  v137 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v136 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2875678();
  v115 = *(v6 - 8);
  v116 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v111 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0378, &qword_1D289EB28);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v111 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0380, &qword_1D289EB30);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v111 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0388, &qword_1D289EB38);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v111 - v21;
  v133 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0390, &qword_1D289EB40) - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = (&v111 - v22);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0398, &qword_1D289EB48);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v111 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03A0, &qword_1D289EB50);
  v122 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v138 = &v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03A8, &qword_1D289EB58);
  v123 = *(v25 - 8);
  v124 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v118 = &v111 - v26;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03B0, &qword_1D289EB60) - 8;
  MEMORY[0x1EEE9AC00](v121);
  v127 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v111 - v31;
  *v14 = xmmword_1D289E270;
  v32 = v14 + *(v12 + 52);
  v129 = a1;
  sub_1D26E2694(a1, v32);
  v111 = v4;
  v33 = (a1 + *(v4 + 24));
  v34 = v33[1];
  v140 = *v33;
  *&v189[0] = v140;
  *(&v189[0] + 1) = v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  LOBYTE(v4) = sub_1D230326C();

  if (v4)
  {
    v35 = 40.0;
  }

  else
  {
    v35 = 0.0;
  }

  sub_1D22EC9BC(v14, v18, &qword_1EC6E0378, &qword_1D289EB28);
  v36 = &v18[*(v16 + 44)];
  *v36 = v35;
  v36[8] = 0;
  sub_1D2875668();
  v37 = v115;
  v38 = v116;
  (*(v115 + 16))(v114, v10, v116);
  sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v39 = sub_1D2874988();
  (*(v37 + 8))(v10, v38);
  v40 = v113;
  v41 = sub_1D22EC9BC(v18, v113, &qword_1EC6E0380, &qword_1D289EB30);
  *(v40 + *(v20 + 44)) = v39;
  v42 = MEMORY[0x1D38A0390](v41, 0.5, 1.0, 0.0);
  v43 = v140;
  *&v189[0] = v140;
  *(&v189[0] + 1) = v34;
  sub_1D2877308();
  v44 = v178;
  swift_getKeyPath();
  *&v189[0] = v44;
  v116 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v39) = *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);

  v45 = v40;
  v46 = v131;
  sub_1D22EC9BC(v45, v131, &qword_1EC6E0388, &qword_1D289EB38);
  v47 = v46 + *(v133 + 11);
  *v47 = v42;
  v47[8] = v39 == 4;
  v48 = sub_1D2877848();
  v50 = v49;
  v51 = v129;
  sub_1D26E5518(v129, &v168);
  v184 = v174;
  v185 = v175;
  v186 = v176;
  v180 = v170;
  v181 = v171;
  v182 = v172;
  v183 = v173;
  v178 = v168;
  v179 = v169;
  *&v187 = v177;
  *(&v187 + 1) = v48;
  v188 = v50;
  v52 = v46;
  v53 = v134;
  sub_1D22EC9BC(v52, v134, &qword_1EC6E0390, &qword_1D289EB40);
  v54 = v53 + *(v135 + 36);
  v55 = v187;
  *(v54 + 128) = v186;
  *(v54 + 144) = v55;
  *(v54 + 160) = v188;
  v56 = v183;
  *(v54 + 64) = v182;
  *(v54 + 80) = v56;
  v57 = v185;
  *(v54 + 96) = v184;
  *(v54 + 112) = v57;
  v58 = v179;
  *v54 = v178;
  *(v54 + 16) = v58;
  v59 = v181;
  *(v54 + 32) = v180;
  *(v54 + 48) = v59;
  v189[6] = v174;
  v189[7] = v175;
  v189[8] = v176;
  v189[2] = v170;
  v189[3] = v171;
  v189[4] = v172;
  v189[5] = v173;
  v189[0] = v168;
  v189[1] = v169;
  v190 = v177;
  v191 = v48;
  v192 = v50;
  sub_1D22BD1D0(&v178, &v159, &qword_1EC6E03B8, &qword_1D289EB68);
  sub_1D22BD238(v189, &qword_1EC6E03B8, &qword_1D289EB68);
  *&v159 = v43;
  v60 = v34;
  v112 = v34;
  *(&v159 + 1) = v34;
  sub_1D2877308();
  v61 = v168;
  swift_getKeyPath();
  *&v159 = v61;
  sub_1D28719E8();

  v62 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  swift_beginAccess();
  v63 = *(v61 + v62);
  sub_1D2870F68();

  *&v159 = v63;
  v133 = type metadata accessor for ComposingView;
  v64 = v136;
  sub_1D26EF2C0(v51, v136, type metadata accessor for ComposingView);
  v132 = *(v132 + 80);
  v65 = (v132 + 16) & ~v132;
  v66 = swift_allocObject();
  v131 = type metadata accessor for ComposingView;
  sub_1D26EF328(v64, v66 + v65, type metadata accessor for ComposingView);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03C0, &qword_1D289EB98);
  v113 = sub_1D26ED7BC();
  v115 = sub_1D26EDB54();
  v67 = v135;
  v68 = v134;
  sub_1D2876F48();

  sub_1D22BD238(v68, &qword_1EC6E0398, &qword_1D289EB48);
  *&v159 = v140;
  *(&v159 + 1) = v60;
  sub_1D2877308();
  v69 = v168;
  swift_getKeyPath();
  *&v159 = v69;
  sub_1D28719E8();

  v70 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger;
  swift_beginAccess();
  v72 = v125;
  v71 = v126;
  (*(v139 + 16))(v125, v69 + v70, v126);

  v73 = v129;
  v74 = v136;
  sub_1D26EF2C0(v129, v136, v133);
  v75 = swift_allocObject();
  sub_1D26EF328(v74, v75 + v65, v131);
  *&v159 = v67;
  *(&v159 + 1) = v114;
  v76 = v73;
  *&v160 = v113;
  *(&v160 + 1) = v115;
  swift_getOpaqueTypeConformance2();
  sub_1D26EEE94(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v77 = v118;
  v78 = v120;
  v79 = v138;
  sub_1D2876F48();
  v80 = v140;

  (*(v139 + 8))(v72, v71);
  (*(v122 + 8))(v79, v78);
  sub_1D26EF2C0(v76, v74, v133);
  v81 = v112;
  v82 = swift_allocObject();
  sub_1D26EF328(v74, v82 + v65, v131);
  v83 = v119;
  (*(v123 + 32))(v119, v77, v124);
  v84 = (v83 + *(v121 + 44));
  *v84 = sub_1D22A585C;
  v84[1] = 0;
  v84[2] = sub_1D26EDC84;
  v84[3] = v82;
  v85 = v117;
  sub_1D22EC9BC(v83, v117, &qword_1EC6E03B0, &qword_1D289EB60);
  *&v159 = v80;
  *(&v159 + 1) = v81;
  v86 = sub_1D2877308();
  LOBYTE(v83) = sub_1D2309BC4(v86);

  if (v83)
  {
    sub_1D26EDCF4(&v159);
  }

  else
  {
    *&v159 = v80;
    *(&v159 + 1) = v81;
    sub_1D2877308();
    v87 = sub_1D23098C0();

    sub_1D27F6C28(v87, 0, v193);
    *&v159 = v80;
    *(&v159 + 1) = v81;
    sub_1D2877308();

    v88 = 0;
    if ((sub_1D27D8FCC() & 1) == 0)
    {
      v88 = sub_1D27D8EFC() ^ 1;
    }

    v89 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
    sub_1D28746B8();
    v90 = v159;
    if (BYTE8(v159) == 1)
    {
      v91 = v159 == 0;
    }

    else
    {
      v90 = sub_1D2273818(v159, 0);
      v91 = 0;
    }

    v92 = v88 & 1;
    v93 = MEMORY[0x1D38A0390](v90, 0.5, 1.0, 0.0);
    v94 = (v76 + *(v89 + 36));
    v95 = *v94;
    v96 = v94[1];
    *&v159 = v95;
    *(&v159 + 1) = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
    sub_1D2877308();
    v97 = *&v168 * 0.6 + 1.0;
    v98 = sub_1D2876348();
    sub_1D2874298();
    LOBYTE(v150) = 0;
    v168 = v193[0];
    v169 = v193[1];
    v170 = v193[2];
    v171 = v193[3];
    LOBYTE(v172) = v92;
    BYTE1(v172) = v91;
    *(&v172 + 1) = v93;
    *&v173 = v97;
    BYTE8(v173) = v98;
    *&v174 = v99;
    *(&v174 + 1) = v100;
    *&v175 = v101;
    *(&v175 + 1) = v102;
    LOBYTE(v176) = 0;
    CGRectMake();
    v165 = v174;
    v166 = v175;
    v167 = v176;
    v161 = v170;
    v162 = v171;
    v163 = v172;
    v164 = v173;
    v159 = v168;
    v160 = v169;
  }

  v103 = v127;
  sub_1D22BD1D0(v85, v127, &qword_1EC6E03B0, &qword_1D289EB60);
  v147 = v165;
  v148 = v166;
  v149 = v167;
  v143 = v161;
  v144 = v162;
  v145 = v163;
  v146 = v164;
  v141 = v159;
  v142 = v160;
  v104 = v128;
  sub_1D22BD1D0(v103, v128, &qword_1EC6E03B0, &qword_1D289EB60);
  v105 = v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03D8, &qword_1D289EBE0) + 48);
  v156 = v147;
  v157 = v148;
  v158 = v149;
  v154 = v145;
  v155 = v146;
  v152 = v143;
  v153 = v144;
  v150 = v141;
  v151 = v142;
  sub_1D22BD1D0(&v150, &v168, &qword_1EC6E03E0, &qword_1D289EBE8);
  sub_1D22BD238(v85, &qword_1EC6E03B0, &qword_1D289EB60);
  v106 = v157;
  *(v105 + 96) = v156;
  *(v105 + 112) = v106;
  *(v105 + 128) = v158;
  v107 = v153;
  *(v105 + 32) = v152;
  *(v105 + 48) = v107;
  v108 = v155;
  *(v105 + 64) = v154;
  *(v105 + 80) = v108;
  v109 = v151;
  *v105 = v150;
  *(v105 + 16) = v109;
  v174 = v147;
  v175 = v148;
  LOBYTE(v176) = v149;
  v170 = v143;
  v171 = v144;
  v172 = v145;
  v173 = v146;
  v168 = v141;
  v169 = v142;
  sub_1D22BD238(&v168, &qword_1EC6E03E0, &qword_1D289EBE8);
  return sub_1D22BD238(v103, &qword_1EC6E03B0, &qword_1D289EB60);
}

uint64_t sub_1D26E2694@<X0>(void ***a1@<X0>, char *a2@<X8>)
{
  v260 = a2;
  v3 = sub_1D2875628();
  v217 = *(v3 - 8);
  v218 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v216 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_1D2875678();
  v225 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v221 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D88, &qword_1D287FFA0);
  v230 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v222 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v223 = &v215 - v8;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03E8, &qword_1D289EC78);
  MEMORY[0x1EEE9AC00](v224);
  v231 = &v215 - v9;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03F0, &qword_1D289EC80);
  MEMORY[0x1EEE9AC00](v229);
  v228 = &v215 - v10;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E03F8, &qword_1D289EC88);
  MEMORY[0x1EEE9AC00](v227);
  v226 = &v215 - v11;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0400, &qword_1D289EC90);
  MEMORY[0x1EEE9AC00](v235);
  v236 = &v215 - v12;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0408, &qword_1D289EC98);
  v256 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v234 = &v215 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0410, &unk_1D289ECA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v259 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v257 = &v215 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v252 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v251 = &v215 - v21;
  v22 = type metadata accessor for ComposingView(0);
  v250 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v262 = v23;
  v263 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D2871DD8();
  v264 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v242 = &v215 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0418, &qword_1D289ECB0);
  MEMORY[0x1EEE9AC00](v265);
  v27 = &v215 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0420, &qword_1D289ECB8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v241 = &v215 - v29;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0428, &qword_1D289ECC0);
  MEMORY[0x1EEE9AC00](v266);
  v245 = &v215 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0430, &qword_1D289ECC8);
  v246 = *(v31 - 8);
  v247 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v244 = &v215 - v32;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0438, &qword_1D289ECD0);
  MEMORY[0x1EEE9AC00](v243);
  v249 = &v215 - v33;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0440, &qword_1D289ECD8);
  MEMORY[0x1EEE9AC00](v248);
  v267 = &v215 - v34;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0448, &qword_1D289ECE0);
  MEMORY[0x1EEE9AC00](v268);
  v269 = &v215 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0450, &qword_1D289ECE8);
  v254 = *(v36 - 8);
  v255 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v253 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v270 = &v215 - v39;
  v275 = *a1;
  v40 = (a1 + v22[6]);
  v42 = v40[1];
  *&v295 = *v40;
  v41 = v295;
  *(&v295 + 1) = v42;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v238 = sub_1D22FFBF8();

  v43 = a1 + v22[8];
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v295) = v44;
  *(&v295 + 1) = v45;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  v237 = v285;
  *&v295 = v41;
  *(&v295 + 1) = v42;
  sub_1D2877308();
  v46 = v285;
  swift_getKeyPath();
  *&v295 = v46;
  v272 = sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v48 = type metadata accessor for PreviewsView(0);
  v49 = *(v264 + 16);
  v50 = &v27[v48[18]];
  v261 = v24;
  v239 = v49;
  v240 = v264 + 16;
  v49(v50, v46 + v47, v24);

  v220 = v22;
  v51 = v22[9];
  v271 = a1;
  v52 = (a1 + v51);
  v53 = *v52;
  v54 = v52[1];
  v285 = v53;
  v286 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877328();
  v55 = v295;
  v56 = v296;
  v57 = &v27[v48[6]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = &v27[v48[7]];
  type metadata accessor for HomeAnimationCoordinator(0);
  sub_1D26EEE94(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  *v58 = sub_1D28744C8();
  v58[8] = v59 & 1;
  v60 = &v27[v48[8]];
  type metadata accessor for StickerSaveAnimation.Coordinator(0);
  sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator, &unk_1D28A3200);
  *v60 = sub_1D28744C8();
  v60[8] = v61 & 1;
  v62 = &v27[v48[9]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = &v27[v48[10]];
  v285 = 0;
  sub_1D28772F8();
  v64 = *(&v295 + 1);
  *v63 = v295;
  *(v63 + 1) = v64;
  v65 = &v27[v48[11]];
  v285 = 0;
  sub_1D28772F8();
  v66 = *(&v295 + 1);
  *v65 = v295;
  *(v65 + 1) = v66;
  v67 = &v27[v48[12]];
  LOBYTE(v285) = 0;
  sub_1D28772F8();
  v68 = *(&v295 + 1);
  *v67 = v295;
  *(v67 + 1) = v68;
  v69 = &v27[v48[13]];
  type metadata accessor for CGSize(0);
  v286 = 0;
  v285 = 0;
  sub_1D28772F8();
  v70 = v296;
  *v69 = v295;
  *(v69 + 2) = v70;
  v71 = &v27[v48[14]];
  LOBYTE(v285) = 0;
  sub_1D28772F8();
  v72 = *(&v295 + 1);
  *v71 = v295;
  *(v71 + 1) = v72;
  v73 = &v27[v48[15]];
  v74 = type metadata accessor for KeyboardEventListener();
  v75 = objc_allocWithZone(v74);
  v76 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v76 = 0;
  *(v76 + 1) = 0;
  v77 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v77 = 0;
  *(v77 + 1) = 0;
  v78 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v78 = 0;
  *(v78 + 1) = 0;
  v79 = &v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v79 = 0;
  *(v79 + 1) = 0;
  *&v75[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v294.receiver = v75;
  v294.super_class = v74;
  v285 = objc_msgSendSuper2(&v294, sel_init);
  sub_1D28772F8();
  v80 = *(&v295 + 1);
  *v73 = v295;
  *(v73 + 1) = v80;
  *&v27[v48[16]] = v275;
  type metadata accessor for PreviewsViewModel(0);
  sub_1D26EEE94(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D2877638();
  v27[v48[17]] = v237;
  v81 = &v27[v48[5]];
  *v81 = v55;
  *(v81 + 2) = v56;
  v27[*(v265 + 9)] = 1;
  v274 = v42;
  v275 = v41;
  *&v295 = v41;
  *(&v295 + 1) = v42;
  sub_1D2877308();
  v82 = v285;
  v83 = sub_1D22F7E14();
  swift_getKeyPath();
  *&v295 = v83;
  sub_1D26EEE94(&qword_1ED8A3F70, type metadata accessor for EffectViewModel, &unk_1D28A4108);
  sub_1D28719E8();

  v84 = *(v83 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  v85 = *(v83 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

  if (v85 >> 6 <= 1)
  {

    v86 = v274;
    v87 = v261;
    v88 = v264;
    v89 = v242;
    goto LABEL_13;
  }

  v86 = v274;
  v88 = v264;
  v89 = v242;
  if (__PAIR128__(-128, 1) < __PAIR128__(v85, v84))
  {
    if (v85 != 128 || v84 != 2)
    {
      v87 = v261;

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v84 | v85 ^ 0x80)
  {
LABEL_11:

    goto LABEL_12;
  }

  swift_getKeyPath();
  *&v295 = v82;
  sub_1D28719E8();

LABEL_12:
  v87 = v261;
LABEL_13:
  sub_1D26EDE84();
  v91 = v241;
  sub_1D2876B48();
  sub_1D22BD238(v27, &qword_1EC6E0418, &qword_1D289ECB0);
  *&v295 = v275;
  *(&v295 + 1) = v86;
  sub_1D2877308();
  v92 = v285;
  swift_getKeyPath();
  *&v295 = v92;
  sub_1D28719E8();

  v93 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v239(v89, v92 + v93, v87);

  sub_1D2871DA8();
  v95 = v94;
  (*(v88 + 8))(v89, v87);
  v96 = v245;
  v97 = sub_1D22EC9BC(v91, v245, &qword_1EC6E0420, &qword_1D289ECB8);
  v265 = &v215;
  v98 = v96 + *(v266 + 36);
  *v98 = v95;
  *(v98 + 8) = 0;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v271;
  MEMORY[0x1EEE9AC00](v100);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0460, &qword_1D289ECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0468, &qword_1D289ED00);
  sub_1D26EDF7C();
  sub_1D26EE088(&qword_1ED8A21F8, &qword_1EC6E0460, &qword_1D289ECF8, sub_1D26EE034);
  sub_1D26EE088(&qword_1ED89DBD8, &qword_1EC6E0468, &qword_1D289ED00, sub_1D26EE104);
  v101 = v244;
  v102 = v99;
  sub_1D28767C8();
  sub_1D22BD238(v96, &qword_1EC6E0428, &qword_1D289ECC0);
  v103 = sub_1D28777F8();
  v105 = v104;
  sub_1D26E4F08(v99, &v295);
  v106 = v295;
  v107 = v249;
  (*(v246 + 32))(v249, v101, v247);
  v108 = v107 + *(v243 + 36);
  *v108 = v106;
  *(v108 + 16) = v103;
  *(v108 + 24) = v105;
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  sub_1D2877848();
  sub_1D2875208();
  v109 = v267;
  sub_1D22EC9BC(v107, v267, &qword_1EC6E0438, &qword_1D289ECD0);
  v110 = (v109 + *(v248 + 36));
  v111 = v300;
  v110[4] = v299;
  v110[5] = v111;
  v110[6] = v301;
  v112 = v296;
  *v110 = v295;
  v110[1] = v112;
  v113 = v298;
  v110[2] = v297;
  v110[3] = v113;
  v114 = v263;
  sub_1D26EF2C0(v99, v263, type metadata accessor for ComposingView);
  sub_1D2878568();
  v115 = sub_1D2878558();
  v116 = *(v250 + 80);
  v117 = (v116 + 32) & ~v116;
  v118 = swift_allocObject();
  v119 = MEMORY[0x1E69E85E0];
  *(v118 + 16) = v115;
  *(v118 + 24) = v119;
  sub_1D26EF328(v114, v118 + v117, type metadata accessor for ComposingView);
  sub_1D26EF2C0(v102, v114, type metadata accessor for ComposingView);
  v120 = sub_1D2878558();
  v266 = v116;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = MEMORY[0x1E69E85E0];
  sub_1D26EF328(v114, v121 + v117, type metadata accessor for ComposingView);
  sub_1D2877528();
  v264 = v286;
  v265 = v285;
  LODWORD(v261) = v287;
  v123 = v274;
  v122 = v275;
  v285 = v275;
  v286 = v274;
  sub_1D2877308();
  v124 = v282;
  swift_getKeyPath();
  v285 = v124;
  sub_1D28719E8();

  v125 = *(v124 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);

  if (v125 == 3)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125;
  }

  LODWORD(v250) = v126;
  v285 = v122;
  v286 = v123;
  sub_1D2877308();
  v127 = v282;
  v128 = v251;
  sub_1D23015FC(v251);
  v129 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v130 = *(*(v129 - 8) + 48);
  if (v130(v128, 1, v129) == 1)
  {

    sub_1D22BD238(v128, &qword_1EC6D9490, &qword_1D287D3F0);
    v285 = v122;
    v286 = v123;
    sub_1D2877308();
    v131 = *(v282 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable + 8);
    v251 = *(v282 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
    v249 = v131;
    sub_1D2870F78();
  }

  else
  {
    v249 = v127;
    sub_1D22BD238(v128, &qword_1EC6D9490, &qword_1D287D3F0);
    v251 = &unk_1D2897130;
  }

  v285 = v122;
  v286 = v123;
  sub_1D2877308();
  v132 = v122;
  v133 = v282;
  v134 = v252;
  sub_1D23015FC(v252);
  if (v130(v134, 1, v129) == 1)
  {

    sub_1D22BD238(v134, &qword_1EC6D9490, &qword_1D287D3F0);
    v285 = v132;
    v286 = v123;
    sub_1D2877308();
    v133 = *(v282 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable + 8);
    v252 = *(v282 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
    sub_1D2870F78();
  }

  else
  {
    sub_1D22BD238(v134, &qword_1EC6D9490, &qword_1D287D3F0);
    v252 = &unk_1D289EDC0;
  }

  v285 = v132;
  v286 = v123;
  v135 = sub_1D2877308();
  v136 = v282;
  if (sub_1D2309BC4(v135) && (sub_1D22FFBF8(), v137 = sub_1D25A43F4(), , (v137 & 1) != 0))
  {
    v138 = v133;
    swift_getKeyPath();
    v285 = v136;
    sub_1D28719E8();

    v139 = *(v136 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

    v140 = v139 != 1;
  }

  else
  {
    v138 = v133;

    v140 = 1;
  }

  LODWORD(v272) = v140;
  v142 = v264;
  v141 = v265;
  *&v282 = v265;
  *(&v282 + 1) = v264;
  v143 = v261;
  LOBYTE(v283) = v261;
  v144 = v250;
  BYTE1(v283) = v250;
  v146 = v251;
  v145 = v252;
  *(&v283 + 1) = v251;
  v147 = v249;
  *&v284[0] = v249;
  *(&v284[0] + 1) = v252;
  v148 = v138;
  *&v284[1] = v138;
  BYTE8(v284[1]) = v140;
  v149 = v269;
  sub_1D22EC9BC(v267, v269, &qword_1EC6E0440, &qword_1D289ECD8);
  v150 = (v149 + *(v268 + 36));
  v151 = v283;
  *v150 = v282;
  v150[1] = v151;
  v150[2] = v284[0];
  *(v150 + 41) = *(v284 + 9);
  v285 = v141;
  v286 = v142;
  v287 = v143;
  v288 = v144;
  v289 = v146;
  v290 = v147;
  v291 = v145;
  v292 = v148;
  v293 = v272;
  sub_1D22BD1D0(&v282, &v279, &unk_1EC6DEBA0, &unk_1D28970E8);
  sub_1D22BD238(&v285, &unk_1EC6DEBA0, &unk_1D28970E8);
  v272 = sub_1D2875798();
  v267 = v152;
  LODWORD(v264) = v153;
  v265 = v154;
  v276 = v275;
  v277 = v274;
  sub_1D2877328();
  v155 = v279;
  v156 = v280;
  v157 = v281;
  swift_getKeyPath();
  v279 = v155;
  v280 = v156;
  v281 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE8, &qword_1D2884B18);
  sub_1D2877508();

  LODWORD(v261) = v278;

  MEMORY[0x1EEE9AC00](v158);
  v159 = v271;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  sub_1D26EE620();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
  v160 = v269;
  sub_1D2876DF8();

  sub_1D22BD238(v160, &qword_1EC6E0448, &qword_1D289ECE0);
  if (sub_1D26DA0E0())
  {
    v161 = ~v266;
    v279 = v275;
    v280 = v274;
    sub_1D2877308();
    sub_1D22F7E14();

    type metadata accessor for AbstractEffectViewModel(0);
    sub_1D26EEE94(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel, &unk_1D28A4108);
    v162 = v231;
    sub_1D2877638();
    v163 = type metadata accessor for EffectView(0);
    v164 = v163[5];
    *(v162 + v164) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
    swift_storeEnumTagMultiPayload();
    v165 = v163[6];
    *(v162 + v165) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
    swift_storeEnumTagMultiPayload();
    v166 = v162 + v163[7];
    *v166 = swift_getKeyPath();
    *(v166 + 8) = 0;
    v167 = v163[8];
    *(v162 + v167) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
    swift_storeEnumTagMultiPayload();
    v168 = v162 + v163[9];
    *v168 = swift_getKeyPath();
    *(v168 + 8) = 0;
    LOBYTE(v168) = sub_1D26DA570();
    v169 = (v162 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0488, &qword_1D289EDB0) + 36));
    *v169 = v168 & 1;
    v170 = *(type metadata accessor for BlurredEffectBackgroundViewModifier(0) + 20);
    *&v169[v170] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v171 = v221;
    v172 = sub_1D2875668();
    MEMORY[0x1D38A0390](v172, 0.5, 1.0, 0.0);
    v173 = sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v174 = v223;
    v175 = v233;
    sub_1D28743E8();

    (*(v225 + 8))(v171, v175);
    v176 = v230;
    v177 = v232;
    (*(v230 + 16))(v222, v174, v232);
    v279 = v175;
    v280 = v173;
    swift_getOpaqueTypeConformance2();
    v178 = sub_1D2874988();
    (*(v176 + 8))(v174, v177);
    *(v162 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0490, &qword_1D289EDB8) + 36)) = v178;
    *(v162 + *(v224 + 36)) = 0;
    v179 = v220;
    v180 = v159 + v220[12];
    v181 = *v180;
    v182 = *(v180 + 8);
    LOBYTE(v279) = v181;
    v280 = v182;
    sub_1D2877308();
    if (v276)
    {
      v183 = 1.15;
    }

    else
    {
      v183 = 1.0;
    }

    sub_1D2877AE8();
    v185 = v184;
    v187 = v186;
    v188 = v228;
    sub_1D22EC9BC(v162, v228, &qword_1EC6E03E8, &qword_1D289EC78);
    v189 = v188 + *(v229 + 36);
    *v189 = v183;
    *(v189 + 8) = v183;
    *(v189 + 16) = v185;
    *(v189 + 24) = v187;
    v190 = v226;
    sub_1D22EC9BC(v188, v226, &qword_1EC6E03F0, &qword_1D289EC80);
    *(v190 + *(v227 + 36)) = 0;
    LOBYTE(v188) = sub_1D26DA570();
    v191 = v236;
    sub_1D22EC9BC(v190, v236, &qword_1EC6E03F8, &qword_1D289EC88);
    *(v191 + *(v235 + 36)) = v188 & 1;
    v192 = v159 + v179[23];
    v193 = *v192;
    v194 = v257;
    if (*(v192 + 8) != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v195 = sub_1D28762E8();
      sub_1D2873BE8();

      v196 = v216;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v193, 0);
      (*(v217 + 8))(v196, v218);
      LOBYTE(v193) = v279;
    }

    LOBYTE(v279) = v193 & 1;
    v197 = v263;
    sub_1D26EF2C0(v159, v263, type metadata accessor for ComposingView);
    v198 = (v266 + 16) & v161;
    v199 = swift_allocObject();
    sub_1D26EF328(v197, v199 + v198, type metadata accessor for ComposingView);
    sub_1D26EE9C4();
    v200 = v234;
    sub_1D2876F48();

    sub_1D22BD238(v191, &qword_1EC6E0400, &qword_1D289EC90);
    v201 = v256;
    v202 = v258;
    (*(v256 + 32))(v194, v200, v258);
    v203 = 0;
  }

  else
  {
    v203 = 1;
    v194 = v257;
    v202 = v258;
    v201 = v256;
  }

  (*(v201 + 56))(v194, v203, 1, v202);
  v205 = v254;
  v204 = v255;
  v206 = *(v254 + 16);
  v207 = v194;
  v208 = v253;
  v209 = v270;
  v206(v253, v270, v255);
  v210 = v259;
  sub_1D22BD1D0(v207, v259, &qword_1EC6E0410, &unk_1D289ECA0);
  v211 = v260;
  v206(v260, v208, v204);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0480, &qword_1D289ED78);
  sub_1D22BD1D0(v210, &v211[*(v212 + 48)], &qword_1EC6E0410, &unk_1D289ECA0);
  sub_1D22BD238(v207, &qword_1EC6E0410, &unk_1D289ECA0);
  v213 = *(v205 + 8);
  v213(v209, v204);
  sub_1D22BD238(v210, &qword_1EC6E0410, &unk_1D289ECA0);
  return (v213)(v208, v204);
}

uint64_t sub_1D26E486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = (a1 + *(type metadata accessor for ComposingView(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  v16 = *v7;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D23015FC(v6);

  v10 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10);
  sub_1D22BD238(v6, &qword_1EC6D9490, &qword_1D287D3F0);
  v12 = 0;
  KeyPath = 0;
  result = 0;
  if (v11 != 1)
  {
    v16 = v8;
    v17 = v9;
    sub_1D2877308();
    v12 = sub_1D23096CC();

    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
  }

  *a2 = v12;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1D26E4A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28771B8();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for PlaygroundImage(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComposingView(0);
  v18 = *(v17 + 24);
  *&v39 = a1;
  v19 = (a1 + v18);
  v21 = *v19;
  v20 = v19[1];
  v40 = v21;
  v41 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D23015FC(v9);

  v22 = type metadata accessor for ImageGeneration.PreviewImage(0);
  if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D9490, &qword_1D287D3F0);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  else
  {
    v23 = *&v9[*(v22 + 28)];
    if (*(v23 + 16))
    {
      sub_1D26EF2C0(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v12, type metadata accessor for PlaygroundImage);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    (*(v14 + 56))(v12, v24, 1, v13);
    sub_1D26EF390(v9, type metadata accessor for ImageGeneration.PreviewImage);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1D26EF328(v12, v16, type metadata accessor for PlaygroundImage);
      sub_1D262D4E8();
      sub_1D2877188();
      v32 = v38;
      (*(v38 + 104))(v6, *MEMORY[0x1E6981630], v4);
      v26 = sub_1D2877228();

      (*(v32 + 8))(v6, v4);
      v33 = (v39 + *(v17 + 56));
      v35 = v33[1];
      v36 = v33[2];
      v40 = *v33;
      v34 = v40;
      v41 = v35;
      v42 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
      sub_1D2877308();
      v40 = v34;
      v41 = v35;
      v42 = v36;
      sub_1D2877308();
      sub_1D2877848();
      sub_1D28748C8();
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v39 = v44;
      result = sub_1D26EF390(v16, type metadata accessor for PlaygroundImage);
      v31 = v39;
      goto LABEL_9;
    }
  }

  result = sub_1D22BD238(v12, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0uLL;
LABEL_9:
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  return result;
}

void sub_1D26E4F08(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = type metadata accessor for ComposingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v19 = v10;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  v11 = sub_1D2877308();
  if (!sub_1D2309BC4(v11) || (sub_1D22FFBF8(), v12 = sub_1D25A43F4(), , (v12 & 1) == 0))
  {

    goto LABEL_6;
  }

  swift_getKeyPath();
  v19 = v18;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v13 = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  if (v13 != 1)
  {
LABEL_6:
    v16 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  sub_1D26EF2C0(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1D26EF328(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ComposingView);
  v16 = sub_1D26EF250;
LABEL_7:
  *a2 = v16;
  a2[1] = v15;
}

uint64_t sub_1D26E5130@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v3 = sub_1D23096CC();

  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  result = swift_getKeyPath();
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_1D26E51DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8, &qword_1D2888DB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1D2875798();
  sub_1D2874268();
  v3 = sub_1D2874288();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_1D2877388();
}

uint64_t sub_1D26E52F4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D2875778();
  sub_1D2875768();
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D23013C0();

  sub_1D2875758();

  sub_1D2875768();
  sub_1D28757A8();
  result = sub_1D2876668();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

double sub_1D26E544C(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v4 = sub_1D22F7E14();

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  sub_1D2758420(v4, sub_1D26EEE8C, v5);

  return result;
}

double sub_1D26E5518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2875678();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1D26DB14C(v24);
  v30 = v24[4];
  v31 = v24[5];
  v32[0] = v25[0];
  *(v32 + 9) = *(v25 + 9);
  v26 = v24[0];
  v27 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  sub_1D2875668();
  (*(v5 + 16))(v7, v10, v4);
  sub_1D26EEE94(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v11 = sub_1D2874988();
  v12 = (*(v5 + 8))(v10, v4);
  v37 = v30;
  v38 = v31;
  v39[0] = v32[0];
  *(v39 + 9) = *(v32 + 9);
  v33 = v26;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  v13 = MEMORY[0x1D38A0390](v12, 0.5, 1.0, 0.0);
  v14 = (a1 + *(type metadata accessor for ComposingView(0) + 24));
  v16 = *v14;
  v15 = v14[1];
  *&v24[0] = v16;
  *(&v24[0] + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v17 = v23[1];
  swift_getKeyPath();
  *&v24[0] = v17;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(a1) = *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);

  v18 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v18;
  v19 = v39[1];
  *(a2 + 96) = v39[0];
  *(a2 + 112) = v19;
  v20 = v34;
  *a2 = v33;
  *(a2 + 16) = v20;
  result = *&v35;
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 128) = v11;
  *(a2 + 136) = v13;
  *(a2 + 144) = a1 == 4;
  return result;
}

double sub_1D26E57E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1D38A0390](a1, a2, 0.2, 1.0, 0.0);
  sub_1D2874BE8();

  sub_1D2877888();
  sub_1D28778B8();

  sub_1D2874BE8();

  return result;
}

double sub_1D26E58DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0260, &unk_1D289E680);
  v3 = sub_1D2877308();
  sub_1D2745BC8(v3, v4);

  MEMORY[0x1D38A0390](v5, 0.2, 1.0, 0.0);
  sub_1D2874BE8();

  sub_1D2877888();
  sub_1D28778B8();

  sub_1D2874BE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v6 = sub_1D22F7DF4();

  if (*(v6 + 123) == 1)
  {
    *(v6 + 123) = 1;
    sub_1D22C2EAC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel, &unk_1D287EB80);
    sub_1D28719D8();
  }

  sub_1D2877308();
  sub_1D22F7DF4();

  v8 = sub_1D22C3068();

  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A38E0, type metadata accessor for PromptViewModel, &unk_1D28A5D2C);
  sub_1D28719E8();

  v9 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v9)
  {
    v10 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
    sub_1D2870F78();
    v9(1);

    sub_1D22D7900(v9, v10);
  }

  else
  {
  }

  return result;
}

void sub_1D26E5C50(double *a1, uint64_t a2)
{
  v4 = sub_1D2871DD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = type metadata accessor for ComposingView(0);
  v11 = (a2 + *(v10 + 24));
  v13 = *v11;
  v12 = v11[1];
  v25 = v13;
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v14 = v23;
  swift_getKeyPath();
  v25 = v14;
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  (*(v5 + 16))(v7, v14 + v15, v4);

  sub_1D2871DA8();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  v18 = v8 * v17;
  if (v8 * v17 >= v9)
  {
    v18 = v9;
  }

  v19 = v9 / v17;
  v20 = (a2 + *(v10 + 56));
  v21 = *(v20 + 2);
  v23 = *v20;
  v24 = v21;
  if (v9 / v17 >= v8)
  {
    v19 = v8;
  }

  *v22 = v18;
  *&v22[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877318();
}

BOOL sub_1D26E5E8C()
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877308();
  if (v2 > 0.0)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(*&v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  return v1 == 2;
}

uint64_t sub_1D26E5FD0(uint64_t a1)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  swift_allocObject();
  swift_weakInit();

  return sub_1D2873BB8();
}

void sub_1D26E6094(_BYTE *a2@<X8>)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v3 = sub_1D230B8E0();

  *a2 = v3 & 1;
}

double sub_1D26E611C(uint64_t a1)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) == 1)
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  sub_1D2877308();
  sub_1D2322DD8();

  return result;
}

uint64_t sub_1D26E62B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0208, &qword_1D289E578);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v17 - v3);
  v5 = (a1 + *(type metadata accessor for ComposingView(0) + 24));
  v7 = *v5;
  v6 = v5[1];
  *&v18 = v7;
  *(&v18 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v8 = type metadata accessor for ImageGenerationOnboardingView(0);
  v9 = *(v8 + 20);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40, &qword_1D2880030);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + *(v8 + 24);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  type metadata accessor for ImageGenerationOnboardingViewModel();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = &off_1F4DC0638;
  swift_unknownObjectWeakAssign();
  v17[1] = v11;
  sub_1D2870F78();
  sub_1D28772F8();

  v12 = *(&v18 + 1);
  *v4 = v18;
  v4[1] = v12;
  v13 = sub_1D2874F98();
  v14 = sub_1D2876358();
  v15 = v4 + *(v2 + 36);
  *v15 = v13;
  v15[8] = v14;
  v18 = xmmword_1D289E280;
  sub_1D26EBA40();
  sub_1D22BAAF0();
  sub_1D2876B18();
  return sub_1D22BD238(v4, &qword_1EC6E0208, &qword_1D289E578);
}

double sub_1D26E64D0(char a1, uint64_t a2)
{
  v2 = a1 & 1;
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) == v2)
  {
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D26E6638(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ComposingView(0) + 24));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  sub_1D28746B8();
  if (v5 == 1)
  {
    v2 = v4 == 0;
  }

  else
  {
    sub_1D2273818(v4, 0);
    v2 = 0;
  }

  sub_1D23220B8(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
  return sub_1D28742B8();
}

uint64_t sub_1D26E6750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0270, &qword_1D289E7D8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0278, &qword_1D289E7E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0280, &qword_1D289E7E8);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0288, &qword_1D289E7F0);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v34 - v15;
  v42 = sub_1D2877098();
  LOBYTE(v43) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0290, &qword_1D289E7F8);
  sub_1D26ECCD0();
  sub_1D2876B58();

  v16 = sub_1D26ECD88(&qword_1ED89D9F8, &qword_1EC6E0270, &qword_1D289E7D8, sub_1D26ECCD0);
  sub_1D2876F98();
  sub_1D22BD238(v4, &qword_1EC6E0270, &qword_1D289E7D8);
  v42 = v2;
  v43 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D2876B78();
  (*(v6 + 8))(v8, v5);
  v18 = type metadata accessor for ComposingView(0);
  v19 = v35;
  v20 = v35 + *(v18 + 64);
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v20) = *(v20 + 16);
  LOBYTE(v42) = v21;
  v43 = v22;
  LOBYTE(v44) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
  sub_1D28742C8();
  v42 = v47;
  v43 = v48;
  LOBYTE(v44) = v49;
  v46 = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0128, &qword_1D289E318);
  v47 = v5;
  v48 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1D26EA8A8();
  v26 = v36;
  sub_1D2876EA8();

  (*(v37 + 8))(v12, v26);
  swift_getKeyPath();
  v27 = (v19 + *(v18 + 24));
  v29 = *v27;
  v28 = v27[1];
  v42 = v29;
  v43 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v30 = sub_1D2323648();

  v47 = v30;
  v42 = v26;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  v32 = v38;
  sub_1D2876A78();

  return (*(v39 + 8))(v31, v32);
}

uint64_t FocusedValues.composingViewActions.getter()
{
  sub_1D26E6C7C();
  sub_1D28749B8();
  return v1;
}

unint64_t sub_1D26E6C7C()
{
  result = qword_1ED89DF00;
  if (!qword_1ED89DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DF00);
  }

  return result;
}

void *sub_1D26E6CD0@<X0>(void *a1@<X8>)
{
  sub_1D26E6C7C();
  result = sub_1D28749B8();
  *a1 = v3;
  return result;
}

uint64_t sub_1D26E6D20(uint64_t *a1)
{
  sub_1D26E6C7C();
  sub_1D2870F78();
  return sub_1D28749C8();
}

uint64_t sub_1D26E6DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v5 = type metadata accessor for ComposingView(0);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = v6;
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA0, &unk_1D289E670);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1D2870CC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1D22BD1D0(a1, v9, &qword_1EC6D9BA0, &unk_1D289E670);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &qword_1EC6D9BA0, &unk_1D289E670);
  }

  v26 = *(v11 + 32);
  v26(v16, v9, v10);
  v18 = v28;
  v19 = (v28 + *(v5 + 24));
  v21 = *v19;
  v20 = v19[1];
  v31 = v21;
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D22F7DF4();

  (*(v11 + 16))(v13, v16, v10);
  v22 = v30;
  sub_1D26EF2C0(v18, v30, type metadata accessor for ComposingView);
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v24 = (v12 + *(v27 + 80) + v23) & ~*(v27 + 80);
  v25 = swift_allocObject();
  v26((v25 + v23), v13, v10);
  sub_1D26EF328(v22, v25 + v24, type metadata accessor for ComposingView);
  sub_1D22CC674(&unk_1D289E7D0, v25);

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1D26E713C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = sub_1D2878568();
  v2[10] = sub_1D2878558();
  v3 = swift_task_alloc();
  v2[11] = v3;
  v4 = sub_1D22EC170();
  *v3 = v2;
  v3[1] = sub_1D26E720C;
  v5 = MEMORY[0x1E6969080];
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEDE8A88](v2 + 2, v5, v6, v4);
}

uint64_t sub_1D26E720C()
{
  *(*v1 + 96) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D26E7464;
  }

  else
  {
    v4 = sub_1D26E7368;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D26E7368()
{
  v1 = v0[8];

  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1D2870C88();
  v6 = v5;
  v7 = (v1 + *(type metadata accessor for ComposingView(0) + 24));
  v9 = *v7;
  v8 = v7[1];
  v0[4] = v9;
  v0[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D22F7DF4();

  sub_1D22C14A8(0);

  v10 = v0[1];

  return v10(v2, v3, v4, v6);
}

uint64_t sub_1D26E7464()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D26E74C8(uint64_t a1)
{
  v2 = type metadata accessor for ComposingView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = (a1 + *(v3 + 32));
  v11 = *v9;
  v10 = v9[1];
  v22 = v11;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v12 = v21;
  if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) == 1)
  {
    *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = 1;
    sub_1D230340C(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v20 - 2) = v12;
    *(&v20 - 8) = 1;
    v22 = v12;
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1D26EF2C0(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
  sub_1D2878568();
  v15 = sub_1D2878558();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_1D26EF328(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ComposingView);
  sub_1D22AE01C(0, 0, v8, &unk_1D289E7C0, v17);

  return result;
}

uint64_t sub_1D26E77F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2879328();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1D2878568();
  v4[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D26E78E8, v7, v6);
}

uint64_t sub_1D26E78E8()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1D26E79CC;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D26E79CC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D26EF48C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D26E7B60;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D26E7B60()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for ComposingView(0) + 40));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();

  v5 = *(v0 + 8);

  return v5();
}

double sub_1D26E7C24(uint64_t a1)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = 0;
    sub_1D230340C(0);
  }

  return result;
}

double sub_1D26E7D90(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  *&result = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = v18 - v7;
  if (*a2 - 5 <= 1)
  {
    v9 = (a3 + *(type metadata accessor for ComposingView(0) + 52));
    v11 = *v9;
    v10 = v9[1];
    v19 = v11;
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0260, &unk_1D289E680);
    sub_1D2877308();
    v12 = v18[1];
    swift_getKeyPath();
    v19 = v12;
    sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator, &unk_1D28A3200);
    sub_1D28719E8();

    if ((*(v12 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) & 1) == 0)
    {
      v13 = sub_1D28785F8();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_1D2878568();
      sub_1D2870F78();
      v15 = sub_1D2878558();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v14;

      sub_1D22AE01C(0, 0, v8, &unk_1D289E788, v16);
    }
  }

  return result;
}

double sub_1D26E7FC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D22FD32C(v3, 0);

  return result;
}

double sub_1D26E8048(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for ComposingView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  *&result = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = &v18 - v11;
  if ((*a2 & 1) == 0)
  {
    v13 = sub_1D28785F8();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_1D26EF2C0(a3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
    sub_1D2878568();
    v14 = sub_1D2878558();
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 16) = v14;
    *(v16 + 24) = v17;
    sub_1D26EF328(v8, v16 + v15, type metadata accessor for ComposingView);
    sub_1D22AE01C(0, 0, v12, &unk_1D289E758, v16);
  }

  return result;
}

uint64_t sub_1D26E8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26E82CC, v6, v5);
}

uint64_t sub_1D26E82CC()
{
  v1 = *(v0 + 40);

  v2 = (v1 + *(type metadata accessor for ComposingView(0) + 64));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v2) = v2[16];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
  sub_1D28742B8();
  v5 = *(v0 + 8);

  return v5();
}

double sub_1D26E8384(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = a3;
  v30 = sub_1D2877B48();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B68();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComposingView(0);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D2877BA8();
  v29 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = *a2;
  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  v26 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v28 = *(v12 + 8);
  v28(v14, v11);
  sub_1D26EF2C0(v27, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposingView);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_1D26EF328(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ComposingView);
  *(v20 + v19 + v10) = v18;
  aBlock[4] = sub_1D26EC84C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_129;
  v21 = _Block_copy(aBlock);
  sub_1D2877B58();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D26EEE94(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00, MEMORY[0x1E69E6328]);
  v22 = v30;
  sub_1D2879088();
  v23 = v26;
  MEMORY[0x1D38A1510](v17, v8, v5, v21);
  _Block_release(v21);

  (*(v33 + 8))(v5, v22);
  (*(v31 + 8))(v8, v32);
  v28(v17, v29);

  return result;
}

double sub_1D26E882C(uint64_t a1, char a2)
{
  MEMORY[0x1D38A0390](0.3, 1.0, 0.0);
  sub_1D2874BE8();

  return result;
}

double sub_1D26E88B8(uint64_t a1, char a2)
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v3 = sub_1D22F7E14();
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D230326C();
  }

  *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = v4 & 1;
  sub_1D2757500();

  return result;
}

double sub_1D26E8984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1D38A0390](a1, a2, 0.3, 1.0, 0.0);
  sub_1D2874BE8();

  return result;
}

double sub_1D26E8A08()
{
  type metadata accessor for ComposingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v0 = sub_1D26DA570();
  v1 = sub_1D22F7E14();
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D230326C();
  }

  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = v2 & 1;
  sub_1D2757500();

  return result;
}

double sub_1D26E8ADC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for ComposingView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
    sub_1D2877308();
    v3 = sub_1D22FECC4();

    v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover;
    if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D26EEE94(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719D8();
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 0;
      swift_getKeyPath();
      sub_1D26EEE94(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
      sub_1D28719E8();

      if (*(v3 + v4) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , swift_unknownObjectWeakLoadStrong()))
      {
        sub_1D23322C0();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1D26E8D2C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v89 - v6;
  v98 = sub_1D2877B48();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D2877B68();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D2877BA8();
  v92 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v90 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v89 - v11;
  v12 = sub_1D2877778();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  v17 = type metadata accessor for ComposingView(0);
  v101 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v89 - v20;
  v21 = sub_1D2874AE8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  v109 = a1;
  sub_1D2877718();
  sub_1D2874AB8();
  LOBYTE(a1) = sub_1D2874A78();
  v28 = *(v22 + 8);
  v28(v24, v21);
  v108 = v28;
  v28(v27, v21);
  if (a1)
  {
    v29 = &a2[*(v17 + 64)];
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v29) = v29[16];
    LOBYTE(aBlock) = v30;
    v115 = v31;
    LOBYTE(v116) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
    sub_1D28742A8();
    if (v120)
    {
      v32 = &a2[*(v17 + 24)];
      v34 = *v32;
      v33 = *(v32 + 1);
      v89 = v34;
      aBlock = v34;
      v115 = v33;
      v110 = v33;
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
      sub_1D2877308();
      v35 = v120;
      swift_getKeyPath();
      v112 = v13;
      aBlock = v35;
      sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719E8();

      v36 = v35[OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack];

      if ((v36 & 1) == 0)
      {
        v66 = v89;
        v67 = v110;
        aBlock = v89;
        v115 = v110;
        sub_1D2877308();
        sub_1D22F7DF4();

        v68 = sub_1D22C26A8();

        aBlock = v66;
        v115 = v67;
        sub_1D2877308();
        if (v68)
        {
          sub_1D22F7DF4();

          sub_1D22CBE98();
        }

        else
        {
          sub_1D2309CF4(0);
        }

        goto LABEL_27;
      }
    }
  }

  v37 = &a2[*(v17 + 24)];
  v38 = *v37;
  v111 = *(v37 + 1);
  v112 = v38;
  aBlock = v38;
  v115 = v111;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  sub_1D22F7DF4();

  v39 = sub_1D22C26A8();

  if ((v39 & 1) == 0)
  {
    v40 = &a2[*(v17 + 64)];
    v41 = *v40;
    v42 = *(v40 + 1);
    LOBYTE(v40) = v40[16];
    LOBYTE(aBlock) = v41;
    v115 = v42;
    LOBYTE(v116) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0268, &qword_1D289E690);
    sub_1D28742A8();
    if (v120 == 2 || (v120 & 1) != 0)
    {
      v89 = a2;
      aBlock = v112;
      v115 = v111;
      sub_1D2877308();
      v43 = v120;
      swift_getKeyPath();
      aBlock = v43;
      sub_1D26EEE94(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719E8();

      v44 = v43[OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack];

      if ((v44 & 1) == 0)
      {
        v45 = v109;
        sub_1D2877718();
        sub_1D2874AD8();
        v46 = sub_1D2874A78();
        v47 = v108;
        v108(v24, v21);
        v47(v27, v21);
        if (v46 & 1) != 0 || (sub_1D2877718(), sub_1D2874A68(), v48 = sub_1D2874A78(), v47(v24, v21), v47(v27, v21), (v48))
        {
          v49 = v111;
          aBlock = v112;
          v115 = v111;
          sub_1D2877308();
          sub_1D22FFBF8();

          v50 = sub_1D25ABCF4();

          if (v50)
          {
            v51 = v103;
            sub_1D26EF2C0(v89, v103, type metadata accessor for ComposingView);
            v52 = v105;
            v53 = *(v105 + 16);
            v54 = v45;
            v55 = v106;
            v53(v16, v54, v106);
            sub_1D26EF2C0(v51, v107, type metadata accessor for ComposingView);
            v56 = v104;
            v53(v104, v16, v55);
            v57 = (*(v101 + 80) + 16) & ~*(v101 + 80);
            v58 = (v102 + *(v52 + 80) + v57) & ~*(v52 + 80);
            v59 = v16;
            v60 = swift_allocObject();
            sub_1D26EF328(v51, v60 + v57, type metadata accessor for ComposingView);
            (*(v52 + 32))(v60 + v58, v59, v55);
            v61 = v112;
            aBlock = v112;
            v115 = v49;
            sub_1D2877308();
            sub_1D22FFBF8();

            v62 = sub_1D25A3F44();

            if ((v62 & 1) == 0)
            {
              aBlock = v61;
              v115 = v49;
              sub_1D2877308();
              sub_1D22FFBF8();

              sub_1D25A4614();
            }

            aBlock = v61;
            v115 = v49;
            sub_1D2877308();
            sub_1D22FFBF8();

            v63 = sub_1D25A3F44();

            if (v63)
            {
              if (v62)
              {
                MEMORY[0x1EEE9AC00](v64);
                v65 = v107;
                *(&v89 - 2) = v107;
                *(&v89 - 1) = v56;
                sub_1D2877938();
                sub_1D2874BE8();

                (*(v52 + 8))(v56, v55);
                sub_1D26EF390(v65, type metadata accessor for ComposingView);
LABEL_28:
                v78 = MEMORY[0x1E697D770];
                goto LABEL_25;
              }

              (*(v52 + 8))(v56, v55);
              sub_1D26EF390(v107, type metadata accessor for ComposingView);
              sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
              v111 = sub_1D2878AB8();
              v82 = v90;
              sub_1D2877B88();
              v83 = v91;
              sub_1D2877BC8();
              v112 = *(v92 + 8);
              (v112)(v82, v100);
              v118 = sub_1D26EC730;
              v119 = v60;
              aBlock = MEMORY[0x1E69E9820];
              v115 = 1107296256;
              v116 = sub_1D23DFBA8;
              v117 = &block_descriptor_38;
              v84 = _Block_copy(&aBlock);
              sub_1D2870F78();
              v85 = v93;
              sub_1D2877B58();
              v120 = MEMORY[0x1E69E7CC0];
              sub_1D26EEE94(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
              sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00, MEMORY[0x1E69E6328]);
              v86 = v95;
              v87 = v98;
              sub_1D2879088();
              v88 = v111;
              MEMORY[0x1D38A1510](v83, v85, v86, v84);
              _Block_release(v84);

              (*(v97 + 8))(v86, v87);
              (*(v94 + 8))(v85, v96);
              (v112)(v83, v100);
LABEL_27:

              goto LABEL_28;
            }

            (*(v52 + 8))(v56, v55);
            sub_1D26EF390(v107, type metadata accessor for ComposingView);
          }
        }

        else
        {
          sub_1D2877718();
          sub_1D2874AC8();
          v69 = sub_1D2874A78();
          v47(v24, v21);
          v47(v27, v21);
          if (v69)
          {
            aBlock = v112;
            v115 = v111;
            sub_1D2877308();
            v70 = v120;
            v71 = sub_1D28785F8();
            v72 = v99;
            (*(*(v71 - 8) + 56))(v99, 1, 1, v71);
            sub_1D2878568();
            sub_1D2870F78();
            v73 = sub_1D2878558();
            v74 = swift_allocObject();
            v75 = MEMORY[0x1E69E85E0];
            *(v74 + 16) = v73;
            *(v74 + 24) = v75;
            *(v74 + 32) = v70;
            *(v74 + 40) = 0;
            sub_1D22AE01C(0, 0, v72, &unk_1D289E6C0, v74);

            goto LABEL_27;
          }

          sub_1D2877718();
          sub_1D2874A98();
          v76 = sub_1D2874A78();
          v47(v24, v21);
          v47(v27, v21);
          if (v76)
          {
            aBlock = v112;
            v115 = v111;
            sub_1D2877308();
            sub_1D22FFBF8();

            sub_1D25A8A24(v77);
            goto LABEL_27;
          }
        }
      }
    }
  }

  v78 = MEMORY[0x1E697D778];
LABEL_25:
  v79 = *v78;
  v80 = sub_1D2877758();
  return (*(*(v80 - 8) + 104))(v113, v79, v80);
}

double sub_1D26E9D08(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D2877938();
  sub_1D2874BE8();

  return result;
}

double sub_1D26E9D74(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_1D2874AE8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41[-v6];
  v8 = sub_1D2874EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  v15 = type metadata accessor for ComposingView(0);
  v16 = *(v15 + 20);
  v51 = a1;
  v44 = v16;
  sub_1D24CC6D4(v14);
  v17 = *MEMORY[0x1E697E7D0];
  v45 = *(v9 + 104);
  v45(v11, v17, v8);
  LOBYTE(a1) = sub_1D2874E98();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v46 = v18;
  v18(v14, v8);
  if (a1 & 1) != 0 && (sub_1D2877718(), v43 = v15, v19 = v7, v20 = v47, sub_1D2874A68(), v42 = sub_1D2874A78(), v21 = *(v49 + 8), v22 = v20, v23 = v50, v21(v22, v50), v24 = v19, v25 = v23, v7 = v19, v15 = v43, v21(v24, v25), (v42) || (sub_1D24CC6D4(v14), v45(v11, *MEMORY[0x1E697E7D8], v8), v26 = sub_1D2874E98(), v27 = v11, v28 = v46, v46(v27, v8), v28(v14, v8), (v26) && (sub_1D2877718(), v29 = v47, sub_1D2874AD8(), v30 = sub_1D2874A78(), v31 = *(v49 + 8), v32 = v29, v33 = v50, v31(v32, v50), v31(v7, v33), (v30))
  {
    v34 = (v51 + *(v15 + 24));
    v36 = *v34;
    v35 = v34[1];
    v52 = v36;
    v53 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
    sub_1D2877308();
    sub_1D22FFBF8();

    sub_1D25B4D88();
  }

  else
  {
    v37 = (v51 + *(v15 + 24));
    v39 = *v37;
    v38 = v37[1];
    v52 = v39;
    v53 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
    sub_1D2877308();
    sub_1D22FFBF8();

    sub_1D25B4AB8();
  }

  return result;
}

void *sub_1D26EA190(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a2;
  if (*a1 == v7)
  {
    v12 = a3;
    v13 = a4;
    v8 = a5 & 1;
    v14 = a5 & 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
    result = MEMORY[0x1D389FF60](&v11, v9);
    if (v7 == v11)
    {
      return result;
    }
  }

  else
  {
    v8 = a5 & 1;
  }

  v12 = a3;
  v13 = a4;
  v14 = v8;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  return sub_1D28774F8();
}

uint64_t (*FocusedValues.composingViewActions.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1D26E6C7C();
  sub_1D28749B8();
  return sub_1D26EA2AC;
}

void sub_1D26EA2AC(void *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {
    sub_1D2870F78();
    sub_1D28749C8();
  }

  else
  {
    sub_1D28749C8();
  }
}

uint64_t type metadata accessor for ComposingView(uint64_t a1)
{
  result = qword_1ED8A4B60;
  if (!qword_1ED8A4B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26EA3C4(uint64_t a1)
{
  sub_1D26EA980(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1D26EA980(319, &qword_1ED89D1D0, type metadata accessor for ComposingViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1D26EA980(319, &qword_1ED89D1A8, type metadata accessor for ComposingAnimationCoordinator, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1D26EB018(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1D26EB018(319, &qword_1ED89D180, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1D26EA980(319, &qword_1ED89D1C8, type metadata accessor for StickerSaveAnimation.Coordinator, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1D26EA980(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1D26EB018(319, &qword_1ED89DF40, &type metadata for ComposingFocusState.Value, MEMORY[0x1E697BF18]);
                if (v8 <= 0x3F)
                {
                  sub_1D26EA838(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1D26EA980(319, &qword_1ED89E020, type metadata accessor for HomeAnimationCoordinator, MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D22F3CC0(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890);
                      if (v11 <= 0x3F)
                      {
                        sub_1D26EB018(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D26EB018(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                          if (v13 <= 0x3F)
                          {
                            sub_1D26EA980(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
                            if (v14 <= 0x3F)
                            {
                              sub_1D22F3CC0(319, &qword_1ED89E038, &qword_1EC6DBCB0, &qword_1D288A630);
                              if (v15 <= 0x3F)
                              {
                                sub_1D26EB018(319, &qword_1ED89E060, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D26EA838(uint64_t a1)
{
  if (!qword_1ED89E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0128, &qword_1D289E318);
    sub_1D26EA8A8();
    v1 = sub_1D28742F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89E0B8);
    }
  }
}

unint64_t sub_1D26EA8A8()
{
  result = qword_1ED8A4B78;
  if (!qword_1ED8A4B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0128, &qword_1D289E318);
    sub_1D26EA92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4B78);
  }

  return result;
}

unint64_t sub_1D26EA92C()
{
  result = qword_1ED8A4B88;
  if (!qword_1ED8A4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4B88);
  }

  return result;
}

void sub_1D26EA980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D26EA9F4(uint64_t a1)
{
  sub_1D26EB018(319, &qword_1ED89D080, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D26EAAC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = *(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 18) & ~v9)) & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = (a1 + v9 + 18) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1D26EACF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 18) & ~v10)) & ~v12) + 1;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 18) & ~v10)) & ~v12) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v24 = &a1[v10 + 18] & ~v10;
    if (v7 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    a1[16] = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_1D26EB018(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D26EB0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  sub_1D2877518();
  return v1;
}

uint64_t sub_1D26EB108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a3;
  v5 = *(a2 + 24);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 40);
  v9 = MEMORY[0x1E69E73E0];
  v51 = v5;
  v52 = MEMORY[0x1E69E73E0];
  v10 = MEMORY[0x1E6965C48];
  v53 = v8;
  v54 = MEMORY[0x1E6965C48];
  v11 = sub_1D2874798();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = v32 - v12;
  swift_getWitnessTable();
  v13 = sub_1D2875D08();
  v14 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v16 = *(a2 + 32);
  v35 = v13;
  v51 = v13;
  v52 = v14;
  v39 = v14;
  v53 = v5;
  v54 = v9;
  v38 = WitnessTable;
  v55 = WitnessTable;
  v56 = v16;
  v50 = v16;
  v47 = v8;
  v57 = v8;
  v58 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v36 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v37 = v32 - v19;
  v46 = v3;
  v34 = sub_1D26EB0AC();
  v32[1] = v20;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v21 = qword_1ED8B0058;
  sub_1D2876668();
  (*(v41 + 16))(v40, v46 + *(a2 + 60), v5);
  v22 = v43;
  v23 = v47;
  sub_1D2874788();
  v24 = swift_checkMetadataState();
  v25 = v38;
  v26 = v39;
  v27 = v36;
  sub_1D2876948();

  (*(v44 + 8))(v22, v45);
  v51 = v24;
  v52 = v26;
  v53 = v5;
  v54 = MEMORY[0x1E69E73E0];
  v55 = v25;
  v56 = v50;
  v57 = v23;
  v58 = MEMORY[0x1E6965C48];
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = OpaqueTypeMetadata2;
  sub_1D245980C();
  v30 = *(v42 + 8);
  v30(v27, v29);
  sub_1D245980C();
  return (v30)(v28, v29);
}

unint64_t sub_1D26EB654()
{
  result = qword_1ED8A4B80;
  if (!qword_1ED8A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4B80);
  }

  return result;
}

uint64_t sub_1D26EB6C4@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1D28749D8();
  *a1 = v5 < v3;
  return result;
}

unint64_t sub_1D26EB710()
{
  result = qword_1ED89D998;
  if (!qword_1ED89D998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0130, &qword_1D289E468);
    sub_1D26EB79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D998);
  }

  return result;
}

unint64_t sub_1D26EB79C()
{
  result = qword_1ED89DB78;
  if (!qword_1ED89DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E01E0, &unk_1D289E518);
    sub_1D22BB9D8(&qword_1ED89D0D0, &qword_1EC6E01E8, &qword_1D289E528, MEMORY[0x1E6981870]);
    sub_1D22BB9D8(&qword_1ED89D638, &qword_1EC6E01F0, &unk_1D289E530, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB78);
  }

  return result;
}

unint64_t sub_1D26EB898()
{
  result = qword_1EC6E01F8;
  if (!qword_1EC6E01F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0138, &qword_1D289E470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0130, &qword_1D289E468);
    sub_1D26EB710();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E01F8);
  }

  return result;
}

uint64_t sub_1D26EB9BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D26EBA40()
{
  result = qword_1ED89DE40;
  if (!qword_1ED89DE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0208, &qword_1D289E578);
    sub_1D26EEE94(qword_1ED8A5928, type metadata accessor for ImageGenerationOnboardingView, &unk_1D28859EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE40);
  }

  return result;
}

double sub_1D26EBAFC(char a1)
{
  v3 = *(type metadata accessor for ComposingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D26E64D0(a1, v4);
}

void sub_1D26EBB6C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator, &unk_1D28A3200);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded);
}

unint64_t sub_1D26EBC60()
{
  result = qword_1ED89D518;
  if (!qword_1ED89D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0218, &unk_1D289E600);
    sub_1D2459164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D518);
  }

  return result;
}

unint64_t sub_1D26EBD04()
{
  result = qword_1EC6E0228;
  if (!qword_1EC6E0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0170, &qword_1D289E4A8);
    sub_1D26EBDBC();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8, &unk_1D2883E30, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0228);
  }

  return result;
}

unint64_t sub_1D26EBDBC()
{
  result = qword_1EC6E0230;
  if (!qword_1EC6E0230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0168, &qword_1D289E4A0);
    sub_1D26EBE74();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0230);
  }

  return result;
}

unint64_t sub_1D26EBE74()
{
  result = qword_1EC6E0238;
  if (!qword_1EC6E0238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0160, &qword_1D289E498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0150, &qword_1D289E488);
    type metadata accessor for ComposingAnimationCoordinator(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0148, &qword_1D289E480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0210, &qword_1D289E5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0218, &unk_1D289E600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0140, &qword_1D289E478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0200, &qword_1D289E570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0138, &qword_1D289E470);
    sub_1D2873BC8();
    sub_1D26EB898();
    sub_1D26EEE94(&unk_1ED89E0D8, MEMORY[0x1E69A1590], MEMORY[0x1E69A1588]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0208, &qword_1D289E578);
    sub_1D26EBA40();
    sub_1D22BAAF0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89CFF0, &qword_1EC6E0210, &qword_1D289E5F8, MEMORY[0x1E6981F48]);
    sub_1D26EBC60();
    swift_getOpaqueTypeConformance2();
    sub_1D26EEE94(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator, &unk_1D288A020);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0238);
  }

  return result;
}

uint64_t sub_1D26EC1AC(uint64_t a1)
{
  v3 = *(type metadata accessor for ComposingView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D26E6DBC(a1, v4, v5, v6);
}

unint64_t sub_1D26EC268()
{
  result = qword_1EC6E0248;
  if (!qword_1EC6E0248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0190, &qword_1D289E4C8);
    sub_1D26EC2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0248);
  }

  return result;
}

unint64_t sub_1D26EC2F4()
{
  result = qword_1EC6E0250;
  if (!qword_1EC6E0250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0188, &qword_1D289E4C0);
    sub_1D26EC380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0250);
  }

  return result;
}

unint64_t sub_1D26EC380()
{
  result = qword_1EC6E0258;
  if (!qword_1EC6E0258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0180, &qword_1D289E4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0170, &qword_1D289E4A8);
    sub_1D26EBD04();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D640, &qword_1EC6E0240, &qword_1D289E640, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0258);
  }

  return result;
}

void sub_1D26EC4EC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26EEE94(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState, &protocol conformance descriptor for GPUIExtensionState);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
}

uint64_t sub_1D26EC5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2875518();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D26EC5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComposingView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1D26E8D2C(a1, v6, a2);
}

uint64_t sub_1D26EC66C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2320E40(a1, v4, v5, v6, v7);
}

double sub_1D26EC730()
{
  v1 = *(type metadata accessor for ComposingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D2877778() - 8);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D26E9D08(v0 + v2, v6, v5);
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

double sub_1D26EC84C()
{
  v1 = *(type metadata accessor for ComposingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1D26E882C(v2, v3);
}

uint64_t sub_1D26EC8EC(uint64_t a1)
{
  v4 = *(type metadata accessor for ComposingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D26E8234(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D26EC9DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2747004(a1, v4, v5, v6);
}

uint64_t sub_1D26ECAB0(uint64_t a1)
{
  v4 = *(type metadata accessor for ComposingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D26E77F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D26ECBA0()
{
  v2 = *(sub_1D2870CC8() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ComposingView(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22EC04C;

  return sub_1D26E713C(v0 + v3, v0 + v6);
}

unint64_t sub_1D26ECCD0()
{
  result = qword_1ED89DC18;
  if (!qword_1ED89DC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0290, &qword_1D289E7F8);
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8, &unk_1D2883E30, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC18);
  }

  return result;
}

uint64_t sub_1D26ECD88(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1D26EEE94(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D26ECE84(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D26ECEA4()
{
  result = qword_1ED89DDF8;
  if (!qword_1ED89DDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0298, &qword_1D289E8E0);
    sub_1D26EEE94(&qword_1ED8A1E08, type metadata accessor for ComposingFooterView, &unk_1D287F710);
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0, &qword_1D287FD70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDF8);
  }

  return result;
}

unint64_t sub_1D26ECF8C()
{
  result = qword_1EC6D7EF0;
  if (!qword_1EC6D7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7EF0);
  }

  return result;
}

unint64_t sub_1D26ED034()
{
  result = qword_1ED89DD30;
  if (!qword_1ED89DD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0348, &qword_1D289EA40);
    sub_1D26ED0EC();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058, &unk_1D287CD30, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD30);
  }

  return result;
}

unint64_t sub_1D26ED0EC()
{
  result = qword_1ED89DEC0;
  if (!qword_1ED89DEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0358, &qword_1D289EA50);
    sub_1D22BB9D8(&qword_1ED89DF58, &qword_1EC6E0360, &qword_1D289EA58, MEMORY[0x1E697DDD0]);
    sub_1D22BB9D8(&qword_1ED89D000, &qword_1EC6E0368, &qword_1D289EA60, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEC0);
  }

  return result;
}

unint64_t sub_1D26ED1D0()
{
  result = qword_1ED89D790;
  if (!qword_1ED89D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0328, &qword_1D289EA20);
    sub_1D26ED288();
    sub_1D22BB9D8(&qword_1ED89D6A0, &qword_1EC6D9F08, &qword_1D2880588, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D790);
  }

  return result;
}

unint64_t sub_1D26ED288()
{
  result = qword_1ED89D7B8;
  if (!qword_1ED89D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0320, &qword_1D289EA18);
    sub_1D26ED340();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058, &unk_1D287CD30, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7B8);
  }

  return result;
}

unint64_t sub_1D26ED340()
{
  result = qword_1ED89D7E0;
  if (!qword_1ED89D7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0318, &qword_1D289EA10);
    sub_1D26ED3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7E0);
  }

  return result;
}

unint64_t sub_1D26ED3CC()
{
  result = qword_1ED89D828;
  if (!qword_1ED89D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0310, &qword_1D289EA08);
    sub_1D26ED458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D828);
  }

  return result;
}

unint64_t sub_1D26ED458()
{
  result = qword_1ED89D890;
  if (!qword_1ED89D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0308, &qword_1D289EA00);
    sub_1D26ED510();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D890);
  }

  return result;
}

unint64_t sub_1D26ED510()
{
  result = qword_1ED89D950;
  if (!qword_1ED89D950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0300, &qword_1D289E9F8);
    sub_1D26ED5C8();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918, &qword_1D288E3A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D950);
  }

  return result;
}

unint64_t sub_1D26ED5C8()
{
  result = qword_1ED89DB18;
  if (!qword_1ED89DB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E02F8, &qword_1D289E9F0);
    sub_1D26ED654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB18);
  }

  return result;
}

unint64_t sub_1D26ED654()
{
  result = qword_1ED89DDE0;
  if (!qword_1ED89DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E02F0, &qword_1D289E9E8);
    sub_1D26EEE94(&qword_1ED89F7A0, type metadata accessor for CreationFloatingBubblesView, &unk_1D289C898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDE0);
  }

  return result;
}

uint64_t sub_1D26ED728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ComposingView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1D26ED7BC()
{
  result = qword_1ED89D878;
  if (!qword_1ED89D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0398, &qword_1D289EB48);
    sub_1D26ED874();
    sub_1D22BB9D8(&qword_1ED89D718, &qword_1EC6E03B8, &qword_1D289EB68, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D878);
  }

  return result;
}

unint64_t sub_1D26ED874()
{
  result = qword_1ED89D928;
  if (!qword_1ED89D928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0390, &qword_1D289EB40);
    sub_1D26ED92C();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D928);
  }

  return result;
}

unint64_t sub_1D26ED92C()
{
  result = qword_1ED89DAC8;
  if (!qword_1ED89DAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0388, &qword_1D289EB38);
    sub_1D26ED9E4();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918, &qword_1D288E3A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAC8);
  }

  return result;
}

unint64_t sub_1D26ED9E4()
{
  result = qword_1ED89DD38;
  if (!qword_1ED89DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0380, &qword_1D289EB30);
    sub_1D26EDA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD38);
  }

  return result;
}

unint64_t sub_1D26EDA70()
{
  result = qword_1ED89DEC8;
  if (!qword_1ED89DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0378, &qword_1D289EB28);
    sub_1D22BB9D8(&qword_1ED89DF60, &qword_1EC6E03C8, &qword_1D289EBA0, MEMORY[0x1E697DDD0]);
    sub_1D22BB9D8(&qword_1ED89D010, &qword_1EC6E03D0, &unk_1D289EBA8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEC8);
  }

  return result;
}

unint64_t sub_1D26EDB54()
{
  result = qword_1ED89CFA0;
  if (!qword_1ED89CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03C0, &qword_1D289EB98);
    sub_1D22BB9D8(qword_1ED8A4DB0, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for <> _PhotoAsset<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CFA0);
  }

  return result;
}

double sub_1D26EDC04(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ComposingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26E58DC(a1, a2, v6);
}

void sub_1D26EDC84(double *a1)
{
  v3 = *(type metadata accessor for ComposingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1D26E5C50(a1, v4);
}

double sub_1D26EDCF4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1D26EDD50(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  return result;
}

unint64_t sub_1D26EDD80()
{
  result = qword_1ED8A3568[0];
  if (!qword_1ED8A3568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A3568);
  }

  return result;
}

uint64_t sub_1D26EDDEC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ComposingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D26EDE84()
{
  result = qword_1ED89DE20;
  if (!qword_1ED89DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0418, &qword_1D289ECB0);
    sub_1D26EEE94(&qword_1ED8A4D00, type metadata accessor for PreviewsView, &unk_1D288F9F8);
    sub_1D22BB9D8(&unk_1ED89D480, &qword_1EC6E0458, &qword_1D289ECF0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE20);
  }

  return result;
}

unint64_t sub_1D26EDF7C()
{
  result = qword_1ED89D960;
  if (!qword_1ED89D960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0428, &qword_1D289ECC0);
    sub_1D26ECD88(&qword_1ED89DB28, &qword_1EC6E0420, &qword_1D289ECB8, sub_1D26EDE84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D960);
  }

  return result;
}

unint64_t sub_1D26EE034()
{
  result = qword_1ED8A2200;
  if (!qword_1ED8A2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2200);
  }

  return result;
}

uint64_t sub_1D26EE088(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D26EE104()
{
  result = qword_1ED89DBE0;
  if (!qword_1ED89DBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0470, &qword_1D289ED08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBE0);
  }

  return result;
}

uint64_t sub_1D26EE1A0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ComposingView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for ComposingView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2874EA8();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[15];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[19]), *(v3 + v1[19] + 8));
  sub_1D2273818(*(v3 + v1[20]), *(v3 + v1[20] + 8));

  j__swift_release(*(v3 + v1[22]));
  sub_1D2273818(*(v3 + v1[23]), *(v3 + v1[23] + 8));
  sub_1D2273818(*(v3 + v1[24]), *(v3 + v1[24] + 8));

  return swift_deallocObject();
}

double sub_1D26EE5A4(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ComposingView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D26DA858(a1, v4, v5, v6);
}

unint64_t sub_1D26EE620()
{
  result = qword_1ED89D8E8;
  if (!qword_1ED89D8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0448, &qword_1D289ECE0);
    sub_1D26EE6D8();
    sub_1D22BB9D8(qword_1ED89F8E8, &unk_1EC6DEBA0, &unk_1D28970E8, &unk_1D289E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8E8);
  }

  return result;
}

unint64_t sub_1D26EE6D8()
{
  result = qword_1ED89DA58;
  if (!qword_1ED89DA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0440, &qword_1D289ECD8);
    sub_1D26EE764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA58);
  }

  return result;
}

unint64_t sub_1D26EE764()
{
  result = qword_1ED89DCB0;
  if (!qword_1ED89DCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0438, &qword_1D289ECD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0428, &qword_1D289ECC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0460, &qword_1D289ECF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0468, &qword_1D289ED00);
    sub_1D26EDF7C();
    sub_1D26EE088(&qword_1ED8A21F8, &qword_1EC6E0460, &qword_1D289ECF8, sub_1D26EE034);
    sub_1D26EE088(&qword_1ED89DBD8, &qword_1EC6E0468, &qword_1D289ED00, sub_1D26EE104);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D738, &qword_1EC6E0478, &qword_1D289ED70, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCB0);
  }

  return result;
}

uint64_t sub_1D26EE930(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ComposingView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1D26EE9C4()
{
  result = qword_1ED89D7E8;
  if (!qword_1ED89D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0400, &qword_1D289EC90);
    sub_1D26EEA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7E8);
  }

  return result;
}

unint64_t sub_1D26EEA50()
{
  result = qword_1ED89D830;
  if (!qword_1ED89D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03F8, &qword_1D289EC88);
    sub_1D26EEB08();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8, &unk_1D2883E30, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D830);
  }

  return result;
}

unint64_t sub_1D26EEB08()
{
  result = qword_1ED89D898;
  if (!qword_1ED89D898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03F0, &qword_1D289EC80);
    sub_1D26EEB94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D898);
  }

  return result;
}

unint64_t sub_1D26EEB94()
{
  result = qword_1ED89D968;
  if (!qword_1ED89D968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E03E8, &qword_1D289EC78);
    sub_1D26EEC4C();
    sub_1D22BB9D8(&unk_1ED89D480, &qword_1EC6E0458, &qword_1D289ECF0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D968);
  }

  return result;
}

unint64_t sub_1D26EEC4C()
{
  result = qword_1ED89DB30;
  if (!qword_1ED89DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0490, &qword_1D289EDB8);
    sub_1D26EED04();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918, &qword_1D288E3A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB30);
  }

  return result;
}

unint64_t sub_1D26EED04()
{
  result = qword_1ED89DE28;
  if (!qword_1ED89DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0488, &qword_1D289EDB0);
    sub_1D26EEE94(qword_1ED8A5160, type metadata accessor for EffectView, &unk_1D28A4230);
    sub_1D26EEE94(qword_1ED89E868, type metadata accessor for BlurredEffectBackgroundViewModifier, &unk_1D288F924);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE28);
  }

  return result;
}

uint64_t sub_1D26EEDF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BC8FC;

  return sub_1D23027C0(a1, v1);
}

uint64_t sub_1D26EEE94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for ComposingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874EA8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[15];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0, &unk_1D287F6E0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2875E18();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[19]), *(v2 + v1[19] + 8));
  sub_1D2273818(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  j__swift_release(*(v2 + v1[22]));
  sub_1D2273818(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  sub_1D2273818(*(v2 + v1[24]), *(v2 + v1[24] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D26EF250@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ComposingView(0);

  return sub_1D26E5130(a1);
}

uint64_t sub_1D26EF2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26EF328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26EF390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PersonAttributesPicker(uint64_t a1)
{
  result = qword_1EC6E04A0;
  if (!qword_1EC6E04A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26EF508(uint64_t a1)
{
  sub_1D26EF608(319);
  if (v1 <= 0x3F)
  {
    sub_1D26EF660(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D26EF660(319, &qword_1ED8A6C30, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D26EF608(uint64_t a1)
{
  if (!qword_1EC6E04B0)
  {
    type metadata accessor for PersonAttributesPickerViewModel(255);
    v1 = sub_1D2877538();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC6E04B0);
    }
  }
}

void sub_1D26EF660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D26EF6CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D28798A8();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1D2879158();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1D2879208();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_1D28798B8();
      v15 = sub_1D2879898();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1D26EF8F0@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a1;
  v28 = a2;
  v25[1] = a7;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v25[0]);
  v12 = v25 - v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v33) = a5 & 1;
  LOBYTE(v63) = 0;
  sub_1D22BBFAC(a3, a4, a5 & 1);
  sub_1D2870F68();
  v14 = sub_1D28764C8();
  *&v39 = a3;
  *(&v39 + 1) = a4;
  v15 = v33;
  LOBYTE(v40) = v33;
  *(&v40 + 1) = a6;
  *v41 = KeyPath;
  *&v41[8] = 3;
  v16 = v63;
  v41[16] = v63;
  *&v41[17] = 256;
  v26 = swift_getKeyPath();
  v68 = v39;
  v69 = v40;
  v70[0] = *v41;
  *(v70 + 15) = *&v41[15];
  v42[0] = a3;
  v42[1] = a4;
  v43 = v15;
  v44 = a6;
  v45 = KeyPath;
  v46 = 3;
  v47 = v16;
  v17 = v12;
  v48 = 256;
  sub_1D22BD1D0(&v39, v73, &qword_1EC6DA260, &unk_1D288CDA0);
  sub_1D22BD238(v42, &qword_1EC6DA260, &unk_1D288CDA0);
  v49[0] = v68;
  v49[1] = v69;
  v49[2] = v70[0];
  *&v50 = *&v70[1];
  *(&v50 + 1) = v26;
  v33 = v68;
  v34 = v69;
  v35 = v70[0];
  v36 = v50;
  v51 = v14;
  *&v37[0] = v14;
  v52[1] = v69;
  v52[2] = v70[0];
  v52[0] = v68;
  v53 = *&v70[1];
  v54 = v26;
  v55 = v14;
  sub_1D22BD1D0(v49, v73, &qword_1EC6DA258, &unk_1D2882310);
  sub_1D22BD238(v52, &qword_1EC6DA258, &unk_1D2882310);
  v58 = v35;
  v59[0] = v36;
  *&v59[1] = *&v37[0];
  v56 = v33;
  v57 = v34;
  v18 = v27;
  DWORD2(v59[1]) = v27;
  v19 = swift_getKeyPath();
  v31 = v58;
  v32[0] = v59[0];
  *(v32 + 12) = *(v59 + 12);
  v29 = v56;
  v30 = v57;
  v60[2] = v35;
  v60[3] = v36;
  v61 = *&v37[0];
  v60[0] = v33;
  v60[1] = v34;
  v62 = v18;
  sub_1D22BD1D0(&v56, v73, &qword_1EC6DA250, &unk_1D288CD90);
  sub_1D22BD238(v60, &qword_1EC6DA250, &unk_1D288CD90);
  v20 = sub_1D2877018();
  v65 = v31;
  v66 = v32[0];
  v67[0] = v32[1];
  v63 = v29;
  v64 = v30;
  *&v67[1] = v19;
  LOBYTE(v18) = v28;
  BYTE8(v67[1]) = v28;
  v21 = swift_getKeyPath();
  v35 = v65;
  v36 = v66;
  v37[0] = v67[0];
  *(v37 + 9) = *(v67 + 9);
  v33 = v63;
  v34 = v64;
  *&v38 = v21;
  *(&v38 + 1) = v20;
  v70[1] = v32[0];
  v70[2] = v32[1];
  v69 = v30;
  v70[0] = v31;
  v68 = v29;
  v71 = v19;
  v72 = v18;
  sub_1D22BD1D0(&v63, v73, &qword_1EC6DA248, &unk_1D2882300);
  sub_1D22BD238(&v68, &qword_1EC6DA248, &unk_1D2882300);
  v22 = *MEMORY[0x1E697E720];
  v23 = sub_1D2874E88();
  (*(*(v23 - 8) + 104))(v17, v22, v23);
  sub_1D26F3D6C(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA240, &unk_1D28822F0);
    sub_1D23421B0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    sub_1D28769B8();
    sub_1D22BD238(v17, &unk_1EC6DE860, &unk_1D287CD70);
    v73[4] = v37[0];
    v73[5] = v37[1];
    v73[6] = v38;
    v73[0] = v33;
    v73[1] = v34;
    v73[2] = v35;
    v73[3] = v36;
    return sub_1D22BD238(v73, &qword_1EC6DA240, &unk_1D28822F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26EFDB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a2;
  v29 = a1;
  v27 = a7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v36) = a5 & 1;
  LOBYTE(v67) = 0;
  sub_1D22BBFAC(a3, a4, a5 & 1);
  sub_1D2870F68();
  v14 = sub_1D28764C8();
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v15 = v36;
  LOBYTE(v43) = v36;
  *(&v43 + 1) = a6;
  *v44 = KeyPath;
  *&v44[8] = 3;
  v16 = v67;
  v44[16] = v67;
  *&v44[17] = 256;
  v28 = swift_getKeyPath();
  v72 = v42;
  v73 = v43;
  v74[0] = *v44;
  *(v74 + 15) = *&v44[15];
  v45[0] = a3;
  v45[1] = a4;
  v46 = v15;
  v47 = a6;
  v48 = KeyPath;
  v49 = 3;
  v50 = v16;
  v17 = v12;
  v51 = 256;
  sub_1D22BD1D0(&v42, v77, &qword_1EC6DA260, &unk_1D288CDA0);
  sub_1D22BD238(v45, &qword_1EC6DA260, &unk_1D288CDA0);
  v52[0] = v72;
  v52[1] = v73;
  v52[2] = v74[0];
  *&v53 = *&v74[1];
  *(&v53 + 1) = v28;
  v36 = v72;
  v37 = v73;
  v38 = v74[0];
  v39 = v53;
  v54 = v14;
  *&v40[0] = v14;
  v55[1] = v73;
  v55[2] = v74[0];
  v55[0] = v72;
  v56 = *&v74[1];
  v57 = v28;
  v58 = v14;
  sub_1D22BD1D0(v52, v77, &qword_1EC6DA258, &unk_1D2882310);
  v18 = v29;
  sub_1D2870F78();
  sub_1D22BD238(v55, &qword_1EC6DA258, &unk_1D2882310);
  v61 = v38;
  v62 = v39;
  v59 = v36;
  v60 = v37;
  *&v63 = *&v40[0];
  *(&v63 + 1) = v18;
  v19 = swift_getKeyPath();
  v33 = v61;
  v34 = v62;
  v35 = v63;
  v31 = v59;
  v32 = v60;
  v64[2] = v38;
  v64[3] = v39;
  v64[0] = v36;
  v64[1] = v37;
  v65 = *&v40[0];
  v66 = v18;
  sub_1D22BD1D0(&v59, v77, &qword_1EC6E05F0, &unk_1D289F0B8);
  sub_1D22BD238(v64, &qword_1EC6E05F0, &unk_1D289F0B8);
  v20 = sub_1D2877018();
  v69 = v33;
  v70 = v34;
  v71[0] = v35;
  v67 = v31;
  v68 = v32;
  *&v71[1] = v19;
  LOBYTE(v18) = v30;
  BYTE8(v71[1]) = v30;
  v21 = swift_getKeyPath();
  v38 = v69;
  v39 = v70;
  v40[0] = v71[0];
  *(v40 + 9) = *(v71 + 9);
  v36 = v67;
  v37 = v68;
  *&v41 = v21;
  *(&v41 + 1) = v20;
  v74[1] = v34;
  v74[2] = v35;
  v73 = v32;
  v74[0] = v33;
  v72 = v31;
  v75 = v19;
  v76 = v18;
  sub_1D22BD1D0(&v67, v77, &qword_1EC6E05E0, &qword_1D289F0B0);
  sub_1D22BD238(&v72, &qword_1EC6E05E0, &qword_1D289F0B0);
  v22 = *MEMORY[0x1E697E720];
  v23 = sub_1D2874E88();
  (*(*(v23 - 8) + 104))(v17, v22, v23);
  sub_1D26F3D6C(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1D2877F98();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05C8, &unk_1D289F0A0);
    sub_1D26F3AF0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    sub_1D28769B8();
    sub_1D22BD238(v17, &unk_1EC6DE860, &unk_1D287CD70);
    v77[4] = v40[0];
    v77[5] = v40[1];
    v77[6] = v41;
    v77[0] = v36;
    v77[1] = v37;
    v77[2] = v38;
    v77[3] = v39;
    return sub_1D22BD238(v77, &qword_1EC6E05C8, &unk_1D289F0A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D26F028C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26F3D6C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips);
}

uint64_t sub_1D26F0364@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04C0, &qword_1D289EF88);
  MEMORY[0x1EEE9AC00](v62);
  v3 = &v51[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04C8, &qword_1D289EF90);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51[-v5];
  v59 = type metadata accessor for PersonAttributesPickerViewModel(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D2875628();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04D0, &qword_1D289EF98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51[-v12];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04D8, &qword_1D289EFA0);
  MEMORY[0x1EEE9AC00](v57);
  v15 = &v51[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04E0, &qword_1D289EFA8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v51[-v20];
  v21 = type metadata accessor for PersonAttributesPicker(0);
  if (*(v1 + v21[11]) == 1)
  {
    v53 = v4;
    *v13 = sub_1D2875918();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0510, &qword_1D289EFC0);
    sub_1D26F09F4(v1, &v13[*(v22 + 44)]);
    v52 = sub_1D2876328();
    v23 = v1 + v21[5];
    v24 = *v23;
    LODWORD(v23) = *(v23 + 8);
    v54 = v6;
    if (v23 != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v31 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v24, 0);
      (*(v55 + 8))(v10, v56);
    }

    v32 = v16;
    v33 = v60;
    sub_1D2874298();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = sub_1D22EC9BC(v13, v15, &qword_1EC6E04D0, &qword_1D289EF98);
    v43 = &v15[*(v57 + 36)];
    *v43 = v52;
    *(v43 + 1) = v35;
    *(v43 + 2) = v37;
    *(v43 + 3) = v39;
    *(v43 + 4) = v41;
    v43[40] = 0;
    v44 = MEMORY[0x1D38A0390](v42, 0.5, 1.0, 0.0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498, &unk_1D289EEF0);
    MEMORY[0x1D389FF60](v45);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = off_1F4DC5F90[0];
      type metadata accessor for FacePickerCarouselViewModel(0);
      v47 = v46();
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0;
    }

    sub_1D26F3688(v33);
    sub_1D22EC9BC(v15, v18, &qword_1EC6E04D8, &qword_1D289EFA0);
    v48 = &v18[*(v32 + 36)];
    *v48 = v44;
    v48[8] = v47 & 1;
    v49 = v58;
    sub_1D22EC9BC(v18, v58, &qword_1EC6E04E0, &qword_1D289EFA8);
    sub_1D22BD1D0(v49, v54, &qword_1EC6E04E0, &qword_1D289EFA8);
    swift_storeEnumTagMultiPayload();
    sub_1D26F3518();
    sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0, &qword_1D289EF88, MEMORY[0x1E6981870]);
    sub_1D2875AF8();
    v28 = v49;
    v29 = &qword_1EC6E04E0;
    v30 = &qword_1D289EFA8;
  }

  else
  {
    v25 = sub_1D2875928();
    v26 = *(v1 + v21[9]);
    *v3 = v25;
    *(v3 + 1) = v26;
    v3[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04E8, &unk_1D289EFB0);
    sub_1D26F0F88(v1, &v3[*(v27 + 44)]);
    sub_1D22BD1D0(v3, v6, &qword_1EC6E04C0, &qword_1D289EF88);
    swift_storeEnumTagMultiPayload();
    sub_1D26F3518();
    sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0, &qword_1D289EF88, MEMORY[0x1E6981870]);
    sub_1D2875AF8();
    v28 = v3;
    v29 = &qword_1EC6E04C0;
    v30 = &qword_1D289EF88;
  }

  return sub_1D22BD238(v28, v29, v30);
}

uint64_t sub_1D26F09F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04C0, &qword_1D289EF88);
  MEMORY[0x1EEE9AC00](v57);
  v4 = (&v51 - v3);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0518, &qword_1D289EFC8);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v51 - v5;
  v7 = type metadata accessor for PersonAttributesPickerViewModel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0520, &qword_1D289EFD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498, &unk_1D289EEF0);
  MEMORY[0x1D389FF60]();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v52 = v4;
    v18 = v9;
    v19 = off_1F4DC5F90[0];
    type metadata accessor for FacePickerCarouselViewModel(0);
    v20 = v19();
    v9 = v18;
    LOBYTE(v18) = v20;
    swift_unknownObjectRelease();
    sub_1D26F3688(v12);
    if (v18)
    {
      v21 = sub_1D2875928();
      v22 = *(a1 + *(type metadata accessor for PersonAttributesPicker(0) + 36));
      v23 = v52;
      *v52 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E04E8, &unk_1D289EFB0);
      sub_1D26F0F88(a1, (v23 + *(v24 + 44)));
      sub_1D22BD1D0(v23, v6, &qword_1EC6E04C0, &qword_1D289EF88);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0528, &qword_1D289F008);
      sub_1D26F37BC();
      sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0, &qword_1D289EF88, MEMORY[0x1E6981870]);
      v25 = v55;
      sub_1D2875AF8();
      sub_1D22BD238(v23, &qword_1EC6E04C0, &qword_1D289EF88);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D26F3688(v12);
  }

  MEMORY[0x1D389FF60](v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = a1;
  if (Strong)
  {
    v27 = sub_1D2486F44();
    v29 = v28;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  sub_1D26F3688(v9);
  v59 = v27;
  v60 = v29;
  sub_1D22BD06C();
  v30 = sub_1D2876698();
  v32 = v31;
  v34 = v33;
  sub_1D2876468();
  v35 = sub_1D2876658();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_1D22ED6E0(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = sub_1D2876328();
  type metadata accessor for PersonAttributesPicker(0);
  sub_1D2874298();
  LOBYTE(v59) = v39 & 1;
  v61 = 0;
  *v6 = v35;
  *(v6 + 1) = v37;
  v6[16] = v39 & 1;
  *(v6 + 3) = v41;
  *(v6 + 4) = KeyPath;
  v6[40] = 1;
  v6[48] = v32;
  *(v6 + 7) = v43;
  *(v6 + 8) = v44;
  *(v6 + 9) = v45;
  *(v6 + 10) = v46;
  v6[88] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0528, &qword_1D289F008);
  sub_1D26F37BC();
  sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0, &qword_1D289EF88, MEMORY[0x1E6981870]);
  v25 = v55;
  sub_1D2875AF8();
LABEL_9:
  v47 = v56;
  sub_1D22BD1D0(v25, v56, &qword_1EC6E0520, &qword_1D289EFD0);
  v48 = v58;
  sub_1D22BD1D0(v47, v58, &qword_1EC6E0520, &qword_1D289EFD0);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0538, &qword_1D289F010) + 48);
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_1D22BD238(v25, &qword_1EC6E0520, &qword_1D289EFD0);
  return sub_1D22BD238(v47, &qword_1EC6E0520, &qword_1D289EFD0);
}

uint64_t sub_1D26F0F88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a1;
  v48 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0540, &qword_1D289F018) - 8;
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0548, &qword_1D289F020);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0550, &qword_1D289F028);
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0558, &qword_1D289F030);
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0560, &qword_1D289F038);
  v39 = *(v44 - 8);
  v16 = v39;
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0568, &qword_1D289F040);
  sub_1D26F3850();
  sub_1D28764F8();
  v21 = sub_1D22BB9D8(&qword_1EC6E05A8, &qword_1EC6E0548, &qword_1D289F020, MEMORY[0x1E697CCF0]);
  sub_1D2876C08();
  (*(v7 + 8))(v9, v6);
  v50 = v6;
  v51 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D2876988();
  (*(v41 + 8))(v12, v10);
  v50 = v10;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v20;
  sub_1D2876CE8();
  (*(v42 + 8))(v15, v13);
  v24 = v45;
  sub_1D26F2BEC(v40, v45);
  LOBYTE(v9) = sub_1D2876328();
  type metadata accessor for PersonAttributesPicker(0);
  sub_1D2874298();
  v25 = v24 + *(v46 + 44);
  *v25 = v9;
  *(v25 + 8) = v26;
  *(v25 + 16) = v27;
  *(v25 + 24) = v28;
  *(v25 + 32) = v29;
  *(v25 + 40) = 0;
  v30 = *(v16 + 16);
  v31 = v43;
  v32 = v44;
  v33 = v23;
  v30(v43, v23, v44);
  v34 = v47;
  sub_1D22BD1D0(v24, v47, &qword_1EC6E0540, &qword_1D289F018);
  v35 = v48;
  v30(v48, v31, v32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05B0, &qword_1D289F060);
  sub_1D22BD1D0(v34, &v35[*(v36 + 48)], &qword_1EC6E0540, &qword_1D289F018);
  sub_1D22BD238(v24, &qword_1EC6E0540, &qword_1D289F018);
  v37 = *(v39 + 8);
  v37(v33, v32);
  sub_1D22BD238(v34, &qword_1EC6E0540, &qword_1D289F018);
  return (v37)(v31, v32);
}

uint64_t sub_1D26F1518@<X0>(char *a1@<X8>, uint64_t a2@<X0>)
{
  sub_1D26F15A4(a2, a1);
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_1D2877128();
  v4 = sub_1D28774D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0568, &qword_1D289F040);
  *&a1[*(result + 36)] = v4;
  return result;
}

uint64_t sub_1D26F15A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D28714D8();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28714E8();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB68, &qword_1D2889460);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0600, &qword_1D289F1B0);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0608, &qword_1D289F1B8);
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v56 - v16;
  v17 = type metadata accessor for PersonAttributesPicker(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498, &unk_1D289EEF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0610, &qword_1D289F1C0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  sub_1D2877518();
  swift_getKeyPath();
  sub_1D2877508();

  sub_1D22BD238(v22, &qword_1EC6E0498, &unk_1D289EEF0);
  v82 = v80;
  v83 = v81;
  v61 = a1;
  sub_1D26F39B8(a1, &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  sub_1D26F3A1C(&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0618, &qword_1D289F1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0620, &qword_1D289F1F0);
  sub_1D26F4004();
  sub_1D26F40F0();
  v54 = sub_1D26F41A8();
  v77 = v26;
  sub_1D2877588();
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v29 = v59;
  v30 = __swift_project_value_buffer(v59, qword_1ED8B0060);
  (*(v57 + 16))(v58, v30, v29);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D2877518();
  swift_getKeyPath();
  sub_1D2877508();

  sub_1D22BD238(v22, &qword_1EC6E0498, &unk_1D289EEF0);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v31 = qword_1ED8B0058;
  v32 = sub_1D2876668();
  MEMORY[0x1EEE9AC00](v32);
  v33 = v78;
  v55 = MEMORY[0x1E6981138];
  v53[1] = v53;
  v54 = MEMORY[0x1E6981148];
  v53[0] = sub_1D26F4280;
  v34 = v65;
  sub_1D2877A38();
  (*(v68 + 8))(v33, v69);
  v35 = sub_1D22BB9D8(&qword_1EC6DBB78, &qword_1EC6DBB68, &qword_1D2889460, MEMORY[0x1E697D7E0]);
  v36 = v66;
  v37 = v70;
  sub_1D28768E8();
  (*(v67 + 8))(v34, v37);
  v80 = v37;
  *&v81 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v79;
  v39 = v72;
  sub_1D2876BD8();
  (*(v71 + 8))(v36, v39);
  v40 = v63;
  v41 = *(v63 + 16);
  v42 = v62;
  v43 = v64;
  v41(v62, v77, v64);
  v45 = v73;
  v44 = v74;
  v78 = *(v74 + 16);
  v46 = v38;
  v47 = v75;
  (v78)(v73, v46, v75);
  v48 = v76;
  v41(v76, v42, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0678, &qword_1D289F230);
  (v78)(&v48[*(v49 + 48)], v45, v47);
  v50 = *(v44 + 8);
  v50(v79, v47);
  v51 = *(v40 + 8);
  v51(v77, v43);
  v50(v45, v47);
  return (v51)(v42, v43);
}

double sub_1D26F204C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  *&v10 = *a1;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D26F20E8(&v10, a2, a3);

  return result;
}

__n128 sub_1D26F20E8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a2;
  v24 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0658, &qword_1D289F200);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v22 - v5;
  v7 = a1[1];
  v46 = *a1;
  v47 = v7;
  v48 = *(a1 + 4);
  v8 = a1[1];
  v36 = *a1;
  v37 = v8;
  v38 = *(a1 + 4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0668, &qword_1D289F208);
  sub_1D2877518();
  v10 = v39;
  LOBYTE(a1) = v40;
  v11 = *(&v40 + 1);
  v12 = v41;
  swift_getKeyPath();
  v36 = v10;
  LOBYTE(v37) = a1;
  *(&v37 + 1) = v11;
  v38 = v12;
  sub_1D2877508();

  v25 = &v46;
  v30 = v33;
  v31 = v34;
  v32 = v35;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  MEMORY[0x1D389FF60](v29, v9);
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED8B0058;
  *&v26 = sub_1D2876668();
  *(&v26 + 1) = v14;
  LOBYTE(v27) = v15 & 1;
  *(&v27 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0680, &qword_1D289F258);
  sub_1D26F4290();
  sub_1D2877428();
  type metadata accessor for PersonAttributesPicker(0);
  sub_1D2877848();
  sub_1D2875208();
  v17 = v24;
  (*(v4 + 32))(v24, v6, v23);
  v18 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0620, &qword_1D289F1F0) + 36);
  v19 = v44;
  *(v18 + 64) = v43;
  *(v18 + 80) = v19;
  *(v18 + 96) = v45;
  v20 = v40;
  *v18 = v39;
  *(v18 + 16) = v20;
  result = v42;
  *(v18 + 32) = v41;
  *(v18 + 48) = result;
  return result;
}

double sub_1D26F2520(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0668, &qword_1D289F208);
  MEMORY[0x1D389FF60](&v3, v1);
  if (!v3)
  {
    if (qword_1EC6D8D30 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v3 == 1)
  {
    if (qword_1EC6D8D38 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EC6D8D40 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_1D2870F68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06A0, &qword_1D289F268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0698, &qword_1D289F260);
  sub_1D22BB9D8(&qword_1EC6E06A8, &qword_1EC6E06A0, &qword_1D289F268, MEMORY[0x1E69E6338]);
  sub_1D22BB9D8(&qword_1EC6E0690, &qword_1EC6E0698, &qword_1D289F260, MEMORY[0x1E6981F48]);
  sub_1D26F4340();
  sub_1D2877588();
  return result;
}

uint64_t sub_1D26F2748@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v37 = sub_1D2877568();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06B8, &qword_1D289F270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06C0, &qword_1D289F278);
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = *a1;
  v15 = a1[1];
  sub_1D2870F68();
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED8B0058;
  *v13 = sub_1D2876668();
  *(v13 + 1) = v17;
  v13[16] = v18 & 1;
  *(v13 + 3) = v19;
  *(v13 + 4) = v14;
  *(v13 + 5) = v15;
  v13[48] = 1;
  v20 = qword_1EC6D8D48;
  sub_1D2870F68();
  if (v20 != -1)
  {
    swift_once();
  }

  if (v14 == qword_1EC6E3F28 && v15 == qword_1EC6E3F30 || (sub_1D2879618() & 1) != 0)
  {
    v21 = v34;
    sub_1D2877558();
    v22 = v35;
    v23 = v38;
    v24 = v21;
    v25 = v37;
    (*(v35 + 32))(v38, v24, v37);
    (*(v22 + 56))(v23, 0, 1, v25);
  }

  else
  {
    v23 = v38;
    (*(v35 + 56))(v38, 1, 1, v37);
  }

  v26 = v8;
  v27 = *(v8 + 16);
  v28 = v36;
  v27(v10, v13, v36);
  v29 = v39;
  sub_1D22BD1D0(v23, v39, &qword_1EC6E06B8, &qword_1D289F270);
  v30 = v40;
  v27(v40, v10, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E06C8, &qword_1D289F280);
  sub_1D22BD1D0(v29, &v30[*(v31 + 48)], &qword_1EC6E06B8, &qword_1D289F270);
  sub_1D22BD238(v23, &qword_1EC6E06B8, &qword_1D289F270);
  v32 = *(v26 + 8);
  v32(v13, v28);
  sub_1D22BD238(v29, &qword_1EC6E06B8, &qword_1D289F270);
  return (v32)(v10, v28);
}

uint64_t sub_1D26F2BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05B8, &qword_1D289F068);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v49 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E05C0, &qword_1D289F070);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v49 - v4;
  v6 = type metadata accessor for PersonAttributesPicker(0);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D2875628();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersonAttributesPickerViewModel(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498, &unk_1D289EEF0);
  v16 = a1;
  MEMORY[0x1D389FF60](v15);
  v17 = &v14[*(v12 + 48)];
  v19 = *v17;
  v18 = *(v17 + 1);
  sub_1D2870F68();
  sub_1D26F3688(v14);
  if (v18)
  {
    v56 = v19;
    v57 = v18;
    sub_1D22BD06C();
    v20 = sub_1D2876698();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = sub_1D28770B8();
    v28 = v51;
    sub_1D26EFDB8(v27, 0, v20, v22, v24 & 1, v26, v51);

    sub_1D22ED6E0(v20, v22, v24 & 1);

    v29 = v52;
    v30 = v54;
    (*(v52 + 16))(v5, v28, v54);
    swift_storeEnumTagMultiPayload();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05C8, &unk_1D289F0A0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    v33 = sub_1D26F3AF0();
    v34 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    v56 = v31;
    v57 = v32;
    v58 = v33;
    v59 = v34;
    swift_getOpaqueTypeConformance2();
    sub_1D26F3D18();
    sub_1D2875AF8();
    return (*(v29 + 8))(v28, v30);
  }

  else
  {
    v51 = v8;
    v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v16 + *(v6 + 20);
    v37 = *v36;
    if (*(v36 + 8) == 1)
    {
      v38 = *v36;
      LOBYTE(v56) = v37;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v39 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v37, 0);
      (*(v49 + 8))(v10, v51);
      v38 = v56;
    }

    v40 = v52;
    v41 = v50;
    v42 = (v38 - 5) < 2;
    sub_1D26F39B8(v16, v52);
    v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v44 = swift_allocObject();
    sub_1D26F3A1C(v40, v44 + v43);
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    v5[9] = v42;
    *(v5 + 2) = sub_1D26F3A80;
    *(v5 + 3) = v44;
    swift_storeEnumTagMultiPayload();
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05C8, &unk_1D289F0A0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860, &unk_1D287CD70);
    v47 = sub_1D26F3AF0();
    v48 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v59 = v48;
    swift_getOpaqueTypeConformance2();
    sub_1D26F3D18();
    return sub_1D2875AF8();
  }
}

uint64_t sub_1D26F3208()
{
  v0 = type metadata accessor for PersonAttributesPickerViewModel(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498, &unk_1D289EEF0);
  MEMORY[0x1D389FF60](v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1D26F3688(v2);
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips;
  if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips))
  {
    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldShowCreationTips) = 1;
    swift_getKeyPath();
    v13 = v5;
    sub_1D26F3D6C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
    sub_1D28719E8();

    if (*(v5 + v6) == 1)
    {
      swift_getKeyPath();
      v13 = v5;
      sub_1D28719E8();

      if (*(v5 + 32))
      {
        v7 = *(v5 + 40);
        ObjectType = swift_getObjectType();
        v9 = *(v7 + 32);
        swift_unknownObjectRetain();
        v9(v5, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    return sub_1D26F3688(v2);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v12 - 2) = v5;
  *(&v12 - 8) = 1;
  v13 = v5;
  sub_1D26F3D6C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel, &unk_1D288B168);
  sub_1D28719D8();

  sub_1D26F3688(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D26F34C0(uint64_t a1)
{
  result = sub_1D26F3D6C(&qword_1EC6E04B8, type metadata accessor for PersonAttributesPicker, &unk_1D289EF18);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D26F3518()
{
  result = qword_1EC6E04F0;
  if (!qword_1EC6E04F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E04E0, &qword_1D289EFA8);
    sub_1D26F35D0();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080, &qword_1D288F9A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E04F0);
  }

  return result;
}

unint64_t sub_1D26F35D0()
{
  result = qword_1EC6E04F8;
  if (!qword_1EC6E04F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E04D8, &qword_1D289EFA0);
    sub_1D22BB9D8(&qword_1EC6E0500, &qword_1EC6E04D0, &qword_1D289EF98, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E04F8);
  }

  return result;
}

uint64_t sub_1D26F3688(uint64_t a1)
{
  v2 = type metadata accessor for PersonAttributesPickerViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D26F36E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28714E8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_1D2876688();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_1D26F37BC()
{
  result = qword_1EC6E0530;
  if (!qword_1EC6E0530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0528, &qword_1D289F008);
    sub_1D24DA0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0530);
  }

  return result;
}

unint64_t sub_1D26F3850()
{
  result = qword_1EC6E0570;
  if (!qword_1EC6E0570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0568, &qword_1D289F040);
    sub_1D26F3908();
    sub_1D22BB9D8(&qword_1EC6E0598, &qword_1EC6E05A0, &qword_1D289F058, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0570);
  }

  return result;
}

unint64_t sub_1D26F3908()
{
  result = qword_1EC6E0578;
  if (!qword_1EC6E0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0580, &qword_1D289F048);
    sub_1D22BB9D8(&qword_1EC6E0588, &qword_1EC6E0590, &qword_1D289F050, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0578);
  }

  return result;
}

uint64_t sub_1D26F39B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonAttributesPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26F3A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonAttributesPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26F3A80()
{
  type metadata accessor for PersonAttributesPicker(0);

  return sub_1D26F3208();
}

unint64_t sub_1D26F3AF0()
{
  result = qword_1EC6E05D0;
  if (!qword_1EC6E05D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05C8, &unk_1D289F0A0);
    sub_1D26F3BA8();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278, &unk_1D288CDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05D0);
  }

  return result;
}

unint64_t sub_1D26F3BA8()
{
  result = qword_1EC6E05D8;
  if (!qword_1EC6E05D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05E0, &qword_1D289F0B0);
    sub_1D26F3C60();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8, &qword_1D2880900, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05D8);
  }

  return result;
}

unint64_t sub_1D26F3C60()
{
  result = qword_1EC6E05E8;
  if (!qword_1EC6E05E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E05F0, &unk_1D289F0B8);
    sub_1D23423D8();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0, &qword_1D2890510, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05E8);
  }

  return result;
}

unint64_t sub_1D26F3D18()
{
  result = qword_1EC6E05F8;
  if (!qword_1EC6E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E05F8);
  }

  return result;
}

uint64_t sub_1D26F3D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for PersonAttributesPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0498, &unk_1D289EEF0) + 32);

  v4 = type metadata accessor for PersonAttributesPickerViewModel(0);
  v5 = *(v4 + 24);
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  MEMORY[0x1D38A3650](v3 + *(v4 + 28));

  sub_1D22EE66C(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));

  return swift_deallocObject();
}

double sub_1D26F3F84@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PersonAttributesPicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26F204C(a1, v6, a2);
}

unint64_t sub_1D26F4004()
{
  result = qword_1EC6E0628;
  if (!qword_1EC6E0628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0618, &qword_1D289F1E8);
    sub_1D22BB9D8(&qword_1EC6E0630, &qword_1EC6E0638, &qword_1D289F1F8, MEMORY[0x1E69E6318]);
    sub_1D22BB9D8(&qword_1EC6E0640, &qword_1EC6E0638, &qword_1D289F1F8, MEMORY[0x1E69E6338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0628);
  }

  return result;
}

unint64_t sub_1D26F40F0()
{
  result = qword_1EC6E0648;
  if (!qword_1EC6E0648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0620, &qword_1D289F1F0);
    sub_1D22BB9D8(&qword_1EC6E0650, &qword_1EC6E0658, &qword_1D289F200, MEMORY[0x1E697D690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0648);
  }

  return result;
}

unint64_t sub_1D26F41A8()
{
  result = qword_1EC6E0660;
  if (!qword_1EC6E0660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0668, &qword_1D289F208);
    sub_1D26F422C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0660);
  }

  return result;
}

unint64_t sub_1D26F422C()
{
  result = qword_1EC6E0670;
  if (!qword_1EC6E0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0670);
  }

  return result;
}

unint64_t sub_1D26F4290()
{
  result = qword_1EC6E0688;
  if (!qword_1EC6E0688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0680, &qword_1D289F258);
    sub_1D22BB9D8(&qword_1EC6E0690, &qword_1EC6E0698, &qword_1D289F260, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0688);
  }

  return result;
}

unint64_t sub_1D26F4340()
{
  result = qword_1EC6E06B0;
  if (!qword_1EC6E06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E06B0);
  }

  return result;
}

unint64_t sub_1D26F4394()
{
  result = qword_1EC6E06D0;
  if (!qword_1EC6E06D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E06D8, &qword_1D289F288);
    sub_1D26F3518();
    sub_1D22BB9D8(&qword_1EC6E0508, &qword_1EC6E04C0, &qword_1D289EF88, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E06D0);
  }

  return result;
}

uint64_t type metadata accessor for MagicViewController(uint64_t a1)
{
  result = qword_1EC6E0710;
  if (!qword_1EC6E0710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26F4510()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetMinY(v11);
    v12.origin.x = v4;
    v12.origin.y = v6;
    v12.size.width = v8;
    v12.size.height = v10;
    CGRectGetMaxY(v12);
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    if (CGRectGetWidth(v13) > 0.0)
    {
      v14.origin.x = v4;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      CGRectGetHeight(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D26F46A8(void *a1, uint64_t a2, void (*a3)(id))
{
  v5 = v3;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + qword_1EC6E06F0))
  {
    sub_1D2870F78();
    v11 = sub_1D27FE818();

    sub_1D26F4510();
    v13 = v12;
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = v13;
    v16[4] = v15;
    sub_1D2870F78();
    v17 = a1;
    sub_1D2758420(v11, a3, v16);
  }

  else
  {
    sub_1D28725E8();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D226E000, v19, v20, "animatedEffectsViewModel is nil", v21, 2u);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }
}

double sub_1D26F4894(void *a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_1EC6E06F0))
  {
    v8 = *(v2 + qword_1EC6E06F8);
    *(v2 + qword_1EC6E06F8) = a1;
    v9 = a1;
    sub_1D2870F78();

    if (a1)
    {

      MagicViewModel.load(fromAPIRecipe:)(v9);
    }

    else
    {
      MagicViewModel.reset()();
    }
  }

  else
  {
    sub_1D28725E8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "magicViewModel is nil", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v13 = *(v2 + qword_1EC6E06F8);
    *(v2 + qword_1EC6E06F8) = 0;
  }

  return result;
}

void sub_1D26F4A7C()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = sub_1D2872438();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  if (*(v1 + qword_1EC6E06F0))
  {
    v26[2] = v3;
    type metadata accessor for GenerationRecipeFactory();
    v14 = sub_1D2870F78();
    sub_1D2461838(v14, 1, v13);
    sub_1D2878C58();
    (*(v8 + 16))(v10, v13, v7);
    v18 = sub_1D2878C48();
    sub_1D26F5704();
    v19 = sub_1D2878D28();
    v20 = [v18 underlyingData];
    v21 = sub_1D28716E8();
    v23 = v22;

    v24 = sub_1D28716D8();
    sub_1D22D6D60(v21, v23);
    [v19 setAdditionalMetadata_];

    (*(v8 + 8))(v13, v7);
    v25 = *(v1 + qword_1EC6E06F8);
    *(v1 + qword_1EC6E06F8) = v19;
  }

  else
  {
    sub_1D28725E8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "Failed to get the context.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_1D26F4ED0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + qword_1EC6E0708;
  v5 = *(v3 + qword_1EC6E0708);
  v6 = *(v3 + qword_1EC6E0708 + 8);
  v7 = *(v3 + qword_1EC6E0708 + 16);
  *v4 = *&a1;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  if (*(v3 + qword_1EC6E06F0) && (a3 & 1) == 0)
  {
    v10 = !v7 && *&a1 == *&v5;
    if (!v10 || *&a2 != *&v6)
    {
      sub_1D2870F78();
      sub_1D27FEFE4(v5, v6, v7, *&a1, *&a2);
    }
  }
}

void sub_1D26F4FA8()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28724E8();
  v5 = v0;
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  v8 = &off_1E83FF000;
  if (os_log_type_enabled(v6, v7))
  {
    v21 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = [v5 view];

    if (!v11)
    {
      goto LABEL_8;
    }

    [v11 frame];

    v12 = sub_1D2878CA8();
    v14 = sub_1D23D7C84(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D226E000, v6, v7, "MagicViewController did layout view: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    (*(v2 + 8))(v4, v21);
    v8 = &off_1E83FF000;
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v15 = [v5 v8[309]];
  if (v15)
  {
    v16 = v15;
    [v15 &selRef_imageDescription];
    v18 = v17;
    v20 = v19;

    sub_1D26F4ED0(v18, v20, 0);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void sub_1D26F5238(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_1D26F4FA8();
  v4.receiver = v3;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidLayoutSubviews);
}

uint64_t sub_1D26F5294(uint64_t a1)
{
  v3 = type metadata accessor for MagicView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  *&v6[qword_1EC6E06F0] = 0;
  *&v6[qword_1EC6E06F8] = 0;
  *&v6[qword_1EC6E0700] = 0;
  v7 = &v6[qword_1EC6E0708];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1D26F5644(a1, v5);
  v8 = sub_1D28759F8();
  sub_1D26F56A8(a1);
  return v8;
}

void *sub_1D26F53B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1EC6E06F0) = 0;
  *(v2 + qword_1EC6E06F8) = 0;
  *(v2 + qword_1EC6E0700) = 0;
  v7 = v2 + qword_1EC6E0708;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  sub_1D26F5644(a2, v6);
  v8 = sub_1D28759E8();
  v9 = v8;
  sub_1D26F56A8(a2);
  if (v8)
  {
  }

  return v8;
}

id sub_1D26F549C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EC6E06F0] = 0;
  *&v1[qword_1EC6E06F8] = 0;
  *&v1[qword_1EC6E0700] = 0;
  v4 = &v1[qword_1EC6E0708];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1D26F556C()
{

  v1 = *(v0 + qword_1EC6E0700);
}

void sub_1D26F55BC(uint64_t a1)
{

  v2 = *(a1 + qword_1EC6E0700);
}

uint64_t sub_1D26F5644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26F56A8(uint64_t a1)
{
  v2 = type metadata accessor for MagicView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D26F5704()
{
  result = qword_1EC6E0720;
  if (!qword_1EC6E0720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E0720);
  }

  return result;
}

uint64_t sub_1D26F5750(char a1)
{
  *(v1 + 89) = a1;
  v2 = sub_1D2871DD8();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  sub_1D2878568();
  *(v1 + 40) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D26F5844, v4, v3);
}

uint64_t sub_1D26F5844()
{
  type metadata accessor for VisualEffectLoader();
  *(v0 + 88) = 0;
  sub_1D2871DC8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D26F590C;
  v2 = *(v0 + 32);

  return sub_1D275CD0C((v0 + 88), 1, v2, 0);
}

uint64_t sub_1D26F590C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 56);
  v9 = *(v3 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D26F5A98, v9, v8);
}

uint64_t sub_1D26F5A98()
{
  v1 = *(v0 + 89);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v1 == 1)
  {
    v4 = qword_1EC6E06E0;
    v5 = *algn_1EC6E06E8;
    qword_1EC6E06E0 = *(v0 + 72);
    *algn_1EC6E06E8 = v3;
    v3 = v5;
    v2 = v4;
  }

  sub_1D233EE24(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D26F5B30(uint64_t a1)
{
  v1[7] = a1;
  v3 = sub_1D2871158();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0728, &qword_1D289F358);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_1D26F5CF0;

  return sub_1D26F6E24(a1);
}

uint64_t sub_1D26F5CF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1D26F634C;
  }

  else
  {

    v4 = sub_1D26F5E0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D26F5E0C()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[13];
    v5 = (v4 + 56);
    v51 = (v0[9] + 8);
    v52 = (v4 + 48);
    v6 = MEMORY[0x1E69E7CC0];
    v42 = v0[15];
    v43 = v0[16];
    v46 = *(v1 + 16);
    v47 = v0[20];
    v44 = (v4 + 56);
    v45 = v4;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v0[18];
      v8 = v0[16];
      v54 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v53 = *(v4 + 72);
      sub_1D270172C(v0[20] + v54 + v53 * v3, v7);
      sub_1D270172C(v7, v8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        sub_1D2701790(v0[16]);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          v50 = v6;
          v10 = v0[10];
          v11 = v0[8];
          v12 = *(v43 + 8);
          v0[2] = *v0[16];
          v0[3] = v12;
          sub_1D2871148();
          sub_1D22BD06C();
          v13 = sub_1D2878F48();
          v49 = *v51;
          (*v51)(v10, v11);

          v0[6] = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
          sub_1D238D968();
          sub_1D2877F68();
          v15 = v14;

          if (qword_1EC6D8D88 != -1)
          {
            swift_once();
          }

          v16 = qword_1EC6E2978;
          v17 = sub_1D2878068();
          if ((v15 & 0x1000000000000000) != 0)
          {
            v18 = sub_1D2878258();
          }

          else
          {
            v18 = sub_1D2878268();
          }

          v19 = v18;

          v20 = v0[15];
          v48 = v0[11];
          v21 = v0[10];
          v22 = v0[8];
          v23 = sub_1D2878068();
          v24 = [v16 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{v19, v23}];

          v25 = sub_1D28780A8();
          v27 = v26;

          v0[4] = v25;
          v0[5] = v27;
          sub_1D2871128();
          v28 = sub_1D2878F88();
          v30 = v29;
          v49(v21, v22);

          *v20 = v28;
          *(v42 + 8) = v30;
          swift_storeEnumTagMultiPayload();
          sub_1D2701854(v20, v48);
          v6 = v50;
          v2 = v46;
          v1 = v47;
          v5 = v44;
          v4 = v45;
          goto LABEL_16;
        }

        v31 = v0[16];
        v32 = sub_1D28721C8();
        (*(*(v32 - 8) + 8))(v31, v32);
      }

      sub_1D270172C(v0[18], v0[11]);
LABEL_16:
      v33 = v0[18];
      v35 = v0[11];
      v34 = v0[12];
      (*v5)(v35, 0, 1, v34);
      sub_1D2701790(v33);
      if ((*v52)(v35, 1, v34) == 1)
      {
        sub_1D27017EC(v0[11]);
      }

      else
      {
        v36 = v0[17];
        v37 = v0[14];
        sub_1D2701854(v0[11], v36);
        sub_1D270172C(v36, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D27CC818(0, v6[2] + 1, 1, v6);
        }

        v39 = v6[2];
        v38 = v6[3];
        if (v39 >= v38 >> 1)
        {
          v6 = sub_1D27CC818((v38 > 1), v39 + 1, 1, v6);
        }

        v40 = v0[14];
        sub_1D2701790(v0[17]);
        v6[2] = v39 + 1;
        sub_1D2701854(v40, v6 + v54 + v39 * v53);
      }

      if (v2 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v41 = v0[1];

  v41(v6);
}

uint64_t sub_1D26F634C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D26F6410(uint64_t a1)
{
  v1[7] = a1;
  v3 = sub_1D2871158();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0728, &qword_1D289F358);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[18] = v5;
  *v5 = v1;
  v5[1] = sub_1D26F65C4;

  return sub_1D26F6E24(a1);
}

uint64_t sub_1D26F65C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D26F6768, 0, 0);
  }
}

uint64_t sub_1D26F6768()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    v47 = v0[14];
    v48 = v0[15];
    v3 = v0[13];
    v49 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v49;
    v5 = (v3 + 56);
    v6 = (v0[9] + 8);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = (v3 + 48);
    v45 = v6;
    v46 = (v3 + 56);
    v44 = (v3 + 48);
    v53 = *(v3 + 72);
    while (1)
    {
      v10 = v0[17];
      v11 = v0[15];
      sub_1D270172C(v4, v10);
      sub_1D270172C(v10, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        sub_1D2701790(v0[15]);
      }

      else
      {
        if (EnumCaseMultiPayload < 2)
        {
          v13 = v0[10];
          v14 = v0[8];
          v15 = *(v48 + 8);
          v0[2] = *v0[15];
          v0[3] = v15;
          sub_1D2871148();
          sub_1D22BD06C();
          v16 = sub_1D2878F48();
          v51 = *v6;
          (*v6)(v13, v14);

          v0[6] = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
          sub_1D238D968();
          sub_1D2877F68();
          v18 = v17;

          if (qword_1EC6D8D88 != -1)
          {
            swift_once();
          }

          v19 = qword_1EC6E2978;
          v20 = sub_1D2878068();
          v52 = v7;
          if ((v18 & 0x1000000000000000) != 0)
          {
            v21 = sub_1D2878258();
          }

          else
          {
            v21 = sub_1D2878268();
          }

          v22 = v21;

          v23 = v0[14];
          v50 = v0[11];
          v24 = v0[10];
          v25 = v0[8];
          v26 = sub_1D2878068();
          v27 = [v19 stringByReplacingMatchesInString:v20 options:0 range:0 withTemplate:{v22, v26}];

          v28 = sub_1D28780A8();
          v30 = v29;

          v0[4] = v28;
          v0[5] = v30;
          sub_1D2871128();
          v31 = sub_1D2878F88();
          v33 = v32;
          v6 = v45;
          v51(v24, v25);

          *v23 = v31;
          *(v47 + 8) = v33;
          swift_storeEnumTagMultiPayload();
          sub_1D2701854(v23, v50);
          v7 = v52;
          v5 = v46;
          v8 = v44;
          goto LABEL_15;
        }

        v34 = v0[15];
        v35 = sub_1D28721C8();
        (*(*(v35 - 8) + 8))(v34, v35);
      }

      sub_1D270172C(v0[17], v0[11]);
LABEL_15:
      v36 = v0[17];
      v38 = v0[11];
      v37 = v0[12];
      (*v5)(v38, 0, 1, v37);
      sub_1D2701790(v36);
      if ((*v8)(v38, 1, v37) == 1)
      {
        sub_1D27017EC(v0[11]);
        v9 = v53;
      }

      else
      {
        sub_1D2701854(v0[11], v0[16]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D27CC818(0, v7[2] + 1, 1, v7);
        }

        v40 = v7[2];
        v39 = v7[3];
        if (v40 >= v39 >> 1)
        {
          v7 = sub_1D27CC818((v39 > 1), v40 + 1, 1, v7);
        }

        v41 = v0[16];
        v7[2] = v40 + 1;
        v9 = v53;
        sub_1D2701854(v41, v7 + v49 + v40 * v53);
      }

      v4 += v9;
      if (!--v2)
      {

        goto LABEL_24;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v42 = v0[1];

  return v42(v7);
}

uint64_t PromptElementConceptExtractor.__allocating_init(servicesFetcher:)(uint64_t a1)
{
  v1 = swift_allocObject();
  type metadata accessor for VisualSummarizationClient();
  v2 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v2 + 24) = sub_1D2873DD8();
  v3 = sub_1D27D8C8C();

  *(v2 + 16) = v3 & 1;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t PromptElementConceptExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for VisualSummarizationClient();
  v1 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v1 + 24) = sub_1D2873DD8();
  *(v1 + 16) = sub_1D27D8C8C() & 1;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PromptElementConceptExtractor.init()()
{
  type metadata accessor for VisualSummarizationClient();
  v1 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v1 + 24) = sub_1D2873DD8();
  *(v1 + 16) = sub_1D27D8C8C() & 1;
  *(v0 + 16) = v1;
  return v0;
}

unint64_t sub_1D26F6DE8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

uint64_t sub_1D26F6E24(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_1D2877E58();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v4 = sub_1D28721C8();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v6 = sub_1D2872018();
  v2[65] = v6;
  v2[66] = *(v6 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26F70DC, 0, 0);
}

uint64_t sub_1D26F70DC(__n128 a1)
{
  v2 = *(v1 + 296);
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 256) = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  *(v1 + 560) = v4;
  if (!v4)
  {
    v102 = v3;
LABEL_99:
    v144 = v3;
    sub_1D274DDBC(v102);

    v103 = *(v1 + 8);

    return v103(v144);
  }

  v136 = (v1 + 272);
  v132 = (v1 + 280);
  v133 = (v1 + 264);
  v139 = (v1 + 288);
  v5 = sub_1D2872038();
  v6 = 0;
  v7 = *(v5 - 8);
  *(v1 + 736) = *(v7 + 80);
  *(v1 + 568) = *(v7 + 72);
  *(v1 + 740) = *MEMORY[0x1E696E368];
  *(v1 + 744) = *MEMORY[0x1E696E360];
  *(v1 + 748) = *MEMORY[0x1E696E340];
  *(v1 + 752) = *MEMORY[0x1E696E358];
  *(v1 + 756) = *MEMORY[0x1E696E380];
  *(v1 + 760) = *MEMORY[0x1E696E388];
  *(v1 + 764) = *MEMORY[0x1E696E350];
  *(v1 + 768) = *MEMORY[0x1E696E370];
  *(v1 + 772) = *MEMORY[0x1E696E378];
  *(v1 + 776) = *MEMORY[0x1E696E348];
  v8 = 0x1E6977000uLL;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v1 + 584) = v9;
    *(v1 + 576) = v6;
    v10 = *(v1 + 740);
    v11 = *(v1 + 552);
    v12 = *(v1 + 528);
    v13 = *(v1 + 520);
    sub_1D2872028();
    v14 = *(v12 + 88);
    v15 = v14(v11, v13);
    if (v15 == v10)
    {
      v16 = *(v1 + 552);
      (*(*(v1 + 528) + 96))(v16, *(v1 + 520));
      v17 = *v16;
      *(v1 + 592) = *v16;
      v18 = v16[1];
      *(v1 + 600) = v18;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v19 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v19 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v20 = [objc_allocWithZone(*(v8 + 2696)) initWithUnit_];
        v21 = sub_1D2878068();
        [v20 setString_];

        *v139 = 0;
        *(swift_task_alloc() + 16) = v139;
        sub_1D2878958();

        if (*v139 >= 50)
        {
          v105 = swift_task_alloc();
          *(v1 + 608) = v105;
          *v105 = v1;
          v105[1] = sub_1D26F8654;
          v106 = v1 + 216;
          goto LABEL_103;
        }

        v22 = *(v1 + 496);
        *v22 = v17;
        v22[1] = v18;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v24 = v9[2];
        v23 = v9[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v9 = sub_1D27CC818((v23 > 1), v24 + 1, 1, v9);
        }

        v26 = *(v1 + 496);
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    if (v15 == *(v1 + 744))
    {
      v141 = v9;
      v27 = *(v1 + 552);
      v137 = *(*(v1 + 528) + 96);
      v137(v27, *(v1 + 520));
      v28 = *v27;
      *(v1 + 640) = *v27;
      v18 = v27[1];
      *(v1 + 648) = v18;
      v29 = v27[3];
      if ((v18 & 0x2000000000000000) != 0)
      {
        v30 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v30 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {
        goto LABEL_58;
      }

      v134 = v27[2];
      v31 = [objc_allocWithZone(*(v8 + 2696)) initWithUnit_];
      v32 = sub_1D2878068();
      [v31 setString_];

      *v136 = 0;
      *(swift_task_alloc() + 16) = v136;
      sub_1D2878958();

      if (*v136 >= 10)
      {
        v108 = v134;
        v140 = v28;
        v109 = v29;
        if (v29)
        {
          goto LABEL_117;
        }

        v110 = 0;
        do
        {
          v111 = v109;
          v142 = *(v1 + 772);
          v112 = *(v1 + 544);
          v113 = *(v1 + 520);
          sub_1D2872028();
          v114 = v14(v112, v113);
          v115 = *(v1 + 544);
          if (v114 == v142)
          {
            v116 = *(v1 + 520);

            v137(v115, v116);
            v108 = *v115;
            v109 = v115[1];
          }

          else
          {
            (*(*(v1 + 528) + 8))(*(v1 + 544), *(v1 + 520));
            v109 = v111;
          }

          ++v110;
        }

        while (v110 != *(v1 + 560));

        if (v109)
        {
LABEL_117:
          *(v1 + 656) = v109;
          if (v108 != v140 || (v124 = v18, v109 != v18))
          {
            v17 = v140;
            if ((sub_1D2879618() & 1) == 0)
            {
              v126 = swift_task_alloc();
              *(v1 + 680) = v126;
              *v126 = v1;
              v126[1] = sub_1D26FCDE8;
              v127 = v1 + 136;
              goto LABEL_134;
            }

            v124 = v109;
          }
        }

        else
        {
          v124 = 0;
        }

        *(v1 + 664) = v124;
        v129 = swift_task_alloc();
        *(v1 + 672) = v129;
        *v129 = v1;
        v129[1] = sub_1D26FB5E0;
        v106 = v1 + 96;
        v107 = v140;
        goto LABEL_130;
      }

      v33 = *(v1 + 448);

      *v33 = v28;
      v33[1] = v18;
      swift_storeEnumTagMultiPayload();
      v9 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D27CC818(0, v141[2] + 1, 1, v141);
      }

      v8 = 0x1E6977000;
      v24 = v9[2];
      v34 = v9[3];
      v25 = v24 + 1;
      if (v24 >= v34 >> 1)
      {
        v9 = sub_1D27CC818((v34 > 1), v24 + 1, 1, v9);
      }

      v26 = *(v1 + 448);
LABEL_49:
      v48 = *(v1 + 368);
      v9[2] = v25;
      v49 = v9 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v24;
      goto LABEL_50;
    }

    if (v15 == *(v1 + 748))
    {
      break;
    }

    if (v15 == *(v1 + 752))
    {
      v42 = *(v1 + 552);
      (*(*(v1 + 528) + 96))(v42, *(v1 + 520));
      v17 = *v42;
      *(v1 + 616) = *v42;
      v18 = v42[1];
      *(v1 + 624) = v18;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v43 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v44 = [objc_allocWithZone(*(v8 + 2696)) initWithUnit_];
        v45 = sub_1D2878068();
        [v44 setString_];

        *v132 = 0;
        *(swift_task_alloc() + 16) = v132;
        sub_1D2878958();

        if (*v132 >= 50)
        {
          v125 = swift_task_alloc();
          *(v1 + 632) = v125;
          *v125 = v1;
          v125[1] = sub_1D26F9E18;
          v106 = v1 + 176;
          goto LABEL_103;
        }

        v46 = *(v1 + 472);
        *v46 = v17;
        v46[1] = v18;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v24 = v9[2];
        v47 = v9[3];
        v25 = v24 + 1;
        if (v24 >= v47 >> 1)
        {
          v9 = sub_1D27CC818((v47 > 1), v24 + 1, 1, v9);
        }

        v26 = *(v1 + 472);
        goto LABEL_49;
      }
    }

    else
    {
      if (v15 == *(v1 + 756))
      {
        v50 = *(v1 + 552);
        v51 = *(v1 + 408);
        v52 = *(v1 + 352);
        v53 = *(v1 + 336);
        v54 = *(v1 + 344);
        (*(*(v1 + 528) + 96))(v50, *(v1 + 520));
        (*(v54 + 32))(v52, v50, v53);
        (*(v54 + 16))(v51, v52, v53);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v56 = v9[2];
        v55 = v9[3];
        v57 = v56 + 1;
        v8 = 0x1E6977000;
        if (v56 >= v55 >> 1)
        {
          v9 = sub_1D27CC818((v55 > 1), v56 + 1, 1, v9);
        }

        v58 = *(v1 + 408);
        v59 = *(v1 + 368);
        v61 = *(v1 + 344);
        v60 = *(v1 + 352);
        v62 = *(v1 + 336);
LABEL_65:
        (*(v61 + 8))(v60, v62);
        v9[2] = v57;
        v49 = v9 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56;
        v26 = v58;
        goto LABEL_50;
      }

      if (v15 == *(v1 + 760))
      {
        v63 = *(v1 + 552);
        v64 = *(v1 + 400);
        v66 = *(v1 + 320);
        v65 = *(v1 + 328);
        v67 = *(v1 + 312);
        (*(*(v1 + 528) + 96))(v63, *(v1 + 520));
        (*(v66 + 32))(v65, v63, v67);
        (*(v66 + 16))(v64, v65, v67);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v56 = v9[2];
        v68 = v9[3];
        v57 = v56 + 1;
        v8 = 0x1E6977000;
        if (v56 >= v68 >> 1)
        {
          v9 = sub_1D27CC818((v68 > 1), v56 + 1, 1, v9);
        }

        v58 = *(v1 + 400);
        v59 = *(v1 + 368);
        v61 = *(v1 + 320);
        v60 = *(v1 + 328);
        v62 = *(v1 + 312);
        goto LABEL_65;
      }

      if (v15 == *(v1 + 764))
      {
        v69 = *(v1 + 552);
        v70 = *(v1 + 392);
        (*(*(v1 + 528) + 96))(v69, *(v1 + 520));
        v71 = *v69;
        *v70 = v71;
        swift_storeEnumTagMultiPayload();
        v72 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v74 = v9[2];
        v73 = v9[3];
        v75 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v9 = sub_1D27CC818((v73 > 1), v74 + 1, 1, v9);
        }

        v76 = *(v1 + 392);
        goto LABEL_78;
      }

      if (v15 == *(v1 + 768))
      {
        v77 = *(v1 + 552);
        v78 = *(v1 + 384);
        (*(*(v1 + 528) + 96))(v77, *(v1 + 520));
        v79 = *v77;
        v80 = type metadata accessor for PlaygroundImage(0);
        v81 = (v78 + v80[9]);
        *v81 = 0u;
        v81[1] = 0u;
        *(v78 + v80[10]) = xmmword_1D28809A0;
        v82 = v80[11];
        v83 = sub_1D2873AA8();
        (*(*(v83 - 8) + 56))(v78 + v82, 1, 1, v83);
        *v78 = v79;
        *(v78 + 8) = 0;
        *(v78 + 24) = 1;
        *(v78 + 16) = 0;
        *(v78 + 32) = 0;
        *(v78 + 40) = 0;
        *(v78 + v80[12]) = 0;
        v72 = v79;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v74 = v9[2];
        v84 = v9[3];
        v75 = v74 + 1;
        if (v74 >= v84 >> 1)
        {
          v9 = sub_1D27CC818((v84 > 1), v74 + 1, 1, v9);
        }

        v76 = *(v1 + 384);
        goto LABEL_78;
      }

      if (v15 != *(v1 + 772))
      {
        v90 = *(v1 + 552);
        v91 = *(v1 + 528);
        v92 = *(v1 + 520);
        if (v15 != *(v1 + 776))
        {
          (*(v91 + 8))(*(v1 + 552), v92);
          goto LABEL_4;
        }

        v93 = *(v1 + 376);
        (*(v91 + 96))(*(v1 + 552), v92);
        v94 = *v90;
        v95 = type metadata accessor for PlaygroundImage(0);
        *(v93 + 32) = 0;
        *(v93 + 40) = 0;
        v96 = (v93 + v95[9]);
        *v96 = 0u;
        v96[1] = 0u;
        *(v93 + v95[10]) = xmmword_1D28809A0;
        v97 = v95[11];
        v98 = sub_1D2873AA8();
        (*(*(v98 - 8) + 56))(v93 + v97, 1, 1, v98);
        *v93 = v94;
        *(v93 + 8) = 3;
        *(v93 + 24) = 1;
        *(v93 + 16) = 0;
        *(v93 + v95[12]) = 0;
        v72 = v94;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v74 = v9[2];
        v99 = v9[3];
        v75 = v74 + 1;
        if (v74 >= v99 >> 1)
        {
          v9 = sub_1D27CC818((v99 > 1), v74 + 1, 1, v9);
        }

        v76 = *(v1 + 376);
LABEL_78:
        v85 = *(v1 + 368);

        v9[2] = v75;
        v49 = v9 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v74;
        v26 = v76;
LABEL_50:
        sub_1D2701854(v26, v49);
        goto LABEL_4;
      }

      v86 = *(v1 + 552);
      (*(*(v1 + 528) + 96))(v86, *(v1 + 520));
      v88 = *v86;
      v87 = v86[1];
      v89 = HIBYTE(v87) & 0xF;
      if ((v87 & 0x2000000000000000) == 0)
      {
        v89 = v88 & 0xFFFFFFFFFFFFLL;
      }

      if (v89 && !sub_1D27018B8(*(v1 + 296)))
      {
        v100 = *(v1 + 416);
        *v100 = v88;
        v100[1] = v87;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D27CC818(0, v9[2] + 1, 1, v9);
        }

        v24 = v9[2];
        v101 = v9[3];
        v25 = v24 + 1;
        if (v24 >= v101 >> 1)
        {
          v9 = sub_1D27CC818((v101 > 1), v24 + 1, 1, v9);
        }

        v26 = *(v1 + 416);
        goto LABEL_49;
      }
    }

LABEL_3:

LABEL_4:
    v6 = *(v1 + 576) + 1;
    if (v6 == *(v1 + 560))
    {
      v3 = *(v1 + 256);
      v102 = v9;
      goto LABEL_99;
    }
  }

  v141 = v9;
  v35 = *(v1 + 552);
  v138 = *(*(v1 + 528) + 96);
  v138(v35, *(v1 + 520));
  v17 = *v35;
  *(v1 + 688) = *v35;
  v18 = v35[1];
  *(v1 + 696) = v18;
  v36 = v35[3];
  if ((v18 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v37 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
LABEL_58:

    v9 = v141;
    goto LABEL_4;
  }

  v135 = v35[2];
  v38 = [objc_allocWithZone(*(v8 + 2696)) initWithUnit_];
  v39 = sub_1D2878068();
  [v38 setString_];

  *v133 = 0;
  *(swift_task_alloc() + 16) = v133;
  sub_1D2878958();

  if (*v133 < 10)
  {
    v40 = *(v1 + 424);

    *v40 = v17;
    v40[1] = v18;
    swift_storeEnumTagMultiPayload();
    v9 = v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D27CC818(0, v141[2] + 1, 1, v141);
    }

    v8 = 0x1E6977000;
    v24 = v9[2];
    v41 = v9[3];
    v25 = v24 + 1;
    if (v24 >= v41 >> 1)
    {
      v9 = sub_1D27CC818((v41 > 1), v24 + 1, 1, v9);
    }

    v26 = *(v1 + 424);
    goto LABEL_49;
  }

  v109 = v36;
  if (!v36)
  {
    v117 = 0;
    do
    {
      v118 = v109;
      v143 = *(v1 + 772);
      v119 = *(v1 + 536);
      v120 = *(v1 + 520);
      sub_1D2872028();
      v121 = v14(v119, v120);
      v122 = *(v1 + 536);
      if (v121 == v143)
      {
        v123 = *(v1 + 520);

        v138(v122, v123);
        v109 = v122[1];
        v135 = *v122;
      }

      else
      {
        (*(*(v1 + 528) + 8))(*(v1 + 536), *(v1 + 520));
        v109 = v118;
      }

      ++v117;
    }

    while (v117 != *(v1 + 560));

    if (!v109)
    {
      v128 = 0;
      goto LABEL_138;
    }
  }

  *(v1 + 704) = v109;
  v108 = v135;
  if (v135 == v17)
  {
    v128 = v18;
    if (v109 == v18)
    {
      goto LABEL_138;
    }
  }

  if (sub_1D2879618())
  {
    v128 = v109;
LABEL_138:
    *(v1 + 712) = v128;
    v131 = swift_task_alloc();
    *(v1 + 720) = v131;
    *v131 = v1;
    v131[1] = sub_1D26FE5F0;
    v106 = v1 + 16;
LABEL_103:
    v107 = v17;
LABEL_130:

    return VisualSummarizationClient.summarizeContext(from:)(v106, v107, v18);
  }

  v130 = swift_task_alloc();
  *(v1 + 728) = v130;
  *v130 = v1;
  v130[1] = sub_1D26FFDC4;
  v127 = v1 + 56;
LABEL_134:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v127, v108, v109, v17, v18);
}

uint64_t sub_1D26F8654()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26F8750, 0, 0);
}

uint64_t sub_1D26F8750()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 600);
  if (*(v0 + 240))
  {

    if (v1 && (v3 = *(v1 + 16)) != 0)
    {
      v4 = (v1 + 40);
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = *(v0 + 504);
        v7 = *v4;
        *v6 = *(v4 - 1);
        v6[1] = v7;
        swift_storeEnumTagMultiPayload();
        sub_1D2870F68();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D27CC818(0, v5[2] + 1, 1, v5);
        }

        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          v5 = sub_1D27CC818((v8 > 1), v9 + 1, 1, v5);
        }

        v10 = *(v0 + 504);
        v11 = *(v0 + 368);
        v5[2] = v9 + 1;
        sub_1D2701854(v10, v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9);
        v4 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {

      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v5);
    v25 = *(v0 + 584);
  }

  else
  {
    v12 = *(v0 + 592);
    v13 = *(v0 + 512);

    v14 = sub_1D2691DF8(50, v12, v2);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x1D38A0BC0](v14, v16, v18, v20);
    v23 = v22;

    *v13 = v21;
    v13[1] = v23;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, *(v0 + 584));
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CC818((v26 > 1), v27 + 1, 1, v25);
    }

    v28 = *(v0 + 512);
    v29 = *(v0 + 368);
    v25[2] = v27 + 1;
    sub_1D2701854(v28, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27);
  }

  v30 = *(v0 + 576) + 1;
  if (v30 == *(v0 + 560))
  {
LABEL_19:
    v175 = *(v0 + 256);
    sub_1D274DDBC(v25);

    v31 = *(v0 + 8);

    return v31(v175);
  }

  v168 = (v0 + 272);
  v162 = (v0 + 280);
  v163 = (v0 + 264);
  v172 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v25;
    *(v0 + 576) = v30;
    v36 = *(v0 + 740);
    v37 = *(v0 + 552);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    sub_1D2872028();
    v40 = *(v38 + 88);
    v41 = v40(v37, v39);
    if (v41 == v36)
    {
      v42 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v42, *(v0 + 520));
      v43 = *v42;
      *(v0 + 592) = *v42;
      v44 = v42[1];
      *(v0 + 600) = v44;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v45 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
        goto LABEL_71;
      }

      v46 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v47 = sub_1D2878068();
      [v46 setString_];

      *v172 = 0;
      *(swift_task_alloc() + 16) = v172;
      sub_1D2878958();

      if (*v172 >= 50)
      {
        v128 = swift_task_alloc();
        *(v0 + 608) = v128;
        *v128 = v0;
        v128[1] = sub_1D26F8654;
        v129 = v0 + 216;
        goto LABEL_118;
      }

      v48 = *(v0 + 496);
      *v48 = v43;
      v48[1] = v44;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
      }

      v50 = v25[2];
      v49 = v25[3];
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v25 = sub_1D27CC818((v49 > 1), v50 + 1, 1, v25);
      }

      v33 = *(v0 + 496);
      goto LABEL_24;
    }

    if (v41 == *(v0 + 744))
    {
      v52 = *(v0 + 552);
      v170 = *(*(v0 + 528) + 96);
      v170(v52, *(v0 + 520));
      v53 = *v52;
      *(v0 + 640) = *v52;
      v54 = v52[1];
      *(v0 + 648) = v54;
      v55 = v52[3];
      if ((v54 & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(v54) & 0xF;
      }

      else
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (!v56)
      {
        goto LABEL_70;
      }

      v57 = v25;
      v164 = v40;
      v166 = v52[2];
      v58 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v59 = sub_1D2878068();
      [v58 setString_];

      *v168 = 0;
      *(swift_task_alloc() + 16) = v168;
      sub_1D2878958();

      if (*v168 >= 10)
      {
        v132 = v166;
        v169 = v54;
        v133 = v55;
        if (v55)
        {
          goto LABEL_133;
        }

        v134 = 0;
        do
        {
          v173 = *(v0 + 772);
          v135 = *(v0 + 544);
          v136 = *(v0 + 520);
          sub_1D2872028();
          v137 = v164(v135, v136);
          v138 = *(v0 + 544);
          if (v137 == v173)
          {
            v139 = *(v0 + 520);

            v170(v138, v139);
            v132 = *v138;
            v133 = v138[1];
          }

          else
          {
            (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
          }

          ++v134;
        }

        while (v134 != *(v0 + 560));

        if (v133)
        {
LABEL_133:
          *(v0 + 656) = v133;
          v148 = v169;
          if (v132 != v53 || (v149 = v169, v133 != v169))
          {
            if ((sub_1D2879618() & 1) == 0)
            {
              v151 = swift_task_alloc();
              *(v0 + 680) = v151;
              *v151 = v0;
              v151[1] = sub_1D26FCDE8;
              v152 = v0 + 136;
              v153 = v132;
              v154 = v133;
              v155 = v53;
              v156 = v169;
              goto LABEL_150;
            }

            v149 = v133;
          }
        }

        else
        {
          v149 = 0;
          v148 = v169;
        }

        *(v0 + 664) = v149;
        v159 = swift_task_alloc();
        *(v0 + 672) = v159;
        *v159 = v0;
        v159[1] = sub_1D26FB5E0;
        v129 = v0 + 96;
        v130 = v53;
        v131 = v148;
        goto LABEL_146;
      }

      v60 = *(v0 + 448);

      *v60 = v53;
      v60[1] = v54;
      swift_storeEnumTagMultiPayload();
      v25 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D27CC818(0, v57[2] + 1, 1, v57);
      }

      v50 = v25[2];
      v61 = v25[3];
      v51 = v50 + 1;
      if (v50 >= v61 >> 1)
      {
        v25 = sub_1D27CC818((v61 > 1), v50 + 1, 1, v25);
      }

      v33 = *(v0 + 448);
      goto LABEL_24;
    }

    if (v41 == *(v0 + 748))
    {
      break;
    }

    if (v41 != *(v0 + 752))
    {
      if (v41 == *(v0 + 756))
      {
        v76 = *(v0 + 552);
        v77 = *(v0 + 408);
        v78 = *(v0 + 352);
        v80 = *(v0 + 336);
        v79 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v76, *(v0 + 520));
        (*(v79 + 32))(v78, v76, v80);
        (*(v79 + 16))(v77, v78, v80);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v82 = v25[2];
        v81 = v25[3];
        v83 = v82 + 1;
        if (v82 >= v81 >> 1)
        {
          v25 = sub_1D27CC818((v81 > 1), v82 + 1, 1, v25);
        }

        v84 = *(v0 + 408);
        v85 = *(v0 + 368);
        v87 = *(v0 + 344);
        v86 = *(v0 + 352);
        v88 = *(v0 + 336);
      }

      else
      {
        if (v41 != *(v0 + 760))
        {
          if (v41 == *(v0 + 764))
          {
            v95 = *(v0 + 552);
            v96 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v95, *(v0 + 520));
            v97 = *v95;
            *v96 = v97;
            swift_storeEnumTagMultiPayload();
            v98 = v97;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v100 = v25[2];
            v99 = v25[3];
            v101 = v100 + 1;
            if (v100 >= v99 >> 1)
            {
              v25 = sub_1D27CC818((v99 > 1), v100 + 1, 1, v25);
            }

            v102 = *(v0 + 392);
          }

          else if (v41 == *(v0 + 768))
          {
            v103 = *(v0 + 552);
            v104 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v103, *(v0 + 520));
            v105 = *v103;
            v106 = type metadata accessor for PlaygroundImage(0);
            v107 = (v104 + v106[9]);
            *v107 = 0u;
            v107[1] = 0u;
            *(v104 + v106[10]) = xmmword_1D28809A0;
            v108 = v106[11];
            v109 = sub_1D2873AA8();
            (*(*(v109 - 8) + 56))(v104 + v108, 1, 1, v109);
            *v104 = v105;
            *(v104 + 8) = 0;
            *(v104 + 24) = 1;
            *(v104 + 16) = 0;
            *(v104 + 32) = 0;
            *(v104 + 40) = 0;
            *(v104 + v106[12]) = 0;
            v98 = v105;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v100 = v25[2];
            v110 = v25[3];
            v101 = v100 + 1;
            if (v100 >= v110 >> 1)
            {
              v25 = sub_1D27CC818((v110 > 1), v100 + 1, 1, v25);
            }

            v102 = *(v0 + 384);
          }

          else
          {
            if (v41 == *(v0 + 772))
            {
              v112 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v112, *(v0 + 520));
              v114 = *v112;
              v113 = v112[1];
              v115 = HIBYTE(v113) & 0xF;
              if ((v113 & 0x2000000000000000) == 0)
              {
                v115 = v114 & 0xFFFFFFFFFFFFLL;
              }

              if (!v115 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_71;
              }

              v126 = *(v0 + 416);
              *v126 = v114;
              v126[1] = v113;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
              }

              v50 = v25[2];
              v127 = v25[3];
              v51 = v50 + 1;
              if (v50 >= v127 >> 1)
              {
                v25 = sub_1D27CC818((v127 > 1), v50 + 1, 1, v25);
              }

              v33 = *(v0 + 416);
              goto LABEL_24;
            }

            v116 = *(v0 + 552);
            v117 = *(v0 + 528);
            v118 = *(v0 + 520);
            if (v41 != *(v0 + 776))
            {
              (*(v117 + 8))(*(v0 + 552), v118);
              goto LABEL_26;
            }

            v119 = *(v0 + 376);
            (*(v117 + 96))(*(v0 + 552), v118);
            v120 = *v116;
            v121 = type metadata accessor for PlaygroundImage(0);
            *(v119 + 32) = 0;
            *(v119 + 40) = 0;
            v122 = (v119 + v121[9]);
            *v122 = 0u;
            v122[1] = 0u;
            *(v119 + v121[10]) = xmmword_1D28809A0;
            v123 = v121[11];
            v124 = sub_1D2873AA8();
            (*(*(v124 - 8) + 56))(v119 + v123, 1, 1, v124);
            *v119 = v120;
            *(v119 + 8) = 3;
            *(v119 + 24) = 1;
            *(v119 + 16) = 0;
            *(v119 + v121[12]) = 0;
            v98 = v120;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
            }

            v100 = v25[2];
            v125 = v25[3];
            v101 = v100 + 1;
            if (v100 >= v125 >> 1)
            {
              v25 = sub_1D27CC818((v125 > 1), v100 + 1, 1, v25);
            }

            v102 = *(v0 + 376);
          }

          v111 = *(v0 + 368);

          v25[2] = v101;
          v35 = v25 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v100;
          v33 = v102;
          goto LABEL_25;
        }

        v89 = *(v0 + 552);
        v90 = *(v0 + 400);
        v91 = *(v0 + 320);
        v92 = *(v0 + 328);
        v93 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v89, *(v0 + 520));
        (*(v91 + 32))(v92, v89, v93);
        (*(v91 + 16))(v90, v92, v93);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
        }

        v82 = v25[2];
        v94 = v25[3];
        v83 = v82 + 1;
        if (v82 >= v94 >> 1)
        {
          v25 = sub_1D27CC818((v94 > 1), v82 + 1, 1, v25);
        }

        v84 = *(v0 + 400);
        v85 = *(v0 + 368);
        v87 = *(v0 + 320);
        v86 = *(v0 + 328);
        v88 = *(v0 + 312);
      }

      (*(v87 + 8))(v86, v88);
      v25[2] = v83;
      v35 = v25 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v82;
      v33 = v84;
      goto LABEL_25;
    }

    v70 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v70, *(v0 + 520));
    v43 = *v70;
    *(v0 + 616) = *v70;
    v44 = v70[1];
    *(v0 + 624) = v44;
    if ((v44 & 0x2000000000000000) != 0)
    {
      v71 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v71 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v71)
    {
      goto LABEL_71;
    }

    v72 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v73 = sub_1D2878068();
    [v72 setString_];

    *v162 = 0;
    *(swift_task_alloc() + 16) = v162;
    sub_1D2878958();

    if (*v162 >= 50)
    {
      v150 = swift_task_alloc();
      *(v0 + 632) = v150;
      *v150 = v0;
      v150[1] = sub_1D26F9E18;
      v129 = v0 + 176;
LABEL_118:
      v130 = v43;
LABEL_119:
      v131 = v44;
LABEL_146:

      return VisualSummarizationClient.summarizeContext(from:)(v129, v130, v131);
    }

    v74 = *(v0 + 472);
    *v74 = v43;
    v74[1] = v44;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v25[2] + 1, 1, v25);
    }

    v50 = v25[2];
    v75 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v75 >> 1)
    {
      v25 = sub_1D27CC818((v75 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 472);
LABEL_24:
    v34 = *(v0 + 368);
    v25[2] = v51;
    v35 = v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v50;
LABEL_25:
    sub_1D2701854(v33, v35);
LABEL_26:
    v30 = *(v0 + 576) + 1;
    if (v30 == *(v0 + 560))
    {
      goto LABEL_19;
    }
  }

  v62 = *(v0 + 552);
  v167 = *(*(v0 + 528) + 96);
  v167(v62, *(v0 + 520));
  v63 = *v62;
  *(v0 + 688) = *v62;
  v44 = v62[1];
  *(v0 + 696) = v44;
  if ((v44 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v44) & 0xF;
  }

  else
  {
    v64 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {
LABEL_70:

LABEL_71:

    goto LABEL_26;
  }

  v171 = v62[3];
  v65 = v25;
  v165 = v62[2];
  v66 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v67 = sub_1D2878068();
  [v66 setString_];

  *v163 = 0;
  *(swift_task_alloc() + 16) = v163;
  sub_1D2878958();

  if (*v163 < 10)
  {
    v68 = *(v0 + 424);

    *v68 = v63;
    v68[1] = v44;
    swift_storeEnumTagMultiPayload();
    v25 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CC818(0, v65[2] + 1, 1, v65);
    }

    v50 = v25[2];
    v69 = v25[3];
    v51 = v50 + 1;
    if (v50 >= v69 >> 1)
    {
      v25 = sub_1D27CC818((v69 > 1), v50 + 1, 1, v25);
    }

    v33 = *(v0 + 424);
    goto LABEL_24;
  }

  v140 = v165;
  v174 = v63;
  if (!v171)
  {
    v171 = 0;
    v141 = 0;
    do
    {
      v142 = *(v0 + 772);
      v143 = *(v0 + 536);
      v144 = *(v0 + 520);
      sub_1D2872028();
      v145 = v40(v143, v144);
      v146 = *(v0 + 536);
      if (v145 == v142)
      {
        v147 = *(v0 + 520);

        v167(v146, v147);
        v140 = *v146;
        v171 = v146[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v141;
    }

    while (v141 != *(v0 + 560));

    v157 = v171;
    if (!v171)
    {
      v158 = v174;
      goto LABEL_154;
    }
  }

  v158 = v174;
  *(v0 + 704) = v171;
  if (v140 == v174)
  {
    v157 = v44;
    if (v171 == v44)
    {
      goto LABEL_154;
    }
  }

  if (sub_1D2879618())
  {
    v157 = v171;
LABEL_154:
    *(v0 + 712) = v157;
    v161 = swift_task_alloc();
    *(v0 + 720) = v161;
    *v161 = v0;
    v161[1] = sub_1D26FE5F0;
    v129 = v0 + 16;
    v130 = v158;
    goto LABEL_119;
  }

  v160 = swift_task_alloc();
  *(v0 + 728) = v160;
  *v160 = v0;
  v160[1] = sub_1D26FFDC4;
  v152 = v0 + 56;
  v153 = v140;
  v154 = v171;
  v155 = v174;
  v156 = v44;
LABEL_150:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v152, v153, v154, v155, v156);
}