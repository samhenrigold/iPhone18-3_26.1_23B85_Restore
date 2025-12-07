unint64_t sub_1E67A3D98()
{
  result = qword_1EE2EA9B8;
  if (!qword_1EE2EA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9B8);
  }

  return result;
}

unint64_t sub_1E67A3DEC()
{
  result = qword_1ED0980F0;
  if (!qword_1ED0980F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980F0);
  }

  return result;
}

unint64_t sub_1E67A3E40()
{
  result = qword_1ED0980F8;
  if (!qword_1ED0980F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0980F8);
  }

  return result;
}

unint64_t sub_1E67A3E94()
{
  result = qword_1EE2EB698;
  if (!qword_1EE2EB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB698);
  }

  return result;
}

uint64_t CanvasItemContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v262 = a8;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v15 = type metadata accessor for CanvasItemContent.WideBrickCodingKeys(255, &v368);
  WitnessTable = swift_getWitnessTable();
  v360 = v15;
  v355 = WitnessTable;
  v278 = sub_1E68B3A20();
  v279 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278, v17);
  v324 = &v256 - v18;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v19 = type metadata accessor for CanvasItemContent.ViewBuilderCodingKeys(255, &v368);
  v20 = swift_getWitnessTable();
  v354 = v19;
  v353 = v20;
  v276 = sub_1E68B3A20();
  v275 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276, v21);
  v323 = &v256 - v22;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v23 = type metadata accessor for CanvasItemContent.VerticalStackCardCodingKeys(255, &v368);
  v24 = swift_getWitnessTable();
  v352 = v23;
  v351 = v24;
  v297 = sub_1E68B3A20();
  v280 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297, v25);
  v336 = &v256 - v26;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v27 = type metadata accessor for CanvasItemContent.TallCardCodingKeys(255, &v368);
  v28 = swift_getWitnessTable();
  v350 = v27;
  v349 = v28;
  v295 = sub_1E68B3A20();
  v277 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295, v29);
  v337 = &v256 - v30;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v31 = type metadata accessor for CanvasItemContent.SummaryCardCodingKeys(255, &v368);
  v32 = swift_getWitnessTable();
  v348 = v31;
  v347 = v32;
  v304 = sub_1E68B3A20();
  v281 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304, v33);
  v325 = &v256 - v34;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v35 = type metadata accessor for CanvasItemContent.StandardVerticalStackCodingKeys(255, &v368);
  v36 = swift_getWitnessTable();
  v346 = v35;
  v345 = v36;
  v303 = sub_1E68B3A20();
  v289 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303, v37);
  v335 = &v256 - v38;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v39 = type metadata accessor for CanvasItemContent.StandardHorizontalStackCodingKeys(255, &v368);
  v40 = swift_getWitnessTable();
  v344 = v39;
  v343 = v40;
  v290 = sub_1E68B3A20();
  v264 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290, v41);
  v326 = &v256 - v42;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v43 = type metadata accessor for CanvasItemContent.StandardCardCodingKeys(255, &v368);
  v44 = swift_getWitnessTable();
  v342 = v43;
  v341 = v44;
  v302 = sub_1E68B3A20();
  v288 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302, v45);
  v334 = &v256 - v46;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v47 = type metadata accessor for CanvasItemContent.SmallDynamicBrickCodingKeys(255, &v368);
  v48 = swift_getWitnessTable();
  v340 = v47;
  v322 = v48;
  v287 = sub_1E68B3A20();
  v274 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287, v49);
  v333 = &v256 - v50;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v51 = type metadata accessor for CanvasItemContent.MonogramVerticalStackCodingKeys(255, &v368);
  v52 = swift_getWitnessTable();
  v339 = v51;
  v321 = v52;
  v294 = sub_1E68B3A20();
  v273 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294, v53);
  v330 = &v256 - v54;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v55 = type metadata accessor for CanvasItemContent.MediumDynamicBrickCodingKeys(255, &v368);
  v56 = swift_getWitnessTable();
  v320 = v55;
  v319 = v56;
  v285 = sub_1E68B3A20();
  v272 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285, v57);
  v332 = &v256 - v58;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v59 = type metadata accessor for CanvasItemContent.LargeBrickCodingKeys(255, &v368);
  v60 = swift_getWitnessTable();
  v318 = v59;
  v317 = v60;
  v271 = sub_1E68B3A20();
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271, v61);
  v331 = &v256 - v62;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v63 = type metadata accessor for CanvasItemContent.InfoActionCardCodingKeys(255, &v368);
  v64 = swift_getWitnessTable();
  v316 = v63;
  v315 = v64;
  v307 = sub_1E68B3A20();
  v269 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307, v65);
  v329 = &v256 - v66;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v67 = type metadata accessor for CanvasItemContent.FullWidthStageCodingKeys(255, &v368);
  v68 = swift_getWitnessTable();
  v314 = v67;
  v313 = v68;
  v292 = sub_1E68B3A20();
  v286 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292, v69);
  v328 = &v256 - v70;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v71 = type metadata accessor for CanvasItemContent.FullWidthItemCodingKeys(255, &v368);
  v72 = swift_getWitnessTable();
  v311 = v71;
  v310 = v72;
  v267 = sub_1E68B3A20();
  v266 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267, v73);
  v312 = &v256 - v74;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v75 = type metadata accessor for CanvasItemContent.ActionCardCodingKeys(255, &v368);
  v76 = swift_getWitnessTable();
  v309 = v75;
  v308 = v76;
  v291 = sub_1E68B3A20();
  v263 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291, v77);
  v327 = &v256 - v78;
  *&v368 = a2;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  *(&v369 + 1) = a5;
  v370 = a6;
  v371 = a7;
  v79 = type metadata accessor for CanvasItemContent.CodingKeys(255, &v368);
  v364 = swift_getWitnessTable();
  v362 = sub_1E68B3A20();
  v361 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362, v80);
  v367 = &v256 - v81;
  *&v368 = a2;
  v299 = a2;
  v338 = a3;
  *(&v368 + 1) = a3;
  *&v369 = a4;
  v296 = a4;
  v359 = a5;
  *(&v369 + 1) = a5;
  v370 = a6;
  v363 = a6;
  v356 = a7;
  v371 = a7;
  v357 = type metadata accessor for CanvasItemContent(0, &v368);
  v261 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357, v82);
  v293 = &v256 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84, v85);
  v265 = &v256 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v284 = &v256 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v306 = &v256 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v298 = &v256 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v283 = &v256 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v305 = &v256 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v282 = &v256 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v301 = &v256 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v268 = &v256 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v300 = &v256 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v117 = &v256 - v116;
  MEMORY[0x1EEE9AC00](v118, v119);
  v121 = &v256 - v120;
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = &v256 - v124;
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = &v256 - v128;
  MEMORY[0x1EEE9AC00](v130, v131);
  v133 = (&v256 - v132);
  MEMORY[0x1EEE9AC00](v134, v135);
  v137 = &v256 - v136;
  v138 = a1[3];
  v366 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v138);
  *&v358 = v79;
  v139 = TupleTypeMetadata3;
  sub_1E68B3BC0();
  if (v139)
  {
    goto LABEL_9;
  }

  v257 = v129;
  v259 = v121;
  v258 = v117;
  v364 = v133;
  v260 = v125;
  TupleTypeMetadata3 = 0;
  v140 = v363;
  v256 = v137;
  v141 = v362;
  *&v368 = sub_1E68B3A10();
  sub_1E68B33B0();
  swift_getWitnessTable();
  *&v375 = sub_1E68B37A0();
  *(&v375 + 1) = v142;
  *&v376 = v143;
  *(&v376 + 1) = v144;
  sub_1E68B3790();
  swift_getWitnessTable();
  sub_1E68B36B0();
  if (v368 == 16 || (v358 = v375, v368 = v375, v369 = v376, (sub_1E68B36E0() & 1) == 0))
  {
    v152 = sub_1E68B3870();
    swift_allocError();
    v154 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v154 = v357;
    v155 = v367;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v152 - 8) + 104))(v154, *MEMORY[0x1E69E6AF8], v152);
    swift_willThrow();
    (*(v361 + 8))(v155, v141);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v156 = v366;
    return __swift_destroy_boxed_opaque_existential_1(v156);
  }

  v145 = v358;
  v146 = v367;
  switch(v140)
  {
    case 1:
      LOBYTE(v368) = 1;
      v186 = v312;
      v187 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v187)
      {
        goto LABEL_41;
      }

      type metadata accessor for FullWidthItemDescriptor(0, v338, v140, v188);
      swift_getWitnessTable();
      v189 = v257;
      v190 = v267;
      sub_1E68B3A00();
      v191 = v361;
      TupleTypeMetadata3 = 0;
      (*(v266 + 8))(v186, v190);
      (*(v191 + 8))(v146, v141);
      swift_unknownObjectRelease();
      v253 = v357;
      goto LABEL_44;
    case 2:
      LOBYTE(v368) = 2;
      v175 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v175)
      {
        goto LABEL_12;
      }

      v377 = 0;
      sub_1E676CE74();
      v176 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v256;
      MEMORY[0x1EEE9AC00](v176, v219);
      strcpy(&v256 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v368 = &type metadata for FullWidthStageViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = &type metadata for FullWidthStageViewStyle;
      *(&v369 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v370 = *(&v369 + 1);
      v371 = *(&v369 + 1);
      v372 = sub_1E68B3750();
      v373 = v372;
      v374 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v221 = *(TupleTypeMetadata + 48);
      LOBYTE(v368) = 1;
      sub_1E68B3A00();
      TupleTypeMetadata3 = v221;
      LOBYTE(v368) = 2;
      sub_1E67AA500();
      sub_1E68B3A00();
      v360 = v145;
      v245 = *(TupleTypeMetadata + 80);
      sub_1E68B1820();
      LOBYTE(v368) = 3;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      v364 = v245;
      sub_1E68B39B0();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      LOBYTE(v368) = 5;
      sub_1E68B39B0();
      LOBYTE(v368) = 6;
      sub_1E68B39B0();
      LOBYTE(v368) = 7;
      sub_1E68B39B0();
      LOBYTE(v368) = 8;
      sub_1E68B39B0();
      (*(v286 + 8))(v328, v292);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v254 = v260;
      v253 = v357;
      swift_storeEnumTagMultiPayload();
      v249 = v254;
      v255 = v366;
      TupleTypeMetadata3 = 0;
      goto LABEL_46;
    case 3:
      LOBYTE(v368) = 3;
      v181 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v181)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CE20();
      v182 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v182, v223);
      strcpy(&v256 - 48, "layout title description actionButton ");
      *&v368 = &type metadata for InfoActionCardViewLayout;
      *(&v368 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v369 = *(&v368 + 1);
      *(&v369 + 1) = sub_1E68B3750();
      swift_getTupleTypeMetadata();
      sub_1E68B1820();
      LOBYTE(v368) = 1;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      v224 = v329;
      sub_1E68B39B0();
      v360 = v145;
      LOBYTE(v368) = 2;
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      v246 = v259;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      v247 = v246;
      (*(v269 + 8))(v224, v307);
      (*(v361 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v253 = v357;
      goto LABEL_56;
    case 4:
      LOBYTE(v368) = 4;
      v162 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v162)
      {
        goto LABEL_41;
      }

      v360 = v145;
      v377 = 0;
      v163 = v338;
      v164 = v271;
      v165 = sub_1E68B3A00();
      v166 = v361;
      MEMORY[0x1EEE9AC00](v165, v211);
      TupleTypeMetadata3 = 0;
      strcpy(&v256 - 48, "artwork footnote subtitle title ");
      *&v368 = v163;
      *(&v368 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v369 = *(&v368 + 1);
      *(&v369 + 1) = *(&v368 + 1);
      v212 = *(swift_getTupleTypeMetadata() + 48);
      sub_1E68B1820();
      LOBYTE(v368) = 1;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      v213 = TupleTypeMetadata3;
      sub_1E68B39B0();
      if (v213)
      {
        (*(v270 + 8))(v331, v164);
        (*(v166 + 8))(v367, v362);
        swift_unknownObjectRelease();
        (*(*(v163 - 8) + 8))(v258, v163);
        v156 = v366;
        return __swift_destroy_boxed_opaque_existential_1(v156);
      }

      v364 = v212;
      LOBYTE(v368) = 2;
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      v247 = v258;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      (*(v270 + 8))(v331, v164);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v253 = v357;
LABEL_56:
      swift_storeEnumTagMultiPayload();
      v249 = v247;
LABEL_45:
      v255 = v366;
      goto LABEL_46;
    case 5:
      LOBYTE(v368) = 5;
      v192 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v192)
      {
        goto LABEL_41;
      }

      v360 = v145;
      v377 = 0;
      v193 = v338;
      v194 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v194, v231);
      strcpy(&v256 - 48, "artwork caption displayStyle layout title ");
      *&v368 = v193;
      *(&v368 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v369 = &type metadata for DynamicBrickDisplayStyle;
      *(&v369 + 1) = &type metadata for DynamicBrickViewLayout;
      v370 = *(&v368 + 1);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      sub_1E68B1820();
      LOBYTE(v368) = 1;
      v232 = sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      v364 = v232;
      LOBYTE(v368) = 2;
      sub_1E67AA4AC();
      sub_1E68B3A00();
      LOBYTE(v368) = 3;
      sub_1E676CD78();
      sub_1E68B3A00();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      (*(v272 + 8))(v332, v285);
      (*(v361 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v252 = v300;
      v253 = v357;
      goto LABEL_57;
    case 6:
      LOBYTE(v368) = 6;
      v197 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v197)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CDCC();
      v198 = v268;
      v199 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v199, v235);
      strcpy(&v256 - 48, "layout artwork title subtitle ");
      *&v368 = &type metadata for MonogramVerticalStackViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = v369;
      swift_getTupleTypeMetadata();
      LOBYTE(v368) = 1;
      v236 = v294;
      sub_1E68B3A00();
      v360 = v145;
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      (*(v273 + 8))(v330, v236);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v253 = v357;
      swift_storeEnumTagMultiPayload();
      v249 = v198;
      goto LABEL_45;
    case 7:
      LOBYTE(v368) = 7;
      v183 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v183)
      {
        goto LABEL_41;
      }

      v360 = v145;
      v377 = 0;
      v184 = v338;
      v185 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v185, v225);
      strcpy(&v256 - 48, "artwork caption displayStyle layout title ");
      *&v368 = v184;
      *(&v368 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v369 = &type metadata for DynamicBrickDisplayStyle;
      *(&v369 + 1) = &type metadata for DynamicBrickViewLayout;
      v370 = *(&v368 + 1);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      sub_1E68B1820();
      LOBYTE(v368) = 1;
      v226 = sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      v364 = v226;
      LOBYTE(v368) = 2;
      sub_1E67AA4AC();
      sub_1E68B3A00();
      LOBYTE(v368) = 3;
      sub_1E676CD78();
      sub_1E68B3A00();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      (*(v274 + 8))(v333, v287);
      (*(v361 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v252 = v301;
      v253 = v357;
      goto LABEL_57;
    case 8:
      LOBYTE(v368) = 8;
      v202 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v202)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CD24();
      v205 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v256;
      MEMORY[0x1EEE9AC00](v205, v239);
      strcpy(&v256 - 48, "layout artwork title subtitle caption ");
      *&v368 = &type metadata for StandardCardViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = v369;
      v370 = v369;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v240 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v368) = 1;
      sub_1E68B3A00();
      v364 = v240;
      v360 = v145;
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      sub_1E68B39B0();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      (*(v288 + 8))(v334, v302);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v252 = v282;
      v253 = v357;
      goto LABEL_57;
    case 9:
      LOBYTE(v368) = 9;
      v170 = v326;
      v171 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v171)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CCD0();
      v172 = v290;
      v173 = sub_1E68B3A00();
      v364 = &v256;
      MEMORY[0x1EEE9AC00](v173, v174);
      TupleTypeMetadata3 = 0;
      strcpy(&v256 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v368 = &type metadata for StandardHorizontalStackViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = v369;
      v370 = v369;
      v371 = v369;
      v372 = sub_1E68B3750();
      v216 = swift_getTupleTypeMetadata();
      v217 = TupleTypeMetadata3;
      v364 = v216;
      v218 = *(v216 + 48);
      LOBYTE(v368) = 1;
      sub_1E68B3A00();
      if (v217)
      {
        (*(v264 + 8))(v170, v172);
        (*(v361 + 8))(v146, v141);
        swift_unknownObjectRelease();
        v156 = v366;
        return __swift_destroy_boxed_opaque_existential_1(v156);
      }

      v363 = v218;
      v360 = v145;
      v242 = v364;
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      v244 = *(v242 + 20);
      LOBYTE(v368) = 3;
      *&v358 = v244;
      sub_1E68B39B0();
      v250 = *(v242 + 24);
      LOBYTE(v368) = 4;
      v356 = v250;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      LOBYTE(v368) = 5;
      sub_1E68B39B0();
      LOBYTE(v368) = 6;
      sub_1E68B39B0();
      (*(v264 + 8))(v326, v290);
      (*(v361 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v252 = v305;
      v253 = v357;
      goto LABEL_57;
    case 10:
      LOBYTE(v368) = 10;
      v200 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v200)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CC7C();
      v201 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v256;
      MEMORY[0x1EEE9AC00](v201, v237);
      strcpy(&v256 - 48, "layout artwork title subtitle caption ");
      *&v368 = &type metadata for StandardVerticalStackViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = v369;
      v370 = v369;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v238 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v368) = 1;
      sub_1E68B3A00();
      v364 = v238;
      v360 = v145;
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      sub_1E68B39B0();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      (*(v289 + 8))(v335, v303);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v252 = v283;
      v253 = v357;
      goto LABEL_57;
    case 11:
      LOBYTE(v368) = 11;
      v160 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v160)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CC28();
      v161 = sub_1E68B3A00();
      TupleTypeMetadata3 = &v256;
      MEMORY[0x1EEE9AC00](v161, v209);
      strcpy(&v256 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v368 = &type metadata for SummaryCardViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = v369;
      v370 = v369;
      v371 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88, &qword_1E68B9CF0);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v210 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v368) = 1;
      sub_1E68B3A00();
      v364 = v210;
      v360 = v145;
      v241 = *(TupleTypeMetadata3 + 16);
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      v363 = v241;
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      sub_1E68B39B0();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      sub_1E68B1A10();
      LOBYTE(v368) = 5;
      sub_1E67BDEF8(&qword_1ED098108, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB8]);
      sub_1E68B39B0();
      (*(v281 + 8))(v325, v304);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v252 = v298;
      v253 = v357;
      goto LABEL_57;
    case 12:
      LOBYTE(v368) = 12;
      v167 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v167)
      {
        goto LABEL_41;
      }

      v360 = v145;
      v377 = 0;
      sub_1E676CBD4();
      v168 = sub_1E68B3A00();
      v169 = v361;
      MEMORY[0x1EEE9AC00](v168, v214);
      strcpy(&v256 - 48, "layout artwork title overlay ");
      *&v368 = &type metadata for TallCardViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = &type metadata for Overlay;
      swift_getTupleTypeMetadata();
      LOBYTE(v368) = 1;
      v215 = v295;
      sub_1E68B3A00();
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      sub_1E67AA458();
      sub_1E68B3A00();
      TupleTypeMetadata3 = 0;
      (*(v277 + 8))(v337, v215);
      (*(v169 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v248 = v306;
      v253 = v357;
      swift_storeEnumTagMultiPayload();
      v249 = v248;
      goto LABEL_45;
    case 13:
      LOBYTE(v368) = 13;
      v195 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v195)
      {
        goto LABEL_41;
      }

      v377 = 0;
      sub_1E676CB80();
      v196 = sub_1E68B3A00();
      MEMORY[0x1EEE9AC00](v196, v233);
      strcpy(&v256 - 48, "layout artwork title subtitle caption ");
      *&v368 = &type metadata for VerticalStackCardLayout;
      *(&v368 + 1) = v338;
      *&v369 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v369 + 1) = v369;
      v370 = v369;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
      v234 = *(TupleTypeMetadata3 + 12);
      LOBYTE(v368) = 1;
      sub_1E68B3A00();
      v364 = v234;
      v360 = v145;
      sub_1E68B1820();
      LOBYTE(v368) = 2;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      LOBYTE(v368) = 3;
      sub_1E68B39B0();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      (*(v280 + 8))(v336, v297);
      (*(v361 + 8))(v367, v362);
      swift_unknownObjectRelease();
      v252 = v284;
      v253 = v357;
      goto LABEL_57;
    case 14:
      LOBYTE(v368) = 14;
      v158 = v323;
      v159 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v159)
      {
        goto LABEL_12;
      }

      v189 = v265;
      v203 = v276;
      sub_1E68B3A00();
      v204 = v361;
      TupleTypeMetadata3 = 0;
      (*(v275 + 8))(v158, v203);
      (*(v204 + 8))(v146, v141);
      swift_unknownObjectRelease();
      v253 = v357;
LABEL_44:
      swift_storeEnumTagMultiPayload();
      v249 = v189;
      goto LABEL_45;
    case 15:
      LOBYTE(v368) = 15;
      v177 = v324;
      v178 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v178)
      {
        goto LABEL_41;
      }

      v360 = v145;
      LOBYTE(v368) = 0;
      v179 = v177;
      v180 = v278;
      sub_1E68B3A00();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v222 = *(TupleTypeMetadata3 + 12);
      sub_1E68B1820();
      LOBYTE(v368) = 1;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      v364 = v222;
      LOBYTE(v368) = 2;
      v243 = v293;
      sub_1E68B39B0();
      TupleTypeMetadata3 = 0;
      (*(v279 + 8))(v179, v180);
      (*(v361 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v253 = v357;
      swift_storeEnumTagMultiPayload();
      v249 = v243;
      goto LABEL_45;
    default:
      LOBYTE(v368) = 0;
      v147 = v327;
      v148 = TupleTypeMetadata3;
      sub_1E68B3970();
      if (v148)
      {
LABEL_41:
        (*(v361 + 8))(v146, v141);
        goto LABEL_8;
      }

      v377 = 0;
      sub_1E676CEC8();
      v149 = v291;
      v150 = sub_1E68B3A00();
      v360 = &v256;
      MEMORY[0x1EEE9AC00](v150, v151);
      TupleTypeMetadata3 = 0;
      strcpy(&v256 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v368 = &type metadata for ActionCardViewLayout;
      *(&v368 + 1) = v338;
      *&v369 = &type metadata for ActionCardViewStyle;
      *(&v369 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v370 = *(&v369 + 1);
      v371 = *(&v369 + 1);
      v372 = v299;
      v373 = sub_1E68B3750();
      v227 = swift_getTupleTypeMetadata();
      v228 = *(v227 + 48);
      LOBYTE(v368) = 1;
      v229 = v228;
      v230 = TupleTypeMetadata3;
      sub_1E68B3A00();
      if (v230)
      {
        (*(v263 + 8))(v147, v149);
LABEL_12:
        (*(v361 + 8))(v146, v141);
        swift_unknownObjectRelease();
        v156 = v366;
        return __swift_destroy_boxed_opaque_existential_1(v156);
      }

      TupleTypeMetadata3 = v229;
      LOBYTE(v368) = 2;
      sub_1E67AA554();
      sub_1E68B3A00();
      v360 = v145;
      sub_1E68B1820();
      LOBYTE(v368) = 3;
      sub_1E67BDEF8(&qword_1ED097DB8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
      sub_1E68B39B0();
      LOBYTE(v368) = 4;
      sub_1E68B39B0();
      v251 = *(v227 + 112);
      LOBYTE(v368) = 5;
      v363 = v251;
      sub_1E68B39B0();
      LOBYTE(v368) = 6;
      sub_1E68B3A00();
      LOBYTE(v368) = 7;
      sub_1E68B39B0();
      (*(v263 + 8))(v327, v291);
      (*(v361 + 8))(v367, v141);
      swift_unknownObjectRelease();
      v252 = v364;
      v253 = v357;
LABEL_57:
      swift_storeEnumTagMultiPayload();
      v249 = v252;
      v255 = v366;
      TupleTypeMetadata3 = 0;
LABEL_46:
      v206 = v262;
      v207 = v256;
      v208 = *(v261 + 32);
      v208(v256, v249, v253);
      v208(v206, v207, v253);
      result = __swift_destroy_boxed_opaque_existential_1(v255);
      break;
  }

  return result;
}

unint64_t sub_1E67AA458()
{
  result = qword_1ED098100;
  if (!qword_1ED098100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098100);
  }

  return result;
}

unint64_t sub_1E67AA4AC()
{
  result = qword_1ED098110;
  if (!qword_1ED098110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098110);
  }

  return result;
}

unint64_t sub_1E67AA500()
{
  result = qword_1ED098118;
  if (!qword_1ED098118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098118);
  }

  return result;
}

unint64_t sub_1E67AA554()
{
  result = qword_1ED098120;
  if (!qword_1ED098120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098120);
  }

  return result;
}

