uint64_t sub_29D51CE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B367C();
  v12 = sub_29D5B365C();
  v36 = a2 + 16;
  v37 = a1;
  sub_29D51D340(sub_29D525390, v35, v11);
  sub_29D5B36AC();

  v13 = sub_29D5B370C();
  v14 = sub_29D5B429C();

  if (!os_log_type_enabled(v13, v14))
  {

    (*(v7 + 8))(v10, v6);
LABEL_7:
    v39[0] = v11;
    sub_29D54F8F4(v12);
    v26 = v39[0];
    v39[0] = MEMORY[0x29EDCA190];
    if (v26 >> 62)
    {
LABEL_25:
      v27 = sub_29D5B485C();
      if (v27)
      {
LABEL_9:
        v28 = 0;
        v29 = MEMORY[0x29EDCA190];
        do
        {
          v30 = v28;
          while (1)
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x29ED5EF30](v30, v26);
            }

            else
            {
              if (v30 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v31 = *(v26 + 8 * v30 + 32);
            }

            v32 = v31;
            v28 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v30;
            if (v28 == v27)
            {
              goto LABEL_27;
            }
          }

          MEMORY[0x29ED5E5E0]();
          if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29D5B408C();
          }

          sub_29D5B40AC();
          v29 = v39[0];
        }

        while (v28 != v27);
        goto LABEL_27;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        goto LABEL_9;
      }
    }

    v29 = MEMORY[0x29EDCA190];
LABEL_27:

    *a3 = v29;
    return result;
  }

  v33 = v6;
  v34 = a3;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v39[0] = v16;
  *v15 = 136446466;
  v38 = type metadata accessor for UDCSnippetGenerator(0);
  sub_29D523B9C(0);
  v17 = sub_29D5B3E7C();
  v19 = sub_29D501890(v17, v18, v39);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2082;
  if (!(v11 >> 62))
  {
    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v12 >> 62))
    {
      goto LABEL_4;
    }

LABEL_29:
    result = sub_29D5B485C();
    v22 = v20 + result;
    if (!__OFADD__(v20, result))
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  v20 = sub_29D5B485C();
  if (v12 >> 62)
  {
    goto LABEL_29;
  }

LABEL_4:
  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v20 + result;
  if (!__OFADD__(v20, result))
  {
LABEL_5:
    v38 = v22;
    v23 = sub_29D5B4C4C();
    v25 = sub_29D501890(v23, v24, v39);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s] Generating FeedItems for %{public}s UDC concepts", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v16, -1, -1);
    MEMORY[0x29ED5FB80](v15, -1, -1);

    (*(v7 + 8))(v10, v33);
    a3 = v34;
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29D51D258(id *a1, uint64_t a2)
{
  v3 = sub_29D5B0EDC();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_29D5B0EBC();

  v8 = sub_29D5B366C();
  swift_beginAccess();
  sub_29D51B780(v8, v6);
  return swift_endAccess();
}

void sub_29D51D340(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED5EF30](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_29D51D440(void *a1)
{
  sub_29D50CCA4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *a1;
  sub_29D523E04(0, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
  sub_29D50B24C();
  sub_29D5B3FEC();
  sub_29D4B3AF4();
  sub_29D5B391C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D51D588@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v25 = a4;
  v26 = a2;
  v28 = a5;
  v7 = sub_29D5B148C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  sub_29D524FEC(0);
  v27 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  v17 = *(a3 + 16);

  v18 = v16;
  v29 = sub_29D5B261C();
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v26;
  *(v20 + 3) = v18;
  *(v20 + 4) = v17;
  (*(v8 + 32))(&v20[v19], &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29D5250C8(0);
  sub_29D5251EC(0, &qword_2A1A17E28, sub_29D5241A0, MEMORY[0x29EDC9C68]);
  sub_29D523CE4(&qword_2A1A16710, sub_29D5250C8, MEMORY[0x29EDB8A00]);
  v21 = v18;
  sub_29D5B3B7C();

  sub_29D523CE4(&qword_2A17A48A0, sub_29D524FEC, MEMORY[0x29EDB8908]);
  v22 = v27;
  v23 = sub_29D5B3B1C();

  result = (*(v12 + 8))(v15, v22);
  *v28 = v23;
  return result;
}

uint64_t sub_29D51D8B8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t))
{
  v281 = a3;
  v282 = a2;
  v222 = type metadata accessor for NavigationFeedItemData(0);
  v5 = MEMORY[0x2A1C7C4A8](v222, v4);
  v7 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v211 - v9;
  v226 = sub_29D5B1D6C();
  v223 = *(v226 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v226, v11);
  v221 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v256 = &v211 - v15;
  v225 = sub_29D5B1C2C();
  v224 = *(v225 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v225, v16);
  v220 = &v211 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v257 = &v211 - v20;
  v21 = MEMORY[0x29EDC9C68];
  sub_29D5251EC(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v246 = &v211 - v24;
  v25 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v25 - 8, v26);
  v234 = &v211 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_29D5B0E6C();
  v28 = *(v262 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v262, v29);
  v233 = &v211 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v232 = &v211 - v33;
  sub_29D5251EC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v21);
  MEMORY[0x2A1C7C4A8](v34 - 8, v35);
  v261 = &v211 - v36;
  sub_29D5251EC(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v21);
  MEMORY[0x2A1C7C4A8](v37 - 8, v38);
  v260 = &v211 - v39;
  v248 = sub_29D5B104C();
  v291 = *(v248 - 8);
  MEMORY[0x2A1C7C4A8](v248, v40);
  v247 = &v211 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_29D5B1AAC();
  v42 = *(v253 - 8);
  MEMORY[0x2A1C7C4A8](v253, v43);
  v252 = &v211 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5251EC(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v21);
  MEMORY[0x2A1C7C4A8](v45 - 8, v46);
  v251 = &v211 - v47;
  v278 = sub_29D5B134C();
  v48 = *(v278 - 8);
  v50 = MEMORY[0x2A1C7C4A8](v278, v49);
  v216 = &v211 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x2A1C7C4A8](v50, v52);
  v214 = &v211 - v54;
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v215 = &v211 - v57;
  v59 = MEMORY[0x2A1C7C4A8](v56, v58);
  v218 = &v211 - v60;
  v62 = MEMORY[0x2A1C7C4A8](v59, v61);
  v217 = &v211 - v63;
  v65 = MEMORY[0x2A1C7C4A8](v62, v64);
  v219 = &v211 - v66;
  v68 = MEMORY[0x2A1C7C4A8](v65, v67);
  v245 = &v211 - v69;
  v71 = MEMORY[0x2A1C7C4A8](v68, v70);
  v244 = &v211 - v72;
  v74 = MEMORY[0x2A1C7C4A8](v71, v73);
  v276 = &v211 - v75;
  MEMORY[0x2A1C7C4A8](v74, v76);
  v275 = &v211 - v77;
  sub_29D523E04(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDBA1D0]);
  v286 = v78;
  v79 = *(v78 - 8);
  v81 = MEMORY[0x2A1C7C4A8](v78, v80);
  v243 = &v211 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v81, v83);
  v250 = &v211 - v84;
  sub_29D5241A0(0);
  v283 = v85;
  v86 = *(v85 - 8);
  v88 = MEMORY[0x2A1C7C4A8](v85, v87);
  v279 = &v211 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x2A1C7C4A8](v88, v90);
  v249 = &v211 - v92;
  MEMORY[0x2A1C7C4A8](v91, v93);
  v255 = &v211 - v94;
  sub_29D5251EC(0, &qword_2A1A17E28, sub_29D5241A0, v21);
  v97 = MEMORY[0x2A1C7C4A8](v95 - 8, v96);
  v254 = &v211 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v97, v99);
  v258 = &v211 - v101;
  v102 = *(a1 + 16);
  if (v102)
  {
    v103 = 0;
    v263 = 0;
    v104 = a1 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v274 = *(v100 + 72);
    v277 = (v86 + 48);
    v273 = (v79 + 16);
    v272 = (v79 + 8);
    v242 = *MEMORY[0x29EDC3F28];
    v241 = (v42 + 104);
    v240 = (v42 + 8);
    v237 = *MEMORY[0x29EDC3730];
    v239 = v291 + 104;
    v236 = (v28 + 48);
    v229 = (v28 + 32);
    v228 = (v28 + 16);
    v227 = (v28 + 8);
    v285 = (v48 + 32);
    v235 = v48 + 48;
    v230 = (v48 + 16);
    v238 = v48;
    v231 = (v48 + 8);
    v264 = MEMORY[0x29EDCA190];
    v280 = MEMORY[0x29EDCA190];
    v212 = v7;
    v213 = v10;
    v105 = v256;
    v106 = v257;
    v107 = v283;
    v108 = v255;
    v109 = v258;
    v110 = v254;
    do
    {
      v287 = v104;
      v288 = v102;
      v111 = sub_29D52488C(v104, v109, &qword_2A1A17E28, sub_29D5241A0);
      v291 = MEMORY[0x29ED5F4B0](v111);
      sub_29D52488C(v109, v110, &qword_2A1A17E28, sub_29D5241A0);
      if ((*v277)(v110, 1, v107) == 1)
      {
        sub_29D52490C(v110, &qword_2A1A17E28, sub_29D5241A0);
      }

      else
      {
        v271 = v103;
        sub_29D524C68(v110, v108, sub_29D5241A0);
        v112 = v249;
        sub_29D524CD0(v108, v249, sub_29D5241A0);

        v113 = type metadata accessor for UserDomainConceptFeedItemData(0);
        v114 = v112 + v113[5];
        v115 = v250;
        v116 = v286;
        v268 = *v273;
        v268(v250, v114, v286);
        sub_29D524BC4(v112, type metadata accessor for UserDomainConceptFeedItemData);
        v117 = sub_29D5B3CEC();
        v267 = *v272;
        v267(v115, v116);
        v118 = [v117 isLowUtility];

        if (v118)
        {
          v119 = 1;
        }

        else
        {
          sub_29D48F51C(0, &qword_2A1A16348, 0x29EDB8E78);
          v119 = sub_29D5B42BC() | v263;
        }

        v263 = v119;
        v120 = v279;
        sub_29D524CD0(v108, v279, sub_29D5241A0);

        sub_29D523CE4(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9E88);
        sub_29D523CE4(&qword_2A17A4888, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9E38);
        v269 = sub_29D5B287C();
        sub_29D524BC4(v120, type metadata accessor for UserDomainConceptFeedItemData);
        v121 = sub_29D5B143C();
        v122 = sub_29D5B3CEC();
        v123 = [v122 UUID];

        v124 = v251;
        sub_29D5B0EBC();

        v125 = sub_29D5B0EDC();
        (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
        v126 = v252;
        v127 = v253;
        (*v241)(v252, v242, v253);
        v128 = v113[12];
        v129 = *(v108 + v128);
        LODWORD(v266) = *(v108 + v128 + 8);
        v270 = v121;
        sub_29D5B294C();
        (*v240)(v126, v127);
        sub_29D52490C(v124, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
        sub_29D523CE4(&qword_2A17A4890, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9EF0);
        v130 = v284;
        sub_29D5B0BEC();
        v284 = v130;
        if (v130)
        {

          sub_29D524BC4(v108, sub_29D5241A0);
          objc_autoreleasePoolPop(v291);
          sub_29D52490C(v258, &qword_2A1A17E28, sub_29D5241A0);
          goto LABEL_38;
        }

        v259 = v129;
        type metadata accessor for ConceptLatestValueFeedItemViewController(0);
        (*v239)(v247, v237, v248);
        v265 = v270;
        sub_29D5B110C();
        v131 = v261;
        sub_29D52488C(v108 + v113[7], v261, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
        v132 = 1;
        if ((*v236)(v131, 1, v262) != 1)
        {
          v133 = v232;
          v134 = v262;
          (*v229)(v232, v261, v262);
          (*v228)(v233, v133, v134);
          sub_29D5B0C6C();
          sub_29D5B16EC();
          (*v227)(v133, v134);
          v132 = 0;
        }

        v135 = sub_29D5B170C();
        (*(*(v135 - 8) + 56))(v260, v132, 1, v135);
        v136 = v276;
        sub_29D5B12BC();

        sub_29D5B124C();
        sub_29D5B12AC();
        v137 = sub_29D524D38(v108);
        v138 = sub_29D5B130C();
        sub_29D4E80E8(v137);
        v138(v289, 0);
        v139 = v280;
        if ((v266 & 1) == 0)
        {
          sub_29D5B132C();
        }

        v140 = *v285;
        (*v285)(v275, v136, v278);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_29D515230(0, *(v139 + 16) + 1, 1, v139);
        }

        v142 = *(v139 + 16);
        v141 = *(v139 + 24);
        v143 = v113;
        if (v142 >= v141 >> 1)
        {
          v139 = sub_29D515230((v141 > 1), v142 + 1, 1, v139);
        }

        *(v139 + 16) = v142 + 1;
        v144 = v238;
        v145 = ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v280 = v139;
        v270 = v145;
        v266 = *(v238 + 72);
        v146 = &v145[v139 + v266 * v142];
        v147 = v278;
        (v140)(v146, v275, v278);
        v148 = v279;
        sub_29D524CD0(v108, v279, sub_29D5241A0);
        v265 = v140;
        v149 = v108;
        v150 = v283;

        v151 = v243;
        v152 = v286;
        v268(v243, v148 + v143[5], v286);
        sub_29D524BC4(v148, type metadata accessor for UserDomainConceptFeedItemData);
        v153 = sub_29D5B3CEC();
        v267(v151, v152);
        v154 = *(v149 + *(v150 + 48));
        v155 = v246;
        v156 = v147;
        sub_29D528128(v153, v154, v282, v281, v246);
        v157 = v155;
        if ((*(v144 + 48))(v155, 1, v147) == 1)
        {

          sub_29D52490C(v155, qword_2A1A19830, MEMORY[0x29EDC3840]);
          v105 = v256;
          v109 = v258;
          v110 = v254;
        }

        else
        {
          v158 = v244;
          v159 = v265;
          (v265)(v244, v157, v147);
          (*v230)(v245, v158, v147);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = sub_29D515230(0, v264[2] + 1, 1, v264);
          }

          v161 = v264[2];
          v160 = v264[3];
          v109 = v258;
          v110 = v254;
          if (v161 >= v160 >> 1)
          {
            v264 = sub_29D515230((v160 > 1), v161 + 1, 1, v264);
          }

          (*v231)(v244, v156);
          v162 = v264;
          v264[2] = v161 + 1;
          (v159)(&v270[v162 + v161 * v266], v245, v156);
          v105 = v256;
        }

        v103 = v269 | v271;
        v108 = v255;
        sub_29D524BC4(v255, sub_29D5241A0);
        v106 = v257;
        v107 = v283;
      }

      objc_autoreleasePoolPop(v291);
      sub_29D52490C(v109, &qword_2A1A17E28, sub_29D5241A0);
      v104 = v287 + v274;
      v102 = v288 - 1;
    }

    while (v288 != 1);
    if (v263)
    {
      v271 = v103;
      v163 = v224;
      v164 = v225;
      (*(v224 + 104))(v106, *MEMORY[0x29EDC4000], v225);
      v165 = v223;
      v166 = v226;
      (*(v223 + 104))(v105, *MEMORY[0x29EDC4068], v226);

      v167 = *(v163 + 16);
      v168 = v213;
      v167(v213, v106, v164);
      (*(v165 + 16))(v168 + *(v222 + 20), v105, v166);
      v169 = sub_29D5B143C();
      sub_29D5B27CC();

      sub_29D523CE4(&qword_2A17A4878, type metadata accessor for NavigationFeedItemData, &protocol conformance descriptor for NavigationFeedItemData);
      v170 = v284;
      sub_29D5B0BEC();
      if (v170)
      {

        sub_29D524BC4(v168, type metadata accessor for NavigationFeedItemData);
        (*(v165 + 8))(v105, v226);
        (*(v224 + 8))(v257, v225);
LABEL_38:
      }

      v284 = 0;
      type metadata accessor for NavigationFeedItemViewController(0);
      (*v239)(v247, *MEMORY[0x29EDC36D0], v248);
      sub_29D5B143C();
      v178 = v217;
      sub_29D5B110C();
      sub_29D5B124C();
      v179 = v257;
      sub_29D5B1C1C();
      sub_29D5B132C();
      v180 = sub_29D5B159C();
      v182 = v181;
      v183 = sub_29D5B130C();
      sub_29D59AD10(v290, v180, v182);

      v183(v289, 0);
      sub_29D524BC4(v213, type metadata accessor for NavigationFeedItemData);
      (*(v165 + 8))(v256, v226);
      (*(v224 + 8))(v179, v225);
      v184 = v219;
      v185 = v278;
      v291 = *v285;
      (v291)(v219, v178, v278);
      v186 = v218;
      (*v230)(v218, v184, v185);
      v172 = sub_29D515230(0, 1, 1, MEMORY[0x29EDCA190]);
      v188 = v172[2];
      v187 = v172[3];
      if (v188 >= v187 >> 1)
      {
        v172 = sub_29D515230((v187 > 1), v188 + 1, 1, v172);
      }

      v189 = v238;
      v190 = v280;
      LOBYTE(v103) = v271;
      (*(v238 + 8))(v219, v185);
      v172[2] = v188 + 1;
      (v291)(v172 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v188, v186, v185);
      v173 = v226;
      v174 = v223;
      v175 = v225;
      v176 = v224;
      v177 = v222;
      result = v190;
    }

    else
    {
      v172 = MEMORY[0x29EDCA190];
      v173 = v226;
      v174 = v223;
      v175 = v225;
      v176 = v224;
      v177 = v222;
      result = v280;
    }

    v191 = v221;
    v192 = v220;
    if ((v103 & 1) == 0)
    {
      return result;
    }

    v280 = result;
    v193 = v175;
    (*(v176 + 104))(v220, *MEMORY[0x29EDC3FF8], v175);
    (*(v174 + 104))(v191, *MEMORY[0x29EDC4068], v173);

    v194 = *(v176 + 16);
    v195 = v212;
    v194(v212, v192, v193);
    (*(v174 + 16))(v195 + *(v177 + 20), v191, v173);
    v196 = sub_29D5B143C();
    sub_29D5B27CC();

    sub_29D523CE4(&qword_2A17A4878, type metadata accessor for NavigationFeedItemData, &protocol conformance descriptor for NavigationFeedItemData);
    v197 = v284;
    sub_29D5B0BEC();
    if (v197)
    {

      sub_29D524BC4(v195, type metadata accessor for NavigationFeedItemData);
      (*(v223 + 8))(v221, v226);
      (*(v224 + 8))(v220, v225);

      v264 = v172;
      goto LABEL_38;
    }

    v284 = 0;
    type metadata accessor for NavigationFeedItemViewController(0);
    (*v239)(v247, *MEMORY[0x29EDC36D0], v248);
    sub_29D5B143C();
    v198 = v214;
    sub_29D5B110C();
    sub_29D5B124C();
    v199 = v220;
    sub_29D5B1C1C();
    sub_29D5B132C();
    v200 = sub_29D5B159C();
    v202 = v201;
    v203 = sub_29D5B130C();
    sub_29D59AD10(v290, v200, v202);

    v203(v289, 0);
    sub_29D524BC4(v212, type metadata accessor for NavigationFeedItemData);
    (*(v223 + 8))(v221, v226);
    (*(v224 + 8))(v199, v225);
    v204 = *v285;
    v205 = v215;
    v206 = v278;
    (*v285)(v215, v198, v278);
    v207 = v216;
    (*v230)(v216, v205, v206);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v172 = sub_29D515230(0, v172[2] + 1, 1, v172);
    }

    v208 = v238;
    v210 = v172[2];
    v209 = v172[3];
    if (v210 >= v209 >> 1)
    {
      v172 = sub_29D515230((v209 > 1), v210 + 1, 1, v172);
    }

    (*(v208 + 8))(v205, v206);
    v172[2] = v210 + 1;
    (v204)(v172 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v210, v207, v206);
    return v280;
  }

  else
  {
    v264 = MEMORY[0x29EDCA190];
    return MEMORY[0x29EDCA190];
  }
}

uint64_t sub_29D51F8C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5251EC(0, &qword_2A17A4860, sub_29D524380, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v42 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v36 - v7;
  sub_29D5245C4(0, &qword_2A17A4868, MEMORY[0x29EDB8B18]);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v36 - v12;
  v40 = sub_29D5B371C();
  v14 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_29D5B36AC();
  v19 = v18;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B427C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v38 = v5;
    v25 = v24;
    v43 = v24;
    v44 = v18;
    *v23 = 136446210;
    v26 = v18;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v27 = HKSensitiveLogItem();
    v39 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v28 = sub_29D5B3E9C();
    v30 = sub_29D501890(v28, v29, &v43);

    *(v23 + 4) = v30;
    a2 = v39;
    _os_log_impl(&dword_29D48C000, v20, v21, "Error making feed item for record, hiding from UI: %{public}s", v23, 0xCu);
    sub_29D48F668(v25);
    v31 = v25;
    v5 = v38;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    v32 = v23;
    v10 = v37;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  (*(v14 + 8))(v17, v40);
  v44 = MEMORY[0x29EDCA190];
  v45 = MEMORY[0x29EDCA190];
  v46 = MEMORY[0x29EDCA190];
  v47 = MEMORY[0x29EDCA190];
  sub_29D524380(0, v33);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v42 + 8))(v8, v5);
  sub_29D524C24(&qword_2A17A4870, &qword_2A17A4868, MEMORY[0x29EDB8B18], MEMORY[0x29EDB8B20]);
  v34 = sub_29D5B3B1C();
  result = (*(v41 + 8))(v13, v10);
  *a2 = v34;
  return result;
}

void sub_29D51FD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = MEMORY[0x29ED5F4B0]();
  sub_29D5217E8(a6, a1, a3, a4, a5, &v13, &v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_29D51FDC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136446466;
    v41 = sub_29D523B9C(0);
    sub_29D524B58(0, &qword_2A17A4858, sub_29D523B9C);
    v23 = sub_29D5B3E7C();
    v37 = v10;
    v25 = sub_29D501890(v23, v24, &v42);
    v40 = a2;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v41 = v15;
    v27 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v6 = v38;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v5 = v39;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v11 + 8))(v14, v37);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v41 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D523CE4(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v34;
  return result;
}

uint64_t sub_29D520198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      v19 = sub_29D5B4D9C();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_29D5B4C7C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D520380()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D524BC4(v0 + OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D520470@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D5204EC(uint64_t *a1@<X0>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v10 = *a1;
  v11 = MEMORY[0x29ED5F4B0]();
  sub_29D52057C(v10, a3, a4, a5, x8_0);

  objc_autoreleasePoolPop(v11);
}

uint64_t sub_29D52057C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v141 = a4;
  v161 = a2;
  v149 = a5;
  v9 = sub_29D5B371C();
  v153 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523E04(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDBA1D0]);
  v145 = *(v13 - 8);
  v146 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v156 = &v132 - v15;
  v16 = MEMORY[0x29EDC9C68];
  sub_29D5251EC(0, &qword_2A1A17350, MEMORY[0x29EDC4098], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v147 = &v132 - v19;
  v159 = sub_29D5B1D6C();
  v155 = *(v159 - 8);
  MEMORY[0x2A1C7C4A8](v159, v20);
  v154 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5251EC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v16);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v142 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v160 = &v132 - v27;
  v143 = type metadata accessor for UserDomainConceptFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v143, v28);
  v144 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_29D5B200C();
  v139 = *(v140 - 1);
  MEMORY[0x2A1C7C4A8](v140, v30);
  v138 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5251EC(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], v16);
  MEMORY[0x2A1C7C4A8](v32 - 8, v33);
  v137 = &v132 - v34;
  sub_29D4A05F4(0);
  v37 = MEMORY[0x2A1C7C4A8](v35 - 8, v36);
  v158 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v132 = &v132 - v41;
  MEMORY[0x2A1C7C4A8](v40, v42);
  v157 = &v132 - v43;
  v44 = sub_29D5B0EDC();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x2A1C7C4A8](v44, a1);
  v48 = (&v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x2A1C7C4A8](v46, v49);
  v52 = &v132 - v51;
  MEMORY[0x2A1C7C4A8](v50, v53);
  v56 = &v132 - v55;
  if (v54 >> 62)
  {
    goto LABEL_51;
  }

  v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v150 = v5;
  if (!v57)
  {
LABEL_52:
    sub_29D5B36AC();
    v119 = v161;
    v120 = sub_29D5B370C();
    v121 = sub_29D5B427C();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v163 = v123;
      *v122 = 136446466;
      v162 = sub_29D523B9C(0);
      sub_29D524B58(0, &qword_2A17A4858, sub_29D523B9C);
      v124 = sub_29D5B3E7C();
      v126 = sub_29D501890(v124, v125, &v163);

      *(v122 + 4) = v126;
      *(v122 + 12) = 2082;
      v127 = sub_29D5B452C();
      v129 = sub_29D501890(v127, v128, &v163);

      *(v122 + 14) = v129;
      _os_log_impl(&dword_29D48C000, v120, v121, "[%{public}s] Unable to create a UDC Feed Item (No records associated) with concept: %{public}s", v122, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v123, -1, -1);
      MEMORY[0x29ED5FB80](v122, -1, -1);
    }

    (*(v153 + 8))(v12, v9);
    v130 = v149;
    sub_29D5241A0(0);
    return (*(*(v131 - 8) + 56))(v130, 1, 1, v131);
  }

