uint64_t sub_22F380920(char *a1, char *a2, void *a3, uint64_t *a4, void *a5, char *a6, char *a7, uint64_t *a8, id *a9, uint64_t *a10, id a11, void *a12, uint64_t a13, uint64_t *a14)
{
  v15 = v14;
  v515 = a8;
  v516 = a6;
  v513 = a7;
  v519 = a4;
  v520 = a5;
  v540 = *MEMORY[0x277D85DE8];
  v19 = sub_22F73F270();
  v20 = *(v19 - 8);
  v510 = v19;
  v511 = v20;
  MEMORY[0x28223BE20](v19);
  v512 = &v489 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22F73F690();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v517 = &v489 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v518 = &v489 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v489 - v28;
  v521 = a1;
  v522 = a2;
  v30 = sub_22F740DF0();
  v31 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v538 = v31;
  v514 = "_TtC11PhotosGraph12GraphBuilder";
  sub_22F386DBC(v30, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v538);
  v33 = v538;
  v34 = [a3 creationDate];
  if (v34)
  {
    v35 = v34;
    sub_22F73F640();

    sub_22F73F620();
    v36 = sub_22F741350();
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v538 = v33;
    sub_22F386DBC(v36, 0x6E6F697461657263, 0xEC00000065746144, v37, &v538);
    v33 = v538;
    v38 = v23;
    (*(v23 + 8))(v29, v22);
  }

  else
  {
    v38 = v23;
  }

  v39 = [a3 location];
  if (v39)
  {
    v40 = v39;
    [v39 coordinate];

    v41 = [a3 location];
    if (v41)
    {
      v42 = v41;
      [v41 coordinate];

      v43 = sub_22F741350();
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v538 = v33;
      sub_22F386DBC(v43, 0x656475746974616CLL, 0xE800000000000000, v44, &v538);
      v45 = v538;
      v46 = sub_22F741350();
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v538 = v45;
      sub_22F386DBC(v46, 0x64757469676E6F6CLL, 0xE900000000000065, v47, &v538);
      v33 = v538;
    }
  }

  [a3 curationScore];
  v48 = sub_22F741350();
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v538 = v33;
  sub_22F386DBC(v48, 0x6E6F697461727563, 0xED000065726F6353, v49, &v538);
  v50 = v538;
  v51 = v522;

  sub_22F2B5478(&unk_2843DD6E0, v521, v51, v50);
  if (v15)
  {
    goto LABEL_8;
  }

  v54 = a3;
  v55 = v52;
  v56 = v519;
  sub_22F2D601C(v52);
  [v520 insertNode_];
  v509 = v54;
  v57 = [v54 localCreationDate];
  v508 = v55;
  if (!v57)
  {
    goto LABEL_15;
  }

  v505 = v22;
  v506 = v50;
  v507 = 0;
  v58 = v57;
  sub_22F73F640();

  sub_22F73F800();
  sub_22F73F620();
  v59 = sub_22F741360();
  v61 = v60;
  v62 = *v56;

  v63 = sub_22F15280C(&unk_2843DD708);
  v64 = sub_22F2D67A0(v63, v59, v61, v62);

  if (!v64)
  {
    v92 = sub_22F740DF0();
    v93 = MEMORY[0x277D84F98];
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v538 = v93;
    sub_22F386DBC(v92, 0xD000000000000010, v514 | 0x8000000000000000, v94, &v538);
    v95 = v538;
    v96 = sub_22F73F5B0();
    v97 = [v513 stringFromDate_];

    if (!v97)
    {
      sub_22F740E20();
      v97 = sub_22F740DF0();
    }

    v98 = swift_isUniquelyReferenced_nonNull_native();
    v538 = v95;
    sub_22F386DBC(v97, 1701667182, 0xE400000000000000, v98, &v538);
    v99 = v507;
    sub_22F2B5478(&unk_2843DD730, v59, v61, v538);
    v15 = v99;
    if (v99)
    {

LABEL_26:
      v101 = *(v38 + 1);
      v102 = v517;
LABEL_27:
      v103 = v505;
      v101(v102, v505);
      v101(v518, v103);
LABEL_8:

      goto LABEL_9;
    }

    v513 = v38;
    v507 = 0;
    v174 = v100;
    sub_22F2D601C(v100);
    v504 = v174;
    [v520 insertNode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
    v175 = sub_22F73F990();
    v176 = *(v175 - 8);
    v177 = *(v176 + 72);
    v178 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_22F770DE0;
    v180 = *(v176 + 104);
    v180(v179 + v178, *MEMORY[0x277CC9968], v175);
    v180(v179 + v178 + v177, *MEMORY[0x277CC99B8], v175);
    v180(v179 + v178 + 2 * v177, *MEMORY[0x277CC9998], v175);
    v180(v179 + v178 + 3 * v177, *MEMORY[0x277CC99B0], v175);
    v180(v179 + v178 + 4 * v177, *MEMORY[0x277CC9988], v175);
    sub_22F151AEC(v179);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v91 = v512;
    sub_22F73F860();

    v181 = sub_22F73F1C0();
    if (v182 & 1) != 0 || (v183 = v181, v184 = sub_22F73F1F0(), (v185))
    {
      v64 = v504;
      v186 = v504;
      v15 = v507;
      v65 = v508;
      v38 = v513;
      goto LABEL_61;
    }

    v502 = v184;
    v538 = v183;
    v203 = sub_22F742010();
    v205 = v204;
    v206 = *v519;
    v207 = sub_22F15280C(&unk_2843DD758);
    v208 = sub_22F2D67A0(v207, v203, v205, v206);

    v15 = v507;
    v38 = v513;
    if (v208)
    {
    }

    else
    {
      v344 = sub_22F740DF0();
      v345 = MEMORY[0x277D84F98];
      v346 = swift_isUniquelyReferenced_nonNull_native();
      v538 = v345;
      sub_22F386DBC(v344, 0xD000000000000010, v514 | 0x8000000000000000, v346, &v538);
      sub_22F2B5478(&unk_2843DD780, v203, v205, v538);
      if (v15)
      {

        v348 = v504;
        (*(v511 + 8))(v91, v510);
        goto LABEL_26;
      }

      v208 = v347;
      [v520 insertNode_];
      sub_22F2D601C(v208);
    }

    v209 = v504;
    v210 = v208;
    v211 = sub_22F1515F8(&unk_2843DD7A8);
    sub_22F1DF3B0(&unk_2843DD7C8);
    v212 = objc_opt_self();
    v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v213 = sub_22F740C80();
    v516 = v212;
    v214 = [v212 kgPropertiesWithMAProperties_];

    if (!v214)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

      (*(v511 + 8))(v91, v510);
      goto LABEL_29;
    }

    v507 = v15;
    v497 = sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v215 = sub_22F740CA0();

    v216 = type metadata accessor for Edge();
    v217 = objc_allocWithZone(v216);
    *&v217[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v217[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v211;
    *&v217[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v215;
    *&v217[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v209;
    v500 = v210;
    *&v217[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v210;
    v527.receiver = v217;
    v527.super_class = v216;
    v498 = v216;
    v499 = objc_msgSendSuper2(&v527, sel_init);
    [v520 insertEdge_];
    v218 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v219 = sub_22F740DF0();
    [v218 setDateFormat_];

    v220 = sub_22F73F5B0();
    v501 = v218;
    v221 = [v218 stringFromDate_];

    v222 = v221;
    if (!v221)
    {
      sub_22F740E20();
      v222 = sub_22F740DF0();
    }

    v223 = sub_22F740E20();
    v225 = v224;
    v226 = *v519;
    v227 = sub_22F15280C(&unk_2843DD7D8);
    v228 = sub_22F2D67A0(v227, v223, v225, v226);

    if (v228)
    {

      v15 = v507;
      v229 = v513;
    }

    else
    {
      v409 = MEMORY[0x277D84F98];
      v410 = swift_isUniquelyReferenced_nonNull_native();
      v538 = v409;
      sub_22F386DBC(v222, 0xD000000000000010, v514 | 0x8000000000000000, v410, &v538);
      v411 = v507;
      sub_22F2B5478(&unk_2843DD800, v223, v225, v538);
      v15 = v411;
      v229 = v513;
      v413 = v517;
      if (v411)
      {

        goto LABEL_159;
      }

      v228 = v412;
      [v520 insertNode_];
      sub_22F2D601C(v228);
    }

    v230 = v518;
    v231 = v209;
    v232 = v228;
    v233 = sub_22F1515F8(&unk_2843DD828);
    sub_22F1DF3B0(&unk_2843DD848);
    v234 = sub_22F740C80();
    v235 = [v516 kgPropertiesWithMAProperties_];

    if (!v235)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

      goto LABEL_169;
    }

    v507 = v15;
    v236 = sub_22F740CA0();

    v237 = v498;
    v238 = objc_allocWithZone(v498);
    *&v238[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v238[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v233;
    *&v238[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v236;
    v493 = v231;
    *&v238[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v231;
    *&v238[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v232;
    v526.receiver = v238;
    v526.super_class = v237;
    v494 = objc_msgSendSuper2(&v526, sel_init);
    [v520 insertEdge_];
    v239 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v240 = sub_22F740DF0();
    [v239 setDateFormat_];

    v241 = sub_22F73F5B0();
    v496 = v239;
    v242 = [v239 stringFromDate_];

    v243 = v242;
    if (!v242)
    {
      sub_22F740E20();
      v243 = sub_22F740DF0();
    }

    v495 = v232;
    v244 = sub_22F740E20();
    v246 = v245;
    v247 = *v519;
    v248 = sub_22F15280C(&unk_2843DD858);
    v249 = sub_22F2D67A0(v248, v244, v246, v247);

    if (v249)
    {

      v15 = v507;
      v229 = v513;
LABEL_90:
      v230 = v518;
      v231 = v493;
      v250 = v249;
      v251 = sub_22F1515F8(&unk_2843DD8A8);
      sub_22F1DF3B0(&unk_2843DD8C8);
      v252 = sub_22F740C80();
      v253 = [v516 kgPropertiesWithMAProperties_];

      if (v253)
      {
        v507 = v15;
        v254 = sub_22F740CA0();

        v255 = v498;
        v256 = objc_allocWithZone(v498);
        *&v256[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v256[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v251;
        *&v256[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v254;
        v490 = v231;
        *&v256[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v231;
        *&v256[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v250;
        v525.receiver = v256;
        v525.super_class = v255;
        v491 = objc_msgSendSuper2(&v525, sel_init);
        [v520 insertEdge_];
        v257 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v258 = sub_22F740DF0();
        [v257 setDateFormat_];

        v259 = sub_22F73F5B0();
        v492 = v257;
        v260 = [v257 stringFromDate_];

        v261 = v260;
        if (!v260)
        {
          sub_22F740E20();
          v261 = sub_22F740DF0();
        }

        v493 = v250;
        v262 = sub_22F740E20();
        v264 = v263;
        v265 = *v519;
        v266 = sub_22F15280C(&unk_2843DD8D8);
        v267 = sub_22F2D67A0(v266, v262, v264, v265);

        if (v267)
        {

          v15 = v507;
          v38 = v513;
        }

        else
        {
          v478 = MEMORY[0x277D84F98];
          v479 = swift_isUniquelyReferenced_nonNull_native();
          v538 = v478;
          sub_22F386DBC(v261, 0xD000000000000010, v514 | 0x8000000000000000, v479, &v538);
          v480 = v507;
          sub_22F2B5478(&unk_2843DD900, v262, v264, v538);
          v15 = v480;
          v38 = v513;
          if (v480)
          {

            v482 = v490;
            (*(v511 + 8))(v512, v510);
            goto LABEL_26;
          }

          v267 = v481;
          [v520 insertNode_];
          sub_22F2D601C(v267);
        }

        v268 = v518;
        v50 = v490;
        v55 = v267;
        v269 = sub_22F1515F8(&unk_2843DD928);
        sub_22F1DF3B0(&unk_2843DD948);
        v270 = sub_22F740C80();
        v271 = [v516 kgPropertiesWithMAProperties_];

        if (!v271)
        {

          sub_22F2B5954();
          v15 = swift_allocError();
          swift_willThrow();

          (*(v511 + 8))(v512, v510);
          v104 = *(v38 + 1);
          v105 = v505;
          v104(v517, v505);
          v106 = v268;
          goto LABEL_30;
        }

        v507 = v15;
        v272 = sub_22F740CA0();

        v273 = v498;
        v274 = objc_allocWithZone(v498);
        *&v274[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v274[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v269;
        *&v274[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v272;
        *&v274[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v50;
        *&v274[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v55;
        v524.receiver = v274;
        v524.super_class = v273;
        v158 = objc_msgSendSuper2(&v524, sel_init);
        [v520 insertEdge_];
        v538 = v502;
        v275 = sub_22F742010();
        v277 = v276;
        v278 = *v519;
        v279 = sub_22F15280C(&unk_2843DD958);
        v280 = sub_22F2D67A0(v279, v275, v277, v278);

        if (v280)
        {
          v490 = v158;
          v502 = v55;

          v91 = v512;
          goto LABEL_98;
        }

        v483 = sub_22F740DF0();
        v484 = MEMORY[0x277D84F98];
        v485 = swift_isUniquelyReferenced_nonNull_native();
        v538 = v484;
        sub_22F386DBC(v483, 0xD000000000000010, v514 | 0x8000000000000000, v485, &v538);
        v486 = v507;
        sub_22F2B5478(&unk_2843DD980, v275, v277, v538);
        v507 = v486;
        v91 = v512;
        if (!v486)
        {
          goto LABEL_180;
        }

        (*(v511 + 8))(v91, v510);
        v487 = *(v513 + 1);
        v488 = v505;
        v487(v517, v505);
        v487(v518, v488);

        v15 = v507;
LABEL_9:
        *a14 = v15;
        return result;
      }

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

LABEL_169:
      (*(v511 + 8))(v512, v510);
      v476 = *(v229 + 1);
      v477 = v505;
      v476(v517, v505);
      result = (v476)(v230, v477);
      goto LABEL_9;
    }

    v458 = MEMORY[0x277D84F98];
    v459 = swift_isUniquelyReferenced_nonNull_native();
    v538 = v458;
    sub_22F386DBC(v243, 0xD000000000000010, v514 | 0x8000000000000000, v459, &v538);
    v460 = v507;
    sub_22F2B5478(&unk_2843DD880, v244, v246, v538);
    v15 = v460;
    v229 = v513;
    v413 = v517;
    if (!v460)
    {
      v249 = v461;
      [v520 insertNode_];
      sub_22F2D601C(v249);
      goto LABEL_90;
    }

    v462 = v493;
LABEL_159:
    (*(v511 + 8))(v512, v510);
    v101 = *(v229 + 1);
    v102 = v413;
    goto LABEL_27;
  }

  v15 = v507;
  v65 = v508;
  while (1)
  {
    v66 = v64;
    v67 = v65;
    v68 = sub_22F1515F8(&unk_2843DD9D8);
    sub_22F1DF3B0(&unk_2843DD9F8);
    v69 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v70 = sub_22F740C80();
    v71 = [v69 kgPropertiesWithMAProperties_];

    if (!v71)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

LABEL_29:
      v104 = *(v38 + 1);
      v105 = v505;
      v104(v517, v505);
      v106 = v518;
      goto LABEL_30;
    }

    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v72 = sub_22F740CA0();

    v73 = type metadata accessor for Edge();
    v74 = objc_allocWithZone(v73);
    *&v74[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v74[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v68;
    *&v74[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v72;
    *&v74[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v67;
    *&v74[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v66;
    v528.receiver = v74;
    v528.super_class = v73;
    v75 = objc_msgSendSuper2(&v528, sel_init);
    [v520 insertEdge_];

    v76 = *(v38 + 1);
    v77 = v505;
    v76(v517, v505);
    v76(v518, v77);
    v55 = v508;
    v50 = v506;
LABEL_15:
    v78 = *v515;

    v79 = sub_22F15E910(v521, v522, v78);

    if ((v79 & 1) == 0 || (v80 = [v509 location]) == 0)
    {
      v91 = 0;
      goto LABEL_37;
    }

    v81 = v80;
    v506 = v50;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v538 = *a9;
    v82 = v538;
    *a9 = 0x8000000000000000;
    v84 = sub_22F12385C(v81);
    v85 = v82[2];
    v86 = (v83 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      __break(1u);
    }

    else
    {
      v88 = v83;
      if (v82[3] >= v87)
      {
        if ((v55 & 1) == 0)
        {
          sub_22F138DE4();
          v82 = v538;
        }
      }

      else
      {
        sub_22F12DD7C(v87, v55);
        v82 = v538;
        v89 = sub_22F12385C(v81);
        if ((v88 & 1) != (v90 & 1))
        {
          goto LABEL_185;
        }

        v84 = v89;
      }

      v55 = v508;
      *a9 = v82;

      v107 = *a9;
      if ((v88 & 1) == 0)
      {
        sub_22F1534C8();
        v108 = v81;
      }

      v109 = (v107[7] + 8 * v84);
      v110 = v55;
      MEMORY[0x231900D00]();
      if (*((*v109 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_36;
      }
    }

    sub_22F7411C0();
LABEL_36:
    sub_22F741220();

    v91 = sub_22F384654;
    v50 = v506;
LABEL_37:
    v111 = [v509 photosOneUpProperties];
    if (!v111)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v112 = v111;
    v113 = [v111 reverseLocationDataIsValid];

    if (!v113)
    {

      goto LABEL_51;
    }

    v114 = [v509 photosOneUpProperties];
    if (!v114)
    {
      goto LABEL_184;
    }

    v115 = v114;

    v116 = [v115 reverseLocationData];

    if (v116)
    {
      v117 = sub_22F73F510();
      v50 = v118;

      sub_22F15C3C4(v117, v50);
      v119 = sub_22F73F4F0();
      sub_22F133BF0(v117, v50);
      v120 = [objc_opt_self() infoFromPlistData_];

      if (!v120)
      {
        sub_22F133BF0(v117, v50);
        goto LABEL_51;
      }

      v518 = v117;
      v121 = [v120 postalAddress];
      if (v121)
      {
        v122 = v121;
        v516 = v50;
        v123 = [v121 city];
        sub_22F740E20();

        v124 = sub_22F740F10();

        if (v124 <= 0)
        {
          v521 = 0;
          v55 = v508;
          goto LABEL_69;
        }

        v507 = v15;
        v125 = [v122 state];
        sub_22F740E20();

        v126 = sub_22F740F10();

        if (v126 < 1 || (v127 = [v122 country], sub_22F740E20(), v127, v128 = sub_22F740F10(), , v128 < 1))
        {
          v521 = 0;
          v15 = v507;
          v55 = v508;
          goto LABEL_69;
        }

        v515 = v120;
        v517 = v91;
        v129 = [v122 city];
        v130 = sub_22F740E20();
        v132 = v131;

        v538 = v130;
        v539 = v132;

        MEMORY[0x231900B10](124, 0xE100000000000000);

        v134 = v538;
        v133 = v539;
        v135 = [v122 state];
        v136 = sub_22F740E20();
        v138 = v137;

        v538 = v134;
        v539 = v133;

        MEMORY[0x231900B10](v136, v138);

        MEMORY[0x231900B10](124, 0xE100000000000000);

        v140 = v538;
        v139 = v539;
        v141 = [v122 country];
        v142 = sub_22F740E20();
        v144 = v143;

        v538 = v140;
        v539 = v139;

        MEMORY[0x231900B10](v142, v144);

        v146 = v538;
        v145 = v539;
        v147 = [v122 city];
        sub_22F740E20();

        v148 = *v519;
        v149 = sub_22F15280C(&unk_2843DDA08);
        v150 = sub_22F2D67A0(v149, v146, v145, v148);

        if (v150)
        {
        }

        else
        {
          v349 = sub_22F740DF0();
          v350 = MEMORY[0x277D84F98];
          v351 = swift_isUniquelyReferenced_nonNull_native();
          v538 = v350;
          sub_22F386DBC(v349, 0xD000000000000010, v514 | 0x8000000000000000, v351, &v538);
          v352 = v538;
          v353 = sub_22F740DF0();
          v354 = swift_isUniquelyReferenced_nonNull_native();
          v538 = v352;
          sub_22F386DBC(v353, 1701667182, 0xE400000000000000, v354, &v538);
          v355 = v507;
          sub_22F2B5478(&unk_2843DDA30, v146, v145, v538);
          v507 = v355;
          if (v355)
          {
            sub_22F133BF0(v518, v516);

LABEL_120:
            result = sub_22F107E14(v517, 0);
            v15 = v507;
            goto LABEL_9;
          }

          v150 = v356;
          [v520 insertNode_];
          sub_22F2D601C(v150);
        }

        v151 = v508;
        v152 = v517;
        v153 = v519[1];
        v154 = v150;
        v155 = sub_22F152840(&unk_2843DDA58);
        v522 = v154;
        v156 = sub_22F2D6994(v155, v151, v154, v153);

        if (v156)
        {
          v521 = v150;
          goto LABEL_124;
        }

        v357 = sub_22F1515F8(&unk_2843DDA80);
        sub_22F1DF3B0(&unk_2843DDAA0);
        v358 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v359 = sub_22F740C80();
        v360 = [v358 kgPropertiesWithMAProperties_];

        if (v360)
        {
          v521 = v150;
          sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
          v361 = sub_22F740CA0();

          v362 = type metadata accessor for Edge();
          v363 = objc_allocWithZone(v362);
          *&v363[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
          *&v363[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v357;
          *&v363[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v361;
          *&v363[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v151;
          v364 = v522;
          *&v363[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v522;
          v533.receiver = v363;
          v533.super_class = v362;
          v365 = v151;
          v366 = v364;
          v156 = objc_msgSendSuper2(&v533, sel_init);
          sub_22F2D6290(v156);
          [v520 insertEdge_];
LABEL_124:

          v367 = [v122 state];
          v368 = sub_22F740E20();
          v370 = v369;

          v538 = v368;
          v539 = v370;

          MEMORY[0x231900B10](124, 0xE100000000000000);

          v372 = v538;
          v371 = v539;
          v373 = [v122 country];
          v374 = sub_22F740E20();
          v376 = v375;

          v538 = v372;
          v539 = v371;

          MEMORY[0x231900B10](v374, v376);

          v378 = v538;
          v377 = v539;
          v379 = [v122 state];
          sub_22F740E20();

          v380 = *v519;
          v381 = sub_22F15280C(&unk_2843DDAB0);
          v382 = sub_22F2D67A0(v381, v378, v377, v380);

          if (v382)
          {
            v383 = v382;

            v15 = v507;
            goto LABEL_126;
          }

          v400 = sub_22F740DF0();
          v401 = MEMORY[0x277D84F98];
          v402 = swift_isUniquelyReferenced_nonNull_native();
          v538 = v401;
          sub_22F386DBC(v400, 0xD000000000000010, v514 | 0x8000000000000000, v402, &v538);
          v403 = v538;
          v404 = sub_22F740DF0();
          v405 = swift_isUniquelyReferenced_nonNull_native();
          v538 = v403;
          sub_22F386DBC(v404, 1701667182, 0xE400000000000000, v405, &v538);
          v406 = v507;
          sub_22F2B5478(&unk_2843DDAD8, v378, v377, v538);
          v15 = v406;
          if (v406)
          {
            sub_22F133BF0(v518, v516);

            v408 = v522;
LABEL_167:

            v198 = v517;
            goto LABEL_74;
          }

          v383 = v407;
          [v520 insertNode_];
          sub_22F2D601C(v383);

LABEL_126:
          v384 = v508;
          v152 = v517;
          v385 = v519[1];
          v386 = sub_22F152840(&unk_2843DDB00);
          v387 = sub_22F2D6994(v386, v384, v383, v385);

          if (!v387)
          {
            v388 = sub_22F1515F8(&unk_2843DDB28);
            sub_22F1DF3B0(&unk_2843DDB48);
            v389 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            v390 = sub_22F740C80();
            v391 = [v389 kgPropertiesWithMAProperties_];

            if (!v391)
            {
              goto LABEL_153;
            }

            sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
            v392 = sub_22F740CA0();

            v393 = type metadata accessor for Edge();
            v394 = objc_allocWithZone(v393);
            *&v394[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
            *&v394[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v388;
            *&v394[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v392;
            *&v394[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v384;
            *&v394[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v383;
            v532.receiver = v394;
            v532.super_class = v393;
            v395 = v384;
            v396 = v383;
            v387 = objc_msgSendSuper2(&v532, sel_init);
            sub_22F2D6290(v387);
            [v520 insertEdge_];
          }

          v397 = v519[1];
          v398 = sub_22F152840(&unk_2843DDB58);
          v399 = sub_22F2D6994(v398, v522, v383, v397);

          if (v399)
          {
            v507 = v15;
            goto LABEL_139;
          }

          v415 = sub_22F1515F8(&unk_2843DDB80);
          sub_22F1DF3B0(&unk_2843DDBA0);
          v416 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
          v417 = sub_22F740C80();
          v418 = [v416 kgPropertiesWithMAProperties_];

          if (v418)
          {
            v507 = v15;
            sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
            v419 = sub_22F740CA0();

            v420 = type metadata accessor for Edge();
            v421 = objc_allocWithZone(v420);
            *&v421[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
            *&v421[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v415;
            *&v421[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v419;
            v422 = v522;
            *&v421[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v522;
            *&v421[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v383;
            v531.receiver = v421;
            v531.super_class = v420;
            v423 = v422;
            v424 = v383;
            v399 = objc_msgSendSuper2(&v531, sel_init);
            sub_22F2D6290(v399);
            [v520 insertEdge_];
LABEL_139:
            v513 = v383;

            v425 = [v122 country];
            if (!v425)
            {
              sub_22F740E20();
              v425 = sub_22F740DF0();
            }

            v426 = sub_22F740E20();
            v428 = v427;
            v429 = [v122 country];
            sub_22F740E20();

            v430 = *v519;
            v431 = sub_22F15280C(&unk_2843DDBB0);
            v432 = sub_22F2D67A0(v431, v426, v428, v430);

            if (v432)
            {

              v15 = v507;
              goto LABEL_143;
            }

            v449 = MEMORY[0x277D84F98];
            v450 = swift_isUniquelyReferenced_nonNull_native();
            v538 = v449;
            sub_22F386DBC(v425, 0xD000000000000010, v514 | 0x8000000000000000, v450, &v538);
            v451 = v538;
            v452 = sub_22F740DF0();
            v453 = swift_isUniquelyReferenced_nonNull_native();
            v538 = v451;
            sub_22F386DBC(v452, 1701667182, 0xE400000000000000, v453, &v538);
            v454 = v507;
            sub_22F2B5478(&unk_2843DDBD8, v426, v428, v538);
            v15 = v454;
            if (v454)
            {
              sub_22F133BF0(v518, v516);

              v456 = v522;
LABEL_166:

              goto LABEL_167;
            }

            v432 = v455;
            [v520 insertNode_];
            sub_22F2D601C(v432);

LABEL_143:
            v55 = v508;
            v120 = v515;
            v433 = v519[1];
            v434 = sub_22F152840(&unk_2843DDC00);
            v435 = sub_22F2D6994(v434, v55, v432, v433);

            if (!v435)
            {
              v436 = sub_22F1515F8(&unk_2843DDC28);
              sub_22F1DF3B0(&unk_2843DDC48);
              v437 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
              v438 = sub_22F740C80();
              v439 = [v437 kgPropertiesWithMAProperties_];

              if (!v439)
              {
                goto LABEL_165;
              }

              sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
              v440 = sub_22F740CA0();

              v441 = type metadata accessor for Edge();
              v442 = objc_allocWithZone(v441);
              *&v442[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
              *&v442[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v436;
              *&v442[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v440;
              *&v442[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v55;
              *&v442[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v432;
              v530.receiver = v442;
              v530.super_class = v441;
              v443 = v55;
              v444 = v432;
              v435 = objc_msgSendSuper2(&v530, sel_init);
              sub_22F2D6290(v435);
              [v520 insertEdge_];
            }

            v445 = v519[1];
            v446 = sub_22F152840(&unk_2843DDC58);
            v447 = v513;
            v448 = sub_22F2D6994(v446, v513, v432, v445);

            if (v448)
            {

              v122 = v448;
            }

            else
            {
              v463 = sub_22F1515F8(&unk_2843DDC80);
              sub_22F1DF3B0(&unk_2843DDCA0);
              v464 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
              v465 = sub_22F740C80();
              v466 = [v464 kgPropertiesWithMAProperties_];

              if (!v466)
              {
LABEL_165:

                sub_22F2B5954();
                v15 = swift_allocError();
                swift_willThrow();

                v456 = v522;
                sub_22F133BF0(v518, v516);

                goto LABEL_166;
              }

              sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
              v467 = sub_22F740CA0();

              v468 = type metadata accessor for Edge();
              v469 = objc_allocWithZone(v468);
              *&v469[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
              *&v469[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v463;
              *&v469[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v467;
              v470 = v513;
              *&v469[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v513;
              *&v469[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v432;
              v529.receiver = v469;
              v529.super_class = v468;
              v471 = v470;
              v472 = v432;
              v473 = objc_msgSendSuper2(&v529, sel_init);
              sub_22F2D6290(v473);
              v474 = v473;
              v120 = v515;
              v475 = v474;
              [v520 insertEdge_];
            }

            v91 = v517;
LABEL_69:

            v50 = v516;
LABEL_70:
            v187 = objc_opt_self();
            v188 = v509;
            [v509 locationCoordinate];
            v190 = v189;
            [v188 locationCoordinate];
            v191 = [v187 poiGeoHashWithGeoHashSize:6 latitude:v190 longitude:?];
            if (v191)
            {
              v515 = v120;
              v192 = v191;
              v193 = sub_22F740E20();
              v195 = v194;

              v196 = v519;
              v197 = sub_22F386FB4(v193, v195, v519, v520);
              if (v15)
              {

                sub_22F133BF0(v518, v50);

                goto LABEL_73;
              }

              v199 = v197;
              v522 = v193;
              v200 = v196[1];
              v201 = sub_22F152840(&unk_2843DDCB0);
              v202 = sub_22F2D6994(v201, v55, v199, v200);

              v517 = v91;
              if (v202)
              {
              }

              else
              {
                v290 = sub_22F1515F8(&unk_2843DDCD8);
                sub_22F1DF3B0(&unk_2843DDCF8);
                v291 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v292 = sub_22F740C80();
                v293 = [v291 kgPropertiesWithMAProperties_];

                if (!v293)
                {

                  sub_22F2B5954();
                  v15 = swift_allocError();
                  swift_willThrow();

                  sub_22F133BF0(v518, v50);
                  goto LABEL_73;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v294 = sub_22F740CA0();

                v295 = type metadata accessor for Edge();
                v296 = objc_allocWithZone(v295);
                *&v296[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v296[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v290;
                *&v296[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v294;
                v297 = v508;
                *&v296[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v508;
                *&v296[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v199;
                v536.receiver = v296;
                v536.super_class = v295;
                v298 = v297;
                v299 = v199;
                v300 = objc_msgSendSuper2(&v536, sel_init);
                sub_22F2D6290(v300);
                [v520 insertEdge_];
              }

              if (!v521)
              {
LABEL_107:
                v516 = v50;
                v507 = 0;
                v314 = v199;
                v315 = 5;
                v513 = v314;
                v514 = v195;
                while (1)
                {

                  v316 = sub_22F398F90(v315, v522, v195);
                  v318 = v317;
                  v320 = v319;
                  v322 = v321;

                  v323 = MEMORY[0x231900A80](v316, v318, v320, v322);
                  v325 = v324;

                  v326 = v519;
                  v327 = v507;
                  v328 = sub_22F386FB4(v323, v325, v519, v520);
                  v507 = v327;
                  if (v327)
                  {

                    sub_22F133BF0(v518, v516);

                    goto LABEL_120;
                  }

                  v329 = v328;

                  v330 = v326[1];
                  v331 = sub_22F153098();
                  v538 = MEMORY[0x231901000](1, &type metadata for Edge.Label, v331);
                  sub_22F10E5F4(v537, byte_2843DDD80);
                  v332 = sub_22F2D6994(v538, v314, v329, v330);

                  if (v332)
                  {

                    if (v315 < 3)
                    {
                      goto LABEL_114;
                    }
                  }

                  else
                  {
                    v333 = sub_22F1515F8(&unk_2843DDD88);
                    sub_22F1DF3B0(&unk_2843DDDA8);
                    v334 = objc_opt_self();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                    v50 = MEMORY[0x277D837E0];
                    v335 = sub_22F740C80();
                    v336 = [v334 kgPropertiesWithMAProperties_];

                    if (!v336)
                    {

                      sub_22F2B5954();
                      v414 = swift_allocError();
                      swift_willThrow();

                      v15 = v414;
                      sub_22F133BF0(v518, v516);

                      v198 = v517;
                      goto LABEL_74;
                    }

                    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                    v337 = sub_22F740CA0();

                    v338 = type metadata accessor for Edge();
                    v339 = objc_allocWithZone(v338);
                    *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                    *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v333;
                    *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v337;
                    *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v314;
                    *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v329;
                    v535.receiver = v339;
                    v535.super_class = v338;
                    v340 = v314;
                    v341 = v329;
                    v342 = objc_msgSendSuper2(&v535, sel_init);
                    sub_22F2D6290(v342);
                    v343 = v342;
                    [v520 insertEdge_];

                    v195 = v514;
                    if (v315 <= 2)
                    {
LABEL_114:

                      sub_22F133BF0(v518, v516);

                      v55 = v508;
                      v157 = v520;
                      v91 = v517;
                      goto LABEL_52;
                    }
                  }

                  --v315;
                  v314 = v329;
                }
              }

              v301 = v519[1];
              v302 = v521;
              v303 = sub_22F152840(&unk_2843DDD08);
              v304 = sub_22F2D6994(v303, v199, v302, v301);

              if (v304)
              {
LABEL_106:

                goto LABEL_107;
              }

              v305 = sub_22F1515F8(&unk_2843DDD30);
              sub_22F1DF3B0(&unk_2843DDD50);
              v306 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
              v307 = sub_22F740C80();
              v308 = [v306 kgPropertiesWithMAProperties_];

              if (v308)
              {
                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v309 = sub_22F740CA0();

                v310 = type metadata accessor for Edge();
                v311 = objc_allocWithZone(v310);
                *&v311[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v311[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v305;
                *&v311[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v309;
                *&v311[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v199;
                *&v311[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v302;
                v534.receiver = v311;
                v534.super_class = v310;
                v304 = v302;
                v312 = v199;
                v313 = objc_msgSendSuper2(&v534, sel_init);
                sub_22F2D6290(v313);
                v302 = v313;
                [v520 insertEdge_];

                goto LABEL_106;
              }

              sub_22F2B5954();
              v15 = swift_allocError();
              swift_willThrow();

              sub_22F133BF0(v518, v50);
              v198 = v517;
LABEL_74:
              result = sub_22F107E14(v198, 0);
              goto LABEL_9;
            }

            sub_22F133BF0(v518, v50);
            goto LABEL_51;
          }

LABEL_153:

          sub_22F2B5954();
          v15 = swift_allocError();
          swift_willThrow();

          v457 = v522;
          sub_22F133BF0(v518, v516);
        }

        else
        {

          sub_22F2B5954();
          v15 = swift_allocError();
          swift_willThrow();

          v457 = v522;
          sub_22F133BF0(v518, v516);
        }

        v198 = v152;
        goto LABEL_74;
      }

      v521 = 0;
      goto LABEL_70;
    }

LABEL_51:
    v157 = v520;
LABEL_52:
    v158 = a10;
    v159 = swift_beginAccess();
    v160 = *a10 + 1;
    if (!__OFADD__(*a10, 1))
    {
      break;
    }

    __break(1u);
LABEL_180:
    v280 = v159;
    v490 = v158;
    v502 = v55;
    [v520 insertNode_];
    sub_22F2D601C(v280);
LABEL_98:
    v281 = v280;
    v282 = sub_22F1515F8(&unk_2843DD9A8);
    sub_22F1DF3B0(&unk_2843DD9C8);
    v283 = sub_22F740C80();
    v284 = [v516 kgPropertiesWithMAProperties_];

    v38 = v513;
    v285 = v518;
    if (!v284)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

      (*(v511 + 8))(v91, v510);
      v104 = *(v38 + 1);
      v105 = v505;
      v104(v517, v505);
      v106 = v285;
LABEL_30:
      result = (v104)(v106, v105);
      goto LABEL_9;
    }

    v286 = sub_22F740CA0();

    v287 = v498;
    v288 = objc_allocWithZone(v498);
    *&v288[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v288[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v282;
    *&v288[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v286;
    *&v288[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v50;
    *&v288[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v281;
    v523.receiver = v288;
    v523.super_class = v287;
    v289 = objc_msgSendSuper2(&v523, sel_init);
    [v520 insertEdge_];

    v15 = v507;
    v65 = v508;
    v64 = v504;
    v186 = v501;
LABEL_61:

    (*(v511 + 8))(v91, v510);
  }

  *a10 = v160;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v160 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
  {
    goto LABEL_65;
  }

  v537[0] = 0;
  if (![a11 performChangesAndWait:v157 error:v537])
  {
    v173 = v537[0];
    v15 = sub_22F73F370();

    swift_willThrow();
LABEL_73:
    v198 = v91;
    goto LABEL_74;
  }

  v161 = v537[0];
  v162 = sub_22F7415F0();
  sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  v163 = a11;
  v164 = a12;
  v165 = sub_22F741840();
  if (os_log_type_enabled(v165, v162))
  {
    v166 = swift_slowAlloc();
    *v166 = 134218752;
    swift_beginAccess();
    *(v166 + 4) = *a10;
    v517 = v91;
    *(v166 + 12) = 2048;
    *(v166 + 14) = [v164 count];

    *(v166 + 22) = 2048;
    v167 = [objc_opt_self() any];
    v168 = [v163 nodeIdentifiersMatchingFilter:v167];

    v169 = [v168 count];
    *(v166 + 24) = v169;

    *(v166 + 32) = 2048;
    v91 = v517;
    v170 = [objc_opt_self() any];
    v171 = [v163 edgeIdentifiersMatchingFilter:v170];

    v172 = [v171 count];
    *(v166 + 34) = v172;

    _os_log_impl(&dword_22F0FC000, v165, v162, "Ingested %ld assets out of %ld, graph has %ld nodes and %ld edges", v166, 0x2Au);
    MEMORY[0x2319033A0](v166, -1, -1);
    v55 = v508;
  }

  else
  {

    v165 = v163;
    v55 = v163;
  }

LABEL_65:
  return sub_22F107E14(v91, 0);
}

void sub_22F384664(uint64_t a1, uint64_t a2)
{
  sub_22F13A100(a1, v4);
  sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
  if (swift_dynamicCast())
  {
    sub_22F13A100(a2, v4);
    if (swift_dynamicCast())
    {
      [v3 distanceFromLocation_];
    }
  }
}

void sub_22F384748(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = [a1 objectAtIndexedSubscript_];
  v9 = [v8 localIdentifier];
  if (!v9)
  {
    sub_22F740E20();
    v9 = sub_22F740DF0();
  }

  v10 = sub_22F740E20();
  v12 = v11;
  v13 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v13;
  sub_22F386DBC(v9, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v55);
  v15 = v55;
  v48 = v8;
  v16 = [v8 name];
  if (v16)
  {
    v17 = v16;
    sub_22F740E20();
  }

  v18 = sub_22F740DF0();

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v15;
  sub_22F386DBC(v18, 1701667182, 0xE400000000000000, v19, &v55);
  sub_22F2B5478(&unk_2843DDDB8, v10, v12, v55);
  v21 = v6;
  if (v6)
  {

    goto LABEL_7;
  }

  v22 = v20;
  [a3 insertNode_];
  v23 = [objc_opt_self() fetchAssetsForPerson:v48 options:a4];
  if (!v23)
  {

    return;
  }

  v24 = v23;
  v25 = [v23 count];
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (!v25)
  {

    return;
  }

  v26 = 0;
  v49 = v25;
  v50 = v24;
  for (i = [v24 objectAtIndexedSubscript_]; ; i = objc_msgSend(v50, sel_objectAtIndexedSubscript_, v26, v46))
  {
    v28 = i;
    v29 = *a5;

    v30 = [v28 localIdentifier];
    v31 = sub_22F740E20();
    v33 = v32;

    v34 = sub_22F1530EC();
    v55 = MEMORY[0x231901000](1, &type metadata for Node.Label, v34);
    sub_22F10DF08(&v54, byte_2843DDE00);
    v35 = sub_22F2D67A0(v55, v31, v33, v29);

    if (!v35)
    {
      goto LABEL_12;
    }

    v36 = v22;
    v37 = v35;
    v38 = sub_22F1515F8(&unk_2843DDE08);
    sub_22F1DF3B0(&unk_2843DDE28);
    v39 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v40 = sub_22F740C80();
    v41 = [v39 kgPropertiesWithMAProperties_];

    if (!v41)
    {
      break;
    }

    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v42 = sub_22F740CA0();

    v43 = type metadata accessor for Edge();
    v44 = objc_allocWithZone(v43);
    *&v44[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v44[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v38;
    *&v44[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v42;
    *&v44[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v37;
    *&v44[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v36;
    v53.receiver = v44;
    v53.super_class = v43;
    v45 = objc_msgSendSuper2(&v53, sel_init);
    [a3 insertEdge_];

LABEL_12:
    ++v26;

    if (v49 == v26)
    {

      return;
    }
  }

  sub_22F2B5954();
  v21 = swift_allocError();
  swift_willThrow();

LABEL_7:
  *a6 = v21;
}

void sub_22F384C8C(void *a1, uint64_t *a2, id a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, id a9, void *a10, uint64_t a11, uint64_t *a12)
{
  v122[8] = *MEMORY[0x277D85DE8];
  v19 = sub_22F2B4BB8();
  v21 = *a2;
  if (*(*a2 + 16))
  {
    v116 = a5;
    v22 = sub_22F1229E8(v19, v20);
    v24 = v23;

    if (v24)
    {
      v109 = a6;
      v110 = a7;
      v115 = a3;
      v25 = *(*(v21 + 56) + 8 * v22);
      sub_22F2B50F8();
      v27 = v26;

      [v25 clsIsUtility];
      v28 = sub_22F7412C0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v27;
      sub_22F386DBC(v28, 0x74696C6974557369, 0xE900000000000079, isUniquelyReferenced_nonNull_native, aBlock);
      v30 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
      v31 = sub_22F740C80();

      v111 = v30;
      v32 = [v30 kgPropertiesWithMAProperties_];

      if (!v32)
      {
        sub_22F2B5954();
        v41 = swift_allocError();
        swift_willThrow();

        goto LABEL_44;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v33 = sub_22F740CA0();

      sub_22F213C6C(v33);

      v34 = sub_22F740C80();

      [v115 updateNode:a1 newProperties:v34];

      v108 = v25;
      v35 = [v25 clsSceneClassifications];
      sub_22F120634(0, &qword_27DAB3D88, 0x277CD9990);
      sub_22F11FA28(&unk_27DAB3D90, &qword_27DAB3D88, 0x277CD9990);
      v36 = sub_22F741420();

      if ((v36 & 0xC000000000000001) != 0)
      {
        sub_22F7419C0();
        sub_22F741470();
        v36 = v122[3];
        v37 = v122[4];
        v38 = v122[5];
        v39 = v122[6];
        v40 = v122[7];
      }

      else
      {
        v39 = 0;
        v42 = -1 << *(v36 + 32);
        v37 = (v36 + 56);
        v38 = ~v42;
        v43 = -v42;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        else
        {
          v44 = -1;
        }

        v40 = (v44 & *(v36 + 56));
      }

      v45 = a4;
      v46 = (v38 + 64) >> 6;
      v112 = v37;
      v113 = v36;
      while (1)
      {
        if (v36 < 0)
        {
          v51 = v39;
          v53 = sub_22F741A40();
          if (!v53 || (v122[0] = v53, swift_dynamicCast(), v54 = v40, v40 = aBlock[0], v119 = v54, v52 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_, !aBlock[0]))
          {
LABEL_37:

            sub_22F0FF590(v36);
            a3 = v115;
            break;
          }
        }

        else
        {
          v49 = v39;
          v50 = v40;
          v51 = v39;
          if (!v40)
          {
            while (1)
            {
              v51 = (v49 + 1);
              if (__OFADD__(v49, 1))
              {
                break;
              }

              if (v51 >= v46)
              {
                goto LABEL_37;
              }

              v50 = v37[v51];
              ++v49;
              if (v50)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_53:
            swift_endAccess();

            sub_22F0FF590(v113);
            v41 = v12;
LABEL_44:
            *a12 = v41;
            return;
          }

LABEL_21:
          v119 = (v50 - 1) & v50;
          v40 = *(*(v36 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
          v52 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
          if (!v40)
          {
            goto LABEL_37;
          }
        }

        if (([v40 v52[151]] & 0xFF000000) != 0x7F000000)
        {
          v55 = [v45 nodeForIdentifier_];
          if (v55)
          {
            v114 = v55;
            v56 = [v55 name];
            v57 = v56;
            v58 = v56;
            if (!v56)
            {
              sub_22F740E20();
              v58 = sub_22F740DF0();

              sub_22F740E20();
              v57 = sub_22F740DF0();
              v45 = a4;
            }

            v59 = v56;
            v60 = [v45 nodeExistsForName_];

            if (v60)
            {
              v107 = a8;
              v61 = [v40 extendedSceneIdentifier];
              swift_beginAccess();
              v62 = *(v116 + 16);
              v122[0] = v61;
              v63 = sub_22F742010();
              v65 = v64;
              v66 = sub_22F15280C(&unk_2843DE230);
              v67 = sub_22F2D67A0(v66, v63, v65, v62);

              if (v67)
              {
              }

              else
              {
                v122[0] = v61;
                v68 = sub_22F742010();
                v70 = v69;
                v71 = sub_22F740DF0();
                v72 = MEMORY[0x277D84F98];
                v73 = swift_isUniquelyReferenced_nonNull_native();
                v122[0] = v72;
                sub_22F386DBC(v71, 0xD000000000000010, 0x800000022F792110, v73, v122);
                v74 = v122[0];
                v75 = swift_isUniquelyReferenced_nonNull_native();
                v122[0] = v74;
                sub_22F386DBC(v57, 1701667182, 0xE400000000000000, v75, v122);
                sub_22F2B5478(&unk_2843DE258, v68, v70, v122[0]);
                v39 = v108;
                if (v12)
                {
                  goto LABEL_53;
                }

                v67 = v76;
                sub_22F2D601C(v76);
                [v115 insertNode_];
              }

              swift_endAccess();
              [v40 confidence];
              v77 = sub_22F741350();
              v78 = MEMORY[0x277D84F98];
              v79 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v78;
              sub_22F386DBC(v77, 0x6E656469666E6F63, 0xEA00000000006563, v79, aBlock);
              v80 = v67;
              v81 = sub_22F1515F8(&unk_2843DE280);
              sub_22F1DF3B0(&unk_2843DE2A0);
              v82 = sub_22F740C80();

              v83 = [v111 kgPropertiesWithMAProperties_];

              if (!v83)
              {

                sub_22F2B5954();
                v41 = swift_allocError();
                swift_willThrow();

                sub_22F0FF590(v113);
                goto LABEL_44;
              }

              v84 = sub_22F740CA0();

              v85 = type metadata accessor for Edge();
              v86 = objc_allocWithZone(v85);
              *&v86[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
              *&v86[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v81;
              *&v86[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v84;
              *&v86[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = a1;
              *&v86[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v80;
              v120.receiver = v86;
              v120.super_class = v85;
              v87 = a1;
              v106 = objc_msgSendSuper2(&v120, sel_init);
              [v115 insertEdge_];
              v88 = swift_allocObject();
              *(v88 + 16) = 1;
              v89 = swift_allocObject();
              v89[2] = v109;
              v89[3] = v110;
              v89[4] = v116;
              v89[5] = v115;
              v89[6] = v80;
              v89[7] = v88;
              v89[8] = a11;
              aBlock[4] = sub_22F38A970;
              aBlock[5] = v89;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_22F385E40;
              aBlock[3] = &block_descriptor_42_0;
              v90 = _Block_copy(aBlock);
              v47 = v80;

              v91 = v115;

              v48 = v114;
              [v114 visitParentsUsingNameBlock_];
              _Block_release(v90);
              swift_beginAccess();
              if ((*(v88 + 16) & 1) == 0)
              {
                sub_22F38A91C();
                v41 = swift_allocError();
                swift_willThrow();

                sub_22F0FF590(v113);

                goto LABEL_44;
              }

              a8 = v107;
              v45 = a4;
              v37 = v112;
            }

            else
            {
              v47 = v40;
              v40 = v57;
              v37 = v112;
              v48 = v114;
            }

            v36 = v113;
          }
        }

        v39 = v51;
        v40 = v119;
      }
    }
  }

  else
  {
  }

  swift_beginAccess();
  v92 = *a8 + 1;
  if (__OFADD__(*a8, 1))
  {
    __break(1u);
  }

  *a8 = v92;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v92 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v122[0] = 0;
    if (![a9 performChangesAndWait:a3 error:v122])
    {
      v105 = v122[0];
      v41 = sub_22F73F370();

      swift_willThrow();
      goto LABEL_44;
    }

    v93 = v122[0];
    v94 = sub_22F7415F0();
    sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
    v95 = a9;
    v96 = a10;
    v97 = sub_22F741840();
    if (os_log_type_enabled(v97, v94))
    {
      v98 = swift_slowAlloc();
      *v98 = 134218752;
      swift_beginAccess();
      *(v98 + 4) = *a8;
      *(v98 + 12) = 2048;
      *(v98 + 14) = [v96 count];

      *(v98 + 22) = 2048;
      v99 = [objc_opt_self() any];
      v100 = [v95 nodeIdentifiersMatchingFilter:v99];

      v101 = [v100 count];
      *(v98 + 24) = v101;

      *(v98 + 32) = 2048;
      v102 = [objc_opt_self() any];
      v103 = [v95 edgeIdentifiersMatchingFilter:v102];

      v104 = [v103 count];
      *(v98 + 34) = v104;

      _os_log_impl(&dword_22F0FC000, v97, v94, "Scened %ld assets out of %ld, graph has %ld nodes and %ld edges", v98, 0x2Au);
      MEMORY[0x2319033A0](v98, -1, -1);
    }

    else
    {

      v97 = v95;
    }
  }
}

uint64_t sub_22F385A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  if ((a1 != a4 || a2 != a5) && (sub_22F742040() & 1) == 0)
  {
    swift_beginAccess();
    v13 = *(a6 + 16);
    v45 = a3;
    v14 = sub_22F742010();
    v16 = v15;
    v17 = sub_22F15280C(&unk_2843DE5A0);
    v18 = sub_22F2D67A0(v17, v14, v16, v13);

    if (!v18)
    {
      v22 = sub_22F742010();
      v24 = v23;
      v25 = sub_22F740DF0();
      v26 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v26;
      sub_22F386DBC(v25, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v45);
      v28 = v45;
      v29 = sub_22F740DF0();
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v28;
      sub_22F386DBC(v29, 1701667182, 0xE400000000000000, v30, &v45);
      sub_22F2B5478(&unk_2843DE5C8, v22, v24, v45);
      v18 = v43;
      sub_22F2D601C(v43);
      [a7 insertNode_];
    }

    swift_endAccess();
    swift_beginAccess();
    v19 = *(a6 + 24);
    v20 = sub_22F152840(&unk_2843DE5F0);
    v21 = sub_22F2D6994(v20, a8, v18, v19);

    if (v21)
    {
      swift_endAccess();
    }

    else
    {
      v31 = sub_22F1515F8(&unk_2843DE618);
      sub_22F1DF3B0(&unk_2843DE638);
      v32 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
      v33 = sub_22F740C80();
      v34 = [v32 kgPropertiesWithMAProperties_];

      if (!v34)
      {
        swift_endAccess();

        v41 = 1;
        swift_beginAccess();
        *(a9 + 16) = 0;
        return v41;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v35 = sub_22F740CA0();

      v36 = type metadata accessor for Edge();
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
      *&v37[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v31;
      *&v37[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v35;
      *&v37[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = a8;
      *&v37[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v18;
      v44.receiver = v37;
      v44.super_class = v36;
      v38 = a8;
      v39 = v18;
      v40 = objc_msgSendSuper2(&v44, sel_init);
      sub_22F2D6290(v40);
      [a7 insertEdge_];
      swift_endAccess();
    }
  }

  return 0;
}

uint64_t sub_22F385E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_22F740E20();
  v7 = v6;

  LOBYTE(a3) = v4(v5, v7, a3);

  return a3 & 1;
}

uint64_t GraphFullRebuilder.savePhotoKitStreamToken(with:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_22F385EDC, 0, 0);
}

uint64_t sub_22F385EDC()
{
  v1 = *(v0 + 96);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(*(v0 + 104) + 16);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    sub_22F386F38(v4, v1);

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_22F386004;

    return sub_22F288D70(v5, v0 + 16);
  }
}

uint64_t sub_22F386004(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_22F38631C;
  }

  else
  {
    v4 = sub_22F386118;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F386118()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v0[17] = v1[14];
  v0[18] = v1[15];
  v4 = v1[16];
  v0[19] = v4;
  sub_22F386F38(v2, v3);

  return MEMORY[0x2822009F8](sub_22F3861B8, v4, 0);
}

uint64_t sub_22F3861B8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v10 = *(v0 + 88);
  sub_22F73F350();
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 56) = v10;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  sub_22F20B504();
  v4 = sub_22F73F330();
  if (v3)
  {

    *(v0 + 160) = v3;
    v8 = sub_22F386418;
  }

  else
  {
    v6 = v4;
    v7 = v5;

    sub_22F73F520();
    sub_22F133BF0(v6, v7);

    v8 = sub_22F386380;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22F38631C()
{
  sub_22F1746FC(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22F386380()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_22F133BF0(v2, v1);

  sub_22F1746FC(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22F386418()
{
  v2 = v0[11];
  v1 = v0[12];
  sub_22F133BF0(v2, v1);

  sub_22F1746FC(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22F3864B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a5;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_22F386550;

  return sub_22F3B8284(a7);
}

uint64_t sub_22F386550(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_22F3866EC;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_22F386678;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F386678()
{
  *(v0 + 16) = *(v0 + 56);
  sub_22F73FC80();
  dispatch_group_leave(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F3866EC(__n128 a1)
{
  v2 = sub_22F7415E0();
  sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  v3 = sub_22F741840();
  v4 = os_log_type_enabled(v3, v2);
  v5 = *(v1 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22F0FC000, v3, v2, "GeoService query error: %@", v6, 0xCu);
    sub_22F120ADC(v7, &qword_27DAB07D0, &qword_22F779400);
    MEMORY[0x2319033A0](v7, -1, -1);
    MEMORY[0x2319033A0](v6, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(*(v1 + 24));
  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_22F386854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[4] = a4;
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_22F3868EC;

  return sub_22F2379C0();
}

uint64_t sub_22F3868EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_22F386A88;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_22F386A14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F386A14()
{
  *(v0 + 24) = *(v0 + 72);
  sub_22F73FC80();
  dispatch_group_leave(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F386A88()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_22F73FC80();

  dispatch_group_leave(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t GraphFullRebuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_22F386B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_22F386C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F386C40, 0, 0);
}

uint64_t sub_22F386C40()
{
  v1 = *(v0 + 32);
  v2 = sub_22F73FA80();
  v1();

  **(v0 + 16) = *(v0 + 48);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22F386CF4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F12094C;

  return sub_22F386C1C(a1, a2, v7, v6);
}

void sub_22F386DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_22F1229E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22F128A00(v16, a4 & 1);
      v11 = sub_22F1229E8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22F7420C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22F135FD4();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_22F386F38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22F15C3C4(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22F386FB4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v9 = *a3;
  v10 = sub_22F15280C(&unk_2843DD690);
  v11 = sub_22F2D67A0(v10, a1, a2, v9);

  if (!v11)
  {
    v12 = sub_22F740DF0();
    v13 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v13;
    sub_22F386DBC(v12, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v20);
    v11 = v20;
    sub_22F740F10();
    v15 = sub_22F7414B0();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_22F386DBC(v15, 0x657A695368736168, 0xE800000000000000, v16, &v20);
    v17 = v20;

    sub_22F2B5478(&unk_2843DD6B8, a1, a2, v17);
    if (!v5)
    {
      v11 = v18;
      sub_22F2D601C(v18);
      [a4 insertNode_];
    }
  }

  return v11;
}

id sub_22F387124(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v9 = *a3;

  v10 = sub_22F15280C(&unk_2843DDE38);
  v11 = sub_22F2D67A0(v10, a1, a2, v9);

  if (!v11)
  {
    v12 = sub_22F740DF0();
    v13 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v13;
    sub_22F386DBC(v12, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v20);
    v11 = v20;
    v15 = sub_22F740DF0();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_22F386DBC(v15, 1701667182, 0xE400000000000000, v16, &v20);
    v17 = v20;

    sub_22F2B5478(&unk_2843DDE60, a1, a2, v17);
    if (!v5)
    {
      v11 = v18;
      sub_22F2D601C(v18);
      [a4 insertNode_];
    }
  }

  return v11;
}

uint64_t sub_22F387298(char *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v217 = a4;
  v220 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v199 - v8;
  v10 = [a1 count];
  if (v10 < 0)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    sub_22F7420C0();
    __break(1u);
LABEL_144:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v210 = v9;
  if (v10)
  {
    v11 = 0;
    v12 = a2 + 56;
    v215 = MEMORY[0x277D84F98];
    v211 = a1;
    v216 = v10;
    while (1)
    {
      v219 = objc_autoreleasePoolPush();
      v13 = [a1 objectAtIndexedSubscript_];
      v14 = [v13 localIdentifier];
      v15 = sub_22F740E20();
      v17 = v16;

      if (*(a2 + 16))
      {
        sub_22F742170();
        sub_22F740D60();
        v18 = sub_22F7421D0();
        v19 = -1 << *(a2 + 32);
        v20 = v18 & ~v19;
        if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(a2 + 48) + 16 * v20);
            v23 = *v22 == v15 && v22[1] == v17;
            if (v23 || (sub_22F742040() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_6;
        }
      }

LABEL_16:

      v24 = [v13 location];
      if (v24)
      {
        v25 = v24;
        if (([objc_opt_self() locationIsCoarse_] & 1) == 0)
        {
          [v25 coordinate];
          if (CLLocationCoordinate2DIsValid(v225))
          {
            [v25 coordinate];
            v27 = round(v26 * 10000.0) / 10000.0;
            [v25 coordinate];
            v29 = round(v28 * 10000.0) / 10000.0;
            v30 = [v13 localIdentifier];

            v214 = sub_22F740E20();
            v213 = v31;

            v32 = v215;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v223 = v32;
            v35 = sub_22F1237E8(v27, v29);
            v36 = v32[2];
            v37 = (v34 & 1) == 0;
            v38 = v36 + v37;
            if (__OFADD__(v36, v37))
            {
              goto LABEL_136;
            }

            v39 = v34;
            if (v32[3] < v38)
            {
              sub_22F12DAB8(v38, isUniquelyReferenced_nonNull_native);
              type metadata accessor for CLLocationCoordinate2D(0);
              v215 = v40;
              v41 = v223;
              v42 = sub_22F1237E8(v27, v29);
              if ((v39 & 1) != (v43 & 1))
              {
                goto LABEL_144;
              }

              v35 = v42;
              v32 = v41;
              if (v39)
              {
                goto LABEL_29;
              }

LABEL_27:
              v32[(v35 >> 6) + 8] |= 1 << v35;
              v44 = (v32[6] + 16 * v35);
              *v44 = v27;
              v44[1] = v29;
              *(v32[7] + 8 * v35) = MEMORY[0x277D84F90];
              v45 = v32[2];
              v46 = __OFADD__(v45, 1);
              v47 = v45 + 1;
              if (v46)
              {
                goto LABEL_139;
              }

              v32[2] = v47;
              goto LABEL_29;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v34 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            else
            {
              sub_22F138C60();
              v32 = v223;
              if ((v39 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

LABEL_29:
            v215 = v32;
            v48 = v32[7];
            v49 = *(v48 + 8 * v35);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            *(v48 + 8 * v35) = v49;
            if ((v50 & 1) == 0)
            {
              v49 = sub_22F13E1A8(0, *(v49 + 2) + 1, 1, v49);
              *(v48 + 8 * v35) = v49;
            }

            v52 = *(v49 + 2);
            v51 = *(v49 + 3);
            v212 = (v52 + 1);
            if (v52 >= v51 >> 1)
            {
              *(v48 + 8 * v35) = sub_22F13E1A8((v51 > 1), v212, 1, v49);
            }

            v53 = *(v48 + 8 * v35);
            *(v53 + 16) = v212;
            v54 = v53 + 16 * v52;
            v55 = v213;
            *(v54 + 32) = v214;
            *(v54 + 40) = v55;
            a1 = v211;
            goto LABEL_6;
          }
        }
      }

LABEL_6:
      ++v11;
      objc_autoreleasePoolPop(v219);
      if (v11 == v216)
      {
        goto LABEL_37;
      }
    }
  }

  v215 = MEMORY[0x277D84F98];
LABEL_37:
  v56 = v215;
  v57 = v215[2];
  v58 = MEMORY[0x277D84F90];
  if (v57)
  {
    v59 = sub_22F10B684(v215[2], 0);
    v60 = sub_22F11CACC(&v223, v59 + 2, v57, v56);
    v61 = v223;

    sub_22F0FF590(v61);
    if (v60 == v57)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  v59 = v58;
LABEL_41:
  type metadata accessor for GraphGeoServiceQueryPerformer();
  v62 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v62 + 112) = [objc_allocWithZone(MEMORY[0x277D0EBD0]) init];
  v223 = sub_22F150350(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3DB0, &qword_22F788D40);
  swift_allocObject();
  v63 = sub_22F73FC90();
  v64 = dispatch_group_create();
  dispatch_group_enter(v64);
  v65 = sub_22F741320();
  v66 = v210;
  (*(*(v65 - 8) + 56))(v210, 1, 1, v65);
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = v64;
  v67[5] = v63;
  v67[6] = v62;
  v67[7] = v59;
  v68 = v64;

  v203 = v62;

  sub_22F37994C(0, 0, v66, &unk_22F788D50, v67);

  v201 = v68;
  sub_22F741620();
  v202 = v63;
  sub_22F73FC70();
  v69 = v223[8];
  v208 = v223 + 8;
  v70 = 1 << *(v223 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v69;
  v73 = (v70 + 63) >> 6;
  v200 = "_TtC11PhotosGraph12GraphBuilder";
  v213 = v223;

  v74 = 0;
  v75 = MEMORY[0x277D84F98];
  v76 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
LABEL_44:
  if (v72)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v78 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
LABEL_132:
      __break(1u);
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
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (v78 >= v73)
    {
      break;
    }

    v72 = v208[v78];
    ++v74;
    if (v72)
    {
      v74 = v78;
LABEL_49:
      v199 = v74;
      v79 = __clz(__rbit64(v72)) | (v74 << 6);
      v80 = (v213[6] + 16 * v79);
      v81 = *v80;
      v82 = v80[1];
      v83 = *(*(v213[7] + 8 * v79) + 16);

      v207 = v83;
      if (v83)
      {
        v85 = 0;
        v210 = (v84 + 32);
        v86 = v75;
        v205 = v73;
        v204 = v72;
        v209 = v84;
        while (1)
        {
          if (v85 >= *(v84 + 16))
          {
            goto LABEL_137;
          }

          v214 = v86;
          v211 = v85;
          v87 = &v210[32 * v85];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = *(v87 + 3);
          v219 = *(v87 + 2);
          v216 = v88;

          v212 = objc_autoreleasePoolPush();
          v91 = *v220;
          v223 = v89;
          v92 = sub_22F742010();
          v94 = v93;
          v95 = sub_22F1530EC();
          v223 = MEMORY[0x231901000](1, &type metadata for Node.Label, v95);
          sub_22F10DF08(&v224, byte_2843DDEA8);
          v96 = sub_22F2D67A0(v223, v92, v94, v91);

          if (v96)
          {
            v97 = v90;
          }

          else
          {
            v223 = v89;
            v98 = sub_22F742010();
            v100 = v99;
            v101 = sub_22F740DF0();
            v102 = MEMORY[0x277D84F98];
            v103 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v102;
            sub_22F386DBC(v101, 0xD000000000000010, v200 | 0x8000000000000000, v103, &v223);
            v104 = v223;
            v105 = sub_22F740DF0();
            v106 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v104;
            sub_22F386DBC(v105, 1701667182, 0xE400000000000000, v106, &v223);
            v107 = v218;
            sub_22F2B5478(&unk_2843DDEB0, v98, v100, v223);
            v218 = v107;
            v97 = v90;
            if (v107)
            {

LABEL_125:

              objc_autoreleasePoolPop(v212);

              v181 = v201;
              goto LABEL_126;
            }

            v96 = v108;
            sub_22F2D601C(v108);
            [v217 insertNode_];
          }

          v109 = swift_isUniquelyReferenced_nonNull_native();
          v223 = v77;
          v110 = sub_22F1237E8(v81, v82);
          v112 = v77[2];
          v113 = (v111 & 1) == 0;
          v46 = __OFADD__(v112, v113);
          v114 = v112 + v113;
          if (v46)
          {
            goto LABEL_138;
          }

          v115 = v111;
          if (v77[3] >= v114)
          {
            if ((v109 & 1) == 0)
            {
              v149 = v110;
              sub_22F138F58();
              v110 = v149;
              v86 = v223;
              if (v115)
              {
                goto LABEL_64;
              }

              goto LABEL_62;
            }
          }

          else
          {
            sub_22F12E048(v114, v109);
            type metadata accessor for CLLocationCoordinate2D(0);
            v110 = sub_22F1237E8(v81, v82);
            if ((v115 & 1) != (v116 & 1))
            {
              goto LABEL_143;
            }
          }

          v86 = v223;
          if (v115)
          {
            goto LABEL_64;
          }

LABEL_62:
          v86[(v110 >> 6) + 8] |= 1 << v110;
          v117 = (v86[6] + 16 * v110);
          *v117 = v81;
          v117[1] = v82;
          *(v86[7] + 8 * v110) = MEMORY[0x277D84F90];
          v118 = v86[2];
          v46 = __OFADD__(v118, 1);
          v119 = v118 + 1;
          if (v46)
          {
            goto LABEL_140;
          }

          v86[2] = v119;
LABEL_64:
          v120 = (v86[7] + 8 * v110);
          v121 = v96;
          MEMORY[0x231900D00]();
          if (*((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();
          v122 = *(v216 + 16);
          if (v122)
          {
            v206 = v97;
            v214 = v86;
            v123 = 1 - v122;
            v124 = (v216 + 40);
            do
            {
              v126 = *(v124 - 1);
              v125 = *v124;
              v127 = v76[2];

              if (v127 && (v128 = sub_22F1229E8(v126, v125), (v129 & 1) != 0))
              {
                v130 = v128;

                v131 = *(v76[7] + 8 * v130);
              }

              else
              {
                v132 = v218;
                v133 = sub_22F387124(v126, v125, v220, v217);
                v218 = v132;
                if (v132)
                {

                  goto LABEL_125;
                }

                v131 = v133;
                v134 = swift_isUniquelyReferenced_nonNull_native();
                v223 = v76;
                sub_22F131F70(v131, v126, v125, v134);

                v76 = v223;
              }

              v135 = v220[1];
              v136 = sub_22F153098();
              v223 = MEMORY[0x231901000](1, &type metadata for Edge.Label, v136);
              sub_22F10E5F4(&v224, byte_2843DDEF8);
              v137 = sub_22F2D6994(v223, v121, v131, v135);

              if (v137)
              {

                if (!v123)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                v219 = v76;
                v138 = sub_22F1515F8(&unk_2843DDF00);
                sub_22F1DF3B0(&unk_2843DDF20);
                v139 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v140 = sub_22F740C80();
                v141 = [v139 kgPropertiesWithMAProperties_];

                if (!v141)
                {

                  sub_22F2B5954();
                  v218 = swift_allocError();
                  swift_willThrow();

                  goto LABEL_125;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v142 = sub_22F740CA0();

                v143 = type metadata accessor for Edge();
                v144 = objc_allocWithZone(v143);
                *&v144[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v144[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v138;
                *&v144[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v142;
                *&v144[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v121;
                *&v144[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v131;
                v222.receiver = v144;
                v222.super_class = v143;
                v145 = v121;
                v146 = v131;
                v147 = objc_msgSendSuper2(&v222, sel_init);
                sub_22F2D6290(v147);
                v148 = v147;
                [v217 insertEdge_];

                v76 = v219;
                if (!v123)
                {
LABEL_78:
                  v72 = v204;
                  v86 = v214;
                  goto LABEL_80;
                }
              }

              ++v123;
              v124 += 2;
            }

            while (v123 != 1);
            __break(1u);
            goto LABEL_132;
          }

          v72 = v204;
LABEL_80:
          v85 = v211 + 1;

          objc_autoreleasePoolPop(v212);
          v77 = v86;
          v75 = v86;
          v73 = v205;
          v84 = v209;
          if (v85 == v207)
          {
            goto LABEL_85;
          }
        }
      }

      v86 = v77;
LABEL_85:
      v72 &= v72 - 1;

      v77 = v86;
      v74 = v199;
      goto LABEL_44;
    }
  }

  v150 = v213;

  v151 = 0;
  v152 = 1 << *(v150 + 32);
  v153 = -1;
  if (v152 < 64)
  {
    v153 = ~(-1 << v152);
  }

  v154 = v153 & v150[8];
  v199 = (v152 + 63) >> 6;
  v155 = &type metadata for Edge.Label;
  v156 = v215;
  v200 = v75;
LABEL_90:
  while (v154)
  {
    v157 = v154;
LABEL_96:
    v154 = (v157 - 1) & v157;
    if (v156[2])
    {
      v159 = v213[6];
      v204 = (v157 - 1) & v157;
      v160 = (v159 + ((v151 << 10) | (16 * __clz(__rbit64(v157)))));
      v161 = *v160;
      v162 = v160[1];
      v163 = *v160;
      v205 = v151;
      v164 = sub_22F1237E8(v163, v162);
      v154 = v204;
      v151 = v205;
      v156 = v215;
      if (v165)
      {
        v166 = *(v215[7] + 8 * v164);
        v206 = *(v166 + 16);
        if (v206)
        {
          v209 = v166 + 32;

          v168 = 0;
          v207 = v167;
          while (1)
          {
            if (v168 >= *(v167 + 16))
            {
              goto LABEL_142;
            }

            v210 = v168;
            v169 = (v209 + 16 * v168);
            v171 = *v169;
            v170 = v169[1];
            v172 = *v220;
            v173 = sub_22F1530EC();

            v223 = MEMORY[0x231901000](1, &type metadata for Node.Label, v173);
            sub_22F10DF08(&v224, byte_2843DDF50);
            v174 = sub_22F2D67A0(v223, v171, v170, v172);

            if (v174)
            {
              break;
            }

LABEL_101:
            v168 = v210 + 1;
            v167 = v207;
            if (v210 + 1 == v206)
            {

              v156 = v215;
              v151 = v205;
              v154 = v204;
              goto LABEL_90;
            }
          }

          if (v75[2] && (v175 = sub_22F1237E8(v161, v162), (v176 & 1) != 0))
          {
            v177 = *(v75[7] + 8 * v175);

            if (v177 >> 62)
            {
LABEL_107:
              v178 = sub_22F741A00();
              if (v178)
              {
                goto LABEL_111;
              }

LABEL_100:

              v75 = v200;
              goto LABEL_101;
            }
          }

          else
          {
            v177 = MEMORY[0x277D84F90];
            if (MEMORY[0x277D84F90] >> 62)
            {
              goto LABEL_107;
            }
          }

          v178 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v178)
          {
LABEL_111:
            v179 = 0;
            v219 = (v177 & 0xC000000000000001);
            v216 = v177 & 0xFFFFFFFFFFFFFF8;
            v214 = v174;
            v212 = v177;
            v211 = v178;
            while (1)
            {
              if (v219)
              {
                v180 = MEMORY[0x2319016F0](v179, v177);
              }

              else
              {
                if (v179 >= *(v216 + 16))
                {
                  goto LABEL_135;
                }

                v180 = *(v177 + 8 * v179 + 32);
              }

              v181 = v180;
              v182 = (v179 + 1);
              if (__OFADD__(v179, 1))
              {
                goto LABEL_133;
              }

              v183 = v220[1];
              v184 = sub_22F153098();
              v223 = MEMORY[0x231901000](1, v155, v184);
              sub_22F10E5F4(&v224, byte_2843DDF78);
              v185 = sub_22F2D6994(v223, v174, v181, v183);

              if (v185)
              {

                if (v182 == v178)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                v186 = v155;
                v187 = sub_22F1515F8(&unk_2843DDF80);
                sub_22F1DF3B0(&unk_2843DDFA0);
                v188 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v189 = sub_22F740C80();
                v190 = [v188 kgPropertiesWithMAProperties_];

                if (!v190)
                {

                  sub_22F2B5954();
                  v218 = swift_allocError();
                  swift_willThrow();

LABEL_126:
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v191 = sub_22F740CA0();

                v192 = type metadata accessor for Edge();
                v193 = objc_allocWithZone(v192);
                *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v187;
                *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v191;
                v174 = v214;
                *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v214;
                *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v181;
                v221.receiver = v193;
                v221.super_class = v192;
                v194 = v174;
                v195 = v181;
                v196 = objc_msgSendSuper2(&v221, sel_init);
                sub_22F2D6290(v196);
                v197 = v196;
                [v217 insertEdge_];

                v178 = v211;
                v155 = v186;
                v177 = v212;
                if (v182 == v211)
                {
                  goto LABEL_100;
                }
              }

              ++v179;
            }
          }

          goto LABEL_100;
        }
      }
    }
  }

  while (1)
  {
    v158 = v151 + 1;
    if (__OFADD__(v151, 1))
    {
      goto LABEL_134;
    }

    if (v158 >= v199)
    {
      break;
    }

    v157 = v208[v158];
    ++v151;
    if (v157)
    {
      v151 = v158;
      goto LABEL_96;
    }
  }
}

void sub_22F38880C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v12 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DA0, &qword_22F788D08);
  swift_allocObject();
  v5 = sub_22F73FC90();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DA8, &qword_22F788D10);
  swift_allocObject();
  v6 = sub_22F73FC90();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = sub_22F741320();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = a1;
  v9[7] = v6;
  v10 = v7;

  sub_22F37994C(0, 0, v4, &unk_22F788D20, v9);

  sub_22F741620();
  sub_22F73FC70();
  if (v12)
  {
    swift_willThrow();
  }

  else
  {
    sub_22F73FC70();
  }
}

uint64_t sub_22F388A30(uint64_t *a1, uint64_t *a2, void *a3)
{
  v45 = a3;
  v6 = sub_22F73F690();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a1;
  v9 = sub_22F742010();
  v11 = v10;
  v12 = *a2;
  v13 = sub_22F15280C(&unk_2843DDFB0);
  v14 = v9;
  v15 = sub_22F2D67A0(v13, v9, v11, v12);

  if (v15)
  {
  }

  else
  {
    v41 = a2;
    v42 = v3;
    v40 = v14;
    v16 = sub_22F740DF0();
    v17 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v17;
    sub_22F386DBC(v16, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v46);
    v19 = v46;
    v20 = sub_22F740DF0();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v19;
    sub_22F386DBC(v20, 1701667182, 0xE400000000000000, v21, &v46);
    v22 = v46;
    v39 = type metadata accessor for PublicEvent(0);
    sub_22F73F060();
    sub_22F73F620();
    v23 = sub_22F741350();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v22;
    sub_22F386DBC(v23, 0x7461447472617473, 0xE900000000000065, v24, &v46);
    v25 = v46;
    v26 = v44;
    v27 = *(v43 + 8);
    v27(v8, v44);
    sub_22F73F030();
    sub_22F73F620();
    v28 = sub_22F741350();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v25;
    sub_22F386DBC(v28, 0x65746144646E65, 0xE700000000000000, v29, &v46);
    v30 = v46;
    v27(v8, v26);
    v15 = *(a1 + *(v39 + 40));
    v31 = sub_22F73EE70();
    v32 = v40;
    if (v15 < 1)
    {
      v34 = v42;
    }

    else
    {
      if (v15 != v31)
      {
        v15 = sub_22F7414B0();
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v30;
        sub_22F386DBC(v15, 0xD000000000000012, 0x800000022F79C680, v33, &v46);
        v30 = v46;
      }

      v34 = v42;
    }

    sub_22F2B5478(&unk_2843DDFD8, v32, v11, v30);
    v36 = v45;
    if (!v34)
    {
      v15 = v35;
      sub_22F2D601C(v35);
      [v36 insertNode_];
    }
  }

  return v15;
}

id sub_22F388DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v28 = a2;
  v7 = v6;
  v27 = a1;
  if (a4)
  {
    v26[0] = 95;
    v26[1] = 0xE100000000000000;

    MEMORY[0x231900B10](a3, a4);
    MEMORY[0x231900B10](95, 0xE100000000000000);

    v15 = v27;
    v14 = v28;
  }

  else
  {

    v14 = a2;
    v15 = a1;
  }

  v16 = *a5;
  v17 = sub_22F15280C(&unk_2843DE000);
  v18 = sub_22F2D67A0(v17, v15, v14, v16);

  if (v18)
  {
  }

  else
  {
    v29 = a6;
    v19 = sub_22F740DF0();
    v20 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v20;
    sub_22F386DBC(v19, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, v26);
    v18 = v26[0];
    v22 = sub_22F740DF0();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v18;
    sub_22F386DBC(v22, 1701667182, 0xE400000000000000, v23, v26);
    sub_22F2B5478(&unk_2843DE028, v15, v14, v26[0]);
    if (!v7)
    {
      v18 = v24;
      sub_22F2D601C(v24);
      [v29 insertNode_];
    }
  }

  return v18;
}

void sub_22F388F80(unint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v219 = a3;
  v215 = a2;
  v207 = type metadata accessor for PublicEvent(0);
  v205 = *(v207 - 1);
  MEMORY[0x28223BE20](v207);
  v209 = (&v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v204 = &v190 - v8;
  v218 = sub_22F73F690();
  v9 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v11 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v214 = &v190 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  v216 = &v190 - v16;
  v226 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v206 = v11;
    v203 = v4;
    v11 = 0;
    v18 = a1 & 0xC000000000000001;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v210 = (v9 + 4);
    v217 = (v9 + 1);
    v9 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v212 = i;
    v213 = a1;
    v211 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x2319016F0](v11, a1, v15);
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_29;
        }

        v20 = *(a1 + 8 * v11 + 32);
      }

      v4 = v20;
      v21 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v22 = [v20 v9[394]];
      if (v22)
      {
        v23 = v22;
        v24 = [v4 creationDate];
        if (!v24)
        {

          goto LABEL_5;
        }

        v25 = v18;
        v26 = v216;
        v27 = v214;
        v28 = v24;
        sub_22F73F640();

        v29 = v218;
        (*v210)(v26, v27, v218);
        [v23 coordinate];
        v31 = v30;
        [v23 coordinate];
        v33 = v32;
        if (([objc_opt_self() locationIsCoarse_] & 1) != 0 || (objc_msgSend(v23, sel_coordinate), !CLLocationCoordinate2DIsValid(v227)))
        {
          (*v217)(v26, v29);

          v18 = v25;
LABEL_18:
          i = v212;
        }

        else
        {
          v34 = v26;
          v18 = v25;
          if (v31 == 0.0 && v33 == 0.0)
          {
            (*v217)(v34, v29);

            goto LABEL_18;
          }

          v35 = v206;
          sub_22F73F550();
          v36 = v29;
          v37 = sub_22F73F660();
          v208 = *v217;
          v208(v35, v36);
          v38 = v37 == 1;
          v39 = v34;
          i = v212;
          if (v38)
          {
            sub_22F73F570();
            v40 = sub_22F73F660();

            v41 = v35;
            v42 = v218;
            v43 = v208;
            v208(v41, v218);
            v43(v216, v42);
            if (v40 == 1)
            {
              sub_22F741BA0();
              sub_22F741BE0();
              sub_22F741BF0();
              sub_22F741BB0();
            }

            else
            {
            }
          }

          else
          {

            v208(v39, v218);
          }
        }

        a1 = v213;
        v19 = v211;
        v9 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
        goto LABEL_5;
      }

LABEL_5:
      ++v11;
      if (v21 == i)
      {
        v44 = v226;
        v4 = v203;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_32:
  v45 = sub_22F1E319C(v44);
  v47 = v46;

  type metadata accessor for PublicEventGeoQuery();
  swift_allocObject();

  v49 = sub_22F237750(v48);
  sub_22F38880C(v49);
  v51 = v4;
  v52 = v209;
  if (v4)
  {
    goto LABEL_33;
  }

  v53 = 0;
  v54 = v50 + 64;
  v55 = 1 << *(v50 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v50 + 64);
  v58 = (v55 + 63) >> 6;
  v213 = "_TtC11PhotosGraph12GraphBuilder";
  v200 = v50 + 64;
  v199 = v58;
  if (!v57)
  {
    while (1)
    {
LABEL_40:
      v59 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_113;
      }

      if (v59 >= v58)
      {
        break;
      }

      v57 = *(v54 + 8 * v59);
      ++v53;
      if (v57)
      {
        goto LABEL_43;
      }
    }

LABEL_33:

LABEL_34:

    return;
  }

LABEL_39:
  v59 = v53;
LABEL_43:
  v198 = (v57 - 1) & v57;
  v197 = v59;
  v60 = __clz(__rbit64(v57)) | (v59 << 6);
  v202 = v50;
  v61 = (*(v50 + 48) + 16 * v60);
  v62 = *(*(v50 + 56) + 8 * v60);
  v63 = v61[1];
  v194 = *v61;
  v64 = (v62 + 56);
  v65 = 1 << *(v62 + 32);
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  else
  {
    v66 = -1;
  }

  v67 = v66 & *(v62 + 56);
  v208 = ((v65 + 63) >> 6);
  v206 = v63;

  v68 = 0;
  v203 = (v62 + 56);
  while (1)
  {
    if (!v67)
    {
      while (1)
      {
        v69 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_114;
        }

        if (v69 >= v208)
        {
          break;
        }

        v67 = v64[v69];
        ++v68;
        if (v67)
        {
          v68 = v69;
          goto LABEL_52;
        }
      }

      v53 = v197;
      v50 = v202;
      v54 = v200;
      v58 = v199;
      v57 = v198;
      if (!v198)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_52:
    v196 = v67;
    v195 = v68;
    v201 = v62;
    v70 = v204;
    sub_22F38A9A8(*(v62 + 48) + *(v205 + 72) * (__clz(__rbit64(v67)) | (v68 << 6)), v204);
    sub_22F38AA0C(v70, v52);
    v217 = sub_22F388A30(v52, v215, v219);
    if (v51)
    {
      sub_22F38AA70(v52);

      goto LABEL_34;
    }

    v210 = v47;
    v211 = v45;
    v218 = 0;
    v212 = v49;
    v71 = *(v52 + v207[7]);
    v216 = v71[2];
    if (v216)
    {
      v72 = 0;
      v73 = v71 + 8;
      v214 = v71;
      while (v72 < v71[2])
      {
        v74 = *(v73 - 1);
        v75 = *v73;
        v76 = *v215;
        swift_bridgeObjectRetain_n();

        v77 = sub_22F15280C(&unk_2843DE050);
        v78 = sub_22F2D67A0(v77, v74, v75, v76);

        if (v78)
        {

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v79 = sub_22F740DF0();
          v80 = MEMORY[0x277D84F98];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v226 = v80;
          sub_22F386DBC(v79, 0xD000000000000010, v213 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &v226);
          v82 = v226;
          v83 = sub_22F7414B0();
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v82;
          sub_22F386DBC(v83, 0x6C6576656CLL, 0xE500000000000000, v84, &v226);
          v85 = v226;
          v86 = sub_22F740DF0();
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v85;
          sub_22F386DBC(v86, 0x79726F6765746163, 0xE800000000000000, v87, &v226);
          v88 = v218;
          sub_22F2B5478(&unk_2843DE078, v74, v75, v226);
          v218 = v88;
          if (v88)
          {
LABEL_106:

            sub_22F38AA70(v209);
            return;
          }

          v90 = v89;
          sub_22F2D601C(v89);
          v78 = v90;
          [v219 insertNode_];
        }

        v91 = v217;
        v92 = v78;
        v93 = sub_22F1515F8(&unk_2843DE0A0);
        sub_22F1DF3B0(&unk_2843DE0C0);
        v94 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v95 = sub_22F740C80();
        v96 = [v94 kgPropertiesWithMAProperties_];

        if (!v96)
        {
LABEL_103:

          sub_22F2B5954();
          swift_allocError();
          swift_willThrow();

          goto LABEL_104;
        }

        ++v72;
        sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
        v97 = sub_22F740CA0();

        v98 = type metadata accessor for Edge();
        v99 = objc_allocWithZone(v98);
        *&v99[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v99[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v93;
        *&v99[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v97;
        *&v99[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v91;
        *&v99[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v92;
        v225.receiver = v99;
        v225.super_class = v98;
        v100 = objc_msgSendSuper2(&v225, sel_init);
        [v219 insertEdge_];

        v73 += 5;
        v71 = v214;
        if (v216 == v72)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      return;
    }

LABEL_62:
    v101 = *(v209 + v207[8]);
    v216 = v101[2];
    if (v216)
    {
      v102 = 0;
      v103 = v101 + 8;
      v214 = v101;
      while (v102 < v101[2])
      {
        v104 = *(v103 - 1);
        v105 = *v103;
        v106 = *v215;
        swift_bridgeObjectRetain_n();

        v107 = sub_22F15280C(&unk_2843DE0D0);
        v108 = sub_22F2D67A0(v107, v104, v105, v106);

        if (v108)
        {

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v109 = sub_22F740DF0();
          v110 = MEMORY[0x277D84F98];
          v111 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v110;
          sub_22F386DBC(v109, 0xD000000000000010, v213 | 0x8000000000000000, v111, &v226);
          v112 = v226;
          v113 = sub_22F7414B0();
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v112;
          sub_22F386DBC(v113, 0x6C6576656CLL, 0xE500000000000000, v114, &v226);
          v115 = v226;
          v116 = sub_22F740DF0();
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v115;
          sub_22F386DBC(v116, 0x79726F6765746163, 0xE800000000000000, v117, &v226);
          v118 = v218;
          sub_22F2B5478(&unk_2843DE0F8, v104, v105, v226);
          v218 = v118;
          if (v118)
          {
            goto LABEL_106;
          }

          v120 = v119;
          sub_22F2D601C(v119);
          v108 = v120;
          [v219 insertNode_];
        }

        v91 = v217;
        v92 = v108;
        v121 = sub_22F1515F8(&unk_2843DE120);
        sub_22F1DF3B0(&unk_2843DE140);
        v122 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v123 = sub_22F740C80();
        v124 = [v122 kgPropertiesWithMAProperties_];

        if (!v124)
        {
          goto LABEL_103;
        }

        ++v102;
        sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
        v125 = sub_22F740CA0();

        v126 = type metadata accessor for Edge();
        v127 = objc_allocWithZone(v126);
        *&v127[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v127[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v121;
        *&v127[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v125;
        *&v127[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v91;
        *&v127[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v92;
        v224.receiver = v127;
        v224.super_class = v126;
        v128 = objc_msgSendSuper2(&v224, sel_init);
        [v219 insertEdge_];

        v103 += 5;
        v101 = v214;
        if (v216 == v102)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_115;
    }

LABEL_71:
    v129 = *(*(v209 + v207[9]) + 16);
    v216 = *(v209 + v207[9]);

    v214 = v129;
    if (v129)
    {
      v130 = 0;
      v131 = (v216 + 56);
      while (v130 < *(v216 + 16))
      {
        v132 = *(v131 - 1);
        v133 = *v131;
        v134 = *(v131 - 3);
        v135 = *(v131 - 2);

        v136 = v132;
        v137 = v218;
        v138 = sub_22F388DA8(v134, v135, v136, v133, v215, v219);
        v218 = v137;
        if (v137)
        {
          sub_22F38AA70(v209);

          return;
        }

        v139 = v138;

        v140 = v217;
        v141 = v139;
        v142 = sub_22F1515F8(&unk_2843DE150);
        sub_22F1DF3B0(&unk_2843DE170);
        v143 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v144 = sub_22F740C80();
        v145 = [v143 kgPropertiesWithMAProperties_];

        if (!v145)
        {

          sub_22F2B5954();
          swift_allocError();
          swift_willThrow();

          goto LABEL_104;
        }

        ++v130;
        sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
        v146 = sub_22F740CA0();

        v147 = type metadata accessor for Edge();
        v148 = objc_allocWithZone(v147);
        *&v148[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v148[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v142;
        *&v148[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v146;
        *&v148[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v140;
        *&v148[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v141;
        v223.receiver = v148;
        v223.super_class = v147;
        v149 = objc_msgSendSuper2(&v223, sel_init);
        [v219 insertEdge_];

        v131 += 4;
        if (v214 == v130)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_116;
    }

LABEL_77:

    v150 = *v215;
    v52 = v209;
    v226 = *(v209 + v207[11]);
    v151 = sub_22F742010();
    v153 = v152;
    v154 = sub_22F15280C(&unk_2843DE180);
    v216 = v150;
    v155 = sub_22F2D67A0(v154, v151, v153, v150);

    v51 = v218;
    v45 = v211;
    v47 = v210;
    if (v155)
    {
      v193 = v217;
      v214 = v155;
      v156 = sub_22F1515F8(&unk_2843DE1A8);
      sub_22F1DF3B0(&unk_2843DE1C8);
      v157 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
      v158 = sub_22F740C80();
      v159 = [v157 kgPropertiesWithMAProperties_];

      if (!v159)
      {

        sub_22F2B5954();
        swift_allocError();
        swift_willThrow();
        v188 = v193;

        v189 = v214;

        sub_22F38AA70(v52);
        return;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v160 = sub_22F740CA0();

      v161 = type metadata accessor for Edge();
      v162 = objc_allocWithZone(v161);
      *&v162[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
      *&v162[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v156;
      *&v162[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v160;
      *&v162[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v193;
      v163 = v214;
      *&v162[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v214;
      v220.receiver = v162;
      v220.super_class = v161;
      v164 = objc_msgSendSuper2(&v220, sel_init);
      [v219 insertEdge_];
    }

    v49 = v212;
    if (!*(v45 + 16))
    {
      goto LABEL_97;
    }

    v165 = sub_22F1229E8(v194, v206);
    if ((v166 & 1) == 0)
    {

LABEL_97:

      v64 = v203;
      goto LABEL_99;
    }

    v167 = *(*(v45 + 56) + 8 * v165);

    v168 = v167 >> 62 ? sub_22F741A00() : *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v203;
    if (v168)
    {
      break;
    }

LABEL_98:

    v52 = v209;
LABEL_99:
    v67 = (v196 - 1) & v196;
    sub_22F38AA70(v52);
    v62 = v201;
    v68 = v195;
  }

  v169 = 0;
  v193 = (v167 & 0xC000000000000001);
  v190 = v167 & 0xFFFFFFFFFFFFFF8;
  v191 = v167;
  v192 = v168;
  while (1)
  {
    v218 = v51;
    if (v193)
    {
      v170 = MEMORY[0x2319016F0](v169, v167);
      v171 = v169 + 1;
      if (__OFADD__(v169, 1))
      {
        goto LABEL_117;
      }
    }

    else
    {
      if (v169 >= *(v190 + 16))
      {
        goto LABEL_118;
      }

      v170 = *(v167 + 8 * v169 + 32);
      v171 = v169 + 1;
      if (__OFADD__(v169, 1))
      {
        goto LABEL_117;
      }
    }

    v172 = [v170 localIdentifier];
    v173 = sub_22F740E20();
    v175 = v174;

    v176 = sub_22F1530EC();
    v226 = MEMORY[0x231901000](1, &type metadata for Node.Label, v176);
    sub_22F10DF08(&v222, byte_2843DE1F8);
    v177 = sub_22F2D67A0(v226, v173, v175, v216);

    if (v177)
    {
      break;
    }

LABEL_86:

    ++v169;
    v38 = v171 == v192;
    v49 = v212;
    v51 = v218;
    v45 = v211;
    v47 = v210;
    v64 = v203;
    if (v38)
    {
      goto LABEL_98;
    }
  }

  v214 = v217;
  v178 = v177;
  v179 = sub_22F1515F8(&unk_2843DE200);
  sub_22F1DF3B0(&unk_2843DE220);
  v180 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
  v181 = sub_22F740C80();
  v182 = [v180 kgPropertiesWithMAProperties_];

  if (v182)
  {
    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v183 = sub_22F740CA0();

    v184 = type metadata accessor for Edge();
    v185 = objc_allocWithZone(v184);
    *&v185[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v185[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v179;
    *&v185[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v183;
    *&v185[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v178;
    *&v185[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v214;
    v221.receiver = v185;
    v221.super_class = v184;
    v186 = objc_msgSendSuper2(&v221, sel_init);
    [v219 insertEdge_];

    v170 = v186;
    v167 = v191;
    goto LABEL_86;
  }

  sub_22F2B5954();
  swift_allocError();
  swift_willThrow();

  v187 = v214;
LABEL_104:

  sub_22F38AA70(v209);
}

unint64_t sub_22F38A91C()
{
  result = qword_27DAB3D78;
  if (!qword_27DAB3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D78);
  }

  return result;
}

uint64_t sub_22F38A9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F38AA0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F38AA70(uint64_t a1)
{
  v2 = type metadata accessor for PublicEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F38AACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F12094C;

  return sub_22F386854(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22F38ABA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F20B7C0;

  return sub_22F33C808(a1, v4);
}

uint64_t objectdestroy_63Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 56));

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_22F38ACC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F20B7C0;

  return sub_22F3864B0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_22F38ADA8()
{
  result = qword_27DAB3DC0;
  if (!qword_27DAB3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3DC0);
  }

  return result;
}

uint64_t sub_22F38AE04()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0x6574656D61726150, 0xEA00000000002072);
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  MEMORY[0x231900B10](v1, v2);

  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79C880);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD00000000000002ALL, 0x800000022F79C8B0);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000024, 0x800000022F79C8E0);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD00000000000002CLL, 0x800000022F79C910);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD00000000000002ALL, 0x800000022F79C940);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000021, 0x800000022F79C970);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79C9A0);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79C9D0);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79CA00);
  sub_22F7413B0();
  MEMORY[0x231900B10](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_22F38B09C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F38B154(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v88 = sub_22F73F7A0();
  v7 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v76 - v10;
  v12 = sub_22F73F7C0();
  v89 = *(v12 - 8);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v86 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 bestAddressNode];
  v81 = a4;
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collection];

    v18 = [v17 languageNodes];
    v19 = [v18 locales];

    sub_22F38C710(&qword_2810AC6E0, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
    v20 = sub_22F741420();
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
  }

  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  v25 = (v22 + 63) >> 6;
  v83 = (v7 + 8);
  v84 = v89 + 16;
  v82 = (v89 + 8);

  v26 = 0;
  v90 = MEMORY[0x277D84F90];
  v85 = a3;
LABEL_7:
  v27 = v26;
  if (!v24)
  {
    goto LABEL_9;
  }

  do
  {
    v26 = v27;
LABEL_12:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = v20;
    v30 = v86;
    (*(v89 + 16))(v86, *(v20 + 48) + *(v89 + 72) * (v28 | (v26 << 6)), v12);
    v31 = v12;
    v32 = v87;
    sub_22F73F7B0();
    sub_22F73F790();
    (*v83)(v32, v88);
    v33 = sub_22F73F710();
    v34 = v11;
    v35 = *(v33 - 8);
    if ((*(v35 + 48))(v34, 1, v33) != 1)
    {
      v36 = sub_22F73F700();
      v77 = v37;
      v78 = v36;
      v38 = *v82;
      v79 = v31;
      v38(v30, v31);
      v39 = *(v35 + 8);
      v80 = v34;
      v39(v34, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_22F13E1A8(0, *(v90 + 2) + 1, 1, v90);
      }

      v20 = v29;
      a3 = v85;
      v41 = *(v90 + 2);
      v40 = *(v90 + 3);
      if (v41 >= v40 >> 1)
      {
        v90 = sub_22F13E1A8((v40 > 1), v41 + 1, 1, v90);
      }

      v42 = v90;
      *(v90 + 2) = v41 + 1;
      v43 = &v42[16 * v41];
      v44 = v77;
      *(v43 + 4) = v78;
      *(v43 + 5) = v44;
      v12 = v79;
      v11 = v80;
      goto LABEL_7;
    }

    (*v82)(v30, v31);
    sub_22F120ADC(v34, &qword_27DAB24B8, &qword_22F779E68);
    v27 = v26;
    v11 = v34;
    v12 = v31;
    v20 = v29;
    a3 = v85;
  }

  while (v24);
  while (1)
  {
LABEL_9:
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v26);
    ++v27;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  v11 = *(v90 + 2);
  if (!v11)
  {
    v53 = 0;
    goto LABEL_47;
  }

  v12 = *(v90 + 4);
  v21 = *(v90 + 5);

  sub_22F107E14(0, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = *a3;
  v46 = v91;
  *a3 = 0x8000000000000000;
  v20 = sub_22F1229E8(v12, v21);
  v48 = *(v46 + 16);
  v49 = (v47 & 1) == 0;
  v50 = v48 + v49;
  if (__OFADD__(v48, v49))
  {
    goto LABEL_50;
  }

  LOBYTE(v26) = v47;
  if (*(v46 + 24) < v50)
  {
    sub_22F127068(v50, isUniquelyReferenced_nonNull_native);
    v46 = v91;
    v51 = sub_22F1229E8(v12, v21);
    if ((v26 & 1) == (v52 & 1))
    {
      v20 = v51;
      goto LABEL_27;
    }

LABEL_53:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
LABEL_27:
    *a3 = v46;

    v54 = *a3;
    if (v26)
    {
    }

    else
    {
      v54[(v20 >> 6) + 8] |= 1 << v20;
      v55 = (v54[6] + 16 * v20);
      *v55 = v12;
      v55[1] = v21;
      *(v54[7] + 4 * v20) = 0;
      v56 = v54[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_51;
      }

      v54[2] = v58;
    }

    v59 = 1.0 / v81;
    *(v54[7] + 4 * v20) = v59 + *(v54[7] + 4 * v20);
    if (v11 == 1)
    {
      break;
    }

    v60 = v90;
    v61 = (v90 + 56);
    v62 = 1;
    while (v62 < *(v60 + 2))
    {
      v12 = *(v61 - 1);
      v21 = *v61;

      sub_22F107E14(sub_22F38B14C, 0);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v91 = *a3;
      v64 = v91;
      *a3 = 0x8000000000000000;
      v20 = sub_22F1229E8(v12, v21);
      v66 = *(v64 + 16);
      v67 = (v65 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_50;
      }

      LOBYTE(v26) = v65;
      if (*(v64 + 24) >= v68)
      {
        if ((v63 & 1) == 0)
        {
          sub_22F1350D0();
          v64 = v91;
        }
      }

      else
      {
        sub_22F127068(v68, v63);
        v64 = v91;
        v69 = sub_22F1229E8(v12, v21);
        if ((v26 & 1) != (v70 & 1))
        {
          goto LABEL_53;
        }

        v20 = v69;
      }

      *a3 = v64;

      v71 = *a3;
      if (v26)
      {
      }

      else
      {
        v71[(v20 >> 6) + 8] |= 1 << v20;
        v72 = (v71[6] + 16 * v20);
        *v72 = v12;
        v72[1] = v21;
        *(v71[7] + 4 * v20) = 0;
        v73 = v71[2];
        v57 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v57)
        {
          goto LABEL_51;
        }

        v71[2] = v74;
      }

      ++v62;
      *(v71[7] + 4 * v20) = v59 + *(v71[7] + 4 * v20);
      v61 += 2;
      v60 = v90;
      if (v11 == v62)
      {
        v53 = sub_22F38B14C;
        goto LABEL_47;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_22F1350D0();
    v46 = v91;
  }

  v53 = sub_22F38B14C;
LABEL_47:

  return sub_22F107E14(v53, 0);
}

void sub_22F38B978(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 meaningLabels];
  v5 = sub_22F741420();

  v6 = 0;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        v12 = sub_22F740DF0();

        [a3 addObject_];
      }

      while (v9);
      continue;
    }
  }
}

uint64_t sub_22F38BAC8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v16 - v7;
  v9 = [a1 universalDateInterval];
  if (v9)
  {
    v10 = v9;
    sub_22F73F020();

    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  sub_22F299354(v4, v8);
  sub_22F73F090();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_22F120ADC(v8, &qword_27DAB40E0, &unk_22F779200);
    return 0;
  }

  else
  {
    sub_22F73F080();
    v15 = v14;
    (*(v12 + 8))(v8, v11);
    return v15;
  }
}

uint64_t sub_22F38BCC4(void *a1)
{
  v1 = a1;
  v9 = MEMORY[0x277D84F98];
  v2 = [a1 count];
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_22F38C708;
  *(v4 + 24) = v3;
  aBlock[4] = sub_22F2D4D54;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_13_5;
  v5 = _Block_copy(aBlock);

  [v1 enumerateUsingBlock_];
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_22F38BE3C(void *a1)
{
  v2 = sub_22F73F380();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22F38C6E8;
  *(v8 + 24) = v7;
  v21 = sub_22F250854;
  v22 = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_22F107E24;
  *(&v20 + 1) = &block_descriptor_45;
  v9 = _Block_copy(&aBlock);
  v10 = v6;

  [a1 enumerateUsingBlock_];
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    return result;
  }

  sub_22F7417C0();
  sub_22F38C710(&qword_2810AC720, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22F7418A0();
  if (*(&v20 + 1))
  {
    sub_22F107D08(&aBlock, &v17);
    sub_22F7418A0();
    while (v16)
    {
      sub_22F107D08(&v15, &aBlock);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v12 = [v10 countForObject_];
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v20 + 1));
      v13 = [v10 countForObject_];
      swift_unknownObjectRelease();
      if (v12 >= v13)
      {
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v17);
        sub_22F107D08(&aBlock, &v17);
      }

      sub_22F7418A0();
    }

    (*(v3 + 8))(v5, v2);
    sub_22F120ADC(&v15, &qword_27DAB0C28, &qword_22F778980);
    sub_22F107D08(&v17, &aBlock);
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        v14 = v17;

        return v14;
      }

      goto LABEL_14;
    }
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    sub_22F120ADC(&aBlock, &qword_27DAB0C28, &qword_22F778980);
    aBlock = 0u;
    v20 = 0u;
  }

  sub_22F120ADC(&aBlock, &qword_27DAB0C28, &qword_22F778980);
LABEL_14:

  return 0;
}

uint64_t sub_22F38C26C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MomentNodeCollectionMusicCurationFeatures - extractMusicCurationFeatures", 72, 2u, 0, 1, qword_2810B4E90, v45);
  v5 = sub_22F7416B0();
  v7 = v6;
  v8 = sub_22F38BAC8(a1);
  v10 = v9;
  v11 = sub_22F38BCC4(a1);
  sub_22F7416A0();
  if (v2)
  {

    sub_22F1B2BBC(0);
  }

  else
  {
    v44 = v5;
    v41 = v8;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_2810B4D90);

    v13 = sub_22F740B70();
    v14 = sub_22F7415C0();

    v42 = a2;
    v43 = v11;
    v40 = v10;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136315138;
      v17 = sub_22F740CB0();
      v19 = v7;
      v20 = sub_22F145F20(v17, v18, &v46);

      *(v15 + 4) = v20;
      v7 = v19;
      _os_log_impl(&dword_22F0FC000, v13, v14, "[MemoriesMusic] [FeatureExtraction] (MomentNodeCollectionMusicCurationFeatureExtractor) Extracted momentRatioByLanguageCode: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x2319033A0](v16, -1, -1);
      MEMORY[0x2319033A0](v15, -1, -1);
    }

    v21 = sub_22F38BE3C(a1);
    v23 = v22;
    sub_22F7416A0();

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136315138;
      if (v23)
      {
        v29 = v21;
      }

      else
      {
        v29 = 7104878;
      }

      v39 = v7;
      if (v23)
      {
        v30 = v23;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v38 = v21;
      v31 = sub_22F145F20(v29, v30, &v46);
      v7 = v39;

      *(v27 + 4) = v31;
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] [FeatureExtraction] (MomentNodeCollectionMusicCurationFeatureExtractor) Extracted mostFrequentMeaningLabel: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v32 = v28;
      v33 = v38;
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    else
    {

      v33 = v21;
    }

    v34 = [a1 publicEventNodes];
    v35 = [v34 performerNodes];

    v36 = [v35 performerIdentifiers];
    v37 = sub_22F741420();

    sub_22F1B2BBC(0);

    *v42 = v41;
    *(v42 + 8) = v40 & 1;
    *(v42 + 16) = v37;
    *(v42 + 24) = v43;
    *(v42 + 32) = v33;
    *(v42 + 40) = v23;
  }

  return result;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F38C710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22F38C760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v44 = MEMORY[0x277D84F90];
    sub_22F146D7C(0, v1, 0);
    v3 = v44;
    v4 = v2 + 64;
    v5 = sub_22F741980();
    v6 = *(v2 + 36);
    v39 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1280, &unk_22F778600);
    v7 = 0;
    v35 = v2 + 72;
    v36 = v1;
    v37 = v6;
    v38 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_25;
      }

      v40 = v7;
      v10 = v3;
      v11 = (*(v2 + 48) + 16 * v5);
      v12 = v11[1];
      v13 = *(*(v2 + 56) + 8 * v5);
      v41 = *v11;
      v42 = v12;
      swift_bridgeObjectRetain_n();
      v14 = v13;
      [v14 doubleValue];
      v43 = v15;
      v16 = sub_22F741DF0();

      v17 = v41;
      v18 = v42;
      v19 = v43;

      v20 = sub_22F1229E8(v17, v18);
      if (v21)
      {
        goto LABEL_26;
      }

      v16[(v20 >> 6) + 8] |= 1 << v20;
      v22 = (v16[6] + 16 * v20);
      *v22 = v17;
      v22[1] = v18;
      *(v16[7] + 8 * v20) = v19;
      v23 = v16[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_27;
      }

      v16[2] = v25;

      sub_22F38EB70(&v41);

      v3 = v10;
      v44 = v10;
      v27 = *(v10 + 16);
      v26 = *(v10 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22F146D7C((v26 > 1), v27 + 1, 1);
        v3 = v44;
      }

      *(v3 + 16) = v27 + 1;
      *(v3 + 8 * v27 + 32) = v16;
      v2 = v39;
      v8 = 1 << *(v39 + 32);
      if (v5 >= v8)
      {
        goto LABEL_28;
      }

      v4 = v38;
      v28 = *(v38 + 8 * v9);
      if ((v28 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v6) = v37;
      if (v37 != *(v39 + 36))
      {
        goto LABEL_30;
      }

      v29 = v28 & (-2 << (v5 & 0x3F));
      if (v29)
      {
        v8 = __clz(__rbit64(v29)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v9 << 6;
        v31 = v9 + 1;
        v32 = (v35 + 8 * v9);
        while (v31 < (v8 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_22F107D18(v5, v37, 0);
            v8 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        sub_22F107D18(v5, v37, 0);
      }

LABEL_4:
      v7 = v40 + 1;
      v5 = v8;
      if (v40 + 1 == v36)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

id FlexMusicCuration.__allocating_init(curatorVersion:bestSongSuggestions:secondarySongSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = a1;
  *&v7[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = a2;
  *&v7[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FlexMusicCuration.replaceFirstSongInBestSongSuggestions(with:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_2810A91C8;
  v8 = sub_22F740DF0();
  v9 = [v7 fetchSongWithUID_];

  p_prots = &OBJC_PROTOCOL___KGPropertyTypeProtocol.prots;
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22F771EB0;
    *(v11 + 32) = v9;
    v12 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
    v13 = v9;

    v14 = sub_22F2E4B00(1, v12);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v32 = v11;
    v21 = v18;
    p_prots = (&OBJC_PROTOCOL___KGPropertyTypeProtocol + 16);
    sub_22F1531DC(v14, v16, v21, v20);

    swift_unknownObjectRelease();
    v22 = v11;
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D90);

    v24 = sub_22F740B70();
    v25 = sub_22F7415E0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22F145F20(a1, a2, &v32);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[FlexMusicCuration] Unable to resolve Flex song with ID: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2319033A0](v27, -1, -1);
      MEMORY[0x2319033A0](v26, -1, -1);
    }

    v22 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  }

  v28 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_curatorVersion);
  v29 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  v30 = objc_allocWithZone(ObjectType);
  *&v30[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = v28;
  *(&p_prots[443]->count + v30) = v22;
  *&v30[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = v29;
  v33.receiver = v30;
  v33.super_class = ObjectType;

  return objc_msgSendSuper2(&v33, sel_init);
}

id sub_22F38CE48(uint64_t a1, uint64_t a2, void *a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v3 = sub_22F741160();

  return v3;
}

id FlexMusicCuration.init(curatorVersion:bestSongSuggestions:secondarySongSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = a1;
  *&v3[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = a2;
  *&v3[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::String_optional __swiftcall FlexMusicCuration.jsonRepresentation()()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F79CA80);
  v2 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  if (v2 >> 62)
  {
    v3 = sub_22F741A00();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    v4 = sub_22F146454(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v33 = v0;
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2319016F0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = [v7 uid];
      v9 = sub_22F740E20();
      v11 = v10;

      MEMORY[0x231900B10](v9, v11);

      MEMORY[0x231900B10](34, 0xE100000000000000);
      swift_unknownObjectRelease();
      v13 = *(v34 + 16);
      v12 = *(v34 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22F146454((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v34 + 16) = v13 + 1;
      v14 = v34 + 16 * v13;
      *(v14 + 32) = 34;
      *(v14 + 40) = 0xE100000000000000;
    }

    while (v3 != v6);
    v1 = v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v15 = sub_22F740DA0();
  v17 = v16;

  MEMORY[0x231900B10](v15, v17);

  MEMORY[0x231900B10](0xD000000000000021, 0x800000022F79CAA0);
  v18 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  if (v18 >> 62)
  {
    v19 = sub_22F741A00();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    v35 = MEMORY[0x277D84F90];
    v4 = sub_22F146454(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2319016F0](v20, v18);
        }

        else
        {
          v21 = *(v18 + 8 * v20 + 32);
          swift_unknownObjectRetain();
        }

        v22 = [v21 uid];
        v23 = sub_22F740E20();
        v25 = v24;

        MEMORY[0x231900B10](v23, v25);

        MEMORY[0x231900B10](34, 0xE100000000000000);
        swift_unknownObjectRelease();
        v27 = *(v35 + 16);
        v26 = *(v35 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22F146454((v26 > 1), v27 + 1, 1);
        }

        ++v20;
        *(v35 + 16) = v27 + 1;
        v28 = v35 + 16 * v27;
        *(v28 + 32) = 34;
        *(v28 + 40) = 0xE100000000000000;
      }

      while (v19 != v20);
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_24:
  v29 = sub_22F740DA0();
  v31 = v30;

  MEMORY[0x231900B10](v29, v31);

  MEMORY[0x231900B10](8194653, 0xE300000000000000);
  v4 = 0;
  v5 = 0xE000000000000000;
LABEL_29:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall FlexMusicCuration.expandedJsonRepresentation()()
{
  v1 = v0;
  v51 = *MEMORY[0x277D85DE8];
  v2 = sub_22F740E80();
  MEMORY[0x28223BE20](v2 - 8);
  v47[2] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v4 = sub_22F740B90();
    v47[1] = __swift_project_value_buffer(v4, qword_2810B4D90);
    v5 = sub_22F740B70();
    v6 = sub_22F7415D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22F0FC000, v5, v6, "[MemoriesMusic] Expanding Flex music songs metadata", v7, 2u);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F770DF0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000022F79CAD0;
    v9 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
    v10 = v9 >> 62 ? sub_22F741A00() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = MEMORY[0x277D84F90];
    v49 = v1;
    v47[3] = inited + 32;
    v48 = inited;
    if (!v10)
    {
      break;
    }

    v50 = MEMORY[0x277D84F90];
    sub_22F146D3C(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
LABEL_50:
      __break(1u);
    }

    v12 = 0;
    v11 = v50;
    v1 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2319016F0](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v14 = *(v9 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v15 = sub_22F38E2F8(v14);
      swift_unknownObjectRelease();
      v50 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_22F146D3C((v16 > 1), v17 + 1, 1);
        v11 = v50;
      }

      v11[2] = v17 + 1;
      v11[v17 + 4] = v15;
      ++v12;
      if (v13 == v10)
      {
        inited = v48;
        v1 = v49;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_18:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  *(inited + 48) = v11;
  *(inited + 72) = v18;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022F79CAF0;
  v19 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  if (v19 >> 62)
  {
    v20 = sub_22F741A00();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v50 = MEMORY[0x277D84F90];
    sub_22F146D3C(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      goto LABEL_50;
    }

    v47[0] = v18;
    v22 = 0;
    v21 = v50;
    v1 = v19 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_43;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x2319016F0](v22, v19);
      }

      else
      {
        if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v24 = *(v19 + 8 * v22 + 32);
        swift_unknownObjectRetain();
      }

      v25 = sub_22F38E2F8(v24);
      swift_unknownObjectRelease();
      v50 = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        sub_22F146D3C((v26 > 1), v27 + 1, 1);
        v21 = v50;
      }

      v21[2] = v27 + 1;
      v21[v27 + 4] = v25;
      ++v22;
    }

    while (v23 != v20);
    inited = v48;
    v18 = v47[0];
  }

  *(inited + 120) = v18;
  *(inited + 96) = v21;
  sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  v28 = objc_opt_self();
  v29 = sub_22F740C80();
  v50 = 0;
  v30 = [v28 dataWithJSONObject:v29 options:9 error:&v50];

  v31 = v50;
  if (v30)
  {
    v32 = sub_22F73F510();
    v34 = v33;

    sub_22F740E70();
    v35 = sub_22F740E40();
    v37 = v36;
    sub_22F133BF0(v32, v34);

    if (v37)
    {
      countAndFlagsBits = v35;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v37)
    {
      object = v37;
    }

    else
    {
      object = 0xE000000000000000;
    }
  }

  else
  {
    v40 = v31;
    v41 = sub_22F73F370();

    swift_willThrow();

    v42 = sub_22F740B70();
    v43 = sub_22F7415E0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22F0FC000, v42, v43, "[MemoriesMusic] Unable to get FlexMusicCuration expandedJsonRepresentation. Using jsonRepresentation as backup", v44, 2u);
      MEMORY[0x2319033A0](v44, -1, -1);
    }

    v45 = FlexMusicCuration.jsonRepresentation()();
    object = v45.value._object;
    countAndFlagsBits = v45.value._countAndFlagsBits;
  }

  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id sub_22F38D9B8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22F740DF0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *FlexMusicCuration.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F79CB10);
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F79CB30);
  v3 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  if (v3 >> 62)
  {
    v4 = sub_22F741A00();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_22F146454(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v30 = v0;
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2319016F0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = sub_22F38E840(v7);
      v10 = v9;
      swift_unknownObjectRelease();
      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22F146454((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v31 + 16) = v12 + 1;
      v13 = v31 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v4 != v6);
    v1 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v14 = sub_22F740DA0();
  v16 = v15;

  MEMORY[0x231900B10](v14, v16);

  MEMORY[0x231900B10](0xD000000000000021, 0x800000022F79CB50);
  v17 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  if (v17 >> 62)
  {
    v18 = sub_22F741A00();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
LABEL_24:
    v27 = sub_22F740DA0();
    v29 = v28;

    MEMORY[0x231900B10](v27, v29);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    return 0;
  }

  v32 = MEMORY[0x277D84F90];
  result = sub_22F146454(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2319016F0](v19, v17);
      }

      else
      {
        v20 = *(v17 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      v21 = sub_22F38E840(v20);
      v23 = v22;
      swift_unknownObjectRelease();
      v25 = *(v32 + 16);
      v24 = *(v32 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22F146454((v24 > 1), v25 + 1, 1);
      }

      ++v19;
      *(v32 + 16) = v25 + 1;
      v26 = v32 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v18 != v19);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

id FlexMusicCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FlexMusicCuration.replaceBestSongSuggestions(flexSongIds:)(uint64_t a1)
{
  v3 = v1;
  v18 = v3;
  ObjectType = swift_getObjectType();
  v5 = 0;
  v20 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = &off_27888E000;
LABEL_2:
  p_prots = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v2 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_16;
    }

    v10 = qword_2810A91C0;

    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = qword_2810A91C8;
    v12 = sub_22F740DF0();
    v13 = [v11 fetchSongWithUID_];

    ++v5;
    p_prots += 2;
    if (v13)
    {
      MEMORY[0x231900D00]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v20 = v22;
      v5 = v2;
      v7 = a1 + 40;
      goto LABEL_2;
    }
  }

  p_prots = &OBJC_PROTOCOL___KGPropertyTypeProtocol.prots;
  v8 = v18;
  v2 = *(v18 + OBJC_IVAR___PGFlexMusicCuration_curatorVersion);
  if (!(v20 >> 62))
  {

    sub_22F742060();
    v14 = v20;
    goto LABEL_14;
  }

LABEL_17:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v14 = sub_22F741D50();

LABEL_14:

  v15 = *(v8 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  v16 = objc_allocWithZone(ObjectType);
  *(&p_prots[442]->count + v16) = v2;
  *&v16[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = v14;
  *&v16[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = v15;
  v21.receiver = v16;
  v21.super_class = ObjectType;

  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t sub_22F38E2F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F788EB0;
  *(inited + 32) = 6580597;
  *(inited + 40) = 0xE300000000000000;
  v3 = [a1 uid];
  v4 = sub_22F740E20();
  v6 = v5;

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v8 = [a1 songName];
  v9 = sub_22F740E20();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  *(inited + 128) = 0x747369747261;
  *(inited + 136) = 0xE600000000000000;
  v12 = [a1 artistName];
  v13 = sub_22F740E20();
  v15 = v14;

  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 168) = v7;
  *(inited + 176) = 0x734449676174;
  *(inited + 184) = 0xE600000000000000;
  v16 = [a1 tagIDs];
  v17 = sub_22F741420();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_22F10B348(*(v17 + 16), 0);
    v20 = sub_22F11A438(&v48, v19 + 4, v18, v17);
    sub_22F1534EC(v48);
    if (v20 == v18)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_5:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(inited + 192) = v19;
  *(inited + 216) = v21;
  *(inited + 224) = 0x7364726F7779656BLL;
  *(inited + 232) = 0xE800000000000000;
  v22 = [a1 keywords];
  v23 = sub_22F741420();

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_22F10B348(*(v23 + 16), 0);
    v26 = sub_22F11A438(&v48, v25 + 4, v24, v23);
    sub_22F1534EC(v48);
    if (v26 == v24)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_9:
  *(inited + 240) = v25;
  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x800000022F78D720;
  v27 = [a1 weightedKeywords];
  sub_22F170D8C();
  v28 = sub_22F740CA0();

  sub_22F38C760(v28);
  v30 = v29;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DE8, qword_22F788F08);
  *(inited + 288) = v30;
  *(inited + 312) = v31;
  *(inited + 320) = 0x6C6173756F7261;
  *(inited + 328) = 0xE700000000000000;
  v32 = [a1 arousal];
  v33 = MEMORY[0x277D839F8];
  if (v32)
  {
    v34 = v32;
    [v32 doubleValue];
    v36 = v35;

    v49 = v33;
    *&v48 = v36;
    sub_22F107D08(&v48, (inited + 336));
  }

  else
  {
    *(inited + 360) = MEMORY[0x277D83B88];
    *(inited + 336) = 0;
  }

  *(inited + 368) = 0x65636E656C6176;
  *(inited + 376) = 0xE700000000000000;
  v37 = [a1 valence];
  if (v37)
  {
    v38 = v37;
    [v37 doubleValue];
    v40 = v39;

    v49 = v33;
    *&v48 = v40;
    sub_22F107D08(&v48, (inited + 384));
  }

  else
  {
    *(inited + 408) = MEMORY[0x277D83B88];
    *(inited + 384) = 0;
  }

  *(inited + 416) = 0x736E6F69676572;
  *(inited + 424) = 0xE700000000000000;
  v41 = [a1 regions];
  v42 = sub_22F741420();

  v43 = *(v42 + 16);
  if (!v43)
  {
    goto LABEL_18;
  }

  v44 = sub_22F10B348(*(v42 + 16), 0);
  v45 = sub_22F11A438(&v48, v44 + 4, v43, v42);
  sub_22F1534EC(v48);
  if (v45 != v43)
  {
    __break(1u);
LABEL_18:

    v44 = MEMORY[0x277D84F90];
  }

  *(inited + 456) = v21;
  *(inited + 432) = v44;
  v46 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  return v46;
}

uint64_t sub_22F38E840(void *a1)
{
  v2 = [a1 songName];
  v24 = sub_22F740E20();

  v3 = [a1 artistName];
  v23 = sub_22F740E20();
  v5 = v4;

  v6 = [a1 uid];
  v7 = sub_22F740E20();
  v9 = v8;

  v10 = [a1 tagIDs];
  sub_22F741420();

  v11 = [a1 keywords];
  sub_22F741420();

  v12 = [a1 weightedKeywords];
  sub_22F170D8C();
  sub_22F740CA0();

  sub_22F741B00();

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  MEMORY[0x231900B10](v23, v5);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  MEMORY[0x231900B10](v7, v9);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v13 = sub_22F741430();
  v15 = v14;

  MEMORY[0x231900B10](v13, v15);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v16 = sub_22F741430();
  v18 = v17;

  MEMORY[0x231900B10](v16, v18);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v19 = sub_22F740CB0();
  v21 = v20;

  MEMORY[0x231900B10](v19, v21);

  return v24;
}

uint64_t sub_22F38EB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3720, &qword_22F785C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static ImportantEntitiesEngineContainerProtocol.ingestMomentsAtHomeAndFrequentLocation(in:progressBlock:logger:momentIngestClosure:)(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 meNode];
  if (!v8)
  {
    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Error! Could not find a me node in the graph.", v18, 2u);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    *swift_slowAlloc() = 0;
    a2(1.0);
    return;
  }

  v9 = v8;
  v10 = [v8 collection];
  v11 = [v10 homeNodes];

  v12 = v11;
  v13 = sub_22F740B70();
  v14 = sub_22F7415D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = [v12 count];

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld home nodes connected to the me node.", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = [v12 addressNodes];
  v20 = [v19 momentNodes];

  v21 = v20;
  v22 = sub_22F740B70();
  v23 = sub_22F7415D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 count];

    _os_log_impl(&dword_22F0FC000, v22, v23, "Found %ld moments at the me node's home address.", v24, 0xCu);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22F350094;
  *(v26 + 24) = v25;
  v53 = sub_22F250854;
  v54 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_46;
  v27 = _Block_copy(&aBlock);

  [v21 enumerateUsingBlock:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v28 = [a1 largeFrequentLocationNodes];
  sub_22F38F31C();
  sub_22F34ACCC();
  v29 = sub_22F741420();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22F741A00();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 < 1)
  {

    return;
  }

  v31 = [a1 largeFrequentLocationNodes];
  v32 = sub_22F741420();

  sub_22F10A0A8(v32);

  v33 = objc_allocWithZone(PGGraphFrequentLocationNodeCollection);
  v34 = sub_22F741410();

  v35 = [v33 initWithSet:v34 graph:a1];

  v36 = [v35 addressNodes];
  v37 = [v36 momentNodes];

  v38 = v35;
  v39 = v37;
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = [v38 count];

    *(v42 + 12) = 2048;
    *(v42 + 14) = [v39 count];

    _os_log_impl(&dword_22F0FC000, v40, v41, "Found %ld large frequent locations and %ld moments at large frequent locations.", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F350040;
  *(v44 + 24) = v43;
  v53 = sub_22F2D4D54;
  v54 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_13_6;
  v45 = _Block_copy(&aBlock);

  [v39 enumerateUsingBlock:v45];

  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F38F31C()
{
  result = qword_2810A8FE0;
  if (!qword_2810A8FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8FE0);
  }

  return result;
}

void sub_22F38F4D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22F740DF0();
  v2 = [v0 BOOLForKey_];

  byte_27DAD0FC8 = v2;
}

id PGSharedLibrarySimulation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PGSharedLibrarySimulation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PGSharedLibrarySimulation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PGSharedLibrarySimulation.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PGSharedLibrarySimulation();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_22F38F63C(uint64_t a1)
{
  sub_22F741B00();

  strcpy(v62, "Event at path ");
  HIBYTE(v62[1]) = -18;
  sub_22F73F470();
  sub_22F1DAEAC();
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F79CBD0);
  v4 = v62[0];
  v3 = v62[1];
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  v5 = byte_27DAD0FC8;
  if (byte_27DAD0FC8 == 1)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v6 = sub_22F740B90();
    __swift_project_value_buffer(v6, qword_27DAD0E10);

    v7 = sub_22F740B70();
    v8 = sub_22F7415F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v62[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_22F145F20(v4, v3, v62);
      _os_log_impl(&dword_22F0FC000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2319033A0](v10, -1, -1);
      MEMORY[0x2319033A0](v9, -1, -1);
    }
  }

  else
  {
  }

  v12 = *(a1 + 24);
  if (!*(v12 + 16) || (v13 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850), (v14 & 1) == 0) || (sub_22F13A100(*(v12 + 56) + 32 * v13, v62), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) == 0))
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v25 = sub_22F740B90();
    __swift_project_value_buffer(v25, qword_27DAD0E10);
    v21 = sub_22F740B70();
    v26 = sub_22F7415F0();
    if (os_log_type_enabled(v21, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v62[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_22F145F20(0xD00000000000002ALL, 0x800000022F79CBF0, v62);
      _os_log_impl(&dword_22F0FC000, v21, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2319033A0](v28, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

LABEL_24:

LABEL_25:
    if (!*(v12 + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  sub_22F741B00();

  v62[0] = 0xD000000000000022;
  v62[1] = 0x800000022F79CCB0;
  v15 = sub_22F740CB0();
  v17 = v16;

  MEMORY[0x231900B10](v15, v17);

  v18 = v62[1];
  if (v5)
  {
    v19 = v62[0];
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v20 = sub_22F740B90();
    __swift_project_value_buffer(v20, qword_27DAD0E10);

    v21 = sub_22F740B70();
    v22 = sub_22F7415F0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v62[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_22F145F20(v19, v18, v62);
      _os_log_impl(&dword_22F0FC000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2319033A0](v24, -1, -1);
      MEMORY[0x2319033A0](v23, -1, -1);
    }

    goto LABEL_24;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_35;
  }

LABEL_26:
  v29 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8B0);
  if (v30)
  {
    sub_22F13A100(*(v12 + 56) + 32 * v29, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
    if (swift_dynamicCast())
    {
      v62[0] = 0;
      v62[1] = 0xE000000000000000;
      sub_22F741B00();

      v62[0] = 0xD000000000000018;
      v62[1] = 0x800000022F79CC90;
      v31 = sub_22F740CB0();
      v33 = v32;

      MEMORY[0x231900B10](v31, v33);

      v34 = v62[1];
      if (!v5)
      {

        if (!*(v12 + 16))
        {
          goto LABEL_51;
        }

        goto LABEL_42;
      }

      v35 = v62[0];
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v36 = sub_22F740B90();
      __swift_project_value_buffer(v36, qword_27DAD0E10);

      v37 = sub_22F740B70();
      v38 = sub_22F7415F0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v62[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_22F145F20(v35, v34, v62);
        _os_log_impl(&dword_22F0FC000, v37, v38, "%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x2319033A0](v40, -1, -1);
        MEMORY[0x2319033A0](v39, -1, -1);
      }

      goto LABEL_40;
    }
  }

LABEL_35:
  if (!v5)
  {
    goto LABEL_41;
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v41 = sub_22F740B90();
  __swift_project_value_buffer(v41, qword_27DAD0E10);
  v37 = sub_22F740B70();
  v42 = sub_22F7415F0();
  if (os_log_type_enabled(v37, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_22F145F20(0xD000000000000020, 0x800000022F79CC20, v62);
    _os_log_impl(&dword_22F0FC000, v37, v42, "%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x2319033A0](v44, -1, -1);
    MEMORY[0x2319033A0](v43, -1, -1);
  }

LABEL_40:

LABEL_41:
  if (!*(v12 + 16))
  {
    goto LABEL_51;
  }

LABEL_42:
  v45 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if (v46)
  {
    sub_22F13A100(*(v12 + 56) + 32 * v45, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
    if (swift_dynamicCast())
    {
      v62[0] = 0;
      v62[1] = 0xE000000000000000;
      sub_22F741B00();

      v62[0] = 0xD000000000000017;
      v62[1] = 0x800000022F79CC70;
      v47 = sub_22F740CB0();
      v49 = v48;

      MEMORY[0x231900B10](v47, v49);

      v50 = v62[1];
      if (v5)
      {
        v51 = v62[0];
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v52 = sub_22F740B90();
        __swift_project_value_buffer(v52, qword_27DAD0E10);

        v53 = sub_22F740B70();
        v54 = sub_22F7415F0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v62[0] = v56;
          *v55 = 136315138;
          *(v55 + 4) = sub_22F145F20(v51, v50, v62);
          _os_log_impl(&dword_22F0FC000, v53, v54, "%s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x2319033A0](v56, -1, -1);
          MEMORY[0x2319033A0](v55, -1, -1);
        }
      }

      else
      {
      }

      return result;
    }
  }

LABEL_51:
  if (v5)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v57 = sub_22F740B90();
    __swift_project_value_buffer(v57, qword_27DAD0E10);
    v58 = sub_22F740B70();
    v59 = sub_22F7415F0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_22F145F20(0xD00000000000001FLL, 0x800000022F79CC50, v62);
      _os_log_impl(&dword_22F0FC000, v58, v59, "%s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x2319033A0](v61, -1, -1);
      MEMORY[0x2319033A0](v60, -1, -1);
    }
  }

  return result;
}

uint64_t sub_22F390210()
{
  v57 = MEMORY[0x277D84F90];
  v0 = *MEMORY[0x277D3B218];
  type metadata accessor for PGSharedLibrarySimulationParameter();
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x800000022F79CFE0;
  *(v1 + 32) = vdupq_n_s64(0x4072C00000000000uLL);
  *(v1 + 48) = xmmword_22F788FC0;
  *(v1 + 64) = xmmword_22F788FD0;
  *(v1 + 80) = xmmword_22F788FE0;
  *(v1 + 96) = v0;

  MEMORY[0x231900D00](v2);
  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();

  v3 = v57;
  v4 = [objc_allocWithZone(PGRemoteConfiguration) init];
  v5 = @"com.apple.photos.sharedlibrary.sharedLibrarySimulationParameters";
  v6 = sub_22F741160();
  v7 = [v4 arrayValueForKey:@"com.apple.photos.sharedlibrary.sharedLibrarySimulationParameters" withFallbackValue:v6];

  v8 = sub_22F741180();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v53 = vdupq_n_s64(0x4072C00000000000uLL);
    do
    {
      sub_22F13A100(v10, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v54 + 16) && (v11 = sub_22F1229E8(1701667182, 0xE400000000000000), (v12 & 1) != 0) && (sub_22F13A100(*(*&v54 + 56) + 32 * v11, v56), (swift_dynamicCast() & 1) != 0))
        {
          v13 = swift_allocObject();
          *(v13 + 16) = v54;
          *(v13 + 24) = v55;
          *(v13 + 32) = v53;
          *(v13 + 48) = xmmword_22F788FC0;
          *(v13 + 64) = xmmword_22F788FD0;
          *(v13 + 80) = xmmword_22F788FE0;
          v14 = v13;
          *(v13 + 96) = v0;
          if (*(*&v54 + 16))
          {
            v15 = sub_22F1229E8(0xD000000000000022, 0x800000022F79C6E0);
            if (v16)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v15, v56);
              if (swift_dynamicCast())
              {
                v14[4] = *&v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v17 = sub_22F1229E8(0xD000000000000022, 0x800000022F79C6E0);
            if (v18)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v17, v56);
              if (swift_dynamicCast())
              {
                v14[4] = v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v19 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C710);
            if (v20)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v19, v56);
              if (swift_dynamicCast())
              {
                v14[5] = *&v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v21 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C710);
            if (v22)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v21, v56);
              if (swift_dynamicCast())
              {
                v14[5] = v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v23 = sub_22F1229E8(0xD000000000000020, 0x800000022F79C740);
            if (v24)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v23, v56);
              if (swift_dynamicCast())
              {
                v14[6] = *&v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v25 = sub_22F1229E8(0xD000000000000020, 0x800000022F79C740);
            if (v26)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v25, v56);
              if (swift_dynamicCast())
              {
                v14[6] = v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v27 = sub_22F1229E8(0xD000000000000028, 0x800000022F79C770);
            if (v28)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v27, v56);
              if (swift_dynamicCast())
              {
                v14[7] = *&v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v29 = sub_22F1229E8(0xD000000000000028, 0x800000022F79C770);
            if (v30)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v29, v56);
              if (swift_dynamicCast())
              {
                v14[7] = v54 * 60.0;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v31 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C7A0);
            if (v32)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v31, v56);
              if (swift_dynamicCast())
              {
                v14[8] = *&v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v33 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C7A0);
            if (v34)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v33, v56);
              if (swift_dynamicCast())
              {
                v14[8] = v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v35 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F79C7D0);
            if (v36)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v35, v56);
              if (swift_dynamicCast())
              {
                v14[9] = *&v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v37 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F79C7D0);
            if (v38)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v37, v56);
              if (swift_dynamicCast())
              {
                v14[9] = v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v39 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C7F0);
            if (v40)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v39, v56);
              if (swift_dynamicCast())
              {
                v14[10] = *&v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v41 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C7F0);
            if (v42)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v41, v56);
              if (swift_dynamicCast())
              {
                v14[10] = v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v43 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C820);
            if (v44)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v43, v56);
              if (swift_dynamicCast())
              {
                v14[11] = *&v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v45 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C820);
            if (v46)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v45, v56);
              if (swift_dynamicCast())
              {
                v14[11] = v54;
              }
            }
          }

          if (*(*&v54 + 16))
          {
            v47 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C850);
            if (v48)
            {
              sub_22F13A100(*(*&v54 + 56) + 32 * v47, v56);
              if (swift_dynamicCast())
              {
                v14[12] = *&v54;
              }
            }
          }

          if (*(*&v54 + 16) && (v49 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C850), (v50 & 1) != 0))
          {
            sub_22F13A100(*(*&v54 + 56) + 32 * v49, v56);

            if (swift_dynamicCast())
            {
              v14[12] = v54;
            }
          }

          else
          {
          }

          MEMORY[0x231900D00](v51);
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();

          v3 = v57;
        }

        else
        {
        }
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return v3;
}

void sub_22F390C5C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27DAAFD40 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v6 = sub_22F740B90();
    __swift_project_value_buffer(v6, qword_27DAD0E10);
    v7 = sub_22F740B70();
    v8 = sub_22F7415F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22F0FC000, v7, v8, "Starting simulations...", v9, 2u);
      MEMORY[0x2319033A0](v9, -1, -1);
    }

    if (qword_27DAAFD68 != -1)
    {
      swift_once();
    }

    v10 = qword_27DAD0E58;
    *&v11 = CACurrentMediaTime();
    sub_22F1B560C("All shared library simulations and setup", 40, 2u, v11, 0, v10, v193);
    v12 = sub_22F7416B0();
    v14 = v13;
    *&v15 = CACurrentMediaTime();
    sub_22F1B560C("Shared library simulation event ingest and setup", 48, 2u, v15, 0, v10, v194);
    type metadata accessor for PGSharedLibrarySimulationEventFactory();
    swift_allocObject();

    v16 = sub_22F330454(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DF0, &unk_22F789040);
    swift_initStackObject();

    v17 = v12;
    v18 = sub_22F1D5494(v16, v17);
    if (v3)
    {

      return;
    }

    v19 = v18;
    v167 = v10;
    sub_22F1B2BBC(0);
    type metadata accessor for PGSharedLibrarySimulationEvaluator();
    swift_initStackObject();
    v20 = sub_22F390210();
    v21 = v20;
    v22 = v20 >> 62;
    if (!(v20 >> 62))
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 == 1;
      if (v23 < 1)
      {
        break;
      }

      goto LABEL_10;
    }

LABEL_110:
    v23 = sub_22F741A00();
    v24 = v23 == 1;
    if (v23 < 1)
    {
      break;
    }

LABEL_10:
    v172 = v16;
    if (!v24)
    {
      v26 = 1;
      v27 = sub_22F140060(0, 1, 1, MEMORY[0x277D84F90]);
      v28 = *(v27 + 2);
      do
      {
        v29 = *(v27 + 3);
        if (v28 >= v29 >> 1)
        {
          v27 = sub_22F140060((v29 > 1), v28 + 1, 1, v27);
        }

        *(v27 + 2) = v28 + 1;
        *&v27[8 * v28++ + 32] = v26++ / v23;
      }

      while (v23 != v26);
    }

    v171 = sub_22F7416C0();
    if (v22)
    {
      v25 = sub_22F741A00();
      v16 = v172;
      if (!v25)
      {
LABEL_103:

        sub_22F1B2BBC(0);
        sub_22F7416A0();
        v156 = sub_22F740B70();
        v157 = sub_22F7415F0();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_22F0FC000, v156, v157, "...finished simulations!", v158, 2u);
          MEMORY[0x2319033A0](v158, -1, -1);
        }

        return;
      }
    }

    else
    {
      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v172;
      if (!v25)
      {
        goto LABEL_103;
      }
    }

    v162 = v22;
    v30 = v21 & 0xC000000000000001;
    swift_beginAccess();
    v22 = 0;
    v163 = v21 & 0xFFFFFFFFFFFFFF8;
    v161 = v21 + 32;
    v169 = v17;
    v170 = v14;
    v164 = v21 & 0xC000000000000001;
    v165 = v25;
    v179 = v19;
    v166 = v21;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x2319016F0](v22, v21);
        a1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v22 >= *(v163 + 16))
        {
          goto LABEL_112;
        }

        v17 = *(v161 + 8 * v22);

        a1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }
      }

      v31 = sub_22F740B70();
      v32 = sub_22F7415F0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = a1;
        *(v33 + 12) = 2048;
        if (v162)
        {
          v34 = sub_22F741A00();
        }

        else
        {
          v34 = *(v163 + 16);
        }

        *(v33 + 14) = v34;

        _os_log_impl(&dword_22F0FC000, v31, v32, "-- Simulation %ld/%ld --", v33, 0x16u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }

      else
      {
      }

      v35 = sub_22F740B70();
      a2 = sub_22F7415F0();

      v184 = v17;
      v168 = a1;
      if (os_log_type_enabled(v35, a2))
      {
        a1 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v190[0] = v36;
        *a1 = 136315138;
        v37 = sub_22F38AE04();
        v39 = sub_22F145F20(v37, v38, v190);

        *(a1 + 4) = v39;
        _os_log_impl(&dword_22F0FC000, v35, a2, "Running autosharing algorithm with %s", a1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x2319033A0](v36, -1, -1);
        MEMORY[0x2319033A0](a1, -1, -1);
      }

      type metadata accessor for PGSharedLibrarySimulationContext();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F788FF0;
      *&v41 = CACurrentMediaTime();
      sub_22F1B560C("Shared library simulation individual run", 40, 2u, v41, 0, v167, v195);
      if ((v171 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2319016F0](v22, v171);
      }

      else
      {
        if (v22 >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_113;
        }

        v42 = *(v171 + 32 + 8 * v22);
      }

      v43 = v42;
      v189 = MEMORY[0x277D84F90];
      v3 = *(v19 + 16);
      v44 = v3 >> 62 ? sub_22F741A00() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v185 = inited;
      if (v44)
      {
        break;
      }

      log = MEMORY[0x277D84F90];
LABEL_56:

      sub_22F1ADB68(log, &v186);
      v50 = v187;
      v51 = v188;
      __swift_project_boxed_opaque_existential_1(&v186, v187);
      v52 = *((*(v51 + 8))(v50, v51) + 16);

      if (v52)
      {
        v53 = sub_22F740DF0();
        v54 = v187;
        v55 = v188;
        __swift_project_boxed_opaque_existential_1(&v186, v187);
        (*(v55 + 8))(v54, v55);
        sub_22F2CFD00();
        v56 = sub_22F740C80();

        AnalyticsSendEvent();
      }

      sub_22F7416A0();

      sub_22F100260(&v186, v190);

      sub_22F1B2BBC(0);
      v57 = v191;
      v58 = v192;
      __swift_project_boxed_opaque_existential_1(v190, v191);
      v59 = (*(v58 + 8))(v57, v58);
      v60 = 0xD00000000000003DLL;
      v178 = 0xD00000000000004BLL;
      if (!*(v59 + 16))
      {
        v84 = 0x800000022F79CE80;
        v174 = 0xD000000000000057;
        v176 = 0xD00000000000003DLL;
        v83 = 0x800000022F79CDF0;
        v85 = 0x800000022F79CE30;
LABEL_95:

        v142 = 0xD000000000000037;
        v141 = 0x800000022F79CEE0;
        v143 = v184;
        goto LABEL_96;
      }

      sub_22F1229E8(0xD000000000000010, 0x800000022F796880);
      if (v61)
      {
        *&v186 = 0;
        *(&v186 + 1) = 0xE000000000000000;
        sub_22F741B00();

        *&v186 = 0xD000000000000013;
        *(&v186 + 1) = 0x800000022F79CFC0;
        if (!*(v59 + 16))
        {
          goto LABEL_114;
        }

        v62 = sub_22F1229E8(0xD000000000000011, 0x800000022F7968A0);
        if ((v63 & 1) == 0)
        {
          goto LABEL_115;
        }

        v64 = *(*(v59 + 56) + 8 * v62);
        v65 = [v64 description];
        v66 = sub_22F740E20();
        v68 = v67;

        MEMORY[0x231900B10](v66, v68);

        MEMORY[0x231900B10](0x6C6C61636572202CLL, 0xEA0000000000203ALL);
        if (!*(v59 + 16))
        {
          goto LABEL_116;
        }

        v69 = sub_22F1229E8(0x5F6C6C617265766FLL, 0xEE006C6C61636572);
        if ((v70 & 1) == 0)
        {
          goto LABEL_117;
        }

        v71 = *(*(v59 + 56) + 8 * v69);
        v72 = [v71 description];
        v73 = sub_22F740E20();
        v75 = v74;

        MEMORY[0x231900B10](v73, v75);

        MEMORY[0x231900B10](0x206E6F202CLL, 0xE500000000000000);
        if (!*(v59 + 16))
        {
          goto LABEL_118;
        }

        v76 = sub_22F1229E8(0xD000000000000010, 0x800000022F796880);
        if ((v77 & 1) == 0)
        {
          goto LABEL_119;
        }

        v78 = *(*(v59 + 56) + 8 * v76);
        v79 = [v78 description];
        v80 = sub_22F740E20();
        v82 = v81;

        MEMORY[0x231900B10](v80, v82);

        MEMORY[0x231900B10](0x2E73746573736120, 0xE800000000000000);
        v83 = *(&v186 + 1);
        v60 = v186;
      }

      else
      {
        v83 = 0x800000022F79CDF0;
      }

      v176 = v60;
      if (!*(v59 + 16))
      {
        v84 = 0x800000022F79CE80;
        v174 = 0xD000000000000057;
        v85 = 0x800000022F79CE30;
        goto LABEL_95;
      }

      sub_22F1229E8(0xD00000000000001BLL, 0x800000022F796800);
      if (v86)
      {
        *&v186 = 0;
        *(&v186 + 1) = 0xE000000000000000;
        sub_22F741B00();
        MEMORY[0x231900B10](0xD000000000000022, 0x800000022F79CF90);
        if (!*(v59 + 16))
        {
          goto LABEL_120;
        }

        loga = v83;
        v87 = sub_22F1229E8(0xD000000000000023, 0x800000022F796820);
        if ((v88 & 1) == 0)
        {
          goto LABEL_121;
        }

        v89 = *(*(v59 + 56) + 8 * v87);
        v90 = [v89 description];
        v91 = sub_22F740E20();
        v93 = v92;

        MEMORY[0x231900B10](v91, v93);

        MEMORY[0x231900B10](0x6C6C61636572202CLL, 0xEA0000000000203ALL);
        if (!*(v59 + 16))
        {
          goto LABEL_122;
        }

        v94 = sub_22F1229E8(0xD000000000000020, 0x800000022F796850);
        if ((v95 & 1) == 0)
        {
          goto LABEL_123;
        }

        v96 = *(*(v59 + 56) + 8 * v94);
        v97 = [v96 description];
        v98 = sub_22F740E20();
        v100 = v99;

        MEMORY[0x231900B10](v98, v100);

        MEMORY[0x231900B10](8236, 0xE200000000000000);
        if (!*(v59 + 16))
        {
          goto LABEL_124;
        }

        v101 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F796800);
        if ((v102 & 1) == 0)
        {
          goto LABEL_125;
        }

        v103 = *(*(v59 + 56) + 8 * v101);
        v104 = [v103 description];
        v105 = sub_22F740E20();
        v107 = v106;

        MEMORY[0x231900B10](v105, v107);

        MEMORY[0x231900B10](0x2E73746573736120, 0xE800000000000000);
        v85 = *(&v186 + 1);
        v178 = v186;
        v83 = loga;
        if (!*(v59 + 16))
        {
LABEL_78:
          v84 = 0x800000022F79CE80;
          v174 = 0xD000000000000057;
          goto LABEL_95;
        }
      }

      else
      {
        v85 = 0x800000022F79CE30;
        if (!*(v59 + 16))
        {
          goto LABEL_78;
        }
      }

      logb = v85;
      sub_22F1229E8(0xD000000000000021, 0x800000022F796780);
      v108 = 0xD000000000000057;
      v109 = 0x800000022F79CE80;
      if (v110)
      {
        *&v186 = 0;
        *(&v186 + 1) = 0xE000000000000000;
        sub_22F741B00();
        MEMORY[0x231900B10](0xD000000000000028, 0x800000022F79CF60);
        if (!*(v59 + 16))
        {
          goto LABEL_126;
        }

        v111 = v83;
        v112 = sub_22F1229E8(0xD000000000000021, 0x800000022F7967B0);
        if ((v113 & 1) == 0)
        {
          goto LABEL_127;
        }

        v114 = *(*(v59 + 56) + 8 * v112);
        v115 = [v114 description];
        v116 = sub_22F740E20();
        v118 = v117;

        MEMORY[0x231900B10](v116, v118);

        MEMORY[0x231900B10](0x6C6C61636572202CLL, 0xEA0000000000203ALL);
        if (!*(v59 + 16))
        {
          goto LABEL_128;
        }

        v119 = sub_22F1229E8(0xD00000000000001ELL, 0x800000022F7967E0);
        if ((v120 & 1) == 0)
        {
          goto LABEL_129;
        }

        v121 = *(*(v59 + 56) + 8 * v119);
        v122 = [v121 description];
        v123 = sub_22F740E20();
        v125 = v124;

        MEMORY[0x231900B10](v123, v125);

        MEMORY[0x231900B10](8236, 0xE200000000000000);
        if (!*(v59 + 16))
        {
          goto LABEL_130;
        }

        v126 = sub_22F1229E8(0xD000000000000021, 0x800000022F796780);
        if ((v127 & 1) == 0)
        {
          goto LABEL_131;
        }

        v128 = *(*(v59 + 56) + 8 * v126);
        v129 = [v128 description];
        v130 = sub_22F740E20();
        v132 = v131;

        MEMORY[0x231900B10](v130, v132);

        MEMORY[0x231900B10](0x2E73746573736120, 0xE800000000000000);
        v109 = *(&v186 + 1);
        v108 = v186;
        v83 = v111;
      }

      v85 = logb;
      v174 = v108;
      if (!*(v59 + 16))
      {
        v84 = v109;
        goto LABEL_95;
      }

      sub_22F1229E8(0xD000000000000010, 0x800000022F796880);
      if (v133)
      {
        *&v186 = 0;
        *(&v186 + 1) = 0xE000000000000000;
        sub_22F741B00();
        MEMORY[0x231900B10](0xD000000000000032, 0x800000022F79CF20);
        if (!*(v59 + 16))
        {
          goto LABEL_132;
        }

        v84 = v109;
        v134 = sub_22F1229E8(0xD000000000000025, 0x800000022F7968C0);
        if ((v135 & 1) == 0)
        {
          goto LABEL_133;
        }

        v136 = *(*(v59 + 56) + 8 * v134);

        v137 = [v136 description];
        v138 = sub_22F740E20();
        v140 = v139;

        MEMORY[0x231900B10](v138, v140);

        MEMORY[0x231900B10](46, 0xE100000000000000);
        v141 = *(&v186 + 1);
        v142 = v186;
        v85 = logb;
        v143 = v184;
      }

      else
      {

        v142 = 0xD000000000000037;
        v141 = 0x800000022F79CEE0;
        v143 = v184;
        v84 = v109;
      }

LABEL_96:

      v144 = sub_22F740B70();
      v145 = sub_22F7415F0();

      logc = v144;
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *&v186 = v160;
        *v146 = 136316162;
        swift_beginAccess();
        v159 = v142;
        v147 = v85;
        v148 = *(v143 + 2);
        v149 = *(v143 + 3);

        v150 = v84;
        v151 = sub_22F145F20(v148, v149, &v186);

        *(v146 + 4) = v151;
        *(v146 + 12) = 2080;
        v152 = sub_22F145F20(v176, v83, &v186);

        *(v146 + 14) = v152;
        *(v146 + 22) = 2080;
        v153 = sub_22F145F20(v178, v147, &v186);

        *(v146 + 24) = v153;
        *(v146 + 32) = 2080;
        v154 = sub_22F145F20(v174, v150, &v186);

        *(v146 + 34) = v154;
        *(v146 + 42) = 2080;
        v155 = sub_22F145F20(v159, v141, &v186);

        *(v146 + 44) = v155;
        _os_log_impl(&dword_22F0FC000, logc, v145, "Results for %s:\n%s\n%s\n%s\n%s", v146, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v160, -1, -1);
        MEMORY[0x2319033A0](v146, -1, -1);
      }

      else
      {
      }

      v19 = v179;
      v17 = v169;
      v14 = v170;
      v16 = v172;
      __swift_destroy_boxed_opaque_existential_0(v190);
      v22 = v168;
      v30 = v164;
      v21 = v166;
      if (v168 == v165)
      {
        goto LABEL_103;
      }
    }

    v45 = 0;
    v175 = v3 & 0xFFFFFFFFFFFFFF8;
    v177 = v3 & 0xC000000000000001;
    v173 = v3;
    while (v177)
    {
      a2 = MEMORY[0x2319016F0](v45, v3);
      a1 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_106;
      }

LABEL_46:
      v46 = v44;
      v47 = objc_autoreleasePoolPush();

      v48 = sub_22F3D26E4(v184, a2, inited);

      MEMORY[0x231900D00](v49);
      if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      log = v189;
      *(inited + 16) = *(v48 + 4);
      *(inited + 24) = a2;

      if (*(v179 + 16) >> 62)
      {
        sub_22F741A00();
      }

      sub_22F741690();

      objc_autoreleasePoolPop(v47);

      ++v45;
      v44 = v46;
      inited = v185;
      v3 = v173;
      if (a1 == v46)
      {
        goto LABEL_56;
      }
    }

    if (v45 >= *(v175 + 16))
    {
      goto LABEL_107;
    }

    a2 = *(v3 + 8 * v45 + 32);

    a1 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
      goto LABEL_46;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

void sub_22F39251C(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_22F73FC60();
  sub_22F392D4C();
    ;
  }
}

uint64_t sub_22F3925BC(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, unint64_t a3, uint64_t a4)
{
  v64 = a4;
  v76 = *MEMORY[0x277D85DE8];
  v60 = sub_22F73FC60();
  v7 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22F73F690();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Song(0);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v66 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  if (qword_2810A9B70 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  v20 = qword_2810B4E58;
  *&v21 = CACurrentMediaTime();
  sub_22F1B560C("Random Music Ranker", 19, 2u, v21, 0, v20, v75);
  v22 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGMusicCurationFeatures_consistentHash);
  v23 = -1 << *(a1 + 32);
  v24 = ~v23;
  v25 = *(a1 + 56);
  v26 = -v23;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v69 = a1;
  v70 = a1 + 56;
  v71 = v24;
  v72 = 0;
  v73 = v27 & v25;
  v74 = 0;
  v28 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  v57 = a1;

  v63 = v28;
  swift_beginAccess();
  v54 = (v9 + 8);
  v62 = v22 + 2654435769;
  v61 = ((v22 + 2654435769) << 6) + ((v22 + 2654435769) >> 2) + 2654435769u;
  v29 = MEMORY[0x277D84F98];
  v58 = (v7 + 8);
  v9 = v66;
  while (1)
  {
    a1 = v65;
    sub_22F3D4140(v65);
    sub_22F16FDD4(a1, v19);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
    if ((*(*(v30 - 8) + 48))(v19, 1, v30) == 1)
    {
      sub_22F0FF590(v69);
      sub_22F1B2BBC(0);
      v49 = v67;
      sub_22F7416A0();

      if (v49)
      {
      }

      goto LABEL_32;
    }

    sub_22F15CB04(&v19[*(v30 + 48)], v9);
    if (*(a3 + v63))
    {
      v7 = v55;
      sub_22F73F680();
      sub_22F73F620();
      v32 = v31;
      (*v54)(v7, v56);
      v33 = v32 * 1000.0;
      if (COERCE__INT64(fabs(v32 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v33 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v33 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      v7 = v33;
    }

    else
    {
      v7 = sub_22F1D226C(*v9, *(v9 + 8));
    }

    sub_22F15CAA0(v9, v12);
    v34 = (v61 + v7) ^ v62;
    if ((v34 & 0x8000000000000000) != 0)
    {
      v35 = __OFSUB__(0, v34);
      v36 = -v34;
      if (v35)
      {
        goto LABEL_39;
      }

      if (v36 < 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_2;
      }
    }

    a1 = a3;
    v37 = v59;
    sub_22F73FC50();
    sub_22F39251C(0.0, 1.0);
    v39 = v38;
    (*v58)(v37, v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v29;
    v7 = v29;
    a3 = sub_22F122A14(v12);
    v41 = *(v29 + 16);
    v42 = (v40 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_34;
    }

    v9 = v40;
    if (*(v29 + 24) < v43)
    {
      break;
    }

    v7 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F134678();
      goto LABEL_20;
    }

LABEL_22:
    isUniquelyReferenced_nonNull_native = v68;
    if (v9)
    {
      *(*(v68 + 56) + 4 * a3) = v39;
      sub_22F15CBD8(v12);
    }

    else
    {
      *(v68 + 8 * (a3 >> 6) + 64) |= 1 << a3;
      sub_22F15CAA0(v12, *(isUniquelyReferenced_nonNull_native + 48) + *(v53 + 72) * a3);
      *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * a3) = v39;
      sub_22F15CBD8(v12);
      v46 = *(isUniquelyReferenced_nonNull_native + 16);
      v35 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v35)
      {
        goto LABEL_38;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v47;
    }

    v48 = v67;
    sub_22F741680();
    v9 = v66;
    if (v48)
    {
      sub_22F0FF590(v69);

      sub_22F15CBD8(v9);
LABEL_32:

      return v29;
    }

    a3 = a1;
    v67 = 0;
    sub_22F15CBD8(v66);
    v29 = isUniquelyReferenced_nonNull_native;
  }

  sub_22F125F5C(v43, isUniquelyReferenced_nonNull_native);
  v44 = sub_22F122A14(v12);
  if ((v9 & 1) == (v45 & 1))
  {
    a3 = v44;
LABEL_20:
    v7 = v57;
    goto LABEL_22;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F392D4C()
{
  result = qword_2810A9508;
  if (!qword_2810A9508)
  {
    sub_22F73FC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9508);
  }

  return result;
}

uint64_t MusicCatalogMonitor.isEligibleToUseMusicCatalog()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22F392E80;
  v2 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD00000000000001DLL, 0x800000022F79D060, sub_22F393740, 0, v2);
}

uint64_t sub_22F392E80()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_22F392FB0;
  }

  else
  {
    v2 = sub_22F392F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F392FCC(char a1, char a2, id a3)
{
  if (a1 & 1) == 0 && a3 && (v3 = a3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0), sub_22F394268(), (swift_dynamicCast()))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
    return sub_22F7412E0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
    return sub_22F7412F0();
  }
}

void sub_22F3930AC(char a1, id a2, void (*a3)(uint64_t, void, id))
{
  if (a2)
  {
    v5 = a2;
    a3(0, 0, a2);
  }

  else
  {
    a3(1, a1 & 1, 0);
  }
}

void sub_22F393134(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_22F393238(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_22F73F360();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2 & 1);
}

void static MusicCatalogMonitor.clearCatalogMusic(from:progressReporter:)()
{
  v1 = sub_22F7416B0();
  v3 = v2;
  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(&unk_2843DE6B8, v1);
  if (!v0)
  {
    MusicCache.removeAllSongsForMemoryDisplay(progressReporter:)();
  }
}

id sub_22F39340C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v17[0] = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DF8, &qword_22F789088);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CFString(0);
  sub_22F39415C();
  v6 = a2;
  sub_22F741A90();
  if (!*(v15 + 16))
  {
    goto LABEL_13;
  }

  sub_22F122B24(v17);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  sub_22F139E70(v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (a2 != sub_22F740E20() || v16 != v8)
  {
    v9 = sub_22F742040();

    if (v9)
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

LABEL_9:
  v10 = a4;
  sub_22F741A90();
  if (!*(v15 + 16) || (sub_22F122B24(v17), (v11 & 1) == 0))
  {
LABEL_13:

    sub_22F139E70(v17);
    return 0;
  }

  swift_unknownObjectRetain();
  sub_22F139E70(v17);

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = [v12 BOOLValue];
    swift_unknownObjectRelease();
    return v13;
  }

  swift_unknownObjectRelease();
  return 0;
}

id MusicCatalogMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCatalogMonitor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCatalogMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F393740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;

  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277D7FA60]) init];
  [v8 setPrivacyAcknowledgementPolicy_];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F3941D4;
  *(v9 + 24) = v7;
  aBlock[4] = sub_22F394310;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F393134;
  aBlock[3] = &block_descriptor_16_1;
  v10 = _Block_copy(aBlock);

  [v8 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t _s11PhotosGraph19MusicCatalogMonitorC05checkcD11Eligibility16progressReporterSbSo010MAProgressI0C_tFZ_0()
{
  v24 = sub_22F740BB0();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v1 = (&v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22F740C30();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = objc_allocWithZone(MEMORY[0x277D7FA60]);

  v11 = v7;
  v12 = [v10 init];
  [v12 setPrivacyAcknowledgementPolicy_];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22F3942B4;
  *(v13 + 24) = v9;
  aBlock[4] = sub_22F394310;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F393134;
  aBlock[3] = &block_descriptor_29_0;
  v14 = _Block_copy(aBlock);

  [v12 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v14);

  sub_22F740C10();
  *v1 = 30;
  v15 = v22;
  v16 = v24;
  (*(v22 + 104))(v1, *MEMORY[0x277D85178], v24);
  MEMORY[0x2319007F0](v3, v1);
  (*(v15 + 8))(v1, v16);
  v17 = *(v21 + 8);
  v18 = v23;
  v17(v3, v23);
  sub_22F741610();

  v17(v6, v18);
  swift_beginAccess();
  v19 = *(v8 + 16);

  return v19;
}

void sub_22F393CF4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D7FA60]) init];
  [v4 setPrivacyAcknowledgementPolicy_];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_22F3941B4;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22F393134;
  v7[3] = &block_descriptor_47;
  v6 = _Block_copy(v7);

  [v4 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v6);
}

uint64_t sub_22F393E04(void *a1)
{
  if (qword_2810A9B50 != -1)
  {
    swift_once();
  }

  v3 = qword_2810B4E40;
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("Clear Catalog Music From Cache", 30, 2u, v4, 0, v3, v12);
  v5 = sub_22F1A26E0(a1);
  if (v1)
  {
    v11 = 1;
  }

  else
  {
    v6 = v5;
    v7 = sub_22F7416B0();
    v9 = v8;
    MusicCache.removeSongSources(songSourceCategories:progressReporter:)(&unk_2843DE6B8, v7);
    MusicCache.removeAllSongsForMemoryDisplay(progressReporter:)();

    v11 = 0;
  }

  sub_22F1B2BBC(v11);
}

void _s11PhotosGraph19MusicCatalogMonitorC21canAccessMediaLibrarySbyFZ_0()
{
  v0 = sub_22F740DF0();
  v1 = TCCAccessCopyInformationForBundleId();

  if (!v1)
  {
    return;
  }

  v2 = sub_22F741180();

  if (!*MEMORY[0x277D6C0E8])
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *MEMORY[0x277D6C0D0];
  v12 = *MEMORY[0x277D6C0E8];
  if (!v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *MEMORY[0x277D6C1A0];
  v11 = v3;
  if (!v4)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v5 = v4;
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2319016F0](v7, v2);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

          return;
        }

LABEL_11:
        v13 = v8;
        v10 = sub_22F39340C(&v13, v12, v5, v11);
        swift_unknownObjectRelease();
        if (v10)
        {
          goto LABEL_17;
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_20;
        }
      }

      if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_19:
      v6 = sub_22F741A00();
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v2 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_20:
}

unint64_t sub_22F39415C()
{
  result = qword_2810A9210;
  if (!qword_2810A9210)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9210);
  }

  return result;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3941D4(char a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);

  return sub_22F392FCC(a1, a2, a3);
}

unint64_t sub_22F394268()
{
  result = qword_27DAB2A28;
  if (!qword_27DAB2A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB2A28);
  }

  return result;
}

void sub_22F3942B4(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  *(v5 + 16) = a2;
  dispatch_group_leave(v4);
}

void sub_22F39431C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_22F394374(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F3F6724(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F395528(v6);
  return sub_22F741BB0();
}

BOOL sub_22F394478(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22F3944A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22F3944D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t TripFeatureProcessor.scoringDescription(including:)(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7707D0;
  *(inited + 32) = sub_22F740E20();
  v85 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = sub_22F740E20();
  *(inited + 56) = v5;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v6;
  v88 = 10;
  v89 = 0xE100000000000000;
  v7 = v2;
  if ((v2 & 2) != 0)
  {
    v8 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment);
    if (v8)
    {
      v74 = v2;
      v76 = v1;

      MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79D120);

      v86 = sub_22F10B02C(v9);
      sub_22F394374(&v86);

      v10 = v86;
      if (v86 < 0 || (v86 & 0x4000000000000000) != 0)
      {
        goto LABEL_30;
      }

      for (i = *(v86 + 16); i; i = sub_22F741A00())
      {
        v12 = 0;
        v13 = v8 & 0xC000000000000001;
        v14 = v10 & 0xC000000000000001;
        v80 = i;
        v81 = v10;
        v78 = v10 & 0xC000000000000001;
        v79 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v14)
          {
            v15 = MEMORY[0x2319016F0](v12, v10);
          }

          else
          {
            if (v12 >= *(v10 + 16))
            {
              goto LABEL_29;
            }

            v15 = *(v10 + 8 * v12 + 32);
          }

          v16 = v15;
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v13)
          {
            v18 = v15;
            v19 = sub_22F741D00();

            if (v19)
            {
              type metadata accessor for MomentRelevanceData(0);
              swift_dynamicCast();
              v20 = v86;
              if (v86)
              {
                goto LABEL_21;
              }
            }
          }

          else if (*(v8 + 16))
          {
            v21 = sub_22F1234BC(v15);
            if (v22)
            {
              v20 = *(*(v8 + 56) + 8 * v21);

              if (v20)
              {
LABEL_21:
                v23 = v8;
                v86 = 0;
                v87 = 0xE000000000000000;
                sub_22F741B00();
                MEMORY[0x231900B10](0xD000000000000014, 0x800000022F79D140);
                v24 = sub_22F742010();
                MEMORY[0x231900B10](v24);

                MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79D160);
                sub_22F73F690();
                sub_22F1E3D6C();
                v25 = sub_22F742010();
                MEMORY[0x231900B10](v25);

                MEMORY[0x231900B10](2108704, 0xE300000000000000);
                v26 = sub_22F742010();
                MEMORY[0x231900B10](v26);

                MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79D180);
                sub_22F7413B0();
                MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79D1A0);
                if (*(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio + 8))
                {
                  goto LABEL_83;
                }

                sub_22F7413B0();
                MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79D220);
                if (*(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio + 8))
                {
                  goto LABEL_83;
                }

                sub_22F7413B0();
                MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79D2A0);
                if (*(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8))
                {
                  goto LABEL_83;
                }

                sub_22F7413B0();
                MEMORY[0x231900B10](10, 0xE100000000000000);
                v27 = v86;
                v28 = v87;
                v86 = 9;
                v87 = 0xE100000000000000;
                v29 = [v16 UUID];
                if (v29)
                {
                  v30 = v29;
                  v31 = sub_22F740E20();
                  v33 = v32;
                }

                else
                {
                  v31 = 0x6E656D6F4D206F4ELL;
                  v33 = 0xEE00444955552074;
                }

                MEMORY[0x231900B10](v31, v33);

                MEMORY[0x231900B10](2618, 0xE200000000000000);
                MEMORY[0x231900B10](v27, v28);

                MEMORY[0x231900B10](v86, v87);

                v8 = v23;
                i = v80;
                v10 = v81;
                v14 = v78;
                v13 = v79;
                goto LABEL_8;
              }
            }
          }

LABEL_8:
          ++v12;
          if (v17 == i)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:

      v7 = v74;
      v1 = v76;
    }
  }

  if (v7)
  {
    v34 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
    if (v34)
    {
      v75 = v7;
      v77 = v1;

      MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79D100);
      v35 = 0;
      v82 = v34;
      while (1)
      {
        if (!*(v34 + 16))
        {
          goto LABEL_37;
        }

        v38 = (v85 + 16 * v35);
        v40 = *v38;
        v39 = v38[1];

        v41 = sub_22F1229E8(v40, v39);
        if (v42)
        {
          break;
        }

LABEL_36:

LABEL_37:
        if (++v35 == 3)
        {

          v7 = v75;
          v1 = v77;
          goto LABEL_53;
        }
      }

      v43 = *(*(v34 + 56) + 8 * v41);
      v86 = 9;
      v87 = 0xE100000000000000;

      MEMORY[0x231900B10](v40, v39);

      MEMORY[0x231900B10](2618, 0xE200000000000000);
      MEMORY[0x231900B10](v86, v87);

      v86 = 0;
      v87 = 0xE000000000000000;
      if (v43 >> 62)
      {
        v44 = sub_22F741A00();
        if (v44)
        {
LABEL_42:
          v45 = 0;
          do
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v46 = MEMORY[0x2319016F0](v45, v43);
            }

            else
            {
              if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_80;
              }

              v46 = *(v43 + 8 * v45 + 32);
            }

            v47 = v46;
            v48 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            MEMORY[0x231900B10](2313, 0xE200000000000000);
            v49 = [*&v47[OBJC_IVAR___PGTripLocationScore_locationNode] name];
            v50 = sub_22F740E20();
            v52 = v51;

            MEMORY[0x231900B10](v50, v52);

            MEMORY[0x231900B10](8250, 0xE200000000000000);
            sub_22F7413B0();
            MEMORY[0x231900B10](10, 0xE100000000000000);
            MEMORY[0x231900B10](0, 0xE000000000000000);

            ++v45;
          }

          while (v48 != v44);
          v37 = v86;
          v36 = v87;
          v34 = v82;
          goto LABEL_35;
        }
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44)
        {
          goto LABEL_42;
        }
      }

      v37 = 0;
      v36 = 0xE000000000000000;
LABEL_35:

      MEMORY[0x231900B10](v37, v36);
      goto LABEL_36;
    }
  }

LABEL_53:
  if ((v7 & 4) == 0 || (v53 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel)) == 0)
  {
LABEL_74:

    result = v88;
    v73 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v73 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (!v73)
    {

      return 0x7263736564206F4ELL;
    }

    return result;
  }

  MEMORY[0x231900B10](0x6373206C616E6946, 0xEF0A3A676E69726FLL);
  v54 = 0;
  v83 = v53;
  while (1)
  {
    if (!*(v53 + 16))
    {
      goto LABEL_58;
    }

    v57 = (v85 + 16 * v54);
    v59 = *v57;
    v58 = v57[1];

    v60 = sub_22F1229E8(v59, v58);
    if (v61)
    {
      break;
    }

LABEL_57:

LABEL_58:
    if (++v54 == 3)
    {

      goto LABEL_74;
    }
  }

  v62 = *(*(v53 + 56) + 8 * v60);
  v86 = 9;
  v87 = 0xE100000000000000;

  MEMORY[0x231900B10](v59, v58);

  MEMORY[0x231900B10](2618, 0xE200000000000000);
  MEMORY[0x231900B10](v86, v87);

  v86 = 0;
  v87 = 0xE000000000000000;
  if (!(v62 >> 62))
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63)
    {
      goto LABEL_63;
    }

    goto LABEL_72;
  }

  v63 = sub_22F741A00();
  if (!v63)
  {
LABEL_72:
    v56 = 0;
    v55 = 0xE000000000000000;
LABEL_56:

    MEMORY[0x231900B10](v56, v55);
    goto LABEL_57;
  }

LABEL_63:
  v84 = v54;
  v64 = 0;
  while (1)
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x2319016F0](v64, v62);
    }

    else
    {
      if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v65 = *(v62 + 8 * v64 + 32);
    }

    v66 = v65;
    v67 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    MEMORY[0x231900B10](2313, 0xE200000000000000);
    v68 = [*&v66[OBJC_IVAR___PGTripLocationScore_locationNode] name];
    v69 = sub_22F740E20();
    v71 = v70;

    MEMORY[0x231900B10](v69, v71);

    MEMORY[0x231900B10](8250, 0xE200000000000000);
    sub_22F7413B0();
    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](0, 0xE000000000000000);

    ++v64;
    if (v67 == v63)
    {
      v56 = v86;
      v55 = v87;
      v53 = v83;
      v54 = v84;
      goto LABEL_56;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  sub_22F741D40();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t TripFeatureProcessor.aoiLegacyDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes);
  v2 = [objc_opt_self() ignoreProgress];
  v3 = sub_22F3EFA48(v1, v2);

  v4 = sub_22F3001E8(v3);

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  if (v4 >> 62)
  {
    goto LABEL_12;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = 0;
  if (v5)
  {
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2319016F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_11;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        v5 = sub_22F741A00();
        v6 = 0;
        if (!v5)
        {
          break;
        }
      }

      else
      {
        v10 = [v7 name];
        v11 = sub_22F740E20();
        v13 = v12;

        MEMORY[0x231900B10](v11, v13);

        MEMORY[0x231900B10](10, 0xE100000000000000);
        MEMORY[0x231900B10](9, 0xE100000000000000);

        ++v6;
        if (v9 == v5)
        {
          v6 = v16[0];
          v14 = v16[1];
          goto LABEL_14;
        }
      }
    }
  }

  v14 = 0xE000000000000000;
LABEL_14:

  strcpy(v16, "Legacy AOI:\n");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if ((v14 & 0xF00000000000000) == 0)
  {

    v14 = 0xE600000000000000;
    v6 = 0xA656E6F4E09;
  }

  MEMORY[0x231900B10](v6, v14);

  return v16[0];
}

unint64_t TripFeatureProcessor.scoreModifierNamesDescription.getter()
{
  v1 = v0;
  sub_22F741B00();

  v2 = OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
    sub_22F173C28();
    sub_22F160DE4();
    v3 = sub_22F7410E0();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  MEMORY[0x231900B10](v3, v5);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  return 0xD000000000000010;
}

void sub_22F395528(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F2E57E8();
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22F3957A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F39562C(0, v2, 1, a1);
  }
}

void sub_22F39562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localIdentifier];
      v11 = sub_22F740E20();
      v13 = v12;

      v14 = [v9 localIdentifier];
      v15 = sub_22F740E20();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v19 = sub_22F742040();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F3957A8(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_22F395FA8((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_22F3F5F98(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_22F3F5F0C(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_22F3F5F98(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localIdentifier];
      v16 = sub_22F740E20();
      v18 = v17;

      v19 = [v14 localIdentifier];
      v20 = sub_22F740E20();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_22F742040();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localIdentifier];
          v5 = sub_22F740E20();
          v29 = v28;

          v30 = [v26 localIdentifier];
          v31 = sub_22F740E20();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_22F742040();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_22F13D970(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_22F13D970((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
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
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_22F395FA8((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_22F3F5F98(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_22F3F5F0C(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localIdentifier];
    v5 = sub_22F740E20();
    v51 = v50;

    v52 = [v48 localIdentifier];
    v53 = sub_22F740E20();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_22F742040();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}