uint64_t static CanvasItemContent.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v1998.f64[0] = a2;
  v1999 = a1;
  v1784 = sub_1E68B1A10();
  v1782 = *(v1784 - 8);
  MEMORY[0x1EEE9AC00](v1784, v14);
  v1763 = &v1755 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1775 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098128, &qword_1E68B9CF8);
  MEMORY[0x1EEE9AC00](v1775, v16);
  v1790 = &v1755 - v17;
  v1930 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E88, &qword_1E68B9CF0);
  MEMORY[0x1EEE9AC00](v1930, v18);
  v1770 = &v1755 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v1870 = &v1755 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v1940 = &v1755 - v25;
  v1932 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v1854 = &v1755 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v1755 = &v1755 - v31;
  v32 = sub_1E68B3750();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v1756 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v33);
  v1760 = &v1755 - v34;
  v1985 = v32;
  v1984 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v1757 = &v1755 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v1858 = &v1755 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v1931 = &v1755 - v43;
  v1929 = type metadata accessor for FullWidthItemDescriptor(0, a4, a7, v44);
  v1928 = *(v1929 - 8);
  MEMORY[0x1EEE9AC00](v1929, v45);
  v1853 = &v1755 - v46;
  v47 = sub_1E68B3750();
  v1827 = swift_getTupleTypeMetadata2();
  v1793 = *(v1827 - 8);
  MEMORY[0x1EEE9AC00](v1827, v48);
  v1771 = &v1755 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v1828 = &v1755 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v1764 = &v1755 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v1772 = &v1755 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v1765 = &v1755 - v61;
  v1986 = sub_1E68B1820();
  v1988 = *(v1986 - 8);
  MEMORY[0x1EEE9AC00](v1986, v62);
  v1898 = &v1755 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1990 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098130, &qword_1E68B9D00);
  MEMORY[0x1EEE9AC00](v1990, v64);
  v1833 = &v1755 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v1850 = &v1755 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v1804 = &v1755 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v1816 = &v1755 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v1844 = &v1755 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v1846 = &v1755 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v1791 = &v1755 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v1819 = &v1755 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v1842 = &v1755 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v1803 = &v1755 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v1818 = &v1755 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v1841 = &v1755 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v1774 = &v1755 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v1792 = &v1755 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v1845 = &v1755 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v1843 = &v1755 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v1802 = &v1755 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v1814 = &v1755 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v1840 = &v1755 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v1815 = &v1755 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v1849 = &v1755 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v1829 = &v1755 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v1839 = &v1755 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v1813 = &v1755 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v1848 = &v1755 - v137;
  MEMORY[0x1EEE9AC00](v138, v139);
  v1809 = &v1755 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v1831 = &v1755 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v1847 = &v1755 - v146;
  MEMORY[0x1EEE9AC00](v147, v148);
  v1832 = &v1755 - v149;
  MEMORY[0x1EEE9AC00](v150, v151);
  v1851 = &v1755 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v1781 = &v1755 - v155;
  MEMORY[0x1EEE9AC00](v156, v157);
  v1799 = &v1755 - v158;
  MEMORY[0x1EEE9AC00](v159, v160);
  v1826 = &v1755 - v161;
  MEMORY[0x1EEE9AC00](v162, v163);
  v1773 = &v1755 - v164;
  MEMORY[0x1EEE9AC00](v165, v166);
  v1794 = &v1755 - v167;
  MEMORY[0x1EEE9AC00](v168, v169);
  v1817 = &v1755 - v170;
  *&v1996.f64[0] = v47;
  v1992 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v171, v172);
  v1766 = &v1755 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v174, v175);
  v1869 = &v1755 - v176;
  MEMORY[0x1EEE9AC00](v177, v178);
  v1935 = &v1755 - v179;
  MEMORY[0x1EEE9AC00](v180, v181);
  v1801 = &v1755 - v182;
  MEMORY[0x1EEE9AC00](v183, v184);
  v1903 = &v1755 - v185;
  MEMORY[0x1EEE9AC00](v186, v187);
  v1965 = &v1755 - v188;
  MEMORY[0x1EEE9AC00](v189, v190);
  v1759 = &v1755 - v191;
  MEMORY[0x1EEE9AC00](v192, v193);
  v1762 = &v1755 - v194;
  MEMORY[0x1EEE9AC00](v195, v196);
  v1894 = &v1755 - v197;
  MEMORY[0x1EEE9AC00](v198, v199);
  v1893 = &v1755 - v200;
  MEMORY[0x1EEE9AC00](v201, v202);
  v1934 = &v1755 - v203;
  MEMORY[0x1EEE9AC00](v204, v205);
  v1937 = &v1755 - v206;
  MEMORY[0x1EEE9AC00](v207, v208);
  v1761 = &v1755 - v209;
  MEMORY[0x1EEE9AC00](v210, v211);
  v1852 = &v1755 - v212;
  MEMORY[0x1EEE9AC00](v213, v214);
  v1891 = &v1755 - v215;
  v1983 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v216, v217);
  v1783 = &v1755 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v219, v220);
  v1857 = &v1755 - v221;
  MEMORY[0x1EEE9AC00](v222, v223);
  v1892 = &v1755 - v224;
  *&v1997.f64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](*&v1997.f64[0], v225);
  v1812 = &v1755 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v227, v228);
  v1838 = &v1755 - v229;
  MEMORY[0x1EEE9AC00](v230, v231);
  v1905 = &v1755 - v232;
  MEMORY[0x1EEE9AC00](v233, v234);
  v1888 = &v1755 - v235;
  MEMORY[0x1EEE9AC00](v236, v237);
  v1952 = &v1755 - v238;
  MEMORY[0x1EEE9AC00](v239, v240);
  v1978 = &v1755 - v241;
  MEMORY[0x1EEE9AC00](v242, v243);
  v1780 = &v1755 - v244;
  MEMORY[0x1EEE9AC00](v245, v246);
  v1808 = &v1755 - v247;
  MEMORY[0x1EEE9AC00](v248, v249);
  v1825 = &v1755 - v250;
  MEMORY[0x1EEE9AC00](v251, v252);
  v1875 = &v1755 - v253;
  MEMORY[0x1EEE9AC00](v254, v255);
  v1906 = &v1755 - v256;
  MEMORY[0x1EEE9AC00](v257, v258);
  v1911 = &v1755 - v259;
  MEMORY[0x1EEE9AC00](v260, v261);
  v1876 = &v1755 - v262;
  MEMORY[0x1EEE9AC00](v263, v264);
  v1954 = &v1755 - v265;
  MEMORY[0x1EEE9AC00](v266, v267);
  v1889 = &v1755 - v268;
  MEMORY[0x1EEE9AC00](v269, v270);
  v1830 = &v1755 - v271;
  MEMORY[0x1EEE9AC00](v272, v273);
  v1856 = &v1755 - v274;
  MEMORY[0x1EEE9AC00](v275, v276);
  v1927 = &v1755 - v277;
  MEMORY[0x1EEE9AC00](v278, v279);
  v1779 = &v1755 - v280;
  MEMORY[0x1EEE9AC00](v281, v282);
  v1798 = &v1755 - v283;
  MEMORY[0x1EEE9AC00](v284, v285);
  v1824 = &v1755 - v286;
  MEMORY[0x1EEE9AC00](v287, v288);
  v1867 = &v1755 - v289;
  MEMORY[0x1EEE9AC00](v290, v291);
  v1882 = &v1755 - v292;
  MEMORY[0x1EEE9AC00](v293, v294);
  v1871 = &v1755 - v295;
  MEMORY[0x1EEE9AC00](v296, v297);
  v1943 = &v1755 - v298;
  MEMORY[0x1EEE9AC00](v299, v300);
  v1955 = &v1755 - v301;
  MEMORY[0x1EEE9AC00](v302, v303);
  v1972 = &v1755 - v304;
  MEMORY[0x1EEE9AC00](v305, v306);
  v1789 = &v1755 - v307;
  MEMORY[0x1EEE9AC00](v308, v309);
  v1807 = &v1755 - v310;
  MEMORY[0x1EEE9AC00](v311, v312);
  v1822 = &v1755 - v313;
  MEMORY[0x1EEE9AC00](v314, v315);
  v1873 = &v1755 - v316;
  MEMORY[0x1EEE9AC00](v317, v318);
  v1881 = &v1755 - v319;
  MEMORY[0x1EEE9AC00](v320, v321);
  v1866 = &v1755 - v322;
  MEMORY[0x1EEE9AC00](v323, v324);
  v1942 = &v1755 - v325;
  MEMORY[0x1EEE9AC00](v326, v327);
  v1960 = &v1755 - v328;
  MEMORY[0x1EEE9AC00](v329, v330);
  v1950 = &v1755 - v331;
  MEMORY[0x1EEE9AC00](v332, v333);
  v1768 = &v1755 - v334;
  MEMORY[0x1EEE9AC00](v335, v336);
  v1778 = &v1755 - v337;
  MEMORY[0x1EEE9AC00](v338, v339);
  v1797 = &v1755 - v340;
  MEMORY[0x1EEE9AC00](v341, v342);
  v1823 = &v1755 - v343;
  MEMORY[0x1EEE9AC00](v344, v345);
  v1897 = &v1755 - v346;
  MEMORY[0x1EEE9AC00](v347, v348);
  v1938 = &v1755 - v349;
  MEMORY[0x1EEE9AC00](v350, v351);
  v1908 = &v1755 - v352;
  MEMORY[0x1EEE9AC00](v353, v354);
  v1868 = &v1755 - v355;
  MEMORY[0x1EEE9AC00](v356, v357);
  v1939 = &v1755 - v358;
  MEMORY[0x1EEE9AC00](v359, v360);
  v1944 = &v1755 - v361;
  MEMORY[0x1EEE9AC00](v362, v363);
  v1956 = &v1755 - v364;
  MEMORY[0x1EEE9AC00](v365, v366);
  v1964 = &v1755 - v367;
  MEMORY[0x1EEE9AC00](v368, v369);
  v1777 = &v1755 - v370;
  MEMORY[0x1EEE9AC00](v371, v372);
  v1806 = &v1755 - v373;
  MEMORY[0x1EEE9AC00](v374, v375);
  v1821 = &v1755 - v376;
  MEMORY[0x1EEE9AC00](v377, v378);
  v1872 = &v1755 - v379;
  MEMORY[0x1EEE9AC00](v380, v381);
  v1904 = &v1755 - v382;
  MEMORY[0x1EEE9AC00](v383, v384);
  v1910 = &v1755 - v385;
  MEMORY[0x1EEE9AC00](v386, v387);
  v1874 = &v1755 - v388;
  MEMORY[0x1EEE9AC00](v389, v390);
  v1953 = &v1755 - v391;
  MEMORY[0x1EEE9AC00](v392, v393);
  v1971 = &v1755 - v394;
  MEMORY[0x1EEE9AC00](v395, v396);
  v1787 = &v1755 - v397;
  MEMORY[0x1EEE9AC00](v398, v399);
  v1837 = &v1755 - v400;
  MEMORY[0x1EEE9AC00](v401, v402);
  v1900 = &v1755 - v403;
  MEMORY[0x1EEE9AC00](v404, v405);
  v1862 = &v1755 - v406;
  MEMORY[0x1EEE9AC00](v407, v408);
  v1947 = &v1755 - v409;
  MEMORY[0x1EEE9AC00](v410, v411);
  v1962 = &v1755 - v412;
  MEMORY[0x1EEE9AC00](v413, v414);
  v1796 = &v1755 - v415;
  MEMORY[0x1EEE9AC00](v416, v417);
  v1820 = &v1755 - v418;
  MEMORY[0x1EEE9AC00](v419, v420);
  v1878 = &v1755 - v421;
  MEMORY[0x1EEE9AC00](v422, v423);
  v1860 = &v1755 - v424;
  MEMORY[0x1EEE9AC00](v425, v426);
  v1946 = &v1755 - v427;
  MEMORY[0x1EEE9AC00](v428, v429);
  v1970 = &v1755 - v430;
  MEMORY[0x1EEE9AC00](v431, v432);
  v1786 = &v1755 - v433;
  MEMORY[0x1EEE9AC00](v434, v435);
  v1836 = &v1755 - v436;
  MEMORY[0x1EEE9AC00](v437, v438);
  v1899 = &v1755 - v439;
  MEMORY[0x1EEE9AC00](v440, v441);
  v1861 = &v1755 - v442;
  MEMORY[0x1EEE9AC00](v443, v444);
  v1945 = &v1755 - v445;
  MEMORY[0x1EEE9AC00](v446, v447);
  v1961 = &v1755 - v448;
  MEMORY[0x1EEE9AC00](v449, v450);
  v1800 = &v1755 - v451;
  MEMORY[0x1EEE9AC00](v452, v453);
  v1811 = &v1755 - v454;
  MEMORY[0x1EEE9AC00](v455, v456);
  v1835 = &v1755 - v457;
  MEMORY[0x1EEE9AC00](v458, v459);
  v1901 = &v1755 - v460;
  MEMORY[0x1EEE9AC00](v461, v462);
  v1879 = &v1755 - v463;
  MEMORY[0x1EEE9AC00](v464, v465);
  v1887 = &v1755 - v466;
  MEMORY[0x1EEE9AC00](v467, v468);
  v1926 = &v1755 - v469;
  MEMORY[0x1EEE9AC00](v470, v471);
  v1963 = &v1755 - v472;
  MEMORY[0x1EEE9AC00](v473, v474);
  v1974 = &v1755 - v475;
  MEMORY[0x1EEE9AC00](v476, v477);
  v1810 = &v1755 - v478;
  MEMORY[0x1EEE9AC00](v479, v480);
  v1834 = &v1755 - v481;
  MEMORY[0x1EEE9AC00](v482, v483);
  v1909 = &v1755 - v484;
  MEMORY[0x1EEE9AC00](v485, v486);
  v1886 = &v1755 - v487;
  MEMORY[0x1EEE9AC00](v488, v489);
  v1973 = (&v1755 - v490);
  MEMORY[0x1EEE9AC00](v491, v492);
  v1975 = &v1755 - v493;
  MEMORY[0x1EEE9AC00](v494, v495);
  v1769 = &v1755 - v496;
  MEMORY[0x1EEE9AC00](v497, v498);
  v1785 = &v1755 - v499;
  MEMORY[0x1EEE9AC00](v500, v501);
  v1805 = &v1755 - v502;
  MEMORY[0x1EEE9AC00](v503, v504);
  v1936 = &v1755 - v505;
  MEMORY[0x1EEE9AC00](v506, v507);
  v1948 = &v1755 - v508;
  MEMORY[0x1EEE9AC00](v509, v510);
  v1951 = &v1755 - v511;
  MEMORY[0x1EEE9AC00](v512, v513);
  v1941 = &v1755 - v514;
  MEMORY[0x1EEE9AC00](v515, v516);
  v1949 = &v1755 - v517;
  MEMORY[0x1EEE9AC00](v518, v519);
  v1958 = &v1755 - v520;
  MEMORY[0x1EEE9AC00](v521, v522);
  v1767 = &v1755 - v523;
  MEMORY[0x1EEE9AC00](v524, v525);
  v1776 = &v1755 - v526;
  MEMORY[0x1EEE9AC00](v527, v528);
  v1795 = &v1755 - v529;
  MEMORY[0x1EEE9AC00](v530, v531);
  v1895 = &v1755 - v532;
  MEMORY[0x1EEE9AC00](v533, v534);
  v1890 = &v1755 - v535;
  MEMORY[0x1EEE9AC00](v536, v537);
  v1863 = &v1755 - v538;
  MEMORY[0x1EEE9AC00](v539, v540);
  v1896 = &v1755 - v541;
  MEMORY[0x1EEE9AC00](v542, v543);
  v1902 = &v1755 - v544;
  MEMORY[0x1EEE9AC00](v545, v546);
  v1907 = &v1755 - v547;
  v2000 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v548, v549);
  v1883 = &v1755 - ((v550 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v551, v552);
  v1880 = &v1755 - v553;
  MEMORY[0x1EEE9AC00](v554, v555);
  v1959 = &v1755 - v556;
  MEMORY[0x1EEE9AC00](v557, v558);
  v1864 = &v1755 - v559;
  MEMORY[0x1EEE9AC00](v560, v561);
  v1966 = &v1755 - v562;
  MEMORY[0x1EEE9AC00](v563, v564);
  v1877 = &v1755 - v565;
  MEMORY[0x1EEE9AC00](v566, v567);
  v1976 = &v1755 - v568;
  MEMORY[0x1EEE9AC00](v569, v570);
  v1969 = &v1755 - v571;
  MEMORY[0x1EEE9AC00](v572, v573);
  v1957 = &v1755 - v574;
  MEMORY[0x1EEE9AC00](v575, v576);
  v1977 = &v1755 - v577;
  MEMORY[0x1EEE9AC00](v578, v579);
  v1979 = &v1755 - v580;
  MEMORY[0x1EEE9AC00](v581, v582);
  v1859 = &v1755 - v583;
  MEMORY[0x1EEE9AC00](v584, v585);
  v1982 = &v1755 - v586;
  MEMORY[0x1EEE9AC00](v587, v588);
  v1884 = &v1755 - v589;
  MEMORY[0x1EEE9AC00](v590, v591);
  v1967 = &v1755 - v592;
  MEMORY[0x1EEE9AC00](v593, v594);
  v1968 = &v1755 - v595;
  MEMORY[0x1EEE9AC00](v596, v597);
  v1865 = &v1755 - v598;
  MEMORY[0x1EEE9AC00](v599, v600);
  v1885 = &v1755 - v601;
  MEMORY[0x1EEE9AC00](v602, v603);
  v1980 = &v1755 - v604;
  MEMORY[0x1EEE9AC00](v605, v606);
  v1981 = &v1755 - v607;
  MEMORY[0x1EEE9AC00](v608, v609);
  v1912 = &v1755 - v610;
  MEMORY[0x1EEE9AC00](v611, v612);
  v1913 = &v1755 - v613;
  v1987 = a3;
  *&v2051.f64[0] = a3;
  v2001 = a4;
  *&v2051.f64[1] = a4;
  v1933 = a5;
  *&v2052.f64[0] = a5;
  v1788 = a6;
  *&v2052.f64[1] = a6;
  v1991 = a7;
  *&v2053.f64[0] = a7;
  v1855 = a8;
  *&v2053.f64[1] = a8;
  v614 = type metadata accessor for CanvasItemContent(0, &v2051);
  v615 = *(v614 - 8);
  MEMORY[0x1EEE9AC00](v614, v616);
  v1921 = &v1755 - ((v617 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v618, v619);
  v1915 = &v1755 - v620;
  MEMORY[0x1EEE9AC00](v621, v622);
  v1924 = (&v1755 - v623);
  MEMORY[0x1EEE9AC00](v624, v625);
  v1918 = (&v1755 - v626);
  MEMORY[0x1EEE9AC00](v627, v628);
  v1923 = (&v1755 - v629);
  MEMORY[0x1EEE9AC00](v630, v631);
  v1920 = (&v1755 - v632);
  MEMORY[0x1EEE9AC00](v633, v634);
  v1925 = (&v1755 - v635);
  MEMORY[0x1EEE9AC00](v636, v637);
  v1922 = (&v1755 - v638);
  MEMORY[0x1EEE9AC00](v639, v640);
  v1919 = &v1755 - v641;
  MEMORY[0x1EEE9AC00](v642, v643);
  v1914 = (&v1755 - v644);
  MEMORY[0x1EEE9AC00](v645, v646);
  v1917 = &v1755 - v647;
  MEMORY[0x1EEE9AC00](v648, v649);
  v1916 = &v1755 - v650;
  MEMORY[0x1EEE9AC00](v651, v652);
  v654 = (&v1755 - v653);
  MEMORY[0x1EEE9AC00](v655, v656);
  v658 = (&v1755 - v657);
  MEMORY[0x1EEE9AC00](v659, v660);
  v662 = &v1755 - v661;
  MEMORY[0x1EEE9AC00](v663, v664);
  v666 = &v1755 - v665;
  v667 = swift_getTupleTypeMetadata2();
  v1994 = *(v667 - 8);
  v669 = MEMORY[0x1EEE9AC00](v667, v668);
  v671 = &v1755 - v670;
  v1995.f64[0] = v672;
  v673 = &v1755 + *(*&v672 + 48) - v670;
  v1993 = v615;
  v674 = *(v615 + 16);
  v674(&v1755 - v670, v1999, v614, v669);
  v1999 = v673;
  (v674)(v673, *&v1998.f64[0], v614);
  v2002 = v671;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v695 = v2002;
      (v674)(v662, v2002, v614);
      v992 = v1999;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v993 = v1928;
        v994 = v1853;
        v699 = v1929;
        (*(v1928 + 32))(v1853, v992, v1929);
        v700 = v614;
        v701 = static FullWidthItemDescriptor.== infix(_:_:)(v662, v994, v2001, v1991);
        v702 = *(v993 + 8);
        v702(v994, v699);
        v703 = v662;
        goto LABEL_53;
      }

      (*(v1928 + 8))(v662, v1929);
      goto LABEL_102;
    case 2u:
      v850 = v658;
      v851 = (v674)(v658, v2002, v614);
      v852 = v658[11];
      v2061 = v658[10];
      v2062 = v852;
      v853 = v658[13];
      v2063 = v658[12];
      v2064 = v853;
      v854 = v658[7];
      v2057 = v658[6];
      v2058 = v854;
      v855 = v658[9];
      v2059 = v658[8];
      v2060 = v855;
      v856 = v658[3];
      v2053 = v658[2];
      v2054 = v856;
      v857 = v658[5];
      v2055 = v658[4];
      v2056 = v857;
      v858 = v658[1];
      v2051 = *v658;
      v2052 = v858;
      MEMORY[0x1EEE9AC00](v851, v859);
      strcpy(&v1755 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v2035.f64[0] = &type metadata for FullWidthStageViewLayout;
      *&v2035.f64[1] = v2001;
      *&v2036.f64[0] = &type metadata for FullWidthStageViewStyle;
      v2036.f64[1] = v1997.f64[0];
      v2037.f64[0] = v1997.f64[0];
      v2037.f64[1] = v1997.f64[0];
      v860 = v1996.f64[0];
      v2038.f64[0] = v1996.f64[0];
      v2038.f64[1] = v1996.f64[0];
      v861 = v1985;
      *&v2039.f64[0] = v1985;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v863 = v614;
      v864 = TupleTypeMetadata;
      *&v1997.f64[0] = TupleTypeMetadata[12];
      LODWORD(v1979) = *(v658->f64 + TupleTypeMetadata[16]);
      v865 = TupleTypeMetadata[20];
      v866 = TupleTypeMetadata[24];
      v867 = TupleTypeMetadata[28];
      v868 = TupleTypeMetadata[32];
      v1982 = TupleTypeMetadata[36];
      *&v1998.f64[0] = TupleTypeMetadata[40];
      v869 = v1999;
      v1989 = v863;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v1984 + 8))(v850 + *&v1998.f64[0], v861);
        v1162 = v1992[1];
        v1162(&v1982[v850], *&v860);
        v1162(v850 + v868, *&v860);
        sub_1E6744A10(v850 + v867, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v850 + v866, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v850 + v865, &qword_1ED096E68, &qword_1E68B4840);
        (*(v2000 + 1))(v850 + *&v1997.f64[0], v2001);
        goto LABEL_101;
      }

      v870 = v869[4];
      v2040 = v869[5];
      v2039 = v870;
      v871 = v869[8];
      v2044 = v869[9];
      v2043 = v871;
      v872 = v869[6];
      v2042 = v869[7];
      v2041 = v872;
      v873 = v869[12];
      v2048 = v869[13];
      v2047 = v873;
      v874 = v869[10];
      v2046 = v869[11];
      v2045 = v874;
      v875 = v869[2];
      v2038 = v869[3];
      v2037 = v875;
      v876 = v869[1];
      v2035 = *v869;
      v2036 = v876;
      v1974 = v864[12];
      LODWORD(v1972) = *(v869->f64 + v864[16]);
      v1975 = v864[20];
      v1976 = v864[24];
      v1977 = v864[28];
      v1978 = v864[32];
      v1994 = v864[36];
      *&v1995.f64[0] = v864[40];
      v1973 = *(v2000 + 4);
      (v1973)(v1981, v850 + *&v1997.f64[0], v2001);
      sub_1E6761420(v850 + v865, v1958, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v850 + v866, v1949, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v850 + v867, v1941, &qword_1ED096E68, &qword_1E68B4840);
      v877 = v1992[4];
      v877(v1937, v850 + v868, *&v1996.f64[0]);
      v877(v1934, &v1982[v850], *&v1996.f64[0]);
      v878 = *(v1984 + 32);
      v879 = v850 + *&v1998.f64[0];
      v880 = v1985;
      v878(v1931, v879, v1985);
      (v1973)(v1980, v869 + v1974, v2001);
      v881 = v1996.f64[0];
      sub_1E6761420(v869 + v1975, v1951, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v1976[v869], v1948, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v1977[v869], v1936, &qword_1ED096E68, &qword_1E68B4840);
      v882 = v1893;
      v877(v1893, v869 + v1978, *&v881);
      v883 = v1894;
      v877(v1894, v869 + v1994, *&v881);
      v884 = v869 + *&v1995.f64[0];
      v885 = v1858;
      v886 = v880;
      v878(v1858, v884, v880);
      v2029 = v2061;
      v2030 = v2062;
      v2031 = v2063;
      v2032 = v2064;
      v2025 = v2057;
      v2026 = v2058;
      v2027 = v2059;
      v2028 = v2060;
      v2021 = v2053;
      v2022 = v2054;
      v2023 = v2055;
      v2024 = v2056;
      v2019 = v2051;
      v2020 = v2052;
      v2013 = v2045;
      v2014 = v2046;
      v2015 = v2047;
      v2016 = v2048;
      v2009 = v2041;
      v2010 = v2042;
      v2011 = v2043;
      v2012 = v2044;
      v2005 = v2037;
      v2006 = v2038;
      v2007 = v2039;
      v2008 = v2040;
      v2003 = v2035;
      v2004 = v2036;
      v887 = _s15FitnessCanvasUI24FullWidthStageViewLayoutV2eeoiySbAC_ACtFZ_0(&v2019, &v2003);
      v888 = v2001;
      if ((v887 & 1) == 0)
      {
        v1999 = *(v1984 + 8);
        (v1999)(v885, v886);
        v1199 = v1992[1];
        v1199(v883, *&v881);
        v1199(v882, *&v881);
        sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1951, &qword_1ED096E68, &qword_1E68B4840);
        v1200 = *(v2000 + 1);
        v1200(v1980, v888);
        (v1999)(v1931, v1985);
        v1199(v1934, *&v881);
        v1199(v1937, *&v881);
        sub_1E6744A10(v1941, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1949, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1958, &qword_1ED096E68, &qword_1E68B4840);
        v1200(v1981, v888);
        goto LABEL_379;
      }

      v889 = v881;
      if ((sub_1E68B3190() & 1) == 0)
      {
        v1999 = *(v1984 + 8);
        v1193 = v888;
        (v1999)(v885, v1985);
        v1224 = v1992[1];
        v1224(v1894, *&v889);
        v1224(v1893, *&v889);
        sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1951, &qword_1ED096E68, &qword_1E68B4840);
        v1014 = *(v2000 + 1);
        (v1014)(v1980, v888);
LABEL_251:
        (v1999)(v1931, v1985);
        v1224(v1934, *&v889);
        v1224(v1937, *&v889);
LABEL_252:
        sub_1E6744A10(v1941, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1949, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1958, &qword_1ED096E68, &qword_1E68B4840);
        v1194 = v1981;
        goto LABEL_377;
      }

      v890 = v1984;
      v891 = v1951;
      if (v1979 != v1972)
      {
        v1999 = *(v1984 + 8);
        (v1999)(v885, v1985);
LABEL_249:
        v1224 = v1992[1];
        v889 = v1996.f64[0];
        v1224(v1894, *&v1996.f64[0]);
        v1224(v1893, *&v889);
        sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
        v1348 = v891;
LABEL_250:
        sub_1E6744A10(v1348, &qword_1ED096E68, &qword_1E68B4840);
        v1014 = *(v2000 + 1);
        v1193 = v2001;
        (v1014)(v1980, v2001);
        goto LABEL_251;
      }

      v892 = *(v1990 + 48);
      v893 = v1826;
      sub_1E67612FC(v1958, v1826, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v891, v893 + v892, &qword_1ED096E68, &qword_1E68B4840);
      v894 = v1988;
      v895 = *(v1988 + 48);
      v896 = v1986;
      v897 = (v895)(v893, 1, v1986);
      v1999 = v895;
      if (v897 == 1)
      {
        if ((v895)(v893 + v892, 1, v896) == 1)
        {
          sub_1E6744A10(v893, &qword_1ED096E68, &qword_1E68B4840);
          v898 = v896;
          goto LABEL_322;
        }
      }

      else
      {
        v1347 = v1805;
        sub_1E67612FC(v893, v1805, &qword_1ED096E68, &qword_1E68B4840);
        if ((v895)(v893 + v892, 1, v896) != 1)
        {
          v1462 = v1898;
          (*(v894 + 32))(v1898, v893 + v892, v896);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v898 = v896;
          v1463 = sub_1E68B3190();
          v1464 = *(v894 + 8);
          v1465 = v1462;
          v891 = v1951;
          v1464(v1465, v898);
          v1464(v1347, v898);
          sub_1E6744A10(v893, &qword_1ED096E68, &qword_1E68B4840);
          v890 = v1984;
          if (v1463)
          {
LABEL_322:
            v1466 = *(v1990 + 48);
            v1467 = v1799;
            sub_1E67612FC(v1949, v1799, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E67612FC(v1948, v1467 + v1466, &qword_1ED096E68, &qword_1E68B4840);
            v1468 = v1999;
            v1469 = v898;
            if ((v1999)(v1467, 1, v898) == 1)
            {
              if (v1468(v1467 + v1466, 1, v898) == 1)
              {
                sub_1E6744A10(v1467, &qword_1ED096E68, &qword_1E68B4840);
                goto LABEL_396;
              }
            }

            else
            {
              v1485 = v1785;
              sub_1E67612FC(v1467, v1785, &qword_1ED096E68, &qword_1E68B4840);
              v1486 = v1468(v1467 + v1466, 1, v1469);
              v1487 = v1988;
              if (v1486 != 1)
              {
                v1559 = v1898;
                (*(v1988 + 32))(v1898, v1467 + v1466, v1469);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1560 = sub_1E68B3190();
                v1561 = *(v1487 + 8);
                v1561(v1559, v1469);
                v1561(v1485, v1469);
                sub_1E6744A10(v1467, &qword_1ED096E68, &qword_1E68B4840);
                if (v1560)
                {
LABEL_396:
                  v1562 = *(v1990 + 48);
                  v1563 = v1781;
                  sub_1E67612FC(v1941, v1781, &qword_1ED096E68, &qword_1E68B4840);
                  v1564 = v1936;
                  sub_1E67612FC(v1936, v1563 + v1562, &qword_1ED096E68, &qword_1E68B4840);
                  v1565 = v1999;
                  if ((v1999)(v1563, 1, v1469) == 1)
                  {
                    v1566 = v1565(v1563 + v1562, 1, v1469);
                    v1567 = v1858;
                    v1568 = v1894;
                    v1569 = v1951;
                    if (v1566 == 1)
                    {
                      sub_1E6744A10(v1563, &qword_1ED096E68, &qword_1E68B4840);
                      goto LABEL_437;
                    }
                  }

                  else
                  {
                    v1600 = v1769;
                    sub_1E67612FC(v1563, v1769, &qword_1ED096E68, &qword_1E68B4840);
                    if (v1565(v1563 + v1562, 1, v1469) != 1)
                    {
                      v1640 = v1988;
                      v1641 = v1563 + v1562;
                      v1642 = v1898;
                      (*(v1988 + 32))(v1898, v1641, v1469);
                      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                      v1643 = v1469;
                      v1644 = sub_1E68B3190();
                      v1645 = *(v1640 + 8);
                      v1645(v1642, v1643);
                      v1645(v1600, v1643);
                      sub_1E6744A10(v1563, &qword_1ED096E68, &qword_1E68B4840);
                      v1567 = v1858;
                      v1568 = v1894;
                      v1569 = v1951;
                      if (v1644)
                      {
LABEL_437:
                        v1646 = *(v1827 + 48);
                        v1647 = v1992[2];
                        v1648 = v1772;
                        v1649 = v1996.f64[0];
                        v1647(v1772, v1937, *&v1996.f64[0]);
                        v1647(&v1648[v1646], v1893, *&v1649);
                        v1650 = *(v1983 + 48);
                        v1651 = v1987;
                        if (v1650(v1648, 1, v1987) == 1)
                        {
                          if (v1650(&v1648[v1646], 1, v1651) == 1)
                          {
                            v1999 = v1992[1];
                            (v1999)(v1648, *&v1649);
                            goto LABEL_460;
                          }
                        }

                        else
                        {
                          v1674 = v1762;
                          v1647(v1762, v1648, *&v1649);
                          if (v1650(&v1648[v1646], 1, v1651) != 1)
                          {
                            v1693 = v1983;
                            v1694 = &v1772[v1646];
                            v1695 = v1783;
                            (*(v1983 + 32))(v1783, v1694, v1651);
                            LODWORD(v1998.f64[0]) = sub_1E68B3190();
                            v1696 = *(v1693 + 8);
                            v1696(v1695, v1651);
                            v1696(v1674, v1651);
                            v1649 = v1996.f64[0];
                            v1999 = v1992[1];
                            (v1999)(v1772, *&v1996.f64[0]);
                            v1569 = v1951;
                            if (LOBYTE(v1998.f64[0]))
                            {
LABEL_460:
                              v1697 = *(v1827 + 48);
                              v1698 = v1764;
                              v1647(v1764, v1934, *&v1649);
                              v1647(&v1698[v1697], v1894, *&v1649);
                              v1699 = v1987;
                              if (v1650(v1698, 1, v1987) == 1)
                              {
                                if (v1650(&v1698[v1697], 1, v1699) == 1)
                                {
                                  (v1999)(v1764, *&v1996.f64[0]);
LABEL_473:
                                  *&v1726 = *(TupleTypeMetadata2 + 48);
                                  v1727 = *(v1984 + 16);
                                  v1728 = v1760;
                                  v1729 = v1985;
                                  v1727(v1760, v1931, v1985);
                                  v1998.f64[0] = v1726;
                                  v1727(&v1728[*&v1726], v1858, v1729);
                                  v1997.f64[0] = *(v1932 + 48);
                                  if ((*&v1997.f64[0])(v1728, 1, v1933) == 1)
                                  {
                                    v1731 = v1984 + 8;
                                    v1730 = *(v1984 + 8);
                                    (v1730)(v1858, v1985);
                                    v1732 = v1996.f64[0];
                                    v1733 = v1999;
                                    (v1999)(v1894, *&v1996.f64[0]);
                                    v1733(v1893, *&v1732);
                                    sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1951, &qword_1ED096E68, &qword_1E68B4840);
                                    v1734 = *(v2000 + 1);
                                    v1735 = v2001;
                                    v1734(v1980, v2001);
                                    v1984 = v1731;
                                    v2000 = v1730;
                                    (v1730)(v1931, v1985);
                                    v1733(v1934, *&v1732);
                                    v1733(v1937, *&v1732);
                                    sub_1E6744A10(v1941, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1949, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1958, &qword_1ED096E68, &qword_1E68B4840);
                                    v1734(v1981, v1735);
                                    if ((*&v1997.f64[0])(&v1760[*&v1998.f64[0]], 1, v1933) == 1)
                                    {
                                      (v2000)(v1760, v1985);
LABEL_202:
                                      v1307 = v1993;
LABEL_402:
                                      (*(v1307 + 8))(v2002, v1989);
                                      goto LABEL_425;
                                    }
                                  }

                                  else
                                  {
                                    v1741 = v1760;
                                    v1727(v1757, v1760, v1985);
                                    if ((*&v1997.f64[0])(&v1741[*&v1998.f64[0]], 1, v1933) != 1)
                                    {
                                      v1747 = v1932;
                                      v1748 = v1755;
                                      v1749 = v1933;
                                      (*(v1932 + 32))(v1755, &v1760[*&v1998.f64[0]], v1933);
                                      LODWORD(v1997.f64[0]) = sub_1E68B3190();
                                      v1750 = *(v1747 + 8);
                                      v1932 = v1747 + 8;
                                      *&v1995.f64[0] = v1750;
                                      v1750(v1748, v1749);
                                      v1998.f64[0] = *(v1984 + 8);
                                      (*&v1998.f64[0])(v1858, v1985);
                                      v1751 = v1996.f64[0];
                                      v1752 = v1999;
                                      (v1999)(v1894, *&v1996.f64[0]);
                                      v1752(v1893, *&v1751);
                                      sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
                                      sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
                                      sub_1E6744A10(v1951, &qword_1ED096E68, &qword_1E68B4840);
                                      v1753 = *(v2000 + 1);
                                      v1754 = v2001;
                                      v1753(v1980, v2001);
                                      (*&v1998.f64[0])(v1931, v1985);
                                      v1752(v1934, *&v1751);
                                      v1752(v1937, *&v1751);
                                      sub_1E6744A10(v1941, &qword_1ED096E68, &qword_1E68B4840);
                                      sub_1E6744A10(v1949, &qword_1ED096E68, &qword_1E68B4840);
                                      sub_1E6744A10(v1958, &qword_1ED096E68, &qword_1E68B4840);
                                      v1753(v1981, v1754);
                                      (*&v1995.f64[0])(v1757, v1749);
                                      (*&v1998.f64[0])(v1760, v1985);
                                      if (LOBYTE(v1997.f64[0]))
                                      {
                                        goto LABEL_202;
                                      }

                                      goto LABEL_379;
                                    }

                                    v1998.f64[0] = *(v1984 + 8);
                                    v1742 = v1985;
                                    (*&v1998.f64[0])(v1858, v1985);
                                    v1743 = v1996.f64[0];
                                    v1744 = v1999;
                                    (v1999)(v1894, *&v1996.f64[0]);
                                    v1744(v1893, *&v1743);
                                    sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1951, &qword_1ED096E68, &qword_1E68B4840);
                                    v1745 = *(v2000 + 1);
                                    v1746 = v2001;
                                    v1745(v1980, v2001);
                                    (*&v1998.f64[0])(v1931, v1742);
                                    v1744(v1934, *&v1743);
                                    v1744(v1937, *&v1743);
                                    sub_1E6744A10(v1941, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1949, &qword_1ED096E68, &qword_1E68B4840);
                                    sub_1E6744A10(v1958, &qword_1ED096E68, &qword_1E68B4840);
                                    v1745(v1981, v1746);
                                    (*(v1932 + 8))(v1757, v1933);
                                  }

                                  (*(v1756 + 8))(v1760, TupleTypeMetadata2);
LABEL_379:
                                  v1307 = v1993;
LABEL_380:
                                  (*(v1307 + 8))(v2002, v1989);
                                  goto LABEL_381;
                                }
                              }

                              else
                              {
                                v1647(v1759, v1698, *&v1996.f64[0]);
                                if (v1650(&v1698[v1697], 1, v1699) != 1)
                                {
                                  v1719 = v1983;
                                  v1720 = v1764;
                                  v1721 = v1783;
                                  v1722 = v1987;
                                  (*(v1983 + 32))(v1783, &v1764[v1697], v1987);
                                  v1723 = v1759;
                                  v1724 = sub_1E68B3190();
                                  v1725 = *(v1719 + 8);
                                  v1725(v1721, v1722);
                                  v1725(v1723, v1722);
                                  (v1999)(v1720, *&v1996.f64[0]);
                                  if (v1724)
                                  {
                                    goto LABEL_473;
                                  }

LABEL_468:
                                  v1998.f64[0] = *(v1984 + 8);
                                  v1709 = v1985;
                                  (*&v1998.f64[0])(v1858, v1985);
                                  v1710 = v1996.f64[0];
                                  v1711 = v1999;
                                  (v1999)(v1894, *&v1996.f64[0]);
                                  v1711(v1893, *&v1710);
                                  sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
                                  sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
                                  sub_1E6744A10(v1951, &qword_1ED096E68, &qword_1E68B4840);
                                  v1712 = *(v2000 + 1);
                                  v1713 = v2001;
                                  v1712(v1980, v2001);
                                  (*&v1998.f64[0])(v1931, v1709);
                                  v1711(v1934, *&v1710);
                                  v1711(v1937, *&v1710);
                                  sub_1E6744A10(v1941, &qword_1ED096E68, &qword_1E68B4840);
                                  sub_1E6744A10(v1949, &qword_1ED096E68, &qword_1E68B4840);
                                  sub_1E6744A10(v1958, &qword_1ED096E68, &qword_1E68B4840);
                                  v1712(v1981, v1713);
                                  goto LABEL_379;
                                }

                                (*(v1983 + 8))(v1759, v1987);
                              }

                              (*(v1793 + 8))(v1764, v1827);
                              goto LABEL_468;
                            }

                            goto LABEL_448;
                          }

                          (*(v1983 + 8))(v1674, v1651);
                          v1649 = v1996.f64[0];
                          v1648 = v1772;
                          v1569 = v1951;
                        }

                        (*(v1793 + 8))(v1648, v1827);
LABEL_448:
                        v1675 = *(v1984 + 8);
                        v1984 += 8;
                        v1999 = v1675;
                        v1676 = v1649;
                        v1677 = v1985;
                        (v1675)(v1858, v1985);
                        v1678 = v1992[1];
                        v1678(v1894, *&v1676);
                        v1678(v1893, *&v1676);
                        sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
                        sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
                        sub_1E6744A10(v1569, &qword_1ED096E68, &qword_1E68B4840);
                        v1014 = *(v2000 + 1);
                        v1193 = v2001;
                        (v1014)(v1980, v2001);
                        (v1999)(v1931, v1677);
                        v1678(v1934, *&v1676);
                        v1678(v1937, *&v1676);
                        goto LABEL_252;
                      }

                      goto LABEL_414;
                    }

                    (*(v1988 + 8))(v1600, v1469);
                    v1567 = v1858;
                    v1568 = v1894;
                    v1569 = v1951;
                  }

                  sub_1E6744A10(v1563, &qword_1ED098130, &qword_1E68B9D00);
LABEL_414:
                  v1601 = *(v1984 + 8);
                  v1984 += 8;
                  v1601(v1567, v1985);
                  v1602 = v1992[1];
                  v1603 = v1568;
                  v1604 = v1996.f64[0];
                  v1602(v1603, *&v1996.f64[0]);
                  v1602(v1893, *&v1604);
                  sub_1E6744A10(v1564, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1569, &qword_1ED096E68, &qword_1E68B4840);
                  v1014 = *(v2000 + 1);
                  v1193 = v2001;
                  (v1014)(v1980, v2001);
                  v1601(v1931, v1985);
                  v1602(v1934, *&v1604);
                  v1602(v1937, *&v1604);
                  goto LABEL_252;
                }

                goto LABEL_336;
              }

              (*(v1988 + 8))(v1485, v1469);
            }

            sub_1E6744A10(v1467, &qword_1ED098130, &qword_1E68B9D00);
LABEL_336:
            v1999 = *(v890 + 8);
            (v1999)(v1858, v1985);
            v1224 = v1992[1];
            v889 = v1996.f64[0];
            v1224(v1894, *&v1996.f64[0]);
            v1224(v1893, *&v889);
            sub_1E6744A10(v1936, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1948, &qword_1ED096E68, &qword_1E68B4840);
            v1348 = v1951;
            goto LABEL_250;
          }

          goto LABEL_248;
        }

        (*(v894 + 8))(v1347, v896);
        v890 = v1984;
      }

      sub_1E6744A10(v893, &qword_1ED098130, &qword_1E68B9D00);