LABEL_3:
  v136 = v54;
  if ((v54 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x29ED5EF30](0);
  }

  else
  {
    if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v58 = *(v54 + 32);
  }

  v148 = v58;
  v59 = [v161 UUID];
  sub_29D5B0EBC();

  if (*(a3 + 16) && (v60 = sub_29D57A308(v56), (v61 & 1) != 0))
  {
    v62 = *(v45 + 8);
    v45 += 8;
    v12 = v62;
    v63 = *(*(a3 + 56) + 8 * v60);
    (v62)(v56, v44);
    v64 = [v63 listType];
    v65 = [v63 linkCollection];
    v135 = v64;
    v134 = v63;
    if (v65)
    {
      v66 = v65;
      v6 = [v65 links];

      sub_29D48F51C(0, &qword_2A17A48A8, 0x29EDBAE70);
      a3 = sub_29D5B402C();

      v67 = a3;
      if (!(a3 >> 62))
      {
        v151 = a3 & 0xFFFFFFFFFFFFFF8;
        v153 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
        v9 = 0;
        v152 = v67 & 0xC000000000000001;
        while (1)
        {
          if (v153 == v9)
          {

            goto LABEL_23;
          }

          if (v152)
          {
            a3 = v67;
            v68 = MEMORY[0x29ED5EF30](v9);
          }

          else
          {
            if (v9 >= *(v151 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v136 = v54;
              v118 = sub_29D5B485C();
              v54 = v136;
              v150 = v6;
              if (!v118)
              {
                goto LABEL_52;
              }

              goto LABEL_3;
            }

            a3 = v67;
            v68 = *(v67 + 8 * v9 + 32);
          }

          v56 = v68;
          v69 = [v68 targetUUID];
          sub_29D5B0EBC();

          v70 = [v161 UUID];
          sub_29D5B0EBC();

          v6 = sub_29D5B0EAC();
          (v12)(v48, v44);
          (v12)(v52, v44);
          if (v6)
          {

            v45 = 0;
            v133 = 0;
            goto LABEL_25;
          }

          v71 = __OFADD__(v9++, 1);
          v67 = a3;
          if (v71)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_60:
      v6 = v67;
      v151 = v67 & 0xFFFFFFFFFFFFFF8;
      v153 = sub_29D5B485C();
      v67 = v6;
      goto LABEL_11;
    }

LABEL_23:
    v9 = 0;
    v133 = 0;
    v45 = 1;
  }

  else
  {
    (*(v45 + 8))(v56, v44);
    v9 = 0;
    v135 = 0;
    v134 = 0;
    v45 = 1;
    v133 = 1;
  }

LABEL_25:
  sub_29D523E04(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDBA1D0]);
  v73 = v72;
  v74 = *(*(v72 - 8) + 56);
  v56 = v157;
  v74(v157, 1, 1, v72);
  v75 = v148;
  v163 = v148;
  sub_29D48F51C(0, &qword_2A1A16308, 0x29EDBAB60);
  if (sub_29D5B22FC())
  {
    sub_29D524BC4(v56, sub_29D4A05F4);
    v74(v56, 1, 1, v73);
    v76 = sub_29D5B0EFC();
    v77 = v137;
    (*(*(v76 - 8) + 56))(v137, 1, 1, v76);
    v78 = v138;
    sub_29D5B1FFC();
    v12 = sub_29D5B2A0C();
    v152 = v79;
    (*(v139 + 1))(v78, v140);
    sub_29D52490C(v77, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v151 = 0;
    v141 = 0;
  }

  else
  {
    if (sub_29D5B44FC())
    {
      sub_29D48F51C(0, &qword_2A1A162F0, 0x29EDBAC10);
      v80 = v132;
      sub_29D5B3D1C();
      sub_29D524BC4(v56, sub_29D4A05F4);
      v74(v80, 0, 1, v73);
      sub_29D524C68(v80, v56, sub_29D4A05F4);
    }

    v12 = sub_29D5B44EC();
    v152 = v81;
    v82 = v75;
    v151 = sub_29D525250(v75);
    v141 = v83;
  }

  v84 = [v75 meaningfulDate];
  v44 = v159;
  v85 = v160;
  if (v84)
  {
    v86 = v84;
    sub_29D5B0E4C();

    v85 = v160;
    v87 = 0;
  }

  else
  {
    v87 = 1;
  }

  v52 = sub_29D5B0E6C();
  v88 = *(v52 - 1);
  v48 = v88;
  v140 = v88[7];
  v139 = (v88 + 7);
  (v140)(v85, v87, 1, v52);
  sub_29D524CD0(v56, v158, sub_29D4A05F4);
  v89 = [v161 categoryTypes];
  sub_29D48F51C(0, &qword_2A17A3C90, 0x29EDBA070);
  a3 = sub_29D5B402C();

  if (!(a3 >> 62))
  {
    v67 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_57:
  v67 = sub_29D5B485C();
LABEL_35:
  v90 = v147;
  v153 = v12;
  if (v67)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x29ED5EF30](0, a3);
      goto LABEL_39;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v91 = *(a3 + 32);
LABEL_39:
      v92 = v91;
      v93 = v45;

      [v92 integerValue];

      v44 = v159;
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_60;
  }

  v93 = v45;

LABEL_41:
  sub_29D5B1D4C();
  v94 = v155;
  v95 = *(v155 + 48);
  if (v95(v90, 1, v44) == 1)
  {
    (*(v94 + 104))(v154, *MEMORY[0x29EDC4078], v44);
    if (v95(v90, 1, v44) != 1)
    {
      sub_29D52490C(v90, &qword_2A1A17350, MEMORY[0x29EDC4098]);
    }
  }

  else
  {
    (*(v94 + 32))(v154, v90, v44);
  }

  sub_29D48F51C(0, &qword_2A1A162D0, 0x29EDBAC68);
  v96 = v161;
  sub_29D5B3D1C();
  v97 = sub_29D5B453C();
  v99 = v98;
  v100 = v160;
  if (v48[6](v160, 1, v52) == 1)
  {
    v101 = [v96 modificationDate];
    v102 = v142;
    sub_29D5B0E4C();

    v100 = v160;
    sub_29D524BC4(v157, sub_29D4A05F4);
    (v140)(v102, 0, 1, v52);
  }

  else
  {
    sub_29D524BC4(v157, sub_29D4A05F4);

    v102 = v142;
    sub_29D52488C(v100, v142, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  }

  v103 = v93;
  v104 = v144;
  (*(v155 + 32))(v144, v154, v159);
  v105 = v143;
  (*(v145 + 32))(v104 + *(v143 + 20), v156, v146);
  v106 = (v104 + v105[6]);
  *v106 = v97;
  v106[1] = v99;
  sub_29D4D1F64(v102, v104 + v105[7]);
  sub_29D524C68(v158, v104 + v105[8], sub_29D4A05F4);
  v107 = (v104 + v105[9]);
  v108 = v152;
  *v107 = v153;
  v107[1] = v108;
  v109 = (v104 + v105[10]);
  v110 = v141;
  *v109 = v151;
  v109[1] = v110;
  v111 = v104 + v105[11];
  *v111 = v135;
  *(v111 + 8) = v133;
  v112 = v104 + v105[12];
  *v112 = v9;
  *(v112 + 8) = v103;
  sub_29D52490C(v100, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D5241A0(0);
  v114 = v113;
  v115 = *(v113 + 48);
  v116 = v149;
  sub_29D524C68(v104, v149, type metadata accessor for UserDomainConceptFeedItemData);
  *(v116 + v115) = v136;
  (*(*(v114 - 8) + 56))(v116, 0, 1, v114);
}

uint64_t sub_29D5217E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X6>, char **a6@<X8>, uint64_t *a7)
{
  v114 = a2;
  v107 = a5;
  v109 = a4;
  v111 = a3;
  v105 = a6;
  sub_29D5251EC(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v108 = &v103 - v10;
  v104 = sub_29D5B109C();
  v106 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104, v11);
  v103 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EDC();
  v120 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B1AAC();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v127 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v122 = &v103 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v103 - v26;
  sub_29D5B140C();
  v28 = *MEMORY[0x29EDC3F28];
  v125 = *(v18 + 104);
  v126 = v18 + 104;
  v125(v27, v28, v17);
  v133 = a1;
  v124 = sub_29D5B143C();
  v29 = sub_29D5B10AC();
  v30 = sub_29D5B1A8C();
  v123 = v31;
  v121 = v17;
  v116 = v16;
  v117 = v13;
  if (v29)
  {
    *&v131 = 0x656C69666F72505BLL;
    *(&v131 + 1) = 0xE90000000000003ALL;
    v119 = v30;
    v29 = v29;
    v32 = [v29 identifier];
    sub_29D5B0EBC();

    v33 = v18;
    v34 = sub_29D5B0E8C();
    v36 = v35;
    (*(v120 + 8))(v16, v13);
    v37 = v34;
    v18 = v33;
    MEMORY[0x29ED5E510](v37, v36);
    v17 = v121;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v30 = v119;
    v39 = *(&v131 + 1);
    v38 = v131;
  }

  else
  {
    v39 = 0x800000029D5BBCB0;
    v38 = 0xD000000000000013;
  }

  *&v131 = v38;
  *(&v131 + 1) = v39;
  MEMORY[0x29ED5E510](v30, v123);

  v41 = *(&v131 + 1);
  v40 = v131;
  v124 = *(v18 + 8);
  (v124)(v27, v17);
  v123 = type metadata accessor for FeedItemContextChangeGenerator();
  inited = swift_initStackObject();
  sub_29D497868(v132, inited + 16);
  v112 = v40;
  *(inited + 56) = __PAIR128__(v41, v40);
  v118 = v41;
  v119 = inited;
  sub_29D5B140C();
  v125(v122, *MEMORY[0x29EDC3F00], v17);
  v43 = sub_29D5B143C();
  v44 = sub_29D5B10AC();
  v45 = sub_29D5B1A8C();
  v47 = v46;
  if (v44)
  {
    *&v130 = 0x656C69666F72505BLL;
    *(&v130 + 1) = 0xE90000000000003ALL;
    v113 = v45;
    v44 = v44;
    v48 = [v44 identifier];
    v49 = v116;
    sub_29D5B0EBC();

    v50 = sub_29D5B0E8C();
    v52 = v51;
    (*(v120 + 8))(v49, v117);
    v53 = v50;
    v17 = v121;
    MEMORY[0x29ED5E510](v53, v52);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v45 = v113;
    v55 = *(&v130 + 1);
    v54 = v130;
  }

  else
  {
    v55 = 0x800000029D5BBCB0;
    v54 = 0xD000000000000013;
  }

  *&v130 = v54;
  *(&v130 + 1) = v55;
  MEMORY[0x29ED5E510](v45, v47);

  v56 = v130;
  (v124)(v122, v17);
  v57 = swift_initStackObject();
  sub_29D497868(&v131, v57 + 16);
  v110 = v56;
  *(v57 + 56) = v56;
  v122 = *(&v56 + 1);
  sub_29D5B140C();
  v125(v127, *MEMORY[0x29EDC3F40], v17);
  v58 = sub_29D5B143C();
  v59 = sub_29D5B10AC();
  v60 = sub_29D5B1A8C();
  v62 = v61;
  v113 = v57;
  if (v59)
  {
    v128 = 0x656C69666F72505BLL;
    v129 = 0xE90000000000003ALL;
    v63 = v60;
    v59 = v59;
    v64 = [v59 identifier];
    v65 = v116;
    sub_29D5B0EBC();

    v66 = sub_29D5B0E8C();
    v68 = v67;
    (*(v120 + 8))(v65, v117);
    v69 = v66;
    v17 = v121;
    MEMORY[0x29ED5E510](v69, v68);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v60 = v63;
    v70 = v128;
    v71 = v129;
  }

  else
  {
    v71 = 0x800000029D5BBCB0;
    v70 = 0xD000000000000013;
  }

  v128 = v70;
  v129 = v71;
  MEMORY[0x29ED5E510](v60, v62);

  v73 = v128;
  v72 = v129;
  (v124)(v127, v17);
  v74 = swift_initStackObject();
  sub_29D497868(&v130, v74 + 16);
  v126 = v73;
  v127 = v72;
  *(v74 + 7) = v73;
  *(v74 + 8) = v72;
  v75 = v119;
  sub_29D499EC0((v119 + 16), *(v119 + 40));
  sub_29D499EC0((v75 + 16), *(v75 + 40));
  v76 = sub_29D5B13BC();
  sub_29D5B13AC();

  v77 = v115;
  v78 = sub_29D5B404C();
  v79 = v77;
  if (v77)
  {

    swift_setDeallocating();
    sub_29D48F668(v74 + 2);

    v80 = v113;
    swift_setDeallocating();
    sub_29D48F668((v80 + 16));

    swift_setDeallocating();
    sub_29D48F668((v75 + 16));
LABEL_14:

    *a7 = v79;
    return result;
  }

  v124 = v78;
  v125 = v74;

  v81 = v113;
  sub_29D499EC0((v113 + 16), *(v113 + 40));
  sub_29D499EC0((v81 + 16), *(v81 + 40));
  v82 = sub_29D5B13BC();
  sub_29D5B13AC();

  v83 = sub_29D5B404C();

  v128 = v124;
  sub_29D54F7FC(v83);
  v123 = 0;
  v124 = v128;
  v84 = v125;
  sub_29D499EC0(v125 + 2, *(v125 + 5));
  sub_29D499EC0(v84 + 2, *(v84 + 5));
  v85 = sub_29D5B13BC();
  sub_29D5B13AC();

  v86 = v123;
  v87 = sub_29D5B404C();
  v79 = v86;
  if (v86)
  {

    swift_setDeallocating();
    sub_29D48F668(v84 + 2);

    swift_setDeallocating();
    sub_29D48F668((v81 + 16));

    v88 = v119;
    swift_setDeallocating();
    sub_29D48F668((v88 + 16));

    goto LABEL_14;
  }

  v90 = v87;

  v128 = v124;
  sub_29D54F7FC(v90);
  v91 = v128;
  v92 = sub_29D5B143C();
  v93 = v108;
  sub_29D522478(v107, v92, v108);

  v94 = v106;
  v95 = v104;
  if ((*(v106 + 48))(v93, 1, v104) == 1)
  {

    result = sub_29D52490C(v93, &qword_2A1A17398, MEMORY[0x29EDC37D8]);
  }

  else
  {
    v96 = v103;
    (*(v94 + 32))(v103, v93, v95);
    sub_29D5251EC(0, &qword_2A1A16218, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9E90]);
    v97 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_29D5B62A0;
    v99 = *(v94 + 16);
    v133 = v98;
    v99(v98 + v97, v96, v95);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_29D51541C(0, *(v91 + 2) + 1, 1, v91);
    }

    v101 = *(v91 + 2);
    v100 = *(v91 + 3);
    if (v101 >= v100 >> 1)
    {
      v91 = sub_29D51541C((v100 > 1), v101 + 1, 1, v91);
    }

    result = (*(v106 + 8))(v103, v95);
    *(v91 + 2) = v101 + 1;
    v102 = &v91[40 * v101];
    *(v102 + 4) = v133;
    *(v102 + 5) = 0;
    *(v102 + 6) = 0;
    *(v102 + 7) = 0;
    v102[64] = 64;
  }

  *v105 = v91;
  return result;
}

void sub_29D522478(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = type metadata accessor for UDCSnippetGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v37, v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B1AAC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B0EDC();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v36 = a3;
  v18 = a1;
  v35 = a2;
  v19 = sub_29D5B10AC();
  if (!v19)
  {

    a3 = v36;
LABEL_6:
    v31 = sub_29D5B109C();
    (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
    return;
  }

  v20 = v19;
  v21 = [v19 identifier];

  sub_29D5B0EBC();
  v22 = sub_29D5B0E8C();
  v24 = v23;
  (*(v14 + 8))(v17, v13);
  v39 = v22;
  v40 = v24;
  MEMORY[0x29ED5E510](58, 0xE100000000000000);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC3F28], v8);
  v25 = sub_29D5B1A9C();
  v27 = v26;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x29ED5E510](v25, v27);

  sub_29D48F51C(0, &qword_2A1A19650, 0x29EDBAD38);
  v28 = v18;
  v29 = v38;
  sub_29D5B3D1C();
  sub_29D5B0E5C();
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D523CE4(&qword_2A1A18890, type metadata accessor for UDCSnippetGeneratorData, &unk_29D5B96E0);
  v30 = v41;
  sub_29D5B0BEC();
  v41 = v30;
  if (v30)
  {
    sub_29D524BC4(v29, type metadata accessor for UDCSnippetGeneratorData);
  }

  else
  {

    v32 = v35;
    v33 = v36;
    sub_29D5B107C();

    sub_29D524BC4(v29, type metadata accessor for UDCSnippetGeneratorData);
    v34 = sub_29D5B109C();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }
}

uint64_t sub_29D5228C0(void *a1)
{
  sub_29D525548(0, &qword_2A1A16230, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D525484();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  sub_29D5254D8(&qword_2A1A16500, MEMORY[0x29EDBA1D8]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for UDCSnippetGeneratorData(0);
    v10[14] = 1;
    sub_29D5B0E6C();
    sub_29D523CE4(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D522AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_29D5B0E6C();
  v27 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  v33 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v30 = &v25 - v9;
  sub_29D525548(0, &qword_2A1A16250, MEMORY[0x29EDC9E80]);
  v34 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for UDCSnippetGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D525484();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v26 = v14;
  v18 = v17;
  v19 = v29;
  v20 = v31;
  v36 = 0;
  sub_29D5254D8(&qword_2A1A164F8, MEMORY[0x29EDBA1F0]);
  v21 = v30;
  sub_29D5B4B6C();
  v22 = *(v19 + 32);
  v25 = v18;
  v22(v18, v21, v33);
  v35 = 1;
  sub_29D523CE4(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  sub_29D5B4B6C();
  (*(v32 + 8))(v13, v34);
  v23 = v25;
  (*(v27 + 32))(v25 + *(v26 + 20), v6, v20);
  sub_29D524CD0(v23, v28, type metadata accessor for UDCSnippetGeneratorData);
  sub_29D48F668(a1);
  return sub_29D524BC4(v23, type metadata accessor for UDCSnippetGeneratorData);
}

uint64_t sub_29D522F58(uint64_t a1)
{
  v2 = sub_29D525484();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D522F94(uint64_t a1)
{
  v2 = sub_29D525484();

  return MEMORY[0x2A1C73280](a1, v2);
}

unint64_t sub_29D523000(int64_t a1, uint64_t a2)
{
  v41 = sub_29D5B0EDC();
  v4 = *(v41 - 8);
  result = MEMORY[0x2A1C7C4A8](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_29D5B47EC();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_29D523CE4(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      v24 = sub_29D5B3D8C();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

void sub_29D523320(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29D5B0EDC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_29D57A308(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_29D593928();
      goto LABEL_7;
    }

    sub_29D592C00(v18, a3 & 1);
    v24 = sub_29D57A308(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_29D5234EC(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_29D5B4CCC();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_29D5234EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29D5B0EDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_29D5235A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v57 = *v2;
  v6 = sub_29D5B13CC();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29D5B13EC();
  v52 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54, v9);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v12 = MEMORY[0x2A1C7C4A8](v50, v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v46 - v16;
  v18 = sub_29D5B371C();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D524CD0(a1, v17, type metadata accessor for HealthRecordsGeneratorContext);
  v23 = sub_29D5B370C();
  v24 = sub_29D5B429C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v47 = a2;
    v28 = v27;
    v59 = v27;
    *v26 = 136446466;
    v58 = type metadata accessor for UDCSnippetGenerator(0);
    sub_29D523B9C(0);
    v29 = sub_29D5B3E7C();
    v46 = v18;
    v31 = sub_29D501890(v29, v30, &v59);
    v49 = v3;
    v32 = v31;

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    sub_29D524CD0(v17, v14, type metadata accessor for HealthRecordsGeneratorContext);
    v33 = sub_29D5B3E7C();
    v35 = v34;
    sub_29D524BC4(v17, type metadata accessor for HealthRecordsGeneratorContext);
    v36 = sub_29D501890(v33, v35, &v59);
    v3 = v49;

    *(v26 + 14) = v36;
    _os_log_impl(&dword_29D48C000, v23, v24, "Init %{public}s for context %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    v37 = v28;
    a2 = v47;
    MEMORY[0x29ED5FB80](v37, -1, -1);
    v38 = v26;
    a1 = v48;
    MEMORY[0x29ED5FB80](v38, -1, -1);

    (*(v19 + 8))(v22, v46);
  }

  else
  {

    sub_29D524BC4(v17, type metadata accessor for HealthRecordsGeneratorContext);
    (*(v19 + 8))(v22, v18);
  }

  sub_29D524CD0(a1, v3 + OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5B143C();
  sub_29D5251EC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v39 = sub_29D5B104C();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_29D5B62A0;
  (*(v40 + 104))(v42 + v41, *MEMORY[0x29EDC3730], v39);
  (*(v55 + 104))(v53, *MEMORY[0x29EDC3898], v56);
  v43 = v51;
  sub_29D5B13DC();
  (*(v52 + 32))(v3 + OBJC_IVAR____TtC13HealthRecords19UDCSnippetGenerator_domain, v43, v54);
  v44 = sub_29D51B940(a1, a2);
  sub_29D524BC4(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v3[2] = v44;
  return v3;
}

void sub_29D523BBC(uint64_t a1)
{
  if (!qword_2A1A16CB0)
  {
    sub_29D4F7770(255);
    sub_29D523CE4(&qword_2A1A16800, sub_29D4F7770, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B388C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16CB0);
    }
  }
}

void sub_29D523C50(uint64_t a1)
{
  if (!qword_2A1A16FD0)
  {
    sub_29D523BBC(255);
    sub_29D523CE4(&qword_2A1A16CB8, sub_29D523BBC, MEMORY[0x29EDB8940]);
    v1 = sub_29D5B380C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16FD0);
    }
  }
}

uint64_t sub_29D523CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D523D2C(uint64_t a1)
{
  if (!qword_2A1A16E90)
  {
    sub_29D523C50(255);
    sub_29D523E04(255, &qword_2A1A163D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDC9A40]);
    sub_29D523CE4(&qword_2A1A16FD8, sub_29D523C50, MEMORY[0x29EDC3CA8]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16E90);
    }
  }
}

void sub_29D523E04(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D523E6C(uint64_t a1)
{
  if (!qword_2A1A16998)
  {
    sub_29D50B1A4(255);
    sub_29D523F58(255);
    sub_29D523CE4(&qword_2A1A168C8, sub_29D50B1A4, MEMORY[0x29EDB89C0]);
    sub_29D523CE4(&qword_2A1A16F88, sub_29D523F58, MEMORY[0x29EDB88D8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16998);
    }
  }
}

void sub_29D523F58(uint64_t a1)
{
  if (!qword_2A1A16F80)
  {
    sub_29D523D2C(255);
    sub_29D4B3AF4();
    sub_29D523CE4(&qword_2A1A16E98, sub_29D523D2C, MEMORY[0x29EDB8908]);
    v1 = sub_29D5B382C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16F80);
    }
  }
}

void sub_29D524014(uint64_t a1)
{
  if (!qword_2A1A16AC8)
  {
    sub_29D524100(255);
    sub_29D523E6C(255);
    sub_29D523CE4(&qword_2A1A16850, sub_29D524100, MEMORY[0x29EDB8A00]);
    sub_29D523CE4(&qword_2A1A169A0, sub_29D523E6C, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16AC8);
    }
  }
}

void sub_29D524100(uint64_t a1)
{
  if (!qword_2A1A16848)
  {
    sub_29D5251EC(255, &qword_2A1A17E28, sub_29D5241A0, MEMORY[0x29EDC9C68]);
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16848);
    }
  }
}

void sub_29D5241A0(uint64_t a1)
{
  if (!qword_2A1A17E30)
  {
    type metadata accessor for UserDomainConceptFeedItemData(255);
    sub_29D523E04(255, &unk_2A1A163E8, &qword_2A1A16308, 0x29EDBAB60, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A17E30);
    }
  }
}

void sub_29D524240(uint64_t a1)
{
  if (!qword_2A1A16B08)
  {
    sub_29D524014(255);
    sub_29D523CE4(&qword_2A1A16AD0, sub_29D524014, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B08);
    }
  }
}

void sub_29D5242D4(uint64_t a1)
{
  if (!qword_2A1A16B80)
  {
    sub_29D524240(255);
    sub_29D524380(255, v1);
    sub_29D523CE4(&qword_2A1A16B10, sub_29D524240, MEMORY[0x29EDB89A0]);
    v2 = sub_29D5B38DC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16B80);
    }
  }
}