LABEL_248:
      v1999 = *(v890 + 8);
      (v1999)(v1858, v1985);
      goto LABEL_249;
    case 3u:
      v695 = v2002;
      v923 = (v674)(v654, v2002, v614);
      v924 = v654[1];
      v2051 = *v654;
      v2052 = v924;
      v925 = v654[3];
      v2053 = v654[2];
      v2054 = v925;
      MEMORY[0x1EEE9AC00](v923, v926);
      strcpy(&v1755 - 48, "layout title description actionButton ");
      *&v2035.f64[0] = &type metadata for InfoActionCardViewLayout;
      v2035.f64[1] = v1997.f64[0];
      v2036.f64[0] = v1997.f64[0];
      v927 = v1996.f64[0];
      v2036.f64[1] = v1996.f64[0];
      v928 = swift_getTupleTypeMetadata();
      v929 = v614;
      v930 = v928;
      v931 = v928[12];
      v932 = v928[16];
      v933 = v928[20];
      v934 = v1999;
      v1989 = v929;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (v1992[1])(v654 + v933, *&v927);
        sub_1E6744A10(v654 + v932, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v654 + v931, &qword_1ED096E68, &qword_1E68B4840);
        goto LABEL_102;
      }

      v935 = v934[1];
      v2067[0] = *v934;
      v2067[1] = v935;
      v936 = v934[2];
      v2067[3] = v934[3];
      v2067[2] = v936;
      v937 = v930[12];
      sub_1E6761420(v654 + v931, v1975, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v654 + v932, v1973, &qword_1ED096E68, &qword_1E68B4840);
      v938 = v1992[4];
      v938(v1965, v654 + v933, *&v1996.f64[0]);
      v939 = v934 + v937;
      v940 = *&v1996.f64[0];
      v941 = v1886;
      sub_1E6761420(v939, v1886, &qword_1ED096E68, &qword_1E68B4840);
      v942 = v934 + v932;
      v943 = v1909;
      sub_1E6761420(v942, v1909, &qword_1ED096E68, &qword_1E68B4840);
      v944 = v1903;
      v938(v1903, v934 + v933, v940);
      v2035 = v2051;
      v2036 = v2052;
      v2037 = v2053;
      v2038 = v2054;
      if ((_s15FitnessCanvasUI24InfoActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v2035, v2067) & 1) == 0)
      {
        v1201 = v941;
        v1202 = v1992[1];
        v1202(v944, v940);
        sub_1E6744A10(v943, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1201, &qword_1ED096E68, &qword_1E68B4840);
        v1202(v1965, v940);
        v1203 = v1973;
LABEL_116:
        sub_1E6744A10(v1203, &qword_1ED096E68, &qword_1E68B4840);
        v1204 = v1975;
        v1205 = &qword_1ED096E68;
        v1206 = &qword_1E68B4840;
        goto LABEL_117;
      }

      v945 = *(v1990 + 48);
      v946 = v1851;
      sub_1E67612FC(v1975, v1851, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v941, v946 + v945, &qword_1ED096E68, &qword_1E68B4840);
      v947 = v1988;
      v948 = *(v1988 + 48);
      v949 = v1986;
      if (v948(v946, 1, v1986) == 1)
      {
        v950 = v948(v946 + v945, 1, v949);
        v951 = v1992;
        v952 = v2002;
        v953 = v1965;
        if (v950 == 1)
        {
          sub_1E6744A10(v946, &qword_1ED096E68, &qword_1E68B4840);
          v954 = v949;
          goto LABEL_180;
        }
      }

      else
      {
        v1228 = v940;
        v1229 = v1834;
        sub_1E67612FC(v946, v1834, &qword_1ED096E68, &qword_1E68B4840);
        v1230 = v948(v946 + v945, 1, v949);
        v951 = v1992;
        if (v1230 != 1)
        {
          v1277 = v1229;
          v1278 = v1898;
          (*(v947 + 32))(v1898, v946 + v945, v949);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v954 = v949;
          v1279 = sub_1E68B3190();
          v1280 = *(v947 + 8);
          v1281 = v1278;
          v940 = *&v1996.f64[0];
          v1280(v1281, v954);
          v1280(v1277, v954);
          sub_1E6744A10(v1851, &qword_1ED096E68, &qword_1E68B4840);
          v953 = v1965;
          v952 = v2002;
          if (v1279)
          {
LABEL_180:
            v1282 = v940;
            v1283 = *(v1990 + 48);
            v1284 = v1832;
            sub_1E67612FC(v1973, v1832, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E67612FC(v1909, v1284 + v1283, &qword_1ED096E68, &qword_1E68B4840);
            if (v948(v1284, 1, v954) == 1)
            {
              v1285 = v948(v1284 + v1283, 1, v954);
              v1286 = v1973;
              v1287 = v1909;
              if (v1285 == 1)
              {
                sub_1E6744A10(v1284, &qword_1ED096E68, &qword_1E68B4840);
LABEL_288:
                v1422 = *(v1827 + 48);
                v1423 = v1992;
                v1424 = v1992[2];
                v1425 = v1828;
                v1426 = v1965;
                v1424(v1828, v1965, v940);
                v2001 = v1422;
                v1427 = &v1425[v1422];
                v1428 = v1903;
                v1424(v1427, v1903, v940);
                v1429 = v1983;
                v1430 = v1425;
                v1431 = v1987;
                v2000 = *(v1983 + 48);
                if ((v2000)(v1430, 1, v1987) == 1)
                {
                  v1432 = v1423[1];
                  v1432(v1428, v940);
                  sub_1E6744A10(v1909, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1886, &qword_1ED096E68, &qword_1E68B4840);
                  v1432(v1426, v940);
                  sub_1E6744A10(v1973, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1975, &qword_1ED096E68, &qword_1E68B4840);
                  v1433 = v1828;
                  v1434 = (v2000)(&v1828[v2001], 1, v1431) == 1;
                  v1435 = v1433;
                  if (!v1434)
                  {
                    goto LABEL_320;
                  }

                  v1432(v1433, v940);
                  goto LABEL_358;
                }

                v1458 = v1801;
                v1459 = v1828;
                v1424(v1801, v1828, v940);
                v1460 = v2001;
                if ((v2000)(&v1459[v2001], 1, v1431) == 1)
                {
                  v1461 = v1423[1];
                  v1461(v1903, v940);
                  sub_1E6744A10(v1909, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1886, &qword_1ED096E68, &qword_1E68B4840);
                  v1461(v1965, v940);
                  sub_1E6744A10(v1973, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1975, &qword_1ED096E68, &qword_1E68B4840);
                  (*(v1429 + 8))(v1458, v1431);
                  v1435 = v1459;
LABEL_320:
                  (*(v1793 + 8))(v1435, v1827);
LABEL_393:
                  v1528 = v1993;
                  v1529 = v2002;
                  goto LABEL_394;
                }

                v1540 = v1783;
                (*(v1429 + 32))(v1783, &v1459[v1460], v1431);
                LODWORD(v2001) = sub_1E68B3190();
                v1541 = *(v1429 + 8);
                v1541(v1540, v1431);
                v1542 = v1423[1];
                v1542(v1903, v940);
                sub_1E6744A10(v1909, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1886, &qword_1ED096E68, &qword_1E68B4840);
                v1542(v1965, v940);
                sub_1E6744A10(v1973, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1975, &qword_1ED096E68, &qword_1E68B4840);
                v1541(v1801, v1431);
                v1542(v1459, v940);
                v1528 = v1993;
                v1529 = v2002;
                if ((v2001 & 1) == 0)
                {
LABEL_394:
                  (*(v1528 + 8))(v1529, v1989);
                  goto LABEL_381;
                }

LABEL_424:
                (*(v1528 + 8))(v1529, v1989);
                goto LABEL_425;
              }
            }

            else
            {
              v1321 = v1810;
              sub_1E67612FC(v1284, v1810, &qword_1ED096E68, &qword_1E68B4840);
              if (v948(v1284 + v1283, 1, v954) != 1)
              {
                v1415 = v1988;
                v1416 = v1284 + v1283;
                v1417 = v1898;
                (*(v1988 + 32))(v1898, v1416, v954);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1418 = v954;
                v1419 = sub_1E68B3190();
                v1420 = v1284;
                v1421 = *(v1415 + 8);
                v1421(v1417, v1418);
                v1421(v1321, v1418);
                sub_1E6744A10(v1420, &qword_1ED096E68, &qword_1E68B4840);
                v1286 = v1973;
                v1287 = v1909;
                v940 = v1282;
                if (v1419)
                {
                  goto LABEL_288;
                }

                goto LABEL_233;
              }

              (*(v1988 + 8))(v1321, v954);
              v1286 = v1973;
              v1287 = v1909;
            }

            sub_1E6744A10(v1284, &qword_1ED098130, &qword_1E68B9D00);
            v940 = v1282;
LABEL_233:
            v1322 = v1992[1];
            v1322(v1903, v940);
            sub_1E6744A10(v1287, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1886, &qword_1ED096E68, &qword_1E68B4840);
            v1322(v1965, v940);
            v1203 = v1286;
            goto LABEL_116;
          }

LABEL_144:
          v1231 = v951[1];
          v1231(v1903, v940);
          sub_1E6744A10(v1909, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1886, &qword_1ED096E68, &qword_1E68B4840);
          v1231(v953, v940);
          sub_1E6744A10(v1973, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1975, &qword_1ED096E68, &qword_1E68B4840);
LABEL_158:
          (*(v1993 + 8))(v952, v1989);
          goto LABEL_381;
        }

        (*(v947 + 8))(v1229, v949);
        v953 = v1965;
        v940 = v1228;
        v952 = v2002;
      }

      sub_1E6744A10(v946, &qword_1ED098130, &qword_1E68B9D00);
      goto LABEL_144;
    case 4u:
      v737 = v1916;
      v695 = v2002;
      v738 = (v674)(v1916, v2002, v614);
      v1989 = v614;
      MEMORY[0x1EEE9AC00](v738, v739);
      strcpy(&v1755 - 48, "artwork footnote subtitle title ");
      v740 = v2001;
      *&v2051.f64[0] = v2001;
      v2051.f64[1] = v1997.f64[0];
      v2052.f64[0] = v1997.f64[0];
      v2052.f64[1] = v1997.f64[0];
      v741 = swift_getTupleTypeMetadata();
      v742 = v741[12];
      v743 = v741[16];
      v744 = v741[20];
      v745 = v1999;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1E6744A10(&v737[v744], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v737[v743], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v737[v742], &qword_1ED096E68, &qword_1E68B4840);
        (*(v2000 + 1))(v737, v740);
        goto LABEL_102;
      }

      v746 = v2000;
      v747 = v1885;
      (*(v2000 + 4))(v1885, v745, v740);
      sub_1E6761420(&v737[v742], v1974, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v737[v743], v1963, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v737[v744], v1926, &qword_1ED096E68, &qword_1E68B4840);
      v748 = &v745[v742];
      v749 = v1887;
      sub_1E6761420(v748, v1887, &qword_1ED096E68, &qword_1E68B4840);
      v750 = &v745[v743];
      v751 = v1879;
      sub_1E6761420(v750, v1879, &qword_1ED096E68, &qword_1E68B4840);
      v752 = &v745[v744];
      v753 = v747;
      v754 = v1901;
      v755 = v2001;
      sub_1E6761420(v752, v1901, &qword_1ED096E68, &qword_1E68B4840);
      v756 = sub_1E68B3190();
      v759 = *(v746 + 1);
      v758 = v746 + 8;
      v757 = v759;
      (v759)(v737, v755);
      if ((v756 & 1) == 0)
      {
        sub_1E6744A10(v754, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v751, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v749, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1926, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1963, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1974, &qword_1ED096E68, &qword_1E68B4840);
        (v757)(v753, v755);
        goto LABEL_379;
      }

      v1999 = v757;
      v2000 = v758;
      v760 = *(v1990 + 48);
      v761 = v1974;
      v762 = v1847;
      sub_1E67612FC(v1974, v1847, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v749, v762 + v760, &qword_1ED096E68, &qword_1E68B4840);
      v763 = v1988;
      v764 = *(v1988 + 48);
      v765 = v1986;
      v766 = v764(v762, 1, v1986);
      *&v1998.f64[0] = v764;
      if (v766 == 1)
      {
        v767 = v764(v762 + v760, 1, v765);
        v768 = v1926;
        v769 = v2002;
        if (v767 == 1)
        {
          sub_1E6744A10(v762, &qword_1ED096E68, &qword_1E68B4840);
          goto LABEL_165;
        }
      }

      else
      {
        v1216 = v1835;
        sub_1E67612FC(v762, v1835, &qword_1ED096E68, &qword_1E68B4840);
        v1217 = v764(v762 + v760, 1, v765);
        v1218 = v2002;
        if (v1217 != 1)
        {
          v1247 = v1898;
          (*(v763 + 32))(v1898, v762 + v760, v765);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          LODWORD(v1997.f64[0]) = sub_1E68B3190();
          v1248 = *(v763 + 8);
          v1249 = v1247;
          v751 = v1879;
          v761 = v1974;
          v1248(v1249, v765);
          v1248(v1216, v765);
          sub_1E6744A10(v762, &qword_1ED096E68, &qword_1E68B4840);
          v769 = v1218;
          v768 = v1926;
          if (LOBYTE(v1997.f64[0]))
          {
LABEL_165:
            v1250 = *(v1990 + 48);
            v1251 = v751;
            v1252 = v1831;
            sub_1E67612FC(v1963, v1831, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E67612FC(v1251, v1252 + v1250, &qword_1ED096E68, &qword_1E68B4840);
            v1253 = v1998.f64[0];
            if ((*&v1998.f64[0])(v1252, 1, v765) == 1)
            {
              v1254 = (*&v1253)(v1252 + v1250, 1, v765);
              v1255 = v1901;
              if (v1254 == 1)
              {
                sub_1E6744A10(v1252, &qword_1ED096E68, &qword_1E68B4840);
LABEL_276:
                v1403 = *(v1990 + 48);
                v1404 = v1809;
                sub_1E67612FC(v768, v1809, &qword_1ED096E68, &qword_1E68B4840);
                v2000 = v1403;
                sub_1E67612FC(v1255, &v1403[v1404], &qword_1ED096E68, &qword_1E68B4840);
                v1405 = v1998.f64[0];
                if ((*&v1998.f64[0])(v1404, 1, v765) == 1)
                {
                  sub_1E6744A10(v1255, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1879, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1887, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v768, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1963, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1974, &qword_1ED096E68, &qword_1E68B4840);
                  (v1999)(v1885, v2001);
                  if ((*&v1405)(&v2000[v1404], 1, v765) == 1)
                  {
                    sub_1E6744A10(v1404, &qword_1ED096E68, &qword_1E68B4840);
                    v805 = v1993;
                    v806 = v1989;
                    v807 = v2002;
LABEL_347:
                    (*(v805 + 8))(v807, v806);
                    goto LABEL_425;
                  }

LABEL_316:
                  v1261 = v1404;
LABEL_317:
                  sub_1E6744A10(v1261, &qword_1ED098130, &qword_1E68B9D00);
                  (*(v1993 + 8))(v2002, v1989);
                  goto LABEL_381;
                }

                v1454 = v1800;
                sub_1E67612FC(v1404, v1800, &qword_1ED096E68, &qword_1E68B4840);
                v1455 = (*&v1405)(&v2000[v1404], 1, v765);
                v1456 = v1988;
                v1457 = (v1988 + 8);
                if (v1455 == 1)
                {
                  sub_1E6744A10(v1901, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1879, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1887, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v768, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1963, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1974, &qword_1ED096E68, &qword_1E68B4840);
                  (v1999)(v1885, v2001);
                  (*v1457)(v1454, v765);
                  goto LABEL_316;
                }

                v1531 = v1898;
                (*(v1988 + 32))(v1898, &v2000[v1404], v765);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1532 = sub_1E68B3190();
                v1533 = *(v1456 + 8);
                v1533(v1531, v765);
                sub_1E6744A10(v1901, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1879, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1887, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v768, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1963, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1974, &qword_1ED096E68, &qword_1E68B4840);
                (v1999)(v1885, v2001);
                v1533(v1800, v765);
                sub_1E6744A10(v1404, &qword_1ED096E68, &qword_1E68B4840);
                v805 = v1993;
                v806 = v1989;
                v807 = v2002;
                if (v1532)
                {
                  goto LABEL_347;
                }

                goto LABEL_364;
              }
            }

            else
            {
              v1316 = v1811;
              sub_1E67612FC(v1252, v1811, &qword_1ED096E68, &qword_1E68B4840);
              v1317 = (*&v1253)(v1252 + v1250, 1, v765);
              v1318 = v1988;
              if (v1317 != 1)
              {
                v1399 = v1252 + v1250;
                v1400 = v1252;
                v1401 = v1898;
                (*(v1988 + 32))(v1898, v1399, v765);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                LODWORD(v2000) = sub_1E68B3190();
                v1402 = *(v1318 + 8);
                v1402(v1401, v765);
                v1402(v1316, v765);
                sub_1E6744A10(v1400, &qword_1ED096E68, &qword_1E68B4840);
                v1255 = v1901;
                v1319 = v1999;
                if (v2000)
                {
                  goto LABEL_276;
                }

LABEL_225:
                sub_1E6744A10(v1255, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1879, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1887, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v768, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1963, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1974, &qword_1ED096E68, &qword_1E68B4840);
                v1319(v1885, v2001);
                goto LABEL_379;
              }

              (*(v1988 + 8))(v1316, v765);
              v1255 = v1901;
            }

            sub_1E6744A10(v1252, &qword_1ED098130, &qword_1E68B9D00);
            v1319 = v1999;
            goto LABEL_225;
          }

LABEL_132:
          sub_1E6744A10(v1901, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v751, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1887, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v768, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1963, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v761, &qword_1ED096E68, &qword_1E68B4840);
          (v1999)(v1885, v2001);
          goto LABEL_156;
        }

        (*(v763 + 8))(v1216, v765);
        v769 = v1218;
        v768 = v1926;
      }

      sub_1E6744A10(v762, &qword_1ED098130, &qword_1E68B9D00);
      goto LABEL_132;
    case 5u:
      v955 = v1917;
      v695 = v2002;
      v995 = (v674)(v1917, v2002, v614);
      v996 = v614;
      MEMORY[0x1EEE9AC00](v995, v997);
      strcpy(&v1755 - 48, "artwork caption displayStyle layout title ");
      v959 = v2001;
      *&v2051.f64[0] = v2001;
      v2051.f64[1] = v1997.f64[0];
      *&v2052.f64[0] = &type metadata for DynamicBrickDisplayStyle;
      *&v2052.f64[1] = &type metadata for DynamicBrickViewLayout;
      v2053.f64[0] = v1997.f64[0];
      v998 = swift_getTupleTypeMetadata();
      v999 = v998[16];
      LODWORD(v1998.f64[0]) = v955[v999];
      v962 = v998[12];
      v1000 = v998[20];
      v1002 = *&v955[v1000];
      v1001 = *&v955[v1000 + 8];
      v966 = v998[24];
      v1003 = v1999;
      v1989 = v996;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_59;
      }

      LODWORD(v1997.f64[0]) = v1003[v999];
      v1005 = *&v1003[v1000];
      v1004 = *&v1003[v1000 + 8];
      v1006 = v2000;
      v1007 = v1865;
      (*(v2000 + 4))(v1865, v1003, v959);
      sub_1E6761420(&v955[v962], v1961, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v955[v966], v1945, &qword_1ED096E68, &qword_1E68B4840);
      v1008 = &v1003[v962];
      v1009 = v1007;
      v1010 = v1861;
      sub_1E6761420(v1008, v1861, &qword_1ED096E68, &qword_1E68B4840);
      v1011 = &v1003[v966];
      v1012 = v1899;
      sub_1E6761420(v1011, v1899, &qword_1ED096E68, &qword_1E68B4840);
      v1013 = sub_1E68B3190();
      v1016 = *(v1006 + 1);
      v1015 = v1006 + 8;
      v1014 = v1016;
      (v1016)(v955, v959);
      if ((v1013 & 1) == 0)
      {
        sub_1E6744A10(v1012, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1010, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1945, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1961, &qword_1ED096E68, &qword_1E68B4840);
        v1194 = v1009;
        v1207 = v959;
        goto LABEL_378;
      }

      v1999 = v1014;
      v2000 = v1015;
      v1017 = *(v1990 + 48);
      v1018 = v1961;
      v1019 = v1848;
      sub_1E67612FC(v1961, v1848, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v1010, v1019 + v1017, &qword_1ED096E68, &qword_1E68B4840);
      v1020 = v1988;
      v1021 = *(v1988 + 48);
      v1022 = v1986;
      if (v1021(v1019, 1, v1986) == 1)
      {
        if (v1021(v1019 + v1017, 1, v1022) == 1)
        {
          sub_1E6744A10(v1019, &qword_1ED096E68, &qword_1E68B4840);
          v1023 = v2001;
          goto LABEL_196;
        }
      }

      else
      {
        v1235 = v1836;
        sub_1E67612FC(v1019, v1836, &qword_1ED096E68, &qword_1E68B4840);
        if (v1021(v1019 + v1017, 1, v1022) != 1)
        {
          v1299 = v1898;
          (*(v1020 + 32))(v1898, v1019 + v1017, v1022);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          LODWORD(v1996.f64[0]) = sub_1E68B3190();
          v1300 = *(v1020 + 8);
          v1301 = v1299;
          v1010 = v1861;
          v1018 = v1961;
          v1300(v1301, v1022);
          v1300(v1235, v1022);
          sub_1E6744A10(v1019, &qword_1ED096E68, &qword_1E68B4840);
          v1023 = v2001;
          v1009 = v1865;
          if (LOBYTE(v1996.f64[0]))
          {
LABEL_196:
            v1302 = v1945;
            if (LODWORD(v1998.f64[0]) == LODWORD(v1997.f64[0]) && v1002 == v1005 && v1001 == v1004)
            {
              v1303 = *(v1990 + 48);
              v1304 = v1813;
              sub_1E67612FC(v1945, v1813, &qword_1ED096E68, &qword_1E68B4840);
              v1305 = v1899;
              sub_1E67612FC(v1899, v1304 + v1303, &qword_1ED096E68, &qword_1E68B4840);
              v1306 = v1986;
              if (v1021(v1304, 1, v1986) == 1)
              {
                sub_1E6744A10(v1305, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1861, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1945, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1961, &qword_1ED096E68, &qword_1E68B4840);
                (v1999)(v1009, v1023);
                v1304 = v1813;
                if (v1021(v1813 + v1303, 1, v1306) == 1)
                {
                  sub_1E6744A10(v1304, &qword_1ED096E68, &qword_1E68B4840);
                  goto LABEL_202;
                }
              }

              else
              {
                v1500 = v1786;
                sub_1E67612FC(v1304, v1786, &qword_1ED096E68, &qword_1E68B4840);
                if (v1021(v1304 + v1303, 1, v1306) != 1)
                {
                  v1574 = v1304;
                  v1575 = v1988;
                  v1576 = v1574 + v1303;
                  v1577 = v1574;
                  v1578 = v1898;
                  (*(v1988 + 32))(v1898, v1576, v1306);
                  sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                  LODWORD(v1998.f64[0]) = sub_1E68B3190();
                  v1579 = *(v1575 + 8);
                  v1579(v1578, v1306);
                  sub_1E6744A10(v1899, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1861, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1945, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1961, &qword_1ED096E68, &qword_1E68B4840);
                  (v1999)(v1009, v1023);
                  v1579(v1500, v1306);
                  sub_1E6744A10(v1577, &qword_1ED096E68, &qword_1E68B4840);
                  v1307 = v1993;
                  if (LOBYTE(v1998.f64[0]))
                  {
                    goto LABEL_402;
                  }

                  goto LABEL_380;
                }

                sub_1E6744A10(v1899, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1861, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1945, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1961, &qword_1ED096E68, &qword_1E68B4840);
                (v1999)(v1009, v1023);
                (*(v1988 + 8))(v1500, v1306);
              }

              v1205 = &qword_1ED098130;
              v1206 = &qword_1E68B9D00;
              v1204 = v1304;
LABEL_117:
              sub_1E6744A10(v1204, v1205, v1206);
              goto LABEL_379;
            }

            sub_1E6744A10(v1899, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1010, &qword_1ED096E68, &qword_1E68B4840);
            v1236 = v1302;
LABEL_204:
            sub_1E6744A10(v1236, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1018, &qword_1ED096E68, &qword_1E68B4840);
            (v1999)(v1009, v1023);
            goto LABEL_379;
          }

LABEL_152:
          sub_1E6744A10(v1899, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1010, &qword_1ED096E68, &qword_1E68B4840);
          v1236 = v1945;
          goto LABEL_204;
        }

        (*(v1020 + 8))(v1235, v1022);
        v1009 = v1865;
      }

      sub_1E6744A10(v1019, &qword_1ED098130, &qword_1E68B9D00);
      v1023 = v2001;
      goto LABEL_152;
    case 6u:
      v1063 = v1914;
      v695 = v2002;
      v1064 = (v674)(v1914, v2002, v614);
      v1066 = *v1063;
      v1065 = v1063[1];
      v1067 = v1063[2];
      MEMORY[0x1EEE9AC00](v1064, v1068);
      strcpy(&v1755 - 48, "layout artwork title subtitle ");
      *&v2051.f64[0] = &type metadata for MonogramVerticalStackViewLayout;
      v900 = v2001;
      *&v2051.f64[1] = v2001;
      v2052.f64[0] = v1997.f64[0];
      v2052.f64[1] = v1997.f64[0];
      v1069 = swift_getTupleTypeMetadata();
      v1070 = v1069[12];
      v1071 = v1069[16];
      v1072 = v1069[20];
      v1073 = v1999;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_1E6744A10(v1063 + v1072, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1063 + v1071, &qword_1ED096E68, &qword_1E68B4840);
        v1163 = *(v2000 + 1);
        v1164 = v1063 + v1070;
        goto LABEL_98;
      }

      v1989 = v614;
      v1075 = *v1073;
      v1074 = v1073[1];
      v1076 = v1073[2];
      v1077 = *(v2000 + 4);
      v1077(v1968, v1063 + v1070, v900);
      sub_1E6761420(v1063 + v1071, v1970, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v1063 + v1072, v1946, &qword_1ED096E68, &qword_1E68B4840);
      v1077(v1967, v1073 + v1070, v900);
      v1078 = v1860;
      sub_1E6761420(v1073 + v1071, v1860, &qword_1ED096E68, &qword_1E68B4840);
      v1079 = v1878;
      sub_1E6761420(v1073 + v1072, v1878, &qword_1ED096E68, &qword_1E68B4840);
      if (v1066 != v1075 || v1065 != v1074 || v1067 != v1076)
      {
        sub_1E6744A10(v1079, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1078, &qword_1ED096E68, &qword_1E68B4840);
        v1208 = *(v2000 + 1);
        v1209 = v2001;
        v1208(v1967, v2001);
        sub_1E6744A10(v1946, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1970, &qword_1ED096E68, &qword_1E68B4840);
        v1210 = v1968;
        goto LABEL_123;
      }

      v1080 = v1968;
      v1081 = v1967;
      v1082 = v2001;
      v1083 = sub_1E68B3190();
      v1084 = v1989;
      v1085 = v2002;
      if ((v1083 & 1) == 0)
      {
        sub_1E6744A10(v1079, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1078, &qword_1ED096E68, &qword_1E68B4840);
        v1238 = *(v2000 + 1);
        v1238(v1081, v1082);
        sub_1E6744A10(v1946, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1970, &qword_1ED096E68, &qword_1E68B4840);
        v1238(v1080, v1082);
        (*(v1993 + 8))(v1085, v1084);
        goto LABEL_381;
      }

      v1086 = *(v1990 + 48);
      v1087 = v1839;
      sub_1E67612FC(v1970, v1839, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v1078, v1087 + v1086, &qword_1ED096E68, &qword_1E68B4840);
      v1088 = v1988;
      v1089 = *(v1988 + 48);
      v1090 = v1986;
      if ((v1089)(v1087, 1, v1986) == 1)
      {
        if ((v1089)(v1087 + v1086, 1, v1090) == 1)
        {
          v1999 = v1089;
          sub_1E6744A10(v1087, &qword_1ED096E68, &qword_1E68B4840);
          v1091 = v1090;
LABEL_258:
          *&v1364 = *(v1990 + 48);
          v1365 = v1946;
          v1366 = v1829;
          sub_1E67612FC(v1946, v1829, &qword_1ED096E68, &qword_1E68B4840);
          v1998.f64[0] = v1364;
          v1367 = v1878;
          sub_1E67612FC(v1878, v1366 + *&v1364, &qword_1ED096E68, &qword_1E68B4840);
          v1368 = v1999;
          v1369 = (v1999)(v1366, 1, v1091);
          v1370 = v2001;
          if (v1369 == 1)
          {
            sub_1E6744A10(v1367, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1860, &qword_1ED096E68, &qword_1E68B4840);
            v1371 = *(v2000 + 1);
            v1371(v1967, v1370);
            sub_1E6744A10(v1365, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1970, &qword_1ED096E68, &qword_1E68B4840);
            v1371(v1968, v1370);
            v1366 = v1829;
            if (v1368(v1829 + *&v1998.f64[0], 1, v1986) == 1)
            {
              sub_1E6744A10(v1366, &qword_1ED096E68, &qword_1E68B4840);
              (*(v1993 + 8))(v2002, v1989);
LABEL_425:
              v701 = 1;
              return v701 & 1;
            }

            goto LABEL_303;
          }

          v1444 = v1796;
          sub_1E67612FC(v1366, v1796, &qword_1ED096E68, &qword_1E68B4840);
          v1445 = v1998.f64[0];
          if (v1368(v1366 + *&v1998.f64[0], 1, v1091) == 1)
          {
            sub_1E6744A10(v1878, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1860, &qword_1ED096E68, &qword_1E68B4840);
            v1446 = *(v2000 + 1);
            v1447 = v2001;
            v1446(v1967, v2001);
            sub_1E6744A10(v1946, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1970, &qword_1ED096E68, &qword_1E68B4840);
            v1446(v1968, v1447);
            (*(v1988 + 8))(v1444, v1091);
LABEL_303:
            sub_1E6744A10(v1366, &qword_1ED098130, &qword_1E68B9D00);
            (*(v1993 + 8))(v2002, v1989);
            goto LABEL_381;
          }

          v1501 = v1988;
          v1502 = v1898;
          (*(v1988 + 32))(v1898, v1366 + *&v1445, v1091);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          LODWORD(v1999) = sub_1E68B3190();
          v1503 = *(v1501 + 8);
          v1503(v1502, v1091);
          sub_1E6744A10(v1878, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1860, &qword_1ED096E68, &qword_1E68B4840);
          v1504 = *(v2000 + 1);
          v1505 = v2001;
          v1504(v1967, v2001);
          sub_1E6744A10(v1946, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1970, &qword_1ED096E68, &qword_1E68B4840);
          v1504(v1968, v1505);
          v1503(v1444, v1091);
          sub_1E6744A10(v1829, &qword_1ED096E68, &qword_1E68B4840);
          v805 = v1993;
          v807 = v2002;
          v806 = v1989;
          if (v1999)
          {
            goto LABEL_347;
          }

LABEL_364:
          (*(v805 + 8))(v807, v806);
          goto LABEL_381;
        }
      }

      else
      {
        v1309 = v1820;
        sub_1E67612FC(v1087, v1820, &qword_1ED096E68, &qword_1E68B4840);
        if ((v1089)(v1087 + v1086, 1, v1090) != 1)
        {
          v1999 = v1089;
          v1359 = v1898;
          (*(v1088 + 32))(v1898, v1087 + v1086, v1090);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v1360 = v1087;
          v1091 = v1090;
          v1361 = sub_1E68B3190();
          v1362 = *(v1088 + 8);
          v1085 = v2002;
          v1362(v1359, v1091);
          v1362(v1309, v1091);
          v1363 = v1360;
          v1078 = v1860;
          sub_1E6744A10(v1363, &qword_1ED096E68, &qword_1E68B4840);
          if (v1361)
          {
            goto LABEL_258;
          }

LABEL_212:
          sub_1E6744A10(v1878, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1078, &qword_1ED096E68, &qword_1E68B4840);
          v1310 = *(v2000 + 1);
          v1311 = v2001;
          v1310(v1967, v2001);
          sub_1E6744A10(v1946, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1970, &qword_1ED096E68, &qword_1E68B4840);
          v1310(v1968, v1311);
          (*(v1993 + 8))(v1085, v1989);
          goto LABEL_381;
        }

        (*(v1088 + 8))(v1309, v1090);
      }

      sub_1E6744A10(v1087, &qword_1ED098130, &qword_1E68B9D00);
      goto LABEL_212;
    case 7u:
      v955 = v1919;
      v695 = v2002;
      v956 = (v674)(v1919, v2002, v614);
      v957 = v614;
      MEMORY[0x1EEE9AC00](v956, v958);
      strcpy(&v1755 - 48, "artwork caption displayStyle layout title ");
      v959 = v2001;
      *&v2051.f64[0] = v2001;
      v2051.f64[1] = v1997.f64[0];
      *&v2052.f64[0] = &type metadata for DynamicBrickDisplayStyle;
      *&v2052.f64[1] = &type metadata for DynamicBrickViewLayout;
      v2053.f64[0] = v1997.f64[0];
      v960 = swift_getTupleTypeMetadata();
      v961 = v960[16];
      LODWORD(v1998.f64[0]) = v955[v961];
      v962 = v960[12];
      v963 = v960[20];
      v965 = *&v955[v963];
      v964 = *&v955[v963 + 8];
      v966 = v960[24];
      v967 = v1999;
      v1989 = v957;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_59:
        sub_1E6744A10(&v955[v966], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v955[v962], &qword_1ED096E68, &qword_1E68B4840);
        (*(v2000 + 1))(v955, v959);
        goto LABEL_102;
      }

      LODWORD(v1997.f64[0]) = v967[v961];
      v969 = *&v967[v963];
      v968 = *&v967[v963 + 8];
      v970 = v2000;
      v971 = v1884;
      (*(v2000 + 4))(v1884, v967, v959);
      sub_1E6761420(&v955[v962], v1962, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v955[v966], v1947, &qword_1ED096E68, &qword_1E68B4840);
      v972 = &v967[v962];
      v973 = v1862;
      sub_1E6761420(v972, v1862, &qword_1ED096E68, &qword_1E68B4840);
      v974 = &v967[v966];
      v975 = v971;
      v976 = v1900;
      sub_1E6761420(v974, v1900, &qword_1ED096E68, &qword_1E68B4840);
      v977 = sub_1E68B3190();
      v980 = *(v970 + 1);
      v978 = v970 + 8;
      v979 = v980;
      (v980)(v955, v959);
      if ((v977 & 1) == 0)
      {
        sub_1E6744A10(v976, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v973, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1947, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1962, &qword_1ED096E68, &qword_1E68B4840);
        (v979)(v975, v959);
        goto LABEL_379;
      }

      v1999 = v979;
      v2000 = v978;
      v981 = *(v1990 + 48);
      v982 = v1962;
      v983 = v1849;
      sub_1E67612FC(v1962, v1849, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v973, v983 + v981, &qword_1ED096E68, &qword_1E68B4840);
      v984 = v1988;
      v985 = *(v1988 + 48);
      v986 = v1986;
      v987 = v985(v983, 1, v1986);
      v988 = v973;
      *&v1996.f64[0] = v985;
      if (v987 == 1)
      {
        v989 = v985(v983 + v981, 1, v986);
        v922 = v2002;
        if (v989 == 1)
        {
          sub_1E6744A10(v983, &qword_1ED096E68, &qword_1E68B4840);
          v990 = v2001;
          v991 = v982;
          goto LABEL_184;
        }
      }

      else
      {
        v1232 = v985;
        v1233 = v1837;
        sub_1E67612FC(v983, v1837, &qword_1ED096E68, &qword_1E68B4840);
        if (v1232(v983 + v981, 1, v986) != 1)
        {
          v1288 = v1898;
          (*(v984 + 32))(v1898, v983 + v981, v986);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v1289 = sub_1E68B3190();
          v1290 = *(v984 + 8);
          v1291 = v1288;
          v988 = v1862;
          v991 = v1962;
          v1290(v1291, v986);
          v1290(v1233, v986);
          sub_1E6744A10(v983, &qword_1ED096E68, &qword_1E68B4840);
          v990 = v2001;
          v922 = v2002;
          if (v1289)
          {
LABEL_184:
            v1292 = v1947;
            if (LODWORD(v1998.f64[0]) == LODWORD(v1997.f64[0]) && v965 == v969 && v964 == v968)
            {
              v1293 = *(v1990 + 48);
              v1294 = v1815;
              sub_1E67612FC(v1947, v1815, &qword_1ED096E68, &qword_1E68B4840);
              v1295 = v1900;
              sub_1E67612FC(v1900, v1294 + v1293, &qword_1ED096E68, &qword_1E68B4840);
              v1296 = v1986;
              v1297 = v1996.f64[0];
              if ((*&v1996.f64[0])(v1294, 1, v1986) == 1)
              {
                sub_1E6744A10(v1295, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1862, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1947, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1962, &qword_1ED096E68, &qword_1E68B4840);
                (v1999)(v1884, v990);
                v1294 = v1815;
                if ((*&v1297)(v1815 + v1293, 1, v1296) == 1)
                {
                  sub_1E6744A10(v1294, &qword_1ED096E68, &qword_1E68B4840);
                  v1298 = v1993;
LABEL_400:
                  (*(v1298 + 8))(v922, v1989);
                  goto LABEL_425;
                }
              }

              else
              {
                v1488 = v1787;
                sub_1E67612FC(v1294, v1787, &qword_1ED096E68, &qword_1E68B4840);
                if ((*&v1297)(v1294 + v1293, 1, v1296) != 1)
                {
                  v1570 = v1294;
                  v1571 = v1988;
                  v1572 = v1898;
                  (*(v1988 + 32))(v1898, v1570 + v1293, v1296);
                  sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                  LODWORD(v1998.f64[0]) = sub_1E68B3190();
                  v1573 = *(v1571 + 8);
                  v1573(v1572, v1296);
                  sub_1E6744A10(v1900, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1862, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1947, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1962, &qword_1ED096E68, &qword_1E68B4840);
                  (v1999)(v1884, v990);
                  v1573(v1488, v1296);
                  sub_1E6744A10(v1570, &qword_1ED096E68, &qword_1E68B4840);
                  v1298 = v1993;
                  if (LOBYTE(v1998.f64[0]))
                  {
                    goto LABEL_400;
                  }

                  goto LABEL_194;
                }

                sub_1E6744A10(v1900, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1862, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1947, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1962, &qword_1ED096E68, &qword_1E68B4840);
                (v1999)(v1884, v990);
                (*(v1988 + 8))(v1488, v1296);
              }

              sub_1E6744A10(v1294, &qword_1ED098130, &qword_1E68B9D00);
LABEL_193:
              v1298 = v1993;
LABEL_194:
              (*(v1298 + 8))(v922, v1989);
              goto LABEL_381;
            }

            sub_1E6744A10(v1900, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v988, &qword_1ED096E68, &qword_1E68B4840);
            v1234 = v1292;
LABEL_191:
            sub_1E6744A10(v1234, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v991, &qword_1ED096E68, &qword_1E68B4840);
            v1226 = v1884;
            v1227 = v990;
            goto LABEL_192;
          }

LABEL_148:
          sub_1E6744A10(v1900, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v988, &qword_1ED096E68, &qword_1E68B4840);
          v1234 = v1947;
          goto LABEL_191;
        }

        (*(v984 + 8))(v1233, v986);
        v922 = v2002;
      }

      sub_1E6744A10(v983, &qword_1ED098130, &qword_1E68B9D00);
      v990 = v2001;
      v991 = v982;
      goto LABEL_148;
    case 8u:
      v1024 = v1922;
      v695 = v2002;
      v1129 = (v674)(v1922, v2002, v614);
      v2057.f64[0] = v1024[6].f64[0];
      v1130 = v1024[5];
      v2055 = v1024[4];
      v2056 = v1130;
      v1131 = v1024[1];
      v2051 = *v1024;
      v2052 = v1131;
      v1132 = v1024[2];
      v2054 = v1024[3];
      v2053 = v1132;
      MEMORY[0x1EEE9AC00](v1129, v1133);
      strcpy(&v1755 - 48, "layout artwork title subtitle caption ");
      *&v2035.f64[0] = &type metadata for StandardCardViewLayout;
      v1031 = v2001;
      *&v2035.f64[1] = v2001;
      v2036.f64[0] = v1997.f64[0];
      v2036.f64[1] = v1997.f64[0];
      v2037.f64[0] = v1997.f64[0];
      v1134 = v614;
      v1135 = swift_getTupleTypeMetadata();
      v1034 = v1135[12];
      v1035 = v1135[16];
      *&v1998.f64[0] = v1135[20];
      v1036 = v1135[24];
      v1136 = v1999;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_86;
      }

      v1989 = v1134;
      v2069 = *(v1136 + 12);
      v1137 = *(v1136 + 4);
      v2068[5] = *(v1136 + 5);
      v2068[4] = v1137;
      v1138 = *(v1136 + 1);
      v2068[0] = *v1136;
      v2068[1] = v1138;
      v1139 = *(v1136 + 2);
      v2068[3] = *(v1136 + 3);
      v2068[2] = v1139;
      v1994 = v1135[12];
      *&v1995.f64[0] = v1135[16];
      *&v1996.f64[0] = v1135[20];
      *&v1997.f64[0] = v1135[24];
      v1140 = *(v2000 + 4);
      v1140(v1982, v1024 + v1034, v1031);
      sub_1E6761420(v1024 + v1035, v1971, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v1024 + *&v1998.f64[0], v1953, &qword_1ED096E68, &qword_1E68B4840);
      v1141 = v1024 + v1036;
      v1142 = v1874;
      sub_1E6761420(v1141, v1874, &qword_1ED096E68, &qword_1E68B4840);
      v1143 = v1859;
      v1140(v1859, &v1136[v1994], v1031);
      v1144 = v1910;
      sub_1E6761420(&v1136[*&v1995.f64[0]], v1910, &qword_1ED096E68, &qword_1E68B4840);
      v1145 = v1904;
      sub_1E6761420(&v1136[*&v1996.f64[0]], v1904, &qword_1ED096E68, &qword_1E68B4840);
      v1146 = v1872;
      sub_1E6761420(&v1136[*&v1997.f64[0]], v1872, &qword_1ED096E68, &qword_1E68B4840);
      v2039 = v2055;
      v2040 = v2056;
      v2041.f64[0] = v2057.f64[0];
      v2035 = v2051;
      v2036 = v2052;
      v2038 = v2054;
      v2037 = v2053;
      if (!_s15FitnessCanvasUI22StandardCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v2035, v2068))
      {
        sub_1E6744A10(v1146, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1145, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1144, &qword_1ED096E68, &qword_1E68B4840);
        v1208 = *(v2000 + 1);
        v1208(v1143, v1031);
        sub_1E6744A10(v1142, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1971, &qword_1ED096E68, &qword_1E68B4840);
        v1210 = v1982;
        goto LABEL_125;
      }

      v1147 = v1971;
      v1148 = sub_1E68B3190();
      v952 = v2002;
      v1149 = v1143;
      if ((v1148 & 1) == 0)
      {
        sub_1E6744A10(v1146, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1904, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1910, &qword_1ED096E68, &qword_1E68B4840);
        v1240 = *(v2000 + 1);
        v1240(v1143, v1031);
        sub_1E6744A10(v1142, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1147, &qword_1ED096E68, &qword_1E68B4840);
        v1240(v1982, v1031);
        goto LABEL_158;
      }

      v1150 = *(v1990 + 48);
      v1151 = v1840;
      sub_1E67612FC(v1147, v1840, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v1910, v1151 + v1150, &qword_1ED096E68, &qword_1E68B4840);
      v1152 = v1988;
      v1153 = *(v1988 + 48);
      v1154 = v1986;
      if ((v1153)(v1151, 1, v1986) == 1)
      {
        v1999 = v1153;
        v1155 = (v1153)(v1151 + v1150, 1, v1154);
        v1156 = v1982;
        v1157 = v1149;
        if (v1155 == 1)
        {
          sub_1E6744A10(v1151, &qword_1ED096E68, &qword_1E68B4840);
          v1061 = v1154;
          v1158 = v1910;
          goto LABEL_266;
        }
      }

      else
      {
        v1315 = v1821;
        sub_1E67612FC(v1151, v1821, &qword_1ED096E68, &qword_1E68B4840);
        if ((v1153)(v1151 + v1150, 1, v1154) != 1)
        {
          v1999 = v1153;
          v1382 = v1315;
          v1383 = v1898;
          (*(v1152 + 32))(v1898, v1151 + v1150, v1154);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v1384 = v1151;
          v1061 = v1154;
          v1385 = sub_1E68B3190();
          v1386 = *(v1152 + 8);
          v1386(v1383, v1061);
          v1387 = v1382;
          v1157 = v1859;
          v1386(v1387, v1061);
          v1388 = v1384;
          v1158 = v1910;
          sub_1E6744A10(v1388, &qword_1ED096E68, &qword_1E68B4840);
          v1156 = v1982;
          v1031 = v2001;
          if (v1385)
          {
LABEL_266:
            v1389 = *(v1990 + 48);
            v1390 = v1814;
            sub_1E67612FC(v1953, v1814, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E67612FC(v1904, v1390 + v1389, &qword_1ED096E68, &qword_1E68B4840);
            v1391 = v1999;
            v1392 = v1061;
            if ((v1999)(v1390, 1, v1061) == 1)
            {
              if (v1391(v1390 + v1389, 1, v1061) == 1)
              {
                v1056 = v1391;
                sub_1E6744A10(v1390, &qword_1ED096E68, &qword_1E68B4840);
LABEL_353:
                v1522 = *(v1990 + 48);
                v1523 = v1874;
                v1494 = v1802;
                sub_1E67612FC(v1874, v1802, &qword_1ED096E68, &qword_1E68B4840);
                v1495 = v1522;
                v1524 = v1494 + v1522;
                v1525 = v1872;
                sub_1E67612FC(v1872, v1524, &qword_1ED096E68, &qword_1E68B4840);
                if (v1056(v1494, 1, v1061) == 1)
                {
                  sub_1E6744A10(v1525, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1904, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1910, &qword_1ED096E68, &qword_1E68B4840);
                  v1526 = *(v2000 + 1);
                  v1527 = v2001;
                  v1526(v1859, v2001);
                  sub_1E6744A10(v1523, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1971, &qword_1ED096E68, &qword_1E68B4840);
                  v1526(v1982, v1527);
                  v1494 = v1802;
LABEL_355:
                  if (v1056(v1494 + v1495, 1, v1986) == 1)
                  {
                    v1516 = &qword_1ED096E68;
                    v1517 = &qword_1E68B4840;
                    v1518 = v1494;
                    goto LABEL_357;
                  }

                  goto LABEL_391;
                }

                v1548 = v1777;
                sub_1E67612FC(v1494, v1777, &qword_1ED096E68, &qword_1E68B4840);
                if (v1056(v1494 + v1495, 1, v1061) == 1)
                {
                  sub_1E6744A10(v1872, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1904, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1910, &qword_1ED096E68, &qword_1E68B4840);
                  v1549 = *(v2000 + 1);
                  v1550 = v2001;
                  v1549(v1859, v2001);
                  sub_1E6744A10(v1874, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1971, &qword_1ED096E68, &qword_1E68B4840);
                  v1551 = v1982;
                  goto LABEL_390;
                }

                v1625 = v1988;
                v1626 = v1898;
                (*(v1988 + 32))(v1898, v1494 + v1495, v1061);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                LODWORD(v1999) = sub_1E68B3190();
                v1627 = *(v1625 + 8);
                v1627(v1626, v1061);
                sub_1E6744A10(v1872, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1904, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1910, &qword_1ED096E68, &qword_1E68B4840);
                v1628 = *(v2000 + 1);
                v1629 = v2001;
                v1628(v1859, v2001);
                sub_1E6744A10(v1874, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1971, &qword_1ED096E68, &qword_1E68B4840);
                v1628(v1982, v1629);
                v1627(v1548, v1061);
                v1620 = v1802;
                goto LABEL_422;
              }
            }

            else
            {
              v1451 = v1806;
              sub_1E67612FC(v1390, v1806, &qword_1ED096E68, &qword_1E68B4840);
              v1056 = v1391;
              v1452 = v1391(v1390 + v1389, 1, v1392);
              v1453 = v1988;
              if (v1452 != 1)
              {
                v1519 = v1898;
                (*(v1988 + 32))(v1898, v1390 + v1389, v1392);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1061 = v1392;
                v1520 = sub_1E68B3190();
                v1521 = *(v1453 + 8);
                v1521(v1519, v1061);
                v1521(v1806, v1061);
                sub_1E6744A10(v1390, &qword_1ED096E68, &qword_1E68B4840);
                if (v1520)
                {
                  goto LABEL_353;
                }

                goto LABEL_312;
              }

              (*(v1988 + 8))(v1451, v1392);
            }

            sub_1E6744A10(v1390, &qword_1ED098130, &qword_1E68B9D00);
LABEL_312:
            sub_1E6744A10(v1872, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1904, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1158, &qword_1ED096E68, &qword_1E68B4840);
            v1208 = *(v2000 + 1);
            v1313 = v2001;
            v1208(v1859, v2001);
            sub_1E6744A10(v1874, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1971, &qword_1ED096E68, &qword_1E68B4840);
            v1210 = v1982;
LABEL_313:
            v1211 = v1313;
            goto LABEL_126;
          }

LABEL_220:
          sub_1E6744A10(v1872, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1904, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1158, &qword_1ED096E68, &qword_1E68B4840);
          v1208 = *(v2000 + 1);
          v1208(v1157, v1031);
          sub_1E6744A10(v1874, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1953, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1971, &qword_1ED096E68, &qword_1E68B4840);
          v1210 = v1156;
          goto LABEL_221;
        }

        v1157 = v1149;
        (*(v1152 + 8))(v1315, v1154);
        v1156 = v1982;
        v1031 = v2001;
      }

      sub_1E6744A10(v1151, &qword_1ED098130, &qword_1E68B9D00);
      v1158 = v1910;
      goto LABEL_220;
    case 9u:
      v808 = v1925;
      v695 = v2002;
      v809 = (v674)(v1925, v2002, v614);
      v810 = v808[7];
      v2057 = v808[6];
      v2058 = v810;
      v811 = v808[9];
      v2059 = v808[8];
      v2060 = v811;
      v812 = v808[3];
      v2053 = v808[2];
      v2054 = v812;
      v813 = v808[5];
      v2055 = v808[4];
      v2056 = v813;
      v814 = v808[1];
      v2051 = *v808;
      v2052 = v814;
      MEMORY[0x1EEE9AC00](v809, v815);
      strcpy(&v1755 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v2035.f64[0] = &type metadata for StandardHorizontalStackViewLayout;
      *&v2035.f64[1] = v2001;
      v2036.f64[0] = v1997.f64[0];
      v2036.f64[1] = v1997.f64[0];
      v2037.f64[0] = v1997.f64[0];
      v2037.f64[1] = v1997.f64[0];
      v2038.f64[0] = v1996.f64[0];
      v816 = v614;
      v817 = swift_getTupleTypeMetadata();
      v818 = v817[12];
      v819 = v817[16];
      v820 = v817[20];
      *&v1998.f64[0] = v817[24];
      *&v1997.f64[0] = v817[28];
      v821 = v817[32];
      v822 = v1999;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (v1992[1])(&v821[v808], *&v1996.f64[0]);
        sub_1E6744A10(v808 + *&v1997.f64[0], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v808 + *&v1998.f64[0], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v808 + v820, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v808 + v819, &qword_1ED096E68, &qword_1E68B4840);
        (*(v2000 + 1))(v808 + v818, v2001);
        goto LABEL_102;
      }

      v1989 = v816;
      v823 = v822[4];
      v2040 = v822[5];
      v2039 = v823;
      v824 = v822[8];
      v2044 = v822[9];
      v2043 = v824;
      v825 = v822[6];
      v2042 = v822[7];
      v2041 = v825;
      v826 = v822[2];
      v2038 = v822[3];
      v2037 = v826;
      v827 = v822[1];
      v2035 = *v822;
      v2036 = v827;
      v1981 = v817[12];
      v1982 = v817[16];
      v1984 = v817[20];
      v1985 = v817[24];
      v1994 = v817[28];
      *&v1995.f64[0] = v817[32];
      v828 = *(v2000 + 4);
      v1980 = v821;
      v829 = v2001;
      v828(v1979, v808 + v818);
      sub_1E6761420(v808 + v819, v1964, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v808 + v820, v1956, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v808 + *&v1998.f64[0], v1944, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v808 + *&v1997.f64[0], v1939, &qword_1ED096E68, &qword_1E68B4840);
      v830 = v1992[4];
      v831 = &v1980[v808];
      v832 = v1996.f64[0];
      v830(v1935, v831, *&v1996.f64[0]);
      (v828)(v1977, &v1981[v822], v829);
      v833 = v1868;
      sub_1E6761420(&v1982[v822], v1868, &qword_1ED096E68, &qword_1E68B4840);
      v834 = v1908;
      sub_1E6761420(v822 + v1984, v1908, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v822 + v1985, v1938, &qword_1ED096E68, &qword_1E68B4840);
      v835 = v1897;
      sub_1E6761420(v822 + v1994, v1897, &qword_1ED096E68, &qword_1E68B4840);
      v836 = v822 + *&v1995.f64[0];
      v837 = v1869;
      v830(v1869, v836, *&v832);
      v2025 = v2057;
      v2026 = v2058;
      v2027 = v2059;
      v2028 = v2060;
      v2021 = v2053;
      v2022 = v2054;
      v2023 = v2055;
      v2024 = v2056;
      v2019 = v2051;
      v2020 = v2052;
      v2009 = v2041;
      v2010 = v2042;
      v2011 = v2043;
      v2012 = v2044;
      v2005 = v2037;
      v2006 = v2038;
      v2007 = v2039;
      v2008 = v2040;
      v2003 = v2035;
      v2004 = v2036;
      v838 = _s15FitnessCanvasUI33StandardHorizontalStackViewLayoutV2eeoiySbAC_ACtFZ_0(&v2019, &v2003);
      v839 = v2001;
      if (!v838)
      {
        v1196 = v833;
        v1197 = v1992[1];
        v1197(v837, *&v832);
        sub_1E6744A10(v835, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v834, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1196, &qword_1ED096E68, &qword_1E68B4840);
        v1198 = *(v2000 + 1);
        v1198(v1977, v839);
        v1197(v1935, *&v832);
        sub_1E6744A10(v1939, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1944, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1956, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1964, &qword_1ED096E68, &qword_1E68B4840);
        v1198(v1979, v839);
        goto LABEL_379;
      }

      if ((sub_1E68B3190() & 1) == 0)
      {
        v1220 = v833;
        v1221 = v1992[1];
        v1221(v837, *&v832);
        sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1908, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1220, &qword_1ED096E68, &qword_1E68B4840);
        v1222 = *(v2000 + 1);
        v1222(v1977, v839);
        v1221(v1935, *&v832);
LABEL_135:
        sub_1E6744A10(v1939, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1944, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1956, &qword_1ED096E68, &qword_1E68B4840);
        v1223 = v1964;
LABEL_284:
        sub_1E6744A10(v1223, &qword_1ED096E68, &qword_1E68B4840);
        v1222(v1979, v839);
        goto LABEL_379;
      }

      v840 = *(v1990 + 48);
      v841 = v1964;
      v842 = v1843;
      sub_1E67612FC(v1964, v1843, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v833, v842 + v840, &qword_1ED096E68, &qword_1E68B4840);
      v843 = v1988;
      v844 = *(v1988 + 48);
      v845 = v1986;
      v846 = (v844)(v842, 1, v1986);
      v1999 = v844;
      if (v846 == 1)
      {
        v847 = (v844)(v842 + v840, 1, v845);
        v848 = v1845;
        if (v847 == 1)
        {
          sub_1E6744A10(v842, &qword_1ED096E68, &qword_1E68B4840);
          v849 = v845;
LABEL_242:
          v1344 = *(v1990 + 48);
          sub_1E67612FC(v1956, v848, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E67612FC(v1908, v848 + v1344, &qword_1ED096E68, &qword_1E68B4840);
          v1345 = v1999;
          if ((v1999)(v848, 1, v849) == 1)
          {
            v1346 = v1345;
            if (v1345(v848 + v1344, 1, v849) == 1)
            {
              sub_1E6744A10(v848, &qword_1ED096E68, &qword_1E68B4840);
              goto LABEL_330;
            }

            goto LABEL_281;
          }

          v1406 = v1797;
          sub_1E67612FC(v848, v1797, &qword_1ED096E68, &qword_1E68B4840);
          v1346 = v1345;
          v1407 = v1345(v848 + v1344, 1, v849);
          v1408 = v1988;
          if (v1407 == 1)
          {
            (*(v1988 + 8))(v1406, v849);
            v841 = v1964;
LABEL_281:
            v1264 = v848;
            goto LABEL_282;
          }

          v1479 = v1898;
          (*(v1988 + 32))(v1898, v848 + v1344, v849);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v1480 = sub_1E68B3190();
          v1481 = *(v1408 + 8);
          v1481(v1479, v849);
          v1481(v1406, v849);
          sub_1E6744A10(v848, &qword_1ED096E68, &qword_1E68B4840);
          v841 = v1964;
          if (v1480)
          {
LABEL_330:
            v1482 = *(v1990 + 48);
            v1483 = v1792;
            sub_1E67612FC(v1944, v1792, &qword_1ED096E68, &qword_1E68B4840);
            v1484 = v1938;
            sub_1E67612FC(v1938, v1483 + v1482, &qword_1ED096E68, &qword_1E68B4840);
            if (v1346(v1483, 1, v849) == 1)
            {
              if (v1346(v1483 + v1482, 1, v849) == 1)
              {
                sub_1E6744A10(v1483, &qword_1ED096E68, &qword_1E68B4840);
                goto LABEL_408;
              }
            }

            else
            {
              v1534 = v1778;
              sub_1E67612FC(v1483, v1778, &qword_1ED096E68, &qword_1E68B4840);
              v1535 = v1346(v1483 + v1482, 1, v849);
              v1536 = v1483;
              v1537 = v1988;
              if (v1535 != 1)
              {
                v1592 = v1536 + v1482;
                v1593 = v1898;
                (*(v1988 + 32))(v1898, v1592, v849);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1594 = sub_1E68B3190();
                v1595 = *(v1537 + 8);
                v1595(v1593, v849);
                v1595(v1534, v849);
                sub_1E6744A10(v1536, &qword_1ED096E68, &qword_1E68B4840);
                v1346 = v1999;
                if (v1594)
                {
LABEL_408:
                  v1596 = *(v1990 + 48);
                  v1597 = v1774;
                  sub_1E67612FC(v1939, v1774, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E67612FC(v1897, v1597 + v1596, &qword_1ED096E68, &qword_1E68B4840);
                  v1598 = v849;
                  if (v1346(v1597, 1, v849) == 1)
                  {
                    if (v1346(v1597 + v1596, 1, v849) == 1)
                    {
                      sub_1E6744A10(v1597, &qword_1ED096E68, &qword_1E68B4840);
                      v1599 = *&v1996.f64[0];
                      goto LABEL_442;
                    }
                  }

                  else
                  {
                    v1635 = v1768;
                    sub_1E67612FC(v1597, v1768, &qword_1ED096E68, &qword_1E68B4840);
                    if (v1346(v1597 + v1596, 1, v1598) != 1)
                    {
                      v1658 = v1988;
                      v1659 = v1597 + v1596;
                      v1660 = v1898;
                      (*(v1988 + 32))(v1898, v1659, v1598);
                      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                      v1661 = v1598;
                      v1662 = sub_1E68B3190();
                      v1663 = *(v1658 + 8);
                      v1663(v1660, v1661);
                      v1663(v1635, v1661);
                      sub_1E6744A10(v1597, &qword_1ED096E68, &qword_1E68B4840);
                      v1599 = *&v1996.f64[0];
                      v1636 = v1908;
                      if (v1662)
                      {
LABEL_442:
                        v1664 = *(v1827 + 48);
                        v1665 = v1992[2];
                        v1666 = v1771;
                        v1665(v1771, v1935, v1599);
                        v1665(&v1664[v1666], v1869, v1599);
                        v1667 = *(v1983 + 48);
                        if ((v1667)(v1666, 1, v1987) == 1)
                        {
                          v1668 = v1992 + 1;
                          v1669 = v1992[1];
                          v1669(v1869, v1599);
                          sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1908, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1868, &qword_1ED096E68, &qword_1E68B4840);
                          v1999 = v1667;
                          v1670 = *(v2000 + 1);
                          v2000 = v1664;
                          v1671 = v2001;
                          v1670(v1977, v2001);
                          v1992 = v1668;
                          v1669(v1935, v1599);
                          sub_1E6744A10(v1939, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1944, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1956, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1964, &qword_1ED096E68, &qword_1E68B4840);
                          v1670(v1979, v1671);
                          v1672 = v1771;
                          if ((v1999)(&v2000[v1771], 1, v1987) == 1)
                          {
                            v1669(v1672, *&v1996.f64[0]);
                            v1673 = v1989;
LABEL_464:
                            (*(v1993 + 8))(v2002, v1673);
                            goto LABEL_425;
                          }
                        }

                        else
                        {
                          v1665(v1766, v1666, v1599);
                          if ((v1667)(&v1664[v1666], 1, v1987) != 1)
                          {
                            v1700 = v1983;
                            v1701 = v1783;
                            v1702 = v1987;
                            (*(v1983 + 32))(v1783, &v1664[v1771], v1987);
                            LODWORD(v1999) = sub_1E68B3190();
                            v1703 = *(v1700 + 8);
                            v1983 = v1700 + 8;
                            *&v1998.f64[0] = v1703;
                            v1703(v1701, v1702);
                            v1997.f64[0] = v1992[1];
                            (*&v1997.f64[0])(v1869, v1599);
                            sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1908, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1868, &qword_1ED096E68, &qword_1E68B4840);
                            v1704 = *(v2000 + 1);
                            v1705 = v1599;
                            v1706 = v2001;
                            v1704(v1977, v2001);
                            v1707 = v1599;
                            v1708 = v1997.f64[0];
                            (*&v1997.f64[0])(v1935, v1707);
                            sub_1E6744A10(v1939, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1944, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1956, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1964, &qword_1ED096E68, &qword_1E68B4840);
                            v1704(v1979, v1706);
                            (*&v1998.f64[0])(v1766, v1702);
                            (*&v1708)(v1771, v1705);
                            v1673 = v1989;
                            if (v1999)
                            {
                              goto LABEL_464;
                            }

LABEL_458:
                            (*(v1993 + 8))(v2002, v1673);
                            goto LABEL_381;
                          }

                          v1690 = v1992[1];
                          v1690(v1869, v1599);
                          sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1908, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1868, &qword_1ED096E68, &qword_1E68B4840);
                          v1691 = *(v2000 + 1);
                          v1692 = v2001;
                          v1691(v1977, v2001);
                          v1690(v1935, v1599);
                          sub_1E6744A10(v1939, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1944, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1956, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1964, &qword_1ED096E68, &qword_1E68B4840);
                          v1691(v1979, v1692);
                          (*(v1983 + 8))(v1766, v1987);
                          v1672 = v1771;
                        }

                        (*(v1793 + 8))(v1672, v1827);
                        v1673 = v1989;
                        goto LABEL_458;
                      }

                      goto LABEL_432;
                    }

                    (*(v1988 + 8))(v1635, v1598);
                  }

                  sub_1E6744A10(v1597, &qword_1ED098130, &qword_1E68B9D00);
                  v1599 = *&v1996.f64[0];
                  v1636 = v1908;
LABEL_432:
                  v1637 = v1992[1];
                  v1637(v1869, v1599);
                  sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1636, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1868, &qword_1ED096E68, &qword_1E68B4840);
                  v1222 = *(v2000 + 1);
                  v839 = v2001;
                  v1222(v1977, v2001);
                  v1637(v1935, v1599);
                  goto LABEL_135;
                }

                goto LABEL_368;
              }

              (*(v1988 + 8))(v1534, v849);
              v1483 = v1536;
            }

            sub_1E6744A10(v1483, &qword_1ED098130, &qword_1E68B9D00);
LABEL_368:
            v1538 = v1992[1];
            v1539 = v1996.f64[0];
            v1538(v1869, *&v1996.f64[0]);
            sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1484, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1908, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1868, &qword_1ED096E68, &qword_1E68B4840);
            v1222 = *(v2000 + 1);
            v839 = v2001;
            v1222(v1977, v2001);
            v1538(v1935, *&v1539);
            goto LABEL_135;
          }

LABEL_283:
          v1409 = v1992[1];
          v1410 = v1996.f64[0];
          v1409(v1869, *&v1996.f64[0]);
          sub_1E6744A10(v1897, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1938, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1908, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1868, &qword_1ED096E68, &qword_1E68B4840);
          v1222 = *(v2000 + 1);
          v839 = v2001;
          v1222(v1977, v2001);
          v1409(v1935, *&v1410);
          sub_1E6744A10(v1939, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1944, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1956, &qword_1ED096E68, &qword_1E68B4840);
          v1223 = v841;
          goto LABEL_284;
        }
      }

      else
      {
        v1262 = v1823;
        sub_1E67612FC(v842, v1823, &qword_1ED096E68, &qword_1E68B4840);
        v1263 = (v844)(v842 + v840, 1, v845);
        v848 = v1845;
        if (v1263 != 1)
        {
          v1340 = v1898;
          (*(v843 + 32))(v1898, v842 + v840, v845);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v1341 = v842;
          v849 = v845;
          v1342 = sub_1E68B3190();
          v1343 = *(v843 + 8);
          v1343(v1340, v849);
          v1343(v1262, v849);
          sub_1E6744A10(v1341, &qword_1ED096E68, &qword_1E68B4840);
          v841 = v1964;
          if ((v1342 & 1) == 0)
          {
            goto LABEL_283;
          }

          goto LABEL_242;
        }

        (*(v843 + 8))(v1262, v845);
        v841 = v1964;
      }

      v1264 = v842;