void sub_29D524380(uint64_t a1, uint64_t a2)
{
  if (!qword_2A1A16470)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D5251EC(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A16470);
    }
  }
}

void sub_29D5244B8(uint64_t a1)
{
  if (!qword_2A1A16D60)
  {
    sub_29D5242D4(255);
    v1 = MEMORY[0x29EDB89F8];
    sub_29D5245C4(255, &qword_2A1A167C8, MEMORY[0x29EDB89F8]);
    sub_29D523CE4(&qword_2A1A16B88, sub_29D5242D4, MEMORY[0x29EDB8990]);
    sub_29D524C24(&qword_2A1A167D0, &qword_2A1A167C8, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D5B387C();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16D60);
    }
  }
}

void sub_29D5245C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D524380(255, a2);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D52463C(uint64_t a1)
{
  if (!qword_2A1A16B90)
  {
    sub_29D5244B8(255);
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D523CE4(&qword_2A1A16D68, sub_29D5244B8, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16B90);
    }
  }
}

void sub_29D52470C(uint64_t a1)
{
  if (!qword_2A1A16CD0)
  {
    sub_29D52463C(255);
    sub_29D4B2D8C(255);
    sub_29D523CE4(&qword_2A1A16B98, sub_29D52463C, MEMORY[0x29EDB8990]);
    sub_29D523CE4(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16CD0);
    }
  }
}

void sub_29D5247F8(uint64_t a1)
{
  if (!qword_2A1A17030)
  {
    sub_29D52470C(255);
    sub_29D523CE4(&qword_2A1A16CD8, sub_29D52470C, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17030);
    }
  }
}

uint64_t sub_29D52488C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D5251EC(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D52490C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5251EC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D524984@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_29D51D588(a1, v6, v7, v8, a2);
}

uint64_t sub_29D524A0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  result = sub_29D51D8B8(*a1, v2 + v7, *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
  }

  return result;
}

void sub_29D524AC4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  sub_29D51FD00(*a1, a1[1], a1[2], a1[3], *(v2 + 24), v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  if (!v3)
  {
    *a2 = v7;
  }
}

uint64_t sub_29D524B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D524BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D524C24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D5245C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D524C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D524CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D524D38(uint64_t a1)
{
  v20 = MEMORY[0x29EDCA1A0];
  v1 = sub_29D5B158C();
  sub_29D59AD10(v19, v1, v2);

  v3 = sub_29D5B151C();
  sub_29D59AD10(v19, v3, v4);

  type metadata accessor for UserDomainConceptFeedItemData(0);
  sub_29D523E04(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68, MEMORY[0x29EDBA1D0]);
  v5 = sub_29D5B3CEC();
  v6 = [v5 isLowUtility];

  if (v6 & 1) != 0 || (sub_29D48F51C(0, &qword_2A1A16348, 0x29EDB8E78), (sub_29D5B42BC()))
  {
    v7 = sub_29D5B160C();
    sub_29D59AD10(v19, v7, v8);
  }

  sub_29D523CE4(&qword_2A17A4880, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9E88);
  sub_29D523CE4(&qword_2A17A4888, type metadata accessor for UserDomainConceptFeedItemData, &unk_29D5B9E38);
  if (sub_29D5B287C())
  {
    v9 = sub_29D5B15FC();
    sub_29D59AD10(v19, v9, v10);
  }

  v11 = v20;
  sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B5E20;
  *(inited + 32) = sub_29D5B160C();
  *(inited + 40) = v13;
  *(inited + 48) = sub_29D5B15FC();
  *(inited + 56) = v14;
  v15 = sub_29D5959C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(v11) = sub_29D520198(v15, v11);

  if (v11)
  {
    v16 = sub_29D5B161C();
    sub_29D59AD10(v19, v16, v17);
  }

  return v20;
}

void sub_29D524FEC(uint64_t a1)
{
  if (!qword_2A17A4898)
  {
    sub_29D5250C8(255);
    sub_29D5251EC(255, &qword_2A1A17E28, sub_29D5241A0, MEMORY[0x29EDC9C68]);
    sub_29D523CE4(&qword_2A1A16710, sub_29D5250C8, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4898);
    }
  }
}

void sub_29D5250C8(uint64_t a1)
{
  if (!qword_2A1A16708)
  {
    sub_29D523E04(255, &unk_2A1A163E8, &qword_2A1A16308, 0x29EDBAB60, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16708);
    }
  }
}

void sub_29D525164(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_29D5204EC(a1, v6, v7, v8, a2);
}