LABEL_282:
      sub_1E6744A10(v1264, &qword_1ED098130, &qword_1E68B9D00);
      goto LABEL_283;
    case 0xAu:
      v1092 = v1920;
      v1093 = (v674)(v1920, v2002, v614);
      v1094 = v614;
      v1095 = *v1092;
      v1096 = v1092[1];
      v1097 = v1092[2];
      v1998.f64[0] = v1092[3];
      LODWORD(v1996.f64[0]) = *(v1092 + 32);
      v1098 = v1092[5];
      v1992 = *(v1092 + 6);
      MEMORY[0x1EEE9AC00](v1093, v1099);
      strcpy(&v1755 - 48, "layout artwork title subtitle caption ");
      *&v2051.f64[0] = &type metadata for StandardVerticalStackViewLayout;
      v1100 = v2001;
      *&v2051.f64[1] = v2001;
      v2052.f64[0] = v1997.f64[0];
      v2052.f64[1] = v1997.f64[0];
      v2053.f64[0] = v1997.f64[0];
      v1101 = swift_getTupleTypeMetadata();
      v1102 = v1101[12];
      v1103 = v1101[16];
      v1104 = v1101[20];
      v1105 = v1101[24];
      v1106 = v1999;
      v1989 = v1094;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        sub_1E6744A10(v1092 + v1105, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1092 + v1104, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1092 + v1103, &qword_1ED096E68, &qword_1E68B4840);
        v1159 = *(v2000 + 1);
        v1160 = v1092 + v1102;
        v1161 = v1100;
        goto LABEL_100;
      }

      LODWORD(v1997.f64[0]) = *v1106;
      v1107 = *(v1106 + 1);
      v1108 = *(v1106 + 2);
      v1995.f64[0] = *(v1106 + 3);
      LODWORD(v1994) = v1106[32];
      v1109 = *(v1106 + 5);
      v1987 = *(v1106 + 6);
      LODWORD(v1985) = v1095;
      v1984 = *(v2000 + 4);
      (v1984)(v1957, v1092 + v1102, v1100);
      v1983 = v1102;
      sub_1E6761420(v1092 + v1103, v1950, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v1092 + v1104, v1960, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v1092 + v1105, v1942, &qword_1ED096E68, &qword_1E68B4840);
      (v1984)(v1969, &v1106[v1983], v1100);
      v1110 = v1866;
      sub_1E6761420(&v1106[v1103], v1866, &qword_1ED096E68, &qword_1E68B4840);
      v1111 = &v1106[v1104];
      v1112 = v1881;
      sub_1E6761420(v1111, v1881, &qword_1ED096E68, &qword_1E68B4840);
      v1113 = &v1106[v1105];
      v1114 = v1873;
      sub_1E6761420(v1113, v1873, &qword_1ED096E68, &qword_1E68B4840);
      LOBYTE(v2051.f64[0]) = v1985;
      v2051.f64[1] = v1096;
      v2052.f64[0] = v1097;
      v2052.f64[1] = v1998.f64[0];
      LOBYTE(v2053.f64[0]) = LOBYTE(v1996.f64[0]);
      v2053.f64[1] = v1098;
      *&v2054.f64[0] = v1992;
      LOBYTE(v2035.f64[0]) = LOBYTE(v1997.f64[0]);
      v2035.f64[1] = v1107;
      v2036.f64[0] = v1108;
      v2036.f64[1] = v1995.f64[0];
      LOBYTE(v2037.f64[0]) = v1994;
      v2037.f64[1] = v1109;
      *&v2038.f64[0] = v1987;
      if (_s15FitnessCanvasUI31StandardVerticalStackViewLayoutV2eeoiySbAC_ACtFZ_0(v2051.f64, v2035.f64))
      {
        v1115 = v1957;
        v1116 = v1969;
        v1117 = v2001;
        v1118 = sub_1E68B3190();
        v769 = v2002;
        if ((v1118 & 1) == 0)
        {
          sub_1E6744A10(v1114, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1112, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1110, &qword_1ED096E68, &qword_1E68B4840);
          v1239 = *(v2000 + 1);
          v1239(v1116, v1117);
          sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1960, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1950, &qword_1ED096E68, &qword_1E68B4840);
          v1239(v1115, v1117);
LABEL_156:
          (*(v1993 + 8))(v769, v1989);
          goto LABEL_381;
        }

        v1119 = v1110;
        v1120 = *(v1990 + 48);
        v1121 = v1950;
        v1122 = v1841;
        sub_1E67612FC(v1950, v1841, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E67612FC(v1119, v1122 + v1120, &qword_1ED096E68, &qword_1E68B4840);
        v1123 = v1988;
        v1124 = *(v1988 + 48);
        v1125 = v1986;
        v1126 = v1124(v1122, 1, v1986);
        v1127 = v1960;
        if (v1126 == 1)
        {
          if (v1124(v1122 + v1120, 1, v1125) == 1)
          {
            sub_1E6744A10(v1122, &qword_1ED096E68, &qword_1E68B4840);
            v1128 = v1125;
            goto LABEL_262;
          }
        }

        else
        {
          v1312 = v1822;
          sub_1E67612FC(v1122, v1822, &qword_1ED096E68, &qword_1E68B4840);
          if (v1124(v1122 + v1120, 1, v1125) != 1)
          {
            v1372 = v1898;
            (*(v1123 + 32))(v1898, v1122 + v1120, v1125);
            sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
            v1373 = v1122;
            v1128 = v1125;
            v1374 = sub_1E68B3190();
            v1375 = *(v1123 + 8);
            v1376 = v1372;
            v1127 = v1960;
            v1375(v1376, v1128);
            v1375(v1312, v1128);
            v1377 = v1373;
            v1121 = v1950;
            sub_1E6744A10(v1377, &qword_1ED096E68, &qword_1E68B4840);
            v1115 = v1957;
            if (v1374)
            {
LABEL_262:
              v1378 = *(v1990 + 48);
              v1379 = v1127;
              v1380 = v1818;
              sub_1E67612FC(v1379, v1818, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E67612FC(v1881, v1380 + v1378, &qword_1ED096E68, &qword_1E68B4840);
              v1381 = v1128;
              if (v1124(v1380, 1, v1128) == 1)
              {
                if (v1124(v1380 + v1378, 1, v1128) == 1)
                {
                  sub_1E6744A10(v1380, &qword_1ED096E68, &qword_1E68B4840);
                  goto LABEL_349;
                }
              }

              else
              {
                v1448 = v1807;
                sub_1E67612FC(v1380, v1807, &qword_1ED096E68, &qword_1E68B4840);
                v1449 = v1124(v1380 + v1378, 1, v1381);
                v1450 = v1988;
                if (v1449 != 1)
                {
                  v1506 = v1380 + v1378;
                  v1507 = v1898;
                  (*(v1988 + 32))(v1898, v1506, v1381);
                  sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                  v1128 = v1381;
                  v1508 = sub_1E68B3190();
                  v1509 = *(v1450 + 8);
                  v1509(v1507, v1128);
                  v1509(v1807, v1128);
                  sub_1E6744A10(v1818, &qword_1ED096E68, &qword_1E68B4840);
                  if (v1508)
                  {
LABEL_349:
                    v1510 = *(v1990 + 48);
                    v1511 = v1803;
                    sub_1E67612FC(v1942, v1803, &qword_1ED096E68, &qword_1E68B4840);
                    v1999 = v1510;
                    v1512 = &v1510[v1511];
                    v1513 = v1873;
                    sub_1E67612FC(v1873, v1512, &qword_1ED096E68, &qword_1E68B4840);
                    if (v1124(v1511, 1, v1128) == 1)
                    {
                      sub_1E6744A10(v1513, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1881, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1866, &qword_1ED096E68, &qword_1E68B4840);
                      v1514 = *(v2000 + 1);
                      v1515 = v2001;
                      v1514(v1969, v2001);
                      sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1960, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1121, &qword_1ED096E68, &qword_1E68B4840);
                      v1514(v1115, v1515);
                      v1511 = v1803;
                      if (v1124(&v1999[v1803], 1, v1986) == 1)
                      {
                        v1516 = &qword_1ED096E68;
                        v1517 = &qword_1E68B4840;
                        v1518 = v1511;
LABEL_357:
                        sub_1E6744A10(v1518, v1516, v1517);
LABEL_358:
                        v1528 = v1993;
                        v1529 = v2002;
                        goto LABEL_424;
                      }
                    }

                    else
                    {
                      v1552 = v1789;
                      sub_1E67612FC(v1511, v1789, &qword_1ED096E68, &qword_1E68B4840);
                      v1553 = v1999;
                      if (v1124(&v1999[v1511], 1, v1128) != 1)
                      {
                        v1621 = v1988;
                        v1622 = v1898;
                        (*(v1988 + 32))(v1898, &v1553[v1511], v1128);
                        sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                        LODWORD(v1999) = sub_1E68B3190();
                        v1998.f64[0] = *(v1621 + 8);
                        (*&v1998.f64[0])(v1622, v1128);
                        sub_1E6744A10(v1873, &qword_1ED096E68, &qword_1E68B4840);
                        sub_1E6744A10(v1881, &qword_1ED096E68, &qword_1E68B4840);
                        sub_1E6744A10(v1866, &qword_1ED096E68, &qword_1E68B4840);
                        v1623 = *(v2000 + 1);
                        v1624 = v2001;
                        v1623(v1969, v2001);
                        sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
                        sub_1E6744A10(v1960, &qword_1ED096E68, &qword_1E68B4840);
                        sub_1E6744A10(v1121, &qword_1ED096E68, &qword_1E68B4840);
                        v1623(v1115, v1624);
                        (*&v1998.f64[0])(v1789, v1128);
                        v1620 = v1803;
LABEL_422:
                        v1630 = &qword_1ED096E68;
                        v1631 = &qword_1E68B4840;
                        goto LABEL_423;
                      }

                      sub_1E6744A10(v1873, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1881, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1866, &qword_1ED096E68, &qword_1E68B4840);
                      v1554 = *(v2000 + 1);
                      v1555 = v2001;
                      v1554(v1969, v2001);
                      sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1960, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1121, &qword_1ED096E68, &qword_1E68B4840);
                      v1554(v1115, v1555);
                      (*(v1988 + 8))(v1552, v1986);
                    }

                    v1556 = &qword_1ED098130;
                    v1557 = &qword_1E68B9D00;
                    v1558 = v1511;
LABEL_392:
                    sub_1E6744A10(v1558, v1556, v1557);
                    goto LABEL_393;
                  }

                  goto LABEL_307;
                }

                (*(v1988 + 8))(v1448, v1381);
              }

              sub_1E6744A10(v1380, &qword_1ED098130, &qword_1E68B9D00);
LABEL_307:
              sub_1E6744A10(v1873, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1881, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1866, &qword_1ED096E68, &qword_1E68B4840);
              v1208 = *(v2000 + 1);
              v1313 = v2001;
              v1208(v1969, v2001);
              sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
              v1314 = v1960;
              goto LABEL_308;
            }

LABEL_216:
            sub_1E6744A10(v1873, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1881, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1866, &qword_1ED096E68, &qword_1E68B4840);
            v1208 = *(v2000 + 1);
            v1313 = v2001;
            v1208(v1969, v2001);
            sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
            v1314 = v1127;
LABEL_308:
            sub_1E6744A10(v1314, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E6744A10(v1121, &qword_1ED096E68, &qword_1E68B4840);
            v1210 = v1115;
            goto LABEL_313;
          }

          (*(v1123 + 8))(v1312, v1125);
          v1115 = v1957;
        }

        sub_1E6744A10(v1122, &qword_1ED098130, &qword_1E68B9D00);
        goto LABEL_216;
      }

      sub_1E6744A10(v1114, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1112, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1110, &qword_1ED096E68, &qword_1E68B4840);
      v1208 = *(v2000 + 1);
      v1209 = v2001;
      v1208(v1969, v2001);
      sub_1E6744A10(v1942, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1960, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1950, &qword_1ED096E68, &qword_1E68B4840);
      v1210 = v1957;
LABEL_123:
      v1211 = v1209;
      goto LABEL_126;
    case 0xBu:
      v704 = v1923;
      v705 = (v674)(v1923, v2002, v614);
      v706 = *v704;
      v1996 = v704[1];
      v1998 = v706;
      v707 = v704[2].f64[0];
      MEMORY[0x1EEE9AC00](v705, v708);
      strcpy(&v1755 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v2051.f64[0] = &type metadata for SummaryCardViewLayout;
      v709 = v2001;
      *&v2051.f64[1] = v2001;
      v2052.f64[0] = v1997.f64[0];
      v2052.f64[1] = v1997.f64[0];
      v2053.f64[0] = v1997.f64[0];
      *&v2053.f64[1] = v1930;
      v710 = swift_getTupleTypeMetadata();
      v711 = v710[12];
      v712 = v710[16];
      v713 = v710[20];
      v714 = v710[24];
      v715 = v710[28];
      v716 = v1999;
      v1989 = v614;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1E6744A10(v704 + v715, &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(v704 + v714, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v704 + v713, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v712 + v704, &qword_1ED096E68, &qword_1E68B4840);
        v1159 = *(v2000 + 1);
        v1160 = v704 + v711;
        goto LABEL_91;
      }

      v717 = *(v716 + 4);
      v1992 = v712;
      v1985 = v714;
      v718 = v713;
      v1994 = *(v2000 + 4);
      v719 = *(v716 + 1);
      v1997 = *v716;
      v1995 = v719;
      (v1994)(v1976, v704 + v711, v709);
      v1987 = v711;
      sub_1E6761420(v712 + v704, v1972, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v704 + v713, v1955, &qword_1ED096E68, &qword_1E68B4840);
      v720 = v1985;
      sub_1E6761420(v704 + v1985, v1943, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v704 + v715, v1940, &qword_1ED096E88, &qword_1E68B9CF0);
      v721 = v1877;
      (v1994)(v1877, &v716[v1987], v709);
      v722 = v1871;
      sub_1E6761420(v1992 + v716, v1871, &qword_1ED096E68, &qword_1E68B4840);
      v723 = v1882;
      sub_1E6761420(&v716[v718], v1882, &qword_1ED096E68, &qword_1E68B4840);
      v724 = v1867;
      sub_1E6761420(&v716[v720], v1867, &qword_1ED096E68, &qword_1E68B4840);
      v725 = v1870;
      sub_1E6761420(&v716[v715], v1870, &qword_1ED096E88, &qword_1E68B9CF0);
      v2052 = v1996;
      v2051 = v1998;
      v2053.f64[0] = v707;
      v2036 = v1995;
      v2035 = v1997;
      v2037.f64[0] = v717;
      if ((_s15FitnessCanvasUI21SummaryCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v2051, &v2035) & 1) == 0)
      {
        sub_1E6744A10(v725, &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(v724, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v723, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v722, &qword_1ED096E68, &qword_1E68B4840);
        v1014 = *(v2000 + 1);
        v1193 = v2001;
        (v1014)(v721, v2001);
        sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1972, &qword_1ED096E68, &qword_1E68B4840);
        v1194 = v1976;
        goto LABEL_377;
      }

      v726 = v2001;
      v727 = sub_1E68B3190();
      v728 = v2002;
      if ((v727 & 1) == 0)
      {
        sub_1E6744A10(v725, &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(v724, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v723, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v722, &qword_1ED096E68, &qword_1E68B4840);
        v1215 = *(v2000 + 1);
        v1215(v721, v726);
        sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
        sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1972, &qword_1ED096E68, &qword_1E68B4840);
        v1215(v1976, v726);
        (*(v1993 + 8))(v728, v1989);
        goto LABEL_381;
      }

      v729 = *(v1990 + 48);
      v730 = v1842;
      sub_1E67612FC(v1972, v1842, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v722, v730 + v729, &qword_1ED096E68, &qword_1E68B4840);
      v731 = v1988;
      v732 = *(v1988 + 48);
      v733 = v1986;
      if (v732(v730, 1, v1986) == 1)
      {
        v734 = v732(v730 + v729, 1, v733);
        v735 = v1877;
        if (v734 == 1)
        {
          sub_1E6744A10(v730, &qword_1ED096E68, &qword_1E68B4840);
          v736 = v733;
          goto LABEL_236;
        }
      }

      else
      {
        v1245 = v1824;
        sub_1E67612FC(v730, v1824, &qword_1ED096E68, &qword_1E68B4840);
        if (v732(v730 + v729, 1, v733) != 1)
        {
          v1326 = v1898;
          (*(v731 + 32))(v1898, v730 + v729, v733);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v736 = v733;
          v1327 = sub_1E68B3190();
          v1328 = *(v731 + 8);
          v1328(v1326, v736);
          v1328(v1245, v736);
          sub_1E6744A10(v730, &qword_1ED096E68, &qword_1E68B4840);
          v735 = v1877;
          if (v1327)
          {
LABEL_236:
            v1329 = *(v1990 + 48);
            v1330 = v1819;
            sub_1E67612FC(v1955, v1819, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E67612FC(v1882, v1330 + v1329, &qword_1ED096E68, &qword_1E68B4840);
            v1331 = v736;
            if (v732(v1330, 1, v736) == 1)
            {
              v1332 = v732(v1330 + v1329, 1, v736);
              v1333 = v1867;
              if (v1332 == 1)
              {
                sub_1E6744A10(v1330, &qword_1ED096E68, &qword_1E68B4840);
                goto LABEL_326;
              }
            }

            else
            {
              v1393 = v1798;
              sub_1E67612FC(v1330, v1798, &qword_1ED096E68, &qword_1E68B4840);
              v1394 = v732(v1330 + v1329, 1, v736);
              v1395 = v1330;
              v1396 = v1988;
              if (v1394 != 1)
              {
                v1470 = v1898;
                (*(v1988 + 32))(v1898, v1395 + v1329, v1331);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v736 = v1331;
                v1471 = sub_1E68B3190();
                v1472 = *(v1396 + 8);
                v1472(v1470, v736);
                v1472(v1393, v736);
                sub_1E6744A10(v1819, &qword_1ED096E68, &qword_1E68B4840);
                v1333 = v1867;
                if (v1471)
                {
LABEL_326:
                  v1473 = *(v1990 + 48);
                  v1474 = v1791;
                  sub_1E67612FC(v1943, v1791, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E67612FC(v1333, v1474 + v1473, &qword_1ED096E68, &qword_1E68B4840);
                  if (v732(v1474, 1, v736) == 1)
                  {
                    v1475 = v732(v1474 + v1473, 1, v736);
                    v1476 = v1972;
                    v1477 = v1871;
                    v1478 = v1870;
                    if (v1475 == 1)
                    {
                      sub_1E6744A10(v1474, &qword_1ED096E68, &qword_1E68B4840);
                      goto LABEL_404;
                    }
                  }

                  else
                  {
                    v1530 = v1779;
                    sub_1E67612FC(v1474, v1779, &qword_1ED096E68, &qword_1E68B4840);
                    if (v732(v1474 + v1473, 1, v736) != 1)
                    {
                      v1580 = v1988;
                      v1581 = v1474 + v1473;
                      v1582 = v1898;
                      (*(v1988 + 32))(v1898, v1581, v736);
                      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                      v1583 = sub_1E68B3190();
                      v1584 = *(v1580 + 8);
                      v1584(v1582, v736);
                      v1584(v1530, v736);
                      sub_1E6744A10(v1474, &qword_1ED096E68, &qword_1E68B4840);
                      v1476 = v1972;
                      v1477 = v1871;
                      v1478 = v1870;
                      if (v1583)
                      {
LABEL_404:
                        v1585 = *(v1775 + 48);
                        v1586 = v1790;
                        sub_1E67612FC(v1940, v1790, &qword_1ED096E88, &qword_1E68B9CF0);
                        sub_1E67612FC(v1478, v1586 + v1585, &qword_1ED096E88, &qword_1E68B9CF0);
                        v1587 = *(v1782 + 48);
                        v1588 = v1784;
                        if (v1587(v1586, 1, v1784) == 1)
                        {
                          sub_1E6744A10(v1478, &qword_1ED096E88, &qword_1E68B9CF0);
                          sub_1E6744A10(v1333, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1882, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1871, &qword_1ED096E68, &qword_1E68B4840);
                          v1589 = v2001;
                          v1590 = *(v2000 + 1);
                          v1590(v1877, v2001);
                          sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
                          sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
                          v1591 = v1790;
                          sub_1E6744A10(v1476, &qword_1ED096E68, &qword_1E68B4840);
                          v1590(v1976, v1589);
                          if (v1587(v1591 + v1585, 1, v1784) == 1)
                          {
                            v1516 = &qword_1ED096E88;
                            v1517 = &qword_1E68B9CF0;
                            v1518 = v1591;
                            goto LABEL_357;
                          }
                        }

                        else
                        {
                          v1632 = v1770;
                          sub_1E67612FC(v1586, v1770, &qword_1ED096E88, &qword_1E68B9CF0);
                          if (v1587(v1586 + v1585, 1, v1588) != 1)
                          {
                            v1652 = v1782;
                            v1653 = v1586 + v1585;
                            v1654 = v1763;
                            (*(v1782 + 32))(v1763, v1653, v1588);
                            sub_1E67BDEF8(&qword_1ED098138, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
                            LODWORD(v1999) = sub_1E68B3190();
                            v1655 = *(v1652 + 8);
                            v1655(v1654, v1588);
                            sub_1E6744A10(v1870, &qword_1ED096E88, &qword_1E68B9CF0);
                            sub_1E6744A10(v1333, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1882, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1871, &qword_1ED096E68, &qword_1E68B4840);
                            v1656 = *(v2000 + 1);
                            v1657 = v2001;
                            v1656(v1877, v2001);
                            sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
                            sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
                            sub_1E6744A10(v1476, &qword_1ED096E68, &qword_1E68B4840);
                            v1656(v1976, v1657);
                            v1655(v1770, v1588);
                            v1620 = v1790;
                            v1630 = &qword_1ED096E88;
                            v1631 = &qword_1E68B9CF0;
LABEL_423:
                            sub_1E6744A10(v1620, v1630, v1631);
                            v1528 = v1993;
                            v1529 = v2002;
                            if ((v1999 & 1) == 0)
                            {
                              goto LABEL_394;
                            }

                            goto LABEL_424;
                          }

                          sub_1E6744A10(v1870, &qword_1ED096E88, &qword_1E68B9CF0);
                          sub_1E6744A10(v1333, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1882, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1871, &qword_1ED096E68, &qword_1E68B4840);
                          v1633 = *(v2000 + 1);
                          v1634 = v2001;
                          v1633(v1877, v2001);
                          sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
                          sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
                          sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
                          v1591 = v1790;
                          sub_1E6744A10(v1476, &qword_1ED096E68, &qword_1E68B4840);
                          v1633(v1976, v1634);
                          (*(v1782 + 8))(v1632, v1784);
                        }

                        v1556 = &qword_1ED098128;
                        v1557 = &qword_1E68B9CF8;
                        v1558 = v1591;
                        goto LABEL_392;
                      }

                      goto LABEL_362;
                    }

                    (*(v1988 + 8))(v1530, v736);
                    v1476 = v1972;
                    v1477 = v1871;
                    v1478 = v1870;
                  }

                  sub_1E6744A10(v1474, &qword_1ED098130, &qword_1E68B9D00);
LABEL_362:
                  sub_1E6744A10(v1478, &qword_1ED096E88, &qword_1E68B9CF0);
                  sub_1E6744A10(v1333, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1882, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1477, &qword_1ED096E68, &qword_1E68B4840);
                  v1014 = *(v2000 + 1);
                  v1397 = v2001;
                  (v1014)(v1877, v2001);
                  sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
                  sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
                  v1398 = v1476;
                  goto LABEL_274;
                }

                goto LABEL_272;
              }

              (*(v1988 + 8))(v1393, v1331);
              v1330 = v1395;
              v1333 = v1867;
            }

            sub_1E6744A10(v1330, &qword_1ED098130, &qword_1E68B9D00);
LABEL_272:
            sub_1E6744A10(v1870, &qword_1ED096E88, &qword_1E68B9CF0);
            v1246 = v1333;
            goto LABEL_273;
          }

LABEL_163:
          sub_1E6744A10(v1870, &qword_1ED096E88, &qword_1E68B9CF0);
          v1246 = v1867;
LABEL_273:
          sub_1E6744A10(v1246, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1882, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1871, &qword_1ED096E68, &qword_1E68B4840);
          v1014 = *(v2000 + 1);
          v1397 = v2001;
          (v1014)(v735, v2001);
          sub_1E6744A10(v1940, &qword_1ED096E88, &qword_1E68B9CF0);
          sub_1E6744A10(v1943, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1955, &qword_1ED096E68, &qword_1E68B4840);
          v1398 = v1972;
LABEL_274:
          sub_1E6744A10(v1398, &qword_1ED096E68, &qword_1E68B4840);
          v1194 = v1976;
          v1207 = v1397;
          goto LABEL_378;
        }

        (*(v731 + 8))(v1245, v733);
        v735 = v1877;
      }

      sub_1E6744A10(v730, &qword_1ED098130, &qword_1E68B9D00);
      goto LABEL_163;
    case 0xCu:
      v770 = v1918;
      v771 = (v674)(v1918, v2002, v614);
      v772 = *v770;
      v773 = v770[1];
      v774 = v770[2];
      v775 = *(v770 + 24);
      v776 = v770[4];
      v777 = v770[5];
      MEMORY[0x1EEE9AC00](v771, v778);
      strcpy(&v1755 - 48, "layout artwork title overlay ");
      *&v2051.f64[0] = &type metadata for TallCardViewLayout;
      v709 = v2001;
      *&v2051.f64[1] = v2001;
      v2052.f64[0] = v1997.f64[0];
      *&v2052.f64[1] = &type metadata for Overlay;
      v779 = swift_getTupleTypeMetadata();
      v780 = v779[12];
      v781 = v614;
      v782 = v779[16];
      v783 = v779[20];
      v784 = *(v770 + v783);
      v785 = v1999;
      v1989 = v781;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_1E6744A10(v770 + v782, &qword_1ED096E68, &qword_1E68B4840);
        v1159 = *(v2000 + 1);
        v1160 = v770 + v780;
LABEL_91:
        v1161 = v709;
LABEL_100:
        v1159(v1160, v1161);
LABEL_101:
        v695 = v2002;
        goto LABEL_102;
      }

      LODWORD(v1992) = v784;
      v1998 = *v785;
      v786 = *(v785 + 2);
      LODWORD(v1997.f64[0]) = v785[24];
      v787 = *(v785 + 4);
      v1996.f64[0] = *(v785 + 5);
      LODWORD(v1987) = v785[v783];
      v788 = v2000;
      LODWORD(v1994) = v775;
      v1995.f64[0] = v777;
      v789 = *(v2000 + 4);
      v789(v1966, v770 + v780, v709);
      sub_1E6761420(v770 + v782, v1927, &qword_1ED096E68, &qword_1E68B4840);
      v790 = &v785[v780];
      v791 = v1864;
      v789(v1864, v790, v709);
      v792 = v1856;
      sub_1E6761420(&v785[v782], v1856, &qword_1ED096E68, &qword_1E68B4840);
      v2051.f64[0] = v772;
      v2051.f64[1] = v773;
      v2052.f64[0] = v774;
      LOBYTE(v2052.f64[1]) = v1994;
      v2053.f64[0] = v776;
      v2053.f64[1] = v1995.f64[0];
      v2035 = v1998;
      v2036.f64[0] = v786;
      LOBYTE(v2036.f64[1]) = LOBYTE(v1997.f64[0]);
      v2037.f64[0] = v787;
      v2037.f64[1] = v1996.f64[0];
      if (!_s15FitnessCanvasUI18TallCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v2051, &v2035))
      {
        sub_1E6744A10(v792, &qword_1ED096E68, &qword_1E68B4840);
        v1195 = *(v788 + 1);
        v1195(v791, v709);
        sub_1E6744A10(v1927, &qword_1ED096E68, &qword_1E68B4840);
        v1195(v1966, v709);
        goto LABEL_379;
      }

      v793 = v1966;
      v794 = sub_1E68B3190();
      v795 = v2002;
      v796 = v1989;
      if ((v794 & 1) == 0)
      {
        sub_1E6744A10(v792, &qword_1ED096E68, &qword_1E68B4840);
        v1219 = *(v2000 + 1);
        v1219(v791, v709);
        sub_1E6744A10(v1927, &qword_1ED096E68, &qword_1E68B4840);
        v1219(v793, v709);
        (*(v1993 + 8))(v795, v796);
        goto LABEL_381;
      }

      v797 = *(v1990 + 48);
      v798 = v1927;
      v799 = v1846;
      sub_1E67612FC(v1927, v1846, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v792, v799 + v797, &qword_1ED096E68, &qword_1E68B4840);
      v800 = v1988;
      v801 = *(v1988 + 48);
      v802 = v1986;
      if (v801(v799, 1, v1986) == 1)
      {
        sub_1E6744A10(v792, &qword_1ED096E68, &qword_1E68B4840);
        v803 = *(v2000 + 1);
        v804 = v2001;
        v803(v1864, v2001);
        v799 = v1846;
        sub_1E6744A10(v798, &qword_1ED096E68, &qword_1E68B4840);
        v803(v1966, v804);
        if (v801(v799 + v797, 1, v802) == 1)
        {
          sub_1E6744A10(v799, &qword_1ED096E68, &qword_1E68B4840);
          v805 = v1993;
          v806 = v1989;
          v807 = v2002;
          goto LABEL_240;
        }

LABEL_170:
        v1261 = v799;
        goto LABEL_317;
      }

      v1256 = v1830;
      sub_1E67612FC(v799, v1830, &qword_1ED096E68, &qword_1E68B4840);
      if (v801(v799 + v797, 1, v802) == 1)
      {
        v1257 = v802;
        sub_1E6744A10(v1856, &qword_1ED096E68, &qword_1E68B4840);
        v1258 = *(v2000 + 1);
        v1259 = v1256;
        v1260 = v2001;
        v1258(v1864, v2001);
        sub_1E6744A10(v798, &qword_1ED096E68, &qword_1E68B4840);
        v1258(v1966, v1260);
        (*(v800 + 8))(v1259, v1257);
        goto LABEL_170;
      }

      v1334 = v799 + v797;
      v1335 = v1898;
      (*(v800 + 32))(v1898, v1334, v802);
      sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
      LODWORD(v1999) = sub_1E68B3190();
      v1336 = *(v800 + 8);
      v1336(v1335, v802);
      sub_1E6744A10(v1856, &qword_1ED096E68, &qword_1E68B4840);
      v1337 = *(v2000 + 1);
      v1338 = v2001;
      v1337(v1864, v2001);
      sub_1E6744A10(v798, &qword_1ED096E68, &qword_1E68B4840);
      v1337(v1966, v1338);
      v1336(v1830, v802);
      sub_1E6744A10(v1846, &qword_1ED096E68, &qword_1E68B4840);
      v805 = v1993;
      v806 = v1989;
      v807 = v2002;
      if ((v1999 & 1) == 0)
      {
        goto LABEL_364;
      }

LABEL_240:
      v1339 = v1992 ^ v1987;
      (*(v805 + 8))(v807, v806);
      v701 = v1339 ^ 1;
      return v701 & 1;
    case 0xDu:
      v1024 = v1924;
      v695 = v2002;
      v1025 = (v674)(v1924, v2002, v614);
      v1026 = v1024[5];
      v2055 = v1024[4];
      v2056 = v1026;
      v1027 = v1024[7];
      v2057 = v1024[6];
      v2058 = v1027;
      v1028 = v1024[1];
      v2051 = *v1024;
      v2052 = v1028;
      v1029 = v1024[3];
      v2053 = v1024[2];
      v2054 = v1029;
      MEMORY[0x1EEE9AC00](v1025, v1030);
      strcpy(&v1755 - 48, "layout artwork title subtitle caption ");
      *&v2035.f64[0] = &type metadata for VerticalStackCardLayout;
      v1031 = v2001;
      *&v2035.f64[1] = v2001;
      v2036.f64[0] = v1997.f64[0];
      v2036.f64[1] = v1997.f64[0];
      v2037.f64[0] = v1997.f64[0];
      v1032 = v614;
      v1033 = swift_getTupleTypeMetadata();
      v1034 = v1033[12];
      v1035 = v1033[16];
      *&v1998.f64[0] = v1033[20];
      v1036 = v1033[24];
      v1037 = v1999;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_86:
        sub_1E6744A10(v1024 + v1036, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1024 + *&v1998.f64[0], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1024 + v1035, &qword_1ED096E68, &qword_1E68B4840);
        (*(v2000 + 1))(v1024 + v1034, v1031);
        goto LABEL_102;
      }

      v1989 = v1032;
      v1038 = v1037[6];
      v2070[7] = v1037[7];
      v2070[6] = v1038;
      v1039 = v1037[4];
      v2070[5] = v1037[5];
      v2070[4] = v1039;
      v1040 = v1037[1];
      v2070[0] = *v1037;
      v2070[1] = v1040;
      v1041 = v1037[2];
      v2070[3] = v1037[3];
      v2070[2] = v1041;
      v1994 = v1033[12];
      *&v1995.f64[0] = v1033[16];
      *&v1996.f64[0] = v1033[20];
      *&v1997.f64[0] = v1033[24];
      v1042 = *(v2000 + 4);
      v1042(v1959, v1024 + v1034, v1031);
      v1043 = v1024 + v1035;
      v1044 = v1889;
      sub_1E6761420(v1043, v1889, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v1024 + *&v1998.f64[0], v1954, &qword_1ED096E68, &qword_1E68B4840);
      v1045 = v1024 + v1036;
      v1046 = v1876;
      sub_1E6761420(v1045, v1876, &qword_1ED096E68, &qword_1E68B4840);
      v1047 = v1880;
      v1042(v1880, v1037 + v1994, v1031);
      v1048 = v1911;
      sub_1E6761420(v1037 + *&v1995.f64[0], v1911, &qword_1ED096E68, &qword_1E68B4840);
      v1049 = v1906;
      sub_1E6761420(v1037 + *&v1996.f64[0], v1906, &qword_1ED096E68, &qword_1E68B4840);
      v1050 = v1875;
      sub_1E6761420(v1037 + *&v1997.f64[0], v1875, &qword_1ED096E68, &qword_1E68B4840);
      v2039 = v2055;
      v2040 = v2056;
      v2041 = v2057;
      v2042 = v2058;
      v2035 = v2051;
      v2036 = v2052;
      v2037 = v2053;
      v2038 = v2054;
      if (!_s15FitnessCanvasUI23VerticalStackCardLayoutV2eeoiySbAC_ACtFZ_0(&v2035, v2070))
      {
        sub_1E6744A10(v1050, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1049, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1048, &qword_1ED096E68, &qword_1E68B4840);
        v1208 = *(v2000 + 1);
        v1208(v1047, v1031);
        sub_1E6744A10(v1046, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1044, &qword_1ED096E68, &qword_1E68B4840);
        v1210 = v1959;
LABEL_125:
        v1211 = v1031;
LABEL_126:
        v1208(v1210, v1211);
        goto LABEL_379;
      }

      v1051 = v1959;
      v1052 = sub_1E68B3190();
      v952 = v2002;
      if ((v1052 & 1) == 0)
      {
        sub_1E6744A10(v1050, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1906, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1911, &qword_1ED096E68, &qword_1E68B4840);
        v1237 = *(v2000 + 1);
        v1237(v1047, v1031);
        sub_1E6744A10(v1046, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1889, &qword_1ED096E68, &qword_1E68B4840);
        v1237(v1051, v1031);
        goto LABEL_158;
      }

      v1053 = *(v1990 + 48);
      v1054 = v1844;
      sub_1E67612FC(v1044, v1844, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v1911, v1054 + v1053, &qword_1ED096E68, &qword_1E68B4840);
      v1055 = v1988;
      v1056 = *(v1988 + 48);
      v1057 = v1986;
      if (v1056(v1054, 1, v1986) == 1)
      {
        v1058 = v1056(v1054 + v1053, 1, v1057);
        v1059 = v1880;
        v1060 = v1051;
        if (v1058 == 1)
        {
          sub_1E6744A10(v1054, &qword_1ED096E68, &qword_1E68B4840);
          v1061 = v1057;
          v1062 = v1911;
          goto LABEL_254;
        }
      }

      else
      {
        v1308 = v1825;
        sub_1E67612FC(v1054, v1825, &qword_1ED096E68, &qword_1E68B4840);
        if (v1056(v1054 + v1053, 1, v1057) != 1)
        {
          v1349 = v1308;
          v1350 = v1898;
          (*(v1055 + 32))(v1898, v1054 + v1053, v1057);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          v1351 = v1054;
          v1061 = v1057;
          v1352 = sub_1E68B3190();
          v1353 = *(v1055 + 8);
          v1353(v1350, v1061);
          v1354 = v1349;
          v1060 = v1959;
          v1353(v1354, v1061);
          v1355 = v1351;
          v1062 = v1911;
          sub_1E6744A10(v1355, &qword_1ED096E68, &qword_1E68B4840);
          v1059 = v1880;
          v1031 = v2001;
          if (v1352)
          {
LABEL_254:
            v1356 = *(v1990 + 48);
            v1357 = v1816;
            sub_1E67612FC(v1954, v1816, &qword_1ED096E68, &qword_1E68B4840);
            sub_1E67612FC(v1906, v1357 + v1356, &qword_1ED096E68, &qword_1E68B4840);
            v1358 = v1061;
            if (v1056(v1357, 1, v1061) == 1)
            {
              if (v1056(v1357 + v1356, 1, v1061) == 1)
              {
                sub_1E6744A10(v1357, &qword_1ED096E68, &qword_1E68B4840);
LABEL_341:
                v1492 = *(v1990 + 48);
                v1493 = v1876;
                v1494 = v1804;
                sub_1E67612FC(v1876, v1804, &qword_1ED096E68, &qword_1E68B4840);
                v1495 = v1492;
                v1496 = v1494 + v1492;
                v1497 = v1875;
                sub_1E67612FC(v1875, v1496, &qword_1ED096E68, &qword_1E68B4840);
                if (v1056(v1494, 1, v1061) == 1)
                {
                  sub_1E6744A10(v1497, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1906, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1911, &qword_1ED096E68, &qword_1E68B4840);
                  v1498 = *(v2000 + 1);
                  v1499 = v2001;
                  v1498(v1880, v2001);
                  sub_1E6744A10(v1493, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1889, &qword_1ED096E68, &qword_1E68B4840);
                  v1498(v1959, v1499);
                  v1494 = v1804;
                  goto LABEL_355;
                }

                v1548 = v1780;
                sub_1E67612FC(v1494, v1780, &qword_1ED096E68, &qword_1E68B4840);
                if (v1056(v1494 + v1495, 1, v1061) == 1)
                {
                  sub_1E6744A10(v1875, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1906, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1911, &qword_1ED096E68, &qword_1E68B4840);
                  v1549 = *(v2000 + 1);
                  v1550 = v2001;
                  v1549(v1880, v2001);
                  sub_1E6744A10(v1876, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
                  sub_1E6744A10(v1889, &qword_1ED096E68, &qword_1E68B4840);
                  v1551 = v1959;
LABEL_390:
                  v1549(v1551, v1550);
                  (*(v1988 + 8))(v1548, v1061);
LABEL_391:
                  v1556 = &qword_1ED098130;
                  v1557 = &qword_1E68B9D00;
                  v1558 = v1494;
                  goto LABEL_392;
                }

                v1615 = v1988;
                v1616 = v1898;
                (*(v1988 + 32))(v1898, v1494 + v1495, v1061);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                LODWORD(v1999) = sub_1E68B3190();
                v1617 = *(v1615 + 8);
                v1617(v1616, v1061);
                sub_1E6744A10(v1875, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1906, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1911, &qword_1ED096E68, &qword_1E68B4840);
                v1618 = *(v2000 + 1);
                v1619 = v2001;
                v1618(v1880, v2001);
                sub_1E6744A10(v1876, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1889, &qword_1ED096E68, &qword_1E68B4840);
                v1618(v1959, v1619);
                v1617(v1548, v1061);
                v1620 = v1804;
                goto LABEL_422;
              }
            }

            else
            {
              v1441 = v1808;
              sub_1E67612FC(v1357, v1808, &qword_1ED096E68, &qword_1E68B4840);
              v1442 = v1056(v1357 + v1356, 1, v1358);
              v1443 = v1988;
              if (v1442 != 1)
              {
                v1489 = v1898;
                (*(v1988 + 32))(v1898, v1357 + v1356, v1358);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1061 = v1358;
                v1490 = sub_1E68B3190();
                v1491 = *(v1443 + 8);
                v1491(v1489, v1061);
                v1491(v1808, v1061);
                sub_1E6744A10(v1357, &qword_1ED096E68, &qword_1E68B4840);
                if (v1490)
                {
                  goto LABEL_341;
                }

LABEL_300:
                sub_1E6744A10(v1875, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1906, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1062, &qword_1ED096E68, &qword_1E68B4840);
                v1208 = *(v2000 + 1);
                v1313 = v2001;
                v1208(v1880, v2001);
                sub_1E6744A10(v1876, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1889, &qword_1ED096E68, &qword_1E68B4840);
                v1210 = v1959;
                goto LABEL_313;
              }

              (*(v1988 + 8))(v1441, v1358);
            }

            sub_1E6744A10(v1357, &qword_1ED098130, &qword_1E68B9D00);
            goto LABEL_300;
          }

          goto LABEL_208;
        }

        v1060 = v1051;
        (*(v1055 + 8))(v1308, v1057);
        v1059 = v1880;
        v1031 = v2001;
      }

      sub_1E6744A10(v1054, &qword_1ED098130, &qword_1E68B9D00);
      v1062 = v1911;
LABEL_208:
      sub_1E6744A10(v1875, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1906, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1062, &qword_1ED096E68, &qword_1E68B4840);
      v1208 = *(v2000 + 1);
      v1208(v1059, v1031);
      sub_1E6744A10(v1876, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1954, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v1889, &qword_1ED096E68, &qword_1E68B4840);
      v1210 = v1060;
LABEL_221:
      v1211 = v1031;
      goto LABEL_126;
    case 0xEu:
      v694 = v1915;
      v695 = v2002;
      (v674)(v1915, v2002, v614);
      v696 = v1999;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        (*(v1932 + 8))(v694, v1933);
        goto LABEL_102;
      }

      v697 = v1932;
      v698 = v1854;
      v699 = v1933;
      (*(v1932 + 32))(v1854, v696, v1933);
      v700 = v614;
      v701 = sub_1E68B3190();
      v702 = *(v697 + 8);
      v702(v698, v699);
      v703 = v694;