void sub_29D5251EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D525250(uint64_t result)
{
  if (result)
  {
    sub_29D5B44DC();
    if (v1)
    {
      sub_29D5B1CBC();
      v2 = sub_29D5B1C8C();
      sub_29D5B140C();
      sub_29D499EC0(v9, v9[3]);
      v3 = sub_29D5B136C();
      v4 = sub_29D5B1C9C();

      sub_29D48F668(v9);
      v5 = [v4 ucumDisplayConverter];
      v6 = sub_29D5B3E1C();

      v7 = [v5 synonymForUCUMUnitString_];

      v8 = sub_29D5B3E5C();
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29D5253D4(uint64_t a1)
{
  sub_29D523E04(319, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  if (v1 <= 0x3F)
  {
    sub_29D5B0E6C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D525484()
{
  result = qword_2A1A188A8[0];
  if (!qword_2A1A188A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A188A8);
  }

  return result;
}

uint64_t sub_29D5254D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D523E04(255, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D525548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D525484();
    v7 = a3(a1, &type metadata for UDCSnippetGeneratorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D5255C0()
{
  result = qword_2A17A48B0;
  if (!qword_2A17A48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48B0);
  }

  return result;
}

unint64_t sub_29D525618()
{
  result = qword_2A1A18898;
  if (!qword_2A1A18898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18898);
  }

  return result;
}

unint64_t sub_29D525670()
{
  result = qword_2A1A188A0;
  if (!qword_2A1A188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A188A0);
  }

  return result;
}

uint64_t sub_29D5256C4(uint64_t a1)
{
  sub_29D526A14(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v37 = &v35 - v4;
  v5 = sub_29D5B148C();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v11 = v10 - 8;
  v36 = *(v10 - 8);
  v12 = *(v36 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v35 - v16;
  v18 = *(v6 + 16);
  v18(v9, a1, v5);
  v18(v17, v9, v5);
  sub_29D5B140C();
  sub_29D499EC0(v40, v40[3]);
  v19 = sub_29D5B136C();
  v20 = [objc_allocWithZone(MEMORY[0x29EDC3E10]) initWithHealthStore_];

  (*(v6 + 8))(v9, v5);
  sub_29D48F668(v40);
  *&v17[*(v11 + 28)] = v20;
  if (sub_29D5B144C())
  {
    v21 = sub_29D5B143C();
    v22 = sub_29D5B10DC();
    v23 = sub_29D5B10CC();

    if (v23)
    {
      sub_29D527F78(0, &qword_2A1A195E8, MEMORY[0x29EDC9E90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_29D5B62A0;
      v25 = v39;
      sub_29D499E5C(v17, v39);
      v26 = type metadata accessor for CategoryGeneratorPipeline(0);
      swift_allocObject();
      v27 = sub_29D5983B0(v25);
      *(v24 + 56) = v26;
      *(v24 + 64) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline, &unk_29D5BB86C);
      *(v24 + 32) = v27;
    }

    else
    {
      v24 = MEMORY[0x29EDCA190];
    }
  }

  else
  {
    if (sub_29D5B141C())
    {
      v28 = sub_29D5B410C();
      v29 = v37;
      (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
      v30 = v39;
      sub_29D499E5C(v17, v39);
      v31 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v38;
      sub_29D499F90(v30, v32 + v31);

      sub_29D57657C(0, 0, v29, &unk_29D5B98E0, v32);

      v33 = sub_29D527760(v17);
    }

    else
    {
      v33 = sub_29D5279A4(v17);
    }

    v24 = v33;
  }

  sub_29D49A104(v17);
  return v24;
}

uint64_t sub_29D525B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_29D4E7B8C;

  return sub_29D525BE0(a5);
}

uint64_t sub_29D525BE0(uint64_t a1)
{
  v3 = *v1;
  v2[27] = a1;
  v2[28] = v3;
  type metadata accessor for HealthRecordsGeneratorContext(0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_29D5B371C();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D525D20, 0, 0);
}

uint64_t sub_29D525D20(uint64_t a1)
{
  v36 = v1;
  v2 = v1[31];
  v3 = v1[27];
  sub_29D5B140C();
  sub_29D499EC0(v1 + 18, v1[21]);
  v4 = sub_29D5B136C();
  v5 = [objc_allocWithZone(MEMORY[0x29EDC16A8]) initWithHealthStore_];
  v1[37] = v5;

  sub_29D48F668(v1 + 18);
  sub_29D5B36CC();
  sub_29D499E5C(v3, v2);
  v6 = sub_29D5B370C();
  v7 = sub_29D5B429C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[36];
  v11 = v1[32];
  v10 = v1[33];
  v12 = v1[31];
  if (v8)
  {
    v34 = v5;
    v13 = swift_slowAlloc();
    v33 = v11;
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315394;
    v15 = sub_29D5B4DFC();
    v17 = sub_29D501890(v15, v16, &v35);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_29D5B143C();
    v19 = sub_29D5B10BC();
    v32 = v9;
    v21 = v20;

    sub_29D49A104(v12);
    v22 = sub_29D501890(v19, v21, &v35);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_29D48C000, v6, v7, "[%s] Marking universal shard as required for first launch on profile: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v14, -1, -1);
    v23 = v13;
    v5 = v34;
    MEMORY[0x29ED5FB80](v23, -1, -1);

    v24 = *(v10 + 8);
    v24(v32, v33);
  }

  else
  {

    sub_29D49A104(v12);
    v24 = *(v10 + 8);
    v24(v9, v11);
  }

  v1[38] = v24;
  sub_29D526A14(0, &qword_2A1A161D0, type metadata accessor for HKOntologyShardIdentifier, MEMORY[0x29EDC9E90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D5B62A0;
  v26 = *MEMORY[0x29EDBA830];
  *(v25 + 32) = *MEMORY[0x29EDBA830];
  type metadata accessor for HKOntologyShardIdentifier(0);
  v27 = v26;
  v28 = sub_29D5B401C();
  v1[39] = v28;

  v1[2] = v1;
  v1[3] = sub_29D5260C8;
  v29 = swift_continuation_init();
  sub_29D52697C(0);
  v1[17] = v30;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D526724;
  v1[13] = &unk_2A24294D0;
  v1[14] = v29;
  [v5 markShardsWithIdentifiers:v28 options:5 completion:v1 + 10];

  return MEMORY[0x2A1C73CC0](v1 + 2);
}

uint64_t sub_29D5260C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_29D526440;
  }

  else
  {
    v2 = sub_29D5261D8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D5261D8()
{
  v27 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  sub_29D5B36CC();
  sub_29D499E5C(v2, v1);
  v3 = sub_29D5B370C();
  v4 = sub_29D5B429C();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 280);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  if (v5)
  {
    v25 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v24 = v9;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v13 = sub_29D5B4DFC();
    v15 = sub_29D501890(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_29D5B143C();
    v17 = sub_29D5B10BC();
    v23 = v6;
    v19 = v18;

    sub_29D49A104(v10);
    v20 = sub_29D501890(v17, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_29D48C000, v3, v4, "[%s] Marked universal shard as required for first launch on profile: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v12, -1, -1);
    MEMORY[0x29ED5FB80](v11, -1, -1);

    v23(v25, v24);
  }

  else
  {

    sub_29D49A104(v10);
    v6(v8, v9);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_29D526440()
{
  v35 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  swift_willThrow();

  sub_29D5B36CC();
  sub_29D499E5C(v4, v3);
  v5 = v1;
  v6 = sub_29D5B370C();
  v7 = sub_29D5B427C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v32 = *(v0 + 272);
    v33 = *(v0 + 304);
    v30 = *(v0 + 296);
    v31 = *(v0 + 256);
    v9 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136315650;
    v12 = sub_29D5B4DFC();
    v14 = sub_29D501890(v12, v13, v34);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_29D5B4CDC();
    v17 = sub_29D501890(v15, v16, v34);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = sub_29D5B143C();
    v19 = sub_29D5B10BC();
    v21 = v20;

    sub_29D49A104(v9);
    v22 = sub_29D501890(v19, v21, v34);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_29D48C000, v6, v7, "[%s] Marking universal shard as required failed with error: %s on profile: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v11, -1, -1);
    MEMORY[0x29ED5FB80](v10, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v23 = *(v0 + 320);
    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    v27 = *(v0 + 232);

    sub_29D49A104(v27);
    v24(v25, v26);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_29D526724(uint64_t a1, int a2, void *a3)
{
  v5 = sub_29D499EC0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x2A1C73CD8](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x2A1C73CD8](v5);
  }

  sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x2A1C73CE0](v6, v7);
}

uint64_t type metadata accessor for HealthRecordsGeneratorContext(uint64_t a1)
{
  result = qword_2A1A19038;
  if (!qword_2A1A19038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D526864(uint64_t a1)
{
  result = sub_29D5B148C();
  if (v2 <= 0x3F)
  {
    result = sub_29D5268E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D5268E8()
{
  result = qword_2A1A16310;
  if (!qword_2A1A16310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16310);
  }

  return result;
}

void sub_29D52697C(uint64_t a1)
{
  if (!qword_2A1A16388)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B411C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16388);
    }
  }
}

void sub_29D526A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29D526A78(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v40[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D517180(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B9820;
  sub_29D499E5C(a1, v5);
  v7 = type metadata accessor for AccountStatusSummaryTileGeneratorPipeline(0);
  swift_allocObject();
  v8 = sub_29D4B987C(v5);
  *(inited + 56) = v7;
  *(inited + 64) = sub_29D5280E0(qword_2A1A17738, type metadata accessor for AccountStatusSummaryTileGeneratorPipeline, &unk_29D5B6BB8);
  *(inited + 32) = v8;
  sub_29D499E5C(a1, v5);
  v9 = type metadata accessor for AddAccountGeneratorPipeline(0);
  swift_allocObject();
  v10 = sub_29D561678(v5);
  *(inited + 96) = v9;
  *(inited + 104) = sub_29D5280E0(qword_2A1A19B18, type metadata accessor for AddAccountGeneratorPipeline, &unk_29D5BAB28);
  *(inited + 72) = v10;
  sub_29D499E5C(a1, v5);
  v11 = type metadata accessor for CategoryGeneratorPipeline(0);
  swift_allocObject();
  v12 = sub_29D5983B0(v5);
  *(inited + 136) = v11;
  *(inited + 144) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline, &unk_29D5BB86C);
  *(inited + 112) = v12;
  sub_29D499E5C(a1, v5);
  v13 = type metadata accessor for ClinicalNotificationSettingsGeneratorPipeline(0);
  swift_allocObject();
  v14 = sub_29D55F988(v5);
  *(inited + 176) = v13;
  *(inited + 184) = sub_29D5280E0(&unk_2A1A17488, type metadata accessor for ClinicalNotificationSettingsGeneratorPipeline, &unk_29D5BAAB0);
  *(inited + 152) = v14;
  sub_29D499E5C(a1, v5);
  v15 = type metadata accessor for NewRecordsGeneratorPipeline(0);
  swift_allocObject();
  v16 = sub_29D5814CC(v5);
  *(inited + 216) = v15;
  *(inited + 224) = sub_29D5280E0(qword_2A1A1A248, type metadata accessor for NewRecordsGeneratorPipeline, &unk_29D5BB19C);
  *(inited + 192) = v16;
  sub_29D499E5C(a1, v5);
  v17 = type metadata accessor for RecordKindGeneratorPipeline(0);
  swift_allocObject();
  v18 = sub_29D498648(v5);
  *(inited + 256) = v17;
  *(inited + 264) = sub_29D5280E0(qword_2A1A199C8, type metadata accessor for RecordKindGeneratorPipeline, &unk_29D5B62EC);
  *(inited + 232) = v18;
  sub_29D499E5C(a1, v5);
  v19 = type metadata accessor for UserDomainConceptPipeline(0);
  swift_allocObject();
  v20 = sub_29D4F568C(v5);
  *(inited + 296) = v19;
  *(inited + 304) = sub_29D5280E0(qword_2A1A18558, type metadata accessor for UserDomainConceptPipeline, &unk_29D5B863C);
  *(inited + 272) = v20;
  sub_29D499E5C(a1, v5);
  v21 = type metadata accessor for OnboardingGeneratorPipeline(0);
  swift_allocObject();
  v22 = sub_29D56539C(v5);
  *(inited + 336) = v21;
  *(inited + 344) = sub_29D5280E0(&qword_2A1A18258, type metadata accessor for OnboardingGeneratorPipeline, &unk_29D5BAC5C);
  *(inited + 312) = v22;
  sub_29D499E5C(a1, v5);
  v23 = type metadata accessor for LabTipsGeneratorPipeline(0);
  swift_allocObject();
  v24 = sub_29D564098(v5);
  *(inited + 376) = v23;
  *(inited + 384) = sub_29D5280E0(&qword_2A1A18700, type metadata accessor for LabTipsGeneratorPipeline, &unk_29D5BABFC);
  *(inited + 352) = v24;
  sub_29D499E5C(a1, v5);
  v25 = type metadata accessor for RemovedCategoriesGeneratorPipeline(0);
  swift_allocObject();
  v26 = sub_29D4A2910(v5);
  *(inited + 416) = v25;
  *(inited + 424) = sub_29D5280E0(qword_2A1A178C8, type metadata accessor for RemovedCategoriesGeneratorPipeline, &unk_29D5B6604);
  *(inited + 392) = v26;
  v46 = inited;
  v27 = swift_initStackObject();
  v39 = xmmword_29D5B62A0;
  *(v27 + 16) = xmmword_29D5B62A0;
  sub_29D499E5C(a1, v5);
  v28 = type metadata accessor for SharedConceptFeedItemPipeline(0);
  swift_allocObject();
  v29 = sub_29D51082C(v5);
  *(v27 + 56) = v28;
  *(v27 + 64) = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline, &unk_29D5B90D0);
  *(v27 + 32) = v29;
  sub_29D54FA04(v27);
  v30 = swift_initStackObject();
  *(v30 + 16) = v39;
  sub_29D499E5C(a1, v5);
  v31 = type metadata accessor for ClinicalSharingGeneratorPipeline(0);
  swift_allocObject();
  v32 = sub_29D4B5368(v5);
  *(v30 + 56) = v31;
  *(v30 + 64) = sub_29D5280E0(&qword_2A1A17C38, type metadata accessor for ClinicalSharingGeneratorPipeline, &unk_29D5B69C8);
  *(v30 + 32) = v32;
  sub_29D54FA04(v30);
  v33 = *(v46 + 16);
  if (v33)
  {
    v34 = v46 + 32;
    v35 = MEMORY[0x29EDCA190];
    do
    {
      sub_29D527FE8(v34, &v43);
      v40[0] = v43;
      v40[1] = v44;
      v41 = v45;
      if (*(&v44 + 1))
      {
        sub_29D497868(v40, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_29D5155B8(0, v35[2] + 1, 1, v35);
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          v35 = sub_29D5155B8((v36 > 1), v37 + 1, 1, v35);
        }

        v35[2] = v37 + 1;
        sub_29D497868(v42, &v35[5 * v37 + 4]);
      }

      else
      {
        sub_29D528068(v40);
      }

      v34 += 40;
      --v33;
    }

    while (v33);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v35;
}

void *sub_29D5271E8(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D517180(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B9830;
  sub_29D499E5C(a1, v5);
  v7 = type metadata accessor for AccountStatusSummaryTileGeneratorPipeline(0);
  swift_allocObject();
  v8 = sub_29D4B987C(v5);
  *(inited + 56) = v7;
  *(inited + 64) = sub_29D5280E0(qword_2A1A17738, type metadata accessor for AccountStatusSummaryTileGeneratorPipeline, &unk_29D5B6BB8);
  *(inited + 32) = v8;
  sub_29D499E5C(a1, v5);
  v9 = type metadata accessor for CategoryGeneratorPipeline(0);
  swift_allocObject();
  v10 = sub_29D5983B0(v5);
  *(inited + 96) = v9;
  *(inited + 104) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline, &unk_29D5BB86C);
  *(inited + 72) = v10;
  sub_29D499E5C(a1, v5);
  v11 = type metadata accessor for RecordKindGeneratorPipeline(0);
  swift_allocObject();
  v12 = sub_29D498648(v5);
  *(inited + 136) = v11;
  *(inited + 144) = sub_29D5280E0(qword_2A1A199C8, type metadata accessor for RecordKindGeneratorPipeline, &unk_29D5B62EC);
  *(inited + 112) = v12;
  sub_29D499E5C(a1, v5);
  v13 = type metadata accessor for UserDomainConceptPipeline(0);
  swift_allocObject();
  v14 = sub_29D4F568C(v5);
  *(inited + 176) = v13;
  *(inited + 184) = sub_29D5280E0(qword_2A1A18558, type metadata accessor for UserDomainConceptPipeline, &unk_29D5B863C);
  *(inited + 152) = v14;
  sub_29D499E5C(a1, v5);
  v15 = type metadata accessor for OnboardingGeneratorPipeline(0);
  swift_allocObject();
  v16 = sub_29D56539C(v5);
  *(inited + 216) = v15;
  *(inited + 224) = sub_29D5280E0(&qword_2A1A18258, type metadata accessor for OnboardingGeneratorPipeline, &unk_29D5BAC5C);
  *(inited + 192) = v16;
  sub_29D499E5C(a1, v5);
  v17 = type metadata accessor for LabTipsGeneratorPipeline(0);
  swift_allocObject();
  v18 = sub_29D564098(v5);
  *(inited + 256) = v17;
  *(inited + 264) = sub_29D5280E0(&qword_2A1A18700, type metadata accessor for LabTipsGeneratorPipeline, &unk_29D5BABFC);
  *(inited + 232) = v18;
  sub_29D499E5C(a1, v5);
  v19 = type metadata accessor for RemovedCategoriesGeneratorPipeline(0);
  swift_allocObject();
  v20 = sub_29D4A2910(v5);
  *(inited + 296) = v19;
  *(inited + 304) = sub_29D5280E0(qword_2A1A178C8, type metadata accessor for RemovedCategoriesGeneratorPipeline, &unk_29D5B6604);
  *(inited + 272) = v20;
  v36 = inited;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_29D5B62A0;
  sub_29D499E5C(a1, v5);
  v22 = type metadata accessor for SharedConceptFeedItemPipeline(0);
  swift_allocObject();
  v23 = sub_29D51082C(v5);
  *(v21 + 56) = v22;
  *(v21 + 64) = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline, &unk_29D5B90D0);
  *(v21 + 32) = v23;
  sub_29D54FA04(v21);
  v24 = *(v36 + 16);
  if (v24)
  {
    v25 = v36 + 32;
    v26 = MEMORY[0x29EDCA190];
    do
    {
      sub_29D527FE8(v25, &v33);
      v30[0] = v33;
      v30[1] = v34;
      v31 = v35;
      if (*(&v34 + 1))
      {
        sub_29D497868(v30, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_29D5155B8(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_29D5155B8((v27 > 1), v28 + 1, 1, v26);
        }

        v26[2] = v28 + 1;
        sub_29D497868(v32, &v26[5 * v28 + 4]);
      }

      else
      {
        sub_29D528068(v30);
      }

      v25 += 40;
      --v24;
    }

    while (v24);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v26;
}

void *sub_29D527760(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B143C();
  if (!v6)
  {
    return MEMORY[0x29EDCA190];
  }

  v7 = v6;
  v8 = [v6 type];
  if (v8 > 2)
  {
    if (v8 != 4)
    {
      goto LABEL_13;
    }

    v17 = sub_29D5271E8(a1);
    goto LABEL_17;
  }

  if (v8 == 1)
  {
    v17 = sub_29D526A78(a1);
LABEL_17:
    v15 = v17;

    return v15;
  }

  if (v8 != 2)
  {
LABEL_13:

    return MEMORY[0x29EDCA190];
  }

  sub_29D499E5C(a1, v5);
  v9 = type metadata accessor for SharedConceptFeedItemPipeline(0);
  swift_allocObject();
  v10 = sub_29D51082C(v5);
  v24[3] = v9;
  v24[4] = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline, &unk_29D5B90D0);
  v24[0] = v10;
  sub_29D527FE8(v24, &v21);
  v18[0] = v21;
  v18[1] = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_29D497868(v18, v20);
    v11 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_29D5155B8(0, v11[2] + 1, 1, v11);
    }

    v12 = v11;
    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_29D5155B8((v13 > 1), v14 + 1, 1, v11);
    }

    v12[2] = v14 + 1;
    v15 = v12;
    sub_29D497868(v20, &v12[5 * v14 + 4]);
  }

  else
  {
    sub_29D528068(v18);
    v15 = MEMORY[0x29EDCA190];
  }

  sub_29D528068(v24);
  return v15;
}

void *sub_29D5279A4(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B143C();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 type];
    if (v8 == 2)
    {
      sub_29D499E5C(a1, v5);
      v23 = type metadata accessor for SharedConceptFeedItemPipeline(0);
      swift_allocObject();
      v24 = sub_29D51082C(v5);
      v37[3] = v23;
      v37[4] = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline, &unk_29D5B90D0);
      v37[0] = v24;
      sub_29D527FE8(v37, &v34);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      if (*(&v35 + 1))
      {
        sub_29D497868(&v30, v33);
        v20 = MEMORY[0x29EDCA190];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_29D5155B8(0, v20[2] + 1, 1, v20);
        }

        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          v20 = sub_29D5155B8((v25 > 1), v26 + 1, 1, v20);
        }

        v20[2] = v26 + 1;
        sub_29D497868(v33, &v20[5 * v26 + 4]);
      }

      else
      {
        sub_29D528068(&v30);
        v20 = MEMORY[0x29EDCA190];
      }

      sub_29D528068(v37);
      goto LABEL_26;
    }

    if (v8 == 1)
    {
      sub_29D517180(0);
      inited = swift_initStackObject();
      v28 = xmmword_29D5B62A0;
      *(inited + 16) = xmmword_29D5B62A0;
      sub_29D499E5C(a1, v5);
      v10 = type metadata accessor for CategoryGeneratorPipeline(0);
      swift_allocObject();
      v11 = sub_29D5983B0(v5);
      *(inited + 56) = v10;
      *(inited + 64) = sub_29D5280E0(qword_2A1A19BE0, type metadata accessor for CategoryGeneratorPipeline, &unk_29D5BB86C);
      *(inited + 32) = v11;
      v29 = inited;
      v12 = swift_initStackObject();
      *(v12 + 16) = v28;
      sub_29D499E5C(a1, v5);
      v13 = type metadata accessor for SharedConceptFeedItemPipeline(0);
      swift_allocObject();
      v14 = sub_29D51082C(v5);
      *(v12 + 56) = v13;
      *(v12 + 64) = sub_29D5280E0(&qword_2A1A17F10, type metadata accessor for SharedConceptFeedItemPipeline, &unk_29D5B90D0);
      *(v12 + 32) = v14;
      sub_29D54FA04(v12);
      v15 = swift_initStackObject();
      *(v15 + 16) = v28;
      sub_29D499E5C(a1, v5);
      v16 = type metadata accessor for ClinicalSharingGeneratorPipeline(0);
      swift_allocObject();
      v17 = sub_29D4B5368(v5);
      *(v15 + 56) = v16;
      *(v15 + 64) = sub_29D5280E0(&qword_2A1A17C38, type metadata accessor for ClinicalSharingGeneratorPipeline, &unk_29D5B69C8);
      *(v15 + 32) = v17;
      sub_29D54FA04(v15);
      v18 = *(v29 + 16);
      if (v18)
      {
        v19 = v29 + 32;
        v20 = MEMORY[0x29EDCA190];
        do
        {
          sub_29D527FE8(v19, &v34);
          v30 = v34;
          v31 = v35;
          v32 = v36;
          if (*(&v35 + 1))
          {
            sub_29D497868(&v30, v33);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_29D5155B8(0, v20[2] + 1, 1, v20);
            }

            v22 = v20[2];
            v21 = v20[3];
            if (v22 >= v21 >> 1)
            {
              v20 = sub_29D5155B8((v21 > 1), v22 + 1, 1, v20);
            }

            v20[2] = v22 + 1;
            sub_29D497868(v33, &v20[5 * v22 + 4]);
          }

          else
          {
            sub_29D528068(&v30);
          }

          v19 += 40;
          --v18;
        }

        while (v18);
      }

      else
      {

        v20 = MEMORY[0x29EDCA190];
      }

LABEL_26:

      return v20;
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29D527E80(uint64_t a1)
{
  v4 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D525B44(a1, v6, v7, v8, v1 + v5);
}

void sub_29D527F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4A02FC(255, &qword_2A1A19828, MEMORY[0x29EDC38F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D527FE8(uint64_t a1, uint64_t a2)
{
  sub_29D527F78(0, &qword_2A1A19820, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D528068(uint64_t a1)
{
  sub_29D527F78(0, &qword_2A1A19820, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5280E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D528128@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v148 = a4;
  v152 = a3;
  sub_29D529C10(0, qword_2A1A19830, MEMORY[0x29EDC3840]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v149 = &v134 - v10;
  sub_29D529C10(0, &qword_2A1A17350, MEMORY[0x29EDC4098]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v145 = &v134 - v13;
  v14 = sub_29D5B1D6C();
  v147 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v150 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v146, v17);
  v151 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B0EDC();
  v154 = *(v19 - 8);
  v155 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v153 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B371C();
  v23 = *(v22 - 8);
  v156 = v22;
  v157 = v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v27 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v134 - v30;
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v35 = &v134 - v34;
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v134 - v37;
  sub_29D529C10(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v41 = MEMORY[0x2A1C7C4A8](v39 - 8, v40);
  v43 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v44);
  v46 = &v134 - v45;
  if (a2 >> 62)
  {
    if (sub_29D5B485C() < 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_3:
    sub_29D5B36CC();
    v47 = a1;
    v48 = sub_29D5B370C();
    v49 = sub_29D5B426C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v158[0] = v51;
      *v50 = 136446210;
      v52 = [v47 UUID];
      v53 = v153;
      sub_29D5B0EBC();

      v54 = sub_29D5B0E8C();
      v56 = v55;
      (*(v154 + 8))(v53, v155);
      v57 = sub_29D501890(v54, v56, v158);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_29D48C000, v48, v49, "Too few records to generate delta highlight for concept: %{public}s", v50, 0xCu);
      sub_29D48F668(v51);
      MEMORY[0x29ED5FB80](v51, -1, -1);
      MEMORY[0x29ED5FB80](v50, -1, -1);
    }

    (*(v157 + 8))(v27, v156);
    v58 = sub_29D5B134C();
    return (*(*(v58 - 8) + 56))(a5, 1, 1, v58);
  }

  v144 = a5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x29ED5EF30](1, a2);
    v63 = MEMORY[0x29ED5EF30](0, a2);
  }

  else
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_38;
    }

    v61 = a2 + 32;
    v60 = *(a2 + 32);
    v62 = *(v61 + 8);
    v63 = v60;
  }

  v64 = v63;
  sub_29D529C64(v62, v63);
  v142 = v65;
  v143 = 0;
  v141 = v62;
  v66 = [v141 meaningfulDate];
  if (v66)
  {
    v67 = v66;
    sub_29D5B0E4C();

    v68 = sub_29D5B0E6C();
    (*(*(v68 - 8) + 56))(v46, 0, 1, v68);
  }

  else
  {
    v69 = sub_29D5B0E6C();
    (*(*(v69 - 8) + 56))(v46, 1, 1, v69);
  }

  v140 = v64;
  v70 = [v140 meaningfulDate];
  if (v70)
  {
    v71 = v70;
    sub_29D5B0E4C();

    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = sub_29D5B0E6C();
  v74 = *(v73 - 8);
  v139 = *(v74 + 56);
  v138 = v74 + 56;
  v139(v43, v72, 1, v73);
  v75 = sub_29D52A158(v46, v43, v142);
  v76 = MEMORY[0x29EDB9BC8];
  sub_29D52A664(v43, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D52A664(v46, &qword_2A1A1A390, v76);
  if (v75)
  {
    v77 = v141;

    v78 = v140;
    sub_29D5B36CC();
    v79 = a1;
    v80 = sub_29D5B370C();
    v81 = sub_29D5B426C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v158[0] = v83;
      *v82 = 136446210;
      v84 = [v79 UUID];
      v85 = v153;
      sub_29D5B0EBC();

      v86 = sub_29D5B0E8C();
      v88 = v87;
      (*(v154 + 8))(v85, v155);
      v89 = sub_29D501890(v86, v88, v158);

      *(v82 + 4) = v89;
      _os_log_impl(&dword_29D48C000, v80, v81, "Suppressing generation of delta highlight for concept: %{public}s", v82, 0xCu);
      sub_29D48F668(v83);
      MEMORY[0x29ED5FB80](v83, -1, -1);
      MEMORY[0x29ED5FB80](v82, -1, -1);
    }

    else
    {
    }

    (*(v157 + 8))(v35, v156);
    v112 = v144;
    v113 = sub_29D5B134C();
    return (*(*(v113 - 8) + 56))(v112, 1, 1, v113);
  }

  sub_29D5B1CBC();
  v90 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v158, v158[3]);
  v91 = sub_29D5B136C();
  v92 = [v91 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(v158);
  LODWORD(v38) = sub_29D5B362C();

  sub_29D5B36CC();
  v35 = a1;
  v93 = sub_29D5B370C();
  v94 = sub_29D5B426C();

  v95 = os_log_type_enabled(v93, v94);
  v137 = v73;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v158[0] = v135;
    *v96 = 136446466;
    v97 = [v35 UUID];
    v98 = v153;
    sub_29D5B0EBC();

    v99 = v35;
    v100 = v38;
    v38 = sub_29D5B0E8C();
    v102 = v101;
    (*(v154 + 8))(v98, v155);
    v103 = v38;
    LODWORD(v38) = v100;
    v35 = v99;
    v104 = sub_29D501890(v103, v102, v158);

    *(v96 + 4) = v104;
    *(v96 + 12) = 2082;
    if (v38)
    {
      v105 = 0x65736C6166;
    }

    else
    {
      v105 = 1702195828;
    }

    if (v38)
    {
      v106 = 0xE500000000000000;
    }

    else
    {
      v106 = 0xE400000000000000;
    }

    v107 = sub_29D501890(v105, v106, v158);

    *(v96 + 14) = v107;
    _os_log_impl(&dword_29D48C000, v93, v94, "Generating delta highlight for concept: %{public}s, Hide in Discover: %{public}s", v96, 0x16u);
    v108 = v135;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v108, -1, -1);
    MEMORY[0x29ED5FB80](v96, -1, -1);
  }

  (*(v157 + 8))(v31, v156);
  v31 = v150;
  v27 = v151;
  v109 = [v35 categoryTypes];
  sub_29D48F51C(0, &qword_2A17A3C90, 0x29EDBA070);
  v46 = sub_29D5B402C();

  if (v46 >> 62)
  {
LABEL_38:
    result = sub_29D5B485C();
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_29:
    if ((v46 & 0xC000000000000001) != 0)
    {
      v110 = MEMORY[0x29ED5EF30](0, v46);
    }

    else
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v110 = *(v46 + 32);
    }

    v111 = v110;

    [v111 integerValue];

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  LODWORD(v157) = v38 ^ 1;
  v114 = v145;
  sub_29D5B1D4C();
  v115 = v147;
  v116 = *(v147 + 48);
  v117 = v116(v114, 1, v14);
  v136 = v14;
  if (v117 == 1)
  {
    (*(v115 + 104))(v31, *MEMORY[0x29EDC4078], v14);
    if (v116(v114, 1, v14) != 1)
    {
      sub_29D52A664(v114, &qword_2A1A17350, MEMORY[0x29EDC4098]);
    }
  }

  else
  {
    (*(v115 + 32))(v31, v114, v14);
  }

  v118 = v146;
  sub_29D48F51C(0, &qword_2A1A162D0, 0x29EDBAC68);
  v119 = v35;
  sub_29D5B3D1C();
  sub_29D48F51C(0, &qword_2A17A48B8, 0x29EDBAC58);
  v120 = v141;
  sub_29D5B3D1C();
  v121 = v140;
  sub_29D5B3D1C();
  v122 = sub_29D5B453C();
  v124 = v123;
  v125 = v118[10];
  v126 = [v119 modificationDate];
  sub_29D5B0E4C();

  v139(&v27[v125], 0, 1, v137);
  (*(v115 + 32))(v27, v31, v136);
  *&v27[v118[8]] = v142;
  v127 = &v27[v118[9]];
  *v127 = v122;
  v127[1] = v124;
  v27[v118[11]] = v157 & 1;
  v128 = sub_29D5B143C();
  v129 = v149;
  v130 = v143;
  sub_29D52925C(v27, v148, v128, v149);
  if (v130)
  {

    sub_29D52A588(v27);
    v131 = 1;
  }

  else
  {
    sub_29D52A588(v27);

    v131 = 0;
  }

  v132 = v144;
  v133 = sub_29D5B134C();
  (*(*(v133 - 8) + 56))(v129, v131, 1, v133);
  return sub_29D52A5E4(v129, v132);
}

uint64_t sub_29D52925C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a2;
  v97 = a4;
  v98 = a3;
  v5 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v92 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D529C10(0, &qword_2A1A17388, MEMORY[0x29EDC3980]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v93 = v81 - v10;
  v11 = sub_29D5B0E6C();
  v95 = *(v11 - 8);
  v96 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v82 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v83 = v81 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v89 = v81 - v19;
  sub_29D529C10(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v91 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v94 = v81 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v90 = v81 - v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v88 = v81 - v31;
  v87 = sub_29D5B104C();
  v85 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87, v32);
  v86 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D5B1AAC();
  v35 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x29EDB9C08];
  sub_29D529C10(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  MEMORY[0x2A1C7C4A8](v40 - 8, v41);
  v43 = v81 - v42;
  v44 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0, 0x29EDBAC68);
  v45 = sub_29D5B3CEC();
  v46 = [v45 UUID];

  sub_29D5B0EBC();
  v47 = sub_29D5B0EDC();
  (*(*(v47 - 8) + 56))(v43, 0, 1, v47);
  (*(v35 + 104))(v38, *MEMORY[0x29EDC3F40], v34);
  v48 = v98;
  v84 = sub_29D5B294C();
  v49 = v38;
  v50 = a1;
  (*(v35 + 8))(v49, v34);
  sub_29D52A664(v43, &qword_2A1A193A8, v39);
  sub_29D52A6C0();
  v51 = v100;
  sub_29D5B0BEC();
  if (v51)
  {
  }

  v81[1] = 0;
  type metadata accessor for ConceptDeltaHighlightFeedItemViewController(0);
  (*(v85 + 104))(v86, *MEMORY[0x29EDC3788], v87);
  v53 = v48;
  sub_29D5B110C();
  LODWORD(v87) = *(a1 + *(v44 + 44));
  v54 = v89;
  sub_29D5B0E5C();
  v55 = v88;
  sub_29D5B0DCC();
  v57 = v95;
  v56 = v96;
  v58 = *(v95 + 8);
  v89 = (v95 + 8);
  v86 = v58;
  (v58)(v54, v96);
  v59 = 1;
  v99 = *(v57 + 56);
  v99(v55, 0, 1, v56);
  v98 = v44;
  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8, 0x29EDBAC58);
  v100 = v50;
  v60 = sub_29D5B3CEC();
  v61 = [v60 meaningfulDate];

  v62 = v56;
  v63 = v90;
  if (v61)
  {
    sub_29D5B0E4C();

    v59 = 0;
  }

  v64 = 1;
  v99(v63, v59, 1, v62);
  sub_29D58C560(v55, v63);
  v65 = MEMORY[0x29EDB9BC8];
  sub_29D52A664(v63, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  sub_29D52A664(v55, &qword_2A1A1A390, v65);
  v66 = sub_29D5B3CEC();
  v67 = [v66 meaningfulDate];

  if (v67)
  {
    v68 = v94;
    sub_29D5B0E4C();

    v64 = 0;
    v69 = v93;
  }

  else
  {
    v69 = v93;
    v68 = v94;
  }

  v70 = 1;
  v71 = v64;
  v72 = v96;
  v99(v68, v71, 1, v96);
  v73 = v91;
  sub_29D4D20BC(v68, v91);
  v74 = v95;
  if ((*(v95 + 48))(v73, 1, v72) != 1)
  {
    v75 = v83;
    (*(v74 + 32))(v83, v73, v72);
    (*(v74 + 16))(v82, v75, v72);
    v68 = v94;
    sub_29D5B0C6C();
    sub_29D5B16EC();
    (v86)(v75, v72);
    v70 = 0;
  }

  sub_29D52A664(v68, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v76 = sub_29D5B170C();
  (*(*(v76 - 8) + 56))(v69, v70, 1, v76);
  sub_29D5B12BC();

  sub_29D5B124C();
  sub_29D5B12AC();
  sub_29D5B122C();
  v102 = MEMORY[0x29EDCA1A0];
  v77 = sub_29D5B158C();
  sub_29D59AD10(v101, v77, v78);

  v79 = v102;
  v80 = sub_29D5B130C();
  sub_29D4E80E8(v79);
  return v80(v101, 0);
}

void sub_29D529C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D529C64(void *a1, void *a2)
{
  v3 = [a1 chartableCodedQuantitySet];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [a2 chartableCodedQuantitySet];
  if (!v5)
  {

LABEL_13:
    sub_29D52A718();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    return;
  }

  v6 = v5;
  v7 = [v4 quantities];
  v8 = sub_29D48F51C(0, &qword_2A17A4480, 0x29EDBAA78);
  v9 = sub_29D5B402C();

  if (v9 >> 62)
  {
    v10 = sub_29D5B485C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 != 1)
  {
    v11 = [v6 quantities];
    v12 = sub_29D5B402C();

    v13 = v12 >> 62 ? sub_29D5B485C() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v13 != 1)
    {
      sub_29D52A718();
      swift_allocError();
      v35 = 1;
LABEL_41:
      *v34 = v35;
      swift_willThrow();

      return;
    }
  }

  v14 = [v4 compatibleUnit];
  v15 = [v14 unitString];

  sub_29D5B3E5C();
  v16 = sub_29D5B3E8C();
  v18 = v17;

  v19 = [v6 compatibleUnit];
  v20 = [v19 unitString];

  sub_29D5B3E5C();
  v21 = sub_29D5B3E8C();
  v23 = v22;

  if (v16 == v21 && v18 == v23)
  {

    v24 = &off_29F351000;
    goto LABEL_15;
  }

  v21 = sub_29D5B4C7C();

  v24 = &off_29F351000;
  if ((v21 & 1) == 0)
  {
    sub_29D52A718();
    swift_allocError();
    v35 = 2;
    goto LABEL_41;
  }

LABEL_15:
  v26 = [v4 v24[485]];
  v27 = sub_29D5B402C();

  if (v27 >> 62)
  {
    if (!sub_29D5B485C())
    {
      goto LABEL_39;
    }
  }

  else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x29ED5EF30](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;

  v21 = &off_29F351000;
  v27 = [v29 quantity];

  if (!v27)
  {
LABEL_40:
    sub_29D52A718();
    swift_allocError();
    v35 = 3;
    goto LABEL_41;
  }

  v30 = [v6 v24[485]];
  v8 = sub_29D5B402C();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!sub_29D5B485C())
  {
LABEL_38:

LABEL_39:

    goto LABEL_40;
  }

LABEL_23:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x29ED5EF30](0, v8);
    goto LABEL_26;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v8 + 32);
LABEL_26:
    v32 = v31;

    v33 = [v32 *(v21 + 3896)];

    if (v33)
    {
      [v27 compare_];

      return;
    }

    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_29D52A158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a3;
  v45 = a2;
  v3 = sub_29D5B0F0C();
  v44 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0F8C();
  v43 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D529C10(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v40 - v17;
  v19 = sub_29D5B0E6C();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v40 - v26;
  if (v47)
  {
    v28 = 0;
  }

  else
  {
    v41 = v10;
    v42 = v7;
    v47 = v3;
    sub_29D4D20BC(v46, v18);
    v29 = v20[6];
    if (v29(v18, 1, v19) == 1)
    {
      v30 = MEMORY[0x29EDB9BC8];
      v31 = v18;
    }

    else
    {
      v32 = v18;
      v33 = v20[4];
      v33(v27, v32, v19);
      sub_29D4D20BC(v45, v15);
      if (v29(v15, 1, v19) != 1)
      {
        v33(v24, v15, v19);
        v34 = v44;
        v35 = v6;
        v36 = v47;
        (*(v44 + 104))(v6, *MEMORY[0x29EDB9C78], v47);
        v37 = v41;
        sub_29D5B0F1C();
        (*(v34 + 8))(v35, v36);
        v28 = sub_29D5B0F6C();
        (*(v43 + 8))(v37, v42);
        v38 = v20[1];
        v38(v24, v19);
        v38(v27, v19);
        return v28 & 1;
      }

      (v20[1])(v27, v19);
      v30 = MEMORY[0x29EDB9BC8];
      v31 = v15;
    }

    sub_29D52A664(v31, &qword_2A1A1A390, v30);
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_29D52A588(uint64_t a1)
{
  v2 = type metadata accessor for ConceptDeltaHighlightFeedItemData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D52A5E4(uint64_t a1, uint64_t a2)
{
  sub_29D529C10(0, qword_2A1A19830, MEMORY[0x29EDC3840]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D52A664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D529C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D52A6C0()
{
  result = qword_2A17A48C0;
  if (!qword_2A17A48C0)
  {
    type metadata accessor for ConceptDeltaHighlightFeedItemData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48C0);
  }

  return result;
}

unint64_t sub_29D52A718()
{
  result = qword_2A17A48D0;
  if (!qword_2A17A48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48D0);
  }

  return result;
}

unint64_t sub_29D52A780()
{
  result = qword_2A17A48D8;
  if (!qword_2A17A48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A48D8);
  }

  return result;
}

void sub_29D52A7D4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_29D52C294(319, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29D52C294(319, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_29D52A954@<X0>(uint64_t a1@<X8>)
{
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v13[-v5];
  v7 = *(*v1 + 112);
  swift_beginAccess();
  sub_29D52B624(v1 + v7, v6);
  v8 = sub_29D5B19EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    v11 = *(*v1 + 120);
    swift_beginAccess();
    sub_29D52B624(v1 + v11, a1);
    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return sub_29D52B4F0(v6, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

uint64_t sub_29D52AB50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = *v1;
  v4 = sub_29D5B1A6C();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v73 = &v68 - v10;
  v11 = sub_29D5B19EC();
  v75 = *(v11 - 8);
  v76 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v72 = &v68 - v16;
  sub_29D52C294(0, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], v7);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v21 = &v68 - v20;
  v22 = *(v3 + 80);
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v19, v24);
  v26 = &v68 - v25;
  v27 = sub_29D5B1BCC();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v68 - v34;
  (*(v23 + 16))(v26, &v2[*(v3 + 88)], v22);
  v36 = swift_dynamicCast();
  v37 = *(v28 + 56);
  if (v36)
  {
    v37(v21, 0, 1, v27);
    v38 = *(v28 + 32);
    v38(v35, v21, v27);
    v38(v32, v35, v27);
    v39 = (*(v28 + 88))(v32, v27);
    if (v39 == *MEMORY[0x29EDC3FA8] || v39 == *MEMORY[0x29EDC3FA0] || v39 == *MEMORY[0x29EDC3F78] || v39 == *MEMORY[0x29EDC3F90])
    {
      v55 = &v2[*(*v2 + 104)];
      v56 = v55[1];
      v45 = v77;
      *v77 = *v55;
      v45[1] = v56;
      v48 = MEMORY[0x29EDC2360];
      goto LABEL_16;
    }

    (*(v28 + 8))(v32, v27);
  }

  else
  {
    v37(v21, 1, 1, v27);
    sub_29D52B4F0(v21, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);
  }

  v40 = v73;
  sub_29D52A954(v73);
  v42 = v75;
  v41 = v76;
  v43 = (*(v75 + 48))(v40, 1, v76);
  v44 = v74;
  if (v43 == 1)
  {
    sub_29D52B4F0(v40, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    v45 = v77;
  }

  else
  {
    v49 = v72;
    (*(v42 + 32))(v72, v40, v41);
    (*(v42 + 16))(v44, v49, v41);
    v50 = (*(v42 + 88))(v44, v41);
    v45 = v77;
    if (v50 == *MEMORY[0x29EDC3EA8])
    {
      (*(v42 + 8))(v49, v41);
      (*(v42 + 96))(v44, v41);
      v51 = *v44;

      v52 = &v2[*(*v2 + 104)];
      v53 = *v52;
      v54 = v52[1];
      *v45 = v51;
      v45[1] = v53;
      v45[2] = v54;
      v48 = MEMORY[0x29EDC2370];
      goto LABEL_16;
    }

    if (v50 == *MEMORY[0x29EDC3EA0])
    {
      (*(v42 + 96))(v44, v41);
      v57 = v69;
      v58 = v70;
      v59 = v71;
      (*(v70 + 32))(v69, v44, v71);
      sub_29D52B560(0);
      v61 = (v45 + *(v60 + 64));
      *v45 = sub_29D5B1A5C();
      sub_29D5B19FC();
      (*(v58 + 8))(v57, v59);
      (*(v42 + 8))(v49, v41);
      v62 = &v2[*(*v2 + 104)];
      v63 = *(v62 + 1);
      *v61 = *v62;
      v61[1] = v63;
      v48 = MEMORY[0x29EDC2378];
      goto LABEL_16;
    }

    v67 = *(v42 + 8);
    v67(v49, v41);
    v67(v44, v41);
  }

  v46 = &v2[*(*v2 + 104)];
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v48 = MEMORY[0x29EDC2368];
LABEL_16:
  v64 = *v48;
  v65 = sub_29D5B2F9C();
  (*(*(v65 - 8) + 104))(v45, v64, v65);
}

uint64_t sub_29D52B304()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  sub_29D52B4F0(v0 + *(*v0 + 96), &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);

  v1 = MEMORY[0x29EDC3EB0];
  sub_29D52B4F0(v0 + *(*v0 + 112), &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  sub_29D52B4F0(v0 + *(*v0 + 120), &unk_2A1A19488, v1);

  return v0;
}

uint64_t sub_29D52B45C()
{
  sub_29D52B304();

  return swift_deallocClassInstance();
}

uint64_t sub_29D52B4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D52C294(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D52B560(uint64_t a1)
{
  if (!qword_2A17A48E0)
  {
    sub_29D52B5D8();
    sub_29D5B2BDC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17A48E0);
    }
  }
}

unint64_t sub_29D52B5D8()
{
  result = qword_2A1A16288;
  if (!qword_2A1A16288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16288);
  }

  return result;
}

uint64_t sub_29D52B624(uint64_t a1, uint64_t a2)
{
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D52B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  v10 = swift_task_alloc();
  v7[12] = v10;
  v13 = (*MEMORY[0x29EDC4100] + MEMORY[0x29EDC4100]);
  v11 = swift_task_alloc();
  v7[13] = v11;
  *v11 = v7;
  v11[1] = sub_29D52B7EC;

  return v13(v10, a5, a6);
}

uint64_t sub_29D52B7EC()
{

  return MEMORY[0x2A1C73D48](sub_29D52B8E8, 0, 0);
}

uint64_t sub_29D52B8E8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = *(*v1 + 120);
  swift_beginAccess();
  sub_29D52C2F8(v2, v1 + v3, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  swift_endAccess();
  v9 = (*MEMORY[0x29EDC40F8] + MEMORY[0x29EDC40F8]);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_29D52B9FC;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return v9(v5, v6, v7);
}

uint64_t sub_29D52B9FC()
{

  return MEMORY[0x2A1C73D48](sub_29D52BAF8, 0, 0);
}

uint64_t sub_29D52BAF8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = *(*v1 + 112);
  swift_beginAccess();
  sub_29D52C2F8(v2, v1 + v3, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D52BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v68 = sub_29D5B1A2C();
  v66 = *(v68 - 8);
  v69 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v68, v4);
  v67 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D52C294(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v74 = &v53 - v9;
  v10 = MEMORY[0x29EDC3FB8];
  v61 = MEMORY[0x29EDC3FB8];
  sub_29D52C294(0, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], v6);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v63 = &v53 - v13;
  v64 = MEMORY[0x29EDC3EB0];
  sub_29D52C294(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], v6);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v53 - v16;
  v18 = sub_29D5B1BCC();
  v19 = *(v18 - 8);
  v65 = v19[8];
  MEMORY[0x2A1C7C4A8](v18, v20);
  v72 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v62 = v19[2];
  v62();
  v22 = sub_29D5B1B0C();
  v57 = v23;
  v58 = v22;
  v24 = sub_29D5B19EC();
  v25 = *(*(v24 - 8) + 56);
  v25(v17, 1, 1, v24);
  sub_29D52C294(0, &qword_2A1A194B8, v10, type metadata accessor for BrowseItem);
  v26 = swift_allocObject();
  v27 = *(*v26 + 96);
  v56 = v19[7];
  v56(v26 + v27, 1, 1, v18);
  v25((v26 + *(*v26 + 112)), 1, 1, v24);
  v25((v26 + *(*v26 + 120)), 1, 1, v24);
  v28 = *(*v26 + 128);
  sub_29D5B1F0C();
  *(v26 + v28) = sub_29D5B1EFC();
  v29 = *(*v26 + 88);
  v30 = v19;
  v55 = v19;
  v31 = v19[4];
  v59 = v19 + 4;
  v60 = v31;
  v32 = v72;
  v31((v26 + v29), v72, v18);
  v33 = (v26 + *(*v26 + 104));
  v34 = v57;
  *v33 = v58;
  v33[1] = v34;
  v35 = *(*v26 + 120);
  swift_beginAccess();
  sub_29D52C2F8(v17, v26 + v35, &unk_2A1A19488, v64);
  swift_endAccess();
  v37 = v62;
  v36 = v63;
  v38 = v73;
  (v62)(v63, v73, v18);
  v54 = v18;
  v56(v36, 0, 1, v18);
  v39 = *(*v26 + 96);
  swift_beginAccess();

  sub_29D52C2F8(v36, v26 + v39, &qword_2A1A1A3A8, v61);
  swift_endAccess();
  v40 = sub_29D5B410C();
  (*(*(v40 - 8) + 56))(v74, 1, 1, v40);
  (v37)(v32, v38, v18);
  v41 = v66;
  v42 = v67;
  v43 = v70;
  v44 = v68;
  (*(v66 + 16))(v67, v70, v68);
  v45 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v46 = (v65 + *(v41 + 80) + v45) & ~*(v41 + 80);
  v47 = (v69 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  v49 = v72;
  *(v48 + 4) = v71;
  v50 = &v48[v45];
  v51 = v54;
  v60(v50, v49, v54);
  (*(v41 + 32))(&v48[v46], v42, v44);
  *&v48[v47] = v26;

  sub_29D57657C(0, 0, v74, &unk_29D5B9A40, v48);

  (*(v41 + 8))(v43, v44);
  (v55[1])(v73, v51);
  return v26;
}

void sub_29D52C294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D52C2F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D52C294(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D52C378(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D5B1BCC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_29D5B1A2C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_29D4E7B8C;

  return sub_29D52B6B8(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t type metadata accessor for NewRecordsFeedItemView(uint64_t a1)
{
  result = qword_2A17A48F8;
  if (!qword_2A17A48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D52C594()
{
  sub_29D5B457C();
  qword_2A17A48E8 = v0;
  unk_2A17A48F0 = v1;
}

uint64_t sub_29D52C5BC()
{
  v0 = qword_2A17A39E0;
  v1 = *MEMORY[0x29EDC80E0];
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(sub_29D5B1E9C());
  return sub_29D5B1E8C();
}

id sub_29D52C65C(uint64_t a1)
{
  v3 = sub_29D5B200C();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52D32C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v68 = &v65 - v8;
  v79 = sub_29D5B1D9C();
  v73 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v9);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_29D5B1BCC();
  v72 = *(v81 - 8);
  MEMORY[0x2A1C7C4A8](v81, v11);
  v86 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29D5B1D6C();
  v66 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78, v13);
  v77 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_29D5B1AEC();
  v74 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D5B0EDC();
  v18 = *(v76 - 1);
  MEMORY[0x2A1C7C4A8](v76, v19);
  v75 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NewRecordsFeedItemViewData(0);
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D52D32C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  v28 = MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v84 = (&v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v65 - v31;
  sub_29D52D32C(0, &qword_2A17A4908, MEMORY[0x29EDC4030]);
  MEMORY[0x2A1C7C4A8](v33 - 8, v34);
  v36 = &v65 - v35;
  v85 = v1;
  v82 = sub_29D5B22BC();
  v87 = a1;
  sub_29D52D380(a1, v32);
  v37 = 1;
  v83 = *(v22 + 48);
  if ((v83)(v32, 1, v21) != 1)
  {
    sub_29D52D4B8(v32, v25);
    (*(v18 + 16))(v75, &v25[*(v21 + 24)], v76);

    sub_29D5B1CCC();
    sub_29D52D45C(v25);
    v37 = 0;
  }

  v38 = sub_29D5B1CDC();
  (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
  v39 = v82;
  sub_29D5B1A7C();

  sub_29D52D400(v36, &qword_2A17A4908, MEMORY[0x29EDC4030]);
  v40 = sub_29D5B22CC();
  sub_29D5B1E7C();

  v41 = v84;
  sub_29D52D380(v87, v84);
  if ((v83)(v41, 1, v21) == 1)
  {
    sub_29D52D400(v41, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  }

  else
  {
    v42 = *(v41 + *(v21 + 28));

    sub_29D52D45C(v41);
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = *(v74 + 16);
      v45 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v65 = v42;
      v46 = v42 + v45;
      v87 = *(v74 + 72);
      v83 = (v72 + 11);
      v47 = (v74 + 8);
      v75 = (v72 + 12);
      v76 = v72 + 1;
      LODWORD(v82) = *MEMORY[0x29EDC3F80];
      ++v73;
      v74 = v66 + 32;
      v72 = (v66 + 8);
      v48 = v67;
      v50 = v80;
      v49 = v81;
      v84 = v44;
      (v44)(v17, v46, v80);
      while (1)
      {
        if (sub_29D5B1ACC())
        {
          (*v47)(v17, v50);
        }

        else
        {
          v51 = v86;
          sub_29D5B1ADC();
          v52 = (*v83)(v51, v49);
          if (v52 == v82)
          {
            (*v75)(v51, v49);
            v53 = v77;
            v54 = v51;
            v55 = v78;
            (*v74)(v77, v54, v78);
            v56 = sub_29D5B22CC();
            sub_29D5B20AC();
            sub_29D5B209C();
            if (qword_2A17A39E0 != -1)
            {
              swift_once();
            }

            sub_29D5B1E6C();

            (*v73)(v48, v79);
            (*v72)(v53, v55);
            v50 = v80;
            (*v47)(v17, v80);
            v49 = v81;
            v44 = v84;
          }

          else
          {
            (*v47)(v17, v50);
            (*v76)(v51, v49);
            v44 = v84;
          }
        }

        v46 += v87;
        if (!--v43)
        {
          break;
        }

        (v44)(v17, v46, v50);
      }
    }
  }

  v57 = v71;
  v58 = v85;
  v59 = sub_29D5B22DC();
  v60 = sub_29D5B0EFC();
  v61 = v68;
  (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
  v62 = v69;
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v70 + 8))(v62, v57);
  sub_29D52D400(v61, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v63 = sub_29D5B3E1C();

  [v59 setTitle:v63 forState:0];

  return [v58 setNeedsLayout];
}

id sub_29D52D0A0(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NewRecordsFeedItemView(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29D52D114(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for NewRecordsFeedItemView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D52D18C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsFeedItemView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D52D1C4(uint64_t a1)
{
  sub_29D52D32C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v8 - v4;
  sub_29D52D2C8(a1, &v8 - v4);
  v6 = type metadata accessor for NewRecordsFeedItemViewData(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_29D52C65C(v5);
  return sub_29D52D400(v5, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
}

uint64_t sub_29D52D2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewRecordsFeedItemViewData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D52D32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D52D380(uint64_t a1, uint64_t a2)
{
  sub_29D52D32C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D52D400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D52D32C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D52D45C(uint64_t a1)
{
  v2 = type metadata accessor for NewRecordsFeedItemViewData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D52D4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewRecordsFeedItemViewData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29D52D60C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NullView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D52D664(char *a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v116 = a2;
  v108 = a1;
  v104 = a3;
  v105 = type metadata accessor for SharedConceptFeedItemData(0);
  v99 = *(v105 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v105, v3);
  v112 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v111 = &v91 - v7;
  v8 = type metadata accessor for SharedNewRecordsAlertData(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B165C();
  v107 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B0E6C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v98 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v109 = &v91 - v23;
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v113 = &v91 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v30 = &v91 - v29;
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v106 = &v91 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v91 - v36;
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v41 = &v91 - v40;
  v43 = MEMORY[0x2A1C7C4A8](v39, v42);
  v45 = &v91 - v44;
  v101 = MEMORY[0x29ED5F4B0](v43);
  sub_29D5B0E5C();
  sub_29D5B0DBC();
  v46 = v41;
  v47 = v16;
  v114 = *(v17 + 8);
  v115 = v17 + 8;
  v114(v46, v16);
  sub_29D5B0D9C();
  v102 = v45;
  v103 = v37;
  v118 = v37;
  v119 = v45;
  v48 = v116;

  v49 = sub_29D547EE8(sub_29D5339B8, v117, v48);
  v50 = *(v49 + 16);
  if (v50)
  {
    v96 = v9;
    v97 = v8;
    v92 = *(v48 + 16);
    v51 = *(v107 + 16);
    v94 = v15;
    v95 = v12;
    v51(v15, v108, v12);
    sub_29D5B0D9C();
    v52 = *(v17 + 16);
    v91 = v30;
    v52(v113, v30, v47);
    v108 = (v111 + *(v105 + 44));
    v53 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v93 = v49;
    v54 = v49 + v53;
    v55 = *(v99 + 72);
    v56 = v54;
    v99 = v50;
    v57 = v50;
    v58 = v98;
    v110 = v47;
    v116 = (v17 + 32);
    do
    {
      v59 = v111;
      sub_29D5339D8(v56, v111, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B0E1C();
      v60 = v55;
      v61 = v113;
      v62 = sub_29D5B0DFC();
      v63 = v110;
      sub_29D533A40(v59, type metadata accessor for SharedConceptFeedItemData);
      if (v62)
      {
        v64 = v61;
      }

      else
      {
        v64 = v58;
      }

      if (v62)
      {
        v65 = v58;
      }

      else
      {
        v65 = v61;
      }

      v114(v64, v63);
      v66 = *v116;
      v67 = v109;
      (*v116)(v109, v65, v63);
      v68 = v61;
      v55 = v60;
      v69 = v67;
      v70 = v66;
      v66(v68, v69, v63);
      v56 += v60;
      --v57;
    }

    while (v57);
    v114(v91, v63);
    v66(v106, v113, v63);
    v71 = (v112 + *(v105 + 28));
    v72 = MEMORY[0x29EDCA190];
    v73 = v99;
    do
    {
      v74 = v112;
      sub_29D5339D8(v54, v112, type metadata accessor for SharedConceptFeedItemData);
      v76 = *v71;
      v75 = v71[1];

      sub_29D533A40(v74, type metadata accessor for SharedConceptFeedItemData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_29D514C4C(0, *(v72 + 2) + 1, 1, v72);
      }

      v78 = *(v72 + 2);
      v77 = *(v72 + 3);
      if (v78 >= v77 >> 1)
      {
        v72 = sub_29D514C4C((v77 > 1), v78 + 1, 1, v72);
      }

      *(v72 + 2) = v78 + 1;
      v79 = &v72[16 * v78];
      *(v79 + 4) = v76;
      *(v79 + 5) = v75;
      v54 += v55;
      --v73;
    }

    while (v73);

    v80 = *MEMORY[0x29EDC4068];
    v81 = sub_29D5B1D6C();
    v82 = v100;
    (*(*(v81 - 8) + 104))(v100, v80, v81);
    v83 = v97;
    *(v82 + v97[5]) = v92;
    *(v82 + v83[6]) = v72;
    v84 = v94;
    v85 = sub_29D5B164C();
    v87 = v86;
    (*(v107 + 8))(v84, v95);
    v88 = (v82 + v83[7]);
    *v88 = v85;
    v88[1] = v87;
    v47 = v110;
    v70((v82 + v83[8]), v106, v110);
    v89 = v104;
    sub_29D510658(v82, v104);
    (*(v96 + 56))(v89, 0, 1, v83);
  }

  else
  {
    (*(v9 + 56))(v104, 1, 1, v8);
  }

  v90 = v114;
  v114(v103, v47);
  v90(v102, v47);
  objc_autoreleasePoolPop(v101);
}

uint64_t sub_29D52DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D5B0E6C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v18 - v12;
  sub_29D5B29AC();
  if (sub_29D5B299C())
  {
    v14 = 1;
  }

  else
  {
    v18[1] = a3;
    type metadata accessor for SharedConceptFeedItemData(0);
    sub_29D5B0E1C();
    (*(v6 + 16))(v10, a2, v5);
    v15 = sub_29D5B0DFC();
    v16 = *(v6 + 8);
    v16(v10, v5);
    if (v15)
    {
      (*(v6 + 24))(a2, v13, v5);
    }

    v14 = sub_29D5B0E0C();
    v16(v13, v5);
  }

  return v14 & 1;
}

uint64_t sub_29D52E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a5;
  v39 = a1;
  v40 = a3;
  v43 = sub_29D5B148C();
  v38 = *(v43 - 8);
  v44 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v43, v6);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SharedNewRecordsAlertData;
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v37 = &v34 - v11;
  v12 = sub_29D5B143C();
  v13 = sub_29D5B10BC();
  v15 = v14;

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_29D5B494C();

  v48 = 0xD000000000000022;
  v49 = 0x800000029D5BD7A0;
  MEMORY[0x29ED5E510](v13, v15);

  v16 = v48;
  v35 = v49;
  v17 = sub_29D5B143C();
  sub_29D5B10BC();

  sub_29D5B196C();

  v18 = sub_29D5B142C();
  v19 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v20 = sub_29D5B3E1C();

  v36 = [v19 initWithCategory:1 domainName:v20 healthStore:v18];

  v48 = v40;
  sub_29D5B103C();
  sub_29D532B90(&qword_2A1A173A8, MEMORY[0x29EDC36A8], MEMORY[0x29EDC36A0]);
  v21 = v16;
  v40 = sub_29D5B17FC();
  v48 = v40;
  v22 = v37;
  sub_29D5105D8(v39, v37);
  v23 = v38;
  v25 = v42;
  v24 = v43;
  (*(v38 + 16))(v42, a2, v43);
  v26 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v23 + 80) + v27 + 16) & ~*(v23 + 80);
  v29 = (v44 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_29D5337E4(v22, v30 + v26, qword_2A1A19160, v45);
  v31 = (v30 + v27);
  v32 = v35;
  *v31 = v21;
  v31[1] = v32;
  (*(v23 + 32))(v30 + v28, v25, v24);
  *(v30 + v29) = v46;
  sub_29D532DF8(0, &qword_2A1A16818, sub_29D4B423C, MEMORY[0x29EDB89F8]);
  sub_29D4B4270(0);
  sub_29D5330DC(&qword_2A1A16820, &qword_2A1A16818, sub_29D4B423C);
  sub_29D5B3B7C();
}

uint64_t sub_29D52E4D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v41 = a5;
  v44 = a4;
  v45 = a2;
  v9 = sub_29D5B371C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for SharedNewRecordsAlertData(0);
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_29D5105D8(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_29D533774(v16, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    v22 = 0;
  }

  else
  {
    sub_29D510658(v16, v21);
    sub_29D5B0D8C();
    v22 = sub_29D5B412C();
    sub_29D533A40(v21, type metadata accessor for SharedNewRecordsAlertData);
  }

  if (sub_29D5B470C())
  {
    v40 = v22;
    sub_29D5B36FC();

    v23 = sub_29D5B370C();
    v24 = sub_29D5B429C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = a6;
      v26 = v25;
      v38 = swift_slowAlloc();
      v47[0] = v38;
      *v26 = 136446466;
      v27 = sub_29D5B4DFC();
      v29 = sub_29D501890(v27, v28, v47);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = v45;
      *(v26 + 14) = sub_29D501890(v45, a3, v47);
      _os_log_impl(&dword_29D48C000, v23, v24, "%{public}s Removing any notifications that may have been delivered: %s", v26, 0x16u);
      v31 = v38;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v31, -1, -1);
      v32 = v26;
      a6 = v39;
      MEMORY[0x29ED5FB80](v32, -1, -1);

      (*(v42 + 8))(v12, v43);
    }

    else
    {

      (*(v42 + 8))(v12, v43);
      v30 = v45;
    }

    sub_29D5B140C();
    sub_29D499EC0(v47, v47[3]);
    sub_29D5B138C();
    swift_getObjectType();
    sub_29D48F410(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29D5B62A0;
    *(v33 + 32) = v30;
    *(v33 + 40) = a3;

    sub_29D5B178C();
    swift_unknownObjectRelease();

    sub_29D48F668(v47);
  }

  v34 = sub_29D5B471C();

  sub_29D4B4270(0);
  v36 = *(v35 + 48);
  result = sub_29D5105D8(v46, a6);
  *(a6 + v36) = v34 & 1;
  return result;
}

uint64_t sub_29D52E988(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t, _BYTE *, uint64_t), uint64_t a5, uint64_t a6, NSObject *a7)
{
  v73 = a7;
  v85 = a4;
  v87 = a3;
  LODWORD(v84) = a2;
  v79 = sub_29D5B148C();
  v76 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v11);
  v75 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29D5B371C();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v81 = &v70[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x29EDC9C68];
  sub_29D532AA4(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v20 = &v70[-v19];
  v21 = sub_29D5B134C();
  v82 = *(v21 - 8);
  v83 = v21;
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v74 = &v70[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v23, v25);
  v80 = &v70[-v26];
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, v16);
  MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v30 = &v70[-v29];
  v31 = type metadata accessor for SharedNewRecordsAlertData(0);
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v70[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D5105D8(a1, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_29D533774(v30, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    sub_29D510658(v30, v35);
    v86[3] = sub_29D5B103C();
    v86[4] = sub_29D532B90(&qword_2A1A173A8, MEMORY[0x29EDC36A8], MEMORY[0x29EDC36A0]);
    v86[0] = a6;

    sub_29D52F1F0(v35, v85, a5, v86, v84 & 1, v20);
    if (v7)
    {
      sub_29D533A40(v35, type metadata accessor for SharedNewRecordsAlertData);
      return sub_29D48F668(v86);
    }

    else
    {
      v37 = a5;
      sub_29D48F668(v86);
      v39 = v82;
      v38 = v83;
      if ((*(v82 + 48))(v20, 1, v83) == 1)
      {
        sub_29D533A40(v35, type metadata accessor for SharedNewRecordsAlertData);
        sub_29D533774(v20, qword_2A1A19830, MEMORY[0x29EDC3840]);
        return MEMORY[0x29EDCA190];
      }

      else
      {
        v40 = *(v39 + 32);
        v41 = v80;
        v87 = v39 + 32;
        v85 = v40;
        v40(v80, v20, v38);
        sub_29D5B36CC();
        v43 = v75;
        v42 = v76;
        (*(v76 + 16))(v75, v37, v79);
        v44 = v74;
        (*(v39 + 16))(v74, v41, v38);
        v45 = sub_29D5B370C();
        v46 = sub_29D5B426C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v86[0] = v72;
          *v47 = 136446722;
          v48 = sub_29D5B4DFC();
          v73 = v45;
          v50 = sub_29D501890(v48, v49, v86);
          v84 = 0;
          v51 = v50;

          *(v47 + 4) = v51;
          *(v47 + 12) = 2080;
          v52 = sub_29D5B143C();
          v53 = sub_29D5B10BC();
          v71 = v46;
          v54 = v43;
          v56 = v55;

          v57 = v54;
          v58 = v83;
          (*(v42 + 8))(v57, v79);
          v59 = sub_29D501890(v53, v56, v86);

          *(v47 + 14) = v59;
          *(v47 + 22) = 2080;
          sub_29D532B90(&qword_2A17A4910, MEMORY[0x29EDC3840], MEMORY[0x29EDC3848]);
          v60 = sub_29D5B4C4C();
          v62 = v61;
          v63 = v82;
          (*(v82 + 8))(v44, v58);
          v64 = sub_29D501890(v60, v62, v86);

          *(v47 + 24) = v64;
          v65 = v73;
          _os_log_impl(&dword_29D48C000, v73, v71, "[%{public}s] Generated notification feed item for profile %s: %s", v47, 0x20u);
          v66 = v72;
          swift_arrayDestroy();
          MEMORY[0x29ED5FB80](v66, -1, -1);
          MEMORY[0x29ED5FB80](v47, -1, -1);

          (*(v77 + 8))(v81, v78);
          v67 = v63;
        }

        else
        {

          (*(v39 + 8))(v44, v38);
          (*(v42 + 8))(v43, v79);
          (*(v77 + 8))(v81, v78);
          v58 = v38;
          v67 = v39;
        }

        sub_29D532AA4(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_29D5B62A0;
        v85(v69 + v68, v80, v58);
        sub_29D533A40(v35, type metadata accessor for SharedNewRecordsAlertData);
        return v69;
      }
    }
  }
}

void sub_29D52F1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a5;
  v13 = MEMORY[0x29ED5F4B0]();
  sub_29D52F6EC(a3, a2, a1, v7, v6, a4, v6, &v14, a6);
  objc_autoreleasePoolPop(v13);
}

uint64_t sub_29D52F298@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  sub_29D532AA4(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v43[-v9];
  sub_29D532DF8(0, &qword_2A1A161B8, sub_29D4B3AC0, MEMORY[0x29EDB8B18]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v50 = &v43[-v15];
  v16 = sub_29D5B371C();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a1;
  sub_29D5B36CC();
  v21 = v20;
  v22 = sub_29D5B370C();
  v23 = sub_29D5B427C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = v13;
    v25 = v24;
    v45 = swift_slowAlloc();
    v52 = v45;
    *v25 = 136446466;
    v26 = sub_29D5B4DFC();
    v47 = a3;
    v28 = sub_29D501890(v26, v27, &v52);
    v44 = v23;
    v29 = v10;
    v30 = v12;
    v31 = v7;
    v32 = v6;
    v33 = v28;

    *(v25 + 4) = v33;
    v6 = v32;
    v7 = v31;
    v12 = v30;
    v10 = v29;
    *(v25 + 12) = 2082;
    v51 = v20;
    v34 = v20;
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v35 = sub_29D5B3E9C();
    v37 = sub_29D501890(v35, v36, &v52);

    *(v25 + 14) = v37;
    a3 = v47;
    _os_log_impl(&dword_29D48C000, v22, v44, "[%{public}s] Unable to generate notification feed item: %{public}s", v25, 0x16u);
    v38 = v45;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v38, -1, -1);
    v39 = v25;
    v13 = v46;
    MEMORY[0x29ED5FB80](v39, -1, -1);
  }

  (*(v48 + 8))(v19, v49);
  v52 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
  v40 = v50;
  sub_29D5B39EC();
  (*(v7 + 8))(v10, v6);
  sub_29D532B08();
  v41 = sub_29D5B3B1C();
  result = (*(v13 + 8))(v40, v12);
  *a3 = v41;
  return result;
}

uint64_t sub_29D52F6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v89 = a8;
  v75 = a7;
  v72 = a6;
  v74 = a5;
  v73 = a4;
  v98 = a3;
  v94 = a2;
  v87 = a9;
  v96 = type metadata accessor for SharedNewRecordsAlertData(0);
  v69 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96, v10);
  v70 = v11;
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29D5B148C();
  v66 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68, v12);
  v67 = v13;
  v86 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532AA4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v84 = &v65 - v16;
  v17 = sub_29D5B0E6C();
  v82 = *(v17 - 8);
  v83 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v81 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v80 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B170C();
  v92 = *(v23 - 8);
  v93 = v23;
  MEMORY[0x2A1C7C4A8](v23, v24);
  v91 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_29D5B104C();
  v77 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v26);
  v78 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B134C();
  v85 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v90 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D5B1AAC();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D5B1D6C();
  v37 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v65 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 104))(v40, *MEMORY[0x29EDC4068], v36);
  (*(v32 + 104))(v35, *MEMORY[0x29EDC3F10], v31);
  v88 = a1;
  v41 = sub_29D5B143C();
  v76 = sub_29D5B26DC();

  (*(v32 + 8))(v35, v31);
  (*(v37 + 8))(v40, v36);
  sub_29D532B90(&qword_2A17A4918, type metadata accessor for SharedNewRecordsAlertData, &unk_29D5B76E8);
  v42 = v95;
  sub_29D5B0BEC();
  if (v42)
  {

    *v89 = v42;
  }

  else
  {
    v95 = v28;
    type metadata accessor for CategoryUpdateViewController(0);
    (*(v77 + 104))(v78, *MEMORY[0x29EDC3758], v79);
    sub_29D5B143C();
    sub_29D5B110C();
    sub_29D5B140C();
    sub_29D5B11CC();
    sub_29D48F668(&v97);
    v44 = v98;
    (*(v82 + 16))(v81, v98 + *(v96 + 32), v83);
    sub_29D5B0C6C();
    v45 = v91;
    sub_29D5B16EC();
    v46 = v92;
    v47 = v84;
    v48 = v45;
    v49 = v93;
    (*(v92 + 16))(v84, v48, v93);
    (*(v46 + 56))(v47, 0, 1, v49);
    sub_29D5B12BC();
    v50 = sub_29D5B143C();
    v51 = sub_29D5B10DC();
    LOBYTE(v47) = sub_29D5B10CC();

    if (v47)
    {
      (*(v92 + 8))(v91, v93);
      v52 = v87;
      v53 = v95;
      v54 = v85;
      v55 = v90;
    }

    else
    {
      v56 = v66;
      v57 = v68;
      (*(v66 + 16))(v86, v88, v68);
      v58 = v44;
      v59 = v71;
      sub_29D5339D8(v58, v71, type metadata accessor for SharedNewRecordsAlertData);
      sub_29D48F564(v72, &v97);
      v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v61 = (v67 + *(v69 + 80) + v60) & ~*(v69 + 80);
      v62 = (v70 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 16) = v73 & 1;
      *(v63 + 24) = v74;
      (*(v56 + 32))(v63 + v60, v86, v57);
      sub_29D510658(v59, v63 + v61);
      sub_29D497868(&v97, v63 + v62);
      *(v63 + ((v62 + 47) & 0xFFFFFFFFFFFFFFF8)) = v75;
      v64 = v90;
      sub_29D5B11DC();
      (*(v92 + 8))(v91, v93);
      v52 = v87;
      v53 = v95;
      v54 = v85;
      v55 = v64;
    }

    (*(v54 + 32))(v52, v55, v53);
    return (*(v54 + 56))(v52, 0, 1, v53);
  }

  return result;
}

uint64_t sub_29D5300A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_29D530304(a4, a5, a6);
    sub_29D48F51C(0, &qword_2A17A4920, 0x29EDBCCD8);
    sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    sub_29D5B397C();
  }

  else
  {
    sub_29D5B36FC();
    v17 = sub_29D5B370C();
    v18 = sub_29D5B429C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = sub_29D5B4DFC();
      v23 = sub_29D501890(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29D48C000, v17, v18, "%s Not generating notification for shared lab updates", v19, 0xCu);
      sub_29D48F668(v20);
      MEMORY[0x29ED5FB80](v20, -1, -1);
      MEMORY[0x29ED5FB80](v19, -1, -1);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_29D530304(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v118 = a3;
  v125 = a2;
  v97 = type metadata accessor for SharedNewRecordsAlertData(0);
  v107 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97, v6);
  v108 = v7;
  v109 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29D5B148C();
  v8 = *(v106 - 1);
  MEMORY[0x2A1C7C4A8](v106, v9);
  v104 = v10;
  v105 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29D5B31AC();
  v102 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103, v11);
  v101 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532CEC(0);
  v111 = *(v13 - 8);
  v112 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v110 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D532F50(0);
  v116 = v16;
  v114 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v113 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D533140(0);
  v119 = v19;
  v117 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v115 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B371C();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v121 = v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = v93 - v28;
  sub_29D5B36FC();
  v30 = sub_29D5B370C();
  v31 = sub_29D5B429C();
  v32 = os_log_type_enabled(v30, v31);
  v124 = v4;
  v99 = v22;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v123 = v8;
    v34 = v33;
    v35 = swift_slowAlloc();
    *&v126 = v35;
    *v34 = 136446466;
    v36 = sub_29D5B4DFC();
    v38 = a1;
    v39 = sub_29D501890(v36, v37, &v126);

    *(v34 + 4) = v39;
    a1 = v38;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_29D501890(0xD000000000000051, 0x800000029D5BD7D0, &v126);
    _os_log_impl(&dword_29D48C000, v30, v31, "[%{public}s] %s running", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v35, -1, -1);
    v40 = v34;
    v22 = v99;
    v8 = v123;
    MEMORY[0x29ED5FB80](v40, -1, -1);
  }

  v41 = *(v23 + 8);
  v41(v29, v22);
  v122 = sub_29D5B142C();
  v100 = sub_29D5B143C();
  v42 = sub_29D5B10BC();
  v44 = v43;
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;
  sub_29D5B494C();

  *&v126 = 0xD000000000000022;
  *(&v126 + 1) = 0x800000029D5BD7A0;
  MEMORY[0x29ED5E510](v42, v44);

  v45 = *(&v126 + 1);
  v120 = v126;
  sub_29D5B140C();
  sub_29D499EC0(&v126, v127);
  v123 = sub_29D5B138C();
  v98 = v46;
  sub_29D48F668(&v126);
  sub_29D5B0D8C();
  v97 = sub_29D5B412C();
  v96 = v47;
  v48 = v121;
  sub_29D5B36FC();

  v49 = sub_29D5B370C();
  v50 = sub_29D5B429C();

  v51 = os_log_type_enabled(v49, v50);
  v95 = v45;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v94 = a1;
    v53 = v52;
    v54 = swift_slowAlloc();
    *&v126 = v54;
    *v53 = 136446466;
    v55 = v124;
    v56 = sub_29D5B4DFC();
    v93[1] = v23;
    v58 = v41;
    v59 = sub_29D501890(v56, v57, &v126);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_29D501890(v120, v45, &v126);
    _os_log_impl(&dword_29D48C000, v49, v50, "[%{public}s] Proceeding with notification generation for %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v54, -1, -1);
    v60 = v53;
    a1 = v94;
    MEMORY[0x29ED5FB80](v60, -1, -1);

    v58(v121, v99);
  }

  else
  {

    v41(v48, v22);
    v55 = v124;
  }

  v61 = v102;
  v62 = v101;
  v63 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x29EDC2828], v103);
  type metadata accessor for SharedConceptFeedItemGenerator(0);
  sub_29D532B90(qword_2A1A17D68, type metadata accessor for SharedConceptFeedItemGenerator, &unk_29D5B9AA8);
  v64 = v55;
  v65 = sub_29D5B2F4C();
  (*(v61 + 8))(v62, v63);
  *&v126 = v65;
  v66 = v105;
  v67 = v106;
  (*(v8 + 16))(v105, a1, v106);
  v68 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v69 = (v104 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v8 + 32))(v70 + v68, v66, v67);
  *(v70 + v69) = v64;
  sub_29D5B396C();
  sub_29D499998();
  v71 = MEMORY[0x29EDC3928];
  v106 = MEMORY[0x29EDB89F8];
  sub_29D532DF8(0, &qword_2A1A16838, MEMORY[0x29EDC3928], MEMORY[0x29EDB89F8]);
  v121 = MEMORY[0x29EDB8A00];
  sub_29D532B90(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
  sub_29D5330DC(&qword_2A1A16840, &qword_2A1A16838, v71);
  v72 = v110;
  sub_29D5B3C5C();

  v73 = v109;
  sub_29D5339D8(v125, v109, type metadata accessor for SharedNewRecordsAlertData);
  v74 = (*(v107 + 80) + 64) & ~*(v107 + 80);
  v75 = (v108 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v95;
  v76[2] = v120;
  v76[3] = v77;
  v78 = v96;
  v76[4] = v97;
  v76[5] = v78;
  v79 = v122;
  v80 = v100;
  v76[6] = v122;
  v76[7] = v80;
  sub_29D510658(v73, v76 + v74);
  v81 = (v76 + v75);
  v82 = v98;
  *v81 = v123;
  v81[1] = v82;
  *(v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8)) = v64;
  v125 = v80;
  swift_unknownObjectRetain();
  v122 = v79;
  sub_29D5B396C();
  sub_29D53305C(0);
  sub_29D532DF8(0, &qword_2A17A4948, sub_29D53305C, v106);
  v83 = MEMORY[0x29EDB89A8];
  sub_29D532B90(&qword_2A17A4960, sub_29D532CEC, MEMORY[0x29EDB89A8]);
  sub_29D5330DC(&qword_2A17A4958, &qword_2A17A4948, sub_29D53305C);
  v84 = v113;
  v85 = v112;
  sub_29D5B3BFC();

  (*(v111 + 8))(v72, v85);
  sub_29D48F564(v118, &v126);
  v86 = swift_allocObject();
  sub_29D497868(&v126, v86 + 16);
  *(v86 + 56) = v124;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_29D533434;
  *(v87 + 24) = v86;
  sub_29D5B396C();
  sub_29D48F51C(0, &qword_2A17A4920, 0x29EDBCCD8);
  sub_29D53322C(0);
  sub_29D532B90(&qword_2A17A4980, sub_29D532F50, v83);
  sub_29D532B90(&qword_2A17A4978, sub_29D53322C, v121);
  v88 = v115;
  v89 = v116;
  sub_29D5B3BFC();

  (*(v114 + 8))(v84, v89);
  sub_29D532B90(&qword_2A17A4988, sub_29D533140, v83);
  v90 = v119;
  v91 = sub_29D5B3B1C();

  swift_unknownObjectRelease();
  (*(v117 + 8))(v88, v90);
  return v91;
}

uint64_t sub_29D5310A0@<X0>(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_29D5B371C();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36FC();
  v10 = sub_29D5B370C();
  v11 = sub_29D5B429C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a1;
    v13 = a3;
    v14 = v12;
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136446210;
    v16 = sub_29D5B4DFC();
    v18 = sub_29D501890(v16, v17, v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29D48C000, v10, v11, "[%{public}s] Update notifications are enabled", v14, 0xCu);
    sub_29D48F668(v15);
    MEMORY[0x29ED5FB80](v15, -1, -1);
    v19 = v14;
    a3 = v13;
    MEMORY[0x29ED5FB80](v19, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_29D5B140C();
  sub_29D499EC0(v22, v22[3]);
  *a3 = sub_29D5B139C();
  return sub_29D48F668(v22);
}

uint64_t sub_29D531298@<X0>(uint64_t a1@<X0>, void *a6@<X5>, void *a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, void *a10, uint64_t a11, uint64_t a12)
{
  v53 = a6;
  v54 = a7;
  v64 = a9;
  v52[0] = a1;
  v52[1] = a12;
  v58 = a11;
  v59 = a8;
  sub_29D5335E0(0);
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v61 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D5B371C();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B0EDC();
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v60 = sub_29D5B17CC();
  v21 = *(v60 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v60, v23);
  v55 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v27 = v52 - v26;

  sub_29D5B0ECC();
  sub_29D5B179C();
  v28 = v59;
  v59 = v27;
  v29 = sub_29D531848(v53, v54, v52[0], v28, v27);
  sub_29D5B36FC();
  v30 = v29;
  v31 = sub_29D5B370C();
  v32 = sub_29D5B429C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v66[0] = v34;
    *v33 = 136446466;
    v35 = sub_29D5B4DFC();
    v37 = sub_29D501890(v35, v36, v66);
    v54 = a10;
    v38 = v37;

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = HKSensitiveLogItem();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v40 = sub_29D5B3E7C();
    v42 = sub_29D501890(v40, v41, v66);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_29D48C000, v31, v32, "[%{public}s] Generating notification: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v34, -1, -1);
    MEMORY[0x29ED5FB80](v33, -1, -1);
  }

  (*(v56 + 8))(v18, v57);
  swift_getObjectType();
  v65 = sub_29D5B177C();
  v43 = v55;
  v45 = v59;
  v44 = v60;
  (*(v21 + 16))(v55, v59, v60);
  v46 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v47 = swift_allocObject();
  (*(v21 + 32))(v47 + v46, v43, v44);
  sub_29D53322C(0);
  sub_29D53305C(0);
  sub_29D532B90(&qword_2A17A4978, sub_29D53322C, MEMORY[0x29EDB8A00]);
  v48 = v61;
  sub_29D5B3B7C();

  sub_29D532B90(&qword_2A17A49B8, sub_29D5335E0, MEMORY[0x29EDB8908]);
  v49 = v63;
  v50 = sub_29D5B3B1C();

  (*(v62 + 8))(v48, v49);
  result = (*(v21 + 8))(v45, v44);
  *v64 = v50;
  return result;
}