LABEL_53:
      v702(v703, v699);
      (*(v1993 + 8))(v695, v700);
      return v701 & 1;
    case 0xFu:
      v899 = v1921;
      v695 = v2002;
      (v674)(v1921, v2002, v614);
      v900 = v2001;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v902 = *(TupleTypeMetadata3 + 48);
      v903 = *(TupleTypeMetadata3 + 64);
      v904 = v1999;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        sub_1E6744A10(&v899[v903], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v899[v902], &qword_1ED096E68, &qword_1E68B4840);
        v1163 = *(v2000 + 1);
        v1164 = v899;
LABEL_98:
        v1163(v1164, v900);
LABEL_102:
        (*(v1994 + 8))(v695, *&v1995.f64[0]);
LABEL_381:
        v701 = 0;
        return v701 & 1;
      }

      v1989 = v614;
      v905 = v2000;
      v906 = v1883;
      (*(v2000 + 4))(v1883, v904, v900);
      sub_1E6761420(&v899[v902], v1978, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v899[v903], v1952, &qword_1ED096E68, &qword_1E68B4840);
      v907 = &v904[v902];
      v908 = v1888;
      sub_1E6761420(v907, v1888, &qword_1ED096E68, &qword_1E68B4840);
      v909 = &v904[v903];
      v910 = v906;
      v911 = v1905;
      sub_1E6761420(v909, v1905, &qword_1ED096E68, &qword_1E68B4840);
      v912 = sub_1E68B3190();
      v915 = *(v905 + 1);
      v913 = v905 + 8;
      v914 = v915;
      (v915)(v899, v900);
      if ((v912 & 1) == 0)
      {
        sub_1E6744A10(v911, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v908, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1952, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1978, &qword_1ED096E68, &qword_1E68B4840);
        (v914)(v910, v900);
        goto LABEL_379;
      }

      v1999 = v914;
      v2000 = v913;
      v916 = *(v1990 + 48);
      v917 = v1850;
      sub_1E67612FC(v1978, v1850, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v908, v917 + v916, &qword_1ED096E68, &qword_1E68B4840);
      v918 = v1988;
      v919 = *(v1988 + 48);
      v920 = v1986;
      v921 = v919(v917, 1, v1986);
      v922 = v2002;
      if (v921 == 1)
      {
        if (v919(v917 + v916, 1, v920) == 1)
        {
          sub_1E6744A10(v917, &qword_1ED096E68, &qword_1E68B4840);
          goto LABEL_176;
        }
      }

      else
      {
        v1225 = v1838;
        sub_1E67612FC(v917, v1838, &qword_1ED096E68, &qword_1E68B4840);
        if (v919(v917 + v916, 1, v920) != 1)
        {
          v1265 = v1898;
          (*(v918 + 32))(v1898, v917 + v916, v920);
          sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
          LODWORD(v1998.f64[0]) = sub_1E68B3190();
          v1266 = *(v918 + 8);
          v1266(v1265, v920);
          v1266(v1225, v920);
          sub_1E6744A10(v917, &qword_1ED096E68, &qword_1E68B4840);
          if (LOBYTE(v1998.f64[0]))
          {
LABEL_176:
            v1267 = *(v1990 + 48);
            v1268 = v1952;
            v1269 = v1833;
            sub_1E67612FC(v1952, v1833, &qword_1ED096E68, &qword_1E68B4840);
            v1270 = v1267;
            v1271 = v1269 + v1267;
            v1272 = v1905;
            sub_1E67612FC(v1905, v1271, &qword_1ED096E68, &qword_1E68B4840);
            if (v919(v1269, 1, v920) == 1)
            {
              sub_1E6744A10(v1272, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1888, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1268, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1978, &qword_1ED096E68, &qword_1E68B4840);
              (v1999)(v1883, v2001);
              v1273 = v919(v1269 + v1270, 1, v920);
              v1274 = v2002;
              if (v1273 == 1)
              {
                sub_1E6744A10(v1269, &qword_1ED096E68, &qword_1E68B4840);
                v1275 = v1993;
                v1276 = v1989;
LABEL_286:
                (*(v1275 + 8))(v1274, v1276);
                goto LABEL_425;
              }
            }

            else
            {
              v1320 = v1812;
              sub_1E67612FC(v1269, v1812, &qword_1ED096E68, &qword_1E68B4840);
              if (v919(v1269 + v1270, 1, v920) != 1)
              {
                v1411 = v1988;
                v1412 = v1898;
                (*(v1988 + 32))(v1898, v1269 + v1270, v920);
                sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
                v1413 = sub_1E68B3190();
                v1414 = *(v1411 + 8);
                v1414(v1412, v920);
                sub_1E6744A10(v1905, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1888, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1952, &qword_1ED096E68, &qword_1E68B4840);
                sub_1E6744A10(v1978, &qword_1ED096E68, &qword_1E68B4840);
                (v1999)(v1883, v2001);
                v1414(v1320, v920);
                sub_1E6744A10(v1269, &qword_1ED096E68, &qword_1E68B4840);
                v1275 = v1993;
                v1276 = v1989;
                v1274 = v2002;
                if (v1413)
                {
                  goto LABEL_286;
                }

LABEL_229:
                (*(v1275 + 8))(v1274, v1276);
                goto LABEL_381;
              }

              sub_1E6744A10(v1905, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1888, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1952, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1978, &qword_1ED096E68, &qword_1E68B4840);
              (v1999)(v1883, v2001);
              (*(v1988 + 8))(v1320, v920);
              v1274 = v2002;
            }

            sub_1E6744A10(v1269, &qword_1ED098130, &qword_1E68B9D00);
            v1275 = v1993;
            v1276 = v1989;
            goto LABEL_229;
          }

LABEL_140:
          sub_1E6744A10(v1905, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1888, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1952, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1978, &qword_1ED096E68, &qword_1E68B4840);
          v1226 = v1883;
          v1227 = v2001;
LABEL_192:
          (v1999)(v1226, v1227);
          goto LABEL_193;
        }

        (*(v918 + 8))(v1225, v920);
      }

      sub_1E6744A10(v917, &qword_1ED098130, &qword_1E68B9D00);
      goto LABEL_140;
    default:
      v675 = (v674)(v666, v2002, v614);
      v2066 = *(v666 + 30);
      v676 = *(v666 + 13);
      v2063 = *(v666 + 12);
      v2064 = v676;
      v2065 = *(v666 + 14);
      v677 = *(v666 + 9);
      v2059 = *(v666 + 8);
      v2060 = v677;
      v678 = *(v666 + 11);
      v2061 = *(v666 + 10);
      v2062 = v678;
      v679 = *(v666 + 5);
      v2055 = *(v666 + 4);
      v2056 = v679;
      v680 = *(v666 + 7);
      v2057 = *(v666 + 6);
      v2058 = v680;
      v681 = *(v666 + 1);
      v2051 = *v666;
      v2052 = v681;
      v682 = *(v666 + 3);
      v2053 = *(v666 + 2);
      v2054 = v682;
      MEMORY[0x1EEE9AC00](v675, v683);
      strcpy(&v1755 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v2035.f64[0] = &type metadata for ActionCardViewLayout;
      *&v2035.f64[1] = v2001;
      *&v2036.f64[0] = &type metadata for ActionCardViewStyle;
      v2036.f64[1] = v1997.f64[0];
      v2037.f64[0] = v1997.f64[0];
      v2037.f64[1] = v1997.f64[0];
      *&v2038.f64[0] = v1987;
      v2038.f64[1] = v1996.f64[0];
      v684 = swift_getTupleTypeMetadata();
      v685 = v614;
      v686 = v684;
      v687 = v666[v684[16]];
      v688 = v684[12];
      v689 = v684[20];
      v690 = v684[24];
      v691 = v684[28];
      v692 = v685;
      *&v1997.f64[0] = v684[32];
      *&v1998.f64[0] = v684[36];
      v693 = v1999;
      if (swift_getEnumCaseMultiPayload())
      {
        (v1992[1])(&v666[*&v1998.f64[0]], *&v1996.f64[0]);
        (*(v1983 + 8))(&v666[*&v1997.f64[0]], v1987);
        sub_1E6744A10(&v666[v691], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v666[v690], &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(&v666[v689], &qword_1ED096E68, &qword_1E68B4840);
        (*(v2000 + 1))(&v666[v688], v2001);
        goto LABEL_101;
      }

      LODWORD(v1979) = v687;
      v1989 = v692;
      v1165 = v693[6];
      v2042 = v693[7];
      v2041 = v1165;
      v1166 = v693[4];
      v2040 = v693[5];
      v2039 = v1166;
      v1167 = v693[10];
      v2046 = v693[11];
      v2045 = v1167;
      v1168 = v693[8];
      v2044 = v693[9];
      v2043 = v1168;
      v2050 = v693[15].f64[0];
      v1169 = v693[13];
      v2049 = v693[14];
      v1170 = v693[12];
      v2048 = v1169;
      v2047 = v1170;
      v1171 = v693[1];
      v2035 = *v693;
      v2036 = v1171;
      v1172 = v693[2];
      v2038 = v693[3];
      v2037 = v1172;
      v1981 = v686[12];
      LODWORD(v1978) = *(v693->f64 + v686[16]);
      v1982 = v686[20];
      v1984 = v686[24];
      v1985 = v686[28];
      v1994 = v686[32];
      *&v1995.f64[0] = v686[36];
      v1980 = *(v2000 + 4);
      v1173 = v2001;
      (v1980)(v1913, &v666[v688], v2001);
      sub_1E6761420(&v666[v689], v1907, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v666[v690], v1902, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v666[v691], v1896, &qword_1ED096E68, &qword_1E68B4840);
      *&v1174 = v1983 + 32;
      v1175 = *(v1983 + 32);
      v1175(v1892, &v666[*&v1997.f64[0]], v1987);
      v1176 = v1992[4];
      v1177 = &v666[*&v1998.f64[0]];
      v1178 = v1996.f64[0];
      v1176(v1891, v1177, *&v1996.f64[0]);
      (v1980)(v1912, &v1981[v693], v1173);
      v1179 = v1863;
      sub_1E6761420(&v1982[v693], v1863, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v693 + v1984, v1890, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(v693 + v1985, v1895, &qword_1ED096E68, &qword_1E68B4840);
      v1180 = v1857;
      v1181 = v1987;
      v1998.f64[0] = v1174;
      *&v1997.f64[0] = v1175;
      v1175(v1857, v693 + v1994, v1987);
      v1182 = v1852;
      v1176(v1852, v693 + *&v1995.f64[0], *&v1178);
      v2031 = v2063;
      v2032 = v2064;
      v2033 = v2065;
      v2034 = v2066;
      v2027 = v2059;
      v2028 = v2060;
      v2029 = v2061;
      v2030 = v2062;
      v2023 = v2055;
      v2024 = v2056;
      v2025 = v2057;
      v2026 = v2058;
      v2019 = v2051;
      v2020 = v2052;
      v2021 = v2053;
      v2022 = v2054;
      v2015 = v2047;
      v2016 = v2048;
      v2017 = v2049;
      v2018 = v2050;
      v2011 = v2043;
      v2012 = v2044;
      v2013 = v2045;
      v2014 = v2046;
      v2007 = v2039;
      v2008 = v2040;
      v2009 = v2041;
      v2010 = v2042;
      v2003 = v2035;
      v2004 = v2036;
      v2005 = v2037;
      v2006 = v2038;
      v1183 = _s15FitnessCanvasUI20ActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v2019, &v2003);
      v1184 = v2001;
      v1185 = v1181;
      if (!v1183)
      {
        v1999 = v1992[1];
        v1212 = v1182;
        v1213 = v1996.f64[0];
        (v1999)(v1212, *&v1996.f64[0]);
        v1998.f64[0] = *(v1983 + 8);
        (*&v1998.f64[0])(v1180, v1181);
        sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1890, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1179, &qword_1ED096E68, &qword_1E68B4840);
        v1214 = *(v2000 + 1);
        v1214(v1912, v1184);
        (v1999)(v1891, *&v1213);
        (*&v1998.f64[0])(v1892, v1181);
        sub_1E6744A10(v1896, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1902, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1907, &qword_1ED096E68, &qword_1E68B4840);
        v1214(v1913, v1184);
        goto LABEL_379;
      }

      if ((sub_1E68B3190() & 1) == 0)
      {
        v1999 = v1992[1];
        v1241 = v1181;
        v1242 = v1996.f64[0];
        (v1999)(v1182, *&v1996.f64[0]);
        v1243 = *(v1983 + 8);
        v1243(v1857, v1241);
        sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1890, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
        v1244 = *(v2000 + 1);
        v1244(v1912, v1184);
        (v1999)(v1891, *&v1242);
        v1243(v1892, v1987);
        sub_1E6744A10(v1896, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1902, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1907, &qword_1ED096E68, &qword_1E68B4840);
        v1244(v1913, v1184);
        goto LABEL_379;
      }

      v1186 = v1992;
      v1187 = v1890;
      if (v1979 != v1978)
      {
        v1999 = v1992[1];
        v1323 = v1185;
        v1324 = v1996.f64[0];
        (v1999)(v1182, *&v1996.f64[0]);
        v1325 = *(v1983 + 8);
        v1325(v1857, v1323);
        sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1187, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
        v1014 = *(v2000 + 1);
        v1193 = v2001;
        (v1014)(v1912, v2001);
        (v1999)(v1891, *&v1324);
        v1325(v1892, v1987);
LABEL_375:
        v1546 = v1896;
LABEL_376:
        sub_1E6744A10(v1546, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1902, &qword_1ED096E68, &qword_1E68B4840);
        sub_1E6744A10(v1907, &qword_1ED096E68, &qword_1E68B4840);
        v1194 = v1913;
LABEL_377:
        v1207 = v1193;
LABEL_378:
        (v1014)(v1194, v1207);
        goto LABEL_379;
      }

      v1188 = *(v1990 + 48);
      v1189 = v1817;
      sub_1E67612FC(v1907, v1817, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v1863, v1189 + v1188, &qword_1ED096E68, &qword_1E68B4840);
      v1190 = v1988;
      v1191 = *(v1988 + 48);
      v1192 = v1986;
      if (v1191(v1189, 1, v1986) == 1)
      {
        if (v1191(v1189 + v1188, 1, v1192) != 1)
        {
LABEL_373:
          sub_1E6744A10(v1189, &qword_1ED098130, &qword_1E68B9D00);
          goto LABEL_374;
        }

        sub_1E6744A10(v1189, &qword_1ED096E68, &qword_1E68B4840);
      }

      else
      {
        v1436 = v1795;
        sub_1E67612FC(v1189, v1795, &qword_1ED096E68, &qword_1E68B4840);
        if (v1191(v1189 + v1188, 1, v1192) == 1)
        {
LABEL_372:
          (*(v1190 + 8))(v1436, v1192);
          goto LABEL_373;
        }

        v1437 = v1189 + v1188;
        v1438 = v1898;
        (*(v1190 + 32))(v1898, v1437, v1192);
        sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
        LODWORD(v1999) = sub_1E68B3190();
        v1439 = *(v1190 + 8);
        v1186 = v1992;
        v1439(v1438, v1192);
        v1439(v1436, v1192);
        sub_1E6744A10(v1817, &qword_1ED096E68, &qword_1E68B4840);
        if ((v1999 & 1) == 0)
        {
LABEL_374:
          v1999 = v1186[1];
          v1544 = v1996.f64[0];
          (v1999)(v1852, *&v1996.f64[0]);
          v1998.f64[0] = *(v1983 + 8);
          v1545 = v1987;
          (*&v1998.f64[0])(v1857, v1987);
          sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1187, &qword_1ED096E68, &qword_1E68B4840);
          sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
          v1014 = *(v2000 + 1);
          v1193 = v2001;
          (v1014)(v1912, v2001);
          (v1999)(v1891, *&v1544);
          (*&v1998.f64[0])(v1892, v1545);
          goto LABEL_375;
        }
      }

      v1440 = *(v1990 + 48);
      v1189 = v1794;
      sub_1E67612FC(v1902, v1794, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E67612FC(v1187, v1189 + v1440, &qword_1ED096E68, &qword_1E68B4840);
      if (v1191(v1189, 1, v1192) == 1)
      {
        if (v1191(v1189 + v1440, 1, v1192) == 1)
        {
          sub_1E6744A10(v1189, &qword_1ED096E68, &qword_1E68B4840);
          goto LABEL_416;
        }

        goto LABEL_373;
      }

      v1436 = v1776;
      sub_1E67612FC(v1189, v1776, &qword_1ED096E68, &qword_1E68B4840);
      v1543 = v1191(v1189 + v1440, 1, v1192);
      v1190 = v1988;
      if (v1543 != 1)
      {
        v1605 = v1189 + v1440;
        v1606 = v1898;
        (*(v1988 + 32))(v1898, v1605, v1192);
        sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
        LODWORD(v1999) = sub_1E68B3190();
        v1607 = *(v1190 + 8);
        v1186 = v1992;
        v1607(v1606, v1192);
        v1607(v1436, v1192);
        sub_1E6744A10(v1794, &qword_1ED096E68, &qword_1E68B4840);
        if (v1999)
        {
LABEL_416:
          v1608 = *(v1990 + 48);
          v1609 = v1773;
          sub_1E67612FC(v1896, v1773, &qword_1ED096E68, &qword_1E68B4840);
          v1610 = v1609;
          sub_1E67612FC(v1895, v1609 + v1608, &qword_1ED096E68, &qword_1E68B4840);
          if (v1191(v1609, 1, v1192) == 1)
          {
            v1611 = v1191(v1609 + v1608, 1, v1192);
            v1612 = v1987;
            if (v1611 == 1)
            {
              sub_1E6744A10(v1610, &qword_1ED096E68, &qword_1E68B4840);
              v1613 = v1996.f64[0];
              v1614 = v1852;
              goto LABEL_450;
            }
          }

          else
          {
            v1638 = v1767;
            sub_1E67612FC(v1609, v1767, &qword_1ED096E68, &qword_1E68B4840);
            v1639 = v1191(v1609 + v1608, 1, v1192);
            v1612 = v1987;
            if (v1639 != 1)
            {
              v1679 = v1988;
              v1680 = v1610 + v1608;
              v1681 = v1898;
              (*(v1988 + 32))(v1898, v1680, v1192);
              sub_1E67BDEF8(&qword_1EE2EDE90, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
              LODWORD(v1999) = sub_1E68B3190();
              v1682 = *(v1679 + 8);
              v1682(v1681, v1192);
              v1682(v1638, v1192);
              sub_1E6744A10(v1610, &qword_1ED096E68, &qword_1E68B4840);
              v1613 = v1996.f64[0];
              v1614 = v1852;
              if (v1999)
              {
LABEL_450:
                if (sub_1E68B3190())
                {
                  v1683 = *(v1827 + 48);
                  v1684 = v1186[2];
                  v1685 = v1765;
                  v1684(v1765, v1891, *&v1613);
                  v1999 = v1683;
                  v1684(&v1683[v1685], v1614, *&v1613);
                  v1686 = v1613;
                  v1995.f64[0] = *(v1983 + 48);
                  if ((*&v1995.f64[0])(v1685, 1, v1612) == 1)
                  {
                    v1688 = v1992 + 1;
                    v1687 = v1992[1];
                    v1687(v1852, *&v1686);
                    v1998.f64[0] = *(v1983 + 8);
                    (*&v1998.f64[0])(v1857, v1612);
                    sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1890, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
                    v1689 = *(v2000 + 1);
                    v1689(v1912, v2001);
                    v1992 = v1688;
                    v1687(v1891, *&v1686);
                    (*&v1998.f64[0])(v1892, v1612);
                    sub_1E6744A10(v1896, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1902, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1907, &qword_1ED096E68, &qword_1E68B4840);
                    v1689(v1913, v2001);
                    if ((*&v1995.f64[0])(&v1999[v1685], 1, v1612) == 1)
                    {
                      v1687(v1765, *&v1996.f64[0]);
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                    v1684(v1761, v1685, *&v1613);
                    if ((*&v1995.f64[0])(&v1999[v1685], 1, v1612) != 1)
                    {
                      v1736 = v1783;
                      v1737 = v1987;
                      (*&v1997.f64[0])(v1783, &v1999[v1765], v1987);
                      LODWORD(v1998.f64[0]) = sub_1E68B3190();
                      v1738 = *(v1983 + 8);
                      v1738(v1736, v1737);
                      v1999 = v1992[1];
                      (v1999)(v1852, *&v1996.f64[0]);
                      v1738(v1857, v1737);
                      sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1890, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
                      v1739 = *(v2000 + 1);
                      v1740 = v2001;
                      v1739(v1912, v2001);
                      (v1999)(v1891, *&v1996.f64[0]);
                      v1738(v1892, v1737);
                      sub_1E6744A10(v1896, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1902, &qword_1ED096E68, &qword_1E68B4840);
                      sub_1E6744A10(v1907, &qword_1ED096E68, &qword_1E68B4840);
                      v1739(v1913, v1740);
                      v1738(v1761, v1737);
                      (v1999)(v1765, *&v1996.f64[0]);
                      if (LOBYTE(v1998.f64[0]))
                      {
                        goto LABEL_202;
                      }

                      goto LABEL_379;
                    }

                    v1999 = v1992[1];
                    v1714 = v1996.f64[0];
                    (v1999)(v1852, *&v1996.f64[0]);
                    v1998.f64[0] = *(v1983 + 8);
                    v1715 = v1987;
                    (*&v1998.f64[0])(v1857, v1987);
                    sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1890, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
                    v1716 = *(v2000 + 1);
                    v1717 = v2001;
                    v1716(v1912, v2001);
                    (v1999)(v1891, *&v1714);
                    v1718 = v1998.f64[0];
                    (*&v1998.f64[0])(v1892, v1715);
                    sub_1E6744A10(v1896, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1902, &qword_1ED096E68, &qword_1E68B4840);
                    sub_1E6744A10(v1907, &qword_1ED096E68, &qword_1E68B4840);
                    v1716(v1913, v1717);
                    (*&v1718)(v1761, v1715);
                  }

                  (*(v1793 + 8))(v1765, v1827);
                  goto LABEL_379;
                }
              }

LABEL_454:
              v1999 = v1186[1];
              (v1999)(v1614, *&v1613);
              v1998.f64[0] = *(v1983 + 8);
              (*&v1998.f64[0])(v1857, v1612);
              sub_1E6744A10(v1895, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1187, &qword_1ED096E68, &qword_1E68B4840);
              sub_1E6744A10(v1863, &qword_1ED096E68, &qword_1E68B4840);
              v1014 = *(v2000 + 1);
              v1193 = v2001;
              (v1014)(v1912, v2001);
              (v1999)(v1891, *&v1613);
              (*&v1998.f64[0])(v1892, v1612);
              v1546 = v1896;
              goto LABEL_376;
            }

            (*(v1988 + 8))(v1638, v1192);
          }

          sub_1E6744A10(v1610, &qword_1ED098130, &qword_1E68B9D00);
          v1613 = v1996.f64[0];
          v1614 = v1852;
          goto LABEL_454;
        }

        goto LABEL_374;
      }

      goto LABEL_372;
  }
}

uint64_t CanvasItemContent.hash(into:)(uint64_t a1, void *a2)
{
  v688 = a1;
  v3 = a2[4];
  v624 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v622 = &v579 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E68B1A10();
  v631 = *(v5 - 8);
  v632 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v579 = &v579 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E88, &qword_1E68B9CF0);
  MEMORY[0x1EEE9AC00](v620, v8);
  v628 = &v579 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v630 = &v579 - v12;
  v625 = v3;
  v679 = sub_1E68B3750();
  v662 = *(v679 - 8);
  MEMORY[0x1EEE9AC00](v679, v13);
  v629 = &v579 - v14;
  v15 = a2[3];
  v682 = a2[6];
  v616 = type metadata accessor for FullWidthItemDescriptor(0, v15, v682, v16);
  v614 = *(v616 - 8);
  MEMORY[0x1EEE9AC00](v616, v17);
  v613 = &v579 - v18;
  v685 = sub_1E68B1820();
  v686 = *(v685 - 8);
  MEMORY[0x1EEE9AC00](v685, v19);
  v683 = &v579 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[2];
  *&v681 = sub_1E68B3750();
  v680 = *(v681 - 8);
  MEMORY[0x1EEE9AC00](v681, v22);
  v627 = &v579 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v626 = &v579 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v661 = &v579 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v660 = &v579 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v659 = &v579 - v35;
  v678 = v21;
  v658 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v657 = &v579 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v684, v39);
  v612 = &v579 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v607 = &v579 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v652 = &v579 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v653 = &v579 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v621 = &v579 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v617 = &v579 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v608 = &v579 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v623 = &v579 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v675 = &v579 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v655 = &v579 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v603 = &v579 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v650 = &v579 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v618 = &v579 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v609 = &v579 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v602 = &v579 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v676 = &v579 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v677 = &v579 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v656 = &v579 - v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v611 = &v579 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v606 = &v579 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v600 = &v579 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v615 = &v579 - v103;
  MEMORY[0x1EEE9AC00](v104, v105);
  v671 = &v579 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v651 = &v579 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v619 = &v579 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v610 = &v579 - v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  v604 = &v579 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v599 = &v579 - v121;
  MEMORY[0x1EEE9AC00](v122, v123);
  v674 = &v579 - v124;
  MEMORY[0x1EEE9AC00](v125, v126);
  v673 = &v579 - v127;
  MEMORY[0x1EEE9AC00](v128, v129);
  v672 = &v579 - v130;
  MEMORY[0x1EEE9AC00](v131, v132);
  v654 = &v579 - v133;
  MEMORY[0x1EEE9AC00](v134, v135);
  v601 = &v579 - v136;
  MEMORY[0x1EEE9AC00](v137, v138);
  v598 = &v579 - v139;
  MEMORY[0x1EEE9AC00](v140, v141);
  v593 = &v579 - v142;
  MEMORY[0x1EEE9AC00](v143, v144);
  v605 = &v579 - v145;
  MEMORY[0x1EEE9AC00](v146, v147);
  v670 = &v579 - v148;
  MEMORY[0x1EEE9AC00](v149, v150);
  v649 = &v579 - v151;
  MEMORY[0x1EEE9AC00](v152, v153);
  v597 = &v579 - v154;
  MEMORY[0x1EEE9AC00](v155, v156);
  v588 = &v579 - v157;
  MEMORY[0x1EEE9AC00](v158, v159);
  v647 = &v579 - v160;
  MEMORY[0x1EEE9AC00](v161, v162);
  v648 = &v579 - v163;
  MEMORY[0x1EEE9AC00](v164, v165);
  v592 = &v579 - v166;
  MEMORY[0x1EEE9AC00](v167, v168);
  v586 = &v579 - v169;
  MEMORY[0x1EEE9AC00](v170, v171);
  v596 = &v579 - v172;
  MEMORY[0x1EEE9AC00](v173, v174);
  v646 = &v579 - v175;
  MEMORY[0x1EEE9AC00](v176, v177);
  v590 = &v579 - v178;
  MEMORY[0x1EEE9AC00](v179, v180);
  v582 = &v579 - v181;
  MEMORY[0x1EEE9AC00](v182, v183);
  v642 = &v579 - v184;
  MEMORY[0x1EEE9AC00](v185, v186);
  v644 = &v579 - v187;
  MEMORY[0x1EEE9AC00](v188, v189);
  v591 = &v579 - v190;
  MEMORY[0x1EEE9AC00](v191, v192);
  v585 = &v579 - v193;
  MEMORY[0x1EEE9AC00](v194, v195);
  v580 = &v579 - v196;
  MEMORY[0x1EEE9AC00](v197, v198);
  v595 = &v579 - v199;
  MEMORY[0x1EEE9AC00](v200, v201);
  v666 = &v579 - v202;
  MEMORY[0x1EEE9AC00](v203, v204);
  v645 = &v579 - v205;
  MEMORY[0x1EEE9AC00](v206, v207);
  v583 = &v579 - v208;
  MEMORY[0x1EEE9AC00](v209, v210);
  v212 = &v579 - v211;
  MEMORY[0x1EEE9AC00](v213, v214);
  v663 = &v579 - v215;
  MEMORY[0x1EEE9AC00](v216, v217);
  v638 = &v579 - v218;
  MEMORY[0x1EEE9AC00](v219, v220);
  v594 = &v579 - v221;
  MEMORY[0x1EEE9AC00](v222, v223);
  v587 = &v579 - v224;
  MEMORY[0x1EEE9AC00](v225, v226);
  v581 = &v579 - v227;
  MEMORY[0x1EEE9AC00](v228, v229);
  v669 = &v579 - v230;
  MEMORY[0x1EEE9AC00](v231, v232);
  v668 = &v579 - v233;
  MEMORY[0x1EEE9AC00](v234, v235);
  v667 = &v579 - v236;
  MEMORY[0x1EEE9AC00](v237, v238);
  v589 = &v579 - v239;
  MEMORY[0x1EEE9AC00](v240, v241);
  v584 = &v579 - v242;
  MEMORY[0x1EEE9AC00](v243, v244);
  v246 = &v579 - v245;
  MEMORY[0x1EEE9AC00](v247, v248);
  v665 = &v579 - v249;
  MEMORY[0x1EEE9AC00](v250, v251);
  v664 = &v579 - v252;
  MEMORY[0x1EEE9AC00](v253, v254);
  v643 = &v579 - v255;
  v689 = v15;
  v690 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v256, v257);
  v259 = &v579 - ((v258 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v260, v261);
  v636 = &v579 - v262;
  MEMORY[0x1EEE9AC00](v263, v264);
  v266 = &v579 - v265;
  MEMORY[0x1EEE9AC00](v267, v268);
  v641 = &v579 - v269;
  MEMORY[0x1EEE9AC00](v270, v271);
  v635 = &v579 - v272;
  MEMORY[0x1EEE9AC00](v273, v274);
  v640 = &v579 - v275;
  MEMORY[0x1EEE9AC00](v276, v277);
  v634 = &v579 - v278;
  MEMORY[0x1EEE9AC00](v279, v280);
  v282 = &v579 - v281;
  MEMORY[0x1EEE9AC00](v283, v284);
  v286 = &v579 - v285;
  MEMORY[0x1EEE9AC00](v287, v288);
  v290 = &v579 - v289;
  MEMORY[0x1EEE9AC00](v291, v292);
  v633 = &v579 - v293;
  MEMORY[0x1EEE9AC00](v294, v295);
  v639 = &v579 - v296;
  MEMORY[0x1EEE9AC00](v297, v298);
  v637 = &v579 - v299;
  v302 = MEMORY[0x1EEE9AC00](v300, v301);
  v304 = &v579 - ((v303 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v305 + 16))(v304, v687, a2, v302);
  *&v687 = a2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v328 = v613;
      v327 = v614;
      v326 = v616;
      (*(v614 + 32))(v613, v304, v616);
      v448 = v688;
      MEMORY[0x1E69523D0](1);
      FullWidthItemDescriptor.hash(into:)(v448, v326);
      return (*(v327 + 8))(v328, v326);
    case 2:
      v390 = *(v304 + 11);
      v724 = *(v304 + 10);
      v725 = v390;
      v391 = *(v304 + 13);
      v726 = *(v304 + 12);
      v727 = v391;
      v392 = *(v304 + 7);
      v720 = *(v304 + 6);
      v721 = v392;
      v393 = *(v304 + 9);
      v722 = *(v304 + 8);
      v723 = v393;
      v394 = *(v304 + 3);
      v716 = *(v304 + 2);
      v717 = v394;
      v395 = *(v304 + 5);
      v718 = *(v304 + 4);
      v719 = v395;
      v396 = *(v304 + 1);
      v714 = *v304;
      v715 = v396;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      *&v707 = &type metadata for FullWidthStageViewLayout;
      v397 = v689;
      *(&v707 + 1) = v689;
      *&v708 = &type metadata for FullWidthStageViewStyle;
      *(&v708 + 1) = v684;
      v709 = v684;
      v710 = v684;
      v398 = v681;
      v711 = v681;
      v712 = v681;
      v713 = v679;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v400 = TupleTypeMetadata[12];
      v684 = v304[TupleTypeMetadata[16]];
      v401 = TupleTypeMetadata[20];
      v402 = TupleTypeMetadata[24];
      v403 = TupleTypeMetadata[28];
      v404 = TupleTypeMetadata[32];
      v677 = TupleTypeMetadata[36];
      v678 = TupleTypeMetadata[40];
      (*(v690 + 32))(v639, &v304[v400], v397);
      sub_1E6761420(&v304[v401], v667, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v402], v668, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v403], v669, &qword_1ED096E68, &qword_1E68B4840);
      v405 = *(v680 + 32);
      v405(v660, &v304[v404], v398);
      v405(v661, &v304[v677], v398);
      v406 = &v304[v678];
      v407 = v629;
      (*(v662 + 32))(v629, v406, v679);
      MEMORY[0x1E69523D0](2);
      FullWidthStageViewLayout.hash(into:)();
      sub_1E68B3140();
      MEMORY[0x1E69523D0](v684);
      v408 = v581;
      sub_1E67612FC(v667, v581, &qword_1ED096E68, &qword_1E68B4840);
      v409 = v686;
      v410 = *(v686 + 48);
      v411 = v685;
      if (v410(v408, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v412 = v683;
      }

      else
      {
        v412 = v683;
        (*(v409 + 32))(v683, v408, v411);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v409 + 8))(v412, v411);
      }

      v541 = v587;
      sub_1E67612FC(v668, v587, &qword_1ED096E68, &qword_1E68B4840);
      if (v410(v541, 1, v411) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v409 + 32))(v412, v541, v411);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v409 + 8))(v412, v411);
      }

      v542 = v594;
      sub_1E67612FC(v669, v594, &qword_1ED096E68, &qword_1E68B4840);
      if (v410(v542, 1, v411) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v409 + 32))(v412, v542, v411);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v409 + 8))(v412, v411);
      }

      v543 = v681;
      v544 = v660;
      sub_1E68B3760();
      v545 = v661;
      sub_1E68B3760();
      v546 = v679;
      sub_1E68B3760();
      (*(v662 + 8))(v407, v546);
      v547 = *(v680 + 8);
      v547(v545, v543);
      v547(v544, v543);
      sub_1E6744A10(v669, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v668, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v667, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v639, v397);
    case 3:
      v423 = *(v304 + 1);
      v728 = *v304;
      v729 = v423;
      v424 = *(v304 + 3);
      v730 = *(v304 + 2);
      v731 = v424;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "layout title description actionButton ");
      *&v707 = &type metadata for InfoActionCardViewLayout;
      *(&v707 + 1) = v684;
      *&v708 = v684;
      v425 = v681;
      *(&v708 + 1) = v681;
      v426 = swift_getTupleTypeMetadata();
      v427 = v426[16];
      v428 = v426[20];
      v429 = v638;
      sub_1E6761420(&v304[v426[12]], v638, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v427], v663, &qword_1ED096E68, &qword_1E68B4840);
      v430 = &v304[v428];
      v431 = v626;
      (*(v680 + 32))(v626, v430, v425);
      MEMORY[0x1E69523D0](3);
      InfoActionCardViewLayout.hash(into:)();
      sub_1E67612FC(v429, v212, &qword_1ED096E68, &qword_1E68B4840);
      v432 = v686;
      v433 = *(v686 + 48);
      v434 = v685;
      if (v433(v212, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v435 = v683;
      }

      else
      {
        v435 = v683;
        (*(v432 + 32))(v683, v212, v434);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v432 + 8))(v435, v434);
      }

      v552 = v583;
      sub_1E67612FC(v663, v583, &qword_1ED096E68, &qword_1E68B4840);
      if (v433(v552, 1, v434) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v432 + 32))(v435, v552, v434);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v432 + 8))(v435, v434);
      }

      v553 = v681;
      sub_1E68B3760();
      (*(v680 + 8))(v431, v553);
      sub_1E6744A10(v663, &qword_1ED096E68, &qword_1E68B4840);
      return sub_1E6744A10(v638, &qword_1ED096E68, &qword_1E68B4840);
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "artwork footnote subtitle title ");
      v346 = v689;
      *&v707 = v689;
      *(&v707 + 1) = v684;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v347 = swift_getTupleTypeMetadata();
      v348 = v347[12];
      v349 = v347[16];
      v350 = v347[20];
      (*(v690 + 32))(v633, v304, v346);
      v351 = v645;
      sub_1E6761420(&v304[v348], v645, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v349], v666, &qword_1ED096E68, &qword_1E68B4840);
      v352 = &v304[v350];
      v353 = v595;
      sub_1E6761420(v352, v595, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](4);
      sub_1E68B3140();
      v354 = v580;
      sub_1E67612FC(v351, v580, &qword_1ED096E68, &qword_1E68B4840);
      v355 = v686;
      v356 = *(v686 + 48);
      v357 = v685;
      if (v356(v354, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v358 = v683;
      }

      else
      {
        v358 = v683;
        (*(v355 + 32))(v683, v354, v357);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v355 + 8))(v358, v357);
      }

      v533 = v585;
      sub_1E67612FC(v666, v585, &qword_1ED096E68, &qword_1E68B4840);
      if (v356(v533, 1, v357) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v355 + 32))(v358, v533, v357);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v355 + 8))(v358, v357);
      }

      v534 = v591;
      sub_1E67612FC(v353, v591, &qword_1ED096E68, &qword_1E68B4840);
      if (v356(v534, 1, v357) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v355 + 32))(v358, v534, v357);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v355 + 8))(v358, v357);
      }

      sub_1E6744A10(v353, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v666, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v645, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v633, v346);
    case 5:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "artwork caption displayStyle layout title ");
      v450 = v689;
      *&v707 = v689;
      *(&v707 + 1) = v684;
      *&v708 = &type metadata for DynamicBrickDisplayStyle;
      *(&v708 + 1) = &type metadata for DynamicBrickViewLayout;
      v709 = v684;
      v451 = swift_getTupleTypeMetadata();
      v452 = v451[12];
      *&v687 = v304[v451[16]];
      v453 = &v304[v451[20]];
      v455 = *v453;
      v454 = v453[1];
      v456 = v451[24];
      (*(v690 + 32))(v290, v304, v450);
      v457 = v644;
      sub_1E6761420(&v304[v452], v644, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v456], v642, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](5);
      sub_1E68B3140();
      v458 = v582;
      sub_1E67612FC(v457, v582, &qword_1ED096E68, &qword_1E68B4840);
      v459 = v686;
      v460 = *(v686 + 48);
      v461 = v685;
      if (v460(v458, 1, v685) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        v566 = v683;
        (*(v459 + 32))(v683, v458, v461);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v459 + 8))(v566, v461);
      }

      MEMORY[0x1E69523D0](v687);
      if (v455 == 0.0)
      {
        v567 = 0.0;
      }

      else
      {
        v567 = v455;
      }

      MEMORY[0x1E69523F0](*&v567);
      if (v454 == 0.0)
      {
        v568 = 0.0;
      }

      else
      {
        v568 = v454;
      }

      MEMORY[0x1E69523F0](*&v568);
      v569 = v642;
      v570 = v590;
      sub_1E67612FC(v642, v590, &qword_1ED096E68, &qword_1E68B4840);
      if (v460(v570, 1, v461) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        v571 = v683;
        (*(v459 + 32))(v683, v570, v461);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v459 + 8))(v571, v461);
      }

      sub_1E6744A10(v569, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v644, &qword_1ED096E68, &qword_1E68B4840);
      v550 = *(v690 + 8);
      v551 = v290;
      goto LABEL_128;
    case 6:
      v479 = *v304;
      v480 = *(v304 + 1);
      v481 = *(v304 + 2);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "layout artwork title subtitle ");
      *&v707 = &type metadata for MonogramVerticalStackViewLayout;
      v482 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v483 = swift_getTupleTypeMetadata();
      v484 = v483[16];
      v485 = v483[20];
      (*(v690 + 32))(v286, &v304[v483[12]], v482);
      v486 = v646;
      sub_1E6761420(&v304[v484], v646, &qword_1ED096E68, &qword_1E68B4840);
      v487 = &v304[v485];
      v488 = v596;
      sub_1E6761420(v487, v596, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](6);
      sub_1E673E7F4(v479, v480);
      v489 = 0.0;
      if (v481 != 0.0)
      {
        v489 = v481;
      }

      MEMORY[0x1E69523F0](*&v489);
      sub_1E68B3140();
      v490 = v586;
      sub_1E67612FC(v486, v586, &qword_1ED096E68, &qword_1E68B4840);
      v491 = v686;
      v492 = *(v686 + 48);
      v493 = v685;
      if (v492(v490, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v494 = v683;
      }

      else
      {
        v494 = v683;
        (*(v491 + 32))(v683, v490, v493);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v491 + 8))(v494, v493);
      }

      v574 = v592;
      sub_1E67612FC(v488, v592, &qword_1ED096E68, &qword_1E68B4840);
      if (v492(v574, 1, v493) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v491 + 32))(v494, v574, v493);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v491 + 8))(v494, v493);
      }

      sub_1E6744A10(v488, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v646, &qword_1ED096E68, &qword_1E68B4840);
      v550 = *(v690 + 8);
      v551 = v286;
      goto LABEL_128;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "artwork caption displayStyle layout title ");
      v436 = v689;
      *&v707 = v689;
      *(&v707 + 1) = v684;
      *&v708 = &type metadata for DynamicBrickDisplayStyle;
      *(&v708 + 1) = &type metadata for DynamicBrickViewLayout;
      v709 = v684;
      v437 = swift_getTupleTypeMetadata();
      v438 = v437[12];
      *&v687 = v304[v437[16]];
      v439 = &v304[v437[20]];
      v441 = *v439;
      v440 = v439[1];
      v442 = v437[24];
      (*(v690 + 32))(v282, v304, v436);
      v443 = v648;
      sub_1E6761420(&v304[v438], v648, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v442], v647, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](7);
      sub_1E68B3140();
      v444 = v588;
      sub_1E67612FC(v443, v588, &qword_1ED096E68, &qword_1E68B4840);
      v445 = v686;
      v446 = *(v686 + 48);
      v447 = v685;
      if (v446(v444, 1, v685) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        v554 = v683;
        (*(v445 + 32))(v683, v444, v447);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v445 + 8))(v554, v447);
      }

      MEMORY[0x1E69523D0](v687);
      if (v441 == 0.0)
      {
        v555 = 0.0;
      }

      else
      {
        v555 = v441;
      }

      MEMORY[0x1E69523F0](*&v555);
      if (v440 == 0.0)
      {
        v556 = 0.0;
      }

      else
      {
        v556 = v440;
      }

      MEMORY[0x1E69523F0](*&v556);
      v557 = v647;
      v558 = v597;
      sub_1E67612FC(v647, v597, &qword_1ED096E68, &qword_1E68B4840);
      if (v446(v558, 1, v447) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        v559 = v683;
        (*(v445 + 32))(v683, v558, v447);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v445 + 8))(v559, v447);
      }

      sub_1E6744A10(v557, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v648, &qword_1ED096E68, &qword_1E68B4840);
      v550 = *(v690 + 8);
      v551 = v282;
      goto LABEL_128;
    case 8:
      v738 = *(v304 + 12);
      v511 = *(v304 + 5);
      v736 = *(v304 + 4);
      v737 = v511;
      v512 = *(v304 + 1);
      v732 = *v304;
      v733 = v512;
      v513 = *(v304 + 2);
      v735 = *(v304 + 3);
      v734 = v513;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "layout artwork title subtitle caption ");
      *&v707 = &type metadata for StandardCardViewLayout;
      v514 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v709 = v684;
      v515 = swift_getTupleTypeMetadata();
      v516 = v515[16];
      v517 = v515[20];
      v518 = v515[24];
      (*(v690 + 32))(v634, &v304[v515[12]], v514);
      v519 = v649;
      sub_1E6761420(&v304[v516], v649, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v517], v670, &qword_1ED096E68, &qword_1E68B4840);
      v520 = &v304[v518];
      v521 = v605;
      sub_1E6761420(v520, v605, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](8);
      StandardCardViewLayout.hash(into:)();
      sub_1E68B3140();
      v522 = v593;
      sub_1E67612FC(v519, v593, &qword_1ED096E68, &qword_1E68B4840);
      v523 = v686;
      v524 = *(v686 + 48);
      v525 = v685;
      if (v524(v522, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v526 = v683;
      }

      else
      {
        v526 = v683;
        (*(v523 + 32))(v683, v522, v525);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v523 + 8))(v526, v525);
      }

      v577 = v598;
      sub_1E67612FC(v670, v598, &qword_1ED096E68, &qword_1E68B4840);
      if (v524(v577, 1, v525) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v523 + 32))(v526, v577, v525);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v523 + 8))(v526, v525);
      }

      v578 = v601;
      sub_1E67612FC(v521, v601, &qword_1ED096E68, &qword_1E68B4840);
      if (v524(v578, 1, v525) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v523 + 32))(v526, v578, v525);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v523 + 8))(v526, v525);
      }

      sub_1E6744A10(v521, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v670, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v649, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v634, v514);
    case 9:
      v371 = *(v304 + 7);
      v745 = *(v304 + 6);
      v746 = v371;
      v372 = *(v304 + 9);
      v747 = *(v304 + 8);
      v748 = v372;
      v373 = *(v304 + 3);
      v741 = *(v304 + 2);
      v742 = v373;
      v374 = *(v304 + 5);
      v743 = *(v304 + 4);
      v744 = v374;
      v375 = *(v304 + 1);
      v739 = *v304;
      v740 = v375;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      *&v707 = &type metadata for StandardHorizontalStackViewLayout;
      v376 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v709 = v684;
      v710 = v684;
      v711 = v681;
      v377 = swift_getTupleTypeMetadata();
      v378 = v377[12];
      v379 = v377[16];
      v380 = v377[20];
      v381 = v377[24];
      v679 = v377[28];
      v684 = v377[32];
      (*(v690 + 32))(v640, &v304[v378], v376);
      v382 = v654;
      sub_1E6761420(&v304[v379], v654, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v380], v672, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v381], v673, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v679], v674, &qword_1ED096E68, &qword_1E68B4840);
      v383 = &v304[v684];
      v384 = v627;
      (*(v680 + 32))(v627, v383, v681);
      MEMORY[0x1E69523D0](9);
      StandardHorizontalStackViewLayout.hash(into:)();
      sub_1E68B3140();
      v385 = v599;
      sub_1E67612FC(v382, v599, &qword_1ED096E68, &qword_1E68B4840);
      v386 = v686;
      v387 = *(v686 + 48);
      v388 = v685;
      if (v387(v385, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v389 = v683;
      }

      else
      {
        v389 = v683;
        (*(v386 + 32))(v683, v385, v388);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v386 + 8))(v389, v388);
      }

      v536 = v619;
      v537 = v604;
      sub_1E67612FC(v672, v604, &qword_1ED096E68, &qword_1E68B4840);
      if (v387(v537, 1, v388) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v386 + 32))(v389, v537, v388);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v386 + 8))(v389, v388);
      }

      v538 = v610;
      sub_1E67612FC(v673, v610, &qword_1ED096E68, &qword_1E68B4840);
      if (v387(v538, 1, v388) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v386 + 32))(v389, v538, v388);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v386 + 8))(v389, v388);
      }

      sub_1E67612FC(v674, v536, &qword_1ED096E68, &qword_1E68B4840);
      if (v387(v536, 1, v388) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v386 + 32))(v389, v536, v388);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v386 + 8))(v389, v388);
      }

      v539 = v689;
      v540 = v681;
      sub_1E68B3760();
      (*(v680 + 8))(v384, v540);
      sub_1E6744A10(v674, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v673, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v672, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v654, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v640, v539);
    case 10:
      LODWORD(v687) = *v304;
      v495 = *(v304 + 1);
      v496 = *(v304 + 2);
      *&v681 = *(v304 + 3);
      LODWORD(v680) = v304[32];
      v497 = *(v304 + 5);
      v679 = *(v304 + 6);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "layout artwork title subtitle caption ");
      *&v707 = &type metadata for StandardVerticalStackViewLayout;
      v498 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v709 = v684;
      v499 = swift_getTupleTypeMetadata();
      v500 = v499[16];
      v501 = v499[20];
      v502 = v499[24];
      (*(v690 + 32))(v635, &v304[v499[12]], v498);
      v503 = v651;
      sub_1E6761420(&v304[v500], v651, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v501], v671, &qword_1ED096E68, &qword_1E68B4840);
      v504 = &v304[v502];
      v505 = v615;
      sub_1E6761420(v504, v615, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](10);
      LOBYTE(v707) = v687;
      *(&v707 + 1) = v495;
      *&v708 = v496;
      *(&v708 + 1) = v681;
      LOBYTE(v709) = v680;
      v710 = v497;
      v711 = v679;
      StandardVerticalStackViewLayout.hash(into:)();
      sub_1E68B3140();
      v506 = v600;
      sub_1E67612FC(v503, v600, &qword_1ED096E68, &qword_1E68B4840);
      v507 = v686;
      v508 = *(v686 + 48);
      v509 = v685;
      if (v508(v506, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v510 = v683;
      }

      else
      {
        v510 = v683;
        (*(v507 + 32))(v683, v506, v509);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v507 + 8))(v510, v509);
      }

      v575 = v606;
      sub_1E67612FC(v671, v606, &qword_1ED096E68, &qword_1E68B4840);
      if (v508(v575, 1, v509) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v507 + 32))(v510, v575, v509);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v507 + 8))(v510, v509);
      }

      v576 = v611;
      sub_1E67612FC(v505, v611, &qword_1ED096E68, &qword_1E68B4840);
      if (v508(v576, 1, v509) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v507 + 32))(v510, v576, v509);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v507 + 8))(v510, v509);
      }

      sub_1E6744A10(v505, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v671, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v651, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v635, v498);
    case 11:
      v329 = *(v304 + 4);
      v330 = *(v304 + 1);
      v687 = *v304;
      v681 = v330;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      *&v707 = &type metadata for SummaryCardViewLayout;
      v331 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v709 = v684;
      v710 = v620;
      v332 = swift_getTupleTypeMetadata();
      v333 = v332[16];
      v334 = v332[20];
      v335 = v332[24];
      v336 = v332[28];
      (*(v690 + 32))(v641, &v304[v332[12]], v331);
      v337 = v656;
      sub_1E6761420(&v304[v333], v656, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v334], v677, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v335], v676, &qword_1ED096E68, &qword_1E68B4840);
      v338 = &v304[v336];
      v339 = v630;
      sub_1E6761420(v338, v630, &qword_1ED096E88, &qword_1E68B9CF0);
      MEMORY[0x1E69523D0](11);
      v707 = v687;
      v708 = v681;
      v709 = v329;
      SummaryCardViewLayout.hash(into:)();
      v340 = v331;
      sub_1E68B3140();
      v341 = v602;
      sub_1E67612FC(v337, v602, &qword_1ED096E68, &qword_1E68B4840);
      v342 = v686;
      v343 = *(v686 + 48);
      v344 = v685;
      if (v343(v341, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v345 = v683;
      }

      else
      {
        v345 = v683;
        (*(v342 + 32))(v683, v341, v344);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v342 + 8))(v345, v344);
      }

      v527 = v609;
      sub_1E67612FC(v677, v609, &qword_1ED096E68, &qword_1E68B4840);
      if (v343(v527, 1, v344) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v342 + 32))(v345, v527, v344);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v342 + 8))(v345, v344);
      }

      v528 = v618;
      sub_1E67612FC(v676, v618, &qword_1ED096E68, &qword_1E68B4840);
      if (v343(v528, 1, v344) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v342 + 32))(v345, v528, v344);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v342 + 8))(v345, v344);
      }

      v530 = v631;
      v529 = v632;
      v531 = v628;
      sub_1E67612FC(v339, v628, &qword_1ED096E88, &qword_1E68B9CF0);
      if ((*(v530 + 48))(v531, 1, v529) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        v532 = v579;
        (*(v530 + 32))(v579, v531, v529);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1ED098140, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
        sub_1E68B3140();
        (*(v530 + 8))(v532, v529);
      }

      sub_1E6744A10(v339, &qword_1ED096E88, &qword_1E68B9CF0);
      sub_1E6744A10(v676, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v677, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v656, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v641, v340);
    case 12:
      v681 = *v304;
      v359 = *(v304 + 2);
      v360 = v304[24];
      v361 = *(v304 + 4);
      v362 = *(v304 + 5);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "layout artwork title overlay ");
      *&v707 = &type metadata for TallCardViewLayout;
      v363 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = &type metadata for Overlay;
      v364 = swift_getTupleTypeMetadata();
      v365 = v364[12];
      v366 = v364[16];
      *&v687 = v304[v364[20]];
      (*(v690 + 32))(v266, &v304[v365], v363);
      v367 = v650;
      sub_1E6761420(&v304[v366], v650, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](12);
      v707 = v681;
      *&v708 = v359;
      BYTE8(v708) = v360;
      v709 = v361;
      v710 = v362;
      TallCardViewLayout.hash(into:)();
      sub_1E68B3140();
      v368 = v603;
      sub_1E67612FC(v367, v603, &qword_1ED096E68, &qword_1E68B4840);
      v369 = v686;
      v370 = v685;
      if ((*(v686 + 48))(v368, 1, v685) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        v535 = v683;
        (*(v369 + 32))(v683, v368, v370);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v369 + 8))(v535, v370);
      }

      MEMORY[0x1E69523D0](v687);
      sub_1E6744A10(v650, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v266, v363);
    case 13:
      v462 = *(v304 + 5);
      v753 = *(v304 + 4);
      v754 = v462;
      v463 = *(v304 + 7);
      v755 = *(v304 + 6);
      v756 = v463;
      v464 = *(v304 + 1);
      v749 = *v304;
      v750 = v464;
      v465 = *(v304 + 3);
      v751 = *(v304 + 2);
      v752 = v465;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 48, "layout artwork title subtitle caption ");
      *&v707 = &type metadata for VerticalStackCardLayout;
      v466 = v689;
      *(&v707 + 1) = v689;
      *&v708 = v684;
      *(&v708 + 1) = v684;
      v709 = v684;
      v467 = swift_getTupleTypeMetadata();
      v468 = v467[16];
      v469 = v467[20];
      v470 = v467[24];
      (*(v690 + 32))(v636, &v304[v467[12]], v466);
      v471 = v655;
      sub_1E6761420(&v304[v468], v655, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v469], v675, &qword_1ED096E68, &qword_1E68B4840);
      v472 = &v304[v470];
      v473 = v623;
      sub_1E6761420(v472, v623, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](13);
      VerticalStackCardLayout.hash(into:)();
      sub_1E68B3140();
      v474 = v608;
      sub_1E67612FC(v471, v608, &qword_1ED096E68, &qword_1E68B4840);
      v475 = v686;
      v476 = *(v686 + 48);
      v477 = v685;
      if (v476(v474, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v478 = v683;
      }

      else
      {
        v478 = v683;
        (*(v475 + 32))(v683, v474, v477);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v475 + 8))(v478, v477);
      }

      v572 = v617;
      sub_1E67612FC(v675, v617, &qword_1ED096E68, &qword_1E68B4840);
      if (v476(v572, 1, v477) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v475 + 32))(v478, v572, v477);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v475 + 8))(v478, v477);
      }

      v573 = v621;
      sub_1E67612FC(v473, v621, &qword_1ED096E68, &qword_1E68B4840);
      if (v476(v573, 1, v477) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v475 + 32))(v478, v573, v477);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v475 + 8))(v478, v477);
      }

      sub_1E6744A10(v473, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v675, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v655, &qword_1ED096E68, &qword_1E68B4840);
      return (*(v690 + 8))(v636, v466);
    case 14:
      v327 = v624;
      v326 = v625;
      v328 = v622;
      (*(v624 + 32))(v622, v304, v625);
      MEMORY[0x1E69523D0](14);
      sub_1E68B3140();
      return (*(v327 + 8))(v328, v326);
    case 15:
      v413 = v689;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v415 = *(TupleTypeMetadata3 + 48);
      v416 = *(TupleTypeMetadata3 + 64);
      (*(v690 + 32))(v259, v304, v413);
      v417 = v653;
      sub_1E6761420(&v304[v415], v653, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v416], v652, &qword_1ED096E68, &qword_1E68B4840);
      MEMORY[0x1E69523D0](15);
      sub_1E68B3140();
      v418 = v607;
      sub_1E67612FC(v417, v607, &qword_1ED096E68, &qword_1E68B4840);
      v419 = v686;
      v420 = *(v686 + 48);
      v421 = v685;
      if (v420(v418, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v422 = v683;
      }

      else
      {
        v422 = v683;
        (*(v419 + 32))(v683, v418, v421);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v419 + 8))(v422, v421);
      }

      v548 = v652;
      v549 = v612;
      sub_1E67612FC(v652, v612, &qword_1ED096E68, &qword_1E68B4840);
      if (v420(v549, 1, v421) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v419 + 32))(v422, v549, v421);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v419 + 8))(v422, v421);
      }

      sub_1E6744A10(v548, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v653, &qword_1ED096E68, &qword_1E68B4840);
      v550 = *(v690 + 8);
      v551 = v259;