uint64_t sub_29D531848(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v11 = MEMORY[0x29ED5F4B0]();
  sub_29D531E34(a1, a3, a4, v5, a5, a2, v5, &v13);
  objc_autoreleasePoolPop(v11);
  return v13;
}

id sub_29D5318D4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v9 = *a1;
  sub_29D53305C(0);
  v6 = *(v5 + 48);
  *a3 = v9;
  v7 = sub_29D5B17CC();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);

  return v9;
}

uint64_t sub_29D531974(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = a4;
  v42 = a3;
  v43 = a1;
  sub_29D53349C(0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B17CC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B371C();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36FC();
  (*(v9 + 16))(v12, a2, v8);
  v18 = sub_29D5B370C();
  v19 = sub_29D5B429C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v13;
    v21 = v20;
    v39 = swift_slowAlloc();
    v47 = v39;
    *v21 = 136446466;
    v22 = sub_29D5B4DFC();
    v24 = sub_29D501890(v22, v23, &v47);
    v41 = a2;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_29D5B17AC();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = sub_29D501890(v26, v28, &v47);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_29D48C000, v18, v19, "[%{public}s] Saving content state: %s", v21, 0x16u);
    v30 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    MEMORY[0x29ED5FB80](v21, -1, -1);

    (*(v14 + 8))(v17, v40);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  sub_29D499EC0(v42, v42[3]);
  v47 = sub_29D5B166C();
  v31 = swift_allocObject();
  v32 = v43;
  *(v31 + 16) = v43;
  sub_29D533558(0);
  sub_29D48F51C(0, &qword_2A17A4920, 0x29EDBCCD8);
  sub_29D532B90(&qword_2A17A49A0, sub_29D533558, MEMORY[0x29EDB8A00]);
  v33 = v32;
  v34 = v44;
  sub_29D5B3B7C();

  sub_29D532B90(&qword_2A17A49A8, sub_29D53349C, MEMORY[0x29EDB8908]);
  v35 = v46;
  v36 = sub_29D5B3B1C();
  (*(v45 + 8))(v34, v35);
  return v36;
}

uint64_t sub_29D531E34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v89[1] = a7;
  v108 = a6;
  v105 = a5;
  v106 = a4;
  v103 = a3;
  v98 = a1;
  v99 = a2;
  v110 = a8;
  v91 = sub_29D5B371C();
  v90 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91, v9);
  v111 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29D532AA4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v104 = v89 - v14;
  sub_29D532AA4(0, &qword_2A17A49C0, MEMORY[0x29EDB9B18], v11);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v102 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v112 = v89 - v20;
  v21 = sub_29D5B200C();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x29EDB9C70];
  sub_29D532AA4(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], v11);
  MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v29 = v89 - v28;
  v30 = sub_29D5B0EDC();
  v31 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = [a1 profileIdentifier];
  v35 = [v109 identifier];
  sub_29D5B0EBC();

  v113 = sub_29D5B0E8C();
  v114 = v36;
  v100 = v31;
  v101 = v30;
  (*(v31 + 8))(v34, v30);
  v96 = [objc_allocWithZone(MEMORY[0x29EDBCCC0]) init];
  v37 = sub_29D5B0EFC();
  v38 = *(v37 - 8);
  v95 = *(v38 + 56);
  v94 = v38 + 56;
  v95(v29, 1, 1, v37);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v39 = *(v22 + 8);
  v92 = v22 + 8;
  v93 = v39;
  v39(v25, v21);
  v40 = v97;
  sub_29D533774(v29, &qword_2A1A19588, v97);
  sub_29D5B3E2C();

  v41 = sub_29D5B3E1C();

  v42 = v96;
  [v96 setTitle_];

  v95(v29, 1, 1, v37);
  sub_29D5B1FEC();
  sub_29D5B2A0C();
  v93(v25, v21);
  sub_29D533774(v29, &qword_2A1A19588, v40);
  sub_29D53370C(0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D5B5E20;
  v44 = sub_29D5B164C();
  v46 = v45;
  *(v43 + 56) = MEMORY[0x29EDC99B0];
  *(v43 + 64) = sub_29D4A25A4();
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = *&v103[*(type metadata accessor for SharedNewRecordsAlertData(0) + 20)];
  v48 = MEMORY[0x29EDC9C10];
  *(v43 + 96) = MEMORY[0x29EDC9BA8];
  *(v43 + 104) = v48;
  *(v43 + 72) = v47;
  sub_29D5B3E2C();

  v49 = sub_29D5B3E1C();

  [v42 setBody_];

  v50 = sub_29D5B3E1C();
  [v42 setCategoryIdentifier_];

  v51 = sub_29D5B3E1C();
  v52 = v42;
  [v42 setThreadIdentifier_];

  v53 = [v98 profileIdentifier];
  v54 = [objc_allocWithZone(MEMORY[0x29EDC1570]) initWithProfileIdentifier_];

  v103 = v54;
  v55 = [v54 URLForSharingOverview];
  v56 = v102;
  if (v55)
  {
    v57 = v55;
    sub_29D5B0D4C();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = sub_29D5B0D5C();
  (*(*(v59 - 8) + 56))(v56, v58, 1, v59);
  v60 = v112;
  sub_29D5337E4(v56, v112, &qword_2A17A49C0, MEMORY[0x29EDB9B18]);
  v61 = v104;
  sub_29D5B17BC();
  (*(v100 + 56))(v61, 0, 1, v101);
  type metadata accessor for SharedConceptFeedItemGenerator(0);
  sub_29D532B90(qword_2A1A17D68, type metadata accessor for SharedConceptFeedItemGenerator, &unk_29D5B9AA8);
  sub_29D5B2F5C();
  sub_29D533774(v61, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
  v62 = sub_29D5B3D2C();

  [v52 setUserInfo_];

  v63 = sub_29D5B2F6C();
  [v52 setSound_];

  sub_29D48F410(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29D5B6350;
  v65 = v107;
  v66 = v108;
  v67 = sub_29D5B2F3C();
  v68 = v111;
  if (v65)
  {
    *(v64 + 16) = 0;

    sub_29D5B36FC();
    v69 = v66;
    v70 = v65;
    v71 = sub_29D5B370C();
    v72 = sub_29D5B427C();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v115 = v74;
      *v73 = 136315650;
      v75 = sub_29D5B4DFC();
      v77 = sub_29D501890(v75, v76, &v115);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v78 = sub_29D5B10BC();
      v80 = sub_29D501890(v78, v79, &v115);

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v117 = v65;
      v81 = v65;
      sub_29D4A02FC(0, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
      v82 = sub_29D5B3E9C();
      v84 = sub_29D501890(v82, v83, &v115);
      v60 = v112;

      *(v73 + 24) = v84;
      _os_log_impl(&dword_29D48C000, v71, v72, "[%s] [Contact Photo] Could not create notification attachment for %s. %s", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v74, -1, -1);
      MEMORY[0x29ED5FB80](v73, -1, -1);

      (*(v90 + 8))(v111, v91);
    }

    else
    {

      (*(v90 + 8))(v68, v91);
    }
  }

  else
  {
    *(v64 + 32) = v67;
    sub_29D48F51C(0, &qword_2A17A49C8, 0x29EDBCCC8);
    v85 = sub_29D5B401C();

    [v52 setAttachments_];
  }

  v115 = 0;
  v116 = 0xE000000000000000;
  sub_29D5B494C();

  v115 = 0xD000000000000022;
  v116 = 0x800000029D5BD7A0;
  MEMORY[0x29ED5E510](v113, v114);

  v86 = sub_29D5B3E1C();

  v87 = [objc_opt_self() requestWithIdentifier:v86 content:v52 trigger:0];

  result = sub_29D533774(v60, &qword_2A17A49C0, MEMORY[0x29EDB9B18]);
  *v110 = v87;
  return result;
}

void sub_29D532AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D532B08()
{
  result = qword_2A1A161C0;
  if (!qword_2A1A161C0)
  {
    sub_29D532DF8(255, &qword_2A1A161B8, sub_29D4B3AC0, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A161C0);
  }

  return result;
}

uint64_t sub_29D532B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D532BD8(uint64_t a1)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5300A4(a1, v9, v10, v1 + v4, (v1 + v7), v1 + v8, v11);
}

void sub_29D532CEC(uint64_t a1)
{
  if (!qword_2A17A4928)
  {
    v1 = MEMORY[0x29EDC3928];
    sub_29D532DF8(255, &qword_2A1A16838, MEMORY[0x29EDC3928], MEMORY[0x29EDB89F8]);
    sub_29D532E84(255);
    sub_29D5330DC(&qword_2A1A16840, &qword_2A1A16838, v1);
    sub_29D532B90(&qword_2A17A4938, sub_29D532E84, MEMORY[0x29EDB88D8]);
    v2 = sub_29D5B38FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17A4928);
    }
  }
}

void sub_29D532DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D532E84(uint64_t a1)
{
  if (!qword_2A17A4930)
  {
    sub_29D499998();
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    sub_29D532B90(&qword_2A1A19778, sub_29D499998, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B382C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4930);
    }
  }
}

void sub_29D532F50(uint64_t a1)
{
  if (!qword_2A17A4940)
  {
    sub_29D532DF8(255, &qword_2A17A4948, sub_29D53305C, MEMORY[0x29EDB89F8]);
    sub_29D532CEC(255);
    sub_29D5330DC(&qword_2A17A4958, &qword_2A17A4948, sub_29D53305C);
    sub_29D532B90(&qword_2A17A4960, sub_29D532CEC, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4940);
    }
  }
}

void sub_29D53305C(uint64_t a1)
{
  if (!qword_2A17A4950)
  {
    sub_29D48F51C(255, &qword_2A17A4920, 0x29EDBCCD8);
    sub_29D5B17CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4950);
    }
  }
}

uint64_t sub_29D5330DC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D532DF8(255, a2, a3, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D533140(uint64_t a1)
{
  if (!qword_2A17A4968)
  {
    sub_29D53322C(255);
    sub_29D532F50(255);
    sub_29D532B90(&qword_2A17A4978, sub_29D53322C, MEMORY[0x29EDB8A00]);
    sub_29D532B90(&qword_2A17A4980, sub_29D532F50, MEMORY[0x29EDB89A8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4968);
    }
  }
}

void sub_29D53322C(uint64_t a1)
{
  if (!qword_2A17A4970)
  {
    sub_29D48F51C(255, &qword_2A17A4920, 0x29EDBCCD8);
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4970);
    }
  }
}

uint64_t sub_29D5332BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29D5310A0(v4, a1);
}

uint64_t sub_29D533368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29D531298(a1, *(v2 + 48), *(v2 + 56), (v2 + v6), a2, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D533440@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  sub_29D53305C(0);
  result = v5(v6, &a1[*(v7 + 48)]);
  *a2 = result;
  return result;
}

void sub_29D53349C(uint64_t a1)
{
  if (!qword_2A17A4990)
  {
    sub_29D533558(255);
    sub_29D48F51C(255, &qword_2A17A4920, 0x29EDBCCD8);
    sub_29D532B90(&qword_2A17A49A0, sub_29D533558, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4990);
    }
  }
}

void sub_29D533558(uint64_t a1)
{
  if (!qword_2A17A4998)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410, MEMORY[0x29EDC9F18]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A4998);
    }
  }
}

id sub_29D5335D4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void sub_29D5335E0(uint64_t a1)
{
  if (!qword_2A17A49B0)
  {
    sub_29D53322C(255);
    sub_29D53305C(255);
    sub_29D532B90(&qword_2A17A4978, sub_29D53322C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17A49B0);
    }
  }
}

id sub_29D53368C@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_29D5B17CC() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D5318D4(a1, v6, a2);
}

void sub_29D53370C(uint64_t a1)
{
  if (!qword_2A1A195B0)
  {
    sub_29D4A02FC(255, &qword_2A1A19590, MEMORY[0x29EDCA100]);
    v1 = sub_29D5B4C5C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A195B0);
    }
  }
}

uint64_t sub_29D533774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D532AA4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5337E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D532AA4(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D533864@<X0>(uint64_t a1@<X8>)
{
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_29D5B148C() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D52E4D0(v1 + v4, v8, v9, v1 + v7, v10, a1);
}

uint64_t sub_29D5339D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D533A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D533AA0()
{
  v0 = sub_29D5B1AAC();
  sub_29D50CE1C(v0, qword_2A1A1A6A8);
  v1 = sub_29D50BA5C(v0, qword_2A1A1A6A8);
  v2 = *MEMORY[0x29EDC3F18];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void *sub_29D533B28(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v8 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5362E8(a1, v1 + OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v18 = sub_29D5B143C();
  sub_29D535C90(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC36D0], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_domain, v11, v19);
  v16 = sub_29D533E34(a1);
  sub_29D536350(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v2[2] = v16;
  return v2;
}

id sub_29D533E34(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext(0);
  v102 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v104 = v4;
  v105 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535C5C(0);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v98 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v99 = &v92 - v10;
  v97 = sub_29D5B106C();
  v96 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97, v11);
  v95 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535CF4(0);
  v103 = v13;
  v101 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v100 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535E1C(0);
  v108 = v16;
  v107 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v106 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535F10(0);
  v110 = *(v19 - 8);
  v111 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v109 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D535FFC(0);
  v114 = *(v22 - 8);
  v115 = v22;
  MEMORY[0x2A1C7C4A8](v22, v23);
  v112 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53611C(0);
  v116 = *(v25 - 8);
  v117 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v113 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D536208(0);
  v119 = *(v28 - 8);
  v120 = v28;
  MEMORY[0x2A1C7C4A8](v28, v29);
  v118 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29D5B0EDC();
  v92 = *(v93 - 1);
  MEMORY[0x2A1C7C4A8](v93, v31);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D5B1AAC();
  v35 = *(v34 - 1);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0C0C();
  swift_allocObject();
  v123 = sub_29D5B0BFC();
  sub_29D5B1CBC();
  v39 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v126, v127);
  v40 = sub_29D5B136C();
  v41 = [v40 profileIdentifier];

  v122 = sub_29D5B1C6C();
  sub_29D48F668(&v126);
  sub_29D5B140C();
  if (qword_2A1A18348 != -1)
  {
    swift_once();
  }

  v42 = sub_29D50BA5C(v34, qword_2A1A1A6A8);
  v43 = *(v35 + 16);
  v121 = v34;
  v43(v38, v42, v34);
  v44 = sub_29D5B143C();
  v45 = sub_29D5B10AC();
  v46 = sub_29D5B1A8C();
  v48 = v47;
  if (v45)
  {
    v124 = 0x656C69666F72505BLL;
    v125 = 0xE90000000000003ALL;
    v49 = v46;
    v45 = v45;
    v50 = [v45 identifier];
    v51 = v33;
    sub_29D5B0EBC();

    v52 = a1;
    v53 = sub_29D5B0E8C();
    v55 = v54;
    (*(v92 + 8))(v51, v93);
    v56 = v53;
    a1 = v52;
    MEMORY[0x29ED5E510](v56, v55);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v46 = v49;
    v57 = v124;
    v58 = v125;
  }

  else
  {
    v58 = 0x800000029D5BBCB0;
    v57 = 0xD000000000000013;
  }

  v124 = v57;
  v125 = v58;
  MEMORY[0x29ED5E510](v46, v48);

  v59 = v124;
  v60 = v125;
  (*(v35 + 8))(v38, v121);
  type metadata accessor for FeedItemContextChangeGenerator();
  v61 = swift_allocObject();
  sub_29D497868(&v126, v61 + 16);
  *(v61 + 56) = v59;
  *(v61 + 64) = v60;
  v62 = [objc_opt_self() predicateForMedicalRecordWithState_];
  sub_29D53629C();
  result = [swift_getObjCClassFromMetadata() diagnosticTestResultTypeForIdentifier_];
  if (result)
  {
    v64 = result;
    v93 = v64;
    v121 = v62;
    v65 = sub_29D5B262C();

    v66 = v96;
    v67 = v95;
    v68 = v97;
    (*(v96 + 104))(v95, *MEMORY[0x29EDC37B8], v97);
    sub_29D5B105C();
    (*(v66 + 8))(v67, v68);
    v69 = sub_29D5B369C();
    v70 = v99;
    (*(*(v69 - 8) + 56))(v99, 1, 1, v69);
    *&v126 = v65;
    sub_29D5362E8(v70, v98, sub_29D535C5C);
    sub_29D535D88(0);
    v71 = MEMORY[0x29EDB8A00];
    sub_29D535EC8(&qword_2A1A166D0, sub_29D535D88, MEMORY[0x29EDB8A00]);
    v72 = v100;
    sub_29D5B381C();
    sub_29D536350(v70, sub_29D535C5C);
    v73 = v105;
    sub_29D5362E8(a1, v105, type metadata accessor for HealthRecordsGeneratorContext);
    v74 = (*(v102 + 80) + 24) & ~*(v102 + 80);
    v75 = (v104 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    v77 = v94;
    *(v76 + 16) = v94;
    sub_29D499F90(v73, v76 + v74);
    *(v76 + v75) = v123;
    sub_29D4B3AC0(0);
    sub_29D535EC8(&qword_2A1A16FE8, sub_29D535CF4, MEMORY[0x29EDC3CA8]);

    v78 = v106;
    v79 = v103;
    sub_29D5B3BCC();

    (*(v101 + 8))(v72, v79);
    sub_29D4B3A8C(0);
    v80 = MEMORY[0x29EDB8990];
    sub_29D535EC8(&qword_2A1A16BE8, sub_29D535E1C, MEMORY[0x29EDB8990]);
    sub_29D535EC8(&qword_2A1A167C0, sub_29D4B3A8C, v71);
    v81 = v109;
    v82 = v108;
    sub_29D5B3B8C();
    (*(v107 + 8))(v78, v82);
    sub_29D5360CC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v83 = MEMORY[0x29EDB8928];
    sub_29D535EC8(&qword_2A1A16D78, sub_29D535F10, MEMORY[0x29EDB8928]);

    v84 = v111;
    v85 = v112;
    sub_29D5B3BCC();

    (*(v110 + 8))(v81, v84);
    *(swift_allocObject() + 16) = v77;
    sub_29D4B2D8C(0);
    sub_29D535EC8(&qword_2A1A16BA8, sub_29D535FFC, v80);
    sub_29D535EC8(&qword_2A1A16780, sub_29D4B2D8C, v71);
    v86 = v113;
    v87 = v115;
    sub_29D5B3B8C();

    (*(v114 + 8))(v85, v87);
    *&v126 = MEMORY[0x29EDCA190];
    sub_29D535EC8(&qword_2A1A16CE8, sub_29D53611C, v83);
    v88 = v117;
    v89 = v118;
    sub_29D5B3B4C();
    (*(v116 + 8))(v86, v88);
    sub_29D535EC8(&qword_2A1A17048, sub_29D536208, MEMORY[0x29EDB88C8]);
    v90 = v120;
    v91 = sub_29D5B3B1C();

    (*(v119 + 8))(v89, v90);
    return v91;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D534D1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v62 = a3;
  v63 = a2;
  v66 = a4;
  v6 = sub_29D5B104C();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RemovedCategoryFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B1D6C();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B134C();
  v21 = MEMORY[0x2A1C7C4A8](v19, v20);
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v25 = v52 - v24;
  result = MEMORY[0x2A1C7C4A8](v23, v26);
  v31 = *a1;
  if (v31 == 2 || (v31 & 1) == 0)
  {
    v38 = MEMORY[0x29EDCA190];
  }

  else
  {
    v53 = v9;
    v54 = v52 - v28;
    v55 = v30;
    v56 = v29;
    v57 = result;
    (*(v15 + 104))(v18, *MEMORY[0x29EDC4068], v14);

    v32 = *MEMORY[0x29EDC4010];
    v33 = sub_29D5B1C2C();
    (*(*(v33 - 8) + 104))(v13, v32, v33);
    v58 = v15;
    v59 = v4;
    (*(v15 + 16))(&v13[*(v10 + 20)], v18, v14);
    v34 = sub_29D5B143C();
    v52[2] = sub_29D5B298C();

    sub_29D535EC8(&qword_2A17A49D8, type metadata accessor for RemovedCategoryFeedItemData, &protocol conformance descriptor for RemovedCategoryFeedItemData);
    v35 = v59;
    v36 = sub_29D5B0BEC();
    if (v35)
    {

      sub_29D536350(v13, type metadata accessor for RemovedCategoryFeedItemData);
      return (*(v58 + 8))(v18, v14);
    }

    v59 = 0;
    v62 = v36;
    v52[1] = v37;
    type metadata accessor for NavigationFeedItemViewController(0);
    (*(v60 + 104))(v53, *MEMORY[0x29EDC36D0], v61);
    sub_29D5B143C();
    sub_29D5B110C();
    sub_29D5B124C();
    v39 = sub_29D5B159C();
    v41 = v40;
    v42 = sub_29D5B130C();
    sub_29D59AD10(v65, v39, v41);

    v42(v64, 0);
    sub_29D536350(v13, type metadata accessor for RemovedCategoryFeedItemData);
    (*(v58 + 8))(v18, v14);
    v43 = v56;
    v44 = *(v56 + 32);
    v45 = v54;
    v46 = v25;
    v47 = v57;
    v44(v54, v46, v57);
    (*(v43 + 16))(v55, v45, v47);
    v38 = sub_29D515230(0, 1, 1, MEMORY[0x29EDCA190]);
    v49 = v38[2];
    v48 = v38[3];
    if (v49 >= v48 >> 1)
    {
      v38 = sub_29D515230((v48 > 1), v49 + 1, 1, v38);
    }

    v50 = v57;
    v51 = v56 + 8;
    (*(v56 + 8))(v54, v57);
    v38[2] = v49 + 1;
    result = (v44)(v38 + ((*(v51 + 72) + 32) & ~*(v51 + 72)) + *(v51 + 64) * v49, v55, v50);
  }

  *v66 = v38;
  return result;
}

uint64_t sub_29D5352D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D535C90(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v35 - v7;
  sub_29D4B3DC8(0);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D5B371C();
  v14 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_29D5B36AC();
  v19 = v18;
  v20 = sub_29D5B370C();
  v21 = sub_29D5B427C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v36 = v5;
    v25 = v24;
    v43 = v24;
    *v23 = 136446210;
    v42 = v18;
    v26 = v18;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v27 = HKSensitiveLogItem();
    v38 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v28 = sub_29D5B3E9C();
    v30 = sub_29D501890(v28, v29, &v43);

    *(v23 + 4) = v30;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v20, v21, "Error making feed item for record, hiding from UI: %{public}s", v23, 0xCu);
    sub_29D48F668(v25);
    v31 = v25;
    v5 = v36;
    MEMORY[0x29ED5FB80](v31, -1, -1);
    v32 = v23;
    v10 = v37;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  (*(v14 + 8))(v17, v39);
  v42 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v40 + 8))(v8, v5);
  sub_29D535EC8(&qword_2A1A161C0, sub_29D4B3DC8, MEMORY[0x29EDB8B20]);
  v33 = sub_29D5B3B1C();
  result = (*(v41 + 8))(v13, v10);
  *a2 = v33;
  return result;
}

uint64_t sub_29D5356F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v6;
    v22 = v21;
    v42 = v21;
    *v20 = 136446466;
    v41 = sub_29D4A3988();
    sub_29D536464(0, &qword_2A17A49D0, sub_29D4A3988);
    v23 = sub_29D5B3E7C();
    v37 = v10;
    v25 = sub_29D501890(v23, v24, &v42);
    v40 = a2;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v41 = v15;
    v27 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v29 = sub_29D5B3E7C();
    v31 = sub_29D501890(v29, v30, &v42);

    *(v20 + 14) = v31;
    a2 = v40;
    _os_log_impl(&dword_29D48C000, v17, v18, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v32 = v22;
    v6 = v38;
    MEMORY[0x29ED5FB80](v32, -1, -1);
    v33 = v20;
    v5 = v39;
    MEMORY[0x29ED5FB80](v33, -1, -1);

    (*(v11 + 8))(v14, v37);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v41 = MEMORY[0x29EDCA190];
  sub_29D5360CC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D535EC8(&qword_2A1A165D8, sub_29D4B37EC, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v34;
  return result;
}

uint64_t sub_29D535AC4()
{

  v1 = OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D536350(v0 + OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemovedCategoriesGenerator(uint64_t a1)
{
  result = qword_2A1A18330;
  if (!qword_2A1A18330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D535BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords26RemovedCategoriesGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D535C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D535CF4(uint64_t a1)
{
  if (!qword_2A1A16FE0)
  {
    sub_29D535D88(255);
    sub_29D535EC8(&qword_2A1A166D0, sub_29D535D88, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B380C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16FE0);
    }
  }
}

void sub_29D535D88(uint64_t a1)
{
  if (!qword_2A1A166C8)
  {
    sub_29D5360CC(255, &qword_2A1A163B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A166C8);
    }
  }
}

void sub_29D535E1C(uint64_t a1)
{
  if (!qword_2A1A16BE0)
  {
    sub_29D535CF4(255);
    sub_29D4B3AC0(255);
    sub_29D535EC8(&qword_2A1A16FE8, sub_29D535CF4, MEMORY[0x29EDC3CA8]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16BE0);
    }
  }
}

uint64_t sub_29D535EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D535F10(uint64_t a1)
{
  if (!qword_2A1A16D70)
  {
    sub_29D535E1C(255);
    sub_29D4B3A8C(255);
    sub_29D535EC8(&qword_2A1A16BE8, sub_29D535E1C, MEMORY[0x29EDB8990]);
    sub_29D535EC8(&qword_2A1A167C0, sub_29D4B3A8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D70);
    }
  }
}

void sub_29D535FFC(uint64_t a1)
{
  if (!qword_2A1A16BA0)
  {
    sub_29D535F10(255);
    sub_29D5360CC(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D535EC8(&qword_2A1A16D78, sub_29D535F10, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B38DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16BA0);
    }
  }
}

void sub_29D5360CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D53611C(uint64_t a1)
{
  if (!qword_2A1A16CE0)
  {
    sub_29D535FFC(255);
    sub_29D4B2D8C(255);
    sub_29D535EC8(&qword_2A1A16BA8, sub_29D535FFC, MEMORY[0x29EDB8990]);
    sub_29D535EC8(&qword_2A1A16780, sub_29D4B2D8C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16CE0);
    }
  }
}

void sub_29D536208(uint64_t a1)
{
  if (!qword_2A1A17040)
  {
    sub_29D53611C(255);
    sub_29D535EC8(&qword_2A1A16CE8, sub_29D53611C, MEMORY[0x29EDB8928]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A17040);
    }
  }
}

unint64_t sub_29D53629C()
{
  result = qword_2A1A162E0;
  if (!qword_2A1A162E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A162E0);
  }

  return result;
}

uint64_t sub_29D5362E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D536350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5363B0@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_29D534D1C(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_29D536464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D5364F8(uint64_t a1)
{
  sub_29D53692C(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D5365BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D5365BC()
{
  if (!qword_2A1A19698)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19698);
    }
  }
}