LABEL_128:
      result = v550(v551, v689);
      break;
    default:
      v706 = *(v304 + 30);
      v308 = *(v304 + 13);
      v703 = *(v304 + 12);
      v704 = v308;
      v705 = *(v304 + 14);
      v309 = *(v304 + 9);
      v699 = *(v304 + 8);
      v700 = v309;
      v310 = *(v304 + 11);
      v701 = *(v304 + 10);
      v702 = v310;
      v311 = *(v304 + 5);
      v695 = *(v304 + 4);
      v696 = v311;
      v312 = *(v304 + 7);
      v697 = *(v304 + 6);
      v698 = v312;
      v313 = *(v304 + 1);
      v691 = *v304;
      v692 = v313;
      v314 = *(v304 + 3);
      v693 = *(v304 + 2);
      v694 = v314;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v307);
      strcpy(&v579 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      *&v707 = &type metadata for ActionCardViewLayout;
      v315 = v689;
      *(&v707 + 1) = v689;
      *&v708 = &type metadata for ActionCardViewStyle;
      *(&v708 + 1) = v684;
      v709 = v684;
      v710 = v684;
      v711 = v678;
      v712 = v681;
      v316 = swift_getTupleTypeMetadata();
      v317 = v316[12];
      v684 = v304[v316[16]];
      v318 = v316[20];
      v319 = v316[24];
      v320 = v316[28];
      v677 = v316[32];
      v679 = v316[36];
      (*(v690 + 32))(v637, &v304[v317], v315);
      v321 = v643;
      sub_1E6761420(&v304[v318], v643, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v319], v664, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6761420(&v304[v320], v665, &qword_1ED096E68, &qword_1E68B4840);
      (*(v658 + 32))(v657, &v304[v677], v678);
      (*(v680 + 32))(v659, &v304[v679], v681);
      MEMORY[0x1E69523D0](0);
      ActionCardViewLayout.hash(into:)();
      sub_1E68B3140();
      MEMORY[0x1E69523D0](v684);
      sub_1E67612FC(v321, v246, &qword_1ED096E68, &qword_1E68B4840);
      v322 = v686;
      v323 = *(v686 + 48);
      v324 = v685;
      if (v323(v246, 1, v685) == 1)
      {
        sub_1E68B3B90();
        v325 = v683;
      }

      else
      {
        v325 = v683;
        (*(v322 + 32))(v683, v246, v324);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v322 + 8))(v325, v324);
      }

      v560 = v589;
      v561 = v584;
      sub_1E67612FC(v664, v584, &qword_1ED096E68, &qword_1E68B4840);
      if (v323(v561, 1, v324) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v322 + 32))(v325, v561, v324);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v322 + 8))(v325, v324);
      }

      sub_1E67612FC(v665, v560, &qword_1ED096E68, &qword_1E68B4840);
      if (v323(v560, 1, v324) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v322 + 32))(v325, v560, v324);
        sub_1E68B3B90();
        sub_1E67BDEF8(&qword_1EE2EDE98, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
        sub_1E68B3140();
        (*(v322 + 8))(v325, v324);
      }

      v562 = v657;
      v563 = v678;
      sub_1E68B3140();
      v564 = v681;
      v565 = v659;
      sub_1E68B3760();
      (*(v680 + 8))(v565, v564);
      (*(v658 + 8))(v562, v563);
      sub_1E6744A10(v665, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v664, &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(v643, &qword_1ED096E68, &qword_1E68B4840);
      result = (*(v690 + 8))(v637, v315);
      break;
  }

  return result;
}

uint64_t CanvasItemContent.hashValue.getter(void *a1)
{
  sub_1E68B3B70();
  CanvasItemContent.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67BDEA0(uint64_t a1, void *a2)
{
  sub_1E68B3B70();
  CanvasItemContent.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67BDEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E67BDF5C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(*(a3[3] - 8) + 80);
  v5 = *(*(a3[3] - 8) + 64);
  v6 = *(sub_1E68B1820() - 8);
  v7 = *(v6 + 80);
  v8 = v5 + v7;
  v9 = v5 + v7 + 1;
  v51 = (v9 + ((v4 + 248) & ~v4)) & ~v7;
  v50 = *(v6 + 84);
  v10 = *(v6 + 64);
  v11 = *(a3[2] - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(v11 + 84);
  if (v10 > v5)
  {
    v5 = *(v6 + 64);
  }

  v15 = *(a3[4] - 8);
  v53 = *(v15 + 80);
  v16 = *(v15 + 84);
  v52 = *(v15 + 64);
  v17 = *(sub_1E68B1A10() - 8);
  if (v50)
  {
    v18 = v10;
  }

  else
  {
    v18 = v10 + 1;
  }

  v19 = v18 + v7;
  v20 = v18 + v12;
  if (v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 + 1;
  }

  v22 = ((((v18 + (v19 & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v22 <= v5)
  {
    v22 = v5;
  }

  if (v22 + 1 > ((v13 + v12 + ((v18 + v12 + ((v18 + v7 + ((v18 + v7 + v51) & ~v7)) & ~v7)) & ~v12)) & ~v12) + v21)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = ((v13 + v12 + ((v18 + v12 + ((v18 + v7 + ((v18 + v7 + v51) & ~v7)) & ~v7)) & ~v12)) & ~v12) + v21;
  }

  v24 = v8 & ~v7;
  v28 = *(v17 + 80);
  v29 = *(v17 + 84);
  v30 = *(v17 + 64);
  if (v16)
  {
    v31 = v52;
  }

  else
  {
    v31 = v52 + 1;
  }

  v32 = v31 + ((((v21 + v12 + ((v20 + ((v19 + ((v19 + ((v9 + ((v4 + 224) & ~v4)) & ~v7)) & ~v7)) & ~v7)) & ~v12)) & ~v12) + v21 + v53) & ~v53);
  if (v32 <= v23)
  {
    v32 = v23;
  }

  v33 = v21 + ((v20 + ((v19 + ((v7 + 64) & ~v7)) & ~v7)) & ~v12);
  if (v33 <= v32)
  {
    v33 = v32;
  }

  v34 = ((v24 + v18 + v7) & ~v7) + v18;
  if (((v34 + v7) & ~v7) + v18 > v33)
  {
    v33 = ((v34 + v7) & ~v7) + v18;
  }

  v35 = ((v7 + ((v24 + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v7) + v18;
  if (v35 > v33)
  {
    v33 = ((v7 + ((v24 + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v7) + v18;
  }

  v25 = (v8 + ((v4 + 24) & ~v4)) & ~v7;
  if (((v19 + v25) & ~v7) + v18 > v33)
  {
    v33 = ((v19 + v25) & ~v7) + v18;
  }

  if (v35 > v33)
  {
    v33 = ((v7 + ((v24 + v18) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v7) + v18;
  }

  v26 = (v8 + ((v4 + 104) & ~v4)) & ~v7;
  if (((v19 + ((v19 + v26) & ~v7)) & ~v7) + v18 > v33)
  {
    v33 = ((v19 + ((v19 + v26) & ~v7)) & ~v7) + v18;
  }

  v36 = ((v20 + ((v19 + ((v19 + ((v19 + ((v8 + ((v4 + 160) & ~v4)) & ~v7)) & ~v7)) & ~v7)) & ~v7)) & ~v12) + v21;
  if (v36 <= v33)
  {
    v36 = v33;
  }

  result = a2;
  v27 = (v8 + ((v4 + 56) & ~v4)) & ~v7;
  if (((v19 + ((v19 + v27) & ~v7)) & ~v7) + v18 > v36)
  {
    v36 = ((v19 + ((v19 + v27) & ~v7)) & ~v7) + v18;
  }

  v38 = (v8 + ((v4 + 48) & ~v4)) & ~v7;
  v39 = (((v19 + ((v19 + ((v8 + ((v4 + 40) & ~v4)) & ~v7)) & ~v7)) & ~v7) + v18 + v28) & ~v28;
  if (!v29)
  {
    ++v30;
  }

  v40 = v30 + v39;
  if (v40 <= v36)
  {
    v40 = v36;
  }

  if (v38 + v18 + 1 > v40)
  {
    v40 = v38 + v18 + 1;
  }

  v41 = ((v19 + ((v19 + ((v8 + ((v4 + 128) & ~v4)) & ~v7)) & ~v7)) & ~v7) + v18;
  if (v41 > v40)
  {
    v40 = v41;
  }

  if (v52 > v40)
  {
    v40 = v52;
  }

  if (v34 <= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v34;
  }

  if (a2)
  {
    if (a2 < 0xF1)
    {
      goto LABEL_69;
    }

    v43 = v42 + 1;
    v44 = 8 * (v42 + 1);
    if ((v42 + 1) > 3)
    {
LABEL_51:
      v45 = *(a1 + v43);
      if (!*(a1 + v43))
      {
        goto LABEL_69;
      }

      goto LABEL_58;
    }

    v46 = ((a2 + ~(-1 << v44) - 240) >> v44) + 1;
    if (HIWORD(v46))
    {
      v45 = *(a1 + v43);
      if (!v45)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v46 <= 0xFF)
      {
        if (v46 < 2)
        {
LABEL_69:
          v48 = *(a1 + v42);
          if (v48 >= 0x10)
          {
            return (v48 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        goto LABEL_51;
      }

      v45 = *(a1 + v43);
      if (!*(a1 + v43))
      {
        goto LABEL_69;
      }
    }

LABEL_58:
    v47 = (v45 - 1) << v44;
    if (v43 > 3)
    {
      v47 = 0;
    }

    if (v43)
    {
      if (v43 > 3)
      {
        LODWORD(v43) = 4;
      }

      if (v43 > 2)
      {
        if (v43 == 3)
        {
          LODWORD(v43) = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          LODWORD(v43) = *a1;
        }
      }

      else if (v43 == 1)
      {
        LODWORD(v43) = *a1;
      }

      else
      {
        LODWORD(v43) = *a1;
      }
    }

    return (v43 | v47) + 241;
  }

  return result;
}

void sub_1E67BE4D8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[3] - 8) + 80);
  v6 = *(*(a4[3] - 8) + 64);
  v7 = *(sub_1E68B1820() - 8);
  v8 = *(v7 + 80);
  v9 = v6 + v8;
  v10 = v6 + v8 + 1;
  v52 = (v10 + ((v5 + 248) & ~v5)) & ~v8;
  v51 = *(v7 + 84);
  v11 = *(v7 + 64);
  v12 = *(a4[2] - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(v12 + 84);
  if (v11 > v6)
  {
    v6 = *(v7 + 64);
  }

  v16 = *(a4[4] - 8);
  v54 = *(v16 + 80);
  v17 = *(v16 + 84);
  v53 = *(v16 + 64);
  v18 = *(sub_1E68B1A10() - 8);
  if (v51)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + 1;
  }

  v20 = v19 + v8;
  v21 = v19 + v13;
  if (v15)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = ((((v19 + (v20 & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v23 <= v6)
  {
    v23 = v6;
  }

  if (v23 + 1 > ((v14 + v13 + ((v19 + v13 + ((v19 + v8 + ((v19 + v8 + v52) & ~v8)) & ~v8)) & ~v13)) & ~v13) + v22)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = ((v14 + v13 + ((v19 + v13 + ((v19 + v8 + ((v19 + v8 + v52) & ~v8)) & ~v8)) & ~v13)) & ~v13) + v22;
  }

  v25 = v9 & ~v8;
  v26 = (v9 + ((v5 + 24) & ~v5)) & ~v8;
  v27 = (v9 + ((v5 + 104) & ~v5)) & ~v8;
  v29 = *(v18 + 80);
  v30 = *(v18 + 84);
  v31 = *(v18 + 64);
  if (v17)
  {
    v32 = v53;
  }

  else
  {
    v32 = v53 + 1;
  }

  v33 = v32 + ((((v22 + v13 + ((v21 + ((v20 + ((v20 + ((v10 + ((v5 + 224) & ~v5)) & ~v8)) & ~v8)) & ~v8)) & ~v13)) & ~v13) + v22 + v54) & ~v54);
  if (v33 <= v24)
  {
    v33 = v24;
  }

  v34 = v22 + ((v21 + ((v20 + ((v8 + 64) & ~v8)) & ~v8)) & ~v13);
  if (v34 <= v33)
  {
    v34 = v33;
  }

  v35 = ((v25 + v19 + v8) & ~v8) + v19;
  if (((v35 + v8) & ~v8) + v19 > v34)
  {
    v34 = ((v35 + v8) & ~v8) + v19;
  }

  v36 = ((v8 + ((v25 + v19) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v8) + v19;
  if (v36 > v34)
  {
    v34 = ((v8 + ((v25 + v19) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v8) + v19;
  }

  if (((v20 + v26) & ~v8) + v19 > v34)
  {
    v34 = ((v20 + v26) & ~v8) + v19;
  }

  if (v36 > v34)
  {
    v34 = ((v8 + ((v25 + v19) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v8) + v19;
  }

  if (((v20 + ((v20 + v27) & ~v8)) & ~v8) + v19 > v34)
  {
    v34 = ((v20 + ((v20 + v27) & ~v8)) & ~v8) + v19;
  }

  v37 = ((v21 + ((v20 + ((v20 + ((v20 + ((v9 + ((v5 + 160) & ~v5)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v13) + v22;
  if (v37 <= v34)
  {
    v37 = v34;
  }

  v28 = (v9 + ((v5 + 56) & ~v5)) & ~v8;
  if (((v20 + ((v20 + v28) & ~v8)) & ~v8) + v19 > v37)
  {
    v37 = ((v20 + ((v20 + v28) & ~v8)) & ~v8) + v19;
  }

  v38 = (v9 + ((v5 + 48) & ~v5)) & ~v8;
  v39 = (((v20 + ((v20 + ((v9 + ((v5 + 40) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v19 + v29) & ~v29;
  if (!v30)
  {
    ++v31;
  }

  v40 = v31 + v39;
  if (v40 <= v37)
  {
    v40 = v37;
  }

  if (v38 + v19 + 1 > v40)
  {
    v40 = v38 + v19 + 1;
  }

  v41 = ((v20 + ((v20 + ((v9 + ((v5 + 128) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v19;
  if (v41 > v40)
  {
    v40 = v41;
  }

  if (v53 > v40)
  {
    v40 = v53;
  }

  if (v35 > v40)
  {
    v40 = v35;
  }

  v42 = v40 + 1;
  if (a3 < 0xF1)
  {
    v45 = 0;
    v43 = a1;
    v44 = a2;
  }

  else
  {
    v43 = a1;
    v44 = a2;
    if (v42 <= 3)
    {
      v48 = ((a3 + ~(-1 << (8 * v42)) - 240) >> (8 * v42)) + 1;
      if (HIWORD(v48))
      {
        v45 = 4;
      }

      else
      {
        if (v48 < 0x100)
        {
          v49 = 1;
        }

        else
        {
          v49 = 2;
        }

        if (v48 >= 2)
        {
          v45 = v49;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }
  }

  if (v44 > 0xF0)
  {
    v46 = v44 - 241;
    if (v42 >= 4)
    {
      bzero(v43, v40 + 1);
      *v43 = v46;
      v47 = 1;
      if (v45 > 1)
      {
        goto LABEL_83;
      }

      goto LABEL_80;
    }

    v47 = (v46 >> (8 * v42)) + 1;
    if (v40 != -1)
    {
      v50 = v46 & ~(-1 << (8 * v42));
      bzero(v43, v42);
      if (v42 != 3)
      {
        if (v42 == 2)
        {
          *v43 = v50;
          if (v45 > 1)
          {
LABEL_83:
            if (v45 == 2)
            {
              *&v43[v42] = v47;
            }

            else
            {
              *&v43[v42] = v47;
            }

            return;
          }
        }

        else
        {
          *v43 = v46;
          if (v45 > 1)
          {
            goto LABEL_83;
          }
        }

LABEL_80:
        if (v45)
        {
          v43[v42] = v47;
        }

        return;
      }

      *v43 = v50;
      v43[2] = BYTE2(v50);
    }

    if (v45 > 1)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  if (v45 <= 1)
  {
    if (v45)
    {
      v43[v42] = 0;
      if (!v44)
      {
        return;
      }

LABEL_69:
      v43[v40] = -v44;
      return;
    }

LABEL_68:
    if (!v44)
    {
      return;
    }

    goto LABEL_69;
  }

  if (v45 == 2)
  {
    *&v43[v42] = 0;
    goto LABEL_68;
  }

  *&v43[v42] = 0;
  if (v44)
  {
    goto LABEL_69;
  }
}

uint64_t sub_1E67BEADC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E67BEB6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E67BEC1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E67BECAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalStackCardLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalStackCardLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NullItemMetrics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NullItemMetrics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E67BF5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E67BF6D4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1E67BF634()
{
  sub_1E67BF670();
  sub_1E68B20E0();
  return v1;
}

unint64_t sub_1E67BF670()
{
  result = qword_1EE2EC280[0];
  if (!qword_1EE2EC280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC280);
  }

  return result;
}

unint64_t sub_1E67BF6D4()
{
  result = qword_1EE2EA440;
  if (!qword_1EE2EA440)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA440);
  }

  return result;
}

unint64_t sub_1E67BF72C(uint64_t a1)
{
  result = sub_1E68B3750();
  if (v2 <= 0x3F)
  {
    result = sub_1E67482E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E67BF7B4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1E67BF924(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_1E67BFBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v72 = a3;
  swift_getWitnessTable();
  v6 = sub_1E68B22E0();
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v57 - v11;
  v61 = *(*(a2 + 24) - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v15;
  v16 = sub_1E68B1E40();
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v62 = &v57 - v22;
  v68 = a2;
  v23 = *(a2 + 16);
  v24 = sub_1E68B3750();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v57 - v27;
  v29 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v67 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E68B2220();
  v70 = *(v33 - 8);
  v71 = v33;
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v73 = &v57 - v36;
  v37 = v4;
  (*(v25 + 16))(v28, v4, v24, v35);
  v38 = v29;
  if ((*(v29 + 48))(v28, 1, v23) == 1)
  {
    (*(v25 + 8))(v28, v24);
    WitnessTable = swift_getWitnessTable();
    v40 = v63;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v41 = v65;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v42 = *(v68 + 40);
    v80 = WitnessTable;
    v81 = v42;
    v43 = swift_getWitnessTable();
    sub_1E6744DB8(v41, v16, v6, v43, WitnessTable);
    v44 = *(v66 + 8);
    v44(v41, v6);
    v44(v40, v6);
  }

  else
  {
    v58 = v29;
    v45 = v67;
    (*(v38 + 32))(v67, v28, v23);
    v46 = v68;
    v47 = v59;
    (*(v37 + *(v68 + 52)))(v45);
    v48 = swift_getWitnessTable();
    v49 = v60;
    MEMORY[0x1E69512E0](v47, v6, v60, v48);
    (*(v61 + 8))(v47, v49);
    v42 = *(v46 + 40);
    v74 = v48;
    v75 = v42;
    v50 = swift_getWitnessTable();
    v51 = v62;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v52 = *(v64 + 8);
    v52(v19, v16);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    sub_1E6744CC0(v19, v16, v6, v50, v48);
    v52(v19, v16);
    v52(v51, v16);
    (*(v58 + 8))(v67, v23);
  }

  v53 = swift_getWitnessTable();
  v78 = v53;
  v79 = v42;
  v76 = swift_getWitnessTable();
  v77 = v53;
  v54 = v71;
  swift_getWitnessTable();
  v55 = v73;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v70 + 8))(v55, v54);
}

uint64_t sub_1E67C02C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1E68B3750();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  result = type metadata accessor for CanvasContextMenu(0, v19);
  v18 = (a8 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t sub_1E67C0384@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = *a1;
  v16 = *(a1 + 2);
  v17 = *(a1 + 24);
  v18 = *(a1 + 4);
  v19 = *(a1 + 5);
  v20 = *a7;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for TallCardView(0, a11, a12, v21);
  v23 = &a9[v22[9]];
  sub_1E68B2BC0();
  *v23 = v32;
  *(v23 + 1) = v33;
  v24 = &a9[v22[10]];
  *v24 = v28;
  *(v24 + 2) = v16;
  v24[24] = v17;
  *(v24 + 4) = v18;
  *(v24 + 5) = v19;
  (*(*(a11 - 8) + 32))(&a9[v22[11]], a2, a11);
  v25 = &a9[v22[12]];
  *v25 = a3;
  *(v25 + 1) = a4;
  *(v25 + 2) = a5;
  *(v25 + 3) = a6;
  a9[v22[13]] = v20;
  v26 = &a9[v22[14]];
  result = swift_allocObject();
  *(result + 16) = a8;
  *(result + 24) = a10;
  *v26 = sub_1E673F5E0;
  *(v26 + 1) = result;
  return result;
}

uint64_t TallCardViewLayout.init(artworkAspectRatio:artworkCornerRadius:isAccessibilityLayout:titleHorizontalPadding:titleLineLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a7;
  *(a3 + 40) = a2;
  return result;
}

unint64_t sub_1E67C0578()
{
  v1 = *v0;
  v2 = 0x6E694C656C746974;
  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E67C062C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E67C62C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E67C0660(uint64_t a1)
{
  v2 = sub_1E67C50B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67C069C(uint64_t a1)
{
  v2 = sub_1E67C50B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TallCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098148, &qword_1E68BB380);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15 = *(v1 + 24);
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67C50B0();
  sub_1E68B3BD0();
  v14[0] = v9;
  v14[1] = v10;
  v16 = 0;
  type metadata accessor for CGSize(0);
  sub_1E67C5B30(&qword_1EE2EA448, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
  sub_1E68B3AB0();
  if (!v2)
  {
    v14[0] = v11;
    v16 = 1;
    sub_1E67621E8();
    sub_1E68B3AB0();
    LOBYTE(v14[0]) = 2;
    sub_1E68B3A80();
    v14[0] = v12;
    v16 = 3;
    sub_1E68B3AB0();
    LOBYTE(v14[0]) = 4;
    sub_1E68B3AA0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t TallCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098150, &qword_1E68BB388);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67C50B0();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v18 = 0;
    sub_1E67C5B30(&qword_1ED096DC0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E68B3A00();
    v10 = v17[0];
    v11 = v17[1];
    v18 = 1;
    sub_1E6762A60();
    sub_1E68B3A00();
    v12 = v17[0];
    LOBYTE(v17[0]) = 2;
    v13 = sub_1E68B39D0();
    v18 = 3;
    sub_1E68B3A00();
    v15 = v17[0];
    LOBYTE(v17[0]) = 4;
    v16 = sub_1E68B39F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13 & 1;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TallCardViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1E673E7F4(*v0, *(v0 + 8));
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1E69523F0](*&v4);
  sub_1E68B3B90();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E69523F0](*&v5);
  return MEMORY[0x1E69523D0](v3);
}

uint64_t TallCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  TallCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67C0D3C()
{
  sub_1E68B3B70();
  TallCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67C0DAC(uint64_t a1)
{
  sub_1E68B3B70();
  TallCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67C0E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v73 = *(a1 - 8);
  v75 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v72 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v4 + 16);
  v5 = v4;
  v70 = v4;
  sub_1E68B1E40();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v6 = sub_1E68B1E40();
  v7 = sub_1E68B1E10();
  v71 = *(v5 + 24);
  v95 = v71;
  v96 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v93 = WitnessTable;
  v94 = v9;
  v10 = swift_getWitnessTable();
  v11 = sub_1E67C5B30(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v89 = v6;
  v90 = v7;
  v91 = v10;
  v92 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098168, &qword_1E68BB628);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098170, &qword_1E68BB630);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098178, &unk_1E68BB638);
  v12 = sub_1E68B1E40();
  v13 = sub_1E673F530(&qword_1EE2EA650, &qword_1ED098178, &unk_1E68BB638, MEMORY[0x1E697EC18]);
  v87 = WitnessTable;
  v88 = v13;
  v14 = swift_getWitnessTable();
  v89 = v12;
  v90 = v7;
  v91 = v14;
  v92 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v15 = sub_1E68B2220();
  v16 = swift_getWitnessTable();
  v89 = v12;
  v90 = v7;
  v91 = v14;
  v92 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v9;
  v17 = swift_getWitnessTable();
  v83 = v16;
  v84 = v17;
  v62 = v15;
  v61 = swift_getWitnessTable();
  v18 = sub_1E68B2C30();
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v60 = &v58 - v20;
  v21 = swift_getWitnessTable();
  v58 = v21;
  v59 = sub_1E67C5938();
  v89 = v18;
  v90 = &type metadata for ActionCardButtonStyle;
  v91 = v21;
  v92 = v59;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v23);
  v25 = &v58 - v24;
  sub_1E68B2440();
  v67 = OpaqueTypeMetadata2;
  v69 = sub_1E68B1E40();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v26);
  v64 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v66 = &v58 - v31;
  v32 = v73;
  v33 = v72;
  v34 = v76;
  v35 = v70;
  (*(v73 + 16))(v72, v76, v70, v30);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v74;
  v39 = v71;
  *(v37 + 16) = v74;
  *(v37 + 24) = v39;
  v40 = v33;
  v41 = v25;
  (*(v32 + 32))(v37 + v36, v40, v35);
  v42 = v58;
  v78 = v38;
  v79 = v39;
  v43 = v59;
  v80 = v34;
  v44 = v60;
  sub_1E68B2C20();
  sub_1E68B27A0();
  (*(v63 + 8))(v44, v18);
  v45 = (v34 + *(v35 + 48));
  v46 = v45[3];
  if (v46)
  {
    v47 = *v45;
    v48 = v45[1];
    v49 = v45[2];
  }

  else
  {
    v47 = 0;
    LOBYTE(v49) = 0;
    v48 = 0xE000000000000000;
  }

  sub_1E673F228(*v45, v45[1], v45[2], v46);
  v89 = v18;
  v90 = &type metadata for ActionCardButtonStyle;
  v91 = v42;
  v92 = v43;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v64;
  v52 = v67;
  sub_1E68B28C0();
  sub_1E673F0D4(v47, v48, v49 & 1);

  (*(v65 + 8))(v41, v52);
  v53 = sub_1E67C5B30(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v81 = v50;
  v82 = v53;
  v54 = v69;
  swift_getWitnessTable();
  v55 = v66;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v56 = *(v68 + 8);
  v56(v51, v54);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v56)(v55, v54);
}

uint64_t sub_1E67C1778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for TallCardView(0, a2, a3, a4) + 56);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1E677A174(v5);
}

uint64_t sub_1E67C17F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v51 = a2;
  v49 = a1;
  v52 = a4;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098178, &unk_1E68BB638);
  v5 = sub_1E68B1E40();
  v6 = sub_1E68B1E10();
  v74 = a3;
  v75 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v72 = WitnessTable;
  v73 = sub_1E673F530(&qword_1EE2EA650, &qword_1ED098178, &unk_1E68BB638, MEMORY[0x1E697EC18]);
  v8 = swift_getWitnessTable();
  v9 = sub_1E67C5B30(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v57 = v5;
  v68 = v5;
  v69 = v6;
  v55 = v8;
  v70 = v8;
  v71 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v10 = sub_1E68B1E40();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v47 - v16;
  v17 = sub_1E68B1E40();
  v18 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v66 = WitnessTable;
  v67 = v18;
  v53 = v18;
  v19 = swift_getWitnessTable();
  v68 = v17;
  v69 = v6;
  v56 = v6;
  v70 = v19;
  v71 = v9;
  v54 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098168, &qword_1E68BB628);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098170, &qword_1E68BB630);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v20 = v49;
  swift_getWitnessTable();
  v21 = sub_1E68B2CC0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v47 - v28;
  v30 = sub_1E68B2220();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v47 - v33;
  v36 = type metadata accessor for TallCardView(0, v51, v50, v35);
  if (*(v20 + *(v36 + 40) + 24) == 1)
  {
    sub_1E67C2010(v36);
    v37 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v38 = *(v22 + 8);
    v38(v25, v21);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v68 = v57;
    v69 = v56;
    v70 = v55;
    v71 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v53;
    v39 = swift_getWitnessTable();
    sub_1E6744CC0(v25, v21, v10, v37, v39);
    v38(v25, v21);
    v38(v29, v21);
  }

  else
  {
    sub_1E67C23B0(v36, v13);
    v68 = v57;
    v69 = v56;
    v70 = v55;
    v71 = v54;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v53;
    v40 = swift_getWitnessTable();
    v41 = v47;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v42 = *(v48 + 8);
    v42(v13, v10);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v43 = swift_getWitnessTable();
    sub_1E6744DB8(v13, v21, v10, v43, v40);
    v42(v13, v10);
    v42(v41, v10);
  }

  v44 = swift_getWitnessTable();
  v68 = v57;
  v69 = v56;
  v70 = v55;
  v71 = v54;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v53;
  v45 = swift_getWitnessTable();
  v60 = v44;
  v61 = v45;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v31 + 8))(v34, v30);
}