uint64_t sub_29D536654(uint64_t a1)
{
  result = sub_29D5B0E6C();
  if (v2 <= 0x3F)
  {
    result = sub_29D5B0EDC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D536730(uint64_t a1)
{
  sub_29D536844();
  if (v1 <= 0x3F)
  {
    sub_29D536890(319);
    if (v2 <= 0x3F)
    {
      sub_29D53692C(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        sub_29D53692C(319, &qword_2A1A16488, type metadata accessor for LabNameWithDate, MEMORY[0x29EDC9A40]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_29D536844()
{
  result = qword_2A1A19640;
  if (!qword_2A1A19640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A19640);
  }

  return result;
}

void sub_29D536890(uint64_t a1)
{
  if (!qword_2A1A164B0)
  {
    sub_29D5B1BCC();
    sub_29D537510(&qword_2A1A19800, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FC8]);
    v1 = sub_29D5B3D7C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A164B0);
    }
  }
}

void sub_29D53692C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D536990(void *a1)
{
  sub_29D53766C(0, &qword_2A17A49F8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D537558();
  sub_29D5B4DCC();
  v10[15] = 0;
  sub_29D5B4BCC();
  if (!v1)
  {
    type metadata accessor for LabNameWithDate(0);
    v10[14] = 1;
    sub_29D5B0E6C();
    sub_29D537510(&qword_2A1A193D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29D5B4C0C();
    v10[13] = 2;
    sub_29D5B0EDC();
    sub_29D537510(&qword_2A1A193B8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D536BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_29D5B0EDC();
  v27 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v3);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B0E6C();
  v31 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53766C(0, &qword_2A17A49E8, MEMORY[0x29EDC9E80]);
  v34 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for LabNameWithDate(0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D537558();
  v33 = v12;
  v17 = v35;
  sub_29D5B4DBC();
  if (v17)
  {
    return sub_29D48F668(a1);
  }

  v18 = v32;
  v38 = 0;
  *v16 = sub_29D5B4B2C();
  v16[1] = v19;
  v35 = v16;
  v26 = v19;
  v37 = 1;
  sub_29D537510(&qword_2A1A193D0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  sub_29D5B4B6C();
  v25 = v13;
  v20 = *(v13 + 20);
  v21 = v35;
  (*(v31 + 32))(v35 + v20, v8, v5);
  v36 = 2;
  sub_29D537510(&qword_2A17A4030, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
  v22 = v29;
  sub_29D5B4B6C();
  (*(v18 + 8))(v33, v34);
  (*(v27 + 32))(v21 + *(v25 + 24), v30, v22);
  sub_29D5375AC(v21, v28);
  sub_29D48F668(a1);
  return sub_29D537610(v21);
}

uint64_t sub_29D53706C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D5377E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D537094(uint64_t a1)
{
  v2 = sub_29D537558();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5370D0(uint64_t a1)
{
  v2 = sub_29D537558();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D53713C()
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D537510(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D5B3D9C();
  sub_29D5B0EDC();
  sub_29D537510(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  sub_29D5B3D9C();
  return sub_29D5B4D9C();
}

uint64_t sub_29D537240(uint64_t a1)
{
  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D537510(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D5B3D9C();
  sub_29D5B0EDC();
  sub_29D537510(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  return sub_29D5B3D9C();
}

uint64_t sub_29D537330(uint64_t a1)
{
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D537510(&qword_2A17A4068, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D5B3D9C();
  sub_29D5B0EDC();
  sub_29D537510(&qword_2A1A193B0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  sub_29D5B3D9C();
  return sub_29D5B4D9C();
}

uint64_t sub_29D537430(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_29D5B4C7C() & 1) == 0 || (sub_29D5B0E3C() & 1) == 0)
  {
    return 0;
  }

  return sub_29D5B0EAC();
}

uint64_t sub_29D537510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D537558()
{
  result = qword_2A17A49F0;
  if (!qword_2A17A49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A49F0);
  }

  return result;
}

uint64_t sub_29D5375AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabNameWithDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D537610(uint64_t a1)
{
  v2 = type metadata accessor for LabNameWithDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D53766C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D537558();
    v7 = a3(a1, &type metadata for LabNameWithDate.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D5376E4()
{
  result = qword_2A17A4A00;
  if (!qword_2A17A4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A00);
  }

  return result;
}

unint64_t sub_29D53773C()
{
  result = qword_2A17A4A08;
  if (!qword_2A17A4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A08);
  }

  return result;
}

unint64_t sub_29D537794()
{
  result = qword_2A17A4A10;
  if (!qword_2A17A4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4A10);
  }

  return result;
}

uint64_t sub_29D5377E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E62616CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574614462616CLL && a2 == 0xE700000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449555562616CLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D5B4C7C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL sub_29D537900(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_29D5B1BCC();
    ++v2;
    sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
  }

  while ((sub_29D5B3E0C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_29D537A0C(uint64_t a1)
{
  v34 = a1;
  v33 = sub_29D5B104C();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v33, v4);
  sub_29D53AF40(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53AFF4(0);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v35 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_context;
  v16 = *(v15 + *(type metadata accessor for HealthRecordsGeneratorContext(0) + 20));
  *(swift_allocObject() + 16) = v16;
  sub_29D53AFD4(0);
  v31 = v17;
  v30 = MEMORY[0x29EDB8A00];
  v32 = sub_29D53A0B8(&qword_2A1A166C0, sub_29D53AFD4, MEMORY[0x29EDB8A00]);
  v18 = v16;
  sub_29D5B3A9C();
  sub_29D53A0B8(&qword_2A1A16550, sub_29D53AF40, MEMORY[0x29EDB8AE8]);
  v19 = sub_29D5B3B1C();
  (*(v7 + 8))(v10, v6);
  v38 = v19;
  v20 = v33;
  (*(v2 + 16))(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v33);
  v21 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  (*(v2 + 32))(v22 + v21, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_29D53B148;
  *(v23 + 24) = v22;

  sub_29D5B396C();
  sub_29D4F31D4(0);
  sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4, v30);
  v24 = v35;
  sub_29D5B3C6C();

  sub_29D53A0B8(&qword_2A1A16A90, sub_29D53AFF4, MEMORY[0x29EDB89A8]);
  v25 = v36;
  v26 = v24;
  v27 = sub_29D5B3B1C();
  (*(v37 + 8))(v26, v25);
  return v27;
}

uint64_t sub_29D537E60(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v48[1] = a3;
  v49 = a4;
  v57 = a2;
  sub_29D53B208(0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = sub_29D5B104C();
  v9 = *(v48[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v48[0], v11);
  sub_29D53B23C();
  v53 = v12;
  v51 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53B28C(0);
  v54 = v16;
  v52 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v50 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B371C();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = v48 - v26;
  if (a1)
  {
    sub_29D5B36CC();
    v28 = sub_29D5B370C();
    v29 = sub_29D5B425C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = v57 & 1;
      _os_log_impl(&dword_29D48C000, v28, v29, "CategoryDataProvider chrCategoriesPublisher() should show CHR section, supports CHR: %{BOOL}d", v30, 8u);
      MEMORY[0x29ED5FB80](v30, -1, -1);
    }

    (*(v20 + 8))(v27, v19);
    v58 = v57 & 1;
    sub_29D5B3A2C();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = v48[0];
    (*(v9 + 16))(v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v48[0]);
    v33 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    (*(v9 + 32))(v34 + v33, v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
    sub_29D5B396C();
    sub_29D4F31D4(0);
    sub_29D53A0B8(&qword_2A1A165C0, sub_29D53B23C, MEMORY[0x29EDB8AB8]);
    sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
    v35 = v50;
    v36 = v53;
    sub_29D5B3C6C();

    (*(v51 + 8))(v15, v36);
    sub_29D53A0B8(&qword_2A1A16AA0, sub_29D53B28C, MEMORY[0x29EDB89A8]);
    v37 = v54;
    v38 = sub_29D5B3B1C();
    (*(v52 + 8))(v35, v37);
  }

  else
  {
    sub_29D5B36CC();
    v39 = sub_29D5B370C();
    v40 = sub_29D5B425C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_29D48C000, v39, v40, "CategoryDataProvider chrCategoriesPublisher() should not show CHR section, returning just CDA category", v41, 2u);
      MEMORY[0x29ED5FB80](v41, -1, -1);
    }

    (*(v20 + 8))(v24, v19);
    sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
    v42 = sub_29D5B1BCC();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_29D5B62A0;
    (*(v43 + 104))(v45 + v44, *MEMORY[0x29EDC3F98], v42);
    v59 = v45;
    sub_29D53A1AC(0);
    sub_29D5B3A2C();
    sub_29D53A0B8(&qword_2A17A4A18, sub_29D53B208, MEMORY[0x29EDB8AB8]);
    v46 = v56;
    v38 = sub_29D5B3B1C();
    (*(v55 + 8))(v8, v46);
  }

  return v38;
}

uint64_t sub_29D5385AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_29D5B104C();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53B208(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v6 + 104))(v9, *MEMORY[0x29EDC3770], v5);
    sub_29D53A0B8(&qword_2A1A173A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC37B0]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v22 == v21[1] && v23 == v21[2])
    {
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v19 = sub_29D5B4C7C();
      (*(v6 + 8))(v9, v5);

      if ((v19 & 1) == 0)
      {
        v20 = sub_29D53908C(v16);
        goto LABEL_9;
      }
    }

    v20 = sub_29D5388D0(v16);
LABEL_9:
    v17 = v20;

    goto LABEL_10;
  }

  v22 = MEMORY[0x29EDCA190];
  sub_29D53A1AC(0);
  sub_29D5B3A2C();
  sub_29D53A0B8(&qword_2A17A4A18, sub_29D53B208, MEMORY[0x29EDB8AB8]);
  v17 = sub_29D5B3B1C();
  result = (*(v12 + 8))(v15, v11);
LABEL_10:
  *a3 = v17;
  return result;
}

char *sub_29D53890C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v77 = a4;
  v8 = sub_29D5B1BCC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v83 = &v72 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v79 = &v72 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v72 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x29EDCA190];
  }

  if (!a1)
  {
    if (a2 >> 62)
    {
      if (sub_29D5B485C())
      {
        goto LABEL_13;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      sub_29D5B1B7C();
      sub_29D5B1B2C();
      sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v36 = v8;
      v37 = sub_29D5B405C();

      v38 = v77;
      v39 = sub_29D53A1F4(v37, v77 & 1, 0, 0, 0);

      v40 = sub_29D53AAE8(a2, v38 & 1);
      v87 = v39;
      sub_29D54FB00(v40);
      sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
      v41 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_29D5B62A0;
      (*(v9 + 104))(v42 + v41, *MEMORY[0x29EDC3F88], v36);
      sub_29D54FB00(v42);

      return v87;
    }

    return MEMORY[0x29EDCA190];
  }

  v72 = v13;
  v75 = v9;
  v76 = a2;
  v84 = a1;
  v85 = v8;
  v74 = Strong;
  v24 = *(a5 + 16);
  v25 = 0;
  if (v24)
  {
    v26 = *(v9 + 16);
    v27 = a5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v28 = *(v9 + 72);
    v29 = (v9 + 8);
    v30 = v85;
    do
    {
      v26(v22, v27, v30);
      v31 = sub_29D5B3D4C();
      (*v29)(v22, v30);
      v32 = __OFADD__(v25, v31 & 1);
      v25 += v31 & 1;
      if (v32)
      {
        __break(1u);
        goto LABEL_33;
      }

      v27 += v28;
      --v24;
    }

    while (v24);
  }

  if (v76 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v33 = v85;
    v34 = v79;
    v35 = (v77 & 1) != 0 ? sub_29D5B1B2C() : sub_29D5B1B7C();
    v44 = v35;
    v45 = v75;
    v82 = *(v35 + 16);
    if (!v82)
    {
      break;
    }

    v46 = 0;
    v80 = (v75 + 32);
    v81 = v75 + 16;
    v78 = (v75 + 8);
    v47 = MEMORY[0x29EDCA190];
    while (v46 < *(v44 + 16))
    {
      v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v49 = *(v45 + 72);
      (*(v45 + 16))(v34, v44 + v48 + v49 * v46, v33);
      if (sub_29D5B3D4C())
      {
        (*v78)(v34, v33);
      }

      else
      {
        v50 = v34;
        v51 = *v80;
        (*v80)(v83, v50, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D4C6E30(0, *(v47 + 2) + 1, 1);
          v47 = v86;
        }

        v54 = *(v47 + 2);
        v53 = *(v47 + 3);
        if (v54 >= v53 >> 1)
        {
          sub_29D4C6E30((v53 > 1), v54 + 1, 1);
          v47 = v86;
        }

        *(v47 + 2) = v54 + 1;
        v55 = &v47[v48 + v54 * v49];
        v33 = v85;
        v51(v55, v83, v85);
        v34 = v79;
      }

      if (v82 == ++v46)
      {
        goto LABEL_26;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_26:

  sub_29D5B1B7C();
  sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
  v56 = sub_29D5B405C();

  v57 = v77;
  v58 = sub_29D53A1F4(v56, v77 & 1, v25, 0, 0);

  if (i || (v57 & 1) == 0)
  {
    v70 = sub_29D53AAE8(v76, v57 & 1);
    v86 = v58;
    sub_29D54FB00(v70);

    return v86;
  }

  else
  {
    v59 = *MEMORY[0x29EDC3F98];
    v60 = *(v45 + 104);
    v61 = v72;
    v62 = v85;
    v60(v72, v59, v85);
    v63 = sub_29D537900(v61, v58);

    v65 = *(v45 + 8);
    v64 = v45 + 8;
    v65(v61, v62);
    sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
    v66 = *(v64 + 64);
    v67 = (*(v64 + 72) + 32) & ~*(v64 + 72);
    if (v63)
    {
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_29D5B5E20;
      v69 = v68 + v67;
      v60(v69, *MEMORY[0x29EDC3FA8], v62);
      v60((v69 + v66), v59, v62);

      return v68;
    }

    else
    {
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_29D5B62A0;
      v60((v71 + v67), *MEMORY[0x29EDC3FA8], v62);

      return v71;
    }
  }
}

uint64_t sub_29D5390C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v32 = a3;
  v33 = a4;
  v30 = a2;
  v31 = a1;
  sub_29D539D9C(0);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D53A100(0);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D539F20(0);
  v16 = v15;
  v34 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthRecordsGeneratorContext(0);
  v41 = sub_29D4FD49C();
  v40 = MEMORY[0x29EDCA190];
  sub_29D539FB4(0);
  v20 = MEMORY[0x29EDB8A00];
  sub_29D53A0B8(&qword_2A1A16730, sub_29D539FB4, MEMORY[0x29EDB8A00]);
  sub_29D5B3B4C();

  sub_29D5B1B7C();
  v21 = sub_29D5B1B5C();
  v22 = sub_29D5B242C();

  v41 = v22;
  sub_29D539E88(0);
  sub_29D53A0B8(&qword_2A1A167F0, sub_29D539E88, v20);
  sub_29D53A0B8(&qword_2A1A170B8, sub_29D539F20, MEMORY[0x29EDB88C8]);
  sub_29D5B3B6C();

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v31;
  *(v24 + 32) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  *(v25 + 24) = v24;
  sub_29D53A1AC(0);
  sub_29D53A0B8(&qword_2A1A172D0, sub_29D539D9C, MEMORY[0x29EDB8870]);
  v26 = v35;
  sub_29D5B3B7C();

  (*(v36 + 8))(v9, v26);
  sub_29D53A0B8(&qword_2A1A16ED0, sub_29D53A100, MEMORY[0x29EDB8908]);
  v27 = v37;
  v28 = sub_29D5B3B1C();
  (*(v38 + 8))(v14, v27);
  (*(v34 + 8))(v19, v16);
  return v28;
}

char *sub_29D539554(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_29D5B1BCC();
  v81 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v80 = &v70 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v77 = &v70 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v70 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x29EDCA190];
  }

  if (!a1)
  {
    if (a2 >> 62)
    {
      if (sub_29D5B485C())
      {
        goto LABEL_13;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      sub_29D5B1B7C();
      sub_29D5B1B2C();
      sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v36 = sub_29D5B405C();

      v37 = sub_29D53A1F4(v36, a4 & 1, 0, 0, 1);

      v38 = sub_29D53AAE8(a2, a4 & 1);
      v84 = v37;
      sub_29D54FB00(v38);
LABEL_31:

      return v84;
    }

    return MEMORY[0x29EDCA190];
  }

  v71 = v13;
  v73 = a4;
  v74 = a2;
  v75 = Strong;
  v82 = a1;
  v83 = v9;
  v24 = *(a5 + 16);
  v25 = 0;
  if (v24)
  {
    v26 = *(v81 + 16);
    v27 = a5 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v28 = *(v81 + 72);
    v29 = (v81 + 8);
    v30 = v83;
    do
    {
      v26(v22, v27, v30);
      v31 = sub_29D5B3D4C();
      (*v29)(v22, v30);
      v32 = __OFADD__(v25, v31 & 1);
      v25 += v31 & 1;
      if (v32)
      {
        __break(1u);
        goto LABEL_35;
      }

      v27 += v28;
      --v24;
    }

    while (v24);
  }

  if (v74 >> 62)
  {
    goto LABEL_36;
  }

  v33 = v83;
  v34 = v77;
  v72 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
    goto LABEL_9;
  }

LABEL_10:
  for (i = sub_29D5B1B7C(); ; i = sub_29D5B1B2C())
  {
    v39 = i;
    v79 = *(i + 16);
    if (!v79)
    {
      break;
    }

    v40 = 0;
    v78 = v81 + 16;
    v41 = (v81 + 32);
    v76 = (v81 + 8);
    v42 = MEMORY[0x29EDCA190];
    while (v40 < *(v39 + 16))
    {
      v43 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v44 = *(v81 + 72);
      (*(v81 + 16))(v34, v39 + v43 + v44 * v40, v33);
      if (sub_29D5B3D4C())
      {
        (*v76)(v34, v33);
      }

      else
      {
        v45 = v34;
        v46 = *v41;
        (*v41)(v80, v45, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D4C6E30(0, *(v42 + 2) + 1, 1);
          v42 = v84;
        }

        v49 = *(v42 + 2);
        v48 = *(v42 + 3);
        if (v49 >= v48 >> 1)
        {
          sub_29D4C6E30((v48 > 1), v49 + 1, 1);
          v42 = v84;
        }

        *(v42 + 2) = v49 + 1;
        v50 = &v42[v43 + v49 * v44];
        v33 = v83;
        v46(v50, v80, v83);
        v34 = v77;
      }

      if (v79 == ++v40)
      {
        goto LABEL_26;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    v69 = sub_29D5B485C();
    v33 = v83;
    v34 = v77;
    v72 = v69;
    if (!v69)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (*(v75 + OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_collapseCategories))
    {
      goto LABEL_10;
    }
  }

LABEL_26:

  sub_29D5B1B7C();
  sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
  v51 = sub_29D5B405C();

  v52 = v73;
  v53 = sub_29D53A1F4(v51, v73 & 1, v25, 0, 1);

  if (v72 || (v52 & 1) == 0)
  {
    v67 = sub_29D53AAE8(v74, v52 & 1);
    v84 = v53;
    sub_29D54FB00(v67);
    goto LABEL_31;
  }

  v54 = *MEMORY[0x29EDC3F98];
  v55 = v81;
  v56 = *(v81 + 104);
  v57 = v71;
  v58 = v83;
  v56(v71, v54, v83);
  v59 = sub_29D537900(v57, v53);

  v60 = *(v55 + 8);
  v55 += 8;
  v60(v57, v58);
  sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
  v61 = *(v55 + 64);
  v62 = (*(v55 + 72) + 32) & ~*(v55 + 72);
  if (v59)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_29D5B5E20;
    v64 = v63 + v62;
    v56(v64, *MEMORY[0x29EDC3FA8], v58);
    v65 = v64 + v61;
    v66 = v54;
  }

  else
  {
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_29D5B62A0;
    v66 = *MEMORY[0x29EDC3FA8];
    v65 = v63 + v62;
  }

  v56(v65, v66, v58);

  return v63;
}

uint64_t sub_29D539C2C()
{
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CategoryDataProvider(uint64_t a1)
{
  result = qword_2A1A18AF8;
  if (!qword_2A1A18AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D539CF4(uint64_t a1)
{
  result = type metadata accessor for HealthRecordsGeneratorContext(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29D539D9C(uint64_t a1)
{
  if (!qword_2A1A172C8)
  {
    sub_29D539E88(255);
    sub_29D539F20(255);
    sub_29D53A0B8(&qword_2A1A167F0, sub_29D539E88, MEMORY[0x29EDB8A00]);
    sub_29D53A0B8(&qword_2A1A170B8, sub_29D539F20, MEMORY[0x29EDB88C8]);
    v1 = sub_29D5B379C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A172C8);
    }
  }
}

void sub_29D539E88(uint64_t a1)
{
  if (!qword_2A1A167E8)
  {
    sub_29D53A054(255, &qword_2A1A164A8, sub_29D536890, MEMORY[0x29EDC9C68]);
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A167E8);
    }
  }
}

void sub_29D539F20(uint64_t a1)
{
  if (!qword_2A1A170B0)
  {
    sub_29D539FB4(255);
    sub_29D53A0B8(&qword_2A1A16730, sub_29D539FB4, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B37FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A170B0);
    }
  }
}

void sub_29D539FB4(uint64_t a1)
{
  if (!qword_2A1A16728)
  {
    sub_29D53A054(255, &qword_2A1A16420, sub_29D536844, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v1 = sub_29D5B398C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16728);
    }
  }
}

void sub_29D53A054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D53A0B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D53A100(uint64_t a1)
{
  if (!qword_2A1A16EC8)
  {
    sub_29D539D9C(255);
    sub_29D53A1AC(255);
    sub_29D53A0B8(&qword_2A1A172D0, sub_29D539D9C, MEMORY[0x29EDB8870]);
    v1 = sub_29D5B384C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16EC8);
    }
  }
}

char *sub_29D53A1F4(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v76 = a5;
  v85 = a4;
  v81 = a3;
  v83 = a2;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  v91 = v6 - 8;
  v94 = v7;
  v8 = v7;
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v86 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v80 = &v70 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v78 = &v70 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v73 = &v70 - v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v70 - v22;
  v92 = *MEMORY[0x29EDC3F98];
  v93 = v8;
  v24 = v8 + 104;
  v25 = *(v8 + 104);
  v25(&v70 - v22);
  v95 = v25;
  v77 = sub_29D537900(v23, a1);
  v27 = v8 + 8;
  v26 = *(v8 + 8);
  v28 = v6;
  v26(v23, v6);
  v88 = *MEMORY[0x29EDC4080];
  v29 = v88;
  v30 = sub_29D5B1D6C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v89 = v31 + 104;
  v90 = v32;
  v32(v23, v29, v30);
  v33 = *MEMORY[0x29EDC3F80];
  v34 = v28;
  (v25)(v23, v33, v28);
  v79 = sub_29D537900(v23, a1);
  v75 = v23;
  v74 = v27;
  v84 = v26;
  v26(v23, v28);

  v87 = sub_29D5963B0(v35);

  sub_29D53A054(0, &qword_2A1A195D0, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9E90]);
  v36 = *(v94 + 72);
  v37 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_29D5B5E20;
  v39 = v95;
  (v95)(v38 + v37, v92, v28);
  v90((v38 + v37 + v36), v88, v30);
  v91 = v36;
  v82 = v33;
  v94 = v24;
  v39(v38 + v37 + v36, v33, v28);
  v40 = sub_29D56E18C(v38, v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = sub_29D515C24(*(v40 + 16), 0);
    v43 = sub_29D5A2C00(&v96, &v42[v37], v41, v40);
    sub_29D4B30C0(v96);
    if (v43 == v41)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v42 = MEMORY[0x29EDCA190];
LABEL_5:
  v44 = v84;
  if (v83)
  {

    v45 = sub_29D5B1B5C();
    v46 = v45;
    v72 = v37;
    v71 = v30;
    if (v76)
    {
      v47 = *(v45 + 16);
      v48 = *(v42 + 2);

      if (v47 - v48 >= 3)
      {

        v49 = v73;
        (v95)(v73, *MEMORY[0x29EDC3FA0], v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_29D515898(0, *(v42 + 2) + 1, 1, v42);
        }

        v50 = v79;
        v52 = *(v42 + 2);
        v51 = *(v42 + 3);
        if (v52 >= v51 >> 1)
        {
          v42 = sub_29D515898((v51 > 1), v52 + 1, 1, v42);
        }

        *(v42 + 2) = v52 + 1;
        (*(v93 + 32))(&v42[v37 + v52 * v91], v49, v34);
        v46 = v42;
        v53 = v90;
        if (!v50)
        {
LABEL_13:
          v54 = v72;
          v55 = v93;
          goto LABEL_24;
        }

LABEL_19:
        v60 = v78;
        v53(v78, v88, v71);
        (v95)(v60, v82, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_29D515898(0, *(v46 + 2) + 1, 1, v46);
        }

        v62 = *(v46 + 2);
        v61 = *(v46 + 3);
        v55 = v93;
        v63 = v72;
        if (v62 >= v61 >> 1)
        {
          v46 = sub_29D515898((v61 > 1), v62 + 1, 1, v46);
        }

        *(v46 + 2) = v62 + 1;
        v54 = v63;
        (*(v55 + 32))(&v46[v63 + v62 * v91], v78, v34);
LABEL_24:
        v42 = v46;
        if (!v77)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
    }

    v56 = *MEMORY[0x29EDC4090];
    v57 = v75;
    v53 = v90;
    v90(v75, v56, v30);
    (v95)(v57, v82, v34);
    v58 = sub_29D537900(v57, v42);

    v44(v57, v34);
    if (!v58)
    {
      v53(v57, v56, v30);
      (v95)(v57, v82, v34);
      sub_29D53A0B8(&qword_2A1A197F8, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC3FD0]);
      v59 = sub_29D5B406C();

      v44(v57, v34);
      v46 = v59;
    }

    if (!v79)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v54 = v37;
  v55 = v93;
LABEL_25:
  v64 = v80;
  (v95)(v80, v92, v34);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_29D515898(0, *(v42 + 2) + 1, 1, v42);
  }

  v66 = *(v42 + 2);
  v65 = *(v42 + 3);
  if (v66 >= v65 >> 1)
  {
    v42 = sub_29D515898((v65 > 1), v66 + 1, 1, v42);
  }

  *(v42 + 2) = v66 + 1;
  (*(v55 + 32))(&v42[v54 + v66 * v91], v64, v34);
  v46 = v42;
LABEL_30:
  if ((v85 & 1) == 0 && v81 >= 2)
  {
    (v95)(v86, *MEMORY[0x29EDC3F70], v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_29D515898(0, *(v46 + 2) + 1, 1, v46);
    }

    v68 = *(v46 + 2);
    v67 = *(v46 + 3);
    if (v68 >= v67 >> 1)
    {
      v46 = sub_29D515898((v67 > 1), v68 + 1, 1, v46);
    }

    *(v46 + 2) = v68 + 1;
    (*(v55 + 32))(&v46[v54 + v68 * v91], v86, v34);
  }

  return v46;
}

void *sub_29D53AAE8(unint64_t a1, int a2)
{
  v5 = sub_29D5B1BCC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v38 = &v35[-v13];
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v35[-v16];
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v35[-v19];
  if (a1 >> 62)
  {
    v21 = sub_29D5B485C();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x29EDCA190];
  if (v21)
  {
    v39 = MEMORY[0x29EDCA190];
    v22 = &v39;
    sub_29D4C6E30(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v36 = a2;
    v37 = v17;
    v22 = v39;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        MEMORY[0x29ED5EF30](i, a1);
        sub_29D5B1BAC();
        swift_unknownObjectRelease();
        v39 = v22;
        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          sub_29D4C6E30((v25 > 1), v26 + 1, 1);
          v22 = v39;
        }

        v22[2] = v26 + 1;
        (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v20, v5);
      }
    }

    else
    {
      v27 = (a1 + 32);
      do
      {
        v28 = *v27;
        sub_29D5B1BAC();

        v39 = v22;
        v30 = v22[2];
        v29 = v22[3];
        if (v30 >= v29 >> 1)
        {
          sub_29D4C6E30((v29 > 1), v30 + 1, 1);
          v22 = v39;
        }

        v22[2] = v30 + 1;
        (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v10, v5);
        ++v27;
        --v21;
      }

      while (v21);
    }

    v17 = v37;
    LOBYTE(a2) = v36;
  }

  if (a2)
  {
    v31 = v22[2];
    v32 = *(v6 + 104);
    if (v31)
    {
      v17 = v38;
      v32(v38, *MEMORY[0x29EDC3F90], v5);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }

      v33 = v31 + 1;
    }

    else
    {
      v32(v17, *MEMORY[0x29EDC3F78], v5);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }

      v33 = 1;
    }

    v22 = sub_29D515898(0, v33, 1, v22);
LABEL_21:
    v21 = v22[2];
    v23 = v22[3];
    v2 = v21 + 1;
    if (v21 < v23 >> 1)
    {
LABEL_22:
      v22[2] = v2;
      (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v17, v5);
      return v22;
    }

LABEL_26:
    v22 = sub_29D515898((v23 > 1), v2, 1, v22);
    goto LABEL_22;
  }

  return v22;
}

uint64_t sub_29D53AEB8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D53AF08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D53AF40(uint64_t a1)
{
  if (!qword_2A1A16548)
  {
    sub_29D53AFD4(255);
    sub_29D53A0B8(&qword_2A1A166C0, sub_29D53AFD4, MEMORY[0x29EDB8A00]);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16548);
    }
  }
}

void sub_29D53AFF4(uint64_t a1)
{
  if (!qword_2A1A16A88)
  {
    sub_29D4F31D4(255);
    sub_29D53AFD4(255);
    v1 = MEMORY[0x29EDB8A00];
    sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
    sub_29D53A0B8(&qword_2A1A166C0, sub_29D53AFD4, v1);
    v2 = sub_29D5B38FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A16A88);
    }
  }
}

void sub_29D53B0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D53B148(char a1, int a2)
{
  v5 = *(sub_29D5B104C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_29D537E60(a1, a2, v6, v7);
}

uint64_t sub_29D53B1CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D53B23C()
{
  if (!qword_2A1A165B8)
  {
    v0 = sub_29D5B3A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A165B8);
    }
  }
}

void sub_29D53B28C(uint64_t a1)
{
  if (!qword_2A1A16A98)
  {
    sub_29D4F31D4(255);
    sub_29D53B23C();
    sub_29D53A0B8(&qword_2A1A16750, sub_29D4F31D4, MEMORY[0x29EDB8A00]);
    sub_29D53A0B8(&qword_2A1A165C0, sub_29D53B23C, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16A98);
    }
  }
}

uint64_t sub_29D53B378()
{
  v1 = sub_29D5B104C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D53B43C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5B104C();

  return sub_29D5385AC(a1, a2);
}

void *sub_29D53B4C4(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  v20 = sub_29D5B13CC();
  v4 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B13EC();
  v8 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_context);
  v18 = sub_29D5B143C();
  sub_29D53F524(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v12 = sub_29D5B104C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D5B62A0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x29EDC36E8], v12);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v20);
  sub_29D5B13DC();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_domain, v11, v19);
  v16 = sub_29D53B7C4(a1);
  sub_29D53FE18(a1, type metadata accessor for HealthRecordsGeneratorContext);
  *(v2 + OBJC_IVAR____TtC13HealthRecords24ClinicalSharingGenerator_publisher) = v16;
  return v2;
}